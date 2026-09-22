import SPR.N6.Algebra.Tail.OuterIndices
import Mathlib.Algebra.Polynomial.Coeff

/-!
# Complete coefficient extraction on an outer coordinate plane

Setting the first outer coordinate to one and the second to zero leaves a
univariate polynomial in the third. Homogeneity identifies every one of its
six coefficients with the precise original outer exponent, not just its value
on the pure axis. This prepares source connections for mixed outer blocks.
-/
namespace SPR.N6.Tail.OuterIndices
noncomputable section
open MvPolynomial

/-- The entire x-z plane slice, retaining z as a formal indeterminate. -/
def firstThirdSlice (P : MvPolynomial (Fin 3) ℝ) : Polynomial ℝ :=
  eval₂Hom Polynomial.C ![1,0,Polynomial.X] P

/-- All six mixed x-z coefficients are recovered exactly by the same substitution. -/
theorem coeff_firstThirdSlice (P : MvPolynomial (Fin 3) ℝ)
    (hP : P.IsHomogeneous 5) (k : ℕ) (hk : k ≤ 5) :
    (firstThirdSlice P).coeff k = coeff (exponent (5-k) 0 k) P := by
  classical
  unfold firstThirdSlice
  conv_lhs => rw [expansion P hP]
  simp only [map_sum,Polynomial.finsetSum_coeff,eval₂Hom_monomial]
  have he : exponent (5-k) 0 k ∈ indices := (mem_indices_iff _).mpr (by
    rw [exponent_degree]
    omega)
  rw [Finset.sum_eq_single_of_mem (exponent (5-k) 0 k) he]
  · simp [Finsupp.prod_fintype,Fin.prod_univ_succ,exponent,Polynomial.coeff_C_mul]
  · intro d hd hne
    have hdeg := (mem_indices_iff d).mp hd
    rw [degree_three] at hdeg
    have hn : d 1 ≠ 0 ∨ d 2 ≠ k := by
      by_contra hh
      push Not at hh
      have h0 : d 0 = 5-k := by omega
      apply hne
      ext n
      fin_cases n <;> simp [exponent,h0,hh.1,hh.2]
    rw [Finsupp.prod_fintype _ _ (fun _ => pow_zero _)]
    simp only [Fin.prod_univ_succ,Matrix.cons_val_zero,Matrix.cons_val_succ,
      Fin.prod_univ_zero,mul_one,one_pow,Matrix.head_cons,Matrix.tail_cons]
    rcases hn with hn | hn
    · simp [zero_pow hn]
    · by_cases h1 : d 1 = 0
      · simp [h1,Polynomial.coeff_C_mul,Polynomial.coeff_X_pow,Ne.symm hn]
      · simp [zero_pow h1]
end
end SPR.N6.Tail.OuterIndices
