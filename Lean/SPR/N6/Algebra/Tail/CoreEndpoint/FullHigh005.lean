import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh005Identity0
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh005Identity1
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh005Identity2
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh005Identity3
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh005Identity4
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh005Identity5
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh005Identity6
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh005Identity7
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh005Source
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace FullHigh005

def leading0 (A e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.High0.coefficient001 A e g v*(A+e)^4)

def leading1 (A e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.High1.coefficient002 A e g v*(A+e)^3)

def remainder (A e f g v : ℝ) : ℝ :=
  FullHigh0050.remainder e f g v+FullHigh0051.remainder e f g v*A+FullHigh0052.remainder e f g
    v*A^2+FullHigh0053.remainder e f g v*A^3+FullHigh0054.remainder e f g
    v*A^4+FullHigh0055.remainder e f g v*A^5+FullHigh0056.remainder e f g
    v*A^6+FullHigh0057.remainder e f g v*A^7









/-- Binomial expansion of the already certified reduced factor. -/
theorem leading0_expansion (A e g v : ℝ) :
    leading0 A e g v =
      FullHigh0050.leading0 e g v+FullHigh0051.leading0 e g v*A+FullHigh0052.leading0 e g
        v*A^2+FullHigh0053.leading0 e g v*A^3+FullHigh0054.leading0 e g
        v*A^4+FullHigh0055.leading0 e g v*A^5+FullHigh0056.leading0 e g
        v*A^6+FullHigh0057.leading0 e g v*A^7 := by
  unfold leading0
  simp only [SmallGap.ReducedLayers.high0_001_expansion, FullHigh0050.leading0,
    FullHigh0051.leading0, FullHigh0052.leading0, FullHigh0053.leading0, FullHigh0054.leading0,
    FullHigh0055.leading0, FullHigh0056.leading0, FullHigh0057.leading0]
  generalize e*g*(e+g)^6 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading0_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading0 A e g v := by
  have h001 := SmallGap.High0.nonnegative001 hA he hg hv
  unfold leading0
  positivity

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading1_expansion (A e g v : ℝ) :
    leading1 A e g v =
      FullHigh0050.leading1 e g v+FullHigh0051.leading1 e g v*A+FullHigh0052.leading1 e g
        v*A^2+FullHigh0053.leading1 e g v*A^3+FullHigh0054.leading1 e g
        v*A^4+FullHigh0055.leading1 e g v*A^5+FullHigh0056.leading1 e g
        v*A^6+FullHigh0057.leading1 e g v*A^7 := by
  unfold leading1
  simp only [SmallGap.ReducedLayers.high1_002_expansion, FullHigh0050.leading1,
    FullHigh0051.leading1, FullHigh0052.leading1, FullHigh0053.leading1, FullHigh0054.leading1,
    FullHigh0055.leading1, FullHigh0056.leading1, FullHigh0057.leading1]
  generalize (e+g)^3 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading1_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading1 A e g v := by
  have h002 := SmallGap.High1.nonnegative002 hA he hg hv
  unfold leading1
  positivity

/-- Every higher-gap coefficient is positive data on the closed orthant. -/
theorem remainder_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder A e f g v := by
  have h0 := FullHigh0050.remainder_nonnegative he hf hg hv
  have h1 := FullHigh0051.remainder_nonnegative he hf hg hv
  have h2 := FullHigh0052.remainder_nonnegative he hf hg hv
  have h3 := FullHigh0053.remainder_nonnegative he hf hg hv
  have h4 := FullHigh0054.remainder_nonnegative he hf hg hv
  have h5 := FullHigh0055.remainder_nonnegative he hf hg hv
  have h6 := FullHigh0056.remainder_nonnegative he hf hg hv
  have h7 := FullHigh0057.remainder_nonnegative he hf hg hv
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

end FullHigh005
end
end SPR.N6.Tail.CoreEndpoint
