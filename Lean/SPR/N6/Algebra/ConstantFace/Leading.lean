import SPR.N6.Algebra.ConstantFace.Core

/-!
# The two-fixed-even-coefficient face

These static polynomial formulas are normalized from the same lower zero
source. Positivity includes both endpoints of the canonical ratio interval.
-/
namespace SPR.N6.ConstantFace
noncomputable section
set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace Leading

def entry0 (e f g : ℝ) : ℝ :=
  (((((((4) * f + ((2) * g)) * f ^ 2) * e + ((((28) * f + ((28) * g)) * f + ((8) * g ^ 2)) * f ^
    2)) * e + (((((72) * f + ((104) * g)) * f + ((56) * g ^ 2)) * f + ((12) * g ^ 3)) * f ^ 2))
    * e + ((((((96) * f + ((184) * g)) * f + ((144) * g ^ 2)) * f + ((56) * g ^ 3)) * f + ((8) *
    g ^ 4)) * f ^ 2)) * e + (((((((72) * f + ((176) * g)) * f + ((184) * g ^ 2)) * f + ((104) *
    g ^ 3)) * f + ((28) * g ^ 4)) * f + ((2) * g ^ 5)) * f ^ 2)) * e + (((((((24) * f + ((72) *
    g)) * f + ((96) * g ^ 2)) * f + ((72) * g ^ 3)) * f + ((28) * g ^ 4)) * f + ((4) * g ^ 5)) *
    f ^ 3)

theorem positive0 {e f g : ℝ} (he : 0 < e) (hf : 0 < f) (hg : 0 < g) :
    0 < entry0 e f g := by
  unfold entry0
  positivity

def entry1 (e f g : ℝ) : ℝ :=
  (((((((5) * f + ((2) * g)) * f ^ 2) * e + ((((29) * f + ((23) * g)) * f + ((4) * g ^ 2)) * f ^
    2)) * e + (((((70) * f + ((86) * g)) * f + ((32) * g ^ 2)) * f + ((4) * g ^ 3)) * f ^ 2)) *
    e + ((((((94) * f + ((166) * g)) * f + ((106) * g ^ 2)) * f + ((32) * g ^ 3)) * f + ((4) * g
    ^ 4)) * f ^ 2)) * e + (((((((72) * f + ((172) * g)) * f + ((166) * g ^ 2)) * f + ((86) * g ^
    3)) * f + ((23) * g ^ 4)) * f + ((2) * g ^ 5)) * f ^ 2)) * e + (((((((24) * f + ((72) * g))
    * f + ((94) * g ^ 2)) * f + ((70) * g ^ 3)) * f + ((29) * g ^ 4)) * f + ((5) * g ^ 5)) * f ^
    3)

theorem positive1 {e f g : ℝ} (he : 0 < e) (hf : 0 < f) (hg : 0 < g) :
    0 < entry1 e f g := by
  unfold entry1
  positivity

def entry2 (e f g : ℝ) : ℝ :=
  (((((((6) * f + ((2) * g)) * f ^ 2) * e + (((26) * f + ((14) * g)) * f ^ 3)) * e + (((((58) *
    f + ((46) * g)) * f + ((-4) * g ^ 2)) * f + ((-4) * g ^ 3)) * f ^ 2)) * e + (((((86) * f +
    ((118) * g)) * f + ((32) * g ^ 2)) * f + ((-4) * g ^ 3)) * f ^ 3)) * e + (((((((72) * f +
    ((156) * g)) * f + ((118) * g ^ 2)) * f + ((46) * g ^ 3)) * f + ((14) * g ^ 4)) * f + ((2) *
    g ^ 5)) * f ^ 2)) * e + (((((((24) * f + ((72) * g)) * f + ((86) * g ^ 2)) * f + ((58) * g ^
    3)) * f + ((26) * g ^ 4)) * f + ((6) * g ^ 5)) * f ^ 3)

def endpoint0 (v g f : ℝ) : ℝ :=
  (((((((2) * f ^ 2) * g + ((6) * f ^ 3)) * v + ((((10) * f ^ 2) * g + ((44) * f ^ 3)) * g +
    ((26) * f ^ 4))) * v + (((((16) * f ^ 2) * g + ((112) * f ^ 3)) * g + ((150) * f ^ 4)) * g +
    ((58) * f ^ 5))) * v + ((((((8) * f ^ 2) * g + ((128) * f ^ 3)) * g + ((326) * f ^ 4)) * g +
    ((292) * f ^ 5)) * g + ((86) * f ^ 6))) * v + ((((((80) * f ^ 3) * g + ((352) * f ^ 4)) * g
    + ((528) * f ^ 5)) * g + ((328) * f ^ 6)) * g + ((72) * f ^ 7))) * v + (((((((32) * f ^ 3) *
    g + ((176) * f ^ 4)) * g + ((352) * f ^ 5)) * g + ((328) * f ^ 6)) * g + ((144) * f ^ 7)) *
    g + ((24) * f ^ 8))

def endpoint1 (v e f : ℝ) : ℝ :=
  (((((((2) * f ^ 2) * e + ((6) * f ^ 3)) * v + ((((10) * f ^ 2) * e + ((44) * f ^ 3)) * e +
    ((26) * f ^ 4))) * v + (((((16) * f ^ 2) * e + ((112) * f ^ 3)) * e + ((150) * f ^ 4)) * e +
    ((58) * f ^ 5))) * v + ((((((8) * f ^ 2) * e + ((128) * f ^ 3)) * e + ((326) * f ^ 4)) * e +
    ((292) * f ^ 5)) * e + ((86) * f ^ 6))) * v + ((((((80) * f ^ 3) * e + ((352) * f ^ 4)) * e
    + ((528) * f ^ 5)) * e + ((328) * f ^ 6)) * e + ((72) * f ^ 7))) * v + (((((((32) * f ^ 3) *
    e + ((176) * f ^ 4)) * e + ((352) * f ^ 5)) * e + ((328) * f ^ 6)) * e + ((144) * f ^ 7)) *
    e + ((24) * f ^ 8))

theorem endpoint_identity0 (g f v : ℝ) : entry2 (g+v) f g = endpoint0 v g f := by
  unfold entry2 endpoint0
  ring

theorem endpoint_identity1 (e f v : ℝ) : entry2 e f (e+v) = endpoint1 v e f := by
  unfold entry2 endpoint1
  ring

/-- Closed order cones overlap at e=g, where a strict constant term remains. -/
theorem positive2 {e f g : ℝ} (he : 0 < e) (hf : 0 < f) (hg : 0 < g) :
    0 < entry2 e f g := by
  by_cases h : g ≤ e
  · have hv : 0 ≤ e-g := sub_nonneg.mpr h
    have hi := endpoint_identity0 g f (e-g)
    have hp : 0 < endpoint0 (e-g) g f := by unfold endpoint0; positivity
    have hx : g+(e-g) = e := by ring
    rw [hx] at hi
    rwa [hi]
  · have hv : 0 ≤ g-e := sub_nonneg.mpr (le_of_not_ge h)
    have hi := endpoint_identity1 e f (g-e)
    have hp : 0 < endpoint1 (g-e) e f := by unfold endpoint1; positivity
    have hx : e+(g-e) = g := by ring
    rw [hx] at hi
    rwa [hi]

/-- Complete exact ratio expansion, with one common positive denominator. -/
theorem interpolation (e f g v : ℝ) (hf : f ≠ 0) :
    2*f^2*c2 e f g (1+(e+g)*v/f) =
      entry0 e f g*(1-v)^2+2*entry1 e f g*v*(1-v)+entry2 e f g*v^2 := by
  unfold c2  entry0 entry1 entry2
  field_simp
  ring

/-- Positivity for every value of the same closed ratio interval. -/
theorem positive {e f g m : ℝ} (he : 0 < e) (hf : 0 < f) (hg : 0 < g)
    (hm : 1 ≤ m) (hM : m ≤ (e+f+g)/f) : 0 < c2 e f g m := by
  let v := f*(m-1)/(e+g)
  have heg : 0 < e+g := add_pos he hg
  have hv0 : 0 ≤ v := div_nonneg (mul_nonneg hf.le (sub_nonneg.mpr hm)) heg.le
  have hv1 : v ≤ 1 := by
    apply (div_le_one heg).mpr
    have hb := (le_div_iff₀ hf).mp hM
    nlinarith only [hb]
  have hm' : m = 1+(e+g)*v/f := by dsimp [v]; field_simp; ring
  have hp := ratio_block_pos
    (positive0 he hf hg) (positive1 he hf hg) (positive2 he hf hg) hv0 hv1
  rw [← interpolation e f g v (ne_of_gt hf), ← hm'] at hp
  exact (mul_pos_iff_of_pos_left (by positivity : 0 < 2*f^2)).mp hp

end Leading
end
end SPR.N6.ConstantFace
