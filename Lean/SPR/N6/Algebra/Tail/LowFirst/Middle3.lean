import SPR.N6.Algebra.Tail.LowFirst.Source

/-!
# Middle frequency entry, first-root coefficient 3

This coefficient identity is one part of the complete first-root expansion in
`LowFirst.Source`. The negative term transfers the first-root dependence of the
same actual slack; it is recombined before any sign assertion about the entry.
Remainder and multiplier coefficients themselves are nonnegative.
-/
namespace SPR.N6.Tail.LowFirst.Middle3
noncomputable section
set_option Elab.async false
set_option maxRecDepth 16384
-- Static Horner expressions and their exact normalization are checked sequentially.
set_option maxHeartbeats 0
set_option trace.profiler true
set_option trace.profiler.threshold 3000

/-- Exact coefficient polynomial for the remainder term. -/
def remainder (d e f g h : ℝ) : ℝ :=
  ((((((6) * g ^ 2) * f + ((6) * g ^ 3)) * d + (((((12) * f + ((24) * g + ((12) * h))) * f +
    (((12) * g + ((12) * h)) * g)) * e + ((((36) * f + ((96) * g + ((68) * h))) * f + (((108) *
    g + ((72) * h)) * g)) * f + (((48) * g + ((36) * h)) * g ^ 2))) * e + (((((24) * f + ((78) *
    g + ((48) * h))) * f + (((108) * g + ((84) * h)) * g)) * f + (((72) * g + ((36) * h)) * g ^
    2)) * f + (((18) * g + ((6) * h)) * g ^ 3)))) * d + ((((((36) * f + ((72) * g + ((36) * h)))
    * f + (((36) * g + ((36) * h)) * g)) * e + ((((126) * f + ((330) * g + ((144) * h))) * f +
    (((318) * g + ((240) * h)) * g)) * f + (((114) * g + ((96) * h)) * g ^ 2))) * e + (((((150)
    * f + ((480) * g + ((160) * h))) * f + (((612) * g + ((366) * h)) * g + ((8) * h ^ 2))) * f
    + (((366) * g + ((222) * h)) * g ^ 2)) * f + (((84) * g + ((48) * h)) * g ^ 3))) * e +
    ((((((60) * f + ((228) * g + ((72) * h))) * f + (((354) * g + ((174) * h)) * g)) * f +
    (((282) * g + ((162) * h)) * g ^ 2)) * f + (((114) * g + ((72) * h)) * g ^ 3)) * f + ((((18)
    * g + ((18) * h)) * g + ((6) * h ^ 2)) * g ^ 3)))) * d + (((((((36) * f + ((72) * g + ((36)
    * h))) * f + (((36) * g + ((36) * h)) * g)) * e + ((((156) * f + ((408) * g + ((186) * h)))
    * f + (((372) * g + ((312) * h)) * g + ((12) * h ^ 2))) * f + ((((120) * g + ((126) * h)) *
    g + ((12) * h ^ 2)) * g))) * e + (((((276) * f + ((900) * g + ((378) * h))) * f + (((1134) *
    g + ((846) * h)) * g + ((42) * h ^ 2))) * f + ((((654) * g + ((630) * h)) * g + ((96) * h ^
    2)) * g + ((12) * h ^ 3))) * f + (((((144) * g + ((162) * h)) * g + ((54) * h ^ 2)) * g +
    ((12) * h ^ 3)) * g))) * e + ((((((228) * f + ((900) * g + ((378) * h))) * f + (((1428) * g
    + ((1056) * h)) * g + ((132) * h ^ 2))) * f + ((((1140) * g + ((1146) * h)) * g + ((342) * h
    ^ 2)) * g + ((60) * h ^ 3))) * f + (((((456) * g + ((588) * h)) * g + ((342) * h ^ 2)) * g +
    ((120) * h ^ 3)) * g)) * f + (((((72) * g + ((126) * h)) * g + ((108) * h ^ 2)) * g + ((36)
    * h ^ 3)) * g ^ 2))) * e + (((((((72) * f + ((336) * g + ((156) * h))) * f + (((642) * g +
    ((510) * h)) * g + ((96) * h ^ 2))) * f + ((((642) * g + ((702) * h)) * g + ((288) * h ^ 2))
    * g + ((48) * h ^ 3))) * f + (((((354) * g + ((498) * h)) * g + ((312) * h ^ 2)) * g + ((84)
    * h ^ 3)) * g)) * f + (((((102) * g + ((186) * h)) * g + ((144) * h ^ 2)) * g + ((42) * h ^
    3)) * g ^ 2)) * f + (((((12) * g + ((30) * h)) * g + ((24) * h ^ 2)) * g + ((6) * h ^ 3)) *
    g ^ 3)))) * d + ((((((((12) * f + ((24) * g + ((12) * h))) * f + (((12) * g + ((12) * h)) *
    g)) * e + ((((66) * f + ((174) * g + ((84) * h))) * f + (((156) * g + ((144) * h)) * g +
    ((12) * h ^ 2))) * f + ((((48) * g + ((60) * h)) * g + ((12) * h ^ 2)) * g))) * e +
    (((((144) * f + ((474) * g + ((216) * h))) * f + (((594) * g + ((510) * h)) * g + ((54) * h
    ^ 2))) * f + ((((336) * g + ((402) * h)) * g + ((108) * h ^ 2)) * g + ((12) * h ^ 3))) * f +
    (((((72) * g + ((108) * h)) * g + ((54) * h ^ 2)) * g + ((12) * h ^ 3)) * g))) * e +
    ((((((162) * f + ((642) * g + ((264) * h))) * f + (((1014) * g + ((768) * h)) * g + ((66) *
    h ^ 2))) * f + ((((798) * g + ((840) * h)) * g + ((192) * h ^ 2)) * g + ((18) * h ^ 3))) * f
    + (((((312) * g + ((420) * h)) * g + ((186) * h ^ 2)) * g + ((36) * h ^ 3)) * g)) * f +
    (((((48) * g + ((84) * h)) * g + ((60) * h ^ 2)) * g + ((18) * h ^ 3)) * g ^ 2))) * e +
    (((((((96) * f + ((450) * g + ((162) * h))) * f + (((858) * g + ((582) * h)) * g)) * f +
    ((((846) * g + ((786) * h)) * g + ((18) * h ^ 2)) * g)) * f + ((((450) * g + ((522) * h)) *
    g + ((48) * h ^ 2)) * g ^ 2)) * f + ((((120) * g + ((174) * h)) * g + ((30) * h ^ 2)) * g ^
    3)) * f + ((((12) * g + ((24) * h)) * g + ((6) * h ^ 2)) * g ^ 4))) * e + ((((((((24) * f +
    ((132) * g + ((36) * h))) * f + (((300) * g + ((198) * h)) * g)) * f + (((360) * g + ((348)
    * h)) * g ^ 2)) * f + ((((240) * g + ((300) * h)) * g + ((24) * h ^ 2)) * g ^ 2)) * f +
    ((((84) * g + ((132) * h)) * g + ((24) * h ^ 2)) * g ^ 3)) * f + ((((12) * g + ((24) * h)) *
    g + ((6) * h ^ 2)) * g ^ 4)) * f))

/-- Exact coefficient polynomial for the multiplier term. -/
def multiplier (d e f g h : ℝ) : ℝ :=
  0

/-- Exact coefficient polynomial for the previous term. -/
def previous (d e f g h : ℝ) : ℝ :=
  (((((13) * h) * f ^ 2 + (((3) * h) * g ^ 2)) * e + ((((6) * h) * f + (((9) * h) * g)) * f ^
    2)) * d + (((((12) * h ^ 2) * g) * f) * e)) * d + (((((((3) * h) * f + ((18) * h ^ 2)) * f +
    (((39) * h ^ 2) * g + ((9) * h ^ 3))) * f + ((((27) * h ^ 2) * g + ((12) * h ^ 3)) * g)) * f
    + ((((6) * h ^ 2) * g + ((3) * h ^ 3)) * g ^ 2)) * e + (((((((6) * h) * f + (((3) * h) * g +
    ((12) * h ^ 2))) * f + (((27) * h ^ 2) * g + ((6) * h ^ 3))) * f + ((((21) * h ^ 2) * g +
    ((9) * h ^ 3)) * g)) * f + ((((6) * h ^ 2) * g + ((3) * h ^ 3)) * g ^ 2)) * f))

/-- Complete coefficient identity, including the transferred lower multiplier. -/
theorem identity (d e f g h : ℝ) :
    m3 d e f g h = remainder d e f g h+
      slack0 d e f g h*multiplier d e f g h-2*kappa d f h*previous d e f g h := by
  unfold m3 remainder multiplier previous slack0 kappa
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
end SPR.N6.Tail.LowFirst.Middle3
