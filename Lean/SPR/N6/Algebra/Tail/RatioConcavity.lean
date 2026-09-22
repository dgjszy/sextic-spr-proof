import SPR.N6.Algebra.Tail.HighZero

/-!
# Ratio concavity on both frequency tails

The shared leading ratio coefficient is controlled by the actual two-width
budget. This concerns the quadratic core after separating the positive baseline
residual, and does not assert concavity of the complete quartic source.
-/
namespace SPR.N6.Tail.RatioConcavity
noncomputable section
-- Check the two fixed polynomial identities sequentially to bound peak memory.
set_option Elab.async false

def slope (d e f g h : ℝ) : ℝ := d*g+d*h-e*f+e*h-f^2-f*g

def highLeading (d e f g h v : ℝ) : ℝ :=
  f^2*v*(slope d e f g h*v-
    (e+f)*(-slope d e f g h+d*(d+e+f+g)))

def lowLeading (d e f g h τ : ℝ) : ℝ :=
  f^2*τ*(slope d e f g h*τ+
    (f+g)*(f^2+e*f+(f-d+h)*(g+h)))

/-- The budget forces the left outer gap to be smaller than the middle gap. -/
theorem outer_gap_le (d e f g h : ℝ) (hd : 0 ≤ d) (he : 0 ≤ e)
    (hf : 0 < f) (hg : 0 ≤ g)
    (hK : 0 ≤ HighZero.kappa d f h) (hS : 0 ≤ HighZero.slack d e f g h) : d ≤ f := by
  have hprod : 0 ≤ (2*d+e)*HighZero.kappa d f h := mul_nonneg (by positivity) hK
  have hbudget : d*(e+2*f+g) ≤ f*(f+g) := by
    unfold HighZero.slack at hS
    unfold HighZero.kappa at hprod
    linarith only [hS,hprod]
  by_contra hn
  have hdf : 0 < d-f := sub_pos.mpr (lt_of_not_ge hn)
  have hp := mul_pos hdf (add_pos_of_pos_of_nonneg hf hg)
  have hrest : 0 ≤ d*(e+f) := by positivity
  nlinarith only [hbudget,hp,hrest]

/-- A denominator-free budget identity controls the common ratio slope. -/
theorem slope_budget_identity (d e f g h : ℝ) :
    (2*d+e)*slope d e f g h+(d+e)*HighZero.slack d e f g h =
      -d*(2*(d+e)^2+f*(e+f)+g*(f-d)) := by
  unfold slope HighZero.slack
  ring

/-- This is the sign needed for both high and low ratio leading terms. -/
theorem slope_nonpositive (d e f g h : ℝ) (hd : 0 < d) (he : 0 ≤ e)
    (hf : 0 < f) (hg : 0 ≤ g)
    (hK : 0 ≤ HighZero.kappa d f h) (hS : 0 ≤ HighZero.slack d e f g h) :
    slope d e f g h ≤ 0 := by
  have hdf := outer_gap_le d e f g h hd.le he hf hg hK hS
  have hden : 0 < 2*d+e := by positivity
  have hright : 0 ≤ d*(2*(d+e)^2+f*(e+f)+g*(f-d)) := by
    have hfd := sub_nonneg.mpr hdf
    positivity
  have hleft : 0 ≤ (d+e)*HighZero.slack d e f g h := mul_nonneg (by positivity) hS
  have hid := slope_budget_identity d e f g h
  have hmul : (2*d+e)*slope d e f g h ≤ 0 := by
    linarith only [hid,hright,hleft]
  exact nonpos_of_mul_nonpos_right hmul hden

set_option maxHeartbeats 0 in
/-- The high ratio coefficient is checked from all three exact scalar evaluations. -/
theorem high_second_difference (d e f g h v : ℝ) :
    LowerZero.q0 d e f g h 2 (f+v)-2*LowerZero.q0 d e f g h 1 (f+v)+
      LowerZero.q0 d e f g h 0 (f+v) = 2*highLeading d e f g h v := by
  unfold LowerZero.q0 LowerZero.q00 LowerZero.q01 LowerZero.q02 highLeading slope
  ring

set_option maxHeartbeats 0 in
/-- The low ratio coefficient is likewise an exact polynomial identity. -/
theorem low_second_difference (d e f g h τ : ℝ) :
    LowerZero.q1 d e f g h 2 τ-2*LowerZero.q1 d e f g h 1 τ+
      LowerZero.q1 d e f g h 0 τ = 2*lowLeading d e f g h τ := by
  unfold LowerZero.q1 LowerZero.q10 LowerZero.q11 LowerZero.q12 lowLeading slope
  ring

/-- Concavity on the whole high half-line uses the same shared budget. -/
theorem high_leading_nonpositive (d e f g h v : ℝ) (hd : 0 < d) (he : 0 ≤ e)
    (hf : 0 < f) (hg : 0 ≤ g) (hv : 0 ≤ v)
    (hK : 0 ≤ HighZero.kappa d f h) (hS : 0 ≤ HighZero.slack d e f g h) :
    highLeading d e f g h v ≤ 0 := by
  have hL := slope_nonpositive d e f g h hd he hf hg hK hS
  have hR : 0 ≤ -slope d e f g h+d*(d+e+f+g) := by
    have hn := neg_nonneg.mpr hL
    positivity
  have h1 := mul_nonpos_of_nonpos_of_nonneg hL hv
  have h2 := mul_nonneg (add_nonneg he hf.le) hR
  unfold highLeading
  exact mul_nonpos_of_nonneg_of_nonpos (mul_nonneg (sq_nonneg _) hv) (by linarith)

/-- Concavity holds on the entire low side t-B ≤ 0, not just at sampled points. -/
theorem low_leading_nonpositive (d e f g h τ : ℝ) (hd : 0 < d) (he : 0 ≤ e)
    (hf : 0 < f) (hg : 0 ≤ g) (hh : 0 ≤ h) (hτ : τ ≤ 0)
    (hK : 0 ≤ HighZero.kappa d f h) (hS : 0 ≤ HighZero.slack d e f g h) :
    lowLeading d e f g h τ ≤ 0 := by
  have hL := slope_nonpositive d e f g h hd he hf hg hK hS
  have hdf := outer_gap_le d e f g h hd.le he hf hg hK hS
  have hfd := sub_nonneg.mpr hdf
  have h1 := mul_nonneg_of_nonpos_of_nonpos hL hτ
  have h2 : 0 ≤ (f+g)*(f^2+e*f+(f-d+h)*(g+h)) := by positivity
  unfold lowLeading
  exact mul_nonpos_of_nonpos_of_nonneg
    (mul_nonpos_of_nonneg_of_nonpos (sq_nonneg _) hτ) (add_nonneg h1 h2)

end
end SPR.N6.Tail.RatioConcavity
