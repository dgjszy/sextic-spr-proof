import SPR.N6.Algebra.Tail.LowFirst.Source

/-!
# Zero frequency entry, first-root coefficient 4

This coefficient identity is one part of the complete first-root expansion in
`LowFirst.Source`. The negative term transfers the first-root dependence of the
same actual slack; it is recombined before any sign assertion about the entry.
Remainder and multiplier coefficients themselves are nonnegative.
-/
namespace SPR.N6.Tail.LowFirst.Zero4
noncomputable section
set_option Elab.async false
set_option maxRecDepth 16384
-- Static Horner expressions and their exact normalization are checked sequentially.
set_option maxHeartbeats 0
set_option trace.profiler true
set_option trace.profiler.threshold 3000

/-- Exact coefficient polynomial for the remainder term. -/
def remainder (d e f g h : ℝ) : ℝ :=
  (((((12) * g ^ 2) * d + ((((12) * f + ((12) * g + ((12) * h))) * e + (((36) * f + ((60) * g +
    ((48) * h))) * f + (((72) * g + ((48) * h)) * g))) * e + ((((24) * f + ((60) * g + ((48) *
    h))) * f + (((72) * g + ((48) * h)) * g)) * f + (((24) * g + ((12) * h)) * g ^ 2)))) * d +
    (((((36) * f + ((36) * g + ((36) * h))) * e + (((120) * f + ((192) * g + ((168) * h))) * f +
    (((144) * g + ((156) * h)) * g + ((12) * h ^ 2)))) * e + ((((132) * f + ((312) * g + ((252)
    * h))) * f + (((324) * g + ((300) * h)) * g)) * f + (((108) * g + ((96) * h)) * g ^ 2))) * e
    + (((((48) * f + ((156) * g + ((120) * h))) * f + (((204) * g + ((180) * h)) * g)) * f +
    (((120) * g + ((108) * h)) * g ^ 2)) * f + ((((24) * g + ((36) * h)) * g + ((12) * h ^ 2)) *
    g ^ 2)))) * d + ((((((36) * f + ((36) * g + ((36) * h))) * e + (((144) * f + ((228) * g +
    ((216) * h))) * f + (((132) * g + ((192) * h)) * g + ((36) * h ^ 2)))) * e + ((((228) * f +
    ((540) * g + ((492) * h))) * f + (((516) * g + ((696) * h)) * g + ((108) * h ^ 2))) * f +
    ((((168) * g + ((264) * h)) * g + ((96) * h ^ 2)) * g + ((12) * h ^ 3)))) * e + (((((168) *
    f + ((564) * g + ((504) * h))) * f + (((732) * g + ((984) * h)) * g + ((180) * h ^ 2))) * f
    + ((((420) * g + ((696) * h)) * g + ((300) * h ^ 2)) * g + ((48) * h ^ 3))) * f + (((((84) *
    g + ((192) * h)) * g + ((156) * h ^ 2)) * g + ((48) * h ^ 3)) * g))) * e + ((((((48) * f +
    ((216) * g + ((192) * h))) * f + (((360) * g + ((504) * h)) * g + ((120) * h ^ 2))) * f +
    ((((276) * g + ((492) * h)) * g + ((252) * h ^ 2)) * g + ((48) * h ^ 3))) * f + (((((96) * g
    + ((216) * h)) * g + ((168) * h ^ 2)) * g + ((48) * h ^ 3)) * g)) * f + (((((12) * g + ((36)
    * h)) * g + ((36) * h ^ 2)) * g + ((12) * h ^ 3)) * g ^ 2)))) * d + (((((((12) * f + ((12) *
    g + ((12) * h))) * e + (((60) * f + ((96) * g + ((96) * h))) * f + (((48) * g + ((84) * h))
    * g + ((24) * h ^ 2)))) * e + ((((108) * f + ((252) * g + ((276) * h))) * f + (((228) * g +
    ((420) * h)) * g + ((120) * h ^ 2))) * f + ((((72) * g + ((168) * h)) * g + ((108) * h ^ 2))
    * g + ((24) * h ^ 3)))) * e + (((((84) * f + ((288) * g + ((360) * h))) * f + (((384) * g +
    ((732) * h)) * g + ((204) * h ^ 2))) * f + ((((228) * g + ((516) * h)) * g + ((324) * h ^
    2)) * g + ((72) * h ^ 3))) * f + (((((48) * g + ((132) * h)) * g + ((144) * h ^ 2)) * g +
    ((72) * h ^ 3)) * g + ((12) * h ^ 4)))) * e + ((((((24) * f + ((144) * g + ((216) * h))) * f
    + (((288) * g + ((564) * h)) * g + ((156) * h ^ 2))) * f + ((((252) * g + ((540) * h)) * g +
    ((312) * h ^ 2)) * g + ((60) * h ^ 3))) * f + (((((96) * g + ((228) * h)) * g + ((192) * h ^
    2)) * g + ((60) * h ^ 3)) * g)) * f + (((((12) * g + ((36) * h)) * g + ((36) * h ^ 2)) * g +
    ((12) * h ^ 3)) * g ^ 2))) * e + (((((((24) * g + ((48) * h)) * f + (((84) * g + ((168) *
    h)) * g + ((48) * h ^ 2))) * f + ((((108) * g + ((228) * h)) * g + ((132) * h ^ 2)) * g +
    ((24) * h ^ 3))) * f + (((((60) * g + ((144) * h)) * g + ((120) * h ^ 2)) * g + ((36) * h ^
    3)) * g)) * f + (((((12) * g + ((36) * h)) * g + ((36) * h ^ 2)) * g + ((12) * h ^ 3)) * g ^
    2)) * f))

/-- Exact coefficient polynomial for the multiplier term. -/
def multiplier (d e f g h : ℝ) : ℝ :=
  0

/-- Exact coefficient polynomial for the previous term. -/
def previous (d e f g h : ℝ) : ℝ :=
  0

/-- Complete coefficient identity, including the transferred lower multiplier. -/
theorem identity (d e f g h : ℝ) :
    z4 d e f g h = remainder d e f g h+
      slack0 d e f g h*multiplier d e f g h-2*kappa d f h*previous d e f g h := by
  unfold z4 remainder multiplier previous slack0 kappa
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
end SPR.N6.Tail.LowFirst.Zero4
