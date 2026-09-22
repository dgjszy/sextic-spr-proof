import SPR.N6.Algebra.Tail.LowFirst.Contact0
import SPR.N6.Algebra.Tail.LowFirst.Contact1
import SPR.N6.Algebra.Tail.LowFirst.Contact2

/-!
# Complete contact frequency entry at ratio one

Every first-root coefficient proved in the small modules is included. Transfers
of the slack's linear first-root term cancel exactly before positivity is used.
-/
namespace SPR.N6.Tail.LowFirst.Contact
noncomputable section
set_option Elab.async false

/-- Complete first-root polynomial for this frequency entry. -/
def entry (a d e f g h : ℝ) : ℝ :=
  c0 d e f g h+c1 d e f g h*a+c2 d e f g h*a^2

/-- Complete nonnegative remainder, with all powers of the actual first root. -/
def remainder (a d e f g h : ℝ) : ℝ :=
  Contact0.remainder d e f g h+Contact1.remainder d e f g h*a+Contact2.remainder d e f g h*a^2

/-- Complete multiplier of the same actual second-width slack. -/
def multiplier (a d e f g h : ℝ) : ℝ :=
  Contact0.multiplier d e f g h+Contact1.multiplier d e f g h*a+Contact2.multiplier d e f g h*a^2

/-- The coefficient transfers recombine into one and the same full slack. -/
theorem identity (a d e f g h : ℝ) :
    entry a d e f g h = remainder a d e f g h+slack a d e f g h*multiplier a d e f g h := by
  unfold entry remainder multiplier
  rw [Contact0.identity, Contact1.identity, Contact2.identity]

  have hp0 : Contact0.previous d e f g h = 0 := rfl
  have hp1 : Contact1.previous d e f g h = Contact0.multiplier d e f g h := rfl
  have hp2 : Contact2.previous d e f g h = Contact1.multiplier d e f g h := rfl
  have hlast : Contact2.multiplier d e f g h = 0 := rfl
  rw [hp0, hp1, hp2,hlast]
  unfold slack
  ring

/-- The actual width slack, not an independently chosen parameter, implies this sign. -/
theorem nonnegative {a d e f g h : ℝ} (ha : 0 ≤ a) (hd : 0 ≤ d) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hh : 0 ≤ h) (hS : 0 ≤ slack a d e f g h) :
    0 ≤ entry a d e f g h := by

  obtain ⟨hr0,hs0⟩ := Contact0.signs hd he hf hg hh
  obtain ⟨hr1,hs1⟩ := Contact1.signs hd he hf hg hh
  obtain ⟨hr2,hs2⟩ := Contact2.signs hd he hf hg hh
  rw [identity]
  have hr : 0 ≤ remainder a d e f g h := by unfold remainder; positivity
  have hm : 0 ≤ multiplier a d e f g h := by unfold multiplier; positivity
  exact add_nonneg hr (mul_nonneg hS hm)

/-- The assembled entry is exactly the original quadratic core expression. -/
theorem source (a d e f g h : ℝ) :
    4*RootSource.core true a (a+d) (a+d+e) (a+d+e+f) (a+d+e+f+g) (a+d+e+f+g+h) 1 (a+d+e) = entry a d e f g h := contact_source a d e f g h

end
end SPR.N6.Tail.LowFirst.Contact
