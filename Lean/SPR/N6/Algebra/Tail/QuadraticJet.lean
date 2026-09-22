import SPR.N6.Algebra.Tail.OuterHomogeneous
import Mathlib.Algebra.Polynomial.Coeff

/-!
# A bounded first-coefficient rule for homogeneous quadratic sources

A quadratic source along `v + X*(a*v+n*w)` has first coefficient
`2*a*Q(v)+n*(Q(v+w)-Q(v-w))/2`. Here `w=(1,0,f)` is the
polar direction required by the mixed outer coefficient. The coefficients of
Q are arbitrary scalars, so no lower-zero expression needs to be expanded.
-/
namespace SPR.N6.Tail.QuadraticJet
noncomputable section
open Polynomial
set_option Elab.async false

/-- An arbitrary ternary quadratic form, with all six terms explicit. -/
def form {R : Type*} [CommRing R]
    (css csd csh cdd cdh chh s d h : R) : R :=
  css*s^2+csd*s*d+csh*s*h+cdd*d^2+cdh*d*h+chh*h^2

/-- The existing homogeneous interpolation is exactly this six-term form. -/
theorem quadratic_eq_form {R : Type*} [CommRing R] (q : R → R → R) (s d h : R) :
    OuterHomogeneous.quadratic q s d h =
      form (2*q 0 0) (q 1 0-q (-1) 0) (q 0 1-q 0 (-1))
        (q 1 0+q (-1) 0-2*q 0 0) (2*(q 1 1-q 1 0-q 0 1+q 0 0))
        (q 0 1+q 0 (-1)-2*q 0 0) s d h := by
  unfold OuterHomogeneous.quadratic form
  ring

/-- The exact univariate substitution in the direction `a*v+n*(1,0,f)`. -/
def line (css csd csh cdd cdh chh s d h a n f : ℝ) : ℝ[X] :=
  form (C css) (C csd) (C csh) (C cdd) (C cdh) (C chh)
    (C s+C (a*s+n)*X) (C d+C (a*d)*X) (C h+C (a*h+f*n)*X)

/-- The constant coefficient is the original quadratic value. -/
theorem coeff_zero (css csd csh cdd cdh chh s d h a n f : ℝ) :
    (line css csd csh cdd cdh chh s d h a n f).coeff 0 =
      form css csd csh cdd cdh chh s d h := by
  simp [line,form,pow_two,mul_coeff_zero]

/-- The first coefficient separates radial scaling from the polar direction. -/
theorem coeff_one (css csd csh cdd cdh chh s d h a n f : ℝ) :
    (line css csd csh cdd cdh chh s d h a n f).coeff 1 =
      2*a*form css csd csh cdd cdh chh s d h+
        n*(2*css*s+csd*d+csh*(h+f*s)+cdh*f*d+2*chh*f*h) := by
  simp [line,form,pow_two,mul_coeff_one,mul_coeff_zero]
  ring

/-- Two evaluations recover the polar direction without expanding the source coefficients. -/
theorem polar_difference (css csd csh cdd cdh chh s d h f : ℝ) :
    form css csd csh cdd cdh chh (s+1) d (h+f)-
      form css csd csh cdd cdh chh (s-1) d (h-f) =
        2*(2*css*s+csd*d+csh*(h+f*s)+cdh*f*d+2*chh*f*h) := by
  unfold form
  ring

/-- The source first coefficient is determined by three small scalar source evaluations. -/
theorem coeff_one_polarized (css csd csh cdd cdh chh s d h a n f : ℝ) :
    (line css csd csh cdd cdh chh s d h a n f).coeff 1 =
      2*a*form css csd csh cdd cdh chh s d h+
        n/2*(form css csd csh cdd cdh chh (s+1) d (h+f)-
          form css csd csh cdd cdh chh (s-1) d (h-f)) := by
  rw [coeff_one,polar_difference]
  ring

end
end SPR.N6.Tail.QuadraticJet
