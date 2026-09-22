import SPR.N6.Construction.UpperZero
import SPR.N6.Construction.BaselinePositive
import SPR.N6.Construction.UpperResidual

/-!
# The actual candidate satisfies both upper inner-band obligations

A positive baseline residual and the same positive zero-direction quadratic
are combined before cancelling the squared contact. Continuity supplies the
contact value, so no division by a zero frequency factor is used.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
variable {B : Box6}

/-- Exact baseline quotient for either upper odd corner. -/
def upperBaseline (q : EvenGeometry B) (i : Bool) (t : ℝ) : ℝ :=
  if i then q.ratio*((t-q.A)^2*q.residualUpper t+t*q.ratio*(t-q.b)^2)
  else q.ratio*((t-q.c)^2*q.residualLower t+t*q.ratio*(t-q.B)^2)

/-- Baseline source factorization, retaining the extra nonnegative square. -/
theorem upper_baseline_source (q : EvenGeometry B) (i : Bool) (t : ℝ) :
    q.ratio*q.baseF t*(if i then B.evenUpper t else B.evenLower t)+
      t*(q.lowerOddShape t+q.ratio*q.upperOddShape t)*q.ratio*q.upperOddShape t =
    (t-(if i then q.B else q.b))^2*q.upperBaseline i t := by
  obtain ⟨hl,hu⟩ := q.baseline_source_identities t
  cases i
  · simp only [Bool.false_eq_true, ite_false, upperBaseline]
    unfold upperOddShape at hl ⊢
    linear_combination (norm := ring) q.ratio*hl
  · simp only [ite_true, upperBaseline]
    unfold upperOddShape at hu ⊢
    linear_combination (norm := ring) q.ratio*hu

/-- Common-weight clearing connects both parts to the original candidate source. -/
theorem upper_candidate_cleared_source (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (i : Bool) (t : ℝ) :
    q.commonWeight*(q.contactSource q.candidate (i,true)).eval t =
    (t-(if i then q.B else q.b))^2*
      (q.commonWeight*q.upperBaseline i t+q.eta*t*q.upperZeroQuotient i t) := by
  have hb := q.upper_baseline_source i t
  have hz := q.upper_zero_source hB i t
  rw [q.eval_contactSource, q.candidate_even, q.candidate_odd]
  simp only [ite_true]
  linear_combination (norm := ring) q.commonWeight*hb+q.eta*t*hz

/-- Quotient equality holds at the forced contact as well as away from it. -/
theorem upper_candidate_quotient (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (i : Bool) (t : ℝ) :
    q.commonWeight*(q.contactQuotient q.candidate (i,true)).eval t =
      q.commonWeight*q.upperBaseline i t+q.eta*t*q.upperZeroQuotient i t := by
  let r := if i then q.B else q.b
  have hleft : Continuous (fun t : ℝ =>
      q.commonWeight*(q.contactQuotient q.candidate (i,true)).eval t) := by fun_prop
  have hright : Continuous (fun t : ℝ =>
      q.commonWeight*q.upperBaseline i t+q.eta*t*q.upperZeroQuotient i t) := by
    cases i <;>
      simp only [upperBaseline, upperZeroQuotient, Bool.false_eq_true, ite_false, ite_true,
        UpperInner.q0, UpperInner.q1, residualLower, residualUpper] <;> fun_prop
  have heq := Continuous.ext_on (dense_compl_singleton r) hleft hright (by
    intro x hx
    have hn : x-r ≠ 0 := sub_ne_zero.mpr (by simpa using hx)
    apply mul_left_cancel₀ (pow_ne_zero 2 hn)
    have hs := q.upper_candidate_cleared_source hB i x
    rw [q.candidate_source_factor hB (i,true)] at hs
    have hc : q.contactNode (i,true) = r := by cases i <;> rfl
    simpa only [Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_sub,
      Polynomial.eval_X, Polynomial.eval_C, hc, mul_left_comm, r] using hs)
  exact congrFun heq t

/-- Both complete upper inner bands are now unconditional consequences of the original box. -/
theorem candidate_upper_inner_pos (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (i : Bool) (t : ℝ) (htA : q.A ≤ t) (htc : t ≤ q.c) :
    0 < (q.contactQuotient q.candidate (i,true)).eval t := by
  have ht : 0 < t := (q.a_pos.trans q.a_lt_A).trans_le htA
  have hm : 0 < q.ratio := lt_trans zero_lt_one (q.ratio_bounds hB).1
  have hW := (q.clear_factors_pos hB).2
  have hη := (q.candidate_endpoints hB).2.2
  have hz := q.upper_zero_pos hB i t htA htc
  have hb : 0 ≤ q.upperBaseline i t := by
    cases i
    · have hr := q.residualLower_pos_of_ge_A htA
      simp only [upperBaseline, Bool.false_eq_true, ite_false]
      positivity
    · have hr := q.residualUpper_pos t
      simp only [upperBaseline, ite_true]
      positivity
  have hp := add_pos_of_nonneg_of_pos (mul_nonneg hW.le hb)
    (mul_pos (mul_pos hη ht) hz)
  rw [← q.upper_candidate_quotient hB i t] at hp
  exact (mul_pos_iff_of_pos_left hW).mp hp

end EvenGeometry
end
end SPR.N6
