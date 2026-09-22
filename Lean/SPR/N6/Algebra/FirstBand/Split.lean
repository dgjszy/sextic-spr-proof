import SPR.N6.Algebra.FirstBand.Core

/-!
# Degree-three decomposition in the first outer root

Splitting the parameter identity into its four a-coefficients bounds kernel
normalization. This is a polynomial identity, not a sampled argument.
-/
namespace SPR.N6.FirstBand.Split
noncomputable section
set_option maxRecDepth 8192

def l0a (d e f g h : ℝ) : ℝ :=
  (d * (d + e) * (f + g + h) * (e + f + g + h))

def l1c (d e f g h : ℝ) : ℝ :=
  (-1 * (d ^ 2) * (d + e) * (d + e + f) * (d + e + f + g))

def l1a (d e f g h : ℝ) : ℝ :=
  ((d * (d + e + f) * (d + e + f + g) * (f + g + h + (-1 * d))) + (-1 * d * (e + (2 * d)) * (f +
    g + h) * (e + f + g + h)))

def l2c (d e f g h : ℝ) : ℝ :=
  ((d ^ 2) * (d + e + f) * (d + e + f + g) * (d + e + f + g + h))

def l2a (d e f g h : ℝ) : ℝ :=
  ((d ^ 2) * (((d + e + f) * (d + e + f + g)) + ((f + g + h) * (e + f + g + h))))

def hc (d e f g h : ℝ) : ℝ :=
  ((((d * (d + e)) + ((g + (2 * d) + (2 * e) + (2 * f)) * (d + e + f + g + h))) * (d + e + f) *
    (d + e + f + g)) + ((d + e + f) * (f + g + h) * (d + e + f + g) * (e + f + g + h)))

def ha (d e f g h : ℝ) : ℝ :=
  (((d + e + f) * (d + e + f + g) * ((2 * h) + (3 * g) + (4 * f) + (5 * e) + (6 * d))) + ((f + g
    + h) * (e + f + g + h) * (g + (2 * f) + (3 * e) + (4 * d))))

def haa (d e f g h : ℝ) : ℝ :=
  ((3 * (d + e + f) * (d + e + f + g)) + (3 * (f + g + h) * (e + f + g + h)))

/-- The actual residual and mixing scalars have the displayed low degree in a. -/
theorem scalar_decomposition (a d e f g h : ℝ) :
    l0 a d e f g h = a*l0a d e f g h ∧
    l1 a d e f g h = l1c d e f g h+a*l1a d e f g h ∧
    l2 a d e f g h = l2c d e f g h+a*l2a d e f g h ∧
    mix a d e f g h = hc d e f g h+a*ha d e f g h+a^2*haa d e f g h := by
  simp only [l0,l1,l2,mix,l0a,l1c,l1a,l2c,l2a,hc,ha,haa]
  refine ⟨?_,?_,?_,?_⟩ <;> ring

def block000 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  0

def block001 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * hc * r00 * (f ^ 2)) + (48 * hc * r01 * (f ^ 2)) + (48 * hc * r02 * (f ^ 2)) + (48 * D *
    wa * (d ^ 2) * (f ^ 2)) + (48 * D * wb * (d ^ 2) * (f ^ 2)) + (48 * l0a * wa * (J ^ 2) * (f
    ^ 2)) + (48 * l0a * wb * (J ^ 2) * (f ^ 2)))

def block002 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * ha * r00 * (f ^ 2)) + (48 * ha * r01 * (f ^ 2)) + (48 * ha * r02 * (f ^ 2)))

def block003 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * haa * r00 * (f ^ 2)) + (48 * haa * r01 * (f ^ 2)) + (48 * haa * r02 * (f ^ 2)))

/-- Finite symbolic decomposition with scalar coefficients held abstract. -/
theorem decompose00 (a d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) :
    2*f^2*(coeff00 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22+coeff01 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22+coeff02 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22) =
      block000 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a*block001 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^2*block002 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^3*block003 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 := by
  unfold coeff00 coeff01 coeff02 block000 block001 block002 block003
  ring

def block010 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  0

def block011 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * hc * r00 * (f ^ 2)) + (48 * hc * r01 * (f ^ 2)) + (48 * hc * r02 * (f ^ 2)) + (24 * e *
    f * hc * r01) + (24 * f * g * hc * r01) + (48 * D * wa * (d ^ 2) * (f ^ 2)) + (48 * D * wb *
    (d ^ 2) * (f ^ 2)) + (48 * e * f * hc * r02) + (48 * f * g * hc * r02) + (48 * l0a * wa * (J
    ^ 2) * (f ^ 2)) + (48 * l0a * wb * (J ^ 2) * (f ^ 2)) + (24 * D * e * f * wb * (d ^ 2)) +
    (24 * D * f * g * wb * (d ^ 2)) + (24 * e * f * l0a * wa * (J ^ 2)) + (24 * f * g * l0a * wa
    * (J ^ 2)) + (48 * e * f * l0a * wb * (J ^ 2)) + (48 * f * g * l0a * wb * (J ^ 2)))

def block012 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * ha * r00 * (f ^ 2)) + (48 * ha * r01 * (f ^ 2)) + (48 * ha * r02 * (f ^ 2)) + (24 * e *
    f * ha * r01) + (24 * f * g * ha * r01) + (48 * e * f * ha * r02) + (48 * f * g * ha * r02))

def block013 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * haa * r00 * (f ^ 2)) + (48 * haa * r01 * (f ^ 2)) + (48 * haa * r02 * (f ^ 2)) + (24 *
    e * f * haa * r01) + (24 * f * g * haa * r01) + (48 * e * f * haa * r02) + (48 * f * g * haa
    * r02))

/-- Finite symbolic decomposition with scalar coefficients held abstract. -/
theorem decompose01 (a d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) :
    2*f^2*(coeff00 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+f*(e+2*f+g)*(coeff01 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+2*f*(e+f+g)*(coeff02 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22) =
      block010 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a*block011 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^2*block012 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^3*block013 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 := by
  unfold coeff00 coeff01 coeff02 block010 block011 block012 block013
  ring

def block020 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  0

def block021 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * hc * r00 * (f ^ 2)) + (48 * hc * r01 * (f ^ 2)) + (48 * hc * r02 * (e ^ 2)) + (48 * hc
    * r02 * (f ^ 2)) + (48 * hc * r02 * (g ^ 2)) + (48 * D * wa * (d ^ 2) * (f ^ 2)) + (48 * D *
    wb * (d ^ 2) * (f ^ 2)) + (48 * e * f * hc * r01) + (48 * f * g * hc * r01) + (48 * l0a * wa
    * (J ^ 2) * (f ^ 2)) + (48 * l0a * wb * (J ^ 2) * (e ^ 2)) + (48 * l0a * wb * (J ^ 2) * (f ^
    2)) + (48 * l0a * wb * (J ^ 2) * (g ^ 2)) + (96 * e * f * hc * r02) + (96 * e * g * hc *
    r02) + (96 * f * g * hc * r02) + (48 * D * e * f * wb * (d ^ 2)) + (48 * D * f * g * wb * (d
    ^ 2)) + (48 * e * f * l0a * wa * (J ^ 2)) + (48 * f * g * l0a * wa * (J ^ 2)) + (96 * e * f
    * l0a * wb * (J ^ 2)) + (96 * e * g * l0a * wb * (J ^ 2)) + (96 * f * g * l0a * wb * (J ^
    2)))

def block022 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * ha * r00 * (f ^ 2)) + (48 * ha * r01 * (f ^ 2)) + (48 * ha * r02 * (e ^ 2)) + (48 * ha
    * r02 * (f ^ 2)) + (48 * ha * r02 * (g ^ 2)) + (48 * e * f * ha * r01) + (48 * f * g * ha *
    r01) + (96 * e * f * ha * r02) + (96 * e * g * ha * r02) + (96 * f * g * ha * r02))

def block023 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * haa * r00 * (f ^ 2)) + (48 * haa * r01 * (f ^ 2)) + (48 * haa * r02 * (e ^ 2)) + (48 *
    haa * r02 * (f ^ 2)) + (48 * haa * r02 * (g ^ 2)) + (48 * e * f * haa * r01) + (48 * f * g *
    haa * r01) + (96 * e * f * haa * r02) + (96 * e * g * haa * r02) + (96 * f * g * haa * r02))

/-- Finite symbolic decomposition with scalar coefficients held abstract. -/
theorem decompose02 (a d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) :
    2*(f^2*(coeff00 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+f*(e+f+g)*(coeff01 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+(e+f+g)^2*(coeff02 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)) =
      block020 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a*block021 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^2*block022 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^3*block023 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 := by
  unfold coeff00 coeff01 coeff02 block020 block021 block022 block023
  ring

def block100 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((12 * D * wa * (d ^ 3) * (f ^ 2)) + (12 * D * wb * (d ^ 3) * (f ^ 2)) + (12 * d * hc * r00 *
    (f ^ 2)) + (12 * d * hc * r01 * (f ^ 2)) + (12 * d * hc * r02 * (f ^ 2)) + (12 * l1c * wa *
    (J ^ 2) * (f ^ 2)) + (12 * l1c * wb * (J ^ 2) * (f ^ 2)))

def block101 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((12 * hc * r10 * (f ^ 2)) + (12 * hc * r11 * (f ^ 2)) + (12 * hc * r12 * (f ^ 2)) + (48 * hc
    * r00 * (f ^ 2)) + (48 * hc * r01 * (f ^ 2)) + (48 * hc * r02 * (f ^ 2)) + (12 * d * ha *
    r00 * (f ^ 2)) + (12 * d * ha * r01 * (f ^ 2)) + (12 * d * ha * r02 * (f ^ 2)) + (12 * l1a *
    wa * (J ^ 2) * (f ^ 2)) + (12 * l1a * wb * (J ^ 2) * (f ^ 2)) + (24 * D * wa * (d ^ 2) * (f
    ^ 2)) + (24 * D * wb * (d ^ 2) * (f ^ 2)) + (48 * l0a * wa * (J ^ 2) * (f ^ 2)) + (48 * l0a
    * wb * (J ^ 2) * (f ^ 2)) + (-24 * J * d * l0a * wa * (f ^ 2)) + (-24 * J * d * l0a * wb *
    (f ^ 2)))

def block102 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((12 * ha * r10 * (f ^ 2)) + (12 * ha * r11 * (f ^ 2)) + (12 * ha * r12 * (f ^ 2)) + (48 * ha
    * r00 * (f ^ 2)) + (48 * ha * r01 * (f ^ 2)) + (48 * ha * r02 * (f ^ 2)) + (12 * d * haa *
    r00 * (f ^ 2)) + (12 * d * haa * r01 * (f ^ 2)) + (12 * d * haa * r02 * (f ^ 2)))

def block103 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((12 * haa * r10 * (f ^ 2)) + (12 * haa * r11 * (f ^ 2)) + (12 * haa * r12 * (f ^ 2)) + (48 *
    haa * r00 * (f ^ 2)) + (48 * haa * r01 * (f ^ 2)) + (48 * haa * r02 * (f ^ 2)))

/-- Finite symbolic decomposition with scalar coefficients held abstract. -/
theorem decompose10 (a d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) :
    2*f^2*(coeff10 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22+coeff11 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22+coeff12 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22) =
      block100 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a*block101 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^2*block102 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^3*block103 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 := by
  unfold coeff10 coeff11 coeff12 block100 block101 block102 block103
  ring

def block110 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((12 * D * wa * (d ^ 3) * (f ^ 2)) + (12 * D * wb * (d ^ 3) * (f ^ 2)) + (12 * d * hc * r00 *
    (f ^ 2)) + (12 * d * hc * r01 * (f ^ 2)) + (12 * d * hc * r02 * (f ^ 2)) + (12 * l1c * wa *
    (J ^ 2) * (f ^ 2)) + (12 * l1c * wb * (J ^ 2) * (f ^ 2)) + (6 * D * e * f * wb * (d ^ 3)) +
    (6 * D * f * g * wb * (d ^ 3)) + (6 * d * e * f * hc * r01) + (6 * d * f * g * hc * r01) +
    (6 * e * f * l1c * wa * (J ^ 2)) + (6 * f * g * l1c * wa * (J ^ 2)) + (12 * d * e * f * hc *
    r02) + (12 * d * f * g * hc * r02) + (12 * e * f * l1c * wb * (J ^ 2)) + (12 * f * g * l1c *
    wb * (J ^ 2)))

def block111 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((12 * hc * r10 * (f ^ 2)) + (12 * hc * r11 * (f ^ 2)) + (12 * hc * r12 * (f ^ 2)) + (48 * hc
    * r00 * (f ^ 2)) + (48 * hc * r01 * (f ^ 2)) + (48 * hc * r02 * (f ^ 2)) + (6 * e * f * hc *
    r11) + (6 * f * g * hc * r11) + (12 * d * ha * r00 * (f ^ 2)) + (12 * d * ha * r01 * (f ^
    2)) + (12 * d * ha * r02 * (f ^ 2)) + (12 * e * f * hc * r12) + (12 * f * g * hc * r12) +
    (12 * l1a * wa * (J ^ 2) * (f ^ 2)) + (12 * l1a * wb * (J ^ 2) * (f ^ 2)) + (24 * D * wa *
    (d ^ 2) * (f ^ 2)) + (24 * D * wb * (d ^ 2) * (f ^ 2)) + (24 * e * f * hc * r01) + (24 * f *
    g * hc * r01) + (48 * e * f * hc * r02) + (48 * f * g * hc * r02) + (48 * l0a * wa * (J ^ 2)
    * (f ^ 2)) + (48 * l0a * wb * (J ^ 2) * (f ^ 2)) + (-24 * J * d * l0a * wa * (f ^ 2)) + (-24
    * J * d * l0a * wb * (f ^ 2)) + (6 * d * e * f * ha * r01) + (6 * d * f * g * ha * r01) + (6
    * e * f * l1a * wa * (J ^ 2)) + (6 * f * g * l1a * wa * (J ^ 2)) + (12 * D * e * f * wb * (d
    ^ 2)) + (12 * D * f * g * wb * (d ^ 2)) + (12 * d * e * f * ha * r02) + (12 * d * f * g * ha
    * r02) + (12 * e * f * l1a * wb * (J ^ 2)) + (12 * f * g * l1a * wb * (J ^ 2)) + (24 * e * f
    * l0a * wa * (J ^ 2)) + (24 * f * g * l0a * wa * (J ^ 2)) + (48 * e * f * l0a * wb * (J ^
    2)) + (48 * f * g * l0a * wb * (J ^ 2)) + (-24 * J * d * e * f * l0a * wb) + (-24 * J * d *
    f * g * l0a * wb) + (-12 * J * d * e * f * l0a * wa) + (-12 * J * d * f * g * l0a * wa))

def block112 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((12 * ha * r10 * (f ^ 2)) + (12 * ha * r11 * (f ^ 2)) + (12 * ha * r12 * (f ^ 2)) + (48 * ha
    * r00 * (f ^ 2)) + (48 * ha * r01 * (f ^ 2)) + (48 * ha * r02 * (f ^ 2)) + (6 * e * f * ha *
    r11) + (6 * f * g * ha * r11) + (12 * d * haa * r00 * (f ^ 2)) + (12 * d * haa * r01 * (f ^
    2)) + (12 * d * haa * r02 * (f ^ 2)) + (12 * e * f * ha * r12) + (12 * f * g * ha * r12) +
    (24 * e * f * ha * r01) + (24 * f * g * ha * r01) + (48 * e * f * ha * r02) + (48 * f * g *
    ha * r02) + (6 * d * e * f * haa * r01) + (6 * d * f * g * haa * r01) + (12 * d * e * f *
    haa * r02) + (12 * d * f * g * haa * r02))

def block113 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((12 * haa * r10 * (f ^ 2)) + (12 * haa * r11 * (f ^ 2)) + (12 * haa * r12 * (f ^ 2)) + (48 *
    haa * r00 * (f ^ 2)) + (48 * haa * r01 * (f ^ 2)) + (48 * haa * r02 * (f ^ 2)) + (6 * e * f
    * haa * r11) + (6 * f * g * haa * r11) + (12 * e * f * haa * r12) + (12 * f * g * haa * r12)
    + (24 * e * f * haa * r01) + (24 * f * g * haa * r01) + (48 * e * f * haa * r02) + (48 * f *
    g * haa * r02))

/-- Finite symbolic decomposition with scalar coefficients held abstract. -/
theorem decompose11 (a d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) :
    2*f^2*(coeff10 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+f*(e+2*f+g)*(coeff11 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+2*f*(e+f+g)*(coeff12 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22) =
      block110 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a*block111 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^2*block112 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^3*block113 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 := by
  unfold coeff10 coeff11 coeff12 block110 block111 block112 block113
  ring

def block120 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((12 * D * wa * (d ^ 3) * (f ^ 2)) + (12 * D * wb * (d ^ 3) * (f ^ 2)) + (12 * d * hc * r00 *
    (f ^ 2)) + (12 * d * hc * r01 * (f ^ 2)) + (12 * d * hc * r02 * (e ^ 2)) + (12 * d * hc *
    r02 * (f ^ 2)) + (12 * d * hc * r02 * (g ^ 2)) + (12 * l1c * wa * (J ^ 2) * (f ^ 2)) + (12 *
    l1c * wb * (J ^ 2) * (e ^ 2)) + (12 * l1c * wb * (J ^ 2) * (f ^ 2)) + (12 * l1c * wb * (J ^
    2) * (g ^ 2)) + (12 * D * e * f * wb * (d ^ 3)) + (12 * D * f * g * wb * (d ^ 3)) + (12 * d
    * e * f * hc * r01) + (12 * d * f * g * hc * r01) + (12 * e * f * l1c * wa * (J ^ 2)) + (12
    * f * g * l1c * wa * (J ^ 2)) + (24 * d * e * f * hc * r02) + (24 * d * e * g * hc * r02) +
    (24 * d * f * g * hc * r02) + (24 * e * f * l1c * wb * (J ^ 2)) + (24 * e * g * l1c * wb *
    (J ^ 2)) + (24 * f * g * l1c * wb * (J ^ 2)))

def block121 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((12 * hc * r10 * (f ^ 2)) + (12 * hc * r11 * (f ^ 2)) + (12 * hc * r12 * (e ^ 2)) + (12 * hc
    * r12 * (f ^ 2)) + (12 * hc * r12 * (g ^ 2)) + (48 * hc * r00 * (f ^ 2)) + (48 * hc * r01 *
    (f ^ 2)) + (48 * hc * r02 * (e ^ 2)) + (48 * hc * r02 * (f ^ 2)) + (48 * hc * r02 * (g ^ 2))
    + (12 * d * ha * r00 * (f ^ 2)) + (12 * d * ha * r01 * (f ^ 2)) + (12 * d * ha * r02 * (e ^
    2)) + (12 * d * ha * r02 * (f ^ 2)) + (12 * d * ha * r02 * (g ^ 2)) + (12 * e * f * hc *
    r11) + (12 * f * g * hc * r11) + (12 * l1a * wa * (J ^ 2) * (f ^ 2)) + (12 * l1a * wb * (J ^
    2) * (e ^ 2)) + (12 * l1a * wb * (J ^ 2) * (f ^ 2)) + (12 * l1a * wb * (J ^ 2) * (g ^ 2)) +
    (24 * D * wa * (d ^ 2) * (f ^ 2)) + (24 * D * wb * (d ^ 2) * (f ^ 2)) + (24 * e * f * hc *
    r12) + (24 * e * g * hc * r12) + (24 * f * g * hc * r12) + (48 * e * f * hc * r01) + (48 * f
    * g * hc * r01) + (48 * l0a * wa * (J ^ 2) * (f ^ 2)) + (48 * l0a * wb * (J ^ 2) * (e ^ 2))
    + (48 * l0a * wb * (J ^ 2) * (f ^ 2)) + (48 * l0a * wb * (J ^ 2) * (g ^ 2)) + (96 * e * f *
    hc * r02) + (96 * e * g * hc * r02) + (96 * f * g * hc * r02) + (-24 * J * d * l0a * wa * (f
    ^ 2)) + (-24 * J * d * l0a * wb * (e ^ 2)) + (-24 * J * d * l0a * wb * (f ^ 2)) + (-24 * J *
    d * l0a * wb * (g ^ 2)) + (12 * d * e * f * ha * r01) + (12 * d * f * g * ha * r01) + (12 *
    e * f * l1a * wa * (J ^ 2)) + (12 * f * g * l1a * wa * (J ^ 2)) + (24 * D * e * f * wb * (d
    ^ 2)) + (24 * D * f * g * wb * (d ^ 2)) + (24 * d * e * f * ha * r02) + (24 * d * e * g * ha
    * r02) + (24 * d * f * g * ha * r02) + (24 * e * f * l1a * wb * (J ^ 2)) + (24 * e * g * l1a
    * wb * (J ^ 2)) + (24 * f * g * l1a * wb * (J ^ 2)) + (48 * e * f * l0a * wa * (J ^ 2)) +
    (48 * f * g * l0a * wa * (J ^ 2)) + (96 * e * f * l0a * wb * (J ^ 2)) + (96 * e * g * l0a *
    wb * (J ^ 2)) + (96 * f * g * l0a * wb * (J ^ 2)) + (-48 * J * d * e * f * l0a * wb) + (-48
    * J * d * e * g * l0a * wb) + (-48 * J * d * f * g * l0a * wb) + (-24 * J * d * e * f * l0a
    * wa) + (-24 * J * d * f * g * l0a * wa))

def block122 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((12 * ha * r10 * (f ^ 2)) + (12 * ha * r11 * (f ^ 2)) + (12 * ha * r12 * (e ^ 2)) + (12 * ha
    * r12 * (f ^ 2)) + (12 * ha * r12 * (g ^ 2)) + (48 * ha * r00 * (f ^ 2)) + (48 * ha * r01 *
    (f ^ 2)) + (48 * ha * r02 * (e ^ 2)) + (48 * ha * r02 * (f ^ 2)) + (48 * ha * r02 * (g ^ 2))
    + (12 * d * haa * r00 * (f ^ 2)) + (12 * d * haa * r01 * (f ^ 2)) + (12 * d * haa * r02 * (e
    ^ 2)) + (12 * d * haa * r02 * (f ^ 2)) + (12 * d * haa * r02 * (g ^ 2)) + (12 * e * f * ha *
    r11) + (12 * f * g * ha * r11) + (24 * e * f * ha * r12) + (24 * e * g * ha * r12) + (24 * f
    * g * ha * r12) + (48 * e * f * ha * r01) + (48 * f * g * ha * r01) + (96 * e * f * ha *
    r02) + (96 * e * g * ha * r02) + (96 * f * g * ha * r02) + (12 * d * e * f * haa * r01) +
    (12 * d * f * g * haa * r01) + (24 * d * e * f * haa * r02) + (24 * d * e * g * haa * r02) +
    (24 * d * f * g * haa * r02))

def block123 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((12 * haa * r10 * (f ^ 2)) + (12 * haa * r11 * (f ^ 2)) + (12 * haa * r12 * (e ^ 2)) + (12 *
    haa * r12 * (f ^ 2)) + (12 * haa * r12 * (g ^ 2)) + (48 * haa * r00 * (f ^ 2)) + (48 * haa *
    r01 * (f ^ 2)) + (48 * haa * r02 * (e ^ 2)) + (48 * haa * r02 * (f ^ 2)) + (48 * haa * r02 *
    (g ^ 2)) + (12 * e * f * haa * r11) + (12 * f * g * haa * r11) + (24 * e * f * haa * r12) +
    (24 * e * g * haa * r12) + (24 * f * g * haa * r12) + (48 * e * f * haa * r01) + (48 * f * g
    * haa * r01) + (96 * e * f * haa * r02) + (96 * e * g * haa * r02) + (96 * f * g * haa *
    r02))

/-- Finite symbolic decomposition with scalar coefficients held abstract. -/
theorem decompose12 (a d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) :
    2*(f^2*(coeff10 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+f*(e+f+g)*(coeff11 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+(e+f+g)^2*(coeff12 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)) =
      block120 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a*block121 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^2*block122 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^3*block123 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 := by
  unfold coeff10 coeff11 coeff12 block120 block121 block122 block123
  ring

def block200 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((8 * D * wa * (d ^ 3) * (f ^ 2)) + (8 * D * wb * (d ^ 3) * (f ^ 2)) + (8 * d * hc * r10 * (f
    ^ 2)) + (8 * d * hc * r11 * (f ^ 2)) + (8 * d * hc * r12 * (f ^ 2)) + (8 * l2c * wa * (J ^
    2) * (f ^ 2)) + (8 * l2c * wb * (J ^ 2) * (f ^ 2)) + (24 * d * hc * r00 * (f ^ 2)) + (24 * d
    * hc * r01 * (f ^ 2)) + (24 * d * hc * r02 * (f ^ 2)) + (24 * l1c * wa * (J ^ 2) * (f ^ 2))
    + (24 * l1c * wb * (J ^ 2) * (f ^ 2)) + (-16 * J * d * l1c * wa * (f ^ 2)) + (-16 * J * d *
    l1c * wb * (f ^ 2)))

def block201 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((8 * hc * r20 * (f ^ 2)) + (8 * hc * r21 * (f ^ 2)) + (8 * hc * r22 * (f ^ 2)) + (24 * hc *
    r10 * (f ^ 2)) + (24 * hc * r11 * (f ^ 2)) + (24 * hc * r12 * (f ^ 2)) + (48 * hc * r00 * (f
    ^ 2)) + (48 * hc * r01 * (f ^ 2)) + (48 * hc * r02 * (f ^ 2)) + (8 * D * wa * (d ^ 2) * (f ^
    2)) + (8 * D * wb * (d ^ 2) * (f ^ 2)) + (8 * d * ha * r10 * (f ^ 2)) + (8 * d * ha * r11 *
    (f ^ 2)) + (8 * d * ha * r12 * (f ^ 2)) + (8 * l0a * wa * (d ^ 2) * (f ^ 2)) + (8 * l0a * wb
    * (d ^ 2) * (f ^ 2)) + (8 * l2a * wa * (J ^ 2) * (f ^ 2)) + (8 * l2a * wb * (J ^ 2) * (f ^
    2)) + (24 * d * ha * r00 * (f ^ 2)) + (24 * d * ha * r01 * (f ^ 2)) + (24 * d * ha * r02 *
    (f ^ 2)) + (24 * l1a * wa * (J ^ 2) * (f ^ 2)) + (24 * l1a * wb * (J ^ 2) * (f ^ 2)) + (48 *
    l0a * wa * (J ^ 2) * (f ^ 2)) + (48 * l0a * wb * (J ^ 2) * (f ^ 2)) + (-48 * J * d * l0a *
    wa * (f ^ 2)) + (-48 * J * d * l0a * wb * (f ^ 2)) + (-16 * J * d * l1a * wa * (f ^ 2)) +
    (-16 * J * d * l1a * wb * (f ^ 2)))

def block202 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((8 * ha * r20 * (f ^ 2)) + (8 * ha * r21 * (f ^ 2)) + (8 * ha * r22 * (f ^ 2)) + (24 * ha *
    r10 * (f ^ 2)) + (24 * ha * r11 * (f ^ 2)) + (24 * ha * r12 * (f ^ 2)) + (48 * ha * r00 * (f
    ^ 2)) + (48 * ha * r01 * (f ^ 2)) + (48 * ha * r02 * (f ^ 2)) + (8 * d * haa * r10 * (f ^
    2)) + (8 * d * haa * r11 * (f ^ 2)) + (8 * d * haa * r12 * (f ^ 2)) + (24 * d * haa * r00 *
    (f ^ 2)) + (24 * d * haa * r01 * (f ^ 2)) + (24 * d * haa * r02 * (f ^ 2)))

def block203 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((8 * haa * r20 * (f ^ 2)) + (8 * haa * r21 * (f ^ 2)) + (8 * haa * r22 * (f ^ 2)) + (24 * haa
    * r10 * (f ^ 2)) + (24 * haa * r11 * (f ^ 2)) + (24 * haa * r12 * (f ^ 2)) + (48 * haa * r00
    * (f ^ 2)) + (48 * haa * r01 * (f ^ 2)) + (48 * haa * r02 * (f ^ 2)))

/-- Finite symbolic decomposition with scalar coefficients held abstract. -/
theorem decompose20 (a d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) :
    2*f^2*(coeff20 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22+coeff21 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22+coeff22 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22) =
      block200 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a*block201 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^2*block202 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^3*block203 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 := by
  unfold coeff20 coeff21 coeff22 block200 block201 block202 block203
  ring

def block210 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((8 * D * wa * (d ^ 3) * (f ^ 2)) + (8 * D * wb * (d ^ 3) * (f ^ 2)) + (8 * d * hc * r10 * (f
    ^ 2)) + (8 * d * hc * r11 * (f ^ 2)) + (8 * d * hc * r12 * (f ^ 2)) + (8 * l2c * wa * (J ^
    2) * (f ^ 2)) + (8 * l2c * wb * (J ^ 2) * (f ^ 2)) + (24 * d * hc * r00 * (f ^ 2)) + (24 * d
    * hc * r01 * (f ^ 2)) + (24 * d * hc * r02 * (f ^ 2)) + (24 * l1c * wa * (J ^ 2) * (f ^ 2))
    + (24 * l1c * wb * (J ^ 2) * (f ^ 2)) + (-16 * J * d * l1c * wa * (f ^ 2)) + (-16 * J * d *
    l1c * wb * (f ^ 2)) + (4 * D * e * f * wb * (d ^ 3)) + (4 * D * f * g * wb * (d ^ 3)) + (4 *
    d * e * f * hc * r11) + (4 * d * f * g * hc * r11) + (4 * e * f * l2c * wa * (J ^ 2)) + (4 *
    f * g * l2c * wa * (J ^ 2)) + (8 * d * e * f * hc * r12) + (8 * d * f * g * hc * r12) + (8 *
    e * f * l2c * wb * (J ^ 2)) + (8 * f * g * l2c * wb * (J ^ 2)) + (12 * d * e * f * hc * r01)
    + (12 * d * f * g * hc * r01) + (12 * e * f * l1c * wa * (J ^ 2)) + (12 * f * g * l1c * wa *
    (J ^ 2)) + (24 * d * e * f * hc * r02) + (24 * d * f * g * hc * r02) + (24 * e * f * l1c *
    wb * (J ^ 2)) + (24 * f * g * l1c * wb * (J ^ 2)) + (-16 * J * d * e * f * l1c * wb) + (-16
    * J * d * f * g * l1c * wb) + (-8 * J * d * e * f * l1c * wa) + (-8 * J * d * f * g * l1c *
    wa))

def block211 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((8 * hc * r20 * (f ^ 2)) + (8 * hc * r21 * (f ^ 2)) + (8 * hc * r22 * (f ^ 2)) + (24 * hc *
    r10 * (f ^ 2)) + (24 * hc * r11 * (f ^ 2)) + (24 * hc * r12 * (f ^ 2)) + (48 * hc * r00 * (f
    ^ 2)) + (48 * hc * r01 * (f ^ 2)) + (48 * hc * r02 * (f ^ 2)) + (4 * e * f * hc * r21) + (4
    * f * g * hc * r21) + (8 * D * wa * (d ^ 2) * (f ^ 2)) + (8 * D * wb * (d ^ 2) * (f ^ 2)) +
    (8 * d * ha * r10 * (f ^ 2)) + (8 * d * ha * r11 * (f ^ 2)) + (8 * d * ha * r12 * (f ^ 2)) +
    (8 * e * f * hc * r22) + (8 * f * g * hc * r22) + (8 * l0a * wa * (d ^ 2) * (f ^ 2)) + (8 *
    l0a * wb * (d ^ 2) * (f ^ 2)) + (8 * l2a * wa * (J ^ 2) * (f ^ 2)) + (8 * l2a * wb * (J ^ 2)
    * (f ^ 2)) + (12 * e * f * hc * r11) + (12 * f * g * hc * r11) + (24 * d * ha * r00 * (f ^
    2)) + (24 * d * ha * r01 * (f ^ 2)) + (24 * d * ha * r02 * (f ^ 2)) + (24 * e * f * hc *
    r01) + (24 * e * f * hc * r12) + (24 * f * g * hc * r01) + (24 * f * g * hc * r12) + (24 *
    l1a * wa * (J ^ 2) * (f ^ 2)) + (24 * l1a * wb * (J ^ 2) * (f ^ 2)) + (48 * e * f * hc *
    r02) + (48 * f * g * hc * r02) + (48 * l0a * wa * (J ^ 2) * (f ^ 2)) + (48 * l0a * wb * (J ^
    2) * (f ^ 2)) + (-48 * J * d * l0a * wa * (f ^ 2)) + (-48 * J * d * l0a * wb * (f ^ 2)) +
    (-16 * J * d * l1a * wa * (f ^ 2)) + (-16 * J * d * l1a * wb * (f ^ 2)) + (4 * D * e * f *
    wb * (d ^ 2)) + (4 * D * f * g * wb * (d ^ 2)) + (4 * d * e * f * ha * r11) + (4 * d * f * g
    * ha * r11) + (4 * e * f * l0a * wa * (d ^ 2)) + (4 * e * f * l2a * wa * (J ^ 2)) + (4 * f *
    g * l0a * wa * (d ^ 2)) + (4 * f * g * l2a * wa * (J ^ 2)) + (8 * d * e * f * ha * r12) + (8
    * d * f * g * ha * r12) + (8 * e * f * l0a * wb * (d ^ 2)) + (8 * e * f * l2a * wb * (J ^
    2)) + (8 * f * g * l0a * wb * (d ^ 2)) + (8 * f * g * l2a * wb * (J ^ 2)) + (12 * d * e * f
    * ha * r01) + (12 * d * f * g * ha * r01) + (12 * e * f * l1a * wa * (J ^ 2)) + (12 * f * g
    * l1a * wa * (J ^ 2)) + (24 * d * e * f * ha * r02) + (24 * d * f * g * ha * r02) + (24 * e
    * f * l0a * wa * (J ^ 2)) + (24 * e * f * l1a * wb * (J ^ 2)) + (24 * f * g * l0a * wa * (J
    ^ 2)) + (24 * f * g * l1a * wb * (J ^ 2)) + (48 * e * f * l0a * wb * (J ^ 2)) + (48 * f * g
    * l0a * wb * (J ^ 2)) + (-48 * J * d * e * f * l0a * wb) + (-48 * J * d * f * g * l0a * wb)
    + (-24 * J * d * e * f * l0a * wa) + (-24 * J * d * f * g * l0a * wa) + (-16 * J * d * e * f
    * l1a * wb) + (-16 * J * d * f * g * l1a * wb) + (-8 * J * d * e * f * l1a * wa) + (-8 * J *
    d * f * g * l1a * wa))

def block212 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((8 * ha * r20 * (f ^ 2)) + (8 * ha * r21 * (f ^ 2)) + (8 * ha * r22 * (f ^ 2)) + (24 * ha *
    r10 * (f ^ 2)) + (24 * ha * r11 * (f ^ 2)) + (24 * ha * r12 * (f ^ 2)) + (48 * ha * r00 * (f
    ^ 2)) + (48 * ha * r01 * (f ^ 2)) + (48 * ha * r02 * (f ^ 2)) + (4 * e * f * ha * r21) + (4
    * f * g * ha * r21) + (8 * d * haa * r10 * (f ^ 2)) + (8 * d * haa * r11 * (f ^ 2)) + (8 * d
    * haa * r12 * (f ^ 2)) + (8 * e * f * ha * r22) + (8 * f * g * ha * r22) + (12 * e * f * ha
    * r11) + (12 * f * g * ha * r11) + (24 * d * haa * r00 * (f ^ 2)) + (24 * d * haa * r01 * (f
    ^ 2)) + (24 * d * haa * r02 * (f ^ 2)) + (24 * e * f * ha * r01) + (24 * e * f * ha * r12) +
    (24 * f * g * ha * r01) + (24 * f * g * ha * r12) + (48 * e * f * ha * r02) + (48 * f * g *
    ha * r02) + (4 * d * e * f * haa * r11) + (4 * d * f * g * haa * r11) + (8 * d * e * f * haa
    * r12) + (8 * d * f * g * haa * r12) + (12 * d * e * f * haa * r01) + (12 * d * f * g * haa
    * r01) + (24 * d * e * f * haa * r02) + (24 * d * f * g * haa * r02))

def block213 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((8 * haa * r20 * (f ^ 2)) + (8 * haa * r21 * (f ^ 2)) + (8 * haa * r22 * (f ^ 2)) + (24 * haa
    * r10 * (f ^ 2)) + (24 * haa * r11 * (f ^ 2)) + (24 * haa * r12 * (f ^ 2)) + (48 * haa * r00
    * (f ^ 2)) + (48 * haa * r01 * (f ^ 2)) + (48 * haa * r02 * (f ^ 2)) + (4 * e * f * haa *
    r21) + (4 * f * g * haa * r21) + (8 * e * f * haa * r22) + (8 * f * g * haa * r22) + (12 * e
    * f * haa * r11) + (12 * f * g * haa * r11) + (24 * e * f * haa * r01) + (24 * e * f * haa *
    r12) + (24 * f * g * haa * r01) + (24 * f * g * haa * r12) + (48 * e * f * haa * r02) + (48
    * f * g * haa * r02))

/-- Finite symbolic decomposition with scalar coefficients held abstract. -/
theorem decompose21 (a d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) :
    2*f^2*(coeff20 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+f*(e+2*f+g)*(coeff21 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+2*f*(e+f+g)*(coeff22 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22) =
      block210 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a*block211 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^2*block212 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^3*block213 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 := by
  unfold coeff20 coeff21 coeff22 block210 block211 block212 block213
  ring

def block220 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((8 * D * wa * (d ^ 3) * (f ^ 2)) + (8 * D * wb * (d ^ 3) * (f ^ 2)) + (8 * d * hc * r10 * (f
    ^ 2)) + (8 * d * hc * r11 * (f ^ 2)) + (8 * d * hc * r12 * (e ^ 2)) + (8 * d * hc * r12 * (f
    ^ 2)) + (8 * d * hc * r12 * (g ^ 2)) + (8 * l2c * wa * (J ^ 2) * (f ^ 2)) + (8 * l2c * wb *
    (J ^ 2) * (e ^ 2)) + (8 * l2c * wb * (J ^ 2) * (f ^ 2)) + (8 * l2c * wb * (J ^ 2) * (g ^ 2))
    + (24 * d * hc * r00 * (f ^ 2)) + (24 * d * hc * r01 * (f ^ 2)) + (24 * d * hc * r02 * (e ^
    2)) + (24 * d * hc * r02 * (f ^ 2)) + (24 * d * hc * r02 * (g ^ 2)) + (24 * l1c * wa * (J ^
    2) * (f ^ 2)) + (24 * l1c * wb * (J ^ 2) * (e ^ 2)) + (24 * l1c * wb * (J ^ 2) * (f ^ 2)) +
    (24 * l1c * wb * (J ^ 2) * (g ^ 2)) + (-16 * J * d * l1c * wa * (f ^ 2)) + (-16 * J * d *
    l1c * wb * (e ^ 2)) + (-16 * J * d * l1c * wb * (f ^ 2)) + (-16 * J * d * l1c * wb * (g ^
    2)) + (8 * D * e * f * wb * (d ^ 3)) + (8 * D * f * g * wb * (d ^ 3)) + (8 * d * e * f * hc
    * r11) + (8 * d * f * g * hc * r11) + (8 * e * f * l2c * wa * (J ^ 2)) + (8 * f * g * l2c *
    wa * (J ^ 2)) + (16 * d * e * f * hc * r12) + (16 * d * e * g * hc * r12) + (16 * d * f * g
    * hc * r12) + (16 * e * f * l2c * wb * (J ^ 2)) + (16 * e * g * l2c * wb * (J ^ 2)) + (16 *
    f * g * l2c * wb * (J ^ 2)) + (24 * d * e * f * hc * r01) + (24 * d * f * g * hc * r01) +
    (24 * e * f * l1c * wa * (J ^ 2)) + (24 * f * g * l1c * wa * (J ^ 2)) + (48 * d * e * f * hc
    * r02) + (48 * d * e * g * hc * r02) + (48 * d * f * g * hc * r02) + (48 * e * f * l1c * wb
    * (J ^ 2)) + (48 * e * g * l1c * wb * (J ^ 2)) + (48 * f * g * l1c * wb * (J ^ 2)) + (-32 *
    J * d * e * f * l1c * wb) + (-32 * J * d * e * g * l1c * wb) + (-32 * J * d * f * g * l1c *
    wb) + (-16 * J * d * e * f * l1c * wa) + (-16 * J * d * f * g * l1c * wa))

def block221 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((8 * hc * r20 * (f ^ 2)) + (8 * hc * r21 * (f ^ 2)) + (8 * hc * r22 * (e ^ 2)) + (8 * hc *
    r22 * (f ^ 2)) + (8 * hc * r22 * (g ^ 2)) + (24 * hc * r10 * (f ^ 2)) + (24 * hc * r11 * (f
    ^ 2)) + (24 * hc * r12 * (e ^ 2)) + (24 * hc * r12 * (f ^ 2)) + (24 * hc * r12 * (g ^ 2)) +
    (48 * hc * r00 * (f ^ 2)) + (48 * hc * r01 * (f ^ 2)) + (48 * hc * r02 * (e ^ 2)) + (48 * hc
    * r02 * (f ^ 2)) + (48 * hc * r02 * (g ^ 2)) + (8 * D * wa * (d ^ 2) * (f ^ 2)) + (8 * D *
    wb * (d ^ 2) * (f ^ 2)) + (8 * d * ha * r10 * (f ^ 2)) + (8 * d * ha * r11 * (f ^ 2)) + (8 *
    d * ha * r12 * (e ^ 2)) + (8 * d * ha * r12 * (f ^ 2)) + (8 * d * ha * r12 * (g ^ 2)) + (8 *
    e * f * hc * r21) + (8 * f * g * hc * r21) + (8 * l0a * wa * (d ^ 2) * (f ^ 2)) + (8 * l0a *
    wb * (d ^ 2) * (e ^ 2)) + (8 * l0a * wb * (d ^ 2) * (f ^ 2)) + (8 * l0a * wb * (d ^ 2) * (g
    ^ 2)) + (8 * l2a * wa * (J ^ 2) * (f ^ 2)) + (8 * l2a * wb * (J ^ 2) * (e ^ 2)) + (8 * l2a *
    wb * (J ^ 2) * (f ^ 2)) + (8 * l2a * wb * (J ^ 2) * (g ^ 2)) + (16 * e * f * hc * r22) + (16
    * e * g * hc * r22) + (16 * f * g * hc * r22) + (24 * d * ha * r00 * (f ^ 2)) + (24 * d * ha
    * r01 * (f ^ 2)) + (24 * d * ha * r02 * (e ^ 2)) + (24 * d * ha * r02 * (f ^ 2)) + (24 * d *
    ha * r02 * (g ^ 2)) + (24 * e * f * hc * r11) + (24 * f * g * hc * r11) + (24 * l1a * wa *
    (J ^ 2) * (f ^ 2)) + (24 * l1a * wb * (J ^ 2) * (e ^ 2)) + (24 * l1a * wb * (J ^ 2) * (f ^
    2)) + (24 * l1a * wb * (J ^ 2) * (g ^ 2)) + (48 * e * f * hc * r01) + (48 * e * f * hc *
    r12) + (48 * e * g * hc * r12) + (48 * f * g * hc * r01) + (48 * f * g * hc * r12) + (48 *
    l0a * wa * (J ^ 2) * (f ^ 2)) + (48 * l0a * wb * (J ^ 2) * (e ^ 2)) + (48 * l0a * wb * (J ^
    2) * (f ^ 2)) + (48 * l0a * wb * (J ^ 2) * (g ^ 2)) + (96 * e * f * hc * r02) + (96 * e * g
    * hc * r02) + (96 * f * g * hc * r02) + (-48 * J * d * l0a * wa * (f ^ 2)) + (-48 * J * d *
    l0a * wb * (e ^ 2)) + (-48 * J * d * l0a * wb * (f ^ 2)) + (-48 * J * d * l0a * wb * (g ^
    2)) + (-16 * J * d * l1a * wa * (f ^ 2)) + (-16 * J * d * l1a * wb * (e ^ 2)) + (-16 * J * d
    * l1a * wb * (f ^ 2)) + (-16 * J * d * l1a * wb * (g ^ 2)) + (8 * D * e * f * wb * (d ^ 2))
    + (8 * D * f * g * wb * (d ^ 2)) + (8 * d * e * f * ha * r11) + (8 * d * f * g * ha * r11) +
    (8 * e * f * l0a * wa * (d ^ 2)) + (8 * e * f * l2a * wa * (J ^ 2)) + (8 * f * g * l0a * wa
    * (d ^ 2)) + (8 * f * g * l2a * wa * (J ^ 2)) + (16 * d * e * f * ha * r12) + (16 * d * e *
    g * ha * r12) + (16 * d * f * g * ha * r12) + (16 * e * f * l0a * wb * (d ^ 2)) + (16 * e *
    f * l2a * wb * (J ^ 2)) + (16 * e * g * l0a * wb * (d ^ 2)) + (16 * e * g * l2a * wb * (J ^
    2)) + (16 * f * g * l0a * wb * (d ^ 2)) + (16 * f * g * l2a * wb * (J ^ 2)) + (24 * d * e *
    f * ha * r01) + (24 * d * f * g * ha * r01) + (24 * e * f * l1a * wa * (J ^ 2)) + (24 * f *
    g * l1a * wa * (J ^ 2)) + (48 * d * e * f * ha * r02) + (48 * d * e * g * ha * r02) + (48 *
    d * f * g * ha * r02) + (48 * e * f * l0a * wa * (J ^ 2)) + (48 * e * f * l1a * wb * (J ^
    2)) + (48 * e * g * l1a * wb * (J ^ 2)) + (48 * f * g * l0a * wa * (J ^ 2)) + (48 * f * g *
    l1a * wb * (J ^ 2)) + (96 * e * f * l0a * wb * (J ^ 2)) + (96 * e * g * l0a * wb * (J ^ 2))
    + (96 * f * g * l0a * wb * (J ^ 2)) + (-96 * J * d * e * f * l0a * wb) + (-96 * J * d * e *
    g * l0a * wb) + (-96 * J * d * f * g * l0a * wb) + (-48 * J * d * e * f * l0a * wa) + (-48 *
    J * d * f * g * l0a * wa) + (-32 * J * d * e * f * l1a * wb) + (-32 * J * d * e * g * l1a *
    wb) + (-32 * J * d * f * g * l1a * wb) + (-16 * J * d * e * f * l1a * wa) + (-16 * J * d * f
    * g * l1a * wa))

def block222 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((8 * ha * r20 * (f ^ 2)) + (8 * ha * r21 * (f ^ 2)) + (8 * ha * r22 * (e ^ 2)) + (8 * ha *
    r22 * (f ^ 2)) + (8 * ha * r22 * (g ^ 2)) + (24 * ha * r10 * (f ^ 2)) + (24 * ha * r11 * (f
    ^ 2)) + (24 * ha * r12 * (e ^ 2)) + (24 * ha * r12 * (f ^ 2)) + (24 * ha * r12 * (g ^ 2)) +
    (48 * ha * r00 * (f ^ 2)) + (48 * ha * r01 * (f ^ 2)) + (48 * ha * r02 * (e ^ 2)) + (48 * ha
    * r02 * (f ^ 2)) + (48 * ha * r02 * (g ^ 2)) + (8 * d * haa * r10 * (f ^ 2)) + (8 * d * haa
    * r11 * (f ^ 2)) + (8 * d * haa * r12 * (e ^ 2)) + (8 * d * haa * r12 * (f ^ 2)) + (8 * d *
    haa * r12 * (g ^ 2)) + (8 * e * f * ha * r21) + (8 * f * g * ha * r21) + (16 * e * f * ha *
    r22) + (16 * e * g * ha * r22) + (16 * f * g * ha * r22) + (24 * d * haa * r00 * (f ^ 2)) +
    (24 * d * haa * r01 * (f ^ 2)) + (24 * d * haa * r02 * (e ^ 2)) + (24 * d * haa * r02 * (f ^
    2)) + (24 * d * haa * r02 * (g ^ 2)) + (24 * e * f * ha * r11) + (24 * f * g * ha * r11) +
    (48 * e * f * ha * r01) + (48 * e * f * ha * r12) + (48 * e * g * ha * r12) + (48 * f * g *
    ha * r01) + (48 * f * g * ha * r12) + (96 * e * f * ha * r02) + (96 * e * g * ha * r02) +
    (96 * f * g * ha * r02) + (8 * d * e * f * haa * r11) + (8 * d * f * g * haa * r11) + (16 *
    d * e * f * haa * r12) + (16 * d * e * g * haa * r12) + (16 * d * f * g * haa * r12) + (24 *
    d * e * f * haa * r01) + (24 * d * f * g * haa * r01) + (48 * d * e * f * haa * r02) + (48 *
    d * e * g * haa * r02) + (48 * d * f * g * haa * r02))

def block223 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((8 * haa * r20 * (f ^ 2)) + (8 * haa * r21 * (f ^ 2)) + (8 * haa * r22 * (e ^ 2)) + (8 * haa
    * r22 * (f ^ 2)) + (8 * haa * r22 * (g ^ 2)) + (24 * haa * r10 * (f ^ 2)) + (24 * haa * r11
    * (f ^ 2)) + (24 * haa * r12 * (e ^ 2)) + (24 * haa * r12 * (f ^ 2)) + (24 * haa * r12 * (g
    ^ 2)) + (48 * haa * r00 * (f ^ 2)) + (48 * haa * r01 * (f ^ 2)) + (48 * haa * r02 * (e ^ 2))
    + (48 * haa * r02 * (f ^ 2)) + (48 * haa * r02 * (g ^ 2)) + (8 * e * f * haa * r21) + (8 * f
    * g * haa * r21) + (16 * e * f * haa * r22) + (16 * e * g * haa * r22) + (16 * f * g * haa *
    r22) + (24 * e * f * haa * r11) + (24 * f * g * haa * r11) + (48 * e * f * haa * r01) + (48
    * e * f * haa * r12) + (48 * e * g * haa * r12) + (48 * f * g * haa * r01) + (48 * f * g *
    haa * r12) + (96 * e * f * haa * r02) + (96 * e * g * haa * r02) + (96 * f * g * haa * r02))

/-- Finite symbolic decomposition with scalar coefficients held abstract. -/
theorem decompose22 (a d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) :
    2*(f^2*(coeff20 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+f*(e+f+g)*(coeff21 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+(e+f+g)^2*(coeff22 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)) =
      block220 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a*block221 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^2*block222 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^3*block223 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 := by
  unfold coeff20 coeff21 coeff22 block220 block221 block222 block223
  ring

def block300 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((12 * d * hc * r20 * (f ^ 2)) + (12 * d * hc * r21 * (f ^ 2)) + (12 * d * hc * r22 * (f ^ 2))
    + (12 * l1c * wa * (d ^ 2) * (f ^ 2)) + (12 * l1c * wb * (d ^ 2) * (f ^ 2)) + (24 * d * hc *
    r10 * (f ^ 2)) + (24 * d * hc * r11 * (f ^ 2)) + (24 * d * hc * r12 * (f ^ 2)) + (24 * l2c *
    wa * (J ^ 2) * (f ^ 2)) + (24 * l2c * wb * (J ^ 2) * (f ^ 2)) + (36 * d * hc * r00 * (f ^
    2)) + (36 * d * hc * r01 * (f ^ 2)) + (36 * d * hc * r02 * (f ^ 2)) + (36 * l1c * wa * (J ^
    2) * (f ^ 2)) + (36 * l1c * wb * (J ^ 2) * (f ^ 2)) + (-48 * J * d * l1c * wa * (f ^ 2)) +
    (-48 * J * d * l1c * wb * (f ^ 2)) + (-24 * J * d * l2c * wa * (f ^ 2)) + (-24 * J * d * l2c
    * wb * (f ^ 2)))

def block301 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((24 * hc * r20 * (f ^ 2)) + (24 * hc * r21 * (f ^ 2)) + (24 * hc * r22 * (f ^ 2)) + (36 * hc
    * r10 * (f ^ 2)) + (36 * hc * r11 * (f ^ 2)) + (36 * hc * r12 * (f ^ 2)) + (48 * hc * r00 *
    (f ^ 2)) + (48 * hc * r01 * (f ^ 2)) + (48 * hc * r02 * (f ^ 2)) + (12 * d * ha * r20 * (f ^
    2)) + (12 * d * ha * r21 * (f ^ 2)) + (12 * d * ha * r22 * (f ^ 2)) + (12 * l1a * wa * (d ^
    2) * (f ^ 2)) + (12 * l1a * wb * (d ^ 2) * (f ^ 2)) + (24 * d * ha * r10 * (f ^ 2)) + (24 *
    d * ha * r11 * (f ^ 2)) + (24 * d * ha * r12 * (f ^ 2)) + (24 * l0a * wa * (d ^ 2) * (f ^
    2)) + (24 * l0a * wb * (d ^ 2) * (f ^ 2)) + (24 * l2a * wa * (J ^ 2) * (f ^ 2)) + (24 * l2a
    * wb * (J ^ 2) * (f ^ 2)) + (36 * d * ha * r00 * (f ^ 2)) + (36 * d * ha * r01 * (f ^ 2)) +
    (36 * d * ha * r02 * (f ^ 2)) + (36 * l1a * wa * (J ^ 2) * (f ^ 2)) + (36 * l1a * wb * (J ^
    2) * (f ^ 2)) + (48 * l0a * wa * (J ^ 2) * (f ^ 2)) + (48 * l0a * wb * (J ^ 2) * (f ^ 2)) +
    (-72 * J * d * l0a * wa * (f ^ 2)) + (-72 * J * d * l0a * wb * (f ^ 2)) + (-48 * J * d * l1a
    * wa * (f ^ 2)) + (-48 * J * d * l1a * wb * (f ^ 2)) + (-24 * J * d * l2a * wa * (f ^ 2)) +
    (-24 * J * d * l2a * wb * (f ^ 2)))

def block302 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((24 * ha * r20 * (f ^ 2)) + (24 * ha * r21 * (f ^ 2)) + (24 * ha * r22 * (f ^ 2)) + (36 * ha
    * r10 * (f ^ 2)) + (36 * ha * r11 * (f ^ 2)) + (36 * ha * r12 * (f ^ 2)) + (48 * ha * r00 *
    (f ^ 2)) + (48 * ha * r01 * (f ^ 2)) + (48 * ha * r02 * (f ^ 2)) + (12 * d * haa * r20 * (f
    ^ 2)) + (12 * d * haa * r21 * (f ^ 2)) + (12 * d * haa * r22 * (f ^ 2)) + (24 * d * haa *
    r10 * (f ^ 2)) + (24 * d * haa * r11 * (f ^ 2)) + (24 * d * haa * r12 * (f ^ 2)) + (36 * d *
    haa * r00 * (f ^ 2)) + (36 * d * haa * r01 * (f ^ 2)) + (36 * d * haa * r02 * (f ^ 2)))

def block303 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((24 * haa * r20 * (f ^ 2)) + (24 * haa * r21 * (f ^ 2)) + (24 * haa * r22 * (f ^ 2)) + (36 *
    haa * r10 * (f ^ 2)) + (36 * haa * r11 * (f ^ 2)) + (36 * haa * r12 * (f ^ 2)) + (48 * haa *
    r00 * (f ^ 2)) + (48 * haa * r01 * (f ^ 2)) + (48 * haa * r02 * (f ^ 2)))

/-- Finite symbolic decomposition with scalar coefficients held abstract. -/
theorem decompose30 (a d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) :
    2*f^2*(coeff30 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22+coeff31 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22+coeff32 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22) =
      block300 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a*block301 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^2*block302 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^3*block303 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 := by
  unfold coeff30 coeff31 coeff32 block300 block301 block302 block303
  ring

def block310 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((12 * d * hc * r20 * (f ^ 2)) + (12 * d * hc * r21 * (f ^ 2)) + (12 * d * hc * r22 * (f ^ 2))
    + (12 * l1c * wa * (d ^ 2) * (f ^ 2)) + (12 * l1c * wb * (d ^ 2) * (f ^ 2)) + (24 * d * hc *
    r10 * (f ^ 2)) + (24 * d * hc * r11 * (f ^ 2)) + (24 * d * hc * r12 * (f ^ 2)) + (24 * l2c *
    wa * (J ^ 2) * (f ^ 2)) + (24 * l2c * wb * (J ^ 2) * (f ^ 2)) + (36 * d * hc * r00 * (f ^
    2)) + (36 * d * hc * r01 * (f ^ 2)) + (36 * d * hc * r02 * (f ^ 2)) + (36 * l1c * wa * (J ^
    2) * (f ^ 2)) + (36 * l1c * wb * (J ^ 2) * (f ^ 2)) + (-48 * J * d * l1c * wa * (f ^ 2)) +
    (-48 * J * d * l1c * wb * (f ^ 2)) + (-24 * J * d * l2c * wa * (f ^ 2)) + (-24 * J * d * l2c
    * wb * (f ^ 2)) + (6 * d * e * f * hc * r21) + (6 * d * f * g * hc * r21) + (6 * e * f * l1c
    * wa * (d ^ 2)) + (6 * f * g * l1c * wa * (d ^ 2)) + (12 * d * e * f * hc * r11) + (12 * d *
    e * f * hc * r22) + (12 * d * f * g * hc * r11) + (12 * d * f * g * hc * r22) + (12 * e * f
    * l1c * wb * (d ^ 2)) + (12 * e * f * l2c * wa * (J ^ 2)) + (12 * f * g * l1c * wb * (d ^
    2)) + (12 * f * g * l2c * wa * (J ^ 2)) + (18 * d * e * f * hc * r01) + (18 * d * f * g * hc
    * r01) + (18 * e * f * l1c * wa * (J ^ 2)) + (18 * f * g * l1c * wa * (J ^ 2)) + (24 * d * e
    * f * hc * r12) + (24 * d * f * g * hc * r12) + (24 * e * f * l2c * wb * (J ^ 2)) + (24 * f
    * g * l2c * wb * (J ^ 2)) + (36 * d * e * f * hc * r02) + (36 * d * f * g * hc * r02) + (36
    * e * f * l1c * wb * (J ^ 2)) + (36 * f * g * l1c * wb * (J ^ 2)) + (-48 * J * d * e * f *
    l1c * wb) + (-48 * J * d * f * g * l1c * wb) + (-24 * J * d * e * f * l1c * wa) + (-24 * J *
    d * e * f * l2c * wb) + (-24 * J * d * f * g * l1c * wa) + (-24 * J * d * f * g * l2c * wb)
    + (-12 * J * d * e * f * l2c * wa) + (-12 * J * d * f * g * l2c * wa))

def block311 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((24 * hc * r20 * (f ^ 2)) + (24 * hc * r21 * (f ^ 2)) + (24 * hc * r22 * (f ^ 2)) + (36 * hc
    * r10 * (f ^ 2)) + (36 * hc * r11 * (f ^ 2)) + (36 * hc * r12 * (f ^ 2)) + (48 * hc * r00 *
    (f ^ 2)) + (48 * hc * r01 * (f ^ 2)) + (48 * hc * r02 * (f ^ 2)) + (12 * d * ha * r20 * (f ^
    2)) + (12 * d * ha * r21 * (f ^ 2)) + (12 * d * ha * r22 * (f ^ 2)) + (12 * e * f * hc *
    r21) + (12 * f * g * hc * r21) + (12 * l1a * wa * (d ^ 2) * (f ^ 2)) + (12 * l1a * wb * (d ^
    2) * (f ^ 2)) + (18 * e * f * hc * r11) + (18 * f * g * hc * r11) + (24 * d * ha * r10 * (f
    ^ 2)) + (24 * d * ha * r11 * (f ^ 2)) + (24 * d * ha * r12 * (f ^ 2)) + (24 * e * f * hc *
    r01) + (24 * e * f * hc * r22) + (24 * f * g * hc * r01) + (24 * f * g * hc * r22) + (24 *
    l0a * wa * (d ^ 2) * (f ^ 2)) + (24 * l0a * wb * (d ^ 2) * (f ^ 2)) + (24 * l2a * wa * (J ^
    2) * (f ^ 2)) + (24 * l2a * wb * (J ^ 2) * (f ^ 2)) + (36 * d * ha * r00 * (f ^ 2)) + (36 *
    d * ha * r01 * (f ^ 2)) + (36 * d * ha * r02 * (f ^ 2)) + (36 * e * f * hc * r12) + (36 * f
    * g * hc * r12) + (36 * l1a * wa * (J ^ 2) * (f ^ 2)) + (36 * l1a * wb * (J ^ 2) * (f ^ 2))
    + (48 * e * f * hc * r02) + (48 * f * g * hc * r02) + (48 * l0a * wa * (J ^ 2) * (f ^ 2)) +
    (48 * l0a * wb * (J ^ 2) * (f ^ 2)) + (-72 * J * d * l0a * wa * (f ^ 2)) + (-72 * J * d *
    l0a * wb * (f ^ 2)) + (-48 * J * d * l1a * wa * (f ^ 2)) + (-48 * J * d * l1a * wb * (f ^
    2)) + (-24 * J * d * l2a * wa * (f ^ 2)) + (-24 * J * d * l2a * wb * (f ^ 2)) + (6 * d * e *
    f * ha * r21) + (6 * d * f * g * ha * r21) + (6 * e * f * l1a * wa * (d ^ 2)) + (6 * f * g *
    l1a * wa * (d ^ 2)) + (12 * d * e * f * ha * r11) + (12 * d * e * f * ha * r22) + (12 * d *
    f * g * ha * r11) + (12 * d * f * g * ha * r22) + (12 * e * f * l0a * wa * (d ^ 2)) + (12 *
    e * f * l1a * wb * (d ^ 2)) + (12 * e * f * l2a * wa * (J ^ 2)) + (12 * f * g * l0a * wa *
    (d ^ 2)) + (12 * f * g * l1a * wb * (d ^ 2)) + (12 * f * g * l2a * wa * (J ^ 2)) + (18 * d *
    e * f * ha * r01) + (18 * d * f * g * ha * r01) + (18 * e * f * l1a * wa * (J ^ 2)) + (18 *
    f * g * l1a * wa * (J ^ 2)) + (24 * d * e * f * ha * r12) + (24 * d * f * g * ha * r12) +
    (24 * e * f * l0a * wa * (J ^ 2)) + (24 * e * f * l0a * wb * (d ^ 2)) + (24 * e * f * l2a *
    wb * (J ^ 2)) + (24 * f * g * l0a * wa * (J ^ 2)) + (24 * f * g * l0a * wb * (d ^ 2)) + (24
    * f * g * l2a * wb * (J ^ 2)) + (36 * d * e * f * ha * r02) + (36 * d * f * g * ha * r02) +
    (36 * e * f * l1a * wb * (J ^ 2)) + (36 * f * g * l1a * wb * (J ^ 2)) + (48 * e * f * l0a *
    wb * (J ^ 2)) + (48 * f * g * l0a * wb * (J ^ 2)) + (-72 * J * d * e * f * l0a * wb) + (-72
    * J * d * f * g * l0a * wb) + (-48 * J * d * e * f * l1a * wb) + (-48 * J * d * f * g * l1a
    * wb) + (-36 * J * d * e * f * l0a * wa) + (-36 * J * d * f * g * l0a * wa) + (-24 * J * d *
    e * f * l1a * wa) + (-24 * J * d * e * f * l2a * wb) + (-24 * J * d * f * g * l1a * wa) +
    (-24 * J * d * f * g * l2a * wb) + (-12 * J * d * e * f * l2a * wa) + (-12 * J * d * f * g *
    l2a * wa))

def block312 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((24 * ha * r20 * (f ^ 2)) + (24 * ha * r21 * (f ^ 2)) + (24 * ha * r22 * (f ^ 2)) + (36 * ha
    * r10 * (f ^ 2)) + (36 * ha * r11 * (f ^ 2)) + (36 * ha * r12 * (f ^ 2)) + (48 * ha * r00 *
    (f ^ 2)) + (48 * ha * r01 * (f ^ 2)) + (48 * ha * r02 * (f ^ 2)) + (12 * d * haa * r20 * (f
    ^ 2)) + (12 * d * haa * r21 * (f ^ 2)) + (12 * d * haa * r22 * (f ^ 2)) + (12 * e * f * ha *
    r21) + (12 * f * g * ha * r21) + (18 * e * f * ha * r11) + (18 * f * g * ha * r11) + (24 * d
    * haa * r10 * (f ^ 2)) + (24 * d * haa * r11 * (f ^ 2)) + (24 * d * haa * r12 * (f ^ 2)) +
    (24 * e * f * ha * r01) + (24 * e * f * ha * r22) + (24 * f * g * ha * r01) + (24 * f * g *
    ha * r22) + (36 * d * haa * r00 * (f ^ 2)) + (36 * d * haa * r01 * (f ^ 2)) + (36 * d * haa
    * r02 * (f ^ 2)) + (36 * e * f * ha * r12) + (36 * f * g * ha * r12) + (48 * e * f * ha *
    r02) + (48 * f * g * ha * r02) + (6 * d * e * f * haa * r21) + (6 * d * f * g * haa * r21) +
    (12 * d * e * f * haa * r11) + (12 * d * e * f * haa * r22) + (12 * d * f * g * haa * r11) +
    (12 * d * f * g * haa * r22) + (18 * d * e * f * haa * r01) + (18 * d * f * g * haa * r01) +
    (24 * d * e * f * haa * r12) + (24 * d * f * g * haa * r12) + (36 * d * e * f * haa * r02) +
    (36 * d * f * g * haa * r02))

def block313 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((24 * haa * r20 * (f ^ 2)) + (24 * haa * r21 * (f ^ 2)) + (24 * haa * r22 * (f ^ 2)) + (36 *
    haa * r10 * (f ^ 2)) + (36 * haa * r11 * (f ^ 2)) + (36 * haa * r12 * (f ^ 2)) + (48 * haa *
    r00 * (f ^ 2)) + (48 * haa * r01 * (f ^ 2)) + (48 * haa * r02 * (f ^ 2)) + (12 * e * f * haa
    * r21) + (12 * f * g * haa * r21) + (18 * e * f * haa * r11) + (18 * f * g * haa * r11) +
    (24 * e * f * haa * r01) + (24 * e * f * haa * r22) + (24 * f * g * haa * r01) + (24 * f * g
    * haa * r22) + (36 * e * f * haa * r12) + (36 * f * g * haa * r12) + (48 * e * f * haa *
    r02) + (48 * f * g * haa * r02))

/-- Finite symbolic decomposition with scalar coefficients held abstract. -/
theorem decompose31 (a d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) :
    2*f^2*(coeff30 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+f*(e+2*f+g)*(coeff31 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+2*f*(e+f+g)*(coeff32 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22) =
      block310 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a*block311 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^2*block312 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^3*block313 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 := by
  unfold coeff30 coeff31 coeff32 block310 block311 block312 block313
  ring

def block320 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((12 * d * hc * r20 * (f ^ 2)) + (12 * d * hc * r21 * (f ^ 2)) + (12 * d * hc * r22 * (e ^ 2))
    + (12 * d * hc * r22 * (f ^ 2)) + (12 * d * hc * r22 * (g ^ 2)) + (12 * l1c * wa * (d ^ 2) *
    (f ^ 2)) + (12 * l1c * wb * (d ^ 2) * (e ^ 2)) + (12 * l1c * wb * (d ^ 2) * (f ^ 2)) + (12 *
    l1c * wb * (d ^ 2) * (g ^ 2)) + (24 * d * hc * r10 * (f ^ 2)) + (24 * d * hc * r11 * (f ^
    2)) + (24 * d * hc * r12 * (e ^ 2)) + (24 * d * hc * r12 * (f ^ 2)) + (24 * d * hc * r12 *
    (g ^ 2)) + (24 * l2c * wa * (J ^ 2) * (f ^ 2)) + (24 * l2c * wb * (J ^ 2) * (e ^ 2)) + (24 *
    l2c * wb * (J ^ 2) * (f ^ 2)) + (24 * l2c * wb * (J ^ 2) * (g ^ 2)) + (36 * d * hc * r00 *
    (f ^ 2)) + (36 * d * hc * r01 * (f ^ 2)) + (36 * d * hc * r02 * (e ^ 2)) + (36 * d * hc *
    r02 * (f ^ 2)) + (36 * d * hc * r02 * (g ^ 2)) + (36 * l1c * wa * (J ^ 2) * (f ^ 2)) + (36 *
    l1c * wb * (J ^ 2) * (e ^ 2)) + (36 * l1c * wb * (J ^ 2) * (f ^ 2)) + (36 * l1c * wb * (J ^
    2) * (g ^ 2)) + (-48 * J * d * l1c * wa * (f ^ 2)) + (-48 * J * d * l1c * wb * (e ^ 2)) +
    (-48 * J * d * l1c * wb * (f ^ 2)) + (-48 * J * d * l1c * wb * (g ^ 2)) + (-24 * J * d * l2c
    * wa * (f ^ 2)) + (-24 * J * d * l2c * wb * (e ^ 2)) + (-24 * J * d * l2c * wb * (f ^ 2)) +
    (-24 * J * d * l2c * wb * (g ^ 2)) + (12 * d * e * f * hc * r21) + (12 * d * f * g * hc *
    r21) + (12 * e * f * l1c * wa * (d ^ 2)) + (12 * f * g * l1c * wa * (d ^ 2)) + (24 * d * e *
    f * hc * r11) + (24 * d * e * f * hc * r22) + (24 * d * e * g * hc * r22) + (24 * d * f * g
    * hc * r11) + (24 * d * f * g * hc * r22) + (24 * e * f * l1c * wb * (d ^ 2)) + (24 * e * f
    * l2c * wa * (J ^ 2)) + (24 * e * g * l1c * wb * (d ^ 2)) + (24 * f * g * l1c * wb * (d ^
    2)) + (24 * f * g * l2c * wa * (J ^ 2)) + (36 * d * e * f * hc * r01) + (36 * d * f * g * hc
    * r01) + (36 * e * f * l1c * wa * (J ^ 2)) + (36 * f * g * l1c * wa * (J ^ 2)) + (48 * d * e
    * f * hc * r12) + (48 * d * e * g * hc * r12) + (48 * d * f * g * hc * r12) + (48 * e * f *
    l2c * wb * (J ^ 2)) + (48 * e * g * l2c * wb * (J ^ 2)) + (48 * f * g * l2c * wb * (J ^ 2))
    + (72 * d * e * f * hc * r02) + (72 * d * e * g * hc * r02) + (72 * d * f * g * hc * r02) +
    (72 * e * f * l1c * wb * (J ^ 2)) + (72 * e * g * l1c * wb * (J ^ 2)) + (72 * f * g * l1c *
    wb * (J ^ 2)) + (-96 * J * d * e * f * l1c * wb) + (-96 * J * d * e * g * l1c * wb) + (-96 *
    J * d * f * g * l1c * wb) + (-48 * J * d * e * f * l1c * wa) + (-48 * J * d * e * f * l2c *
    wb) + (-48 * J * d * e * g * l2c * wb) + (-48 * J * d * f * g * l1c * wa) + (-48 * J * d * f
    * g * l2c * wb) + (-24 * J * d * e * f * l2c * wa) + (-24 * J * d * f * g * l2c * wa))

def block321 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((24 * hc * r20 * (f ^ 2)) + (24 * hc * r21 * (f ^ 2)) + (24 * hc * r22 * (e ^ 2)) + (24 * hc
    * r22 * (f ^ 2)) + (24 * hc * r22 * (g ^ 2)) + (36 * hc * r10 * (f ^ 2)) + (36 * hc * r11 *
    (f ^ 2)) + (36 * hc * r12 * (e ^ 2)) + (36 * hc * r12 * (f ^ 2)) + (36 * hc * r12 * (g ^ 2))
    + (48 * hc * r00 * (f ^ 2)) + (48 * hc * r01 * (f ^ 2)) + (48 * hc * r02 * (e ^ 2)) + (48 *
    hc * r02 * (f ^ 2)) + (48 * hc * r02 * (g ^ 2)) + (12 * d * ha * r20 * (f ^ 2)) + (12 * d *
    ha * r21 * (f ^ 2)) + (12 * d * ha * r22 * (e ^ 2)) + (12 * d * ha * r22 * (f ^ 2)) + (12 *
    d * ha * r22 * (g ^ 2)) + (12 * l1a * wa * (d ^ 2) * (f ^ 2)) + (12 * l1a * wb * (d ^ 2) *
    (e ^ 2)) + (12 * l1a * wb * (d ^ 2) * (f ^ 2)) + (12 * l1a * wb * (d ^ 2) * (g ^ 2)) + (24 *
    d * ha * r10 * (f ^ 2)) + (24 * d * ha * r11 * (f ^ 2)) + (24 * d * ha * r12 * (e ^ 2)) +
    (24 * d * ha * r12 * (f ^ 2)) + (24 * d * ha * r12 * (g ^ 2)) + (24 * e * f * hc * r21) +
    (24 * f * g * hc * r21) + (24 * l0a * wa * (d ^ 2) * (f ^ 2)) + (24 * l0a * wb * (d ^ 2) *
    (e ^ 2)) + (24 * l0a * wb * (d ^ 2) * (f ^ 2)) + (24 * l0a * wb * (d ^ 2) * (g ^ 2)) + (24 *
    l2a * wa * (J ^ 2) * (f ^ 2)) + (24 * l2a * wb * (J ^ 2) * (e ^ 2)) + (24 * l2a * wb * (J ^
    2) * (f ^ 2)) + (24 * l2a * wb * (J ^ 2) * (g ^ 2)) + (36 * d * ha * r00 * (f ^ 2)) + (36 *
    d * ha * r01 * (f ^ 2)) + (36 * d * ha * r02 * (e ^ 2)) + (36 * d * ha * r02 * (f ^ 2)) +
    (36 * d * ha * r02 * (g ^ 2)) + (36 * e * f * hc * r11) + (36 * f * g * hc * r11) + (36 *
    l1a * wa * (J ^ 2) * (f ^ 2)) + (36 * l1a * wb * (J ^ 2) * (e ^ 2)) + (36 * l1a * wb * (J ^
    2) * (f ^ 2)) + (36 * l1a * wb * (J ^ 2) * (g ^ 2)) + (48 * e * f * hc * r01) + (48 * e * f
    * hc * r22) + (48 * e * g * hc * r22) + (48 * f * g * hc * r01) + (48 * f * g * hc * r22) +
    (48 * l0a * wa * (J ^ 2) * (f ^ 2)) + (48 * l0a * wb * (J ^ 2) * (e ^ 2)) + (48 * l0a * wb *
    (J ^ 2) * (f ^ 2)) + (48 * l0a * wb * (J ^ 2) * (g ^ 2)) + (72 * e * f * hc * r12) + (72 * e
    * g * hc * r12) + (72 * f * g * hc * r12) + (96 * e * f * hc * r02) + (96 * e * g * hc *
    r02) + (96 * f * g * hc * r02) + (-72 * J * d * l0a * wa * (f ^ 2)) + (-72 * J * d * l0a *
    wb * (e ^ 2)) + (-72 * J * d * l0a * wb * (f ^ 2)) + (-72 * J * d * l0a * wb * (g ^ 2)) +
    (-48 * J * d * l1a * wa * (f ^ 2)) + (-48 * J * d * l1a * wb * (e ^ 2)) + (-48 * J * d * l1a
    * wb * (f ^ 2)) + (-48 * J * d * l1a * wb * (g ^ 2)) + (-24 * J * d * l2a * wa * (f ^ 2)) +
    (-24 * J * d * l2a * wb * (e ^ 2)) + (-24 * J * d * l2a * wb * (f ^ 2)) + (-24 * J * d * l2a
    * wb * (g ^ 2)) + (12 * d * e * f * ha * r21) + (12 * d * f * g * ha * r21) + (12 * e * f *
    l1a * wa * (d ^ 2)) + (12 * f * g * l1a * wa * (d ^ 2)) + (24 * d * e * f * ha * r11) + (24
    * d * e * f * ha * r22) + (24 * d * e * g * ha * r22) + (24 * d * f * g * ha * r11) + (24 *
    d * f * g * ha * r22) + (24 * e * f * l0a * wa * (d ^ 2)) + (24 * e * f * l1a * wb * (d ^
    2)) + (24 * e * f * l2a * wa * (J ^ 2)) + (24 * e * g * l1a * wb * (d ^ 2)) + (24 * f * g *
    l0a * wa * (d ^ 2)) + (24 * f * g * l1a * wb * (d ^ 2)) + (24 * f * g * l2a * wa * (J ^ 2))
    + (36 * d * e * f * ha * r01) + (36 * d * f * g * ha * r01) + (36 * e * f * l1a * wa * (J ^
    2)) + (36 * f * g * l1a * wa * (J ^ 2)) + (48 * d * e * f * ha * r12) + (48 * d * e * g * ha
    * r12) + (48 * d * f * g * ha * r12) + (48 * e * f * l0a * wa * (J ^ 2)) + (48 * e * f * l0a
    * wb * (d ^ 2)) + (48 * e * f * l2a * wb * (J ^ 2)) + (48 * e * g * l0a * wb * (d ^ 2)) +
    (48 * e * g * l2a * wb * (J ^ 2)) + (48 * f * g * l0a * wa * (J ^ 2)) + (48 * f * g * l0a *
    wb * (d ^ 2)) + (48 * f * g * l2a * wb * (J ^ 2)) + (72 * d * e * f * ha * r02) + (72 * d *
    e * g * ha * r02) + (72 * d * f * g * ha * r02) + (72 * e * f * l1a * wb * (J ^ 2)) + (72 *
    e * g * l1a * wb * (J ^ 2)) + (72 * f * g * l1a * wb * (J ^ 2)) + (96 * e * f * l0a * wb *
    (J ^ 2)) + (96 * e * g * l0a * wb * (J ^ 2)) + (96 * f * g * l0a * wb * (J ^ 2)) + (-144 * J
    * d * e * f * l0a * wb) + (-144 * J * d * e * g * l0a * wb) + (-144 * J * d * f * g * l0a *
    wb) + (-96 * J * d * e * f * l1a * wb) + (-96 * J * d * e * g * l1a * wb) + (-96 * J * d * f
    * g * l1a * wb) + (-72 * J * d * e * f * l0a * wa) + (-72 * J * d * f * g * l0a * wa) + (-48
    * J * d * e * f * l1a * wa) + (-48 * J * d * e * f * l2a * wb) + (-48 * J * d * e * g * l2a
    * wb) + (-48 * J * d * f * g * l1a * wa) + (-48 * J * d * f * g * l2a * wb) + (-24 * J * d *
    e * f * l2a * wa) + (-24 * J * d * f * g * l2a * wa))

def block322 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((24 * ha * r20 * (f ^ 2)) + (24 * ha * r21 * (f ^ 2)) + (24 * ha * r22 * (e ^ 2)) + (24 * ha
    * r22 * (f ^ 2)) + (24 * ha * r22 * (g ^ 2)) + (36 * ha * r10 * (f ^ 2)) + (36 * ha * r11 *
    (f ^ 2)) + (36 * ha * r12 * (e ^ 2)) + (36 * ha * r12 * (f ^ 2)) + (36 * ha * r12 * (g ^ 2))
    + (48 * ha * r00 * (f ^ 2)) + (48 * ha * r01 * (f ^ 2)) + (48 * ha * r02 * (e ^ 2)) + (48 *
    ha * r02 * (f ^ 2)) + (48 * ha * r02 * (g ^ 2)) + (12 * d * haa * r20 * (f ^ 2)) + (12 * d *
    haa * r21 * (f ^ 2)) + (12 * d * haa * r22 * (e ^ 2)) + (12 * d * haa * r22 * (f ^ 2)) + (12
    * d * haa * r22 * (g ^ 2)) + (24 * d * haa * r10 * (f ^ 2)) + (24 * d * haa * r11 * (f ^ 2))
    + (24 * d * haa * r12 * (e ^ 2)) + (24 * d * haa * r12 * (f ^ 2)) + (24 * d * haa * r12 * (g
    ^ 2)) + (24 * e * f * ha * r21) + (24 * f * g * ha * r21) + (36 * d * haa * r00 * (f ^ 2)) +
    (36 * d * haa * r01 * (f ^ 2)) + (36 * d * haa * r02 * (e ^ 2)) + (36 * d * haa * r02 * (f ^
    2)) + (36 * d * haa * r02 * (g ^ 2)) + (36 * e * f * ha * r11) + (36 * f * g * ha * r11) +
    (48 * e * f * ha * r01) + (48 * e * f * ha * r22) + (48 * e * g * ha * r22) + (48 * f * g *
    ha * r01) + (48 * f * g * ha * r22) + (72 * e * f * ha * r12) + (72 * e * g * ha * r12) +
    (72 * f * g * ha * r12) + (96 * e * f * ha * r02) + (96 * e * g * ha * r02) + (96 * f * g *
    ha * r02) + (12 * d * e * f * haa * r21) + (12 * d * f * g * haa * r21) + (24 * d * e * f *
    haa * r11) + (24 * d * e * f * haa * r22) + (24 * d * e * g * haa * r22) + (24 * d * f * g *
    haa * r11) + (24 * d * f * g * haa * r22) + (36 * d * e * f * haa * r01) + (36 * d * f * g *
    haa * r01) + (48 * d * e * f * haa * r12) + (48 * d * e * g * haa * r12) + (48 * d * f * g *
    haa * r12) + (72 * d * e * f * haa * r02) + (72 * d * e * g * haa * r02) + (72 * d * f * g *
    haa * r02))

def block323 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((24 * haa * r20 * (f ^ 2)) + (24 * haa * r21 * (f ^ 2)) + (24 * haa * r22 * (e ^ 2)) + (24 *
    haa * r22 * (f ^ 2)) + (24 * haa * r22 * (g ^ 2)) + (36 * haa * r10 * (f ^ 2)) + (36 * haa *
    r11 * (f ^ 2)) + (36 * haa * r12 * (e ^ 2)) + (36 * haa * r12 * (f ^ 2)) + (36 * haa * r12 *
    (g ^ 2)) + (48 * haa * r00 * (f ^ 2)) + (48 * haa * r01 * (f ^ 2)) + (48 * haa * r02 * (e ^
    2)) + (48 * haa * r02 * (f ^ 2)) + (48 * haa * r02 * (g ^ 2)) + (24 * e * f * haa * r21) +
    (24 * f * g * haa * r21) + (36 * e * f * haa * r11) + (36 * f * g * haa * r11) + (48 * e * f
    * haa * r01) + (48 * e * f * haa * r22) + (48 * e * g * haa * r22) + (48 * f * g * haa *
    r01) + (48 * f * g * haa * r22) + (72 * e * f * haa * r12) + (72 * e * g * haa * r12) + (72
    * f * g * haa * r12) + (96 * e * f * haa * r02) + (96 * e * g * haa * r02) + (96 * f * g *
    haa * r02))

/-- Finite symbolic decomposition with scalar coefficients held abstract. -/
theorem decompose32 (a d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) :
    2*(f^2*(coeff30 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+f*(e+f+g)*(coeff31 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+(e+f+g)^2*(coeff32 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)) =
      block320 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a*block321 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^2*block322 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^3*block323 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 := by
  unfold coeff30 coeff31 coeff32 block320 block321 block322 block323
  ring

def block400 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * d * hc * r00 * (f ^ 2)) + (48 * d * hc * r01 * (f ^ 2)) + (48 * d * hc * r02 * (f ^ 2))
    + (48 * d * hc * r10 * (f ^ 2)) + (48 * d * hc * r11 * (f ^ 2)) + (48 * d * hc * r12 * (f ^
    2)) + (48 * d * hc * r20 * (f ^ 2)) + (48 * d * hc * r21 * (f ^ 2)) + (48 * d * hc * r22 *
    (f ^ 2)) + (48 * l1c * wa * (J ^ 2) * (f ^ 2)) + (48 * l1c * wa * (d ^ 2) * (f ^ 2)) + (48 *
    l1c * wb * (J ^ 2) * (f ^ 2)) + (48 * l1c * wb * (d ^ 2) * (f ^ 2)) + (48 * l2c * wa * (J ^
    2) * (f ^ 2)) + (48 * l2c * wa * (d ^ 2) * (f ^ 2)) + (48 * l2c * wb * (J ^ 2) * (f ^ 2)) +
    (48 * l2c * wb * (d ^ 2) * (f ^ 2)) + (-96 * J * d * l1c * wa * (f ^ 2)) + (-96 * J * d *
    l1c * wb * (f ^ 2)) + (-96 * J * d * l2c * wa * (f ^ 2)) + (-96 * J * d * l2c * wb * (f ^
    2)))

def block401 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * hc * r00 * (f ^ 2)) + (48 * hc * r01 * (f ^ 2)) + (48 * hc * r02 * (f ^ 2)) + (48 * hc
    * r10 * (f ^ 2)) + (48 * hc * r11 * (f ^ 2)) + (48 * hc * r12 * (f ^ 2)) + (48 * hc * r20 *
    (f ^ 2)) + (48 * hc * r21 * (f ^ 2)) + (48 * hc * r22 * (f ^ 2)) + (48 * d * ha * r00 * (f ^
    2)) + (48 * d * ha * r01 * (f ^ 2)) + (48 * d * ha * r02 * (f ^ 2)) + (48 * d * ha * r10 *
    (f ^ 2)) + (48 * d * ha * r11 * (f ^ 2)) + (48 * d * ha * r12 * (f ^ 2)) + (48 * d * ha *
    r20 * (f ^ 2)) + (48 * d * ha * r21 * (f ^ 2)) + (48 * d * ha * r22 * (f ^ 2)) + (48 * l0a *
    wa * (J ^ 2) * (f ^ 2)) + (48 * l0a * wa * (d ^ 2) * (f ^ 2)) + (48 * l0a * wb * (J ^ 2) *
    (f ^ 2)) + (48 * l0a * wb * (d ^ 2) * (f ^ 2)) + (48 * l1a * wa * (J ^ 2) * (f ^ 2)) + (48 *
    l1a * wa * (d ^ 2) * (f ^ 2)) + (48 * l1a * wb * (J ^ 2) * (f ^ 2)) + (48 * l1a * wb * (d ^
    2) * (f ^ 2)) + (48 * l2a * wa * (J ^ 2) * (f ^ 2)) + (48 * l2a * wa * (d ^ 2) * (f ^ 2)) +
    (48 * l2a * wb * (J ^ 2) * (f ^ 2)) + (48 * l2a * wb * (d ^ 2) * (f ^ 2)) + (-96 * J * d *
    l0a * wa * (f ^ 2)) + (-96 * J * d * l0a * wb * (f ^ 2)) + (-96 * J * d * l1a * wa * (f ^
    2)) + (-96 * J * d * l1a * wb * (f ^ 2)) + (-96 * J * d * l2a * wa * (f ^ 2)) + (-96 * J * d
    * l2a * wb * (f ^ 2)))

def block402 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * ha * r00 * (f ^ 2)) + (48 * ha * r01 * (f ^ 2)) + (48 * ha * r02 * (f ^ 2)) + (48 * ha
    * r10 * (f ^ 2)) + (48 * ha * r11 * (f ^ 2)) + (48 * ha * r12 * (f ^ 2)) + (48 * ha * r20 *
    (f ^ 2)) + (48 * ha * r21 * (f ^ 2)) + (48 * ha * r22 * (f ^ 2)) + (48 * d * haa * r00 * (f
    ^ 2)) + (48 * d * haa * r01 * (f ^ 2)) + (48 * d * haa * r02 * (f ^ 2)) + (48 * d * haa *
    r10 * (f ^ 2)) + (48 * d * haa * r11 * (f ^ 2)) + (48 * d * haa * r12 * (f ^ 2)) + (48 * d *
    haa * r20 * (f ^ 2)) + (48 * d * haa * r21 * (f ^ 2)) + (48 * d * haa * r22 * (f ^ 2)))

def block403 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * haa * r00 * (f ^ 2)) + (48 * haa * r01 * (f ^ 2)) + (48 * haa * r02 * (f ^ 2)) + (48 *
    haa * r10 * (f ^ 2)) + (48 * haa * r11 * (f ^ 2)) + (48 * haa * r12 * (f ^ 2)) + (48 * haa *
    r20 * (f ^ 2)) + (48 * haa * r21 * (f ^ 2)) + (48 * haa * r22 * (f ^ 2)))

/-- Finite symbolic decomposition with scalar coefficients held abstract. -/
theorem decompose40 (a d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) :
    2*f^2*(coeff40 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22+coeff41 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22+coeff42 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22) =
      block400 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a*block401 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^2*block402 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^3*block403 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 := by
  unfold coeff40 coeff41 coeff42 block400 block401 block402 block403
  ring

def block410 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * d * hc * r00 * (f ^ 2)) + (48 * d * hc * r01 * (f ^ 2)) + (48 * d * hc * r02 * (f ^ 2))
    + (48 * d * hc * r10 * (f ^ 2)) + (48 * d * hc * r11 * (f ^ 2)) + (48 * d * hc * r12 * (f ^
    2)) + (48 * d * hc * r20 * (f ^ 2)) + (48 * d * hc * r21 * (f ^ 2)) + (48 * d * hc * r22 *
    (f ^ 2)) + (48 * l1c * wa * (J ^ 2) * (f ^ 2)) + (48 * l1c * wa * (d ^ 2) * (f ^ 2)) + (48 *
    l1c * wb * (J ^ 2) * (f ^ 2)) + (48 * l1c * wb * (d ^ 2) * (f ^ 2)) + (48 * l2c * wa * (J ^
    2) * (f ^ 2)) + (48 * l2c * wa * (d ^ 2) * (f ^ 2)) + (48 * l2c * wb * (J ^ 2) * (f ^ 2)) +
    (48 * l2c * wb * (d ^ 2) * (f ^ 2)) + (-96 * J * d * l1c * wa * (f ^ 2)) + (-96 * J * d *
    l1c * wb * (f ^ 2)) + (-96 * J * d * l2c * wa * (f ^ 2)) + (-96 * J * d * l2c * wb * (f ^
    2)) + (24 * d * e * f * hc * r01) + (24 * d * e * f * hc * r11) + (24 * d * e * f * hc *
    r21) + (24 * d * f * g * hc * r01) + (24 * d * f * g * hc * r11) + (24 * d * f * g * hc *
    r21) + (24 * e * f * l1c * wa * (J ^ 2)) + (24 * e * f * l1c * wa * (d ^ 2)) + (24 * e * f *
    l2c * wa * (J ^ 2)) + (24 * e * f * l2c * wa * (d ^ 2)) + (24 * f * g * l1c * wa * (J ^ 2))
    + (24 * f * g * l1c * wa * (d ^ 2)) + (24 * f * g * l2c * wa * (J ^ 2)) + (24 * f * g * l2c
    * wa * (d ^ 2)) + (48 * d * e * f * hc * r02) + (48 * d * e * f * hc * r12) + (48 * d * e *
    f * hc * r22) + (48 * d * f * g * hc * r02) + (48 * d * f * g * hc * r12) + (48 * d * f * g
    * hc * r22) + (48 * e * f * l1c * wb * (J ^ 2)) + (48 * e * f * l1c * wb * (d ^ 2)) + (48 *
    e * f * l2c * wb * (J ^ 2)) + (48 * e * f * l2c * wb * (d ^ 2)) + (48 * f * g * l1c * wb *
    (J ^ 2)) + (48 * f * g * l1c * wb * (d ^ 2)) + (48 * f * g * l2c * wb * (J ^ 2)) + (48 * f *
    g * l2c * wb * (d ^ 2)) + (-96 * J * d * e * f * l1c * wb) + (-96 * J * d * e * f * l2c *
    wb) + (-96 * J * d * f * g * l1c * wb) + (-96 * J * d * f * g * l2c * wb) + (-48 * J * d * e
    * f * l1c * wa) + (-48 * J * d * e * f * l2c * wa) + (-48 * J * d * f * g * l1c * wa) + (-48
    * J * d * f * g * l2c * wa))

def block411 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * hc * r00 * (f ^ 2)) + (48 * hc * r01 * (f ^ 2)) + (48 * hc * r02 * (f ^ 2)) + (48 * hc
    * r10 * (f ^ 2)) + (48 * hc * r11 * (f ^ 2)) + (48 * hc * r12 * (f ^ 2)) + (48 * hc * r20 *
    (f ^ 2)) + (48 * hc * r21 * (f ^ 2)) + (48 * hc * r22 * (f ^ 2)) + (24 * e * f * hc * r01) +
    (24 * e * f * hc * r11) + (24 * e * f * hc * r21) + (24 * f * g * hc * r01) + (24 * f * g *
    hc * r11) + (24 * f * g * hc * r21) + (48 * d * ha * r00 * (f ^ 2)) + (48 * d * ha * r01 *
    (f ^ 2)) + (48 * d * ha * r02 * (f ^ 2)) + (48 * d * ha * r10 * (f ^ 2)) + (48 * d * ha *
    r11 * (f ^ 2)) + (48 * d * ha * r12 * (f ^ 2)) + (48 * d * ha * r20 * (f ^ 2)) + (48 * d *
    ha * r21 * (f ^ 2)) + (48 * d * ha * r22 * (f ^ 2)) + (48 * e * f * hc * r02) + (48 * e * f
    * hc * r12) + (48 * e * f * hc * r22) + (48 * f * g * hc * r02) + (48 * f * g * hc * r12) +
    (48 * f * g * hc * r22) + (48 * l0a * wa * (J ^ 2) * (f ^ 2)) + (48 * l0a * wa * (d ^ 2) *
    (f ^ 2)) + (48 * l0a * wb * (J ^ 2) * (f ^ 2)) + (48 * l0a * wb * (d ^ 2) * (f ^ 2)) + (48 *
    l1a * wa * (J ^ 2) * (f ^ 2)) + (48 * l1a * wa * (d ^ 2) * (f ^ 2)) + (48 * l1a * wb * (J ^
    2) * (f ^ 2)) + (48 * l1a * wb * (d ^ 2) * (f ^ 2)) + (48 * l2a * wa * (J ^ 2) * (f ^ 2)) +
    (48 * l2a * wa * (d ^ 2) * (f ^ 2)) + (48 * l2a * wb * (J ^ 2) * (f ^ 2)) + (48 * l2a * wb *
    (d ^ 2) * (f ^ 2)) + (-96 * J * d * l0a * wa * (f ^ 2)) + (-96 * J * d * l0a * wb * (f ^ 2))
    + (-96 * J * d * l1a * wa * (f ^ 2)) + (-96 * J * d * l1a * wb * (f ^ 2)) + (-96 * J * d *
    l2a * wa * (f ^ 2)) + (-96 * J * d * l2a * wb * (f ^ 2)) + (24 * d * e * f * ha * r01) + (24
    * d * e * f * ha * r11) + (24 * d * e * f * ha * r21) + (24 * d * f * g * ha * r01) + (24 *
    d * f * g * ha * r11) + (24 * d * f * g * ha * r21) + (24 * e * f * l0a * wa * (J ^ 2)) +
    (24 * e * f * l0a * wa * (d ^ 2)) + (24 * e * f * l1a * wa * (J ^ 2)) + (24 * e * f * l1a *
    wa * (d ^ 2)) + (24 * e * f * l2a * wa * (J ^ 2)) + (24 * e * f * l2a * wa * (d ^ 2)) + (24
    * f * g * l0a * wa * (J ^ 2)) + (24 * f * g * l0a * wa * (d ^ 2)) + (24 * f * g * l1a * wa *
    (J ^ 2)) + (24 * f * g * l1a * wa * (d ^ 2)) + (24 * f * g * l2a * wa * (J ^ 2)) + (24 * f *
    g * l2a * wa * (d ^ 2)) + (48 * d * e * f * ha * r02) + (48 * d * e * f * ha * r12) + (48 *
    d * e * f * ha * r22) + (48 * d * f * g * ha * r02) + (48 * d * f * g * ha * r12) + (48 * d
    * f * g * ha * r22) + (48 * e * f * l0a * wb * (J ^ 2)) + (48 * e * f * l0a * wb * (d ^ 2))
    + (48 * e * f * l1a * wb * (J ^ 2)) + (48 * e * f * l1a * wb * (d ^ 2)) + (48 * e * f * l2a
    * wb * (J ^ 2)) + (48 * e * f * l2a * wb * (d ^ 2)) + (48 * f * g * l0a * wb * (J ^ 2)) +
    (48 * f * g * l0a * wb * (d ^ 2)) + (48 * f * g * l1a * wb * (J ^ 2)) + (48 * f * g * l1a *
    wb * (d ^ 2)) + (48 * f * g * l2a * wb * (J ^ 2)) + (48 * f * g * l2a * wb * (d ^ 2)) + (-96
    * J * d * e * f * l0a * wb) + (-96 * J * d * e * f * l1a * wb) + (-96 * J * d * e * f * l2a
    * wb) + (-96 * J * d * f * g * l0a * wb) + (-96 * J * d * f * g * l1a * wb) + (-96 * J * d *
    f * g * l2a * wb) + (-48 * J * d * e * f * l0a * wa) + (-48 * J * d * e * f * l1a * wa) +
    (-48 * J * d * e * f * l2a * wa) + (-48 * J * d * f * g * l0a * wa) + (-48 * J * d * f * g *
    l1a * wa) + (-48 * J * d * f * g * l2a * wa))

def block412 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * ha * r00 * (f ^ 2)) + (48 * ha * r01 * (f ^ 2)) + (48 * ha * r02 * (f ^ 2)) + (48 * ha
    * r10 * (f ^ 2)) + (48 * ha * r11 * (f ^ 2)) + (48 * ha * r12 * (f ^ 2)) + (48 * ha * r20 *
    (f ^ 2)) + (48 * ha * r21 * (f ^ 2)) + (48 * ha * r22 * (f ^ 2)) + (24 * e * f * ha * r01) +
    (24 * e * f * ha * r11) + (24 * e * f * ha * r21) + (24 * f * g * ha * r01) + (24 * f * g *
    ha * r11) + (24 * f * g * ha * r21) + (48 * d * haa * r00 * (f ^ 2)) + (48 * d * haa * r01 *
    (f ^ 2)) + (48 * d * haa * r02 * (f ^ 2)) + (48 * d * haa * r10 * (f ^ 2)) + (48 * d * haa *
    r11 * (f ^ 2)) + (48 * d * haa * r12 * (f ^ 2)) + (48 * d * haa * r20 * (f ^ 2)) + (48 * d *
    haa * r21 * (f ^ 2)) + (48 * d * haa * r22 * (f ^ 2)) + (48 * e * f * ha * r02) + (48 * e *
    f * ha * r12) + (48 * e * f * ha * r22) + (48 * f * g * ha * r02) + (48 * f * g * ha * r12)
    + (48 * f * g * ha * r22) + (24 * d * e * f * haa * r01) + (24 * d * e * f * haa * r11) +
    (24 * d * e * f * haa * r21) + (24 * d * f * g * haa * r01) + (24 * d * f * g * haa * r11) +
    (24 * d * f * g * haa * r21) + (48 * d * e * f * haa * r02) + (48 * d * e * f * haa * r12) +
    (48 * d * e * f * haa * r22) + (48 * d * f * g * haa * r02) + (48 * d * f * g * haa * r12) +
    (48 * d * f * g * haa * r22))

def block413 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * haa * r00 * (f ^ 2)) + (48 * haa * r01 * (f ^ 2)) + (48 * haa * r02 * (f ^ 2)) + (48 *
    haa * r10 * (f ^ 2)) + (48 * haa * r11 * (f ^ 2)) + (48 * haa * r12 * (f ^ 2)) + (48 * haa *
    r20 * (f ^ 2)) + (48 * haa * r21 * (f ^ 2)) + (48 * haa * r22 * (f ^ 2)) + (24 * e * f * haa
    * r01) + (24 * e * f * haa * r11) + (24 * e * f * haa * r21) + (24 * f * g * haa * r01) +
    (24 * f * g * haa * r11) + (24 * f * g * haa * r21) + (48 * e * f * haa * r02) + (48 * e * f
    * haa * r12) + (48 * e * f * haa * r22) + (48 * f * g * haa * r02) + (48 * f * g * haa *
    r12) + (48 * f * g * haa * r22))

/-- Finite symbolic decomposition with scalar coefficients held abstract. -/
theorem decompose41 (a d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) :
    2*f^2*(coeff40 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+f*(e+2*f+g)*(coeff41 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+2*f*(e+f+g)*(coeff42 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22) =
      block410 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a*block411 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^2*block412 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^3*block413 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 := by
  unfold coeff40 coeff41 coeff42 block410 block411 block412 block413
  ring

def block420 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * d * hc * r00 * (f ^ 2)) + (48 * d * hc * r01 * (f ^ 2)) + (48 * d * hc * r02 * (e ^ 2))
    + (48 * d * hc * r02 * (f ^ 2)) + (48 * d * hc * r02 * (g ^ 2)) + (48 * d * hc * r10 * (f ^
    2)) + (48 * d * hc * r11 * (f ^ 2)) + (48 * d * hc * r12 * (e ^ 2)) + (48 * d * hc * r12 *
    (f ^ 2)) + (48 * d * hc * r12 * (g ^ 2)) + (48 * d * hc * r20 * (f ^ 2)) + (48 * d * hc *
    r21 * (f ^ 2)) + (48 * d * hc * r22 * (e ^ 2)) + (48 * d * hc * r22 * (f ^ 2)) + (48 * d *
    hc * r22 * (g ^ 2)) + (48 * l1c * wa * (J ^ 2) * (f ^ 2)) + (48 * l1c * wa * (d ^ 2) * (f ^
    2)) + (48 * l1c * wb * (J ^ 2) * (e ^ 2)) + (48 * l1c * wb * (J ^ 2) * (f ^ 2)) + (48 * l1c
    * wb * (J ^ 2) * (g ^ 2)) + (48 * l1c * wb * (d ^ 2) * (e ^ 2)) + (48 * l1c * wb * (d ^ 2) *
    (f ^ 2)) + (48 * l1c * wb * (d ^ 2) * (g ^ 2)) + (48 * l2c * wa * (J ^ 2) * (f ^ 2)) + (48 *
    l2c * wa * (d ^ 2) * (f ^ 2)) + (48 * l2c * wb * (J ^ 2) * (e ^ 2)) + (48 * l2c * wb * (J ^
    2) * (f ^ 2)) + (48 * l2c * wb * (J ^ 2) * (g ^ 2)) + (48 * l2c * wb * (d ^ 2) * (e ^ 2)) +
    (48 * l2c * wb * (d ^ 2) * (f ^ 2)) + (48 * l2c * wb * (d ^ 2) * (g ^ 2)) + (-96 * J * d *
    l1c * wa * (f ^ 2)) + (-96 * J * d * l1c * wb * (e ^ 2)) + (-96 * J * d * l1c * wb * (f ^
    2)) + (-96 * J * d * l1c * wb * (g ^ 2)) + (-96 * J * d * l2c * wa * (f ^ 2)) + (-96 * J * d
    * l2c * wb * (e ^ 2)) + (-96 * J * d * l2c * wb * (f ^ 2)) + (-96 * J * d * l2c * wb * (g ^
    2)) + (48 * d * e * f * hc * r01) + (48 * d * e * f * hc * r11) + (48 * d * e * f * hc *
    r21) + (48 * d * f * g * hc * r01) + (48 * d * f * g * hc * r11) + (48 * d * f * g * hc *
    r21) + (48 * e * f * l1c * wa * (J ^ 2)) + (48 * e * f * l1c * wa * (d ^ 2)) + (48 * e * f *
    l2c * wa * (J ^ 2)) + (48 * e * f * l2c * wa * (d ^ 2)) + (48 * f * g * l1c * wa * (J ^ 2))
    + (48 * f * g * l1c * wa * (d ^ 2)) + (48 * f * g * l2c * wa * (J ^ 2)) + (48 * f * g * l2c
    * wa * (d ^ 2)) + (96 * d * e * f * hc * r02) + (96 * d * e * f * hc * r12) + (96 * d * e *
    f * hc * r22) + (96 * d * e * g * hc * r02) + (96 * d * e * g * hc * r12) + (96 * d * e * g
    * hc * r22) + (96 * d * f * g * hc * r02) + (96 * d * f * g * hc * r12) + (96 * d * f * g *
    hc * r22) + (96 * e * f * l1c * wb * (J ^ 2)) + (96 * e * f * l1c * wb * (d ^ 2)) + (96 * e
    * f * l2c * wb * (J ^ 2)) + (96 * e * f * l2c * wb * (d ^ 2)) + (96 * e * g * l1c * wb * (J
    ^ 2)) + (96 * e * g * l1c * wb * (d ^ 2)) + (96 * e * g * l2c * wb * (J ^ 2)) + (96 * e * g
    * l2c * wb * (d ^ 2)) + (96 * f * g * l1c * wb * (J ^ 2)) + (96 * f * g * l1c * wb * (d ^
    2)) + (96 * f * g * l2c * wb * (J ^ 2)) + (96 * f * g * l2c * wb * (d ^ 2)) + (-192 * J * d
    * e * f * l1c * wb) + (-192 * J * d * e * f * l2c * wb) + (-192 * J * d * e * g * l1c * wb)
    + (-192 * J * d * e * g * l2c * wb) + (-192 * J * d * f * g * l1c * wb) + (-192 * J * d * f
    * g * l2c * wb) + (-96 * J * d * e * f * l1c * wa) + (-96 * J * d * e * f * l2c * wa) + (-96
    * J * d * f * g * l1c * wa) + (-96 * J * d * f * g * l2c * wa))

def block421 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * hc * r00 * (f ^ 2)) + (48 * hc * r01 * (f ^ 2)) + (48 * hc * r02 * (e ^ 2)) + (48 * hc
    * r02 * (f ^ 2)) + (48 * hc * r02 * (g ^ 2)) + (48 * hc * r10 * (f ^ 2)) + (48 * hc * r11 *
    (f ^ 2)) + (48 * hc * r12 * (e ^ 2)) + (48 * hc * r12 * (f ^ 2)) + (48 * hc * r12 * (g ^ 2))
    + (48 * hc * r20 * (f ^ 2)) + (48 * hc * r21 * (f ^ 2)) + (48 * hc * r22 * (e ^ 2)) + (48 *
    hc * r22 * (f ^ 2)) + (48 * hc * r22 * (g ^ 2)) + (48 * d * ha * r00 * (f ^ 2)) + (48 * d *
    ha * r01 * (f ^ 2)) + (48 * d * ha * r02 * (e ^ 2)) + (48 * d * ha * r02 * (f ^ 2)) + (48 *
    d * ha * r02 * (g ^ 2)) + (48 * d * ha * r10 * (f ^ 2)) + (48 * d * ha * r11 * (f ^ 2)) +
    (48 * d * ha * r12 * (e ^ 2)) + (48 * d * ha * r12 * (f ^ 2)) + (48 * d * ha * r12 * (g ^
    2)) + (48 * d * ha * r20 * (f ^ 2)) + (48 * d * ha * r21 * (f ^ 2)) + (48 * d * ha * r22 *
    (e ^ 2)) + (48 * d * ha * r22 * (f ^ 2)) + (48 * d * ha * r22 * (g ^ 2)) + (48 * e * f * hc
    * r01) + (48 * e * f * hc * r11) + (48 * e * f * hc * r21) + (48 * f * g * hc * r01) + (48 *
    f * g * hc * r11) + (48 * f * g * hc * r21) + (48 * l0a * wa * (J ^ 2) * (f ^ 2)) + (48 *
    l0a * wa * (d ^ 2) * (f ^ 2)) + (48 * l0a * wb * (J ^ 2) * (e ^ 2)) + (48 * l0a * wb * (J ^
    2) * (f ^ 2)) + (48 * l0a * wb * (J ^ 2) * (g ^ 2)) + (48 * l0a * wb * (d ^ 2) * (e ^ 2)) +
    (48 * l0a * wb * (d ^ 2) * (f ^ 2)) + (48 * l0a * wb * (d ^ 2) * (g ^ 2)) + (48 * l1a * wa *
    (J ^ 2) * (f ^ 2)) + (48 * l1a * wa * (d ^ 2) * (f ^ 2)) + (48 * l1a * wb * (J ^ 2) * (e ^
    2)) + (48 * l1a * wb * (J ^ 2) * (f ^ 2)) + (48 * l1a * wb * (J ^ 2) * (g ^ 2)) + (48 * l1a
    * wb * (d ^ 2) * (e ^ 2)) + (48 * l1a * wb * (d ^ 2) * (f ^ 2)) + (48 * l1a * wb * (d ^ 2) *
    (g ^ 2)) + (48 * l2a * wa * (J ^ 2) * (f ^ 2)) + (48 * l2a * wa * (d ^ 2) * (f ^ 2)) + (48 *
    l2a * wb * (J ^ 2) * (e ^ 2)) + (48 * l2a * wb * (J ^ 2) * (f ^ 2)) + (48 * l2a * wb * (J ^
    2) * (g ^ 2)) + (48 * l2a * wb * (d ^ 2) * (e ^ 2)) + (48 * l2a * wb * (d ^ 2) * (f ^ 2)) +
    (48 * l2a * wb * (d ^ 2) * (g ^ 2)) + (96 * e * f * hc * r02) + (96 * e * f * hc * r12) +
    (96 * e * f * hc * r22) + (96 * e * g * hc * r02) + (96 * e * g * hc * r12) + (96 * e * g *
    hc * r22) + (96 * f * g * hc * r02) + (96 * f * g * hc * r12) + (96 * f * g * hc * r22) +
    (-96 * J * d * l0a * wa * (f ^ 2)) + (-96 * J * d * l0a * wb * (e ^ 2)) + (-96 * J * d * l0a
    * wb * (f ^ 2)) + (-96 * J * d * l0a * wb * (g ^ 2)) + (-96 * J * d * l1a * wa * (f ^ 2)) +
    (-96 * J * d * l1a * wb * (e ^ 2)) + (-96 * J * d * l1a * wb * (f ^ 2)) + (-96 * J * d * l1a
    * wb * (g ^ 2)) + (-96 * J * d * l2a * wa * (f ^ 2)) + (-96 * J * d * l2a * wb * (e ^ 2)) +
    (-96 * J * d * l2a * wb * (f ^ 2)) + (-96 * J * d * l2a * wb * (g ^ 2)) + (48 * d * e * f *
    ha * r01) + (48 * d * e * f * ha * r11) + (48 * d * e * f * ha * r21) + (48 * d * f * g * ha
    * r01) + (48 * d * f * g * ha * r11) + (48 * d * f * g * ha * r21) + (48 * e * f * l0a * wa
    * (J ^ 2)) + (48 * e * f * l0a * wa * (d ^ 2)) + (48 * e * f * l1a * wa * (J ^ 2)) + (48 * e
    * f * l1a * wa * (d ^ 2)) + (48 * e * f * l2a * wa * (J ^ 2)) + (48 * e * f * l2a * wa * (d
    ^ 2)) + (48 * f * g * l0a * wa * (J ^ 2)) + (48 * f * g * l0a * wa * (d ^ 2)) + (48 * f * g
    * l1a * wa * (J ^ 2)) + (48 * f * g * l1a * wa * (d ^ 2)) + (48 * f * g * l2a * wa * (J ^
    2)) + (48 * f * g * l2a * wa * (d ^ 2)) + (96 * d * e * f * ha * r02) + (96 * d * e * f * ha
    * r12) + (96 * d * e * f * ha * r22) + (96 * d * e * g * ha * r02) + (96 * d * e * g * ha *
    r12) + (96 * d * e * g * ha * r22) + (96 * d * f * g * ha * r02) + (96 * d * f * g * ha *
    r12) + (96 * d * f * g * ha * r22) + (96 * e * f * l0a * wb * (J ^ 2)) + (96 * e * f * l0a *
    wb * (d ^ 2)) + (96 * e * f * l1a * wb * (J ^ 2)) + (96 * e * f * l1a * wb * (d ^ 2)) + (96
    * e * f * l2a * wb * (J ^ 2)) + (96 * e * f * l2a * wb * (d ^ 2)) + (96 * e * g * l0a * wb *
    (J ^ 2)) + (96 * e * g * l0a * wb * (d ^ 2)) + (96 * e * g * l1a * wb * (J ^ 2)) + (96 * e *
    g * l1a * wb * (d ^ 2)) + (96 * e * g * l2a * wb * (J ^ 2)) + (96 * e * g * l2a * wb * (d ^
    2)) + (96 * f * g * l0a * wb * (J ^ 2)) + (96 * f * g * l0a * wb * (d ^ 2)) + (96 * f * g *
    l1a * wb * (J ^ 2)) + (96 * f * g * l1a * wb * (d ^ 2)) + (96 * f * g * l2a * wb * (J ^ 2))
    + (96 * f * g * l2a * wb * (d ^ 2)) + (-192 * J * d * e * f * l0a * wb) + (-192 * J * d * e
    * f * l1a * wb) + (-192 * J * d * e * f * l2a * wb) + (-192 * J * d * e * g * l0a * wb) +
    (-192 * J * d * e * g * l1a * wb) + (-192 * J * d * e * g * l2a * wb) + (-192 * J * d * f *
    g * l0a * wb) + (-192 * J * d * f * g * l1a * wb) + (-192 * J * d * f * g * l2a * wb) + (-96
    * J * d * e * f * l0a * wa) + (-96 * J * d * e * f * l1a * wa) + (-96 * J * d * e * f * l2a
    * wa) + (-96 * J * d * f * g * l0a * wa) + (-96 * J * d * f * g * l1a * wa) + (-96 * J * d *
    f * g * l2a * wa))

def block422 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * ha * r00 * (f ^ 2)) + (48 * ha * r01 * (f ^ 2)) + (48 * ha * r02 * (e ^ 2)) + (48 * ha
    * r02 * (f ^ 2)) + (48 * ha * r02 * (g ^ 2)) + (48 * ha * r10 * (f ^ 2)) + (48 * ha * r11 *
    (f ^ 2)) + (48 * ha * r12 * (e ^ 2)) + (48 * ha * r12 * (f ^ 2)) + (48 * ha * r12 * (g ^ 2))
    + (48 * ha * r20 * (f ^ 2)) + (48 * ha * r21 * (f ^ 2)) + (48 * ha * r22 * (e ^ 2)) + (48 *
    ha * r22 * (f ^ 2)) + (48 * ha * r22 * (g ^ 2)) + (48 * d * haa * r00 * (f ^ 2)) + (48 * d *
    haa * r01 * (f ^ 2)) + (48 * d * haa * r02 * (e ^ 2)) + (48 * d * haa * r02 * (f ^ 2)) + (48
    * d * haa * r02 * (g ^ 2)) + (48 * d * haa * r10 * (f ^ 2)) + (48 * d * haa * r11 * (f ^ 2))
    + (48 * d * haa * r12 * (e ^ 2)) + (48 * d * haa * r12 * (f ^ 2)) + (48 * d * haa * r12 * (g
    ^ 2)) + (48 * d * haa * r20 * (f ^ 2)) + (48 * d * haa * r21 * (f ^ 2)) + (48 * d * haa *
    r22 * (e ^ 2)) + (48 * d * haa * r22 * (f ^ 2)) + (48 * d * haa * r22 * (g ^ 2)) + (48 * e *
    f * ha * r01) + (48 * e * f * ha * r11) + (48 * e * f * ha * r21) + (48 * f * g * ha * r01)
    + (48 * f * g * ha * r11) + (48 * f * g * ha * r21) + (96 * e * f * ha * r02) + (96 * e * f
    * ha * r12) + (96 * e * f * ha * r22) + (96 * e * g * ha * r02) + (96 * e * g * ha * r12) +
    (96 * e * g * ha * r22) + (96 * f * g * ha * r02) + (96 * f * g * ha * r12) + (96 * f * g *
    ha * r22) + (48 * d * e * f * haa * r01) + (48 * d * e * f * haa * r11) + (48 * d * e * f *
    haa * r21) + (48 * d * f * g * haa * r01) + (48 * d * f * g * haa * r11) + (48 * d * f * g *
    haa * r21) + (96 * d * e * f * haa * r02) + (96 * d * e * f * haa * r12) + (96 * d * e * f *
    haa * r22) + (96 * d * e * g * haa * r02) + (96 * d * e * g * haa * r12) + (96 * d * e * g *
    haa * r22) + (96 * d * f * g * haa * r02) + (96 * d * f * g * haa * r12) + (96 * d * f * g *
    haa * r22))

def block423 (d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) : ℝ :=
  ((48 * haa * r00 * (f ^ 2)) + (48 * haa * r01 * (f ^ 2)) + (48 * haa * r02 * (e ^ 2)) + (48 *
    haa * r02 * (f ^ 2)) + (48 * haa * r02 * (g ^ 2)) + (48 * haa * r10 * (f ^ 2)) + (48 * haa *
    r11 * (f ^ 2)) + (48 * haa * r12 * (e ^ 2)) + (48 * haa * r12 * (f ^ 2)) + (48 * haa * r12 *
    (g ^ 2)) + (48 * haa * r20 * (f ^ 2)) + (48 * haa * r21 * (f ^ 2)) + (48 * haa * r22 * (e ^
    2)) + (48 * haa * r22 * (f ^ 2)) + (48 * haa * r22 * (g ^ 2)) + (48 * e * f * haa * r01) +
    (48 * e * f * haa * r11) + (48 * e * f * haa * r21) + (48 * f * g * haa * r01) + (48 * f * g
    * haa * r11) + (48 * f * g * haa * r21) + (96 * e * f * haa * r02) + (96 * e * f * haa *
    r12) + (96 * e * f * haa * r22) + (96 * e * g * haa * r02) + (96 * e * g * haa * r12) + (96
    * e * g * haa * r22) + (96 * f * g * haa * r02) + (96 * f * g * haa * r12) + (96 * f * g *
    haa * r22))

/-- Finite symbolic decomposition with scalar coefficients held abstract. -/
theorem decompose42 (a d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 : ℝ) :
    2*(f^2*(coeff40 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+f*(e+f+g)*(coeff41 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)+(e+f+g)^2*(coeff42 a d wa wb D J (a*l0a) (l1c+a*l1a) (l2c+a*l2a) (hc+a*ha+a^2*haa) r00 r01 r02 r10 r11 r12 r20 r21 r22)) =
      block420 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a*block421 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^2*block422 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22+a^3*block423 d e f g wa wb D J l0a l1c l1a l2c l2a hc ha haa r00 r01 r02 r10 r11 r12 r20 r21 r22 := by
  unfold coeff40 coeff41 coeff42 block420 block421 block422 block423
  ring

end
end SPR.N6.FirstBand.Split
