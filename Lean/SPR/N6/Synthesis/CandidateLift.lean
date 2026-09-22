import SPR.N6.Construction.LastRoot

/-!
# Strict lifting for the actual candidate requires only weak source inequalities

At every zero of its odd part, root separation alone makes both even products
strictly positive. Thus that strictness is proved here, not supplied as an extra
certificate hypothesis. Four weak half-axis inequalities are still unproved.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
variable {B : Box6}

/-- Interlacing of the same candidate supplies strictness at every odd-part zero. -/
theorem candidate_strict_at_odd_zero (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    {t : ℝ} (hz : q.candidate.K t = 0) :
    0 < q.candidate.F t*B.evenLower t ∧ 0 < q.candidate.F t*B.evenUpper t := by
  obtain ⟨kr⟩ := q.candidate_odd_roots hB
  obtain ⟨fr⟩ := q.candidate_even_roots hB (q.candidate_at_C_pos hB)
  rw [kr.factor, mul_assoc] at hz
  have hh := (mul_eq_zero.mp hz).resolve_left (ne_of_gt kr.leading_pos)
  rcases mul_eq_zero.mp hh with hu | hv
  · have ht : t = kr.u := sub_eq_zero.mp hu
    subst t
    have hF := fr.negative_middle kr.Au.le kr.uB.le
    have huA := kr.Au
    have huB := kr.uB
    have hua : q.a < kr.u := q.a_lt_A.trans huA
    have hub : kr.u < q.b := huB.trans q.B_lt_b
    have huc : kr.u < q.c := hub.trans q.b_lt_c
    have huC : kr.u < q.C := huc.trans q.c_lt_C
    have hE : B.evenLower kr.u < 0 := by
      rw [q.lower_value]
      exact mul_neg_of_pos_of_neg
        (mul_pos_of_neg_of_neg (neg_neg_of_pos (sub_pos.mpr hua)) (sub_neg.mpr hub))
        (sub_neg.mpr huc)
    have hE' : B.evenUpper kr.u < 0 := by
      rw [q.upper_value]
      exact mul_neg_of_pos_of_neg
        (mul_pos_of_neg_of_neg (neg_neg_of_pos (sub_pos.mpr huA)) (sub_neg.mpr huB))
        (sub_neg.mpr huC)
    exact ⟨mul_pos_of_neg_of_neg hF hE, mul_pos_of_neg_of_neg hF hE'⟩
  · have ht : t = kr.v := sub_eq_zero.mp hv
    subst t
    have hvb := kr.bv
    have hvc := kr.vc
    have hva : q.a < kr.v := q.a_lt_A.trans (q.A_lt_B.trans (q.B_lt_b.trans hvb))
    have hvA : q.A < kr.v := q.A_lt_B.trans (q.B_lt_b.trans hvb)
    have hvB : q.B < kr.v := q.B_lt_b.trans hvb
    have hvC : kr.v < q.C := hvc.trans q.c_lt_C
    have hF : 0 < q.candidate.F kr.v := by
      rw [fr.factor]
      exact mul_pos_of_neg_of_neg
        (mul_neg_of_neg_of_pos
          (mul_neg_of_neg_of_pos fr.leading_neg (sub_pos.mpr (fr.r1A.trans hvA)))
          (sub_pos.mpr (fr.r2b.trans hvb)))
        (sub_neg.mpr (hvC.trans fr.Cr3))
    have hE : 0 < B.evenLower kr.v := by
      rw [q.lower_value]
      exact mul_pos_of_neg_of_neg
        (mul_neg_of_neg_of_pos (neg_neg_of_pos (sub_pos.mpr hva)) (sub_pos.mpr hvb))
        (sub_neg.mpr hvc)
    have hE' : 0 < B.evenUpper kr.v := by
      rw [q.upper_value]
      exact mul_pos_of_neg_of_neg
        (mul_neg_of_neg_of_pos (neg_neg_of_pos (sub_pos.mpr hvA)) (sub_pos.mpr hvB))
        (sub_neg.mpr hvC)
    exact ⟨mul_pos hF hE, mul_pos hF hE'⟩

/-- For this actual candidate, no separate strict-at-zero assumption is needed. -/
theorem candidate_witness_of_nonnegative_sources (q : EvenGeometry B)
    (hB : B.RobustlyHurwitz)
    (hs : ∀ c : Corner, ∀ t : ℝ, 0 ≤ t →
      0 ≤ (q.contactSource q.candidate c).eval t) : EnvelopeWitness q q.candidate := by
  obtain ⟨h0, h3, _⟩ := q.candidate_endpoints hB
  refine ⟨h0, h3, ?_, ?_, ?_, ?_, ?_⟩
  · intro t ht
    simpa only [eval_contactSource, Bool.false_eq_true, ite_false] using hs (false,false) t ht
  · intro t ht
    simpa only [eval_contactSource, Bool.false_eq_true, ite_false, ite_true] using
      hs (false,true) t ht
  · intro t ht
    simpa only [eval_contactSource, Bool.false_eq_true, ite_false, ite_true] using
      hs (true,false) t ht
  · intro t ht
    simpa only [eval_contactSource, ite_true] using hs (true,true) t ht
  · intro t _ hz
    exact q.candidate_strict_at_odd_zero hB hz

end EvenGeometry
end
end SPR.N6
