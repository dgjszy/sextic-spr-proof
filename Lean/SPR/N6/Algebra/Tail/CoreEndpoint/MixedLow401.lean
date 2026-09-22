import SPR.N6.Algebra.Tail.CoreEndpoint.MixedLow4010
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedLow4011
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedLow4012
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedLow4013
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedLow4014
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedLow4015
/-! Static normalized low source for outer index (4, 0, 1).
Each closed e/g cone is certified by an exact remainder-plus-squares identity.
The separate actual-source bridge retains scale 2*(e+f+g) and, for low sources,
the full frequency compactification factor (1+v)^2.
-/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace MixedLow401
/-- Complete normalized source, organized by powers of A. -/
def source (A e f g v : ℝ) : ℝ :=
  MixedLow4010.source e f g v+MixedLow4011.source e f g v*A+MixedLow4012.source e f g v*A^2+MixedLow4013.source e f g v*A^3+MixedLow4014.source e f g v*A^4+MixedLow4015.source e f g v*A^5

def leftSquares0 (e f g v : ℝ) : ℝ :=
  (0 : ℝ)

def leftSquares1 (e f g v : ℝ) : ℝ :=
  (0 : ℝ)

def leftSquares2 (e f g v : ℝ) : ℝ :=
  ((((((((((50 : ℝ))*g^2)*e+((((-50 : ℝ))*v+((512 : ℝ)))*g^3))*e+((((((105 : ℝ)/2))*v+((-512 :
    ℝ)))*v+((1224 : ℝ)))*g^4))*e+(((((654 : ℝ))*v+((-1224 : ℝ)))*v)*g^5))*e+((((3210 :
    ℝ))*v^2)*g^6))*e^2+((((34120 : ℝ))*v^2)*g^8))*e+((((26864 : ℝ))*v^2)*g^9))*e+((((15600 :
    ℝ))*v^2)*g^10))*e^3

def leftSquares3 (e f g v : ℝ) : ℝ :=
  ((((((((((((-80 : ℝ))*v)*g^3)*e+(((((15 : ℝ))*v+((-1052 : ℝ)))*v)*g^4))*e+(((((195 :
    ℝ))*v+((-5808 : ℝ)))*v)*g^5))*e+(((((2160 : ℝ))*v+((-17060 : ℝ)))*v)*g^6))*e+(((((8340 :
    ℝ))*v^2)*g^6)*f+((((-26864 : ℝ))*v)*g^7)))*e+(((((28140 : ℝ))*v^2)*g^7)*f+(((((13200 :
    ℝ))*v+((-15600 : ℝ)))*v)*g^8)))*e+(((((33960 : ℝ))*v^2)*g^8)*f+((((24000 :
    ℝ))*v^2)*g^9)))*e+(((((19680 : ℝ))*v^2)*g^9)*f+((((12960 : ℝ))*v^2)*g^10)))*e+((((7680 :
    ℝ))*v^2+((960 : ℝ)))*g^11))*e+((((1920 : ℝ))*v^2+((1536 : ℝ)))*g^12)

def leftSquares4 (e f g v : ℝ) : ℝ :=
  (((((((((((40 : ℝ))*g^2)*e+((((-30 : ℝ))*v+((526 : ℝ)))*g^3))*e+((((-390 : ℝ))*v+(((10073 :
    ℝ)/2)))*g^4))*e+((((-2160 : ℝ))*v+((6716 : ℝ)))*g^5))*e+(((((-8340 : ℝ))*v)*g^5)*f+((((-6600
    : ℝ))*v+((3900 : ℝ)))*g^6)))*e+(((((-28140 : ℝ))*v)*g^6)*f+((((-12000 :
    ℝ))*v)*g^7)))*e+(((((-33960 : ℝ))*v)*g^7)*f+((((-12960 : ℝ))*v)*g^8)))*e+(((((-9840 :
    ℝ))*v)*g^8)*f+((((-7680 : ℝ))*v+((-960 : ℝ)))*g^9)))*e+((((-1920 : ℝ))*v+((-1536 :
    ℝ)))*g^10))*e

def leftSquares5 (e f g v : ℝ) : ℝ :=
  (((((((((15 : ℝ))*g^2)*e+(((195 : ℝ))*g^3))*e+(((1365 : ℝ))*g^4))*e+((((2085 :
    ℝ))*g^4)*f+(((1500 : ℝ))*g^5)))*e+((((7035 : ℝ))*g^5)*f+(((3240 : ℝ))*g^6)))*e+((((8490 :
    ℝ))*g^6)*f+(((2160 : ℝ))*g^7)))*e+((((1230 : ℝ))*g^7)*f+(((864 : ℝ))*g^8)))*e^2

def leftSquare0 (A e f g v : ℝ) : ℝ :=
  (306 : ℝ)*(A^2*e^7*g^4)*((1 : ℝ)*(g*v)+(-2 : ℝ)*(e))^2

def leftSquare1 (A e f g v : ℝ) : ℝ :=
  (128 : ℝ)*(A^2*e^8*g^3)*((1 : ℝ)*(g*v)+(-2 : ℝ)*(e))^2

def leftSquare2 (A e f g v : ℝ) : ℝ :=
  ((25 : ℝ)/2)*(A^2*e^9*g^2)*((1 : ℝ)*(g*v)+(-2 : ℝ)*(e))^2

def leftSquare3 (A e f g v : ℝ) : ℝ :=
  (15600 : ℝ)*(A^2*e^3*g^6)*((1 : ℝ)*(g^2*v)+((-1 : ℝ)/2)*(A*e))^2

def leftSquare4 (A e f g v : ℝ) : ℝ :=
  (26864 : ℝ)*(A^2*e^4*g^5)*((1 : ℝ)*(g^2*v)+((-1 : ℝ)/2)*(A*e))^2

def leftSquare5 (A e f g v : ℝ) : ℝ :=
  (34120 : ℝ)*(A^2*e^5*g^4)*((1 : ℝ)*(g^2*v)+((-1 : ℝ)/4)*(A*e))^2

def leftSquare6 (A e f g v : ℝ) : ℝ :=
  (2904 : ℝ)*(A^2*e^7*g^4)*((1 : ℝ)*(g*v)+(-1 : ℝ)*(A))^2

def leftSquare7 (A e f g v : ℝ) : ℝ :=
  (526 : ℝ)*(A^2*e^8*g^3)*((1 : ℝ)*(g*v)+(-1 : ℝ)*(A))^2

def leftSquare8 (A e f g v : ℝ) : ℝ :=
  (40 : ℝ)*(A^2*e^9*g^2)*((1 : ℝ)*(g*v)+(-1 : ℝ)*(A))^2

def leftSquare9 (A e f g v : ℝ) : ℝ :=
  (1536 : ℝ)*(A^3*g^8)*((1 : ℝ)*(g^2)+((-1 : ℝ)/2)*(A*e))^2

def leftSquare10 (A e f g v : ℝ) : ℝ :=
  (1920 : ℝ)*(A^3*g^8)*((1 : ℝ)*(g^2*v)+((-1 : ℝ)/2)*(A*e))^2

def leftSquare11 (A e f g v : ℝ) : ℝ :=
  (960 : ℝ)*(A^3*e*g^7)*((1 : ℝ)*(g^2)+((-1 : ℝ)/2)*(A*e))^2

def leftSquare12 (A e f g v : ℝ) : ℝ :=
  (7680 : ℝ)*(A^3*e*g^7)*((1 : ℝ)*(g^2*v)+((-1 : ℝ)/2)*(A*e))^2

def leftSquare13 (A e f g v : ℝ) : ℝ :=
  (19680 : ℝ)*(A^3*e^2*f*g^7)*((1 : ℝ)*(g*v)+((-1 : ℝ)/4)*(A))^2

def leftSquare14 (A e f g v : ℝ) : ℝ :=
  (12960 : ℝ)*(A^3*e^2*g^6)*((1 : ℝ)*(g^2*v)+((-1 : ℝ)/2)*(A*e))^2

def leftSquare15 (A e f g v : ℝ) : ℝ :=
  (33960 : ℝ)*(A^3*e^3*f*g^6)*((1 : ℝ)*(g*v)+((-1 : ℝ)/2)*(A))^2

def leftSquare16 (A e f g v : ℝ) : ℝ :=
  (24000 : ℝ)*(A^3*e^3*g^5)*((1 : ℝ)*(g^2*v)+((-1 : ℝ)/4)*(A*e))^2

def leftSquare17 (A e f g v : ℝ) : ℝ :=
  (28140 : ℝ)*(A^3*e^4*f*g^5)*((1 : ℝ)*(g*v)+((-1 : ℝ)/2)*(A))^2

def leftSquare18 (A e f g v : ℝ) : ℝ :=
  (13200 : ℝ)*(A^3*e^4*g^4)*((1 : ℝ)*(g^2*v)+((-1 : ℝ)/4)*(A*e))^2

def leftSquare19 (A e f g v : ℝ) : ℝ :=
  (8340 : ℝ)*(A^3*e^5*f*g^4)*((1 : ℝ)*(g*v)+((-1 : ℝ)/2)*(A))^2

def leftSquare20 (A e f g v : ℝ) : ℝ :=
  (2160 : ℝ)*(A^3*e^6*g^4)*((1 : ℝ)*(g*v)+((-1 : ℝ)/2)*(A))^2

def leftSquare21 (A e f g v : ℝ) : ℝ :=
  (195 : ℝ)*(A^3*e^7*g^3)*((1 : ℝ)*(g*v)+(-1 : ℝ)*(A))^2

def leftSquare22 (A e f g v : ℝ) : ℝ :=
  (15 : ℝ)*(A^3*e^8*g^2)*((1 : ℝ)*(g*v)+(-1 : ℝ)*(A))^2

def leftSquares (A e f g v : ℝ) : ℝ :=
  leftSquare0 A e f g v+leftSquare1 A e f g v+leftSquare2 A e f g v+leftSquare3 A e f g v+leftSquare4 A e f g v+leftSquare5 A e f g v+leftSquare6 A e f g v+leftSquare7 A e f g v+leftSquare8 A e f g v+leftSquare9 A e f g v+leftSquare10 A e f g v+leftSquare11 A e f g v+leftSquare12 A e f g v+leftSquare13 A e f g v+leftSquare14 A e f g v+leftSquare15 A e f g v+leftSquare16 A e f g v+leftSquare17 A e f g v+leftSquare18 A e f g v+leftSquare19 A e f g v+leftSquare20 A e f g v+leftSquare21 A e f g v+leftSquare22 A e f g v

/-- Exact cone substitution, without any sign premise. -/
theorem left_identity0 (e f g v : ℝ) :
    MixedLow4010.source (e+g) f g v = MixedLow4010.left e f g v + leftSquares0 e f g v := by
  unfold MixedLow4010.source MixedLow4010.left leftSquares0
  ring

/-- Exact cone substitution, without any sign premise. -/
theorem left_identity1 (e f g v : ℝ) :
    MixedLow4011.source (e+g) f g v = MixedLow4011.left e f g v + leftSquares1 e f g v := by
  unfold MixedLow4011.source MixedLow4011.left leftSquares1
  ring

/-- Exact cone substitution, without any sign premise. -/
theorem left_identity2 (e f g v : ℝ) :
    MixedLow4012.source (e+g) f g v = MixedLow4012.left e f g v + leftSquares2 e f g v := by
  unfold MixedLow4012.source MixedLow4012.left leftSquares2
  ring

/-- Exact cone substitution, without any sign premise. -/
theorem left_identity3 (e f g v : ℝ) :
    MixedLow4013.source (e+g) f g v = MixedLow4013.left e f g v + leftSquares3 e f g v := by
  unfold MixedLow4013.source MixedLow4013.left leftSquares3
  ring

/-- Exact cone substitution, without any sign premise. -/
theorem left_identity4 (e f g v : ℝ) :
    MixedLow4014.source (e+g) f g v = MixedLow4014.left e f g v + leftSquares4 e f g v := by
  unfold MixedLow4014.source MixedLow4014.left leftSquares4
  ring

/-- Exact cone substitution, without any sign premise. -/
theorem left_identity5 (e f g v : ℝ) :
    MixedLow4015.source (e+g) f g v = MixedLow4015.left e f g v + leftSquares5 e f g v := by
  unfold MixedLow4015.source MixedLow4015.left leftSquares5
  ring

/-- The displayed square family equals its complete A expansion. -/
theorem left_squares_identity (A e f g v : ℝ) :
    leftSquares A e f g v = leftSquares0 e f g v+leftSquares1 e f g v*A+leftSquares2 e f g v*A^2+leftSquares3 e f g v*A^3+leftSquares4 e f g v*A^4+leftSquares5 e f g v*A^5 := by
  unfold leftSquares leftSquare0 leftSquare1 leftSquare2 leftSquare3 leftSquare4 leftSquare5 leftSquare6 leftSquare7 leftSquare8 leftSquare9 leftSquare10 leftSquare11 leftSquare12 leftSquare13 leftSquare14 leftSquare15 leftSquare16 leftSquare17 leftSquare18 leftSquare19 leftSquare20 leftSquare21 leftSquare22 leftSquares0 leftSquares1 leftSquares2 leftSquares3 leftSquares4 leftSquares5
  ring

/-- Each weighted square is nonnegative on the closed orthant. -/
theorem left_squares_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ leftSquares A e f g v := by
  unfold leftSquares leftSquare0 leftSquare1 leftSquare2 leftSquare3 leftSquare4 leftSquare5 leftSquare6 leftSquare7 leftSquare8 leftSquare9 leftSquare10 leftSquare11 leftSquare12 leftSquare13 leftSquare14 leftSquare15 leftSquare16 leftSquare17 leftSquare18 leftSquare19 leftSquare20 leftSquare21 leftSquare22
  positivity

def rightSquares0 (e f g v : ℝ) : ℝ :=
  (0 : ℝ)

def rightSquares1 (e f g v : ℝ) : ℝ :=
  (0 : ℝ)

def rightSquares2 (e f g v : ℝ) : ℝ :=
  (0 : ℝ)

def rightSquares3 (e f g v : ℝ) : ℝ :=
  (0 : ℝ)

def rightSquares4 (e f g v : ℝ) : ℝ :=
  (0 : ℝ)

def rightSquares5 (e f g v : ℝ) : ℝ :=
  (0 : ℝ)

def rightSquares (A e f g v : ℝ) : ℝ :=
  0

/-- Exact cone substitution, without any sign premise. -/
theorem right_identity0 (e f g v : ℝ) :
    MixedLow4010.source e f (e+g) v = MixedLow4010.right e f g v + rightSquares0 e f g v := by
  unfold MixedLow4010.source MixedLow4010.right rightSquares0
  ring

/-- Exact cone substitution, without any sign premise. -/
theorem right_identity1 (e f g v : ℝ) :
    MixedLow4011.source e f (e+g) v = MixedLow4011.right e f g v + rightSquares1 e f g v := by
  unfold MixedLow4011.source MixedLow4011.right rightSquares1
  ring

/-- Exact cone substitution, without any sign premise. -/
theorem right_identity2 (e f g v : ℝ) :
    MixedLow4012.source e f (e+g) v = MixedLow4012.right e f g v + rightSquares2 e f g v := by
  unfold MixedLow4012.source MixedLow4012.right rightSquares2
  ring

/-- Exact cone substitution, without any sign premise. -/
theorem right_identity3 (e f g v : ℝ) :
    MixedLow4013.source e f (e+g) v = MixedLow4013.right e f g v + rightSquares3 e f g v := by
  unfold MixedLow4013.source MixedLow4013.right rightSquares3
  ring

/-- Exact cone substitution, without any sign premise. -/
theorem right_identity4 (e f g v : ℝ) :
    MixedLow4014.source e f (e+g) v = MixedLow4014.right e f g v + rightSquares4 e f g v := by
  unfold MixedLow4014.source MixedLow4014.right rightSquares4
  ring

/-- Exact cone substitution, without any sign premise. -/
theorem right_identity5 (e f g v : ℝ) :
    MixedLow4015.source e f (e+g) v = MixedLow4015.right e f g v + rightSquares5 e f g v := by
  unfold MixedLow4015.source MixedLow4015.right rightSquares5
  ring

/-- The displayed square family equals its complete A expansion. -/
theorem right_squares_identity (A e f g v : ℝ) :
    rightSquares A e f g v = rightSquares0 e f g v+rightSquares1 e f g v*A+rightSquares2 e f g v*A^2+rightSquares3 e f g v*A^3+rightSquares4 e f g v*A^4+rightSquares5 e f g v*A^5 := by
  unfold rightSquares  rightSquares0 rightSquares1 rightSquares2 rightSquares3 rightSquares4 rightSquares5
  ring

/-- Each weighted square is nonnegative on the closed orthant. -/
theorem right_squares_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ rightSquares A e f g v := by
  unfold rightSquares 
  positivity

/-- The two closed order cones cover all nonnegative parameters. -/
theorem nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ source A e f g v := by
  rcases le_total g e with hge | heg

  · have hh : e = (e-g)+g := by ring
    have h0 := MixedLow4010.left_signs (sub_nonneg.mpr hge) hf hg hv
    have h1 := MixedLow4011.left_signs (sub_nonneg.mpr hge) hf hg hv
    have h2 := MixedLow4012.left_signs (sub_nonneg.mpr hge) hf hg hv
    have h3 := MixedLow4013.left_signs (sub_nonneg.mpr hge) hf hg hv
    have h4 := MixedLow4014.left_signs (sub_nonneg.mpr hge) hf hg hv
    have h5 := MixedLow4015.left_signs (sub_nonneg.mpr hge) hf hg hv
    have hs := left_squares_nonnegative hA (sub_nonneg.mpr hge) hf hg hv
    have hid : source A e f g v =
        MixedLow4010.left (e-g) f g v+MixedLow4011.left (e-g) f g v*A+MixedLow4012.left (e-g) f g v*A^2+MixedLow4013.left (e-g) f g v*A^3+MixedLow4014.left (e-g) f g v*A^4+MixedLow4015.left (e-g) f g v*A^5+leftSquares A (e-g) f g v := by
      unfold source
      rw [hh, left_identity0, left_identity1, left_identity2, left_identity3, left_identity4, left_identity5, left_squares_identity]
      ring
    rw [hid]
    positivity
  · have hh : g = e+(g-e) := by ring
    have h0 := MixedLow4010.right_signs he hf (sub_nonneg.mpr heg) hv
    have h1 := MixedLow4011.right_signs he hf (sub_nonneg.mpr heg) hv
    have h2 := MixedLow4012.right_signs he hf (sub_nonneg.mpr heg) hv
    have h3 := MixedLow4013.right_signs he hf (sub_nonneg.mpr heg) hv
    have h4 := MixedLow4014.right_signs he hf (sub_nonneg.mpr heg) hv
    have h5 := MixedLow4015.right_signs he hf (sub_nonneg.mpr heg) hv
    have hs := right_squares_nonnegative hA he hf (sub_nonneg.mpr heg) hv
    have hid : source A e f g v =
        MixedLow4010.right e f (g-e) v+MixedLow4011.right e f (g-e) v*A+MixedLow4012.right e f (g-e) v*A^2+MixedLow4013.right e f (g-e) v*A^3+MixedLow4014.right e f (g-e) v*A^4+MixedLow4015.right e f (g-e) v*A^5+rightSquares A e f (g-e) v := by
      unfold source
      rw [hh, right_identity0, right_identity1, right_identity2, right_identity3, right_identity4, right_identity5, right_squares_identity]
      ring
    rw [hid]
    positivity
end MixedLow401
end
end SPR.N6.Tail.CoreEndpoint
