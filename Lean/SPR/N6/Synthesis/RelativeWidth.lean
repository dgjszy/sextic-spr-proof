import SPR.N6.Construction.RelativeWidth
import SPR.N6.Synthesis.Baseline
import SPR.N6.Synthesis.FixedEven

/-!
# Original-box synthesis under a relative even-coefficient width bound

The sufficient condition lower.a6 * upper.a2 ≥ upper.a6 * lower.a2 includes
all robust Hurwitz boxes with fixed constant coefficient. Degenerate intervals
and the completely fixed even part are included. This is a subclass theorem.
-/
namespace SPR.N6
noncomputable section

/-- The sums and products here are the original endpoints, not independent parameters. -/
theorem EvenGeometry.sum_product_endpoints {K : Box6} (q : EvenGeometry K) :
    K.lower.a2 = q.a+q.b+q.c ∧ K.upper.a2 = q.A+q.B+q.C ∧
    K.lower.a6 = q.a*q.b*q.c ∧ K.upper.a6 = q.A*q.B*q.C := by
  have hl0 := q.lower_value 0
  have hl1 := q.lower_value 1
  have hlm := q.lower_value (-1)
  have hu0 := q.upper_value 0
  have hu1 := q.upper_value 1
  have hum := q.upper_value (-1)
  norm_num [Box6.evenLower,Box6.evenUpper] at hl0 hl1 hlm hu0 hu1 hum
  exact ⟨by nlinarith only [hl0,hl1,hlm], by nlinarith only [hu0,hu1,hum],
    by nlinarith only [hl0], by nlinarith only [hu0]⟩

/-- One fixed exact-degree-six SPR numerator under the original relative-width condition. -/
theorem Box6.relative_width_synthesis (K : Box6) (hK : K.RobustlyHurwitz)
    (hRW : K.upper.a6*K.lower.a2 ≤ K.lower.a6*K.upper.a2) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, K.Contains a → FrequencySPR a.toPoly b := by
  by_cases hw : K.EvenVarying
  · obtain ⟨q⟩ := K.even_geometry hK hw
    obtain ⟨hl2,hu2,hl6,hu6⟩ := q.sum_product_endpoints
    rw [hl2,hu2,hl6,hu6] at hRW
    exact (q.baseline_witness_of_lower_residual hK
      (q.residualLower_pos_of_relative_width hRW)).synthesis hK
  · have h2 := le_antisymm K.h2 (le_of_not_gt (fun h => hw (Or.inl h)))
    have h4 := le_antisymm K.h4 (le_of_not_gt (fun h => hw (Or.inr (Or.inl h))))
    have h6 := le_antisymm K.h6 (le_of_not_gt (fun h => hw (Or.inr (Or.inr h))))
    exact K.fixed_even_synthesis hK h2 h4 h6

/-- Fixed constant coefficient, with every other coefficient interval arbitrary. -/
theorem Box6.fixed_constant_synthesis (K : Box6) (hK : K.RobustlyHurwitz)
    (h6 : K.lower.a6 = K.upper.a6) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, K.Contains a → FrequencySPR a.toPoly b := by
  apply K.relative_width_synthesis hK
  have hp := (sextic_coefficients_pos (hK K.lower K.lower_mem)).2.2.2.2.2
  rw [← h6]
  exact mul_le_mul_of_nonneg_left K.h2 hp.le

end
end SPR.N6
