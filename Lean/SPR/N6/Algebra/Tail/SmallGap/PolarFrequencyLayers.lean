import SPR.N6.Algebra.Tail.SmallGap.PolarSource

/-!
# Frequency-normalized polar sources, grouped by the first inner root

The mixture has degree two in A. The high zero factor is independent of A;
the compactified low zero factor has degree two. Consequently three high
layers and five low layers recover the entire sources, for arbitrary real
parameters. These identities do not assert any sign for independent polar
coordinates.
-/
namespace SPR.N6.Tail.SmallGap.PolarFrequencyLayers
noncomputable section
open PolarSource
set_option Elab.async false

/-- Constant coefficient of the cubic mixture as a polynomial in A. -/
def mixture0 (e f g u q h : ℝ) : ℝ :=
  ((e+f)*M e f g*S e f g u q-e*f*D f g u)*polarDen2 0 e f g u q h+
    (M e f g*(2*e+2*f+g)*S e f g u q+
      f*(2*e+2*f+g)*H e f u q h)*polarDen1 0 e f g u q h

/-- Linear coefficient of the same mixture. -/
def mixture1 (e f g u q h : ℝ) : ℝ :=
  ((3*e+2*f+g)*S e f g u q-2*f*D f g u)*polarDen2 0 e f g u q h+
    ((5*e+4*f+3*g)*S e f g u q+2*f*H e f u q h)*polarDen1 0 e f g u q h

/-- Quadratic coefficient of the same mixture. -/
def mixture2 (e f g u q h : ℝ) : ℝ :=
  3*S e f g u q*(polarDen1 0 e f g u q h+polarDen2 0 e f g u q h)

/-- Exact mixture decomposition, without positivity assumptions. -/
theorem mixture_expansion (A e f g u q h : ℝ) :
    polarMixture A e f g u q h = mixture0 e f g u q h+
      mixture1 e f g u q h*A+mixture2 e f g u q h*A^2 := by
  unfold polarMixture mixture0 mixture1 mixture2 B b c M polarDen1 polarDen2
  ring

def weightProduct (e f g u q h : ℝ) : ℝ :=
  polarDen1 0 e f g u q h*polarDen2 0 e f g u q h*polarWeight 0 e f g u q h

def lowZero0 (e f g u q h v : ℝ) : ℝ :=
  EndpointSource.z10 e f g (S e f g u q) (D f g u) (H e f u q h)*(1+v)^2-
    EndpointSource.z11 e f g (S e f g u q) (D f g u) (H e f u q h)*e*(1+v)+
    EndpointSource.z12 e f g (S e f g u q) (D f g u) (H e f u q h)*e^2

def lowZero1 (e f g u q h v : ℝ) : ℝ :=
  -EndpointSource.z11 e f g (S e f g u q) (D f g u) (H e f u q h)*(1+v)+
    2*EndpointSource.z12 e f g (S e f g u q) (D f g u) (H e f u q h)*e

def lowZero2 (e f g u q h : ℝ) : ℝ :=
  EndpointSource.z12 e f g (S e f g u q) (D f g u) (H e f u q h)

/-- The compactified low zero factor retains every A coefficient. -/
theorem low_zero_expansion (A e f g u q h v : ℝ) :
    polarZeroLow A e f g u q h v = lowZero0 e f g u q h v+
      lowZero1 e f g u q h v*A+lowZero2 e f g u q h*A^2 := by
  unfold polarZeroLow lowZero0 lowZero1 lowZero2 B
  ring

def high0 (e f g u q h v : ℝ) : ℝ :=
  weightProduct e f g u q h*(e+f+v)^2+
    mixture0 e f g u q h*polarZeroHigh 0 e f g u q h v

def high1 (e f g u q h v : ℝ) : ℝ :=
  mixture1 e f g u q h*polarZeroHigh 0 e f g u q h v

def high2 (e f g u q h v : ℝ) : ℝ :=
  mixture2 e f g u q h*polarZeroHigh 0 e f g u q h v

/-- All high A layers, including the constant denominator-weight term. -/
theorem high_expansion (A e f g u q h v : ℝ) :
    polarPHigh A e f g u q h v = high0 e f g u q h v+
      high1 e f g u q h v*A+high2 e f g u q h v*A^2 := by
  unfold polarPHigh high0 high1 high2 weightProduct
  rw [mixture_expansion]
  unfold polarDen1 polarDen2 polarWeight polarZeroHigh
  ring

def low0 (e f g u q h v : ℝ) : ℝ :=
  weightProduct e f g u q h*(M e f g+(f+g)*v)^2+
    mixture0 e f g u q h*lowZero0 e f g u q h v

def low1 (e f g u q h v : ℝ) : ℝ :=
  2*weightProduct e f g u q h*(M e f g+(f+g)*v)+
    mixture0 e f g u q h*lowZero1 e f g u q h v+
    mixture1 e f g u q h*lowZero0 e f g u q h v

def low2 (e f g u q h v : ℝ) : ℝ :=
  weightProduct e f g u q h+mixture0 e f g u q h*lowZero2 e f g u q h+
    mixture1 e f g u q h*lowZero1 e f g u q h v+
    mixture2 e f g u q h*lowZero0 e f g u q h v

def low3 (e f g u q h v : ℝ) : ℝ :=
  mixture1 e f g u q h*lowZero2 e f g u q h+
    mixture2 e f g u q h*lowZero1 e f g u q h v

def low4 (e f g u q h v : ℝ) : ℝ :=
  mixture2 e f g u q h*lowZero2 e f g u q h

/-- All five low layers recover the full compactified source. -/
theorem low_expansion (A e f g u q h v : ℝ) :
    polarPLow A e f g u q h v = low0 e f g u q h v+
      low1 e f g u q h v*A+low2 e f g u q h v*A^2+
      low3 e f g u q h v*A^3+low4 e f g u q h v*A^4 := by
  unfold polarPLow low0 low1 low2 low3 low4 weightProduct
  rw [mixture_expansion,low_zero_expansion]
  unfold c M polarDen1 polarDen2 polarWeight
  ring

end
end SPR.N6.Tail.SmallGap.PolarFrequencyLayers
