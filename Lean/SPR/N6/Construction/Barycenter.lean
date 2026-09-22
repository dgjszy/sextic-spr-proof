import SPR.N6.Construction.Candidate

/-!
# Positive weight barycenter lies in the central interval

Two short positive-polynomial budget identities use the actual first and second
even widths. The upper bound on the same canonical ratio then places rho in
(B,b). No independently chosen odd roots or separate ratio are substituted.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
variable {K : Box6}

/-- Two strict budget inequalities needed to locate the barycenter. -/
theorem barycenter_budgets (g : EvenGeometry K) :
    0 < (g.c - g.a) * (g.b - g.A) + (g.b - g.a) * (g.c - g.A) -
      (g.C - g.A) * (g.B - g.A) ∧
    0 < (g.C - g.A) * (g.c - g.B) + (g.C - g.B) * (g.c - g.A) -
      (g.c - g.a) * (g.c - g.b) := by
  let a := g.a
  let d := g.A - g.a
  let e := g.B - g.A
  let f := g.b - g.B
  let h := g.c - g.b
  have ha : 0 < a := g.a_pos
  have hd : 0 < d := sub_pos.mpr g.a_lt_A
  have he : 0 < e := sub_pos.mpr g.A_lt_B
  have hf : 0 < f := sub_pos.mpr g.B_lt_b
  have hh : 0 < h := sub_pos.mpr g.b_lt_c
  have hA : g.A = a + d := by dsimp [a, d]; ring
  have hB : g.B = a + d + e := by dsimp [a, d, e]; ring
  have hb : g.b = a + d + e + f := by dsimp [a, d, e, f]; ring
  have hc : g.c = a + d + e + f + h := by dsimp [a, d, e, f, h]; ring
  let w1 := g.A + g.B + g.C - g.a - g.b - g.c
  let w2 := g.a * g.b + g.a * g.c + g.b * g.c - g.A * g.B - g.A * g.C - g.B * g.C
  have hw1 : 0 ≤ w1 := g.widths.1
  have hw2 : 0 ≤ w2 := g.widths.2.1
  constructor
  · let P := 6*d^2*e + 4*d^2*f + 2*d^2*h + 6*d*e^2 + 8*d*e*f + 4*d*e*h +
      6*d*e*a + 4*d*f^2 + 4*d*f*h + 4*d*f*a + 2*d*h*a + e^3 + 2*e^2*f + e^2*h +
      2*e^2*a + e*f^2 + e*f*h + 4*e*f*a + 2*e*h*a + 4*f^2*a + 4*f*h*a
    have hp : 0 < P := by dsimp [P]; positivity
    have hi : (g.A + g.B) * ((g.c - g.a) * (g.b - g.A) +
        (g.b - g.a) * (g.c - g.A) - (g.C - g.A) * (g.B - g.A)) = P + e * w2 := by
      dsimp [P, w2]
      rw [hA, hB, hb, hc]
      dsimp [a] at *
      ring
    have hpp : 0 < (g.A + g.B) * ((g.c - g.a) * (g.b - g.A) +
        (g.b - g.a) * (g.c - g.A) - (g.C - g.A) * (g.B - g.A)) := by
      rw [hi]
      exact add_pos_of_pos_of_nonneg hp (mul_nonneg he.le hw2)
    exact (mul_pos_iff_of_pos_left (by linarith [g.a_pos, g.a_lt_A, g.A_lt_B])).mp hpp
  · let L := e + 2*f + h
    let S := e + 2*f + 3*h
    let T := e + 2*f + 2*h
    let P := 3*e^2*f + e^2*h + 9*e*f^2 + 9*e*f*h + 2*e*h^2 +
      6*f^3 + 9*f^2*h + 4*f*h^2 + h^3
    have hp : 0 < P := by dsimp [P]; positivity
    have hS : 0 < S := by dsimp [S]; positivity
    have hL : 0 < L := by dsimp [L]; positivity
    have hT : 0 < T := by dsimp [T]; positivity
    have hApos : 0 < g.A := g.a_pos.trans g.a_lt_A
    have hi : L * ((g.C - g.A) * (g.c - g.B) + (g.C - g.B) * (g.c - g.A) -
        (g.c - g.a) * (g.c - g.b)) = P + S * w2 + (S * (2*g.A + e) + L*T) * w1 := by
      dsimp [L, S, T, P, w1, w2]
      rw [hA, hB, hb, hc]
      dsimp [a] at *
      ring
    have hn : 0 ≤ S * w2 + (S * (2*g.A + e) + L*T) * w1 := by positivity
    apply (mul_pos_iff_of_pos_left hL).mp
    rw [hi]
    linarith

/-- All four interpolation weights and their sum are strictly positive. -/
theorem weights_pos (g : EvenGeometry K) (hK : K.RobustlyHurwitz) :
    0 < g.weightA ∧ 0 < g.weightB ∧ 0 < g.weightb ∧ 0 < g.weightc ∧ 0 < g.weightSum := by
  have hm : 0 < g.ratio := lt_trans zero_lt_one (g.ratio_bounds hK).1
  obtain ⟨hba, hca, hCA, hCB, hcb, hBA, hbA, hbB, hcA, hcB⟩ := g.positive_gaps
  have h1 : 0 < g.weightA := by unfold weightA; positivity
  have h2 : 0 < g.weightB := by unfold weightB; positivity
  have h3 : 0 < g.weightb := by unfold weightb; positivity
  have h4 : 0 < g.weightc := by unfold weightc; positivity
  exact ⟨h1, h2, h3, h4, by unfold weightSum; positivity⟩

/-- The central root parameter is a single weighted mean strictly between B and b. -/
theorem rho_bounds (g : EvenGeometry K) (hK : K.RobustlyHurwitz) :
    g.B < g.rho ∧ g.rho < g.b := by
  obtain ⟨hba, hca, hCA, hCB, hcb, hBA, hbA, hbB, hcA, hcB⟩ := g.positive_gaps
  obtain ⟨_, _, _, _, hsum⟩ := g.weights_pos hK
  have hm : 0 < g.ratio := lt_trans zero_lt_one (g.ratio_bounds hK).1
  have hmub : g.ratio * (g.b - g.B) ≤ g.c - g.A :=
    (le_div_iff₀ hbB).mp (g.ratio_bounds hK).2
  have hrem : 0 ≤ g.c - g.A - g.ratio * (g.b - g.B) := sub_nonneg.mpr hmub
  have n1 := ne_of_gt hbA
  have n2 := ne_of_gt hbB
  have n3 := ne_of_gt hcA
  have n4 := ne_of_gt hcB
  have nm := ne_of_gt hm
  have hmean : g.weightSum * g.rho =
      g.A * g.weightA + g.B * g.weightB + g.b * g.weightb + g.c * g.weightc := by
    unfold rho
    field_simp
  obtain ⟨hleft, hright⟩ := g.barycenter_budgets
  constructor
  · have hid : (g.b - g.A) * (g.c - g.A) ^ 2 * g.ratio * (g.b - g.B) *
        (g.weightSum * (g.rho - g.B)) =
        g.ratio * (g.b - g.B) * ((g.c - g.a) * (g.b - g.A) +
          (g.b - g.a) * (g.c - g.A) - (g.C - g.A) * (g.B - g.A)) +
          (g.b - g.a) * (g.c - g.A) * (g.c - g.A - g.ratio * (g.b - g.B)) := by
      rw [mul_sub g.weightSum g.rho g.B, hmean]
      simp only [weightSum, weightA, weightB, weightb, weightc]
      field_simp
      ring
    have hpos : 0 < g.ratio * (g.b - g.B) * ((g.c - g.a) * (g.b - g.A) +
          (g.b - g.a) * (g.c - g.A) - (g.C - g.A) * (g.B - g.A)) +
          (g.b - g.a) * (g.c - g.A) * (g.c - g.A - g.ratio * (g.b - g.B)) :=
      add_pos_of_pos_of_nonneg (mul_pos (mul_pos hm hbB) hleft)
        (mul_nonneg (mul_pos hba hcA).le hrem)
    rw [← hid] at hpos
    have hden : 0 < (g.b - g.A) * (g.c - g.A) ^ 2 * g.ratio * (g.b - g.B) := by positivity
    have hgap := (mul_pos_iff_of_pos_left hsum).mp ((mul_pos_iff_of_pos_left hden).mp hpos)
    exact sub_pos.mp hgap
  · have hid : (g.c - g.A) ^ 2 * (g.c - g.B) * g.ratio * (g.b - g.B) *
        (g.weightSum * (g.b - g.rho)) =
        g.ratio * (g.b - g.B) * ((g.C - g.A) * (g.c - g.B) +
          (g.C - g.B) * (g.c - g.A) - (g.c - g.a) * (g.c - g.b)) +
          (g.C - g.B) * (g.c - g.A) * (g.c - g.A - g.ratio * (g.b - g.B)) := by
      rw [mul_sub g.weightSum g.b g.rho, hmean]
      simp only [weightSum, weightA, weightB, weightb, weightc]
      field_simp
      ring
    have hpos : 0 < g.ratio * (g.b - g.B) * ((g.C - g.A) * (g.c - g.B) +
          (g.C - g.B) * (g.c - g.A) - (g.c - g.a) * (g.c - g.b)) +
          (g.C - g.B) * (g.c - g.A) * (g.c - g.A - g.ratio * (g.b - g.B)) :=
      add_pos_of_pos_of_nonneg (mul_pos (mul_pos hm hbB) hright)
        (mul_nonneg (mul_pos hCB hcA).le hrem)
    rw [← hid] at hpos
    have hden : 0 < (g.c - g.A) ^ 2 * (g.c - g.B) * g.ratio * (g.b - g.B) := by positivity
    have hgap := (mul_pos_iff_of_pos_left hsum).mp ((mul_pos_iff_of_pos_left hden).mp hpos)
    exact sub_pos.mp hgap

end EvenGeometry
end
end SPR.N6
