import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsHigh
import SPR.N6.Algebra.Tail.QuinticTransform
/-! Complete high source assembly. The opposite endpoint is imported separately.
The whole source identity is retained; no independent polar sign is presumed. -/
namespace SPR.N6.Tail.SmallGap.PolarPacket
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0
open QuinticSource

/-- All twenty-one coefficients of the normalized high polar source. -/
def high (A e f g v : ℝ) : Coefficients where
  c005 := PolarCoefficients.high005 A e f g v
  c014 := PolarCoefficients.high014 A e f g v
  c023 := PolarCoefficients.high023 A e f g v
  c032 := PolarCoefficients.high032 A e f g v
  c041 := PolarCoefficients.high041 A e f g v
  c050 := PolarCoefficients.high050 A e f g v
  c104 := PolarCoefficients.high104 A e f g v
  c113 := PolarCoefficients.high113 A e f g v
  c122 := PolarCoefficients.high122 A e f g v
  c131 := PolarCoefficients.high131 A e f g v
  c140 := PolarCoefficients.high140 A e f g v
  c203 := PolarCoefficients.high203 A e f g v
  c212 := PolarCoefficients.high212 A e f g v
  c221 := PolarCoefficients.high221 A e f g v
  c230 := PolarCoefficients.high230 A e f g v
  c302 := PolarCoefficients.high302 A e f g v
  c311 := PolarCoefficients.high311 A e f g v
  c320 := PolarCoefficients.high320 A e f g v
  c401 := PolarCoefficients.high401 A e f g v
  c410 := PolarCoefficients.high410 A e f g v
  c500 := PolarCoefficients.high500 A e f g v

/-- Exact whole-source reconstruction. -/
theorem high_eval (A e f g u q h v : ℝ) :
    PolarSource.polarPHigh A e f g u q h v = eval (high A e f g v) u q h := by
  exact PolarCoefficients.high_expansion A e f g u q h v

/-- The coefficient packet after substituting the same actual width coordinates. -/
def highOuter (A e f g v : ℝ) : Coefficients :=
  transform A (2*A+e) ((e+f)*(e+f+g)) (f+g) (high A e f g v)

/-- Universal physical-width substitution, with no positivity assumptions. -/
theorem high_outer_eval (A e f g x y z v : ℝ) :
    PolarSource.polarPHigh A e f g (x+A*z+A^2*y)
      (((e+f)*(e+f+g))*(z+(2*A+e)*y)) (((e+f)*(e+f+g))*(f+g)*y) v =
        eval (highOuter A e f g v) x y z := by
  rw [high_eval, eval_transform]
  rfl

/-- Nonnegative outer coefficients suffice on the complete closed width orthant. -/
theorem high_nonnegative {A e f g x y z v : ℝ}
    (hC : Nonnegative (highOuter A e f g v))
    (hx : 0 ≤ x) (hy : 0 ≤ y) (hz : 0 ≤ z) :
    0 ≤ PolarSource.polarPHigh A e f g (x+A*z+A^2*y)
      (((e+f)*(e+f+g))*(z+(2*A+e)*y)) (((e+f)*(e+f+g))*(f+g)*y) v := by
  rw [high_outer_eval]
  exact eval_nonnegative hC hx hy hz


end
end SPR.N6.Tail.SmallGap.PolarPacket
