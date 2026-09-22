import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh320Source
import SPR.N6.Algebra.Tail.SmallGap.High0
import SPR.N6.Algebra.Tail.SmallGap.High1

/-! Whole-block factors for the alternate-gap `FullHigh320` candidate.

The per-A-layer source identities remain external hypotheses of the assembly
theorem.  This keeps the positive factor and remainder proofs independent of
the pending encoded identities.
-/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh320Factors
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- The complete reduced `f⁰` factor, with the common outer factors retained. -/
def leading0 (A e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.High0.coefficient100 A e g v*(A+e)^4+4*SmallGap.High0.coefficient010 A e
    g v*(A+e)^2)

/-- The complete reduced `f¹` factor, with the common outer factors retained. -/
def leading1 (A e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.High1.coefficient200 A e g v*(A+e)^4+3*SmallGap.High1.coefficient110 A e g
    v*(A+e)^2+1*SmallGap.High1.coefficient020 A e g v)

/-- The complete higher-gap remainder, assembled from the finite A layers. -/
def remainder (A e f g v : ℝ) : ℝ :=
  FullHigh3200.remainder e f g v+FullHigh3201.remainder e f g v*A+FullHigh3202.remainder e f g
    v*A^2+FullHigh3203.remainder e f g v*A^3+FullHigh3204.remainder e f g
    v*A^4+FullHigh3205.remainder e f g v*A^5+FullHigh3206.remainder e f g v*A^6

/-- Binomial expansion of the complete reduced `f⁰` factor. -/
theorem leading0_expansion (A e g v : ℝ) :
    leading0 A e g v =
      FullHigh3200.leading0 e g v+FullHigh3201.leading0 e g v*A+FullHigh3202.leading0 e g
        v*A^2+FullHigh3203.leading0 e g v*A^3+FullHigh3204.leading0 e g
        v*A^4+FullHigh3205.leading0 e g v*A^5+FullHigh3206.leading0 e g v*A^6 := by
  unfold leading0
  simp only [SmallGap.ReducedLayers.high0_100_expansion,
    SmallGap.ReducedLayers.high0_010_expansion, FullHigh3200.leading0, FullHigh3201.leading0,
    FullHigh3202.leading0, FullHigh3203.leading0, FullHigh3204.leading0, FullHigh3205.leading0,
    FullHigh3206.leading0]
  ring

/-- The complete reduced `f⁰` factor is nonnegative on the closed orthant. -/
theorem leading0_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading0 A e g v := by
  have h100 := SmallGap.High0.nonnegative100 hA he hg hv
  have h010 := SmallGap.High0.nonnegative010 hA he hg hv
  unfold leading0
  positivity

/-- Binomial expansion of the complete reduced `f¹` factor. -/
theorem leading1_expansion (A e g v : ℝ) :
    leading1 A e g v =
      FullHigh3200.leading1 e g v+FullHigh3201.leading1 e g v*A+FullHigh3202.leading1 e g
        v*A^2+FullHigh3203.leading1 e g v*A^3+FullHigh3204.leading1 e g
        v*A^4+FullHigh3205.leading1 e g v*A^5+FullHigh3206.leading1 e g v*A^6 := by
  unfold leading1
  simp only [SmallGap.ReducedLayers.high1_200_expansion,
    SmallGap.ReducedLayers.high1_110_expansion, SmallGap.ReducedLayers.high1_020_expansion,
    FullHigh3200.leading1, FullHigh3201.leading1, FullHigh3202.leading1, FullHigh3203.leading1,
    FullHigh3204.leading1, FullHigh3205.leading1, FullHigh3206.leading1]
  ring

/-- The complete reduced `f¹` factor is nonnegative on the closed orthant. -/
theorem leading1_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading1 A e g v := by
  have h200 := SmallGap.High1.nonnegative200 hA he hg hv
  have h110 := SmallGap.High1.nonnegative110 hA he hg hv
  have h020 := SmallGap.High1.nonnegative020 hA he hg hv
  unfold leading1
  positivity

/-- The assembled higher-gap remainder is nonnegative on the closed orthant. -/
theorem remainder_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder A e f g v := by
  have h0 := FullHigh3200.remainder_nonnegative he hf hg hv
  have h1 := FullHigh3201.remainder_nonnegative he hf hg hv
  have h2 := FullHigh3202.remainder_nonnegative he hf hg hv
  have h3 := FullHigh3203.remainder_nonnegative he hf hg hv
  have h4 := FullHigh3204.remainder_nonnegative he hf hg hv
  have h5 := FullHigh3205.remainder_nonnegative he hf hg hv
  have h6 := FullHigh3206.remainder_nonnegative he hf hg hv
  unfold remainder
  positivity

/-- Assemble the whole source from any seven pending layer identities.

The hypotheses are shaped exactly like the future
`FullHigh320Identity0` through `FullHigh320Identity6` conclusions.
-/
theorem source_decomposition_of_layers (A e f g v : ℝ)
    (h0 : FullHigh3200.source e f g v = FullHigh3200.leading0 e g v +
      f*FullHigh3200.leading1 e g v + f^2*FullHigh3200.remainder e f g v)
    (h1 : FullHigh3201.source e f g v = FullHigh3201.leading0 e g v +
      f*FullHigh3201.leading1 e g v + f^2*FullHigh3201.remainder e f g v)
    (h2 : FullHigh3202.source e f g v = FullHigh3202.leading0 e g v +
      f*FullHigh3202.leading1 e g v + f^2*FullHigh3202.remainder e f g v)
    (h3 : FullHigh3203.source e f g v = FullHigh3203.leading0 e g v +
      f*FullHigh3203.leading1 e g v + f^2*FullHigh3203.remainder e f g v)
    (h4 : FullHigh3204.source e f g v = FullHigh3204.leading0 e g v +
      f*FullHigh3204.leading1 e g v + f^2*FullHigh3204.remainder e f g v)
    (h5 : FullHigh3205.source e f g v = FullHigh3205.leading0 e g v +
      f*FullHigh3205.leading1 e g v + f^2*FullHigh3205.remainder e f g v)
    (h6 : FullHigh3206.source e f g v = FullHigh3206.leading0 e g v +
      f*FullHigh3206.leading1 e g v + f^2*FullHigh3206.remainder e f g v) :
    FullHigh320.source A e f g v = leading0 A e g v + f*leading1 A e g v +
      f^2*remainder A e f g v := by
  unfold FullHigh320.source remainder
  rw [h0, h1, h2, h3, h4, h5, h6, leading0_expansion, leading1_expansion]
  ring

/-- Nonnegativity of the source after a supplied whole-block decomposition. -/
theorem source_nonnegative_of_decomposition {A e f g v : ℝ}
    (hA : 0 ≤ A) (he : 0 ≤ e) (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v)
    (hdecomp : FullHigh320.source A e f g v = leading0 A e g v +
      f*leading1 A e g v + f^2*remainder A e f g v) :
    0 ≤ FullHigh320.source A e f g v := by
  rw [hdecomp]
  exact add_nonneg
    (add_nonneg (leading0_nonnegative hA he hg hv)
      (mul_nonneg hf (leading1_nonnegative hA he hg hv)))
    (mul_nonneg (sq_nonneg f) (remainder_nonnegative hA he hf hg hv))

end
end SPR.N6.Tail.CoreEndpoint.FullHigh320Factors


