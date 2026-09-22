import SPR.N6.Algebra.Tail.OuterCore

/-! Exact small gap factors of the high core at the pure first outer coordinate.
The definitions retain the actual homogeneous source and its factor two. -/
namespace SPR.N6.Tail.CoreEndpoint.PureSource
noncomputable section
set_option Elab.async false
set_option maxRecDepth 16384

def L (e f g : ℝ) := e+2*f+g
def J (f g : ℝ) := f*(f+g)
def M (e f g : ℝ) := e+f+g
def D1 (e f g : ℝ) := ((e+f)*L e f g+J f g)*((e+f+g)*L e f g+J f g)
def D2 (e f g : ℝ) := ((e+2*f+g)*L e f g-J f g)*((2*f+g)*L e f g-J f g)
def W (e f g : ℝ) :=
  ((2*f+g)*L e f g-J f g)*(e+f)*M e f g+
  ((e+f)*L e f g+J f g)*M e f g*(f+g)+
  f*(((e+2*f+g)*L e f g-J f g)*(f+g)+((e+f+g)*L e f g+J f g)*(e+f))
def H0 (e f g : ℝ) :=
  (L e f g*(e+f)*M e f g-e*J f g)*D2 e f g+
  ((e+2*f+g)*L e f g-J f g)*(2*e+2*f+g)*D1 e f g
def H1 (e f g : ℝ) :=
  (L e f g*(3*e+2*f+g)-2*J f g)*D2 e f g+
  (L e f g*(5*e+6*f+3*g)-2*J f g)*D1 e f g
def H2 (e f g : ℝ) := 3*L e f g*(D1 e f g+D2 e f g)

def z0 (e f g : ℝ) : ℝ :=
  (((((((3) * f + ((1) * g)) * e + (((18) * f + ((15) * g)) * f + ((3) * g ^ 2))) * e + ((((54)
    * f + ((72) * g)) * f + ((27) * g ^ 2)) * f + ((3) * g ^ 3))) * e + (((((85) * f + ((156) *
    g)) * f + ((91) * g ^ 2)) * f + ((19) * g ^ 3)) * f + ((1) * g ^ 4))) * e + ((((((67) * f +
    ((157) * g)) * f + ((125) * g ^ 2)) * f + ((39) * g ^ 3)) * f + ((4) * g ^ 4)) * f)) * e +
    ((((((27) * f + ((78) * g)) * f + ((79) * g ^ 2)) * f + ((32) * g ^ 3)) * f + ((4) * g ^ 4))
    * f ^ 2)) * e + ((((((6) * f + ((21) * g)) * f + ((27) * g ^ 2)) * f + ((15) * g ^ 3)) * f +
    ((3) * g ^ 4)) * f ^ 3)

def z1 (e f g : ℝ) : ℝ :=
  ((((((6) * f + ((2) * g)) * e + (((24) * f + ((12) * g)) * f)) * e + (((52) * f + ((42) * g))
    * f ^ 2 + ((-2) * g ^ 3))) * e + (((((64) * f + ((82) * g)) * f + ((20) * g ^ 2)) * f +
    ((-2) * g ^ 3)) * f)) * e + (((((30) * f + ((48) * g)) * f + ((16) * g ^ 2)) * f + ((-2) * g
    ^ 3)) * f ^ 2)) * e + ((((((-6) * g) * f + ((-16) * g ^ 2)) * f + ((-14) * g ^ 3)) * f +
    ((-4) * g ^ 4)) * f ^ 2)

def z2 (e f g : ℝ) : ℝ :=
  (((((3) * f + ((1) * g)) * e + (((10) * f + ((3) * g)) * f + ((-1) * g ^ 2))) * e + ((((19) *
    f + ((10) * g)) * f + ((-4) * g ^ 2)) * f + ((-1) * g ^ 3))) * e + (((((24) * f + ((30) *
    g)) * f + ((10) * g ^ 2)) * f + ((3) * g ^ 3)) * f + ((1) * g ^ 4))) * e + ((((((12) * f +
    ((24) * g)) * f + ((19) * g ^ 2)) * f + ((10) * g ^ 3)) * f + ((3) * g ^ 4)) * f)

def Z (e f g v : ℝ) := z0 e f g+z1 e f g*(f+v)+z2 e f g*(f+v)^2

set_option maxHeartbeats 0 in
-- Only a three-variable coefficient is normalized here.
theorem zero0 (e f g : ℝ) (hf : f ≠ 0) :
    OuterHomogeneous.quadratic (fun d h => LowerZero.q00 d e f g h (M e f g/f))
      (L e f g) (J f g) (f*L e f g-J f g) = 2*M e f g*z0 e f g := by
  unfold OuterHomogeneous.quadratic LowerZero.q00 L J M z0
  field_simp
  <;> ring

set_option maxHeartbeats 0 in
-- Only a three-variable coefficient is normalized here.
theorem zero1 (e f g : ℝ) (hf : f ≠ 0) :
    OuterHomogeneous.quadratic (fun d h => LowerZero.q01 d e f g h (M e f g/f))
      (L e f g) (J f g) (f*L e f g-J f g) = 2*M e f g*z1 e f g := by
  unfold OuterHomogeneous.quadratic LowerZero.q01 L J M z1
  field_simp
  <;> ring

set_option maxHeartbeats 0 in
-- Only a three-variable coefficient is normalized here.
theorem zero2 (e f g : ℝ) (hf : f ≠ 0) :
    OuterHomogeneous.quadratic (fun d h => LowerZero.q02 d e f g h (M e f g/f))
      (L e f g) (J f g) (f*L e f g-J f g) = 2*M e f g*z2 e f g := by
  unfold OuterHomogeneous.quadratic LowerZero.q02 L J M z2
  field_simp
  <;> ring

end
end SPR.N6.Tail.CoreEndpoint.PureSource
