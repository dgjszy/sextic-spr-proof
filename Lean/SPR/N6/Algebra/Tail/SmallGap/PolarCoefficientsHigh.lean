import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsHigh0
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsHigh1
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsHigh2
/-! Complete high source assembly. The opposite endpoint is imported separately.
The whole source identity is retained; no independent polar sign is presumed. -/
namespace SPR.N6.Tail.SmallGap.PolarCoefficients
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

def high005 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c005 e f g v+PolarCoefficientsHigh1.c005 e f g v*A+PolarCoefficientsHigh2.c005 e f g v*A^2

def high014 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c014 e f g v+PolarCoefficientsHigh1.c014 e f g v*A+PolarCoefficientsHigh2.c014 e f g v*A^2

def high023 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c023 e f g v+PolarCoefficientsHigh1.c023 e f g v*A+PolarCoefficientsHigh2.c023 e f g v*A^2

def high032 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c032 e f g v+PolarCoefficientsHigh1.c032 e f g v*A+PolarCoefficientsHigh2.c032 e f g v*A^2

def high041 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c041 e f g v+PolarCoefficientsHigh1.c041 e f g v*A+PolarCoefficientsHigh2.c041 e f g v*A^2

def high050 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c050 e f g v+PolarCoefficientsHigh1.c050 e f g v*A+PolarCoefficientsHigh2.c050 e f g v*A^2

def high104 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c104 e f g v+PolarCoefficientsHigh1.c104 e f g v*A+PolarCoefficientsHigh2.c104 e f g v*A^2

def high113 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c113 e f g v+PolarCoefficientsHigh1.c113 e f g v*A+PolarCoefficientsHigh2.c113 e f g v*A^2

def high122 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c122 e f g v+PolarCoefficientsHigh1.c122 e f g v*A+PolarCoefficientsHigh2.c122 e f g v*A^2

def high131 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c131 e f g v+PolarCoefficientsHigh1.c131 e f g v*A+PolarCoefficientsHigh2.c131 e f g v*A^2

def high140 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c140 e f g v+PolarCoefficientsHigh1.c140 e f g v*A+PolarCoefficientsHigh2.c140 e f g v*A^2

def high203 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c203 e f g v+PolarCoefficientsHigh1.c203 e f g v*A+PolarCoefficientsHigh2.c203 e f g v*A^2

def high212 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c212 e f g v+PolarCoefficientsHigh1.c212 e f g v*A+PolarCoefficientsHigh2.c212 e f g v*A^2

def high221 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c221 e f g v+PolarCoefficientsHigh1.c221 e f g v*A+PolarCoefficientsHigh2.c221 e f g v*A^2

def high230 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c230 e f g v+PolarCoefficientsHigh1.c230 e f g v*A+PolarCoefficientsHigh2.c230 e f g v*A^2

def high302 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c302 e f g v+PolarCoefficientsHigh1.c302 e f g v*A+PolarCoefficientsHigh2.c302 e f g v*A^2

def high311 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c311 e f g v+PolarCoefficientsHigh1.c311 e f g v*A+PolarCoefficientsHigh2.c311 e f g v*A^2

def high320 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c320 e f g v+PolarCoefficientsHigh1.c320 e f g v*A+PolarCoefficientsHigh2.c320 e f g v*A^2

def high401 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c401 e f g v+PolarCoefficientsHigh1.c401 e f g v*A+PolarCoefficientsHigh2.c401 e f g v*A^2

def high410 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c410 e f g v+PolarCoefficientsHigh1.c410 e f g v*A+PolarCoefficientsHigh2.c410 e f g v*A^2

def high500 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsHigh0.c500 e f g v+PolarCoefficientsHigh1.c500 e f g v*A+PolarCoefficientsHigh2.c500 e f g v*A^2

/-- Whole high source equality, prior to any sign proof. -/
theorem high_expansion (A e f g u q h v : ℝ) :
    PolarSource.polarPHigh A e f g u q h v =
      high005 A e f g v*(h^5)+high014 A e f g v*(q*h^4)+high023 A e f g v*(q^2*h^3)+high032 A e f g v*(q^3*h^2)+high041 A e f g v*(q^4*h)+high050 A e f g v*(q^5)+high104 A e f g v*(u*h^4)+high113 A e f g v*(u*q*h^3)+high122 A e f g v*(u*q^2*h^2)+high131 A e f g v*(u*q^3*h)+high140 A e f g v*(u*q^4)+high203 A e f g v*(u^2*h^3)+high212 A e f g v*(u^2*q*h^2)+high221 A e f g v*(u^2*q^2*h)+high230 A e f g v*(u^2*q^3)+high302 A e f g v*(u^3*h^2)+high311 A e f g v*(u^3*q*h)+high320 A e f g v*(u^3*q^2)+high401 A e f g v*(u^4*h)+high410 A e f g v*(u^4*q)+high500 A e f g v*(u^5) := by
  rw [PolarFrequencyLayers.high_expansion]
  rw [PolarCoefficientsHigh0.expansion, PolarCoefficientsHigh1.expansion, PolarCoefficientsHigh2.expansion]
  unfold high005 high014 high023 high032 high041 high050 high104 high113 high122 high131 high140 high203 high212 high221 high230 high302 high311 high320 high401 high410 high500
  ring


end
end SPR.N6.Tail.SmallGap.PolarCoefficients
