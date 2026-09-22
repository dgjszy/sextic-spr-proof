import SPR.N6.Algebra.UpperInner.Core

/-!
# Static width-slack certificates for the upper inner frequency band

Every identity and every coefficient sign below is checked by the Lean kernel.
The five gaps are strictly positive; the two width slacks may vanish.
-/
namespace SPR.N6.UpperInner
noncomputable section
set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace MiddleLower

def entry00 (d e f g h : ℝ) : ℝ :=
  (((((((2) * f + ((4) * g)) * f + ((2) * g ^ 2)) * f ^ 2) * e + (((((6) * f + ((16) * g)) * f +
    ((14) * g ^ 2)) * f + ((4) * g ^ 3)) * f ^ 2)) * e + ((((((4) * f + ((12) * g)) * f + ((14)
    * g ^ 2)) * f + ((8) * g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 2)) * d + (((((((4) * f + ((8) *
    g)) * f + ((4) * g ^ 2)) * f ^ 2) * e + (((((12) * f + ((32) * g)) * f + ((28) * g ^ 2)) * f
    + ((8) * g ^ 3)) * f ^ 2)) * e + ((((((12) * f + ((36) * g + ((-2) * h))) * f + (((40) * g +
    ((-4) * h)) * g)) * f + (((20) * g + ((-2) * h)) * g ^ 2)) * f + ((4) * g ^ 4)) * f ^ 2)) *
    e + ((((((4) * f + ((14) * g)) * f + ((18) * g ^ 2)) * f + ((10) * g ^ 3)) * f + ((2) * g ^
    4)) * f ^ 3))) * d + ((((((((2) * f + ((4) * g)) * f + ((2) * g ^ 2)) * f ^ 2) * e + (((((6)
    * f + ((16) * g)) * f + ((14) * g ^ 2)) * f + ((4) * g ^ 3)) * f ^ 2)) * e + ((((((8) * f +
    ((24) * g + ((-2) * h))) * f + (((26) * g + ((-4) * h)) * g)) * f + (((12) * g + ((-2) * h))
    * g ^ 2)) * f + ((2) * g ^ 4)) * f ^ 2)) * e + ((((((4) * f + ((14) * g)) * f + ((18) * g ^
    2)) * f + ((10) * g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 3)) * e)

def entry00R (d e f g h : ℝ) : ℝ :=
  (((((((2) * f + ((4) * g)) * f + ((2) * g ^ 2)) * f ^ 2) * e + (((((10) * f + ((24) * g)) * f
    + ((18) * g ^ 2)) * f + ((4) * g ^ 3)) * f ^ 2)) * e + ((((((4) * f + ((12) * g)) * f +
    ((14) * g ^ 2)) * f + ((8) * g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 2)) * d + (((((((4) * f +
    ((8) * g)) * f + ((4) * g ^ 2)) * f ^ 2) * e + (((((16) * f + ((40) * g)) * f + ((32) * g ^
    2)) * f + ((8) * g ^ 3)) * f ^ 2)) * e + ((((((12) * f + ((38) * g + ((2) * h))) * f +
    (((44) * g + ((4) * h)) * g)) * f + (((22) * g + ((2) * h)) * g ^ 2)) * f + ((4) * g ^ 4)) *
    f ^ 2)) * e + ((((((4) * f + ((14) * g)) * f + ((18) * g ^ 2)) * f + ((10) * g ^ 3)) * f +
    ((2) * g ^ 4)) * f ^ 3))) * d + ((((((((2) * f + ((4) * g)) * f + ((2) * g ^ 2)) * f ^ 2) *
    e + (((((6) * f + ((16) * g)) * f + ((14) * g ^ 2)) * f + ((4) * g ^ 3)) * f ^ 2)) * e +
    ((((((6) * f + ((20) * g)) * f + ((24) * g ^ 2)) * f + ((12) * g ^ 3)) * f + ((2) * g ^ 4))
    * f ^ 2)) * e + ((((((2) * f + ((8) * g)) * f + ((12) * g ^ 2)) * f + ((8) * g ^ 3)) * f +
    ((2) * g ^ 4)) * f ^ 3)) * e)

def entry00S (d e f g h : ℝ) : ℝ :=
  ((((2) * f + ((4) * g)) * f + ((2) * g ^ 2)) * f ^ 3) * e

def entry00K (d e f g h : ℝ) : ℝ :=
  0

/-- This exact decomposition permits zero first or second width. -/
theorem entry00_identity (d e f g h : ℝ) :
    1*entry00 d e f g h = entry00R d e f g h +
      secondSlack d e f g h*entry00S d e f g h+
      firstSlack d f h*entry00K d e f g h := by
  unfold entry00 entry00R entry00S entry00K secondSlack firstSlack
  ring

/-- Strictness comes from a nonzero positive remainder, independently of the width slacks. -/
theorem entry00_pos {d e f g h : ℝ}
    (hd : 0 < d) (he : 0 < e) (hf : 0 < f) (hg : 0 < g) (hh : 0 < h)
    (hS : 0 ≤ secondSlack d e f g h) (hK : 0 ≤ firstSlack d f h) :
    0 < entry00 d e f g h := by
  have hR : 0 < entry00R d e f g h := by unfold entry00R; positivity
  have hMS : 0 ≤ entry00S d e f g h := by unfold entry00S; positivity
  have hMK : 0 ≤ entry00K d e f g h := by unfold entry00K; positivity
  have hi := entry00_identity d e f g h
  have hpS := mul_nonneg hS hMS
  have hpK := mul_nonneg hK hMK
  linarith only [hi, hR, hpS, hpK]

def entry01 (d e f g h : ℝ) : ℝ :=
  (((((((3) * f + ((6) * g)) * f + ((3) * g ^ 2)) * f ^ 2) * e + (((((7) * f + ((19) * g)) * f +
    ((17) * g ^ 2)) * f + ((5) * g ^ 3)) * f ^ 2)) * e + ((((((4) * f + ((13) * g)) * f + ((16)
    * g ^ 2)) * f + ((9) * g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 2)) * d + (((((((5) * f + ((10) *
    g)) * f + ((5) * g ^ 2)) * f ^ 2) * e + (((((14) * f + ((37) * g + ((-1) * h))) * f + (((32)
    * g + ((-2) * h)) * g)) * f + (((9) * g + ((-1) * h)) * g ^ 2)) * f ^ 2)) * e + ((((((13) *
    f + ((41) * g + ((-2) * h))) * f + (((47) * g + ((-5) * h)) * g)) * f + (((23) * g + ((-4) *
    h)) * g ^ 2)) * f + (((4) * g + ((-1) * h)) * g ^ 3)) * f ^ 2)) * e + ((((((4) * f + ((15) *
    g)) * f + ((21) * g ^ 2)) * f + ((13) * g ^ 3)) * f + ((3) * g ^ 4)) * f ^ 3))) * d +
    ((((((((2) * f + ((4) * g)) * f + ((2) * g ^ 2)) * f ^ 2) * e + (((((7) * f + ((18) * g +
    ((-1) * h))) * f + (((15) * g + ((-2) * h)) * g)) * f + (((4) * g + ((-1) * h)) * g ^ 2)) *
    f ^ 2)) * e + ((((((9) * f + ((28) * g + ((-2) * h))) * f + (((31) * g + ((-5) * h)) * g)) *
    f + (((14) * g + ((-4) * h)) * g ^ 2)) * f + (((2) * g + ((-1) * h)) * g ^ 3)) * f ^ 2)) * e
    + ((((((4) * f + ((15) * g)) * f + ((21) * g ^ 2)) * f + ((13) * g ^ 3)) * f + ((3) * g ^
    4)) * f ^ 3)) * e)

def entry01R (d e f g h : ℝ) : ℝ :=
  (((((((5) * f + ((10) * g)) * f + ((5) * g ^ 2)) * f ^ 2) * e + (((((11) * f + ((29) * g)) * f
    + ((25) * g ^ 2)) * f + ((7) * g ^ 3)) * f ^ 2)) * e + ((((((4) * f + ((13) * g)) * f +
    ((16) * g ^ 2)) * f + ((9) * g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 2)) * d + (((((((7) * f +
    ((14) * g)) * f + ((7) * g ^ 2)) * f ^ 2) * e + (((((18) * f + ((48) * g + ((1) * h))) * f +
    (((42) * g + ((2) * h)) * g)) * f + (((12) * g + ((1) * h)) * g ^ 2)) * f ^ 2)) * e +
    ((((((13) * f + ((43) * g + ((2) * h))) * f + (((52) * g + ((5) * h)) * g)) * f + (((27) * g
    + ((4) * h)) * g ^ 2)) * f + (((5) * g + ((1) * h)) * g ^ 3)) * f ^ 2)) * e + ((((((4) * f +
    ((15) * g)) * f + ((21) * g ^ 2)) * f + ((13) * g ^ 3)) * f + ((3) * g ^ 4)) * f ^ 3))) * d
    + ((((((((2) * f + ((4) * g)) * f + ((2) * g ^ 2)) * f ^ 2) * e + (((((6) * f + ((16) * g))
    * f + ((14) * g ^ 2)) * f + ((4) * g ^ 3)) * f ^ 2)) * e + ((((((6) * f + ((20) * g)) * f +
    ((24) * g ^ 2)) * f + ((12) * g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 2)) * e + ((((((2) * f +
    ((8) * g)) * f + ((12) * g ^ 2)) * f + ((8) * g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 3)) * e)

def entry01S (d e f g h : ℝ) : ℝ :=
  (((((1) * f + ((2) * g)) * f + ((1) * g ^ 2)) * f ^ 2) * e + (((((2) * f + ((5) * g)) * f +
    ((4) * g ^ 2)) * f + ((1) * g ^ 3)) * f ^ 2)) * e

def entry01K (d e f g h : ℝ) : ℝ :=
  0

/-- This exact decomposition permits zero first or second width. -/
theorem entry01_identity (d e f g h : ℝ) :
    1*entry01 d e f g h = entry01R d e f g h +
      secondSlack d e f g h*entry01S d e f g h+
      firstSlack d f h*entry01K d e f g h := by
  unfold entry01 entry01R entry01S entry01K secondSlack firstSlack
  ring

/-- Strictness comes from a nonzero positive remainder, independently of the width slacks. -/
theorem entry01_pos {d e f g h : ℝ}
    (hd : 0 < d) (he : 0 < e) (hf : 0 < f) (hg : 0 < g) (hh : 0 < h)
    (hS : 0 ≤ secondSlack d e f g h) (hK : 0 ≤ firstSlack d f h) :
    0 < entry01 d e f g h := by
  have hR : 0 < entry01R d e f g h := by unfold entry01R; positivity
  have hMS : 0 ≤ entry01S d e f g h := by unfold entry01S; positivity
  have hMK : 0 ≤ entry01K d e f g h := by unfold entry01K; positivity
  have hi := entry01_identity d e f g h
  have hpS := mul_nonneg hS hMS
  have hpK := mul_nonneg hK hMK
  linarith only [hi, hR, hpS, hpK]

def entry02 (d e f g h : ℝ) : ℝ :=
  (((((((4) * f + ((8) * g)) * f + ((4) * g ^ 2)) * f ^ 2) * e + (((((8) * f + ((22) * g)) * f +
    ((20) * g ^ 2)) * f + ((6) * g ^ 3)) * f ^ 2)) * e + ((((((4) * f + ((14) * g)) * f + ((18)
    * g ^ 2)) * f + ((10) * g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 2)) * d + (((((((6) * f + ((12) *
    g)) * f + ((6) * g ^ 2)) * f ^ 2) * e + (((((16) * f + ((42) * g + ((-2) * h))) * f + (((36)
    * g + ((-4) * h)) * g)) * f + (((10) * g + ((-2) * h)) * g ^ 2)) * f ^ 2)) * e + ((((((14) *
    f + ((46) * g + ((-2) * h))) * f + (((54) * g + ((-6) * h)) * g)) * f + (((26) * g + ((-6) *
    h)) * g ^ 2)) * f + (((4) * g + ((-2) * h)) * g ^ 3)) * f ^ 2)) * e + ((((((4) * f + ((16) *
    g)) * f + ((24) * g ^ 2)) * f + ((16) * g ^ 3)) * f + ((4) * g ^ 4)) * f ^ 3))) * d +
    ((((((((2) * f + ((4) * g)) * f + ((2) * g ^ 2)) * f ^ 2) * e + (((((8) * f + ((20) * g +
    ((-2) * h))) * f + (((16) * g + ((-4) * h)) * g)) * f + (((4) * g + ((-2) * h)) * g ^ 2)) *
    f ^ 2)) * e + ((((((10) * f + ((32) * g + ((-2) * h))) * f + (((36) * g + ((-6) * h)) * g))
    * f + (((16) * g + ((-6) * h)) * g ^ 2)) * f + (((2) * g + ((-2) * h)) * g ^ 3)) * f ^ 2)) *
    e + ((((((4) * f + ((16) * g)) * f + ((24) * g ^ 2)) * f + ((16) * g ^ 3)) * f + ((4) * g ^
    4)) * f ^ 3)) * e)

def entry02R (d e f g h : ℝ) : ℝ :=
  (((((((8) * f + ((16) * g)) * f + ((8) * g ^ 2)) * f ^ 2) * e + (((((12) * f + ((34) * g)) * f
    + ((32) * g ^ 2)) * f + ((10) * g ^ 3)) * f ^ 2)) * e + ((((((4) * f + ((14) * g)) * f +
    ((18) * g ^ 2)) * f + ((10) * g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 2)) * d + (((((((10) * f +
    ((20) * g)) * f + ((10) * g ^ 2)) * f ^ 2) * e + (((((20) * f + ((56) * g + ((2) * h))) * f
    + (((52) * g + ((4) * h)) * g)) * f + (((16) * g + ((2) * h)) * g ^ 2)) * f ^ 2)) * e +
    ((((((14) * f + ((48) * g + ((2) * h))) * f + (((60) * g + ((6) * h)) * g)) * f + (((32) * g
    + ((6) * h)) * g ^ 2)) * f + (((6) * g + ((2) * h)) * g ^ 3)) * f ^ 2)) * e + ((((((4) * f +
    ((16) * g)) * f + ((24) * g ^ 2)) * f + ((16) * g ^ 3)) * f + ((4) * g ^ 4)) * f ^ 3))) * d
    + ((((((((2) * f + ((4) * g)) * f + ((2) * g ^ 2)) * f ^ 2) * e + (((((6) * f + ((16) * g))
    * f + ((14) * g ^ 2)) * f + ((4) * g ^ 3)) * f ^ 2)) * e + ((((((6) * f + ((20) * g)) * f +
    ((24) * g ^ 2)) * f + ((12) * g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 2)) * e + ((((((2) * f +
    ((8) * g)) * f + ((12) * g ^ 2)) * f + ((8) * g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 3)) * e)

def entry02S (d e f g h : ℝ) : ℝ :=
  (((((2) * f + ((4) * g)) * f + ((2) * g ^ 2)) * f ^ 2) * e + (((((2) * f + ((6) * g)) * f +
    ((6) * g ^ 2)) * f + ((2) * g ^ 3)) * f ^ 2)) * e

def entry02K (d e f g h : ℝ) : ℝ :=
  0

/-- This exact decomposition permits zero first or second width. -/
theorem entry02_identity (d e f g h : ℝ) :
    1*entry02 d e f g h = entry02R d e f g h +
      secondSlack d e f g h*entry02S d e f g h+
      firstSlack d f h*entry02K d e f g h := by
  unfold entry02 entry02R entry02S entry02K secondSlack firstSlack
  ring

/-- Strictness comes from a nonzero positive remainder, independently of the width slacks. -/
theorem entry02_pos {d e f g h : ℝ}
    (hd : 0 < d) (he : 0 < e) (hf : 0 < f) (hg : 0 < g) (hh : 0 < h)
    (hS : 0 ≤ secondSlack d e f g h) (hK : 0 ≤ firstSlack d f h) :
    0 < entry02 d e f g h := by
  have hR : 0 < entry02R d e f g h := by unfold entry02R; positivity
  have hMS : 0 ≤ entry02S d e f g h := by unfold entry02S; positivity
  have hMK : 0 ≤ entry02K d e f g h := by unfold entry02K; positivity
  have hi := entry02_identity d e f g h
  have hpS := mul_nonneg hS hMS
  have hpK := mul_nonneg hK hMK
  linarith only [hi, hR, hpS, hpK]

def entry10 (d e f g h : ℝ) : ℝ :=
  (((((((1) * f + ((3) * g)) * f + ((2) * g ^ 2)) * f ^ 2) * e + (((((3) * f + ((12) * g)) * f +
    ((13) * g ^ 2)) * f + ((4) * g ^ 3)) * f ^ 2)) * e + ((((((2) * f + ((9) * g)) * f + ((12) *
    g ^ 2)) * f + ((7) * g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 2)) * d + (((((((2) * f + ((6) * g))
    * f + ((4) * g ^ 2)) * f ^ 2) * e + (((((6) * f + ((24) * g)) * f + ((26) * g ^ 2)) * f +
    ((8) * g ^ 3)) * f ^ 2)) * e + ((((((6) * f + ((26) * g + ((-3) * h))) * f + (((34) * g +
    ((-8) * h)) * g)) * f + (((18) * g + ((-5) * h)) * g ^ 2)) * f + ((4) * g ^ 4)) * f ^ 2)) *
    e + ((((((2) * f + ((9) * g + ((-2) * h))) * f + (((14) * g + ((-5) * h)) * g)) * f + (((9)
    * g + ((-4) * h)) * g ^ 2)) * f + (((2) * g + ((-1) * h)) * g ^ 3)) * f ^ 3))) * d +
    ((((((((1) * f + ((3) * g)) * f + ((2) * g ^ 2)) * f ^ 2) * e + (((((3) * f + ((12) * g)) *
    f + ((13) * g ^ 2)) * f + ((4) * g ^ 3)) * f ^ 2)) * e + ((((((6) * f + ((23) * g + ((-2) *
    h))) * f + (((28) * g + ((-6) * h)) * g + ((-1) * h ^ 2))) * f + ((((13) * g + ((-4) * h)) *
    g + ((-1) * h ^ 2)) * g)) * f + ((2) * g ^ 4)) * f ^ 2)) * e + ((((((6) * f + ((22) * g +
    ((-1) * h))) * f + (((29) * g + ((-2) * h)) * g)) * f + (((16) * g + ((-1) * h)) * g ^ 2)) *
    f + ((3) * g ^ 4)) * f ^ 3)) * e + ((((((2) * f + ((7) * g)) * f + ((9) * g ^ 2)) * f + ((5)
    * g ^ 3)) * f + ((1) * g ^ 4)) * f ^ 4))

def entry10R (d e f g h : ℝ) : ℝ :=
  (((((((2) * f + ((6) * g)) * f + ((4) * g ^ 2)) * f ^ 2) * e + (((((18) * f + ((52) * g + ((4)
    * h))) * f + (((42) * g + ((4) * h)) * g)) * f + ((8) * g ^ 3)) * f ^ 2)) * e + ((((((12) *
    f + ((34) * g)) * f + ((32) * g ^ 2)) * f + ((16) * g ^ 3)) * f + ((4) * g ^ 4)) * f ^ 2)) *
    d + (((((((4) * f + ((12) * g)) * f + ((8) * g ^ 2)) * f ^ 2) * e + (((((24) * f + ((76) * g
    + ((4) * h))) * f + (((68) * g + ((4) * h)) * g)) * f + ((16) * g ^ 3)) * f ^ 2)) * e +
    ((((((20) * f + ((74) * g + ((6) * h))) * f + (((90) * g + ((14) * h)) * g + ((4) * h ^ 2)))
    * f + ((((46) * g + ((8) * h)) * g + ((4) * h ^ 2)) * g)) * f + ((8) * g ^ 4)) * f ^ 2)) * e
    + ((((((4) * f + ((22) * g + ((4) * h))) * f + (((36) * g + ((6) * h)) * g)) * f + ((22) * g
    ^ 3)) * f + ((5) * g ^ 4)) * f ^ 3))) * d + ((((((((2) * f + ((6) * g)) * f + ((4) * g ^ 2))
    * f ^ 2) * e + (((((6) * f + ((24) * g)) * f + ((26) * g ^ 2)) * f + ((8) * g ^ 3)) * f ^
    2)) * e + ((((((6) * f + ((32) * g)) * f + ((48) * g ^ 2)) * f + ((26) * g ^ 3)) * f + ((4)
    * g ^ 4)) * f ^ 2)) * e + ((((((2) * f + ((16) * g)) * f + ((32) * g ^ 2)) * f + ((23) * g ^
    3)) * f + (((6) * g + ((1) * h)) * g ^ 3)) * f ^ 3)) * e + ((((((2) * g) * f + ((6) * g ^
    2)) * f + ((5) * g ^ 3)) * f + ((1) * g ^ 4)) * f ^ 4))

def entry10S (d e f g h : ℝ) : ℝ :=
  ((((6) * f + ((14) * g + ((2) * h))) * f + (((8) * g + ((2) * h)) * g)) * f ^ 3) * e + (((((4)
    * f + ((8) * g)) * f + ((4) * g ^ 2)) * f + ((1) * g ^ 3)) * f ^ 3)

def entry10K (d e f g h : ℝ) : ℝ :=
  0

/-- This exact decomposition permits zero first or second width. -/
theorem entry10_identity (d e f g h : ℝ) :
    2*entry10 d e f g h = entry10R d e f g h +
      secondSlack d e f g h*entry10S d e f g h+
      firstSlack d f h*entry10K d e f g h := by
  unfold entry10 entry10R entry10S entry10K secondSlack firstSlack
  ring

/-- Strictness comes from a nonzero positive remainder, independently of the width slacks. -/
theorem entry10_pos {d e f g h : ℝ}
    (hd : 0 < d) (he : 0 < e) (hf : 0 < f) (hg : 0 < g) (hh : 0 < h)
    (hS : 0 ≤ secondSlack d e f g h) (hK : 0 ≤ firstSlack d f h) :
    0 < entry10 d e f g h := by
  have hR : 0 < entry10R d e f g h := by unfold entry10R; positivity
  have hMS : 0 ≤ entry10S d e f g h := by unfold entry10S; positivity
  have hMK : 0 ≤ entry10K d e f g h := by unfold entry10K; positivity
  have hi := entry10_identity d e f g h
  have hpS := mul_nonneg hS hMS
  have hpK := mul_nonneg hK hMK
  linarith only [hi, hR, hpS, hpK]

def entry11 (d e f g h : ℝ) : ℝ :=
  ((((((((3 / 2)) * f + ((5) * g)) * f + (((7 / 2)) * g ^ 2)) * f ^ 2) * e + ((((((7 / 2)) * f +
    (((29 / 2)) * g)) * f + (((33 / 2)) * g ^ 2)) * f + (((11 / 2)) * g ^ 3)) * f ^ 2)) * e +
    ((((((2) * f + (((19 / 2)) * g)) * f + ((14) * g ^ 2)) * f + (((17 / 2)) * g ^ 3)) * f +
    ((2) * g ^ 4)) * f ^ 2)) * d + ((((((((5 / 2)) * f + (((17 / 2)) * g + (((1 / 2)) * h))) * f
    + (((6) * g + (((1 / 2)) * h)) * g)) * f ^ 2) * e + (((((7) * f + (((57 / 2)) * g + (((-1 /
    2)) * h))) * f + ((((63 / 2)) * g + (((-3 / 2)) * h)) * g)) * f + (((10) * g + ((-1) * h)) *
    g ^ 2)) * f ^ 2)) * e + (((((((13 / 2)) * f + ((29) * g + (((-7 / 2)) * h))) * f + ((((81 /
    2)) * g + (((-19 / 2)) * h)) * g)) * f + (((22) * g + (((-15 / 2)) * h)) * g ^ 2)) * f +
    (((4) * g + (((-3 / 2)) * h)) * g ^ 3)) * f ^ 2)) * e + ((((((2) * f + (((19 / 2)) * g +
    ((-2) * h))) * f + (((16) * g + (((-11 / 2)) * h)) * g)) * f + ((((23 / 2)) * g + ((-5) *
    h)) * g ^ 2)) * f + (((3) * g + (((-3 / 2)) * h)) * g ^ 3)) * f ^ 3))) * d + (((((((((1 /
    2)) * f + (((5 / 2)) * g)) * f + ((2) * g ^ 2)) * f ^ 2) * e + (((((3) * f + (((25 / 2)) * g
    + ((-1) * h))) * f + ((((27 / 2)) * g + ((-3) * h)) * g + (((-1 / 2)) * h ^ 2))) * f +
    ((((4) * g + ((-2) * h)) * g + (((-1 / 2)) * h ^ 2)) * g)) * f ^ 2)) * e + ((((((7) * f +
    (((53 / 2)) * g + (((-5 / 2)) * h))) * f + (((33) * g + ((-8) * h)) * g + ((-1) * h ^ 2))) *
    f + (((((31 / 2)) * g + (((-15 / 2)) * h)) * g + (((-3 / 2)) * h ^ 2)) * g)) * f + ((((2) *
    g + ((-2) * h)) * g + (((-1 / 2)) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e + (((((((13 / 2)) * f +
    (((49 / 2)) * g + ((-1) * h))) * f + (((34) * g + (((-5 / 2)) * h)) * g)) * f + ((((41 / 2))
    * g + ((-2) * h)) * g ^ 2)) * f + ((((9 / 2)) * g + (((-1 / 2)) * h)) * g ^ 3)) * f ^ 3)) *
    e + ((((((2) * f + (((15 / 2)) * g)) * f + (((21 / 2)) * g ^ 2)) * f + (((13 / 2)) * g ^ 3))
    * f + (((3 / 2)) * g ^ 4)) * f ^ 4))

def entry11R (d e f g h : ℝ) : ℝ :=
  (((((((9) * f + ((24) * g + ((2) * h))) * f + (((15) * g + ((2) * h)) * g)) * f ^ 2) * e +
    (((((23) * f + ((71) * g + ((4) * h))) * f + (((67) * g + ((6) * h)) * g)) * f + (((19) * g
    + ((2) * h)) * g ^ 2)) * f ^ 2)) * e + ((((((12) * f + ((39) * g)) * f + ((44) * g ^ 2)) * f
    + ((21) * g ^ 3)) * f + ((4) * g ^ 4)) * f ^ 2)) * d + (((((((11) * f + ((31) * g + ((3) *
    h))) * f + (((20) * g + ((3) * h)) * g)) * f ^ 2) * e + (((((30) * f + ((102) * g + ((9) *
    h))) * f + (((104) * g + ((18) * h)) * g + ((2) * h ^ 2))) * f + ((((32) * g + ((9) * h)) *
    g + ((2) * h ^ 2)) * g)) * f ^ 2)) * e + ((((((21) * f + ((86) * g + ((9) * h))) * f +
    (((118) * g + ((25) * h)) * g + ((4) * h ^ 2))) * f + ((((65) * g + ((22) * h)) * g + ((6) *
    h ^ 2)) * g)) * f + ((((12) * g + ((6) * h)) * g + ((2) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e +
    ((((((4) * f + ((23) * g + ((4) * h))) * f + (((42) * g + ((9) * h)) * g)) * f + (((31) * g
    + ((6) * h)) * g ^ 2)) * f + (((8) * g + ((1) * h)) * g ^ 3)) * f ^ 3))) * d + ((((((((1) *
    f + ((5) * g)) * f + ((4) * g ^ 2)) * f ^ 2) * e + (((((3) * f + ((18) * g)) * f + ((23) * g
    ^ 2)) * f + ((8) * g ^ 3)) * f ^ 2)) * e + ((((((3) * f + ((22) * g)) * f + ((38) * g ^ 2))
    * f + ((23) * g ^ 3)) * f + ((4) * g ^ 4)) * f ^ 2)) * e + ((((((1) * f + ((10) * g)) * f +
    ((22) * g ^ 2)) * f + ((18) * g ^ 3)) * f + ((5) * g ^ 4)) * f ^ 3)) * e + ((((((1) * g) * f
    + ((3) * g ^ 2)) * f + ((3) * g ^ 3)) * f + ((1) * g ^ 4)) * f ^ 4))

def entry11S (d e f g h : ℝ) : ℝ :=
  (((((3) * f + ((7) * g + ((1) * h))) * f + (((4) * g + ((1) * h)) * g)) * f ^ 2) * e + (((((8)
    * f + ((21) * g + ((2) * h))) * f + (((17) * g + ((3) * h)) * g)) * f + (((4) * g + ((1) *
    h)) * g ^ 2)) * f ^ 2)) * e + (((((4) * f + ((10) * g)) * f + ((8) * g ^ 2)) * f + ((2) * g
    ^ 3)) * f ^ 3)

def entry11K (d e f g h : ℝ) : ℝ :=
  0

/-- This exact decomposition permits zero first or second width. -/
theorem entry11_identity (d e f g h : ℝ) :
    2*entry11 d e f g h = entry11R d e f g h +
      secondSlack d e f g h*entry11S d e f g h+
      firstSlack d f h*entry11K d e f g h := by
  unfold entry11 entry11R entry11S entry11K secondSlack firstSlack
  ring

/-- Strictness comes from a nonzero positive remainder, independently of the width slacks. -/
theorem entry11_pos {d e f g h : ℝ}
    (hd : 0 < d) (he : 0 < e) (hf : 0 < f) (hg : 0 < g) (hh : 0 < h)
    (hS : 0 ≤ secondSlack d e f g h) (hK : 0 ≤ firstSlack d f h) :
    0 < entry11 d e f g h := by
  have hR : 0 < entry11R d e f g h := by unfold entry11R; positivity
  have hMS : 0 ≤ entry11S d e f g h := by unfold entry11S; positivity
  have hMK : 0 ≤ entry11K d e f g h := by unfold entry11K; positivity
  have hi := entry11_identity d e f g h
  have hpS := mul_nonneg hS hMS
  have hpK := mul_nonneg hK hMK
  linarith only [hi, hR, hpS, hpK]

def entry12 (d e f g h : ℝ) : ℝ :=
  (((((((2) * f + ((7) * g)) * f + ((5) * g ^ 2)) * f ^ 2) * e + (((((4) * f + ((17) * g)) * f +
    ((20) * g ^ 2)) * f + ((7) * g ^ 3)) * f ^ 2)) * e + ((((((2) * f + ((10) * g)) * f + ((16)
    * g ^ 2)) * f + ((10) * g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 2)) * d + (((((((3) * f + ((11) *
    g + ((1) * h))) * f + (((8) * g + ((1) * h)) * g)) * f ^ 2) * e + (((((8) * f + ((33) * g +
    ((-1) * h))) * f + (((37) * g + ((-3) * h)) * g)) * f + (((12) * g + ((-2) * h)) * g ^ 2)) *
    f ^ 2)) * e + ((((((7) * f + ((32) * g + ((-4) * h))) * f + (((47) * g + ((-11) * h)) * g))
    * f + (((26) * g + ((-10) * h)) * g ^ 2)) * f + (((4) * g + ((-3) * h)) * g ^ 3)) * f ^ 2))
    * e + ((((((2) * f + ((10) * g + ((-2) * h))) * f + (((18) * g + ((-6) * h)) * g)) * f +
    (((14) * g + ((-6) * h)) * g ^ 2)) * f + (((4) * g + ((-2) * h)) * g ^ 3)) * f ^ 3))) * d +
    ((((((((2) * g) * f + ((2) * g ^ 2)) * f ^ 2) * e + (((((3) * f + ((13) * g + ((-2) * h))) *
    f + (((14) * g + ((-6) * h)) * g + ((-1) * h ^ 2))) * f + ((((4) * g + ((-4) * h)) * g +
    ((-1) * h ^ 2)) * g)) * f ^ 2)) * e + ((((((8) * f + ((30) * g + ((-3) * h))) * f + (((38) *
    g + ((-10) * h)) * g + ((-1) * h ^ 2))) * f + ((((18) * g + ((-11) * h)) * g + ((-2) * h ^
    2)) * g)) * f + ((((2) * g + ((-4) * h)) * g + ((-1) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e +
    ((((((7) * f + ((27) * g + ((-1) * h))) * f + (((39) * g + ((-3) * h)) * g)) * f + (((25) *
    g + ((-3) * h)) * g ^ 2)) * f + (((6) * g + ((-1) * h)) * g ^ 3)) * f ^ 3)) * e + ((((((2) *
    f + ((8) * g)) * f + ((12) * g ^ 2)) * f + ((8) * g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 4))

def entry12R (d e f g h : ℝ) : ℝ :=
  (((((((8) * f + ((21) * g + ((2) * h))) * f + (((13) * g + ((2) * h)) * g)) * f ^ 2) * e +
    (((((14) * f + ((45) * g + ((2) * h))) * f + (((46) * g + ((4) * h)) * g)) * f + (((15) * g
    + ((2) * h)) * g ^ 2)) * f ^ 2)) * e + ((((((6) * f + ((22) * g)) * f + ((28) * g ^ 2)) * f
    + ((14) * g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 2)) * d + (((((((9) * f + ((25) * g + ((3) *
    h))) * f + (((16) * g + ((3) * h)) * g)) * f ^ 2) * e + (((((18) * f + ((64) * g + ((7) *
    h))) * f + (((70) * g + ((16) * h)) * g + ((2) * h ^ 2))) * f + ((((24) * g + ((9) * h)) * g
    + ((2) * h ^ 2)) * g)) * f ^ 2)) * e + ((((((11) * f + ((49) * g + ((6) * h))) * f + (((73)
    * g + ((18) * h)) * g + ((2) * h ^ 2))) * f + ((((43) * g + ((18) * h)) * g + ((4) * h ^ 2))
    * g)) * f + ((((8) * g + ((6) * h)) * g + ((2) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e + ((((((2)
    * f + ((12) * g + ((2) * h))) * f + (((24) * g + ((6) * h)) * g)) * f + (((20) * g + ((6) *
    h)) * g ^ 2)) * f + (((6) * g + ((2) * h)) * g ^ 3)) * f ^ 3))) * d + ((((((((2) * g) * f +
    ((2) * g ^ 2)) * f ^ 2) * e + (((((6) * g) * f + ((10) * g ^ 2)) * f + ((4) * g ^ 3)) * f ^
    2)) * e + ((((((6) * g) * f + ((14) * g ^ 2)) * f + ((10) * g ^ 3)) * f + ((2) * g ^ 4)) * f
    ^ 2)) * e + ((((((2) * g) * f + ((6) * g ^ 2)) * f + ((6) * g ^ 3)) * f + ((2) * g ^ 4)) * f
    ^ 3)) * e)

def entry12S (d e f g h : ℝ) : ℝ :=
  (((((3) * f + ((7) * g + ((1) * h))) * f + (((4) * g + ((1) * h)) * g)) * f ^ 2) * e + (((((5)
    * f + ((14) * g + ((1) * h))) * f + (((13) * g + ((2) * h)) * g)) * f + (((4) * g + ((1) *
    h)) * g ^ 2)) * f ^ 2)) * e + (((((2) * f + ((6) * g)) * f + ((6) * g ^ 2)) * f + ((2) * g ^
    3)) * f ^ 3)

def entry12K (d e f g h : ℝ) : ℝ :=
  0

/-- This exact decomposition permits zero first or second width. -/
theorem entry12_identity (d e f g h : ℝ) :
    1*entry12 d e f g h = entry12R d e f g h +
      secondSlack d e f g h*entry12S d e f g h+
      firstSlack d f h*entry12K d e f g h := by
  unfold entry12 entry12R entry12S entry12K secondSlack firstSlack
  ring

/-- Strictness comes from a nonzero positive remainder, independently of the width slacks. -/
theorem entry12_pos {d e f g h : ℝ}
    (hd : 0 < d) (he : 0 < e) (hf : 0 < f) (hg : 0 < g) (hh : 0 < h)
    (hS : 0 ≤ secondSlack d e f g h) (hK : 0 ≤ firstSlack d f h) :
    0 < entry12 d e f g h := by
  have hR : 0 < entry12R d e f g h := by unfold entry12R; positivity
  have hMS : 0 ≤ entry12S d e f g h := by unfold entry12S; positivity
  have hMK : 0 ≤ entry12K d e f g h := by unfold entry12K; positivity
  have hi := entry12_identity d e f g h
  have hpS := mul_nonneg hS hMS
  have hpK := mul_nonneg hK hMK
  linarith only [hi, hR, hpS, hpK]

def entry20 (d e f g h : ℝ) : ℝ :=
  (((((((2) * g) * f + ((2) * g ^ 2)) * f ^ 2) * e + (((((8) * g) * f + ((12) * g ^ 2)) * f +
    ((4) * g ^ 3)) * f ^ 2)) * e + ((((((6) * g) * f + ((12) * g ^ 2)) * f + ((6) * g ^ 3)) * f
    + ((2) * g ^ 4)) * f ^ 2)) * d + (((((((4) * g) * f + ((4) * g ^ 2)) * f ^ 2) * e + (((((2)
    * f + ((18) * g + ((2) * h))) * f + ((24) * g ^ 2)) * f + ((8) * g ^ 3)) * f ^ 2)) * e +
    ((((((6) * f + ((26) * g + ((4) * h))) * f + (((36) * g + ((-4) * h)) * g)) * f + (((16) * g
    + ((-8) * h)) * g ^ 2)) * f + ((4) * g ^ 4)) * f ^ 2)) * e + ((((((4) * f + ((14) * g + ((4)
    * h))) * f + (((18) * g + ((-2) * h)) * g)) * f + (((10) * g + ((-6) * h)) * g ^ 2)) * f +
    (((2) * g + ((-2) * h)) * g ^ 3)) * f ^ 3))) * d + ((((((((2) * g) * f + ((2) * g ^ 2)) * f
    ^ 2) * e + (((((2) * f + ((10) * g + ((2) * h))) * f + ((12) * g ^ 2)) * f + ((4) * g ^ 3))
    * f ^ 2)) * e + ((((((8) * f + ((28) * g + ((6) * h))) * f + ((34) * g ^ 2)) * f + ((((14) *
    g + ((-6) * h)) * g + ((-2) * h ^ 2)) * g)) * f + ((2) * g ^ 4)) * f ^ 2)) * e + ((((((10) *
    f + ((36) * g + ((8) * h))) * f + (((46) * g + ((6) * h)) * g)) * f + ((24) * g ^ 3)) * f +
    ((4) * g ^ 4)) * f ^ 3)) * e + ((((((4) * f + ((16) * g + ((4) * h))) * f + (((22) * g +
    ((6) * h)) * g)) * f + (((12) * g + ((2) * h)) * g ^ 2)) * f + ((2) * g ^ 4)) * f ^ 4))

def entry20R (d e f g h : ℝ) : ℝ :=
  (((((((2) * g) * f + ((2) * g ^ 2)) * f ^ 2) * e + (((((12) * g) * f + (((24) * g + ((4) * h))
    * g)) * f + ((4) * g ^ 3)) * f ^ 2)) * e + ((((((8) * g) * f + ((18) * g ^ 2)) * f + ((8) *
    g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 2)) * d + (((((((4) * g) * f + ((4) * g ^ 2)) * f ^ 2) *
    e + (((((2) * f + ((22) * g + ((2) * h))) * f + (((36) * g + ((4) * h)) * g)) * f + ((8) * g
    ^ 3)) * f ^ 2)) * e + ((((((6) * f + ((28) * g + ((4) * h))) * f + ((44) * g ^ 2)) * f +
    ((((24) * g + ((6) * h)) * g + ((4) * h ^ 2)) * g)) * f + ((4) * g ^ 4)) * f ^ 2)) * e +
    ((((((4) * f + ((14) * g + ((4) * h))) * f + ((19) * g ^ 2)) * f + ((13) * g ^ 3)) * f +
    ((3) * g ^ 4)) * f ^ 3))) * d + ((((((((2) * g) * f + ((2) * g ^ 2)) * f ^ 2) * e + (((((2)
    * f + ((10) * g + ((2) * h))) * f + ((12) * g ^ 2)) * f + ((4) * g ^ 3)) * f ^ 2)) * e +
    ((((((8) * f + ((26) * g + ((6) * h))) * f + ((28) * g ^ 2)) * f + ((14) * g ^ 3)) * f +
    ((2) * g ^ 4)) * f ^ 2)) * e + ((((((10) * f + ((33) * g + ((8) * h))) * f + (((35) * g +
    ((5) * h)) * g)) * f + (((17) * g + ((1) * h)) * g ^ 2)) * f + (((4) * g + ((1) * h)) * g ^
    3)) * f ^ 3)) * e + ((((((4) * f + ((15) * g + ((4) * h))) * f + (((18) * g + ((6) * h)) *
    g)) * f + (((8) * g + ((2) * h)) * g ^ 2)) * f + ((1) * g ^ 4)) * f ^ 4))

def entry20S (d e f g h : ℝ) : ℝ :=
  ((((2) * g) * f + (((6) * g + ((2) * h)) * g)) * f ^ 3) * e + (((((1) * g) * f + ((3) * g ^
    2)) * f + ((1) * g ^ 3)) * f ^ 3)

def entry20K (d e f g h : ℝ) : ℝ :=
  0

/-- This exact decomposition permits zero first or second width. -/
theorem entry20_identity (d e f g h : ℝ) :
    1*entry20 d e f g h = entry20R d e f g h +
      secondSlack d e f g h*entry20S d e f g h+
      firstSlack d f h*entry20K d e f g h := by
  unfold entry20 entry20R entry20S entry20K secondSlack firstSlack
  ring

/-- Strictness comes from a nonzero positive remainder, independently of the width slacks. -/
theorem entry20_pos {d e f g h : ℝ}
    (hd : 0 < d) (he : 0 < e) (hf : 0 < f) (hg : 0 < g) (hh : 0 < h)
    (hS : 0 ≤ secondSlack d e f g h) (hK : 0 ≤ firstSlack d f h) :
    0 < entry20 d e f g h := by
  have hR : 0 < entry20R d e f g h := by unfold entry20R; positivity
  have hMS : 0 ≤ entry20S d e f g h := by unfold entry20S; positivity
  have hMK : 0 ≤ entry20K d e f g h := by unfold entry20K; positivity
  have hi := entry20_identity d e f g h
  have hpS := mul_nonneg hS hMS
  have hpK := mul_nonneg hK hMK
  linarith only [hi, hR, hpS, hpK]

def entry21 (d e f g h : ℝ) : ℝ :=
  (((((((4) * g) * f + ((4) * g ^ 2)) * f ^ 2) * e + (((((10) * g) * f + ((17) * g ^ 2)) * f +
    ((6) * g ^ 3)) * f ^ 2)) * e + ((((((6) * g) * f + ((14) * g ^ 2)) * f + ((9) * g ^ 3)) * f
    + ((2) * g ^ 4)) * f ^ 2)) * d + (((((((1) * f + ((8) * g + ((1) * h))) * f + (((7) * g +
    ((1) * h)) * g)) * f ^ 2) * e + (((((6) * f + ((28) * g + ((4) * h))) * f + (((36) * g +
    ((1) * h)) * g)) * f + (((11) * g + ((-1) * h)) * g ^ 2)) * f ^ 2)) * e + ((((((9) * f +
    ((37) * g + ((7) * h))) * f + (((51) * g + ((-2) * h)) * g)) * f + (((26) * g + ((-9) * h))
    * g ^ 2)) * f + (((4) * g + ((-2) * h)) * g ^ 3)) * f ^ 2)) * e + ((((((4) * f + ((17) * g +
    ((4) * h))) * f + (((25) * g + ((1) * h)) * g)) * f + (((16) * g + ((-6) * h)) * g ^ 2)) * f
    + (((4) * g + ((-3) * h)) * g ^ 3)) * f ^ 3))) * d + ((((((((1) * f + ((3) * g + ((1) * h)))
    * f + ((2) * g ^ 2)) * f ^ 2) * e + (((((7) * f + ((19) * g + ((5) * h))) * f + (((18) * g +
    ((1) * h)) * g)) * f + ((((4) * g + ((-3) * h)) * g + ((-1) * h ^ 2)) * g)) * f ^ 2)) * e +
    ((((((15) * f + ((49) * g + ((11) * h))) * f + (((55) * g + ((6) * h)) * g)) * f + ((((23) *
    g + ((-6) * h)) * g + ((-2) * h ^ 2)) * g)) * f + ((((2) * g + ((-3) * h)) * g + ((-1) * h ^
    2)) * g ^ 2)) * f ^ 2)) * e + ((((((13) * f + ((52) * g + ((11) * h))) * f + (((71) * g +
    ((15) * h)) * g)) * f + (((40) * g + ((4) * h)) * g ^ 2)) * f + ((8) * g ^ 4)) * f ^ 3)) * e
    + ((((((4) * f + ((19) * g + ((4) * h))) * f + (((31) * g + ((9) * h)) * g)) * f + (((21) *
    g + ((6) * h)) * g ^ 2)) * f + (((5) * g + ((1) * h)) * g ^ 3)) * f ^ 4))

def entry21R (d e f g h : ℝ) : ℝ :=
  (((((((8) * g) * f + (((20) * g + ((4) * h)) * g)) * f ^ 2) * e + (((((20) * g) * f + (((66) *
    g + ((8) * h)) * g)) * f + (((24) * g + ((4) * h)) * g ^ 2)) * f ^ 2)) * e + ((((((12) * g)
    * f + (((38) * g + ((4) * h)) * g)) * f + ((24) * g ^ 3)) * f + ((4) * g ^ 4)) * f ^ 2)) * d
    + (((((((2) * f + ((16) * g + ((2) * h))) * f + (((26) * g + ((6) * h)) * g)) * f ^ 2) * e +
    (((((12) * f + ((56) * g + ((8) * h))) * f + (((104) * g + ((10) * h)) * g)) * f + ((((40) *
    g + ((16) * h)) * g + ((4) * h ^ 2)) * g)) * f ^ 2)) * e + ((((((18) * f + ((74) * g + ((14)
    * h))) * f + ((112) * g ^ 2)) * f + ((((74) * g + ((18) * h)) * g + ((8) * h ^ 2)) * g)) * f
    + ((((14) * g + ((10) * h)) * g + ((4) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e + ((((((8) * f +
    ((34) * g + ((8) * h))) * f + (((50) * g + ((2) * h)) * g)) * f + (((37) * g ^ 2 + ((4) * h
    ^ 2)) * g)) * f + ((11) * g ^ 4)) * f ^ 3))) * d + ((((((((2) * f + ((6) * g + ((2) * h))) *
    f + ((4) * g ^ 2)) * f ^ 2) * e + (((((14) * f + ((38) * g + ((10) * h))) * f + ((30) * g ^
    2)) * f + ((8) * g ^ 3)) * f ^ 2)) * e + ((((((30) * f + ((98) * g + ((22) * h))) * f +
    (((88) * g + ((6) * h)) * g)) * f + ((34) * g ^ 3)) * f + ((4) * g ^ 4)) * f ^ 2)) * e +
    ((((((26) * f + ((104) * g + ((22) * h))) * f + (((121) * g + ((24) * h)) * g)) * f +
    ((((55) * g + ((7) * h)) * g + ((2) * h ^ 2)) * g)) * f + (((10) * g + ((1) * h)) * g ^ 3))
    * f ^ 3)) * e + ((((((8) * f + ((38) * g + ((8) * h))) * f + (((57) * g + ((16) * h)) * g))
    * f + (((34) * g + ((10) * h)) * g ^ 2)) * f + (((7) * g + ((2) * h)) * g ^ 3)) * f ^ 4))

def entry21S (d e f g h : ℝ) : ℝ :=
  (((((6) * g + ((2) * h)) * g) * f ^ 2) * e + (((((16) * g + ((4) * h)) * g) * f + (((6) * g +
    ((2) * h)) * g ^ 2)) * f ^ 2)) * e + (((((5) * g + ((2) * h)) * g) * f + ((3) * g ^ 3)) * f
    ^ 3)

def entry21K (d e f g h : ℝ) : ℝ :=
  0

/-- This exact decomposition permits zero first or second width. -/
theorem entry21_identity (d e f g h : ℝ) :
    2*entry21 d e f g h = entry21R d e f g h +
      secondSlack d e f g h*entry21S d e f g h+
      firstSlack d f h*entry21K d e f g h := by
  unfold entry21 entry21R entry21S entry21K secondSlack firstSlack
  ring

/-- Strictness comes from a nonzero positive remainder, independently of the width slacks. -/
theorem entry21_pos {d e f g h : ℝ}
    (hd : 0 < d) (he : 0 < e) (hf : 0 < f) (hg : 0 < g) (hh : 0 < h)
    (hS : 0 ≤ secondSlack d e f g h) (hK : 0 ≤ firstSlack d f h) :
    0 < entry21 d e f g h := by
  have hR : 0 < entry21R d e f g h := by unfold entry21R; positivity
  have hMS : 0 ≤ entry21S d e f g h := by unfold entry21S; positivity
  have hMK : 0 ≤ entry21K d e f g h := by unfold entry21K; positivity
  have hi := entry21_identity d e f g h
  have hpS := mul_nonneg hS hMS
  have hpK := mul_nonneg hK hMK
  linarith only [hi, hR, hpS, hpK]

def entry22 (d e f g h : ℝ) : ℝ :=
  (((((((6) * g) * f + ((6) * g ^ 2)) * f ^ 2) * e + (((((12) * g) * f + ((22) * g ^ 2)) * f +
    ((8) * g ^ 3)) * f ^ 2)) * e + ((((((6) * g) * f + ((16) * g ^ 2)) * f + ((12) * g ^ 3)) * f
    + ((2) * g ^ 4)) * f ^ 2)) * d + (((((((4) * f + ((12) * g + ((2) * h))) * f + (((10) * g +
    ((2) * h)) * g)) * f ^ 2) * e + (((((12) * f + ((44) * g + ((8) * h))) * f + (((48) * g +
    ((2) * h)) * g)) * f + (((14) * g + ((-2) * h)) * g ^ 2)) * f ^ 2)) * e + ((((((12) * f +
    ((52) * g + ((10) * h))) * f + (((72) * g + ((4) * h)) * g)) * f + (((36) * g + ((-10) * h))
    * g ^ 2)) * f + (((4) * g + ((-4) * h)) * g ^ 3)) * f ^ 2)) * e + ((((((4) * f + ((20) * g +
    ((4) * h))) * f + (((34) * g + ((4) * h)) * g)) * f + (((24) * g + ((-4) * h)) * g ^ 2)) * f
    + (((6) * g + ((-4) * h)) * g ^ 3)) * f ^ 3))) * d + ((((((((4) * f + ((4) * g + ((2) * h)))
    * f + ((2) * g ^ 2)) * f ^ 2) * e + (((((16) * f + ((36) * g + ((10) * h))) * f + (((24) * g
    + ((2) * h)) * g)) * f + ((((4) * g + ((-6) * h)) * g + ((-2) * h ^ 2)) * g)) * f ^ 2)) * e
    + ((((((24) * f + ((82) * g + ((18) * h))) * f + (((88) * g + ((18) * h)) * g)) * f +
    ((((32) * g + ((-6) * h)) * g + ((-2) * h ^ 2)) * g)) * f + ((((2) * g + ((-6) * h)) * g +
    ((-2) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e + ((((((16) * f + ((72) * g + ((14) * h))) * f +
    (((108) * g + ((28) * h)) * g)) * f + (((64) * g + ((14) * h)) * g ^ 2)) * f + ((12) * g ^
    4)) * f ^ 3)) * e + ((((((4) * f + ((22) * g + ((4) * h))) * f + (((42) * g + ((12) * h)) *
    g)) * f + (((34) * g + ((12) * h)) * g ^ 2)) * f + (((10) * g + ((4) * h)) * g ^ 3)) * f ^
    4))

def entry22R (d e f g h : ℝ) : ℝ :=
  (((((((6) * g) * f + (((18) * g + ((4) * h)) * g)) * f ^ 2) * e + (((((12) * g) * f + (((42) *
    g + ((4) * h)) * g)) * f + (((20) * g + ((4) * h)) * g ^ 2)) * f ^ 2)) * e + ((((((6) * g) *
    f + ((20) * g ^ 2)) * f + ((16) * g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 2)) * d + (((((((4) * f
    + ((12) * g + ((2) * h))) * f + (((22) * g + ((6) * h)) * g)) * f ^ 2) * e + (((((12) * f +
    ((44) * g + ((8) * h))) * f + (((68) * g + ((6) * h)) * g)) * f + ((((32) * g + ((16) * h))
    * g + ((4) * h ^ 2)) * g)) * f ^ 2)) * e + ((((((12) * f + ((52) * g + ((10) * h))) * f +
    (((76) * g + ((4) * h)) * g)) * f + ((((50) * g + ((12) * h)) * g + ((4) * h ^ 2)) * g)) * f
    + ((((10) * g + ((10) * h)) * g + ((4) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e + ((((((4) * f +
    ((20) * g + ((4) * h))) * f + (((34) * g + ((4) * h)) * g)) * f + ((26) * g ^ 3)) * f + ((8)
    * g ^ 4)) * f ^ 3))) * d + ((((((((4) * f + ((4) * g + ((2) * h))) * f + ((2) * g ^ 2)) * f
    ^ 2) * e + (((((16) * f + ((36) * g + ((10) * h))) * f + ((18) * g ^ 2)) * f + ((4) * g ^
    3)) * f ^ 2)) * e + ((((((24) * f + ((82) * g + ((18) * h))) * f + (((72) * g + ((14) * h))
    * g)) * f + ((20) * g ^ 3)) * f + ((2) * g ^ 4)) * f ^ 2)) * e + ((((((16) * f + ((72) * g +
    ((14) * h))) * f + (((96) * g + ((26) * h)) * g)) * f + (((46) * g + ((12) * h)) * g ^ 2)) *
    f + ((6) * g ^ 4)) * f ^ 3)) * e + ((((((4) * f + ((22) * g + ((4) * h))) * f + (((40) * g +
    ((12) * h)) * g)) * f + (((30) * g + ((12) * h)) * g ^ 2)) * f + (((8) * g + ((4) * h)) * g
    ^ 3)) * f ^ 4))

def entry22S (d e f g h : ℝ) : ℝ :=
  (((((6) * g + ((2) * h)) * g) * f ^ 2) * e + (((((10) * g + ((2) * h)) * g) * f + (((6) * g +
    ((2) * h)) * g ^ 2)) * f ^ 2)) * e + ((((2) * g ^ 2) * f + ((2) * g ^ 3)) * f ^ 3)

def entry22K (d e f g h : ℝ) : ℝ :=
  0

/-- This exact decomposition permits zero first or second width. -/
theorem entry22_identity (d e f g h : ℝ) :
    1*entry22 d e f g h = entry22R d e f g h +
      secondSlack d e f g h*entry22S d e f g h+
      firstSlack d f h*entry22K d e f g h := by
  unfold entry22 entry22R entry22S entry22K secondSlack firstSlack
  ring

/-- Strictness comes from a nonzero positive remainder, independently of the width slacks. -/
theorem entry22_pos {d e f g h : ℝ}
    (hd : 0 < d) (he : 0 < e) (hf : 0 < f) (hg : 0 < g) (hh : 0 < h)
    (hS : 0 ≤ secondSlack d e f g h) (hK : 0 ≤ firstSlack d f h) :
    0 < entry22 d e f g h := by
  have hR : 0 < entry22R d e f g h := by unfold entry22R; positivity
  have hMS : 0 ≤ entry22S d e f g h := by unfold entry22S; positivity
  have hMK : 0 ≤ entry22K d e f g h := by unfold entry22K; positivity
  have hi := entry22_identity d e f g h
  have hpS := mul_nonneg hS hMS
  have hpK := mul_nonneg hK hMK
  linarith only [hi, hR, hpS, hpK]

def frequency0 (d e f g h m : ℝ) : ℝ :=
  ((((((1) * f + ((2) * g)) * f + ((1) * g ^ 2)) * e + (((((1) * m + (2)) * f + (((2) * m + (6))
    * g)) * f + (((1) * m + (6)) * g ^ 2)) * f + ((2) * g ^ 3))) * e + ((((((1) * m + (1)) * f +
    (((2) * m + (4)) * g)) * f + (((1) * m + (6)) * g ^ 2)) * f + ((4) * g ^ 3)) * f + ((1) * g
    ^ 4))) * d + ((((((2) * f + ((4) * g)) * f + ((2) * g ^ 2)) * e + (((((1) * m + (5)) * f +
    (((2) * m + (14)) * g)) * f + (((1) * m + (13)) * g ^ 2)) * f + ((4) * g ^ 3))) * e +
    ((((((2) * m + (4)) * f + (((4) * m + (14)) * g + (((-1) * m) * h))) * f + ((((2) * m +
    (18)) * g + (((-2) * m) * h)) * g)) * f + (((10) * g + (((-1) * m) * h)) * g ^ 2)) * f +
    ((2) * g ^ 4))) * e + (((((((1) * m + (1)) * f + (((3) * m + (4)) * g)) * f + (((3) * m +
    (6)) * g ^ 2)) * f + (((1) * m + (4)) * g ^ 3)) * f + ((1) * g ^ 4)) * f))) * d + (((((((1)
    * f + ((2) * g)) * f + ((1) * g ^ 2)) * e + ((((3) * f + ((8) * g)) * f + ((7) * g ^ 2)) * f
    + ((2) * g ^ 3))) * e + ((((((1) * m + (3)) * f + (((2) * m + (10)) * g + (((-1) * m) * h)))
    * f + ((((1) * m + (12)) * g + (((-2) * m) * h)) * g)) * f + (((6) * g + (((-1) * m) * h)) *
    g ^ 2)) * f + ((1) * g ^ 4))) * e + (((((((1) * m + (1)) * f + (((3) * m + (4)) * g)) * f +
    (((3) * m + (6)) * g ^ 2)) * f + (((1) * m + (4)) * g ^ 3)) * f + ((1) * g ^ 4)) * f)) * e)

theorem ratio_identity0 (d e f g h v : ℝ) (hf : f ≠ 0) :
    2*f^2*frequency0 d e f g h (1+(e+g)*v/f) =
      entry00 d e f g h*(1-v)^2+
      2*entry01 d e f g h*v*(1-v)+entry02 d e f g h*v^2 := by
  unfold frequency0 entry00 entry01 entry02
  field_simp
  ring

def frequency1 (d e f g h m : ℝ) : ℝ :=
  (((((((1 / 2)) * f + (((3 / 2)) * g)) * f + ((1) * g ^ 2)) * e + ((((((1 / 2)) * m + (1)) * f
    + (((2) * m + (4)) * g)) * f + ((((3 / 2)) * m + (5)) * g ^ 2)) * f + ((2) * g ^ 3))) * e +
    (((((((1 / 2)) * m + ((1 / 2))) * f + (((2) * m + ((5 / 2))) * g)) * f + ((((3 / 2)) * m +
    ((9 / 2))) * g ^ 2)) * f + (((7 / 2)) * g ^ 3)) * f + ((1) * g ^ 4))) * d + ((((((1) * f +
    ((3) * g)) * f + ((2) * g ^ 2)) * e + ((((((1 / 2)) * m + ((5 / 2))) * f + ((((5 / 2)) * m +
    ((19 / 2))) * g + ((((1 / 2)) * m + ((-1 / 2))) * h))) * f + ((((2) * m + (11)) * g + ((((1
    / 2)) * m + ((-1 / 2))) * h)) * g)) * f + ((4) * g ^ 3))) * e + ((((((1) * m + (2)) * f +
    (((4) * m + (9)) * g + ((((-1 / 2)) * m + (-1)) * h))) * f + ((((3) * m + (14)) * g + (((-2)
    * m + (-2)) * h)) * g)) * f + (((9) * g + ((((-3 / 2)) * m + (-1)) * h)) * g ^ 2)) * f +
    ((2) * g ^ 4))) * e + ((((((((1 / 2)) * m + ((1 / 2))) * f + (((2) * m + ((5 / 2))) * g +
    ((((-1 / 2)) * m + ((-1 / 2))) * h))) * f + (((((5 / 2)) * m + ((9 / 2))) * g + (((-1) * m +
    ((-3 / 2))) * h)) * g)) * f + ((((1) * m + ((7 / 2))) * g + ((((-1 / 2)) * m + ((-3 / 2))) *
    h)) * g ^ 2)) * f + (((1) * g + (((-1 / 2)) * h)) * g ^ 3)) * f))) * d + ((((((((1 / 2)) * f
    + (((3 / 2)) * g)) * f + ((1) * g ^ 2)) * e + ((((((-1 / 2)) * m + (2)) * f + ((((-1 / 2)) *
    m + ((13 / 2))) * g)) * f + (((13 / 2)) * g ^ 2)) * f + ((2) * g ^ 3))) * e + (((((3) * f +
    (((1) * m + ((21 / 2))) * g + (((-1) * m) * h))) * f + ((((1) * m + (13)) * g + (((-3) * m)
    * h)) * g + ((((-1 / 2)) * m) * h ^ 2))) * f + (((((13 / 2)) * g + (((-2) * m) * h)) * g +
    ((((-1 / 2)) * m) * h ^ 2)) * g)) * f + ((1) * g ^ 4))) * e + (((((((1) * m + (2)) * f +
    ((((7 / 2)) * m + ((15 / 2))) * g + ((((-1 / 2)) * m) * h))) * f + ((((4) * m + ((21 / 2)))
    * g + (((-1) * m) * h)) * g)) * f + (((((3 / 2)) * m + ((13 / 2))) * g + ((((-1 / 2)) * m) *
    h)) * g ^ 2)) * f + (((3 / 2)) * g ^ 4)) * f)) * e + ((((((((1 / 2)) * m + ((1 / 2))) * f +
    ((((3 / 2)) * m + (2)) * g)) * f + ((((3 / 2)) * m + (3)) * g ^ 2)) * f + ((((1 / 2)) * m +
    (2)) * g ^ 3)) * f + (((1 / 2)) * g ^ 4)) * f ^ 2))

theorem ratio_identity1 (d e f g h v : ℝ) (hf : f ≠ 0) :
    2*f^2*frequency1 d e f g h (1+(e+g)*v/f) =
      entry10 d e f g h*(1-v)^2+
      2*entry11 d e f g h*v*(1-v)+entry12 d e f g h*v^2 := by
  unfold frequency1 entry10 entry11 entry12
  field_simp
  ring

def frequency2 (d e f g h m : ℝ) : ℝ :=
  ((((((1) * g) * f + ((1) * g ^ 2)) * e + (((((2) * m + (2)) * g) * f + (((2) * m + (4)) * g ^
    2)) * f + ((2) * g ^ 3))) * e + ((((((2) * m + (1)) * g) * f + (((3) * m + (3)) * g ^ 2)) *
    f + ((3) * g ^ 3)) * f + ((1) * g ^ 4))) * d + ((((((2) * g) * f + ((2) * g ^ 2)) * e +
    (((((1) * m) * f + (((4) * m + (5)) * g + (((1) * m) * h))) * f + ((((3) * m + (9)) * g +
    (((1) * m + (-1)) * h)) * g)) * f + ((4) * g ^ 3))) * e + (((((((1) * m + (2)) * m) * f +
    (((9) * m + (4)) * g + (((2) * m) * h))) * f + ((((8) * m + (10)) * g + ((-2) * h)) * g)) *
    f + (((8) * g + (((-2) * m + (-2)) * h)) * g ^ 2)) * f + ((2) * g ^ 4))) * e + ((((((((1) *
    m + (1)) * m) * f + ((((1) * m + (5)) * m + (1)) * g + ((((1) * m + (1)) * m) * h))) * f +
    ((((6) * m + (3)) * g + ((-1) * h)) * g)) * f + ((((2) * m + (3)) * g + (((-1) * m + (-2)) *
    h)) * g ^ 2)) * f + (((1) * g + ((-1) * h)) * g ^ 3)) * f))) * d + (((((((1) * g) * f + ((1)
    * g ^ 2)) * e + (((((1) * m) * f + (((1) * m + (4)) * g + (((1) * m) * h))) * f + ((6) * g ^
    2)) * f + ((2) * g ^ 3))) * e + (((((((1) * m + (3)) * m) * f + (((8) * m + (6)) * g + (((3)
    * m) * h))) * f + (((5) * m + (12)) * g ^ 2)) * f + ((((7) * g + (((-3) * m) * h)) * g +
    (((-1) * m) * h ^ 2)) * g)) * f + ((1) * g ^ 4))) * e + ((((((((2) * m + (3)) * m) * f +
    ((((2) * m + (12)) * m + (4)) * g + ((((1) * m + (3)) * m) * h))) * f + ((((13) * m + (10))
    * g + (((3) * m) * h)) * g)) * f + (((4) * m + (8)) * g ^ 3)) * f + ((2) * g ^ 4)) * f)) * e
    + ((((((((1) * m + (1)) * m) * f + ((((2) * m + (5)) * m + (1)) * g + ((((1) * m + (1)) * m)
    * h))) * f + (((((1) * m + (7)) * m + (3)) * g + ((((1) * m + (2)) * m) * h)) * g)) * f +
    ((((3) * m + (3)) * g + (((1) * m) * h)) * g ^ 2)) * f + ((1) * g ^ 4)) * f ^ 2))

theorem ratio_identity2 (d e f g h v : ℝ) (hf : f ≠ 0) :
    2*f^2*frequency2 d e f g h (1+(e+g)*v/f) =
      entry20 d e f g h*(1-v)^2+
      2*entry21 d e f g h*v*(1-v)+entry22 d e f g h*v^2 := by
  unfold frequency2 entry20 entry21 entry22
  field_simp
  ring

/-- Complete frequency Bernstein expansion of the actual quadratic source. -/
theorem frequency_identity (d e f g h m u : ℝ) :
    q0 d e f g h m ((0)+((f)-(0))*u) =
      frequency0 d e f g h m*(1-u)^2+
      2*frequency1 d e f g h m*u*(1-u)+frequency2 d e f g h m*u^2 := by
  unfold q0 q00 q01 q02 frequency0 frequency1 frequency2
  ring

/-- Positivity on the complete closed frequency and ratio rectangle. -/
theorem positive {d e f g h m u : ℝ}
    (hd : 0 < d) (he : 0 < e) (hf : 0 < f) (hg : 0 < g) (hh : 0 < h)
    (hS : 0 ≤ secondSlack d e f g h) (hK : 0 ≤ firstSlack d f h)
    (hm : 1 ≤ m) (hM : m ≤ (e+f+g)/f) (hu0 : 0 ≤ u) (hu1 : u ≤ 1) :
    0 < q0 d e f g h m ((0)+((f)-(0))*u) := by
  let v := f*(m-1)/(e+g)
  have heg : 0 < e+g := add_pos he hg
  have hv0 : 0 ≤ v := div_nonneg (mul_nonneg hf.le (sub_nonneg.mpr hm)) heg.le
  have hv1 : v ≤ 1 := by
    apply (div_le_one heg).mpr
    have hb := (le_div_iff₀ hf).mp hM
    nlinarith only [hb]
  have hm' : m = 1+(e+g)*v/f := by dsimp [v]; field_simp; ring
  have h0 : 0 < frequency0 d e f g h m := by
    have hp := ratio_block_pos (entry00_pos hd he hf hg hh hS hK)
      (entry01_pos hd he hf hg hh hS hK) (entry02_pos hd he hf hg hh hS hK) hv0 hv1
    rw [← ratio_identity0 d e f g h v (ne_of_gt hf), ← hm'] at hp
    exact (mul_pos_iff_of_pos_left (by positivity : 0 < 2*f^2)).mp hp
  have h1 : 0 < frequency1 d e f g h m := by
    have hp := ratio_block_pos (entry10_pos hd he hf hg hh hS hK)
      (entry11_pos hd he hf hg hh hS hK) (entry12_pos hd he hf hg hh hS hK) hv0 hv1
    rw [← ratio_identity1 d e f g h v (ne_of_gt hf), ← hm'] at hp
    exact (mul_pos_iff_of_pos_left (by positivity : 0 < 2*f^2)).mp hp
  have h2 : 0 < frequency2 d e f g h m := by
    have hp := ratio_block_pos (entry20_pos hd he hf hg hh hS hK)
      (entry21_pos hd he hf hg hh hS hK) (entry22_pos hd he hf hg hh hS hK) hv0 hv1
    rw [← ratio_identity2 d e f g h v (ne_of_gt hf), ← hm'] at hp
    exact (mul_pos_iff_of_pos_left (by positivity : 0 < 2*f^2)).mp hp
  rw [frequency_identity]
  exact ratio_block_pos h0 h1 h2 hu0 hu1

end MiddleLower
end
end SPR.N6.UpperInner
