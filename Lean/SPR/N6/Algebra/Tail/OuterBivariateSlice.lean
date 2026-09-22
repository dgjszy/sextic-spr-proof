import SPR.N6.Algebra.Tail.OuterSlice

/-!
# Complete nested polynomial extraction of all twenty-one outer coefficients

The first coordinate is set to one; the second and third become independent
polynomial indeterminates. Homogeneity recovers the missing first exponent.
Thus no mixed coordinate block is identified by sampling or omitted from the
source correspondence.
-/
namespace SPR.N6.Tail.OuterIndices
noncomputable section
open MvPolynomial

/-- Outer polynomial variable is y; the inner polynomial variable is z. -/
def bivariateSlice (P : MvPolynomial (Fin 3) ℝ) : Polynomial (Polynomial ℝ) :=
  eval₂Hom (Polynomial.C.comp Polynomial.C)
    ![1,Polynomial.X,Polynomial.C Polynomial.X] P

/-- Exact coefficient extraction for an arbitrary source monomial. -/
theorem bivariate_monomial (d : Fin 3 →₀ ℕ) (r : ℝ) (j k : ℕ) :
    ((bivariateSlice (monomial d r)).coeff j).coeff k =
      if d 1 = j ∧ d 2 = k then r else 0 := by
  unfold bivariateSlice
  rw [eval₂Hom_monomial,Finsupp.prod_fintype _ _ (fun _ => pow_zero _)]
  simp only [RingHom.comp_apply,Fin.prod_univ_succ,Matrix.cons_val_zero,
    Matrix.cons_val_succ,Fin.prod_univ_zero,mul_one,one_pow,one_mul,
    Fin.succ_zero_eq_one,Fin.succ_one_eq_two]
  have hp : ((Polynomial.X : Polynomial (Polynomial ℝ))^d 1*
      (Polynomial.C Polynomial.X)^d 2).coeff j =
      (if d 1 = j then 1 else 0)*(Polynomial.X : Polynomial ℝ)^d 2 := by
    rw [← Polynomial.C_pow,Polynomial.coeff_mul_C,Polynomial.coeff_X_pow]
    simp only [eq_comm]
  simp only [Polynomial.coeff_C_mul]
  rw [hp]
  by_cases hj : d 1 = j <;> by_cases hk : d 2 = k <;>
    simp [hj,hk,eq_comm,Polynomial.coeff_C_mul,Polynomial.coeff_X_pow] <;> aesop


/-- All twenty-one degree-five mixed blocks correspond to the original exact coefficients. -/
theorem coeff_bivariateSlice (P : MvPolynomial (Fin 3) ℝ)
    (hP : P.IsHomogeneous 5) (j k : ℕ) (hjk : j+k ≤ 5) :
    ((bivariateSlice P).coeff j).coeff k = coeff (exponent (5-j-k) j k) P := by
  classical
  have hsum : bivariateSlice P =
      ∑ d ∈ indices, bivariateSlice (monomial d (coeff d P)) := by
    unfold bivariateSlice
    conv_lhs => rw [expansion P hP]
    simp only [map_sum]
  rw [hsum]
  simp only [Polynomial.finsetSum_coeff,bivariate_monomial]
  have he : exponent (5-j-k) j k ∈ indices := (mem_indices_iff _).mpr (by
    rw [exponent_degree]
    omega)
  rw [Finset.sum_eq_single_of_mem (exponent (5-j-k) j k) he]
  · simp [exponent]
  · intro d hd hne
    have hdeg := (mem_indices_iff d).mp hd
    rw [degree_three] at hdeg
    have hn : ¬(d 1 = j ∧ d 2 = k) := by
      intro hh
      have h0 : d 0 = 5-j-k := by omega
      apply hne
      ext n
      fin_cases n <;> simp [exponent,h0,hh.1,hh.2]
    simp [hn]
end
end SPR.N6.Tail.OuterIndices
