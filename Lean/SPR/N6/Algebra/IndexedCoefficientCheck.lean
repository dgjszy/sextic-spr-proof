import SPR.N6.Algebra.SparseCoefficients

/-!
# Bounded coefficient checks with complete degree coverage

Each coefficient identity may be checked in a separate declaration. The degree
bounds below check the complete extracted lists; the final theorem therefore
does not assume that unexamined higher coefficients vanish.
-/
namespace SPR.N6.CertificateExpression
noncomputable section
open Lean.Grind.CommRing

/-- A finite family of checked coefficients covers the entire two lists. -/
theorem coefficientsCheck_of_indices (xs ys : List Expr) (n : ℕ)
    (hx : xs.length ≤ n) (hy : ys.length ≤ n)
    (h : ∀ i : ℕ, i < n → polynomialCheck (xs.getD i (.num 0))
      (ys.getD i (.num 0)) = true) : coefficientsCheck xs ys = true := by
  induction n generalizing xs ys with
  | zero =>
    have hxs : xs = [] := by cases xs <;> simp_all
    have hys : ys = [] := by cases ys <;> simp_all
    subst xs
    subst ys
    rfl
  | succ n ih =>
    cases xs with
    | nil =>
      cases ys with
      | nil => rfl
      | cons y ys =>
        have hh := h 0 (Nat.zero_lt_succ n)
        have ht := ih [] ys (by simp) (by simpa using hy)
          (fun i hi => by simpa using h (i+1) (Nat.succ_lt_succ hi))
        simp only [List.getD_cons_zero,List.getD_nil] at hh
        have hh' : polynomialCheck y (.num 0) = true := by
          unfold polynomialCheck at hh ⊢
          simpa only [Poly.beq'_eq] using Eq.symm (show (.num 0 : Expr).toPoly_k = y.toPoly_k from
            by simpa only [Poly.beq'_eq] using hh)
        simpa only [coefficientsCheck,coefficientsZeroCheck,hh',ht,Bool.and_self] using ht
    | cons x xs =>
      cases ys with
      | nil =>
        have hh : polynomialCheck x (.num 0) = true := by
          simpa using h 0 (Nat.zero_lt_succ n)
        have ht := ih xs [] (by simpa using hx) (by simp)
          (fun i hi => by simpa using h (i+1) (Nat.succ_lt_succ hi))
        simpa only [coefficientsCheck,List.getD_cons_zero,List.getD_nil,hh,ht,
          Bool.and_self] using ht
      | cons y ys =>
        have hh : polynomialCheck x y = true := by
          simpa using h 0 (Nat.zero_lt_succ n)
        have ht := ih xs ys (by simpa using hx) (by simpa using hy)
          (fun i hi => by simpa using h (i+1) (Nat.succ_lt_succ hi))
        simpa only [coefficientsCheck,List.getD_cons_zero,hh,ht,Bool.and_self] using ht

end
end SPR.N6.CertificateExpression
