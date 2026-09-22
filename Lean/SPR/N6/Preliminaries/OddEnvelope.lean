import SPR.N6.Preliminaries.OddBands
import SPR.N6.Algebra.Quadratic

/-!
# Canonical strict odd envelope from the original box

The scales use the actual endpoint discriminants. Strict containment is proved
for every real squared-frequency argument; the ordering of the two original
odd extrema is only used for nonnegative arguments. No stable-envelope-box
hypothesis is introduced.
-/
namespace SPR.N6
noncomputable section

namespace OddBands

theorem root_order {K : Box6} {g : EvenGeometry K} {p : Poly6} (d : OddBands g p) :
    d.u < d.v := d.u_lt_B.trans (g.B_lt_b.trans d.b_lt_v)

/-- Recover the actual coefficients from the complete odd factorization. -/
theorem coefficients {K : Box6} {g : EvenGeometry K} {p : Poly6} (d : OddBands g p) :
    p.a3 = p.a1 * (d.u + d.v) ∧ p.a5 = p.a1 * d.u * d.v := by
  have h0 := d.factor 0
  have h1 := d.factor 1
  have hn := d.factor (-1)
  norm_num [oddPart] at h0 h1 hn
  constructor <;> nlinarith only [h0, h1, hn]

/-- The positive square root of the discriminant is leading coefficient times root distance. -/
theorem discriminant_sqrt {K : Box6} {g : EvenGeometry K} {p : Poly6} (d : OddBands g p) :
    Real.sqrt (p.a3 ^ 2 - 4 * p.a1 * p.a5) = p.a1 * (d.v - d.u) := by
  rw [d.coefficients.1, d.coefficients.2]
  have hi : (p.a1 * (d.u + d.v)) ^ 2 - 4 * p.a1 * (p.a1 * d.u * d.v) =
      (p.a1 * (d.v - d.u)) ^ 2 := by ring
  rw [hi, Real.sqrt_sq (mul_pos d.leading_pos (sub_pos.mpr d.root_order)).le]

end OddBands

namespace EvenGeometry

/-- Canonical lower scale, from the actual lower odd endpoint discriminant. -/
def lowerScale {K : Box6} (g : EvenGeometry K) : ℝ :=
  Real.sqrt (K.upper.a3 ^ 2 - 4 * K.lower.a1 * K.lower.a5) / (g.c - g.A)

/-- Canonical upper scale, from the actual upper odd endpoint discriminant. -/
def upperScale {K : Box6} (g : EvenGeometry K) : ℝ :=
  Real.sqrt (K.lower.a3 ^ 2 - 4 * K.upper.a1 * K.upper.a5) / (g.b - g.B)

/-- The same actual ratio is used throughout the subsequent construction. -/
def ratio {K : Box6} (g : EvenGeometry K) : ℝ := g.upperScale / g.lowerScale

def lowerOddShape {K : Box6} (g : EvenGeometry K) (t : ℝ) : ℝ := (t - g.A) * (t - g.c)

def upperOddShape {K : Box6} (g : EvenGeometry K) (t : ℝ) : ℝ := (t - g.B) * (t - g.b)

/-- Strict envelopes and positive scales, extracted from the original stability hypothesis. -/
theorem strict_odd_envelope {K : Box6} (g : EvenGeometry K) (hK : K.RobustlyHurwitz) :
    0 < g.lowerScale ∧ g.lowerScale < K.lower.a1 ∧
    K.upper.a1 < g.upperScale ∧
    (∀ t : ℝ, g.lowerScale * g.lowerOddShape t < K.oddLower t) ∧
    (∀ t : ℝ, K.oddUpper t < g.upperScale * g.upperOddShape t) := by
  obtain ⟨d⟩ := g.odd_bands hK (K.corner_mem (false, false))
  obtain ⟨e⟩ := g.odd_bands hK (K.corner_mem (false, true))
  have hca : 0 < g.c - g.A := by linarith [g.A_lt_B, g.B_lt_b, g.b_lt_c]
  have hbb : 0 < g.b - g.B := sub_pos.mpr g.B_lt_b
  have hdlead : 0 < K.lower.a1 := d.leading_pos
  have helead : 0 < K.upper.a1 := e.leading_pos
  have hl : g.lowerScale = K.lower.a1 * (d.v - d.u) / (g.c - g.A) := by
    unfold lowerScale
    rw [show Real.sqrt (K.upper.a3 ^ 2 - 4 * K.lower.a1 * K.lower.a5) =
      K.lower.a1 * (d.v - d.u) from d.discriminant_sqrt]
  have hu : g.upperScale = K.upper.a1 * (e.v - e.u) / (g.b - g.B) := by
    unfold upperScale
    rw [show Real.sqrt (K.lower.a3 ^ 2 - 4 * K.upper.a1 * K.upper.a5) =
      K.upper.a1 * (e.v - e.u) from e.discriminant_sqrt]
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · rw [hl]
    exact div_pos (mul_pos hdlead (sub_pos.mpr d.root_order)) hca
  · rw [hl, div_lt_iff₀ hca]
    exact mul_lt_mul_of_pos_left (by linarith [d.A_lt_u, d.v_lt_c]) hdlead
  · rw [hu, lt_div_iff₀ hbb]
    exact mul_lt_mul_of_pos_left (by linarith [e.u_lt_B, e.b_lt_v]) helead
  · intro t
    have hn := nested_quadratics d.A_lt_u d.root_order d.v_lt_c t
    have hh := mul_lt_mul_of_pos_left hn hdlead
    have hv : K.oddLower t = K.lower.a1 * (t - d.u) * (t - d.v) := d.factor t
    rw [hl, hv]
    unfold lowerOddShape
    convert hh using 1 <;> ring
  · intro t
    have hn := nested_quadratics e.u_lt_B g.B_lt_b e.b_lt_v t
    have hscale := div_pos (mul_pos helead (sub_pos.mpr e.root_order)) hbb
    have hh := mul_lt_mul_of_pos_left hn hscale
    have hv : K.oddUpper t = K.upper.a1 * (t - e.u) * (t - e.v) := e.factor t
    rw [hu, hv]
    unfold upperOddShape
    convert hh using 1 <;>
      field_simp [ne_of_gt hbb, ne_of_gt (sub_pos.mpr e.root_order)] <;> ring

/-- The canonical ratio satisfies its full universal bounds, including the upper endpoint. -/
theorem ratio_bounds {K : Box6} (g : EvenGeometry K) (hK : K.RobustlyHurwitz) :
    1 < g.ratio ∧ g.ratio ≤ (g.c - g.A) / (g.b - g.B) := by
  obtain ⟨hl, hla, hak, _, _⟩ := g.strict_odd_envelope hK
  have hk : 0 < g.upperScale := lt_trans hl (lt_trans hla (lt_of_le_of_lt K.h1 hak))
  have hca : 0 < g.c - g.A := by linarith [g.A_lt_B, g.B_lt_b, g.b_lt_c]
  have hbb : 0 < g.b - g.B := sub_pos.mpr g.B_lt_b
  have hlc := sextic_coefficients_pos (hK _ K.lower_mem)
  have huc := sextic_coefficients_pos (hK _ K.upper_mem)
  have hsq : K.lower.a3 ^ 2 ≤ K.upper.a3 ^ 2 :=
    (sq_le_sq₀ hlc.2.2.1.le huc.2.2.1.le).mpr K.h3
  have hprod : K.lower.a1 * K.lower.a5 ≤ K.upper.a1 * K.upper.a5 :=
    mul_le_mul K.h1 K.h5 hlc.2.2.2.2.1.le huc.1.le
  have hdisc : K.lower.a3 ^ 2 - 4 * K.upper.a1 * K.upper.a5 ≤
      K.upper.a3 ^ 2 - 4 * K.lower.a1 * K.lower.a5 := by linarith
  have hsqrt := Real.sqrt_le_sqrt hdisc
  constructor
  · unfold ratio
    rw [one_lt_div hl]
    exact lt_trans hla (lt_of_le_of_lt K.h1 hak)
  · unfold ratio
    rw [div_le_iff₀ hl]
    unfold upperScale lowerScale
    calc
      Real.sqrt (K.lower.a3 ^ 2 - 4 * K.upper.a1 * K.upper.a5) / (g.b - g.B) ≤
          Real.sqrt (K.upper.a3 ^ 2 - 4 * K.lower.a1 * K.lower.a5) / (g.b - g.B) :=
        div_le_div_of_nonneg_right hsqrt hbb.le
      _ = (g.c - g.A) / (g.b - g.B) *
          (Real.sqrt (K.upper.a3 ^ 2 - 4 * K.lower.a1 * K.lower.a5) / (g.c - g.A)) := by
        field_simp

/-- Every actual odd part is strictly inside the same normalized envelope. -/
theorem actual_odd_inside {K : Box6} (g : EvenGeometry K) (hK : K.RobustlyHurwitz)
    {a : Poly6} (ha : K.Contains a) {t : ℝ} (ht : 0 ≤ t) :
    g.lowerOddShape t < oddPart a t / g.lowerScale ∧
      oddPart a t / g.lowerScale < g.ratio * g.upperOddShape t := by
  obtain ⟨hl, _, _, hL, hU⟩ := g.strict_odd_envelope hK
  obtain ⟨_, _, hol, hou⟩ := K.component_bounds ha ht
  constructor
  · rw [lt_div_iff₀ hl]
    nlinarith only [(hL t).trans_le hol]
  · rw [div_lt_iff₀ hl]
    calc
      oddPart a t < g.upperScale * g.upperOddShape t := hou.trans_lt (hU t)
      _ = g.ratio * g.upperOddShape t * g.lowerScale := by
        unfold ratio
        field_simp

/-- The two normalized envelope quadratics have a strict gap on the nonnegative half-axis. -/
theorem odd_shape_gap {K : Box6} (g : EvenGeometry K) (hK : K.RobustlyHurwitz)
    {t : ℝ} (ht : 0 ≤ t) : g.lowerOddShape t < g.ratio * g.upperOddShape t := by
  obtain ⟨h1, h2⟩ := g.actual_odd_inside hK K.lower_mem ht
  exact h1.trans h2

end EvenGeometry
end
end SPR.N6
