import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow203Identity0
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow203Identity1
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow203Identity2
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow203Identity3
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow203Identity4
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow203Identity5
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow203Identity6
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow203Identity7
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow203Source
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace FullLow203

def leading0 (A e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.Low0.coefficient100 A e g v*(A+e)^3+6*SmallGap.Low0.coefficient001 A e g
    v*(A+e)^2)

def leading1 (A e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.Low1.coefficient200 A e g v*(A+e)^3+3*SmallGap.Low1.coefficient101 A e g
    v*(A+e)^2+3*SmallGap.Low1.coefficient002 A e g v*(A+e)^1)

def remainder (A e f g v : ℝ) : ℝ :=
  FullLow2030.remainder e f g v+FullLow2031.remainder e f g v*A+FullLow2032.remainder e f g
    v*A^2+FullLow2033.remainder e f g v*A^3+FullLow2034.remainder e f g
    v*A^4+FullLow2035.remainder e f g v*A^5+FullLow2036.remainder e f g
    v*A^6+FullLow2037.remainder e f g v*A^7

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading0_expansion (A e g v : ℝ) :
    leading0 A e g v =
      FullLow2030.leading0 e g v+FullLow2031.leading0 e g v*A+FullLow2032.leading0 e g
        v*A^2+FullLow2033.leading0 e g v*A^3+FullLow2034.leading0 e g v*A^4+FullLow2035.leading0 e
        g v*A^5+FullLow2036.leading0 e g v*A^6+FullLow2037.leading0 e g v*A^7 := by
  unfold leading0
  simp only [SmallGap.ReducedLayers.low0_100_expansion, SmallGap.ReducedLayers.low0_001_expansion,
    FullLow2030.leading0, FullLow2031.leading0, FullLow2032.leading0, FullLow2033.leading0,
    FullLow2034.leading0, FullLow2035.leading0, FullLow2036.leading0, FullLow2037.leading0]
  generalize e*g*(e+g)^6 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading0_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading0 A e g v := by
  have h100 := SmallGap.Low0.nonnegative100 hA he hg hv
  have h001 := SmallGap.Low0.nonnegative001 hA he hg hv
  unfold leading0
  positivity

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading1_expansion (A e g v : ℝ) :
    leading1 A e g v =
      FullLow2030.leading1 e g v+FullLow2031.leading1 e g v*A+FullLow2032.leading1 e g
        v*A^2+FullLow2033.leading1 e g v*A^3+FullLow2034.leading1 e g v*A^4+FullLow2035.leading1 e
        g v*A^5+FullLow2036.leading1 e g v*A^6+FullLow2037.leading1 e g v*A^7 := by
  unfold leading1
  simp only [SmallGap.ReducedLayers.low1_200_expansion, SmallGap.ReducedLayers.low1_101_expansion,
    SmallGap.ReducedLayers.low1_002_expansion, FullLow2030.leading1, FullLow2031.leading1,
    FullLow2032.leading1, FullLow2033.leading1, FullLow2034.leading1, FullLow2035.leading1,
    FullLow2036.leading1, FullLow2037.leading1]
  generalize (e+g)^3 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading1_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading1 A e g v := by
  have h200 := SmallGap.Low1.nonnegative200 hA he hg hv
  have h101 := SmallGap.Low1.nonnegative101 hA he hg hv
  have h002 := SmallGap.Low1.nonnegative002 hA he hg hv
  unfold leading1
  positivity

/-- Every higher-gap coefficient is positive data on the closed orthant. -/
theorem remainder_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder A e f g v := by
  have h0 := FullLow2030.remainder_nonnegative he hf hg hv
  have h1 := FullLow2031.remainder_nonnegative he hf hg hv
  have h2 := FullLow2032.remainder_nonnegative he hf hg hv
  have h3 := FullLow2033.remainder_nonnegative he hf hg hv
  have h4 := FullLow2034.remainder_nonnegative he hf hg hv
  have h5 := FullLow2035.remainder_nonnegative he hf hg hv
  have h6 := FullLow2036.remainder_nonnegative he hf hg hv
  have h7 := FullLow2037.remainder_nonnegative he hf hg hv
  unfold remainder
  positivity

/-- Entire source identity, including all low-gap and high-gap terms. -/
theorem decomposition (A e f g v : ℝ) :
    source A e f g v = leading0 A e g v + f*leading1 A e g v +
      f^2*remainder A e f g v := by
  unfold source remainder
  rw [decomposition0, decomposition1, decomposition2, decomposition3, decomposition4,
    decomposition5, decomposition6, decomposition7, leading0_expansion, leading1_expansion]
  ring

/-- The actual normalized source is nonnegative on the complete closed orthant. -/
theorem nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ source A e f g v := by
  rw [decomposition]
  exact add_nonneg
    (add_nonneg (leading0_nonnegative hA he hg hv)
      (mul_nonneg hf (leading1_nonnegative hA he hg hv)))
    (mul_nonneg (sq_nonneg f) (remainder_nonnegative hA he hf hg hv))

end FullLow203
end
end SPR.N6.Tail.CoreEndpoint
