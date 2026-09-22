import SPR.N6.Algebra.Tail.QuadraticJetMap
import SPR.N6.Algebra.Tail.SmallGap.EndpointSource
import SPR.N6.Algebra.Tail.CoreEndpoint.PureSource
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh401Source
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedLow401Source

/-!
# Compactified low-frequency zero factor for the mixed `(4,0,1)` slice

The lower odd corner is kept as one mapped quadratic interpolation.  The
factor `(1+v)^2` is cleared before the endpoint source identities are used;
the remaining normalized base and polar-difference terms are deliberately
left named for the mixed low source bridge.
-/
namespace SPR.N6.Tail.CoreEndpoint.MixedLow401ZeroJet
noncomputable section
open Polynomial
open PureSource
open MixedHigh401Source
open SmallGap
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Homogeneous interpolation is linear in the three frequency coefficients. -/
theorem quadratic_q1 {R : Type*} [CommRing R] (e f g m w S D H : R) :
    OuterHomogeneous.quadratic (fun d h => LowerZero.q1 d e f g h m w) S D H =
      OuterHomogeneous.quadratic (fun d h => LowerZero.q10 d e f g h m) S D H+
      OuterHomogeneous.quadratic (fun d h => LowerZero.q11 d e f g h m) S D H*w+
      OuterHomogeneous.quadratic (fun d h => LowerZero.q12 d e f g h m) S D H*w^2 := by
  simp only [OuterHomogeneous.quadratic,LowerZero.q1]
  ring

/-- The original low zero factor is exactly one quadratic interpolation. -/
theorem zero_low_eq_quadratic {R : Type*} [CommRing R]
    (S aN A B b c CN m t : R) :
    OuterHomogeneous.zero true S aN A B b c CN m t =
      OuterHomogeneous.quadratic
        (fun d h => LowerZero.q1 d (B-A) (b-B) (c-b) h m (t-B))
        S (A*S-aN) (CN-c*S) := by
  simp only [OuterHomogeneous.zero, ite_true]
  exact (quadratic_q1 (B-A) (b-B) (c-b) m (t-B) S (A*S-aN) (CN-c*S)).symm

/-- The scalar q1 factor at the compactified low frequency. -/
def scalarQ (A e f g v d h : ℝ) : ℝ :=
  LowerZero.q1 d e f g h ((e+f+g)/f) (-(A+e)/(1+v))

/-- Its polynomial interpretation keeps all inner parameters constant. -/
def polynomialQ (A e f g v : ℝ) (d h : ℝ[X]) : ℝ[X] :=
  LowerZero.q1 d (C e) (C f) (C g) h (C ((e+f+g)/f))
    (C (-(A+e)/(1+v)))

theorem polynomialQ_C (A e f g v d h : ℝ) :
    polynomialQ A e f g v (C d) (C h) = C (scalarQ A e f g v d h) := by
  exact (LowerZero.q1_map C d e f g h ((e+f+g)/f) (-(A+e)/(1+v))).symm

/-- The denominator-cleared low quadratic value. -/
def normalized (A e f g v S D H : ℝ) : ℝ :=
  EndpointSource.z10 e f g S D H*(1+v)^2 -
    EndpointSource.z11 e f g S D H*(A+e)*(1+v) +
    EndpointSource.z12 e f g S D H*(A+e)^2

/-- Exact scalar endpoint identity after clearing `(1+v)^2`. -/
theorem scalar_identity (A e f g v S D H : ℝ) (hf : f ≠ 0) (hv : 1+v ≠ 0) :
    (1+v)^2*OuterHomogeneous.quadratic (scalarQ A e f g v)
      S (f*D) (f*H) =
      2*(e+f+g)*normalized A e f g v S D H := by
  unfold scalarQ normalized
  rw [quadratic_q1,EndpointSource.q10_identity e f g S D H hf,
    EndpointSource.q11_identity e f g S D H hf,
    EndpointSource.q12_identity e f g S D H hf]
  field_simp [hf,hv]
  ring

/-- The normalized low zero factor on the first-third outer line. -/
def zeroLine (A e f g v : ℝ) : ℝ[X] :=
  C ((1+v)^2) * OuterHomogeneous.quadratic (polynomialQ A e f g v)
    (C (L e f g)+C (A*L e f g+N e f g)*X)
    (C (J f g)+C (A*J f g)*X)
    (C (f*(e+f))+C (A*(f*(e+f))+f*N e f g)*X)

/-- The named base value of the compactified low zero factor. -/
def normalizedBase (A e f g v : ℝ) : ℝ :=
  normalized A e f g v (L e f g) (f+g) (e+f)

/-- The named first polar difference, divided by two. -/
def normalizedPolar (A e f g v : ℝ) : ℝ :=
  (normalized A e f g v (L e f g+1) (f+g) (e+f+1) -
    normalized A e f g v (L e f g-1) (f+g) (e+f-1))/2

theorem zeroLine_coeff_zero (A e f g v : ℝ) (hf : f ≠ 0) (hv : 1+v ≠ 0) :
    (zeroLine A e f g v).coeff 0 =
      2*(e+f+g)*normalizedBase A e f g v := by
  unfold zeroLine
  rw [coeff_C_mul]
  rw [QuadraticJet.quadratic_coeff_zero (polynomialQ A e f g v)
    (scalarQ A e f g v) (polynomialQ_C A e f g v)]
  have hh := scalar_identity A e f g v (L e f g) (f+g) (e+f) hf hv
  simpa [normalizedBase, J] using hh

theorem zeroLine_coeff_one (A e f g v : ℝ) (hf : f ≠ 0) (hv : 1+v ≠ 0) :
    (zeroLine A e f g v).coeff 1 =
      2*(e+f+g)*(2*A*normalizedBase A e f g v+
        N e f g*normalizedPolar A e f g v) := by
  unfold zeroLine
  rw [coeff_C_mul]
  rw [QuadraticJet.quadratic_coeff_one (polynomialQ A e f g v)
    (scalarQ A e f g v) (polynomialQ_C A e f g v)]
  have h0 := scalar_identity A e f g v (L e f g) (f+g) (e+f) hf hv
  have hp := scalar_identity A e f g v (L e f g+1) (f+g) (e+f+1) hf hv
  have hm := scalar_identity A e f g v (L e f g-1) (f+g) (e+f-1) hf hv
  have h0' : (1+v)^2*OuterHomogeneous.quadratic (scalarQ A e f g v)
      (L e f g) (J f g) (f*(e+f)) =
      2*(e+f+g)*normalized A e f g v (L e f g) (f+g) (e+f) := by
    simpa [J] using h0
  have hp' : (1+v)^2*OuterHomogeneous.quadratic (scalarQ A e f g v)
      (L e f g+1) (J f g) (f*(e+f+1)) =
      2*(e+f+g)*normalized A e f g v (L e f g+1) (f+g) (e+f+1) := by
    simpa [J] using hp
  have hm' : (1+v)^2*OuterHomogeneous.quadratic (scalarQ A e f g v)
      (L e f g-1) (J f g) (f*(e+f-1)) =
      2*(e+f+g)*normalized A e f g v (L e f g-1) (f+g) (e+f-1) := by
    simpa [J] using hm
  have hplus : f*(e+f)+f = f*(e+f+1) := by ring
  have hminus : f*(e+f)-f = f*(e+f-1) := by ring
  rw [hplus,hminus]
  have hcomb :
      (1+v)^2 *
          (2*A*OuterHomogeneous.quadratic (scalarQ A e f g v)
              (L e f g) (J f g) (f*(e+f)) +
            N e f g/2 *
              (OuterHomogeneous.quadratic (scalarQ A e f g v)
                (L e f g+1) (J f g) (f*(e+f+1)) -
                OuterHomogeneous.quadratic (scalarQ A e f g v)
                  (L e f g-1) (J f g) (f*(e+f-1)))) =
        2*A*((1+v)^2*OuterHomogeneous.quadratic (scalarQ A e f g v)
              (L e f g) (J f g) (f*(e+f))) +
          N e f g/2*((1+v)^2*OuterHomogeneous.quadratic
              (scalarQ A e f g v) (L e f g+1) (J f g) (f*(e+f+1)) -
            (1+v)^2*OuterHomogeneous.quadratic
              (scalarQ A e f g v) (L e f g-1) (J f g) (f*(e+f-1))) := by ring
  rw [hcomb]
  rw [h0', hp', hm']
  simp [normalizedBase, normalizedPolar]
  ring

/-- The base interpolation is the named low source zero factor. -/
theorem normalizedBase_eq_source_Z (A e f g v : ℝ) :
    normalizedBase A e f g v = MixedLow401Source.Z A e f g v := by
  unfold normalizedBase normalized MixedLow401Source.Z
  unfold EndpointSource.z10 EndpointSource.z11 EndpointSource.z12
    PureSource.lz0 PureSource.lz1 PureSource.lz2 PureSource.L
  ring

/-- The first polar difference is the named low source directional zero factor. -/
theorem normalizedPolar_eq_source_ZR (A e f g v : ℝ) :
    normalizedPolar A e f g v = MixedLow401Source.ZR A e f g v := by
  unfold normalizedPolar normalized MixedLow401Source.ZR
  unfold MixedLow401Source.zR0 MixedLow401Source.zR1 MixedLow401Source.zR2
    EndpointSource.z10 EndpointSource.z11 EndpointSource.z12 PureSource.L
  ring

end
end SPR.N6.Tail.CoreEndpoint.MixedLow401ZeroJet
