import SPR.N6.Algebra.ConstantFace.Source
import SPR.N6.Construction.LowerSource
import SPR.N6.Construction.UpperResidual

/-!
# Actual root geometry when the coefficients a₂ and a₄ are fixed

Only these two original interval widths vanish. The constant coefficient and
all three odd coefficients may still vary. The polynomial identities below
use the same canonical ratio and zero direction as the general construction.
-/
namespace SPR.N6
noncomputable section
open Polynomial
namespace EvenGeometry
variable {B : Box6}

private theorem expand_three (a b c : ℝ) :
    -((X-Polynomial.C a)*(X-Polynomial.C b)*(X-Polynomial.C c)) =
      (-X^3+Polynomial.C (a+b+c)*X^2-
        Polynomial.C (a*b+a*c+b*c)*X+Polynomial.C (a*b*c) : ℝ[X]) := by
  simp only [map_add,map_mul]
  ring

/-- Equal original second and fourth coefficients give equal root symmetric sums. -/
theorem fixed24_root_sums (q : EvenGeometry B)
    (h2 : B.lower.a2 = B.upper.a2) (h4 : B.lower.a4 = B.upper.a4) :
    q.A+q.B+q.C = q.a+q.b+q.c ∧
    q.A*q.B+q.A*q.C+q.B*q.C = q.a*q.b+q.a*q.c+q.b*q.c := by
  have hl := q.lower_factor
  have hu := q.upper_factor
  rw [expand_three] at hl hu
  have hl2 := congrArg (fun p : ℝ[X] => p.coeff 2) hl
  have hu2 := congrArg (fun p : ℝ[X] => p.coeff 2) hu
  have hl1 := congrArg (fun p : ℝ[X] => p.coeff 1) hl
  have hu1 := congrArg (fun p : ℝ[X] => p.coeff 1) hu
  simp only [evenPoly, Box6.corner, Bool.false_eq_true, ite_false, ite_true,
    coeff_add, coeff_sub, coeff_neg, coeff_C_mul_X_pow, coeff_C_mul_X, coeff_X_pow,
    coeff_C] at hl2 hu2 hl1 hu1
  norm_num at hl2 hu2 hl1 hu1
  exact ⟨by linarith, by linarith⟩

/-- Both exterior gaps are forced by the same three inner gaps. -/
theorem fixed24_gap_values (q : EvenGeometry B)
    (h2 : B.lower.a2 = B.upper.a2) (h4 : B.lower.a4 = B.upper.a4) :
    let e := q.B-q.A
    let f := q.b-q.B
    let g := q.c-q.b
    q.A-q.a = f*(f+g)/(e+2*f+g) ∧ q.C-q.c = f*(e+f)/(e+2*f+g) := by
  obtain ⟨hs,hp⟩ := q.fixed24_root_sums h2 h4
  have hC : q.C = q.a+q.b+q.c-q.A-q.B := by linarith
  rw [hC] at hp
  have hL : 0 < (q.B-q.A)+2*(q.b-q.B)+(q.c-q.b) := by
    linarith [q.A_lt_B,q.B_lt_b,q.b_lt_c]
  dsimp only
  constructor
  · apply (eq_div_iff (ne_of_gt hL)).mpr
    nlinarith only [hp]
  · apply (eq_div_iff (ne_of_gt hL)).mpr
    rw [hC]
    nlinarith only [hp]

/-- On this original coefficient face both actual lower zero quotients are positive on ℝ. -/
theorem lower_zero_pos_fixed24 (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (h2 : B.lower.a2 = B.upper.a2) (h4 : B.lower.a4 = B.upper.a4)
    (i : Bool) (t : ℝ) : 0 < q.lowerZeroQuotient i t := by
  have he := sub_pos.mpr q.A_lt_B
  have hf := sub_pos.mpr q.B_lt_b
  have hg := sub_pos.mpr q.b_lt_c
  have hL : 0 < (q.B-q.A)+2*(q.b-q.B)+(q.c-q.b) := by positivity
  obtain ⟨hd,hh⟩ := q.fixed24_gap_values h2 h4
  obtain ⟨hm,hM⟩ := q.ratio_bounds hB
  have hM' : q.ratio ≤ ((q.B-q.A)+(q.b-q.B)+(q.c-q.b))/(q.b-q.B) := by
    convert hM using 1 <;> congr 1 <;> ring
  have hshift : t-q.A-(q.B-q.A) = t-q.B := by ring
  cases i
  · have hid := ConstantFace.source0 (q.B-q.A) (q.b-q.B) (q.c-q.b) q.ratio
      (t-q.A) (ne_of_gt hL)
    have hp := ConstantFace.positive he hf hg hm.le hM' (t-q.A)
    rw [← hid,hshift,← hd,← hh] at hp
    exact (mul_pos_iff_of_pos_left (pow_pos hL 2)).mp hp
  · have hid := ConstantFace.source1 (q.B-q.A) (q.b-q.B) (q.c-q.b) q.ratio
      (t-q.A) (ne_of_gt hL)
    have hM'' : q.ratio ≤ ((q.c-q.b)+(q.b-q.B)+(q.B-q.A))/(q.b-q.B) := by
      convert hM' using 1 <;> congr 1 <;> ring
    have hp := ConstantFace.positive hg hf he hm.le hM''
      ((q.B-q.A)+(q.b-q.B)+(q.c-q.b)-(t-q.A))
    rw [← hid,hshift,← hd,← hh] at hp
    exact (mul_pos_iff_of_pos_left (pow_pos hL 2)).mp hp

/-- Positive baseline plus the now-positive zero direction protects the entire high tail. -/
theorem candidate_high_tail_fixed24 (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (h2 : B.lower.a2 = B.upper.a2) (h4 : B.lower.a4 = B.upper.a4)
    (t : ℝ) (ht : q.b ≤ t) :
    0 < (q.contactQuotient q.candidate (false,false)).eval t := by
  have hR := q.lower_zero_pos_fixed24 hB h2 h4 false t
  have hm := zero_lt_one.trans (q.ratio_bounds hB).1
  have ht0 : 0 < t := q.a_pos.trans_le (q.a_lt_A.le.trans
    (q.A_lt_B.le.trans (q.B_lt_b.le.trans ht)))
  have htA : 0 < t-q.A := sub_pos.mpr ((q.A_lt_B.trans q.B_lt_b).trans_le ht)
  have hL := q.residualLower_pos_of_ge_B (q.B_lt_b.le.trans ht)
  have hb : 0 < q.lowerBaseline false t := by
    simp only [lowerBaseline,Bool.false_eq_true,ite_false]
    exact add_pos_of_nonneg_of_pos (mul_nonneg (mul_nonneg hm.le (sq_nonneg _)) hL.le)
      (mul_pos ht0 (pow_pos htA 2))
  obtain ⟨hba,hca,hCA,hCB,_,_,_,_,_,_⟩ := q.positive_gaps
  have hD1 : 0 < q.D1 := mul_pos hba hca
  have hD2 : 0 < q.D2 := mul_pos hCA hCB
  have hDW := mul_pos (mul_pos hD1 hD2) (q.clear_factors_pos hB).2
  have hF : 0 < q.clearedBaseSecond := by
    rw [← q.cleared_base_second]
    have hη := (q.candidate_endpoints hB).2.2
    have hbase : 0 < q.baseF2 := (mul_pos_iff_of_pos_left hm).mp hη
    exact mul_pos (mul_pos hD1 hD2) hbase
  apply (mul_pos_iff_of_pos_left hDW).mp
  rw [q.lower_candidate_quotient hB false]
  exact add_pos (mul_pos hDW hb) (mul_pos (mul_pos hF ht0) hR)

/-- The upper-even lower-odd quotient is positive on the whole nonnegative half-axis. -/
theorem candidate_low_tail_fixed24 (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (h2 : B.lower.a2 = B.upper.a2) (h4 : B.lower.a4 = B.upper.a4)
    (t : ℝ) (ht : 0 ≤ t) :
    0 < (q.contactQuotient q.candidate (true,false)).eval t := by
  have hR := q.lower_zero_pos_fixed24 hB h2 h4 true t
  have hm := zero_lt_one.trans (q.ratio_bounds hB).1
  have hL := q.residualUpper_pos t
  have hb : 0 < q.lowerBaseline true t := by
    simp only [lowerBaseline,ite_true]
    by_cases htb : t = q.B
    · subst t
      have hBpos := q.a_pos.trans (q.a_lt_A.trans q.A_lt_B)
      have hBc : q.B-q.c ≠ 0 := sub_ne_zero.mpr (ne_of_lt (q.B_lt_b.trans q.b_lt_c))
      simpa using mul_pos hBpos (sq_pos_of_ne_zero hBc)
    · exact add_pos_of_pos_of_nonneg
        (mul_pos (mul_pos hm (sq_pos_of_ne_zero (sub_ne_zero.mpr htb))) hL)
        (mul_nonneg ht (sq_nonneg _))
  obtain ⟨hba,hca,hCA,hCB,_,_,_,_,_,_⟩ := q.positive_gaps
  have hD1 : 0 < q.D1 := mul_pos hba hca
  have hD2 : 0 < q.D2 := mul_pos hCA hCB
  have hDW := mul_pos (mul_pos hD1 hD2) (q.clear_factors_pos hB).2
  have hF : 0 < q.clearedBaseSecond := by
    rw [← q.cleared_base_second]
    have hη := (q.candidate_endpoints hB).2.2
    have hbase : 0 < q.baseF2 := (mul_pos_iff_of_pos_left hm).mp hη
    exact mul_pos (mul_pos hD1 hD2) hbase
  apply (mul_pos_iff_of_pos_left hDW).mp
  rw [q.lower_candidate_quotient hB true]
  exact add_pos_of_pos_of_nonneg (mul_pos hDW hb)
    (mul_nonneg (mul_nonneg hF.le ht) hR.le)

end EvenGeometry
end
end SPR.N6
