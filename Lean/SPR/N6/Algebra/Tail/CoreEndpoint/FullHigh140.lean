import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh140Identity0
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh140Identity1
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh140Identity2
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh140Identity3
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh140Identity4
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh140Identity5
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh140Identity6
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh140Identity7
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh140Identity8
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh140Identity9
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh140Identity10
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh140Source
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0
set_option profiler true
set_option profiler.threshold 1000

namespace FullHigh140

def leading0 (A e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.High0.coefficient100 A e g v*(A+e)^8+4*SmallGap.High0.coefficient010 A e
    g v*(A+e)^6)

def leading1 (A e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.High1.coefficient110 A e g v*(A+e)^6+3*SmallGap.High1.coefficient020 A e g
    v*(A+e)^4)

def remainder (A e f g v : ℝ) : ℝ :=
  FullHigh1400.remainder e f g v+FullHigh1401.remainder e f g v*A+FullHigh1402.remainder e f g
    v*A^2+FullHigh1403.remainder e f g v*A^3+FullHigh1404.remainder e f g
    v*A^4+FullHigh1405.remainder e f g v*A^5+FullHigh1406.remainder e f g
    v*A^6+FullHigh1407.remainder e f g v*A^7+FullHigh1408.remainder e f g
    v*A^8+FullHigh1409.remainder e f g v*A^9+FullHigh14010.remainder e f g v*A^10

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading0_expansion (A e g v : ℝ) :
    leading0 A e g v =
      FullHigh1400.leading0 e g v+FullHigh1401.leading0 e g v*A+FullHigh1402.leading0 e g
        v*A^2+FullHigh1403.leading0 e g v*A^3+FullHigh1404.leading0 e g
        v*A^4+FullHigh1405.leading0 e g v*A^5+FullHigh1406.leading0 e g
        v*A^6+FullHigh1407.leading0 e g v*A^7+FullHigh1408.leading0 e g
        v*A^8+FullHigh1409.leading0 e g v*A^9+FullHigh14010.leading0 e g v*A^10 := by
  unfold leading0
  simp only [SmallGap.ReducedLayers.high0_100_expansion,
    SmallGap.ReducedLayers.high0_010_expansion, FullHigh1400.leading0, FullHigh1401.leading0,
    FullHigh1402.leading0, FullHigh1403.leading0, FullHigh1404.leading0, FullHigh1405.leading0,
    FullHigh1406.leading0, FullHigh1407.leading0, FullHigh1408.leading0, FullHigh1409.leading0,
    FullHigh14010.leading0]
  generalize e*g*(e+g)^6 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading0_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading0 A e g v := by
  have h100 := SmallGap.High0.nonnegative100 hA he hg hv
  have h010 := SmallGap.High0.nonnegative010 hA he hg hv
  unfold leading0
  positivity

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading1_expansion (A e g v : ℝ) :
    leading1 A e g v =
      FullHigh1400.leading1 e g v+FullHigh1401.leading1 e g v*A+FullHigh1402.leading1 e g
        v*A^2+FullHigh1403.leading1 e g v*A^3+FullHigh1404.leading1 e g
        v*A^4+FullHigh1405.leading1 e g v*A^5+FullHigh1406.leading1 e g
        v*A^6+FullHigh1407.leading1 e g v*A^7+FullHigh1408.leading1 e g
        v*A^8+FullHigh1409.leading1 e g v*A^9+FullHigh14010.leading1 e g v*A^10 := by
  unfold leading1
  simp only [SmallGap.ReducedLayers.high1_110_expansion,
    SmallGap.ReducedLayers.high1_020_expansion, FullHigh1400.leading1, FullHigh1401.leading1,
    FullHigh1402.leading1, FullHigh1403.leading1, FullHigh1404.leading1, FullHigh1405.leading1,
    FullHigh1406.leading1, FullHigh1407.leading1, FullHigh1408.leading1, FullHigh1409.leading1,
    FullHigh14010.leading1]
  generalize (e+g)^3 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading1_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading1 A e g v := by
  have h110 := SmallGap.High1.nonnegative110 hA he hg hv
  have h020 := SmallGap.High1.nonnegative020 hA he hg hv
  unfold leading1
  positivity

/-- Every higher-gap coefficient is positive data on the closed orthant. -/
theorem remainder_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder A e f g v := by
  have h0 := FullHigh1400.remainder_nonnegative he hf hg hv
  have h1 := FullHigh1401.remainder_nonnegative he hf hg hv
  have h2 := FullHigh1402.remainder_nonnegative he hf hg hv
  have h3 := FullHigh1403.remainder_nonnegative he hf hg hv
  have h4 := FullHigh1404.remainder_nonnegative he hf hg hv
  have h5 := FullHigh1405.remainder_nonnegative he hf hg hv
  have h6 := FullHigh1406.remainder_nonnegative he hf hg hv
  have h7 := FullHigh1407.remainder_nonnegative he hf hg hv
  have h8 := FullHigh1408.remainder_nonnegative he hf hg hv
  have h9 := FullHigh1409.remainder_nonnegative he hf hg hv
  have h10 := FullHigh14010.remainder_nonnegative he hf hg hv
  unfold remainder
  positivity

/-- Entire source identity, including all low-gap and high-gap terms. -/
theorem decomposition (A e f g v : ℝ) :
    source A e f g v = leading0 A e g v + f*leading1 A e g v +
      f^2*remainder A e f g v := by
  unfold source remainder
  rw [decomposition0, decomposition1, decomposition2, decomposition3, decomposition4,
    decomposition5, decomposition6, decomposition7, decomposition8, decomposition9,
    decomposition10, leading0_expansion, leading1_expansion]
  ring

/-- The actual normalized source is nonnegative on the complete closed orthant. -/
theorem nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ source A e f g v := by
  rw [decomposition]
  exact add_nonneg
    (add_nonneg (leading0_nonnegative hA he hg hv)
      (mul_nonneg hf (leading1_nonnegative hA he hg hv)))
    (mul_nonneg (sq_nonneg f) (remainder_nonnegative hA he hf hg hv))

end FullHigh140
end
end SPR.N6.Tail.CoreEndpoint
