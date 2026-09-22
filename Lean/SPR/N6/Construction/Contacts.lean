import SPR.N6.Construction.Barycenter

/-!
# One interpolated quadratic satisfies all four zero-direction contacts

The fourth value follows from the same weighted mean, not from a fresh choice
of odd coefficients. All interpolation denominators are certified nonzero.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
variable {K : Box6}

/-- The three defining interpolation values and the fourth compatible value. -/
theorem zeroK_nodes (g : EvenGeometry K) (hK : K.RobustlyHurwitz) :
    g.zeroK g.A = g.valueA ∧ g.zeroK g.B = g.valueB ∧ g.zeroK g.b = g.valueb ∧
    g.zeroK g.c = (g.c - g.rho) * (g.c - g.a) * (g.c - g.b) / (g.c - g.A) := by
  obtain ⟨hba, hca, hCA, hCB, hcb, hBA, hbA, hbB, hcA, hcB⟩ := g.positive_gaps
  have hm : 0 < g.ratio := lt_trans zero_lt_one (g.ratio_bounds hK).1
  have nBA := ne_of_gt hBA
  have nbA := ne_of_gt hbA
  have nbB := ne_of_gt hbB
  have ncA := ne_of_gt hcA
  have ncB := ne_of_gt hcB
  have ncb := ne_of_gt hcb
  have nm := ne_of_gt hm
  have nAB : g.A - g.B ≠ 0 := sub_ne_zero.mpr (ne_of_lt g.A_lt_B)
  have nAb : g.A - g.b ≠ 0 := sub_ne_zero.mpr (ne_of_lt (g.A_lt_B.trans g.B_lt_b))
  have nBb : g.B - g.b ≠ 0 := sub_ne_zero.mpr (ne_of_lt g.B_lt_b)
  have nAc : g.A - g.c ≠ 0 := sub_ne_zero.mpr (ne_of_lt (g.A_lt_B.trans
    (g.B_lt_b.trans g.b_lt_c)))
  refine ⟨?_, ?_, ?_, ?_⟩
  · simp only [zeroK, sub_self, mul_zero, zero_mul, zero_add, add_zero, interpA]
    field_simp
  · simp only [zeroK, sub_self, mul_zero, zero_mul, zero_add, add_zero, interpB]
    field_simp
  · simp only [zeroK, sub_self, mul_zero, zero_mul, zero_add, add_zero, interpb]
    field_simp
  · have hs := (g.weights_pos hK).2.2.2.2
    have hmean : g.weightA * (g.A - g.rho) + g.weightB * (g.B - g.rho) +
        g.weightb * (g.b - g.rho) + g.weightc * (g.c - g.rho) = 0 := by
      have hr : g.weightSum * g.rho =
          g.A * g.weightA + g.B * g.weightB + g.b * g.weightb + g.c * g.weightc := by
        unfold rho
        field_simp
      unfold weightSum at hr
      nlinarith only [hr]
    have hi : g.zeroK g.c - (g.c - g.rho) * (g.c - g.a) * (g.c - g.b) / (g.c - g.A) =
        -(g.c - g.A) * (g.c - g.B) * (g.c - g.b) *
          (g.weightA * (g.A - g.rho) + g.weightB * (g.B - g.rho) +
            g.weightb * (g.b - g.rho) + g.weightc * (g.c - g.rho)) := by
      simp only [zeroK, interpA, interpB, interpb, valueA, valueB, valueb,
        weightA, weightB, weightb, weightc]
      field_simp
      ring
    rw [hmean, mul_zero] at hi
    exact sub_eq_zero.mp hi

/-- The same zero-direction odd polynomial has the signs +,-,-,+ at the four nodes. -/
theorem zeroK_node_signs (g : EvenGeometry K) (hK : K.RobustlyHurwitz) :
    0 < g.zeroK g.A ∧ g.zeroK g.B < 0 ∧ g.zeroK g.b < 0 ∧ 0 < g.zeroK g.c := by
  obtain ⟨hA, hB, hb, hc⟩ := g.zeroK_nodes hK
  obtain ⟨hrB, hrb⟩ := g.rho_bounds hK
  obtain ⟨hba, hca, hCA, hCB, hcb, hBA, hbA, hbB, hcA, hcB⟩ := g.positive_gaps
  have hm : 0 < g.ratio := lt_trans zero_lt_one (g.ratio_bounds hK).1
  rw [hA, hB, hb, hc]
  unfold valueA valueB valueb
  refine ⟨?_, ?_, ?_, ?_⟩
  · exact div_pos_of_neg_of_neg
      (mul_neg_of_pos_of_neg (mul_pos_of_neg_of_neg (by linarith) (by linarith))
        (by linarith)) (by linarith)
  · exact div_neg_of_pos_of_neg
      (mul_pos_of_neg_of_neg (mul_neg_of_neg_of_pos (by linarith) hBA) (by linarith))
      (mul_neg_of_pos_of_neg hm (by linarith))
  · exact div_neg_of_neg_of_pos
      (mul_neg_of_pos_of_neg (mul_pos (sub_pos.mpr hrb) hba) (by linarith)) (mul_pos hm hbB)
  · exact div_pos (mul_pos (mul_pos (by linarith) hca) hcb) hcA

/-- The actual mixed odd component retains all four strict node signs. -/
theorem candidate_odd_node_signs (g : EvenGeometry K) (hK : K.RobustlyHurwitz) :
    0 < g.candidate.K g.A ∧ g.candidate.K g.B < 0 ∧
      g.candidate.K g.b < 0 ∧ 0 < g.candidate.K g.c := by
  obtain ⟨hA, hB, hb, hc⟩ := g.zeroK_node_signs hK
  have hη := (g.candidate_endpoints hK).2.2
  have hm : 0 < g.ratio := lt_trans zero_lt_one (g.ratio_bounds hK).1
  obtain ⟨hba, hca, hCA, hCB, hcb, hBA, hbA, hbB, hcA, hcB⟩ := g.positive_gaps
  simp only [candidate_odd, lowerOddShape, upperOddShape, sub_self, zero_mul,
    mul_zero, add_zero, zero_add]
  refine ⟨?_, ?_, ?_, ?_⟩
  · exact add_pos (mul_pos hm (mul_pos_of_neg_of_neg (by linarith) (by linarith)))
      (mul_pos hη hA)
  · exact add_neg (mul_neg_of_pos_of_neg hBA (by linarith)) (mul_neg_of_pos_of_neg hη hB)
  · exact add_neg (mul_neg_of_pos_of_neg hbA (by linarith)) (mul_neg_of_pos_of_neg hη hb)
  · exact add_pos (mul_pos hm (mul_pos hcB hcb)) (mul_pos hη hc)

end EvenGeometry
end
end SPR.N6
