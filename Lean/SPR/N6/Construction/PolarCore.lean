import SPR.N6.Algebra.Tail.SmallGap.PolarSource
import SPR.N6.Construction.OuterCorePolynomial

/-!
# Recovery of the polar endpoint source at the actual even widths

The three polar quantities below are fixed functions of the same actual width
coordinates. The source identities retain the factor two in the homogeneous
core and the complete low-frequency compactification factor. They include zero
width faces. No sign of an arbitrary polar source is assumed or asserted.
-/
namespace SPR.N6.OuterParameters
noncomputable section
open Tail.SmallGap
set_option Elab.async false

/-- The first polar coordinate is the quadratic width form evaluated at A. -/
def polarFirst (p : OuterParameters) : ℝ := p.x+p.A*p.z+p.A^2*p.y

/-- The second polar coordinate uses the original M, namely (e+f)(e+f+g). -/
def polarSecond (p : OuterParameters) : ℝ := p.M*(p.z+(2*p.A+p.e)*p.y)

/-- The third polar coordinate is another fixed multiple of the same y. -/
def polarThird (p : OuterParameters) : ℝ := p.M*(p.f+p.g)*p.y

/-- The polar sum is the previously proved homogeneous coordinate sum. -/
theorem polar_sum (p : OuterParameters) :
    PolarSource.S p.e p.f p.g p.polarFirst p.polarSecond = p.coordinateSum := by
  simp only [PolarSource.S,polarFirst,polarSecond,coordinateSum,p.H_eq,p.dq_eq,L]
  ring

/-- The first root numerator is unchanged by the polar substitution. -/
theorem polar_first (p : OuterParameters) :
    p.A*p.coordinateSum-p.f*PolarSource.D p.f p.g p.polarFirst =
      p.firstNumerator := by
  simp only [PolarSource.D,polarFirst,coordinateSum,firstNumerator,
    p.H_eq,p.dq_eq,L,J,M,B]
  ring

/-- The last root numerator is unchanged by the same substitution. -/
theorem polar_last (p : OuterParameters) :
    p.c*p.coordinateSum+p.f*
      PolarSource.H p.e p.f p.polarFirst p.polarSecond p.polarThird =
        p.lastNumerator := by
  simp only [PolarSource.H,polarFirst,polarSecond,polarThird,coordinateSum,
    lastNumerator,p.H_eq,p.dq_eq,L,J,M,B,b,c]
  ring

/-- Exact high endpoint source before imposing physical coordinate constraints. -/
theorem high_polar_source (p : OuterParameters) (hf : p.f ≠ 0) (v : ℝ) :
    Tail.OuterHomogeneous.core false p.coordinateSum p.firstNumerator
      p.A p.B p.b p.c p.lastNumerator ((p.e+p.f+p.g)/p.f) (p.b+v) =
        2*(p.e+p.f+p.g)*PolarSource.polarPHigh p.A p.e p.f p.g
          p.polarFirst p.polarSecond p.polarThird v := by
  have hh := PolarSource.core_high_eq p.A p.e p.f p.g
    p.polarFirst p.polarSecond p.polarThird v hf
  have hc : PolarSource.c p.A p.e p.f p.g = p.c := rfl
  rw [p.polar_sum,p.polar_first,hc,p.polar_last] at hh
  simpa only [PolarSource.B,PolarSource.b,PolarSource.c,PolarSource.M,B,b,c] using hh

/-- Exact low endpoint source with the entire quadratic frequency factor. -/
theorem low_polar_source (p : OuterParameters) (hf : p.f ≠ 0) (v : ℝ)
    (hv : 1 + v ≠ 0) :
    (1 + v)^2*Tail.OuterHomogeneous.core true p.coordinateSum p.firstNumerator
      p.A p.B p.b p.c p.lastNumerator ((p.e+p.f+p.g)/p.f) (p.B*v/(1 + v)) =
        2*(p.e+p.f+p.g)*PolarSource.polarPLow p.A p.e p.f p.g
          p.polarFirst p.polarSecond p.polarThird v := by
  have hh := PolarSource.core_low_scaled p.A p.e p.f p.g
    p.polarFirst p.polarSecond p.polarThird v hf hv
  have hc : PolarSource.c p.A p.e p.f p.g = p.c := rfl
  rw [p.polar_sum,p.polar_first,hc,p.polar_last] at hh
  simpa only [PolarSource.B,PolarSource.b,PolarSource.c,PolarSource.M,B,b,c] using hh

/-- The high polar source recovers the actual roots from all three original widths. -/
theorem high_core_eq_polar (p : OuterParameters)
    (he : 0 < p.e) (hf : 0 < p.f) (hg : 0 < p.g)
    (hw1 : 0 ≤ p.width1) (hw2 : 0 ≤ p.width2) (hw3 : 0 ≤ p.width3) (v : ℝ) :
    Tail.RootSource.core false p.a p.A p.B p.b p.c p.C
      ((p.e+p.f+p.g)/p.f) (p.b+v) =
        (p.e+p.f+p.g)*PolarSource.polarPHigh p.A p.e p.f p.g
          p.polarFirst p.polarSecond p.polarThird v := by
  have hh := p.high_polar_source (ne_of_gt hf) v
  rw [p.core_at_coordinates he hf hg hw1 hw2 hw3] at hh
  linarith only [hh]

/-- Actual-root recovery also holds at zero compact frequency and on width faces. -/
theorem low_core_eq_polar (p : OuterParameters)
    (he : 0 < p.e) (hf : 0 < p.f) (hg : 0 < p.g)
    (hw1 : 0 ≤ p.width1) (hw2 : 0 ≤ p.width2) (hw3 : 0 ≤ p.width3)
    (v : ℝ) (hv : 1 + v ≠ 0) :
    (1 + v)^2*Tail.RootSource.core true p.a p.A p.B p.b p.c p.C
      ((p.e+p.f+p.g)/p.f) (p.B*v/(1 + v)) =
        (p.e+p.f+p.g)*PolarSource.polarPLow p.A p.e p.f p.g
          p.polarFirst p.polarSecond p.polarThird v := by
  have hh := p.low_polar_source (ne_of_gt hf) v hv
  rw [p.core_at_coordinates he hf hg hw1 hw2 hw3] at hh
  linear_combination hh / 2

end
end SPR.N6.OuterParameters
