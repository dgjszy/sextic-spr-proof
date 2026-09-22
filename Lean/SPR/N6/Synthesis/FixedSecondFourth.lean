import SPR.N6.Construction.ConstantFace
import SPR.N6.Synthesis.FrequencyAssembly
import SPR.N6.Synthesis.FixedOdd

/-!
# Original-box synthesis with only the second and fourth coefficients fixed

The constant term and all odd coefficient intervals remain arbitrary. The
all-even-fixed case is retained explicitly. The final reduction also removes
the already solved fixed-odd boxes from the outstanding general obligation.
-/
namespace SPR.N6
noncomputable section

/-- The original robust SPR conclusion when only a₂ and a₄ have zero interval width. -/
theorem Box6.fixed_second_fourth_synthesis (B : Box6) (hB : B.RobustlyHurwitz)
    (h2 : B.lower.a2 = B.upper.a2) (h4 : B.lower.a4 = B.upper.a4) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, B.Contains a → FrequencySPR a.toPoly b := by
  by_cases hw : B.EvenVarying
  · obtain ⟨q⟩ := B.even_geometry hB hw
    have hcert : LocalCertificates q := {
      lower_tail := q.candidate_high_tail_fixed24 hB h2 h4
      upper_first := fun t ht _ => q.candidate_low_tail_fixed24 hB h2 h4 t ht
    }
    exact hcert.synthesis hB
  · have h6 : B.lower.a6 = B.upper.a6 :=
      le_antisymm B.h6 (le_of_not_gt (fun h => hw (Or.inr (Or.inr h))))
    exact B.fixed_even_synthesis hB h2 h4 h6

/-- The remaining original-box obligation needs neither already solved parity face.
This is explicitly conditional: the two universal tail certificates are not supplied here. -/
theorem synthesis_of_remaining_tail_certificates
    (hcert : ∀ B : Box6, B.RobustlyHurwitz →
      (B.lower.a2 < B.upper.a2 ∨ B.lower.a4 < B.upper.a4) →
      (B.lower.a1 < B.upper.a1 ∨ B.lower.a3 < B.upper.a3 ∨ B.lower.a5 < B.upper.a5) →
      ∀ q : EvenGeometry B, LocalCertificates q) : RobustSPRStatement := by
  intro B hB
  by_cases he : B.lower.a2 < B.upper.a2 ∨ B.lower.a4 < B.upper.a4
  · by_cases ho : B.lower.a1 < B.upper.a1 ∨ B.lower.a3 < B.upper.a3 ∨
        B.lower.a5 < B.upper.a5
    · have hw : B.EvenVarying := he.elim Or.inl (fun h => Or.inr (Or.inl h))
      obtain ⟨q⟩ := B.even_geometry hB hw
      exact (hcert B hB he ho q).synthesis hB
    · have h1 := le_antisymm B.h1 (le_of_not_gt (fun h => ho (Or.inl h)))
      have h3 := le_antisymm B.h3 (le_of_not_gt (fun h => ho (Or.inr (Or.inl h))))
      have h5 := le_antisymm B.h5 (le_of_not_gt (fun h => ho (Or.inr (Or.inr h))))
      exact B.fixed_odd_synthesis hB h1 h3 h5
  · have h2 := le_antisymm B.h2 (le_of_not_gt (fun h => he (Or.inl h)))
    have h4 := le_antisymm B.h4 (le_of_not_gt (fun h => he (Or.inr h)))
    exact B.fixed_second_fourth_synthesis hB h2 h4

end
end SPR.N6
