import SPR.N6.Algebra.Tail.TermEncoding
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic

/-! Syntax-tree bounds for the sparse `Expr` expansion.

The definitions in this file recurse over the finite syntax tree.  In
particular, they do not inspect `expand e`, whose terms contain the
noncomputable `Finsupp.single` used by the research expansion.  The lemmas
below are semantic specifications for that expansion and may therefore use
ordinary (possibly noncomputable) finite-support reasoning.
-/
namespace SPR.N6.Tail.SyntaxBounds

open Lean.Grind.CommRing
open SPR.N6.Tail.TermEncoding

/-! The computable syntax summaries. -/

/-- The coefficient-mass expression associated with a syntax tree. -/
def syntaxMass : Expr → ℕ
  | .num k => k.natAbs
  | .natCast k => k
  | .intCast k => k.natAbs
  | .var _ => 1
  | .neg e => syntaxMass e
  | .add e₁ e₂ => syntaxMass e₁ + syntaxMass e₂
  | .sub e₁ e₂ => syntaxMass e₁ + syntaxMass e₂
  | .mul e₁ e₂ => syntaxMass e₁ * syntaxMass e₂
  | .pow e n => syntaxMass e ^ n

/-- A coordinate-wise degree bound, computed directly from the syntax tree. -/
def syntaxDegree : Expr → Nat → ℕ
  | .num _, _ => 0
  | .natCast _, _ => 0
  | .intCast _, _ => 0
  | .var j, i => if i = j then 1 else 0
  | .neg e, i => syntaxDegree e i
  | .add e₁ e₂, i => max (syntaxDegree e₁ i) (syntaxDegree e₂ i)
  | .sub e₁ e₂, i => max (syntaxDegree e₁ i) (syntaxDegree e₂ i)
  | .mul e₁ e₂, i => syntaxDegree e₁ i + syntaxDegree e₂ i
  | .pow e n, i => n * syntaxDegree e i

/-- The finite set of variable indices occurring in an expression. -/
def syntaxVars : Expr → Finset Nat
  | .num _ => ∅
  | .natCast _ => ∅
  | .intCast _ => ∅
  | .var i => {i}
  | .neg e => syntaxVars e
  | .add e₁ e₂ => syntaxVars e₁ ∪ syntaxVars e₂
  | .sub e₁ e₂ => syntaxVars e₁ ∪ syntaxVars e₂
  | .mul e₁ e₂ => syntaxVars e₁ ∪ syntaxVars e₂
  | .pow e _ => syntaxVars e

/-- A decidable syntax-tree check that all variables are below `bound`.

The result is a proposition with a finite decidable witness (`syntaxVars e`),
so `decide` computes it by traversing only `e`. -/
def usesBelow (e : Expr) (bound : Nat) : Prop :=
  syntaxVars e ⊆ Finset.range bound

lemma usesBelow_iff (e : Expr) (bound : Nat) :
    usesBelow e bound ↔ ∀ i ∈ syntaxVars e, i < bound := by
  simp [usesBelow, Finset.subset_iff]

/-! List-level mass identities. -/

lemma termMass_append (xs ys : List Term) :
    termMass (xs ++ ys) = termMass xs + termMass ys := by
  induction xs with
  | nil => simp [termMass]
  | cons t ts ih =>
      simp [termMass, ih, Nat.add_assoc]

lemma termMass_map_termNeg (xs : List Term) :
    termMass (xs.map termNeg) = termMass xs := by
  induction xs with
  | nil => rfl
  | cons t ts ih =>
      simp [termMass, termNeg, ih]

lemma termMass_termMul (t u : Term) :
    (termMul t u).coeff.natAbs = t.coeff.natAbs * u.coeff.natAbs := by
  simp [termMul, Int.natAbs_mul]

lemma termMass_map_termMul (t : Term) (ys : List Term) :
    termMass (ys.map (termMul t)) = t.coeff.natAbs * termMass ys := by
  induction ys with
  | nil => simp [termMass]
  | cons u us ih =>
      simp only [List.map_cons, termMass, termMass_termMul, ih]
      rw [Nat.mul_add]

lemma termMass_mulTerms (xs ys : List Term) :
    termMass (mulTerms xs ys) = termMass xs * termMass ys := by
  induction xs with
  | nil => simp [mulTerms, termMass]
  | cons t ts ih =>
      change termMass (ys.map (termMul t) ++ mulTerms ts ys) =
        termMass (t :: ts) * termMass ys
      rw [termMass_append, termMass_map_termMul, ih]
      simp only [termMass]
      rw [Nat.add_mul]

/-! Syntax mass is exactly the mass of the unmerged expansion. -/

theorem termMass_expand (e : Expr) :
    termMass (expand e) = syntaxMass e := by
  induction e with
  | num k => simp [expand, termMass, syntaxMass]
  | natCast k => simp [expand, termMass, syntaxMass]
  | intCast k => simp [expand, termMass, syntaxMass]
  | var i => simp [expand, termMass, syntaxMass]
  | neg e ih => simp [expand, termMass_map_termNeg, ih, syntaxMass]
  | add e₁ e₂ ih₁ ih₂ =>
      simp [expand, termMass_append, ih₁, ih₂, syntaxMass]
  | sub e₁ e₂ ih₁ ih₂ =>
      simp [expand, termMass_append, termMass_map_termNeg, ih₁, ih₂, syntaxMass]
  | mul e₁ e₂ ih₁ ih₂ =>
      simp [expand, termMass_mulTerms, ih₁, ih₂, syntaxMass]
  | pow e n ih =>
      have hpow : ∀ k, termMass (expandPow e k) = syntaxMass e ^ k := by
        intro k
        induction k with
        | zero => simp [expandPow, termMass]
        | succ k ihpow =>
            simp only [expandPow]
            rw [termMass_mulTerms, ihpow, ih]
            rw [Nat.pow_succ]
      rw [SPR.N6.Tail.TermEncoding.expand.eq_9]
      exact hpow n

/-! Support and degree bounds for individual expanded terms. -/

lemma termMul_support_subset (t u : Term) :
    (termMul t u).exp.support ⊆ t.exp.support ∪ u.exp.support := by
  intro i hi
  simp only [Finsupp.mem_support_iff] at hi
  by_contra hnot
  have hti : t.exp i = 0 := by
    apply Finsupp.notMem_support_iff.mp
    intro hmem
    exact hnot (Finset.mem_union_left _ hmem)
  have hui : u.exp i = 0 := by
    apply Finsupp.notMem_support_iff.mp
    intro hmem
    exact hnot (Finset.mem_union_right _ hmem)
  exact hi (by simp [termMul, Finsupp.add_apply, hti, hui])

lemma expand_mem_support_subset (e : Expr) :
    ∀ {t : Term}, t ∈ expand e → t.exp.support ⊆ syntaxVars e := by
  induction e with
  | num k =>
      intro t ht
      have ht' : t = ⟨0, k⟩ := by simpa [expand] using ht
      subst t
      simp [syntaxVars]
  | natCast k =>
      intro t ht
      have ht' : t = ⟨0, (k : ℤ)⟩ := by simpa [expand] using ht
      subst t
      simp [syntaxVars]
  | intCast k =>
      intro t ht
      have ht' : t = ⟨0, k⟩ := by simpa [expand] using ht
      subst t
      simp [syntaxVars]
  | var j =>
      intro t ht
      have ht' : t = ⟨Finsupp.single j 1, 1⟩ := by simpa [expand] using ht
      subst t
      rw [Finsupp.support_single _ (by norm_num)]
      simp [syntaxVars]
  | neg e ih =>
      intro t ht
      simp only [expand, List.mem_map] at ht
      obtain ⟨u, hu, htu⟩ := ht
      have hsu := ih hu
      rw [← htu]
      simpa [termNeg, syntaxVars] using hsu
  | add e₁ e₂ ih₁ ih₂ =>
      intro t ht
      simp only [expand, List.mem_append] at ht
      rcases ht with ht | ht
      · exact Finset.Subset.trans (ih₁ ht) (Finset.subset_union_left)
      · exact Finset.Subset.trans (ih₂ ht) (Finset.subset_union_right)
  | sub e₁ e₂ ih₁ ih₂ =>
      intro t ht
      simp only [expand, List.mem_append] at ht
      rcases ht with ht | ht
      · exact Finset.Subset.trans (ih₁ ht) (Finset.subset_union_left)
      · simp only [List.mem_map] at ht
        obtain ⟨u, hu, htu⟩ := ht
        have hsu := ih₂ hu
        rw [← htu]
        simpa [termNeg, syntaxVars] using
          (Finset.Subset.trans hsu (Finset.subset_union_right))
  | mul e₁ e₂ ih₁ ih₂ =>
      intro t ht
      simp only [expand, mulTerms, List.mem_flatMap] at ht
      obtain ⟨u, hu, htmap⟩ := ht
      simp only [List.mem_map] at htmap
      obtain ⟨v, hv, huv⟩ := htmap
      have hsu := termMul_support_subset u v
      have hvars := Finset.union_subset_union (ih₁ hu) (ih₂ hv)
      rw [← huv]
      simpa [termMul, syntaxVars] using (Finset.Subset.trans hsu hvars)
  | pow e n ih =>
      intro t ht
      rw [SPR.N6.Tail.TermEncoding.expand.eq_9] at ht
      -- The exponent support is unchanged by multiplication except for the
      -- union operation, so induction on the number of factors suffices.
      have hpow : ∀ n {t : Term}, t ∈ expandPow e n →
          t.exp.support ⊆ syntaxVars e := by
        intro k
        induction k with
        | zero =>
            intro t ht
            have ht' : t = ⟨0, 1⟩ := by simpa [expandPow] using ht
            subst t
            simp
        | succ k ihpow =>
            intro t ht
            rw [SPR.N6.Tail.TermEncoding.expandPow.eq_2] at ht
            simp only [mulTerms, List.mem_flatMap] at ht
            obtain ⟨u, hu, htmap⟩ := ht
            simp only [List.mem_map] at htmap
            obtain ⟨v, hv, huv⟩ := htmap
            have hsu := termMul_support_subset u v
            have hvars := Finset.union_subset_union (ihpow hu) (ih hv)
            rw [← huv]
            simpa [termMul, syntaxVars] using (Finset.Subset.trans hsu hvars)
      exact hpow n ht

lemma expand_mem_degree (e : Expr) :
    ∀ {t : Term}, t ∈ expand e → ∀ i : Nat, t.exp i ≤ syntaxDegree e i := by
  induction e with
  | num k =>
      intro t ht i
      have ht' : t = ⟨0, k⟩ := by simpa [expand] using ht
      subst t
      simp [syntaxDegree]
  | natCast k =>
      intro t ht i
      have ht' : t = ⟨0, (k : ℤ)⟩ := by simpa [expand] using ht
      subst t
      simp [syntaxDegree]
  | intCast k =>
      intro t ht i
      have ht' : t = ⟨0, k⟩ := by simpa [expand] using ht
      subst t
      simp [syntaxDegree]
  | var j =>
      intro t ht i
      have ht' : t = ⟨Finsupp.single j 1, 1⟩ := by simpa [expand] using ht
      subst t
      by_cases h : i = j
      · subst i
        simp [syntaxDegree, Finsupp.single_eq_same]
      · simp [syntaxDegree, Finsupp.single_eq_of_ne h]
  | neg e ih =>
      intro t ht i
      simp only [expand, List.mem_map] at ht
      obtain ⟨u, hu, htu⟩ := ht
      have hi := ih hu i
      rw [← htu]
      simpa [termNeg, syntaxDegree] using hi
  | add e₁ e₂ ih₁ ih₂ =>
      intro t ht i
      simp only [expand, List.mem_append] at ht
      rcases ht with ht | ht
      · change t.exp i ≤ max (syntaxDegree e₁ i) (syntaxDegree e₂ i)
        exact le_max_of_le_left (ih₁ ht i)
      · change t.exp i ≤ max (syntaxDegree e₁ i) (syntaxDegree e₂ i)
        exact le_max_of_le_right (ih₂ ht i)
  | sub e₁ e₂ ih₁ ih₂ =>
      intro t ht i
      simp only [expand, List.mem_append] at ht
      rcases ht with ht | ht
      · change t.exp i ≤ max (syntaxDegree e₁ i) (syntaxDegree e₂ i)
        exact le_max_of_le_left (ih₁ ht i)
      · simp only [List.mem_map] at ht
        obtain ⟨u, hu, htu⟩ := ht
        have hi := ih₂ hu i
        rw [← htu]
        change (termNeg u).exp i ≤ max (syntaxDegree e₁ i) (syntaxDegree e₂ i)
        exact le_max_of_le_right (by simpa [termNeg] using hi)
  | mul e₁ e₂ ih₁ ih₂ =>
      intro t ht i
      simp only [expand, mulTerms, List.mem_flatMap] at ht
      obtain ⟨u, hu, htmap⟩ := ht
      simp only [List.mem_map] at htmap
      obtain ⟨v, hv, huv⟩ := htmap
      have hi := Nat.add_le_add (ih₁ hu i) (ih₂ hv i)
      rw [← huv]
      change (termMul u v).exp i ≤ syntaxDegree e₁ i + syntaxDegree e₂ i
      simpa [termMul, Finsupp.add_apply] using hi
  | pow e n ih =>
      intro t ht i
      rw [SPR.N6.Tail.TermEncoding.expand.eq_9] at ht
      have hpow : ∀ k {t : Term}, t ∈ expandPow e k →
          t.exp i ≤ k * syntaxDegree e i := by
        intro k
        induction k with
        | zero =>
            intro t ht
            have ht' : t = ⟨0, 1⟩ := by simpa [expandPow] using ht
            subst t
            simp
        | succ k ihpow =>
            intro t ht
            rw [SPR.N6.Tail.TermEncoding.expandPow.eq_2] at ht
            simp only [mulTerms, List.mem_flatMap] at ht
            obtain ⟨u, hu, htmap⟩ := ht
            simp only [List.mem_map] at htmap
            obtain ⟨v, hv, huv⟩ := htmap
            have hu' := ihpow hu
            have hv' := ih hv i
            have hsum := Nat.add_le_add hu' hv'
            rw [← huv]
            simpa [termMul, Finsupp.add_apply, Nat.succ_mul] using hsum
      exact hpow n ht

/-! The syntax-variable bound can be transported to the finite support. -/

lemma expand_mem_support_subset_range (e : Expr) (bound : Nat)
    (hbelow : usesBelow e bound) {t : Term} (ht : t ∈ expand e) :
    t.exp.support ⊆ Finset.range bound :=
  (expand_mem_support_subset e ht).trans hbelow

lemma expand_mem_support_subset_four (e : Expr)
    (hbelow : usesBelow e 4) {t : Term} (ht : t ∈ expand e) :
    t.exp.support ⊆ ({0, 1, 2, 3} : Finset Nat) := by
  have hrange := expand_mem_support_subset_range e 4 hbelow ht
  intro i hi
  have hi4 : i < 4 := by simpa using hrange hi
  interval_cases i <;> simp_all

end SPR.N6.Tail.SyntaxBounds

