import Mathlib.Algebra.MvPolynomial.CommRing
import Mathlib.Data.Int.Basic
import Init.Grind.Ring.CommSolver

/-! A small sparse expansion used by the iteration-49 bounded encoder.
The list representation is a mathematical implementation of finite sums; its
transport lemmas are kernel-checked and do not assert a source identity. -/
namespace SPR.N6.Tail.TermEncoding
noncomputable section
open scoped BigOperators
open Lean.Grind.CommRing

abbrev E := Nat →₀ ℕ
abbrev M := MvPolynomial Nat ℤ

structure Term where
  exp : E
  coeff : ℤ
  deriving DecidableEq

instance : Inhabited Term := ⟨⟨0, 0⟩⟩

noncomputable def termPoly (t : Term) : M := MvPolynomial.monomial t.exp t.coeff

noncomputable def polyList : List Term → M
  | [] => 0
  | t :: ts => termPoly t + polyList ts

def termMass : List Term → ℕ
  | [] => 0
  | t :: ts => t.coeff.natAbs + termMass ts

noncomputable def coefficientMass (p : M) : ℕ :=
  ∑ m ∈ p.support, (p.coeff m).natAbs

lemma coefficientMass_add_le (p q : M) :
    coefficientMass (p + q) ≤ coefficientMass p + coefficientMass q := by
  classical
  unfold coefficientMass
  calc
    ∑ m ∈ (p + q).support, ((p + q).coeff m).natAbs ≤
        ∑ m ∈ p.support ∪ q.support, ((p + q).coeff m).natAbs := by
      apply Finset.sum_le_sum_of_subset_of_nonneg MvPolynomial.support_add
      intro i hi hni
      exact Nat.zero_le _
    _ ≤ ∑ m ∈ p.support ∪ q.support,
        ((p.coeff m).natAbs + (q.coeff m).natAbs) := by
      apply Finset.sum_le_sum
      intro i hi
      rw [MvPolynomial.coeff_add]
      exact Int.natAbs_add_le _ _
    _ = (∑ m ∈ p.support ∪ q.support, (p.coeff m).natAbs) +
        (∑ m ∈ p.support ∪ q.support, (q.coeff m).natAbs) := by
      rw [Finset.sum_add_distrib]
    _ = coefficientMass p + coefficientMass q := by
      congr 1
      · symm
        apply Finset.sum_subset (Finset.subset_union_left)
        intro i hi hni
        have hz : p.coeff i = 0 := by
          by_contra hz
          exact hni (MvPolynomial.mem_support_iff.mpr hz)
        simp [hz]
      · symm
        apply Finset.sum_subset (Finset.subset_union_right)
        intro i hi hni
        have hz : q.coeff i = 0 := by
          by_contra hz
          exact hni (MvPolynomial.mem_support_iff.mpr hz)
        simp [hz]

lemma coefficientMass_monomial (s : E) (a : ℤ) :
    coefficientMass (MvPolynomial.monomial s a) = a.natAbs := by
  classical
  unfold coefficientMass
  rw [MvPolynomial.support_monomial]
  split_ifs with h
  · subst a
    simp
  · simp [MvPolynomial.coeff_monomial]

lemma coefficientMass_polyList_le (ts : List Term) :
    coefficientMass (polyList ts) ≤ termMass ts := by
  induction ts with
  | nil => simp [polyList, coefficientMass]
  | cons t ts ih =>
      calc
        coefficientMass (polyList (t :: ts)) =
            coefficientMass (termPoly t + polyList ts) := rfl
        _ ≤ coefficientMass (termPoly t) + coefficientMass (polyList ts) :=
          coefficientMass_add_le _ _
        _ ≤ t.coeff.natAbs + termMass ts :=
          Nat.add_le_add (le_of_eq (coefficientMass_monomial _ _)) ih
        _ = termMass (t :: ts) := rfl

lemma support_polyList_subset (ts : List Term) :
    (polyList ts).support ⊆ (ts.map Term.exp).toFinset := by
  classical
  induction ts with
  | nil => simp [polyList]
  | cons t ts ih =>
      intro m hm
      have hu : m ∈ (termPoly t).support ∪ (polyList ts).support :=
        MvPolynomial.support_add hm
      rcases Finset.mem_union.mp hu with ht | hts
      · have hm' : m = t.exp := by
          by_cases hz : t.coeff = 0
          · simp [termPoly, hz] at ht
          · have htm : t.exp = m := by
              simpa [termPoly, hz] using ht
            exact htm.symm
        subst m
        simp
      · simpa using Finset.mem_insert_of_mem (ih hts)

noncomputable def termEval {R : Type} [CommRing R]
    (vars : Nat → R) (t : Term) : R :=
  (t.coeff : R) * t.exp.prod (fun i n => vars i ^ n)

noncomputable def evalPolyList {R : Type} [CommRing R]
    (vars : Nat → R) : List Term → R
  | [] => 0
  | t :: ts => termEval vars t + evalPolyList vars ts

lemma evalPolyList_append {R : Type} [CommRing R]
    (vars : Nat → R) (xs ys : List Term) :
    evalPolyList vars (xs ++ ys) = evalPolyList vars xs + evalPolyList vars ys := by
  induction xs with
  | nil => simp [evalPolyList]
  | cons t ts ih => simp [evalPolyList, ih, add_assoc]

lemma eval₂_termPoly {R : Type} [CommRing R]
    (vars : Nat → R) (t : Term) :
    MvPolynomial.eval₂ (Int.castRingHom R) vars (termPoly t) = termEval vars t := by
  simp [termPoly, termEval, MvPolynomial.eval₂_monomial]

lemma eval₂_polyList {R : Type} [CommRing R]
    (vars : Nat → R) (ts : List Term) :
    MvPolynomial.eval₂ (Int.castRingHom R) vars (polyList ts) =
      evalPolyList vars ts := by
  induction ts with
  | nil => simp [polyList, evalPolyList]
  | cons t ts ih =>
      change MvPolynomial.eval₂ (Int.castRingHom R) vars (termPoly t + polyList ts) =
        termEval vars t + evalPolyList vars ts
      rw [MvPolynomial.eval₂_add, eval₂_termPoly, ih]


def termNeg (t : Term) : Term := ⟨t.exp, -t.coeff⟩

def termMul (t u : Term) : Term :=
  ⟨t.exp + u.exp, t.coeff * u.coeff⟩

def mulTerms (xs ys : List Term) : List Term :=
  xs.flatMap (fun t => ys.map (termMul t))

mutual
  def expand : Expr → List Term
    | .num k => [⟨0, k⟩]
    | .natCast k => [⟨0, k⟩]
    | .intCast k => [⟨0, k⟩]
    | .var i => [⟨Finsupp.single i 1, 1⟩]
    | .neg e => (expand e).map termNeg
    | .add e₁ e₂ => expand e₁ ++ expand e₂
    | .sub e₁ e₂ => expand e₁ ++ (expand e₂).map termNeg
    | .mul e₁ e₂ => mulTerms (expand e₁) (expand e₂)
    | .pow e n => expandPow e n

  def expandPow (e : Expr) : Nat → List Term
    | 0 => [⟨0, 1⟩]
    | n + 1 => mulTerms (expandPow e n) (expand e)
end

lemma termEval_neg {R : Type} [CommRing R]
    (vars : Nat → R) (t : Term) :
    termEval vars (termNeg t) = -termEval vars t := by
  simp [termNeg, termEval]

lemma termEval_mul {R : Type} [CommRing R]
    (vars : Nat → R) (t u : Term) :
    termEval vars (termMul t u) = termEval vars t * termEval vars u := by
  unfold termEval termMul
  rw [Finsupp.prod_add_index]
  · simp only [Int.cast_mul]
    ring
  · intro i hi
    simp
  · intro i hi a b
    rw [← pow_add]

lemma evalPolyList_map_mulTerm {R : Type} [CommRing R]
    (vars : Nat → R) (t : Term) (ys : List Term) :
    evalPolyList vars (ys.map (termMul t)) =
      termEval vars t * evalPolyList vars ys := by
  induction ys with
  | nil => simp [evalPolyList]
  | cons u us ih =>
      simp only [List.map_cons, evalPolyList]
      rw [termEval_mul, ih]
      ring

lemma evalPolyList_mulTerms {R : Type} [CommRing R]
    (vars : Nat → R) (xs ys : List Term) :
    evalPolyList vars (mulTerms xs ys) =
      evalPolyList vars xs * evalPolyList vars ys := by
  induction xs with
  | nil => simp [mulTerms, evalPolyList]
  | cons t ts ih =>
      change evalPolyList vars
          (ys.map (termMul t) ++ mulTerms ts ys) =
        evalPolyList vars (t :: ts) * evalPolyList vars ys
      rw [evalPolyList_append, evalPolyList_map_mulTerm, ih]
      simp only [evalPolyList]
      ring

lemma termEval_one {R : Type} [CommRing R] (vars : Nat → R) :
    termEval vars ⟨0, 1⟩ = 1 := by
  simp [termEval]


lemma evalPolyList_map_neg {R : Type} [CommRing R]
    (vars : Nat → R) (ts : List Term) :
    evalPolyList vars (ts.map termNeg) = -evalPolyList vars ts := by
  induction ts with
  | nil => simp [evalPolyList]
  | cons t ts ih =>
      simp only [List.map_cons, evalPolyList]
      rw [termEval_neg, ih]
      ring

lemma evalPolyList_expandPow {R : Type} [CommRing R]
    (ctx : Context R) (e : Expr) (vars : Nat → R)
    (he : evalPolyList vars (expand e) = e.denote ctx) (n : Nat) :
    evalPolyList vars (expandPow e n) = (e.denote ctx) ^ n := by
  induction n with
  | zero => simp [expandPow, evalPolyList, termEval_one]
  | succ n ih =>
      simp only [expandPow]
      rw [evalPolyList_mulTerms, ih, he]
      ring

theorem eval_expand {R : Type} [CommRing R]
    (ctx : Context R) (e : Expr) :
    evalPolyList (fun i => Var.denote ctx i) (expand e) = e.denote ctx := by
  induction e with
  | num k =>
      simp [expand, evalPolyList, termEval, Expr.denote, denoteInt_eq]
  | natCast k =>
      simp [expand, evalPolyList, termEval, Expr.denote]
  | intCast k =>
      simp [expand, evalPolyList, termEval, Expr.denote]
  | var i =>
      simp [expand, evalPolyList, termEval, Expr.denote,
        Finsupp.prod_single_index]
  | neg e ih =>
      simp only [expand, evalPolyList]
      rw [evalPolyList_map_neg, ih]
      simp [Expr.denote]
  | add e₁ e₂ ih₁ ih₂ =>
      simp only [expand, evalPolyList_append]
      rw [ih₁, ih₂]
      simp [Expr.denote]
  | sub e₁ e₂ ih₁ ih₂ =>
      simp only [expand, evalPolyList_append]
      rw [evalPolyList_map_neg, ih₁, ih₂]
      have hsub : Expr.denote ctx (.sub e₁ e₂) =
          Expr.denote ctx e₁ - Expr.denote ctx e₂ := by rfl
      rw [hsub]
      ring
  | mul e₁ e₂ ih₁ ih₂ =>
      simp only [expand]
      rw [evalPolyList_mulTerms, ih₁, ih₂]
      simp [Expr.denote]
  | pow e n ih =>
      simpa [expand, Expr.denote] using
        (evalPolyList_expandPow ctx e (fun i => Var.denote ctx i) ih n)

end
end SPR.N6.Tail.TermEncoding
