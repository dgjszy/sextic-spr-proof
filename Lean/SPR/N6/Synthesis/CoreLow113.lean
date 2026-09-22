import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow113
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow113Packet
import SPR.N6.Construction.PacketCoefficientTransport
import SPR.N6.Synthesis.CoreLow104

/-! The complete low (1,1,3) certificate at the actual parameters.
The original sufficient synthesis interface is preserved, with this one
coefficient supplied by its whole-source certificate. -/
namespace SPR.N6
noncomputable section
open MvPolynomial Tail Tail.SmallGap

/-- Transfer the complete source sign to the original parameters and frequency band. -/
theorem OuterParameters.low113_coeff_nonnegative
    (p : OuterParameters) (hA : 0 < p.A) (he : 0 < p.e)
    (hf : 0 < p.f) (hg : 0 < p.g) {t : ℝ} (ht0 : 0 ≤ t) (htB : t ≤ p.B) :
    0 ≤ coeff (Tail.OuterIndices.exponent 1 1 3)
      (p.corePolynomial true ((p.e+p.f+p.g)/p.f) t) := by
  apply p.actual_low_sign_of_packet_field hA he hf hg ?_ ht0 htB
  intro A e f g v hA he hf hg hv
  rw [QuinticSource.coeff_polynomial_113, ← CoreEndpoint.FullLow113Packet.source_eq]
  exact CoreEndpoint.FullLow113.nonnegative hA he hf hg hv

/-- The remaining 11 actual coefficient signs suffice for this construction. -/
structure RemainingCoreLow113Coefficients : Prop where
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
      d ≠ Tail.OuterIndices.exponent 0 4 1 →
      d ≠ Tail.OuterIndices.exponent 1 0 4 →
      d ≠ Tail.OuterIndices.exponent 1 1 3 →
      d ≠ Tail.OuterIndices.exponent 1 2 2 →
      d ≠ Tail.OuterIndices.exponent 1 3 1 →
      d ≠ Tail.OuterIndices.exponent 1 4 0 →
      d ≠ Tail.OuterIndices.exponent 2 0 3 →
      d ≠ Tail.OuterIndices.exponent 2 1 2 →
      d ≠ Tail.OuterIndices.exponent 2 2 1 →
      d ≠ Tail.OuterIndices.exponent 2 3 0 →
      0 ≤ coeff d (p.corePolynomial false ((p.e+p.f+p.g)/p.f) t)
  low : ∀ p : OuterParameters, 0 < p.A → 0 < p.e → 0 < p.f → 0 < p.g →
    ∀ t : ℝ, 0 ≤ t → t ≤ p.B → ∀ d ∈ Tail.OuterIndices.indices,
      d ≠ Tail.OuterIndices.exponent 5 0 0 →
      d ≠ Tail.OuterIndices.exponent 4 0 1 →
      d ≠ Tail.OuterIndices.exponent 4 1 0 →
      d ≠ Tail.OuterIndices.exponent 3 0 2 →
      d ≠ Tail.OuterIndices.exponent 0 5 0 →
      d ≠ Tail.OuterIndices.exponent 0 0 5 →
      d ≠ Tail.OuterIndices.exponent 0 1 4 →
      d ≠ Tail.OuterIndices.exponent 0 2 3 →
      d ≠ Tail.OuterIndices.exponent 0 3 2 →
      d ≠ Tail.OuterIndices.exponent 0 4 1 →
      d ≠ Tail.OuterIndices.exponent 1 0 4 →
      d ≠ Tail.OuterIndices.exponent 1 1 3 →
      0 ≤ coeff d (p.corePolynomial true ((p.e+p.f+p.g)/p.f) t)























/-- Fill the exact low113 position of the preceding coefficient interface. -/
theorem RemainingCoreLow113Coefficients.toRemainingCoreLow104Coefficients
    (h : RemainingCoreLow113Coefficients) : RemainingCoreLow104Coefficients where
  high := h.high
  low := by
    intro p hA he hf hg t ht0 htB d hd h500 h401 h410 h302 h050 h005 h014 h023 h032 h041 h104
    by_cases hnew : d = Tail.OuterIndices.exponent 1 1 3
    · subst d
      exact p.low113_coeff_nonnegative hA he hf hg ht0 htB
    · exact h.low p hA he hf hg t ht0 htB d hd h500 h401 h410 h302 h050 h005 h014 h023 h032 h041 h104 hnew

/-- The remaining sufficient signs imply the unchanged original SPR statement. -/
theorem RemainingCoreLow113Coefficients.synthesis
    (h : RemainingCoreLow113Coefficients) : RobustSPRStatement :=
  h.toRemainingCoreLow104Coefficients.synthesis

end
end SPR.N6
