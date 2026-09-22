import SPR.N6.Algebra.Tail.ExprCertificate
import SPR.N6.Algebra.Tail.SyntaxBounds

/-! The certificate interface computes only syntax bounds and an integer point.
The expanded polynomial remains a semantic object in the generic proof. -/
namespace SPR.N6.Tail.SyntaxCertificate
open Lean.Grind.CommRing
open SPR.N6.Tail.TermEncoding
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.SyntaxBounds

lemma polynomial_support_four (e : Expr) (he : usesBelow e 4)
    {m : E} (hm : m ∈ (polyList (expand e)).support) :
    m.support ⊆ ({0, 1, 2, 3} : Finset ℕ) := by
  classical
  have hh := List.mem_toFinset.mp (support_polyList_subset (expand e) hm)
  obtain ⟨t, ht, rfl⟩ := List.mem_map.mp hh
  exact expand_mem_support_subset_four e he ht

lemma polynomial_degree_bound (e : Expr)
    {m : E} (hm : m ∈ (polyList (expand e)).support) (i : ℕ) :
    m i ≤ syntaxDegree e i := by
  classical
  have hh := List.mem_toFinset.mp (support_polyList_subset (expand e) hm)
  obtain ⟨t, ht, rfl⟩ := List.mem_map.mp hh
  exact expand_mem_degree e ht i

/-- Four-variable integer encoding soundness with entirely syntactic bounds. -/
theorem value_eq_of_syntax_bounds (lhs rhs : Expr) (B d1 d2 d3 : ℕ)
    (hB : 0 < B)
    (hmass : syntaxMass lhs + syntaxMass rhs < B)
    (hvars : usesBelow lhs 4 ∧ usesBelow rhs 4)
    (hl : syntaxDegree lhs 1 ≤ d1 ∧ syntaxDegree lhs 2 ≤ d2 ∧
      syntaxDegree lhs 3 ≤ d3)
    (hr : syntaxDegree rhs 1 ≤ d1 ∧ syntaxDegree rhs 2 ≤ d2 ∧
      syntaxDegree rhs 3 ≤ d3)
    (hpoint : value (Encoding4.vars B d1 d2 d3) lhs =
      value (Encoding4.vars B d1 d2 d3) rhs)
    {R : Type} [CommRing R] (vars : ℕ → R) : value vars lhs = value vars rhs := by
  apply ExprCertificate.value_eq_of_list_bounds lhs rhs B d1 d2 d3 hB
    (by simpa only [termMass_expand] using hmass) ?_ ?_ hpoint vars
  · intro m hm
    rcases Finset.mem_union.mp (MvPolynomial.support_sub ℕ (polyList (expand lhs)) (polyList (expand rhs)) hm) with hm | hm
    · exact polynomial_support_four lhs hvars.1 hm
    · exact polynomial_support_four rhs hvars.2 hm
  · intro m hm
    rcases Finset.mem_union.mp (MvPolynomial.support_sub ℕ (polyList (expand lhs)) (polyList (expand rhs)) hm) with hm | hm
    · exact ⟨(polynomial_degree_bound lhs hm 1).trans hl.1,
        (polynomial_degree_bound lhs hm 2).trans hl.2.1,
        (polynomial_degree_bound lhs hm 3).trans hl.2.2⟩
    · exact ⟨(polynomial_degree_bound rhs hm 1).trans hr.1,
        (polynomial_degree_bound rhs hm 2).trans hr.2.1,
        (polynomial_degree_bound rhs hm 3).trans hr.2.2⟩

end SPR.N6.Tail.SyntaxCertificate
