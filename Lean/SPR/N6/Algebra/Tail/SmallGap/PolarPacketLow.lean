import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsLow
import SPR.N6.Algebra.Tail.QuinticTransform
/-! Complete low source assembly. The opposite endpoint is imported separately.
The whole source identity is retained; no independent polar sign is presumed. -/
namespace SPR.N6.Tail.SmallGap.PolarPacket
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0
open QuinticSource

/-- All twenty-one coefficients of the normalized low polar source. -/
def low (A e f g v : ℝ) : Coefficients where
  c005 := PolarCoefficients.low005 A e f g v
  c014 := PolarCoefficients.low014 A e f g v
  c023 := PolarCoefficients.low023 A e f g v
  c032 := PolarCoefficients.low032 A e f g v
  c041 := PolarCoefficients.low041 A e f g v
  c050 := PolarCoefficients.low050 A e f g v
  c104 := PolarCoefficients.low104 A e f g v
  c113 := PolarCoefficients.low113 A e f g v
  c122 := PolarCoefficients.low122 A e f g v
  c131 := PolarCoefficients.low131 A e f g v
  c140 := PolarCoefficients.low140 A e f g v
  c203 := PolarCoefficients.low203 A e f g v
  c212 := PolarCoefficients.low212 A e f g v
  c221 := PolarCoefficients.low221 A e f g v
  c230 := PolarCoefficients.low230 A e f g v
  c302 := PolarCoefficients.low302 A e f g v
  c311 := PolarCoefficients.low311 A e f g v
  c320 := PolarCoefficients.low320 A e f g v
  c401 := PolarCoefficients.low401 A e f g v
  c410 := PolarCoefficients.low410 A e f g v
  c500 := PolarCoefficients.low500 A e f g v

/-- Exact whole-source reconstruction. -/
theorem low_eval (A e f g u q h v : ℝ) :
    PolarSource.polarPLow A e f g u q h v = eval (low A e f g v) u q h := by
  exact PolarCoefficients.low_expansion A e f g u q h v

/-- The coefficient packet after substituting the same actual width coordinates. -/
def lowOuter (A e f g v : ℝ) : Coefficients :=
  transform A (2*A+e) ((e+f)*(e+f+g)) (f+g) (low A e f g v)

/-- Universal physical-width substitution, with no positivity assumptions. -/
theorem low_outer_eval (A e f g x y z v : ℝ) :
    PolarSource.polarPLow A e f g (x+A*z+A^2*y)
      (((e+f)*(e+f+g))*(z+(2*A+e)*y)) (((e+f)*(e+f+g))*(f+g)*y) v =
        eval (lowOuter A e f g v) x y z := by
  rw [low_eval, eval_transform]
  rfl

/-- Nonnegative outer coefficients suffice on the complete closed width orthant. -/
theorem low_nonnegative {A e f g x y z v : ℝ}
    (hC : Nonnegative (lowOuter A e f g v))
    (hx : 0 ≤ x) (hy : 0 ≤ y) (hz : 0 ≤ z) :
    0 ≤ PolarSource.polarPLow A e f g (x+A*z+A^2*y)
      (((e+f)*(e+f+g))*(z+(2*A+e)*y)) (((e+f)*(e+f+g))*(f+g)*y) v := by
  rw [low_outer_eval]
  exact eval_nonnegative hC hx hy hz

end
end SPR.N6.Tail.SmallGap.PolarPacket
