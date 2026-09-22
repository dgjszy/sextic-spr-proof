import SPR.N6.Construction.MixedHigh401Coefficient
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh401ZeroJet

/-!
# The original high mixed coefficient x⁴z

This module connects the static mixed sign certificate to the coefficient of
`OuterParameters.corePolynomial`, including the exact factor two and the upper
ratio endpoint. No sign of an unrelated normalized polynomial is substituted
for an original coefficient obligation.
-/
namespace SPR.N6.OuterParameters
noncomputable section
open Polynomial
open SPR.N6.Tail
open SPR.N6.Tail.CoreEndpoint
open SPR.N6.Tail.CoreEndpoint.PureSource
set_option Elab.async false
set_option maxRecDepth 32768

/-- The complete high zero factor on the first-third slice. -/
def mixedZero (p : OuterParameters) (v : ℝ) : ℝ[X] :=
  OuterHomogeneous.zero false (mixedSliceS p) (mixedSliceAN p)
    (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b) (Polynomial.C p.c) (mixedSliceCN p)
    (Polynomial.C ((p.e+p.f+p.g)/p.f)) (Polynomial.C (p.b+v))

/-- Exact identification with the bounded quadratic first-variation source. -/
theorem mixed_zero_eq_line (p : OuterParameters) (v : ℝ) :
    mixedZero p v = MixedHigh401ZeroJet.zeroLine p.A p.e p.f p.g v := by
  have hB : (Polynomial.C p.B : ℝ[X])-Polynomial.C p.A = Polynomial.C p.e := by
    rw [← map_sub]; congr 1; unfold B; ring
  have hb : (Polynomial.C p.b : ℝ[X])-Polynomial.C p.B = Polynomial.C p.f := by
    rw [← map_sub]; congr 1; unfold b; ring
  have hc : (Polynomial.C p.c : ℝ[X])-Polynomial.C p.b = Polynomial.C p.g := by
    rw [← map_sub]; congr 1; unfold c; ring
  have ht : (Polynomial.C (p.b+v) : ℝ[X])-Polynomial.C p.B = Polynomial.C (p.f+v) := by
    rw [← map_sub]; congr 1; unfold b; ring
  have hs : mixedSliceS p =
      Polynomial.C (PureSource.L p.e p.f p.g)+
        Polynomial.C (p.A*PureSource.L p.e p.f p.g+MixedHigh401Source.N p.e p.f p.g)*X := by
    unfold mixedSliceS
    rw [p.dq_eq]
    rfl
  have hd : Polynomial.C p.A*mixedSliceS p-mixedSliceAN p =
      Polynomial.C (PureSource.J p.f p.g)+Polynomial.C (p.A*PureSource.J p.f p.g)*X := by
    simp only [mixedSliceS,mixedSliceAN,L,J,B,b,c,dq,
      PureSource.J,map_add,map_sub,map_mul,map_ofNat]
    ring
  have hh : mixedSliceCN p-Polynomial.C p.c*mixedSliceS p =
      Polynomial.C (p.f*(p.e+p.f))+
        Polynomial.C (p.A*(p.f*(p.e+p.f))+p.f*MixedHigh401Source.N p.e p.f p.g)*X := by
    simp only [mixedSliceCN,mixedSliceS,L,J,B,b,c,dq,
      MixedHigh401Source.N,PureSource.M,map_add,map_sub,map_mul,map_ofNat]
    ring
  unfold mixedZero
  rw [MixedHigh401ZeroJet.zero_high_eq_quadratic,hB,hb,hc,ht,hd,hh,hs]
  rfl

/-- Constant zero coefficient at the actual source parameters. -/
theorem mixed_zero_coeff_zero (p : OuterParameters) (v : ℝ) (hf : p.f ≠ 0) :
    (mixedZero p v).coeff 0 = 2*(p.e+p.f+p.g)*Z p.e p.f p.g v := by
  rw [mixed_zero_eq_line]
  exact MixedHigh401ZeroJet.zeroLine_coeff_zero p.A p.e p.f p.g v hf

/-- First zero coefficient at the actual source parameters. -/
theorem mixed_zero_coeff_one (p : OuterParameters) (v : ℝ) (hf : p.f ≠ 0) :
    (mixedZero p v).coeff 1 =
      2*(p.e+p.f+p.g)*(2*p.A*Z p.e p.f p.g v+
        MixedHigh401Source.N p.e p.f p.g*MixedHigh401Source.ZR p.e p.f p.g v) := by
  rw [mixed_zero_eq_line]
  exact MixedHigh401ZeroJet.zeroLine_coeff_one p.A p.e p.f p.g v hf

/-- Exact source coefficient, with the original endpoint and no extraneous f². -/
theorem high_mixed401_source (p : OuterParameters) (v : ℝ) (hf : p.f ≠ 0) :
    (p.firstThirdCore false ((p.e+p.f+p.g)/p.f) (p.b+v)).coeff 1 =
      2*(p.e+p.f+p.g)*MixedHigh401.source p.A p.e p.f p.g v := by
  have hfreq : (Polynomial.C (p.b+v)-Polynomial.C p.A : ℝ[X])^2 =
      Polynomial.C ((p.e+p.f+v)^2) := by
    rw [← map_sub,← map_pow]
    congr 1
    unfold b B
    ring
  unfold firstThirdCore OuterHomogeneous.core
  change (2*OuterHomogeneous.den1 (mixedSliceS p) (mixedSliceAN p)
      (Polynomial.C p.b) (Polynomial.C p.c)*
    OuterHomogeneous.den2 (mixedSliceS p) (Polynomial.C p.A)
      (Polynomial.C p.B) (mixedSliceCN p)*
    OuterHomogeneous.weight (mixedSliceS p) (mixedSliceAN p)
      (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
      (Polynomial.C p.c) (mixedSliceCN p) (Polynomial.C ((p.e+p.f+p.g)/p.f))*
      (Polynomial.C (p.b+v)-Polynomial.C p.A)^2+
    OuterHomogeneous.mixture (mixedSliceS p) (mixedSliceAN p)
      (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
      (Polynomial.C p.c) (mixedSliceCN p)*mixedZero p v).coeff 1 = _
  rw [hfreq]
  have hn0 : (2 : ℝ[X]).coeff 0 = 2 := by norm_num
  have hn1 : (2 : ℝ[X]).coeff 1 = 0 := by norm_num
  simp only [coeff_add,mul_coeff_one,mul_coeff_zero,
    mixed_den1_coeff_zero,mixed_den1_coeff_one,
    mixed_den2_coeff_zero,mixed_den2_coeff_one,
    mixed_weight_coeff_zero p hf,mixed_weight_coeff_one p hf,
    mixed_mixture_coeff_zero,mixed_mixture_coeff_one,
    mixed_zero_coeff_zero p v hf,mixed_zero_coeff_one p v hf,
    coeff_C, hn0, hn1, Nat.one_ne_zero, if_false, if_true]
  rw [MixedHigh401Source.source_identity]
  simp only [MixedHigh401Source.pureSource,MixedHigh401Source.directionalSource,
    MixedHigh401Source.P0,MixedHigh401Source.P1,MixedHigh401Source.P2,
    MixedHigh401Source.R0,MixedHigh401Source.R1,MixedHigh401Source.R2,
    MixedHigh401Source.Rbase,mixedH,mixedHr,OuterParameters.M,
    MixedHigh401Source.N,PureSource.M]
  ring

/-- The actual x⁴z coefficient is nonnegative for every high frequency. -/
theorem high_mixed401_coeff_nonnegative (p : OuterParameters)
    (hA : 0 ≤ p.A) (he : 0 ≤ p.e) (hf : 0 < p.f) (hg : 0 ≤ p.g)
    (t : ℝ) (ht : p.b ≤ t) :
    0 ≤ MvPolynomial.coeff (OuterIndices.exponent 4 0 1)
      (p.corePolynomial false ((p.e+p.f+p.g)/p.f) t) := by
  have hs := p.high_mixed401_source (t-p.b) (ne_of_gt hf)
  have hc := p.firstThirdCore_coeff false ((p.e+p.f+p.g)/p.f) t 1 (by norm_num)
  have ht' : p.b+(t-p.b) = t := by ring
  rw [ht'] at hs
  rw [← hc,hs]
  exact mul_nonneg (by positivity)
    (MixedHigh401.nonnegative hA he hf.le hg (sub_nonneg.mpr ht))

end
end SPR.N6.OuterParameters
