import SPR.N6.Algebra.Tail.LowFirst.Zero0
import SPR.N6.Algebra.Tail.LowFirst.Zero1
import SPR.N6.Algebra.Tail.LowFirst.Zero2
import SPR.N6.Algebra.Tail.LowFirst.Zero3
import SPR.N6.Algebra.Tail.LowFirst.Zero4

/-!
# Complete zero frequency entry at ratio one

Every first-root coefficient proved in the small modules is included. Transfers
of the slack's linear first-root term cancel exactly before positivity is used.
-/
namespace SPR.N6.Tail.LowFirst.Zero
noncomputable section
set_option Elab.async false

/-- Complete first-root polynomial for this frequency entry. -/
def entry (a d e f g h : ℝ) : ℝ :=
  z0 d e f g h+z1 d e f g h*a+z2 d e f g h*a^2+z3 d e f g h*a^3+z4 d e f g h*a^4

/-- Complete nonnegative remainder, with all powers of the actual first root. -/
def remainder (a d e f g h : ℝ) : ℝ :=
  Zero0.remainder d e f g h+Zero1.remainder d e f g h*a+Zero2.remainder d e f g h*a^2+Zero3.remainder d e f g h*a^3+Zero4.remainder d e f g h*a^4

/-- Complete multiplier of the same actual second-width slack. -/
def multiplier (a d e f g h : ℝ) : ℝ :=
  Zero0.multiplier d e f g h+Zero1.multiplier d e f g h*a+Zero2.multiplier d e f g h*a^2+Zero3.multiplier d e f g h*a^3+Zero4.multiplier d e f g h*a^4

/-- The coefficient transfers recombine into one and the same full slack. -/
theorem identity (a d e f g h : ℝ) :
    entry a d e f g h = remainder a d e f g h+slack a d e f g h*multiplier a d e f g h := by
  unfold entry remainder multiplier
  rw [Zero0.identity, Zero1.identity, Zero2.identity, Zero3.identity, Zero4.identity]

  have hp0 : Zero0.previous d e f g h = 0 := rfl
  have hp1 : Zero1.previous d e f g h = Zero0.multiplier d e f g h := rfl
  have hp2 : Zero2.previous d e f g h = Zero1.multiplier d e f g h := rfl
  have hp3 : Zero3.previous d e f g h = Zero2.multiplier d e f g h := rfl
  have hp4 : Zero4.previous d e f g h = Zero3.multiplier d e f g h := rfl
  have hlast : Zero4.multiplier d e f g h = 0 := rfl
  rw [hp0, hp1, hp2, hp3, hp4,hlast]
  unfold slack
  ring

/-- The actual width slack, not an independently chosen parameter, implies this sign. -/
theorem nonnegative {a d e f g h : ℝ} (ha : 0 ≤ a) (hd : 0 ≤ d) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hh : 0 ≤ h) (hS : 0 ≤ slack a d e f g h) :
    0 ≤ entry a d e f g h := by

  obtain ⟨hr0,hs0⟩ := Zero0.signs hd he hf hg hh
  obtain ⟨hr1,hs1⟩ := Zero1.signs hd he hf hg hh
  obtain ⟨hr2,hs2⟩ := Zero2.signs hd he hf hg hh
  obtain ⟨hr3,hs3⟩ := Zero3.signs hd he hf hg hh
  obtain ⟨hr4,hs4⟩ := Zero4.signs hd he hf hg hh
  rw [identity]
  have hr : 0 ≤ remainder a d e f g h := by unfold remainder; positivity
  have hm : 0 ≤ multiplier a d e f g h := by unfold multiplier; positivity
  exact add_nonneg hr (mul_nonneg hS hm)

/-- The assembled entry is exactly the original quadratic core expression. -/
theorem source (a d e f g h : ℝ) :
    4*RootSource.core true a (a+d) (a+d+e) (a+d+e+f) (a+d+e+f+g) (a+d+e+f+g+h) 1 0 = entry a d e f g h := zero_source a d e f g h

end
end SPR.N6.Tail.LowFirst.Zero
