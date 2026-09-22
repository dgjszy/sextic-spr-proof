import SPR.N6.Algebra.Tail.HighZero
import SPR.N6.Construction.RatioQuotient
import SPR.N6.Construction.BaselinePositive

/-!
# The first two high-tail ratio entries of the actual candidate

The baseline is positive on this half-line. Small certificates for the zero
quadratic therefore suffice, instead of expanding the full quartic. This file
keeps the upper ratio endpoint as a separate, unproved obligation.
-/
namespace SPR.N6
noncomputable section
open Polynomial

/-- A quadratic's middle Bernstein entry can be recovered from three fixed evaluations. -/
theorem ratioMiddle_eval012 (p : ℝ[X]) (hp : p.natDegree ≤ 2) (M : ℝ) :
    ratioMiddle p M = p.eval 1+(M-1)/4*(p.eval 2-p.eval 0) := by
  simp only [quadratic_eval_coefficients p hp,ratioMiddle]
  ring

/-- Positive ratio coefficients of the baseline can be combined with any zero part.
The scalar identity is kept abstract, so no large geometric polynomial is expanded. -/
theorem ratio_baseline_entries {p : ℝ[X]} (hp : p.natDegree ≤ 2)
    (D H t w0 w1 L T M : ℝ)
    (hD : 0 ≤ D) (hH : 0 ≤ H) (ht : 0 ≤ t) (hw0 : 0 ≤ w0) (hw1 : 0 ≤ w1)
    (hL : 0 ≤ L) (hT : 0 ≤ T) (hM : 1 ≤ M)
    (h0 : 0 ≤ p.eval 1) (h1 : 0 ≤ ratioMiddle p M) :
    let r : ℝ[X] := Polynomial.C D*(Polynomial.C w0+Polynomial.C w1*X)*
      (X*Polynomial.C L+Polynomial.C T)+Polynomial.C (H*t)*p
    0 ≤ r.eval 1 ∧ 0 ≤ ratioMiddle r M := by
  dsimp only
  constructor
  · simp only [eval_add,eval_mul,eval_C,eval_X]
    nlinarith only [mul_nonneg (mul_nonneg hD (add_nonneg hw0 hw1)) (add_nonneg hL hT),
      mul_nonneg (mul_nonneg hH ht) h0]
  · have hm : 0 ≤ (1+M)/2 := by linarith
    have hmid : ratioMiddle
        (Polynomial.C D*(Polynomial.C w0+Polynomial.C w1*X)*
          (X*Polynomial.C L+Polynomial.C T)+Polynomial.C (H*t)*p) M =
        D*((w0+(1+M)/2*w1)*T+((1+M)/2*w0+M*w1)*L)+H*t*ratioMiddle p M := by
      have hd : (Polynomial.C D*(Polynomial.C w0+Polynomial.C w1*X)*
          (X*Polynomial.C L+Polynomial.C T)+Polynomial.C (H*t)*p).natDegree ≤ 2 := by
        compute_degree!
      rw [ratioMiddle_eval012 _ hd,ratioMiddle_eval012 p hp]
      simp only [eval_add,eval_mul,eval_C,eval_X]
      ring
    rw [hmid]
    have hMn : 0 ≤ M := le_trans zero_le_one hM
    positivity

namespace EvenGeometry
variable {B : Box6}

/-- Arbitrary-ratio evaluation is purely algebraic and includes contact frequencies. -/
theorem ratio_zero_quotient_eval_at (q : EvenGeometry B) (i : Bool) (t m : ℝ) :
    (q.ratioZeroQuotientPoly i t).eval m =
      (if i then LowerZero.q1 else LowerZero.q0)
        (q.A-q.a) (q.B-q.A) (q.b-q.B) (q.c-q.b) (q.C-q.c) m (t-q.B) := by
  cases i
  · have hh := LowerZero.q0_map (Polynomial.evalRingHom m)
      (Polynomial.C (q.A-q.a)) (Polynomial.C (q.B-q.A)) (Polynomial.C (q.b-q.B))
      (Polynomial.C (q.c-q.b)) (Polynomial.C (q.C-q.c)) X (Polynomial.C (t-q.B))
    simpa [ratioZeroQuotientPoly] using hh
  · have hh := LowerZero.q1_map (Polynomial.evalRingHom m)
      (Polynomial.C (q.A-q.a)) (Polynomial.C (q.B-q.A)) (Polynomial.C (q.b-q.B))
      (Polynomial.C (q.c-q.b)) (Polynomial.C (q.C-q.c)) X (Polynomial.C (t-q.B))
    simpa [ratioZeroQuotientPoly] using hh

/-- Both small zero-direction high entries follow from actual even widths. -/
theorem high_zero_ratio_entries (q : EvenGeometry B) (t : ℝ) (ht : q.b ≤ t) :
    0 ≤ (q.ratioZeroQuotientPoly false t).eval 1 ∧
    0 ≤ ratioMiddle (q.ratioZeroQuotientPoly false t) ((q.c-q.A)/(q.b-q.B)) := by
  let d := q.A-q.a
  let e := q.B-q.A
  let f := q.b-q.B
  let g := q.c-q.b
  let h := q.C-q.c
  have hd : 0 ≤ d := (sub_pos.mpr q.a_lt_A).le
  have he : 0 ≤ e := (sub_pos.mpr q.A_lt_B).le
  have hf : 0 < f := sub_pos.mpr q.B_lt_b
  have hg : 0 ≤ g := (sub_pos.mpr q.b_lt_c).le
  have hh : 0 ≤ h := (sub_pos.mpr q.c_lt_C).le
  obtain ⟨hK,hS⟩ := q.upper_zero_slacks
  have hS' : 0 ≤ Tail.HighZero.slack d e f g h := hS
  have hK' : 0 ≤ Tail.HighZero.kappa d f h := hK
  have hv : 0 ≤ t-q.b := sub_nonneg.mpr ht
  have hz := Tail.HighZero.entry0_nonneg hd he hf.le hg hh hv hS' hK'
  have hm := Tail.HighZero.entry1_nonneg hd he hf.le hg hh hv hS' hK'
  have hfreq : f+(t-q.b) = t-q.B := by dsimp [f]; ring
  rw [hfreq] at hz hm
  constructor
  · simpa only [ratio_zero_quotient_eval_at,Bool.false_eq_true,ite_false] using hz
  · apply (mul_nonneg_iff_of_pos_left (mul_pos (by norm_num : (0:ℝ)<2) hf)).mp
    rw [ratioMiddle_eval012 _ (q.ratio_zero_quotient_degree false t)]
    simp only [ratio_zero_quotient_eval_at,Bool.false_eq_true,ite_false]
    have hM : (q.c-q.A)/(q.b-q.B)-1 = (e+g)/f := by
      have hn : q.b-q.B ≠ 0 := ne_of_gt hf
      dsimp [e,g,f]
      field_simp
      ring
    rw [hM]
    have hid : 2*f*(LowerZero.q0 d e f g h 1 (t-q.B)+
        ((e+g)/f)/4*(LowerZero.q0 d e f g h 2 (t-q.B)-
          LowerZero.q0 d e f g h 0 (t-q.B))) =
        2*f*LowerZero.q0 d e f g h 1 (t-q.B)+(e+g)/2*
          (LowerZero.q0 d e f g h 2 (t-q.B)-LowerZero.q0 d e f g h 0 (t-q.B)) := by
      field_simp
      ring
    exact hid.symm ▸ hm

/-- The two high-tail ratio obligations that do not use the upper endpoint are universal. -/
theorem high_first_two_ratio_entries (q : EvenGeometry B) (t : ℝ) (ht : q.b ≤ t) :
    0 ≤ (q.ratioQuotientPoly false t).eval 1 ∧
    0 ≤ ratioMiddle (q.ratioQuotientPoly false t) ((q.c-q.A)/(q.b-q.B)) := by
  obtain ⟨hba,hca,hCA,hCB,hcb,hBA,_,_,_,_⟩ := q.positive_gaps
  have ha := q.a_pos
  have hA := ha.trans q.a_lt_A
  have hB' := hA.trans q.A_lt_B
  have hb := hB'.trans q.B_lt_b
  have hc := hb.trans q.b_lt_c
  have hC := hc.trans q.c_lt_C
  have ht0 : 0 ≤ t := (hb.trans_le ht).le
  have hD1 : 0 < q.D1 := mul_pos hba hca
  have hD2 : 0 < q.D2 := mul_pos hCA hCB
  have hsum : 0 ≤ q.A+q.B+q.b+q.c-q.a := by linarith
  have hH : 0 ≤ q.clearedBaseSecond := by
    unfold clearedBaseSecond
    positivity
  let w0 := q.clearWeightB+q.clearWeightb
  let w1 := (q.C-q.A)*(q.b-q.B)^2*(q.c-q.B)+
    (q.c-q.a)*(q.b-q.A)*(q.b-q.B)^2
  have hcb' : 0 ≤ q.c-q.B := sub_nonneg.mpr (q.B_lt_b.trans q.b_lt_c).le
  have hbA : 0 ≤ q.b-q.A := sub_nonneg.mpr (q.A_lt_B.trans q.B_lt_b).le
  have hw0 : 0 ≤ w0 := by dsimp [w0,clearWeightB,clearWeightb]; positivity
  have hw1 : 0 ≤ w1 := by dsimp [w1]; positivity
  have hL : 0 ≤ (t-q.b)^2*q.residualLower t :=
    mul_nonneg (sq_nonneg _) (q.residualLower_pos_of_ge_B (q.B_lt_b.le.trans ht)).le
  have hT : 0 ≤ t*(t-q.A)^2 := mul_nonneg ht0 (sq_nonneg _)
  have hM : 1 ≤ (q.c-q.A)/(q.b-q.B) := by
    apply (le_div_iff₀ (sub_pos.mpr q.B_lt_b)).mpr
    linarith [q.A_lt_B,q.b_lt_c]
  obtain ⟨hz,hm⟩ := q.high_zero_ratio_entries t ht
  have hh := ratio_baseline_entries (q.ratio_zero_quotient_degree false t)
    (q.D1*q.D2) q.clearedBaseSecond t w0 w1
    ((t-q.b)^2*q.residualLower t) (t*(t-q.A)^2) ((q.c-q.A)/(q.b-q.B))
    (mul_pos hD1 hD2).le hH ht0 hw0 hw1 hL hT hM hz hm
  have hid : q.ratioQuotientPoly false t =
      Polynomial.C (q.D1*q.D2)*(Polynomial.C w0+Polynomial.C w1*X)*
        (X*Polynomial.C ((t-q.b)^2*q.residualLower t)+Polynomial.C (t*(t-q.A)^2))+
        Polynomial.C (q.clearedBaseSecond*t)*q.ratioZeroQuotientPoly false t := by
    simp only [ratioQuotientPoly,ratioWeightPoly,Bool.false_eq_true,ite_false,w0,w1]
    ring
  simpa only [hid] using hh

end EvenGeometry
end
end SPR.N6
