import SPR.N6.Algebra.Tail.CoreEndpoint.PureHigh
import SPR.N6.Algebra.Tail.CoreEndpoint.PureSource0
import SPR.N6.Algebra.Tail.CoreEndpoint.PureSource1
import SPR.N6.Algebra.Tail.CoreEndpoint.PureSource2

/-!
# First complete high-core outer block connected to its homogeneous source

This proves the pure first-coordinate block for both inner-gap order regions.
It does not assert signs of the twenty other outer coefficients.
-/
namespace SPR.N6.Tail.CoreEndpoint.PureSource
noncomputable section
set_option Elab.async false
set_option maxRecDepth 16384

/-- Recovery of the same homogeneous source, with its factor two retained. -/
theorem source_identity (A e f g v : ℝ) (hf : f ≠ 0) :
    OuterHomogeneous.core false (L e f g) (A*L e f g-J f g)
      A (A+e) (A+e+f) (A+e+f+g) ((A+e+2*f+g)*L e f g-J f g)
      (M e f g/f) (A+e+f+v) = 2*M e f g*PureHigh.source A e f g v := by
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
  have ht : A+e+f+v-(A+e) = f+v := by ring
  have hz : OuterHomogeneous.zero false (L e f g) (A*L e f g-J f g)
      A (A+e) (A+e+f) (A+e+f+g) ((A+e+2*f+g)*L e f g-J f g)
      (M e f g/f) (A+e+f+v) = 2*M e f g*Z e f g v := by
    simp only [OuterHomogeneous.zero, Bool.false_eq_true, ite_false,
      he,hhf,hg,hd,hh,ht,zero0 e f g hf,zero1 e f g hf,zero2 e f g hf,Z]
    ring
  unfold OuterHomogeneous.core
  rw [hD1,hD2,hW,hH,hz]
  simp only [Bool.false_eq_true,ite_false]
  have hnode : A+e+f+v-A = e+f+v := by ring
  rw [hnode]
  calc
    _ = 2*M e f g*((D1 e f g*D2 e f g*W e f g*(e+f+v)^2+
        H0 e f g*Z e f g v)+(H1 e f g*Z e f g v)*A+
        (H2 e f g*Z e f g v)*A^2) := by ring
    _ = _ := by rw [coefficient0,coefficient1,coefficient2]; rfl

/-- This complete homogeneous block is nonnegative on its closed frequency half-line. -/
theorem source_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 < f) (hg : 0 ≤ g) (hv : 0 ≤ v) :
    0 ≤ OuterHomogeneous.core false (L e f g) (A*L e f g-J f g)
      A (A+e) (A+e+f) (A+e+f+g) ((A+e+2*f+g)*L e f g-J f g)
      (M e f g/f) (A+e+f+v) := by
  rw [source_identity A e f g v (ne_of_gt hf)]
  have hp := PureHigh.nonnegative hA he (le_of_lt hf) hg hv
  have hM : 0 ≤ M e f g := by unfold M; positivity
  positivity
end
end SPR.N6.Tail.CoreEndpoint.PureSource
