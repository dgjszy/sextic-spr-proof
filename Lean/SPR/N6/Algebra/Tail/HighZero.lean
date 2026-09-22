import SPR.N6.Algebra.LowerZero

/-!
# Small high-tail certificates for the zero direction

For the first and middle ratio entries, it suffices to certify the zero
quadratic itself on t-B >= f. The positive baseline can then be added.
The two slack polynomials below are consequences of actual even widths.
Every displayed coefficient identity is checked in Lean; the discovery LP
and exported JSON are not dependencies of this module.
-/
namespace SPR.N6.Tail.HighZero
noncomputable section
set_option maxRecDepth 8192

def slack (d e f g h : ℝ) : ℝ :=
  f*(f+g)-d*(e+2*f+g)-(2*d+e)*(d+h-f)

def kappa (d f h : ℝ) : ℝ := d+h-f

/-- Exact coefficient of the high-frequency power 0 in ratio entry 0. -/
def c00 (d e f g h : ℝ) : ℝ :=
  ((((((-1) * g) * f) * e + (((-2) * g) * f ^ 2)) * e + (((-1) * g) * f ^ 3)) * d + ((((((1) * f
    + ((1) * g + ((1) * h))) * e + (((5) * f + ((5) * g + ((4) * h))) * f + (((2) * g + ((2) *
    h)) * g))) * e + ((((9) * f + ((10) * g + ((7) * h))) * f + (((7) * g + ((7) * h)) * g)) * f
    + (((1) * g + ((1) * h)) * g ^ 2))) * e + (((((7) * f + ((9) * g + ((6) * h))) * f + (((8) *
    g + ((8) * h)) * g)) * f + (((2) * g + ((2) * h)) * g ^ 2)) * f)) * e + (((((2) * f + ((3) *
    g + ((2) * h))) * f + (((3) * g + ((3) * h)) * g)) * f + (((1) * g + ((1) * h)) * g ^ 2)) *
    f ^ 2))) * d + (((((((1) * f + ((1) * g + ((1) * h))) * e + (((6) * f + ((7) * g + ((5) *
    h))) * f + (((2) * g + ((2) * h)) * g))) * e + ((((14) * f + ((19) * g + ((11) * h))) * f +
    (((9) * g + ((9) * h)) * g)) * f + (((1) * g + ((1) * h)) * g ^ 2))) * e + (((((16) * f +
    ((25) * g + ((13) * h))) * f + (((15) * g + ((15) * h)) * g)) * f + (((3) * g + ((3) * h)) *
    g ^ 2)) * f)) * e + (((((9) * f + ((16) * g + ((8) * h))) * f + (((11) * g + ((11) * h)) *
    g)) * f + (((3) * g + ((3) * h)) * g ^ 2)) * f ^ 2)) * e + (((((2) * f + ((4) * g + ((2) *
    h))) * f + (((3) * g + ((3) * h)) * g)) * f + (((1) * g + ((1) * h)) * g ^ 2)) * f ^ 3))

def r00 (d e f g h : ℝ) : ℝ :=
  ((((((1) * g) * f) * e + (((2) * g) * f ^ 2)) * d + ((((((1 / 2)) * g + ((1) * h)) * g) * f) *
    e + ((((1) * g + ((2) * h)) * g) * f ^ 2))) * d + ((((((1) * f + ((1) * g + ((1) * h))) * e
    + (((5) * f + ((5) * g + ((4) * h))) * f + (((2) * g + ((2) * h)) * g))) * e + ((((9) * f +
    (((19 / 2)) * g + ((7) * h))) * f + (((7) * g + (((15 / 2)) * h)) * g)) * f + (((1) * g +
    ((1) * h)) * g ^ 2))) * e + (((((7) * f + (((17 / 2)) * g + ((6) * h))) * f + ((((15 / 2)) *
    g + ((9) * h)) * g)) * f + (((2) * g + ((2) * h)) * g ^ 2)) * f)) * e + (((((2) * f + ((2) *
    g + ((2) * h))) * f + ((((5 / 2)) * g + ((4) * h)) * g)) * f + (((1) * g + ((1) * h)) * g ^
    2)) * f ^ 2))) * d + (((((((1) * f + ((1) * g + ((1) * h))) * e + (((6) * f + ((7) * g +
    ((5) * h))) * f + (((2) * g + ((2) * h)) * g))) * e + ((((14) * f + ((19) * g + ((11) * h)))
    * f + (((9) * g + ((9) * h)) * g)) * f + (((1) * g + ((1) * h)) * g ^ 2))) * e + (((((16) *
    f + ((25) * g + ((13) * h))) * f + (((15) * g + ((15) * h)) * g)) * f + (((3) * g + ((3) *
    h)) * g ^ 2)) * f)) * e + (((((9) * f + (((31 / 2)) * g + ((8) * h))) * f + (((11) * g +
    (((23 / 2)) * h)) * g)) * f + (((3) * g + ((3) * h)) * g ^ 2)) * f ^ 2)) * e + (((((2) * f +
    (((7 / 2)) * g + ((2) * h))) * f + ((((5 / 2)) * g + ((3) * h)) * g)) * f + (((1) * g + ((1)
    * h)) * g ^ 2)) * f ^ 3))

def s00 (d e f g h : ℝ) : ℝ :=
  (((((1 / 2)) * g) * f) * e + (((1) * g) * f ^ 2)) * d + ((((1 / 2)) * g) * f ^ 3)

def k00 (d e f g h : ℝ) : ℝ :=
  0

set_option maxHeartbeats 0 in
-- One small polynomial identity, including all slack terms.
theorem identity00 (d e f g h : ℝ) :
    c00 d e f g h = r00 d e f g h+
      slack d e f g h*s00 d e f g h+kappa d f h*k00 d e f g h := by
  unfold c00 r00 s00 k00 slack kappa
  ring

set_option maxHeartbeats 0 in
-- Positivity uses the actual two slack hypotheses, never an independent choice.
theorem nonnegative00 {d e f g h : ℝ} (hd : 0 ≤ d) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hh : 0 ≤ h)
    (hS : 0 ≤ slack d e f g h) (hK : 0 ≤ kappa d f h) :
    0 ≤ c00 d e f g h := by
  rw [identity00]
  have hr : 0 ≤ r00 d e f g h := by unfold r00; positivity
  have hs : 0 ≤ s00 d e f g h := by unfold s00; positivity
  have hk : 0 ≤ k00 d e f g h := by unfold k00; positivity
  exact add_nonneg (add_nonneg hr (mul_nonneg hS hs)) (mul_nonneg hK hk)

/-- Exact coefficient of the high-frequency power 1 in ratio entry 0. -/
def c01 (d e f g h : ℝ) : ℝ :=
  (((((-1) * f + ((-1) * g)) * e + (((-3) * f + ((-4) * g)) * f)) * e + (((-2) * f + ((-3) * g))
    * f ^ 2)) * d + (((((1) * h) * e + (((2) * f + ((3) * g + ((6) * h))) * f + (((4) * g + ((5)
    * h)) * g))) * e + ((((4) * f + ((8) * g + ((11) * h))) * f + (((10) * g + ((12) * h)) * g))
    * f + (((2) * g + ((2) * h)) * g ^ 2))) * e + (((((2) * f + ((5) * g + ((6) * h))) * f +
    (((6) * g + ((7) * h)) * g)) * f + (((2) * g + ((2) * h)) * g ^ 2)) * f))) * d + ((((((2) *
    f + ((2) * g + ((2) * h))) * e + (((8) * f + ((10) * g + ((9) * h))) * f + (((4) * g + ((6)
    * h)) * g + ((1) * h ^ 2)))) * e + ((((12) * f + ((19) * g + ((16) * h))) * f + (((12) * g +
    ((16) * h)) * g + ((1) * h ^ 2))) * f + (((2) * g + ((2) * h)) * g ^ 2))) * e + (((((8) * f
    + ((16) * g + ((13) * h))) * f + (((13) * g + ((16) * h)) * g)) * f + (((4) * g + ((4) * h))
    * g ^ 2)) * f)) * e + (((((2) * f + ((5) * g + ((4) * h))) * f + (((5) * g + ((6) * h)) *
    g)) * f + (((2) * g + ((2) * h)) * g ^ 2)) * f ^ 2))

def r01 (d e f g h : ℝ) : ℝ :=
  (((((1) * f) * e + (((3) * f + (((7 / 2)) * g)) * f)) * d + ((((1) * h) * f) * e + ((((3) * h)
    * f + ((((7 / 4)) * g + (((7 / 2)) * h)) * g)) * f))) * d + (((((1) * g + ((1) * h)) * e +
    ((((3 / 2)) * f + ((3) * g + (((13 / 2)) * h))) * f + ((((9 / 2)) * g + ((6) * h)) * g))) *
    e + ((((4) * f + (((29 / 4)) * g + (((25 / 2)) * h))) * f + (((10) * g + (((55 / 4)) * h)) *
    g)) * f + (((2) * g + ((2) * h)) * g ^ 2))) * e + ((((((1 / 2)) * f + (((11 / 4)) * g + ((8)
    * h))) * f + (((5) * g + (((17 / 2)) * h)) * g)) * f + (((2) * g + ((2) * h)) * g ^ 2)) *
    f))) * d + ((((((2) * f + ((2) * g + ((2) * h))) * e + (((8) * f + (((19 / 2)) * g + ((9) *
    h))) * f + (((4) * g + (((13 / 2)) * h)) * g + ((1) * h ^ 2)))) * e + ((((12) * f + (((37 /
    2)) * g + ((16) * h))) * f + ((((23 / 2)) * g + ((16) * h)) * g + ((1) * h ^ 2))) * f +
    (((2) * g + ((2) * h)) * g ^ 2))) * e + (((((7) * f + (((61 / 4)) * g + ((14) * h))) * f +
    (((13) * g + (((67 / 4)) * h)) * g)) * f + (((4) * g + ((4) * h)) * g ^ 2)) * f)) * e +
    (((((1) * f + (((13 / 4)) * g + ((4) * h))) * f + ((((17 / 4)) * g + ((6) * h)) * g)) * f +
    (((2) * g + ((2) * h)) * g ^ 2)) * f ^ 2))

def s01 (d e f g h : ℝ) : ℝ :=
  ((((1 / 2)) * f) * e + ((((3 / 2)) * f + (((7 / 4)) * g)) * f)) * d + ((((1 / 2)) * g) * e ^ 2
    + (((1) * f + (((3 / 4)) * g)) * f ^ 2))

def k01 (d e f g h : ℝ) : ℝ :=
  0

set_option maxHeartbeats 0 in
-- One small polynomial identity, including all slack terms.
theorem identity01 (d e f g h : ℝ) :
    c01 d e f g h = r01 d e f g h+
      slack d e f g h*s01 d e f g h+kappa d f h*k01 d e f g h := by
  unfold c01 r01 s01 k01 slack kappa
  ring

set_option maxHeartbeats 0 in
-- Positivity uses the actual two slack hypotheses, never an independent choice.
theorem nonnegative01 {d e f g h : ℝ} (hd : 0 ≤ d) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hh : 0 ≤ h)
    (hS : 0 ≤ slack d e f g h) (hK : 0 ≤ kappa d f h) :
    0 ≤ c01 d e f g h := by
  rw [identity01]
  have hr : 0 ≤ r01 d e f g h := by unfold r01; positivity
  have hs : 0 ≤ s01 d e f g h := by unfold s01; positivity
  have hk : 0 ≤ k01 d e f g h := by unfold k01; positivity
  exact add_nonneg (add_nonneg hr (mul_nonneg hS hs)) (mul_nonneg hK hk)

/-- Exact coefficient of the high-frequency power 2 in ratio entry 0. -/
def c02 (d e f g h : ℝ) : ℝ :=
  (((1) * g ^ 2) * d + ((((1) * f + ((1) * g + ((1) * h))) * e + (((3) * f + ((5) * g + ((4) *
    h))) * f + (((4) * g + ((4) * h)) * g))) * e + ((((2) * f + ((5) * g + ((4) * h))) * f +
    (((4) * g + ((4) * h)) * g)) * f + (((1) * g + ((1) * h)) * g ^ 2)))) * d + (((((1) * f +
    ((1) * g + ((1) * h))) * e + (((2) * f + ((3) * g + ((4) * h))) * f + (((2) * g + ((4) * h))
    * g + ((1) * h ^ 2)))) * e + ((((1) * f + ((3) * g + ((5) * h))) * f + (((3) * g + ((5) *
    h)) * g)) * f + (((1) * g + ((1) * h)) * g ^ 2))) * e + (((((1) * g + ((2) * h)) * f + (((2)
    * g + ((3) * h)) * g)) * f + (((1) * g + ((1) * h)) * g ^ 2)) * f))

def r02 (d e f g h : ℝ) : ℝ :=
  (((1) * g ^ 2) * d + ((((1) * f + ((1) * g + ((1) * h))) * e + (((3) * f + ((5) * g + ((4) *
    h))) * f + (((4) * g + ((4) * h)) * g))) * e + ((((2) * f + ((5) * g + ((4) * h))) * f +
    (((4) * g + ((4) * h)) * g)) * f + (((1) * g + ((1) * h)) * g ^ 2)))) * d + (((((1) * f +
    ((1) * g + ((1) * h))) * e + (((2) * f + ((3) * g + ((4) * h))) * f + (((2) * g + ((4) * h))
    * g + ((1) * h ^ 2)))) * e + ((((1) * f + ((3) * g + ((5) * h))) * f + (((3) * g + ((5) *
    h)) * g)) * f + (((1) * g + ((1) * h)) * g ^ 2))) * e + (((((1) * g + ((2) * h)) * f + (((2)
    * g + ((3) * h)) * g)) * f + (((1) * g + ((1) * h)) * g ^ 2)) * f))

def s02 (d e f g h : ℝ) : ℝ :=
  0

def k02 (d e f g h : ℝ) : ℝ :=
  0

set_option maxHeartbeats 0 in
-- One small polynomial identity, including all slack terms.
theorem identity02 (d e f g h : ℝ) :
    c02 d e f g h = r02 d e f g h+
      slack d e f g h*s02 d e f g h+kappa d f h*k02 d e f g h := by
  unfold c02 r02 s02 k02 slack kappa
  ring

set_option maxHeartbeats 0 in
-- Positivity uses the actual two slack hypotheses, never an independent choice.
theorem nonnegative02 {d e f g h : ℝ} (hd : 0 ≤ d) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hh : 0 ≤ h)
    (hS : 0 ≤ slack d e f g h) (hK : 0 ≤ kappa d f h) :
    0 ≤ c02 d e f g h := by
  rw [identity02]
  have hr : 0 ≤ r02 d e f g h := by unfold r02; positivity
  have hs : 0 ≤ s02 d e f g h := by unfold s02; positivity
  have hk : 0 ≤ k02 d e f g h := by unfold k02; positivity
  exact add_nonneg (add_nonneg hr (mul_nonneg hS hs)) (mul_nonneg hK hk)

/-- Exact coefficient of the high-frequency power 0 in ratio entry 1. -/
def c10 (d e f g h : ℝ) : ℝ :=
  (((((((-1) * g) * f) * e + ((((-4) * g) * f + ((-1) * g ^ 2)) * f)) * e + ((((-5) * g) * f +
    ((-2) * g ^ 2)) * f ^ 2)) * e + ((((-2) * g) * f + ((-1) * g ^ 2)) * f ^ 3)) * d + (((((((3)
    * f + ((1) * g + ((2) * h))) * f) * e + ((((13) * f + ((9) * g + ((9) * h))) * f + (((3) * g
    + ((5) * h)) * g)) * f)) * e + (((((21) * f + ((22) * g + ((16) * h))) * f + (((12) * g +
    ((17) * h)) * g)) * f + (((2) * g + ((3) * h)) * g ^ 2)) * f)) * e + (((((15) * f + ((21) *
    g + ((13) * h))) * f + (((15) * g + ((19) * h)) * g)) * f + (((4) * g + ((6) * h)) * g ^ 2))
    * f ^ 2)) * e + (((((4) * f + ((7) * g + ((4) * h))) * f + (((6) * g + ((7) * h)) * g)) * f
    + (((2) * g + ((3) * h)) * g ^ 2)) * f ^ 3))) * d + ((((((((3) * f + ((2) * g + ((2) * h)))
    * f) * e + ((((16) * f + ((16) * g + ((11) * h))) * f + (((4) * g + ((5) * h)) * g)) * f)) *
    e + (((((34) * f + ((45) * g + ((25) * h))) * f + (((19) * g + ((22) * h)) * g)) * f + (((2)
    * g + ((3) * h)) * g ^ 2)) * f)) * e + (((((36) * f + ((59) * g + ((29) * h))) * f + (((33)
    * g + ((36) * h)) * g)) * f + (((6) * g + ((9) * h)) * g ^ 2)) * f ^ 2)) * e + (((((19) * f
    + ((37) * g + ((17) * h))) * f + (((25) * g + ((26) * h)) * g)) * f + (((6) * g + ((9) * h))
    * g ^ 2)) * f ^ 3)) * e + (((((4) * f + ((9) * g + ((4) * h))) * f + (((7) * g + ((7) * h))
    * g)) * f + (((2) * g + ((3) * h)) * g ^ 2)) * f ^ 4))

def r10 (d e f g h : ℝ) : ℝ :=
  (((((((1) * g) * f) * e + (((4) * g) * f ^ 2)) * e + (((5) * g) * f ^ 3)) * d + ((((((1) * h)
    * g) * f) * e + ((((4) * h) * g) * f ^ 2)) * e + (((((3 / 2)) * g + ((5) * h)) * g) * f ^
    3))) * d + (((((((3) * f + ((1) * g + ((2) * h))) * f) * e + ((((13) * f + (((17 / 2)) * g +
    ((9) * h))) * f + ((((7 / 2)) * g + (((11 / 2)) * h)) * g)) * f)) * e + (((((21) * f + (((39
    / 2)) * g + ((16) * h))) * f + ((((23 / 2)) * g + ((19) * h)) * g)) * f + ((((9 / 4)) * g +
    (((7 / 2)) * h)) * g ^ 2)) * f)) * e + (((((15) * f + (((37 / 2)) * g + ((13) * h))) * f +
    (((13) * g + (((43 / 2)) * h)) * g)) * f + (((4) * g + ((6) * h)) * g ^ 2)) * f ^ 2)) * e +
    (((((4) * f + (((9 / 2)) * g + ((4) * h))) * f + ((((9 / 2)) * g + ((9) * h)) * g)) * f +
    (((2) * g + ((3) * h)) * g ^ 2)) * f ^ 3))) * d + ((((((((3) * f + ((2) * g + ((2) * h))) *
    f) * e + ((((16) * f + ((16) * g + ((11) * h))) * f + (((4) * g + ((5) * h)) * g)) * f)) * e
    + (((((34) * f + ((45) * g + ((25) * h))) * f + ((((75 / 4)) * g + ((22) * h)) * g)) * f +
    (((2) * g + (((13 / 4)) * h)) * g ^ 2)) * f)) * e + (((((36) * f + ((59) * g + ((29) * h)))
    * f + ((((131 / 4)) * g + ((36) * h)) * g)) * f + ((((23 / 4)) * g + ((9) * h)) * g ^ 2)) *
    f ^ 2)) * e + (((((19) * f + ((36) * g + ((17) * h))) * f + (((25) * g + ((27) * h)) * g)) *
    f + (((6) * g + ((9) * h)) * g ^ 2)) * f ^ 3)) * e + (((((4) * f + ((8) * g + ((4) * h))) *
    f + (((6) * g + ((7) * h)) * g)) * f + (((2) * g + ((3) * h)) * g ^ 2)) * f ^ 4))

def s10 (d e f g h : ℝ) : ℝ :=
  ((((((1 / 2)) * g) * f) * e + (((2) * g) * f ^ 2)) * e + ((((5 / 2)) * g) * f ^ 3)) * d +
    (((((1 / 4)) * g ^ 2) * f) * e ^ 2 + (((1) * g) * f ^ 4))

def k10 (d e f g h : ℝ) : ℝ :=
  0

set_option maxHeartbeats 0 in
-- One small polynomial identity, including all slack terms.
theorem identity10 (d e f g h : ℝ) :
    c10 d e f g h = r10 d e f g h+
      slack d e f g h*s10 d e f g h+kappa d f h*k10 d e f g h := by
  unfold c10 r10 s10 k10 slack kappa
  ring

set_option maxHeartbeats 0 in
-- Positivity uses the actual two slack hypotheses, never an independent choice.
theorem nonnegative10 {d e f g h : ℝ} (hd : 0 ≤ d) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hh : 0 ≤ h)
    (hS : 0 ≤ slack d e f g h) (hK : 0 ≤ kappa d f h) :
    0 ≤ c10 d e f g h := by
  rw [identity10]
  have hr : 0 ≤ r10 d e f g h := by unfold r10; positivity
  have hs : 0 ≤ s10 d e f g h := by unfold s10; positivity
  have hk : 0 ≤ k10 d e f g h := by unfold k10; positivity
  exact add_nonneg (add_nonneg hr (mul_nonneg hS hs)) (mul_nonneg hK hk)

/-- Exact coefficient of the high-frequency power 1 in ratio entry 1. -/
def c11 (d e f g h : ℝ) : ℝ :=
  ((((((-1) * f + ((-1) * g)) * e + (((-6) * f + ((-7) * g)) * f + ((-1) * g ^ 2))) * e +
    ((((-9) * f + ((-15) * g)) * f + ((-4) * g ^ 2)) * f)) * e + ((((-4) * f + ((-9) * g)) * f +
    ((-3) * g ^ 2)) * f ^ 2)) * d + ((((((-2) * f + ((-2) * g + ((-1) * h))) * e + (((-5) * f +
    ((-9) * g + ((2) * h))) * f + ((-2) * g ^ 2))) * e + ((((-5) * g + ((18) * h)) * f + (((1) *
    g + ((14) * h)) * g)) * f + (((1) * h) * g ^ 2))) * e + (((((7) * f + ((11) * g + ((27) *
    h))) * f + (((14) * g + ((33) * h)) * g)) * f + (((4) * g + ((8) * h)) * g ^ 2)) * f)) * e +
    (((((4) * f + ((9) * g + ((12) * h))) * f + (((11) * g + ((19) * h)) * g)) * f + (((4) * g +
    ((7) * h)) * g ^ 2)) * f ^ 2))) * d + (((((((4) * f + ((2) * g + ((5) * h))) * f + (((2) *
    h) * g + ((1) * h ^ 2))) * e + ((((15) * f + ((15) * g + ((23) * h))) * f + (((4) * g +
    ((17) * h)) * g + ((3) * h ^ 2))) * f + ((((2) * h) * g + ((1) * h ^ 2)) * g))) * e +
    (((((22) * f + ((32) * g + ((38) * h))) * f + (((16) * g + ((41) * h)) * g + ((2) * h ^ 2)))
    * f + ((((2) * g + ((8) * h)) * g + ((1) * h ^ 2)) * g)) * f)) * e + (((((15) * f + ((28) *
    g + ((28) * h))) * f + (((20) * g + ((40) * h)) * g)) * f + (((5) * g + ((12) * h)) * g ^
    2)) * f ^ 2)) * e + (((((4) * f + ((9) * g + ((8) * h))) * f + (((8) * g + ((14) * h)) * g))
    * f + (((3) * g + ((6) * h)) * g ^ 2)) * f ^ 3))

def r11 (d e f g h : ℝ) : ℝ :=
  (((((1) * f ^ 2) * e + (((8) * f + ((12) * g)) * f ^ 2)) * d + (((((1) * f + ((1) * g + ((1) *
    h))) * e + (((1) * g) * f)) * e + (((1) * h) * f ^ 2)) * e + ((((8) * h) * f + (((3) * g +
    ((12) * h)) * g)) * f ^ 2))) * d + ((((((4) * h) * f + ((((5 / 2)) * h) * g + ((1) * h ^
    2))) * e + (((((1 / 2)) * f + (((47 / 2)) * h)) * f + (((9) * g + ((22) * h)) * g)) * f +
    ((((1 / 2)) * g + ((2) * h)) * g ^ 2))) * e + ((((((13 / 2)) * f + ((10) * g + ((32) * h)))
    * f + ((((61 / 4)) * g + (((83 / 2)) * h)) * g)) * f + (((6) * g + ((12) * h)) * g ^ 2)) *
    f)) * e + (((((1) * g + ((16) * h)) * f + ((((15 / 2)) * g + ((24) * h)) * g)) * f + (((4) *
    g + ((7) * h)) * g ^ 2)) * f ^ 2))) * d + (((((((3) * f + ((1) * g + (((11 / 2)) * h))) * f
    + (((3) * h) * g + (((3 / 2)) * h ^ 2))) * e + (((((23 / 2)) * f + ((9) * g + ((25) * h))) *
    f + ((((5 / 2)) * g + (((41 / 2)) * h)) * g + ((3) * h ^ 2))) * f + (((((5 / 2)) * h) * g +
    ((1) * h ^ 2)) * g))) * e + (((((19) * f + (((97 / 4)) * g + (((77 / 2)) * h))) * f + ((((19
    / 2)) * g + (((169 / 4)) * h)) * g + ((2) * h ^ 2))) * f + (((((3 / 2)) * g + ((10) * h)) *
    g + ((1) * h ^ 2)) * g)) * f)) * e + ((((((25 / 2)) * f + (((95 / 4)) * g + ((30) * h))) * f
    + ((((67 / 4)) * g + (((85 / 2)) * h)) * g)) * f + (((3) * g + ((12) * h)) * g ^ 2)) * f ^
    2)) * e + (((((2) * f + (((9 / 2)) * g + ((8) * h))) * f + ((((11 / 2)) * g + ((14) * h)) *
    g)) * f + (((3) * g + ((6) * h)) * g ^ 2)) * f ^ 3))

def s11 (d e f g h : ℝ) : ℝ :=
  ((((1 / 2)) * f ^ 2) * e + (((4) * f + ((6) * g)) * f ^ 2)) * d + (((((1) * f + ((1) * g +
    (((1 / 2)) * h))) * e + ((((5 / 2)) * f + ((4) * g)) * f + (((1 / 2)) * g ^ 2))) * e +
    (((((1 / 2)) * f + (((5 / 4)) * g)) * f + ((2) * g ^ 2)) * f)) * e + (((2) * f + (((5 / 2))
    * g)) * f ^ 3))

def k11 (d e f g h : ℝ) : ℝ :=
  0

set_option maxHeartbeats 0 in
-- One small polynomial identity, including all slack terms.
theorem identity11 (d e f g h : ℝ) :
    c11 d e f g h = r11 d e f g h+
      slack d e f g h*s11 d e f g h+kappa d f h*k11 d e f g h := by
  unfold c11 r11 s11 k11 slack kappa
  ring

set_option maxHeartbeats 0 in
-- Positivity uses the actual two slack hypotheses, never an independent choice.
theorem nonnegative11 {d e f g h : ℝ} (hd : 0 ≤ d) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hh : 0 ≤ h)
    (hS : 0 ≤ slack d e f g h) (hK : 0 ≤ kappa d f h) :
    0 ≤ c11 d e f g h := by
  rw [identity11]
  have hr : 0 ≤ r11 d e f g h := by unfold r11; positivity
  have hs : 0 ≤ s11 d e f g h := by unfold s11; positivity
  have hk : 0 ≤ k11 d e f g h := by unfold k11; positivity
  exact add_nonneg (add_nonneg hr (mul_nonneg hS hs)) (mul_nonneg hK hk)

/-- Exact coefficient of the high-frequency power 2 in ratio entry 1. -/
def c12 (d e f g h : ℝ) : ℝ :=
  ((((1) * g ^ 2) * e + (((2) * g ^ 2) * f + ((1) * g ^ 3))) * d + (((((3) * f + ((3) * g + ((4)
    * h))) * f + (((2) * g + ((2) * h)) * g)) * e + ((((7) * f + ((14) * g + ((12) * h))) * f +
    (((10) * g + ((12) * h)) * g)) * f + (((2) * g + ((2) * h)) * g ^ 2))) * e + (((((4) * f +
    ((11) * g + ((8) * h))) * f + (((11) * g + ((12) * h)) * g)) * f + (((3) * g + ((4) * h)) *
    g ^ 2)) * f))) * d + ((((((1) * f + ((3) * h)) * f + (((2) * h) * g + ((1) * h ^ 2))) * e +
    ((((1) * f + ((1) * g + ((11) * h))) * f + (((10) * h) * g + ((2) * h ^ 2))) * f + ((((2) *
    h) * g + ((1) * h ^ 2)) * g))) * e + (((((11) * h) * f + (((1) * g + ((14) * h)) * g)) * f +
    (((3) * h) * g ^ 2)) * f)) * e + (((((4) * h) * f + (((1) * g + ((7) * h)) * g)) * f + (((1)
    * g + ((3) * h)) * g ^ 2)) * f ^ 2))

def r12 (d e f g h : ℝ) : ℝ :=
  ((((1) * g ^ 2) * e + (((2) * g ^ 2) * f + ((1) * g ^ 3))) * d + (((((3) * f + ((3) * g + ((4)
    * h))) * f + (((2) * g + ((2) * h)) * g)) * e + ((((7) * f + ((14) * g + ((12) * h))) * f +
    (((10) * g + ((12) * h)) * g)) * f + (((2) * g + ((2) * h)) * g ^ 2))) * e + (((((4) * f +
    ((11) * g + ((8) * h))) * f + (((11) * g + ((12) * h)) * g)) * f + (((3) * g + ((4) * h)) *
    g ^ 2)) * f))) * d + ((((((1) * f + ((3) * h)) * f + (((2) * h) * g + ((1) * h ^ 2))) * e +
    ((((1) * f + ((1) * g + ((11) * h))) * f + (((10) * h) * g + ((2) * h ^ 2))) * f + ((((2) *
    h) * g + ((1) * h ^ 2)) * g))) * e + (((((11) * h) * f + (((1) * g + ((14) * h)) * g)) * f +
    (((3) * h) * g ^ 2)) * f)) * e + (((((4) * h) * f + (((1) * g + ((7) * h)) * g)) * f + (((1)
    * g + ((3) * h)) * g ^ 2)) * f ^ 2))

def s12 (d e f g h : ℝ) : ℝ :=
  0

def k12 (d e f g h : ℝ) : ℝ :=
  0

set_option maxHeartbeats 0 in
-- One small polynomial identity, including all slack terms.
theorem identity12 (d e f g h : ℝ) :
    c12 d e f g h = r12 d e f g h+
      slack d e f g h*s12 d e f g h+kappa d f h*k12 d e f g h := by
  unfold c12 r12 s12 k12 slack kappa
  ring

set_option maxHeartbeats 0 in
-- Positivity uses the actual two slack hypotheses, never an independent choice.
theorem nonnegative12 {d e f g h : ℝ} (hd : 0 ≤ d) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hh : 0 ≤ h)
    (hS : 0 ≤ slack d e f g h) (hK : 0 ≤ kappa d f h) :
    0 ≤ c12 d e f g h := by
  rw [identity12]
  have hr : 0 ≤ r12 d e f g h := by unfold r12; positivity
  have hs : 0 ≤ s12 d e f g h := by unfold s12; positivity
  have hk : 0 ≤ k12 d e f g h := by unfold k12; positivity
  exact add_nonneg (add_nonneg hr (mul_nonneg hS hs)) (mul_nonneg hK hk)

set_option maxHeartbeats 0 in
-- Translation and ratio interpolation are identities of the original zero quotient.
theorem source0 (d e f g h v : ℝ) :
    LowerZero.q0 d e f g h 1 (f+v) = c00 d e f g h+c01 d e f g h*v+c02 d e f g h*v^2 := by
  unfold LowerZero.q0 LowerZero.q00 LowerZero.q01 LowerZero.q02 c00 c01 c02
  ring

/-- The full high half-line is covered, including v=0. -/
theorem entry0_nonneg {d e f g h v : ℝ} (hd : 0 ≤ d) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hh : 0 ≤ h) (hv : 0 ≤ v)
    (hS : 0 ≤ slack d e f g h) (hK : 0 ≤ kappa d f h) :
    0 ≤ LowerZero.q0 d e f g h 1 (f+v) := by
  rw [source0]
  exact add_nonneg
    (add_nonneg (nonnegative00 hd he hf hg hh hS hK)
      (mul_nonneg (nonnegative01 hd he hf hg hh hS hK) hv))
    (mul_nonneg (nonnegative02 hd he hf hg hh hS hK) (sq_nonneg v))

set_option maxHeartbeats 0 in
-- Translation and ratio interpolation are identities of the original zero quotient.
theorem source1 (d e f g h v : ℝ) :
    2*f*LowerZero.q0 d e f g h 1 (f+v)+(e+g)/2*
      (LowerZero.q0 d e f g h 2 (f+v)-LowerZero.q0 d e f g h 0 (f+v)) = c10 d e f g h+c11 d e f g h*v+c12 d e f g h*v^2 := by
  unfold LowerZero.q0 LowerZero.q00 LowerZero.q01 LowerZero.q02 c10 c11 c12
  ring

/-- The full high half-line is covered, including v=0. -/
theorem entry1_nonneg {d e f g h v : ℝ} (hd : 0 ≤ d) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hh : 0 ≤ h) (hv : 0 ≤ v)
    (hS : 0 ≤ slack d e f g h) (hK : 0 ≤ kappa d f h) :
    0 ≤ 2*f*LowerZero.q0 d e f g h 1 (f+v)+(e+g)/2*
      (LowerZero.q0 d e f g h 2 (f+v)-LowerZero.q0 d e f g h 0 (f+v)) := by
  rw [source1]
  exact add_nonneg
    (add_nonneg (nonnegative10 hd he hf hg hh hS hK)
      (mul_nonneg (nonnegative11 hd he hf hg hh hS hK) hv))
    (mul_nonneg (nonnegative12 hd he hf hg hh hS hK) (sq_nonneg v))

end
end SPR.N6.Tail.HighZero
