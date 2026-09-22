import SPR.N6.Algebra.Tail.QuadraticJetMap
import SPR.N6.Algebra.Tail.SmallGap.EndpointSource
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh401Source

/-!
# The complete zero-direction first coefficient for the mixed high source

The high zero direction is a single homogeneous quadratic interpolation of
`LowerZero.q0`. Its constant and first coefficients are obtained from three
scalar evaluations. No full core or lower-zero long expression is normalized.
-/
namespace SPR.N6.Tail.CoreEndpoint.MixedHigh401ZeroJet
noncomputable section
open Polynomial
open PureSource
open MixedHigh401Source
open SmallGap
set_option Elab.async false

/-- Homogeneous interpolation is linear in the three frequency coefficients. -/
theorem quadratic_q0 {R : Type*} [CommRing R] (e f g m w S D H : R) :
    OuterHomogeneous.quadratic (fun d h => LowerZero.q0 d e f g h m w) S D H =
      OuterHomogeneous.quadratic (fun d h => LowerZero.q00 d e f g h m) S D H+
      OuterHomogeneous.quadratic (fun d h => LowerZero.q01 d e f g h m) S D H*w+
      OuterHomogeneous.quadratic (fun d h => LowerZero.q02 d e f g h m) S D H*w^2 := by
  simp only [OuterHomogeneous.quadratic,LowerZero.q0]
  ring

/-- The original high zero factor is exactly one quadratic interpolation. -/
theorem zero_high_eq_quadratic {R : Type*} [CommRing R]
    (S aN A B b c CN m t : R) :
    OuterHomogeneous.zero false S aN A B b c CN m t =
      OuterHomogeneous.quadratic
        (fun d h => LowerZero.q0 d (B-A) (b-B) (c-b) h m (t-B))
        S (A*S-aN) (CN-c*S) := by
  simp only [OuterHomogeneous.zero,Bool.false_eq_true,ite_false]
  exact (quadratic_q0 (B-A) (b-B) (c-b) m (t-B) S (A*S-aN) (CN-c*S)).symm

/-- The fixed real source at the upper ratio endpoint. -/
def scalarQ (e f g v d h : ℝ) : ℝ :=
  LowerZero.q0 d e f g h ((e+f+g)/f) (f+v)

/-- Its polynomial interpretation keeps every inner parameter constant. -/
def polynomialQ (e f g v : ℝ) (d h : ℝ[X]) : ℝ[X] :=
  LowerZero.q0 d (C e) (C f) (C g) h (C ((e+f+g)/f)) (C (f+v))

/-- The map premise is the existing source functoriality theorem. -/
theorem polynomialQ_C (e f g v d h : ℝ) :
    polynomialQ e f g v (C d) (C h) = C (scalarQ e f g v d h) := by
  exact (LowerZero.q0_map C d e f g h ((e+f+g)/f) (f+v)).symm

/-- The normalized high quadratic value, retaining all frequency terms. -/
def normalized (e f g v S D H : ℝ) : ℝ :=
  EndpointSource.z00 e f g S D H+EndpointSource.z01 e f g S D H*(f+v)+
    EndpointSource.z02 e f g S D H*(f+v)^2

/-- The entire scalar high source is supplied by the six-coefficient endpoint bridge. -/
theorem scalar_identity (e f g v S D H : ℝ) (hf : f ≠ 0) :
    OuterHomogeneous.quadratic (scalarQ e f g v) S (f*D) (f*H) =
      2*(e+f+g)*normalized e f g v S D H := by
  unfold scalarQ normalized
  rw [quadratic_q0,EndpointSource.q00_identity e f g S D H hf,
    EndpointSource.q01_identity e f g S D H hf,
    EndpointSource.q02_identity e f g S D H hf]
  ring

/-- The normalized base sample is the previously certified pure-axis zero source. -/
theorem normalized_base (e f g v : ℝ) :
    normalized e f g v (L e f g) (f+g) (e+f) = Z e f g v := by
  have h0 : EndpointSource.z00 e f g (L e f g) (f+g) (e+f) = z0 e f g := by
    unfold EndpointSource.z00 z0 L
    ring
  have h1 : EndpointSource.z01 e f g (L e f g) (f+g) (e+f) = z1 e f g := by
    unfold EndpointSource.z01 z1 L
    ring
  have h2 : EndpointSource.z02 e f g (L e f g) (f+g) (e+f) = z2 e f g := by
    unfold EndpointSource.z02 z2 L
    ring
  unfold normalized Z
  rw [h0,h1,h2]

/-- Exact central difference of the first endpoint quadratic. -/
theorem z00_difference (e f g : ℝ) :
    EndpointSource.z00 e f g (L e f g+1) (f+g) (e+f+1)-
      EndpointSource.z00 e f g (L e f g-1) (f+g) (e+f-1) = 2*zR0 e f g := by
  unfold EndpointSource.z00 zR0 L
  ring

/-- Exact central difference of the middle endpoint quadratic. -/
theorem z01_difference (e f g : ℝ) :
    EndpointSource.z01 e f g (L e f g+1) (f+g) (e+f+1)-
      EndpointSource.z01 e f g (L e f g-1) (f+g) (e+f-1) = 2*zR1 e f g := by
  unfold EndpointSource.z01 zR1 L
  ring

/-- Exact central difference of the last endpoint quadratic. -/
theorem z02_difference (e f g : ℝ) :
    EndpointSource.z02 e f g (L e f g+1) (f+g) (e+f+1)-
      EndpointSource.z02 e f g (L e f g-1) (f+g) (e+f-1) = 2*zR2 e f g := by
  unfold EndpointSource.z02 zR2 L
  ring

/-- The complete central difference is twice the already defined directional source. -/
theorem normalized_difference (e f g v : ℝ) :
    normalized e f g v (L e f g+1) (f+g) (e+f+1)-
      normalized e f g v (L e f g-1) (f+g) (e+f-1) = 2*ZR e f g v := by
  unfold normalized ZR
  linear_combination z00_difference e f g +
    (f+v)*(z01_difference e f g)+(f+v)^2*(z02_difference e f g)

/-- The zero factor along the original x-z slice, before the final core assembly. -/
def zeroLine (A e f g v : ℝ) : ℝ[X] :=
  OuterHomogeneous.quadratic (polynomialQ e f g v)
    (C (L e f g)+C (A*L e f g+N e f g)*X)
    (C (J f g)+C (A*J f g)*X)
    (C (f*(e+f))+C (A*(f*(e+f))+f*N e f g)*X)

/-- The zero-line constant term includes the complete factor 2M. -/
theorem zeroLine_coeff_zero (A e f g v : ℝ) (hf : f ≠ 0) :
    (zeroLine A e f g v).coeff 0 = 2*(e+f+g)*Z e f g v := by
  unfold zeroLine
  rw [QuadraticJet.quadratic_coeff_zero (polynomialQ e f g v)
    (scalarQ e f g v) (polynomialQ_C e f g v)]
  have hh := scalar_identity e f g v (L e f g) (f+g) (e+f) hf
  rw [normalized_base] at hh
  exact hh

/-- The first zero-line term separates degree-two scaling from the polar source change. -/
theorem zeroLine_coeff_one (A e f g v : ℝ) (hf : f ≠ 0) :
    (zeroLine A e f g v).coeff 1 =
      2*(e+f+g)*(2*A*Z e f g v+N e f g*ZR e f g v) := by
  unfold zeroLine
  rw [QuadraticJet.quadratic_coeff_one (polynomialQ e f g v)
    (scalarQ e f g v) (polynomialQ_C e f g v)]
  have h0 := scalar_identity e f g v (L e f g) (f+g) (e+f) hf
  rw [normalized_base] at h0
  have hp := scalar_identity e f g v (L e f g+1) (f+g) (e+f+1) hf
  have hm := scalar_identity e f g v (L e f g-1) (f+g) (e+f-1) hf
  have hj : J f g = f*(f+g) := rfl
  have hplus : f*(e+f)+f = f*(e+f+1) := by ring
  have hminus : f*(e+f)-f = f*(e+f-1) := by ring
  rw [hj,hplus,hminus,h0,hp,hm]
  linear_combination ((e+f+g)*N e f g)*(normalized_difference e f g v)

end
end SPR.N6.Tail.CoreEndpoint.MixedHigh401ZeroJet
