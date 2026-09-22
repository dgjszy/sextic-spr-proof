import SPR.N6.Construction.Quotients

/-!
# Strict numerator signs at the four contact nodes

These are properties of the explicit candidate, established before any
positivity certificate. They are used in the full-frequency assembly.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
variable {K : Box6}

/-- The baseline even component has signs -,-,+,+ at A,B,b,c. -/
theorem baseF_node_values (g : EvenGeometry K) :
    g.baseF g.A = g.upperOddShape g.A * (g.A * (g.A - g.c) / g.gapW) ∧
    g.baseF g.B = g.lowerOddShape g.B * (g.B * (g.b - g.B) / g.gapY) ∧
    g.baseF g.b = g.lowerOddShape g.b * (g.b * (g.B - g.b) / g.gapX) ∧
    g.baseF g.c = g.upperOddShape g.c * (g.c * (g.c - g.A) / g.gapZ) := by
  simp only [baseF, lowerOddShape, upperOddShape, sub_self, mul_zero, zero_mul,
    add_zero, zero_add, la0, la1, lb0, lb1]
  constructor
  · ring
  · constructor
    · ring
    · constructor <;> ring

/-- The candidate's four even node values have the strict signs needed for root isolation. -/
theorem candidate_even_node_signs (g : EvenGeometry K) (hK : K.RobustlyHurwitz) :
    g.candidate.F g.A < 0 ∧ g.candidate.F g.B < 0 ∧
      0 < g.candidate.F g.b ∧ 0 < g.candidate.F g.c := by
  obtain ⟨hba, hca, hCA, hCB, hcb, hBA, hbA, hbB, hcA, hcB⟩ := g.positive_gaps
  have hη := (g.candidate_endpoints hK).2.2
  have hm : 0 < g.ratio := lt_trans zero_lt_one (g.ratio_bounds hK).1
  obtain ⟨hrB, hrb⟩ := g.rho_bounds hK
  have ha := g.a_pos
  have hA := ha.trans g.a_lt_A
  have hB := hA.trans g.A_lt_B
  have hb := hB.trans g.B_lt_b
  have hc := hb.trans g.b_lt_c
  have hX : 0 < g.gapX := mul_pos hba hcb
  have hY : 0 < g.gapY := mul_pos hCB hBA
  have hZ : 0 < g.gapZ := mul_pos hca hcb
  have hW : 0 < g.gapW := mul_pos hCA hBA
  obtain ⟨hvA, hvB, hvb, hvc⟩ := g.baseF_node_values
  simp only [candidate_even, hvA, hvB, hvb, hvc, lowerOddShape, upperOddShape]
  refine ⟨?_, ?_, ?_, ?_⟩
  · apply add_neg
    · exact mul_neg_of_pos_of_neg hm (mul_neg_of_pos_of_neg
        (mul_pos_of_neg_of_neg (by linarith) (by linarith))
        (div_neg_of_neg_of_pos (mul_neg_of_pos_of_neg hA (by linarith)) hW))
    · exact mul_neg_of_pos_of_neg (mul_pos hη hA) (by linarith)
  · apply add_neg
    · exact mul_neg_of_pos_of_neg hm (mul_neg_of_neg_of_pos
        (mul_neg_of_pos_of_neg hBA (by linarith)) (div_pos (mul_pos hB hbB) hY))
    · exact mul_neg_of_pos_of_neg (mul_pos hη hB) (by linarith)
  · apply add_pos
    · exact mul_pos hm (mul_pos_of_neg_of_neg
        (mul_neg_of_pos_of_neg hbA (by linarith))
        (div_neg_of_neg_of_pos (mul_neg_of_pos_of_neg hb (by linarith)) hX))
    · exact mul_pos (mul_pos hη hb) (sub_pos.mpr hrb)
  · apply add_pos
    · exact mul_pos hm (mul_pos (mul_pos hcB hcb) (div_pos (mul_pos hc hcA) hZ))
    · exact mul_pos (mul_pos hη hc) (by linarith)

end EvenGeometry
end
end SPR.N6
