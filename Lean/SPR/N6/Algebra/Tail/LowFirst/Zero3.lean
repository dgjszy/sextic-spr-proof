import SPR.N6.Algebra.Tail.LowFirst.Source

/-!
# Zero frequency entry, first-root coefficient 3

This coefficient identity is one part of the complete first-root expansion in
`LowFirst.Source`. The negative term transfers the first-root dependence of the
same actual slack; it is recombined before any sign assertion about the entry.
Remainder and multiplier coefficients themselves are nonnegative.
-/
namespace SPR.N6.Tail.LowFirst.Zero3
noncomputable section
set_option Elab.async false
set_option maxRecDepth 16384
-- Static Horner expressions and their exact normalization are checked sequentially.
set_option maxHeartbeats 0
set_option trace.profiler true
set_option trace.profiler.threshold 3000

/-- Exact coefficient polynomial for the remainder term. -/
def remainder (d e f g h : ℝ) : ℝ :=
  ((((((48) * g ^ 2) * d + ((((48) * f + ((48) * g + ((48) * h))) * e + (((144) * f + ((240) * g
    + ((192) * h))) * f + (((332) * g + ((192) * h)) * g))) * e + ((((96) * f + ((240) * g +
    ((192) * h))) * f + (((316) * g + ((192) * h)) * g)) * f + (((120) * g + ((56) * h)) * g ^
    2)))) * d + (((((188) * f + ((188) * g + ((188) * h))) * e + (((652) * f + ((1064) * g +
    ((896) * h))) * f + (((876) * g + ((844) * h)) * g + ((56) * h ^ 2)))) * e + ((((736) * f +
    ((1776) * g + ((1356) * h))) * f + (((1924) * g + ((1672) * h)) * g + ((32) * h ^ 2))) * f +
    ((((680) * g + ((576) * h)) * g + ((32) * h ^ 2)) * g))) * e + (((((272) * f + ((884) * g +
    ((632) * h))) * f + (((1180) * g + ((1004) * h)) * g + ((32) * h ^ 2))) * f + ((((712) * g +
    ((600) * h)) * g + ((32) * h ^ 2)) * g)) * f + ((((148) * g + ((168) * h)) * g + ((48) * h ^
    2)) * g ^ 2)))) * d + ((((((276) * f + ((276) * g + ((276) * h))) * e + (((1128) * f +
    ((1828) * g + ((1608) * h))) * f + (((1156) * g + ((1456) * h)) * g + ((204) * h ^ 2)))) * e
    + ((((1776) * f + ((4252) * g + ((3404) * h))) * f + (((4168) * g + ((4716) * h)) * g +
    ((504) * h ^ 2))) * f + ((((1392) * g + ((1756) * h)) * g + ((444) * h ^ 2)) * g + ((48) * h
    ^ 3)))) * e + (((((1284) * f + ((4192) * g + ((3124) * h))) * f + (((5420) * g + ((5860) *
    h)) * g + ((732) * h ^ 2))) * f + ((((3144) * g + ((3936) * h)) * g + ((1152) * h ^ 2)) * g
    + ((160) * h ^ 3))) * f + (((((644) * g + ((1020) * h)) * g + ((600) * h ^ 2)) * g + ((160)
    * h ^ 3)) * g))) * e + ((((((360) * f + ((1504) * g + ((1064) * h))) * f + (((2440) * g +
    ((2656) * h)) * g + ((456) * h ^ 2))) * f + ((((1896) * g + ((2480) * h)) * g + ((924) * h ^
    2)) * g + ((160) * h ^ 3))) * f + (((((692) * g + ((1068) * h)) * g + ((624) * h ^ 2)) * g +
    ((160) * h ^ 3)) * g)) * f + (((((92) * g + ((184) * h)) * g + ((144) * h ^ 2)) * g + ((40)
    * h ^ 3)) * g ^ 2)))) * d + (((((((180) * f + ((180) * g + ((180) * h))) * e + (((872) * f +
    ((1416) * g + ((1288) * h))) * f + (((768) * g + ((1140) * h)) * g + ((236) * h ^ 2)))) * e
    + ((((1708) * f + ((4076) * g + ((3488) * h))) * f + (((3768) * g + ((5144) * h)) * g +
    ((948) * h ^ 2))) * f + ((((1204) * g + ((1988) * h)) * g + ((828) * h ^ 2)) * g + ((132) *
    h ^ 3)))) * e + (((((1712) * f + ((5616) * g + ((4500) * h))) * f + (((7196) * g + ((9080) *
    h)) * g + ((1648) * h ^ 2))) * f + ((((4132) * g + ((6372) * h)) * g + ((2616) * h ^ 2)) * g
    + ((432) * h ^ 3))) * f + (((((852) * g + ((1612) * h)) * g + ((1184) * h ^ 2)) * g + ((420)
    * h ^ 3)) * g + ((40) * h ^ 4)))) * e + ((((((888) * f + ((3784) * g + ((2792) * h))) * f +
    (((6284) * g + ((7368) * h)) * g + ((1400) * h ^ 2))) * f + ((((5024) * g + ((7288) * h)) *
    g + ((2960) * h ^ 2)) * g + ((496) * h ^ 3))) * f + (((((1900) * g + ((3280) * h)) * g +
    ((2120) * h ^ 2)) * g + ((584) * h ^ 3)) * g)) * f + (((((264) * g + ((576) * h)) * g +
    ((508) * h ^ 2)) * g + ((164) * h ^ 3)) * g ^ 2))) * e + (((((((192) * f + ((1008) * g +
    ((672) * h))) * f + (((2084) * g + ((2272) * h)) * g + ((480) * h ^ 2))) * f + ((((2156) * g
    + ((3012) * h)) * g + ((1320) * h ^ 2)) * g + ((208) * h ^ 3))) * f + (((((1160) * g +
    ((1960) * h)) * g + ((1280) * h ^ 2)) * g + ((336) * h ^ 3)) * g)) * f + (((((300) * g +
    ((620) * h)) * g + ((500) * h ^ 2)) * g + ((148) * h ^ 3)) * g ^ 2)) * f + (((((28) * g +
    ((72) * h)) * g + ((60) * h ^ 2)) * g + ((16) * h ^ 3)) * g ^ 3)))) * d + ((((((((44) * f +
    ((44) * g + ((44) * h))) * e + (((252) * f + ((412) * g + ((384) * h))) * f + (((204) * g +
    ((336) * h)) * g + ((88) * h ^ 2)))) * e + ((((576) * f + ((1372) * g + ((1252) * h))) * f +
    (((1220) * g + ((1916) * h)) * g + ((472) * h ^ 2))) * f + ((((376) * g + ((756) * h)) * g +
    ((412) * h ^ 2)) * g + ((80) * h ^ 3)))) * e + (((((692) * f + ((2272) * g + ((1984) * h)))
    * f + (((2896) * g + ((4156) * h)) * g + ((936) * h ^ 2))) * f + ((((1656) * g + ((2972) *
    h)) * g + ((1476) * h ^ 2)) * g + ((272) * h ^ 3))) * f + (((((344) * g + ((740) * h)) * g +
    ((624) * h ^ 2)) * g + ((256) * h ^ 3)) * g + ((36) * h ^ 4)))) * e + ((((((492) * f +
    ((2120) * g + ((1648) * h))) * f + (((3564) * g + ((4420) * h)) * g + ((872) * h ^ 2))) * f
    + ((((2888) * g + ((4408) * h)) * g + ((1828) * h ^ 2)) * g + ((272) * h ^ 3))) * f +
    (((((1108) * g + ((1968) * h)) * g + ((1256) * h ^ 2)) * g + ((332) * h ^ 3)) * g + ((8) * h
    ^ 4))) * f + ((((((156) * g + ((336) * h)) * g + ((284) * h ^ 2)) * g + ((96) * h ^ 3)) * g
    + ((4) * h ^ 4)) * g))) * e + (((((((216) * f + ((1140) * g + ((720) * h))) * f + (((2368) *
    g + ((2420) * h)) * g + ((380) * h ^ 2))) * f + ((((2456) * g + ((3156) * h)) * g + ((992) *
    h ^ 2)) * g + ((40) * h ^ 3))) * f + (((((1316) * g + ((1984) * h)) * g + ((840) * h ^ 2)) *
    g + ((12) * h ^ 3)) * g)) * f + ((((332) * g + ((588) * h)) * g + ((276) * h ^ 2)) * g ^ 3))
    * f + ((((28) * g + ((60) * h)) * g + ((24) * h ^ 2)) * g ^ 4))) * e + ((((((((48) * f +
    ((288) * g + ((144) * h))) * f + (((696) * g + ((600) * h)) * g + ((40) * h ^ 2))) * f +
    ((((868) * g + ((1000) * h)) * g + ((164) * h ^ 2)) * g)) * f + ((((588) * g + ((836) * h))
    * g + ((224) * h ^ 2)) * g ^ 2)) * f + ((((204) * g + ((352) * h)) * g + ((124) * h ^ 2)) *
    g ^ 3)) * f + ((((28) * g + ((60) * h)) * g + ((24) * h ^ 2)) * g ^ 4)) * f))

/-- Exact coefficient polynomial for the multiplier term. -/
def multiplier (d e f g h : ℝ) : ℝ :=
  0

/-- Exact coefficient polynomial for the previous term. -/
def previous (d e f g h : ℝ) : ℝ :=
  ((((18) * h ^ 3) * f + ((((22) * h ^ 2) * g + ((24) * h ^ 3)) * g)) * f + ((((10) * h ^ 2) * g
    + ((6) * h ^ 3)) * g ^ 2)) * e + ((((((16) * h ^ 2) * f + (((38) * h ^ 2) * g + ((12) * h ^
    3))) * f + ((((32) * h ^ 2) * g + ((18) * h ^ 3)) * g)) * f + ((((10) * h ^ 2) * g + ((6) *
    h ^ 3)) * g ^ 2)) * f)

/-- Complete coefficient identity, including the transferred lower multiplier. -/
theorem identity (d e f g h : ℝ) :
    z3 d e f g h = remainder d e f g h+
      slack0 d e f g h*multiplier d e f g h-2*kappa d f h*previous d e f g h := by
  unfold z3 remainder multiplier previous slack0 kappa
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
end SPR.N6.Tail.LowFirst.Zero3
