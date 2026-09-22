import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow410
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow410Packet
import SPR.N6.Construction.PacketCoefficientTransport
import SPR.N6.Synthesis.CoreHigh032

/-!
# The complete low (4,1,0) source at the actual parameters

This candidate becomes usable only after all seven source identities and their
complete closed-cone sign proof compile. The closed low endpoint is transported
by the existing continuity theorem. No unrestricted synthesis is asserted.
-/
namespace SPR.N6
noncomputable section
open MvPolynomial Tail Tail.SmallGap

/-- The complete source certificate gives the actual low coefficient, including t=B. -/
theorem OuterParameters.low410_coeff_nonnegative
    (p : OuterParameters) (hA : 0 < p.A) (he : 0 < p.e)
    (hf : 0 < p.f) (hg : 0 < p.g) {t : ℝ} (ht0 : 0 ≤ t) (htB : t ≤ p.B) :
    0 ≤ coeff (Tail.OuterIndices.exponent 4 1 0)
      (p.corePolynomial true ((p.e+p.f+p.g)/p.f) t) := by
  apply p.actual_low_sign_of_packet_field hA he hf hg ?_ ht0 htB
  intro A e f g v hA he hf hg hv
  rw [QuinticSource.coeff_polynomial_410, ← CoreEndpoint.FullLow410Packet.source_eq]
  exact CoreEndpoint.FullLow410.nonnegative hA he hf hg hv

/-- Remaining signs after the complete high032 and low410 certificates. -/
structure RemainingCoreLow410Coefficients : Prop where
  high : ∀ p : OuterParameters, 0 < p.A → 0 < p.e → 0 < p.f → 0 < p.g →
    ∀ t : ℝ, p.b ≤ t → ∀ d ∈ Tail.OuterIndices.indices,
      d ≠ Tail.OuterIndices.exponent 5 0 0 →
      d ≠ Tail.OuterIndices.exponent 4 0 1 →
      d ≠ Tail.OuterIndices.exponent 4 1 0 →
      d ≠ Tail.OuterIndices.exponent 0 3 2 →
      0 ≤ coeff d (p.corePolynomial false ((p.e+p.f+p.g)/p.f) t)
  low : ∀ p : OuterParameters, 0 < p.A → 0 < p.e → 0 < p.f → 0 < p.g →
    ∀ t : ℝ, 0 ≤ t → t ≤ p.B → ∀ d ∈ Tail.OuterIndices.indices,
      d ≠ Tail.OuterIndices.exponent 5 0 0 →
      d ≠ Tail.OuterIndices.exponent 4 0 1 →
      d ≠ Tail.OuterIndices.exponent 4 1 0 →
      0 ≤ coeff d (p.corePolynomial true ((p.e+p.f+p.g)/p.f) t)

/-- The newly proved low coefficient fills its exact position in the prior interface. -/
theorem RemainingCoreLow410Coefficients.toRemainingCoreHigh032Coefficients
    (h : RemainingCoreLow410Coefficients) : RemainingCoreHigh032Coefficients where
  high := h.high
  low := by
    intro p hA he hf hg t ht0 htB d hd h500 h401
    by_cases h410 : d = Tail.OuterIndices.exponent 4 1 0
    · subst d
      exact p.low410_coeff_nonnegative hA he hf hg ht0 htB
    · exact h.low p hA he hf hg t ht0 htB d hd h500 h401 h410

/-- Thirty-five remaining actual signs imply the unchanged original statement. -/
theorem RemainingCoreLow410Coefficients.synthesis
    (h : RemainingCoreLow410Coefficients) : RobustSPRStatement :=
  h.toRemainingCoreHigh032Coefficients.synthesis

end
end SPR.N6
