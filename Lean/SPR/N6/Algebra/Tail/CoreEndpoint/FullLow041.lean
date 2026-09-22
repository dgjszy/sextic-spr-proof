import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Identity0
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Identity1
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Identity2
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Identity3
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Identity4
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Identity5
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Identity6
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Identity7
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Identity8
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Identity9
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Identity10
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Identity11
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Identity12
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Identity13
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Source
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace FullLow041

def leading0 (A e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.Low0.coefficient010 A e g v*(A+e)^7+1*SmallGap.Low0.coefficient001 A e g
    v*(A+e)^8)

def leading1 (A e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.Low1.coefficient020 A e g v*(A+e)^5+1*SmallGap.Low1.coefficient011 A e g
    v*(A+e)^6)

def remainder (A e f g v : ℝ) : ℝ :=
  FullLow0410.remainder e f g v+FullLow0411.remainder e f g v*A+FullLow0412.remainder e f g
    v*A^2+FullLow0413.remainder e f g v*A^3+FullLow0414.remainder e f g
    v*A^4+FullLow0415.remainder e f g v*A^5+FullLow0416.remainder e f g
    v*A^6+FullLow0417.remainder e f g v*A^7+FullLow0418.remainder e f g
    v*A^8+FullLow0419.remainder e f g v*A^9+FullLow04110.remainder e f g
    v*A^10+FullLow04111.remainder e f g v*A^11+FullLow04112.remainder e f g
    v*A^12+FullLow04113.remainder e f g v*A^13

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading0_expansion (A e g v : ℝ) :
    leading0 A e g v =
      FullLow0410.leading0 e g v+FullLow0411.leading0 e g v*A+FullLow0412.leading0 e g
        v*A^2+FullLow0413.leading0 e g v*A^3+FullLow0414.leading0 e g v*A^4+FullLow0415.leading0 e
        g v*A^5+FullLow0416.leading0 e g v*A^6+FullLow0417.leading0 e g v*A^7+FullLow0418.leading0
        e g v*A^8+FullLow0419.leading0 e g v*A^9+FullLow04110.leading0 e g
        v*A^10+FullLow04111.leading0 e g v*A^11+FullLow04112.leading0 e g
        v*A^12+FullLow04113.leading0 e g v*A^13 := by
  unfold leading0
  simp only [SmallGap.ReducedLayers.low0_010_expansion, SmallGap.ReducedLayers.low0_001_expansion,
    FullLow0410.leading0, FullLow0411.leading0, FullLow0412.leading0, FullLow0413.leading0,
    FullLow0414.leading0, FullLow0415.leading0, FullLow0416.leading0, FullLow0417.leading0,
    FullLow0418.leading0, FullLow0419.leading0, FullLow04110.leading0, FullLow04111.leading0,
    FullLow04112.leading0, FullLow04113.leading0]
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
      FullLow0410.leading1 e g v+FullLow0411.leading1 e g v*A+FullLow0412.leading1 e g
        v*A^2+FullLow0413.leading1 e g v*A^3+FullLow0414.leading1 e g v*A^4+FullLow0415.leading1 e
        g v*A^5+FullLow0416.leading1 e g v*A^6+FullLow0417.leading1 e g v*A^7+FullLow0418.leading1
        e g v*A^8+FullLow0419.leading1 e g v*A^9+FullLow04110.leading1 e g
        v*A^10+FullLow04111.leading1 e g v*A^11+FullLow04112.leading1 e g
        v*A^12+FullLow04113.leading1 e g v*A^13 := by
  unfold leading1
  simp only [SmallGap.ReducedLayers.low1_020_expansion, SmallGap.ReducedLayers.low1_011_expansion,
    FullLow0410.leading1, FullLow0411.leading1, FullLow0412.leading1, FullLow0413.leading1,
    FullLow0414.leading1, FullLow0415.leading1, FullLow0416.leading1, FullLow0417.leading1,
    FullLow0418.leading1, FullLow0419.leading1, FullLow04110.leading1, FullLow04111.leading1,
    FullLow04112.leading1, FullLow04113.leading1]
  generalize (e+g)^3 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading1_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading1 A e g v := by
  have h020 := SmallGap.Low1.nonnegative020 hA he hg hv
  have h011 := SmallGap.Low1.nonnegative011 hA he hg hv
  unfold leading1
  positivity

/-- Every higher-gap coefficient is positive data on the closed orthant. -/
theorem remainder_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder A e f g v := by
  have h0 := FullLow0410.remainder_nonnegative he hf hg hv
  have h1 := FullLow0411.remainder_nonnegative he hf hg hv
  have h2 := FullLow0412.remainder_nonnegative he hf hg hv
  have h3 := FullLow0413.remainder_nonnegative he hf hg hv
  have h4 := FullLow0414.remainder_nonnegative he hf hg hv
  have h5 := FullLow0415.remainder_nonnegative he hf hg hv
  have h6 := FullLow0416.remainder_nonnegative he hf hg hv
  have h7 := FullLow0417.remainder_nonnegative he hf hg hv
  have h8 := FullLow0418.remainder_nonnegative he hf hg hv
  have h9 := FullLow0419.remainder_nonnegative he hf hg hv
  have h10 := FullLow04110.remainder_nonnegative he hf hg hv
  have h11 := FullLow04111.remainder_nonnegative he hf hg hv
  have h12 := FullLow04112.remainder_nonnegative he hf hg hv
  have h13 := FullLow04113.remainder_nonnegative he hf hg hv
  unfold remainder
  positivity

/-- Entire source identity, including all low-gap and high-gap terms. -/
theorem decomposition (A e f g v : ℝ) :
    source A e f g v = leading0 A e g v + f*leading1 A e g v +
      f^2*remainder A e f g v := by
  unfold source remainder
  rw [decomposition0, decomposition1, decomposition2, decomposition3, decomposition4,
    decomposition5, decomposition6, decomposition7, decomposition8, decomposition9,
    decomposition10, decomposition11, decomposition12, decomposition13, leading0_expansion,
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

end FullLow041
end
end SPR.N6.Tail.CoreEndpoint
