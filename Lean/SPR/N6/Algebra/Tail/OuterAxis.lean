import SPR.N6.Algebra.Tail.OuterIndices

/-! A pure outer-coordinate evaluation extracts exactly one homogeneous coefficient. -/
namespace SPR.N6.Tail.OuterIndices
noncomputable section
open MvPolynomial

/-- Homogeneity rules out every other monomial on the first coordinate axis. -/
theorem eval_first_axis (P : MvPolynomial (Fin 3) ℝ) (hP : P.IsHomogeneous 5) :
    eval ![1,0,0] P = coeff (exponent 5 0 0) P := by
  classical
  conv_lhs => rw [expansion P hP]
  simp only [map_sum,eval_monomial]
  have he : exponent 5 0 0 ∈ indices := (mem_indices_iff _).mpr (by
    rw [exponent_degree])
  rw [Finset.sum_eq_single_of_mem (exponent 5 0 0) he]
  · simp [Finsupp.prod_fintype,Fin.prod_univ_succ,exponent]
  · intro d hd hne
    have hdeg := (mem_indices_iff d).mp hd
    rw [degree_three] at hdeg
    have hn : d 1 ≠ 0 ∨ d 2 ≠ 0 := by
      by_contra hh
      push_neg at hh
      have h0 : d 0 = 5 := by omega
      apply hne
      ext n
      fin_cases n <;> simp [exponent,h0,hh.1,hh.2]
    rw [Finsupp.prod_fintype _ _ (fun _ => pow_zero _)]
    simp only [Fin.prod_univ_succ,Fin.isValue,Matrix.cons_val_zero,
      Matrix.cons_val_succ,Fin.val_zero,Fin.mk_one,Fin.mk_zero',Fin.succ_zero_eq_one,
      Fin.succ_one_eq_two,Fin.prod_univ_zero,mul_one,one_pow]
    rcases hn with hn | hn <;> simp [zero_pow hn]
end
end SPR.N6.Tail.OuterIndices
