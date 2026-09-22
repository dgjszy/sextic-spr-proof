import SPR.N6.Algebra.Tail.SmallGap.EndpointSource

/-! Exact actual-core bridge in the compact polar coordinates.

The six `z` factors are the denominator-cleared endpoint quadratic
coefficients from `EndpointSource`.  The normalized weight below is
the formal weight divided by `e+f+g`; the source identity is therefore
`OuterHomogeneous.core = 2 * (e+f+g) * polarP`.  These are source
identities only; no sign claim is made for the polar blocks here.
-/
namespace SPR.N6.Tail.SmallGap.PolarSource
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- The ratio numerator and the three compact polar coordinates. -/
def M (e f g : ℝ) : ℝ := e + f + g
def S (e f g u q : ℝ) : ℝ := (e + 2*f + g)*u + q
def D (f g u : ℝ) : ℝ := (f + g)*u
def H (e f u q h : ℝ) : ℝ := (e + f)*u + q + h
def B (A e : ℝ) : ℝ := A + e
def b (A e f : ℝ) : ℝ := A + e + f
def c (A e f g : ℝ) : ℝ := A + e + f + g

/-- The two denominator factors after the polar substitution. -/
def polarDen1 (A e f g u q h : ℝ) : ℝ :=
  ((e + f)*S e f g u q + f*D f g u)*
    (M e f g*S e f g u q + f*D f g u)
def polarDen2 (A e f g u q h : ℝ) : ℝ :=
  (M e f g*S e f g u q + f*H e f u q h)*
    ((f + g)*S e f g u q + f*H e f u q h)

/-- The weight with its positive factor `M` removed. -/
def polarWeight (A e f g u q h : ℝ) : ℝ :=
  ((f + g)*S e f g u q + f*H e f u q h)*(e + f)*M e f g +
    ((e + f)*S e f g u q + f*D f g u)*M e f g*(f + g) +
    f*((M e f g*S e f g u q + f*H e f u q h)*(f + g) +
      (M e f g*S e f g u q + f*D f g u)*(e + f))

/-- The mixture factor after the polar substitution. -/
def polarMixture (A e f g u q h : ℝ) : ℝ :=
  ((A*S e f g u q - f*D f g u)*(2*A + e) +
      b A e f*c A e f g*S e f g u q)*polarDen2 A e f g u q h +
    (A*B A e*S e f g u q +
      (c A e f g*S e f g u q + f*H e f u q h)*
        (b A e f + c A e f g))*polarDen1 A e f g u q h

/-- Reduced high and low zero factors in the polar coordinates. -/
def polarZeroHigh (A e f g u q h v : ℝ) : ℝ :=
  EndpointSource.z00 e f g (S e f g u q) (D f g u) (H e f u q h) +
    EndpointSource.z01 e f g (S e f g u q) (D f g u) (H e f u q h)*(f + v) +
    EndpointSource.z02 e f g (S e f g u q) (D f g u) (H e f u q h)*(f + v)^2
def polarZeroLow (A e f g u q h v : ℝ) : ℝ :=
  EndpointSource.z10 e f g (S e f g u q) (D f g u) (H e f u q h)*(1 + v)^2 -
    EndpointSource.z11 e f g (S e f g u q) (D f g u) (H e f u q h)*
      B A e*(1 + v) +
    EndpointSource.z12 e f g (S e f g u q) (D f g u) (H e f u q h)*
      (B A e)^2

/-- The two complete reduced source polynomials. -/
def polarPHigh (A e f g u q h v : ℝ) : ℝ :=
  polarDen1 A e f g u q h*polarDen2 A e f g u q h*
      polarWeight A e f g u q h*(e + f + v)^2 +
    polarMixture A e f g u q h*polarZeroHigh A e f g u q h v
def polarPLow (A e f g u q h v : ℝ) : ℝ :=
  polarDen1 A e f g u q h*polarDen2 A e f g u q h*
      polarWeight A e f g u q h*(c A e f g + (f + g)*v)^2 +
    polarMixture A e f g u q h*polarZeroLow A e f g u q h v

/-- The first denominator factor is exactly the physical one. -/
theorem den1_eq (A e f g u q h : ℝ) :
    OuterHomogeneous.den1 (S e f g u q) (A*S e f g u q - f*D f g u)
      (b A e f) (c A e f g) = polarDen1 A e f g u q h := by
  unfold OuterHomogeneous.den1 polarDen1 S D M b c
  ring

/-- The second denominator factor is exactly the physical one. -/
theorem den2_eq (A e f g u q h : ℝ) :
    OuterHomogeneous.den2 (S e f g u q) A (B A e)
      (c A e f g*S e f g u q + f*H e f u q h) =
      polarDen2 A e f g u q h := by
  unfold OuterHomogeneous.den2 polarDen2 S H M B c
  ring

/-- The original weight is `M` times the normalized polar weight. -/
theorem weight_eq (A e f g u q h : ℝ) (hf : f ≠ 0) :
    OuterHomogeneous.weight (S e f g u q)
      (A*S e f g u q - f*D f g u) A (B A e) (b A e f) (c A e f g)
      (c A e f g*S e f g u q + f*H e f u q h) (M e f g/f) =
      M e f g*polarWeight A e f g u q h := by
  unfold OuterHomogeneous.weight S D H M B b c
  field_simp [hf]
  unfold polarWeight S D H M
  ring

/-- The mixture factor is unchanged by the normalization. -/
theorem mixture_eq (A e f g u q h : ℝ) :
    OuterHomogeneous.mixture (S e f g u q)
      (A*S e f g u q - f*D f g u) A (B A e) (b A e f) (c A e f g)
      (c A e f g*S e f g u q + f*H e f u q h) =
      polarMixture A e f g u q h := by
  unfold OuterHomogeneous.mixture polarMixture
  unfold OuterHomogeneous.den1 OuterHomogeneous.den2
    polarDen1 polarDen2 S D H M B b c
  ring

/-- The high frequency factor is the translated contact difference. -/
theorem high_frequency_eq (A e f g u q h v : ℝ) :
    (b A e f + v) - A = e + f + v := by
  unfold b
  ring

/-- The high zero direction is the reduced `z` combination. -/
theorem zero_high_eq (A e f g u q h v : ℝ) (hf : f ≠ 0) :
    OuterHomogeneous.zero false (S e f g u q)
      (A*S e f g u q - f*D f g u) A (B A e) (b A e f) (c A e f g)
      (c A e f g*S e f g u q + f*H e f u q h) (M e f g/f)
      (b A e f + v) =
      2*M e f g*polarZeroHigh A e f g u q h v := by
  have hd : A*S e f g u q - (A*S e f g u q - f*D f g u) =
      f*D f g u := by ring
  have hh : c A e f g*S e f g u q + f*H e f u q h -
      c A e f g*S e f g u q = f*H e f u q h := by ring
  have hBA : B A e - A = e := by unfold B; ring
  have hbB : b A e f - B A e = f := by unfold b B; ring
  have hcb : c A e f g - b A e f = g := by unfold c b; ring
  have htB : b A e f + v - B A e = f + v := by unfold b B; ring
  simp only [OuterHomogeneous.zero, Bool.false_eq_true, ite_false]
  rw [hd, hh, hBA, hbB, hcb, htB]
  have hq00 := EndpointSource.q00_identity e f g (S e f g u q)
    (D f g u) (H e f u q h) hf
  have hq01 := EndpointSource.q01_identity e f g (S e f g u q)
    (D f g u) (H e f u q h) hf
  have hq02 := EndpointSource.q02_identity e f g (S e f g u q)
    (D f g u) (H e f u q h) hf
  have hq00' : OuterHomogeneous.quadratic
      (fun d h => LowerZero.q00 d e f g h (M e f g/f))
      (S e f g u q) (f*D f g u) (f*H e f u q h) =
      2*M e f g*EndpointSource.z00 e f g (S e f g u q)
      (D f g u) (H e f u q h) := by simpa [M] using hq00
  have hq01' : OuterHomogeneous.quadratic
      (fun d h => LowerZero.q01 d e f g h (M e f g/f))
      (S e f g u q) (f*D f g u) (f*H e f u q h) =
      2*M e f g*EndpointSource.z01 e f g (S e f g u q)
      (D f g u) (H e f u q h) := by simpa [M] using hq01
  have hq02' : OuterHomogeneous.quadratic
      (fun d h => LowerZero.q02 d e f g h (M e f g/f))
      (S e f g u q) (f*D f g u) (f*H e f u q h) =
      2*M e f g*EndpointSource.z02 e f g (S e f g u q)
      (D f g u) (H e f u q h) := by simpa [M] using hq02
  rw [hq00', hq01', hq02']
  unfold polarZeroHigh
  ring

/-- The low zero direction after clearing its `1+v` denominator. -/
theorem zero_low_scaled (A e f g u q h v : ℝ) (hf : f ≠ 0)
    (hv : 1 + v ≠ 0) :
    (1 + v)^2 * OuterHomogeneous.zero true (S e f g u q)
      (A*S e f g u q - f*D f g u) A (B A e) (b A e f) (c A e f g)
      (c A e f g*S e f g u q + f*H e f u q h) (M e f g/f)
      (B A e*v/(1 + v)) =
      2*M e f g*polarZeroLow A e f g u q h v := by
  have hd : A*S e f g u q - (A*S e f g u q - f*D f g u) =
      f*D f g u := by ring
  have hh : c A e f g*S e f g u q + f*H e f u q h -
      c A e f g*S e f g u q = f*H e f u q h := by ring
  have hBA : B A e - A = e := by unfold B; ring
  have hbB : b A e f - B A e = f := by unfold b B; ring
  have hcb : c A e f g - b A e f = g := by unfold c b; ring
  have htB : B A e*v/(1 + v) - B A e =
      -(B A e)/(1 + v) := by field_simp [hv]; ring
  simp only [OuterHomogeneous.zero, ite_true]
  rw [hd, hh, hBA, hbB, hcb, htB]
  have hq10 := EndpointSource.q10_identity e f g (S e f g u q)
    (D f g u) (H e f u q h) hf
  have hq11 := EndpointSource.q11_identity e f g (S e f g u q)
    (D f g u) (H e f u q h) hf
  have hq12 := EndpointSource.q12_identity e f g (S e f g u q)
    (D f g u) (H e f u q h) hf
  have hq10' : OuterHomogeneous.quadratic
      (fun d h => LowerZero.q10 d e f g h (M e f g/f))
      (S e f g u q) (f*D f g u) (f*H e f u q h) =
      2*M e f g*EndpointSource.z10 e f g (S e f g u q)
      (D f g u) (H e f u q h) := by simpa [M] using hq10
  have hq11' : OuterHomogeneous.quadratic
      (fun d h => LowerZero.q11 d e f g h (M e f g/f))
      (S e f g u q) (f*D f g u) (f*H e f u q h) =
      2*M e f g*EndpointSource.z11 e f g (S e f g u q)
      (D f g u) (H e f u q h) := by simpa [M] using hq11
  have hq12' : OuterHomogeneous.quadratic
      (fun d h => LowerZero.q12 d e f g h (M e f g/f))
      (S e f g u q) (f*D f g u) (f*H e f u q h) =
      2*M e f g*EndpointSource.z12 e f g (S e f g u q)
      (D f g u) (H e f u q h) := by simpa [M] using hq12
  rw [hq10', hq11', hq12']
  unfold polarZeroLow
  field_simp [hv]
  ring

/-- The complete high actual core is the reduced polar source. -/
theorem core_high_eq (A e f g u q h v : ℝ) (hf : f ≠ 0) :
    OuterHomogeneous.core false (S e f g u q)
      (A*S e f g u q - f*D f g u) A (B A e) (b A e f) (c A e f g)
      (c A e f g*S e f g u q + f*H e f u q h) (M e f g/f)
      (b A e f + v) =
      2*M e f g*polarPHigh A e f g u q h v := by
  have hz := zero_high_eq A e f g u q h v hf
  have hd1 := den1_eq A e f g u q h
  have hd2 := den2_eq A e f g u q h
  have hw := weight_eq A e f g u q h hf
  have hm := mixture_eq A e f g u q h
  unfold OuterHomogeneous.core
  simp only [Bool.false_eq_true, ite_false]
  rw [hd1, hd2, hw, hm, hz, high_frequency_eq A e f g u q h v]
  unfold polarPHigh
  ring

/-- The complete low actual core after clearing its frequency denominator. -/
theorem core_low_scaled (A e f g u q h v : ℝ) (hf : f ≠ 0)
    (hv : 1 + v ≠ 0) :
    (1 + v)^2 * OuterHomogeneous.core true (S e f g u q)
      (A*S e f g u q - f*D f g u) A (B A e) (b A e f) (c A e f g)
      (c A e f g*S e f g u q + f*H e f u q h) (M e f g/f)
      (B A e*v/(1 + v)) =
      2*M e f g*polarPLow A e f g u q h v := by
  have hz := zero_low_scaled A e f g u q h v hf hv
  have hd1 := den1_eq A e f g u q h
  have hd2 := den2_eq A e f g u q h
  have hw := weight_eq A e f g u q h hf
  have hm := mixture_eq A e f g u q h
  unfold OuterHomogeneous.core
  simp only [ite_true]
  calc
    (1 + v)^2 * (2 * OuterHomogeneous.den1 (S e f g u q)
      (A*S e f g u q - f*D f g u) (b A e f) (c A e f g) *
      OuterHomogeneous.den2 (S e f g u q) A (B A e)
      (c A e f g*S e f g u q + f*H e f u q h) *
      OuterHomogeneous.weight (S e f g u q)
      (A*S e f g u q - f*D f g u) A (B A e) (b A e f)
      (c A e f g) (c A e f g*S e f g u q + f*H e f u q h)
      (M e f g/f) *
      (B A e*v/(1 + v) - c A e f g)^2 +
      OuterHomogeneous.mixture (S e f g u q)
      (A*S e f g u q - f*D f g u) A (B A e) (b A e f) (c A e f g)
      (c A e f g*S e f g u q + f*H e f u q h) *
      OuterHomogeneous.zero true (S e f g u q)
      (A*S e f g u q - f*D f g u) A (B A e) (b A e f) (c A e f g)
      (c A e f g*S e f g u q + f*H e f u q h) (M e f g/f)
      (B A e*v/(1 + v))) =
      2 * (1 + v)^2 * OuterHomogeneous.den1 (S e f g u q)
      (A*S e f g u q - f*D f g u) (b A e f) (c A e f g) *
      OuterHomogeneous.den2 (S e f g u q) A (B A e)
      (c A e f g*S e f g u q + f*H e f u q h) *
      OuterHomogeneous.weight (S e f g u q)
      (A*S e f g u q - f*D f g u) A (B A e) (b A e f)
      (c A e f g) (c A e f g*S e f g u q + f*H e f u q h)
      (M e f g/f) * (B A e*v/(1 + v) - c A e f g)^2 +
      OuterHomogeneous.mixture (S e f g u q)
      (A*S e f g u q - f*D f g u) A (B A e) (b A e f) (c A e f g)
      (c A e f g*S e f g u q + f*H e f u q h) *
      ((1 + v)^2 * OuterHomogeneous.zero true (S e f g u q)
      (A*S e f g u q - f*D f g u) A (B A e) (b A e f) (c A e f g)
      (c A e f g*S e f g u q + f*H e f u q h) (M e f g/f)
      (B A e*v/(1 + v))) := by ring
    _ = 2*M e f g*polarPLow A e f g u q h v := by
      rw [hd1, hd2, hw, hm, hz]
      unfold polarPLow
      field_simp [hv]
      unfold c B
      ring

end
end SPR.N6.Tail.SmallGap.PolarSource
