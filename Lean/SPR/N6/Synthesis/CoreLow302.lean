import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow302
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow302Packet
import SPR.N6.Construction.PacketCoefficientTransport
import SPR.N6.Synthesis.CoreHigh302

/-!
# The complete low (3,0,2) source at the actual parameters

This candidate becomes usable only after all seven source identities and their
complete closed-cone sign proof compile. The previous low closed-endpoint result is retained. No unrestricted synthesis is asserted.
-/
namespace SPR.N6
noncomputable section
open MvPolynomial Tail Tail.SmallGap

/-- The full source supplies the actual low (3,0,2) coefficient, including t=B. -/
theorem OuterParameters.low302_coeff_nonnegative
    (p : OuterParameters) (hA : 0 < p.A) (he : 0 < p.e)
    (hf : 0 < p.f) (hg : 0 < p.g) {t : ℝ} (ht0 : 0 ≤ t) (htB : t ≤ p.B) :
    0 ≤ coeff (Tail.OuterIndices.exponent 3 0 2)
      (p.corePolynomial true ((p.e+p.f+p.g)/p.f) t) := by
  apply p.actual_low_sign_of_packet_field hA he hf hg ?_ ht0 htB
  intro A e f g v hA he hf hg hv
  rw [QuinticSource.coeff_polynomial_302, ← CoreEndpoint.FullLow302Packet.source_eq]
  exact CoreEndpoint.FullLow302.nonnegative hA he hf hg hv

/-- Remaining signs after the high032, high302, low410, and low302 certificates. -/
structure RemainingCoreLow302Coefficients : Prop where
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
      d ≠ Tail.OuterIndices.exponent 3 0 2 →
      0 ≤ coeff d (p.corePolynomial true ((p.e+p.f+p.g)/p.f) t)

/-- Fill the exact low302 position of the preceding actual-coefficient interface. -/
theorem RemainingCoreLow302Coefficients.toRemainingCoreHigh302Coefficients
    (h : RemainingCoreLow302Coefficients) : RemainingCoreHigh302Coefficients where
  high := h.high
  low := by
    intro p hA he hf hg t ht0 htB d hd h500 h401 h410
    by_cases h302 : d = Tail.OuterIndices.exponent 3 0 2
    · subst d
      exact p.low302_coeff_nonnegative hA he hf hg ht0 htB
    · exact h.low p hA he hf hg t ht0 htB d hd h500 h401 h410 h302

/-- Thirty-three remaining actual signs imply the unchanged original statement. -/
theorem RemainingCoreLow302Coefficients.synthesis
    (h : RemainingCoreLow302Coefficients) : RobustSPRStatement :=
  h.toRemainingCoreHigh302Coefficients.synthesis

end
end SPR.N6
