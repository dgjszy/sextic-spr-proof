import SPR.N6.Algebra.Tail.CoreEndpoint.PureSource

/-! Exact low zero-direction factors and complete compactified frequency coefficients. -/
namespace SPR.N6.Tail.CoreEndpoint.PureSource
noncomputable section
set_option Elab.async false
set_option maxRecDepth 16384

def lz0 (e f g : ℝ) : ℝ :=
  (((((((2) * f + ((5) * g)) * f + ((4) * g ^ 2)) * f + ((1) * g ^ 3)) * e + (((((11) * f +
    ((33) * g)) * f + ((36) * g ^ 2)) * f + ((17) * g ^ 3)) * f + ((3) * g ^ 4))) * e +
    ((((((30) * f + ((105) * g)) * f + ((141) * g ^ 2)) * f + ((90) * g ^ 3)) * f + ((27) * g ^
    4)) * f + ((3) * g ^ 5))) * e + (((((((39) * f + ((156) * g)) * f + ((249) * g ^ 2)) * f +
    ((201) * g ^ 3)) * f + ((85) * g ^ 4)) * f + ((17) * g ^ 5)) * f + ((1) * g ^ 6))) * e +
    ((((((((18) * f + ((81) * g)) * f + ((150) * g ^ 2)) * f + ((147) * g ^ 3)) * f + ((81) * g
    ^ 4)) * f + ((24) * g ^ 5)) * f + ((3) * g ^ 6)) * f)

set_option maxHeartbeats 0 in
-- Three gap variables only; no full source expansion.
theorem low_zero0 (e f g : ℝ) (hf : f ≠ 0) :
    OuterHomogeneous.quadratic (fun d h => LowerZero.q10 d e f g h (M e f g/f))
      (L e f g) (J f g) (f*L e f g-J f g) = 2*M e f g*lz0 e f g := by
  unfold OuterHomogeneous.quadratic LowerZero.q10 L J M lz0
  field_simp
  <;> ring

def lz1 (e f g : ℝ) : ℝ :=
  ((((((-2) * f + ((-2) * g)) * f) * e + ((((-6) * f + ((-4) * g)) * f + ((4) * g ^ 2)) * f +
    ((2) * g ^ 3))) * e + (((((-22) * f + ((-36) * g)) * f + ((-12) * g ^ 2)) * f + ((2) * g ^
    3)) * f)) * e + ((((((-42) * f + ((-108) * g)) * f + ((-102) * g ^ 2)) * f + ((-48) * g ^
    3)) * f + ((-14) * g ^ 4)) * f + ((-2) * g ^ 5))) * e + (((((((-24) * f + ((-78) * g)) * f +
    ((-102) * g ^ 2)) * f + ((-72) * g ^ 3)) * f + ((-30) * g ^ 4)) * f + ((-6) * g ^ 5)) * f)

set_option maxHeartbeats 0 in
-- Three gap variables only; no full source expansion.
theorem low_zero1 (e f g : ℝ) (hf : f ≠ 0) :
    OuterHomogeneous.quadratic (fun d h => LowerZero.q11 d e f g h (M e f g/f))
      (L e f g) (J f g) (f*L e f g-J f g) = 2*M e f g*lz1 e f g := by
  unfold OuterHomogeneous.quadratic LowerZero.q11 L J M lz1
  field_simp
  <;> ring

def lz2 (e f g : ℝ) : ℝ :=
  (((((3) * f + ((1) * g)) * e + (((10) * f + ((3) * g)) * f + ((-1) * g ^ 2))) * e + ((((19) *
    f + ((10) * g)) * f + ((-4) * g ^ 2)) * f + ((-1) * g ^ 3))) * e + (((((24) * f + ((30) *
    g)) * f + ((10) * g ^ 2)) * f + ((3) * g ^ 3)) * f + ((1) * g ^ 4))) * e + ((((((12) * f +
    ((24) * g)) * f + ((19) * g ^ 2)) * f + ((10) * g ^ 3)) * f + ((3) * g ^ 4)) * f)

set_option maxHeartbeats 0 in
-- Three gap variables only; no full source expansion.
theorem low_zero2 (e f g : ℝ) (hf : f ≠ 0) :
    OuterHomogeneous.quadratic (fun d h => LowerZero.q12 d e f g h (M e f g/f))
      (L e f g) (J f g) (f*L e f g-J f g) = 2*M e f g*lz2 e f g := by
  unfold OuterHomogeneous.quadratic LowerZero.q12 L J M lz2
  field_simp
  <;> ring

def LZ0 (e f g v : ℝ) := lz0 e f g*(1+v)^2-lz1 e f g*e*(1+v)+lz2 e f g*e^2
def LZ1 (e f g v : ℝ) := -lz1 e f g*(1+v)+2*lz2 e f g*e
def LZ2 (e f g : ℝ) := lz2 e f g
def node0 (e f g v : ℝ) := e+(f+g)*(1+v)
def lr0 (e f g v : ℝ) := D1 e f g*D2 e f g*W e f g*(node0 e f g v)^2+H0 e f g*LZ0 e f g v
def lr1 (e f g v : ℝ) := 2*D1 e f g*D2 e f g*W e f g*node0 e f g v+H0 e f g*LZ1 e f g v+H1 e f g*LZ0 e f g v
def lr2 (e f g v : ℝ) := D1 e f g*D2 e f g*W e f g+H0 e f g*LZ2 e f g+H1 e f g*LZ1 e f g v+H2 e f g*LZ0 e f g v
def lr3 (e f g v : ℝ) := H1 e f g*LZ2 e f g+H2 e f g*LZ1 e f g v
def lr4 (e f g v : ℝ) := H2 e f g*LZ2 e f g
end
end SPR.N6.Tail.CoreEndpoint.PureSource
