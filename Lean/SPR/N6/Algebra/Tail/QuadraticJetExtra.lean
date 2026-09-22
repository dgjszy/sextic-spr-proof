import SPR.N6.Algebra.Tail.QuadraticJetMap

/-!
# A second polar direction in the quadratic source

The x-y coefficient adds an independent h direction to the x-z variation.
Both directional derivatives are recovered by symmetric real evaluations.
-/
namespace SPR.N6.Tail.QuadraticJet
noncomputable section
open Polynomial
set_option Elab.async false

/-- The quadratic line with the additional h direction, in normalized units f. -/
def extraLine (css csd csh cdd cdh chh s d h a n r f : ℝ) : ℝ[X] :=
  form (C css) (C csd) (C csh) (C cdd) (C cdh) (C chh)
    (C s+C (a*s+n)*X) (C d+C (a*d)*X) (C h+C (a*h+f*(n+r))*X)

/-- First-order extraction is linear in the two polar directions. -/
theorem extra_coeff_one (css csd csh cdd cdh chh s d h a n r f : ℝ) :
    (extraLine css csd csh cdd cdh chh s d h a n r f).coeff 1 =
      2*a*form css csd csh cdd cdh chh s d h+
      n/2*(form css csd csh cdd cdh chh (s+1) d (h+f)-
        form css csd csh cdd cdh chh (s-1) d (h-f))+
      r/2*(form css csd csh cdd cdh chh s d (h+f)-
        form css csd csh cdd cdh chh s d (h-f)) := by
  simp [extraLine,form,pow_two,mul_coeff_one,mul_coeff_zero]
  ring

/-- Mapped quadratic extraction uses only five real evaluations. -/
theorem quadratic_extra_coeff_one (Q : ℝ[X] → ℝ[X] → ℝ[X]) (q : ℝ → ℝ → ℝ)
    (hQ : ∀ d h : ℝ, Q (C d) (C h) = C (q d h)) (s d h a n r f : ℝ) :
    (OuterHomogeneous.quadratic Q
      (C s+C (a*s+n)*X) (C d+C (a*d)*X)
      (C h+C (a*h+f*(n+r))*X)).coeff 1 =
      2*a*OuterHomogeneous.quadratic q s d h+
      n/2*(OuterHomogeneous.quadratic q (s+1) d (h+f)-
        OuterHomogeneous.quadratic q (s-1) d (h-f))+
      r/2*(OuterHomogeneous.quadratic q s d (h+f)-
        OuterHomogeneous.quadratic q s d (h-f)) := by
  have h00 : Q 0 0 = C (q 0 0) := by simpa using hQ 0 0
  have h10 : Q 1 0 = C (q 1 0) := by simpa using hQ 1 0
  have hn10 : Q (-1) 0 = C (q (-1) 0) := by simpa using hQ (-1) 0
  have h01 : Q 0 1 = C (q 0 1) := by simpa using hQ 0 1
  have h0n1 : Q 0 (-1) = C (q 0 (-1)) := by simpa using hQ 0 (-1)
  have h11 : Q 1 1 = C (q 1 1) := by simpa using hQ 1 1
  have hline : OuterHomogeneous.quadratic Q
      (C s+C (a*s+n)*X) (C d+C (a*d)*X)
      (C h+C (a*h+f*(n+r))*X) =
      extraLine (2*q 0 0) (q 1 0-q (-1) 0) (q 0 1-q 0 (-1))
        (q 1 0+q (-1) 0-2*q 0 0) (2*(q 1 1-q 1 0-q 0 1+q 0 0))
        (q 0 1+q 0 (-1)-2*q 0 0) s d h a n r f := by
    simp only [quadratic_eq_form,extraLine,h00,h10,hn10,h01,h0n1,h11,
      map_add,map_sub,map_mul,map_ofNat]
  rw [hline,extra_coeff_one]
  simp only [← quadratic_eq_form]

/-- Constant coefficient does not depend on either variation. -/
theorem quadratic_extra_coeff_zero (Q : ℝ[X] → ℝ[X] → ℝ[X]) (q : ℝ → ℝ → ℝ)
    (hQ : ∀ d h : ℝ, Q (C d) (C h) = C (q d h)) (s d h a n r f : ℝ) :
    (OuterHomogeneous.quadratic Q
      (C s+C (a*s+n)*X) (C d+C (a*d)*X)
      (C h+C (a*h+f*(n+r))*X)).coeff 0 =
      OuterHomogeneous.quadratic q s d h := by
  have h00 : Q 0 0 = C (q 0 0) := by simpa using hQ 0 0
  have h10 : Q 1 0 = C (q 1 0) := by simpa using hQ 1 0
  have hn10 : Q (-1) 0 = C (q (-1) 0) := by simpa using hQ (-1) 0
  have h01 : Q 0 1 = C (q 0 1) := by simpa using hQ 0 1
  have h0n1 : Q 0 (-1) = C (q 0 (-1)) := by simpa using hQ 0 (-1)
  have h11 : Q 1 1 = C (q 1 1) := by simpa using hQ 1 1
  simp [OuterHomogeneous.quadratic,h00,h10,hn10,h01,h0n1,h11,
    pow_two,mul_coeff_zero]

end
end SPR.N6.Tail.QuadraticJet
