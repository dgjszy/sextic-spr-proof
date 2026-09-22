import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow014Identity0
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow014Identity1
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow014Identity2
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow014Identity3
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow014Identity4
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow014Identity5
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow014Identity6
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow014Identity7
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow014Identity8
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow014Identity9
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow014Identity10
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow014Source
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace FullLow014

def leading0 (A e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.Low0.coefficient010 A e g v*(A+e)^4+4*SmallGap.Low0.coefficient001 A e g
    v*(A+e)^5)

def leading1 (A e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.Low1.coefficient011 A e g v*(A+e)^3+3*SmallGap.Low1.coefficient002 A e g
    v*(A+e)^4)

def remainder (A e f g v : ℝ) : ℝ :=
  FullLow0140.remainder e f g v+FullLow0141.remainder e f g v*A+FullLow0142.remainder e f g
    v*A^2+FullLow0143.remainder e f g v*A^3+FullLow0144.remainder e f g
    v*A^4+FullLow0145.remainder e f g v*A^5+FullLow0146.remainder e f g
    v*A^6+FullLow0147.remainder e f g v*A^7+FullLow0148.remainder e f g
    v*A^8+FullLow0149.remainder e f g v*A^9+FullLow01410.remainder e f g v*A^10

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading0_expansion (A e g v : ℝ) :
    leading0 A e g v =
      FullLow0140.leading0 e g v+FullLow0141.leading0 e g v*A+FullLow0142.leading0 e g
        v*A^2+FullLow0143.leading0 e g v*A^3+FullLow0144.leading0 e g v*A^4+FullLow0145.leading0 e
        g v*A^5+FullLow0146.leading0 e g v*A^6+FullLow0147.leading0 e g v*A^7+FullLow0148.leading0
        e g v*A^8+FullLow0149.leading0 e g v*A^9+FullLow01410.leading0 e g v*A^10 := by
  unfold leading0
  simp only [SmallGap.ReducedLayers.low0_010_expansion, SmallGap.ReducedLayers.low0_001_expansion,
    FullLow0140.leading0, FullLow0141.leading0, FullLow0142.leading0, FullLow0143.leading0,
    FullLow0144.leading0, FullLow0145.leading0, FullLow0146.leading0, FullLow0147.leading0,
    FullLow0148.leading0, FullLow0149.leading0, FullLow01410.leading0]
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
      FullLow0140.leading1 e g v+FullLow0141.leading1 e g v*A+FullLow0142.leading1 e g
        v*A^2+FullLow0143.leading1 e g v*A^3+FullLow0144.leading1 e g v*A^4+FullLow0145.leading1 e
        g v*A^5+FullLow0146.leading1 e g v*A^6+FullLow0147.leading1 e g v*A^7+FullLow0148.leading1
        e g v*A^8+FullLow0149.leading1 e g v*A^9+FullLow01410.leading1 e g v*A^10 := by
  unfold leading1
  simp only [SmallGap.ReducedLayers.low1_011_expansion, SmallGap.ReducedLayers.low1_002_expansion,
    FullLow0140.leading1, FullLow0141.leading1, FullLow0142.leading1, FullLow0143.leading1,
    FullLow0144.leading1, FullLow0145.leading1, FullLow0146.leading1, FullLow0147.leading1,
    FullLow0148.leading1, FullLow0149.leading1, FullLow01410.leading1]
  generalize (e+g)^3 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading1_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading1 A e g v := by
  have h011 := SmallGap.Low1.nonnegative011 hA he hg hv
  have h002 := SmallGap.Low1.nonnegative002 hA he hg hv
  unfold leading1
  positivity

/-- Every higher-gap coefficient is positive data on the closed orthant. -/
theorem remainder_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder A e f g v := by
  have h0 := FullLow0140.remainder_nonnegative he hf hg hv
  have h1 := FullLow0141.remainder_nonnegative he hf hg hv
  have h2 := FullLow0142.remainder_nonnegative he hf hg hv
  have h3 := FullLow0143.remainder_nonnegative he hf hg hv
  have h4 := FullLow0144.remainder_nonnegative he hf hg hv
  have h5 := FullLow0145.remainder_nonnegative he hf hg hv
  have h6 := FullLow0146.remainder_nonnegative he hf hg hv
  have h7 := FullLow0147.remainder_nonnegative he hf hg hv
  have h8 := FullLow0148.remainder_nonnegative he hf hg hv
  have h9 := FullLow0149.remainder_nonnegative he hf hg hv
  have h10 := FullLow01410.remainder_nonnegative he hf hg hv
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

end FullLow014
end
end SPR.N6.Tail.CoreEndpoint
