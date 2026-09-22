import SPR.N6.Construction.HighRatio
import SPR.N6.Synthesis.WeakTails

/-!
# Only the upper ratio endpoint remains on the high-frequency side

The first and middle high entries have unconditional static proofs. The low
actual tail is retained as an explicit hypothesis; no alternate numerator is
substituted for the same candidate at a ratio endpoint.
-/
namespace SPR.N6
noncomputable section

/-- The remaining high endpoint, and the same candidate's low actual tail. -/
structure EndpointTailCertificates {B : Box6} (q : EvenGeometry B) : Prop where
  high : ∀ t : ℝ, q.b ≤ t →
    0 ≤ (q.ratioQuotientPoly false t).eval ((q.c-q.A)/(q.b-q.B))
  low : ∀ t : ℝ, 0 ≤ t → t ≤ q.B →
    0 ≤ (q.contactQuotient q.candidate (true,false)).eval t

/-- The proved two high entries fill the entire closed actual ratio interval. -/
theorem EndpointTailCertificates.weak {B : Box6} {q : EvenGeometry B}
    (h : EndpointTailCertificates q) (hB : B.RobustlyHurwitz) : WeakTailCertificates q := by
  constructor
  · intro t ht
    obtain ⟨h0,h1⟩ := q.high_first_two_ratio_entries t ht
    exact q.quotient_nonneg_of_ratio_entries hB false t h0 h1 (h.high t ht)
  · exact h.low

/-- Original all-box, exact-degree-six strict synthesis under precisely the remaining input. -/
theorem EndpointTailCertificates.synthesis {B : Box6} {q : EvenGeometry B}
    (h : EndpointTailCertificates q) (hB : B.RobustlyHurwitz) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, B.Contains a → FrequencySPR a.toPoly b :=
  (h.weak hB).synthesis hB

end
end SPR.N6
