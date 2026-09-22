import SPR.N6.Algebra.Tail.RootSource

/-!
# Quartic frequency homogenization of the same lower source

The low-band transformation uses t = numerator / denominator and retains the
full fourth power of its positive denominator. All five frequency terms are
kept; no assertion about a sampled frequency or a changed candidate is used.
-/
namespace SPR.N6.Tail.RootSource
noncomputable section

def zeroFrequency (i : Bool) (a A B b c C m n d : ℝ) : ℝ :=
  let gap := A-a
  let e := B-A
  let f := b-B
  let g := c-b
  let h := C-c
  (if i then LowerZero.q10 else LowerZero.q00) gap e f g h m*d^2+
    (if i then LowerZero.q11 else LowerZero.q01) gap e f g h m*(n-B*d)*d+
    (if i then LowerZero.q12 else LowerZero.q02) gap e f g h m*(n-B*d)^2

def residualFrequency (i : Bool) (a A B b c C n d : ℝ) : ℝ :=
  if i then C*(n-b*d)*(n-c*d)*den1 a b c+(n-C*d)*(a*n-b*c*d)*den2 A B C
  else a*(n-A*d)*(n-B*d)*den2 A B C+(n-a*d)*(C*n-A*B*d)*den1 a b c

/-- Complete homogeneous frequency form of degree four. -/
def sourceFrequency (i : Bool) (a A B b c C m n d : ℝ) : ℝ :=
  weight a A B b c C m*
    (m*(n-(if i then B else b)*d)^2*residualFrequency i a A B b c C n d+
      den1 a b c*den2 A B C*n*(n-(if i then c else A)*d)^2*d)+
    mixture a A B b c C*n*zeroFrequency i a A B b c C m n d*d

/-- Exact frequency homogenization, including every quartic term. -/
theorem sourceFrequency_eq (i : Bool) (a A B b c C m n d : ℝ) (hd : d ≠ 0) :
    sourceFrequency i a A B b c C m n d = d^4*source i a A B b c C m (n/d) := by
  cases i <;> simp only [sourceFrequency,source,residualFrequency,residual,
    zeroFrequency,zero,LowerZero.q0,LowerZero.q1,Bool.false_eq_true,ite_false,ite_true]
  · field_simp
  · field_simp

/-- Upper-ratio endpoint of the complete frequency form, with integer clearing. -/
def endpointFrequency (i : Bool) (a A B b c C n d : ℝ) : ℝ :=
  2*(b-B)^2*sourceFrequency i a A B b c C 0 n d+
    (b-B)*(c-A)*(sourceFrequency i a A B b c C 1 n d-
      sourceFrequency i a A B b c C (-1) n d)+
    (c-A)^2*(sourceFrequency i a A B b c C 1 n d+
      sourceFrequency i a A B b c C (-1) n d-
      2*sourceFrequency i a A B b c C 0 n d)

/-- Ratio interpolation and frequency clearing commute exactly. -/
theorem endpointFrequency_eq (i : Bool) (a A B b c C n d : ℝ) (hd : d ≠ 0) :
    endpointFrequency i a A B b c C n d = d^4*endpoint i a A B b c C (n/d) := by
  simp only [endpointFrequency,sourceFrequency_eq i a A B b c C _ n d hd,endpoint]
  ring

end
end SPR.N6.Tail.RootSource
