import SPR.N6.Construction.CoreSecondSlice
import SPR.N6.Construction.MixedHigh401Coefficient
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh410Source

/-!
# Factored coefficient extraction for the mixed high coefficient `(4,1,0)`

The second outer slice is retained as a polynomial in `y`.  The four factors
of the source are expanded only through their constant and first polynomial
coefficients; all endpoint source expressions remain named.  This keeps the
source bridge independent of the large static certificate.
-/
namespace SPR.N6.OuterParameters
noncomputable section
open Polynomial
open SPR.N6.Tail
open SPR.N6.Tail.CoreEndpoint
open SPR.N6.Tail.CoreEndpoint.PureSource
open SPR.N6.Tail.CoreEndpoint.MixedHigh401Source
open SPR.N6.Tail.CoreEndpoint.MixedHigh410Source
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- The first-second slice inputs, with `y` as the formal indeterminate. -/
def secondSliceS (p : OuterParameters) : Polynomial ℝ :=
  Polynomial.C p.L + Polynomial.C p.H * Polynomial.X

def secondSliceAN (p : OuterParameters) : Polynomial ℝ :=
  Polynomial.C (p.A*p.L-p.J) + Polynomial.C (p.A*p.B*p.dq) * Polynomial.X

def secondSliceCN (p : OuterParameters) : Polynomial ℝ :=
  Polynomial.C ((p.c+p.f)*p.L-p.J) + Polynomial.C (p.b*p.c*p.dq) * Polynomial.X

/-- The second-coordinate directional mixture factor in the `A` basis. -/
def secondHh (p : OuterParameters) : ℝ :=
  Hh0 p.e p.f p.g + Hh1 p.e p.f p.g*p.A + Hh2 p.e p.f p.g*p.A^2

lemma second_den1_coeff_zero (p : OuterParameters) :
    (OuterHomogeneous.den1 (secondSliceS p) (secondSliceAN p)
      (Polynomial.C p.b) (Polynomial.C p.c)).coeff 0 =
      D1 p.e p.f p.g := by
  unfold OuterHomogeneous.den1 secondSliceS secondSliceAN
  rw [mul_coeff_zero]
  simp
  simp only [D1, PureSource.L, PureSource.J, OuterParameters.L,
    OuterParameters.J, OuterParameters.B, OuterParameters.b,
    OuterParameters.c, OuterParameters.dq]
  ring

lemma second_den1_coeff_one (p : OuterParameters) :
    (OuterHomogeneous.den1 (secondSliceS p) (secondSliceAN p)
      (Polynomial.C p.b) (Polynomial.C p.c)).coeff 1 =
      2*p.A^2*D1 p.e p.f p.g + p.M*(2*p.A+p.e)*D1r p.e p.f p.g := by
  unfold OuterHomogeneous.den1 secondSliceS secondSliceAN
  rw [mul_coeff_one]
  simp
  simp only [D1, OuterParameters.M, OuterParameters.H, D1r, PureSource.L, PureSource.J,
    PureSource.M, OuterParameters.L, OuterParameters.J, OuterParameters.B,
    OuterParameters.b, OuterParameters.c, OuterParameters.dq]
  ring

lemma second_den2_coeff_zero (p : OuterParameters) :
    (OuterHomogeneous.den2 (secondSliceS p) (Polynomial.C p.A)
      (Polynomial.C p.B) (secondSliceCN p)).coeff 0 =
      D2 p.e p.f p.g := by
  unfold OuterHomogeneous.den2 secondSliceS secondSliceCN
  rw [mul_coeff_zero]
  simp
  simp only [D2, PureSource.L, PureSource.J, PureSource.M,
    OuterParameters.L, OuterParameters.J, OuterParameters.B,
    OuterParameters.b, OuterParameters.c, OuterParameters.dq]
  ring

lemma second_den2_coeff_one (p : OuterParameters) :
    (OuterHomogeneous.den2 (secondSliceS p) (Polynomial.C p.A)
      (Polynomial.C p.B) (secondSliceCN p)).coeff 1 =
      2*p.A^2*D2 p.e p.f p.g + p.M*(2*p.A+p.e)*D2r p.e p.f p.g +
        p.M*(p.f+p.g)*D2h p.e p.f p.g := by
  unfold OuterHomogeneous.den2 secondSliceS secondSliceCN
  rw [mul_coeff_one]
  simp
  simp only [D2, OuterParameters.M, OuterParameters.H, D2r, D2h, PureSource.L,
    PureSource.J, PureSource.M, OuterParameters.L, OuterParameters.J,
    OuterParameters.B, OuterParameters.b, OuterParameters.c,
    OuterParameters.dq]
  ring

lemma second_weight_coeff_zero (p : OuterParameters) (hf : p.f ≠ 0) :
    (OuterHomogeneous.weight (secondSliceS p) (secondSliceAN p)
      (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
      (Polynomial.C p.c) (secondSliceCN p)
      (Polynomial.C ((p.e+p.f+p.g)/p.f))).coeff 0 =
      PureSource.M p.e p.f p.g*W p.e p.f p.g := by
  unfold OuterHomogeneous.weight secondSliceS secondSliceAN secondSliceCN
  simp [pow_two, mul_coeff_zero]
  field_simp [hf]
  simp only [OuterParameters.M, W, PureSource.L, PureSource.J,
    PureSource.M, OuterParameters.L, OuterParameters.J, OuterParameters.B,
    OuterParameters.b, OuterParameters.c, OuterParameters.dq]
  ring

lemma second_weight_coeff_one (p : OuterParameters) (hf : p.f ≠ 0) :
    (OuterHomogeneous.weight (secondSliceS p) (secondSliceAN p)
      (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
      (Polynomial.C p.c) (secondSliceCN p)
      (Polynomial.C ((p.e+p.f+p.g)/p.f))).coeff 1 =
      PureSource.M p.e p.f p.g *
        (p.A^2*W p.e p.f p.g + p.M*(2*p.A+p.e)*Wr p.e p.f p.g +
          p.M*(p.f+p.g)*Wh p.e p.f p.g) := by
  unfold OuterHomogeneous.weight secondSliceS secondSliceAN secondSliceCN
  simp [pow_two, mul_coeff_one, mul_coeff_zero]
  field_simp [hf]
  simp only [OuterParameters.M, OuterParameters.H, W, Wr, Wh, PureSource.L,
    PureSource.J, PureSource.M, OuterParameters.L, OuterParameters.J,
    OuterParameters.B, OuterParameters.b, OuterParameters.c,
    OuterParameters.dq]
  ring

/-- The two linear factors in the mixture, before multiplying by denominators. -/
def secondMixLeft (p : OuterParameters) : Polynomial ℝ :=
  secondSliceAN p * Polynomial.C (p.A+p.B) +
    Polynomial.C (p.b*p.c) * secondSliceS p

def secondMixRight (p : OuterParameters) : Polynomial ℝ :=
  Polynomial.C (p.A*p.B) * secondSliceS p +
    secondSliceCN p * Polynomial.C (p.b+p.c)

lemma secondMixLeft_coeff_zero (p : OuterParameters) :
    (secondMixLeft p).coeff 0 =
      (p.A*p.L-p.J)*(p.A+p.B)+p.b*p.c*p.L := by
  unfold secondMixLeft secondSliceAN secondSliceS
  simp [mul_coeff_zero]

lemma secondMixLeft_coeff_one (p : OuterParameters) :
    (secondMixLeft p).coeff 1 =
      p.A*p.B*p.dq*(p.A+p.B)+p.b*p.c*p.H := by
  unfold secondMixLeft secondSliceAN secondSliceS
  simp [mul_coeff_one, mul_coeff_zero]

lemma secondMixRight_coeff_zero (p : OuterParameters) :
    (secondMixRight p).coeff 0 =
      p.A*p.B*p.L+((p.c+p.f)*p.L-p.J)*(p.b+p.c) := by
  unfold secondMixRight secondSliceS secondSliceCN
  simp [mul_coeff_zero]

lemma secondMixRight_coeff_one (p : OuterParameters) :
    (secondMixRight p).coeff 1 =
      p.A*p.B*p.H+p.b*p.c*p.dq*(p.b+p.c) := by
  unfold secondMixRight secondSliceS secondSliceCN
  simp [mul_coeff_one, mul_coeff_zero]

lemma second_mixture_coeff_zero (p : OuterParameters) :
    (OuterHomogeneous.mixture (secondSliceS p) (secondSliceAN p)
      (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
      (Polynomial.C p.c) (secondSliceCN p)).coeff 0 =
      mixedH p := by
  have hd1 := second_den1_coeff_zero p
  have hd2 := second_den2_coeff_zero p
  have hl0 := secondMixLeft_coeff_zero p
  have hr0 := secondMixRight_coeff_zero p
  have hm : OuterHomogeneous.mixture (secondSliceS p) (secondSliceAN p)
      (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
      (Polynomial.C p.c) (secondSliceCN p) =
      secondMixLeft p * OuterHomogeneous.den2 (secondSliceS p)
        (Polynomial.C p.A) (Polynomial.C p.B) (secondSliceCN p) +
      secondMixRight p * OuterHomogeneous.den1 (secondSliceS p)
        (secondSliceAN p) (Polynomial.C p.b) (Polynomial.C p.c) := by
    simp only [OuterHomogeneous.mixture, secondMixLeft, secondMixRight,
      secondSliceS, secondSliceAN, secondSliceCN]
    simp only [map_add, map_mul]
  rw [hm, coeff_add, mul_coeff_zero, mul_coeff_zero, hl0, hr0, hd1, hd2]
  simp only [mixedH, H0, H1, H2, D1, D2, PureSource.L, PureSource.J,
    PureSource.M, OuterParameters.L, OuterParameters.J, OuterParameters.B,
    OuterParameters.b, OuterParameters.c, OuterParameters.dq]
  ring

lemma second_mixture_coeff_one (p : OuterParameters) :
    (OuterHomogeneous.mixture (secondSliceS p) (secondSliceAN p)
      (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
      (Polynomial.C p.c) (secondSliceCN p)).coeff 1 =
      3*p.A^2*mixedH p + p.M*(2*p.A+p.e)*mixedHr p +
        p.M*(p.f+p.g)*secondHh p := by
  have hd10 := second_den1_coeff_zero p
  have hd11 := second_den1_coeff_one p
  have hd20 := second_den2_coeff_zero p
  have hd21 := second_den2_coeff_one p
  have hl0 := secondMixLeft_coeff_zero p
  have hl1 := secondMixLeft_coeff_one p
  have hr0 := secondMixRight_coeff_zero p
  have hr1 := secondMixRight_coeff_one p
  have hm : OuterHomogeneous.mixture (secondSliceS p) (secondSliceAN p)
      (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
      (Polynomial.C p.c) (secondSliceCN p) =
      secondMixLeft p * OuterHomogeneous.den2 (secondSliceS p)
        (Polynomial.C p.A) (Polynomial.C p.B) (secondSliceCN p) +
      secondMixRight p * OuterHomogeneous.den1 (secondSliceS p)
        (secondSliceAN p) (Polynomial.C p.b) (Polynomial.C p.c) := by
    simp only [OuterHomogeneous.mixture, secondMixLeft, secondMixRight,
      secondSliceS, secondSliceAN, secondSliceCN]
    simp only [map_add, map_mul]
  rw [hm, coeff_add, mul_coeff_one, mul_coeff_one, hl0, hl1, hr0, hr1,
    hd20, hd21, hd10, hd11]
  simp only [mixedH, mixedHr, secondHh, OuterParameters.H, H0, H1, H2,
    MixedHigh401Source.Hr0, MixedHigh401Source.Hr1,
    MixedHigh401Source.Hr2, D1, D2, D1r, D2r, D2h, Hh0, Hh1, Hh2,
    PureSource.L, PureSource.J, PureSource.M, OuterParameters.M,
    OuterParameters.L, OuterParameters.J, OuterParameters.B,
    OuterParameters.b, OuterParameters.c, OuterParameters.dq]
  ring

end
end SPR.N6.OuterParameters
