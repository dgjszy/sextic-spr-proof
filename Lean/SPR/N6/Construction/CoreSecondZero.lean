import SPR.N6.Construction.CoreSecondSlice
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh410ZeroJet

/-!
# Original zero-factor connection on the x-y outer plane

The actual source is mapped to the two-direction quadratic line. In particular,
its scale is A² and its two directions use the same N=(e+f)(e+f+g).
-/
namespace SPR.N6.OuterParameters
noncomputable section
open Polynomial
open SPR.N6.Tail
open SPR.N6.Tail.CoreEndpoint
set_option Elab.async false

/-- The high zero factor before extracting its first y coefficient. -/
def secondZero (p : OuterParameters) (v : ℝ) : ℝ[X] :=
  OuterHomogeneous.zero false
    (Polynomial.C p.L+Polynomial.C p.H*X)
    (Polynomial.C (p.A*p.L-p.J)+Polynomial.C (p.A*p.B*p.dq)*X)
    (Polynomial.C p.A) (Polynomial.C p.B) (Polynomial.C p.b) (Polynomial.C p.c)
    (Polynomial.C ((p.c+p.f)*p.L-p.J)+Polynomial.C (p.b*p.c*p.dq)*X)
    (Polynomial.C ((p.e+p.f+p.g)/p.f)) (Polynomial.C (p.b+v))

/-- The entire original zero source equals the two-direction line. -/
theorem second_zero_eq_line (p : OuterParameters) (v : ℝ) :
    secondZero p v = MixedHigh410ZeroJet.zeroExtra p.e p.f p.g v
      (p.A^2) (p.M*(2*p.A+p.e)) (p.M*(p.f+p.g)) := by
  have hB : (Polynomial.C p.B : ℝ[X])-Polynomial.C p.A = Polynomial.C p.e := by
    rw [← map_sub]; congr 1; unfold B; ring
  have hb : (Polynomial.C p.b : ℝ[X])-Polynomial.C p.B = Polynomial.C p.f := by
    rw [← map_sub]; congr 1; unfold b; ring
  have hc : (Polynomial.C p.c : ℝ[X])-Polynomial.C p.b = Polynomial.C p.g := by
    rw [← map_sub]; congr 1; unfold c; ring
  have ht : (Polynomial.C (p.b+v) : ℝ[X])-Polynomial.C p.B =
      Polynomial.C (p.f+v) := by
    rw [← map_sub]; congr 1; unfold b; ring
  have hs : (Polynomial.C p.L+Polynomial.C p.H*X : ℝ[X]) =
      Polynomial.C (PureSource.L p.e p.f p.g)+
        Polynomial.C (p.A^2*PureSource.L p.e p.f p.g+p.M*(2*p.A+p.e))*X := by
    rw [p.H_eq]
    simp only [L,PureSource.L]
    congr 2 <;> ring
  have hd : Polynomial.C p.A*(Polynomial.C p.L+Polynomial.C p.H*X)-
      (Polynomial.C (p.A*p.L-p.J)+Polynomial.C (p.A*p.B*p.dq)*X) =
      (Polynomial.C (PureSource.J p.f p.g)+
        Polynomial.C (p.A^2*PureSource.J p.f p.g)*X : ℝ[X]) := by
    simp only [L,J,H,B,b,c,dq,PureSource.J,map_add,map_sub,map_mul,map_pow,map_ofNat]
    ring
  have hh : (Polynomial.C ((p.c+p.f)*p.L-p.J)+Polynomial.C (p.b*p.c*p.dq)*X)-
      Polynomial.C p.c*(Polynomial.C p.L+Polynomial.C p.H*X) =
      (Polynomial.C (p.f*(p.e+p.f))+
        Polynomial.C (p.A^2*(p.f*(p.e+p.f))+
          p.f*(p.M*(2*p.A+p.e)+p.M*(p.f+p.g)))*X : ℝ[X]) := by
    simp only [L,J,H,M,B,b,c,dq,map_add,map_sub,map_mul,map_pow,map_ofNat]
    ring
  unfold secondZero
  rw [MixedHigh401ZeroJet.zero_high_eq_quadratic,hB,hb,hc,ht,hd,hh,hs]
  rfl

/-- Constant term of the original second-plane zero factor. -/
theorem second_zero_coeff_zero (p : OuterParameters) (v : ℝ) (hf : p.f ≠ 0) :
    (secondZero p v).coeff 0 = 2*(p.e+p.f+p.g)*PureSource.Z p.e p.f p.g v := by
  rw [second_zero_eq_line]
  exact MixedHigh410ZeroJet.zeroExtra_coeff_zero _ _ _ _ _ _ _ hf

/-- First term of the original second-plane zero factor, with both directions retained. -/
theorem second_zero_coeff_one (p : OuterParameters) (v : ℝ) (hf : p.f ≠ 0) :
    (secondZero p v).coeff 1 = 2*(p.e+p.f+p.g)*
      (2*p.A^2*PureSource.Z p.e p.f p.g v+
        p.M*(2*p.A+p.e)*MixedHigh401Source.ZR p.e p.f p.g v+
        p.M*(p.f+p.g)*MixedHigh410ZeroJet.hDirection p.e p.f p.g v) := by
  rw [second_zero_eq_line]
  exact MixedHigh410ZeroJet.zeroExtra_coeff_one _ _ _ _ _ _ _ hf

end
end SPR.N6.OuterParameters
