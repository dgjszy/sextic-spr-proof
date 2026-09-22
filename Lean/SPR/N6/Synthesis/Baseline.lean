import SPR.N6.Construction.UpperResidual

/-!
# Baseline synthesis from its actual residuals

Two exact source identities give four weak envelope inequalities. At a zero
of the baseline odd part, its two quadratic shapes cannot vanish together;
this provides strictness before applying the original-box lifting theorem.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
variable {B : Box6}

/-- The original baseline is a separate fixed numerator, with no zero-direction correction. -/
def baselineCandidate (q : EvenGeometry B) : ParityNumerator where
  f0 := q.ratio*q.baseF0
  f1 := q.ratio*q.baseF1
  f2 := q.ratio*q.baseF2
  f3 := q.ratio*q.baseF3
  k0 := q.A*q.c+q.ratio*q.B*q.b
  k1 := -(q.A+q.c)-q.ratio*(q.B+q.b)
  k2 := 1+q.ratio

theorem baseline_candidate_even (q : EvenGeometry B) (t : ℝ) :
    q.baselineCandidate.F t = q.ratio*q.baseF t := by
  simp only [baselineCandidate,ParityNumerator.F,baseF,baseF0,baseF1,baseF2,baseF3,
    lowerOddShape,upperOddShape]
  ring

theorem baseline_candidate_odd (q : EvenGeometry B) (t : ℝ) :
    q.baselineCandidate.K t = q.lowerOddShape t+q.ratio*q.upperOddShape t := by
  simp only [baselineCandidate,ParityNumerator.K,lowerOddShape,upperOddShape]
  ring

/-- Full original-box synthesis once the two actual baseline residuals are positive. -/
theorem baseline_witness_of_lower_residual (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (hL : ∀ t : ℝ, 0 ≤ t → 0 < q.residualLower t) :
    EnvelopeWitness q q.baselineCandidate := by
  have hm : 0 < q.ratio := lt_trans zero_lt_one (q.ratio_bounds hB).1
  have hbase (i : Bool) (t : ℝ) (ht : 0 ≤ t) :
      0 ≤ q.baseF t*(if i then B.evenUpper t else B.evenLower t)+
        t*q.lowerOddShape t*q.upperOddShape t := by
    cases i
    · simpa only [Bool.false_eq_true,ite_false,(q.baseline_source_identities t).1] using
        mul_nonneg (mul_nonneg (sq_nonneg (t-q.b)) (sq_nonneg (t-q.c))) (hL t ht).le
    · simpa only [ite_true,(q.baseline_source_identities t).2] using
        mul_nonneg (mul_nonneg (sq_nonneg (t-q.A)) (sq_nonneg (t-q.B)))
          (q.residualUpper_pos t).le
  have hlow (i : Bool) (t : ℝ) :
      q.baselineCandidate.F t*(if i then B.evenUpper t else B.evenLower t)+
        t*q.baselineCandidate.K t*q.lowerOddShape t =
      q.ratio*(q.baseF t*(if i then B.evenUpper t else B.evenLower t)+
        t*q.lowerOddShape t*q.upperOddShape t)+t*(q.lowerOddShape t)^2 := by
    rw [q.baseline_candidate_even,q.baseline_candidate_odd]
    ring
  have hupp (i : Bool) (t : ℝ) :
      q.baselineCandidate.F t*(if i then B.evenUpper t else B.evenLower t)+
        t*q.baselineCandidate.K t*(q.ratio*q.upperOddShape t) =
      q.ratio*(q.baseF t*(if i then B.evenUpper t else B.evenLower t)+
        t*q.lowerOddShape t*q.upperOddShape t)+t*q.ratio^2*(q.upperOddShape t)^2 := by
    rw [q.baseline_candidate_even,q.baseline_candidate_odd]
    ring
  have hlo (i : Bool) (t : ℝ) (ht : 0 ≤ t) :
      0 ≤ q.baselineCandidate.F t*(if i then B.evenUpper t else B.evenLower t)+
        t*q.baselineCandidate.K t*q.lowerOddShape t := by
    rw [hlow]
    exact add_nonneg (mul_nonneg hm.le (hbase i t ht)) (mul_nonneg ht (sq_nonneg _))
  have hup (i : Bool) (t : ℝ) (ht : 0 ≤ t) :
      0 ≤ q.baselineCandidate.F t*(if i then B.evenUpper t else B.evenLower t)+
        t*q.baselineCandidate.K t*(q.ratio*q.upperOddShape t) := by
    rw [hupp]
    exact add_nonneg (mul_nonneg hm.le (hbase i t ht))
      (mul_nonneg (mul_nonneg ht (sq_nonneg _)) (sq_nonneg _))
  refine ⟨?_,?_,hlo false,hup false,hlo true,hup true,?_⟩
  · exact (q.candidate_endpoints hB).1
  · exact (q.candidate_endpoints hB).2.1
  · intro t ht hK
    have hU : q.lowerOddShape t ≠ 0 := by
      intro hz
      have hk := hK
      rw [q.baseline_candidate_odd,hz,zero_add] at hk
      have hv := (mul_eq_zero.mp hk).resolve_left (ne_of_gt hm)
      unfold lowerOddShape at hz
      unfold upperOddShape at hv
      rcases mul_eq_zero.mp hz with hz | hz <;>
        rcases mul_eq_zero.mp hv with hv | hv <;>
        linarith [q.A_lt_B,q.B_lt_b,q.b_lt_c]
    have hp (i : Bool) : 0 < q.baselineCandidate.F t*
        (if i then B.evenUpper t else B.evenLower t) := by
      have hh := add_pos_of_nonneg_of_pos (mul_nonneg hm.le (hbase i t ht.le))
        (mul_pos ht (sq_pos_of_ne_zero hU))
      rw [← hlow,hK,mul_zero,zero_mul,add_zero] at hh
      exact hh
    exact ⟨hp false,hp true⟩

end EvenGeometry
end
end SPR.N6
