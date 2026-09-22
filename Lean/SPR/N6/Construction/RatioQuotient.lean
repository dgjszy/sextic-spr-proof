import SPR.N6.Construction.LowerSource
import SPR.N6.Construction.RatioPolynomial
import SPR.N6.Synthesis.RatioInterpolation

/-!
# Actual contact quotients as polynomials in the same canonical ratio

The polynomial variable is the ratio, with frequency held fixed. Defining the
zero quotient functorially avoids division by a frequency contact. The endpoint
certificate interface therefore includes all contact frequencies exactly.
-/
namespace SPR.N6
noncomputable section
open Polynomial
namespace EvenGeometry
variable {B : Box6}

/-- The quadratic zero quotient with a polynomial, rather than scalar, ratio. -/
def ratioZeroQuotientPoly (q : EvenGeometry B) (i : Bool) (t : ℝ) : ℝ[X] :=
  (if i then LowerZero.q1 else LowerZero.q0)
    (Polynomial.C (q.A-q.a)) (Polynomial.C (q.B-q.A)) (Polynomial.C (q.b-q.B))
    (Polynomial.C (q.c-q.b)) (Polynomial.C (q.C-q.c)) X (Polynomial.C (t-q.B))

/-- Evaluation is the exact actual zero quotient, also at its contact. -/
theorem ratio_zero_quotient_eval (q : EvenGeometry B) (i : Bool) (t : ℝ) :
    (q.ratioZeroQuotientPoly i t).eval q.ratio = q.lowerZeroQuotient i t := by
  cases i
  · have hh := LowerZero.q0_map (Polynomial.evalRingHom q.ratio)
      (Polynomial.C (q.A-q.a)) (Polynomial.C (q.B-q.A)) (Polynomial.C (q.b-q.B))
      (Polynomial.C (q.c-q.b)) (Polynomial.C (q.C-q.c)) X (Polynomial.C (t-q.B))
    simpa [ratioZeroQuotientPoly,lowerZeroQuotient] using hh
  · have hh := LowerZero.q1_map (Polynomial.evalRingHom q.ratio)
      (Polynomial.C (q.A-q.a)) (Polynomial.C (q.B-q.A)) (Polynomial.C (q.b-q.B))
      (Polynomial.C (q.c-q.b)) (Polynomial.C (q.C-q.c)) X (Polynomial.C (t-q.B))
    simpa [ratioZeroQuotientPoly,lowerZeroQuotient] using hh

set_option maxHeartbeats 0 in
/-- The zero quotient has ratio degree at most two as a polynomial identity. -/
theorem ratio_zero_quotient_degree (q : EvenGeometry B) (i : Bool) (t : ℝ) :
    (q.ratioZeroQuotientPoly i t).natDegree ≤ 2 := by
  cases i <;>
    simp only [ratioZeroQuotientPoly, Bool.false_eq_true, ite_false, ite_true,
      LowerZero.q0, LowerZero.q00, LowerZero.q01, LowerZero.q02,
      LowerZero.q1, LowerZero.q10, LowerZero.q11, LowerZero.q12] <;> compute_degree!

/-- The cleared full quotient has only the actual fixed geometry as coefficients. -/
def ratioQuotientPoly (q : EvenGeometry B) (i : Bool) (t : ℝ) : ℝ[X] :=
  Polynomial.C (q.D1*q.D2)*q.ratioWeightPoly*
    (X*Polynomial.C (if i then (t-q.B)^2*q.residualUpper t else
      (t-q.b)^2*q.residualLower t)+
      Polynomial.C (t*(if i then (t-q.c)^2 else (t-q.A)^2)))+
  Polynomial.C (q.clearedBaseSecond*t)*q.ratioZeroQuotientPoly i t

/-- Same-candidate evaluation with one common positive denominator factor. -/
theorem ratio_quotient_eval (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (i : Bool) (t : ℝ) :
    (q.ratioQuotientPoly i t).eval q.ratio =
      q.D1*q.D2*q.commonWeight*(q.contactQuotient q.candidate (i,false)).eval t := by
  have hW := (q.ratio_components_eval t).1
  rw [q.lower_candidate_quotient hB i t]
  simp only [ratioQuotientPoly,eval_add,eval_mul,eval_X,eval_C,hW,
    q.ratio_zero_quotient_eval]
  cases i <;> simp only [lowerBaseline,Bool.false_eq_true,ite_false,ite_true] <;> ring

/-- No higher ratio term has been discarded. -/
theorem ratio_quotient_degree (q : EvenGeometry B) (i : Bool) (t : ℝ) :
    (q.ratioQuotientPoly i t).natDegree ≤ 2 := by
  have hz := q.ratio_zero_quotient_degree i t
  unfold ratioQuotientPoly ratioWeightPoly
  compute_degree!

/-- Three weak ratio entries certify the same actual quotient, including its contact value. -/
theorem quotient_nonneg_of_ratio_entries (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (i : Bool) (t : ℝ)
    (h0 : 0 ≤ (q.ratioQuotientPoly i t).eval 1)
    (h1 : 0 ≤ ratioMiddle (q.ratioQuotientPoly i t) ((q.c-q.A)/(q.b-q.B)))
    (h2 : 0 ≤ (q.ratioQuotientPoly i t).eval ((q.c-q.A)/(q.b-q.B))) :
    0 ≤ (q.contactQuotient q.candidate (i,false)).eval t := by
  obtain ⟨hm,hM⟩ := q.ratio_bounds hB
  have hp := quadratic_ratio_nonneg (q.ratioQuotientPoly i t) (q.ratio_quotient_degree i t)
    (hm.trans_le hM) hm.le hM h0 h1 h2
  rw [q.ratio_quotient_eval hB i t] at hp
  obtain ⟨hba,hca,hCA,hCB,_,_,_,_,_,_⟩ := q.positive_gaps
  have hD1 : 0 < q.D1 := mul_pos hba hca
  have hD2 : 0 < q.D2 := mul_pos hCA hCB
  exact (mul_nonneg_iff_of_pos_left
    (mul_pos (mul_pos hD1 hD2) (q.clear_factors_pos hB).2)).mp hp

end EvenGeometry
end
end SPR.N6
