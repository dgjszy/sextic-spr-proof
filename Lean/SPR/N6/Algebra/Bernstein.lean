import Mathlib.Analysis.SpecialFunctions.Bernstein

/-!
# Strict positivity of complete Bernstein expansions

Every index is quantified, and endpoint weights are retained. Strictness follows
from total weight one, so the theorem applies on closed parameter intervals.
-/
namespace SPR.N6
noncomputable section

/-- A full one-dimensional Bernstein expansion with strictly positive entries. -/
theorem bernstein_sum_pos {n : ℕ} (q : Fin (n + 1) → ℝ)
    (hq : ∀ i, 0 < q i) (x : Set.Icc (0 : ℝ) 1) :
    0 < ∑ i : Fin (n + 1), q i * bernstein n i x := by
  have hw : ∑ i : Fin (n + 1), bernstein n i x = 1 := bernstein.probability n x
  have hsome : ∃ i : Fin (n + 1), 0 < bernstein n i x := by
    by_contra hn
    push_neg at hn
    have hz : ∑ i : Fin (n + 1), bernstein n i x ≤ 0 := Finset.sum_nonpos (fun i _ => hn i)
    linarith
  obtain ⟨i, hi⟩ := hsome
  apply Finset.sum_pos'
  · intro j _
    exact mul_nonneg (hq j).le bernstein_nonneg
  · exact ⟨i, Finset.mem_univ i, mul_pos (hq i) hi⟩

/-- A complete rectangular coefficient array is positive throughout the closed square. -/
theorem bernstein_rectangle_pos {n m : ℕ} (q : Fin (n + 1) → Fin (m + 1) → ℝ)
    (hq : ∀ i j, 0 < q i j) (x y : Set.Icc (0 : ℝ) 1) :
    0 < ∑ i : Fin (n + 1), (∑ j : Fin (m + 1), q i j * bernstein m j y) *
      bernstein n i x := by
  apply bernstein_sum_pos
  intro i
  exact bernstein_sum_pos (q i) (hq i) y

end
end SPR.N6
