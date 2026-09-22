import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow320Identity0
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow320Identity1
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow320Identity2
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow320Identity3
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow320Identity4
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow320Identity5
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow320Identity6
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow320Identity7
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow320Identity8
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow320Source
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace FullLow320

def leading0 (A e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.Low0.coefficient100 A e g v*(A+e)^4+4*SmallGap.Low0.coefficient010 A e g
    v*(A+e)^2)

def leading1 (A e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.Low1.coefficient200 A e g v*(A+e)^4+3*SmallGap.Low1.coefficient110 A e g
    v*(A+e)^2+1*SmallGap.Low1.coefficient020 A e g v)

def remainder (A e f g v : ℝ) : ℝ :=
  FullLow3200.remainder e f g v+FullLow3201.remainder e f g v*A+FullLow3202.remainder e f g
    v*A^2+FullLow3203.remainder e f g v*A^3+FullLow3204.remainder e f g
    v*A^4+FullLow3205.remainder e f g v*A^5+FullLow3206.remainder e f g
    v*A^6+FullLow3207.remainder e f g v*A^7+FullLow3208.remainder e f g v*A^8

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading0_expansion (A e g v : ℝ) :
    leading0 A e g v =
      FullLow3200.leading0 e g v+FullLow3201.leading0 e g v*A+FullLow3202.leading0 e g
        v*A^2+FullLow3203.leading0 e g v*A^3+FullLow3204.leading0 e g v*A^4+FullLow3205.leading0 e
        g v*A^5+FullLow3206.leading0 e g v*A^6+FullLow3207.leading0 e g v*A^7+FullLow3208.leading0
        e g v*A^8 := by
  unfold leading0
  simp only [SmallGap.ReducedLayers.low0_100_expansion, SmallGap.ReducedLayers.low0_010_expansion,
    FullLow3200.leading0, FullLow3201.leading0, FullLow3202.leading0, FullLow3203.leading0,
    FullLow3204.leading0, FullLow3205.leading0, FullLow3206.leading0, FullLow3207.leading0,
    FullLow3208.leading0]
  generalize e*g*(e+g)^6 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading0_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading0 A e g v := by
  have h100 := SmallGap.Low0.nonnegative100 hA he hg hv
  have h010 := SmallGap.Low0.nonnegative010 hA he hg hv
  unfold leading0
  positivity

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading1_expansion (A e g v : ℝ) :
    leading1 A e g v =
      FullLow3200.leading1 e g v+FullLow3201.leading1 e g v*A+FullLow3202.leading1 e g
        v*A^2+FullLow3203.leading1 e g v*A^3+FullLow3204.leading1 e g v*A^4+FullLow3205.leading1 e
        g v*A^5+FullLow3206.leading1 e g v*A^6+FullLow3207.leading1 e g v*A^7+FullLow3208.leading1
        e g v*A^8 := by
  unfold leading1
  simp only [SmallGap.ReducedLayers.low1_200_expansion, SmallGap.ReducedLayers.low1_110_expansion,
    SmallGap.ReducedLayers.low1_020_expansion, FullLow3200.leading1, FullLow3201.leading1,
    FullLow3202.leading1, FullLow3203.leading1, FullLow3204.leading1, FullLow3205.leading1,
    FullLow3206.leading1, FullLow3207.leading1, FullLow3208.leading1]
  generalize (e+g)^3 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading1_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading1 A e g v := by
  have h200 := SmallGap.Low1.nonnegative200 hA he hg hv
  have h110 := SmallGap.Low1.nonnegative110 hA he hg hv
  have h020 := SmallGap.Low1.nonnegative020 hA he hg hv
  unfold leading1
  positivity

/-- Every higher-gap coefficient is positive data on the closed orthant. -/
theorem remainder_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder A e f g v := by
  have h0 := FullLow3200.remainder_nonnegative he hf hg hv
  have h1 := FullLow3201.remainder_nonnegative he hf hg hv
  have h2 := FullLow3202.remainder_nonnegative he hf hg hv
  have h3 := FullLow3203.remainder_nonnegative he hf hg hv
  have h4 := FullLow3204.remainder_nonnegative he hf hg hv
  have h5 := FullLow3205.remainder_nonnegative he hf hg hv
  have h6 := FullLow3206.remainder_nonnegative he hf hg hv
  have h7 := FullLow3207.remainder_nonnegative he hf hg hv
  have h8 := FullLow3208.remainder_nonnegative he hf hg hv
  unfold remainder
  positivity

/-- Entire source identity, including all low-gap and high-gap terms. -/
theorem decomposition (A e f g v : ℝ) :
    source A e f g v = leading0 A e g v + f*leading1 A e g v +
      f^2*remainder A e f g v := by
  unfold source remainder
  rw [decomposition0, decomposition1, decomposition2, decomposition3, decomposition4,
    decomposition5, decomposition6, decomposition7, decomposition8, leading0_expansion,
    leading1_expansion]
  ring

/-- The actual normalized source is nonnegative on the complete closed orthant. -/
theorem nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ source A e f g v := by
  rw [decomposition]
  exact add_nonneg
    (add_nonneg (leading0_nonnegative hA he hg hv)
      (mul_nonneg hf (leading1_nonnegative hA he hg hv)))
    (mul_nonneg (sq_nonneg f) (remainder_nonnegative hA he hf hg hv))

end FullLow320
end
end SPR.N6.Tail.CoreEndpoint
