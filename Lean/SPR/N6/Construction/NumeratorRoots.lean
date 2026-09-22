import SPR.N6.Construction.NumeratorSigns

/-!
# Complete numerator root isolation

Odd roots follow unconditionally from the constructed node signs. The last even
root is located beyond C only under the displayed condition F(C)>0, which still
requires its own universal certificate. No weaker c-bound is substituted.
-/
namespace SPR.N6
noncomputable section
open Polynomial Filter Set
open scoped Topology

/-- Strict sign change gives a root strictly inside the interval. -/
theorem root_between_of_neg_pos {f : ℝ → ℝ} (hf : Continuous f) {l r : ℝ}
    (hlr : l < r) (hl : f l < 0) (hr : 0 < f r) :
    ∃ x : ℝ, l < x ∧ x < r ∧ f x = 0 := by
  obtain ⟨x, hx, hz⟩ := intermediate_value_Icc hlr.le hf.continuousOn ⟨hl.le, hr.le⟩
  refine ⟨x, ?_, ?_, hz⟩
  · exact lt_of_le_of_ne hx.1 (by intro he; rw [← he] at hz; linarith)
  · exact lt_of_le_of_ne hx.2 (by intro he; rw [he] at hz; linarith)

/-- Complete root data of the actual candidate odd quadratic. -/
structure CandidateOddRoots {B : Box6} (g : EvenGeometry B) where
  u : ℝ
  v : ℝ
  Au : g.A < u
  uB : u < g.B
  bv : g.b < v
  vc : v < g.c
  leading_pos : 0 < g.candidate.k2
  factor : ∀ t : ℝ, g.candidate.K t = g.candidate.k2 * (t - u) * (t - v)

theorem EvenGeometry.candidate_odd_roots {B : Box6} (g : EvenGeometry B)
    (hB : B.RobustlyHurwitz) : Nonempty (CandidateOddRoots g) := by
  obtain ⟨hA, hBB, hb, hc⟩ := g.candidate_odd_node_signs hB
  have hk : Continuous g.candidate.K := by unfold ParityNumerator.K; fun_prop
  obtain ⟨u, huA, huB, hu⟩ := root_between_of_neg_pos hk.neg g.A_lt_B
    (neg_lt_zero.mpr hA) (neg_pos.mpr hBB)
  have hu' : g.candidate.K u = 0 := neg_eq_zero.mp hu
  obtain ⟨v, hvb, hvc, hv⟩ := root_between_of_neg_pos hk g.b_lt_c hb hc
  have huv : u < v := huB.trans (g.B_lt_b.trans hvb)
  have hdeg : g.candidate.oddPoly.natDegree ≤ 2 := by
    unfold ParityNumerator.oddPoly
    compute_degree!
  have hfac := quadratic_factor_of_two_roots hdeg (ne_of_lt huv)
    (by simpa using hu') (by simpa using hv)
  have hcoeff : g.candidate.oddPoly.coeff 2 = g.candidate.k2 := by
    simp [ParityNumerator.oddPoly, coeff_add, coeff_C_mul_X_pow, coeff_C_mul_X]
  rw [hcoeff] at hfac
  have hvalue (t : ℝ) : g.candidate.K t = g.candidate.k2 * (t - u) * (t - v) := by
    have hh := congrArg (Polynomial.eval t) hfac
    simpa [mul_assoc] using hh
  have hlead : 0 < g.candidate.k2 := by
    rw [hvalue] at hA
    have hx : 0 < (g.A - u) * (g.A - v) :=
      mul_pos_of_neg_of_neg (sub_neg.mpr huA) (sub_neg.mpr (huA.trans huv))
    rw [mul_assoc] at hA
    exact (mul_pos_iff_of_pos_right hx).mp hA
  exact ⟨⟨u, v, huA, huB, hvb, hvc, hlead, hvalue⟩⟩

namespace CandidateOddRoots

theorem positive_left {B : Box6} {g : EvenGeometry B} (r : CandidateOddRoots g)
    {t : ℝ} (ht : t ≤ g.A) : 0 < g.candidate.K t := by
  rw [r.factor]
  have htu : t < r.u := ht.trans_lt r.Au
  have htv : t < r.v := htu.trans (r.uB.trans (g.B_lt_b.trans r.bv))
  exact mul_pos_of_neg_of_neg (mul_neg_of_pos_of_neg r.leading_pos (sub_neg.mpr htu))
    (sub_neg.mpr htv)

theorem positive_right {B : Box6} {g : EvenGeometry B} (r : CandidateOddRoots g)
    {t : ℝ} (ht : g.c ≤ t) : 0 < g.candidate.K t := by
  rw [r.factor]
  have hvt : r.v < t := r.vc.trans_le ht
  have hut : r.u < t := (r.uB.trans (g.B_lt_b.trans r.bv)).trans hvt
  exact mul_pos (mul_pos r.leading_pos (sub_pos.mpr hut)) (sub_pos.mpr hvt)

/-- Negative odd values can occur only in the protected interior band (A,c). -/
theorem negative_inside {B : Box6} {g : EvenGeometry B} (r : CandidateOddRoots g)
    {t : ℝ} (ht : g.candidate.K t < 0) : g.A < t ∧ t < g.c := by
  constructor
  · by_contra hn
    exact (not_lt_of_ge (r.positive_left (le_of_not_gt hn)).le) ht
  · by_contra hn
    exact (not_lt_of_ge (r.positive_right (le_of_not_gt hn)).le) ht

end CandidateOddRoots

/-- All even roots of the actual candidate, retaining the crucial bound C<r₃. -/
structure CandidateEvenRoots {B : Box6} (g : EvenGeometry B) where
  r1 : ℝ
  r2 : ℝ
  r3 : ℝ
  r1_pos : 0 < r1
  r1A : r1 < g.A
  Br2 : g.B < r2
  r2b : r2 < g.b
  Cr3 : g.C < r3
  leading_neg : g.candidate.f3 < 0
  factor : ∀ t : ℝ, g.candidate.F t = g.candidate.f3 * (t - r1) * (t - r2) * (t - r3)

/-- Root isolation after the single displayed last-root certificate has been established. -/
theorem EvenGeometry.candidate_even_roots {B : Box6} (g : EvenGeometry B)
    (hB : B.RobustlyHurwitz) (hC : 0 < g.candidate.F g.C) :
    Nonempty (CandidateEvenRoots g) := by
  obtain ⟨h0, hlead, _⟩ := g.candidate_endpoints hB
  obtain ⟨hA, hBB, hb, hc⟩ := g.candidate_even_node_signs hB
  have hf : Continuous g.candidate.F := by unfold ParityNumerator.F; fun_prop
  have hzero : 0 < g.candidate.F 0 := by simpa [ParityNumerator.F] using h0
  obtain ⟨r1, hr1, hr1A, hroot1⟩ := root_between_of_neg_pos hf.neg
    (g.a_pos.trans g.a_lt_A) (neg_lt_zero.mpr hzero) (neg_pos.mpr hA)
  have hroot1' : g.candidate.F r1 = 0 := neg_eq_zero.mp hroot1
  obtain ⟨r2, hBr2, hr2b, hroot2⟩ := root_between_of_neg_pos hf g.B_lt_b hBB hb
  have hdeg : g.candidate.evenPoly.natDegree = 3 := by
    have hn := ne_of_lt hlead
    unfold ParityNumerator.evenPoly
    compute_degree!
  have hlc : g.candidate.evenPoly.leadingCoeff = g.candidate.f3 := by
    rw [← coeff_natDegree, hdeg]
    simp [ParityNumerator.evenPoly, coeff_add, coeff_C_mul_X_pow, coeff_C_mul_X]
  have htend := g.candidate.evenPoly.tendsto_atBot_of_leadingCoeff_nonpos
    (natDegree_pos_iff_degree_pos.mp (by omega)) (by rw [hlc]; exact hlead.le)
  have hneg : ∀ᶠ t : ℝ in atTop, g.candidate.F t < 0 := by
    simpa using htend.eventually (eventually_lt_atBot (0 : ℝ))
  obtain ⟨R, hCR, hR⟩ := ((eventually_gt_atTop g.C).and hneg).exists
  obtain ⟨r3, hCr3, _, hroot3⟩ := root_between_of_neg_pos hf.neg hCR
    (neg_lt_zero.mpr hC) (neg_pos.mpr hR)
  have hroot3' : g.candidate.F r3 = 0 := neg_eq_zero.mp hroot3
  have h12 : r1 < r2 := hr1A.trans (g.A_lt_B.trans hBr2)
  have h23 : r2 < r3 := hr2b.trans (g.b_lt_c.trans (g.c_lt_C.trans hCr3))
  have hfac := cubic_factor_of_three_roots hdeg.le (ne_of_lt h12)
    (ne_of_lt (h12.trans h23)) (ne_of_lt h23)
    (by simpa using hroot1') (by simpa using hroot2) (by simpa using hroot3')
  have hcoeff : g.candidate.evenPoly.coeff 3 = g.candidate.f3 := by
    simp [ParityNumerator.evenPoly, coeff_add, coeff_C_mul_X_pow, coeff_C_mul_X]
  rw [hcoeff] at hfac
  refine ⟨⟨r1, r2, r3, hr1, hr1A, hBr2, hr2b, hCr3, hlead, ?_⟩⟩
  intro t
  have hh := congrArg (Polynomial.eval t) hfac
  simpa [mul_assoc] using hh

namespace CandidateEvenRoots

theorem negative_middle {B : Box6} {g : EvenGeometry B} (r : CandidateEvenRoots g)
    {t : ℝ} (hA : g.A ≤ t) (hB : t ≤ g.B) : g.candidate.F t < 0 := by
  rw [r.factor]
  have h1 : 0 < t - r.r1 := sub_pos.mpr (r.r1A.trans_le hA)
  have h2 : t - r.r2 < 0 := sub_neg.mpr (hB.trans_lt r.Br2)
  have h3 : t - r.r3 < 0 := by
    have := g.B_lt_b.trans (g.b_lt_c.trans (g.c_lt_C.trans r.Cr3))
    linarith
  exact mul_neg_of_pos_of_neg
    (mul_pos_of_neg_of_neg (mul_neg_of_neg_of_pos r.leading_neg h1) h2) h3

theorem nonnegative_late {B : Box6} {g : EvenGeometry B} (r : CandidateEvenRoots g)
    {t : ℝ} (hb : g.b ≤ t) (hr : t ≤ r.r3) : 0 ≤ g.candidate.F t := by
  rw [r.factor]
  have h1 : 0 < t - r.r1 := by
    have := r.r1A.trans (g.A_lt_B.trans g.B_lt_b)
    linarith
  have h2 : 0 < t - r.r2 := sub_pos.mpr (r.r2b.trans_le hb)
  exact mul_nonneg_of_nonpos_of_nonpos
    (mul_neg_of_neg_of_pos (mul_neg_of_neg_of_pos r.leading_neg h1) h2).le
    (sub_nonpos.mpr hr)

theorem nonpositive_tail {B : Box6} {g : EvenGeometry B} (r : CandidateEvenRoots g)
    {t : ℝ} (hr : r.r3 ≤ t) : g.candidate.F t ≤ 0 := by
  rw [r.factor]
  have h1 : 0 ≤ t - r.r1 := by
    have := r.r1A.trans (g.A_lt_B.trans (g.B_lt_b.trans
      (g.b_lt_c.trans (g.c_lt_C.trans r.Cr3))))
    linarith
  have h2 : 0 ≤ t - r.r2 := by
    have := r.r2b.trans (g.b_lt_c.trans (g.c_lt_C.trans r.Cr3))
    linarith
  exact mul_nonpos_of_nonpos_of_nonneg
    (mul_nonpos_of_nonpos_of_nonneg (mul_nonpos_of_nonpos_of_nonneg r.leading_neg.le h1) h2)
    (sub_nonneg.mpr hr)

end CandidateEvenRoots

end
end SPR.N6
