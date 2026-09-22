import SPR.N6.Construction.CoreSlice
import SPR.N6.Construction.CoreCoefficientFrequency
import SPR.N6.Construction.MixedHigh401Coefficient
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedLow401Source
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedLow401ZeroJet

/-!
# The original low mixed coefficient `(4,0,1)`

This module connects the compactified low-frequency source to the actual
`firstThirdCore` coefficient.  The factor `(1+v)^2` is retained through the
zero direction and the final source identity.
-/
namespace SPR.N6.OuterParameters
noncomputable section
open Polynomial
open SPR.N6.Tail
open SPR.N6.Tail.CoreEndpoint
open SPR.N6.Tail.CoreEndpoint.PureSource
open SPR.N6.Tail.CoreEndpoint.MixedLow401Source
open SPR.N6.Tail.SmallGap
open SPR.N6.Tail.SmallGap.EndpointSource
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- The low zero factor on the first-third slice at the compactified frequency. -/
def mixedLowZero (p : OuterParameters) (v : ℝ) : ℝ[X] :=
  OuterHomogeneous.zero true (mixedSliceS p) (mixedSliceAN p)
    (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b) (Polynomial.C p.c)
    (mixedSliceCN p) (Polynomial.C ((p.e+p.f+p.g)/p.f))
    (Polynomial.C (p.B*v/(1+v)))

/-- Clearing the low compactification denominator gives the bounded quadratic line. -/
theorem mixed_low_zero_eq_line (p : OuterParameters) (v : ℝ)
    (hv : 1 + v ≠ 0) :
    Polynomial.C ((1+v)^2) * mixedLowZero p v =
      SPR.N6.Tail.CoreEndpoint.MixedLow401ZeroJet.zeroLine
        p.A p.e p.f p.g v := by
  have hB : (Polynomial.C p.B : ℝ[X])-Polynomial.C p.A = Polynomial.C p.e := by
    rw [← map_sub]
    congr 1
    unfold B
    ring
  have hb : (Polynomial.C p.b : ℝ[X])-Polynomial.C p.B = Polynomial.C p.f := by
    rw [← map_sub]
    congr 1
    unfold b
    ring
  have hc : (Polynomial.C p.c : ℝ[X])-Polynomial.C p.b = Polynomial.C p.g := by
    rw [← map_sub]
    congr 1
    unfold c
    ring
  have ht :
      (Polynomial.C (p.B*v/(1+v)) : ℝ[X])-Polynomial.C p.B =
        Polynomial.C (-(p.A+p.e)/(1+v)) := by
    rw [← map_sub]
    congr 1
    unfold B
    field_simp [hv]
    ring
  have hs : mixedSliceS p =
      Polynomial.C (PureSource.L p.e p.f p.g)+
        Polynomial.C (p.A*PureSource.L p.e p.f p.g+
          SPR.N6.Tail.CoreEndpoint.MixedHigh401Source.N p.e p.f p.g)*Polynomial.X := by
    unfold mixedSliceS
    rw [p.dq_eq]
    rfl
  have hd : Polynomial.C p.A*mixedSliceS p-mixedSliceAN p =
      Polynomial.C (PureSource.J p.f p.g)+
        Polynomial.C (p.A*PureSource.J p.f p.g)*Polynomial.X := by
    simp only [mixedSliceS,mixedSliceAN,L,J,B,b,c,dq,
      PureSource.J,map_add,map_sub,map_mul,map_ofNat]
    ring
  have hh : mixedSliceCN p-Polynomial.C p.c*mixedSliceS p =
      Polynomial.C (p.f*(p.e+p.f))+
        Polynomial.C (p.A*(p.f*(p.e+p.f))+
          p.f*SPR.N6.Tail.CoreEndpoint.MixedHigh401Source.N p.e p.f p.g)*Polynomial.X := by
    simp only [mixedSliceCN,mixedSliceS,L,J,B,b,c,dq,
      SPR.N6.Tail.CoreEndpoint.MixedHigh401Source.N,
      PureSource.M,map_add,map_sub,map_mul,map_ofNat]
    ring
  unfold mixedLowZero
  rw [SPR.N6.Tail.CoreEndpoint.MixedLow401ZeroJet.zero_low_eq_quadratic,
    hB,hb,hc,ht,hd,hh,hs]
  rfl

/-- Constant coefficient of the cleared low zero factor. -/
theorem mixed_low_zero_coeff_zero (p : OuterParameters) (v : ℝ)
    (hf : p.f ≠ 0) (hv : 1 + v ≠ 0) :
    (Polynomial.C ((1+v)^2) * mixedLowZero p v).coeff 0 =
      2*(p.e+p.f+p.g)*MixedLow401Source.Z p.A p.e p.f p.g v := by
  rw [mixed_low_zero_eq_line p v hv,
    SPR.N6.Tail.CoreEndpoint.MixedLow401ZeroJet.zeroLine_coeff_zero
      p.A p.e p.f p.g v hf hv,
    SPR.N6.Tail.CoreEndpoint.MixedLow401ZeroJet.normalizedBase_eq_source_Z
      p.A p.e p.f p.g v]

/-- First coefficient of the cleared low zero factor. -/
theorem mixed_low_zero_coeff_one (p : OuterParameters) (v : ℝ)
    (hf : p.f ≠ 0) (hv : 1 + v ≠ 0) :
    (Polynomial.C ((1+v)^2) * mixedLowZero p v).coeff 1 =
      2*(p.e+p.f+p.g)*
        (2*p.A*MixedLow401Source.Z p.A p.e p.f p.g v+
          MixedHigh401Source.N p.e p.f p.g*
            MixedLow401Source.ZR p.A p.e p.f p.g v) := by
  rw [mixed_low_zero_eq_line p v hv,
    SPR.N6.Tail.CoreEndpoint.MixedLow401ZeroJet.zeroLine_coeff_one
      p.A p.e p.f p.g v hf hv,
    SPR.N6.Tail.CoreEndpoint.MixedLow401ZeroJet.normalizedBase_eq_source_Z
      p.A p.e p.f p.g v,
    SPR.N6.Tail.CoreEndpoint.MixedLow401ZeroJet.normalizedPolar_eq_source_ZR
      p.A p.e p.f p.g v]

/-- Exact compactified source coefficient at the original upper ratio. -/
theorem low_mixed401_source (p : OuterParameters) (v : ℝ)
    (hf : p.f ≠ 0) (hv : 1 + v ≠ 0) :
    (1+v)^2 *
        (p.firstThirdCore true ((p.e+p.f+p.g)/p.f)
          (p.B*v/(1+v))).coeff 1 =
      2*(p.e+p.f+p.g)*MixedLow401.source p.A p.e p.f p.g v := by
  have hfreq :
      Polynomial.C ((1+v)^2) *
          (Polynomial.C (p.B*v/(1+v))-Polynomial.C p.c)^2 =
        Polynomial.C ((p.A+PureSource.node0 p.e p.f p.g v)^2) := by
    have hscalar :
        (1+v) * (p.B*v/(1+v)-p.c) =
          -(p.A+PureSource.node0 p.e p.f p.g v) := by
      field_simp [hv]
      simp only [OuterParameters.B, OuterParameters.b, OuterParameters.c,
        PureSource.node0]
      ring
    rw [← map_sub,← map_pow,← map_mul]
    congr 1
    calc
      (1+v)^2 * (p.B*v/(1+v)-p.c)^2 =
          ((1+v)*(p.B*v/(1+v)-p.c))^2 := by ring
      _ = (p.A+PureSource.node0 p.e p.f p.g v)^2 := by
        rw [hscalar]
        ring
  have hscaled :
      Polynomial.C ((1+v)^2) *
          (2*OuterHomogeneous.den1 (mixedSliceS p) (mixedSliceAN p)
            (Polynomial.C p.b) (Polynomial.C p.c)*
            OuterHomogeneous.den2 (mixedSliceS p) (Polynomial.C p.A)
              (Polynomial.C p.B) (mixedSliceCN p)*
            OuterHomogeneous.weight (mixedSliceS p) (mixedSliceAN p)
              (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
              (Polynomial.C p.c) (mixedSliceCN p)
              (Polynomial.C ((p.e+p.f+p.g)/p.f))*
            (Polynomial.C (p.B*v/(1+v))-Polynomial.C p.c)^2+
            OuterHomogeneous.mixture (mixedSliceS p) (mixedSliceAN p)
              (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
              (Polynomial.C p.c) (mixedSliceCN p)*mixedLowZero p v) =
        2*OuterHomogeneous.den1 (mixedSliceS p) (mixedSliceAN p)
            (Polynomial.C p.b) (Polynomial.C p.c)*
            OuterHomogeneous.den2 (mixedSliceS p) (Polynomial.C p.A)
              (Polynomial.C p.B) (mixedSliceCN p)*
            OuterHomogeneous.weight (mixedSliceS p) (mixedSliceAN p)
              (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
              (Polynomial.C p.c) (mixedSliceCN p)
              (Polynomial.C ((p.e+p.f+p.g)/p.f))*
            Polynomial.C ((p.A+PureSource.node0 p.e p.f p.g v)^2)+
          OuterHomogeneous.mixture (mixedSliceS p) (mixedSliceAN p)
            (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
            (Polynomial.C p.c) (mixedSliceCN p)*
            SPR.N6.Tail.CoreEndpoint.MixedLow401ZeroJet.zeroLine
              p.A p.e p.f p.g v := by
    calc
      _ = 2*OuterHomogeneous.den1 (mixedSliceS p) (mixedSliceAN p)
            (Polynomial.C p.b) (Polynomial.C p.c)*
            OuterHomogeneous.den2 (mixedSliceS p) (Polynomial.C p.A)
              (Polynomial.C p.B) (mixedSliceCN p)*
            OuterHomogeneous.weight (mixedSliceS p) (mixedSliceAN p)
              (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
              (Polynomial.C p.c) (mixedSliceCN p)
              (Polynomial.C ((p.e+p.f+p.g)/p.f))*
            (Polynomial.C ((1+v)^2)*
              (Polynomial.C (p.B*v/(1+v))-Polynomial.C p.c)^2)+
          OuterHomogeneous.mixture (mixedSliceS p) (mixedSliceAN p)
            (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
            (Polynomial.C p.c) (mixedSliceCN p)*
            (Polynomial.C ((1+v)^2)*mixedLowZero p v) := by ring
      _ = _ := by rw [hfreq,mixed_low_zero_eq_line p v hv]

  unfold firstThirdCore OuterHomogeneous.core
  change (1+v)^2 *
      (2*OuterHomogeneous.den1 (mixedSliceS p) (mixedSliceAN p)
        (Polynomial.C p.b) (Polynomial.C p.c)*
      OuterHomogeneous.den2 (mixedSliceS p) (Polynomial.C p.A)
        (Polynomial.C p.B) (mixedSliceCN p)*
      OuterHomogeneous.weight (mixedSliceS p) (mixedSliceAN p)
        (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
        (Polynomial.C p.c) (mixedSliceCN p)
        (Polynomial.C ((p.e+p.f+p.g)/p.f))*
      (Polynomial.C (p.B*v/(1+v))-Polynomial.C p.c)^2+
      OuterHomogeneous.mixture (mixedSliceS p) (mixedSliceAN p)
        (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
        (Polynomial.C p.c) (mixedSliceCN p)*mixedLowZero p v).coeff 1 = _
  rw [← coeff_C_mul, hscaled]
  have hn0 : (2 : ℝ[X]).coeff 0 = 2 := by norm_num
  have hn1 : (2 : ℝ[X]).coeff 1 = 0 := by norm_num
  simp only [coeff_add,mul_coeff_one,mul_coeff_zero,
    mixed_den1_coeff_zero,mixed_den1_coeff_one,
    mixed_den2_coeff_zero,mixed_den2_coeff_one,
    mixed_weight_coeff_zero p hf,mixed_weight_coeff_one p hf,
    mixed_mixture_coeff_zero,mixed_mixture_coeff_one,
    SPR.N6.Tail.CoreEndpoint.MixedLow401ZeroJet.zeroLine_coeff_zero
      p.A p.e p.f p.g v hf hv,
    SPR.N6.Tail.CoreEndpoint.MixedLow401ZeroJet.zeroLine_coeff_one
      p.A p.e p.f p.g v hf hv,
    SPR.N6.Tail.CoreEndpoint.MixedLow401ZeroJet.normalizedBase_eq_source_Z
      p.A p.e p.f p.g v,
    SPR.N6.Tail.CoreEndpoint.MixedLow401ZeroJet.normalizedPolar_eq_source_ZR
      p.A p.e p.f p.g v,
    coeff_C, hn0, hn1, Nat.one_ne_zero, if_false, if_true]
  have hM : PureSource.M p.e p.f p.g = p.e+p.f+p.g := by
    rfl
  have hN : p.M = MixedHigh401Source.N p.e p.f p.g := by
    simp only [OuterParameters.M, MixedHigh401Source.N, PureSource.M]
  rw [hM,hN]
  rw [MixedLow401Source.source_identity]
  simp only [MixedLow401Source.pureSource,
    MixedLow401Source.directionalSource, MixedLow401Source.base,
    mixedH, mixedHr]
  ring

/-- The original `(4,0,1)` low coefficient is nonnegative on the closed low tail. -/
theorem low_mixed401_coeff_nonnegative (p : OuterParameters)
    (hA : 0 ≤ p.A) (he : 0 ≤ p.e) (hf : 0 < p.f) (hg : 0 ≤ p.g)
    (hB : 0 < p.B) (t : ℝ) (ht0 : 0 ≤ t) (htB : t ≤ p.B) :
    0 ≤ MvPolynomial.coeff (OuterIndices.exponent 4 0 1)
      (p.corePolynomial true ((p.e+p.f+p.g)/p.f) t) := by
  refine (p.low_coeff_of_compactification
    ((p.e+p.f+p.g)/p.f) (OuterIndices.exponent 4 0 1) hB ?_) t ht0 htB
  intro v hv
  have hv1 : 1 + v ≠ 0 := by linarith
  have hs := p.low_mixed401_source v (ne_of_gt hf) hv1
  have hc := p.firstThirdCore_coeff true ((p.e+p.f+p.g)/p.f)
    (p.B*v/(1+v)) 1 (by norm_num)
  have hsrc : 0 ≤ MixedLow401.source p.A p.e p.f p.g v :=
    MixedLow401.nonnegative hA he hf.le hg hv
  have hscale : 0 < (1+v)^2 := sq_pos_of_pos (by linarith)
  have hc' :
      (p.firstThirdCore true ((p.e+p.f+p.g)/p.f)
        (p.B*v/(1+v))).coeff 1 =
      MvPolynomial.coeff (OuterIndices.exponent 4 0 1)
        (p.corePolynomial true ((p.e+p.f+p.g)/p.f)
          (p.B*v/(1+v))) := by
    simpa using hc
  rw [hc'] at hs
  nlinarith

end
end SPR.N6.OuterParameters
