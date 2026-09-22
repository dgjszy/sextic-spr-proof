import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow212Identity0
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow212Identity1
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow212Identity2
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow212Identity3
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow212Identity4
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow212Identity5
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow212Identity6
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow212Identity7
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow212Identity8
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow212Source
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace FullLow212

def leading0 (A e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.Low0.coefficient100 A e g v*(A+e)^4+6*SmallGap.Low0.coefficient010 A e
    g v*(A+e)^2+12*SmallGap.Low0.coefficient001 A e g v*(A+e)^3)

def leading1 (A e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.Low1.coefficient200 A e g v*(A+e)^4+3*SmallGap.Low1.coefficient110 A e g
    v*(A+e)^2+6*SmallGap.Low1.coefficient101 A e g v*(A+e)^3+3*SmallGap.Low1.coefficient011 A e g
    v*(A+e)^1+3*SmallGap.Low1.coefficient002 A e g v*(A+e)^2)

def remainder (A e f g v : ℝ) : ℝ :=
  FullLow2120.remainder e f g v+FullLow2121.remainder e f g v*A+FullLow2122.remainder e f g
    v*A^2+FullLow2123.remainder e f g v*A^3+FullLow2124.remainder e f g
    v*A^4+FullLow2125.remainder e f g v*A^5+FullLow2126.remainder e f g
    v*A^6+FullLow2127.remainder e f g v*A^7+FullLow2128.remainder e f g v*A^8

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading0_expansion (A e g v : ℝ) :
    leading0 A e g v =
      FullLow2120.leading0 e g v+FullLow2121.leading0 e g v*A+FullLow2122.leading0 e g
        v*A^2+FullLow2123.leading0 e g v*A^3+FullLow2124.leading0 e g v*A^4+FullLow2125.leading0 e
        g v*A^5+FullLow2126.leading0 e g v*A^6+FullLow2127.leading0 e g v*A^7+FullLow2128.leading0
        e g v*A^8 := by
  unfold leading0
  simp only [SmallGap.ReducedLayers.low0_100_expansion, SmallGap.ReducedLayers.low0_010_expansion,
    SmallGap.ReducedLayers.low0_001_expansion, FullLow2120.leading0, FullLow2121.leading0,
    FullLow2122.leading0, FullLow2123.leading0, FullLow2124.leading0, FullLow2125.leading0,
    FullLow2126.leading0, FullLow2127.leading0, FullLow2128.leading0]
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
      FullLow2120.leading1 e g v+FullLow2121.leading1 e g v*A+FullLow2122.leading1 e g
        v*A^2+FullLow2123.leading1 e g v*A^3+FullLow2124.leading1 e g v*A^4+FullLow2125.leading1 e
        g v*A^5+FullLow2126.leading1 e g v*A^6+FullLow2127.leading1 e g v*A^7+FullLow2128.leading1
        e g v*A^8 := by
  unfold leading1
  simp only [SmallGap.ReducedLayers.low1_200_expansion, SmallGap.ReducedLayers.low1_110_expansion,
    SmallGap.ReducedLayers.low1_101_expansion, SmallGap.ReducedLayers.low1_011_expansion,
    SmallGap.ReducedLayers.low1_002_expansion, FullLow2120.leading1, FullLow2121.leading1,
    FullLow2122.leading1, FullLow2123.leading1, FullLow2124.leading1, FullLow2125.leading1,
    FullLow2126.leading1, FullLow2127.leading1, FullLow2128.leading1]
  generalize (e+g)^3 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading1_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading1 A e g v := by
  have h200 := SmallGap.Low1.nonnegative200 hA he hg hv
  have h110 := SmallGap.Low1.nonnegative110 hA he hg hv
  have h101 := SmallGap.Low1.nonnegative101 hA he hg hv
  have h011 := SmallGap.Low1.nonnegative011 hA he hg hv
  have h002 := SmallGap.Low1.nonnegative002 hA he hg hv
  unfold leading1
  positivity

/-- Every higher-gap coefficient is positive data on the closed orthant. -/
theorem remainder_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder A e f g v := by
  have h0 := FullLow2120.remainder_nonnegative he hf hg hv
  have h1 := FullLow2121.remainder_nonnegative he hf hg hv
  have h2 := FullLow2122.remainder_nonnegative he hf hg hv
  have h3 := FullLow2123.remainder_nonnegative he hf hg hv
  have h4 := FullLow2124.remainder_nonnegative he hf hg hv
  have h5 := FullLow2125.remainder_nonnegative he hf hg hv
  have h6 := FullLow2126.remainder_nonnegative he hf hg hv
  have h7 := FullLow2127.remainder_nonnegative he hf hg hv
  have h8 := FullLow2128.remainder_nonnegative he hf hg hv
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

end FullLow212
end
end SPR.N6.Tail.CoreEndpoint
