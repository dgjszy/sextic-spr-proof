import SPR.N6.Construction.Contacts

/-!
# Four actual contact quotients

The quotients are defined by monic polynomial division. Value and derivative
identities certify each forced double contact, so no division by a vanishing
frequency expression is used. Universal quotient positivity is a separate
obligation and is not asserted in this module.
-/
namespace SPR.N6
noncomputable section
open Polynomial

namespace ParityNumerator

def evenPoly (n : ParityNumerator) : ℝ[X] :=
  Polynomial.C n.f3 * X ^ 3 + Polynomial.C n.f2 * X ^ 2 + Polynomial.C n.f1 * X + Polynomial.C n.f0

def oddPoly (n : ParityNumerator) : ℝ[X] := Polynomial.C n.k2 * X ^ 2 + Polynomial.C n.k1 * X + Polynomial.C n.k0

@[simp] theorem eval_evenPoly (n : ParityNumerator) (t : ℝ) : n.evenPoly.eval t = n.F t := by
  simp [evenPoly, F]

@[simp] theorem eval_oddPoly (n : ParityNumerator) (t : ℝ) : n.oddPoly.eval t = n.K t := by
  simp [oddPoly, K]

end ParityNumerator

namespace EvenGeometry
variable {B : Box6}

def evenSource (g : EvenGeometry B) (i : Bool) : ℝ[X] :=
  if i then -((X - Polynomial.C g.A) * (X - Polynomial.C g.B) * (X - Polynomial.C g.C))
  else -((X - Polynomial.C g.a) * (X - Polynomial.C g.b) * (X - Polynomial.C g.c))

def oddSource (g : EvenGeometry B) (j : Bool) : ℝ[X] :=
  if j then Polynomial.C g.ratio * ((X - Polynomial.C g.B) * (X - Polynomial.C g.b))
  else (X - Polynomial.C g.A) * (X - Polynomial.C g.c)

/-- The four source polynomials for the same numerator and actual canonical ratio. -/
def contactSource (g : EvenGeometry B) (n : ParityNumerator) (c : Corner) : ℝ[X] :=
  n.evenPoly * g.evenSource c.1 + X * n.oddPoly * g.oddSource c.2

def contactNode (g : EvenGeometry B) (c : Corner) : ℝ :=
  if c.1 then (if c.2 then g.B else g.A) else (if c.2 then g.b else g.c)

/-- A polynomial quotient, well-defined also at the contact frequency. -/
def contactQuotient (g : EvenGeometry B) (n : ParityNumerator) (c : Corner) : ℝ[X] :=
  g.contactSource n c /ₘ (X - Polynomial.C (g.contactNode c)) ^ 2

theorem eval_contactSource (g : EvenGeometry B) (n : ParityNumerator) (c : Corner) (t : ℝ) :
    (g.contactSource n c).eval t = n.F t * (if c.1 then B.evenUpper t else B.evenLower t) +
      t * n.K t * (if c.2 then g.ratio * g.upperOddShape t else g.lowerOddShape t) := by
  rcases c with ⟨i, j⟩
  cases i <;> cases j <;>
    simp [contactSource, evenSource, oddSource, lowerOddShape, upperOddShape,
      g.lower_value, g.upper_value] <;> ring

/-- The source always vanishes at its designated contact, for any parity numerator. -/
theorem source_at_node (g : EvenGeometry B) (n : ParityNumerator) (c : Corner) :
    (g.contactSource n c).eval (g.contactNode c) = 0 := by
  rcases c with ⟨i, j⟩
  cases i <;> cases j <;> simp [contactSource, contactNode, evenSource, oddSource]

/-- The two interpolation values at A,c are nonzero for the actual mixed candidate. -/
theorem candidate_contact_nonzero (g : EvenGeometry B) (hB : B.RobustlyHurwitz) :
    g.candidate.K g.A ≠ 0 ∧ g.candidate.K g.c ≠ 0 :=
  ⟨ne_of_gt (g.candidate_odd_node_signs hB).1,
    ne_of_gt (g.candidate_odd_node_signs hB).2.2.2⟩

/-- Every squared contact factor divides the same mixed candidate source. -/
theorem candidate_source_derivative (g : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (c : Corner) :
    (g.contactSource g.candidate c).derivative.eval (g.contactNode c) = 0 := by
  obtain ⟨hba, hca, hCA, hCB, hcb, hBA, hbA, hbB, hcA, hcB⟩ := g.positive_gaps
  have hm : 0 < g.ratio := lt_trans zero_lt_one (g.ratio_bounds hB).1
  have n1 := ne_of_gt hba
  have n2 := ne_of_gt hca
  have n3 := ne_of_gt hCA
  have n4 := ne_of_gt hCB
  have n5 := ne_of_gt hcb
  have n6 := ne_of_gt hBA
  have n7 := ne_of_gt hbA
  have n8 := ne_of_gt hbB
  have n9 := ne_of_gt hcA
  have n10 := ne_of_gt hcB
  have nm := ne_of_gt hm
  have nAB : g.A - g.B ≠ 0 := sub_ne_zero.mpr (ne_of_lt g.A_lt_B)
  have nAc : g.A - g.c ≠ 0 := sub_ne_zero.mpr (ne_of_lt (g.A_lt_B.trans
    (g.B_lt_b.trans g.b_lt_c)))
  have nBb : g.B - g.b ≠ 0 := sub_ne_zero.mpr (ne_of_lt g.B_lt_b)
  obtain ⟨hA, hB', hb, hc⟩ := g.zeroK_nodes hB
  rcases c with ⟨i, j⟩
  cases i <;> cases j <;>
    simp [contactSource, contactNode, evenSource, oddSource, derivative_mul,
      candidate_even, candidate_odd, hA, hB', hb, hc, valueA, valueB, valueb,
      baseF, lowerOddShape, upperOddShape, la0, la1, lb0, lb1, gapX, gapY, gapZ, gapW] <;>
    field_simp <;> ring

private theorem double_root_dvd {p : ℝ[X]} {r : ℝ}
    (hzero : p.eval r = 0) (hderiv : p.derivative.eval r = 0) : (X - Polynomial.C r) ^ 2 ∣ p := by
  obtain ⟨q, hq⟩ := dvd_iff_isRoot.mpr hzero
  have hqr : q.eval r = 0 := by
    rw [hq, derivative_mul] at hderiv
    simpa using hderiv
  obtain ⟨v, hv⟩ := dvd_iff_isRoot.mpr hqr
  refine ⟨v, ?_⟩
  rw [hq, hv]
  ring

/-- Exact factorization into the squared contact and its polynomial quotient. -/
theorem candidate_source_factor (g : EvenGeometry B) (hB : B.RobustlyHurwitz) (c : Corner) :
    g.contactSource g.candidate c =
      (X - Polynomial.C (g.contactNode c)) ^ 2 * g.contactQuotient g.candidate c := by
  have hd := double_root_dvd (g.source_at_node g.candidate c) (g.candidate_source_derivative hB c)
  have hm := (monic_X_sub_C (g.contactNode c)).pow 2
  have hz := (modByMonic_eq_zero_iff_dvd hm).mpr hd
  have hi := modByMonic_add_div (g.contactSource g.candidate c) ((X - Polynomial.C (g.contactNode c)) ^ 2)
  simpa [hz, contactQuotient] using hi.symm

/-- Quotient degree is at most four; no sixth-degree coefficient is discarded. -/
theorem quotient_degree_le (g : EvenGeometry B) (n : ParityNumerator) (c : Corner) :
    (g.contactQuotient n c).natDegree ≤ 4 := by
  have hdeg : (g.contactSource n c).natDegree ≤ 6 := by
    rcases c with ⟨i, j⟩
    cases i <;> cases j <;>
      simp only [contactSource, evenSource, oddSource, Bool.false_eq_true, ite_false, ite_true,
        ParityNumerator.evenPoly, ParityNumerator.oddPoly] <;> compute_degree!
  rw [contactQuotient, natDegree_divByMonic _ ((monic_X_sub_C _).pow 2)]
  have hd : ((X - Polynomial.C (g.contactNode c)) ^ 2 : ℝ[X]).natDegree = 2 := by compute_degree!
  rw [hd]
  omega

end EvenGeometry
end
end SPR.N6
