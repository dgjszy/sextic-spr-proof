import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh302
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh302Packet
import SPR.N6.Construction.PacketCoefficientTransport
import SPR.N6.Synthesis.CoreLow410

/-!
# The complete high (3,0,2) source at the actual parameters

This candidate becomes usable only after all five source identities and their
complete closed-cone sign proof compile. The previous low closed-endpoint result is retained. No unrestricted synthesis is asserted.
-/
namespace SPR.N6
noncomputable section
open MvPolynomial Tail Tail.SmallGap

/-- The full source supplies the actual high (3,0,2) coefficient. -/
theorem OuterParameters.high302_coeff_nonnegative
    (p : OuterParameters) (hA : 0 < p.A) (he : 0 < p.e)
    (hf : 0 < p.f) (hg : 0 < p.g) {t : ℝ} (ht : p.b ≤ t) :
    0 ≤ coeff (Tail.OuterIndices.exponent 3 0 2)
      (p.corePolynomial false ((p.e+p.f+p.g)/p.f) t) := by
  apply p.actual_high_sign_of_packet_field hA he hf hg ?_ ht
  intro A e f g v hA he hf hg hv
  rw [QuinticSource.coeff_polynomial_302, ← CoreEndpoint.FullHigh302Packet.source_eq]
  exact CoreEndpoint.FullHigh302.nonnegative hA he hf hg hv

/-- Remaining signs after the complete high032, high302, and low410 certificates. -/
structure RemainingCoreHigh302Coefficients : Prop where
  high : ∀ p : OuterParameters, 0 < p.A → 0 < p.e → 0 < p.f → 0 < p.g →
    ∀ t : ℝ, p.b ≤ t → ∀ d ∈ Tail.OuterIndices.indices,
      d ≠ Tail.OuterIndices.exponent 5 0 0 →
      d ≠ Tail.OuterIndices.exponent 4 0 1 →
      d ≠ Tail.OuterIndices.exponent 4 1 0 →
      d ≠ Tail.OuterIndices.exponent 0 3 2 →
      d ≠ Tail.OuterIndices.exponent 3 0 2 →
      0 ≤ coeff d (p.corePolynomial false ((p.e+p.f+p.g)/p.f) t)
  low : ∀ p : OuterParameters, 0 < p.A → 0 < p.e → 0 < p.f → 0 < p.g →
    ∀ t : ℝ, 0 ≤ t → t ≤ p.B → ∀ d ∈ Tail.OuterIndices.indices,
      d ≠ Tail.OuterIndices.exponent 5 0 0 →
      d ≠ Tail.OuterIndices.exponent 4 0 1 →
      d ≠ Tail.OuterIndices.exponent 4 1 0 →
      0 ≤ coeff d (p.corePolynomial true ((p.e+p.f+p.g)/p.f) t)

/-- Fill the exact high302 position of the preceding actual-coefficient interface. -/
theorem RemainingCoreHigh302Coefficients.toRemainingCoreLow410Coefficients
    (h : RemainingCoreHigh302Coefficients) : RemainingCoreLow410Coefficients where
  high := by
    intro p hA he hf hg t ht d hd h500 h401 h410 h032
    by_cases h302 : d = Tail.OuterIndices.exponent 3 0 2
    · subst d
      exact p.high302_coeff_nonnegative hA he hf hg ht
    · exact h.high p hA he hf hg t ht d hd h500 h401 h410 h032 h302
  low := h.low

/-- Thirty-four remaining actual signs imply the unchanged original statement. -/
theorem RemainingCoreHigh302Coefficients.synthesis
    (h : RemainingCoreHigh302Coefficients) : RobustSPRStatement :=
  h.toRemainingCoreLow410Coefficients.synthesis

end
end SPR.N6
