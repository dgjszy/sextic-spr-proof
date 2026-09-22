import SPR.N6.Algebra.Tail.QuadraticCore

/-!
# Small first-root coefficient identities for the low first-ratio core

The middle frequency Bernstein expression cancels the zero-direction quadratic
coefficient exactly. Keeping these gap factors abstract avoids expanding one
large six-variable certificate. Each subsequent coefficient file proves its
own exact slack identity; this module proves completeness of the assembly.
-/
namespace SPR.N6.Tail.LowFirst
noncomputable section
set_option Elab.async false
set_option maxRecDepth 8192
-- Fixed coefficient identities are normalized exactly, without external certificates.
set_option maxHeartbeats 0

def kappa (d f h : ℝ) : ℝ := d+h-f

def slack0 (d e f g h : ℝ) : ℝ :=
  f*(f+g)-d*(e+2*f+g)-(2*d+e)*(d+h-f)

def slack (a d e f g h : ℝ) : ℝ := slack0 d e f g h-2*a*kappa d f h

def D1 (d e f g : ℝ) : ℝ := (d+e+f)*(d+e+f+g)
def D2 (e f g h : ℝ) : ℝ := (e+f+g+h)*(f+g+h)
def W (d e f g h : ℝ) : ℝ :=
  (f+g+h)*(e+f)*(e+f+g)^2+(d+e+f)*(e+f+g)^2*(f+g)+
    (e+f+g+h)*f^2*(f+g)+(d+e+f+g)*(e+f)*f^2
def R (d e f g h : ℝ) : ℝ := D1 d e f g*D2 e f g h*W d e f g h

def H0 (d e f g h : ℝ) : ℝ :=
  (d+e+f)*(d+e+f+g)*D2 e f g h+
    (d*(d+e)+(d+e+f+g+h)*(2*d+2*e+2*f+g))*D1 d e f g

def H1 (d e f g h : ℝ) : ℝ :=
  (4*d+3*e+2*f+g)*D2 e f g h+(6*d+5*e+4*f+3*g+2*h)*D1 d e f g

def H2 (d e f g h : ℝ) : ℝ := 3*(D1 d e f g+D2 e f g h)

def Z0 (d e f g h : ℝ) : ℝ := LowerZero.q10 d e f g h 1-
  (d+e)*LowerZero.q11 d e f g h 1+(d+e)^2*LowerZero.q12 d e f g h 1

def Z1 (d e f g h : ℝ) : ℝ :=
  -LowerZero.q11 d e f g h 1+2*(d+e)*LowerZero.q12 d e f g h 1

def Z2 (d e f g h : ℝ) : ℝ := LowerZero.q12 d e f g h 1

def M0 (d e f g h : ℝ) : ℝ :=
  4*LowerZero.q10 d e f g h 1-2*(d+e)*LowerZero.q11 d e f g h 1

def M1 (d e f g h : ℝ) : ℝ := -2*LowerZero.q11 d e f g h 1

/-- The original root source becomes a short polynomial in the first root. -/
theorem core_gap (a d e f g h t : ℝ) :
    RootSource.core true a (a+d) (a+d+e) (a+d+e+f) (a+d+e+f+g)
      (a+d+e+f+g+h) 1 t = R d e f g h*(t-(a+d+e+f+g))^2+
      (H0 d e f g h+H1 d e f g h*a+H2 d e f g h*a^2)*
        (LowerZero.q10 d e f g h 1+LowerZero.q11 d e f g h 1*(t-(a+d+e))+
          LowerZero.q12 d e f g h 1*(t-(a+d+e))^2) := by
  have hd : a+d-a = d := by ring
  have he : a+d+e-(a+d) = e := by ring
  have hf : a+d+e+f-(a+d+e) = f := by ring
  have hg : a+d+e+f+g-(a+d+e+f) = g := by ring
  have hh : a+d+e+f+g+h-(a+d+e+f+g) = h := by ring
  have hD1 : RootSource.den1 a (a+d+e+f) (a+d+e+f+g) = D1 d e f g := by
    unfold RootSource.den1 D1
    ring
  have hD2 : RootSource.den2 (a+d) (a+d+e) (a+d+e+f+g+h) = D2 e f g h := by
    unfold RootSource.den2 D2
    ring
  have hW : RootSource.weight a (a+d) (a+d+e) (a+d+e+f) (a+d+e+f+g)
      (a+d+e+f+g+h) 1 = W d e f g h := by
    unfold RootSource.weight W
    ring
  have hH : RootSource.mixture a (a+d) (a+d+e) (a+d+e+f) (a+d+e+f+g)
      (a+d+e+f+g+h) = H0 d e f g h+H1 d e f g h*a+H2 d e f g h*a^2 := by
    unfold RootSource.mixture
    rw [hD1,hD2]
    unfold H0 H1 H2
    ring
  unfold RootSource.core RootSource.zero
  simp only [ite_true]
  rw [hd,he,hf,hg,hh,hD1,hD2,hW,hH]
  rfl

def z0 (d e f g h : ℝ) : ℝ :=
  4*(R d e f g h*(d+e+f+g)^2+H0 d e f g h*Z0 d e f g h)
def z1 (d e f g h : ℝ) : ℝ :=
  4*(2*R d e f g h*(d+e+f+g)+H0 d e f g h*Z1 d e f g h+
    H1 d e f g h*Z0 d e f g h)
def z2 (d e f g h : ℝ) : ℝ :=
  4*(R d e f g h+H0 d e f g h*Z2 d e f g h+H1 d e f g h*Z1 d e f g h+
    H2 d e f g h*Z0 d e f g h)
def z3 (d e f g h : ℝ) : ℝ :=
  4*(H1 d e f g h*Z2 d e f g h+H2 d e f g h*Z1 d e f g h)
def z4 (d e f g h : ℝ) : ℝ := 4*H2 d e f g h*Z2 d e f g h

def m0 (d e f g h : ℝ) : ℝ :=
  4*R d e f g h*(f+g)*(d+e+f+g)+H0 d e f g h*M0 d e f g h
def m1 (d e f g h : ℝ) : ℝ :=
  4*R d e f g h*(f+g)+H0 d e f g h*M1 d e f g h+H1 d e f g h*M0 d e f g h
def m2 (d e f g h : ℝ) : ℝ := H1 d e f g h*M1 d e f g h+H2 d e f g h*M0 d e f g h
def m3 (d e f g h : ℝ) : ℝ := H2 d e f g h*M1 d e f g h

def c0 (d e f g h : ℝ) : ℝ :=
  4*R d e f g h*(f+g)^2+4*H0 d e f g h*LowerZero.q10 d e f g h 1
def c1 (d e f g h : ℝ) : ℝ := 4*H1 d e f g h*LowerZero.q10 d e f g h 1
def c2 (d e f g h : ℝ) : ℝ := 4*H2 d e f g h*LowerZero.q10 d e f g h 1

/-- All five first-root coefficients at frequency zero, with none discarded. -/
theorem zero_source (a d e f g h : ℝ) :
    4*RootSource.core true a (a+d) (a+d+e) (a+d+e+f) (a+d+e+f+g)
      (a+d+e+f+g+h) 1 0 = z0 d e f g h+z1 d e f g h*a+z2 d e f g h*a^2+
        z3 d e f g h*a^3+z4 d e f g h*a^4 := by
  rw [core_gap]
  unfold z0 z1 z2 z3 z4 Z0 Z1 Z2
  ring

/-- The middle frequency entry cancels q12 exactly and has only four first-root coefficients. -/
theorem middle_source (a d e f g h : ℝ) :
    4*RootSource.core true a (a+d) (a+d+e) (a+d+e+f) (a+d+e+f+g)
      (a+d+e+f+g+h) 1 0+
      (a+d+e)*(RootSource.core true a (a+d) (a+d+e) (a+d+e+f) (a+d+e+f+g)
        (a+d+e+f+g+h) 1 1-RootSource.core true a (a+d) (a+d+e) (a+d+e+f)
          (a+d+e+f+g) (a+d+e+f+g+h) 1 (-1)) =
      m0 d e f g h+m1 d e f g h*a+m2 d e f g h*a^2+m3 d e f g h*a^3 := by
  simp only [core_gap]
  unfold m0 m1 m2 m3 M0 M1
  ring

/-- The last closed frequency endpoint has only three first-root coefficients. -/
theorem contact_source (a d e f g h : ℝ) :
    4*RootSource.core true a (a+d) (a+d+e) (a+d+e+f) (a+d+e+f+g)
      (a+d+e+f+g+h) 1 (a+d+e) = c0 d e f g h+c1 d e f g h*a+c2 d e f g h*a^2 := by
  rw [core_gap]
  unfold c0 c1 c2
  ring

end
end SPR.N6.Tail.LowFirst
