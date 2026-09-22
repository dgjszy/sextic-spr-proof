import SPR.N6.Construction.MixedHigh410Coefficient
import SPR.N6.Construction.CoreSecondZero

/-!
# Original high mixed coefficient x⁴y

The second polar direction is identified before the complete coefficient is
assembled. Nonnegativity comes from the full static certificate, without
requiring independent positivity of the q-direction contribution.
-/
namespace SPR.N6.OuterParameters
noncomputable section
open Polynomial
open SPR.N6.Tail
open SPR.N6.Tail.CoreEndpoint
open SPR.N6.Tail.CoreEndpoint.PureSource
set_option Elab.async false
set_option maxRecDepth 32768

/-- The normalized symmetric H difference equals the displayed directional source. -/
theorem second_h_direction (e f g v : ℝ) :
    MixedHigh410ZeroJet.hDirection e f g v = MixedHigh410Source.Zh e f g v := by
  have h0 : SmallGap.EndpointSource.z00 e f g (PureSource.L e f g) (f+g) (e+f+1)-
      SmallGap.EndpointSource.z00 e f g (PureSource.L e f g) (f+g) (e+f-1) =
      2*MixedHigh410Source.zH0 e f g := by
    unfold SmallGap.EndpointSource.z00 MixedHigh410Source.zH0 PureSource.L
    ring
  have h1 : SmallGap.EndpointSource.z01 e f g (PureSource.L e f g) (f+g) (e+f+1)-
      SmallGap.EndpointSource.z01 e f g (PureSource.L e f g) (f+g) (e+f-1) =
      2*MixedHigh410Source.zH1 e f g := by
    unfold SmallGap.EndpointSource.z01 MixedHigh410Source.zH1 PureSource.L
    ring
  have h2 : SmallGap.EndpointSource.z02 e f g (PureSource.L e f g) (f+g) (e+f+1)-
      SmallGap.EndpointSource.z02 e f g (PureSource.L e f g) (f+g) (e+f-1) =
      2*MixedHigh410Source.zH2 e f g := by
    unfold SmallGap.EndpointSource.z02 MixedHigh410Source.zH2 PureSource.L
    ring
  unfold MixedHigh410ZeroJet.hDirection MixedHigh401ZeroJet.normalized
    MixedHigh410Source.Zh
  linear_combination h0/2+(f+v)*h1/2+(f+v)^2*h2/2

/-- Exact first y coefficient of the original homogeneous core. -/
theorem high_mixed410_source (p : OuterParameters) (v : ℝ) (hf : p.f ≠ 0) :
    (p.firstSecondCore false ((p.e+p.f+p.g)/p.f) (p.b+v)).coeff 1 =
      2*(p.e+p.f+p.g)*MixedHigh410.source p.A p.e p.f p.g v := by
  have hfreq : (Polynomial.C (p.b+v)-Polynomial.C p.A : ℝ[X])^2 =
      Polynomial.C ((p.e+p.f+v)^2) := by
    rw [← map_sub,← map_pow]
    congr 1
    unfold b B
    ring
  unfold firstSecondCore OuterHomogeneous.core
  change (2*OuterHomogeneous.den1 (secondSliceS p) (secondSliceAN p)
      (Polynomial.C p.b) (Polynomial.C p.c)*
    OuterHomogeneous.den2 (secondSliceS p) (Polynomial.C p.A)
      (Polynomial.C p.B) (secondSliceCN p)*
    OuterHomogeneous.weight (secondSliceS p) (secondSliceAN p)
      (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
      (Polynomial.C p.c) (secondSliceCN p) (Polynomial.C ((p.e+p.f+p.g)/p.f))*
      (Polynomial.C (p.b+v)-Polynomial.C p.A)^2+
    OuterHomogeneous.mixture (secondSliceS p) (secondSliceAN p)
      (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b)
      (Polynomial.C p.c) (secondSliceCN p)*secondZero p v).coeff 1 = _
  rw [hfreq]
  have hn0 : (2 : ℝ[X]).coeff 0 = 2 := by norm_num
  have hn1 : (2 : ℝ[X]).coeff 1 = 0 := by norm_num
  simp only [coeff_add,mul_coeff_one,mul_coeff_zero,
    second_den1_coeff_zero,second_den1_coeff_one,
    second_den2_coeff_zero,second_den2_coeff_one,
    second_weight_coeff_zero p hf,second_weight_coeff_one p hf,
    second_mixture_coeff_zero,second_mixture_coeff_one,
    second_zero_coeff_zero p v hf,second_zero_coeff_one p v hf,
    coeff_C,hn0,hn1,Nat.one_ne_zero,if_false,if_true]
  rw [second_h_direction,MixedHigh410Source.source_identity]
  simp only [MixedHigh401Source.P0,MixedHigh401Source.P1,MixedHigh401Source.P2,
    MixedHigh401Source.R0,MixedHigh401Source.R1,MixedHigh401Source.R2,
    MixedHigh401Source.Rbase,MixedHigh410Source.Rh,MixedHigh410Source.Rh0,
    MixedHigh410Source.Rh1,MixedHigh410Source.Rh2,mixedH,mixedHr,secondHh,
    OuterParameters.M,MixedHigh401Source.N,PureSource.M]
  ring

/-- The actual x⁴y coefficient is nonnegative over the complete high-frequency half-axis. -/
theorem high_mixed410_coeff_nonnegative (p : OuterParameters)
    (hA : 0 ≤ p.A) (he : 0 ≤ p.e) (hf : 0 < p.f) (hg : 0 ≤ p.g)
    (t : ℝ) (ht : p.b ≤ t) :
    0 ≤ MvPolynomial.coeff (OuterIndices.exponent 4 1 0)
      (p.corePolynomial false ((p.e+p.f+p.g)/p.f) t) := by
  have hs := p.high_mixed410_source (t-p.b) (ne_of_gt hf)
  have hc := p.firstSecondCore_coeff false ((p.e+p.f+p.g)/p.f) t 1 (by norm_num)
  have ht' : p.b+(t-p.b) = t := by ring
  rw [ht'] at hs
  rw [← hc,hs]
  exact mul_nonneg (by positivity)
    (MixedHigh410.nonnegative hA he hf.le hg (sub_nonneg.mpr ht))

end
end SPR.N6.OuterParameters
