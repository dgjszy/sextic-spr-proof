import SPR.N6.Algebra.WidthBudget
import SPR.N6.Algebra.EndpointBlocks
import SPR.N6.Construction.Baseline

/-!
# Lower baseline residual on its complete protected half-axis

The actual closed two-width budget gives D1 > (B-A)(C-A). This direct
inequality makes the middle Bernstein entry positive and replaces the earlier
large static coefficient expansion. No external certificate is a dependency.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
variable {K : Box6}

/-- The actual first two even widths dominate the only negative middle term. -/
theorem baseline_width_bound (q : EvenGeometry K) :
    (q.B-q.A)*(q.C-q.A) < q.D1 := by
  let d := q.A-q.a
  let e := q.B-q.A
  let f := q.b-q.B
  let g := q.c-q.b
  let κ := d+(q.C-q.c)-f
  have hd : 0 < d := sub_pos.mpr q.a_lt_A
  have he : 0 < e := sub_pos.mpr q.A_lt_B
  have hf : 0 < f := sub_pos.mpr q.B_lt_b
  have hg : 0 < g := sub_pos.mpr q.b_lt_c
  obtain ⟨hκ, hb⟩ := q.width_budget
  change 0 ≤ κ at hκ
  change d*(e+2*f+g)+(2*d+e+2*q.a)*κ ≤ f*(f+g) at hb
  have hn1 : 0 ≤ d*(e+2*f+g) := by positivity
  have hn2 : 0 ≤ (2*d+2*q.a)*κ :=
    mul_nonneg (by linarith [q.a_pos]) hκ
  have heκ : e*κ ≤ f*(f+g) := by nlinarith only [hb, hn1, hn2]
  have hp : 0 < d^2+3*d*e+2*d*f+d*g := by positivity
  have hid : q.D1-(q.B-q.A)*(q.C-q.A) =
      d^2+3*d*e+2*d*f+d*g+f*(f+g)-e*κ := by
    dsimp [D1, d, e, f, g, κ]
    ring
  linarith only [hid, heκ, hp]

/-- The actual quadratic's middle Bernstein entry is strictly positive. -/
theorem residualLower_middle_pos (q : EvenGeometry K) :
    0 < -q.a * (q.B-q.A)^2 * q.D2 +
      (q.B*(q.A-q.a)*(q.C-q.A)+q.A*(q.B-q.a)*(q.C-q.B))*q.D1 := by
  obtain ⟨hba, hca, hCA, hCB, _, hBA, _, _, _, _⟩ := q.positive_gaps
  have hD1 : 0 < q.D1 := mul_pos hba hca
  have hA : 0 < q.A := q.a_pos.trans q.a_lt_A
  have hB : 0 < q.B := hA.trans q.A_lt_B
  have hAa : 0 < q.A-q.a := sub_pos.mpr q.a_lt_A
  have hsmall : q.a*(q.B-q.A) < q.A*(q.B-q.a) := by
    have hp := mul_pos hB hAa
    nlinarith only [hp]
  have h1 := mul_lt_mul_of_pos_right hsmall hD1
  have h2 := mul_lt_mul_of_pos_left q.baseline_width_bound (mul_pos q.a_pos hBA)
  have h3 := mul_lt_mul_of_pos_right (lt_trans h2 h1) hCB
  have h4 := mul_pos (mul_pos (mul_pos hB hAa) hCA) hD1
  dsimp [D2]
  nlinarith only [h3, h4]

/-- The exact three-coefficient interpolation identity on the first inner band. -/
theorem residualLower_interpolation (g : EvenGeometry K) (u : ℝ) :
    2*g.D1*g.D2*g.residualLower (g.A+(g.B-g.A)*u) =
      (2*g.D1*(g.A-g.a)*g.A*(g.C-g.B))*(1-u)^2 +
      2*(-g.a*(g.B-g.A)^2*g.D2 +
        (g.B*(g.A-g.a)*(g.C-g.A)+g.A*(g.B-g.a)*(g.C-g.B))*g.D1)*u*(1-u) +
      (2*g.D1*(g.B-g.a)*g.B*(g.C-g.A))*u^2 := by
  obtain ⟨hba, hca, hCA, hCB, _, _, _, _, _, _⟩ := g.positive_gaps
  have h1 : g.D1 ≠ 0 := ne_of_gt (mul_pos hba hca)
  have h2 : g.D2 ≠ 0 := ne_of_gt (mul_pos hCA hCB)
  simp only [residualLower]
  field_simp
  ring

/-- Positivity on the entire closed uncertainty band [A,B]. -/
theorem residualLower_pos_on_AB (g : EvenGeometry K) {t : ℝ}
    (htA : g.A ≤ t) (htB : t ≤ g.B) : 0 < g.residualLower t := by
  obtain ⟨hba, hca, hCA, hCB, _, hBA, _, _, _, _⟩ := g.positive_gaps
  have hD1 : 0 < g.D1 := mul_pos hba hca
  have hD2 : 0 < g.D2 := mul_pos hCA hCB
  have hAa : 0 < g.A-g.a := sub_pos.mpr g.a_lt_A
  have hBa : 0 < g.B-g.a := by linarith [g.a_lt_A, g.A_lt_B]
  have hA : 0 < g.A := g.a_pos.trans g.a_lt_A
  have hB : 0 < g.B := hA.trans g.A_lt_B
  let u := (t-g.A)/(g.B-g.A)
  have hu0 : 0 ≤ u := div_nonneg (sub_nonneg.mpr htA) hBA.le
  have hu1 : u ≤ 1 := (div_le_one hBA).mpr (by linarith)
  have ht : t = g.A+(g.B-g.A)*u := by dsimp [u]; field_simp; ring
  have h0 : 0 < 2*g.D1*(g.A-g.a)*g.A*(g.C-g.B) := by positivity
  have h2 : 0 < 2*g.D1*(g.B-g.a)*g.B*(g.C-g.A) := by positivity
  have hp := ratio_block_pos h0 g.residualLower_middle_pos h2 hu0 hu1
  rw [← g.residualLower_interpolation u, ← ht] at hp
  exact (mul_pos_iff_of_pos_left (by positivity : 0 < 2*g.D1*g.D2)).mp hp

/-- The lower baseline residual is strictly positive at every t >= A. -/
theorem residualLower_pos_of_ge_A (g : EvenGeometry K) {t : ℝ} (ht : g.A ≤ t) :
    0 < g.residualLower t := by
  by_cases hB : t ≤ g.B
  · exact g.residualLower_pos_on_AB ht hB
  · exact g.residualLower_pos_of_ge_B (le_of_lt (lt_of_not_ge hB))

end EvenGeometry
end
end SPR.N6
