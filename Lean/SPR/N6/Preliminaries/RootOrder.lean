import SPR.N6.Preliminaries.HermiteBiehler

/-!
# Uniqueness of sorted parity roots

The root sets are complete because the factorization degrees are exact.
These lemmas identify roots of different Hurwitz members with a shared parity
part; their equality is not inferred merely from interlacing.
-/
namespace SPR.N6
noncomputable section

/-- Two strictly sorted two-element root sets have the same ordered entries. -/
theorem ordered_pair_unique {r s R S : ℝ} (hrs : r < s) (hRS : R < S)
    (h : ∀ t : ℝ, (t = r ∨ t = s) ↔ (t = R ∨ t = S)) : r = R ∧ s = S := by
  have hr := (h r).mp (Or.inl rfl)
  have hR := (h R).mpr (Or.inl rfl)
  have hs := (h s).mp (Or.inr rfl)
  have hS := (h S).mpr (Or.inr rfl)
  rcases hr with hr | hr <;> rcases hR with hR | hR <;>
    rcases hs with hs | hs <;> rcases hS with hS | hS <;> constructor <;> linarith

/-- Three strictly sorted roots are unique as an ordered triple. -/
theorem ordered_triple_unique {r s t R S T : ℝ}
    (hrs : r < s) (hst : s < t) (hRS : R < S) (hST : S < T)
    (h : ∀ x : ℝ, (x = r ∨ x = s ∨ x = t) ↔ (x = R ∨ x = S ∨ x = T)) :
    r = R ∧ s = S ∧ t = T := by
  have hrR : r ≤ R := by
    rcases (h R).mpr (Or.inl rfl) with hR | hR | hR <;> linarith
  have hRr : R ≤ r := by
    rcases (h r).mp (Or.inl rfl) with hr | hr | hr <;> linarith
  have hr : r = R := le_antisymm hrR hRr
  have hsS : s ≤ S := by
    rcases (h S).mpr (Or.inr (Or.inl rfl)) with hS | hS | hS <;> linarith
  have hSs : S ≤ s := by
    rcases (h s).mp (Or.inr (Or.inl rfl)) with hs | hs | hs <;> linarith
  have hs : s = S := le_antisymm hsS hSs
  refine ⟨hr, hs, ?_⟩
  rcases (h t).mp (Or.inr (Or.inr rfl)) with ht | ht | ht <;> linarith

namespace DenominatorInterlacing

theorem even_root_iff {a : Poly6} (d : DenominatorInterlacing a) (t : ℝ) :
    evenPart a t = 0 ↔ t = d.e₁ ∨ t = d.e₂ ∨ t = d.e₃ := by
  rw [d.even_value]
  simp only [mul_eq_zero, neg_eq_zero, sub_eq_zero, or_assoc]

theorem odd_root_iff {a : Poly6} (d : DenominatorInterlacing a) (ha : 0 < a.a1) (t : ℝ) :
    oddPart a t = 0 ↔ t = d.o₁ ∨ t = d.o₂ := by
  rw [d.odd_value]
  simp only [mul_eq_zero, ne_of_gt ha, false_or, sub_eq_zero]

theorem even_unique {a b : Poly6} (d : DenominatorInterlacing a)
    (e : DenominatorInterlacing b) (h : ∀ t : ℝ, evenPart a t = evenPart b t) :
    d.e₁ = e.e₁ ∧ d.e₂ = e.e₂ ∧ d.e₃ = e.e₃ := by
  apply ordered_triple_unique (d.e₁_lt_o₁.trans d.o₁_lt_e₂)
    (d.e₂_lt_o₂.trans d.o₂_lt_e₃) (e.e₁_lt_o₁.trans e.o₁_lt_e₂)
    (e.e₂_lt_o₂.trans e.o₂_lt_e₃)
  intro t
  rw [← d.even_root_iff, ← e.even_root_iff, h]

theorem odd_unique {a b : Poly6} (d : DenominatorInterlacing a)
    (e : DenominatorInterlacing b) (ha : 0 < a.a1) (hb : 0 < b.a1)
    (h : ∀ t : ℝ, oddPart a t = oddPart b t) : d.o₁ = e.o₁ ∧ d.o₂ = e.o₂ := by
  apply ordered_pair_unique (d.o₁_lt_e₂.trans d.e₂_lt_o₂)
    (e.o₁_lt_e₂.trans e.e₂_lt_o₂)
  intro t
  rw [← d.odd_root_iff ha, ← e.odd_root_iff hb, h]

end DenominatorInterlacing
end
end SPR.N6
