import SPR.N6.Algebra.Tail.RootSource

/-!
# Homogeneous outer-root source before coefficient expansion

The common coordinate sum S, numerator aN, and numerator CN are kept explicit.
The complete source is homogeneous of degree five in these three quantities.
Only its slice S = 1 is identified with the actual root source here. In
particular, no assertion of positivity at unphysical simplex vertices is made.
-/
namespace SPR.N6.Tail.OuterHomogeneous
noncomputable section
variable {R : Type*} [CommRing R]

/-- Twice the degree-two homogenization recovered by exact quadratic interpolation. -/
def quadratic (q : R → R → R) (S d h : R) : R :=
  2*S^2*q 0 0+S*d*(q 1 0-q (-1) 0)+d^2*(q 1 0+q (-1) 0-2*q 0 0)+
    S*h*(q 0 1-q 0 (-1))+h^2*(q 0 1+q 0 (-1)-2*q 0 0)+
    2*d*h*(q 1 1-q 1 0-q 0 1+q 0 0)

/-- All six actual zero-direction coefficients have total outer degree at most two. -/
theorem quadratic_coefficients (e f g m d h : R) :
    quadratic (fun d h => LowerZero.q00 d e f g h m) 1 d h = 2*LowerZero.q00 d e f g h m ∧
    quadratic (fun d h => LowerZero.q01 d e f g h m) 1 d h = 2*LowerZero.q01 d e f g h m ∧
    quadratic (fun d h => LowerZero.q02 d e f g h m) 1 d h = 2*LowerZero.q02 d e f g h m ∧
    quadratic (fun d h => LowerZero.q10 d e f g h m) 1 d h = 2*LowerZero.q10 d e f g h m ∧
    quadratic (fun d h => LowerZero.q11 d e f g h m) 1 d h = 2*LowerZero.q11 d e f g h m ∧
    quadratic (fun d h => LowerZero.q12 d e f g h m) 1 d h = 2*LowerZero.q12 d e f g h m := by
  simp only [quadratic,LowerZero.q00,LowerZero.q01,LowerZero.q02,
    LowerZero.q10,LowerZero.q11,LowerZero.q12]
  constructor
  · ring
  constructor
  · ring
  constructor
  · ring
  constructor
  · ring
  constructor <;> ring

def den1 (S aN b c : R) : R := (b*S-aN)*(c*S-aN)
def den2 (S A B CN : R) : R := (CN-A*S)*(CN-B*S)

def weight (S aN A B b c CN m : R) : R :=
  (CN-B*S)*(b-A)*(c-A)^2+(b*S-aN)*(c-A)^2*(c-B)+
    m*((CN-A*S)*(b-B)^2*(c-B)+(c*S-aN)*(b-A)*(b-B)^2)

def mixture (S aN A B b c CN : R) : R :=
  (aN*(A+B)+b*c*S)*den2 S A B CN+(A*B*S+CN*(b+c))*den1 S aN b c

def residual (i : Bool) (S aN A B b c CN t : R) : R :=
  if i then CN*(t-b)*(t-c)*den1 S aN b c*S+(t*S-CN)*(aN*t-b*c*S)*den2 S A B CN
  else aN*(t-A)*(t-B)*den2 S A B CN*S+(t*S-aN)*(CN*t-A*B*S)*den1 S aN b c

def zero (i : Bool) (S aN A B b c CN m t : R) : R :=
  let d := A*S-aN
  let h := CN-c*S
  quadratic (fun d h => (if i then LowerZero.q10 else LowerZero.q00)
    d (B-A) (b-B) (c-b) h m) S d h+
  quadratic (fun d h => (if i then LowerZero.q11 else LowerZero.q01)
    d (B-A) (b-B) (c-b) h m) S d h*(t-B)+
  quadratic (fun d h => (if i then LowerZero.q12 else LowerZero.q02)
    d (B-A) (b-B) (c-b) h m) S d h*(t-B)^2

/-- The factor two in the source avoids rational interpolation coefficients. -/
def source (i : Bool) (S aN A B b c CN m t : R) : R :=
  2*weight S aN A B b c CN m*
    (m*(t-(if i then B else b))^2*residual i S aN A B b c CN t+
      den1 S aN b c*den2 S A B CN*t*(t-(if i then c else A))^2)+
    mixture S aN A B b c CN*t*zero i S aN A B b c CN m t

/-- At the physical slice, the zero direction is exactly the original one. -/
theorem zero_at_one (i : Bool) (a A B b c C m t : R) :
    zero i 1 a A B b c C m t = 2*RootSource.zero i a A B b c C m t := by
  obtain ⟨h00,h01,h02,h10,h11,h12⟩ :=
    quadratic_coefficients (B-A) (b-B) (c-b) m (A-a) (C-c)
  cases i <;>
    simp only [zero,RootSource.zero,LowerZero.q0,LowerZero.q1,
      Bool.false_eq_true,ite_false,ite_true,mul_one,h00,h01,h02,h10,h11,h12] <;> ring

/-- Exact recovery of the same complete source, including every frequency term. -/
theorem source_at_one (i : Bool) (a A B b c C m t : R) :
    source i 1 a A B b c C m t = 2*RootSource.source i a A B b c C m t := by
  rw [source,zero_at_one]
  cases i <;>
    simp only [weight,mixture,residual,den1,den2,RootSource.source,RootSource.weight,
      RootSource.mixture,RootSource.residual,RootSource.den1,RootSource.den2,
      Bool.false_eq_true,ite_false,ite_true,mul_one] <;> ring

/-- The interpolation operator is exactly homogeneous of degree two. -/
theorem quadratic_scale (q : R → R → R) (k S d h : R) :
    quadratic q (k*S) (k*d) (k*h) = k^2*quadratic q S d h := by
  unfold quadratic
  ring

/-- Homogeneity of the source is a polynomial identity for every real scale. -/
theorem source_scale (i : Bool) (k S aN A B b c CN m t : R) :
    source i (k*S) (k*aN) A B b c (k*CN) m t =
      k^5*source i S aN A B b c CN m t := by
  have hz : zero i (k*S) (k*aN) A B b c (k*CN) m t =
      k^2*zero i S aN A B b c CN m t := by
    have hd : A*(k*S)-k*aN = k*(A*S-aN) := by ring
    have hh : k*CN-c*(k*S) = k*(CN-c*S) := by ring
    simp only [zero,hd,hh,quadratic_scale]
    ring
  rw [source,hz]
  cases i <;>
    simp only [source,weight,mixture,residual,den1,den2,
      Bool.false_eq_true,ite_false,ite_true] <;> ring

end
end SPR.N6.Tail.OuterHomogeneous
