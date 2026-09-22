import SPR.N6.Algebra.Tail.RootSource

/-!
# Retaining the leading term of the high-frequency endpoint

The finite outer-coordinate certificates concern the cubic remainder. The
quartic term is restored on the actual positive-root geometry, rather than
being tested separately at possibly unphysical simplex vertices.
-/
namespace SPR.N6.Tail.RootSource
noncomputable section

/-- The coefficient of the ratio in the positive clearing weight. -/
def weightSlope (a A B b c C : ℝ) : ℝ :=
  (C-A)*(b-B)^2*(c-B)+(c-a)*(b-A)*(b-B)^2

/-- The exact quartic frequency coefficient at the upper ratio endpoint. -/
def highLeading (a A B b c C : ℝ) : ℝ :=
  2*(c-A)*((b-B)*weight a A B b c C 0+(c-A)*weightSlope a A B b c C)*
    (a*den2 A B C+C*den1 a b c)

/-- The cubic remainder, defined from the complete endpoint source. -/
def highRemainder (a A B b c C v : ℝ) : ℝ :=
  endpoint false a A B b c C (b+v)-highLeading a A B b c C*v^4

/-- The leading term is explicitly retained when restoring the endpoint source. -/
theorem highRemainder_restore (a A B b c C v : ℝ) :
    endpoint false a A B b c C (b+v) =
      highRemainder a A B b c C v+highLeading a A B b c C*v^4 := by
  unfold highRemainder
  ring

/-- Cubic interpolation with integer coefficients. -/
def interpolation (F : ℝ → ℝ) (v : ℝ) : ℝ :=
  6*F 0+v*(-3*F 0+6*F 1-2*F (-1)-F 2)+
    v^2*(-6*F 0+3*F 1+3*F (-1))+v^3*(3*F 0-3*F 1-F (-1)+F 2)

/-- Remove the quartic coefficient before combining ratio evaluations. -/
def ratioRemainder (a A B b c C m v : ℝ) : ℝ :=
  source false a A B b c C m (b+v)-
    weight a A B b c C m*m*(a*den2 A B C+C*den1 a b c)*v^4

/-- Cubic degree is checked while geometric coefficient factors remain unexpanded. -/
theorem ratioRemainder_cubic (a A B b c C m v : ℝ) :
    6*ratioRemainder a A B b c C m v =
      interpolation (ratioRemainder a A B b c C m) v := by
  simp only [interpolation,ratioRemainder,source,residual,zero,LowerZero.q0,
    Bool.false_eq_true,ite_false]
  ring

/-- The ratio-endpoint remainder is the exact linear combination of the three cubic parts. -/
theorem highRemainder_combination (a A B b c C v : ℝ) :
    highRemainder a A B b c C v =
      2*(b-B)^2*ratioRemainder a A B b c C 0 v+
      (b-B)*(c-A)*(ratioRemainder a A B b c C 1 v-ratioRemainder a A B b c C (-1) v)+
      (c-A)^2*(ratioRemainder a A B b c C 1 v+ratioRemainder a A B b c C (-1) v-
        2*ratioRemainder a A B b c C 0 v) := by
  simp only [highRemainder,endpoint,ratioRemainder,highLeading,weight,weightSlope]
  ring

/-- Exact cubic interpolation verifies the degree and quartic subtraction together. -/
theorem highRemainder_cubic (a A B b c C v : ℝ) :
    6*highRemainder a A B b c C v = interpolation (highRemainder a A B b c C) v := by
  have h0 := ratioRemainder_cubic a A B b c C 0 v
  have h1 := ratioRemainder_cubic a A B b c C 1 v
  have hm := ratioRemainder_cubic a A B b c C (-1) v
  simp only [interpolation] at h0 h1 hm ⊢
  simp only [highRemainder_combination]
  linear_combination 2*(b-B)^2*h0+(b-B)*(c-A)*(h1-hm)+(c-A)^2*(h1+hm-2*h0)

end
end SPR.N6.Tail.RootSource
