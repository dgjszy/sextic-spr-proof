import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh311Source
import SPR.N6.Algebra.Tail.SmallGap.High0
import SPR.N6.Algebra.Tail.SmallGap.High1

/-! Whole-block factors for the alternate-gap `FullHigh311` candidate.

This module deliberately stops before the per-A-layer source identities.  The
future identity files can supply those identities to
`source_decomposition_of_layers`; the factor expansions and closed-orthant
sign facts are independent of that pending work.
-/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh311Factors
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- The complete reduced `f⁰` factor, with the common outer factors retained. -/
def leading0 (A e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.High0.coefficient100 A e g v*(A+e)^3+4*SmallGap.High0.coefficient010 A
    e g v*(A+e)^1+4*SmallGap.High0.coefficient001 A e g v*(A+e)^2)

/-- The complete reduced `f¹` factor, with the common outer factors retained. -/
def leading1 (A e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.High1.coefficient200 A e g v*(A+e)^3+3*SmallGap.High1.coefficient110 A e g
    v*(A+e)^1+3*SmallGap.High1.coefficient101 A e g v*(A+e)^2+1*SmallGap.High1.coefficient011 A e
    g v)

/-- The complete higher-gap remainder, assembled from the finite A layers. -/
def remainder (A e f g v : ℝ) : ℝ :=
  FullHigh3110.remainder e f g v+FullHigh3111.remainder e f g v*A+FullHigh3112.remainder e f g
    v*A^2+FullHigh3113.remainder e f g v*A^3+FullHigh3114.remainder e f g
    v*A^4+FullHigh3115.remainder e f g v*A^5

/-- Binomial expansion of the complete reduced `f⁰` factor. -/
theorem leading0_expansion (A e g v : ℝ) :
    leading0 A e g v =
      FullHigh3110.leading0 e g v+FullHigh3111.leading0 e g v*A+FullHigh3112.leading0 e g
        v*A^2+FullHigh3113.leading0 e g v*A^3+FullHigh3114.leading0 e g
        v*A^4+FullHigh3115.leading0 e g v*A^5 := by
  unfold leading0
  simp only [SmallGap.ReducedLayers.high0_100_expansion,
    SmallGap.ReducedLayers.high0_010_expansion, SmallGap.ReducedLayers.high0_001_expansion,
    FullHigh3110.leading0, FullHigh3111.leading0, FullHigh3112.leading0, FullHigh3113.leading0,
    FullHigh3114.leading0, FullHigh3115.leading0]
  ring

/-- The complete reduced `f⁰` factor is nonnegative on the closed orthant. -/
theorem leading0_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading0 A e g v := by
  have h100 := SmallGap.High0.nonnegative100 hA he hg hv
  have h010 := SmallGap.High0.nonnegative010 hA he hg hv
  have h001 := SmallGap.High0.nonnegative001 hA he hg hv
  unfold leading0
  positivity

/-- Binomial expansion of the complete reduced `f¹` factor. -/
theorem leading1_expansion (A e g v : ℝ) :
    leading1 A e g v =
      FullHigh3110.leading1 e g v+FullHigh3111.leading1 e g v*A+FullHigh3112.leading1 e g
        v*A^2+FullHigh3113.leading1 e g v*A^3+FullHigh3114.leading1 e g
        v*A^4+FullHigh3115.leading1 e g v*A^5 := by
  unfold leading1
  simp only [SmallGap.ReducedLayers.high1_200_expansion,
    SmallGap.ReducedLayers.high1_110_expansion, SmallGap.ReducedLayers.high1_101_expansion,
    SmallGap.ReducedLayers.high1_011_expansion, FullHigh3110.leading1, FullHigh3111.leading1,
    FullHigh3112.leading1, FullHigh3113.leading1, FullHigh3114.leading1, FullHigh3115.leading1]
  ring

/-- The complete reduced `f¹` factor is nonnegative on the closed orthant. -/
theorem leading1_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading1 A e g v := by
  have h200 := SmallGap.High1.nonnegative200 hA he hg hv
  have h110 := SmallGap.High1.nonnegative110 hA he hg hv
  have h101 := SmallGap.High1.nonnegative101 hA he hg hv
  have h011 := SmallGap.High1.nonnegative011 hA he hg hv
  unfold leading1
  positivity

/-- The assembled higher-gap remainder is nonnegative on the closed orthant. -/
theorem remainder_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder A e f g v := by
  have h0 := FullHigh3110.remainder_nonnegative he hf hg hv
  have h1 := FullHigh3111.remainder_nonnegative he hf hg hv
  have h2 := FullHigh3112.remainder_nonnegative he hf hg hv
  have h3 := FullHigh3113.remainder_nonnegative he hf hg hv
  have h4 := FullHigh3114.remainder_nonnegative he hf hg hv
  have h5 := FullHigh3115.remainder_nonnegative he hf hg hv
  unfold remainder
  positivity

/-- Assemble the whole source from any six pending layer identities.

The hypotheses are shaped exactly like the future
`FullHigh311Identity0` through `FullHigh311Identity5` conclusions, so the
aggregate file can pass those theorem applications without changing this
factor module.
-/
theorem source_decomposition_of_layers (A e f g v : ℝ)
    (h0 : FullHigh3110.source e f g v = FullHigh3110.leading0 e g v +
      f*FullHigh3110.leading1 e g v + f^2*FullHigh3110.remainder e f g v)
    (h1 : FullHigh3111.source e f g v = FullHigh3111.leading0 e g v +
      f*FullHigh3111.leading1 e g v + f^2*FullHigh3111.remainder e f g v)
    (h2 : FullHigh3112.source e f g v = FullHigh3112.leading0 e g v +
      f*FullHigh3112.leading1 e g v + f^2*FullHigh3112.remainder e f g v)
    (h3 : FullHigh3113.source e f g v = FullHigh3113.leading0 e g v +
      f*FullHigh3113.leading1 e g v + f^2*FullHigh3113.remainder e f g v)
    (h4 : FullHigh3114.source e f g v = FullHigh3114.leading0 e g v +
      f*FullHigh3114.leading1 e g v + f^2*FullHigh3114.remainder e f g v)
    (h5 : FullHigh3115.source e f g v = FullHigh3115.leading0 e g v +
      f*FullHigh3115.leading1 e g v + f^2*FullHigh3115.remainder e f g v) :
    FullHigh311.source A e f g v = leading0 A e g v + f*leading1 A e g v +
      f^2*remainder A e f g v := by
  unfold FullHigh311.source remainder
  rw [h0, h1, h2, h3, h4, h5, leading0_expansion, leading1_expansion]
  ring

/-- Nonnegativity of the source after a supplied whole-block decomposition. -/
theorem source_nonnegative_of_decomposition {A e f g v : ℝ}
    (hA : 0 ≤ A) (he : 0 ≤ e) (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v)
    (hdecomp : FullHigh311.source A e f g v = leading0 A e g v +
      f*leading1 A e g v + f^2*remainder A e f g v) :
    0 ≤ FullHigh311.source A e f g v := by
  rw [hdecomp]
  exact add_nonneg
    (add_nonneg (leading0_nonnegative hA he hg hv)
      (mul_nonneg hf (leading1_nonnegative hA he hg hv)))
    (mul_nonneg (sq_nonneg f) (remainder_nonnegative hA he hf hg hv))

end
end SPR.N6.Tail.CoreEndpoint.FullHigh311Factors


