import SPR.N6.Preliminaries.HermiteBiehler

/-!
# Odd derivative signs at the two odd roots

This is the root-local input for synthesis with three fixed odd coefficients.
All even signs come from the actual Hurwitz denominator interlacing.
-/
namespace SPR.N6
noncomputable section
open Polynomial

def oddSlope (a : Poly6) (t : ℝ) : ℝ := 2*a.a1*t-a.a3

theorem DenominatorInterlacing.odd_slope_value {a : Poly6}
    (d : DenominatorInterlacing a) (t : ℝ) :
    oddSlope a t = a.a1*((t-d.o₁)+(t-d.o₂)) := by
  have h := congrArg (fun p : ℝ[X] => p.derivative.eval t) d.odd_factor
  simp [oddPoly,derivative_mul,oddSlope] at h ⊢
  nlinarith only [h]

/-- At either odd zero, the derivative and even part have the same strict sign. -/
theorem odd_root_slope_even_pos {a : Poly6} (ha : IsHurwitz a.toPoly) {t : ℝ}
    (ho : oddPart a t = 0) : 0 < t*oddSlope a t*evenPart a t := by
  obtain ⟨d⟩ := denominator_interlacing ha
  have h1 := d.e₁_pos
  have h12 := d.e₁_lt_o₁
  have h23 := d.o₁_lt_e₂
  have h34 := d.e₂_lt_o₂
  have h45 := d.o₂_lt_e₃
  have hc := (sextic_coefficients_pos ha).1
  have hr := d.odd_value t
  rw [ho,mul_assoc] at hr
  have hz : t = d.o₁ ∨ t = d.o₂ := by
    have hm : (t-d.o₁)*(t-d.o₂) = 0 := by
      apply (mul_eq_zero.mp hr.symm).resolve_left (ne_of_gt hc)
    simpa only [mul_eq_zero,sub_eq_zero] using hm
  rcases hz with rfl | rfl
  · rw [d.odd_slope_value,d.even_value]
    simp only [sub_self,zero_add]
    apply mul_pos_of_neg_of_neg
    · exact mul_neg_of_pos_of_neg (by linarith)
        (mul_neg_of_pos_of_neg hc (by linarith))
    · exact mul_neg_of_pos_of_neg
        (mul_pos_of_neg_of_neg (by linarith) (by linarith)) (by linarith)
  · rw [d.odd_slope_value,d.even_value]
    simp only [sub_self,add_zero]
    apply mul_pos
    · exact mul_pos (by linarith) (mul_pos hc (by linarith))
    · exact mul_pos_of_neg_of_neg
        (mul_neg_of_neg_of_pos (by linarith) (by linarith)) (by linarith)

end
end SPR.N6
