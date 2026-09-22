import SPR.N6.Preliminaries.HermiteBiehler

/-!
# The negative even derivative at the three even roots

Its sign agrees strictly with the odd part at every even root of a Hurwitz
sextic. This is the root-local input for the all-even-degenerate synthesis case.
-/
namespace SPR.N6
noncomputable section
open Polynomial

/-- Negative derivative of the cubic squared-frequency even part. -/
def evenSlope (a : Poly6) (t : ℝ) : ℝ := 3 * t ^ 2 - 2 * a.a2 * t + a.a4

theorem DenominatorInterlacing.slope_value {a : Poly6} (d : DenominatorInterlacing a) (t : ℝ) :
    evenSlope a t = (t - d.e₂) * (t - d.e₃) + (t - d.e₁) * (t - d.e₃) +
      (t - d.e₁) * (t - d.e₂) := by
  have h := congrArg (fun p : ℝ[X] => p.derivative.eval t) d.even_factor
  simp [evenPoly, derivative_mul, evenSlope] at h ⊢
  nlinarith only [h]

/-- At every even zero the derivative perturbation contributes strictly positive pairing. -/
theorem even_root_slope_odd_pos {a : Poly6} (ha : IsHurwitz a.toPoly) {t : ℝ}
    (he : evenPart a t = 0) : 0 < t * evenSlope a t * oddPart a t := by
  obtain ⟨d⟩ := denominator_interlacing ha
  have h1 := d.e₁_pos
  have h12 := d.e₁_lt_o₁
  have h23 := d.o₁_lt_e₂
  have h34 := d.e₂_lt_o₂
  have h45 := d.o₂_lt_e₃
  have hc := (sextic_coefficients_pos ha).1
  have hroot := d.even_value t
  rw [he] at hroot
  have hz : t = d.e₁ ∨ t = d.e₂ ∨ t = d.e₃ := by
    simpa only [mul_eq_zero, neg_eq_zero, sub_eq_zero, or_assoc] using hroot.symm
  rcases hz with rfl | rfl | rfl
  · rw [d.slope_value, d.odd_value]
    simp only [sub_self, zero_mul, add_zero]
    apply mul_pos
    · exact mul_pos h1 (mul_pos_of_neg_of_neg (by linarith) (by linarith))
    · exact mul_pos_of_neg_of_neg (mul_neg_of_pos_of_neg hc (by linarith)) (by linarith)
  · rw [d.slope_value, d.odd_value]
    simp only [sub_self, zero_mul, mul_zero, zero_add, add_zero]
    apply mul_pos_of_neg_of_neg
    · exact mul_neg_of_pos_of_neg (by linarith)
        (mul_neg_of_pos_of_neg (by linarith) (by linarith))
    · exact mul_neg_of_pos_of_neg (mul_pos hc (by linarith)) (by linarith)
  · rw [d.slope_value, d.odd_value]
    simp only [sub_self, zero_mul, mul_zero, zero_add]
    apply mul_pos
    · exact mul_pos (by linarith) (mul_pos (by linarith) (by linarith))
    · exact mul_pos (mul_pos hc (by linarith)) (by linarith)

end
end SPR.N6
