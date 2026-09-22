import SPR.N6.Verified

/-!
# Exact sixth-order interval robust SPR synthesis

The unrestricted sixth-order theorem uses the original statement in
`SPR.N6.Definitions.Frequency`: six independent closed coefficient intervals,
all degenerate cases included, every member strictly Hurwitz, one fixed real
numerator of exact degree six, and strict positivity at every finite real
frequency for every member of the box.

Complete static source certificates supply all of the required actual core
coefficients; the existing candidate and strict-lift chain then produces one
exact-degree-six numerator for the entire closed box. `RobustSPRStatement` and
the box definitions live in `SPR.N6.Definitions.Frequency` and
`SPR.N6.Definitions.Box`. Read `Lean/SPR/N6/README.md` for the
section-by-section correspondence between the paper and the modules.

Import `Main` directly, or use the public library entry `SPR`. The earlier
sixth-order subclass theorems remain available below.
-/

namespace SPR.N6.Direct
noncomputable section

/-- Robust strictly positive-real synthesis for every real monic sextic interval
box, including all degenerate intervals. One real numerator of exact degree six
works for every denominator in the box at every real frequency.
The exact proposition is defined in `SPR.N6.Definitions.Frequency`. -/
theorem robustSPR : RobustSPRStatement :=
  synthesis_from_complete_core_coefficients

/-- Every original robust Hurwitz sextic box with fixed even coefficients has
one exact-degree-six numerator strictly positive real for every member at every
finite real frequency. The odd intervals may be nondegenerate or degenerate. -/
theorem robustSPR_fixedEven (K : Box6) (hK : K.RobustlyHurwitz)
    (h2 : K.lower.a2 = K.upper.a2) (h4 : K.lower.a4 = K.upper.a4)
    (h6 : K.lower.a6 = K.upper.a6) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, K.Contains a → FrequencySPR a.toPoly b :=
  K.fixed_even_synthesis hK h2 h4 h6

/-- Every original robust Hurwitz sextic box with fixed odd coefficients has
one exact-degree-six numerator strictly positive real for every member at every
finite real frequency. All three even intervals are arbitrary, including degeneracy. -/
theorem robustSPR_fixedOdd (K : Box6) (hK : K.RobustlyHurwitz)
    (h1 : K.lower.a1 = K.upper.a1) (h3 : K.lower.a3 = K.upper.a3)
    (h5 : K.lower.a5 = K.upper.a5) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, K.Contains a → FrequencySPR a.toPoly b :=
  K.fixed_odd_synthesis hK h1 h3 h5

/-- Every original robust Hurwitz sextic box with a₂ and a₄ fixed admits one
exact-degree-six common SPR numerator. The constant term and all odd intervals
may vary, and all degenerate interval cases are included. -/
theorem robustSPR_fixedSecondFourth (K : Box6) (hK : K.RobustlyHurwitz)
    (h2 : K.lower.a2 = K.upper.a2) (h4 : K.lower.a4 = K.upper.a4) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, K.Contains a → FrequencySPR a.toPoly b :=
  K.fixed_second_fourth_synthesis hK h2 h4

/-- The original relative-width condition suffices for one exact-degree-six common
SPR numerator; all six intervals retain their original closed-box meaning. -/
theorem robustSPR_relativeWidth (K : Box6) (hK : K.RobustlyHurwitz)
    (hRW : K.upper.a6 * K.lower.a2 ≤ K.lower.a6 * K.upper.a2) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, K.Contains a → FrequencySPR a.toPoly b :=
  K.relative_width_synthesis hK hRW

/-- A fixed constant coefficient suffices; the other five coefficient intervals
are arbitrary, including degenerate intervals. -/
theorem robustSPR_fixedConstant (K : Box6) (hK : K.RobustlyHurwitz)
    (h6 : K.lower.a6 = K.upper.a6) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, K.Contains a → FrequencySPR a.toPoly b :=
  K.fixed_constant_synthesis hK h6

end
end SPR.N6.Direct
