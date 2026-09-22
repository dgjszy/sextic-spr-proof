import SPR.N6.Algebra.Tail.CoreEndpoint.MixedLow401
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh401Source
import SPR.N6.Algebra.Tail.CoreEndpoint.PureLowSource

/-! Complete compactified low mixed source (4,0,1).
The directional decomposition is a polynomial identity at the same upper ratio.
The separate extraction theorem must retain (1+v)^2 and the original factor 2M.
-/
namespace SPR.N6.Tail.CoreEndpoint.MixedLow401Source
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0
open PureSource MixedHigh401Source

def zR0 (e f g : ℝ) : ℝ :=
  (((((((4 : ℝ))*f+(((10 : ℝ))*g))*f+(((8 : ℝ))*g^2))*f+(((2 : ℝ))*g^3))*e+((((((15 :
    ℝ))*f+(((45 : ℝ))*g))*f+(((49 : ℝ))*g^2))*f+(((23 : ℝ))*g^3))*f+(((4 :
    ℝ))*g^4)))*e+(((((((28 : ℝ))*f+(((98 : ℝ))*g))*f+(((130 : ℝ))*g^2))*f+(((80 :
    ℝ))*g^3))*f+(((22 : ℝ))*g^4))*f+(((2 : ℝ))*g^5)))*e+((((((((18 : ℝ))*f+(((72 :
    ℝ))*g))*f+(((113 : ℝ))*g^2))*f+(((87 : ℝ))*g^3))*f+(((33 : ℝ))*g^4))*f+(((5 : ℝ))*g^5))*f)

def zR1 (e f g : ℝ) : ℝ :=
  ((((((-4 : ℝ))*f+(((-4 : ℝ))*g))*f)*e+((((-6 : ℝ))*f^2+(((10 : ℝ))*g^2))*f+(((4 :
    ℝ))*g^3)))*e+((((((-20 : ℝ))*f+(((-32 : ℝ))*g))*f+(((-8 : ℝ))*g^2))*f+(((4 :
    ℝ))*g^3))*f))*e+(((((((-20 : ℝ))*f+(((-52 : ℝ))*g))*f+(((-46 : ℝ))*g^2))*f+(((-16 :
    ℝ))*g^3))*f+(((-2 : ℝ))*g^4))*f)

def zR2 (e f g : ℝ) : ℝ :=
  (((((6 : ℝ))*f+(((2 : ℝ))*g))*e+((((13 : ℝ))*f+(((3 : ℝ))*g))*f+(((-2 : ℝ))*g^2)))*e+(((((18 :
    ℝ))*f+(((12 : ℝ))*g))*f+(((-2 : ℝ))*g^2))*f))*e+((((((12 : ℝ))*f+(((18 : ℝ))*g))*f+(((7 :
    ℝ))*g^2))*f+(((1 : ℝ))*g^3))*f)

/-- The complete normalized low zero factor. -/
def Z (A e f g v : ℝ) : ℝ :=
  lz0 e f g*(1+v)^2-lz1 e f g*(A+e)*(1+v)+lz2 e f g*(A+e)^2

/-- The complete first polar change of the low zero factor. -/
def ZR (A e f g v : ℝ) : ℝ :=
  zR0 e f g*(1+v)^2-zR1 e f g*(A+e)*(1+v)+zR2 e f g*(A+e)^2

def RZ0 (e f g v : ℝ) : ℝ :=
  zR0 e f g*(1+v)^2-zR1 e f g*e*(1+v)+zR2 e f g*e^2

def RZ1 (e f g v : ℝ) : ℝ := -zR1 e f g*(1+v)+2*zR2 e f g*e

def RZ2 (e f g : ℝ) : ℝ := zR2 e f g

def base (e f g : ℝ) : ℝ :=
  D1r e f g*D2 e f g*W e f g+D1 e f g*D2r e f g*W e f g+
    D1 e f g*D2 e f g*Wr e f g

def r0 (e f g v : ℝ) : ℝ :=
  base e f g*(node0 e f g v)^2+Hr0 e f g*LZ0 e f g v+H0 e f g*RZ0 e f g v

def r1 (e f g v : ℝ) : ℝ :=
  2*base e f g*node0 e f g v+Hr0 e f g*LZ1 e f g v+
    Hr1 e f g*LZ0 e f g v+H0 e f g*RZ1 e f g v+H1 e f g*RZ0 e f g v

def r2 (e f g v : ℝ) : ℝ :=
  base e f g+Hr0 e f g*LZ2 e f g+Hr1 e f g*LZ1 e f g v+
    Hr2 e f g*LZ0 e f g v+H0 e f g*RZ2 e f g+
    H1 e f g*RZ1 e f g v+H2 e f g*RZ0 e f g v

def r3 (e f g v : ℝ) : ℝ :=
  Hr1 e f g*LZ2 e f g+Hr2 e f g*LZ1 e f g v+
    H1 e f g*RZ2 e f g+H2 e f g*RZ1 e f g v

def r4 (e f g v : ℝ) : ℝ :=
  Hr2 e f g*LZ2 e f g+H2 e f g*RZ2 e f g

/-- Same pure source, with all five A coefficients retained. -/
def pureSource (A e f g v : ℝ) : ℝ :=
  D1 e f g*D2 e f g*W e f g*(A+node0 e f g v)^2+
    (H0 e f g+H1 e f g*A+H2 e f g*A^2)*Z A e f g v

/-- Complete q-direction, including the weight and both denominator changes. -/
def directionalSource (A e f g v : ℝ) : ℝ :=
  base e f g*(A+node0 e f g v)^2+
    (Hr0 e f g+Hr1 e f g*A+Hr2 e f g*A^2)*Z A e f g v+
    (H0 e f g+H1 e f g*A+H2 e f g*A^2)*ZR A e f g v

/-- Exact A^0 source coefficient. -/
theorem source0_identity (e f g v : ℝ) :
    MixedLow4010.source e f g v = N e f g*r0 e f g v := by
  simp only [MixedLow4010.source, r0, N, base, D1r, D2r, Wr, Hr0, Hr1, Hr2, D1, D2, W, H0, H1, H2, lz0, lz1, lz2, L, J, M, zR0, zR1, zR2, RZ0, RZ1, RZ2, LZ0, LZ1, LZ2, node0]
  ring

/-- Exact A^1 source coefficient. -/
theorem source1_identity (e f g v : ℝ) :
    MixedLow4011.source e f g v = 5*lr0 e f g v+N e f g*r1 e f g v := by
  simp only [MixedLow4011.source, lr0, r1, N, base, D1r, D2r, Wr, Hr0, Hr1, Hr2, D1, D2, W, H0, H1, H2, lz0, lz1, lz2, L, J, M, zR0, zR1, zR2, RZ0, RZ1, RZ2, LZ0, LZ1, LZ2, node0]
  ring

/-- Exact A^2 source coefficient. -/
theorem source2_identity (e f g v : ℝ) :
    MixedLow4012.source e f g v = 5*lr1 e f g v+N e f g*r2 e f g v := by
  simp only [MixedLow4012.source, lr1, r2, N, base, D1r, D2r, Wr, Hr0, Hr1, Hr2, D1, D2, W, H0, H1, H2, lz0, lz1, lz2, L, J, M, zR0, zR1, zR2, RZ0, RZ1, RZ2, LZ0, LZ1, LZ2, node0]
  ring

/-- Exact A^3 source coefficient. -/
theorem source3_identity (e f g v : ℝ) :
    MixedLow4013.source e f g v = 5*lr2 e f g v+N e f g*r3 e f g v := by
  simp only [MixedLow4013.source, lr2, r3, N, base, D1r, D2r, Wr, Hr0, Hr1, Hr2, D1, D2, W, H0, H1, H2, lz0, lz1, lz2, L, J, M, zR0, zR1, zR2, RZ0, RZ1, RZ2, LZ0, LZ1, LZ2, node0]
  ring

/-- Exact A^4 source coefficient. -/
theorem source4_identity (e f g v : ℝ) :
    MixedLow4014.source e f g v = 5*lr3 e f g v+N e f g*r4 e f g v := by
  simp only [MixedLow4014.source, lr3, r4, N, base, D1r, D2r, Wr, Hr0, Hr1, Hr2, D1, D2, W, H0, H1, H2, lz0, lz1, lz2, L, J, M, zR0, zR1, zR2, RZ0, RZ1, RZ2, LZ0, LZ1, LZ2, node0]
  ring

/-- Exact A^5 source coefficient. -/
theorem source5_identity (e f g v : ℝ) :
    MixedLow4015.source e f g v = 5*lr4 e f g v := by
  simp only [MixedLow4015.source, lr4, N, base, D1r, D2r, Wr, Hr0, Hr1, Hr2, D1, D2, W, H0, H1, H2, lz0, lz1, lz2, L, J, M, zR0, zR1, zR2, RZ0, RZ1, RZ2, LZ0, LZ1, LZ2, node0]
  ring

/-- The normalized whole mixed coefficient includes both radial and polar terms. -/
theorem source_identity (A e f g v : ℝ) :
    MixedLow401.source A e f g v =
      5*A*pureSource A e f g v+N e f g*directionalSource A e f g v := by
  unfold MixedLow401.source
  rw [source0_identity,source1_identity,source2_identity,source3_identity,
    source4_identity,source5_identity]
  simp only [pureSource,directionalSource,r0,r1,r2,r3,r4,lr0,lr1,lr2,lr3,lr4,
    Z,ZR,RZ0,RZ1,RZ2,LZ0,LZ1,LZ2]
  ring

end
end SPR.N6.Tail.CoreEndpoint.MixedLow401Source
