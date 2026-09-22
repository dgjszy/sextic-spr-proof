import SPR.N6.Synthesis.FixedSecondFourth
import SPR.N6.Synthesis.CandidateLift

/-!
# Only weak inequalities are needed in the two outstanding tails

Strictness at zeros of the candidate odd part is already a consequence of its
root separation. All other frequencies are protected by the strict original
odd envelope. Thus the remaining algebraic obligations may be non-strict,
including at the ratio endpoint and at frequency contacts.
-/
namespace SPR.N6
noncomputable section

/-- Two weak quotient inequalities, always for the same actual candidate. -/
structure WeakTailCertificates {B : Box6} (q : EvenGeometry B) : Prop where
  lower_tail : ∀ t : ℝ, q.b ≤ t →
    0 ≤ (q.contactQuotient q.candidate (false,false)).eval t
  upper_first : ∀ t : ℝ, 0 ≤ t → t ≤ q.B →
    0 ≤ (q.contactQuotient q.candidate (true,false)).eval t

namespace EvenGeometry
variable {B : Box6}

/-- A nonnegative quotient suffices also at its double contact. -/
theorem source_nonneg_of_quotient_nonneg (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    {c : Corner} {t : ℝ} (hp : 0 ≤ (q.contactQuotient q.candidate c).eval t) :
    0 ≤ (q.contactSource q.candidate c).eval t := by
  rw [q.candidate_source_factor hB c]
  simpa using mul_nonneg (sq_nonneg (t-q.contactNode c)) hp

end EvenGeometry

/-- All four weak half-axis source inequalities follow from only the two weak tails. -/
theorem WeakTailCertificates.sources {B : Box6} {q : EvenGeometry B}
    (h : WeakTailCertificates q) (hB : B.RobustlyHurwitz) :
    ∀ c : Corner, ∀ t : ℝ, 0 ≤ t → 0 ≤ (q.contactSource q.candidate c).eval t := by
  obtain ⟨kr⟩ := q.candidate_odd_roots hB
  obtain ⟨fr⟩ := q.candidate_even_roots hB (q.candidate_at_C_pos hB)
  have hAa := q.a_lt_A
  have hAB := q.A_lt_B
  have hBb := q.B_lt_b
  have hbc := q.b_lt_c
  have hcC := q.c_lt_C
  have ha := q.a_pos
  have h00 (t : ℝ) (ht : 0 ≤ t) :
      0 ≤ (q.contactSource q.candidate (false,false)).eval t := by
    by_cases hta : t < q.a
    · by_cases hF : 0 ≤ q.candidate.F t
      · have hK := kr.positive_left (by linarith : t ≤ q.A)
        have hU : 0 < q.lowerOddShape t :=
          mul_pos_of_neg_of_neg (by linarith) (by linarith)
        have hE : 0 < B.evenLower t := by
          rw [q.lower_value]
          exact mul_pos_of_neg_of_neg
            (mul_neg_of_pos_of_neg (by linarith) (by linarith)) (by linarith)
        rw [q.eval_contactSource]
        simp only [Bool.false_eq_true,ite_false]
        exact add_nonneg (mul_nonneg hF hE.le)
          (mul_nonneg (mul_nonneg ht hK.le) hU.le)
      · have hp := q.source_nonneg_of_quotient_nonneg hB
          (h.upper_first t ht (by linarith))
        have hd := q.source_even_difference t
        have hn := mul_nonpos_of_nonpos_of_nonneg (le_of_not_ge hF)
          (q.even_gap_nonneg ht)
        linarith only [hp,hd,hn]
    · have hat := le_of_not_gt hta
      by_cases htA : t ≤ q.A
      · exact q.source_nonneg_of_quotient hB (q.candidate_lower_first_pos hB t hat htA)
      · have hAt := le_of_not_ge htA
        by_cases htB : t ≤ q.B
        · have hp := q.source_nonneg_of_quotient_nonneg hB (h.upper_first t ht htB)
          have hd := q.source_even_difference t
          have hn := mul_nonpos_of_nonpos_of_nonneg (fr.negative_middle hAt htB).le
            (q.even_gap_nonneg ht)
          linarith only [hp,hd,hn]
        · by_cases htb : t ≤ q.b
          · exact q.source_nonneg_of_quotient hB
              (q.candidate_lower_central_pos hB false t (le_of_not_ge htB) htb)
          · exact q.source_nonneg_of_quotient_nonneg hB (h.lower_tail t (le_of_not_ge htb))
  have h10 (t : ℝ) (ht : 0 ≤ t) :
      0 ≤ (q.contactSource q.candidate (true,false)).eval t := by
    by_cases htB : t ≤ q.B
    · exact q.source_nonneg_of_quotient_nonneg hB (h.upper_first t ht htB)
    · by_cases htb : t ≤ q.b
      · exact q.source_nonneg_of_quotient hB
          (q.candidate_lower_central_pos hB true t (le_of_not_ge htB) htb)
      · have hbt := le_of_not_ge htb
        by_cases htr : t ≤ fr.r3
        · have hp := h00 t ht
          have hn := mul_nonneg (fr.nonnegative_late hbt htr) (q.even_gap_nonneg ht)
          have hd := q.source_even_difference t
          linarith only [hp,hn,hd]
        · have hrt := le_of_not_ge htr
          have hCt : q.C < t := fr.Cr3.trans_le hrt
          have hct : q.c < t := hcC.trans hCt
          have hK := kr.positive_right hct.le
          have hU : 0 < q.lowerOddShape t := mul_pos (by linarith) (sub_pos.mpr hct)
          have hE : B.evenUpper t ≤ 0 := by
            rw [q.upper_value]
            exact mul_nonpos_of_nonpos_of_nonneg
              (mul_nonpos_of_nonpos_of_nonneg (by linarith) (by linarith)) (by linarith)
          rw [q.eval_contactSource]
          simp only [Bool.false_eq_true,ite_false,ite_true]
          exact add_nonneg (mul_nonneg_of_nonpos_of_nonpos (fr.nonpositive_tail hrt) hE)
            (mul_nonneg (mul_nonneg ht hK.le) hU.le)
  have hup (i : Bool) (t : ℝ) (ht : 0 ≤ t) :
      0 ≤ (q.contactSource q.candidate (i,true)).eval t := by
    by_cases hK : 0 ≤ q.candidate.K t
    · have hn := mul_nonneg (mul_nonneg ht hK)
        (sub_pos.mpr (q.odd_shape_gap hB ht)).le
      have hd := q.source_odd_difference i t
      have hl : 0 ≤ (q.contactSource q.candidate (i,false)).eval t := by
        cases i
        · exact h00 t ht
        · exact h10 t ht
      linarith only [hn,hd,hl]
    · obtain ⟨hAt,htc⟩ := kr.negative_inside (lt_of_not_ge hK)
      exact q.source_nonneg_of_quotient hB (q.candidate_upper_inner_pos hB i t hAt.le htc.le)
  intro c t ht
  rcases c with ⟨i,j⟩
  cases j
  · cases i
    · exact h00 t ht
    · exact h10 t ht
  · exact hup i t ht

/-- Root separation supplies the strictness omitted from the weak tail assumptions. -/
theorem WeakTailCertificates.envelope {B : Box6} {q : EvenGeometry B}
    (h : WeakTailCertificates q) (hB : B.RobustlyHurwitz) : EnvelopeWitness q q.candidate :=
  q.candidate_witness_of_nonnegative_sources hB (h.sources hB)

/-- These two non-strict tails imply the original strict all-box conclusion. -/
theorem WeakTailCertificates.synthesis {B : Box6} {q : EvenGeometry B}
    (h : WeakTailCertificates q) (hB : B.RobustlyHurwitz) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, B.Contains a → FrequencySPR a.toPoly b :=
  (h.envelope hB).synthesis hB

/-- The earlier strict certificate interface is stronger than the required weak one. -/
theorem LocalCertificates.weak {B : Box6} {q : EvenGeometry B}
    (h : LocalCertificates q) : WeakTailCertificates q :=
  ⟨fun t ht => (h.lower_tail t ht).le, fun t ht hB => (h.upper_first t ht hB).le⟩

/-- Precise remaining general problem: only two weak tails on the unsolved original boxes.
No certificate existence is asserted by this conditional reduction. -/
theorem synthesis_of_remaining_weak_tail_certificates
    (hcert : ∀ B : Box6, B.RobustlyHurwitz →
      (B.lower.a2 < B.upper.a2 ∨ B.lower.a4 < B.upper.a4) →
      (B.lower.a1 < B.upper.a1 ∨ B.lower.a3 < B.upper.a3 ∨ B.lower.a5 < B.upper.a5) →
      ∀ q : EvenGeometry B, WeakTailCertificates q) : RobustSPRStatement := by
  intro B hB
  by_cases he : B.lower.a2 < B.upper.a2 ∨ B.lower.a4 < B.upper.a4
  · by_cases ho : B.lower.a1 < B.upper.a1 ∨ B.lower.a3 < B.upper.a3 ∨
        B.lower.a5 < B.upper.a5
    · have hw : B.EvenVarying := he.elim Or.inl (fun h => Or.inr (Or.inl h))
      obtain ⟨q⟩ := B.even_geometry hB hw
      exact (hcert B hB he ho q).synthesis hB
    · have h1 := le_antisymm B.h1 (le_of_not_gt (fun h => ho (Or.inl h)))
      have h3 := le_antisymm B.h3 (le_of_not_gt (fun h => ho (Or.inr (Or.inl h))))
      have h5 := le_antisymm B.h5 (le_of_not_gt (fun h => ho (Or.inr (Or.inr h))))
      exact B.fixed_odd_synthesis hB h1 h3 h5
  · have h2 := le_antisymm B.h2 (le_of_not_gt (fun h => he (Or.inl h)))
    have h4 := le_antisymm B.h4 (le_of_not_gt (fun h => he (Or.inr h)))
    exact B.fixed_second_fourth_synthesis hB h2 h4

end
end SPR.N6
