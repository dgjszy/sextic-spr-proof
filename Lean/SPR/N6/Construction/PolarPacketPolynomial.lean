import SPR.N6.Construction.PolarCore
import SPR.N6.Algebra.Tail.SmallGap.PolarPacket

/-!
# Polynomial form of a complete polar packet

`QuinticSource.polynomial` is the finite homogeneous outer polynomial whose
twenty-one coefficients are the packet fields.  The evaluation theorem is
independent of all sign assumptions and is used by the physical-coordinate
source bridge below.
-/
namespace SPR.N6
noncomputable section
open MvPolynomial
open Tail
open Tail.SmallGap

namespace Tail.QuinticSource

/-- The complete degree-five outer polynomial represented by a packet. -/
def polynomial (C : Coefficients) : MvPolynomial (Fin 3) ℝ :=
  monomial (OuterIndices.exponent 0 0 5) C.c005+
  monomial (OuterIndices.exponent 0 1 4) C.c014+
  monomial (OuterIndices.exponent 0 2 3) C.c023+
  monomial (OuterIndices.exponent 0 3 2) C.c032+
  monomial (OuterIndices.exponent 0 4 1) C.c041+
  monomial (OuterIndices.exponent 0 5 0) C.c050+
  monomial (OuterIndices.exponent 1 0 4) C.c104+
  monomial (OuterIndices.exponent 1 1 3) C.c113+
  monomial (OuterIndices.exponent 1 2 2) C.c122+
  monomial (OuterIndices.exponent 1 3 1) C.c131+
  monomial (OuterIndices.exponent 1 4 0) C.c140+
  monomial (OuterIndices.exponent 2 0 3) C.c203+
  monomial (OuterIndices.exponent 2 1 2) C.c212+
  monomial (OuterIndices.exponent 2 2 1) C.c221+
  monomial (OuterIndices.exponent 2 3 0) C.c230+
  monomial (OuterIndices.exponent 3 0 2) C.c302+
  monomial (OuterIndices.exponent 3 1 1) C.c311+
  monomial (OuterIndices.exponent 3 2 0) C.c320+
  monomial (OuterIndices.exponent 4 0 1) C.c401+
  monomial (OuterIndices.exponent 4 1 0) C.c410+
  monomial (OuterIndices.exponent 5 0 0) C.c500

/-- Evaluation of the packet polynomial is the displayed complete quintic. -/
theorem eval_polynomial (C : Coefficients) (x y z : ℝ) :
    MvPolynomial.eval ![x,y,z] (polynomial C) = eval C x y z := by
  unfold polynomial eval
  simp only [map_add,eval_monomial]
  simp [OuterIndices.exponent,Finsupp.prod_fintype,Fin.prod_univ_succ]
  ring

/-- The same evaluation identity for an arbitrary function on `Fin 3`. -/
theorem eval_polynomial_fun (C : Coefficients) (x : Fin 3 → ℝ) :
    MvPolynomial.eval x (polynomial C) = eval C (x 0) (x 1) (x 2) := by
  have hx : x = ![x 0,x 1,x 2] := by
    funext i
    fin_cases i <;> rfl
  rw [hx]
  simpa only [Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_two]
    using eval_polynomial C (x 0) (x 1) (x 2)

/-- The packet polynomial is homogeneous of the complete outer degree. -/
theorem polynomial_homogeneous (C : Coefficients) :
    (polynomial C).IsHomogeneous 5 := by
  unfold polynomial
  repeat' apply IsHomogeneous.add
  all_goals
    apply isHomogeneous_monomial
    rw [OuterIndices.exponent_degree]

/-- The first six packet fields are the corresponding polynomial coefficients. -/
theorem coeff_polynomial_005 (C : Coefficients) :
    coeff (OuterIndices.exponent 0 0 5) (polynomial C) = C.c005 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_014 (C : Coefficients) :
    coeff (OuterIndices.exponent 0 1 4) (polynomial C) = C.c014 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_023 (C : Coefficients) :
    coeff (OuterIndices.exponent 0 2 3) (polynomial C) = C.c023 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_032 (C : Coefficients) :
    coeff (OuterIndices.exponent 0 3 2) (polynomial C) = C.c032 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_041 (C : Coefficients) :
    coeff (OuterIndices.exponent 0 4 1) (polynomial C) = C.c041 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_050 (C : Coefficients) :
    coeff (OuterIndices.exponent 0 5 0) (polynomial C) = C.c050 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_104 (C : Coefficients) :
    coeff (OuterIndices.exponent 1 0 4) (polynomial C) = C.c104 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_113 (C : Coefficients) :
    coeff (OuterIndices.exponent 1 1 3) (polynomial C) = C.c113 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_122 (C : Coefficients) :
    coeff (OuterIndices.exponent 1 2 2) (polynomial C) = C.c122 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_131 (C : Coefficients) :
    coeff (OuterIndices.exponent 1 3 1) (polynomial C) = C.c131 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_140 (C : Coefficients) :
    coeff (OuterIndices.exponent 1 4 0) (polynomial C) = C.c140 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_203 (C : Coefficients) :
    coeff (OuterIndices.exponent 2 0 3) (polynomial C) = C.c203 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_212 (C : Coefficients) :
    coeff (OuterIndices.exponent 2 1 2) (polynomial C) = C.c212 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_221 (C : Coefficients) :
    coeff (OuterIndices.exponent 2 2 1) (polynomial C) = C.c221 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_230 (C : Coefficients) :
    coeff (OuterIndices.exponent 2 3 0) (polynomial C) = C.c230 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_302 (C : Coefficients) :
    coeff (OuterIndices.exponent 3 0 2) (polynomial C) = C.c302 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_311 (C : Coefficients) :
    coeff (OuterIndices.exponent 3 1 1) (polynomial C) = C.c311 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_320 (C : Coefficients) :
    coeff (OuterIndices.exponent 3 2 0) (polynomial C) = C.c320 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_401 (C : Coefficients) :
    coeff (OuterIndices.exponent 4 0 1) (polynomial C) = C.c401 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_410 (C : Coefficients) :
    coeff (OuterIndices.exponent 4 1 0) (polynomial C) = C.c410 := by
  classical
  simp [polynomial,OuterIndices.exponent]

theorem coeff_polynomial_500 (C : Coefficients) :
    coeff (OuterIndices.exponent 5 0 0) (polynomial C) = C.c500 := by
  classical
  simp [polynomial,OuterIndices.exponent]

end Tail.QuinticSource

namespace OuterParameters

/-- The three polar coordinates associated with an arbitrary outer evaluation. -/
def packetU (p : OuterParameters) (x : Fin 3 → ℝ) : ℝ :=
  x 0+p.A*x 2+p.A^2*x 1

def packetQ (p : OuterParameters) (x : Fin 3 → ℝ) : ℝ :=
  p.M*(x 2+(2*p.A+p.e)*x 1)

def packetH (p : OuterParameters) (x : Fin 3 → ℝ) : ℝ :=
  p.M*(p.f+p.g)*x 1

/-- The polar sum agrees with the first coordinate of `corePolynomial_eval`. -/
theorem packet_sum (p : OuterParameters) (x : Fin 3 → ℝ) :
    PolarSource.S p.e p.f p.g (p.packetU x) (p.packetQ x) =
      p.L*x 0+p.H*x 1+p.dq*x 2 := by
  simp only [packetU,packetQ,PolarSource.S,OuterParameters.L,OuterParameters.M,
    p.H_eq,p.dq_eq]
  ring

/-- The polar first numerator agrees with the second coordinate of the core. -/
theorem packet_first (p : OuterParameters) (x : Fin 3 → ℝ) :
    p.A*PolarSource.S p.e p.f p.g (p.packetU x) (p.packetQ x) -
        p.f*PolarSource.D p.f p.g (p.packetU x) =
      (p.A*p.L-p.J)*x 0+p.A*p.B*p.dq*x 1+p.A*p.B*p.L*x 2 := by
  rw [p.packet_sum]
  simp only [packetU,PolarSource.D,OuterParameters.L,OuterParameters.J,
    OuterParameters.M,OuterParameters.B,p.dq_eq,p.H_eq]
  ring

/-- The polar last numerator agrees with the third coordinate of the core. -/
theorem packet_last (p : OuterParameters) (x : Fin 3 → ℝ) :
    p.c*PolarSource.S p.e p.f p.g (p.packetU x) (p.packetQ x) +
        p.f*PolarSource.H p.e p.f (p.packetU x) (p.packetQ x)
          (p.packetH x) =
      ((p.c+p.f)*p.L-p.J)*x 0+p.b*p.c*p.dq*x 1+p.b*p.c*p.L*x 2 := by
  rw [p.packet_sum]
  simp only [packetU,packetQ,packetH,PolarSource.H,OuterParameters.L,
    OuterParameters.J,OuterParameters.M,OuterParameters.B,OuterParameters.b,
    OuterParameters.c,p.dq_eq,p.H_eq]
  ring

/-- High source identity for the actual outer-coordinate polynomial. -/
theorem high_corePolynomial_packet (p : OuterParameters) (hf : p.f ≠ 0) (v : ℝ) :
    p.corePolynomial false ((p.e+p.f+p.g)/p.f) (p.b+v) =
      MvPolynomial.C (2*(p.e+p.f+p.g)) *
        Tail.QuinticSource.polynomial
          (Tail.SmallGap.PolarPacket.highOuter p.A p.e p.f p.g v) := by
  apply MvPolynomial.IsHomogeneous.funext
  · exact p.corePolynomial_homogeneous false _ _
  · have hs : MvPolynomial.IsHomogeneous
        (MvPolynomial.C (2*(p.e+p.f+p.g)) : MvPolynomial (Fin 3) ℝ) 0 :=
      MvPolynomial.isHomogeneous_C (Fin 3) _
    have hp := Tail.QuinticSource.polynomial_homogeneous
      (Tail.SmallGap.PolarPacket.highOuter p.A p.e p.f p.g v)
    simpa using hs.mul hp
  · intro x
    rw [p.corePolynomial_eval]
    simp only [map_mul,eval_C]
    rw [Tail.QuinticSource.eval_polynomial_fun]
    have hcore := Tail.SmallGap.PolarSource.core_high_eq
      p.A p.e p.f p.g (p.packetU x) (p.packetQ x) (p.packetH x) v hf
    have hB0 : Tail.SmallGap.PolarSource.B p.A p.e = p.B := rfl
    have hb0 : Tail.SmallGap.PolarSource.b p.A p.e p.f = p.b := rfl
    have hc0 : Tail.SmallGap.PolarSource.c p.A p.e p.f p.g = p.c := rfl
    have hM0 : Tail.SmallGap.PolarSource.M p.e p.f p.g =
        p.e+p.f+p.g := rfl
    rw [hB0,hb0,hc0,hM0] at hcore
    rw [p.packet_first,p.packet_last,p.packet_sum] at hcore
    have hpkt := Tail.SmallGap.PolarPacket.high_outer_eval
      p.A p.e p.f p.g (x 0) (x 1) (x 2) v
    rw [← hpkt]
    simpa only [Tail.SmallGap.PolarSource.M,OuterParameters.M] using hcore

/-- Low source identity for the actual outer-coordinate polynomial. -/
theorem low_corePolynomial_packet (p : OuterParameters) (v : ℝ)
    (hf : p.f ≠ 0) (hv : 1 + v ≠ 0) :
    MvPolynomial.C ((1+v)^2) *
        p.corePolynomial true ((p.e+p.f+p.g)/p.f) (p.B*v/(1+v)) =
      MvPolynomial.C (2*(p.e+p.f+p.g)) *
        Tail.QuinticSource.polynomial
          (Tail.SmallGap.PolarPacket.lowOuter p.A p.e p.f p.g v) := by
  apply MvPolynomial.IsHomogeneous.funext
  · have hs : MvPolynomial.IsHomogeneous
        (MvPolynomial.C ((1+v)^2) : MvPolynomial (Fin 3) ℝ) 0 :=
      MvPolynomial.isHomogeneous_C (Fin 3) _
    simpa using hs.mul (p.corePolynomial_homogeneous true _ _)
  · have hs : MvPolynomial.IsHomogeneous
        (MvPolynomial.C (2*(p.e+p.f+p.g)) : MvPolynomial (Fin 3) ℝ) 0 :=
      MvPolynomial.isHomogeneous_C (Fin 3) _
    have hp := Tail.QuinticSource.polynomial_homogeneous
      (Tail.SmallGap.PolarPacket.lowOuter p.A p.e p.f p.g v)
    simpa using hs.mul hp
  · intro x
    simp only [map_mul,eval_C]
    rw [p.corePolynomial_eval]
    rw [Tail.QuinticSource.eval_polynomial_fun]
    have hcore := Tail.SmallGap.PolarSource.core_low_scaled
      p.A p.e p.f p.g (p.packetU x) (p.packetQ x) (p.packetH x) v hf hv
    have hB0 : Tail.SmallGap.PolarSource.B p.A p.e = p.B := rfl
    have hb0 : Tail.SmallGap.PolarSource.b p.A p.e p.f = p.b := rfl
    have hc0 : Tail.SmallGap.PolarSource.c p.A p.e p.f p.g = p.c := rfl
    have hM0 : Tail.SmallGap.PolarSource.M p.e p.f p.g =
        p.e+p.f+p.g := rfl
    rw [hB0,hb0,hc0,hM0] at hcore
    rw [p.packet_first,p.packet_last,p.packet_sum] at hcore
    have hpkt := Tail.SmallGap.PolarPacket.low_outer_eval
      p.A p.e p.f p.g (x 0) (x 1) (x 2) v
    rw [← hpkt]
    simpa only [Tail.SmallGap.PolarSource.M,OuterParameters.M] using hcore

end OuterParameters
end
end SPR.N6
