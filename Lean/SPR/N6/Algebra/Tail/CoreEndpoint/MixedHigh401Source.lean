import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh401
import SPR.N6.Algebra.Tail.CoreEndpoint.PureSource0
import SPR.N6.Algebra.Tail.CoreEndpoint.PureSource1
import SPR.N6.Algebra.Tail.CoreEndpoint.PureSource2

/-! Correct directional source connection for the mixed high block (4,0,1).

The five-fold homogeneous source identity is split by A.  The ratio is
`(e+f+g)/f`; the resulting coefficient is exactly
`2*(e+f+g)*MixedHigh401.source`, with no extra f² factor.
-/
namespace SPR.N6.Tail.CoreEndpoint.MixedHigh401Source
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

open PureSource


def N (e f g : ℝ) : ℝ := (e+f)*M e f g

def D1r (e f g : ℝ) : ℝ :=
  2*(e+f)*M e f g*L e f g+((e+f)+M e f g)*J f g

def D2r (e f g : ℝ) : ℝ :=
  (M e f g+f)*((f+g)*L e f g+f*(e+f))+
    ((f+g)+f)*(M e f g*L e f g+f*(e+f))

def Wr (e f g : ℝ) : ℝ :=
  (f+g+f)*(e+f)*M e f g+(e+f)*M e f g*(f+g)+
    f*((M e f g+f)*(f+g)+M e f g*(e+f))


def zR0 (e f g : ℝ) : ℝ :=
  ((((((6) * f + ((2) * g)) * e + (((25) * f + ((21) * g)) * f + ((4) * g ^ 2))) * e + ((((52) *
    f + ((70) * g)) * f + ((24) * g ^ 2)) * f + ((2) * g ^ 3))) * e + (((((46) * f + ((86) * g))
    * f + ((47) * g ^ 2)) * f + ((7) * g ^ 3)) * f)) * e + (((((14) * f + ((34) * g)) * f +
    ((26) * g ^ 2)) * f + ((6) * g ^ 3)) * f ^ 2)) * e + (((((2) * f + ((6) * g)) * f + ((6) * g
    ^ 2)) * f + ((2) * g ^ 3)) * f ^ 3)

def zR1 (e f g : ℝ) : ℝ :=
  (((((12) * f + ((4) * g)) * e + (((34) * f + ((18) * g)) * f)) * e + ((((56) * f + ((56) * g))
    * f + ((8) * g ^ 2)) * f)) * e + (((((40) * f + ((64) * g)) * f + ((26) * g ^ 2)) * f + ((2)
    * g ^ 3)) * f)) * e + ((((4) * f + ((8) * g)) * f + ((4) * g ^ 2)) * f ^ 3)

def zR2 (e f g : ℝ) : ℝ :=
  ((((6) * f + ((2) * g)) * e + (((13) * f + ((3) * g)) * f + ((-2) * g ^ 2))) * e + ((((18) * f
    + ((12) * g)) * f + ((-2) * g ^ 2)) * f)) * e + (((((12) * f + ((18) * g)) * f + ((7) * g ^
    2)) * f + ((1) * g ^ 3)) * f)

def Hr0 (e f g : ℝ) : ℝ :=
  (e+f)*M e f g*D2 e f g+
    (L e f g*(e+f)*M e f g-e*J f g)*D2r e f g+
    L e f g*((e+f)+M e f g)*D1 e f g+
    (L e f g^2-J f g)*((e+f)+M e f g)*D1r e f g

def Hr1 (e f g : ℝ) : ℝ :=
  (3*e+2*f+g)*D2 e f g+
    (L e f g*(3*e+2*f+g)-2*J f g)*D2r e f g+
    (5*e+6*f+3*g)*D1 e f g+
    (L e f g*(5*e+6*f+3*g)-2*J f g)*D1r e f g

def Hr2 (e f g : ℝ) : ℝ :=
  3*(D2 e f g+L e f g*D2r e f g+D1 e f g+L e f g*D1r e f g)

def ZR (e f g v : ℝ) : ℝ :=
  zR0 e f g+zR1 e f g*(f+v)+zR2 e f g*(f+v)^2

def P0 (e f g v : ℝ) : ℝ :=
  D1 e f g*D2 e f g*W e f g*(e+f+v)^2+H0 e f g*Z e f g v

def P1 (e f g v : ℝ) : ℝ := H1 e f g*Z e f g v

def P2 (e f g v : ℝ) : ℝ := H2 e f g*Z e f g v

def Rbase (e f g v : ℝ) : ℝ :=
  (D1r e f g*D2 e f g*W e f g+
    D1 e f g*D2r e f g*W e f g+
    D1 e f g*D2 e f g*Wr e f g)*(e+f+v)^2

def R0 (e f g v : ℝ) : ℝ :=
  Rbase e f g v+Hr0 e f g*Z e f g v+H0 e f g*ZR e f g v

def R1 (e f g v : ℝ) : ℝ := Hr1 e f g*Z e f g v+H1 e f g*ZR e f g v

def R2 (e f g v : ℝ) : ℝ := Hr2 e f g*Z e f g v+H2 e f g*ZR e f g v

def pureSource (A e f g v : ℝ) : ℝ :=
  P0 e f g v+P1 e f g v*A+P2 e f g v*A^2

def directionalSource (A e f g v : ℝ) : ℝ :=
  R0 e f g v+R1 e f g v*A+R2 e f g v*A^2

theorem P0_identity (e f g v : ℝ) :
    P0 e f g v = PureHigh0.source e f g v := by
  unfold P0
  exact PureSource.coefficient0 e f g v

theorem P1_identity (e f g v : ℝ) :
    P1 e f g v = PureHigh1.source e f g v := by
  unfold P1
  exact PureSource.coefficient1 e f g v

theorem P2_identity (e f g v : ℝ) :
    P2 e f g v = PureHigh2.source e f g v := by
  unfold P2
  exact PureSource.coefficient2 e f g v

/-- The A^0 coefficient is the directional source term. -/
theorem source0_identity (e f g v : ℝ) :
    MixedHigh4010.source e f g v = N e f g*R0 e f g v := by
  simp only [MixedHigh4010.source, N, R0, Rbase, D1r, D2r, Wr, Hr0, Hr1, Hr2,
    D1, D2, W, H0, H1, H2, Z, z0, z1, z2, L, J, M, zR0, zR1, zR2, ZR]
  ring

/-- The A^1 coefficient contains five times the pure A^0 source. -/
theorem source1_identity (e f g v : ℝ) :
    MixedHigh4011.source e f g v = 5*P0 e f g v+N e f g*R1 e f g v := by
  simp only [MixedHigh4011.source, P0, N, R1, Rbase, D1r, D2r, Wr, Hr0, Hr1, Hr2,
    D1, D2, W, H0, H1, H2, Z, z0, z1, z2, L, J, M, zR0, zR1, zR2, ZR]
  ring

/-- The A^2 coefficient contains five times the pure A^1 source. -/
theorem source2_identity (e f g v : ℝ) :
    MixedHigh4012.source e f g v = 5*P1 e f g v+N e f g*R2 e f g v := by
  simp only [MixedHigh4012.source, P1, N, R2, Rbase, D1r, D2r, Wr, Hr0, Hr1, Hr2,
    D1, D2, W, H0, H1, H2, Z, z0, z1, z2, L, J, M, zR0, zR1, zR2, ZR]
  ring

/-- The A^3 coefficient contains five times the pure A^2 source. -/
theorem source3_identity (e f g v : ℝ) :
    MixedHigh4013.source e f g v = 5*P2 e f g v := by
  simp only [MixedHigh4013.source, P2, D1, D2, W, H2, Z, z0, z1, z2, L, J, M]
  ring

/-- Complete directional identity for the mixed source block. -/
theorem source_identity (A e f g v : ℝ) :
    MixedHigh401.source A e f g v =
      5*A*pureSource A e f g v+N e f g*directionalSource A e f g v := by
  unfold MixedHigh401.source directionalSource pureSource
  rw [source0_identity, source1_identity, source2_identity, source3_identity]
  ring

/-- Scaling the static source identity; actual coefficient extraction is proved separately. -/
theorem core_source_identity (A e f g v : ℝ) (hf : f ≠ 0) :
    2*(e+f+g)*MixedHigh401.source A e f g v =
      2*(e+f+g)*
        (5*A*pureSource A e f g v+N e f g*directionalSource A e f g v) := by
  rw [source_identity]

end
end SPR.N6.Tail.CoreEndpoint.MixedHigh401Source
