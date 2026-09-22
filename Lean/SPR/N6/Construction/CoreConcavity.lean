import SPR.N6.Algebra.Tail.RatioConcavity
import SPR.N6.Construction.QuadraticCore

/-!
# Concavity of the actual quadratic core in its ratio

The coefficient sign follows from the actual even-width budget. Endpoint
positivity is still an explicit obligation; no middle-entry assumption remains.
All statements use the same geometry and the same actual candidate ratio.
-/
namespace SPR.N6
noncomputable section
open Polynomial
set_option Elab.async false

/-- Three fixed evaluations recover the leading coefficient, including degree drops. -/
theorem quadratic_second_difference (p : ℝ[X]) (hp : p.natDegree ≤ 2) :
    p.eval 2-2*p.eval 1+p.eval 0 = 2*p.coeff 2 := by
  simp only [quadratic_eval_coefficients p hp]
  ring

/-- For a concave quadratic the endpoint signs imply the middle Bernstein sign. -/
theorem concave_ratio_middle_nonneg (p : ℝ[X]) (hp : p.natDegree ≤ 2) (M : ℝ)
    (hc : p.coeff 2 ≤ 0) (h0 : 0 ≤ p.eval 1) (hM : 0 ≤ p.eval M) :
    0 ≤ ratioMiddle p M := by
  have hid : 2*ratioMiddle p M-p.eval 1-p.eval M = -(M-1)^2*p.coeff 2 := by
    simp only [quadratic_eval_coefficients p hp,ratioMiddle]
    ring
  have hs := mul_nonneg_of_nonpos_of_nonpos (neg_nonpos.mpr (sq_nonneg (M-1))) hc
  linarith only [hid,hs,h0,hM]

/-- Closed-interval positivity from two endpoints and a proved leading-coefficient sign. -/
theorem concave_ratio_nonneg (p : ℝ[X]) (hp : p.natDegree ≤ 2)
    {M m : ℝ} (hM : 1 < M) (hm1 : 1 ≤ m) (hmM : m ≤ M)
    (hc : p.coeff 2 ≤ 0) (h0 : 0 ≤ p.eval 1) (h2 : 0 ≤ p.eval M) :
    0 ≤ p.eval m :=
  quadratic_ratio_nonneg p hp hM hm1 hmM h0
    (concave_ratio_middle_nonneg p hp M hc h0 h2) h2

namespace EvenGeometry
variable {B : Box6}

/-- The core as an actual polynomial in the ratio parameter. -/
def ratioCorePoly (q : EvenGeometry B) (i : Bool) (t : ℝ) : ℝ[X] :=
  Polynomial.C (q.D1*q.D2)*q.ratioWeightPoly*
    Polynomial.C ((t-(if i then q.c else q.A))^2)+
  Polynomial.C q.clearedBaseSecond*q.ratioZeroQuotientPoly i t

/-- Its ratio degree bound holds before choosing a frequency or ratio. -/
theorem ratio_core_degree (q : EvenGeometry B) (i : Bool) (t : ℝ) :
    (q.ratioCorePoly i t).natDegree ≤ 2 := by
  have hz := q.ratio_zero_quotient_degree i t
  unfold ratioCorePoly ratioWeightPoly
  compute_degree!

/-- The polynomial agrees with the full quadratic core, including contact frequencies. -/
theorem ratio_core_eval (q : EvenGeometry B) (i : Bool) (t m : ℝ) :
    (q.ratioCorePoly i t).eval m =
      Tail.RootSource.core i q.a q.A q.B q.b q.c q.C m t := by
  rw [Tail.RootSource.core,q.tail_mixture_eq]
  simp only [ratioCorePoly,eval_add,eval_mul,eval_C,q.ratio_zero_quotient_eval_at]
  simp only [Tail.RootSource.zero,Tail.RootSource.den1,Tail.RootSource.den2,
    ratioWeightPoly,eval_add,eval_mul,eval_C,eval_X,Tail.RootSource.weight,
    D1,D2,clearWeightB,clearWeightb]
  ring

/-- The mixing scalar multiplying the zero quadratic is positive for actual ordered roots. -/
theorem core_mixture_pos (q : EvenGeometry B) : 0 < q.clearedBaseSecond := by
  obtain ⟨hba,hca,hCA,hCB,_,_,_,_,_,_⟩ := q.positive_gaps
  have ha := q.a_pos
  have hA := ha.trans q.a_lt_A
  have hB' := hA.trans q.A_lt_B
  have hb := hB'.trans q.B_lt_b
  have hc := hb.trans q.b_lt_c
  have hC := hc.trans q.c_lt_C
  have hD1 : 0 < q.D1 := mul_pos hba hca
  have hD2 : 0 < q.D2 := mul_pos hCA hCB
  have hs : 0 < q.A+q.B+q.b+q.c-q.a := by linarith
  unfold clearedBaseSecond
  positivity

/-- The linear baseline square contributes no quadratic ratio coefficient. -/
theorem ratio_core_leading (q : EvenGeometry B) (i : Bool) (t : ℝ) :
    (q.ratioCorePoly i t).coeff 2 =
      q.clearedBaseSecond*(q.ratioZeroQuotientPoly i t).coeff 2 := by
  have hid : (q.ratioCorePoly i t).eval 2-2*(q.ratioCorePoly i t).eval 1+
      (q.ratioCorePoly i t).eval 0 = q.clearedBaseSecond*
      ((q.ratioZeroQuotientPoly i t).eval 2-2*(q.ratioZeroQuotientPoly i t).eval 1+
        (q.ratioZeroQuotientPoly i t).eval 0) := by
    simp only [ratioCorePoly,ratioWeightPoly,eval_add,eval_mul,eval_C,eval_X]
    ring
  rw [quadratic_second_difference _ (q.ratio_core_degree i t),
    quadratic_second_difference _ (q.ratio_zero_quotient_degree i t)] at hid
  linarith only [hid]

/-- High-tail concavity follows from the actual two even-width slacks. -/
theorem high_zero_ratio_concave (q : EvenGeometry B) (t : ℝ) (ht : q.b ≤ t) :
    (q.ratioZeroQuotientPoly false t).coeff 2 ≤ 0 := by
  obtain ⟨hK,hS⟩ := q.upper_zero_slacks
  have hd := sub_pos.mpr q.a_lt_A
  have he := (sub_pos.mpr q.A_lt_B).le
  have hf := sub_pos.mpr q.B_lt_b
  have hg := (sub_pos.mpr q.b_lt_c).le
  have hs := Tail.RatioConcavity.high_leading_nonpositive
    (q.A-q.a) (q.B-q.A) (q.b-q.B) (q.c-q.b) (q.C-q.c) (t-q.b)
    hd he hf hg (sub_nonneg.mpr ht) hK hS
  have hid := Tail.RatioConcavity.high_second_difference
    (q.A-q.a) (q.B-q.A) (q.b-q.B) (q.c-q.b) (q.C-q.c) (t-q.b)
  have hfq : q.b-q.B+(t-q.b) = t-q.B := by ring
  rw [hfq] at hid
  have hp := quadratic_second_difference _ (q.ratio_zero_quotient_degree false t)
  simp only [q.ratio_zero_quotient_eval_at,Bool.false_eq_true,ite_false] at hp
  linarith only [hs,hid,hp]

/-- Low-tail concavity holds for every t ≤ B, and hence includes t=0 and t=B. -/
theorem low_zero_ratio_concave (q : EvenGeometry B) (t : ℝ) (ht : t ≤ q.B) :
    (q.ratioZeroQuotientPoly true t).coeff 2 ≤ 0 := by
  obtain ⟨hK,hS⟩ := q.upper_zero_slacks
  have hs := Tail.RatioConcavity.low_leading_nonpositive
    (q.A-q.a) (q.B-q.A) (q.b-q.B) (q.c-q.b) (q.C-q.c) (t-q.B)
    (sub_pos.mpr q.a_lt_A) (sub_pos.mpr q.A_lt_B).le
    (sub_pos.mpr q.B_lt_b) (sub_pos.mpr q.b_lt_c).le
    (sub_pos.mpr q.c_lt_C).le (sub_nonpos.mpr ht) hK hS
  have hid := Tail.RatioConcavity.low_second_difference
    (q.A-q.a) (q.B-q.A) (q.b-q.B) (q.c-q.b) (q.C-q.c) (t-q.B)
  have hp := quadratic_second_difference _ (q.ratio_zero_quotient_degree true t)
  simp only [q.ratio_zero_quotient_eval_at,ite_true] at hp
  linarith only [hs,hid,hp]

/-- The complete high core, rather than the full quartic source, is concave in ratio. -/
theorem high_core_ratio_concave (q : EvenGeometry B) (t : ℝ) (ht : q.b ≤ t) :
    (q.ratioCorePoly false t).coeff 2 ≤ 0 := by
  rw [q.ratio_core_leading]
  exact mul_nonpos_of_nonneg_of_nonpos q.core_mixture_pos.le
    (q.high_zero_ratio_concave t ht)

/-- The complete low core is concave on the whole required frequency interval. -/
theorem low_core_ratio_concave (q : EvenGeometry B) (t : ℝ) (ht : t ≤ q.B) :
    (q.ratioCorePoly true t).coeff 2 ≤ 0 := by
  rw [q.ratio_core_leading]
  exact mul_nonpos_of_nonneg_of_nonpos q.core_mixture_pos.le
    (q.low_zero_ratio_concave t ht)

/-- The first high ratio endpoint is already nonnegative without any new certificate. -/
theorem high_core_first_nonnegative (q : EvenGeometry B) (t : ℝ) (ht : q.b ≤ t) :
    0 ≤ Tail.RootSource.core false q.a q.A q.B q.b q.c q.C 1 t := by
  rw [← q.ratio_core_eval]
  simp only [ratioCorePoly,eval_add,eval_mul,eval_C]
  have hw : 0 ≤ q.ratioWeightPoly.eval 1 := by
    have hh := q.tail_weight_pos (by norm_num : (0:ℝ) ≤ 1)
    simpa [ratioWeightPoly,Tail.RootSource.weight,clearWeightB,clearWeightb,add_comm] using hh.le
  obtain ⟨hba,hca,hCA,hCB,_,_,_,_,_,_⟩ := q.positive_gaps
  have hD1 : 0 < q.D1 := mul_pos hba hca
  have hD2 : 0 < q.D2 := mul_pos hCA hCB
  exact add_nonneg (mul_nonneg (mul_nonneg (mul_pos hD1 hD2).le hw) (sq_nonneg _))
    (mul_nonneg q.core_mixture_pos.le (q.high_zero_ratio_entries t ht).1)

/-- Two upper-ratio frequency conditions and the low first endpoint suffice for synthesis.
The three remaining assumptions are explicit universal frequency statements. -/
theorem synthesis_of_core_ratio_endpoints (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (hhigh : ∀ t : ℝ, q.b ≤ t → 0 ≤
      Tail.RootSource.core false q.a q.A q.B q.b q.c q.C ((q.c-q.A)/(q.b-q.B)) t)
    (hlow0 : ∀ t : ℝ, 0 ≤ t → t ≤ q.B → 0 ≤
      Tail.RootSource.core true q.a q.A q.B q.b q.c q.C 1 t)
    (hlowM : ∀ t : ℝ, 0 ≤ t → t ≤ q.B → 0 ≤
      Tail.RootSource.core true q.a q.A q.B q.b q.c q.C ((q.c-q.A)/(q.b-q.B)) t) :
    ∃ b : ℝ[X], b.natDegree = 6 ∧
      ∀ a : Poly6, B.Contains a → FrequencySPR a.toPoly b := by
  obtain ⟨hm,hM⟩ := q.ratio_bounds hB
  apply q.synthesis_of_quadratic_cores hB
  · intro t ht
    have hh := concave_ratio_nonneg _ (q.ratio_core_degree false t)
      (hm.trans_le hM) hm.le hM (q.high_core_ratio_concave t ht)
      (by rw [q.ratio_core_eval]; exact q.high_core_first_nonnegative t ht)
      (by rw [q.ratio_core_eval]; exact hhigh t ht)
    simpa only [q.ratio_core_eval] using hh
  · intro t ht0 htB
    have hh := concave_ratio_nonneg _ (q.ratio_core_degree true t)
      (hm.trans_le hM) hm.le hM (q.low_core_ratio_concave t htB)
      (by rw [q.ratio_core_eval]; exact hlow0 t ht0 htB)
      (by rw [q.ratio_core_eval]; exact hlowM t ht0 htB)
    simpa only [q.ratio_core_eval] using hh

end EvenGeometry
end
end SPR.N6
