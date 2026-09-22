import SPR.N6.Algebra.LowerZero

/-!
# First-band coefficient source with a factored convolution

The quartic frequency identity is proved in abstract scalar coefficients.
Parameter expansion is confined to individual ratio Bernstein entries.
-/
namespace SPR.N6.FirstBand
noncomputable section
set_option maxRecDepth 8192

def coeff00 (a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((24 * H * a * r00) + (24 * D * a * wa * (d ^ 2)))

def coeff01 (a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((24 * H * a * r01) + (24 * L0 * wa * (J ^ 2)) + (24 * D * a * wb * (d ^ 2)))

def coeff02 (a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((24 * H * a * r02) + (24 * L0 * wb * (J ^ 2)))

def coeff10 (a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((6 * D * wa * (d ^ 3)) + (6 * H * a * r10) + (6 * H * d * r00) + (24 * H * a * r00) + (12 * D
    * a * wa * (d ^ 2)))

def coeff11 (a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((6 * D * wb * (d ^ 3)) + (6 * H * a * r11) + (6 * H * d * r01) + (6 * L1 * wa * (J ^ 2)) +
    (24 * H * a * r01) + (24 * L0 * wa * (J ^ 2)) + (-12 * J * L0 * d * wa) + (12 * D * a * wb *
    (d ^ 2)))

def coeff12 (a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((6 * H * a * r12) + (6 * H * d * r02) + (6 * L1 * wb * (J ^ 2)) + (24 * H * a * r02) + (24 *
    L0 * wb * (J ^ 2)) + (-12 * J * L0 * d * wb))

def coeff20 (a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((4 * D * wa * (d ^ 3)) + (4 * H * a * r20) + (4 * H * d * r10) + (12 * H * a * r10) + (12 * H
    * d * r00) + (24 * H * a * r00) + (4 * D * a * wa * (d ^ 2)))

def coeff21 (a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((4 * D * wb * (d ^ 3)) + (4 * H * a * r21) + (4 * H * d * r11) + (4 * L0 * wa * (d ^ 2)) + (4
    * L2 * wa * (J ^ 2)) + (12 * H * a * r11) + (12 * H * d * r01) + (12 * L1 * wa * (J ^ 2)) +
    (24 * H * a * r01) + (24 * L0 * wa * (J ^ 2)) + (-24 * J * L0 * d * wa) + (-8 * J * L1 * d *
    wa) + (4 * D * a * wb * (d ^ 2)))

def coeff22 (a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((4 * H * a * r22) + (4 * H * d * r12) + (4 * L0 * wb * (d ^ 2)) + (4 * L2 * wb * (J ^ 2)) +
    (12 * H * a * r12) + (12 * H * d * r02) + (12 * L1 * wb * (J ^ 2)) + (24 * H * a * r02) +
    (24 * L0 * wb * (J ^ 2)) + (-24 * J * L0 * d * wb) + (-8 * J * L1 * d * wb))

def coeff30 (a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((6 * H * d * r20) + (12 * H * a * r20) + (12 * H * d * r10) + (18 * H * a * r10) + (18 * H *
    d * r00) + (24 * H * a * r00))

def coeff31 (a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((6 * H * d * r21) + (6 * L1 * wa * (d ^ 2)) + (12 * H * a * r21) + (12 * H * d * r11) + (12 *
    L0 * wa * (d ^ 2)) + (12 * L2 * wa * (J ^ 2)) + (18 * H * a * r11) + (18 * H * d * r01) +
    (18 * L1 * wa * (J ^ 2)) + (24 * H * a * r01) + (24 * L0 * wa * (J ^ 2)) + (-36 * J * L0 * d
    * wa) + (-24 * J * L1 * d * wa) + (-12 * J * L2 * d * wa))

def coeff32 (a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((6 * H * d * r22) + (6 * L1 * wb * (d ^ 2)) + (12 * H * a * r22) + (12 * H * d * r12) + (12 *
    L0 * wb * (d ^ 2)) + (12 * L2 * wb * (J ^ 2)) + (18 * H * a * r12) + (18 * H * d * r02) +
    (18 * L1 * wb * (J ^ 2)) + (24 * H * a * r02) + (24 * L0 * wb * (J ^ 2)) + (-36 * J * L0 * d
    * wb) + (-24 * J * L1 * d * wb) + (-12 * J * L2 * d * wb))

def coeff40 (a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((24 * H * a * r00) + (24 * H * a * r10) + (24 * H * a * r20) + (24 * H * d * r00) + (24 * H *
    d * r10) + (24 * H * d * r20))

def coeff41 (a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((24 * H * a * r01) + (24 * H * a * r11) + (24 * H * a * r21) + (24 * H * d * r01) + (24 * H *
    d * r11) + (24 * H * d * r21) + (24 * L0 * wa * (J ^ 2)) + (24 * L0 * wa * (d ^ 2)) + (24 *
    L1 * wa * (J ^ 2)) + (24 * L1 * wa * (d ^ 2)) + (24 * L2 * wa * (J ^ 2)) + (24 * L2 * wa *
    (d ^ 2)) + (-48 * J * L0 * d * wa) + (-48 * J * L1 * d * wa) + (-48 * J * L2 * d * wa))

def coeff42 (a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((24 * H * a * r02) + (24 * H * a * r12) + (24 * H * a * r22) + (24 * H * d * r02) + (24 * H *
    d * r12) + (24 * H * d * r22) + (24 * L0 * wb * (J ^ 2)) + (24 * L0 * wb * (d ^ 2)) + (24 *
    L1 * wb * (J ^ 2)) + (24 * L1 * wb * (d ^ 2)) + (24 * L2 * wb * (J ^ 2)) + (24 * L2 * wb *
    (d ^ 2)) + (-48 * J * L0 * d * wb) + (-48 * J * L1 * d * wb) + (-48 * J * L2 * d * wb))

set_option maxHeartbeats 0 in
-- The finite coefficient convolution is kept abstract to bound kernel normalization.
/-- Complete quartic Bernstein identity for the factored first-band source. -/
theorem convolution (a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22 m u : ℝ) :
    24*((wa+wb*m)*(D*d^2*(a+d*u)*(u-1)^2+
      m*(d*u-J)^2*(L0+L1*u+L2*u^2))+
      H*(a+d*u)*((r00+r01*m+r02*m^2)+(r10+r11*m+r12*m^2)*u+
        (r20+r21*m+r22*m^2)*u^2)) =
      (coeff00 a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22+coeff01 a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22*m+coeff02 a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22*m^2)*1*u^0*(1-u)^4 + (coeff10 a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22+coeff11 a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22*m+coeff12 a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22*m^2)*4*u^1*(1-u)^3 + (coeff20 a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22+coeff21 a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22*m+coeff22 a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22*m^2)*6*u^2*(1-u)^2 + (coeff30 a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22+coeff31 a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22*m+coeff32 a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22*m^2)*4*u^3*(1-u)^1 + (coeff40 a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22+coeff41 a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22*m+coeff42 a d wa wb D J L0 L1 L2 H r00 r01 r02 r10 r11 r12 r20 r21 r22*m^2)*1*u^4*(1-u)^0 := by
  unfold coeff00 coeff01 coeff02 coeff10 coeff11 coeff12 coeff20 coeff21 coeff22 coeff30 coeff31 coeff32 coeff40 coeff41 coeff42
  ring

def w0 (a d e f g h : ℝ) : ℝ :=
  ((((e + f + g) ^ 2) * (e + f) * (f + g + h)) + (((e + f + g) ^ 2) * (f + g) * (d + e + f)))

def w1 (a d e f g h : ℝ) : ℝ :=
  (((f ^ 2) * (e + f) * (d + e + f + g)) + ((f ^ 2) * (f + g) * (e + f + g + h)))

def den (a d e f g h : ℝ) : ℝ :=
  ((d + e + f) * (f + g + h) * (d + e + f + g) * (e + f + g + h))

def jump (a d e f g h : ℝ) : ℝ :=
  (d + e + f)

def l0 (a d e f g h : ℝ) : ℝ :=
  (a * d * (d + e) * (f + g + h) * (e + f + g + h))

def l1 (a d e f g h : ℝ) : ℝ :=
  ((d * ((a * (a + d + e + f + g + h)) + (-1 * (a + d) * (a + d + e))) * (d + e + f) * (d + e +
    f + g)) + (-1 * a * d * (e + (2 * d)) * (f + g + h) * (e + f + g + h)))

def l2 (a d e f g h : ℝ) : ℝ :=
  ((a * (d ^ 2) * (f + g + h) * (e + f + g + h)) + ((d ^ 2) * (d + e + f) * (d + e + f + g) * (a
    + d + e + f + g + h)))

def mix (a d e f g h : ℝ) : ℝ :=
  (((((a + d) * (a + d + e)) + ((g + (2 * a) + (2 * d) + (2 * e) + (2 * f)) * (a + d + e + f + g
    + h))) * (d + e + f) * (d + e + f + g)) + (a * (f + g + h) * (e + f + g + h) * (g + (2 * f)
    + (3 * a) + (3 * e) + (4 * d))) + ((d + e + f) * (f + g + h) * (d + e + f + g) * (e + f + g
    + h)))

def z00 (a d e f g h : ℝ) : ℝ :=
  (((((1) * f + ((1) * g + ((1) * h))) * e + (((2) * f + ((4) * g + ((2) * h))) * f + (((2) * g
    + ((2) * h)) * g))) * e + ((((1) * f + ((3) * g + ((1) * h))) * f + (((3) * g + ((2) * h)) *
    g)) * f + (((1) * g + ((1) * h)) * g ^ 2))) * d + (((((1) * f + ((1) * g + ((1) * h))) * e +
    (((3) * f + ((5) * g + ((3) * h))) * f + (((2) * g + ((2) * h)) * g))) * e + ((((3) * f +
    ((7) * g + ((3) * h))) * f + (((5) * g + ((4) * h)) * g)) * f + (((1) * g + ((1) * h)) * g ^
    2))) * e + (((((1) * f + ((3) * g + ((1) * h))) * f + (((3) * g + ((2) * h)) * g)) * f +
    (((1) * g + ((1) * h)) * g ^ 2)) * f))) * d ^ 2

def z01 (a d e f g h : ℝ) : ℝ :=
  (((((1) * g ^ 2) * d + ((((1) * f + ((1) * g)) * e + (((3) * f + ((5) * g + ((2) * h))) * f +
    (((4) * g + ((2) * h)) * g))) * e + ((((2) * f + ((4) * g + ((2) * h))) * f + (((3) * g +
    ((2) * h)) * g)) * f))) * d + (((((3) * f + ((3) * g + ((1) * h))) * e + (((7) * f + ((11) *
    g + ((5) * h))) * f + (((5) * g + ((5) * h)) * g + ((1) * h ^ 2)))) * e + ((((6) * f + ((11)
    * g + ((5) * h))) * f + (((6) * g + ((5) * h)) * g)) * f)) * e + ((((2) * f + ((4) * g +
    ((2) * h))) * f + (((2) * g + ((2) * h)) * g)) * f ^ 2))) * d + ((((((2) * f + ((2) * g +
    ((1) * h))) * e + (((5) * f + ((7) * g + ((4) * h))) * f + (((2) * g + ((3) * h)) * g + ((1)
    * h ^ 2)))) * e + ((((4) * f + ((7) * g + ((4) * h))) * f + (((3) * g + ((4) * h)) * g +
    ((1) * h ^ 2))) * f)) * e + ((((1) * f + ((2) * g + ((1) * h))) * f + (((1) * g + ((1) * h))
    * g)) * f ^ 2)) * e)) * d

def z02 (a d e f g h : ℝ) : ℝ :=
  (((((1) * f ^ 2) * e + (((1) * f + ((1) * g + ((1) * h))) * f ^ 2)) * d + ((((2) * f ^ 2) * e
    + (((3) * f + ((2) * g + ((2) * h))) * f ^ 2)) * e + (((1) * f + ((1) * g + ((1) * h))) * f
    ^ 3))) * d + (((((1) * f ^ 2) * e + (((2) * f + ((1) * g + ((1) * h))) * f ^ 2)) * e + (((1)
    * f + ((1) * g + ((1) * h))) * f ^ 3)) * e)) * d

def z10 (a d e f g h : ℝ) : ℝ :=
  (((((-2) * f + ((-2) * g + ((-2) * h))) * e + (((-4) * f + ((-8) * g + ((-4) * h))) * f +
    (((-4) * g + ((-4) * h)) * g))) * e + ((((-2) * f + ((-6) * g + ((-2) * h))) * f + (((-6) *
    g + ((-4) * h)) * g)) * f + (((-2) * g + ((-2) * h)) * g ^ 2))) * d + (((((-2) * f + ((-2) *
    g + ((-2) * h))) * e + (((-6) * f + ((-10) * g + ((-6) * h))) * f + (((-4) * g + ((-4) * h))
    * g))) * e + ((((-6) * f + ((-14) * g + ((-6) * h))) * f + (((-10) * g + ((-8) * h)) * g)) *
    f + (((-2) * g + ((-2) * h)) * g ^ 2))) * e + (((((-2) * f + ((-6) * g + ((-2) * h))) * f +
    (((-6) * g + ((-4) * h)) * g)) * f + (((-2) * g + ((-2) * h)) * g ^ 2)) * f))) * d ^ 2

def z11 (a d e f g h : ℝ) : ℝ :=
  (((((-2) * g ^ 2) * d + ((((-1) * f + ((-1) * g)) * e + (((-4) * f + ((-6) * g + ((-4) * h)))
    * f + (((-6) * g + ((-4) * h)) * g))) * e + ((((-3) * f + ((-5) * g + ((-4) * h))) * f +
    (((-4) * g + ((-4) * h)) * g)) * f))) * d + (((((-2) * f + ((-2) * g + ((-1) * h))) * e +
    (((-3) * f + ((-5) * g + ((-6) * h))) * f + (((-4) * g + ((-7) * h)) * g + ((-2) * h ^ 2))))
    * e + ((((-2) * f + ((-2) * g + ((-6) * h))) * f + (((-2) * g + ((-6) * h)) * g)) * f)) * e
    + ((((-1) * f + ((-1) * g + ((-3) * h))) * f + (((-3) * h) * g)) * f ^ 2))) * d + ((((((2) *
    f + ((2) * g + ((-1) * h))) * f + (((-2) * h) * g + ((-1) * h ^ 2))) * e + ((((5) * f + ((7)
    * g + ((-1) * h))) * f + (((2) * g + ((-2) * h)) * g + ((-1) * h ^ 2))) * f)) * e + ((((4) *
    f + ((7) * g)) * f + ((3) * g ^ 2)) * f ^ 2)) * e + ((((1) * f + ((2) * g)) * f + ((1) * g ^
    2)) * f ^ 3))) * d

def z12 (a d e f g h : ℝ) : ℝ :=
  (((((-1) * f ^ 2) * e + (((-1) * f + ((-2) * g + ((-2) * h))) * f ^ 2)) * d + ((((-1) * f ^ 2)
    * e + (((-2) * g + ((-3) * h)) * f ^ 2)) * e + (((1) * f + ((-1) * h)) * f ^ 3))) * d +
    (((((1) * f + ((-1) * h)) * f ^ 2) * e + (((2) * f + ((1) * g + ((-1) * h))) * f ^ 3)) * e +
    (((1) * f + ((1) * g)) * f ^ 4))) * d

def z20 (a d e f g h : ℝ) : ℝ :=
  (((((1) * f + ((1) * g + ((1) * h))) * e + (((2) * f + ((4) * g + ((2) * h))) * f + (((2) * g
    + ((2) * h)) * g))) * e + ((((1) * f + ((3) * g + ((1) * h))) * f + (((3) * g + ((2) * h)) *
    g)) * f + (((1) * g + ((1) * h)) * g ^ 2))) * d + (((((1) * f + ((1) * g + ((1) * h))) * e +
    (((3) * f + ((5) * g + ((3) * h))) * f + (((2) * g + ((2) * h)) * g))) * e + ((((3) * f +
    ((7) * g + ((3) * h))) * f + (((5) * g + ((4) * h)) * g)) * f + (((1) * g + ((1) * h)) * g ^
    2))) * e + (((((1) * f + ((3) * g + ((1) * h))) * f + (((3) * g + ((2) * h)) * g)) * f +
    (((1) * g + ((1) * h)) * g ^ 2)) * f))) * d ^ 2

def z21 (a d e f g h : ℝ) : ℝ :=
  ((((1) * g ^ 2) * d + ((((1) * f + ((1) * g + ((2) * h))) * f + (((2) * g + ((2) * h)) * g)) *
    e + ((((1) * f + ((1) * g + ((2) * h))) * f + (((1) * g + ((2) * h)) * g)) * f))) * d +
    (((((-1) * f + ((-2) * g + ((1) * h))) * f + (((2) * h) * g + ((1) * h ^ 2))) * e + ((((-1)
    * f + ((-4) * g + ((1) * h))) * f + (((-2) * g + ((1) * h)) * g)) * f)) * e + ((((-1) * g +
    ((1) * h)) * f + (((-1) * g + ((1) * h)) * g)) * f ^ 2))) * d ^ 2

def z22 (a d e f g h : ℝ) : ℝ :=
  ((((1) * g + ((1) * h)) * f ^ 2) * d + ((((-1) * f + ((1) * h)) * f ^ 2) * e + (((-1) * f +
    ((-1) * g)) * f ^ 3))) * d ^ 2

def actual00 (a d e f g h : ℝ) : ℝ :=
  coeff00 a d (w0 a d e f g h) (w1 a d e f g h) (den a d e f g h) (jump a d e f g h) (l0 a d e f g h) (l1 a d e f g h) (l2 a d e f g h) (mix a d e f g h) (z00 a d e f g h) (z01 a d e f g h) (z02 a d e f g h) (z10 a d e f g h) (z11 a d e f g h) (z12 a d e f g h) (z20 a d e f g h) (z21 a d e f g h) (z22 a d e f g h)

def actual01 (a d e f g h : ℝ) : ℝ :=
  coeff01 a d (w0 a d e f g h) (w1 a d e f g h) (den a d e f g h) (jump a d e f g h) (l0 a d e f g h) (l1 a d e f g h) (l2 a d e f g h) (mix a d e f g h) (z00 a d e f g h) (z01 a d e f g h) (z02 a d e f g h) (z10 a d e f g h) (z11 a d e f g h) (z12 a d e f g h) (z20 a d e f g h) (z21 a d e f g h) (z22 a d e f g h)

def actual02 (a d e f g h : ℝ) : ℝ :=
  coeff02 a d (w0 a d e f g h) (w1 a d e f g h) (den a d e f g h) (jump a d e f g h) (l0 a d e f g h) (l1 a d e f g h) (l2 a d e f g h) (mix a d e f g h) (z00 a d e f g h) (z01 a d e f g h) (z02 a d e f g h) (z10 a d e f g h) (z11 a d e f g h) (z12 a d e f g h) (z20 a d e f g h) (z21 a d e f g h) (z22 a d e f g h)

def actual10 (a d e f g h : ℝ) : ℝ :=
  coeff10 a d (w0 a d e f g h) (w1 a d e f g h) (den a d e f g h) (jump a d e f g h) (l0 a d e f g h) (l1 a d e f g h) (l2 a d e f g h) (mix a d e f g h) (z00 a d e f g h) (z01 a d e f g h) (z02 a d e f g h) (z10 a d e f g h) (z11 a d e f g h) (z12 a d e f g h) (z20 a d e f g h) (z21 a d e f g h) (z22 a d e f g h)

def actual11 (a d e f g h : ℝ) : ℝ :=
  coeff11 a d (w0 a d e f g h) (w1 a d e f g h) (den a d e f g h) (jump a d e f g h) (l0 a d e f g h) (l1 a d e f g h) (l2 a d e f g h) (mix a d e f g h) (z00 a d e f g h) (z01 a d e f g h) (z02 a d e f g h) (z10 a d e f g h) (z11 a d e f g h) (z12 a d e f g h) (z20 a d e f g h) (z21 a d e f g h) (z22 a d e f g h)

def actual12 (a d e f g h : ℝ) : ℝ :=
  coeff12 a d (w0 a d e f g h) (w1 a d e f g h) (den a d e f g h) (jump a d e f g h) (l0 a d e f g h) (l1 a d e f g h) (l2 a d e f g h) (mix a d e f g h) (z00 a d e f g h) (z01 a d e f g h) (z02 a d e f g h) (z10 a d e f g h) (z11 a d e f g h) (z12 a d e f g h) (z20 a d e f g h) (z21 a d e f g h) (z22 a d e f g h)

def actual20 (a d e f g h : ℝ) : ℝ :=
  coeff20 a d (w0 a d e f g h) (w1 a d e f g h) (den a d e f g h) (jump a d e f g h) (l0 a d e f g h) (l1 a d e f g h) (l2 a d e f g h) (mix a d e f g h) (z00 a d e f g h) (z01 a d e f g h) (z02 a d e f g h) (z10 a d e f g h) (z11 a d e f g h) (z12 a d e f g h) (z20 a d e f g h) (z21 a d e f g h) (z22 a d e f g h)

def actual21 (a d e f g h : ℝ) : ℝ :=
  coeff21 a d (w0 a d e f g h) (w1 a d e f g h) (den a d e f g h) (jump a d e f g h) (l0 a d e f g h) (l1 a d e f g h) (l2 a d e f g h) (mix a d e f g h) (z00 a d e f g h) (z01 a d e f g h) (z02 a d e f g h) (z10 a d e f g h) (z11 a d e f g h) (z12 a d e f g h) (z20 a d e f g h) (z21 a d e f g h) (z22 a d e f g h)

def actual22 (a d e f g h : ℝ) : ℝ :=
  coeff22 a d (w0 a d e f g h) (w1 a d e f g h) (den a d e f g h) (jump a d e f g h) (l0 a d e f g h) (l1 a d e f g h) (l2 a d e f g h) (mix a d e f g h) (z00 a d e f g h) (z01 a d e f g h) (z02 a d e f g h) (z10 a d e f g h) (z11 a d e f g h) (z12 a d e f g h) (z20 a d e f g h) (z21 a d e f g h) (z22 a d e f g h)

def actual30 (a d e f g h : ℝ) : ℝ :=
  coeff30 a d (w0 a d e f g h) (w1 a d e f g h) (den a d e f g h) (jump a d e f g h) (l0 a d e f g h) (l1 a d e f g h) (l2 a d e f g h) (mix a d e f g h) (z00 a d e f g h) (z01 a d e f g h) (z02 a d e f g h) (z10 a d e f g h) (z11 a d e f g h) (z12 a d e f g h) (z20 a d e f g h) (z21 a d e f g h) (z22 a d e f g h)

def actual31 (a d e f g h : ℝ) : ℝ :=
  coeff31 a d (w0 a d e f g h) (w1 a d e f g h) (den a d e f g h) (jump a d e f g h) (l0 a d e f g h) (l1 a d e f g h) (l2 a d e f g h) (mix a d e f g h) (z00 a d e f g h) (z01 a d e f g h) (z02 a d e f g h) (z10 a d e f g h) (z11 a d e f g h) (z12 a d e f g h) (z20 a d e f g h) (z21 a d e f g h) (z22 a d e f g h)

def actual32 (a d e f g h : ℝ) : ℝ :=
  coeff32 a d (w0 a d e f g h) (w1 a d e f g h) (den a d e f g h) (jump a d e f g h) (l0 a d e f g h) (l1 a d e f g h) (l2 a d e f g h) (mix a d e f g h) (z00 a d e f g h) (z01 a d e f g h) (z02 a d e f g h) (z10 a d e f g h) (z11 a d e f g h) (z12 a d e f g h) (z20 a d e f g h) (z21 a d e f g h) (z22 a d e f g h)

def actual40 (a d e f g h : ℝ) : ℝ :=
  coeff40 a d (w0 a d e f g h) (w1 a d e f g h) (den a d e f g h) (jump a d e f g h) (l0 a d e f g h) (l1 a d e f g h) (l2 a d e f g h) (mix a d e f g h) (z00 a d e f g h) (z01 a d e f g h) (z02 a d e f g h) (z10 a d e f g h) (z11 a d e f g h) (z12 a d e f g h) (z20 a d e f g h) (z21 a d e f g h) (z22 a d e f g h)

def actual41 (a d e f g h : ℝ) : ℝ :=
  coeff41 a d (w0 a d e f g h) (w1 a d e f g h) (den a d e f g h) (jump a d e f g h) (l0 a d e f g h) (l1 a d e f g h) (l2 a d e f g h) (mix a d e f g h) (z00 a d e f g h) (z01 a d e f g h) (z02 a d e f g h) (z10 a d e f g h) (z11 a d e f g h) (z12 a d e f g h) (z20 a d e f g h) (z21 a d e f g h) (z22 a d e f g h)

def actual42 (a d e f g h : ℝ) : ℝ :=
  coeff42 a d (w0 a d e f g h) (w1 a d e f g h) (den a d e f g h) (jump a d e f g h) (l0 a d e f g h) (l1 a d e f g h) (l2 a d e f g h) (mix a d e f g h) (z00 a d e f g h) (z01 a d e f g h) (z02 a d e f g h) (z10 a d e f g h) (z11 a d e f g h) (z12 a d e f g h) (z20 a d e f g h) (z21 a d e f g h) (z22 a d e f g h)

end
end SPR.N6.FirstBand
