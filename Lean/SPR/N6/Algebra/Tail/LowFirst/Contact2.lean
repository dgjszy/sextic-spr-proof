import SPR.N6.Algebra.Tail.LowFirst.Source

/-!
# Contact frequency entry, first-root coefficient 2

This coefficient identity is one part of the complete first-root expansion in
`LowFirst.Source`. The negative term transfers the first-root dependence of the
same actual slack; it is recombined before any sign assertion about the entry.
Remainder and multiplier coefficients themselves are nonnegative.
-/
namespace SPR.N6.Tail.LowFirst.Contact2
noncomputable section
set_option Elab.async false
set_option maxRecDepth 16384
-- Static Horner expressions and their exact normalization are checked sequentially.
set_option maxHeartbeats 0
set_option trace.profiler true
set_option trace.profiler.threshold 3000

/-- Exact coefficient polynomial for the remainder term. -/
def remainder (d e f g h : ℝ) : ℝ :=
  ((((((((12) * f + ((36) * g + ((12) * h))) * f + (((36) * g + ((24) * h)) * g)) * f + (((12) *
    g + ((12) * h)) * g ^ 2)) * e + (((((36) * f + ((132) * g + ((36) * h))) * f + (((180) * g +
    ((120) * h)) * g)) * f + (((108) * g + ((84) * h)) * g ^ 2)) * f + (((24) * g + ((24) * h))
    * g ^ 3))) * e + ((((((24) * f + ((96) * g + ((24) * h))) * f + (((156) * g + ((72) * h)) *
    g)) * f + (((132) * g + ((84) * h)) * g ^ 2)) * f + (((60) * g + ((48) * h)) * g ^ 3)) * f +
    (((12) * g + ((12) * h)) * g ^ 4))) * d + (((((((36) * f + ((108) * g + ((36) * h))) * f +
    (((108) * g + ((72) * h)) * g)) * f + (((36) * g + ((36) * h)) * g ^ 2)) * e + (((((132) * f
    + ((480) * g + ((132) * h))) * f + (((648) * g + ((348) * h)) * g)) * f + (((384) * g +
    ((300) * h)) * g ^ 2)) * f + (((84) * g + ((84) * h)) * g ^ 3))) * e + ((((((168) * f +
    ((684) * g + ((156) * h))) * f + (((1104) * g + ((456) * h)) * g)) * f + (((888) * g +
    ((552) * h)) * g ^ 2)) * f + (((360) * g + ((288) * h)) * g ^ 3)) * f + (((60) * g + ((60) *
    h)) * g ^ 4))) * e + (((((((72) * f + ((324) * g + ((72) * h))) * f + (((600) * g + ((252) *
    h)) * g)) * f + (((588) * g + ((348) * h)) * g ^ 2)) * f + (((324) * g + ((240) * h)) * g ^
    3)) * f + (((96) * g + ((84) * h)) * g ^ 4)) * f + (((12) * g + ((12) * h)) * g ^ 5)))) * d
    + ((((((((36) * f + ((108) * g + ((36) * h))) * f + (((108) * g + ((72) * h)) * g)) * f +
    (((36) * g + ((36) * h)) * g ^ 2)) * e + (((((168) * f + ((612) * g + ((180) * h))) * f +
    (((828) * g + ((480) * h)) * g + ((12) * h ^ 2))) * f + ((((492) * g + ((420) * h)) * g +
    ((24) * h ^ 2)) * g)) * f + ((((108) * g + ((120) * h)) * g + ((12) * h ^ 2)) * g ^ 2))) * e
    + ((((((324) * f + ((1356) * g + ((360) * h))) * f + (((2244) * g + ((1188) * h)) * g +
    ((48) * h ^ 2))) * f + ((((1836) * g + ((1464) * h)) * g + ((156) * h ^ 2)) * g + ((12) * h
    ^ 3))) * f + (((((744) * g + ((804) * h)) * g + ((168) * h ^ 2)) * g + ((24) * h ^ 3)) * g))
    * f + (((((120) * g + ((168) * h)) * g + ((60) * h ^ 2)) * g + ((12) * h ^ 3)) * g ^ 2))) *
    e + (((((((288) * f + ((1356) * g + ((360) * h))) * f + (((2628) * g + ((1416) * h)) * g +
    ((96) * h ^ 2))) * f + ((((2688) * g + ((2232) * h)) * g + ((408) * h ^ 2)) * g + ((60) * h
    ^ 3))) * f + (((((1536) * g + ((1776) * h)) * g + ((564) * h ^ 2)) * g + ((120) * h ^ 3)) *
    g)) * f + (((((468) * g + ((720) * h)) * g + ((360) * h ^ 2)) * g + ((108) * h ^ 3)) * g ^
    2)) * f + (((((60) * g + ((120) * h)) * g + ((84) * h ^ 2)) * g + ((24) * h ^ 3)) * g ^ 3)))
    * e + ((((((((96) * f + ((504) * g + ((144) * h))) * f + (((1116) * g + ((648) * h)) * g +
    ((72) * h ^ 2))) * f + ((((1356) * g + ((1212) * h)) * g + ((288) * h ^ 2)) * g + ((24) * h
    ^ 3))) * f + (((((984) * g + ((1224) * h)) * g + ((468) * h ^ 2)) * g + ((72) * h ^ 3)) *
    g)) * f + (((((432) * g + ((720) * h)) * g + ((396) * h ^ 2)) * g + ((84) * h ^ 3)) * g ^
    2)) * f + (((((108) * g + ((240) * h)) * g + ((180) * h ^ 2)) * g + ((48) * h ^ 3)) * g ^
    3)) * f + (((((12) * g + ((36) * h)) * g + ((36) * h ^ 2)) * g + ((12) * h ^ 3)) * g ^ 4))))
    * d + (((((((((12) * f + ((36) * g + ((12) * h))) * f + (((36) * g + ((24) * h)) * g)) * f +
    (((12) * g + ((12) * h)) * g ^ 2)) * e + (((((72) * f + ((264) * g + ((84) * h))) * f +
    (((360) * g + ((228) * h)) * g + ((12) * h ^ 2))) * f + ((((216) * g + ((204) * h)) * g +
    ((24) * h ^ 2)) * g)) * f + ((((48) * g + ((60) * h)) * g + ((12) * h ^ 2)) * g ^ 2))) * e +
    ((((((180) * f + ((768) * g + ((228) * h))) * f + (((1296) * g + ((780) * h)) * g + ((60) *
    h ^ 2))) * f + ((((1080) * g + ((996) * h)) * g + ((180) * h ^ 2)) * g + ((12) * h ^ 3))) *
    f + (((((444) * g + ((564) * h)) * g + ((180) * h ^ 2)) * g + ((24) * h ^ 3)) * g)) * f +
    (((((72) * g + ((120) * h)) * g + ((60) * h ^ 2)) * g + ((12) * h ^ 3)) * g ^ 2))) * e +
    (((((((240) * f + ((1152) * g + ((324) * h))) * f + (((2268) * g + ((1308) * h)) * g +
    ((108) * h ^ 2))) * f + ((((2340) * g + ((2100) * h)) * g + ((408) * h ^ 2)) * g + ((24) * h
    ^ 3))) * f + (((((1332) * g + ((1680) * h)) * g + ((576) * h ^ 2)) * g + ((72) * h ^ 3)) *
    g)) * f + (((((396) * g + ((672) * h)) * g + ((360) * h ^ 2)) * g + ((72) * h ^ 3)) * g ^
    2)) * f + (((((48) * g + ((108) * h)) * g + ((84) * h ^ 2)) * g + ((24) * h ^ 3)) * g ^ 3)))
    * e + ((((((((168) * f + ((900) * g + ((264) * h))) * f + (((2016) * g + ((1212) * h)) * g +
    ((120) * h ^ 2))) * f + ((((2436) * g + ((2268) * h)) * g + ((480) * h ^ 2)) * g)) * f +
    (((((1704) * g + ((2208) * h)) * g + ((756) * h ^ 2)) * g + ((12) * h ^ 3)) * g)) * f +
    (((((684) * g + ((1176) * h)) * g + ((588) * h ^ 2)) * g + ((36) * h ^ 3)) * g ^ 2)) * f +
    (((((144) * g + ((324) * h)) * g + ((228) * h ^ 2)) * g + ((36) * h ^ 3)) * g ^ 3)) * f +
    (((((12) * g + ((36) * h)) * g + ((36) * h ^ 2)) * g + ((12) * h ^ 3)) * g ^ 4))) * e +
    (((((((((48) * f + ((288) * g + ((96) * h))) * f + (((732) * g + ((504) * h)) * g + ((72) *
    h ^ 2))) * f + ((((1020) * g + ((1092) * h)) * g + ((324) * h ^ 2)) * g + ((24) * h ^ 3))) *
    f + (((((840) * g + ((1248) * h)) * g + ((576) * h ^ 2)) * g + ((84) * h ^ 3)) * g)) * f +
    (((((408) * g + ((792) * h)) * g + ((504) * h ^ 2)) * g + ((108) * h ^ 3)) * g ^ 2)) * f +
    (((((108) * g + ((264) * h)) * g + ((216) * h ^ 2)) * g + ((60) * h ^ 3)) * g ^ 3)) * f +
    (((((12) * g + ((36) * h)) * g + ((36) * h ^ 2)) * g + ((12) * h ^ 3)) * g ^ 4)) * f))

/-- Exact coefficient polynomial for the multiplier term. -/
def multiplier (d e f g h : ℝ) : ℝ :=
  0

/-- Exact coefficient polynomial for the previous term. -/
def previous (d e f g h : ℝ) : ℝ :=
  ((((((12) * h) * g) * f ^ 2) * e) * d + (((((6) * h ^ 2) * f ^ 2 + (((6) * h ^ 2) * g ^ 2)) *
    f) * e)) * d + ((((((6) * h ^ 3) * f + (((12) * h ^ 3) * g)) * f + (((6) * h ^ 3) * g ^ 2))
    * f) * e)

/-- Complete coefficient identity, including the transferred lower multiplier. -/
theorem identity (d e f g h : ℝ) :
    c2 d e f g h = remainder d e f g h+
      slack0 d e f g h*multiplier d e f g h-2*kappa d f h*previous d e f g h := by
  unfold c2 remainder multiplier previous slack0 kappa
  simp only [R, W, H0, H1, H2, D1, D2, Z0, Z1, Z2, M0, M1, LowerZero.q10, LowerZero.q11, LowerZero.q12]
  ring

/-- Only positive-coefficient polynomials are used as remainder and slack multiplier. -/
theorem signs {d e f g h : ℝ} (hd : 0 ≤ d) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hh : 0 ≤ h) :
    0 ≤ remainder d e f g h ∧ 0 ≤ multiplier d e f g h := by
  constructor
  · unfold remainder; positivity
  · unfold multiplier; positivity

end
end SPR.N6.Tail.LowFirst.Contact2
