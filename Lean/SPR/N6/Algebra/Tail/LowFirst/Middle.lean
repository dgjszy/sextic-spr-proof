import SPR.N6.Algebra.Tail.LowFirst.Middle0
import SPR.N6.Algebra.Tail.LowFirst.Middle1
import SPR.N6.Algebra.Tail.LowFirst.Middle2
import SPR.N6.Algebra.Tail.LowFirst.Middle3

/-!
# Complete middle frequency entry at ratio one

Every first-root coefficient proved in the small modules is included. Transfers
of the slack's linear first-root term cancel exactly before positivity is used.
-/
namespace SPR.N6.Tail.LowFirst.Middle
noncomputable section
set_option Elab.async false

/-- Complete first-root polynomial for this frequency entry. -/
def entry (a d e f g h : ℝ) : ℝ :=
  m0 d e f g h+m1 d e f g h*a+m2 d e f g h*a^2+m3 d e f g h*a^3

/-- Complete nonnegative remainder, with all powers of the actual first root. -/
def remainder (a d e f g h : ℝ) : ℝ :=
  Middle0.remainder d e f g h+Middle1.remainder d e f g h*a+Middle2.remainder d e f g h*a^2+Middle3.remainder d e f g h*a^3

/-- Complete multiplier of the same actual second-width slack. -/
def multiplier (a d e f g h : ℝ) : ℝ :=
  Middle0.multiplier d e f g h+Middle1.multiplier d e f g h*a+Middle2.multiplier d e f g h*a^2+Middle3.multiplier d e f g h*a^3

/-- The coefficient transfers recombine into one and the same full slack. -/
theorem identity (a d e f g h : ℝ) :
    entry a d e f g h = remainder a d e f g h+slack a d e f g h*multiplier a d e f g h := by
  unfold entry remainder multiplier
  rw [Middle0.identity, Middle1.identity, Middle2.identity, Middle3.identity]

  have hp0 : Middle0.previous d e f g h = 0 := rfl
  have hp1 : Middle1.previous d e f g h = Middle0.multiplier d e f g h := rfl
  have hp2 : Middle2.previous d e f g h = Middle1.multiplier d e f g h := rfl
  have hp3 : Middle3.previous d e f g h = Middle2.multiplier d e f g h := rfl
  have hlast : Middle3.multiplier d e f g h = 0 := rfl
  rw [hp0, hp1, hp2, hp3,hlast]
  unfold slack
  ring

/-- The actual width slack, not an independently chosen parameter, implies this sign. -/
theorem nonnegative {a d e f g h : ℝ} (ha : 0 ≤ a) (hd : 0 ≤ d) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hh : 0 ≤ h) (hS : 0 ≤ slack a d e f g h) :
    0 ≤ entry a d e f g h := by

  obtain ⟨hr0,hs0⟩ := Middle0.signs hd he hf hg hh
  obtain ⟨hr1,hs1⟩ := Middle1.signs hd he hf hg hh
  obtain ⟨hr2,hs2⟩ := Middle2.signs hd he hf hg hh
  obtain ⟨hr3,hs3⟩ := Middle3.signs hd he hf hg hh
  rw [identity]
  have hr : 0 ≤ remainder a d e f g h := by unfold remainder; positivity
  have hm : 0 ≤ multiplier a d e f g h := by unfold multiplier; positivity
  exact add_nonneg hr (mul_nonneg hS hm)

/-- The assembled entry is exactly the original quadratic core expression. -/
theorem source (a d e f g h : ℝ) :
    4*RootSource.core true a (a+d) (a+d+e) (a+d+e+f) (a+d+e+f+g) (a+d+e+f+g+h) 1 0+
      (a+d+e)*(RootSource.core true a (a+d) (a+d+e) (a+d+e+f) (a+d+e+f+g) (a+d+e+f+g+h) 1 1-RootSource.core true a (a+d) (a+d+e) (a+d+e+f) (a+d+e+f+g) (a+d+e+f+g+h) 1 (-1)) = entry a d e f g h := middle_source a d e f g h

end
end SPR.N6.Tail.LowFirst.Middle
