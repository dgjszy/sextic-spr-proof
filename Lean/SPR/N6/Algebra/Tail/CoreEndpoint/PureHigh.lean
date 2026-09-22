import SPR.N6.Algebra.Tail.CoreEndpoint.PureHigh0
import SPR.N6.Algebra.Tail.CoreEndpoint.PureHigh1
import SPR.N6.Algebra.Tail.CoreEndpoint.PureHigh2

/-! A single complete high-core outer block, split by powers of the inner root A.
These modules retain source equality and both closed e/g order regions. Other
outer blocks remain separate obligations; this block is not the N6 theorem. -/

namespace SPR.N6.Tail.CoreEndpoint.PureHigh
noncomputable section
set_option Elab.async false
set_option maxRecDepth 16384

/-- The complete reduced source polynomial for exponent (5,0,0). -/
def source (A e f g v : ℝ) : ℝ :=
  PureHigh0.source e f g v+PureHigh1.source e f g v*A+PureHigh2.source e f g v*A^2

/-- Exact monomial times one binomial square, number 0. -/
def square0 (A e f g v : ℝ) : ℝ :=
  (8584 : ℝ)*(e^8*f*g^3)*((1 : ℝ)*(A)+(-1 : ℝ)*(v))^2

/-- Exact monomial times one binomial square, number 1. -/
def square1 (A e f g v : ℝ) : ℝ :=
  (8196 : ℝ)*(e^6*f*g^3)*((1 : ℝ)*(A*e)+(-1 : ℝ)*(g*v))^2

/-- Exact monomial times one binomial square, number 2. -/
def square2 (A e f g v : ℝ) : ℝ :=
  (3436 : ℝ)*(e^5*f*g^4)*((1 : ℝ)*(A*e)+(-1 : ℝ)*(g*v))^2

/-- Exact monomial times one binomial square, number 3. -/
def square3 (A e f g v : ℝ) : ℝ :=
  (3396 : ℝ)*(A^2*e^5*f*g^2)*((1 : ℝ)*(e^2)+(-1 : ℝ)*(g*v))^2

/-- Exact monomial times one binomial square, number 4. -/
def square4 (A e f g v : ℝ) : ℝ :=
  (2848 : ℝ)*(e^9*g^3)*((1 : ℝ)*(A)+(-1 : ℝ)*(v))^2

/-- Exact monomial times one binomial square, number 5. -/
def square5 (A e f g v : ℝ) : ℝ :=
  (2832 : ℝ)*(e^8*g^4)*((1 : ℝ)*(A)+(-1 : ℝ)*(v))^2

/-- Exact monomial times one binomial square, number 6. -/
def square6 (A e f g v : ℝ) : ℝ :=
  (2814 : ℝ)*(A^2*e^6*f*g^3)*((1 : ℝ)*(g)+(-1 : ℝ)*(v))^2

/-- Exact monomial times one binomial square, number 7. -/
def square7 (A e f g v : ℝ) : ℝ :=
  (2384 : ℝ)*(e^9*f*g^2)*((1 : ℝ)*(A)+(-1 : ℝ)*(v))^2

/-- Exact monomial times one binomial square, number 8. -/
def square8 (A e f g v : ℝ) : ℝ :=
  (1720 : ℝ)*(e^6*g^4)*((1 : ℝ)*(A*e)+(-1 : ℝ)*(g*v))^2

/-- Exact monomial times one binomial square, number 9. -/
def square9 (A e f g v : ℝ) : ℝ :=
  (1600 : ℝ)*(e^10*g^2)*((1 : ℝ)*(A)+(-1 : ℝ)*(v))^2

/-- Exact monomial times one binomial square, number 10. -/
def square10 (A e f g v : ℝ) : ℝ :=
  ((34992 : ℝ)/25)*(A^2*e^5*g)*((1 : ℝ)*(e^3)+((-25 : ℝ)/27)*(g^2*v))^2

/-- Exact monomial times one binomial square, number 11. -/
def square11 (A e f g v : ℝ) : ℝ :=
  (1200 : ℝ)*(A^2*e^6*g^4)*((1 : ℝ)*(e)+(-1 : ℝ)*(v))^2

/-- Exact monomial times one binomial square, number 12. -/
def square12 (A e f g v : ℝ) : ℝ :=
  (984 : ℝ)*(A^2*e^6*f*g)*((1 : ℝ)*(e^2)+(-1 : ℝ)*(g*v))^2

/-- Exact monomial times one binomial square, number 13. -/
def square13 (A e f g v : ℝ) : ℝ :=
  (834 : ℝ)*(A^2*e^5*f*g^4)*((1 : ℝ)*(g)+(-1 : ℝ)*(v))^2

/-- Exact monomial times one binomial square, number 14. -/
def square14 (A e f g v : ℝ) : ℝ :=
  (768 : ℝ)*(A^2*e^7*g)*((1 : ℝ)*(e^2)+(-1 : ℝ)*(g*v))^2

/-- Exact monomial times one binomial square, number 15. -/
def square15 (A e f g v : ℝ) : ℝ :=
  ((6050 : ℝ)/3)*(A^2*e^3*g^3)*((1 : ℝ)*(e^3)+((-18 : ℝ)/55)*(g^2*v))^2

/-- Exact monomial times one binomial square, number 16. -/
def square16 (A e f g v : ℝ) : ℝ :=
  (652 : ℝ)*(e^5*g^5)*((1 : ℝ)*(A*e)+(-1 : ℝ)*(g*v))^2

/-- Exact monomial times one binomial square, number 17. -/
def square17 (A e f g v : ℝ) : ℝ :=
  (384 : ℝ)*(e^11*g)*((1 : ℝ)*(A)+(-1 : ℝ)*(v))^2

/-- Exact monomial times one binomial square, number 18. -/
def square18 (A e f g v : ℝ) : ℝ :=
  (314 : ℝ)*(e^4*f*g^5)*((1 : ℝ)*(A*e)+(-1 : ℝ)*(g*v))^2

/-- Exact monomial times one binomial square, number 19. -/
def square19 (A e f g v : ℝ) : ℝ :=
  (216 : ℝ)*(A^2*e^4*g^6)*((1 : ℝ)*(e)+(-1 : ℝ)*(v))^2

/-- Exact monomial times one binomial square, number 20. -/
def square20 (A e f g v : ℝ) : ℝ :=
  (192 : ℝ)*(A^2*e^8)*((1 : ℝ)*(e^2)+(-1 : ℝ)*(g*v))^2

/-- Exact monomial times one binomial square, number 21. -/
def square21 (A e f g v : ℝ) : ℝ :=
  (150 : ℝ)*(A*e^4*g^7)*((1 : ℝ)*(e)+(-1 : ℝ)*(v))^2

/-- Exact monomial times one binomial square, number 22. -/
def square22 (A e f g v : ℝ) : ℝ :=
  (39 : ℝ)*(A^2*e^4*g^6)*((1 : ℝ)*(g)+(-1 : ℝ)*(v))^2

/-- Exact monomial times one binomial square, number 23. -/
def square23 (A e f g v : ℝ) : ℝ :=
  (19 : ℝ)*(A*e^3*g^8)*((1 : ℝ)*(e)+(-1 : ℝ)*(v))^2

/-- Exact monomial times one binomial square, number 24. -/
def square24 (A e f g v : ℝ) : ℝ :=
  (3 : ℝ)*(A^2*e^2*g^8)*((1 : ℝ)*(e)+(-1 : ℝ)*(v))^2

/-- Exact monomial times one binomial square, number 25. -/
def square25 (A e f g v : ℝ) : ℝ :=
  (1 : ℝ)*(A*e^2*g^9)*((1 : ℝ)*(e)+(-1 : ℝ)*(v))^2

/-- Complete finite square sum. -/
def squares (A e f g v : ℝ) : ℝ :=
  square0 A e f g v+square1 A e f g v+square2 A e f g v+square3 A e f g v+square4 A e f g
    v+square5 A e f g v+square6 A e f g v+square7 A e f g v+square8 A e f g v+square9 A e f g
    v+square10 A e f g v+square11 A e f g v+square12 A e f g v+square13 A e f g v+square14 A e f
    g v+square15 A e f g v+square16 A e f g v+square17 A e f g v+square18 A e f g v+square19 A e
    f g v+square20 A e f g v+square21 A e f g v+square22 A e f g v+square23 A e f g v+square24 A
    e f g v+square25 A e f g v

set_option maxHeartbeats 0 in
-- This expands only the small square family, not the complete endpoint source.
theorem squares_identity (A e f g v : ℝ) : squares A e f g v =
  PureHigh0.squares e f g v+PureHigh1.squares e f g v*A+PureHigh2.squares e f g v*A^2 := by
  unfold squares square0 square1 square2 square3 square4 square5 square6 square7 square8 square9 square10 square11 square12 square13 square14 square15 square16 square17 square18 square19 square20 square21 square22 square23 square24 square25
    PureHigh0.squares PureHigh1.squares PureHigh2.squares
  ring

/-- Every square factor is nonnegative on the complete closed orthant. -/
theorem squares_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ squares A e f g v := by
  unfold squares square0 square1 square2 square3 square4 square5 square6 square7 square8 square9 square10 square11 square12 square13 square14 square15 square16 square17 square18 square19 square20 square21 square22 square23 square24 square25
  positivity

/-- This entire reduced block is nonnegative in both order regions, including e=g. -/
theorem nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ source A e f g v := by
  rcases le_total g e with hge | heg
  · have hh : e = (e-g)+g := by ring
    obtain ⟨h0,_⟩ := PureHigh0.signs (sub_nonneg.mpr hge) hf hg hv
    obtain ⟨h1,_⟩ := PureHigh1.signs (sub_nonneg.mpr hge) hf hg hv
    obtain ⟨h2,_⟩ := PureHigh2.signs (sub_nonneg.mpr hge) hf hg hv
    unfold source
    rw [hh,PureHigh0.left_identity,PureHigh1.left_identity,PureHigh2.left_identity]
    positivity
  · have hh : g = e+(g-e) := by ring
    obtain ⟨_,h0⟩ := PureHigh0.signs he hf (sub_nonneg.mpr heg) hv
    obtain ⟨_,h1⟩ := PureHigh1.signs he hf (sub_nonneg.mpr heg) hv
    obtain ⟨_,h2⟩ := PureHigh2.signs he hf (sub_nonneg.mpr heg) hv
    have hs := squares_nonnegative hA he hf (sub_nonneg.mpr heg) hv
    have hid : source A e f g v =
        PureHigh0.remainder e f (g-e) v+PureHigh1.remainder e f (g-e) v*A+
        PureHigh2.remainder e f (g-e) v*A^2+squares A e f (g-e) v := by
      unfold source
      rw [hh,PureHigh0.right_identity,PureHigh1.right_identity,PureHigh2.right_identity,
        squares_identity]
      ring
    rw [hid]
    positivity
end
end SPR.N6.Tail.CoreEndpoint.PureHigh
