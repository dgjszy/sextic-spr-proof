import SPR.N6.Algebra.Tail.CoreEndpoint.PureLow0
import SPR.N6.Algebra.Tail.CoreEndpoint.PureLow1
import SPR.N6.Algebra.Tail.CoreEndpoint.PureLow2
import SPR.N6.Algebra.Tail.CoreEndpoint.PureLow3
import SPR.N6.Algebra.Tail.CoreEndpoint.PureLow4
/-! The full compactified low pure-coordinate block, covering both closed cones. -/
namespace SPR.N6.Tail.CoreEndpoint.PureLow
noncomputable section
set_option Elab.async false
set_option maxRecDepth 16384

def source (A e f g v : ℝ) : ℝ :=
  PureLow0.source e f g v+PureLow1.source e f g v*A+PureLow2.source e f g v*A^2+PureLow3.source
    e f g v*A^3+PureLow4.source e f g v*A^4

def square0 (A e f g v : ℝ) : ℝ :=
  (952 : ℝ)*(A*e^4*g^5)*((1 : ℝ)*(g^2*v)+((-1 : ℝ)/2)*(A*e))^2

def square1 (A e f g v : ℝ) : ℝ :=
  (364 : ℝ)*(A^2*e^5*g^5)*((1 : ℝ)*(g*v)+(-2 : ℝ)*(e))^2

def square2 (A e f g v : ℝ) : ℝ :=
  (309 : ℝ)*(A*e^7*g^4)*((1 : ℝ)*(g*v)+(-1 : ℝ)*(A))^2

def square3 (A e f g v : ℝ) : ℝ :=
  (62 : ℝ)*(A*e^8*g^3)*((1 : ℝ)*(g*v)+(-1 : ℝ)*(A))^2

def square4 (A e f g v : ℝ) : ℝ :=
  (5 : ℝ)*(A*e^9*g^2)*((1 : ℝ)*(g*v)+(-1 : ℝ)*(A))^2

def square5 (A e f g v : ℝ) : ℝ :=
  (384 : ℝ)*(A^2*g^8)*((1 : ℝ)*(g^2)+((-1 : ℝ)/2)*(A*e))^2

def square6 (A e f g v : ℝ) : ℝ :=
  (384 : ℝ)*(A^2*g^8)*((1 : ℝ)*(g^2*v)+((-1 : ℝ)/2)*(A*e))^2

def square7 (A e f g v : ℝ) : ℝ :=
  (768 : ℝ)*(A^2*e*g^7)*((1 : ℝ)*(g^2)+((-1 : ℝ)/2)*(A*e))^2

def square8 (A e f g v : ℝ) : ℝ :=
  (1536 : ℝ)*(A^2*e*g^7)*((1 : ℝ)*(g^2*v)+((-1 : ℝ)/2)*(A*e))^2

def square9 (A e f g v : ℝ) : ℝ :=
  (3936 : ℝ)*(A^2*e^2*f*g^7)*((1 : ℝ)*(g*v)+((-1 : ℝ)/4)*(A))^2

def square10 (A e f g v : ℝ) : ℝ :=
  (2592 : ℝ)*(A^2*e^2*g^6)*((1 : ℝ)*(g^2*v)+((-1 : ℝ)/2)*(A*e))^2

def square11 (A e f g v : ℝ) : ℝ :=
  (6792 : ℝ)*(A^2*e^3*f*g^6)*((1 : ℝ)*(g*v)+((-1 : ℝ)/2)*(A))^2

def square12 (A e f g v : ℝ) : ℝ :=
  (4800 : ℝ)*(A^2*e^3*g^5)*((1 : ℝ)*(g^2*v)+((-1 : ℝ)/4)*(A*e))^2

def square13 (A e f g v : ℝ) : ℝ :=
  (5628 : ℝ)*(A^2*e^4*f*g^5)*((1 : ℝ)*(g*v)+((-1 : ℝ)/2)*(A))^2

def square14 (A e f g v : ℝ) : ℝ :=
  (2640 : ℝ)*(A^2*e^4*g^4)*((1 : ℝ)*(g^2*v)+((-1 : ℝ)/4)*(A*e))^2

def square15 (A e f g v : ℝ) : ℝ :=
  (1668 : ℝ)*(A^2*e^5*f*g^4)*((1 : ℝ)*(g*v)+((-1 : ℝ)/2)*(A))^2

def square16 (A e f g v : ℝ) : ℝ :=
  (432 : ℝ)*(A^2*e^6*g^4)*((1 : ℝ)*(g*v)+((-1 : ℝ)/2)*(A))^2

def square17 (A e f g v : ℝ) : ℝ :=
  (39 : ℝ)*(A^2*e^7*g^3)*((1 : ℝ)*(g*v)+(-1 : ℝ)*(A))^2

def square18 (A e f g v : ℝ) : ℝ :=
  (3 : ℝ)*(A^2*e^8*g^2)*((1 : ℝ)*(g*v)+(-1 : ℝ)*(A))^2

def squares (A e f g v : ℝ) : ℝ :=
  square0 A e f g v+square1 A e f g v+square2 A e f g v+square3 A e f g v+square4 A e f g
    v+square5 A e f g v+square6 A e f g v+square7 A e f g v+square8 A e f g v+square9 A e f g
    v+square10 A e f g v+square11 A e f g v+square12 A e f g v+square13 A e f g v+square14 A e f
    g v+square15 A e f g v+square16 A e f g v+square17 A e f g v+square18 A e f g v

set_option maxHeartbeats 0 in
-- Only the finite square family is expanded at this step.
theorem squares_identity (A e f g v : ℝ) : squares A e f g v =
  PureLow0.squares e f g v+PureLow1.squares e f g v*A+PureLow2.squares e f g v*A^2+PureLow3.squares e f g v*A^3+PureLow4.squares e f g v*A^4 := by
  unfold squares square0 square1 square2 square3 square4 square5 square6 square7 square8 square9 square10 square11 square12 square13 square14 square15 square16 square17 square18
    PureLow0.squares PureLow1.squares PureLow2.squares PureLow3.squares PureLow4.squares
  ring
/-- Every square weight is nonnegative on the closed orthant. -/
theorem squares_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ squares A e f g v := by
  unfold squares square0 square1 square2 square3 square4 square5 square6 square7 square8 square9 square10 square11 square12 square13 square14 square15 square16 square17 square18
  positivity
/-- Both inner-gap order regions, including their shared boundary. -/
theorem nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ source A e f g v := by
  rcases le_total g e with hge | heg
  · have hh : e = (e-g)+g := by ring

    obtain ⟨h0,_⟩ := PureLow0.signs (sub_nonneg.mpr hge) hf hg hv
    obtain ⟨h1,_⟩ := PureLow1.signs (sub_nonneg.mpr hge) hf hg hv
    obtain ⟨h2,_⟩ := PureLow2.signs (sub_nonneg.mpr hge) hf hg hv
    obtain ⟨h3,_⟩ := PureLow3.signs (sub_nonneg.mpr hge) hf hg hv
    obtain ⟨h4,_⟩ := PureLow4.signs (sub_nonneg.mpr hge) hf hg hv
    have hs := squares_nonnegative hA (sub_nonneg.mpr hge) hf hg hv
    have hid : source A e f g v =
        PureLow0.remainder (e-g) f g v+PureLow1.remainder (e-g) f g v*A+PureLow2.remainder (e-g) f g v*A^2+PureLow3.remainder (e-g) f g v*A^3+PureLow4.remainder (e-g) f g v*A^4+squares A (e-g) f g v := by
      unfold source
      rw [hh,PureLow0.left_identity,PureLow1.left_identity,PureLow2.left_identity,PureLow3.left_identity,PureLow4.left_identity,squares_identity]
      ring
    rw [hid]
    positivity
  · have hh : g = e+(g-e) := by ring

    obtain ⟨_,h0⟩ := PureLow0.signs he hf (sub_nonneg.mpr heg) hv
    obtain ⟨_,h1⟩ := PureLow1.signs he hf (sub_nonneg.mpr heg) hv
    obtain ⟨_,h2⟩ := PureLow2.signs he hf (sub_nonneg.mpr heg) hv
    obtain ⟨_,h3⟩ := PureLow3.signs he hf (sub_nonneg.mpr heg) hv
    obtain ⟨_,h4⟩ := PureLow4.signs he hf (sub_nonneg.mpr heg) hv
    unfold source
    rw [hh,PureLow0.right_identity,PureLow1.right_identity,PureLow2.right_identity,PureLow3.right_identity,PureLow4.right_identity]
    positivity
end
end SPR.N6.Tail.CoreEndpoint.PureLow
