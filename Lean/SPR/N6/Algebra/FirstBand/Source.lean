import SPR.N6.Algebra.FirstBand.Core

/-!
# Factored first-band source and its complete frequency interpolation

Only the five scalar parameters and the original ratio are substituted into
an abstract convolution. The large parameter expressions are never used as
unproved coefficient data.
-/
namespace SPR.N6.FirstBand
noncomputable section

/-- The factored denominator-cleared lower quotient on t=a+d u. -/
def source (a d e f g h m u : ℝ) : ℝ :=
  (w0 a d e f g h+w1 a d e f g h*m)*
    (den a d e f g h*d^2*(a+d*u)*(u-1)^2+
      m*(d*u-jump a d e f g h)^2*(l0 a d e f g h+l1 a d e f g h*u+l2 a d e f g h*u^2))+
    mix a d e f g h*(a+d*u)*
      ((z00 a d e f g h+z01 a d e f g h*m+z02 a d e f g h*m^2)+
        (z10 a d e f g h+z11 a d e f g h*m+z12 a d e f g h*m^2)*u+
        (z20 a d e f g h+z21 a d e f g h*m+z22 a d e f g h*m^2)*u^2)

/-- Small generic ratio interpolation; all three signs refer to one polynomial. -/
theorem ratio_positive {c0 c1 c2 e f g m : ℝ}
    (he : 0 < e) (hf : 0 < f) (hg : 0 < g)
    (hm : 1 ≤ m) (hM : m ≤ (e+f+g)/f)
    (h0 : 0 < 2*f^2*(c0+c1+c2))
    (h1 : 0 < 2*f^2*c0+f*(e+2*f+g)*c1+2*f*(e+f+g)*c2)
    (h2 : 0 < 2*(f^2*c0+f*(e+f+g)*c1+(e+f+g)^2*c2)) :
    0 < c0+c1*m+c2*m^2 := by
  let v := f*(m-1)/(e+g)
  have heg : 0 < e+g := add_pos he hg
  have hv0 : 0 ≤ v := div_nonneg (mul_nonneg hf.le (sub_nonneg.mpr hm)) heg.le
  have hv1 : v ≤ 1 := by
    apply (div_le_one heg).mpr
    have hb := (le_div_iff₀ hf).mp hM
    nlinarith only [hb]
  have hp := ratio_block_pos h0 h1 h2 hv0 hv1
  have hid : 2*f^2*(c0+c1*m+c2*m^2) =
      (2*f^2*(c0+c1+c2))*(1-v)^2+
      2*(2*f^2*c0+f*(e+2*f+g)*c1+2*f*(e+f+g)*c2)*v*(1-v)+
      (2*(f^2*c0+f*(e+f+g)*c1+(e+f+g)^2*c2))*v^2 := by
    dsimp [v]
    field_simp
    ring
  rw [← hid] at hp
  exact (mul_pos_iff_of_pos_left (by positivity : 0 < 2*f^2)).mp hp

/-- All five positive quartic entries imply strictness on the closed frequency interval. -/
theorem quartic_positive {c0 c1 c2 c3 c4 u : ℝ}
    (h0 : 0 < c0) (h1 : 0 < c1) (h2 : 0 < c2) (h3 : 0 < c3) (h4 : 0 < c4)
    (hu0 : 0 ≤ u) (hu1 : u ≤ 1) :
    0 < c0*(1-u)^4+4*c1*u*(1-u)^3+6*c2*u^2*(1-u)^2+
      4*c3*u^3*(1-u)+c4*u^4 := by
  have hv : 0 ≤ 1-u := sub_nonneg.mpr hu1
  by_cases hz : u = 0
  · simpa [hz] using h0
  · have hp : 0 < c4*u^4 := mul_pos h4 (pow_pos (lt_of_le_of_ne hu0 (Ne.symm hz)) 4)
    have h01 : 0 ≤ c0*(1-u)^4+4*c1*u*(1-u)^3 := by positivity
    have h2' : 0 ≤ 6*c2*u^2*(1-u)^2 := by positivity
    have h3' : 0 ≤ 4*c3*u^3*(1-u) := by positivity
    linarith only [hp,h01,h2',h3']

end
end SPR.N6.FirstBand
