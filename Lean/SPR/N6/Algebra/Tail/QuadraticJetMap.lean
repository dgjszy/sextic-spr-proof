import SPR.N6.Algebra.Tail.QuadraticJet

/-!
# Applying the quadratic first-coefficient rule to mapped scalar sources

Only the six scalar samples in homogeneous quadratic interpolation are used.
Compatibility with the constant-polynomial map is explicit and is supplied
by the existing `LowerZero.q0_map` in the high-source application.
-/
namespace SPR.N6.Tail.QuadraticJet
noncomputable section
open Polynomial
set_option Elab.async false

/-- A mapped quadratic source along the required line is the six-term polynomial above. -/
theorem quadratic_line (Q : ℝ[X] → ℝ[X] → ℝ[X]) (q : ℝ → ℝ → ℝ)
    (hQ : ∀ d h : ℝ, Q (C d) (C h) = C (q d h)) (s d h a n f : ℝ) :
    OuterHomogeneous.quadratic Q
      (C s+C (a*s+n)*X) (C d+C (a*d)*X) (C h+C (a*h+f*n)*X) =
      line (2*q 0 0) (q 1 0-q (-1) 0) (q 0 1-q 0 (-1))
        (q 1 0+q (-1) 0-2*q 0 0) (2*(q 1 1-q 1 0-q 0 1+q 0 0))
        (q 0 1+q 0 (-1)-2*q 0 0) s d h a n f := by
  have h00 : Q 0 0 = C (q 0 0) := by simpa using hQ 0 0
  have h10 : Q 1 0 = C (q 1 0) := by simpa using hQ 1 0
  have hn10 : Q (-1) 0 = C (q (-1) 0) := by simpa using hQ (-1) 0
  have h01 : Q 0 1 = C (q 0 1) := by simpa using hQ 0 1
  have h0n1 : Q 0 (-1) = C (q 0 (-1)) := by simpa using hQ 0 (-1)
  have h11 : Q 1 1 = C (q 1 1) := by simpa using hQ 1 1
  simp only [quadratic_eq_form,line,h00,h10,hn10,h01,h0n1,h11,
    map_add,map_sub,map_mul,map_ofNat]

/-- The constant coefficient needs only the scalar source value. -/
theorem quadratic_coeff_zero (Q : ℝ[X] → ℝ[X] → ℝ[X]) (q : ℝ → ℝ → ℝ)
    (hQ : ∀ d h : ℝ, Q (C d) (C h) = C (q d h)) (s d h a n f : ℝ) :
    (OuterHomogeneous.quadratic Q
      (C s+C (a*s+n)*X) (C d+C (a*d)*X) (C h+C (a*h+f*n)*X)).coeff 0 =
      OuterHomogeneous.quadratic q s d h := by
  rw [quadratic_line Q q hQ,coeff_zero,← quadratic_eq_form]

/-- The first coefficient uses three real source values; the polynomial source stays opaque. -/
theorem quadratic_coeff_one (Q : ℝ[X] → ℝ[X] → ℝ[X]) (q : ℝ → ℝ → ℝ)
    (hQ : ∀ d h : ℝ, Q (C d) (C h) = C (q d h)) (s d h a n f : ℝ) :
    (OuterHomogeneous.quadratic Q
      (C s+C (a*s+n)*X) (C d+C (a*d)*X) (C h+C (a*h+f*n)*X)).coeff 1 =
      2*a*OuterHomogeneous.quadratic q s d h+
        n/2*(OuterHomogeneous.quadratic q (s+1) d (h+f)-
          OuterHomogeneous.quadratic q (s-1) d (h-f)) := by
  rw [quadratic_line Q q hQ,coeff_one_polarized,
    ← quadratic_eq_form,← quadratic_eq_form,← quadratic_eq_form]

end
end SPR.N6.Tail.QuadraticJet
