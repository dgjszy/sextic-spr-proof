import SPR.N6.Algebra.Quadratic

/-!
# Universal endpoint certificate assembly

The high and low frequency blocks have different positivity mechanisms. These
lemmas deliberately permit the signed linear coefficient and the signed fourth
Bernstein coefficient respectively; requiring all coefficients positive would
be a false strengthening of the iteration43 certificate.
-/
namespace SPR.N6

/-- A strictly positive-definite binary quadratic form. -/
theorem quadratic_form_pos {a b c x y : ℝ} (ha : 0 < a)
    (hd : 0 < 4 * a * c - b ^ 2) (hxy : x ≠ 0 ∨ y ≠ 0) :
    0 < a * x ^ 2 + b * x * y + c * y ^ 2 := by
  by_cases hy : y = 0
  · have hx := hxy.resolve_right (not_not.mpr hy)
    simpa [hy] using mul_pos ha (sq_pos_of_ne_zero hx)
  · have hdet := mul_pos hd (sq_pos_of_ne_zero hy)
    have hs := sq_nonneg (2 * a * x + b * y)
    have hid : 4 * a * (a * x ^ 2 + b * x * y + c * y ^ 2) =
        (2 * a * x + b * y) ^ 2 + (4 * a * c - b ^ 2) * y ^ 2 := by ring
    apply (mul_pos_iff_of_pos_left (by positivity : 0 < 4 * a)).mp
    linarith only [hid, hs, hdet]

/-- The degree-four Bernstein low block, including both closed endpoints. -/
theorem low_block_pos {b0 b1 b2 b3 b4 u : ℝ}
    (h0 : 0 < b0) (h1 : 0 ≤ b1) (h2 : 0 < b2)
    (hd : 0 < 3 * b2 * b4 - 2 * b3 ^ 2) (hu0 : 0 ≤ u) (hu1 : u ≤ 1) :
    0 < b0 * (1 - u) ^ 4 + 4 * b1 * u * (1 - u) ^ 3 +
      6 * b2 * u ^ 2 * (1 - u) ^ 2 + 4 * b3 * u ^ 3 * (1 - u) + b4 * u ^ 4 := by
  by_cases hu : u = 0
  · simpa [hu] using h0
  · have hQ := quadratic_form_pos (a := 6 * b2) (b := 4 * b3) (c := b4)
      (x := 1 - u) (y := u) (by positivity) (by nlinarith only [hd]) (Or.inr hu)
    have hp := mul_pos (sq_pos_of_ne_zero hu) hQ
    have hc := mul_nonneg h0.le (pow_nonneg (sub_nonneg.mpr hu1) 4)
    have hlin := mul_nonneg (mul_nonneg (mul_nonneg (by norm_num : (0 : ℝ) ≤ 4) h1) hu0)
      (pow_nonneg (sub_nonneg.mpr hu1) 3)
    nlinarith only [hp, hc, hlin]

/-- A quadratic ratio interpolation with three positive Bernstein entries. -/
theorem ratio_block_pos {q0 q1 q2 u : ℝ} (h0 : 0 < q0) (h1 : 0 < q1) (h2 : 0 < q2)
    (hu0 : 0 ≤ u) (hu1 : u ≤ 1) :
    0 < q0 * (1 - u) ^ 2 + 2 * q1 * u * (1 - u) + q2 * u ^ 2 := by
  have ha := mul_nonneg h0.le (sq_nonneg (1 - u))
  have hb := mul_nonneg (mul_nonneg (mul_nonneg (by norm_num : (0 : ℝ) ≤ 2) h1.le) hu0)
    (sub_nonneg.mpr hu1)
  by_cases hu : u = 0
  · simpa [hu] using h0
  · have hc := mul_pos h2 (sq_pos_of_ne_zero hu)
    linarith

/-- One nonnegative multiplier of the common binomial square can be added to a strict remainder. -/
theorem one_square_pos {P R H A f r : ℝ}
    (hid : P = R + H * (A * f - r ^ 2) ^ 2) (hR : 0 < R) (hH : 0 ≤ H) : 0 < P := by
  rw [hid]
  exact add_pos_of_pos_of_nonneg hR (mul_nonneg hH (sq_nonneg _))

end SPR.N6
