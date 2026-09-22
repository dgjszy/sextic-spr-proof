import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh4010
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh4011
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh4012
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh4013
/-! A static polynomial certificate for the mixed high block (4,0,1).

This module proves nonnegativity of the displayed polynomial on both closed
e/g cones. Its identification with the actual core coefficient is proved separately
in Construction.CoreMixedCoefficient. The correspondence is that the coefficient
of the twice-homogeneous core equals `2*(e+f+g)*source`, at m=(e+f+g)/f
and t=b+v; no source-correspondence theorem is asserted here.
-/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 0

namespace MixedHigh401

/- The four A-coefficients of the reduced source. -/
def source (A e f g v : ℝ) : ℝ :=
  MixedHigh4010.source e f g v + MixedHigh4011.source e f g v*A +
    MixedHigh4012.source e f g v*A^2 + MixedHigh4013.source e f g v*A^3

/- Square certificate term 0. -/
def square0 (A e f g v : ℝ) : ℝ :=
  (384 : ℝ)*(A*e^8*v^2)*((1 : ℝ)*(e^2)+((-1 : ℝ)/2)*(A*g))^2

/- Square certificate term 1. -/
def square1 (A e f g v : ℝ) : ℝ :=
  (19388 : ℝ)*(A*e^8*f*g^3)*((1 : ℝ)*(v)+(-1 : ℝ)*(A))^2

/- Square certificate term 2. -/
def square2 (A e f g v : ℝ) : ℝ :=
  (15462 : ℝ)*(A^2*e^6*f*g^4)*((1 : ℝ)*(v)+(-2 : ℝ)*(e))^2

/- Square certificate term 3. -/
def square3 (A e f g v : ℝ) : ℝ :=
  ((13037 : ℝ)/2)*(A^2*e^5*f*g^5)*((1 : ℝ)*(v)+(-2 : ℝ)*(e))^2

/- Square certificate term 4. -/
def square4 (A e f g v : ℝ) : ℝ :=
  (5 : ℝ)*(A^2*e^2*g^9)*((1 : ℝ)*(v)+(-1 : ℝ)*(e))^2

/- Square certificate term 5. -/
def square5 (A e f g v : ℝ) : ℝ :=
  (104 : ℝ)*(A^2*e^3*g^8)*((1 : ℝ)*(v)+(-1 : ℝ)*(e))^2

/- Square certificate term 6. -/
def square6 (A e f g v : ℝ) : ℝ :=
  (960 : ℝ)*(A*e^11*g)*((1 : ℝ)*(v)+(-1 : ℝ)*(A))^2

/- Square certificate term 7. -/
def square7 (A e f g v : ℝ) : ℝ :=
  ((861 : ℝ)/2)*(A^2*e^4*g^7)*((1 : ℝ)*(v)+(-2 : ℝ)*(e))^2

/- Square certificate term 8. -/
def square8 (A e f g v : ℝ) : ℝ :=
  (7712 : ℝ)*(A*e^10*g^2)*((1 : ℝ)*(v)+(-1 : ℝ)*(A))^2

/- Square certificate term 9. -/
def square9 (A e f g v : ℝ) : ℝ :=
  (1915 : ℝ)*(A^2*e^5*g^6)*((1 : ℝ)*(v)+(-2 : ℝ)*(e))^2

/- Square certificate term 10. -/
def square10 (A e f g v : ℝ) : ℝ :=
  (15728 : ℝ)*(A*e^9*g^3)*((1 : ℝ)*(v)+(-1 : ℝ)*(A))^2

/- Square certificate term 11. -/
def square11 (A e f g v : ℝ) : ℝ :=
  (2537 : ℝ)*(A^2*e^5*g^4)*((1 : ℝ)*(g*v)+(-4 : ℝ)*(e^2))^2

/- Square certificate term 12. -/
def square12 (A e f g v : ℝ) : ℝ :=
  ((308225 : ℝ)/128)*(A*e^8*g^4)*((1 : ℝ)*(v)+(-1 : ℝ)*(A))^2

/- Square certificate term 13. -/
def square13 (A e f g v : ℝ) : ℝ :=
  ((3592191 : ℝ)/256)*(A*e^7*g^3)*((1 : ℝ)*(g*v)+(-1 : ℝ)*(A*e))^2

/- Square certificate term 14. -/
def square14 (A e f g v : ℝ) : ℝ :=
  (1230 : ℝ)*(A^3*e^7*f*g^2)*((1 : ℝ)*(v)+(-4 : ℝ)*(e))^2

/- Square certificate term 15. -/
def square15 (A e f g v : ℝ) : ℝ :=
  (8490 : ℝ)*(A^3*e^6*f*g^3)*((1 : ℝ)*(v)+(-2 : ℝ)*(e))^2

/- Square certificate term 16. -/
def square16 (A e f g v : ℝ) : ℝ :=
  (2085 : ℝ)*(A^3*e^4*f*g^5)*((1 : ℝ)*(v)+(-2 : ℝ)*(e))^2

/- Square certificate term 17. -/
def square17 (A e f g v : ℝ) : ℝ :=
  (7035 : ℝ)*(A^3*e^5*f*g^4)*((1 : ℝ)*(v)+(-2 : ℝ)*(e))^2

/- Square certificate term 18. -/
def square18 (A e f g v : ℝ) : ℝ :=
  (15 : ℝ)*(A^3*e^2*g^8)*((1 : ℝ)*(v)+(-1 : ℝ)*(e))^2

/- Square certificate term 19. -/
def square19 (A e f g v : ℝ) : ℝ :=
  (195 : ℝ)*(A^3*e^3*g^7)*((1 : ℝ)*(v)+(-1 : ℝ)*(e))^2

/- Square certificate term 20. -/
def square20 (A e f g v : ℝ) : ℝ :=
  (480 : ℝ)*(A^3*e^8)*((1 : ℝ)*(g*v)+(-2 : ℝ)*(e^2))^2

/- Square certificate term 21. -/
def square21 (A e f g v : ℝ) : ℝ :=
  (540 : ℝ)*(A^3*e^4*g^6)*((1 : ℝ)*(v)+(-2 : ℝ)*(e))^2

/- Square certificate term 22. -/
def square22 (A e f g v : ℝ) : ℝ :=
  (1920 : ℝ)*(A^3*e^7*g)*((1 : ℝ)*(g*v)+(-2 : ℝ)*(e^2))^2

/- Square certificate term 23. -/
def square23 (A e f g v : ℝ) : ℝ :=
  (825 : ℝ)*(A^3*e^4*g^4)*((1 : ℝ)*(g*v)+(-4 : ℝ)*(e^2))^2

/- Square certificate term 24. -/
def square24 (A e f g v : ℝ) : ℝ :=
  (3240 : ℝ)*(A^3*e^6*g^2)*((1 : ℝ)*(g*v)+(-2 : ℝ)*(e^2))^2

/- Square certificate term 25. -/
def square25 (A e f g v : ℝ) : ℝ :=
  (1500 : ℝ)*(A^3*e^5*g^3)*((1 : ℝ)*(g*v)+(-4 : ℝ)*(e^2))^2

/- The complete finite square sum. -/
def squares (A e f g v : ℝ) : ℝ :=
  square0 A e f g v+square1 A e f g v+square2 A e f g v+square3 A e f g v+square4 A e f g v+square5 A e f g v+square6 A e f g v+square7 A e f g v+square8 A e f g v+square9 A e f g v+square10 A e f g v+square11 A e f g v+square12 A e f g v+square13 A e f g v+square14 A e f g v+square15 A e f g v+square16 A e f g v+square17 A e f g v+square18 A e f g v+square19 A e f g v+square20 A e f g v+square21 A e f g v+square22 A e f g v+square23 A e f g v+square24 A e f g v+square25 A e f g v

def squares0 (e f g v : ℝ) : ℝ :=
  0

def squares1 (e f g v : ℝ) : ℝ :=
  (((((((384) * v ^ 2) * e + (((960) * v ^ 2) * g)) * e + (((7712) * v ^ 2) * g ^ 2)) * e +
    (((15728) * v ^ 2) * g ^ 3)) * e + ((((19388) * v ^ 2) * g ^ 3) * f + ((((308225 / 128)) * v
    ^ 2) * g ^ 4))) * e + ((((3592191 / 256)) * v ^ 2) * g ^ 5)) * e ^ 7

def squares2 (e f g v : ℝ) : ℝ :=
  ((((((((((((-1920) * v) * g) * e + ((((-15424) * v) * g + ((-384) * v ^ 2)) * g)) * e +
    (((40592) * g + ((-31456) * v)) * g ^ 3)) * e + ((((61848) * g + ((-38776) * v)) * g ^ 3) *
    f + ((((-4208641 / 128)) * v) * g ^ 4))) * e + ((((26074) * g + ((-61848) * v)) * g ^ 4) * f
    + (((7660) * g + ((-20296) * v)) * g ^ 5))) * e + (((((-26074) * v) * g + ((15462) * v ^ 2))
    * g ^ 4) * f + (((1722) * g + ((-7660) * v)) * g ^ 6))) * e + (((((13037 / 2)) * v ^ 2) * g
    ^ 5) * f + ((((104) * g + ((-1722) * v)) * g + ((4452) * v ^ 2)) * g ^ 6))) * e + ((((5) * g
    + ((-208) * v)) * g + (((861 / 2)) * v ^ 2)) * g ^ 7)) * e + ((((-10) * v) * g + ((104) * v
    ^ 2)) * g ^ 8)) * e + (((5) * v ^ 2) * g ^ 9)) * e ^ 2

def squares3 (e f g v : ℝ) : ℝ :=
  (((((((((((1920) * e + ((8640) * g)) * e + (((20672) * g + ((-1920) * v)) * g)) * e +
    (((19680) * g ^ 2) * f + ((((13762559 / 256)) * g + ((-7680) * v)) * g ^ 2))) * e +
    ((((53348) * g + ((-9840) * v)) * g ^ 2) * f + (((((1997825 / 128)) * g + ((-12960) * v)) *
    g + ((576) * v ^ 2)) * g ^ 2))) * e + (((((28140) * g + ((-33960) * v)) * g + ((1230) * v ^
    2)) * g ^ 2) * f + ((((-12000) * v) * g + ((1920) * v ^ 2)) * g ^ 3))) * e + (((((8340) * g
    + ((-28140) * v)) * g + ((8490) * v ^ 2)) * g ^ 3) * f + ((((2160) * g + ((-6600) * v)) * g
    + ((3240) * v ^ 2)) * g ^ 4))) * e + (((((-8340) * v) * g + ((7035) * v ^ 2)) * g ^ 4) * f +
    ((((195) * g + ((-2160) * v)) * g + ((1500) * v ^ 2)) * g ^ 5))) * e + ((((2085) * v ^ 2) *
    g ^ 5) * f + ((((15) * g + ((-390) * v)) * g + ((1365) * v ^ 2)) * g ^ 6))) * e + ((((-30) *
    v) * g + ((195) * v ^ 2)) * g ^ 7)) * e + (((15) * v ^ 2) * g ^ 8)) * e ^ 2

set_option maxHeartbeats 0 in
theorem left_identity0 (e f g v : ℝ) :
    MixedHigh4010.source (e+g) f g v = MixedHigh4010.left e f g v := by
  unfold MixedHigh4010.source MixedHigh4010.left
  ring

set_option maxHeartbeats 0 in
theorem right_identity0 (e f g v : ℝ) :
    MixedHigh4010.source e f (e+g) v =
      MixedHigh4010.remainder e f g v + squares0 e f g v := by
  unfold MixedHigh4010.source MixedHigh4010.remainder squares0
  ring

set_option maxHeartbeats 0 in
theorem left_identity1 (e f g v : ℝ) :
    MixedHigh4011.source (e+g) f g v = MixedHigh4011.left e f g v := by
  unfold MixedHigh4011.source MixedHigh4011.left
  ring

set_option maxHeartbeats 0 in
theorem right_identity1 (e f g v : ℝ) :
    MixedHigh4011.source e f (e+g) v =
      MixedHigh4011.remainder e f g v + squares1 e f g v := by
  unfold MixedHigh4011.source MixedHigh4011.remainder squares1
  ring

set_option maxHeartbeats 0 in
theorem left_identity2 (e f g v : ℝ) :
    MixedHigh4012.source (e+g) f g v = MixedHigh4012.left e f g v := by
  unfold MixedHigh4012.source MixedHigh4012.left
  ring

set_option maxHeartbeats 0 in
theorem right_identity2 (e f g v : ℝ) :
    MixedHigh4012.source e f (e+g) v =
      MixedHigh4012.remainder e f g v + squares2 e f g v := by
  unfold MixedHigh4012.source MixedHigh4012.remainder squares2
  ring

set_option maxHeartbeats 0 in
theorem left_identity3 (e f g v : ℝ) :
    MixedHigh4013.source (e+g) f g v = MixedHigh4013.left e f g v := by
  unfold MixedHigh4013.source MixedHigh4013.left
  ring

set_option maxHeartbeats 0 in
theorem right_identity3 (e f g v : ℝ) :
    MixedHigh4013.source e f (e+g) v =
      MixedHigh4013.remainder e f g v + squares3 e f g v := by
  unfold MixedHigh4013.source MixedHigh4013.remainder squares3
  ring

set_option maxHeartbeats 0 in
/- The square family is exactly the expanded square coefficient sum. -/
theorem squares_identity (A e f g v : ℝ) :
    squares A e f g v =
      squares0 e f g v + squares1 e f g v*A + squares2 e f g v*A^2 +
        squares3 e f g v*A^3 := by
  unfold squares square0 square1 square2 square3 square4 square5 square6 square7 square8 square9 square10 square11 square12 square13 square14 square15 square16 square17 square18 square19 square20 square21 square22 square23 square24 square25 squares0 squares1 squares2 squares3
  ring


/- Every square factor is nonnegative on the closed orthant. -/
theorem squares_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ squares A e f g v := by
  unfold squares square0 square1 square2 square3 square4 square5 square6 square7 square8 square9 square10 square11 square12 square13 square14 square15 square16 square17 square18 square19 square20 square21 square22 square23 square24 square25
  positivity


set_option maxHeartbeats 0 in
/- The source is nonnegative in both closed e/g order cones. -/
theorem nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ source A e f g v := by
  rcases le_total g e with hge | heg
  · have hh : e = (e-g)+g := by ring
    have h0 := MixedHigh4010.left_signs (sub_nonneg.mpr hge) hf hg hv
    have h1 := MixedHigh4011.left_signs (sub_nonneg.mpr hge) hf hg hv
    have h2 := MixedHigh4012.left_signs (sub_nonneg.mpr hge) hf hg hv
    have h3 := MixedHigh4013.left_signs (sub_nonneg.mpr hge) hf hg hv
    unfold source
    rw [hh, left_identity0, left_identity1, left_identity2, left_identity3]
    positivity
  · have hh : g = e+(g-e) := by ring
    have h0 := MixedHigh4010.remainder_signs he hf (sub_nonneg.mpr heg) hv
    have h1 := MixedHigh4011.remainder_signs he hf (sub_nonneg.mpr heg) hv
    have h2 := MixedHigh4012.remainder_signs he hf (sub_nonneg.mpr heg) hv
    have h3 := MixedHigh4013.remainder_signs he hf (sub_nonneg.mpr heg) hv
    have hs := squares_nonnegative hA he hf (sub_nonneg.mpr heg) hv
    have hid : source A e f g v =
        MixedHigh4010.remainder e f (g-e) v +
          MixedHigh4011.remainder e f (g-e) v*A +
          MixedHigh4012.remainder e f (g-e) v*A^2 +
          MixedHigh4013.remainder e f (g-e) v*A^3 +
          squares A e f (g-e) v := by
      unfold source
      rw [hh, right_identity0, right_identity1, right_identity2, right_identity3,
        squares_identity]
      ring
    rw [hid]
    positivity

end MixedHigh401
end
end SPR.N6.Tail.CoreEndpoint
