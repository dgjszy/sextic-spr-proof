import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow131Identity0
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow131Identity1
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow131Identity2
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow131Identity3
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow131Identity4
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow131Identity5
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow131Identity6
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow131Identity7
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow131Identity8
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow131Identity9
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow131Identity10
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow131Identity11
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow131Source
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace FullLow131

def leading0 (A e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.Low0.coefficient100 A e g v*(A+e)^7+12*SmallGap.Low0.coefficient010 A e
    g v*(A+e)^5+4*SmallGap.Low0.coefficient001 A e g v*(A+e)^6)

def leading1 (A e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.Low1.coefficient110 A e g v*(A+e)^5+1*SmallGap.Low1.coefficient101 A e g
    v*(A+e)^6+6*SmallGap.Low1.coefficient020 A e g v*(A+e)^3+3*SmallGap.Low1.coefficient011 A e g
    v*(A+e)^4)

def remainder (A e f g v : ℝ) : ℝ :=
  FullLow1310.remainder e f g v+FullLow1311.remainder e f g v*A+FullLow1312.remainder e f g
    v*A^2+FullLow1313.remainder e f g v*A^3+FullLow1314.remainder e f g
    v*A^4+FullLow1315.remainder e f g v*A^5+FullLow1316.remainder e f g
    v*A^6+FullLow1317.remainder e f g v*A^7+FullLow1318.remainder e f g
    v*A^8+FullLow1319.remainder e f g v*A^9+FullLow13110.remainder e f g
    v*A^10+FullLow13111.remainder e f g v*A^11

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading0_expansion (A e g v : ℝ) :
    leading0 A e g v =
      FullLow1310.leading0 e g v+FullLow1311.leading0 e g v*A+FullLow1312.leading0 e g
        v*A^2+FullLow1313.leading0 e g v*A^3+FullLow1314.leading0 e g v*A^4+FullLow1315.leading0 e
        g v*A^5+FullLow1316.leading0 e g v*A^6+FullLow1317.leading0 e g v*A^7+FullLow1318.leading0
        e g v*A^8+FullLow1319.leading0 e g v*A^9+FullLow13110.leading0 e g
        v*A^10+FullLow13111.leading0 e g v*A^11 := by
  unfold leading0
  simp only [SmallGap.ReducedLayers.low0_100_expansion, SmallGap.ReducedLayers.low0_010_expansion,
    SmallGap.ReducedLayers.low0_001_expansion, FullLow1310.leading0, FullLow1311.leading0,
    FullLow1312.leading0, FullLow1313.leading0, FullLow1314.leading0, FullLow1315.leading0,
    FullLow1316.leading0, FullLow1317.leading0, FullLow1318.leading0, FullLow1319.leading0,
    FullLow13110.leading0, FullLow13111.leading0]
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
      FullLow1310.leading1 e g v+FullLow1311.leading1 e g v*A+FullLow1312.leading1 e g
        v*A^2+FullLow1313.leading1 e g v*A^3+FullLow1314.leading1 e g v*A^4+FullLow1315.leading1 e
        g v*A^5+FullLow1316.leading1 e g v*A^6+FullLow1317.leading1 e g v*A^7+FullLow1318.leading1
        e g v*A^8+FullLow1319.leading1 e g v*A^9+FullLow13110.leading1 e g
        v*A^10+FullLow13111.leading1 e g v*A^11 := by
  unfold leading1
  simp only [SmallGap.ReducedLayers.low1_110_expansion, SmallGap.ReducedLayers.low1_101_expansion,
    SmallGap.ReducedLayers.low1_020_expansion, SmallGap.ReducedLayers.low1_011_expansion,
    FullLow1310.leading1, FullLow1311.leading1, FullLow1312.leading1, FullLow1313.leading1,
    FullLow1314.leading1, FullLow1315.leading1, FullLow1316.leading1, FullLow1317.leading1,
    FullLow1318.leading1, FullLow1319.leading1, FullLow13110.leading1, FullLow13111.leading1]
  generalize (e+g)^3 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading1_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading1 A e g v := by
  have h110 := SmallGap.Low1.nonnegative110 hA he hg hv
  have h101 := SmallGap.Low1.nonnegative101 hA he hg hv
  have h020 := SmallGap.Low1.nonnegative020 hA he hg hv
  have h011 := SmallGap.Low1.nonnegative011 hA he hg hv
  unfold leading1
  positivity

/-- Every higher-gap coefficient is positive data on the closed orthant. -/
theorem remainder_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder A e f g v := by
  have h0 := FullLow1310.remainder_nonnegative he hf hg hv
  have h1 := FullLow1311.remainder_nonnegative he hf hg hv
  have h2 := FullLow1312.remainder_nonnegative he hf hg hv
  have h3 := FullLow1313.remainder_nonnegative he hf hg hv
  have h4 := FullLow1314.remainder_nonnegative he hf hg hv
  have h5 := FullLow1315.remainder_nonnegative he hf hg hv
  have h6 := FullLow1316.remainder_nonnegative he hf hg hv
  have h7 := FullLow1317.remainder_nonnegative he hf hg hv
  have h8 := FullLow1318.remainder_nonnegative he hf hg hv
  have h9 := FullLow1319.remainder_nonnegative he hf hg hv
  have h10 := FullLow13110.remainder_nonnegative he hf hg hv
  have h11 := FullLow13111.remainder_nonnegative he hf hg hv
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

end FullLow131
end
end SPR.N6.Tail.CoreEndpoint
