import SPR.N6.Construction.Candidate

/-!
# Exact baseline contact factorizations

These identities are universal rational identities in the actual six-root
geometry. Positivity of the two residual quadratics is proved separately; it
is not assumed here or inferred from the forced contacts.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
variable {K : Box6}

def residualLower (g : EvenGeometry K) (t : ℝ) : ℝ :=
  g.a * (t - g.A) * (t - g.B) / g.D1 + (t - g.a) * (g.C * t - g.A * g.B) / g.D2

def residualUpper (g : EvenGeometry K) (t : ℝ) : ℝ :=
  g.C * (t - g.b) * (t - g.c) / g.D2 + (t - g.C) * (g.a * t - g.b * g.c) / g.D1

/-- The two baseline source identities from which all four quartic formulas follow. -/
theorem baseline_source_identities (g : EvenGeometry K) (t : ℝ) :
    g.baseF t * K.evenLower t + t * g.lowerOddShape t * g.upperOddShape t =
      (t - g.b) ^ 2 * (t - g.c) ^ 2 * g.residualLower t ∧
    g.baseF t * K.evenUpper t + t * g.lowerOddShape t * g.upperOddShape t =
      (t - g.A) ^ 2 * (t - g.B) ^ 2 * g.residualUpper t := by
  obtain ⟨hba, hca, hCA, hCB, hcb, hBA, _, _, _, _⟩ := g.positive_gaps
  have n1 := ne_of_gt hba
  have n2 := ne_of_gt hca
  have n3 := ne_of_gt hCA
  have n4 := ne_of_gt hCB
  have n5 := ne_of_gt hcb
  have n6 := ne_of_gt hBA
  rw [g.lower_value, g.upper_value]
  simp only [baseF, lowerOddShape, upperOddShape, residualLower, residualUpper,
    la0, la1, lb0, lb1, D1, D2, gapX, gapY, gapZ, gapW]
  constructor <;> field_simp <;> ring

/-- Outside the interval [A,B], the lower residual is positive directly from its formula. -/
theorem residualLower_pos_of_ge_B (g : EvenGeometry K) {t : ℝ} (ht : g.B ≤ t) :
    0 < g.residualLower t := by
  obtain ⟨hba, hca, hCA, hCB, _, _, _, _, _, _⟩ := g.positive_gaps
  have ha := g.a_pos
  have hA := ha.trans g.a_lt_A
  have hB := hA.trans g.A_lt_B
  have hC := hB.trans (g.B_lt_b.trans (g.b_lt_c.trans g.c_lt_C))
  have hD1 : 0 < g.D1 := mul_pos hba hca
  have hD2 : 0 < g.D2 := mul_pos hCA hCB
  have hta : 0 < t - g.a := by linarith [g.a_lt_A, g.A_lt_B]
  have htA : 0 ≤ t - g.A := by linarith [g.A_lt_B]
  have htB : 0 ≤ t - g.B := sub_nonneg.mpr ht
  have hCt : 0 < g.C * t - g.A * g.B := by
    have hmul := mul_le_mul_of_nonneg_left ht hC.le
    have hgap := mul_pos hCA hB
    nlinarith only [hmul, hgap]
  unfold residualLower
  exact add_pos_of_nonneg_of_pos (div_nonneg (mul_nonneg (mul_nonneg ha.le htA) htB) hD1.le)
    (div_pos (mul_pos hta hCt) hD2)

end EvenGeometry
end
end SPR.N6
