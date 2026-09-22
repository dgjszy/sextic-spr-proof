import SPR.N6.Construction.LastRoot
import SPR.N6.Construction.UpperInner
import SPR.N6.Construction.FirstBand
import SPR.N6.Synthesis.Reduction

/-!
# Assemble the remaining local certificate bands into the original SPR conclusion

All band hypotheses concern the same explicit candidate and its exact polynomial
quotients. The last-root condition F(C)>0 is proved unconditionally. This assembly makes
precise which universal algebraic certificates remain to be connected.
-/
namespace SPR.N6
noncomputable section

/-- The local algebraic obligations, before global frequency assembly. -/
structure LocalCertificates {B : Box6} (g : EvenGeometry B) : Prop where
  lower_tail : ∀ t : ℝ, g.b ≤ t →
    0 < (g.contactQuotient g.candidate (false, false)).eval t
  upper_first : ∀ t : ℝ, 0 ≤ t → t ≤ g.B →
    0 < (g.contactQuotient g.candidate (true, false)).eval t

namespace EvenGeometry
variable {B : Box6}

/-- Source positivity from an exact polynomial quotient, away from the designated contact. -/
theorem source_pos_of_quotient (g : EvenGeometry B) (hB : B.RobustlyHurwitz)
    {c : Corner} {t : ℝ} (hq : 0 < (g.contactQuotient g.candidate c).eval t)
    (hn : t ≠ g.contactNode c) : 0 < (g.contactSource g.candidate c).eval t := by
  rw [g.candidate_source_factor hB c]
  simpa using mul_pos (sq_pos_of_ne_zero (sub_ne_zero.mpr hn)) hq

theorem source_nonneg_of_quotient (g : EvenGeometry B) (hB : B.RobustlyHurwitz)
    {c : Corner} {t : ℝ} (hq : 0 < (g.contactQuotient g.candidate c).eval t) :
    0 ≤ (g.contactSource g.candidate c).eval t := by
  rw [g.candidate_source_factor hB c]
  simpa using mul_nonneg (sq_nonneg (t - g.contactNode c)) hq.le

theorem even_gap_nonneg (g : EvenGeometry B) {t : ℝ} (ht : 0 ≤ t) :
    0 ≤ B.evenUpper t - B.evenLower t := by
  have h := (B.component_bounds (B.corner_mem (true, false)) ht).1
  exact sub_nonneg.mpr h

theorem source_even_difference (g : EvenGeometry B) (t : ℝ) :
    (g.contactSource g.candidate (true, false)).eval t -
      (g.contactSource g.candidate (false, false)).eval t =
        g.candidate.F t * (B.evenUpper t - B.evenLower t) := by
  simp only [eval_contactSource, Bool.false_eq_true, ite_false, ite_true]
  ring

theorem source_odd_difference (g : EvenGeometry B) (i : Bool) (t : ℝ) :
    (g.contactSource g.candidate (i, true)).eval t -
      (g.contactSource g.candidate (i, false)).eval t =
        t * g.candidate.K t * (g.ratio * g.upperOddShape t - g.lowerOddShape t) := by
  simp only [eval_contactSource, Bool.false_eq_true, ite_false, ite_true]
  ring

end EvenGeometry

/-- The central lower-odd band is automatic from the upper-inner band: the same
odd numerator is strictly negative there and the actual odd gap is strict. -/
theorem EvenGeometry.candidate_lower_central_pos {B : Box6} (g : EvenGeometry B)
    (hB : B.RobustlyHurwitz) (i : Bool) (t : ℝ)
    (htB : g.B ≤ t) (htb : t ≤ g.b) :
    0 < (g.contactQuotient g.candidate (i,false)).eval t := by
  obtain ⟨kr⟩ := g.candidate_odd_roots hB
  have ht : 0 < t := (g.a_pos.trans (g.a_lt_A.trans g.A_lt_B)).trans_le htB
  have hK : g.candidate.K t < 0 := by
    rw [kr.factor]
    exact mul_neg_of_pos_of_neg
      (mul_pos kr.leading_pos (sub_pos.mpr (kr.uB.trans_le htB)))
      (sub_neg.mpr (htb.trans_lt kr.bv))
  have hgap := g.odd_shape_gap hB ht.le
  have hnegative := mul_neg_of_neg_of_pos (mul_neg_of_pos_of_neg ht hK) (sub_pos.mpr hgap)
  have hup := g.source_nonneg_of_quotient hB
    (g.candidate_upper_inner_pos hB i t (g.A_lt_B.le.trans htB) (htb.trans g.b_lt_c.le))
  have hdiff := g.source_odd_difference i t
  have hp : 0 < (g.contactSource g.candidate (i,false)).eval t := by
    linarith only [hup, hdiff, hnegative]
  rw [g.candidate_source_factor hB (i,false)] at hp
  have hmul : 0 < (t-g.contactNode (i,false))^2*
      (g.contactQuotient g.candidate (i,false)).eval t := by simpa using hp
  by_contra hn
  exact (not_lt_of_ge (mul_nonpos_of_nonneg_of_nonpos (sq_nonneg _)
    (le_of_not_gt hn))) hmul

/-- All certificate bands imply the global weak envelope, with the strict lifting hypotheses. -/
theorem LocalCertificates.envelope {B : Box6} {g : EvenGeometry B}
    (c : LocalCertificates g) (hB : B.RobustlyHurwitz) : EnvelopeWitness g g.candidate := by
  obtain ⟨kr⟩ := g.candidate_odd_roots hB
  obtain ⟨fr⟩ := g.candidate_even_roots hB (g.candidate_at_C_pos hB)
  have hAa := g.a_lt_A
  have hAB := g.A_lt_B
  have hBb := g.B_lt_b
  have hbc := g.b_lt_c
  have hcC := g.c_lt_C
  have ha := g.a_pos
  have hA := ha.trans hAa
  have hBB := hA.trans hAB
  have hb := hBB.trans hBb
  have hc := hb.trans hbc
  have h00 (t : ℝ) (ht : 0 ≤ t) (hn : t ≠ g.c) :
      0 < (g.contactSource g.candidate (false, false)).eval t := by
    by_cases hta : t < g.a
    · by_cases hF : 0 ≤ g.candidate.F t
      · have hK := kr.positive_left (by linarith : t ≤ g.A)
        have hU : 0 < g.lowerOddShape t :=
          mul_pos_of_neg_of_neg (by linarith) (by linarith)
        have hE : 0 < B.evenLower t := by
          rw [g.lower_value]
          exact mul_pos_of_neg_of_neg
            (mul_neg_of_pos_of_neg (by linarith) (by linarith)) (by linarith)
        rw [g.eval_contactSource]
        simp only [Bool.false_eq_true, ite_false]
        by_cases hz : t = 0
        · subst t
          have hF0 : 0 < g.candidate.F 0 := by
            simpa [ParityNumerator.F] using (g.candidate_endpoints hB).1
          simpa using mul_pos hF0 hE
        · exact add_pos_of_nonneg_of_pos (mul_nonneg hF hE.le)
            (mul_pos (mul_pos (lt_of_le_of_ne ht (Ne.symm hz)) hK) hU)
      · have h10 := g.source_pos_of_quotient hB (c.upper_first t ht (by linarith))
          (show t ≠ g.contactNode (true, false) by change t ≠ g.A; linarith)
        have hdiff := g.source_even_difference t
        have hmul := mul_nonpos_of_nonpos_of_nonneg (le_of_not_ge hF) (g.even_gap_nonneg ht)
        linarith
    · have hat : g.a ≤ t := le_of_not_gt hta
      by_cases htA : t ≤ g.A
      · exact g.source_pos_of_quotient hB (g.candidate_lower_first_pos hB t hat htA) hn
      · have hAt : g.A < t := lt_of_not_ge htA
        by_cases htB : t ≤ g.B
        · have h10 := g.source_pos_of_quotient hB (c.upper_first t ht htB)
            (show t ≠ g.contactNode (true, false) from ne_of_gt hAt)
          have hdiff := g.source_even_difference t
          have hmul := mul_nonpos_of_nonpos_of_nonneg (fr.negative_middle hAt.le htB).le
            (g.even_gap_nonneg ht)
          linarith
        · by_cases htb : t ≤ g.b
          · exact g.source_pos_of_quotient hB
              (g.candidate_lower_central_pos hB false t (le_of_not_ge htB) htb) hn
          · exact g.source_pos_of_quotient hB (c.lower_tail t (le_of_not_ge htb)) hn
  have hw00 (t : ℝ) (ht : 0 ≤ t) :
      0 ≤ (g.contactSource g.candidate (false, false)).eval t := by
    by_cases hn : t = g.c
    · subst t
      exact (g.source_at_node g.candidate (false, false)).ge
    · exact (h00 t ht hn).le
  have h10 (t : ℝ) (ht : 0 ≤ t) (hnA : t ≠ g.A) (hnc : t ≠ g.c) :
      0 < (g.contactSource g.candidate (true, false)).eval t := by
    by_cases htB : t ≤ g.B
    · exact g.source_pos_of_quotient hB (c.upper_first t ht htB) hnA
    · by_cases htb : t ≤ g.b
      · exact g.source_pos_of_quotient hB
          (g.candidate_lower_central_pos hB true t (le_of_not_ge htB) htb) hnA
      · have hbt := le_of_not_ge htb
        by_cases htr : t ≤ fr.r3
        · have hp := h00 t ht hnc
          have hm := mul_nonneg (fr.nonnegative_late hbt htr) (g.even_gap_nonneg ht)
          have hd := g.source_even_difference t
          linarith
        · have hrt := le_of_not_ge htr
          have hCt : g.C < t := fr.Cr3.trans_le hrt
          have hct : g.c < t := hcC.trans hCt
          have hK := kr.positive_right hct.le
          have hU : 0 < g.lowerOddShape t := by
            exact mul_pos (by linarith) (sub_pos.mpr hct)
          have hE : B.evenUpper t ≤ 0 := by
            rw [g.upper_value]
            exact mul_nonpos_of_nonpos_of_nonneg
              (mul_nonpos_of_nonpos_of_nonneg (by linarith) (by linarith)) (by linarith)
          rw [g.eval_contactSource]
          simp only [Bool.false_eq_true, ite_false, ite_true]
          exact add_pos_of_nonneg_of_pos
            (mul_nonneg_of_nonpos_of_nonpos (fr.nonpositive_tail hrt) hE)
            (mul_pos (mul_pos (hc.trans hct) hK) hU)
  have hw10 (t : ℝ) (ht : 0 ≤ t) :
      0 ≤ (g.contactSource g.candidate (true, false)).eval t := by
    by_cases hnA : t = g.A
    · subst t
      exact (g.source_at_node g.candidate (true, false)).ge
    · by_cases hnc : t = g.c
      · subst t
        have hF := (g.candidate_even_node_signs hB).2.2.2
        have hmul := mul_nonneg hF.le (g.even_gap_nonneg hc.le)
        have hd := g.source_even_difference g.c
        have hz := g.source_at_node g.candidate (false, false)
        change (g.contactSource g.candidate (false, false)).eval g.c = 0 at hz
        linarith
      · exact (h10 t ht hnA hnc).le
  have hupper (i : Bool) (t : ℝ) (ht : 0 ≤ t) :
      0 ≤ (g.contactSource g.candidate (i, true)).eval t := by
    by_cases hK : 0 ≤ g.candidate.K t
    · have hmul := mul_nonneg (mul_nonneg ht hK) (sub_pos.mpr (g.odd_shape_gap hB ht)).le
      have hd := g.source_odd_difference i t
      have hl : 0 ≤ (g.contactSource g.candidate (i, false)).eval t := by
        cases i
        · exact hw00 t ht
        · exact hw10 t ht
      linarith
    · obtain ⟨hAt, htc⟩ := kr.negative_inside (lt_of_not_ge hK)
      exact g.source_nonneg_of_quotient hB (g.candidate_upper_inner_pos hB i t hAt.le htc.le)
  obtain ⟨h0, h3, _⟩ := g.candidate_endpoints hB
  refine ⟨h0, h3, ?_, ?_, ?_, ?_, ?_⟩
  · intro t ht
    simpa [g.eval_contactSource] using hw00 t ht
  · intro t ht
    simpa [g.eval_contactSource] using hupper false t ht
  · intro t ht
    simpa [g.eval_contactSource] using hw10 t ht
  · intro t ht
    simpa [g.eval_contactSource] using hupper true t ht
  · intro t ht hz
    have hnA : t ≠ g.A := by intro hh; rw [hh] at hz; exact (g.candidate_contact_nonzero hB).1 hz
    have hnc : t ≠ g.c := by intro hh; rw [hh] at hz; exact (g.candidate_contact_nonzero hB).2 hz
    exact ⟨by simpa [g.eval_contactSource, hz] using h00 t ht.le hnc,
      by simpa [g.eval_contactSource, hz] using h10 t ht.le hnA hnc⟩

/-- Conditional local-to-original synthesis, with no remaining analytic or frequency glue assumed. -/
theorem LocalCertificates.synthesis {B : Box6} {g : EvenGeometry B}
    (c : LocalCertificates g) (hB : B.RobustlyHurwitz) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, B.Contains a → FrequencySPR a.toPoly b :=
  (c.envelope hB).synthesis hB

/-- Exact remaining universal reduction. The two tail obligations are still an
explicit input, so this is not the unrestricted sixth-order synthesis theorem. -/
theorem synthesis_of_universal_local_certificates
    (hcert : ∀ (B : Box6), B.RobustlyHurwitz → ∀ g : EvenGeometry B,
      LocalCertificates g) : RobustSPRStatement := by
  intro B hB
  by_cases hw : B.EvenVarying
  · obtain ⟨g⟩ := B.even_geometry hB hw
    exact (hcert B hB g).synthesis hB
  · have h2 : B.lower.a2 = B.upper.a2 :=
      le_antisymm B.h2 (le_of_not_gt (fun h => hw (Or.inl h)))
    have h4 : B.lower.a4 = B.upper.a4 :=
      le_antisymm B.h4 (le_of_not_gt (fun h => hw (Or.inr (Or.inl h))))
    have h6 : B.lower.a6 = B.upper.a6 :=
      le_antisymm B.h6 (le_of_not_gt (fun h => hw (Or.inr (Or.inr h))))
    exact B.fixed_even_synthesis hB h2 h4 h6

end
end SPR.N6
