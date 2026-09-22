import SPR.N6.Algebra.Tail.OuterIndices
import Mathlib.Algebra.Polynomial.Coeff

/-!
# Complete coefficient extraction on an first-second outer coordinate plane

Setting the first outer coordinate to one and the third to zero leaves a
univariate polynomial in the second. Homogeneity identifies every one of its
six coefficients with the precise original outer exponent, not just its value
on the pure axis. This prepares source connections for mixed outer blocks.
-/
namespace SPR.N6.Tail.OuterIndices
noncomputable section
open MvPolynomial

/-- The entire x-y plane slice, retaining y as a formal indeterminate. -/
def firstSecondSlice (P : MvPolynomial (Fin 3) ℝ) : Polynomial ℝ :=
  eval₂Hom Polynomial.C ![1,Polynomial.X,0] P

/-- All six mixed x-y coefficients are recovered exactly by the same substitution. -/
theorem coeff_firstSecondSlice (P : MvPolynomial (Fin 3) ℝ)
    (hP : P.IsHomogeneous 5) (k : ℕ) (hk : k ≤ 5) :
    (firstSecondSlice P).coeff k = coeff (exponent (5-k) k 0) P := by
  classical
  unfold firstSecondSlice
  conv_lhs => rw [expansion P hP]
  simp only [map_sum,Polynomial.finsetSum_coeff,eval₂Hom_monomial]
  have he : exponent (5-k) k 0 ∈ indices := (mem_indices_iff _).mpr (by
    rw [exponent_degree]
    omega)
  rw [Finset.sum_eq_single_of_mem (exponent (5-k) k 0) he]
  · simp [Finsupp.prod_fintype,Fin.prod_univ_succ,exponent,Polynomial.coeff_C_mul]
  · intro d hd hne
    have hdeg := (mem_indices_iff d).mp hd
    rw [degree_three] at hdeg
    have hn : d 2 ≠ 0 ∨ d 1 ≠ k := by
      by_contra hh
      push Not at hh
      have h0 : d 0 = 5-k := by omega
      apply hne
      ext n
      fin_cases n <;> simp [exponent,h0,hh.2,hh.1]
    rw [Finsupp.prod_fintype _ _ (fun _ => pow_zero _)]
    simp only [Fin.prod_univ_succ,Matrix.cons_val_zero,Matrix.cons_val_succ,
      Fin.prod_univ_zero,mul_one,one_pow,Matrix.head_cons,Matrix.tail_cons]
    rcases hn with hn | hn
    · simp [zero_pow hn]
    · by_cases h1 : d 2 = 0
      · simp [h1,Polynomial.coeff_C_mul,Polynomial.coeff_X_pow,Ne.symm hn]
      · simp [zero_pow h1]
end
end SPR.N6.Tail.OuterIndices
