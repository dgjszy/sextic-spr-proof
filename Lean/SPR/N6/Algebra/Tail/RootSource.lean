import SPR.N6.Algebra.LowerZero

/-!
# Denominator-free source in the six actual roots

These factored formulas retain the original root variables and the same ratio.
They are the source side of the finite endpoint identities. No sign or physical
meaning is assigned to a point outside the original root geometry here.
-/
namespace SPR.N6.Tail.RootSource
noncomputable section
variable {R : Type*} [CommRing R]

def den1 (a b c : R) : R := (b-a)*(c-a)
def den2 (A B C : R) : R := (C-A)*(C-B)

/-- Clearing weight, considered at an arbitrary scalar ratio. -/
def weight (a A B b c C m : R) : R :=
  (C-B)*(b-A)*(c-A)^2+(b-a)*(c-A)^2*(c-B)+
    m*((C-A)*(b-B)^2*(c-B)+(c-a)*(b-A)*(b-B)^2)

/-- The cancellation reduces the mixing scalar's outer-root degree from four to three. -/
def mixture (a A B b c C : R) : R :=
  (a*(A+B)+b*c)*den2 A B C+(A*B+C*(b+c))*den1 a b c

/-- The denominator-cleared residual for each lower-odd corner. -/
def residual (i : Bool) (a A B b c C t : R) : R :=
  if i then C*(t-b)*(t-c)*den1 a b c+(t-C)*(a*t-b*c)*den2 A B C
  else a*(t-A)*(t-B)*den2 A B C+(t-a)*(C*t-A*B)*den1 a b c

/-- The original quadratic zero direction, with frequency translated by B. -/
def zero (i : Bool) (a A B b c C m t : R) : R :=
  (if i then LowerZero.q1 else LowerZero.q0) (A-a) (B-A) (b-B) (c-b) (C-c) m (t-B)

/-- Exact factored quartic source, with all denominators already cleared. -/
def source (i : Bool) (a A B b c C m t : R) : R :=
  weight a A B b c C m*
    (m*(t-(if i then B else b))^2*residual i a A B b c C t+
      den1 a b c*den2 A B C*t*(t-(if i then c else A))^2)+
    mixture a A B b c C*t*zero i a A B b c C m t

/-- The common factor 2f² clears evaluation at the upper ratio endpoint without division. -/
def endpoint (i : Bool) (a A B b c C t : R) : R :=
  2*(b-B)^2*source i a A B b c C 0 t+
    (b-B)*(c-A)*(source i a A B b c C 1 t-source i a A B b c C (-1) t)+
    (c-A)^2*(source i a A B b c C 1 t+source i a A B b c C (-1) t-
      2*source i a A B b c C 0 t)

end
end SPR.N6.Tail.RootSource
