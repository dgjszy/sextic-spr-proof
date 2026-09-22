import SPR.N6.Synthesis.RelativeWidth
import SPR.N6.Synthesis.TailRatio

/-!
# Remaining original-box domain after the completed subclasses

Only boxes violating the relative-width condition and outside the fixed-odd
and fixed-a2/a4 subclasses require the two weak tail certificates. Their
universal existence is still an explicit missing hypothesis.
-/
namespace SPR.N6
noncomputable section

/-- Precise sufficient remaining input, restricted by original coefficient conditions. -/
theorem synthesis_of_remaining_weak_tails_outside_relative_width
    (hcert : ∀ B : Box6, B.RobustlyHurwitz →
      B.lower.a6 * B.upper.a2 < B.upper.a6 * B.lower.a2 →
      (B.lower.a2 < B.upper.a2 ∨ B.lower.a4 < B.upper.a4) →
      (B.lower.a1 < B.upper.a1 ∨ B.lower.a3 < B.upper.a3 ∨ B.lower.a5 < B.upper.a5) →
      ∀ q : EvenGeometry B, WeakTailCertificates q) : RobustSPRStatement := by
  intro B hB
  by_cases hRW : B.upper.a6 * B.lower.a2 ≤ B.lower.a6 * B.upper.a2
  · exact B.relative_width_synthesis hB hRW
  · by_cases he : B.lower.a2 < B.upper.a2 ∨ B.lower.a4 < B.upper.a4
    · by_cases ho : B.lower.a1 < B.upper.a1 ∨ B.lower.a3 < B.upper.a3 ∨
          B.lower.a5 < B.upper.a5
      · have hw : B.EvenVarying := he.elim Or.inl (fun h => Or.inr (Or.inl h))
        obtain ⟨q⟩ := B.even_geometry hB hw
        exact (hcert B hB (lt_of_not_ge hRW) he ho q).synthesis hB
      · have h1 := le_antisymm B.h1 (le_of_not_gt (fun h => ho (Or.inl h)))
        have h3 := le_antisymm B.h3 (le_of_not_gt (fun h => ho (Or.inr (Or.inl h))))
        have h5 := le_antisymm B.h5 (le_of_not_gt (fun h => ho (Or.inr (Or.inr h))))
        exact B.fixed_odd_synthesis hB h1 h3 h5
    · have h2 := le_antisymm B.h2 (le_of_not_gt (fun h => he (Or.inl h)))
      have h4 := le_antisymm B.h4 (le_of_not_gt (fun h => he (Or.inr h)))
      exact B.fixed_second_fourth_synthesis hB h2 h4

/-- The same restricted original-box domain, using exact ratio entry certificates. -/
theorem synthesis_of_remaining_ratio_entries_outside_relative_width
    (hcert : ∀ B : Box6, B.RobustlyHurwitz →
      B.lower.a6 * B.upper.a2 < B.upper.a6 * B.lower.a2 →
      (B.lower.a2 < B.upper.a2 ∨ B.lower.a4 < B.upper.a4) →
      (B.lower.a1 < B.upper.a1 ∨ B.lower.a3 < B.upper.a3 ∨ B.lower.a5 < B.upper.a5) →
      ∀ q : EvenGeometry B, TailRatioCertificates q) : RobustSPRStatement :=
  synthesis_of_remaining_weak_tails_outside_relative_width
    (fun B hB hRW he ho q => (hcert B hB hRW he ho q).weak hB)

end
end SPR.N6
