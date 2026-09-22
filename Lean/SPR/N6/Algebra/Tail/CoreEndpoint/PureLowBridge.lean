import SPR.N6.Algebra.Tail.CoreEndpoint.PureLow
import SPR.N6.Algebra.Tail.CoreEndpoint.PureLowSource0
import SPR.N6.Algebra.Tail.CoreEndpoint.PureLowSource1
import SPR.N6.Algebra.Tail.CoreEndpoint.PureLowSource2
import SPR.N6.Algebra.Tail.CoreEndpoint.PureLowSource3
import SPR.N6.Algebra.Tail.CoreEndpoint.PureLowSource4

/-! The full compactified low first-coordinate block, with exact source recovery. -/
namespace SPR.N6.Tail.CoreEndpoint.PureSource
noncomputable section
set_option Elab.async false
set_option maxRecDepth 16384

/-- The complete quadratic core uses the second denominator power. -/
theorem low_source_identity (A e f g v : ℝ) (hf : f ≠ 0) (hv : 1+v ≠ 0) :
    (1+v)^2*OuterHomogeneous.core true (L e f g) (A*L e f g-J f g)
      A (A+e) (A+e+f) (A+e+f+g) ((A+e+2*f+g)*L e f g-J f g)
      (M e f g/f) ((A+e)*v/(1+v)) = 2*M e f g*PureLow.source A e f g v := by
  have hD1 : OuterHomogeneous.den1 (L e f g) (A*L e f g-J f g)
      (A+e+f) (A+e+f+g) = D1 e f g := by
    unfold OuterHomogeneous.den1 D1
    ring
  have hD2 : OuterHomogeneous.den2 (L e f g) A (A+e)
      ((A+e+2*f+g)*L e f g-J f g) = D2 e f g := by
    unfold OuterHomogeneous.den2 D2
    ring
  have hW : OuterHomogeneous.weight (L e f g) (A*L e f g-J f g)
      A (A+e) (A+e+f) (A+e+f+g) ((A+e+2*f+g)*L e f g-J f g)
      (M e f g/f) = M e f g*W e f g := by
    unfold OuterHomogeneous.weight W M
    field_simp
    <;> ring
  have hH : OuterHomogeneous.mixture (L e f g) (A*L e f g-J f g)
      A (A+e) (A+e+f) (A+e+f+g) ((A+e+2*f+g)*L e f g-J f g) =
      H0 e f g+H1 e f g*A+H2 e f g*A^2 := by
    unfold OuterHomogeneous.mixture
    rw [hD1,hD2]
    unfold H0 H1 H2 M
    ring

  have he : A+e-A = e := by ring
  have hhf : A+e+f-(A+e) = f := by ring
  have hg : A+e+f+g-(A+e+f) = g := by ring
  have hd : A*L e f g-(A*L e f g-J f g) = J f g := by ring
  have hh : (A+e+2*f+g)*L e f g-J f g-(A+e+f+g)*L e f g =
      f*L e f g-J f g := by ring
  have hz (t : ℝ) : OuterHomogeneous.zero true (L e f g) (A*L e f g-J f g)
      A (A+e) (A+e+f) (A+e+f+g) ((A+e+2*f+g)*L e f g-J f g)
      (M e f g/f) t = 2*M e f g*(lz0 e f g+lz1 e f g*(t-(A+e))+
        lz2 e f g*(t-(A+e))^2) := by
    simp only [OuterHomogeneous.zero,ite_true,
      he,hhf,hg,hd,hh,low_zero0 e f g hf,low_zero1 e f g hf,low_zero2 e f g hf]
    ring
  unfold OuterHomogeneous.core
  rw [hD1,hD2,hW,hH,hz]
  simp only [ite_true]
  rw [PureLow.source,← low_coefficient0,← low_coefficient1,← low_coefficient2,
    ← low_coefficient3,← low_coefficient4]
  unfold lr0 lr1 lr2 lr3 lr4 LZ0 LZ1 LZ2 node0
  field_simp
  <;> ring

/-- Both closed gap cones are valid on the entire compactified half-line. -/
theorem low_source_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 < f) (hg : 0 ≤ g) (hv : 0 ≤ v) :
    0 ≤ OuterHomogeneous.core true (L e f g) (A*L e f g-J f g)
      A (A+e) (A+e+f) (A+e+f+g) ((A+e+2*f+g)*L e f g-J f g)
      (M e f g/f) ((A+e)*v/(1+v)) := by
  have hd : 0 < 1+v := by linarith only [hv]
  have hh := low_source_identity A e f g v (ne_of_gt hf) (ne_of_gt hd)
  have hp := PureLow.nonnegative hA he (le_of_lt hf) hg hv
  have hM : 0 ≤ M e f g := by unfold M; positivity
  have hh' : 0 ≤ (1+v)^2*OuterHomogeneous.core true (L e f g) (A*L e f g-J f g)
      A (A+e) (A+e+f) (A+e+f+g) ((A+e+2*f+g)*L e f g-J f g)
      (M e f g/f) ((A+e)*v/(1+v)) := by rw [hh]; positivity
  exact (mul_nonneg_iff_of_pos_left (sq_pos_of_pos hd)).mp hh'
end
end SPR.N6.Tail.CoreEndpoint.PureSource
