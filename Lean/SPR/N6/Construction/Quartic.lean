import SPR.N6.Construction.Quotients

/-!+# The leading coefficient of every actual contact quotient

The cleared-source certificates must keep the quartic term at the actual root
geometry. In particular its positivity is not required at artificial outer-root
vertices. This module proves its sign directly from the same candidate.
-/
namespace SPR.N6
noncomputable section
open Polynomial
namespace EvenGeometry
variable {B : Box6}

/-- The source's degree-six coefficient comes only from the even pairing. -/
theorem contact_source_top (q : EvenGeometry B) (n : ParityNumerator) (c : Corner) :
    (q.contactSource n c).coeff 6 = -n.f3 := by
  have hn : n.evenPoly.natDegree ≤ 3 := by
    unfold ParityNumerator.evenPoly
    compute_degree!
  have he : (q.evenSource c.1).natDegree ≤ 3 := by
    cases c.1 <;> simp only [evenSource, Bool.false_eq_true, ite_false, ite_true] <;>
      compute_degree!
  have ho : (X*n.oddPoly*q.oddSource c.2).natDegree ≤ 5 := by
    cases c.2 <;>
      simp only [oddSource, ParityNumerator.oddPoly, Bool.false_eq_true, ite_false,
        ite_true] <;> compute_degree!
  have hnc : n.evenPoly.coeff 3 = n.f3 := by
    simp [ParityNumerator.evenPoly]
  have htriple (x y z : ℝ) :
      (((X-Polynomial.C x)*(X-Polynomial.C y)*(X-Polynomial.C z)) : ℝ[X]).coeff 3 = 1 := by
    have hm := ((monic_X_sub_C x).mul (monic_X_sub_C y)).mul (monic_X_sub_C z)
    have hdeg :
        (((X-Polynomial.C x)*(X-Polynomial.C y)*(X-Polynomial.C z)) : ℝ[X]).natDegree = 3 := by
      compute_degree!
    rw [← hdeg]
    exact hm.coeff_natDegree
  have hec : (q.evenSource c.1).coeff 3 = -1 := by
    cases c.1 <;> simp [evenSource, htriple]
  change (n.evenPoly*q.evenSource c.1+X*n.oddPoly*q.oddSource c.2).coeff 6 = _
  rw [coeff_add, coeff_eq_zero_of_natDegree_lt (ho.trans_lt (by omega)), add_zero]
  have hh := coeff_mul_add_eq_of_natDegree_le hn he
  simpa only [hnc,hec,mul_neg_one] using hh

/-- No contact quotient loses its highest term: its coefficient is exactly -f3. -/
theorem candidate_quotient_top (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (c : Corner) : (q.contactQuotient q.candidate c).coeff 4 = -q.candidate.f3 := by
  have hf := q.candidate_source_factor hB c
  have hd : ((X-Polynomial.C (q.contactNode c))^2 : ℝ[X]).natDegree ≤ 2 := by
    compute_degree!
  have htop := coeff_mul_add_eq_of_natDegree_le hd (q.quotient_degree_le q.candidate c)
  have hc := congrArg (fun p : ℝ[X] => p.coeff 6) hf
  dsimp only at hc
  rw [q.contact_source_top,htop] at hc
  have hdegree : ((X-Polynomial.C (q.contactNode c))^2 : ℝ[X]).natDegree = 2 := by
    compute_degree!
  have hmonic := ((monic_X_sub_C (q.contactNode c)).pow 2).coeff_natDegree
  rw [hdegree] at hmonic
  simpa only [hmonic,one_mul] using hc.symm

/-- All four actual quartic leading coefficients are strictly positive. -/
theorem candidate_quotient_top_pos (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (c : Corner) : 0 < (q.contactQuotient q.candidate c).coeff 4 := by
  rw [q.candidate_quotient_top hB c]
  exact neg_pos.mpr (q.candidate_endpoints hB).2.1

/-- The quotient has exact degree four, not merely degree at most four. -/
theorem candidate_quotient_degree (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (c : Corner) : (q.contactQuotient q.candidate c).natDegree = 4 := by
  exact le_antisymm (q.quotient_degree_le q.candidate c)
    (le_natDegree_of_ne_zero (ne_of_gt (q.candidate_quotient_top_pos hB c)))

end EvenGeometry
end
end SPR.N6
