import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh104Identity0
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh104Identity1
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh104Identity2
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh104Identity3
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh104Identity4
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh104Identity5
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh104Identity6
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh104Source
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace FullHigh104

def leading0 (A e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.High0.coefficient100 A e g v*(A+e)^4+4*SmallGap.High0.coefficient001 A e
    g v*(A+e)^3)

def leading1 (A e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.High1.coefficient101 A e g v*(A+e)^3+3*SmallGap.High1.coefficient002 A e g
    v*(A+e)^2)

def remainder (A e f g v : ℝ) : ℝ :=
  FullHigh1040.remainder e f g v+FullHigh1041.remainder e f g v*A+FullHigh1042.remainder e f g
    v*A^2+FullHigh1043.remainder e f g v*A^3+FullHigh1044.remainder e f g
    v*A^4+FullHigh1045.remainder e f g v*A^5+FullHigh1046.remainder e f g v*A^6

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading0_expansion (A e g v : ℝ) :
    leading0 A e g v =
      FullHigh1040.leading0 e g v+FullHigh1041.leading0 e g v*A+FullHigh1042.leading0 e g
        v*A^2+FullHigh1043.leading0 e g v*A^3+FullHigh1044.leading0 e g
        v*A^4+FullHigh1045.leading0 e g v*A^5+FullHigh1046.leading0 e g v*A^6 := by
  unfold leading0
  simp only [SmallGap.ReducedLayers.high0_100_expansion,
    SmallGap.ReducedLayers.high0_001_expansion, FullHigh1040.leading0, FullHigh1041.leading0,
    FullHigh1042.leading0, FullHigh1043.leading0, FullHigh1044.leading0, FullHigh1045.leading0,
    FullHigh1046.leading0]
  generalize e*g*(e+g)^6 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading0_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading0 A e g v := by
  have h100 := SmallGap.High0.nonnegative100 hA he hg hv
  have h001 := SmallGap.High0.nonnegative001 hA he hg hv
  unfold leading0
  positivity

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading1_expansion (A e g v : ℝ) :
    leading1 A e g v =
      FullHigh1040.leading1 e g v+FullHigh1041.leading1 e g v*A+FullHigh1042.leading1 e g
        v*A^2+FullHigh1043.leading1 e g v*A^3+FullHigh1044.leading1 e g
        v*A^4+FullHigh1045.leading1 e g v*A^5+FullHigh1046.leading1 e g v*A^6 := by
  unfold leading1
  simp only [SmallGap.ReducedLayers.high1_101_expansion,
    SmallGap.ReducedLayers.high1_002_expansion, FullHigh1040.leading1, FullHigh1041.leading1,
    FullHigh1042.leading1, FullHigh1043.leading1, FullHigh1044.leading1, FullHigh1045.leading1,
    FullHigh1046.leading1]
  generalize (e+g)^3 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading1_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading1 A e g v := by
  have h101 := SmallGap.High1.nonnegative101 hA he hg hv
  have h002 := SmallGap.High1.nonnegative002 hA he hg hv
  unfold leading1
  positivity

/-- Every higher-gap coefficient is positive data on the closed orthant. -/
theorem remainder_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder A e f g v := by
  have h0 := FullHigh1040.remainder_nonnegative he hf hg hv
  have h1 := FullHigh1041.remainder_nonnegative he hf hg hv
  have h2 := FullHigh1042.remainder_nonnegative he hf hg hv
  have h3 := FullHigh1043.remainder_nonnegative he hf hg hv
  have h4 := FullHigh1044.remainder_nonnegative he hf hg hv
  have h5 := FullHigh1045.remainder_nonnegative he hf hg hv
  have h6 := FullHigh1046.remainder_nonnegative he hf hg hv
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

end FullHigh104
end
end SPR.N6.Tail.CoreEndpoint
