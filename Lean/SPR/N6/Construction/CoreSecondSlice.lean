import SPR.N6.Algebra.Tail.OuterSecondSlice
import SPR.N6.Construction.OuterCorePolynomial

/-!
# Exact univariate source for mixed outer coefficients

The x-y coordinate plane is represented by a polynomial in y with all gap and
frequency quantities retained as coefficients. Each of its six coefficients
is proved equal to the precise coefficient of the original homogeneous core.
This is a source-extraction interface; it asserts no new coefficient signs.
-/
namespace SPR.N6.OuterParameters
noncomputable section
open MvPolynomial

/-- The factored source on the x-y plane, without expanding the inner parameters. -/
def firstSecondCore (p : SPR.N6.OuterParameters) (i : Bool) (m t : ℝ) : Polynomial ℝ :=
  Tail.OuterHomogeneous.core i
    (Polynomial.C p.L+Polynomial.C p.H*Polynomial.X)
    (Polynomial.C (p.A*p.L-p.J)+Polynomial.C (p.A*p.B*p.dq)*Polynomial.X)
    (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b) (Polynomial.C p.c)
    (Polynomial.C ((p.c+p.f)*p.L-p.J)+Polynomial.C (p.b*p.c*p.dq)*Polynomial.X)
    (Polynomial.C m) (Polynomial.C t)

/-- Ring substitution preserves the complete core source and its factor two. -/
theorem firstSecondSlice_corePolynomial (p : SPR.N6.OuterParameters)
    (i : Bool) (m t : ℝ) :
    Tail.OuterIndices.firstSecondSlice (p.corePolynomial i m t) = p.firstSecondCore i m t := by
  unfold Tail.OuterIndices.firstSecondSlice corePolynomial
  let φ : MvPolynomial (Fin 3) ℝ →+* Polynomial ℝ :=
    eval₂Hom Polynomial.C ![1,Polynomial.X,0]
  rw [Tail.OuterHomogeneous.core_map φ]
  simp [φ,sumPolynomial,firstPolynomial,lastPolynomial,linearPolynomial,firstSecondCore]

/-- Exact source correspondence for all mixed x^(5-k) z^k blocks, with closed index bounds. -/
theorem firstSecondCore_coeff (p : SPR.N6.OuterParameters) (i : Bool) (m t : ℝ)
    (k : ℕ) (hk : k ≤ 5) :
    (p.firstSecondCore i m t).coeff k =
      coeff (Tail.OuterIndices.exponent (5-k) k 0) (p.corePolynomial i m t) := by
  rw [← firstSecondSlice_corePolynomial]
  exact Tail.OuterIndices.coeff_firstSecondSlice _ (p.corePolynomial_homogeneous i m t) k hk
end
end SPR.N6.OuterParameters
