import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Packet
import SPR.N6.Construction.PacketCoefficientTransport
import SPR.N6.Synthesis.CoreMixedLowCoefficients

/-!
# The high `(0,3,2)` coefficient at the actual parameters

The complete eleven-layer source identity and its closed-cone sign certificate
supply one more high coefficient of the actual core polynomial. The resulting
conditional interface has seventeen high and nineteen low inputs. It retains
the original low closed interval and does not assert the unrestricted synthesis.
-/
namespace SPR.N6
noncomputable section
open MvPolynomial Tail Tail.SmallGap

/-- The complete source certificate gives this actual coefficient on the high tail. -/
theorem OuterParameters.high032_coeff_nonnegative
    (p : OuterParameters) (hA : 0 < p.A) (he : 0 < p.e)
    (hf : 0 < p.f) (hg : 0 < p.g) {t : ℝ} (ht : p.b ≤ t) :
    0 ≤ coeff (Tail.OuterIndices.exponent 0 3 2)
      (p.corePolynomial false ((p.e+p.f+p.g)/p.f) t) := by
  apply p.actual_high_sign_of_packet_field hA he hf hg ?_ ht
  intro A e f g v hA he hf hg hv
  rw [QuinticSource.coeff_polynomial_032, ← CoreEndpoint.FullHigh032Packet.source_eq]
  exact CoreEndpoint.FullHigh032.nonnegative hA he hf hg hv

/-- The remaining actual signs after the complete high `(0,3,2)` certificate. -/
structure RemainingCoreHigh032Coefficients : Prop where
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
      0 ≤ coeff d (p.corePolynomial true ((p.e+p.f+p.g)/p.f) t)

/-- Recover the earlier interface using the same actual parameters and frequency. -/
theorem RemainingCoreHigh032Coefficients.toRemainingCoreMixedLowCoefficients
    (h : RemainingCoreHigh032Coefficients) : RemainingCoreMixedLowCoefficients where
  high := by
    intro p hA he hf hg t ht d hd h500 h401 h410
    by_cases h032 : d = Tail.OuterIndices.exponent 0 3 2
    · subst d
      exact p.high032_coeff_nonnegative hA he hf hg ht
    · exact h.high p hA he hf hg t ht d hd h500 h401 h410 h032
  low := h.low

/-- Thirty-six remaining actual signs imply the unchanged original statement. -/
theorem RemainingCoreHigh032Coefficients.synthesis
    (h : RemainingCoreHigh032Coefficients) : RobustSPRStatement :=
  h.toRemainingCoreMixedLowCoefficients.synthesis

end
end SPR.N6
