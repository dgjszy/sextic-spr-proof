import SPR.N6.Construction.Quotients
import SPR.N6.Synthesis.FixedEven

/-!
# Explicit remaining synthesis obligation

This module supplies a conditional reduction with its hypothesis displayed in
full. It is not the original theorem: the missing universal quartic positivity
must still be proved for the fixed actual candidate. The degenerate case and
all analytic extraction/lifting steps are already kernel-checked.
-/
namespace SPR.N6
noncomputable section
open Polynomial

namespace EvenGeometry

/-- Four positive polynomial quotients give the required strictness even where the odd
numerator vanishes; its two lower contact values have already been proved nonzero. -/
theorem witness_of_positive_quotients {B : Box6} (g : EvenGeometry B)
    (hB : B.RobustlyHurwitz)
    (hq : ∀ c : Corner, ∀ t : ℝ, 0 ≤ t →
      0 < (g.contactQuotient g.candidate c).eval t) : EnvelopeWitness g g.candidate := by
  have hf (c : Corner) (t : ℝ) :
      (g.contactSource g.candidate c).eval t =
        (t - g.contactNode c) ^ 2 * (g.contactQuotient g.candidate c).eval t := by
    rw [g.candidate_source_factor hB c]
    simp
  have hn (c : Corner) (t : ℝ) (ht : 0 ≤ t) :
      0 ≤ (g.contactSource g.candidate c).eval t := by
    rw [hf]
    exact mul_nonneg (sq_nonneg _) (hq c t ht).le
  have hs (c : Corner) (t : ℝ) (ht : 0 ≤ t) (hnode : t ≠ g.contactNode c) :
      0 < (g.contactSource g.candidate c).eval t := by
    rw [hf]
    exact mul_pos (sq_pos_of_ne_zero (sub_ne_zero.mpr hnode)) (hq c t ht)
  obtain ⟨h0, h3, _⟩ := g.candidate_endpoints hB
  refine ⟨h0, h3, ?_, ?_, ?_, ?_, ?_⟩
  · intro t ht
    simpa only [eval_contactSource, Bool.false_eq_true, ite_false] using hn (false, false) t ht
  · intro t ht
    simpa only [eval_contactSource, Bool.false_eq_true, ite_false, ite_true] using hn (false, true) t ht
  · intro t ht
    simpa only [eval_contactSource, Bool.false_eq_true, ite_false, ite_true] using hn (true, false) t ht
  · intro t ht
    simpa only [eval_contactSource, ite_true] using hn (true, true) t ht
  · intro t ht hkt
    have hnA : t ≠ g.A := by
      intro h
      rw [h] at hkt
      exact (g.candidate_contact_nonzero hB).1 hkt
    have hnc : t ≠ g.c := by
      intro h
      rw [h] at hkt
      exact (g.candidate_contact_nonzero hB).2 hkt
    constructor
    · simpa [eval_contactSource, hkt] using hs (false, false) t ht.le hnc
    · simpa [eval_contactSource, hkt] using hs (true, false) t ht.le hnA

end EvenGeometry

/-- An explicit reduction, with the unproved universal candidate positivity visibly retained.
This theorem must not be reported as an unconditional proof of `RobustSPRStatement`. -/
theorem synthesis_of_universal_quotient_positivity
    (hquot : ∀ (B : Box6), B.RobustlyHurwitz → ∀ g : EvenGeometry B,
      ∀ c : Corner, ∀ t : ℝ, 0 ≤ t → 0 < (g.contactQuotient g.candidate c).eval t) :
    RobustSPRStatement := by
  intro B hB
  by_cases hw : B.EvenVarying
  · obtain ⟨g⟩ := B.even_geometry hB hw
    exact (g.witness_of_positive_quotients hB (hquot B hB g)).synthesis hB
  · have h2 : B.lower.a2 = B.upper.a2 := le_antisymm B.h2 (le_of_not_gt (fun h => hw (Or.inl h)))
    have h4 : B.lower.a4 = B.upper.a4 :=
      le_antisymm B.h4 (le_of_not_gt (fun h => hw (Or.inr (Or.inl h))))
    have h6 : B.lower.a6 = B.upper.a6 :=
      le_antisymm B.h6 (le_of_not_gt (fun h => hw (Or.inr (Or.inr h))))
    exact B.fixed_even_synthesis hB h2 h4 h6

end
end SPR.N6
