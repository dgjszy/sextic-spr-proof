import SPR.N6.Algebra.ConstantFace.Positive
import SPR.N6.Algebra.LowerZero

/-!
# Exact same-source identities on the two-width-zero face

Frequency is relative to A on the right and to B on the left. Reflection swaps
only the two inner side gaps; the canonical ratio remains the same.
-/
namespace SPR.N6.ConstantFace
noncomputable section
set_option maxHeartbeats 0
set_option maxRecDepth 8192

/-- The original cleared lower zero quotient equals the normalized quadratic. -/
theorem source0 (e f g m t : ℝ) (hL : e+2*f+g ≠ 0) :
    (e+2*f+g)^2*LowerZero.q0 (f*(f+g)/(e+2*f+g)) e f g
      (f*(e+f)/(e+2*f+g)) m (t-e) = P e f g m t := by
  unfold LowerZero.q0 LowerZero.q00 LowerZero.q01 LowerZero.q02 P c0 c1 c2
  field_simp
  ring

/-- The upper-even lower-odd quotient is the reflected same quadratic. -/
theorem source1 (e f g m t : ℝ) (hL : e+2*f+g ≠ 0) :
    (e+2*f+g)^2*LowerZero.q1 (f*(f+g)/(e+2*f+g)) e f g
      (f*(e+f)/(e+2*f+g)) m (t-e) = P g f e m (e+f+g-t) := by
  unfold LowerZero.q1 LowerZero.q10 LowerZero.q11 LowerZero.q12 P c0 c1 c2
  field_simp
  ring

end
end SPR.N6.ConstantFace
