import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh410
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh401Source

/-!
# Directional source connection for the mixed high block (4,1,0).

The static source is split by the formal first outer coordinate A. The
identity below uses the already connected (4,0,1) directional source and
the explicit second-coordinate directional factors. Each coefficient is
normalized separately to keep the kernel term size bounded.
-/
namespace SPR.N6.Tail.CoreEndpoint.MixedHigh410Source
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

open PureSource
open MixedHigh401Source

/-- The second-coordinate directional factors for the two denominator terms. -/
def D2h (e f g : ℝ) : ℝ :=
  f*((M e f g+(f+g))*L e f g+2*f*(e+f))

/-- The second-coordinate directional factor for the weight. -/
def Wh (e f g : ℝ) : ℝ :=
  f*(e+f)*M e f g+f^2*(f+g)

/-- The three second-coordinate mixture factors. -/
def Hh0 (e f g : ℝ) : ℝ :=
  (L e f g*(e+f)*M e f g-e*J f g)*D2h e f g+
    f*((e+f)+M e f g)*D1 e f g

def Hh1 (e f g : ℝ) : ℝ :=
  (L e f g*(3*e+2*f+g)-2*J f g)*D2h e f g+
    2*f*D1 e f g

def Hh2 (e f g : ℝ) : ℝ :=
  3*L e f g*D2h e f g

/-- The three second-coordinate zero-direction factors. -/
def zH0 (e f g : ℝ) : ℝ :=
  e*f*(e^4+e^3*f+e^3*g+3*e^2*f^2+4*e^2*f*g+
    3*e*f^3+5*e*f^2*g+2*e*f*g^2-f^4-2*f^3*g-f^2*g^2)

def zH1 (e f g : ℝ) : ℝ :=
  2*(3*e^4*f+e^4*g+6*e^3*f^2+5*e^3*f*g+e^3*g^2+
    7*e^2*f^3+9*e^2*f^2*g+2*e^2*f*g^2+4*e*f^4+
    7*e*f^3*g+3*e*f^2*g^2-f^5-2*f^4*g-f^3*g^2)

def zH2 (e f g : ℝ) : ℝ :=
  5*e^3*f+2*e^3*g+12*e^2*f^2+10*e^2*f*g+2*e^2*g^2+
    14*e*f^3+18*e*f^2*g+5*e*f*g^2+8*f^4+14*f^3*g+6*f^2*g^2

/-- The frequency-polynomial second-coordinate zero source. -/
def Zh (e f g v : ℝ) : ℝ :=
  zH0 e f g+zH1 e f g*(f+v)+zH2 e f g*(f+v)^2

/-- The three coefficients of the second-coordinate directional source. -/
def Rh0 (e f g v : ℝ) : ℝ :=
  D1 e f g*(D2h e f g*W e f g+D2 e f g*Wh e f g)*(e+f+v)^2+
    Hh0 e f g*Z e f g v+H0 e f g*Zh e f g v

def Rh1 (e f g v : ℝ) : ℝ :=
  Hh1 e f g*Z e f g v+H1 e f g*Zh e f g v

def Rh2 (e f g v : ℝ) : ℝ :=
  Hh2 e f g*Z e f g v+H2 e f g*Zh e f g v

def Rh (A e f g v : ℝ) : ℝ :=
  Rh0 e f g v+Rh1 e f g v*A+Rh2 e f g v*A^2

set_option maxHeartbeats 0 in
theorem source0_identity (e f g v : ℝ) :
    MixedHigh4100.source e f g v =
      N e f g*(e*R0 e f g v+(f+g)*Rh0 e f g v) := by
  simp only [MixedHigh4100.source, N, R0, Rbase, D1r, D2r, Wr, Hr0, Hr1, Hr2, ZR,
    zR0, zR1, zR2, Rh0,
    D2h, Wh, Hh0, H0, H1, H2, Hh1, Hh2, D1, D2, W, Z, z0, z1, z2,
    Zh, zH0, zH1, zH2, Hr0, Hr1, Hr2, ZR, zR0, zR1, zR2, H0, L, J, M]
  ring

set_option maxHeartbeats 0 in
theorem source1_identity (e f g v : ℝ) :
    MixedHigh4101.source e f g v =
      N e f g*(2*R0 e f g v+e*R1 e f g v+(f+g)*Rh1 e f g v) := by
  simp only [MixedHigh4101.source, N, R0, R1, Rbase, D1r, D2r, Wr, Hr0, Hr1, Hr2, ZR,
    zR0, zR1, zR2, Rh1,
    D2h, Wh, Hh0, H1, H2, Hh1, Hh2, D1, D2, W, Z, z0, z1, z2,
    Zh, zH0, zH1, zH2, Hr0, Hr1, Hr2, ZR, zR0, zR1, zR2, H0, L, J, M]
  ring

set_option maxHeartbeats 0 in
theorem source2_identity (e f g v : ℝ) :
    MixedHigh4102.source e f g v =
      5*P0 e f g v+
        N e f g*(2*R1 e f g v+e*R2 e f g v+(f+g)*Rh2 e f g v) := by
  simp only [MixedHigh4102.source, N, P0, R1, R2, Rbase, D1r, D2r, Wr, Hr0, Hr1, Hr2, ZR,
    zR0, zR1, zR2,
    Rh2, D2h, Wh, Hh0, H1, H2, Hh1, Hh2, D1, D2, W, Z, z0, z1, z2,
    Zh, zH0, zH1, zH2, Hr0, Hr1, Hr2, ZR, zR0, zR1, zR2, H0, L, J, M]
  ring

set_option maxHeartbeats 0 in
theorem source3_identity (e f g v : ℝ) :
    MixedHigh4103.source e f g v =
      5*P1 e f g v+N e f g*(2*R2 e f g v) := by
  simp only [MixedHigh4103.source, N, P1, R2, Rbase, D1r, D2r, Wr, Hr0, Hr1, Hr2, ZR,
    zR0, zR1, zR2,
    D2h, Wh, Hh0, H1, H2, Hh1, Hh2, D1, D2, W, Z, z0, z1, z2,
    Zh, zH0, zH1, zH2, Hr0, Hr1, Hr2, ZR, zR0, zR1, zR2, H0, L, J, M]
  ring

set_option maxHeartbeats 0 in
theorem source4_identity (e f g v : ℝ) :
    MixedHigh4104.source e f g v = 5*P2 e f g v := by
  simp only [MixedHigh4104.source, P2, D1, D2, W, H2, Z, z0, z1, z2, L,
    J, M]
  ring

set_option maxHeartbeats 0 in
/-- The complete directional source identity for (4,1,0). -/
theorem source_identity (A e f g v : ℝ) :
    MixedHigh410.source A e f g v =
      5*A^2*(P0 e f g v+P1 e f g v*A+P2 e f g v*A^2)+
        N e f g*(2*A+e)*
          (R0 e f g v+R1 e f g v*A+R2 e f g v*A^2)+
        N e f g*(f+g)*Rh A e f g v := by
  unfold MixedHigh410.source Rh
  rw [source0_identity, source1_identity, source2_identity, source3_identity,
    source4_identity]
  ring

end
end SPR.N6.Tail.CoreEndpoint.MixedHigh410Source
