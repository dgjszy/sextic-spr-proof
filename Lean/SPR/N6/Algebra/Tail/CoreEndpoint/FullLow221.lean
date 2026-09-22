import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow221Identity0
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow221Identity1
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow221Identity2
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow221Identity3
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow221Identity4
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow221Identity5
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow221Identity6
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow221Identity7
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow221Identity8
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow221Identity9
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow221Source
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace FullLow221

def leading0 (A e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.Low0.coefficient100 A e g v*(A+e)^5+12*SmallGap.Low0.coefficient010 A e
    g v*(A+e)^3+6*SmallGap.Low0.coefficient001 A e g v*(A+e)^4)

def leading1 (A e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.Low1.coefficient200 A e g v*(A+e)^5+6*SmallGap.Low1.coefficient110 A e g
    v*(A+e)^3+3*SmallGap.Low1.coefficient101 A e g v*(A+e)^4+3*SmallGap.Low1.coefficient020 A e g
    v*(A+e)^1+3*SmallGap.Low1.coefficient011 A e g v*(A+e)^2)

def remainder (A e f g v : ℝ) : ℝ :=
  FullLow2210.remainder e f g v+FullLow2211.remainder e f g v*A+FullLow2212.remainder e f g
    v*A^2+FullLow2213.remainder e f g v*A^3+FullLow2214.remainder e f g
    v*A^4+FullLow2215.remainder e f g v*A^5+FullLow2216.remainder e f g
    v*A^6+FullLow2217.remainder e f g v*A^7+FullLow2218.remainder e f g
    v*A^8+FullLow2219.remainder e f g v*A^9

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading0_expansion (A e g v : ℝ) :
    leading0 A e g v =
      FullLow2210.leading0 e g v+FullLow2211.leading0 e g v*A+FullLow2212.leading0 e g
        v*A^2+FullLow2213.leading0 e g v*A^3+FullLow2214.leading0 e g v*A^4+FullLow2215.leading0 e
        g v*A^5+FullLow2216.leading0 e g v*A^6+FullLow2217.leading0 e g v*A^7+FullLow2218.leading0
        e g v*A^8+FullLow2219.leading0 e g v*A^9 := by
  unfold leading0
  simp only [SmallGap.ReducedLayers.low0_100_expansion, SmallGap.ReducedLayers.low0_010_expansion,
    SmallGap.ReducedLayers.low0_001_expansion, FullLow2210.leading0, FullLow2211.leading0,
    FullLow2212.leading0, FullLow2213.leading0, FullLow2214.leading0, FullLow2215.leading0,
    FullLow2216.leading0, FullLow2217.leading0, FullLow2218.leading0, FullLow2219.leading0]
  generalize e*g*(e+g)^6 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading0_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading0 A e g v := by
  have h100 := SmallGap.Low0.nonnegative100 hA he hg hv
  have h010 := SmallGap.Low0.nonnegative010 hA he hg hv
  have h001 := SmallGap.Low0.nonnegative001 hA he hg hv
  unfold leading0
  positivity

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading1_expansion (A e g v : ℝ) :
    leading1 A e g v =
      FullLow2210.leading1 e g v+FullLow2211.leading1 e g v*A+FullLow2212.leading1 e g
        v*A^2+FullLow2213.leading1 e g v*A^3+FullLow2214.leading1 e g v*A^4+FullLow2215.leading1 e
        g v*A^5+FullLow2216.leading1 e g v*A^6+FullLow2217.leading1 e g v*A^7+FullLow2218.leading1
        e g v*A^8+FullLow2219.leading1 e g v*A^9 := by
  unfold leading1
  simp only [SmallGap.ReducedLayers.low1_200_expansion, SmallGap.ReducedLayers.low1_110_expansion,
    SmallGap.ReducedLayers.low1_101_expansion, SmallGap.ReducedLayers.low1_020_expansion,
    SmallGap.ReducedLayers.low1_011_expansion, FullLow2210.leading1, FullLow2211.leading1,
    FullLow2212.leading1, FullLow2213.leading1, FullLow2214.leading1, FullLow2215.leading1,
    FullLow2216.leading1, FullLow2217.leading1, FullLow2218.leading1, FullLow2219.leading1]
  generalize (e+g)^3 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading1_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading1 A e g v := by
  have h200 := SmallGap.Low1.nonnegative200 hA he hg hv
  have h110 := SmallGap.Low1.nonnegative110 hA he hg hv
  have h101 := SmallGap.Low1.nonnegative101 hA he hg hv
  have h020 := SmallGap.Low1.nonnegative020 hA he hg hv
  have h011 := SmallGap.Low1.nonnegative011 hA he hg hv
  unfold leading1
  positivity

/-- Every higher-gap coefficient is positive data on the closed orthant. -/
theorem remainder_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder A e f g v := by
  have h0 := FullLow2210.remainder_nonnegative he hf hg hv
  have h1 := FullLow2211.remainder_nonnegative he hf hg hv
  have h2 := FullLow2212.remainder_nonnegative he hf hg hv
  have h3 := FullLow2213.remainder_nonnegative he hf hg hv
  have h4 := FullLow2214.remainder_nonnegative he hf hg hv
  have h5 := FullLow2215.remainder_nonnegative he hf hg hv
  have h6 := FullLow2216.remainder_nonnegative he hf hg hv
  have h7 := FullLow2217.remainder_nonnegative he hf hg hv
  have h8 := FullLow2218.remainder_nonnegative he hf hg hv
  have h9 := FullLow2219.remainder_nonnegative he hf hg hv
  unfold remainder
  positivity

/-- Entire source identity, including all low-gap and high-gap terms. -/
theorem decomposition (A e f g v : ℝ) :
    source A e f g v = leading0 A e g v + f*leading1 A e g v +
      f^2*remainder A e f g v := by
  unfold source remainder
  rw [decomposition0, decomposition1, decomposition2, decomposition3, decomposition4,
    decomposition5, decomposition6, decomposition7, decomposition8, decomposition9,
    leading0_expansion, leading1_expansion]
  ring

/-- The actual normalized source is nonnegative on the complete closed orthant. -/
theorem nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ source A e f g v := by
  rw [decomposition]
  exact add_nonneg
    (add_nonneg (leading0_nonnegative hA he hg hv)
      (mul_nonneg hf (leading1_nonnegative hA he hg hv)))
    (mul_nonneg (sq_nonneg f) (remainder_nonnegative hA he hf hg hv))

end FullLow221
end
end SPR.N6.Tail.CoreEndpoint
