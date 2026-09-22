import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Identity0
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Identity1
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Identity2
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Identity3
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Identity4
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Identity5
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Identity6
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Identity7
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Identity8
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Identity9
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Identity10
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Identity11
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Identity12
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Source
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace FullHigh050

def leading0 (A e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.High0.coefficient010 A e g v*(A+e)^8)

def leading1 (A e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.High1.coefficient020 A e g v*(A+e)^6)

def remainder (A e f g v : ℝ) : ℝ :=
  FullHigh0500.remainder e f g v+FullHigh0501.remainder e f g v*A+FullHigh0502.remainder e f g
    v*A^2+FullHigh0503.remainder e f g v*A^3+FullHigh0504.remainder e f g
    v*A^4+FullHigh0505.remainder e f g v*A^5+FullHigh0506.remainder e f g
    v*A^6+FullHigh0507.remainder e f g v*A^7+FullHigh0508.remainder e f g
    v*A^8+FullHigh0509.remainder e f g v*A^9+FullHigh05010.remainder e f g
    v*A^10+FullHigh05011.remainder e f g v*A^11+FullHigh05012.remainder e f g v*A^12

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading0_expansion (A e g v : ℝ) :
    leading0 A e g v =
      FullHigh0500.leading0 e g v+FullHigh0501.leading0 e g v*A+FullHigh0502.leading0 e g
        v*A^2+FullHigh0503.leading0 e g v*A^3+FullHigh0504.leading0 e g
        v*A^4+FullHigh0505.leading0 e g v*A^5+FullHigh0506.leading0 e g
        v*A^6+FullHigh0507.leading0 e g v*A^7+FullHigh0508.leading0 e g
        v*A^8+FullHigh0509.leading0 e g v*A^9+FullHigh05010.leading0 e g
        v*A^10+FullHigh05011.leading0 e g v*A^11+FullHigh05012.leading0 e g v*A^12 := by
  unfold leading0
  simp only [SmallGap.ReducedLayers.high0_010_expansion, FullHigh0500.leading0,
    FullHigh0501.leading0, FullHigh0502.leading0, FullHigh0503.leading0, FullHigh0504.leading0,
    FullHigh0505.leading0, FullHigh0506.leading0, FullHigh0507.leading0, FullHigh0508.leading0,
    FullHigh0509.leading0, FullHigh05010.leading0, FullHigh05011.leading0, FullHigh05012.leading0]
  generalize e*g*(e+g)^6 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading0_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading0 A e g v := by
  have h010 := SmallGap.High0.nonnegative010 hA he hg hv
  unfold leading0
  positivity

/-- Binomial expansion of the already certified reduced factor. -/
theorem leading1_expansion (A e g v : ℝ) :
    leading1 A e g v =
      FullHigh0500.leading1 e g v+FullHigh0501.leading1 e g v*A+FullHigh0502.leading1 e g
        v*A^2+FullHigh0503.leading1 e g v*A^3+FullHigh0504.leading1 e g
        v*A^4+FullHigh0505.leading1 e g v*A^5+FullHigh0506.leading1 e g
        v*A^6+FullHigh0507.leading1 e g v*A^7+FullHigh0508.leading1 e g
        v*A^8+FullHigh0509.leading1 e g v*A^9+FullHigh05010.leading1 e g
        v*A^10+FullHigh05011.leading1 e g v*A^11+FullHigh05012.leading1 e g v*A^12 := by
  unfold leading1
  simp only [SmallGap.ReducedLayers.high1_020_expansion, FullHigh0500.leading1,
    FullHigh0501.leading1, FullHigh0502.leading1, FullHigh0503.leading1, FullHigh0504.leading1,
    FullHigh0505.leading1, FullHigh0506.leading1, FullHigh0507.leading1, FullHigh0508.leading1,
    FullHigh0509.leading1, FullHigh05010.leading1, FullHigh05011.leading1, FullHigh05012.leading1]
  generalize (e+g)^3 = factor
  ring

/-- The complete reduced factor is used, not its possibly signed A layers. -/
theorem leading1_nonnegative {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leading1 A e g v := by
  have h020 := SmallGap.High1.nonnegative020 hA he hg hv
  unfold leading1
  positivity

/-- Every higher-gap coefficient is positive data on the closed orthant. -/
theorem remainder_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder A e f g v := by
  have h0 := FullHigh0500.remainder_nonnegative he hf hg hv
  have h1 := FullHigh0501.remainder_nonnegative he hf hg hv
  have h2 := FullHigh0502.remainder_nonnegative he hf hg hv
  have h3 := FullHigh0503.remainder_nonnegative he hf hg hv
  have h4 := FullHigh0504.remainder_nonnegative he hf hg hv
  have h5 := FullHigh0505.remainder_nonnegative he hf hg hv
  have h6 := FullHigh0506.remainder_nonnegative he hf hg hv
  have h7 := FullHigh0507.remainder_nonnegative he hf hg hv
  have h8 := FullHigh0508.remainder_nonnegative he hf hg hv
  have h9 := FullHigh0509.remainder_nonnegative he hf hg hv
  have h10 := FullHigh05010.remainder_nonnegative he hf hg hv
  have h11 := FullHigh05011.remainder_nonnegative he hf hg hv
  have h12 := FullHigh05012.remainder_nonnegative he hf hg hv
  unfold remainder
  positivity

/-- Entire source identity, including all low-gap and high-gap terms. -/
theorem decomposition (A e f g v : ℝ) :
    source A e f g v = leading0 A e g v + f*leading1 A e g v +
      f^2*remainder A e f g v := by
  unfold source remainder
  rw [decomposition0, decomposition1, decomposition2, decomposition3, decomposition4,
    decomposition5, decomposition6, decomposition7, decomposition8, decomposition9,
    decomposition10, decomposition11, decomposition12, leading0_expansion, leading1_expansion]
  ring

/-- The actual normalized source is nonnegative on the complete closed orthant. -/
theorem nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ source A e f g v := by
  rw [decomposition]
  exact add_nonneg
    (add_nonneg (leading0_nonnegative hA he hg hv)
      (mul_nonneg hf (leading1_nonnegative hA he hg hv)))
    (mul_nonneg (sq_nonneg f) (remainder_nonnegative hA he hf hg hv))

end FullHigh050
end
end SPR.N6.Tail.CoreEndpoint
