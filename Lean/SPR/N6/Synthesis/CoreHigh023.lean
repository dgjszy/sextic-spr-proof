import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh023
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh023Packet
import SPR.N6.Construction.PacketCoefficientTransport
import SPR.N6.Synthesis.CoreHigh014

/-! The complete high (0,2,3) certificate at the actual parameters.
The original sufficient synthesis interface is preserved, with this one
coefficient supplied by its whole-source certificate. -/
namespace SPR.N6
noncomputable section
open MvPolynomial Tail Tail.SmallGap

/-- Transfer the complete source sign to the original parameters and frequency band. -/
theorem OuterParameters.high023_coeff_nonnegative
    (p : OuterParameters) (hA : 0 < p.A) (he : 0 < p.e)
    (hf : 0 < p.f) (hg : 0 < p.g) {t : ℝ} (ht : p.b ≤ t) :
    0 ≤ coeff (Tail.OuterIndices.exponent 0 2 3)
      (p.corePolynomial false ((p.e+p.f+p.g)/p.f) t) := by
  apply p.actual_high_sign_of_packet_field hA he hf hg ?_ ht
  intro A e f g v hA he hf hg hv
  rw [QuinticSource.coeff_polynomial_023, ← CoreEndpoint.FullHigh023Packet.source_eq]
  exact CoreEndpoint.FullHigh023.nonnegative hA he hf hg hv

/-- The remaining 28 actual coefficient signs suffice for this construction. -/
structure RemainingCoreHigh023Coefficients : Prop where
  high : ∀ p : OuterParameters, 0 < p.A → 0 < p.e → 0 < p.f → 0 < p.g →
    ∀ t : ℝ, p.b ≤ t → ∀ d ∈ Tail.OuterIndices.indices,
      d ≠ Tail.OuterIndices.exponent 5 0 0 →
      d ≠ Tail.OuterIndices.exponent 4 0 1 →
      d ≠ Tail.OuterIndices.exponent 4 1 0 →
      d ≠ Tail.OuterIndices.exponent 0 3 2 →
      d ≠ Tail.OuterIndices.exponent 3 0 2 →
      d ≠ Tail.OuterIndices.exponent 0 5 0 →
      d ≠ Tail.OuterIndices.exponent 0 0 5 →
      d ≠ Tail.OuterIndices.exponent 0 1 4 →
      d ≠ Tail.OuterIndices.exponent 0 2 3 →
      0 ≤ coeff d (p.corePolynomial false ((p.e+p.f+p.g)/p.f) t)
  low : ∀ p : OuterParameters, 0 < p.A → 0 < p.e → 0 < p.f → 0 < p.g →
    ∀ t : ℝ, 0 ≤ t → t ≤ p.B → ∀ d ∈ Tail.OuterIndices.indices,
      d ≠ Tail.OuterIndices.exponent 5 0 0 →
      d ≠ Tail.OuterIndices.exponent 4 0 1 →
      d ≠ Tail.OuterIndices.exponent 4 1 0 →
      d ≠ Tail.OuterIndices.exponent 3 0 2 →
      d ≠ Tail.OuterIndices.exponent 0 5 0 →
      0 ≤ coeff d (p.corePolynomial true ((p.e+p.f+p.g)/p.f) t)






/-- Fill the exact high023 position of the preceding coefficient interface. -/
theorem RemainingCoreHigh023Coefficients.toRemainingCoreHigh014Coefficients
    (h : RemainingCoreHigh023Coefficients) : RemainingCoreHigh014Coefficients where
  high := by
    intro p hA he hf hg t ht d hd h500 h401 h410 h032 h302 h050 h005 h014
    by_cases hnew : d = Tail.OuterIndices.exponent 0 2 3
    · subst d
      exact p.high023_coeff_nonnegative hA he hf hg ht
    · exact h.high p hA he hf hg t ht d hd h500 h401 h410 h032 h302 h050 h005 h014 hnew
  low := h.low

/-- The remaining sufficient signs imply the unchanged original SPR statement. -/
theorem RemainingCoreHigh023Coefficients.synthesis
    (h : RemainingCoreHigh023Coefficients) : RobustSPRStatement :=
  h.toRemainingCoreHigh014Coefficients.synthesis

end
end SPR.N6
