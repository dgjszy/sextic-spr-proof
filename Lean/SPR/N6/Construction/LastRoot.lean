import SPR.N6.Algebra.LastRootCertificate
import SPR.N6.Algebra.WidthBudget
import SPR.N6.Construction.NumeratorRoots

/-!
# Verify the actual last-root input to global frequency assembly

The actual barycenter satisfies rho < b. A strictly positive polynomial in the
six ordered gaps proves the stronger lower bound obtained by replacing rho by b.
-/
namespace SPR.N6
noncomputable section

set_option maxHeartbeats 4000000 in
/-- Defining identity of the static last-root certificate. -/
theorem LastRootCertificate.defining_identity (a d e f g h : ℝ) :
    2 * source a (a+d) (a+d+e) (a+d+e+f) (a+d+e+f+g) (a+d+e+f+g+h) =
      widthSlack a d e f g h * multiplier f g h + positiveForm a d e f g h := by
  simp only [source, positiveForm, widthSlack, multiplier]
  ring

namespace EvenGeometry
variable {K : Box6}

set_option maxHeartbeats 4000000 in
/-- Original rational source equality; all clearing factors are actual root gaps. -/
theorem last_root_source (g : EvenGeometry K) :
    g.D1*g.D2*(g.baseF g.C+g.baseF2*g.C*(g.C-g.b)) =
      LastRootCertificate.source g.a g.A g.B g.b g.c g.C := by
  obtain ⟨hba, hca, hCA, hCB, hcb, hBA, _, _, _, _⟩ := g.positive_gaps
  have n1 := ne_of_gt hba
  have n2 := ne_of_gt hca
  have n3 := ne_of_gt hCA
  have n4 := ne_of_gt hCB
  have n5 := ne_of_gt hcb
  have n6 := ne_of_gt hBA
  simp only [baseF, baseF2, lowerOddShape, upperOddShape, la0, la1, lb0, lb1,
    gapX, gapY, gapZ, gapW, D1, D2, LastRootCertificate.source]
  field_simp
  ring

/-- The same candidate satisfies the last-root test without a certificate assumption. -/
theorem candidate_at_C_pos (g : EvenGeometry K) (hK : K.RobustlyHurwitz) :
    0 < g.candidate.F g.C := by
  have hp := LastRootCertificate.positiveForm_pos g.a_pos
    (sub_pos.mpr g.a_lt_A) (sub_pos.mpr g.A_lt_B) (sub_pos.mpr g.B_lt_b)
    (sub_pos.mpr g.b_lt_c) (sub_pos.mpr g.c_lt_C)
  obtain ⟨_, hbudget⟩ := g.width_budget
  have hslack : 0 ≤ LastRootCertificate.widthSlack g.a (g.A-g.a) (g.B-g.A)
      (g.b-g.B) (g.c-g.b) (g.C-g.c) := by
    unfold LastRootCertificate.widthSlack
    linarith only [hbudget]
  have hmult : 0 ≤ LastRootCertificate.multiplier (g.b-g.B) (g.c-g.b) (g.C-g.c) := by
    unfold LastRootCertificate.multiplier
    have hf := sub_pos.mpr g.B_lt_b
    have hg := sub_pos.mpr g.b_lt_c
    have hh := sub_pos.mpr g.c_lt_C
    positivity
  have hpos := add_pos_of_nonneg_of_pos (mul_nonneg hslack hmult) hp
  rw [← LastRootCertificate.defining_identity] at hpos
  have hs2 : 0 < 2 * LastRootCertificate.source g.a g.A g.B g.b g.c g.C := by
    convert hpos using 1 <;> congr 2 <;> ring
  have hs : 0 < LastRootCertificate.source g.a g.A g.B g.b g.c g.C := by
    linarith only [hs2]
  rw [← g.last_root_source] at hs
  obtain ⟨hba, hca, hCA, hCB, _, _, _, _, _, _⟩ := g.positive_gaps
  have hD : 0 < g.D1*g.D2 := mul_pos (mul_pos hba hca) (mul_pos hCA hCB)
  have hl := (mul_pos_iff_of_pos_left hD).mp hs
  have hr : 0 < g.ratio := lt_trans (by norm_num) (g.ratio_bounds hK).1
  have hc : 0 < g.C := g.a_pos.trans
    (g.a_lt_A.trans (g.A_lt_B.trans (g.B_lt_b.trans (g.b_lt_c.trans g.c_lt_C))))
  have heta := (g.candidate_endpoints hK).2.2
  have hb := (g.rho_bounds hK).2
  have hd := mul_pos (mul_pos heta hc) (sub_pos.mpr hb)
  have hs' := mul_pos hr hl
  rw [g.candidate_even]
  dsimp [eta] at hd ⊢
  nlinarith only [hs', hd]

end EvenGeometry
end
end SPR.N6
