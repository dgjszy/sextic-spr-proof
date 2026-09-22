import SPR.N6.Algebra.Tail.QuadraticJetExtra
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh401ZeroJet

/-!
# Two-direction zero-factor extraction for x⁴y

The new direction changes only the final outer root. Its normalized source
is defined by an exact symmetric difference; no sign is imposed on it alone.
-/
namespace SPR.N6.Tail.CoreEndpoint.MixedHigh410ZeroJet
noncomputable section
open Polynomial
open PureSource MixedHigh401Source MixedHigh401ZeroJet
set_option Elab.async false

/-- Normalized change of the complete high zero source in its H argument. -/
def hDirection (e f g v : ℝ) : ℝ :=
  (normalized e f g v (L e f g) (f+g) (e+f+1)-
    normalized e f g v (L e f g) (f+g) (e+f-1))/2

/-- The line with a radial part and both polar variations. -/
def zeroExtra (e f g v a n r : ℝ) : ℝ[X] :=
  OuterHomogeneous.quadratic (polynomialQ e f g v)
    (C (L e f g)+C (a*L e f g+n)*X)
    (C (J f g)+C (a*J f g)*X)
    (C (f*(e+f))+C (a*(f*(e+f))+f*(n+r))*X)

/-- The zero coefficient preserves the previously proved pure source. -/
theorem zeroExtra_coeff_zero (e f g v a n r : ℝ) (hf : f ≠ 0) :
    (zeroExtra e f g v a n r).coeff 0 = 2*(e+f+g)*Z e f g v := by
  unfold zeroExtra
  rw [QuadraticJet.quadratic_extra_coeff_zero (polynomialQ e f g v)
    (scalarQ e f g v) (polynomialQ_C e f g v)]
  have h0 := scalar_identity e f g v (L e f g) (f+g) (e+f) hf
  rw [normalized_base] at h0
  exact h0

/-- Complete first coefficient; neither individual direction is assumed positive. -/
theorem zeroExtra_coeff_one (e f g v a n r : ℝ) (hf : f ≠ 0) :
    (zeroExtra e f g v a n r).coeff 1 =
      2*(e+f+g)*(2*a*Z e f g v+n*ZR e f g v+r*hDirection e f g v) := by
  unfold zeroExtra
  rw [QuadraticJet.quadratic_extra_coeff_one (polynomialQ e f g v)
    (scalarQ e f g v) (polynomialQ_C e f g v)]
  have h0 := scalar_identity e f g v (L e f g) (f+g) (e+f) hf
  rw [normalized_base] at h0
  have hp := scalar_identity e f g v (L e f g+1) (f+g) (e+f+1) hf
  have hm := scalar_identity e f g v (L e f g-1) (f+g) (e+f-1) hf
  have hhp := scalar_identity e f g v (L e f g) (f+g) (e+f+1) hf
  have hhm := scalar_identity e f g v (L e f g) (f+g) (e+f-1) hf
  have hj : J f g = f*(f+g) := rfl
  have hplus : f*(e+f)+f = f*(e+f+1) := by ring
  have hminus : f*(e+f)-f = f*(e+f-1) := by ring
  rw [hj,hplus,hminus,h0,hp,hm,hhp,hhm]
  unfold hDirection
  linear_combination ((e+f+g)*n)*(normalized_difference e f g v)

end
end SPR.N6.Tail.CoreEndpoint.MixedHigh410ZeroJet
