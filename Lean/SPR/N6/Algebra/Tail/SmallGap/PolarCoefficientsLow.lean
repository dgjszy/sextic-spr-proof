import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsLow0
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsLow1
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsLow2
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsLow3
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsLow4
/-! Complete low source assembly. The opposite endpoint is imported separately.
The whole source identity is retained; no independent polar sign is presumed. -/
namespace SPR.N6.Tail.SmallGap.PolarCoefficients
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

def low005 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c005 e f g v+PolarCoefficientsLow1.c005 e f g v*A+PolarCoefficientsLow2.c005 e f g v*A^2+PolarCoefficientsLow3.c005 e f g v*A^3+PolarCoefficientsLow4.c005 e f g v*A^4

def low014 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c014 e f g v+PolarCoefficientsLow1.c014 e f g v*A+PolarCoefficientsLow2.c014 e f g v*A^2+PolarCoefficientsLow3.c014 e f g v*A^3+PolarCoefficientsLow4.c014 e f g v*A^4

def low023 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c023 e f g v+PolarCoefficientsLow1.c023 e f g v*A+PolarCoefficientsLow2.c023 e f g v*A^2+PolarCoefficientsLow3.c023 e f g v*A^3+PolarCoefficientsLow4.c023 e f g v*A^4

def low032 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c032 e f g v+PolarCoefficientsLow1.c032 e f g v*A+PolarCoefficientsLow2.c032 e f g v*A^2+PolarCoefficientsLow3.c032 e f g v*A^3+PolarCoefficientsLow4.c032 e f g v*A^4

def low041 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c041 e f g v+PolarCoefficientsLow1.c041 e f g v*A+PolarCoefficientsLow2.c041 e f g v*A^2+PolarCoefficientsLow3.c041 e f g v*A^3+PolarCoefficientsLow4.c041 e f g v*A^4

def low050 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c050 e f g v+PolarCoefficientsLow1.c050 e f g v*A+PolarCoefficientsLow2.c050 e f g v*A^2+PolarCoefficientsLow3.c050 e f g v*A^3+PolarCoefficientsLow4.c050 e f g v*A^4

def low104 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c104 e f g v+PolarCoefficientsLow1.c104 e f g v*A+PolarCoefficientsLow2.c104 e f g v*A^2+PolarCoefficientsLow3.c104 e f g v*A^3+PolarCoefficientsLow4.c104 e f g v*A^4

def low113 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c113 e f g v+PolarCoefficientsLow1.c113 e f g v*A+PolarCoefficientsLow2.c113 e f g v*A^2+PolarCoefficientsLow3.c113 e f g v*A^3+PolarCoefficientsLow4.c113 e f g v*A^4

def low122 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c122 e f g v+PolarCoefficientsLow1.c122 e f g v*A+PolarCoefficientsLow2.c122 e f g v*A^2+PolarCoefficientsLow3.c122 e f g v*A^3+PolarCoefficientsLow4.c122 e f g v*A^4

def low131 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c131 e f g v+PolarCoefficientsLow1.c131 e f g v*A+PolarCoefficientsLow2.c131 e f g v*A^2+PolarCoefficientsLow3.c131 e f g v*A^3+PolarCoefficientsLow4.c131 e f g v*A^4

def low140 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c140 e f g v+PolarCoefficientsLow1.c140 e f g v*A+PolarCoefficientsLow2.c140 e f g v*A^2+PolarCoefficientsLow3.c140 e f g v*A^3+PolarCoefficientsLow4.c140 e f g v*A^4

def low203 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c203 e f g v+PolarCoefficientsLow1.c203 e f g v*A+PolarCoefficientsLow2.c203 e f g v*A^2+PolarCoefficientsLow3.c203 e f g v*A^3+PolarCoefficientsLow4.c203 e f g v*A^4

def low212 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c212 e f g v+PolarCoefficientsLow1.c212 e f g v*A+PolarCoefficientsLow2.c212 e f g v*A^2+PolarCoefficientsLow3.c212 e f g v*A^3+PolarCoefficientsLow4.c212 e f g v*A^4

def low221 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c221 e f g v+PolarCoefficientsLow1.c221 e f g v*A+PolarCoefficientsLow2.c221 e f g v*A^2+PolarCoefficientsLow3.c221 e f g v*A^3+PolarCoefficientsLow4.c221 e f g v*A^4

def low230 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c230 e f g v+PolarCoefficientsLow1.c230 e f g v*A+PolarCoefficientsLow2.c230 e f g v*A^2+PolarCoefficientsLow3.c230 e f g v*A^3+PolarCoefficientsLow4.c230 e f g v*A^4

def low302 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c302 e f g v+PolarCoefficientsLow1.c302 e f g v*A+PolarCoefficientsLow2.c302 e f g v*A^2+PolarCoefficientsLow3.c302 e f g v*A^3+PolarCoefficientsLow4.c302 e f g v*A^4

def low311 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c311 e f g v+PolarCoefficientsLow1.c311 e f g v*A+PolarCoefficientsLow2.c311 e f g v*A^2+PolarCoefficientsLow3.c311 e f g v*A^3+PolarCoefficientsLow4.c311 e f g v*A^4

def low320 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c320 e f g v+PolarCoefficientsLow1.c320 e f g v*A+PolarCoefficientsLow2.c320 e f g v*A^2+PolarCoefficientsLow3.c320 e f g v*A^3+PolarCoefficientsLow4.c320 e f g v*A^4

def low401 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c401 e f g v+PolarCoefficientsLow1.c401 e f g v*A+PolarCoefficientsLow2.c401 e f g v*A^2+PolarCoefficientsLow3.c401 e f g v*A^3+PolarCoefficientsLow4.c401 e f g v*A^4

def low410 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c410 e f g v+PolarCoefficientsLow1.c410 e f g v*A+PolarCoefficientsLow2.c410 e f g v*A^2+PolarCoefficientsLow3.c410 e f g v*A^3+PolarCoefficientsLow4.c410 e f g v*A^4

def low500 (A e f g v : ℝ) : ℝ :=
  PolarCoefficientsLow0.c500 e f g v+PolarCoefficientsLow1.c500 e f g v*A+PolarCoefficientsLow2.c500 e f g v*A^2+PolarCoefficientsLow3.c500 e f g v*A^3+PolarCoefficientsLow4.c500 e f g v*A^4

/-- Whole low source equality, prior to any sign proof. -/
theorem low_expansion (A e f g u q h v : ℝ) :
    PolarSource.polarPLow A e f g u q h v =
      low005 A e f g v*(h^5)+low014 A e f g v*(q*h^4)+low023 A e f g v*(q^2*h^3)+low032 A e f g v*(q^3*h^2)+low041 A e f g v*(q^4*h)+low050 A e f g v*(q^5)+low104 A e f g v*(u*h^4)+low113 A e f g v*(u*q*h^3)+low122 A e f g v*(u*q^2*h^2)+low131 A e f g v*(u*q^3*h)+low140 A e f g v*(u*q^4)+low203 A e f g v*(u^2*h^3)+low212 A e f g v*(u^2*q*h^2)+low221 A e f g v*(u^2*q^2*h)+low230 A e f g v*(u^2*q^3)+low302 A e f g v*(u^3*h^2)+low311 A e f g v*(u^3*q*h)+low320 A e f g v*(u^3*q^2)+low401 A e f g v*(u^4*h)+low410 A e f g v*(u^4*q)+low500 A e f g v*(u^5) := by
  rw [PolarFrequencyLayers.low_expansion]
  rw [PolarCoefficientsLow0.expansion, PolarCoefficientsLow1.expansion, PolarCoefficientsLow2.expansion, PolarCoefficientsLow3.expansion, PolarCoefficientsLow4.expansion]
  unfold low005 low014 low023 low032 low041 low050 low104 low113 low122 low131 low140 low203 low212 low221 low230 low302 low311 low320 low401 low410 low500
  ring

end
end SPR.N6.Tail.SmallGap.PolarCoefficients
