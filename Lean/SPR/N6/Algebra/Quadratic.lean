import Mathlib

/-!
# Positive quadratic blocks and strict nested-interval envelopes

These are algebraic, universally quantified lemmas. They are used both by the
odd envelope extraction and by the endpoint certificate assembly.
-/
namespace SPR.N6

/-- A positive leading coefficient and positive determinant give a strictly positive quadratic. -/
theorem quadratic_pos {a b c : ℝ} (ha : 0 < a) (hd : 0 < 4 * a * c - b ^ 2)
    (t : ℝ) : 0 < a * t ^ 2 + b * t + c := by
  have hs := sq_nonneg (2 * a * t + b)
  have hi : 4 * a * (a * t ^ 2 + b * t + c) =
      (2 * a * t + b) ^ 2 + (4 * a * c - b ^ 2) := by ring
  have hp : 0 < 4 * a * (a * t ^ 2 + b * t + c) := by linarith
  exact (mul_pos_iff_of_pos_left (by positivity : 0 < 4 * a)).mp hp

/-- Scaling by the ratio of interval lengths puts the outer-root quadratic strictly below
its inner-root counterpart at every real argument. -/
theorem nested_quadratics {l u v r : ℝ} (hlu : l < u) (huv : u < v) (hvr : v < r)
    (t : ℝ) : (v - u) / (r - l) * (t - l) * (t - r) < (t - u) * (t - v) := by
  let a := r - l - v + u
  let b := -(r - l) * (u + v) + (v - u) * (l + r)
  let c := (r - l) * u * v - (v - u) * l * r
  have ha : 0 < a := by dsimp [a]; linarith
  have hid : 4 * a * c - b ^ 2 = 4 * (v - u) * (u - l) * (r - v) * (r - l) := by
    dsimp [a, b, c]
    ring
  have hrl : 0 < r - l := by linarith
  have hd : 0 < 4 * a * c - b ^ 2 := by
    rw [hid]
    exact mul_pos (mul_pos (mul_pos (mul_pos (by norm_num) (sub_pos.mpr huv))
      (sub_pos.mpr hlu)) (sub_pos.mpr hvr)) hrl
  have hp := quadratic_pos ha hd t
  have heq : a * t ^ 2 + b * t + c =
      (r - l) * (t - u) * (t - v) - (v - u) * (t - l) * (t - r) := by
    dsimp [a, b, c]
    ring
  rw [heq] at hp
  apply (mul_lt_mul_iff_right₀ hrl).mp
  calc
    (r - l) * ((v - u) / (r - l) * (t - l) * (t - r)) =
        (v - u) * (t - l) * (t - r) := by field_simp
    _ < (r - l) * ((t - u) * (t - v)) := by nlinarith only [hp]

/-- Positive quadratic block plus a nonnegative cubic and quartic on the half-axis. -/
theorem high_block_pos {q0 q1 q2 q3 q4 v : ℝ}
    (h2 : 0 < q2) (hd : 0 < 4 * q0 * q2 - q1 ^ 2)
    (h3 : 0 ≤ q3) (h4 : 0 ≤ q4) (hv : 0 ≤ v) :
    0 < q0 + q1 * v + q2 * v ^ 2 + q3 * v ^ 3 + q4 * v ^ 4 := by
  have hq := quadratic_pos (b := q1) (c := q0) h2 (by nlinarith only [hd]) v
  have h3v := mul_nonneg h3 (pow_nonneg hv 3)
  have h4v := mul_nonneg h4 (pow_nonneg hv 4)
  linarith

end SPR.N6
