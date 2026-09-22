import SPR.N6.Algebra.LowerZero
import SPR.N6.Construction.UpperZero
import SPR.N6.Construction.Baseline

/-!
# Compact cleared formulas for the two lower candidate quotients

This source interface separates small universal polynomial identities from
large parameter coefficient certificates. It uses the same candidate, ratio,
weight and actual mixing coefficient throughout.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
variable {B : Box6}

def lowerZeroQuotient (q : EvenGeometry B) (i : Bool) (t : ℝ) : ℝ :=
  (if i then LowerZero.q1 else LowerZero.q0)
    (q.A-q.a) (q.B-q.A) (q.b-q.B) (q.c-q.b) (q.C-q.c) q.ratio (t-q.B)

/-- The translated lower certificate agrees with the original zero source. -/
theorem lower_zero_source (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (i : Bool) (t : ℝ) :
    q.ratio*q.commonWeight*((t-q.rho)*(if i then B.evenUpper t else B.evenLower t)+
      q.zeroK t*q.lowerOddShape t) =
    (t-(if i then q.A else q.c))^2*q.lowerZeroQuotient i t := by
  obtain ⟨hW,hN,hZ⟩ := q.upper_zero_components t
  have hmean := q.common_weight_rho hB
  have hodd := q.cleared_zero_odd_identity hB t
  have hl := LowerZero.source0 (q.A-q.a) (q.B-q.A) (q.b-q.B)
    (q.c-q.b) (q.C-q.c) q.ratio (t-q.B)
  have hu := LowerZero.source1 (q.A-q.a) (q.B-q.A) (q.b-q.B)
    (q.c-q.b) (q.C-q.c) q.ratio (t-q.B)
  rw [hW,hN,hZ] at hl hu
  rw [← hmean, ← hodd] at hl hu
  cases i
  · simp only [Bool.false_eq_true, ite_false, lowerZeroQuotient]
    rw [q.lower_value]
    unfold lowerOddShape
    convert hl using 1 <;> ring
  · simp only [ite_true, lowerZeroQuotient]
    rw [q.upper_value]
    unfold lowerOddShape
    convert hu using 1 <;> ring

def lowerBaseline (q : EvenGeometry B) (i : Bool) (t : ℝ) : ℝ :=
  if i then q.ratio*(t-q.B)^2*q.residualUpper t+t*(t-q.c)^2
  else q.ratio*(t-q.b)^2*q.residualLower t+t*(t-q.A)^2

/-- Exact lower baseline factorization. -/
theorem lower_baseline_source (q : EvenGeometry B) (i : Bool) (t : ℝ) :
    q.ratio*q.baseF t*(if i then B.evenUpper t else B.evenLower t)+
      t*(q.lowerOddShape t+q.ratio*q.upperOddShape t)*q.lowerOddShape t =
    (t-(if i then q.A else q.c))^2*q.lowerBaseline i t := by
  obtain ⟨hl,hu⟩ := q.baseline_source_identities t
  cases i
  · simp only [Bool.false_eq_true, ite_false, lowerBaseline]
    unfold lowerOddShape at hl ⊢
    linear_combination (norm := ring) q.ratio*hl
  · simp only [ite_true, lowerBaseline]
    unfold lowerOddShape at hu ⊢
    linear_combination (norm := ring) q.ratio*hu

/-- The cleared lower source uses the actual D1 D2 times baseline t² coefficient. -/
theorem lower_candidate_cleared_source (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (i : Bool) (t : ℝ) :
    q.D1*q.D2*q.commonWeight*(q.contactSource q.candidate (i,false)).eval t =
    (t-(if i then q.A else q.c))^2*
      (q.D1*q.D2*q.commonWeight*q.lowerBaseline i t+
        q.clearedBaseSecond*t*q.lowerZeroQuotient i t) := by
  have hb := q.lower_baseline_source i t
  have hz := q.lower_zero_source hB i t
  rw [q.eval_contactSource, q.candidate_even, q.candidate_odd, ← q.cleared_base_second]
  simp only [Bool.false_eq_true, ite_false]
  unfold eta
  linear_combination (norm := ring) (q.D1*q.D2*q.commonWeight)*hb+
    (q.D1*q.D2*q.baseF2*t)*hz

/-- Compact quotient identity, including its contact frequency. -/
theorem lower_candidate_quotient (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (i : Bool) (t : ℝ) :
    q.D1*q.D2*q.commonWeight*(q.contactQuotient q.candidate (i,false)).eval t =
      q.D1*q.D2*q.commonWeight*q.lowerBaseline i t+
        q.clearedBaseSecond*t*q.lowerZeroQuotient i t := by
  let r := if i then q.A else q.c
  have hleft : Continuous (fun t : ℝ =>
      q.D1*q.D2*q.commonWeight*(q.contactQuotient q.candidate (i,false)).eval t) := by fun_prop
  have hright : Continuous (fun t : ℝ =>
      q.D1*q.D2*q.commonWeight*q.lowerBaseline i t+
        q.clearedBaseSecond*t*q.lowerZeroQuotient i t) := by
    cases i <;>
      simp only [lowerBaseline, lowerZeroQuotient, Bool.false_eq_true, ite_false, ite_true,
        LowerZero.q0, LowerZero.q1, residualLower, residualUpper] <;> fun_prop
  have heq := Continuous.ext_on (dense_compl_singleton r) hleft hright (by
    intro x hx
    have hn : x-r ≠ 0 := sub_ne_zero.mpr (by simpa using hx)
    apply mul_left_cancel₀ (pow_ne_zero 2 hn)
    have hs := q.lower_candidate_cleared_source hB i x
    rw [q.candidate_source_factor hB (i,false)] at hs
    have hc : q.contactNode (i,false) = r := by cases i <;> rfl
    simpa only [Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_sub,
      Polynomial.eval_X, Polynomial.eval_C, hc, mul_left_comm, r] using hs)
  exact congrFun heq t

end EvenGeometry
end
end SPR.N6
