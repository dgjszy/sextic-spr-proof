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

namespace MiddleUpper

def entry00 (d e f g h : ℝ) : ℝ :=
  (((((-2) * g ^ 2) * f ^ 3) * e) * d + ((((((-2) * h) * f ^ 3) * e + ((((2) * f + ((-6) * h)) *
    f + (((-6) * g + ((-8) * h)) * g)) * f ^ 3)) * e + ((((6) * f + ((6) * g + ((-2) * h))) * f
    + (((-4) * h) * g)) * f ^ 4)) * e + (((((4) * f + ((8) * g + ((4) * h))) * f + (((6) * g +
    ((4) * h)) * g)) * f + (((2) * g + ((2) * h)) * g ^ 2)) * f ^ 4))) * d + ((((((((2) * f +
    ((4) * g + ((2) * h))) * f + (((2) * g + ((4) * h)) * g + ((2) * h ^ 2))) * f ^ 2) * e +
    (((((12) * f + ((24) * g + ((10) * h))) * f + (((14) * g + ((16) * h)) * g + ((6) * h ^ 2)))
    * f + ((((4) * g + ((8) * h)) * g + ((4) * h ^ 2)) * g)) * f ^ 2)) * e + ((((((22) * f +
    ((46) * g + ((18) * h))) * f + (((34) * g + ((36) * h)) * g + ((12) * h ^ 2))) * f + ((((12)
    * g + ((24) * h)) * g + ((12) * h ^ 2)) * g)) * f + ((((2) * g + ((4) * h)) * g + ((2) * h ^
    2)) * g ^ 2)) * f ^ 2)) * e + ((((((16) * f + ((36) * g + ((14) * h))) * f + (((28) * g +
    ((26) * h)) * g + ((6) * h ^ 2))) * f + ((((10) * g + ((18) * h)) * g + ((8) * h ^ 2)) * g))
    * f + ((((2) * g + ((4) * h)) * g + ((2) * h ^ 2)) * g ^ 2)) * f ^ 3)) * e + (((((4) * f +
    ((10) * g + ((4) * h))) * f + (((8) * g + ((6) * h)) * g)) * f + (((2) * g + ((2) * h)) * g
    ^ 2)) * f ^ 5))

def entry00R (d e f g h : ℝ) : ℝ :=
  ((((((28) * g + ((8) * h)) * f ^ 3) * e + ((((24) * h) * f + ((2) * g ^ 2)) * f ^ 3)) * e +
    ((((8) * h) * f + (((4) * h) * g)) * f ^ 4)) * d + ((((((28) * g) * f ^ 3) * e + (((8) * f ^
    2 + ((8) * h ^ 2)) * f ^ 3)) * e + (((((24) * f + ((24) * g)) * f + ((24) * h ^ 2)) * f +
    (((5) * g + ((10) * h)) * g ^ 2)) * f ^ 3)) * e + (((((16) * f + ((32) * g + ((16) * h))) *
    f + (((24) * g + ((20) * h)) * g + ((8) * h ^ 2))) * f + ((((8) * g + ((10) * h)) * g + ((4)
    * h ^ 2)) * g)) * f ^ 4))) * d + ((((((((8) * f + ((16) * g + ((8) * h))) * f + (((8) * g +
    ((16) * h)) * g + ((8) * h ^ 2))) * f ^ 2) * e + (((((48) * f + ((82) * g + ((36) * h))) * f
    + (((56) * g + ((78) * h)) * g + ((28) * h ^ 2))) * f + ((((16) * g + ((32) * h)) * g +
    ((16) * h ^ 2)) * g)) * f ^ 2)) * e + ((((((88) * f + ((170) * g + ((56) * h))) * f +
    (((117) * g + ((140) * h)) * g + ((60) * h ^ 2))) * f + ((((48) * g + ((101) * h)) * g +
    ((48) * h ^ 2)) * g)) * f + ((((8) * g + ((16) * h)) * g + ((8) * h ^ 2)) * g ^ 2)) * f ^
    2)) * e + ((((((64) * f + ((144) * g + ((40) * h))) * f + (((107) * g + ((90) * h)) * g +
    ((28) * h ^ 2))) * f + ((((35) * g + ((72) * h)) * g + ((34) * h ^ 2)) * g)) * f + ((((8) *
    g + ((16) * h)) * g + ((8) * h ^ 2)) * g ^ 2)) * f ^ 3)) * e + (((((16) * f + ((40) * g +
    ((12) * h))) * f + (((32) * g + ((18) * h)) * g)) * f + (((8) * g + ((6) * h)) * g ^ 2)) * f
    ^ 5))

def entry00S (d e f g h : ℝ) : ℝ :=
  ((((14) * g + ((4) * h)) * f ^ 3) * e + ((((12) * h) * f + ((5) * g ^ 2)) * f ^ 3)) * e +
    ((((4) * h) * f + (((2) * h) * g)) * f ^ 4)

def entry00K (d e f g h : ℝ) : ℝ :=
  0

/-- This exact decomposition permits zero first or second width. -/
theorem entry00_identity (d e f g h : ℝ) :
    4*entry00 d e f g h = entry00R d e f g h +
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
  ((((((-1) * g ^ 2) * f ^ 2) * e + ((((-2) * g ^ 2) * f + ((-1) * g ^ 3)) * f ^ 2)) * e) * d +
    (((((((1) * f + ((-3) * h)) * f + (((-3) * g + ((-2) * h)) * g)) * f ^ 2) * e + (((((6) * f
    + ((4) * g + ((-6) * h))) * f + (((-6) * g + ((-9) * h)) * g)) * f + (((-3) * g + ((-1) *
    h)) * g ^ 2)) * f ^ 2)) * e + ((((((9) * f + ((15) * g + ((1) * h))) * f + (((6) * g + ((-2)
    * h)) * g)) * f + (((1) * g + ((1) * h)) * g ^ 2)) * f + (((1) * h) * g ^ 3)) * f ^ 2)) * e
    + ((((((4) * f + ((11) * g + ((4) * h))) * f + (((11) * g + ((7) * h)) * g)) * f + (((5) * g
    + ((4) * h)) * g ^ 2)) * f + (((1) * g + ((1) * h)) * g ^ 3)) * f ^ 3))) * d + ((((((((5) *
    f + ((8) * g + ((4) * h))) * f + (((2) * g + ((4) * h)) * g + ((2) * h ^ 2))) * f ^ 2) * e +
    (((((21) * f + ((40) * g + ((16) * h))) * f + (((23) * g + ((26) * h)) * g + ((9) * h ^ 2)))
    * f + ((((4) * g + ((11) * h)) * g + ((6) * h ^ 2)) * g)) * f ^ 2)) * e + ((((((31) * f +
    ((71) * g + ((25) * h))) * f + (((55) * g + ((51) * h)) * g + ((14) * h ^ 2))) * f + ((((18)
    * g + ((36) * h)) * g + ((17) * h ^ 2)) * g)) * f + ((((2) * g + ((7) * h)) * g + ((4) * h ^
    2)) * g ^ 2)) * f ^ 2)) * e + ((((((19) * f + ((52) * g + ((17) * h))) * f + (((49) * g +
    ((37) * h)) * g + ((6) * h ^ 2))) * f + ((((19) * g + ((28) * h)) * g + ((10) * h ^ 2)) *
    g)) * f + ((((3) * g + ((8) * h)) * g + ((4) * h ^ 2)) * g ^ 2)) * f ^ 3)) * e + ((((((4) *
    f + ((13) * g + ((4) * h))) * f + (((15) * g + ((9) * h)) * g)) * f + (((7) * g + ((6) * h))
    * g ^ 2)) * f + (((1) * g + ((1) * h)) * g ^ 3)) * f ^ 4))

def entry01R (d e f g h : ℝ) : ℝ :=
  (((((((16) * g) * f ^ 2) * e + ((((16) * f + ((60) * g + ((24) * h))) * f + ((8) * g ^ 2)) * f
    ^ 2)) * e + (((((32) * h) * f + ((2) * g ^ 2)) * f + ((8) * g ^ 3)) * f ^ 2)) * e) * d +
    (((((((16) * g) * f ^ 2) * e + (((24) * f + ((60) * g)) * f ^ 3)) * e + (((((48) * f + ((40)
    * g)) * f + ((24) * h ^ 2)) * f + (((8) * h) * g ^ 2)) * f ^ 2)) * e + ((((((72) * f +
    ((120) * g + ((8) * h))) * f + ((48) * g ^ 2 + ((32) * h ^ 2))) * f + (((17) * g + ((26) *
    h)) * g ^ 2)) * f + (((8) * g + ((24) * h)) * g ^ 3)) * f ^ 2)) * e + ((((((32) * f + ((88)
    * g + ((32) * h))) * f + (((88) * g + ((56) * h)) * g)) * f + (((40) * g + ((32) * h)) * g ^
    2)) * f + (((8) * g + ((8) * h)) * g ^ 3)) * f ^ 3))) * d + ((((((((40) * f + ((56) * g +
    ((32) * h))) * f + (((16) * g + ((40) * h)) * g + ((16) * h ^ 2))) * f ^ 2) * e + (((((160)
    * f + ((282) * g + ((124) * h))) * f + (((168) * g + ((238) * h)) * g + ((84) * h ^ 2))) * f
    + ((((32) * g + ((96) * h)) * g + ((48) * h ^ 2)) * g)) * f ^ 2)) * e + ((((((240) * f +
    ((530) * g + ((172) * h))) * f + (((393) * g + ((396) * h)) * g + ((128) * h ^ 2))) * f +
    ((((128) * g + ((297) * h)) * g + ((136) * h ^ 2)) * g)) * f + ((((16) * g + ((64) * h)) * g
    + ((32) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e + ((((((152) * f + ((416) * g + ((120) * h))) * f
    + (((383) * g + ((280) * h)) * g + ((48) * h ^ 2))) * f + ((((135) * g + ((224) * h)) * g +
    ((80) * h ^ 2)) * g)) * f + ((((16) * g + ((64) * h)) * g + ((32) * h ^ 2)) * g ^ 2)) * f ^
    3)) * e + ((((((32) * f + ((104) * g + ((32) * h))) * f + (((120) * g + ((72) * h)) * g)) *
    f + (((56) * g + ((48) * h)) * g ^ 2)) * f + (((8) * g + ((8) * h)) * g ^ 3)) * f ^ 4))

def entry01S (d e f g h : ℝ) : ℝ :=
  (((((8) * g) * f ^ 2) * e + ((((8) * f + ((30) * g + ((12) * h))) * f + ((8) * g ^ 2)) * f ^
    2)) * e + (((((16) * h) * f + ((9) * g ^ 2)) * f + ((8) * g ^ 3)) * f ^ 2)) * e

def entry01K (d e f g h : ℝ) : ℝ :=
  0

/-- This exact decomposition permits zero first or second width. -/
theorem entry01_identity (d e f g h : ℝ) :
    8*entry01 d e f g h = entry01R d e f g h +
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
  ((((((-2) * g ^ 2) * f ^ 2) * e + ((((-2) * g ^ 2) * f + ((-2) * g ^ 3)) * f ^ 2)) * e) * d +
    (((((((4) * f + ((-4) * h)) * f + (((-6) * g + ((-4) * h)) * g)) * f ^ 2) * e + (((((12) * f
    + ((14) * g + ((-4) * h))) * f + (((-6) * g + ((-10) * h)) * g)) * f + (((-6) * g + ((-2) *
    h)) * g ^ 2)) * f ^ 2)) * e + ((((((12) * f + ((28) * g + ((4) * h))) * f + (((18) * g +
    ((4) * h)) * g)) * f + (((2) * g + ((2) * h)) * g ^ 2)) * f + (((2) * h) * g ^ 3)) * f ^ 2))
    * e + ((((((4) * f + ((14) * g + ((4) * h))) * f + (((18) * g + ((10) * h)) * g)) * f +
    (((10) * g + ((8) * h)) * g ^ 2)) * f + (((2) * g + ((2) * h)) * g ^ 3)) * f ^ 3))) * d +
    ((((((((10) * f + ((12) * g + ((6) * h))) * f + (((2) * g + ((4) * h)) * g + ((2) * h ^ 2)))
    * f ^ 2) * e + (((((34) * f + ((64) * g + ((24) * h))) * f + (((32) * g + ((36) * h)) * g +
    ((12) * h ^ 2))) * f + ((((4) * g + ((14) * h)) * g + ((8) * h ^ 2)) * g)) * f ^ 2)) * e +
    ((((((42) * f + ((108) * g + ((34) * h))) * f + (((88) * g + ((72) * h)) * g + ((16) * h ^
    2))) * f + ((((24) * g + ((48) * h)) * g + ((22) * h ^ 2)) * g)) * f + ((((2) * g + ((10) *
    h)) * g + ((6) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e + ((((((22) * f + ((72) * g + ((20) * h)))
    * f + (((82) * g + ((52) * h)) * g + ((6) * h ^ 2))) * f + ((((36) * g + ((44) * h)) * g +
    ((12) * h ^ 2)) * g)) * f + ((((4) * g + ((12) * h)) * g + ((6) * h ^ 2)) * g ^ 2)) * f ^
    3)) * e + ((((((4) * f + ((16) * g + ((4) * h))) * f + (((24) * g + ((12) * h)) * g)) * f +
    (((16) * g + ((12) * h)) * g ^ 2)) * f + (((4) * g + ((4) * h)) * g ^ 3)) * f ^ 4))

def entry02R (d e f g h : ℝ) : ℝ :=
  (((((((4) * g) * f ^ 2) * e + ((((4) * f + ((8) * g + ((4) * h))) * f + ((2) * g ^ 2)) * f ^
    2)) * e + (((2) * g ^ 3) * f ^ 2)) * e) * d + (((((((4) * g) * f ^ 2) * e + (((8) * f + ((8)
    * g)) * f ^ 3)) * e + (((((12) * f + ((16) * g)) * f + ((4) * h ^ 2)) * f + (((2) * h) * g ^
    2)) * f ^ 2)) * e + ((((((12) * f + ((28) * g + ((4) * h))) * f + (((18) * g + ((4) * h)) *
    g)) * f + (((3) * g + ((4) * h)) * g ^ 2)) * f + (((2) * g + ((6) * h)) * g ^ 3)) * f ^ 2))
    * e + ((((((4) * f + ((14) * g + ((4) * h))) * f + (((18) * g + ((10) * h)) * g)) * f +
    (((10) * g + ((8) * h)) * g ^ 2)) * f + (((2) * g + ((2) * h)) * g ^ 3)) * f ^ 3))) * d +
    ((((((((10) * f + ((10) * g + ((6) * h))) * f + (((2) * g + ((6) * h)) * g + ((2) * h ^ 2)))
    * f ^ 2) * e + (((((32) * f + ((58) * g + ((24) * h))) * f + (((28) * g + ((40) * h)) * g +
    ((14) * h ^ 2))) * f + ((((4) * g + ((16) * h)) * g + ((8) * h ^ 2)) * g)) * f ^ 2)) * e +
    ((((((40) * f + ((102) * g + ((32) * h))) * f + (((81) * g + ((70) * h)) * g + ((16) * h ^
    2))) * f + ((((20) * g + ((49) * h)) * g + ((22) * h ^ 2)) * g)) * f + ((((2) * g + ((12) *
    h)) * g + ((6) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e + ((((((22) * f + ((72) * g + ((20) * h)))
    * f + (((81) * g + ((52) * h)) * g + ((6) * h ^ 2))) * f + ((((33) * g + ((44) * h)) * g +
    ((12) * h ^ 2)) * g)) * f + ((((2) * g + ((12) * h)) * g + ((6) * h ^ 2)) * g ^ 2)) * f ^
    3)) * e + ((((((4) * f + ((16) * g + ((4) * h))) * f + (((24) * g + ((12) * h)) * g)) * f +
    (((16) * g + ((12) * h)) * g ^ 2)) * f + (((4) * g + ((4) * h)) * g ^ 3)) * f ^ 4))

def entry02S (d e f g h : ℝ) : ℝ :=
  (((((2) * g) * f ^ 2) * e + ((((2) * f + ((4) * g + ((2) * h))) * f + ((2) * g ^ 2)) * f ^ 2))
    * e + ((((1) * g ^ 2) * f + ((2) * g ^ 3)) * f ^ 2)) * e

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
  (((((-1) * g ^ 2) * f ^ 3) * e + (((-1) * g ^ 2) * f ^ 4)) * d + ((((((-1) * h) * f ^ 3) * e +
    ((((-1) * g + ((-4) * h)) * f + (((-4) * g + ((-5) * h)) * g)) * f ^ 3)) * e + ((((-2) * g +
    ((-5) * h)) * f + (((-6) * g + ((-8) * h)) * g)) * f ^ 4)) * e + ((((-1) * g + ((-2) * h)) *
    f + (((-2) * g + ((-3) * h)) * g)) * f ^ 5))) * d + ((((((((1) * f + ((3) * g + ((2) * h)))
    * f + (((2) * g + ((4) * h)) * g + ((2) * h ^ 2))) * f ^ 2) * e + (((((5) * f + ((16) * g +
    ((9) * h))) * f + (((13) * g + ((18) * h)) * g + ((7) * h ^ 2))) * f + ((((4) * g + ((8) *
    h)) * g + ((4) * h ^ 2)) * g)) * f ^ 2)) * e + ((((((9) * f + ((29) * g + ((14) * h))) * f +
    (((28) * g + ((34) * h)) * g + ((12) * h ^ 2))) * f + ((((13) * g + ((26) * h)) * g + ((13)
    * h ^ 2)) * g)) * f + ((((2) * g + ((4) * h)) * g + ((2) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e +
    ((((((7) * f + ((22) * g + ((9) * h))) * f + (((23) * g + ((26) * h)) * g + ((9) * h ^ 2)))
    * f + ((((12) * g + ((24) * h)) * g + ((12) * h ^ 2)) * g)) * f + ((((3) * g + ((6) * h)) *
    g + ((3) * h ^ 2)) * g ^ 2)) * f ^ 3)) * e + ((((((2) * f + ((6) * g + ((2) * h))) * f +
    (((6) * g + ((6) * h)) * g + ((2) * h ^ 2))) * f + ((((3) * g + ((6) * h)) * g + ((3) * h ^
    2)) * g)) * f + ((((1) * g + ((2) * h)) * g + ((1) * h ^ 2)) * g ^ 2)) * f ^ 4))

def entry10R (d e f g h : ℝ) : ℝ :=
  ((((((36) * g + ((8) * h)) * f ^ 3) * e + ((((8) * f + ((48) * g + ((32) * h))) * f + ((6) * g
    ^ 2)) * f ^ 3)) * e + ((((16) * f + ((12) * g + ((32) * h))) * f + ((6) * g ^ 2)) * f ^ 4))
    * d + ((((((36) * g) * f ^ 3) * e + ((((8) * f + ((40) * g)) * f + ((8) * h ^ 2)) * f ^ 3))
    * e + ((((16) * f ^ 2 + ((32) * h ^ 2)) * f + (((7) * g + ((14) * h)) * g ^ 2)) * f ^ 3)) *
    e + (((((4) * h) * g + ((32) * h ^ 2)) * f + (((12) * g + ((14) * h)) * g ^ 2)) * f ^ 4))) *
    d + ((((((((8) * f + ((24) * g + ((16) * h))) * f + (((16) * g + ((32) * h)) * g + ((16) * h
    ^ 2))) * f ^ 2) * e + (((((40) * f + ((110) * g + ((68) * h))) * f + (((104) * g + ((162) *
    h)) * g + ((60) * h ^ 2))) * f + ((((32) * g + ((64) * h)) * g + ((32) * h ^ 2)) * g)) * f ^
    2)) * e + ((((((68) * f + ((190) * g + ((96) * h))) * f + (((199) * g + ((292) * h)) * g +
    ((112) * h ^ 2))) * f + ((((104) * g + ((215) * h)) * g + ((104) * h ^ 2)) * g)) * f +
    ((((16) * g + ((32) * h)) * g + ((16) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e + ((((((44) * f +
    ((142) * g + ((48) * h))) * f + (((141) * g + ((198) * h)) * g + ((88) * h ^ 2))) * f +
    ((((89) * g + ((204) * h)) * g + ((96) * h ^ 2)) * g)) * f + ((((24) * g + ((48) * h)) * g +
    ((24) * h ^ 2)) * g ^ 2)) * f ^ 3)) * e + ((((((8) * f + ((34) * g)) * f + (((30) * g +
    ((32) * h)) * g + ((16) * h ^ 2))) * f + ((((12) * g + ((48) * h)) * g + ((24) * h ^ 2)) *
    g)) * f + ((((8) * g + ((16) * h)) * g + ((8) * h ^ 2)) * g ^ 2)) * f ^ 4))

def entry10S (d e f g h : ℝ) : ℝ :=
  ((((18) * g + ((4) * h)) * f ^ 3) * e + ((((4) * f + ((24) * g + ((16) * h))) * f + ((7) * g ^
    2)) * f ^ 3)) * e + ((((8) * f + ((6) * g + ((16) * h))) * f + ((12) * g ^ 2)) * f ^ 4)

def entry10K (d e f g h : ℝ) : ℝ :=
  (((10) * g ^ 2) * f ^ 4) * d

/-- This exact decomposition permits zero first or second width. -/
theorem entry10_identity (d e f g h : ℝ) :
    8*entry10 d e f g h = entry10R d e f g h +
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
  (((((((-1 / 2)) * g ^ 2) * f ^ 2) * e + (((((-3 / 2)) * g ^ 2) * f + (((-1 / 2)) * g ^ 3)) * f
    ^ 2)) * e + ((((-1) * g ^ 2) * f + (((-1 / 2)) * g ^ 3)) * f ^ 3)) * d + ((((((((-1 / 2)) *
    g + (((-3 / 2)) * h)) * f + (((-2) * g + (((-3 / 2)) * h)) * g)) * f ^ 2) * e + (((((-2) * g
    + ((-5) * h)) * f + ((((-15 / 2)) * g + (((-15 / 2)) * h)) * g)) * f + (((-2) * g + ((-1) *
    h)) * g ^ 2)) * f ^ 2)) * e + (((((((-5 / 2)) * g + (((-11 / 2)) * h)) * f + (((-8) * g +
    (((-19 / 2)) * h)) * g)) * f + (((-3) * g + (((-3 / 2)) * h)) * g ^ 2)) * f + ((((1 / 2)) *
    h) * g ^ 3)) * f ^ 2)) * e + ((((((-1) * g + ((-2) * h)) * f + ((((-5 / 2)) * g + (((-7 /
    2)) * h)) * g)) * f + (((-1) * g + (((-1 / 2)) * h)) * g ^ 2)) * f + ((((1 / 2)) * h) * g ^
    3)) * f ^ 3))) * d + (((((((((3 / 2)) * f + (((9 / 2)) * g + ((3) * h))) * f + (((2) * g +
    ((4) * h)) * g + ((2) * h ^ 2))) * f ^ 2) * e + ((((((13 / 2)) * f + (((41 / 2)) * g + (((23
    / 2)) * h))) * f + ((((31 / 2)) * g + ((22) * h)) * g + (((17 / 2)) * h ^ 2))) * f + ((((4)
    * g + ((10) * h)) * g + (((11 / 2)) * h ^ 2)) * g)) * f ^ 2)) * e + (((((((21 / 2)) * f +
    ((34) * g + ((16) * h))) * f + (((33) * g + (((81 / 2)) * h)) * g + ((14) * h ^ 2))) * f +
    (((((27 / 2)) * g + (((63 / 2)) * h)) * g + (((33 / 2)) * h ^ 2)) * g)) * f + ((((2) * g +
    ((6) * h)) * g + (((7 / 2)) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e + (((((((15 / 2)) * f + (((49
    / 2)) * g + (((19 / 2)) * h))) * f + ((((53 / 2)) * g + ((29) * h)) * g + (((19 / 2)) * h ^
    2))) * f + (((((25 / 2)) * g + (((57 / 2)) * h)) * g + (((29 / 2)) * h ^ 2)) * g)) * f +
    (((((5 / 2)) * g + (((17 / 2)) * h)) * g + ((5) * h ^ 2)) * g ^ 2)) * f ^ 3)) * e + ((((((2)
    * f + (((13 / 2)) * g + ((2) * h))) * f + (((7) * g + (((13 / 2)) * h)) * g + ((2) * h ^
    2))) * f + ((((3) * g + ((7) * h)) * g + (((7 / 2)) * h ^ 2)) * g)) * f + (((((1 / 2)) * g +
    (((5 / 2)) * h)) * g + (((3 / 2)) * h ^ 2)) * g ^ 2)) * f ^ 4))

def entry11R (d e f g h : ℝ) : ℝ :=
  (((((((48) * g) * f ^ 2) * e + ((((216) * g + ((48) * h)) * f + ((24) * g ^ 2)) * f ^ 2)) * e
    + (((((56) * f + ((224) * g + ((160) * h))) * f + ((84) * g ^ 2)) * f + ((28) * g ^ 3)) * f
    ^ 2)) * e + (((((64) * f + ((52) * g + ((120) * h))) * f + ((58) * g ^ 2)) * f + ((14) * g ^
    3)) * f ^ 3)) * d + (((((((48) * g) * f ^ 2) * e + (((200) * g) * f ^ 3)) * e + (((((56) * f
    + ((160) * g)) * f + ((48) * h ^ 2)) * f + (((8) * h) * g ^ 2)) * f ^ 2)) * e + (((((64) * f
    ^ 2 + ((160) * h ^ 2)) * f + (((84) * h) * g ^ 2)) * f + (((22) * g + ((60) * h)) * g ^ 3))
    * f ^ 2)) * e + (((((120) * h ^ 2) * f + (((40) * g + ((74) * h)) * g ^ 2)) * f + (((15) * g
    + ((46) * h)) * g ^ 3)) * f ^ 3))) * d + ((((((((48) * f + ((120) * g + ((96) * h))) * f +
    (((64) * g + ((152) * h)) * g + ((64) * h ^ 2))) * f ^ 2) * e + (((((208) * f + ((524) * g +
    ((344) * h))) * f + (((452) * g + ((812) * h)) * g + ((296) * h ^ 2))) * f + ((((128) * g +
    ((340) * h)) * g + ((176) * h ^ 2)) * g)) * f ^ 2)) * e + ((((((308) * f + ((868) * g +
    ((436) * h))) * f + (((862) * g + ((1384) * h)) * g + ((528) * h ^ 2))) * f + ((((390) * g +
    ((1074) * h)) * g + ((528) * h ^ 2)) * g)) * f + ((((64) * g + ((214) * h)) * g + ((112) * h
    ^ 2)) * g ^ 2)) * f ^ 2)) * e + ((((((180) * f + ((618) * g + ((196) * h))) * f + (((598) *
    g + ((874) * h)) * g + ((364) * h ^ 2))) * f + ((((297) * g + ((984) * h)) * g + ((464) * h
    ^ 2)) * g)) * f + ((((58) * g + ((287) * h)) * g + ((160) * h ^ 2)) * g ^ 2)) * f ^ 3)) * e
    + ((((((32) * f + ((150) * g + ((4) * h))) * f + (((126) * g + ((148) * h)) * g + ((64) * h
    ^ 2))) * f + ((((9) * g + ((224) * h)) * g + ((112) * h ^ 2)) * g)) * f + ((((1) * g + ((80)
    * h)) * g + ((48) * h ^ 2)) * g ^ 2)) * f ^ 4))

def entry11S (d e f g h : ℝ) : ℝ :=
  (((((24) * g) * f ^ 2) * e + ((((108) * g + ((24) * h)) * f + ((20) * g ^ 2)) * f ^ 2)) * e +
    (((((28) * f + ((112) * g + ((80) * h))) * f + ((66) * g ^ 2)) * f + ((22) * g ^ 3)) * f ^
    2)) * e + (((((32) * f + ((26) * g + ((60) * h))) * f + ((72) * g ^ 2)) * f + ((15) * g ^
    3)) * f ^ 3)

def entry11K (d e f g h : ℝ) : ℝ :=
  (((54) * g ^ 2) * f ^ 4) * d

/-- This exact decomposition permits zero first or second width. -/
theorem entry11_identity (d e f g h : ℝ) :
    32*entry11 d e f g h = entry11R d e f g h +
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
  ((((((-1) * g ^ 2) * f ^ 2) * e + ((((-2) * g ^ 2) * f + ((-1) * g ^ 3)) * f ^ 2)) * e +
    ((((-1) * g ^ 2) * f + ((-1) * g ^ 3)) * f ^ 3)) * d + (((((((-1) * g + ((-2) * h)) * f +
    (((-4) * g + ((-3) * h)) * g)) * f ^ 2) * e + (((((-3) * g + ((-6) * h)) * f + (((-11) * g +
    ((-10) * h)) * g)) * f + (((-4) * g + ((-2) * h)) * g ^ 2)) * f ^ 2)) * e + ((((((-3) * g +
    ((-6) * h)) * f + (((-10) * g + ((-11) * h)) * g)) * f + (((-6) * g + ((-3) * h)) * g ^ 2))
    * f + (((1) * h) * g ^ 3)) * f ^ 2)) * e + ((((((-1) * g + ((-2) * h)) * f + (((-3) * g +
    ((-4) * h)) * g)) * f + (((-2) * g + ((-1) * h)) * g ^ 2)) * f + (((1) * h) * g ^ 3)) * f ^
    3))) * d + ((((((((2) * f + ((6) * g + ((4) * h))) * f + (((2) * g + ((4) * h)) * g + ((2) *
    h ^ 2))) * f ^ 2) * e + (((((8) * f + ((25) * g + ((14) * h))) * f + (((18) * g + ((26) *
    h)) * g + ((10) * h ^ 2))) * f + ((((4) * g + ((12) * h)) * g + ((7) * h ^ 2)) * g)) * f ^
    2)) * e + ((((((12) * f + ((39) * g + ((18) * h))) * f + (((38) * g + ((47) * h)) * g +
    ((16) * h ^ 2))) * f + ((((14) * g + ((37) * h)) * g + ((20) * h ^ 2)) * g)) * f + ((((2) *
    g + ((8) * h)) * g + ((5) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e + ((((((8) * f + ((27) * g +
    ((10) * h))) * f + (((30) * g + ((32) * h)) * g + ((10) * h ^ 2))) * f + ((((13) * g + ((33)
    * h)) * g + ((17) * h ^ 2)) * g)) * f + ((((2) * g + ((11) * h)) * g + ((7) * h ^ 2)) * g ^
    2)) * f ^ 3)) * e + ((((((2) * f + ((7) * g + ((2) * h))) * f + (((8) * g + ((7) * h)) * g +
    ((2) * h ^ 2))) * f + ((((3) * g + ((8) * h)) * g + ((4) * h ^ 2)) * g)) * f + ((((3) * h) *
    g + ((2) * h ^ 2)) * g ^ 2)) * f ^ 4))

def entry12R (d e f g h : ℝ) : ℝ :=
  (((((16) * g ^ 2) * f ^ 3) * d + ((((((24) * g) * f ^ 2) * e + ((((72) * g + ((16) * h)) * f +
    ((12) * g ^ 2)) * f ^ 2)) * e + ((((48) * f + ((64) * g + ((48) * h))) * f + ((60) * g ^ 2))
    * f ^ 3)) * e + (((((16) * f + ((64) * g)) * f + ((40) * g ^ 2)) * f + (((16) * h) * g ^ 2))
    * f ^ 3))) * d + (((((((24) * g) * f ^ 2) * e + (((64) * g) * f ^ 3)) * e + (((((48) * f +
    ((40) * g)) * f + ((16) * g ^ 2 + ((16) * h ^ 2))) * f + (((4) * h) * g ^ 2)) * f ^ 2)) * e
    + ((((((16) * f + ((64) * g)) * f + ((48) * h ^ 2)) * f + (((44) * h) * g ^ 2)) * f + (((11)
    * g + ((16) * h)) * g ^ 3)) * f ^ 2)) * e + ((((((32) * h) * g) * f + (((40) * h) * g ^ 2))
    * f + (((8) * h) * g ^ 3)) * f ^ 3))) * d + ((((((((16) * f + ((36) * g + ((32) * h))) * f +
    (((16) * g + ((44) * h)) * g + ((16) * h ^ 2))) * f ^ 2) * e + (((((64) * f + ((152) * g +
    ((104) * h))) * f + (((122) * g + ((244) * h)) * g + ((88) * h ^ 2))) * f + ((((32) * g +
    ((106) * h)) * g + ((56) * h ^ 2)) * g)) * f ^ 2)) * e + ((((((72) * f + ((244) * g + ((136)
    * h))) * f + (((224) * g + ((400) * h)) * g + ((152) * h ^ 2))) * f + ((((91) * g + ((330) *
    h)) * g + ((160) * h ^ 2)) * g)) * f + ((((16) * g + ((75) * h)) * g + ((40) * h ^ 2)) * g ^
    2)) * f ^ 2)) * e + ((((((32) * f + ((128) * g + ((64) * h))) * f + (((150) * g + ((264) *
    h)) * g + ((80) * h ^ 2))) * f + ((((59) * g + ((288) * h)) * g + ((136) * h ^ 2)) * g)) * f
    + ((((5) * g + ((88) * h)) * g + ((56) * h ^ 2)) * g ^ 2)) * f ^ 3)) * e + ((((((8) * f +
    ((16) * g + ((16) * h))) * f + (((8) * g + ((56) * h)) * g + ((16) * h ^ 2))) * f + ((((64)
    * h) * g + ((32) * h ^ 2)) * g)) * f + ((((24) * h) * g + ((16) * h ^ 2)) * g ^ 2)) * f ^
    4))

def entry12S (d e f g h : ℝ) : ℝ :=
  (((8) * g ^ 2) * f ^ 3) * d + ((((((12) * g) * f ^ 2) * e + ((((36) * g + ((8) * h)) * f +
    ((10) * g ^ 2)) * f ^ 2)) * e + (((((24) * f + ((32) * g + ((24) * h))) * f + ((34) * g ^
    2)) * f + ((11) * g ^ 3)) * f ^ 2)) * e + ((((8) * f + ((32) * g)) * f + ((24) * g ^ 2)) * f
    ^ 4))

def entry12K (d e f g h : ℝ) : ℝ :=
  (((((8) * g ^ 2) * f + ((14) * g ^ 3)) * f ^ 2) * e) * d

/-- This exact decomposition permits zero first or second width. -/
theorem entry12_identity (d e f g h : ℝ) :
    8*entry12 d e f g h = entry12R d e f g h +
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
  ((((((-2) * g + ((-2) * h)) * g) * f ^ 3) * e + ((((-4) * g + ((-4) * h)) * g) * f ^ 4)) * e +
    ((((-2) * g + ((-2) * h)) * g) * f ^ 5)) * d + ((((((((2) * g + ((2) * h)) * f + (((2) * g +
    ((4) * h)) * g + ((2) * h ^ 2))) * f ^ 2) * e + (((((10) * g + ((10) * h)) * f + (((12) * g
    + ((20) * h)) * g + ((8) * h ^ 2))) * f + ((((4) * g + ((8) * h)) * g + ((4) * h ^ 2)) * g))
    * f ^ 2)) * e + ((((((18) * g + ((18) * h)) * f + (((26) * g + ((40) * h)) * g + ((14) * h ^
    2))) * f + ((((14) * g + ((28) * h)) * g + ((14) * h ^ 2)) * g)) * f + ((((2) * g + ((4) *
    h)) * g + ((2) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e + ((((((14) * g + ((14) * h)) * f + (((24)
    * g + ((36) * h)) * g + ((12) * h ^ 2))) * f + ((((16) * g + ((32) * h)) * g + ((16) * h ^
    2)) * g)) * f + ((((4) * g + ((8) * h)) * g + ((4) * h ^ 2)) * g ^ 2)) * f ^ 3)) * e +
    ((((((4) * g + ((4) * h)) * f + (((8) * g + ((12) * h)) * g + ((4) * h ^ 2))) * f + ((((6) *
    g + ((12) * h)) * g + ((6) * h ^ 2)) * g)) * f + ((((2) * g + ((4) * h)) * g + ((2) * h ^
    2)) * g ^ 2)) * f ^ 4))

def entry20R (d e f g h : ℝ) : ℝ :=
  ((((((4) * g) * f ^ 3) * e + ((((8) * g) * f + ((2) * g ^ 2)) * f ^ 3)) * e + ((((4) * g) * f
    + ((2) * g ^ 2)) * f ^ 4)) * d + ((((((4) * g) * f ^ 3) * e + (((8) * g) * f ^ 4)) * e +
    ((((4) * g) * f ^ 2 + (((1) * g + ((2) * h)) * g ^ 2)) * f ^ 3)) * e + ((((2) * g + ((2) *
    h)) * g ^ 2) * f ^ 4))) * d + ((((((((4) * g + ((4) * h)) * f + (((4) * g + ((8) * h)) * g +
    ((4) * h ^ 2))) * f ^ 2) * e + (((((18) * g + ((20) * h)) * f + (((24) * g + ((42) * h)) * g
    + ((16) * h ^ 2))) * f + ((((8) * g + ((16) * h)) * g + ((8) * h ^ 2)) * g)) * f ^ 2)) * e +
    ((((((30) * g + ((36) * h)) * f + (((49) * g + ((84) * h)) * g + ((28) * h ^ 2))) * f +
    ((((28) * g + ((57) * h)) * g + ((28) * h ^ 2)) * g)) * f + ((((4) * g + ((8) * h)) * g +
    ((4) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e + ((((((22) * g + ((28) * h)) * f + (((41) * g +
    ((74) * h)) * g + ((24) * h ^ 2))) * f + ((((31) * g + ((66) * h)) * g + ((32) * h ^ 2)) *
    g)) * f + ((((8) * g + ((16) * h)) * g + ((8) * h ^ 2)) * g ^ 2)) * f ^ 3)) * e + ((((((6) *
    g + ((8) * h)) * f + (((12) * g + ((24) * h)) * g + ((8) * h ^ 2))) * f + ((((10) * g +
    ((24) * h)) * g + ((12) * h ^ 2)) * g)) * f + ((((4) * g + ((8) * h)) * g + ((4) * h ^ 2)) *
    g ^ 2)) * f ^ 4))

def entry20S (d e f g h : ℝ) : ℝ :=
  ((((2) * g) * f ^ 3) * e + ((((4) * g) * f + ((1) * g ^ 2)) * f ^ 3)) * e + ((((2) * g) * f +
    ((2) * g ^ 2)) * f ^ 4)

def entry20K (d e f g h : ℝ) : ℝ :=
  (((2) * g ^ 2) * f ^ 4) * d

/-- This exact decomposition permits zero first or second width. -/
theorem entry20_identity (d e f g h : ℝ) :
    2*entry20 d e f g h = entry20R d e f g h +
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
  (((((((-1) * g + ((-1) * h)) * g) * f ^ 2) * e + (((((-4) * g + ((-4) * h)) * g) * f + (((-1)
    * g + ((-1) * h)) * g ^ 2)) * f ^ 2)) * e + (((((-5) * g + ((-5) * h)) * g) * f + (((-2) * g
    + ((-2) * h)) * g ^ 2)) * f ^ 3)) * e + (((((-2) * g + ((-2) * h)) * g) * f + (((-1) * g +
    ((-1) * h)) * g ^ 2)) * f ^ 4)) * d + ((((((((3) * g + ((3) * h)) * f + (((2) * g + ((4) *
    h)) * g + ((2) * h ^ 2))) * f ^ 2) * e + (((((13) * g + ((13) * h)) * f + (((14) * g + ((23)
    * h)) * g + ((9) * h ^ 2))) * f + ((((4) * g + ((9) * h)) * g + ((5) * h ^ 2)) * g)) * f ^
    2)) * e + ((((((21) * g + ((21) * h)) * f + (((31) * g + ((47) * h)) * g + ((16) * h ^ 2)))
    * f + ((((15) * g + ((32) * h)) * g + ((17) * h ^ 2)) * g)) * f + ((((2) * g + ((5) * h)) *
    g + ((3) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e + ((((((15) * g + ((15) * h)) * f + (((28) * g +
    ((41) * h)) * g + ((13) * h ^ 2))) * f + ((((18) * g + ((37) * h)) * g + ((19) * h ^ 2)) *
    g)) * f + ((((4) * g + ((10) * h)) * g + ((6) * h ^ 2)) * g ^ 2)) * f ^ 3)) * e + ((((((4) *
    g + ((4) * h)) * f + (((9) * g + ((13) * h)) * g + ((4) * h ^ 2))) * f + ((((7) * g + ((14)
    * h)) * g + ((7) * h ^ 2)) * g)) * f + ((((2) * g + ((5) * h)) * g + ((3) * h ^ 2)) * g ^
    2)) * f ^ 4))

def entry21R (d e f g h : ℝ) : ℝ :=
  (((((((8) * g) * f ^ 2) * e + ((((64) * g) * f + (((12) * g + ((8) * h)) * g)) * f ^ 2)) * e +
    (((((80) * g) * f + ((32) * g ^ 2)) * f + ((10) * g ^ 3)) * f ^ 2)) * e + (((((32) * g) * f
    + ((24) * g ^ 2)) * f + ((16) * g ^ 3)) * f ^ 3)) * d + (((((((8) * g) * f ^ 2) * e + (((64)
    * g) * f ^ 3)) * e + ((((80) * g) * f ^ 2 + (((8) * h ^ 2) * g)) * f ^ 2)) * e + ((((32) *
    g) * f ^ 3 + (((5) * g + ((10) * h)) * g ^ 3)) * f ^ 2)) * e + (((((4) * g + ((8) * h)) * g
    ^ 2) * f + (((8) * g + ((16) * h)) * g ^ 3)) * f ^ 3))) * d + ((((((((44) * g + ((48) * h))
    * f + (((32) * g + ((68) * h)) * g + ((32) * h ^ 2))) * f ^ 2) * e + (((((172) * g + ((208)
    * h)) * f + (((214) * g + ((396) * h)) * g + ((144) * h ^ 2))) * f + ((((64) * g + ((150) *
    h)) * g + ((84) * h ^ 2)) * g)) * f ^ 2)) * e + ((((((264) * g + ((336) * h)) * f + (((442)
    * g + ((788) * h)) * g + ((256) * h ^ 2))) * f + ((((229) * g + ((524) * h)) * g + ((272) *
    h ^ 2)) * g)) * f + ((((32) * g + ((85) * h)) * g + ((48) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e
    + ((((((184) * g + ((240) * h)) * f + (((372) * g + ((672) * h)) * g + ((208) * h ^ 2))) * f
    + ((((259) * g + ((612) * h)) * g + ((304) * h ^ 2)) * g)) * f + ((((59) * g + ((168) * h))
    * g + ((96) * h ^ 2)) * g ^ 2)) * f ^ 3)) * e + ((((((48) * g + ((64) * h)) * f + (((108) *
    g + ((208) * h)) * g + ((64) * h ^ 2))) * f + ((((84) * g + ((224) * h)) * g + ((112) * h ^
    2)) * g)) * f + ((((24) * g + ((80) * h)) * g + ((48) * h ^ 2)) * g ^ 2)) * f ^ 4))

def entry21S (d e f g h : ℝ) : ℝ :=
  (((((4) * g) * f ^ 2) * e + ((((32) * g) * f + (((6) * g + ((4) * h)) * g)) * f ^ 2)) * e +
    (((((40) * g) * f + ((16) * g ^ 2)) * f + ((5) * g ^ 3)) * f ^ 2)) * e + (((((16) * g) * f +
    ((20) * g ^ 2)) * f + ((8) * g ^ 3)) * f ^ 3)

def entry21K (d e f g h : ℝ) : ℝ :=
  (((16) * g ^ 2) * f ^ 4) * d

/-- This exact decomposition permits zero first or second width. -/
theorem entry21_identity (d e f g h : ℝ) :
    16*entry21 d e f g h = entry21R d e f g h +
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
  (((((((-2) * g + ((-2) * h)) * g) * f ^ 2) * e + (((((-6) * g + ((-6) * h)) * g) * f + (((-2)
    * g + ((-2) * h)) * g ^ 2)) * f ^ 2)) * e + (((((-6) * g + ((-6) * h)) * g) * f + (((-4) * g
    + ((-4) * h)) * g ^ 2)) * f ^ 3)) * e + (((((-2) * g + ((-2) * h)) * g) * f + (((-2) * g +
    ((-2) * h)) * g ^ 2)) * f ^ 4)) * d + ((((((((4) * g + ((4) * h)) * f + (((2) * g + ((4) *
    h)) * g + ((2) * h ^ 2))) * f ^ 2) * e + (((((16) * g + ((16) * h)) * f + (((16) * g + ((26)
    * h)) * g + ((10) * h ^ 2))) * f + ((((4) * g + ((10) * h)) * g + ((6) * h ^ 2)) * g)) * f ^
    2)) * e + ((((((24) * g + ((24) * h)) * f + (((36) * g + ((54) * h)) * g + ((18) * h ^ 2)))
    * f + ((((16) * g + ((36) * h)) * g + ((20) * h ^ 2)) * g)) * f + ((((2) * g + ((6) * h)) *
    g + ((4) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e + ((((((16) * g + ((16) * h)) * f + (((32) * g +
    ((46) * h)) * g + ((14) * h ^ 2))) * f + ((((20) * g + ((42) * h)) * g + ((22) * h ^ 2)) *
    g)) * f + ((((4) * g + ((12) * h)) * g + ((8) * h ^ 2)) * g ^ 2)) * f ^ 3)) * e + ((((((4) *
    g + ((4) * h)) * f + (((10) * g + ((14) * h)) * g + ((4) * h ^ 2))) * f + ((((8) * g + ((16)
    * h)) * g + ((8) * h ^ 2)) * g)) * f + ((((2) * g + ((6) * h)) * g + ((4) * h ^ 2)) * g ^
    2)) * f ^ 4))

def entry22R (d e f g h : ℝ) : ℝ :=
  (((((((8) * g) * f ^ 2) * e + ((((40) * g) * f + (((12) * g + ((8) * h)) * g)) * f ^ 2)) * e +
    (((((32) * g) * f + (((28) * g + ((8) * h)) * g)) * f + ((10) * g ^ 3)) * f ^ 2)) * e +
    (((((16) * g) * f + (((24) * g + ((16) * h)) * g)) * f + ((18) * g ^ 3)) * f ^ 3)) * d +
    (((((((8) * g) * f ^ 2) * e + (((40) * g) * f ^ 3)) * e + ((((32) * g) * f ^ 2 + (((8) * h ^
    2) * g)) * f ^ 2)) * e + (((((16) * g) * f ^ 2 + (((8) * h ^ 2) * g)) * f + (((5) * g +
    ((10) * h)) * g ^ 3)) * f ^ 2)) * e + ((((((16) * h) * g + ((16) * h ^ 2)) * g) * f + (((9)
    * g + ((18) * h)) * g ^ 3)) * f ^ 3))) * d + ((((((((28) * g + ((32) * h)) * f + (((16) * g
    + ((36) * h)) * g + ((16) * h ^ 2))) * f ^ 2) * e + (((((104) * g + ((128) * h)) * f +
    (((118) * g + ((224) * h)) * g + ((80) * h ^ 2))) * f + ((((32) * g + ((86) * h)) * g +
    ((52) * h ^ 2)) * g)) * f ^ 2)) * e + ((((((156) * g + ((192) * h)) * f + (((248) * g +
    ((440) * h)) * g + ((144) * h ^ 2))) * f + ((((117) * g + ((298) * h)) * g + ((164) * h ^
    2)) * g)) * f + ((((16) * g + ((53) * h)) * g + ((32) * h ^ 2)) * g ^ 2)) * f ^ 2)) * e +
    ((((((104) * g + ((128) * h)) * f + (((210) * g + ((364) * h)) * g + ((112) * h ^ 2))) * f +
    ((((132) * g + ((348) * h)) * g + ((184) * h ^ 2)) * g)) * f + ((((27) * g + ((105) * h)) *
    g + ((64) * h ^ 2)) * g ^ 2)) * f ^ 3)) * e + ((((((24) * g + ((32) * h)) * f + (((56) * g +
    ((104) * h)) * g + ((32) * h ^ 2))) * f + ((((39) * g + ((120) * h)) * g + ((64) * h ^ 2)) *
    g)) * f + ((((7) * g + ((48) * h)) * g + ((32) * h ^ 2)) * g ^ 2)) * f ^ 4))

def entry22S (d e f g h : ℝ) : ℝ :=
  (((((4) * g) * f ^ 2) * e + ((((20) * g) * f + (((6) * g + ((4) * h)) * g)) * f ^ 2)) * e +
    (((((16) * g) * f + (((14) * g + ((4) * h)) * g)) * f + ((5) * g ^ 3)) * f ^ 2)) * e +
    (((((8) * g) * f + (((16) * g + ((8) * h)) * g)) * f + ((9) * g ^ 3)) * f ^ 3)

def entry22K (d e f g h : ℝ) : ℝ :=
  (((8) * g ^ 2) * f ^ 4) * d

/-- This exact decomposition permits zero first or second width. -/
theorem entry22_identity (d e f g h : ℝ) :
    8*entry22 d e f g h = entry22R d e f g h +
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
  ((((((-1) * m) * g ^ 2) * f) * e) * d + ((((((-1) * h) * f) * e + (((((1) * m) * f + (((-1) *
    m + (-2)) * h)) * f + ((((-3) * m) * g + (((-2) * m + (-2)) * h)) * g)) * f)) * e +
    (((((((1) * m + (2)) * m) * f + (((3) * m) * g + ((-1) * h))) * f + (((-2) * h) * g)) * f +
    ((((1) * m + (-1)) * h) * g ^ 2)) * f)) * e + (((((((1) * m + (1)) * m) * f + ((((1) * m +
    (3)) * m) * g + ((((1) * m + (1)) * m) * h))) * f + ((((3) * m) * g + (((2) * m) * h)) * g))
    * f + ((((1) * m) * g + (((1) * m) * h)) * g ^ 2)) * f ^ 2))) * d + (((((((1) * f + ((2) * g
    + ((1) * h))) * f + (((1) * g + ((2) * h)) * g + ((1) * h ^ 2))) * e + (((((3) * m + (3)) *
    f + (((4) * m + (8)) * g + (((2) * m + (3)) * h))) * f + (((7) * g + ((8) * h)) * g + ((3) *
    h ^ 2))) * f + ((((2) * g + ((4) * h)) * g + ((2) * h ^ 2)) * g))) * e + (((((((1) * m +
    (7)) * m + (3)) * f + (((13) * m + (10)) * g + (((6) * m + (3)) * h))) * f + ((((5) * m +
    (12)) * g + (((8) * m + (10)) * h)) * g + (((3) * m + (3)) * h ^ 2))) * f + ((((6) * g +
    (((3) * m + (9)) * h)) * g + (((2) * m + (4)) * h ^ 2)) * g)) * f + ((((1) * g + ((2) * h))
    * g + ((1) * h ^ 2)) * g ^ 2))) * e + ((((((((2) * m + (5)) * m + (1)) * f + ((((2) * m +
    (12)) * m + (4)) * g + ((((1) * m + (5)) * m + (1)) * h))) * f + ((((8) * m + (6)) * g +
    (((9) * m + (4)) * h)) * g + (((2) * m + (1)) * h ^ 2))) * f + (((((1) * m + (4)) * g +
    (((4) * m + (5)) * h)) * g + (((2) * m + (2)) * h ^ 2)) * g)) * f + ((((1) * g + ((2) * h))
    * g + ((1) * h ^ 2)) * g ^ 2)) * f)) * e + (((((((1) * m + (1)) * m) * f + ((((2) * m + (3))
    * m) * g + ((((1) * m + (1)) * m) * h))) * f + (((((1) * m + (3)) * m) * g + ((((1) * m +
    (2)) * m) * h)) * g)) * f + ((((1) * m) * g + (((1) * m) * h)) * g ^ 2)) * f ^ 3))

theorem ratio_identity0 (d e f g h v : ℝ) (hf : f ≠ 0) :
    2*f^2*frequency0 d e f g h (1+(e+g)*v/f) =
      entry00 d e f g h*(1-v)^2+
      2*entry01 d e f g h*v*(1-v)+entry02 d e f g h*v^2 := by
  unfold frequency0 entry00 entry01 entry02
  field_simp
  ring

def frequency1 (d e f g h m : ℝ) : ℝ :=
  (((((((-1 / 2)) * m) * g ^ 2) * f) * e + (((((-1 / 2)) * m) * g ^ 2) * f ^ 2)) * d + (((((((-1
    / 2)) * h) * f) * e + ((((((-1 / 2)) * m) * g + ((((-1 / 2)) * m + ((-3 / 2))) * h)) * f +
    ((((-2) * m) * g + ((((-3 / 2)) * m + (-1)) * h)) * g)) * f)) * e + ((((((-1) * m) * g +
    (((-1) * m + ((-3 / 2))) * h)) * f + ((((-3) * m) * g + (((-2) * m + (-2)) * h)) * g)) * f +
    (((((1 / 2)) * m + ((-1 / 2))) * h) * g ^ 2)) * f)) * e + (((((((-1 / 2)) * m) * g + ((((-1
    / 2)) * m + ((-1 / 2))) * h)) * f + ((((-1) * m) * g + ((((-1 / 2)) * m + (-1)) * h)) * g))
    * f + (((((1 / 2)) * m + ((-1 / 2))) * h) * g ^ 2)) * f ^ 2))) * d + ((((((((1 / 2)) * f +
    (((3 / 2)) * g + ((1) * h))) * f + (((1) * g + ((2) * h)) * g + ((1) * h ^ 2))) * e +
    ((((((1 / 2)) * m + (2)) * f + ((((3 / 2)) * m + ((13 / 2))) * g + (((1) * m + ((7 / 2))) *
    h))) * f + ((((13 / 2)) * g + ((9) * h)) * g + (((7 / 2)) * h ^ 2))) * f + ((((2) * g + ((4)
    * h)) * g + ((2) * h ^ 2)) * g))) * e + (((((((3 / 2)) * m + (3)) * f + (((4) * m + ((21 /
    2))) * g + ((((5 / 2)) * m + ((9 / 2))) * h))) * f + ((((1) * m + (13)) * g + (((3) * m +
    (14)) * h)) * g + ((((3 / 2)) * m + ((9 / 2))) * h ^ 2))) * f + (((((13 / 2)) * g + (((2) *
    m + (11)) * h)) * g + ((((3 / 2)) * m + (5)) * h ^ 2)) * g)) * f + ((((1) * g + ((2) * h)) *
    g + ((1) * h ^ 2)) * g ^ 2))) * e + ((((((((3 / 2)) * m + (2)) * f + ((((7 / 2)) * m + ((15
    / 2))) * g + (((2) * m + ((5 / 2))) * h))) * f + ((((1) * m + ((21 / 2))) * g + (((4) * m +
    (9)) * h)) * g + (((2) * m + ((5 / 2))) * h ^ 2))) * f + ((((((-1 / 2)) * m + ((13 / 2))) *
    g + ((((5 / 2)) * m + ((19 / 2))) * h)) * g + (((2) * m + (4)) * h ^ 2)) * g)) * f + (((((3
    / 2)) * g + ((3) * h)) * g + (((3 / 2)) * h ^ 2)) * g ^ 2)) * f)) * e + ((((((((1 / 2)) * m
    + ((1 / 2))) * f + (((1) * m + (2)) * g + ((((1 / 2)) * m + ((1 / 2))) * h))) * f + (((3) *
    g + (((1) * m + (2)) * h)) * g + ((((1 / 2)) * m + ((1 / 2))) * h ^ 2))) * f + ((((((-1 /
    2)) * m + (2)) * g + ((((1 / 2)) * m + ((5 / 2))) * h)) * g + ((((1 / 2)) * m + (1)) * h ^
    2)) * g)) * f + (((((1 / 2)) * g + ((1) * h)) * g + (((1 / 2)) * h ^ 2)) * g ^ 2)) * f ^ 2))

theorem ratio_identity1 (d e f g h v : ℝ) (hf : f ≠ 0) :
    2*f^2*frequency1 d e f g h (1+(e+g)*v/f) =
      entry10 d e f g h*(1-v)^2+
      2*entry11 d e f g h*v*(1-v)+entry12 d e f g h*v^2 := by
  unfold frequency1 entry10 entry11 entry12
  field_simp
  ring

def frequency2 (d e f g h m : ℝ) : ℝ :=
  (((((((-1) * m) * g + (((-1) * m) * h)) * g) * f) * e + (((((-2) * m) * g + (((-2) * m) * h))
    * g) * f ^ 2)) * e + (((((-1) * m) * g + (((-1) * m) * h)) * g) * f ^ 3)) * d + (((((((1) *
    g + ((1) * h)) * f + (((1) * g + ((2) * h)) * g + ((1) * h ^ 2))) * e + (((((1) * m + (4)) *
    g + (((1) * m + (4)) * h)) * f + (((6) * g + ((10) * h)) * g + ((4) * h ^ 2))) * f + ((((2)
    * g + ((4) * h)) * g + ((2) * h ^ 2)) * g))) * e + ((((((3) * m + (6)) * g + (((3) * m +
    (6)) * h)) * f + ((((1) * m + (12)) * g + (((2) * m + (18)) * h)) * g + (((1) * m + (6)) * h
    ^ 2))) * f + ((((7) * g + (((1) * m + (13)) * h)) * g + (((1) * m + (6)) * h ^ 2)) * g)) * f
    + ((((1) * g + ((2) * h)) * g + ((1) * h ^ 2)) * g ^ 2))) * e + (((((((3) * m + (4)) * g +
    (((3) * m + (4)) * h)) * f + ((((2) * m + (10)) * g + (((4) * m + (14)) * h)) * g + (((2) *
    m + (4)) * h ^ 2))) * f + ((((8) * g + (((2) * m + (14)) * h)) * g + (((2) * m + (6)) * h ^
    2)) * g)) * f + ((((2) * g + ((4) * h)) * g + ((2) * h ^ 2)) * g ^ 2)) * f)) * e + (((((((1)
    * m + (1)) * g + (((1) * m + (1)) * h)) * f + ((((1) * m + (3)) * g + (((2) * m + (4)) * h))
    * g + (((1) * m + (1)) * h ^ 2))) * f + ((((3) * g + (((1) * m + (5)) * h)) * g + (((1) * m
    + (2)) * h ^ 2)) * g)) * f + ((((1) * g + ((2) * h)) * g + ((1) * h ^ 2)) * g ^ 2)) * f ^
    2))

theorem ratio_identity2 (d e f g h v : ℝ) (hf : f ≠ 0) :
    2*f^2*frequency2 d e f g h (1+(e+g)*v/f) =
      entry20 d e f g h*(1-v)^2+
      2*entry21 d e f g h*v*(1-v)+entry22 d e f g h*v^2 := by
  unfold frequency2 entry20 entry21 entry22
  field_simp
  ring

/-- Complete frequency Bernstein expansion of the actual quadratic source. -/
theorem frequency_identity (d e f g h m u : ℝ) :
    q1 d e f g h m ((0)+((f)-(0))*u) =
      frequency0 d e f g h m*(1-u)^2+
      2*frequency1 d e f g h m*u*(1-u)+frequency2 d e f g h m*u^2 := by
  unfold q1 q10 q11 q12 frequency0 frequency1 frequency2
  ring

/-- Positivity on the complete closed frequency and ratio rectangle. -/
theorem positive {d e f g h m u : ℝ}
    (hd : 0 < d) (he : 0 < e) (hf : 0 < f) (hg : 0 < g) (hh : 0 < h)
    (hS : 0 ≤ secondSlack d e f g h) (hK : 0 ≤ firstSlack d f h)
    (hm : 1 ≤ m) (hM : m ≤ (e+f+g)/f) (hu0 : 0 ≤ u) (hu1 : u ≤ 1) :
    0 < q1 d e f g h m ((0)+((f)-(0))*u) := by
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

end MiddleUpper
end
end SPR.N6.UpperInner
