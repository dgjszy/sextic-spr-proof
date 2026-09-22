import SPR.N6.Construction.Quartic
import SPR.N6.Synthesis.FrequencyAssembly
import SPR.N6.Algebra.EndpointBlocks

/-!
# Actual tail coordinates and automatically positive boundary entries

These are coordinates of the actual quartic contact quotients. They do not
replace the candidate by a polynomial with independently chosen coefficients.
The conditional block tests isolate the remaining parameter inequalities.
-/
namespace SPR.N6
noncomputable section
open Polynomial

/-- Evaluation of a degree-at-most-four polynomial, retaining all five terms. -/
theorem quartic_eval_coefficients (p : ℝ[X]) (hp : p.natDegree ≤ 4) (t : ℝ) :
    p.eval t = p.coeff 0+p.coeff 1*t+p.coeff 2*t^2+p.coeff 3*t^3+p.coeff 4*t^4 := by
  rw [p.eval_eq_sum_range' (by omega : p.natDegree < 5)]
  simp [Finset.sum_range_succ]

/-- Taylor coefficients at a specified center, for an actual quartic. -/
def quarticShift (p : ℝ[X]) (b : ℝ) : Fin 5 → ℝ :=
  ![p.coeff 0+p.coeff 1*b+p.coeff 2*b^2+p.coeff 3*b^3+p.coeff 4*b^4,
    p.coeff 1+2*p.coeff 2*b+3*p.coeff 3*b^2+4*p.coeff 4*b^3,
    p.coeff 2+3*p.coeff 3*b+6*p.coeff 4*b^2,
    p.coeff 3+4*p.coeff 4*b,p.coeff 4]

theorem quarticShift_eval (p : ℝ[X]) (hp : p.natDegree ≤ 4) (b v : ℝ) :
    p.eval (b+v) = quarticShift p b 0+quarticShift p b 1*v+
      quarticShift p b 2*v^2+quarticShift p b 3*v^3+quarticShift p b 4*v^4 := by
  rw [quartic_eval_coefficients p hp]
  simp only [quarticShift, Matrix.cons_val_zero, Matrix.cons_val_one,
    Matrix.cons_val, Matrix.head_cons, Matrix.cons_val_fin_one]
  ring

/-- Bernstein coefficients on [0,B], with a common positive factor 24. -/
def quarticBand (p : ℝ[X]) (B : ℝ) : Fin 5 → ℝ :=
  ![24*p.coeff 0,
    24*p.coeff 0+6*p.coeff 1*B,
    24*p.coeff 0+12*p.coeff 1*B+4*p.coeff 2*B^2,
    24*p.coeff 0+18*p.coeff 1*B+12*p.coeff 2*B^2+6*p.coeff 3*B^3,
    24*(p.coeff 0+p.coeff 1*B+p.coeff 2*B^2+p.coeff 3*B^3+p.coeff 4*B^4)]

theorem quarticBand_eval (p : ℝ[X]) (hp : p.natDegree ≤ 4) (B u : ℝ) :
    24*p.eval (B*u) = quarticBand p B 0*(1-u)^4+
      4*quarticBand p B 1*u*(1-u)^3+6*quarticBand p B 2*u^2*(1-u)^2+
      4*quarticBand p B 3*u^3*(1-u)+quarticBand p B 4*u^4 := by
  rw [quartic_eval_coefficients p hp]
  simp only [quarticBand, Matrix.cons_val_zero, Matrix.cons_val_one,
    Matrix.cons_val, Matrix.head_cons, Matrix.cons_val_fin_one]
  ring

namespace EvenGeometry
variable {B : Box6}

/-- Every actual quotient is strictly positive at zero frequency. -/
theorem candidate_quotient_zero_pos (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (c : Corner) : 0 < (q.contactQuotient q.candidate c).eval 0 := by
  have ha := q.a_pos
  have hA := ha.trans q.a_lt_A
  have hB' := hA.trans q.A_lt_B
  have hb := hB'.trans q.B_lt_b
  have hc := hb.trans q.b_lt_c
  have hC := hc.trans q.c_lt_C
  have hn : 0 < q.contactNode c := by
    rcases c with ⟨i,j⟩
    cases i <;> cases j
    · simpa [contactNode] using hc
    · simpa [contactNode] using hb
    · simpa [contactNode] using hA
    · simpa [contactNode] using hB'
  have he : 0 < if c.1 then B.evenUpper 0 else B.evenLower 0 := by
    cases c.1
    · simp only [Bool.false_eq_true,ite_false,q.lower_value]
      nlinarith only [mul_pos (mul_pos ha hb) hc]
    · simp only [ite_true,q.upper_value]
      nlinarith only [mul_pos (mul_pos hA hB') hC]
  have hp : 0 < (q.contactSource q.candidate c).eval 0 := by
    rw [q.eval_contactSource]
    simpa [ParityNumerator.F] using mul_pos (q.candidate_endpoints hB).1 he
  rw [q.candidate_source_factor hB c] at hp
  simp only [eval_mul,eval_pow,eval_sub,eval_X,eval_C,zero_sub,neg_sq] at hp
  exact (mul_pos_iff_of_pos_left (pow_pos hn 2)).mp hp

/-- The high-tail constant and quartic coefficients are automatically positive. -/
theorem high_boundary_entries_pos (q : EvenGeometry B) (hB : B.RobustlyHurwitz) :
    let H := quarticShift (q.contactQuotient q.candidate (false,false)) q.b
    0 < H 0 ∧ 0 < H 4 := by
  constructor
  · change 0 < (quarticShift _ _) 0
    have hp := q.candidate_lower_central_pos hB false q.b q.B_lt_b.le le_rfl
    rw [quartic_eval_coefficients _ (q.quotient_degree_le _ _)] at hp
    simpa [quarticShift] using hp
  · simpa [quarticShift] using q.candidate_quotient_top_pos hB (false,false)

/-- Both closed low-band endpoints are protected without a parameter certificate. -/
theorem low_boundary_entries_pos (q : EvenGeometry B) (hB : B.RobustlyHurwitz) :
    let L := quarticBand (q.contactQuotient q.candidate (true,false)) q.B
    0 < L 0 ∧ 0 < L 4 := by
  constructor
  · have hp := q.candidate_quotient_zero_pos hB (true,false)
    rw [quartic_eval_coefficients _ (q.quotient_degree_le _ _)] at hp
    simpa [quarticBand] using mul_pos (by norm_num : (0 : ℝ) < 24) hp
  · have hp := q.candidate_lower_central_pos hB true q.B le_rfl q.B_lt_b.le
    rw [quartic_eval_coefficients _ (q.quotient_degree_le _ _)] at hp
    simpa [quarticBand] using mul_pos (by norm_num : (0 : ℝ) < 24) hp

/-- A sufficient high-tail test on the actual three undecided entries. -/
theorem candidate_high_tail_of_block (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (h2 : 0 < quarticShift (q.contactQuotient q.candidate (false,false)) q.b 2)
    (h3 : 0 ≤ quarticShift (q.contactQuotient q.candidate (false,false)) q.b 3)
    (hdet : let H := quarticShift (q.contactQuotient q.candidate (false,false)) q.b
      0 < 4*H 0*H 2-(H 1)^2)
    (t : ℝ) (ht : q.b ≤ t) :
    0 < (q.contactQuotient q.candidate (false,false)).eval t := by
  have hp := high_block_pos h2 hdet h3 (q.high_boundary_entries_pos hB).2.le
    (sub_nonneg.mpr ht)
  rw [← quarticShift_eval _ (q.quotient_degree_le _ _) q.b (t-q.b)] at hp
  simpa using hp

/-- A sufficient low-tail test on the actual three undecided Bernstein entries. -/
theorem candidate_low_tail_of_block (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (h1 : 0 ≤ quarticBand (q.contactQuotient q.candidate (true,false)) q.B 1)
    (h2 : 0 < quarticBand (q.contactQuotient q.candidate (true,false)) q.B 2)
    (hdet : let L := quarticBand (q.contactQuotient q.candidate (true,false)) q.B
      0 < 3*L 2*L 4-2*(L 3)^2)
    (t : ℝ) (ht0 : 0 ≤ t) (htB : t ≤ q.B) :
    0 < (q.contactQuotient q.candidate (true,false)).eval t := by
  have hBpos := q.a_pos.trans (q.a_lt_A.trans q.A_lt_B)
  have hp := low_block_pos (q.low_boundary_entries_pos hB).1 h1 h2 hdet
    (div_nonneg ht0 hBpos.le) ((div_le_one hBpos).mpr htB)
  rw [← quarticBand_eval _ (q.quotient_degree_le _ _) q.B (t/q.B)] at hp
  rw [mul_div_cancel₀ t (ne_of_gt hBpos)] at hp
  exact (mul_pos_iff_of_pos_left (by norm_num : (0 : ℝ) < 24)).mp hp

end EvenGeometry
end
end SPR.N6
