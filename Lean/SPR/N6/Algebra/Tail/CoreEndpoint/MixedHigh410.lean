import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh4100
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh4101
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh4102
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh4103
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh4104
/-! The complete mixed high outer coefficient (4,1,0).

This is a static normalized research source, organized by powers of A.
Its two closed e/g cones are retained explicitly. Identification with the
original formal coefficient requires a separate source bridge, whose scale
is 2*(e+f+g); this file does not assert that correspondence.
-/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 0

namespace MixedHigh410

/- The five A-coefficients of the reduced source. -/
def source (A e f g v : ℝ) : ℝ :=
  MixedHigh4100.source e f g v + MixedHigh4101.source e f g v*A +
    MixedHigh4102.source e f g v*A^2 + MixedHigh4103.source e f g v*A^3 +
    MixedHigh4104.source e f g v*A^4

/- Square certificate term 0. -/
def square0 (A e f g v : ℝ) : ℝ :=
  (768 : ℝ)*(A^2*e^8*v^2)*((1 : ℝ)*(e^2)+((-1 : ℝ)/2)*(A*g))^2

/- Square certificate term 1. -/
def square1 (A e f g v : ℝ) : ℝ :=
  (5217 : ℝ)*(A^3*e^5*f*g^3)*((1 : ℝ)*(g*v)+(-4 : ℝ)*(e^2))^2

/- Square certificate term 2. -/
def square2 (A e f g v : ℝ) : ℝ :=
  (4447 : ℝ)*(A^3*e^5*f*g^5)*((1 : ℝ)*(v)+(-2 : ℝ)*(e))^2

/- Square certificate term 3. -/
def square3 (A e f g v : ℝ) : ℝ :=
  (5 : ℝ)*(A^3*e^2*g^9)*((1 : ℝ)*(v)+(-1 : ℝ)*(e))^2

/- Square certificate term 4. -/
def square4 (A e f g v : ℝ) : ℝ :=
  (113 : ℝ)*(A^3*e^3*g^8)*((1 : ℝ)*(v)+(-1 : ℝ)*(e))^2

/- Square certificate term 5. -/
def square5 (A e f g v : ℝ) : ℝ :=
  (486 : ℝ)*(A^3*e^4*g^7)*((1 : ℝ)*(v)+(-2 : ℝ)*(e))^2

/- Square certificate term 6. -/
def square6 (A e f g v : ℝ) : ℝ :=
  (7424 : ℝ)*(A^2*e^10*g^2)*((1 : ℝ)*(v)+(-1 : ℝ)*(A))^2

/- Square certificate term 7. -/
def square7 (A e f g v : ℝ) : ℝ :=
  (2200 : ℝ)*(A^3*e^5*g^6)*((1 : ℝ)*(v)+(-2 : ℝ)*(e))^2

/- Square certificate term 8. -/
def square8 (A e f g v : ℝ) : ℝ :=
  (17216 : ℝ)*(A^2*e^9*g^3)*((1 : ℝ)*(v)+(-1 : ℝ)*(A))^2

/- Square certificate term 9. -/
def square9 (A e f g v : ℝ) : ℝ :=
  (2924 : ℝ)*(A^3*e^5*g^4)*((1 : ℝ)*(g*v)+(-4 : ℝ)*(e^2))^2

/- Square certificate term 10. -/
def square10 (A e f g v : ℝ) : ℝ :=
  (4680 : ℝ)*(A^3*e^6*g^3)*((1 : ℝ)*(g*v)+(-4 : ℝ)*(e^2))^2

/- Square certificate term 11. -/
def square11 (A e f g v : ℝ) : ℝ :=
  (1230 : ℝ)*(A^4*e^7*f*g^2)*((1 : ℝ)*(v)+(-4 : ℝ)*(e))^2

/- Square certificate term 12. -/
def square12 (A e f g v : ℝ) : ℝ :=
  (8490 : ℝ)*(A^4*e^6*f*g^3)*((1 : ℝ)*(v)+(-2 : ℝ)*(e))^2

/- Square certificate term 13. -/
def square13 (A e f g v : ℝ) : ℝ :=
  (2085 : ℝ)*(A^4*e^4*f*g^5)*((1 : ℝ)*(v)+(-2 : ℝ)*(e))^2

/- Square certificate term 14. -/
def square14 (A e f g v : ℝ) : ℝ :=
  (7035 : ℝ)*(A^4*e^5*f*g^4)*((1 : ℝ)*(v)+(-2 : ℝ)*(e))^2

/- Square certificate term 15. -/
def square15 (A e f g v : ℝ) : ℝ :=
  (15 : ℝ)*(A^4*e^2*g^8)*((1 : ℝ)*(v)+(-1 : ℝ)*(e))^2

/- Square certificate term 16. -/
def square16 (A e f g v : ℝ) : ℝ :=
  (195 : ℝ)*(A^4*e^3*g^7)*((1 : ℝ)*(v)+(-1 : ℝ)*(e))^2

/- Square certificate term 17. -/
def square17 (A e f g v : ℝ) : ℝ :=
  (480 : ℝ)*(A^4*e^8)*((1 : ℝ)*(g*v)+(-2 : ℝ)*(e^2))^2

/- Square certificate term 18. -/
def square18 (A e f g v : ℝ) : ℝ :=
  (540 : ℝ)*(A^4*e^4*g^6)*((1 : ℝ)*(v)+(-2 : ℝ)*(e))^2

/- Square certificate term 19. -/
def square19 (A e f g v : ℝ) : ℝ :=
  (1920 : ℝ)*(A^4*e^7*g)*((1 : ℝ)*(g*v)+(-2 : ℝ)*(e^2))^2

/- Square certificate term 20. -/
def square20 (A e f g v : ℝ) : ℝ :=
  (825 : ℝ)*(A^4*e^4*g^4)*((1 : ℝ)*(g*v)+(-4 : ℝ)*(e^2))^2

/- Square certificate term 21. -/
def square21 (A e f g v : ℝ) : ℝ :=
  (3240 : ℝ)*(A^4*e^6*g^2)*((1 : ℝ)*(g*v)+(-2 : ℝ)*(e^2))^2

/- Square certificate term 22. -/
def square22 (A e f g v : ℝ) : ℝ :=
  (1500 : ℝ)*(A^4*e^5*g^3)*((1 : ℝ)*(g*v)+(-4 : ℝ)*(e^2))^2

/- The complete finite square sum. -/
def squares (A e f g v : ℝ) : ℝ :=
  square0 A e f g v+square1 A e f g v+square2 A e f g v+square3 A e f g v+square4 A e f g v+square5 A e f g v+square6 A e f g v+square7 A e f g v+square8 A e f g v+square9 A e f g v+square10 A e f g v+square11 A e f g v+square12 A e f g v+square13 A e f g v+square14 A e f g v+square15 A e f g v+square16 A e f g v+square17 A e f g v+square18 A e f g v+square19 A e f g v+square20 A e f g v+square21 A e f g v+square22 A e f g v

def squares0 (e f g v : ℝ) : ℝ :=
  (0 : ℝ)

def squares1 (e f g v : ℝ) : ℝ :=
  (0 : ℝ)

def squares2 (e f g v : ℝ) : ℝ :=
  (((((768 : ℝ))*v^2)*e^2+((((7424 : ℝ))*v^2)*g^2))*e+((((17216 : ℝ))*v^2)*g^3))*e^9

def squares3 (e f g v : ℝ) : ℝ :=
  (((((((((((((74880 : ℝ))*g+(((-14848 : ℝ))*v))*g+(((-768 : ℝ))*v^2))*g)*e+((((83472 :
    ℝ))*g^3)*f+((((46784 : ℝ))*g+(((-34432 : ℝ))*v))*g^3)))*e+((((-37440 :
    ℝ))*v)*g^4))*e+(((((17788 : ℝ))*g+(((-41736 : ℝ))*v))*g^4)*f+((((8800 : ℝ))*g+(((-23392 :
    ℝ))*v))*g^5)))*e+(((((-17788 : ℝ))*v)*g^5)*f+(((((1944 : ℝ))*g+(((-8800 : ℝ))*v))*g+(((4680
    : ℝ))*v^2))*g^5)))*e+(((((9664 : ℝ))*v^2)*g^5)*f+(((((113 : ℝ))*g+(((-1944 :
    ℝ))*v))*g+(((5124 : ℝ))*v^2))*g^6)))*e+(((((5 : ℝ))*g+(((-226 : ℝ))*v))*g+(((486 :
    ℝ))*v^2))*g^7))*e+(((((-10 : ℝ))*v)*g+(((113 : ℝ))*v^2))*g^8))*e+((((5 : ℝ))*v^2)*g^9))*e^2

def squares4 (e f g v : ℝ) : ℝ :=
  ((((((((((((1920 : ℝ))*e+(((7680 : ℝ))*g))*e+((((20384 : ℝ))*g+(((-1920 :
    ℝ))*v))*g))*e+((((19680 : ℝ))*g^2)*f+((((41216 : ℝ))*g+(((-7680 :
    ℝ))*v))*g^2)))*e+(((((33960 : ℝ))*g+(((-9840 : ℝ))*v))*g^2)*f+(((((13200 : ℝ))*g+(((-12960 :
    ℝ))*v))*g+(((672 : ℝ))*v^2))*g^2)))*e+((((((28140 : ℝ))*g+(((-33960 : ℝ))*v))*g+(((1230 :
    ℝ))*v^2))*g^2)*f+(((((-12000 : ℝ))*v)*g+(((1920 : ℝ))*v^2))*g^3)))*e+((((((8340 :
    ℝ))*g+(((-28140 : ℝ))*v))*g+(((8490 : ℝ))*v^2))*g^3)*f+(((((2160 : ℝ))*g+(((-6600 :
    ℝ))*v))*g+(((3240 : ℝ))*v^2))*g^4)))*e+((((((-8340 : ℝ))*v)*g+(((7035 :
    ℝ))*v^2))*g^4)*f+(((((195 : ℝ))*g+(((-2160 : ℝ))*v))*g+(((1500 :
    ℝ))*v^2))*g^5)))*e+(((((2085 : ℝ))*v^2)*g^5)*f+(((((15 : ℝ))*g+(((-390 : ℝ))*v))*g+(((1365 :
    ℝ))*v^2))*g^6)))*e+(((((-30 : ℝ))*v)*g+(((195 : ℝ))*v^2))*g^7))*e+((((15 :
    ℝ))*v^2)*g^8))*e^2

set_option maxHeartbeats 0 in
theorem left_identity0 (e f g v : ℝ) :
    MixedHigh4100.source (e+g) f g v = MixedHigh4100.left e f g v := by
  unfold MixedHigh4100.source MixedHigh4100.left
  ring

set_option maxHeartbeats 0 in
theorem right_identity0 (e f g v : ℝ) :
    MixedHigh4100.source e f (e+g) v =
      MixedHigh4100.remainder e f g v + squares0 e f g v := by
  unfold MixedHigh4100.source MixedHigh4100.remainder squares0
  ring

set_option maxHeartbeats 0 in
theorem left_identity1 (e f g v : ℝ) :
    MixedHigh4101.source (e+g) f g v = MixedHigh4101.left e f g v := by
  unfold MixedHigh4101.source MixedHigh4101.left
  ring

set_option maxHeartbeats 0 in
theorem right_identity1 (e f g v : ℝ) :
    MixedHigh4101.source e f (e+g) v =
      MixedHigh4101.remainder e f g v + squares1 e f g v := by
  unfold MixedHigh4101.source MixedHigh4101.remainder squares1
  ring

set_option maxHeartbeats 0 in
theorem left_identity2 (e f g v : ℝ) :
    MixedHigh4102.source (e+g) f g v = MixedHigh4102.left e f g v := by
  unfold MixedHigh4102.source MixedHigh4102.left
  ring

set_option maxHeartbeats 0 in
theorem right_identity2 (e f g v : ℝ) :
    MixedHigh4102.source e f (e+g) v =
      MixedHigh4102.remainder e f g v + squares2 e f g v := by
  unfold MixedHigh4102.source MixedHigh4102.remainder squares2
  ring

set_option maxHeartbeats 0 in
theorem left_identity3 (e f g v : ℝ) :
    MixedHigh4103.source (e+g) f g v = MixedHigh4103.left e f g v := by
  unfold MixedHigh4103.source MixedHigh4103.left
  ring

set_option maxHeartbeats 0 in
theorem right_identity3 (e f g v : ℝ) :
    MixedHigh4103.source e f (e+g) v =
      MixedHigh4103.remainder e f g v + squares3 e f g v := by
  unfold MixedHigh4103.source MixedHigh4103.remainder squares3
  ring

set_option maxHeartbeats 0 in
theorem left_identity4 (e f g v : ℝ) :
    MixedHigh4104.source (e+g) f g v = MixedHigh4104.left e f g v := by
  unfold MixedHigh4104.source MixedHigh4104.left
  ring

set_option maxHeartbeats 0 in
theorem right_identity4 (e f g v : ℝ) :
    MixedHigh4104.source e f (e+g) v =
      MixedHigh4104.remainder e f g v + squares4 e f g v := by
  unfold MixedHigh4104.source MixedHigh4104.remainder squares4
  ring

set_option maxHeartbeats 0 in
/- The square family is exactly its expanded A-coefficient sum. -/
theorem squares_identity (A e f g v : ℝ) :
    squares A e f g v =
      squares0 e f g v + squares1 e f g v*A + squares2 e f g v*A^2 +
        squares3 e f g v*A^3 + squares4 e f g v*A^4 := by
  unfold squares square0 square1 square2 square3 square4 square5 square6 square7 square8 square9 square10 square11 square12 square13 square14 square15 square16 square17 square18 square19 square20 square21 square22 squares0 squares1 squares2 squares3 squares4
  ring


/- Every square factor is nonnegative on the closed orthant. -/
theorem squares_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ squares A e f g v := by
  unfold squares square0 square1 square2 square3 square4 square5 square6 square7 square8 square9 square10 square11 square12 square13 square14 square15 square16 square17 square18 square19 square20 square21 square22
  positivity


set_option maxHeartbeats 0 in
/- The source is nonnegative in both closed e/g order cones. -/
theorem nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ source A e f g v := by
  rcases le_total g e with hge | heg
  · have hh : e = (e-g)+g := by ring
    have h0 := MixedHigh4100.left_signs (sub_nonneg.mpr hge) hf hg hv
    have h1 := MixedHigh4101.left_signs (sub_nonneg.mpr hge) hf hg hv
    have h2 := MixedHigh4102.left_signs (sub_nonneg.mpr hge) hf hg hv
    have h3 := MixedHigh4103.left_signs (sub_nonneg.mpr hge) hf hg hv
    have h4 := MixedHigh4104.left_signs (sub_nonneg.mpr hge) hf hg hv
    unfold source
    rw [hh, left_identity0, left_identity1, left_identity2, left_identity3,
      left_identity4]
    positivity
  · have hh : g = e+(g-e) := by ring
    have h0 := MixedHigh4100.remainder_signs he hf (sub_nonneg.mpr heg) hv
    have h1 := MixedHigh4101.remainder_signs he hf (sub_nonneg.mpr heg) hv
    have h2 := MixedHigh4102.remainder_signs he hf (sub_nonneg.mpr heg) hv
    have h3 := MixedHigh4103.remainder_signs he hf (sub_nonneg.mpr heg) hv
    have h4 := MixedHigh4104.remainder_signs he hf (sub_nonneg.mpr heg) hv
    have hs := squares_nonnegative hA he hf (sub_nonneg.mpr heg) hv
    have hid : source A e f g v =
        MixedHigh4100.remainder e f (g-e) v +
          MixedHigh4101.remainder e f (g-e) v*A +
          MixedHigh4102.remainder e f (g-e) v*A^2 +
          MixedHigh4103.remainder e f (g-e) v*A^3 +
          MixedHigh4104.remainder e f (g-e) v*A^4 +
          squares A e f (g-e) v := by
      unfold source
      rw [hh, right_identity0, right_identity1, right_identity2, right_identity3,
        right_identity4, squares_identity]
      ring
    rw [hid]
    positivity

end MixedHigh410
end
end SPR.N6.Tail.CoreEndpoint
