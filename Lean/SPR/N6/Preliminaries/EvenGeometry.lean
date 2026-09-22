import SPR.N6.Definitions.Box
import SPR.N6.Preliminaries.RootOrder

/-!
# Strict six-root geometry of a varying even coefficient box

Only the original robust Hurwitz hypothesis is used to obtain the roots.
Nonzero even width gives a strict pointwise gap on positive squared frequencies.
The proof uses two actual corner denominators with exactly the same odd part.
-/
namespace SPR.N6
noncomputable section
open Polynomial

/-- At least one of the three even coefficient intervals has positive width. -/
def Box6.EvenVarying (K : Box6) : Prop :=
  K.lower.a2 < K.upper.a2 ∨ K.lower.a4 < K.upper.a4 ∨ K.lower.a6 < K.upper.a6

/-- One nonzero even width suffices for a strict gap at every positive frequency. -/
theorem Box6.even_gap_pos (K : Box6) (hw : K.EvenVarying) {t : ℝ} (ht : 0 < t) :
    K.evenLower t < K.evenUpper t := by
  have h2 := mul_nonneg (sub_nonneg.mpr K.h2) (sq_nonneg t)
  have h4 := mul_nonneg (sub_nonneg.mpr K.h4) ht.le
  have h6 := sub_nonneg.mpr K.h6
  unfold evenLower evenUpper
  rcases hw with hw | hw | hw
  · have h := mul_pos (sub_pos.mpr hw) (sq_pos_of_pos ht)
    nlinarith only [h, h4, h6]
  · have h := mul_pos (sub_pos.mpr hw) ht
    nlinarith only [h2, h, h6]
  · nlinarith only [h2, h4, hw]

/-- The six strictly ordered roots, with the actual endpoint polynomial identities. -/
structure EvenGeometry (K : Box6) where
  a : ℝ
  A : ℝ
  B : ℝ
  b : ℝ
  c : ℝ
  C : ℝ
  a_pos : 0 < a
  a_lt_A : a < A
  A_lt_B : A < B
  B_lt_b : B < b
  b_lt_c : b < c
  c_lt_C : c < C
  lower_factor : evenPoly (K.corner (false, false)) =
    -(((X - Polynomial.C a) * (X - Polynomial.C b)) * (X - Polynomial.C c))
  upper_factor : evenPoly (K.corner (true, false)) =
    -(((X - Polynomial.C A) * (X - Polynomial.C B)) * (X - Polynomial.C C))

/-- Original robust stability and a nonzero even width produce the strict geometry. -/
theorem Box6.even_geometry (K : Box6) (hK : K.RobustlyHurwitz) (hw : K.EvenVarying) :
    Nonempty (EvenGeometry K) := by
  have hm := hK _ (K.corner_mem (false, false))
  have hp := hK _ (K.corner_mem (true, false))
  obtain ⟨d⟩ := denominator_interlacing hm
  obtain ⟨e⟩ := denominator_interlacing hp
  have ho := d.odd_unique e (sextic_coefficients_pos hm).1
    (sextic_coefficients_pos hp).1 (fun _ => rfl)
  have hda := d.e₁_pos
  have h12 := d.e₁_lt_o₁
  have h23 := d.o₁_lt_e₂
  have h34 := d.e₂_lt_o₂
  have h45 := d.o₂_lt_e₃
  have hA1 := e.e₁_lt_o₁
  have h1B := e.o₁_lt_e₂
  have hB2 := e.e₂_lt_o₂
  have h2C := e.o₂_lt_e₃
  have hg (t : ℝ) (ht : 0 < t) :
      evenPart (K.corner (false, false)) t < evenPart (K.corner (true, false)) t :=
    K.even_gap_pos hw ht
  have hpa : 0 < -(d.e₁ - e.e₁) * (d.e₁ - e.e₂) * (d.e₁ - e.e₃) := by
    have hh := hg d.e₁ hda
    rw [d.even_value, e.even_value] at hh
    simpa using hh
  have hpb : 0 < -(d.e₂ - e.e₁) * (d.e₂ - e.e₂) * (d.e₂ - e.e₃) := by
    have hh := hg d.e₂ (by linarith)
    rw [d.even_value, e.even_value] at hh
    simpa using hh
  have hpc : 0 < -(d.e₃ - e.e₁) * (d.e₃ - e.e₂) * (d.e₃ - e.e₃) := by
    have hh := hg d.e₃ (by linarith)
    rw [d.even_value, e.even_value] at hh
    simpa using hh
  have haA : d.e₁ < e.e₁ := by
    by_contra hn
    have hn' : -(d.e₁ - e.e₁) ≤ 0 := by linarith
    have hB : d.e₁ - e.e₂ ≤ 0 := by linarith [ho.1]
    have hC : d.e₁ - e.e₃ ≤ 0 := by linarith [ho.1, ho.2]
    have hh := mul_nonpos_of_nonneg_of_nonpos (mul_nonneg_of_nonpos_of_nonpos hn' hB) hC
    linarith
  have hBb : e.e₂ < d.e₂ := by
    by_contra hn
    have hn' : d.e₂ - e.e₂ ≤ 0 := by linarith
    have hA : -(d.e₂ - e.e₁) ≤ 0 := by linarith [ho.1]
    have hC : d.e₂ - e.e₃ ≤ 0 := by linarith [ho.2]
    have hh := mul_nonpos_of_nonneg_of_nonpos (mul_nonneg_of_nonpos_of_nonpos hA hn') hC
    linarith
  have hcC : d.e₃ < e.e₃ := by
    by_contra hn
    have hA : -(d.e₃ - e.e₁) ≤ 0 := by linarith [ho.1]
    have hB : 0 ≤ d.e₃ - e.e₂ := by linarith [ho.2]
    have hC : 0 ≤ d.e₃ - e.e₃ := by linarith
    have hh := mul_nonpos_of_nonpos_of_nonneg (mul_nonpos_of_nonpos_of_nonneg hA hB) hC
    linarith
  exact ⟨⟨d.e₁, e.e₁, e.e₂, d.e₂, d.e₃, e.e₃, hda, haA,
    hA1.trans h1B, hBb, h34.trans h45, hcC, d.even_factor, e.even_factor⟩⟩

namespace EvenGeometry

theorem lower_value {K : Box6} (g : EvenGeometry K) (t : ℝ) :
    K.evenLower t = -(t - g.a) * (t - g.b) * (t - g.c) := by
  have h := congrArg (Polynomial.eval t) g.lower_factor
  calc
    K.evenLower t = -((t - g.a) * (t - g.b) * (t - g.c)) := by
      simpa [Box6.evenLower, evenPoly, Box6.corner] using h
    _ = _ := by ring

theorem upper_value {K : Box6} (g : EvenGeometry K) (t : ℝ) :
    K.evenUpper t = -(t - g.A) * (t - g.B) * (t - g.C) := by
  have h := congrArg (Polynomial.eval t) g.upper_factor
  calc
    K.evenUpper t = -((t - g.A) * (t - g.B) * (t - g.C)) := by
      simpa [Box6.evenUpper, evenPoly, Box6.corner] using h
    _ = _ := by ring

private theorem cubic_expand (a b c : ℝ) :
    -(((X - Polynomial.C a) * (X - Polynomial.C b)) * (X - Polynomial.C c)) =
      (-X ^ 3 + Polynomial.C (a + b + c) * X ^ 2 -
        Polynomial.C (a * b + a * c + b * c) * X + Polynomial.C (a * b * c) : ℝ[X]) := by
  simp only [map_add, map_mul]
  ring

/-- The three independent original even widths are retained in root coordinates. -/
theorem widths {K : Box6} (g : EvenGeometry K) :
    0 ≤ g.A + g.B + g.C - g.a - g.b - g.c ∧
    0 ≤ g.a * g.b + g.a * g.c + g.b * g.c - g.A * g.B - g.A * g.C - g.B * g.C ∧
    0 ≤ g.A * g.B * g.C - g.a * g.b * g.c := by
  have hl := g.lower_factor
  have hu := g.upper_factor
  rw [cubic_expand] at hl hu
  have hl2 := congrArg (fun p : ℝ[X] => p.coeff 2) hl
  have hu2 := congrArg (fun p : ℝ[X] => p.coeff 2) hu
  have hl1 := congrArg (fun p : ℝ[X] => p.coeff 1) hl
  have hu1 := congrArg (fun p : ℝ[X] => p.coeff 1) hu
  have hl0 := congrArg (fun p : ℝ[X] => p.coeff 0) hl
  have hu0 := congrArg (fun p : ℝ[X] => p.coeff 0) hu
  simp only [evenPoly, Box6.corner, Bool.false_eq_true, ite_false, ite_true,
    coeff_add, coeff_sub, coeff_neg, coeff_C_mul_X_pow, coeff_C_mul_X, coeff_X_pow, coeff_C]
    at hl2 hu2 hl1 hu1 hl0 hu0
  norm_num at hl2 hu2 hl1 hu1 hl0 hu0
  exact ⟨by linarith [K.h2], by nlinarith [K.h4], by nlinarith [K.h6]⟩

end EvenGeometry
end
end SPR.N6
