import SPR.N6.Algebra.Tail.Encoding4
import SPR.N6.Algebra.Tail.ExprValue

/-! Soundness of integer evaluation certificates for four-variable arithmetic.
The point equality is used only together with strict coefficient bounds and
injectivity on the entire polynomial support. -/
namespace SPR.N6.Tail.ExprCertificate
open Lean.Grind.CommRing
open SPR.N6.Tail.TermEncoding
open SPR.N6.Tail.ExprValue
open scoped BigOperators

/-- A semantic form of the criterion, before replacing list bounds by syntax bounds. -/
theorem value_eq_of_list_bounds (lhs rhs : Expr) (B d1 d2 d3 : ℕ)
    (hB : 0 < B)
    (hmass : termMass (expand lhs) + termMass (expand rhs) < B)
    (hsupport : ∀ m ∈ (polyList (expand lhs) - polyList (expand rhs)).support,
      m.support ⊆ ({0, 1, 2, 3} : Finset ℕ))
    (hdegree : ∀ m ∈ (polyList (expand lhs) - polyList (expand rhs)).support,
      m 1 ≤ d1 ∧ m 2 ≤ d2 ∧ m 3 ≤ d3)
    (hpoint : value (Encoding4.vars B d1 d2 d3) lhs =
      value (Encoding4.vars B d1 d2 d3) rhs)
    {R : Type} [CommRing R] (vars : ℕ → R) : value vars lhs = value vars rhs := by
  classical
  let p := polyList (expand lhs)
  let q := polyList (expand rhs)
  have hmass' : coefficientMass (p - q) < B :=
    lt_of_le_of_lt (NatEncoding.coefficientMass_polyList_sub_le _ _) hmass
  have hinj : ∀ ⦃m n : E⦄, m ∈ (p - q).support → n ∈ (p - q).support →
      Encoding4.code d1 d2 d3 m = Encoding4.code d1 d2 d3 n → m = n := by
    intro m n hm hn hc
    exact Encoding4.code_injective d1 d2 d3
      (hdegree m hm).1 (hdegree m hm).2.1 (hdegree m hm).2.2
      (hdegree n hn).1 (hdegree n hn).2.1 (hdegree n hn).2.2
      (hsupport m hm) (hsupport n hn) hc
  have heval : (p - q).eval₂ (Int.castRingHom ℤ) (Encoding4.vars B d1 d2 d3) = 0 := by
    rw [MvPolynomial.eval₂_sub]
    change (polyList (expand lhs)).eval₂ _ _ - (polyList (expand rhs)).eval₂ _ _ = 0
    rw [eval₂_polyList_expand, eval₂_polyList_expand, hpoint, sub_self]
  have hsum : ∑ m ∈ (p - q).support, (p - q).coeff m *
      (B : ℤ) ^ Encoding4.code d1 d2 d3 m = 0 := by
    rw [MvPolynomial.eval₂_eq] at heval
    have hh : (∑ m ∈ (p - q).support,
        (Int.castRingHom ℤ) ((p - q).coeff m) *
          m.prod (fun i n => Encoding4.vars B d1 d2 d3 i ^ n)) =
        ∑ m ∈ (p - q).support, (p - q).coeff m *
          (B : ℤ) ^ Encoding4.code d1 d2 d3 m := by
      apply Finset.sum_congr rfl
      intro m hm
      rw [Encoding4.vars_power_code B d1 d2 d3 m (hsupport m hm)]
      simp
    exact hh.symm.trans heval
  have hpq : p = q := NatEncoding.eq_of_encoded_difference_eq_zero hB
    (Encoding4.code d1 d2 d3) p q hmass' hinj hsum
  have hreal := congrArg (MvPolynomial.eval₂ (Int.castRingHom R) vars) hpq
  exact (eval₂_polyList_expand vars lhs).symm.trans
    (hreal.trans (eval₂_polyList_expand vars rhs))

end SPR.N6.Tail.ExprCertificate
