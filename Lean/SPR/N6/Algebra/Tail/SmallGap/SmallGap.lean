import SPR.N6.Algebra.Tail.SmallGap.High0
import SPR.N6.Algebra.Tail.SmallGap.High1
import SPR.N6.Algebra.Tail.SmallGap.Low0
import SPR.N6.Algebra.Tail.SmallGap.Low1
/-! Assembly of all reduced f^0/f^1 source factors. -/
namespace SPR.N6.Tail.SmallGap
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- The reduced highR0 factor, with every outer coefficient retained. -/
def highR0 (A e g x y z v : ℝ) : ℝ :=
  High0.coefficient100 A e g v*x +
    High0.coefficient010 A e g v*y +
    High0.coefficient001 A e g v*z

theorem highR0_nonnegative {A e g x y z v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) (hx : 0 ≤ x) (hy : 0 ≤ y) (hz : 0 ≤ z) :
    0 ≤ highR0 A e g x y z v := by
  unfold highR0

  have h100 := High0.nonnegative100 hA he hg hv
  have h010 := High0.nonnegative010 hA he hg hv
  have h001 := High0.nonnegative001 hA he hg hv
  positivity

/-- The reduced highR1 factor, with every outer coefficient retained. -/
def highR1 (A e g x y z v : ℝ) : ℝ :=
  High1.coefficient200 A e g v*x^2 +
    High1.coefficient110 A e g v*x*y +
    High1.coefficient101 A e g v*x*z +
    High1.coefficient020 A e g v*y^2 +
    High1.coefficient011 A e g v*y*z +
    High1.coefficient002 A e g v*z^2

theorem highR1_nonnegative {A e g x y z v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) (hx : 0 ≤ x) (hy : 0 ≤ y) (hz : 0 ≤ z) :
    0 ≤ highR1 A e g x y z v := by
  unfold highR1

  have h200 := High1.nonnegative200 hA he hg hv
  have h110 := High1.nonnegative110 hA he hg hv
  have h101 := High1.nonnegative101 hA he hg hv
  have h020 := High1.nonnegative020 hA he hg hv
  have h011 := High1.nonnegative011 hA he hg hv
  have h002 := High1.nonnegative002 hA he hg hv
  positivity

/-- The reduced lowR0 factor, with every outer coefficient retained. -/
def lowR0 (A e g x y z v : ℝ) : ℝ :=
  Low0.coefficient100 A e g v*x +
    Low0.coefficient010 A e g v*y +
    Low0.coefficient001 A e g v*z

theorem lowR0_nonnegative {A e g x y z v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) (hx : 0 ≤ x) (hy : 0 ≤ y) (hz : 0 ≤ z) :
    0 ≤ lowR0 A e g x y z v := by
  unfold lowR0

  have h100 := Low0.nonnegative100 hA he hg hv
  have h010 := Low0.nonnegative010 hA he hg hv
  have h001 := Low0.nonnegative001 hA he hg hv
  positivity

/-- The reduced lowR1 factor, with every outer coefficient retained. -/
def lowR1 (A e g x y z v : ℝ) : ℝ :=
  Low1.coefficient200 A e g v*x^2 +
    Low1.coefficient110 A e g v*x*y +
    Low1.coefficient101 A e g v*x*z +
    Low1.coefficient020 A e g v*y^2 +
    Low1.coefficient011 A e g v*y*z +
    Low1.coefficient002 A e g v*z^2

theorem lowR1_nonnegative {A e g x y z v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) (hx : 0 ≤ x) (hy : 0 ≤ y) (hz : 0 ≤ z) :
    0 ≤ lowR1 A e g x y z v := by
  unfold lowR1

  have h200 := Low1.nonnegative200 hA he hg hv
  have h110 := Low1.nonnegative110 hA he hg hv
  have h101 := Low1.nonnegative101 hA he hg hv
  have h020 := Low1.nonnegative020 hA he hg hv
  have h011 := Low1.nonnegative011 hA he hg hv
  have h002 := Low1.nonnegative002 hA he hg hv
  positivity

end
end SPR.N6.Tail.SmallGap
