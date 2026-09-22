import SPR.N6.Construction.CoreSlice
import SPR.N6.Algebra.Tail.QuadraticJet
import SPR.N6.Algebra.Tail.SmallGap.EndpointSource
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh401Source

/-!
# Bounded source extraction for the mixed high coefficient `(4,0,1)`

The x-z slice is kept factored.  The coefficient-one identities for the
linear factors are proved before any lower-zero polynomial is unfolded; the
quadratic zero factor is handled by `QuadraticJet` and the endpoint identities.
-/
namespace SPR.N6.OuterParameters
noncomputable section
open Polynomial
open SPR.N6.Tail
open SPR.N6.Tail.CoreEndpoint
open SPR.N6.Tail.CoreEndpoint.PureSource
open SPR.N6.Tail.SmallGap
open SPR.N6.Tail.SmallGap.EndpointSource
open SPR.N6.Tail.QuadraticJet
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- The first-third slice inputs, with the third outer coordinate formal. -/
def mixedSliceS (p : OuterParameters) : Polynomial ℝ :=
  Polynomial.C p.L + Polynomial.C p.dq * Polynomial.X

def mixedSliceAN (p : OuterParameters) : Polynomial ℝ :=
  Polynomial.C (p.A*p.L-p.J) + Polynomial.C (p.A*p.B*p.L) * Polynomial.X

def mixedSliceCN (p : OuterParameters) : Polynomial ℝ :=
  Polynomial.C ((p.c+p.f)*p.L-p.J) + Polynomial.C (p.b*p.c*p.L) * Polynomial.X

/-- The mixture factors at the endpoint, in the same A basis as `PureSource`. -/
def mixedH (p : OuterParameters) : ℝ :=
  H0 p.e p.f p.g + H1 p.e p.f p.g*p.A + H2 p.e p.f p.g*p.A^2

def mixedHr (p : OuterParameters) : ℝ :=
  MixedHigh401Source.Hr0 p.e p.f p.g +
    MixedHigh401Source.Hr1 p.e p.f p.g*p.A +
    MixedHigh401Source.Hr2 p.e p.f p.g*p.A^2

lemma mixed_weight_coeff_zero (p : OuterParameters) (hf : p.f ≠ 0) :
    (OuterHomogeneous.weight (mixedSliceS p) (mixedSliceAN p) (Polynomial.C p.A)
      (Polynomial.C p.B) (Polynomial.C p.b) (Polynomial.C p.c) (mixedSliceCN p)
      (Polynomial.C ((p.e+p.f+p.g)/p.f))).coeff 0 =
      PureSource.M p.e p.f p.g*W p.e p.f p.g := by
  unfold OuterHomogeneous.weight mixedSliceS mixedSliceAN mixedSliceCN
  simp [pow_two, mul_coeff_zero]
  field_simp [hf]
  simp only [OuterParameters.M, W, PureSource.L, PureSource.J, PureSource.M,
    OuterParameters.L, OuterParameters.J, OuterParameters.B,
    OuterParameters.b, OuterParameters.c, OuterParameters.dq]
  ring

lemma mixed_weight_coeff_one (p : OuterParameters) (hf : p.f ≠ 0) :
    (OuterHomogeneous.weight (mixedSliceS p) (mixedSliceAN p) (Polynomial.C p.A)
      (Polynomial.C p.B) (Polynomial.C p.b) (Polynomial.C p.c) (mixedSliceCN p)
      (Polynomial.C ((p.e+p.f+p.g)/p.f))).coeff 1 =
      PureSource.M p.e p.f p.g *
        (p.A*W p.e p.f p.g + p.M*MixedHigh401Source.Wr p.e p.f p.g) := by
  unfold OuterHomogeneous.weight mixedSliceS mixedSliceAN mixedSliceCN
  simp [pow_two, mul_coeff_one, mul_coeff_zero]
  field_simp [hf]
  simp only [OuterParameters.M, W, MixedHigh401Source.Wr, PureSource.L,
    PureSource.J, PureSource.M, OuterParameters.L, OuterParameters.J,
    OuterParameters.B, OuterParameters.b, OuterParameters.c,
    OuterParameters.dq]
  ring

lemma mixed_den1_coeff_zero (p : OuterParameters) :
    (OuterHomogeneous.den1 (mixedSliceS p) (mixedSliceAN p)
      (Polynomial.C p.b) (Polynomial.C p.c)).coeff 0 =
      D1 p.e p.f p.g := by
  unfold OuterHomogeneous.den1 mixedSliceS mixedSliceAN
  rw [mul_coeff_zero]
  simp
  simp only [D1, PureSource.L, PureSource.J, OuterParameters.L,
    OuterParameters.J, OuterParameters.B, OuterParameters.b, OuterParameters.c,
    OuterParameters.dq]
  ring

lemma mixed_den1_coeff_one (p : OuterParameters) :
    (OuterHomogeneous.den1 (mixedSliceS p) (mixedSliceAN p)
      (Polynomial.C p.b) (Polynomial.C p.c)).coeff 1 =
      2*p.A*D1 p.e p.f p.g + p.M*MixedHigh401Source.D1r p.e p.f p.g := by
  unfold OuterHomogeneous.den1 mixedSliceS mixedSliceAN
  rw [mul_coeff_one]
  simp
  simp only [D1, OuterParameters.M, MixedHigh401Source.D1r, PureSource.L,
    PureSource.J, PureSource.M, OuterParameters.L, OuterParameters.J,
    OuterParameters.B, OuterParameters.b, OuterParameters.c,
    OuterParameters.dq]
  ring

lemma mixed_den2_coeff_zero (p : OuterParameters) :
    (OuterHomogeneous.den2 (mixedSliceS p) (Polynomial.C p.A)
      (Polynomial.C p.B) (mixedSliceCN p)).coeff 0 =
      D2 p.e p.f p.g := by
  unfold OuterHomogeneous.den2 mixedSliceS mixedSliceCN
  rw [mul_coeff_zero]
  simp
  simp only [D2, PureSource.L, PureSource.J, PureSource.M,
    OuterParameters.L, OuterParameters.J, OuterParameters.B,
    OuterParameters.b, OuterParameters.c, OuterParameters.dq]
  ring

lemma mixed_den2_coeff_one (p : OuterParameters) :
    (OuterHomogeneous.den2 (mixedSliceS p) (Polynomial.C p.A)
      (Polynomial.C p.B) (mixedSliceCN p)).coeff 1 =
      2*p.A*D2 p.e p.f p.g + p.M*MixedHigh401Source.D2r p.e p.f p.g := by
  unfold OuterHomogeneous.den2 mixedSliceS mixedSliceCN
  rw [mul_coeff_one]
  simp
  simp only [D2, OuterParameters.M, MixedHigh401Source.D2r, PureSource.L,
    PureSource.J, PureSource.M, OuterParameters.L, OuterParameters.J,
    OuterParameters.B, OuterParameters.b, OuterParameters.c,
    OuterParameters.dq]
  ring

def mixLeft (p : OuterParameters) : Polynomial ℝ :=
  mixedSliceAN p * Polynomial.C (p.A+p.B) +
    Polynomial.C (p.b*p.c) * mixedSliceS p

def mixRight (p : OuterParameters) : Polynomial ℝ :=
  Polynomial.C (p.A*p.B) * mixedSliceS p +
    mixedSliceCN p * Polynomial.C (p.b+p.c)

lemma mixLeft_coeff_zero (p : OuterParameters) :
    (mixLeft p).coeff 0 =
      (p.A*p.L-p.J)*(p.A+p.B)+p.b*p.c*p.L := by
  unfold mixLeft mixedSliceAN mixedSliceS
  simp [mul_coeff_zero]

lemma mixLeft_coeff_one (p : OuterParameters) :
    (mixLeft p).coeff 1 =
      p.A*p.B*p.L*(p.A+p.B)+p.b*p.c*p.dq := by
  unfold mixLeft mixedSliceAN mixedSliceS
  simp [mul_coeff_one, mul_coeff_zero]

lemma mixRight_coeff_zero (p : OuterParameters) :
    (mixRight p).coeff 0 =
      p.A*p.B*p.L+((p.c+p.f)*p.L-p.J)*(p.b+p.c) := by
  unfold mixRight mixedSliceS mixedSliceCN
  simp [mul_coeff_zero]

lemma mixRight_coeff_one (p : OuterParameters) :
    (mixRight p).coeff 1 =
      p.A*p.B*p.dq+p.b*p.c*p.L*(p.b+p.c) := by
  unfold mixRight mixedSliceS mixedSliceCN
  simp [mul_coeff_one, mul_coeff_zero]

lemma mixed_mixture_coeff_zero (p : OuterParameters) :
    (OuterHomogeneous.mixture (mixedSliceS p) (mixedSliceAN p) (Polynomial.C p.A)
      (Polynomial.C p.B) (Polynomial.C p.b) (Polynomial.C p.c) (mixedSliceCN p)).coeff 0 =
      mixedH p := by
  have hd1 := mixed_den1_coeff_zero p
  have hd2 := mixed_den2_coeff_zero p
  have hl0 := mixLeft_coeff_zero p
  have hr0 := mixRight_coeff_zero p
  have hm : OuterHomogeneous.mixture (mixedSliceS p) (mixedSliceAN p)
      (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b) (Polynomial.C p.c)
      (mixedSliceCN p) =
      mixLeft p * OuterHomogeneous.den2 (mixedSliceS p) (Polynomial.C p.A)
        (Polynomial.C p.B) (mixedSliceCN p) +
      mixRight p * OuterHomogeneous.den1 (mixedSliceS p) (mixedSliceAN p)
        (Polynomial.C p.b) (Polynomial.C p.c) := by
    simp only [OuterHomogeneous.mixture, mixLeft, mixRight, mixedSliceS,
      mixedSliceAN, mixedSliceCN]
    simp only [map_add, map_mul]
  rw [hm, coeff_add, mul_coeff_zero, mul_coeff_zero, hl0, hr0, hd1, hd2]
  simp only [mixedH, H0, H1, H2, D1, D2, PureSource.L, PureSource.J,
    PureSource.M, OuterParameters.L, OuterParameters.J, OuterParameters.B,
    OuterParameters.b, OuterParameters.c, OuterParameters.dq]
  ring

lemma mixed_mixture_coeff_one (p : OuterParameters) :
    (OuterHomogeneous.mixture (mixedSliceS p) (mixedSliceAN p) (Polynomial.C p.A)
      (Polynomial.C p.B) (Polynomial.C p.b) (Polynomial.C p.c) (mixedSliceCN p)).coeff 1 =
      3*p.A*mixedH p + p.M*mixedHr p := by
  have hd10 := mixed_den1_coeff_zero p
  have hd11 := mixed_den1_coeff_one p
  have hd20 := mixed_den2_coeff_zero p
  have hd21 := mixed_den2_coeff_one p
  have hl0 := mixLeft_coeff_zero p
  have hl1 := mixLeft_coeff_one p
  have hr0 := mixRight_coeff_zero p
  have hr1 := mixRight_coeff_one p
  have hm : OuterHomogeneous.mixture (mixedSliceS p) (mixedSliceAN p)
      (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b) (Polynomial.C p.c)
      (mixedSliceCN p) =
      mixLeft p * OuterHomogeneous.den2 (mixedSliceS p) (Polynomial.C p.A)
        (Polynomial.C p.B) (mixedSliceCN p) +
      mixRight p * OuterHomogeneous.den1 (mixedSliceS p) (mixedSliceAN p)
        (Polynomial.C p.b) (Polynomial.C p.c) := by
    simp only [OuterHomogeneous.mixture, mixLeft, mixRight, mixedSliceS,
      mixedSliceAN, mixedSliceCN]
    simp only [map_add, map_mul]
  rw [hm, coeff_add, mul_coeff_one, mul_coeff_one, hl0, hl1, hr0, hr1,
    hd20, hd21, hd10, hd11]
  simp only [mixedH, mixedHr, H0, H1, H2, MixedHigh401Source.Hr0,
    MixedHigh401Source.Hr1, MixedHigh401Source.Hr2, D1, D2,
    MixedHigh401Source.D1r, MixedHigh401Source.D2r, PureSource.L,
    PureSource.J, PureSource.M, OuterParameters.M, OuterParameters.L,
    OuterParameters.J, OuterParameters.B, OuterParameters.b,
    OuterParameters.c, OuterParameters.dq]
  ring


end
end SPR.N6.OuterParameters
