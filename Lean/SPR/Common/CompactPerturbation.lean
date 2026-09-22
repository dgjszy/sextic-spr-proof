import Mathlib

/-!
# One positive perturbation on a compact domain

A nonnegative continuous function becomes strictly positive after one small
positive perturbation if the perturbing function is positive at every zero.
The same perturbation works at all points of the compact domain.
-/
namespace SPR

/-- A uniform perturbation lemma, including empty domains and zeros of the base function. -/
theorem compact_positive_perturbation {α : Type*} [TopologicalSpace α]
    {s : Set α} (hs : IsCompact s) {f g : α → ℝ}
    (hf : Continuous f) (hg : Continuous g)
    (hf0 : ∀ x ∈ s, 0 ≤ f x)
    (hz : ∀ x ∈ s, f x = 0 → 0 < g x) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ x ∈ s, 0 < f x + ε * g x := by
  let bad := s ∩ {x | g x ≤ 0}
  have hc : IsCompact bad := hs.inter_right (isClosed_le hg continuous_const)
  have hd (x : α) : 0 < |g x| + 1 := by positivity
  have hr : Continuous (fun x => f x / (|g x| + 1)) :=
    hf.div (hg.abs.add continuous_const) (fun x => ne_of_gt (hd x))
  have hp (x : α) (hx : x ∈ bad) : 0 < f x / (|g x| + 1) := by
    have hfx : 0 < f x := lt_of_le_of_ne (hf0 x hx.1) (by
      intro he
      have hgz := hz x hx.1 he.symm
      exact (not_lt_of_ge hx.2) hgz)
    exact div_pos hfx (hd x)
  obtain ⟨η, hη, hbound⟩ := hc.exists_forall_le' hr.continuousOn hp
  refine ⟨η / 2, by positivity, ?_⟩
  intro x hx
  by_cases hgx : g x ≤ 0
  · have hb := (le_div_iff₀ (hd x)).mp (hbound x ⟨hx, hgx⟩)
    rw [abs_of_nonpos hgx] at hb
    have hm := mul_nonpos_of_nonneg_of_nonpos hη.le hgx
    nlinarith only [hb, hm, hη]
  · have hp := mul_pos (show 0 < η / 2 by positivity) (lt_of_not_ge hgx)
    linarith [hf0 x hx]

end SPR
