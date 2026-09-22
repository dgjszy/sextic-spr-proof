import SPR.N6.Construction.ClearedSource

/-!
# The actual cleared lower sources are quadratic in the canonical odd ratio

The variable of the polynomials here is the ratio, not frequency. Frequency is
an arbitrary real parameter. Evaluation at the same actual ratio is linked to
the candidate source; no alternate ratio or denominator parameter is chosen.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
open Polynomial
variable {B : Box6}

/-- Clearing weight as a polynomial in the ratio. -/
def ratioWeightPoly (q : EvenGeometry B) : ℝ[X] :=
  Polynomial.C ((q.C-q.A)*(q.b-q.B)^2*(q.c-q.B)+
    (q.c-q.a)*(q.b-q.A)*(q.b-q.B)^2)*X +
  Polynomial.C (q.clearWeightB+q.clearWeightb)

/-- Weighted root numerator as a polynomial in the ratio. -/
def ratioRootPoly (q : EvenGeometry B) : ℝ[X] :=
  Polynomial.C (q.A*(q.C-q.A)*(q.b-q.B)^2*(q.c-q.B)+
    q.c*(q.c-q.a)*(q.b-q.A)*(q.b-q.B)^2)*X +
  Polynomial.C (q.B*q.clearWeightB+q.b*q.clearWeightb)

/-- The denominator-free odd polynomial, considered as a quadratic in the ratio. -/
def ratioOddPoly (q : EvenGeometry B) (t : ℝ) : ℝ[X] :=
  Polynomial.C ((q.A-q.C)*
    ((q.A-q.B)*(q.C-q.B)*(q.c-q.A)-(q.b-q.a)*(q.c-q.A)*(q.c-q.B))*
      (t-q.B)*(t-q.b))*X -
  Polynomial.C ((q.A-q.C)*(q.c-q.a)*(q.b-q.B)^2*(t-q.B)*(t-q.b))*X^2 +
  Polynomial.C ((q.B-q.C)*(q.c-q.B)*
    ((q.B-q.A)*(q.C-q.A)-(q.c-q.a)*(q.b-q.A))*(t-q.A)*(t-q.b)+
    (q.b-q.a)*(q.b-q.c)*((q.C-q.A)*(q.c-q.B)+(q.c-q.a)*(q.b-q.c))*
      (t-q.A)*(t-q.B))*X +
  Polynomial.C ((q.b-q.a)*(q.c-q.A)^2*(q.C-q.B)*(t-q.A)*(t-q.c))

/-- A polynomial whose actual-ratio value is the original cleared source. -/
def ratioSourcePoly (q : EvenGeometry B) (i : Bool) (t : ℝ) : ℝ[X] :=
  let E := if i then B.evenUpper t else B.evenLower t
  X*q.ratioWeightPoly*Polynomial.C (q.D1*q.D2*q.baseF t*E) +
  q.ratioWeightPoly*(Polynomial.C (q.lowerOddShape t)+X*Polynomial.C (q.upperOddShape t))*
    Polynomial.C (q.D1*q.D2*t*q.lowerOddShape t) +
  Polynomial.C q.clearedBaseSecond*
    (X*(q.ratioWeightPoly*Polynomial.C t-q.ratioRootPoly)*Polynomial.C (t*E)+
      q.ratioOddPoly t*Polynomial.C (t*q.lowerOddShape t))

/-- All three scalar clearing quantities are recovered at the same actual ratio. -/
theorem ratio_components_eval (q : EvenGeometry B) (t : ℝ) :
    q.ratioWeightPoly.eval q.ratio = q.commonWeight ∧
    q.ratioRootPoly.eval q.ratio = q.commonWeightedRoot ∧
    (q.ratioOddPoly t).eval q.ratio = q.clearedZeroOdd t := by
  simp only [ratioWeightPoly, ratioRootPoly, ratioOddPoly, eval_add, eval_sub,
    eval_mul, eval_pow, eval_C, eval_X, commonWeight, commonWeightedRoot,
    clearWeightA, clearWeightB, clearWeightb, clearWeightc, clearedZeroOdd]
  constructor
  · ring
  constructor <;> ring

/-- The original candidate lower source, including all clearing factors, is recovered exactly. -/
theorem ratio_source_eval (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (i : Bool) (t : ℝ) :
    (q.ratioSourcePoly i t).eval q.ratio =
      q.D1*q.D2*q.commonWeight*(q.contactSource q.candidate (i,false)).eval t := by
  obtain ⟨hW, hN, hZ⟩ := q.ratio_components_eval t
  rw [q.cleared_lower_source hB i t]
  simp only [ratioSourcePoly, eval_add, eval_sub, eval_mul, eval_C, eval_X, hW, hN, hZ]
  ring

/-- Degree two is proved for the exact source, not inferred from numerical samples. -/
theorem ratio_source_degree (q : EvenGeometry B) (i : Bool) (t : ℝ) :
    (q.ratioSourcePoly i t).natDegree ≤ 2 := by
  dsimp only [ratioSourcePoly, ratioWeightPoly, ratioRootPoly, ratioOddPoly]
  compute_degree!

end EvenGeometry
end
end SPR.N6
