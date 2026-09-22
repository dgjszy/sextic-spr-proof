import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow302Identity0
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow302Identity1
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow302Identity2
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow302Identity3
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow302Identity4
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow302Identity5
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow302Identity6
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow302Source
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace FullLow302


def leading0 (A e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.Low0.coefficient100 A e g v*(A+e)^2+4*SmallGap.Low0.coefficient001 A e g
    v*(A+e)^1)

def leading1 (A e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.Low1.coefficient200 A e g v*(A+e)^2+3*SmallGap.Low1.coefficient101 A e g
    v*(A+e)^1+1*SmallGap.Low1.coefficient002 A e g v)

def remainder (A e f g v : ℝ) : ℝ :=
  FullLow3020.remainder e f g v+FullLow3021.remainder e f g v*A+FullLow3022.remainder e f g
    v*A^2+FullLow3023.remainder e f g v*A^3+FullLow3024.remainder e f g
    v*A^4+FullLow3025.remainder e f g v*A^5+FullLow3026.remainder e f g v*A^6








/-- Binomial expansion of the already certified reduced factor. -/
theorem leading0_expansion (A e g v : ℝ) :
    leading0 A e g v =
      FullLow3020.leading0 e g v+FullLow3021.leading0 e g v*A+FullLow3022.leading0 e g
        v*A^2+FullLow3023.leading0 e g v*A^3+FullLow3024.leading0 e g v*A^4+FullLow3025.leading0 e
        g v*A^5+FullLow3026.leading0 e g v*A^6 := by
  unfold leading0
  simp only [SmallGap.ReducedLayers.low0_100_expansion, SmallGap.ReducedLayers.low0_001_expansion,
    FullLow3020.leading0, FullLow3021.leading0, FullLow3022.leading0, FullLow3023.leading0,
    FullLow3024.leading0, FullLow3025.leading0, FullLow3026.leading0]
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
      FullLow3020.leading1 e g v+FullLow3021.leading1 e g v*A+FullLow3022.leading1 e g
        v*A^2+FullLow3023.leading1 e g v*A^3+FullLow3024.leading1 e g v*A^4+FullLow3025.leading1 e
        g v*A^5+FullLow3026.leading1 e g v*A^6 := by
  unfold leading1
  simp only [SmallGap.ReducedLayers.low1_200_expansion, SmallGap.ReducedLayers.low1_101_expansion,
    SmallGap.ReducedLayers.low1_002_expansion, FullLow3020.leading1, FullLow3021.leading1,
    FullLow3022.leading1, FullLow3023.leading1, FullLow3024.leading1, FullLow3025.leading1,
    FullLow3026.leading1]
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
  have h0 := FullLow3020.remainder_nonnegative he hf hg hv
  have h1 := FullLow3021.remainder_nonnegative he hf hg hv
  have h2 := FullLow3022.remainder_nonnegative he hf hg hv
  have h3 := FullLow3023.remainder_nonnegative he hf hg hv
  have h4 := FullLow3024.remainder_nonnegative he hf hg hv
  have h5 := FullLow3025.remainder_nonnegative he hf hg hv
  have h6 := FullLow3026.remainder_nonnegative he hf hg hv
  unfold remainder
  positivity

/-- Entire source identity, including all low-gap and high-gap terms. -/
theorem decomposition (A e f g v : ℝ) :
    source A e f g v = leading0 A e g v + f*leading1 A e g v +
      f^2*remainder A e f g v := by
  unfold source remainder
  rw [decomposition0, decomposition1, decomposition2, decomposition3, decomposition4,
    decomposition5, decomposition6, leading0_expansion, leading1_expansion]
  ring

/-- The actual normalized source is nonnegative on the complete closed orthant. -/
theorem nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ source A e f g v := by
  rw [decomposition]
  exact add_nonneg
    (add_nonneg (leading0_nonnegative hA he hg hv)
      (mul_nonneg hf (leading1_nonnegative hA he hg hv)))
    (mul_nonneg (sq_nonneg f) (remainder_nonnegative hA he hf hg hv))

end FullLow302
end
end SPR.N6.Tail.CoreEndpoint
