import SPR.N6.Construction.RatioQuotient
import SPR.N6.Synthesis.WeakTails

/-!
# Exact remaining ratio-certificate interface to the original theorem

The three entries refer to the actual cleared quotient polynomial. No
certificate existence is asserted here. Both endpoint values and the middle
entry are non-strict, and the closed frequency contacts are included.
-/
namespace SPR.N6
noncomputable section

/-- The three nonnegative Bernstein entries of one exact quotient in the ratio. -/
def QuotientRatioNonnegative {B : Box6} (q : EvenGeometry B) (i : Bool) (t : ℝ) : Prop :=
  0 ≤ (q.ratioQuotientPoly i t).eval 1 ∧
  0 ≤ ratioMiddle (q.ratioQuotientPoly i t) ((q.c-q.A)/(q.b-q.B)) ∧
  0 ≤ (q.ratioQuotientPoly i t).eval ((q.c-q.A)/(q.b-q.B))

/-- The exact ratio certificate required in each of the two remaining frequency bands. -/
structure TailRatioCertificates {B : Box6} (q : EvenGeometry B) : Prop where
  lower : ∀ t : ℝ, q.b ≤ t → QuotientRatioNonnegative q false t
  upper : ∀ t : ℝ, 0 ≤ t → t ≤ q.B → QuotientRatioNonnegative q true t

/-- All ratio entries concern the same candidate, so they provide the weak tail interface. -/
theorem TailRatioCertificates.weak {B : Box6} {q : EvenGeometry B}
    (h : TailRatioCertificates q) (hB : B.RobustlyHurwitz) : WeakTailCertificates q := by
  constructor
  · intro t ht
    obtain ⟨h0,h1,h2⟩ := h.lower t ht
    exact q.quotient_nonneg_of_ratio_entries hB false t h0 h1 h2
  · intro t ht0 htB
    obtain ⟨h0,h1,h2⟩ := h.upper t ht0 htB
    exact q.quotient_nonneg_of_ratio_entries hB true t h0 h1 h2

/-- Conditional original-box synthesis with the ratio-to-quotient bridge fully supplied. -/
theorem TailRatioCertificates.synthesis {B : Box6} {q : EvenGeometry B}
    (h : TailRatioCertificates q) (hB : B.RobustlyHurwitz) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, B.Contains a → FrequencySPR a.toPoly b :=
  (h.weak hB).synthesis hB

/-- A universal proof of the displayed algebraic entries would close the original statement.
This theorem retains that proof as an explicit unfulfilled input. -/
theorem synthesis_of_remaining_ratio_certificates
    (hcert : ∀ B : Box6, B.RobustlyHurwitz →
      (B.lower.a2 < B.upper.a2 ∨ B.lower.a4 < B.upper.a4) →
      (B.lower.a1 < B.upper.a1 ∨ B.lower.a3 < B.upper.a3 ∨ B.lower.a5 < B.upper.a5) →
      ∀ q : EvenGeometry B, TailRatioCertificates q) : RobustSPRStatement :=
  synthesis_of_remaining_weak_tail_certificates
    (fun B hB he ho q => (hcert B hB he ho q).weak hB)

end
end SPR.N6
