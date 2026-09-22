import SPR.N6.Algebra.ConstantFace.Leading
import SPR.N6.Algebra.ConstantFace.Determinant

/-! Both lower zero quadratics on this face are positive on the whole real axis. -/
namespace SPR.N6.ConstantFace
noncomputable section

/-- The common normalized quadratic is positive for every real frequency. -/
theorem positive {e f g m : ℝ} (he : 0 < e) (hf : 0 < f) (hg : 0 < g)
    (hm : 1 ≤ m) (hM : m ≤ (e+f+g)/f) (t : ℝ) : 0 < P e f g m t := by
  have hlead := Leading.positive he hf hg hm hM
  have hdet := Determinant.positive he hf hg hm hM
  have hp := quadratic_pos (a := c2 e f g m) (b := c1 e f g m) (c := c0 e f g m)
    hlead (by simpa [determinant,mul_comm,mul_left_comm,mul_assoc] using hdet) t
  simpa [P,add_comm,add_left_comm,add_assoc] using hp

end
end SPR.N6.ConstantFace
