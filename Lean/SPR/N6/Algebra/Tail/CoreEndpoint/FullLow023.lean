import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Identity0
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Identity1
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Identity2
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Identity3
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Identity4
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Identity5
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Identity6
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Identity7
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Identity8
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Identity9
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Identity10
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Identity11
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Source
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace FullLow023

def leading0 (A e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.Low0.coefficient010 A e g v*(A+e)^5+6*SmallGap.Low0.coefficient001 A e g
    v*(A+e)^6)

def leading1 (A e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.Low1.coefficient020 A e g v*(A+e)^3+3*SmallGap.Low1.coefficient011 A e g
    v*(A+e)^4+3*SmallGap.Low1.coefficient002 A e g v*(A+e)^5)

def remainder (A e f g v : ℝ) : ℝ :=
  FullLow0230.remainder e f g v+FullLow0231.remainder e f g v*A+FullLow0232.remainder e f g
    v*A^2+FullLow0233.remainder e f g v*A^3+FullLow0234.remainder e f g
    v*A^4+FullLow0235.remainder e f g v*A^5+FullLow0236.remainder e f g
    v*A^6+FullLow0237.remainder e f g v*A^7+FullLow0238.remainder e f g
    v*A^8+FullLow0239.remainder e f g v*A^9+FullLow02310.remainder e f g
    v*A^10+FullLow02311.remainder e f g v*A^11

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading0_expansion (A e g v : ℝ) :
    leading0 A e g v =
      FullLow0230.leading0 e g v+FullLow0231.leading0 e g v*A+FullLow0232.leading0 e g
        v*A^2+FullLow0233.leading0 e g v*A^3+FullLow0234.leading0 e g v*A^4+FullLow0235.leading0 e
        g v*A^5+FullLow0236.leading0 e g v*A^6+FullLow0237.leading0 e g v*A^7+FullLow0238.leading0
        e g v*A^8+FullLow0239.leading0 e g v*A^9+FullLow02310.leading0 e g
        v*A^10+FullLow02311.leading0 e g v*A^11 := by
  unfold leading0
  simp only [SmallGap.ReducedLayers.low0_010_expansion, SmallGap.ReducedLayers.low0_001_expansion,
    FullLow0230.leading0, FullLow0231.leading0, FullLow0232.leading0, FullLow0233.leading0,
    FullLow0234.leading0, FullLow0235.leading0, FullLow0236.leading0, FullLow0237.leading0,
    FullLow0238.leading0, FullLow0239.leading0, FullLow02310.leading0, FullLow02311.leading0]
  generalize e*g*(e+g)^6 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading0_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading0 A e g v := by
  have h010 := SmallGap.Low0.nonnegative010 hA he hg hv
  have h001 := SmallGap.Low0.nonnegative001 hA he hg hv
  unfold leading0
  positivity

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading1_expansion (A e g v : ℝ) :
    leading1 A e g v =
      FullLow0230.leading1 e g v+FullLow0231.leading1 e g v*A+FullLow0232.leading1 e g
        v*A^2+FullLow0233.leading1 e g v*A^3+FullLow0234.leading1 e g v*A^4+FullLow0235.leading1 e
        g v*A^5+FullLow0236.leading1 e g v*A^6+FullLow0237.leading1 e g v*A^7+FullLow0238.leading1
        e g v*A^8+FullLow0239.leading1 e g v*A^9+FullLow02310.leading1 e g
        v*A^10+FullLow02311.leading1 e g v*A^11 := by
  unfold leading1
  simp only [SmallGap.ReducedLayers.low1_020_expansion, SmallGap.ReducedLayers.low1_011_expansion,
    SmallGap.ReducedLayers.low1_002_expansion, FullLow0230.leading1, FullLow0231.leading1,
    FullLow0232.leading1, FullLow0233.leading1, FullLow0234.leading1, FullLow0235.leading1,
    FullLow0236.leading1, FullLow0237.leading1, FullLow0238.leading1, FullLow0239.leading1,
    FullLow02310.leading1, FullLow02311.leading1]
  generalize (e+g)^3 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading1_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading1 A e g v := by
  have h020 := SmallGap.Low1.nonnegative020 hA he hg hv
  have h011 := SmallGap.Low1.nonnegative011 hA he hg hv
  have h002 := SmallGap.Low1.nonnegative002 hA he hg hv
  unfold leading1
  positivity

/-- Every higher-gap coefficient is positive data on the closed orthant. -/
theorem remainder_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder A e f g v := by
  have h0 := FullLow0230.remainder_nonnegative he hf hg hv
  have h1 := FullLow0231.remainder_nonnegative he hf hg hv
  have h2 := FullLow0232.remainder_nonnegative he hf hg hv
  have h3 := FullLow0233.remainder_nonnegative he hf hg hv
  have h4 := FullLow0234.remainder_nonnegative he hf hg hv
  have h5 := FullLow0235.remainder_nonnegative he hf hg hv
  have h6 := FullLow0236.remainder_nonnegative he hf hg hv
  have h7 := FullLow0237.remainder_nonnegative he hf hg hv
  have h8 := FullLow0238.remainder_nonnegative he hf hg hv
  have h9 := FullLow0239.remainder_nonnegative he hf hg hv
  have h10 := FullLow02310.remainder_nonnegative he hf hg hv
  have h11 := FullLow02311.remainder_nonnegative he hf hg hv
  unfold remainder
  positivity

/-- Entire source identity, including all low-gap and high-gap terms. -/
theorem decomposition (A e f g v : ℝ) :
    source A e f g v = leading0 A e g v + f*leading1 A e g v +
      f^2*remainder A e f g v := by
  unfold source remainder
  rw [decomposition0, decomposition1, decomposition2, decomposition3, decomposition4,
    decomposition5, decomposition6, decomposition7, decomposition8, decomposition9,
    decomposition10, decomposition11, leading0_expansion, leading1_expansion]
  ring

/-- The actual normalized source is nonnegative on the complete closed orthant. -/
theorem nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ source A e f g v := by
  rw [decomposition]
  exact add_nonneg
    (add_nonneg (leading0_nonnegative hA he hg hv)
      (mul_nonneg hf (leading1_nonnegative hA he hg hv)))
    (mul_nonneg (sq_nonneg f) (remainder_nonnegative hA he hf hg hv))

end FullLow023
end
end SPR.N6.Tail.CoreEndpoint
