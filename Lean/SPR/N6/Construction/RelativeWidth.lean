import SPR.N6.Construction.UpperResidual

/-!
# Relative even-width condition protects the full lower baseline residual

Reciprocal roots are used only as algebraic parameters. No reciprocal
independent box or its stability is asserted. The original relative-width
inequality supplies precisely the second width needed after inversion.
-/
namespace SPR.N6
noncomputable section

/-- Algebraic upper residual for ordered roots with two nonnegative widths. -/
theorem raw_upper_residual_pos {a A B b c C : ℝ}
    (ha : 0 < a) (haA : a < A) (hAB : A < B) (hBb : B < b)
    (hbc : b < c) (hcC : c < C)
    (hw1 : 0 ≤ A+B+C-a-b-c)
    (hw2 : 0 ≤ a*b+a*c+b*c-A*B-A*C-B*C) (t : ℝ) :
    0 < C*(t-b)*(t-c)/((C-A)*(C-B))+
      (t-C)*(a*t-b*c)/((b-a)*(c-a)) := by
  have hd : 0 < A-a := sub_pos.mpr haA
  have he : 0 < B-A := sub_pos.mpr hAB
  have hf : 0 < b-B := sub_pos.mpr hBb
  have hg : 0 < c-b := sub_pos.mpr hbc
  have hh : 0 < C-c := sub_pos.mpr hcC
  have hκ : 0 ≤ (A-a)+(C-c)-(b-B) := by linarith only [hw1]
  have hS : 0 ≤ LastRootCertificate.widthSlack a (A-a) (B-A) (b-B) (c-b) (C-c) := by
    unfold LastRootCertificate.widthSlack
    nlinarith only [hw2]
  have hid := UpperResidualCertificate.defining_identity a (A-a) (B-A) (b-B) (c-b) (C-c)
  have hp := add_pos_of_nonneg_of_pos
    (add_nonneg
      (mul_nonneg hS (UpperResidualCertificate.secondMultiplier_pos ha hd he hf hg hh).le)
      (mul_nonneg hκ (UpperResidualCertificate.firstMultiplier_pos ha hd he hf hg hh).le))
    (UpperResidualCertificate.remainder_pos ha hd he hf hg hh)
  rw [← hid] at hp
  have hdet : 0 < UpperResidualCertificate.source a A B b c C := by
    have heq : UpperResidualCertificate.source a (a+(A-a)) (a+(A-a)+(B-A))
        (a+(A-a)+(B-A)+(b-B)) (a+(A-a)+(B-A)+(b-B)+(c-b))
        (a+(A-a)+(B-A)+(b-B)+(c-b)+(C-c)) =
        UpperResidualCertificate.source a A B b c C := by congr 1 <;> ring
    rw [heq] at hp
    linarith only [hp]
  have hD1 : 0 < (b-a)*(c-a) := mul_pos (by linarith) (by linarith)
  have hD2 : 0 < (C-A)*(C-B) := mul_pos (by linarith) (by linarith)
  have hC : 0 < C := by linarith
  have hlead : 0 < a*((C-A)*(C-B))+C*((b-a)*(c-a)) := by positivity
  have hquad := quadratic_pos
    (b := -C*(c-b)*((b-a)*(c-a))-(b*(c-a)+a*(C-b))*((C-A)*(C-B)))
    (c := b*(C-b)*(c-a)*((C-A)*(C-B))) hlead
    (by unfold UpperResidualCertificate.source at hdet; nlinarith only [hdet]) (t-b)
  have nba : b-a ≠ 0 := ne_of_gt (by linarith)
  have nca : c-a ≠ 0 := ne_of_gt (by linarith)
  have nCA : C-A ≠ 0 := ne_of_gt (by linarith)
  have nCB : C-B ≠ 0 := ne_of_gt (by linarith)
  have hs : ((b-a)*(c-a))*((C-A)*(C-B))*
      (C*(t-b)*(t-c)/((C-A)*(C-B))+(t-C)*(a*t-b*c)/((b-a)*(c-a))) =
      (a*((C-A)*(C-B))+C*((b-a)*(c-a)))*(t-b)^2+
      (-C*(c-b)*((b-a)*(c-a))-(b*(c-a)+a*(C-b))*((C-A)*(C-B)))*(t-b)+
      b*(C-b)*(c-a)*((C-A)*(C-B)) := by
    field_simp
    <;> ring
  rw [← hs] at hquad
  exact (mul_pos_iff_of_pos_left (mul_pos hD1 hD2)).mp hquad

namespace EvenGeometry
variable {K : Box6}

/-- The reciprocal geometry is used algebraically; no independent reciprocal box is assumed. -/
theorem residualLower_pos_of_relative_width (q : EvenGeometry K)
    (hRW : q.A*q.B*q.C*(q.a+q.b+q.c) ≤ q.a*q.b*q.c*(q.A+q.B+q.C))
    (t : ℝ) (ht : 0 ≤ t) : 0 < q.residualLower t := by
  have ha := q.a_pos
  have hA := ha.trans q.a_lt_A
  have hB := hA.trans q.A_lt_B
  have hb := hB.trans q.B_lt_b
  have hc := hb.trans q.b_lt_c
  have hC := hc.trans q.c_lt_C
  have na := ne_of_gt ha
  have nA := ne_of_gt hA
  have nB := ne_of_gt hB
  have nb := ne_of_gt hb
  have nc := ne_of_gt hc
  have nC := ne_of_gt hC
  obtain ⟨_,hw2,hw3⟩ := q.widths
  obtain ⟨hba,hca,hCA,hCB,_,_,_,_,_,_⟩ := q.positive_gaps
  have hD1 : 0 < q.D1 := mul_pos hba hca
  have hD2 : 0 < q.D2 := mul_pos hCA hCB
  have nba := ne_of_gt hba
  have nca := ne_of_gt hca
  have nCA := ne_of_gt hCA
  have nCB := ne_of_gt hCB
  by_cases htA : q.A ≤ t
  · exact q.residualLower_pos_of_ge_A htA
  by_cases hz : t = 0
  · subst t
    have heq : q.residualLower 0 = q.a*q.A*q.B*(1/q.D1+1/q.D2) := by
      unfold residualLower
      ring
    rw [heq]
    positivity
  have htpos : 0 < t := lt_of_le_of_ne ht (Ne.symm hz)
  have hwidth1 : 0 ≤ 1/q.c+1/q.b+1/q.a-1/q.C-1/q.B-1/q.A := by
    have hp : 0 < q.a*q.b*q.c := by positivity
    have hQ : 0 < q.A*q.B*q.C := by positivity
    have hX : 0 ≤ q.a*q.b+q.a*q.c+q.b*q.c := by positivity
    have hcross := mul_le_mul (by linarith only [hw2] :
      q.A*q.B+q.A*q.C+q.B*q.C ≤ q.a*q.b+q.a*q.c+q.b*q.c)
      (by linarith only [hw3] : q.a*q.b*q.c ≤ q.A*q.B*q.C) hp.le hX
    have hnum := div_nonneg (sub_nonneg.mpr hcross) (mul_pos hp hQ).le
    convert hnum using 1 <;> field_simp <;> ring
  have hwidth2 : 0 ≤ (1/q.C)*(1/q.B)+(1/q.C)*(1/q.A)+(1/q.B)*(1/q.A)-
      (1/q.c)*(1/q.b)-(1/q.c)*(1/q.a)-(1/q.b)*(1/q.a) := by
    have hnum := div_nonneg (sub_nonneg.mpr hRW)
      (by positivity : 0 ≤ (q.a*q.b*q.c)*(q.A*q.B*q.C))
    convert hnum using 1 <;> field_simp <;> ring
  have hp := raw_upper_residual_pos (one_div_pos.mpr hC)
    (one_div_lt_one_div_of_lt hc q.c_lt_C)
    (one_div_lt_one_div_of_lt hb q.b_lt_c)
    (one_div_lt_one_div_of_lt hB q.B_lt_b)
    (one_div_lt_one_div_of_lt hA q.A_lt_B)
    (one_div_lt_one_div_of_lt ha q.a_lt_A) hwidth1 hwidth2 (1/t)
  have hm := mul_pos (sq_pos_of_pos htpos) hp
  have hid : t^2*((1/q.a)*(1/t-1/q.B)*(1/t-1/q.A)/
      ((1/q.a-1/q.c)*(1/q.a-1/q.b))+
      (1/t-1/q.a)*((1/q.C)*(1/t)-(1/q.B)*(1/q.A))/
      ((1/q.B-1/q.C)*(1/q.A-1/q.C))) =
      (q.C/q.a)*q.residualLower t-
      (q.A*q.B*q.C-q.a*q.b*q.c)/(q.A*q.B*q.D1)*(t-q.A)*(t-q.B) := by
    unfold residualLower D1 D2
    field_simp
    <;> ring
  rw [hid] at hm
  have hcor : 0 ≤ (q.A*q.B*q.C-q.a*q.b*q.c)/(q.A*q.B*q.D1)*(t-q.A)*(t-q.B) := by
    have hq := div_nonneg hw3 (by positivity : 0 ≤ q.A*q.B*q.D1)
    exact mul_nonneg_of_nonpos_of_nonpos
      (mul_nonpos_of_nonneg_of_nonpos hq (by linarith)) (by linarith [q.A_lt_B])
  have hres : 0 < (q.C/q.a)*q.residualLower t := by linarith only [hm,hcor]
  exact (mul_pos_iff_of_pos_left (div_pos hC ha)).mp hres

end EvenGeometry

end
end SPR.N6
