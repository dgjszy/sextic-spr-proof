import SPR.N6.Preliminaries.EvenGeometry

/-!
# Closed two-width budget with a nondividing boundary case

The parameter y is set to zero when the budget remainder vanishes. This avoids
an illegitimate division by a width which is permitted to be zero.
-/
namespace SPR.N6

/-- Normalize d and κ into the closed unit square using the actual two-width inequality. -/
theorem width_budget_coordinates {a d e f g κ : ℝ}
    (ha : 0 < a) (hd : 0 < d) (he : 0 < e) (hf : 0 < f) (hg : 0 < g)
    (hκ : 0 ≤ κ)
    (hb : d * (e + 2*f + g) + (2*d + e + 2*a) * κ ≤ f * (f + g)) :
    ∃ x y : ℝ, x ∈ Set.Icc (0 : ℝ) 1 ∧ y ∈ Set.Icc (0 : ℝ) 1 ∧
      d = f * (f + g) * x / (e + 2*f + g) ∧
      κ = (f * (f + g) - d * (e + 2*f + g)) * y / (2*d + e + 2*a) := by
  let L := e + 2*f + g
  let J := f * (f + g)
  let T := 2*d + e + 2*a
  have hL : 0 < L := by dsimp [L]; positivity
  have hJ : 0 < J := by dsimp [J]; positivity
  have hT : 0 < T := by dsimp [T]; positivity
  have hTK : 0 ≤ T * κ := mul_nonneg hT.le hκ
  have hdL : d * L ≤ J := by linarith only [hb, hTK]
  let x := d * L / J
  have hx : x ∈ Set.Icc (0 : ℝ) 1 :=
    ⟨div_nonneg (mul_pos hd hL).le hJ.le, (div_le_one hJ).mpr hdL⟩
  have hid : d = J * x / L := by dsimp [x]; field_simp
  by_cases hz : J - d * L = 0
  · have hk0 : κ = 0 := by
      have hp : T * κ ≤ 0 := by linarith only [hb, hz]
      have hk : κ ≤ 0 := by nlinarith only [hp, hT]
      exact le_antisymm hk hκ
    refine ⟨x, 0, hx, ⟨le_rfl, zero_le_one⟩, hid, ?_⟩
    simp [hk0]
  · have hR : 0 < J - d * L := lt_of_le_of_ne (sub_nonneg.mpr hdL) (Ne.symm hz)
    let y := T * κ / (J - d * L)
    have hy : y ∈ Set.Icc (0 : ℝ) 1 := by
      refine ⟨div_nonneg hTK hR.le, (div_le_one hR).mpr ?_⟩
      linarith only [hb]
    refine ⟨x, y, hx, hy, hid, ?_⟩
    change κ = (J - d * L) * y / T
    dsimp [y]
    field_simp

/-- Recover the exact closed budget from the actual first and second even widths. -/
theorem EvenGeometry.width_budget {B : Box6} (q : EvenGeometry B) :
    let a := q.a
    let d := q.A - q.a
    let e := q.B - q.A
    let f := q.b - q.B
    let g := q.c - q.b
    let κ := d + (q.C - q.c) - f
    0 ≤ κ ∧ d * (e + 2*f + g) + (2*d + e + 2*a) * κ ≤ f * (f + g) := by
  obtain ⟨h1, h2, _⟩ := q.widths
  dsimp
  exact ⟨by linarith only [h1], by nlinarith only [h2]⟩

end SPR.N6
