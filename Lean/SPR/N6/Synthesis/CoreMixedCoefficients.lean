import SPR.N6.Synthesis.CoreCoefficients
import SPR.N6.Construction.CoreMixedCoefficient
import SPR.N6.Construction.CoreMixedSecondCoefficient

/-!
# Thirty-eight remaining coefficient obligations for sixth-order synthesis

The high-frequency x⁴z and x⁴y coefficients are proved from the actual source.
This interface removes them from the earlier forty-coefficient sufficient
condition. It does not assert that the remaining universal signs hold.
-/
namespace SPR.N6
noncomputable section
open MvPolynomial

/-- Eighteen high and twenty low coefficients remain, on the original domains. -/
structure RemainingCoreMixedCoefficients : Prop where
  high : ∀ p : OuterParameters, 0 < p.A → 0 < p.e → 0 < p.f → 0 < p.g →
    ∀ t : ℝ, p.b ≤ t → ∀ d ∈ Tail.OuterIndices.indices,
      d ≠ Tail.OuterIndices.exponent 5 0 0 →
      d ≠ Tail.OuterIndices.exponent 4 0 1 →
      d ≠ Tail.OuterIndices.exponent 4 1 0 →
      0 ≤ coeff d (p.corePolynomial false ((p.e+p.f+p.g)/p.f) t)
  low : ∀ p : OuterParameters, 0 < p.A → 0 < p.e → 0 < p.f → 0 < p.g →
    ∀ t : ℝ, 0 ≤ t → t ≤ p.B → ∀ d ∈ Tail.OuterIndices.indices,
      d ≠ Tail.OuterIndices.exponent 5 0 0 →
      0 ≤ coeff d (p.corePolynomial true ((p.e+p.f+p.g)/p.f) t)

/-- Supply the newly proved original coefficients to the preserved older interface. -/
theorem RemainingCoreMixedCoefficients.toRemainingCoreCoefficients
    (h : RemainingCoreMixedCoefficients) : RemainingCoreCoefficients := by
  constructor
  · intro p hA he hf hg t ht d hd hne
    by_cases hm : d = Tail.OuterIndices.exponent 4 0 1
    · subst d
      exact p.high_mixed401_coeff_nonnegative hA.le he.le hf hg.le t ht
    · by_cases hn : d = Tail.OuterIndices.exponent 4 1 0
      · subst d
        exact p.high_mixed410_coeff_nonnegative hA.le he.le hf hg.le t ht
      · exact h.high p hA he hf hg t ht d hd hne hm hn
  · exact h.low

/-- These thirty-eight algebraic signs suffice for the exact original statement.
All degenerate intervals and the single degree-six numerator remain in the conclusion. -/
theorem RemainingCoreMixedCoefficients.synthesis (h : RemainingCoreMixedCoefficients) :
    RobustSPRStatement :=
  h.toRemainingCoreCoefficients.synthesis

end
end SPR.N6
