import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh221Identity0
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh221Identity1
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh221Identity2
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh221Identity3
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh221Identity4
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh221Identity5
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh221Identity6
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh221Identity7
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh221Source
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace FullHigh221

def leading0 (A e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.High0.coefficient100 A e g v*(A+e)^5+12*SmallGap.High0.coefficient010 A
    e g v*(A+e)^3+6*SmallGap.High0.coefficient001 A e g v*(A+e)^4)

def leading1 (A e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.High1.coefficient200 A e g v*(A+e)^5+6*SmallGap.High1.coefficient110 A e g
    v*(A+e)^3+3*SmallGap.High1.coefficient101 A e g v*(A+e)^4+3*SmallGap.High1.coefficient020 A e
    g v*(A+e)^1+3*SmallGap.High1.coefficient011 A e g v*(A+e)^2)

def remainder (A e f g v : ℝ) : ℝ :=
  FullHigh2210.remainder e f g v+FullHigh2211.remainder e f g v*A+FullHigh2212.remainder e f g
    v*A^2+FullHigh2213.remainder e f g v*A^3+FullHigh2214.remainder e f g
    v*A^4+FullHigh2215.remainder e f g v*A^5+FullHigh2216.remainder e f g
    v*A^6+FullHigh2217.remainder e f g v*A^7

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading0_expansion (A e g v : ℝ) :
    leading0 A e g v =
      FullHigh2210.leading0 e g v+FullHigh2211.leading0 e g v*A+FullHigh2212.leading0 e g
        v*A^2+FullHigh2213.leading0 e g v*A^3+FullHigh2214.leading0 e g
        v*A^4+FullHigh2215.leading0 e g v*A^5+FullHigh2216.leading0 e g
        v*A^6+FullHigh2217.leading0 e g v*A^7 := by
  unfold leading0
  simp only [SmallGap.ReducedLayers.high0_100_expansion,
    SmallGap.ReducedLayers.high0_010_expansion, SmallGap.ReducedLayers.high0_001_expansion,
    FullHigh2210.leading0, FullHigh2211.leading0, FullHigh2212.leading0, FullHigh2213.leading0,
    FullHigh2214.leading0, FullHigh2215.leading0, FullHigh2216.leading0, FullHigh2217.leading0]
  generalize e*g*(e+g)^6 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading0_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading0 A e g v := by
  have h100 := SmallGap.High0.nonnegative100 hA he hg hv
  have h010 := SmallGap.High0.nonnegative010 hA he hg hv
  have h001 := SmallGap.High0.nonnegative001 hA he hg hv
  unfold leading0
  positivity

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading1_expansion (A e g v : ℝ) :
    leading1 A e g v =
      FullHigh2210.leading1 e g v+FullHigh2211.leading1 e g v*A+FullHigh2212.leading1 e g
        v*A^2+FullHigh2213.leading1 e g v*A^3+FullHigh2214.leading1 e g
        v*A^4+FullHigh2215.leading1 e g v*A^5+FullHigh2216.leading1 e g
        v*A^6+FullHigh2217.leading1 e g v*A^7 := by
  unfold leading1
  simp only [SmallGap.ReducedLayers.high1_200_expansion,
    SmallGap.ReducedLayers.high1_110_expansion, SmallGap.ReducedLayers.high1_101_expansion,
    SmallGap.ReducedLayers.high1_020_expansion, SmallGap.ReducedLayers.high1_011_expansion,
    FullHigh2210.leading1, FullHigh2211.leading1, FullHigh2212.leading1, FullHigh2213.leading1,
    FullHigh2214.leading1, FullHigh2215.leading1, FullHigh2216.leading1, FullHigh2217.leading1]
  generalize (e+g)^3 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading1_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading1 A e g v := by
  have h200 := SmallGap.High1.nonnegative200 hA he hg hv
  have h110 := SmallGap.High1.nonnegative110 hA he hg hv
  have h101 := SmallGap.High1.nonnegative101 hA he hg hv
  have h020 := SmallGap.High1.nonnegative020 hA he hg hv
  have h011 := SmallGap.High1.nonnegative011 hA he hg hv
  unfold leading1
  positivity

/-- Every higher-gap coefficient is positive data on the closed orthant. -/
theorem remainder_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder A e f g v := by
  have h0 := FullHigh2210.remainder_nonnegative he hf hg hv
  have h1 := FullHigh2211.remainder_nonnegative he hf hg hv
  have h2 := FullHigh2212.remainder_nonnegative he hf hg hv
  have h3 := FullHigh2213.remainder_nonnegative he hf hg hv
  have h4 := FullHigh2214.remainder_nonnegative he hf hg hv
  have h5 := FullHigh2215.remainder_nonnegative he hf hg hv
  have h6 := FullHigh2216.remainder_nonnegative he hf hg hv
  have h7 := FullHigh2217.remainder_nonnegative he hf hg hv
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

end FullHigh221
end
end SPR.N6.Tail.CoreEndpoint
