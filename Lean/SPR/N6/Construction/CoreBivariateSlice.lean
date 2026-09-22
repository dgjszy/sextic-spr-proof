import SPR.N6.Algebra.Tail.OuterBivariateSlice
import SPR.N6.Construction.CoreSlice

/-!
# Factored nested polynomial source for every outer core block

Both free outer coordinates remain formal indeterminates. Every one of the
21 coefficients is connected to the original core; inner roots, ratio and
frequency remain arbitrary real parameters. No sign claim is added here.
-/
namespace SPR.N6.OuterParameters
noncomputable section
open MvPolynomial

/-- Constant embedding into the two independent polynomial variables. -/
def nestedConstant : ℝ →+* Polynomial (Polynomial ℝ) := Polynomial.C.comp Polynomial.C

/-- The full core with the two remaining coordinates kept polynomial. -/
def bivariateCore (p : SPR.N6.OuterParameters) (i : Bool) (m t : ℝ) :
    Polynomial (Polynomial ℝ) :=
  Tail.OuterHomogeneous.core i
    (nestedConstant p.L+nestedConstant p.H*Polynomial.X+
      nestedConstant p.dq*Polynomial.C Polynomial.X)
    (nestedConstant (p.A*p.L-p.J)+nestedConstant (p.A*p.B*p.dq)*Polynomial.X+
      nestedConstant (p.A*p.B*p.L)*Polynomial.C Polynomial.X)
    (nestedConstant p.A) (nestedConstant p.B) (nestedConstant p.b) (nestedConstant p.c)
    (nestedConstant ((p.c+p.f)*p.L-p.J)+nestedConstant (p.b*p.c*p.dq)*Polynomial.X+
      nestedConstant (p.b*p.c*p.L)*Polynomial.C Polynomial.X)
    (nestedConstant m) (nestedConstant t)

/-- Exact complete source recovery under the nested substitution. -/
theorem bivariateSlice_corePolynomial (p : SPR.N6.OuterParameters)
    (i : Bool) (m t : ℝ) :
    Tail.OuterIndices.bivariateSlice (p.corePolynomial i m t) = p.bivariateCore i m t := by
  unfold Tail.OuterIndices.bivariateSlice corePolynomial
  let φ : MvPolynomial (Fin 3) ℝ →+* Polynomial (Polynomial ℝ) :=
    eval₂Hom (Polynomial.C.comp Polynomial.C) ![1,Polynomial.X,Polynomial.C Polynomial.X]
  rw [Tail.OuterHomogeneous.core_map φ]
  simp [φ,sumPolynomial,firstPolynomial,lastPolynomial,linearPolynomial,
    bivariateCore,nestedConstant]

/-- All 21 original source coefficients are the displayed nested polynomial coefficients. -/
theorem bivariateCore_coeff (p : SPR.N6.OuterParameters) (i : Bool) (m t : ℝ)
    (j k : ℕ) (hjk : j+k ≤ 5) :
    ((p.bivariateCore i m t).coeff j).coeff k =
      coeff (Tail.OuterIndices.exponent (5-j-k) j k) (p.corePolynomial i m t) := by
  rw [← bivariateSlice_corePolynomial]
  exact Tail.OuterIndices.coeff_bivariateSlice _ (p.corePolynomial_homogeneous i m t) j k hjk
end
end SPR.N6.OuterParameters
