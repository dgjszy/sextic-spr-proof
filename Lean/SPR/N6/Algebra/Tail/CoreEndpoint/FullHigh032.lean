import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Identity0
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Identity1
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Identity2
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Identity3
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Identity4
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Identity5
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Identity6
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Identity7
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Identity8
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Identity9
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Identity10
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Data
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace FullHigh032

/-- The complete normalized source, at the same physical coordinate index. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh0320.source e f g v+FullHigh0321.source e f g v*A+FullHigh0322.source e f g
    v*A^2+FullHigh0323.source e f g v*A^3+FullHigh0324.source e f g v*A^4+FullHigh0325.source e f
    g v*A^5+FullHigh0326.source e f g v*A^6+FullHigh0327.source e f g v*A^7+FullHigh0328.source e
    f g v*A^8+FullHigh0329.source e f g v*A^9+FullHigh03210.source e f g v*A^10

def leading0 (A e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.High0.coefficient010 A e g v*(A+e)^6+4*SmallGap.High0.coefficient001 A e
    g v*(A+e)^7)

def leading1 (A e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.High1.coefficient020 A e g v*(A+e)^4+3*SmallGap.High1.coefficient011 A e g
    v*(A+e)^5+1*SmallGap.High1.coefficient002 A e g v*(A+e)^6)

def remainder (A e f g v : ℝ) : ℝ :=
  FullHigh0320.remainder e f g v+FullHigh0321.remainder e f g v*A+FullHigh0322.remainder e f g
    v*A^2+FullHigh0323.remainder e f g v*A^3+FullHigh0324.remainder e f g
    v*A^4+FullHigh0325.remainder e f g v*A^5+FullHigh0326.remainder e f g
    v*A^6+FullHigh0327.remainder e f g v*A^7+FullHigh0328.remainder e f g
    v*A^8+FullHigh0329.remainder e f g v*A^9+FullHigh03210.remainder e f g v*A^10












/-- Binomial expansion of the already certified reduced factor. -/
theorem leading0_expansion (A e g v : ℝ) :
    leading0 A e g v =
      FullHigh0320.leading0 e g v+FullHigh0321.leading0 e g v*A+FullHigh0322.leading0 e g
        v*A^2+FullHigh0323.leading0 e g v*A^3+FullHigh0324.leading0 e g
        v*A^4+FullHigh0325.leading0 e g v*A^5+FullHigh0326.leading0 e g
        v*A^6+FullHigh0327.leading0 e g v*A^7+FullHigh0328.leading0 e g
        v*A^8+FullHigh0329.leading0 e g v*A^9+FullHigh03210.leading0 e g v*A^10 := by
  unfold leading0
  simp only [SmallGap.ReducedLayers.high0_010_expansion,
    SmallGap.ReducedLayers.high0_001_expansion, FullHigh0320.leading0, FullHigh0321.leading0,
    FullHigh0322.leading0, FullHigh0323.leading0, FullHigh0324.leading0, FullHigh0325.leading0,
    FullHigh0326.leading0, FullHigh0327.leading0, FullHigh0328.leading0, FullHigh0329.leading0,
    FullHigh03210.leading0]
  generalize e*g*(e+g)^6 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading0_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading0 A e g v := by
  have h010 := SmallGap.High0.nonnegative010 hA he hg hv
  have h001 := SmallGap.High0.nonnegative001 hA he hg hv
  unfold leading0
  positivity

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading1_expansion (A e g v : ℝ) :
    leading1 A e g v =
      FullHigh0320.leading1 e g v+FullHigh0321.leading1 e g v*A+FullHigh0322.leading1 e g
        v*A^2+FullHigh0323.leading1 e g v*A^3+FullHigh0324.leading1 e g
        v*A^4+FullHigh0325.leading1 e g v*A^5+FullHigh0326.leading1 e g
        v*A^6+FullHigh0327.leading1 e g v*A^7+FullHigh0328.leading1 e g
        v*A^8+FullHigh0329.leading1 e g v*A^9+FullHigh03210.leading1 e g v*A^10 := by
  unfold leading1
  simp only [SmallGap.ReducedLayers.high1_020_expansion,
    SmallGap.ReducedLayers.high1_011_expansion, SmallGap.ReducedLayers.high1_002_expansion,
    FullHigh0320.leading1, FullHigh0321.leading1, FullHigh0322.leading1, FullHigh0323.leading1,
    FullHigh0324.leading1, FullHigh0325.leading1, FullHigh0326.leading1, FullHigh0327.leading1,
    FullHigh0328.leading1, FullHigh0329.leading1, FullHigh03210.leading1]
  generalize (e+g)^3 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading1_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading1 A e g v := by
  have h020 := SmallGap.High1.nonnegative020 hA he hg hv
  have h011 := SmallGap.High1.nonnegative011 hA he hg hv
  have h002 := SmallGap.High1.nonnegative002 hA he hg hv
  unfold leading1
  positivity

/-- Every higher-gap coefficient is positive data on the closed orthant. -/
theorem remainder_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder A e f g v := by
  have h0 := FullHigh0320.remainder_nonnegative he hf hg hv
  have h1 := FullHigh0321.remainder_nonnegative he hf hg hv
  have h2 := FullHigh0322.remainder_nonnegative he hf hg hv
  have h3 := FullHigh0323.remainder_nonnegative he hf hg hv
  have h4 := FullHigh0324.remainder_nonnegative he hf hg hv
  have h5 := FullHigh0325.remainder_nonnegative he hf hg hv
  have h6 := FullHigh0326.remainder_nonnegative he hf hg hv
  have h7 := FullHigh0327.remainder_nonnegative he hf hg hv
  have h8 := FullHigh0328.remainder_nonnegative he hf hg hv
  have h9 := FullHigh0329.remainder_nonnegative he hf hg hv
  have h10 := FullHigh03210.remainder_nonnegative he hf hg hv
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

end FullHigh032
end
end SPR.N6.Tail.CoreEndpoint
