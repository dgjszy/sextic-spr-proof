import SPR.N6.Synthesis.CoreMixedCoefficients
import SPR.N6.Construction.CoreMixedLowCoefficient

/-!
# The remaining coefficient interface after the low mixed bridge

The preceding mixed interface has eighteen high and twenty low coefficient
inputs.  The actual low `(4,0,1)` coefficient is now supplied by its source
identity, so this wrapper leaves eighteen high and nineteen low inputs.  The
older interface remains untouched and is recovered by inserting the proved
low coefficient.
-/
namespace SPR.N6
noncomputable section
open MvPolynomial

/-- Thirty-seven explicit coefficient signs remain after low `(4,0,1)`. -/
structure RemainingCoreMixedLowCoefficients : Prop where
  high : ∀ p : OuterParameters, 0 < p.A → 0 < p.e → 0 < p.f → 0 < p.g →
    ∀ t : ℝ, p.b ≤ t → ∀ d ∈ Tail.OuterIndices.indices,
      d ≠ Tail.OuterIndices.exponent 5 0 0 →
      d ≠ Tail.OuterIndices.exponent 4 0 1 →
      d ≠ Tail.OuterIndices.exponent 4 1 0 →
      0 ≤ coeff d (p.corePolynomial false ((p.e+p.f+p.g)/p.f) t)
  low : ∀ p : OuterParameters, 0 < p.A → 0 < p.e → 0 < p.f → 0 < p.g →
    ∀ t : ℝ, 0 ≤ t → t ≤ p.B → ∀ d ∈ Tail.OuterIndices.indices,
      d ≠ Tail.OuterIndices.exponent 5 0 0 →
      d ≠ Tail.OuterIndices.exponent 4 0 1 →
      0 ≤ coeff d (p.corePolynomial true ((p.e+p.f+p.g)/p.f) t)

/-- Insert the proved low `(4,0,1)` sign into the older thirty-eight-input form. -/
theorem RemainingCoreMixedLowCoefficients.toRemainingCoreMixedCoefficients
    (h : RemainingCoreMixedLowCoefficients) :
    RemainingCoreMixedCoefficients := by
  constructor
  · exact h.high
  · intro p hA he hf hg t ht0 htB d hd hne
    by_cases hm : d = Tail.OuterIndices.exponent 4 0 1
    · subst d
      have hBp : 0 < p.B := by
        simp only [OuterParameters.B]
        linarith
      exact p.low_mixed401_coeff_nonnegative hA.le he.le hf hg.le hBp t ht0 htB
    · exact h.low p hA he hf hg t ht0 htB d hd hne hm

/-- The reduced explicit interface still suffices for the original conditional synthesis. -/
theorem RemainingCoreMixedLowCoefficients.synthesis
    (h : RemainingCoreMixedLowCoefficients) : RobustSPRStatement :=
  h.toRemainingCoreMixedCoefficients.synthesis

end
end SPR.N6
