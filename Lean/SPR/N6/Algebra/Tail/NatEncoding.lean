import SPR.N6.Algebra.Tail.TermEncoding
import Mathlib.Algebra.Polynomial.Inductions
import Mathlib.Algebra.Polynomial.Div
import Mathlib.Data.Int.Basic
import Mathlib.Tactic

/-! Kernel-checked integer-base encoding for sparse four-parameter identities.
The list expansion is a finite semantic bridge; the base-root argument supplies
injectivity without asking a giant real-ring normalization to run. -/
namespace SPR.N6.Tail.NatEncoding

open Polynomial
open scoped BigOperators
open SPR.N6.Tail.TermEncoding

abbrev E := Nat →₀ ℕ
abbrev M := MvPolynomial Nat ℤ

/-- Every coefficient of an integer polynomial is bounded by the base. -/
def BoundedCoeffs (B : ℕ) (p : Polynomial ℤ) : Prop :=
  ∀ n : ℕ, (p.coeff n).natAbs < B

/-- A vanishing integer polynomial whose coefficients fit below the base is zero. -/
theorem polynomial_eq_zero_of_eval_natCast_eq_zero
    {B : ℕ} (hB : 0 < B) {p : Polynomial ℤ}
    (hroot : p.IsRoot (B : ℤ))
    (hbound : BoundedCoeffs B p) : p = 0 := by
  let P : Polynomial ℤ → Prop := fun q =>
    q.IsRoot (B : ℤ) → BoundedCoeffs B q → q = 0
  have hP : ∀ q : Polynomial ℤ, P q := by
    intro q
    induction q using Polynomial.recOnHorner with
    | M0 =>
        intro _ _
        rfl
    | MC p a hp0 ha ih =>
        intro hq hboundq
        have hdvd : (B : ℤ) ∣ a := by
          have hdvd' := hq.dvd_coeff_zero
          simpa [P, hp0] using hdvd'
        have hlt : a.natAbs < ((B : ℤ).natAbs) := by
          simpa [P, hp0] using hboundq 0
        have ha0 : a = 0 := Int.eq_zero_of_dvd_of_natAbs_lt_natAbs hdvd hlt
        exact (ha ha0).elim
    | MX p hp ih =>
        intro hq hboundq
        have hrootp : p.IsRoot (B : ℤ) := by
          rw [Polynomial.IsRoot, Polynomial.eval_mul, Polynomial.eval_X] at hq
          exact (mul_eq_zero.mp hq).resolve_right (by exact_mod_cast hB.ne')
        have hboundp : BoundedCoeffs B p := by
          intro n
          simpa [P] using hboundq (n + 1)
        have hp0' : p = 0 := ih hrootp hboundp
        simp [hp0']
  exact hP p hroot hbound

noncomputable def collapse (code : E → ℕ) (p : M) : Polynomial ℤ :=
  ∑ m ∈ p.support, Polynomial.C (p.coeff m) * Polynomial.X ^ code m

lemma collapse_eval (code : E → ℕ) (p : M) (B : ℕ) :
    Polynomial.eval (B : ℤ) (collapse code p) =
      ∑ m ∈ p.support, p.coeff m * (B : ℤ) ^ code m := by
  classical
  unfold collapse
  induction p.support using Finset.induction_on with
  | empty => simp
  | @insert m s hm ih =>
      rw [Finset.sum_insert hm, Finset.sum_insert hm]
      rw [Polynomial.eval_add, Polynomial.eval_mul, Polynomial.eval_C,
        Polynomial.eval_pow, Polynomial.eval_X]
      rw [ih]

lemma collapse_coeff (code : E → ℕ) (p : M) (n : ℕ) :
    (collapse code p).coeff n =
      ∑ m ∈ p.support, if code m = n then p.coeff m else 0 := by
  classical
  unfold collapse
  induction p.support using Finset.induction_on with
  | empty => simp
  | @insert m s hm ih =>
      rw [Finset.sum_insert hm, Finset.sum_insert hm]
      rw [Polynomial.coeff_add, Polynomial.coeff_C_mul]
      simp [Polynomial.coeff_X_pow, eq_comm]

lemma collapse_coeff_natAbs_le_mass (code : E → ℕ) (p : M) (n : ℕ) :
    ((collapse code p).coeff n).natAbs ≤ coefficientMass p := by
  classical
  rw [collapse_coeff]
  calc
    (∑ m ∈ p.support, if code m = n then p.coeff m else 0).natAbs ≤
        ∑ m ∈ p.support, (if code m = n then p.coeff m else 0).natAbs :=
      Int.natAbs_sum_le _ _
    _ ≤ ∑ m ∈ p.support, (p.coeff m).natAbs := by
      exact Finset.sum_le_sum fun m hm => by split <;> simp
    _ = coefficientMass p := rfl

lemma collapse_boundedCoeffs {B : ℕ} (code : E → ℕ) (p : M)
    (hMass : coefficientMass p < B) : BoundedCoeffs B (collapse code p) := by
  intro n
  exact lt_of_le_of_lt (collapse_coeff_natAbs_le_mass code p n) hMass

lemma collapse_eq_zero_of_eval_eq_zero {B : ℕ} (hB : 0 < B)
    (code : E → ℕ) (p : M) (hMass : coefficientMass p < B)
    (hEval : ∑ m ∈ p.support, p.coeff m * (B : ℤ) ^ code m = 0) :
    collapse code p = 0 := by
  apply polynomial_eq_zero_of_eval_natCast_eq_zero hB
  · rw [Polynomial.IsRoot, collapse_eval]
    exact hEval
  · exact collapse_boundedCoeffs code p hMass

lemma eq_zero_of_collapse_eq_zero (code : E → ℕ) (p : M)
    (hinj : ∀ ⦃m n : E⦄, m ∈ p.support → n ∈ p.support →
      code m = code n → m = n) (hzero : collapse code p = 0) : p = 0 := by
  classical
  ext m
  by_cases hm : m ∈ p.support
  · have hcoeff := congrArg (fun q : Polynomial ℤ => q.coeff (code m)) hzero
    have hcoeff' : (collapse code p).coeff (code m) = 0 := by simpa using hcoeff
    rw [collapse_coeff] at hcoeff'
    have hsum :
        (∑ n ∈ p.support, if code n = code m then p.coeff n else 0) = p.coeff m := by
      have hs := Finset.sum_eq_single_of_mem
        (s := p.support) (f := fun n => if code n = code m then p.coeff n else 0)
        m hm (fun n hn hnm => by
        have hcode : code n ≠ code m := by
          intro heq
          exact hnm (hinj hn hm heq)
        change (if code n = code m then p.coeff n else 0) = 0
        rw [if_neg hcode])
      simpa using hs
    rw [hsum] at hcoeff'
    simpa using hcoeff'
  · exact MvPolynomial.notMem_support_iff.mp hm

lemma eq_of_encoded_difference_eq_zero {B : ℕ} (hB : 0 < B)
    (code : E → ℕ) (p q : M)
    (hMass : coefficientMass (p - q) < B)
    (hinj : ∀ ⦃m n : E⦄, m ∈ (p - q).support → n ∈ (p - q).support →
      code m = code n → m = n)
    (hEval : ∑ m ∈ (p - q).support, (p - q).coeff m *
      (B : ℤ) ^ code m = 0) : p = q := by
  have hcollapse : collapse code (p - q) = 0 :=
    collapse_eq_zero_of_eval_eq_zero hB code (p - q) hMass hEval
  have hsub : p - q = 0 := eq_zero_of_collapse_eq_zero code (p - q) hinj hcollapse
  exact sub_eq_zero.mp hsub

lemma eval₂_eq_encoded_sum (code : E → ℕ) (B : ℕ) (vars : Nat → ℤ)
    (hmon : ∀ m : E, m.prod (fun i n => vars i ^ n) =
      (B : ℤ) ^ code m) (p : M) :
    p.eval₂ (Int.castRingHom ℤ) vars =
      ∑ m ∈ p.support, p.coeff m * (B : ℤ) ^ code m := by
  classical
  rw [MvPolynomial.eval₂_eq (Int.castRingHom ℤ) vars p]
  apply Finset.sum_congr rfl
  intro m hm
  change (Int.castRingHom ℤ) (p.coeff m) *
      m.prod (fun i n => vars i ^ n) = p.coeff m * (B : ℤ) ^ code m
  rw [hmon]
  simp

lemma coefficientMass_neg_eq (p : M) :
    coefficientMass (-p) = coefficientMass p := by
  classical
  unfold coefficientMass
  have hs : (-p).support = p.support := by
    ext m
    simp [MvPolynomial.mem_support_iff]
  rw [hs]
  congr 1
  funext m
  simp [MvPolynomial.coeff_neg]

lemma coefficientMass_sub_le (p q : M) :
    coefficientMass (p - q) ≤ coefficientMass p + coefficientMass q := by
  calc
    coefficientMass (p - q) = coefficientMass (p + (-q)) := by rw [sub_eq_add_neg]
    _ ≤ coefficientMass p + coefficientMass (-q) := coefficientMass_add_le _ _
    _ = coefficientMass p + coefficientMass q := by rw [coefficientMass_neg_eq]

lemma coefficientMass_polyList_sub_le (xs ys : List Term) :
    coefficientMass (polyList xs - polyList ys) ≤ termMass xs + termMass ys := by
  calc
    coefficientMass (polyList xs - polyList ys) ≤
        coefficientMass (polyList xs) + coefficientMass (polyList ys) :=
      coefficientMass_sub_le _ _
    _ ≤ termMass xs + termMass ys :=
      Nat.add_le_add (coefficientMass_polyList_le xs)
        (coefficientMass_polyList_le ys)

/-- Mixed-radix code for the low `(4,1,0)` variable order `(e,f,g,v)`. -/
def codeLow410 (m : E) : ℕ :=
  663 * m 0 + 39 * m 1 + 3 * m 2 + m 3

def low410Vars (B : ℕ) : Nat → ℤ
  | 0 => (B : ℤ) ^ 663
  | 1 => (B : ℤ) ^ 39
  | 2 => (B : ℤ) ^ 3
  | 3 => (B : ℤ)
  | _ => 1

lemma low410Vars_power_code (B : ℕ) (m : E)
    (hs : m.support ⊆ ({0, 1, 2, 3} : Finset Nat)) :
    m.prod (fun i n => low410Vars B i ^ n) =
      (B : ℤ) ^ codeLow410 m := by
  rw [Finsupp.prod_of_support_subset m hs
    (fun i n => low410Vars B i ^ n) (by intro; simp)]
  simp [low410Vars, ← pow_mul, codeLow410,
    Finset.prod_insert, Finset.prod_singleton]
  ring_nf

lemma codeLow410_injective
    {m n : E}
    (hm0 : m 0 ≤ 15) (hm1 : m 1 ≤ 16) (hm2 : m 2 ≤ 12) (hm3 : m 3 ≤ 2)
    (hn0 : n 0 ≤ 15) (hn1 : n 1 ≤ 16) (hn2 : n 2 ≤ 12) (hn3 : n 3 ≤ 2)
    (hms : m.support ⊆ ({0, 1, 2, 3} : Finset Nat))
    (hns : n.support ⊆ ({0, 1, 2, 3} : Finset Nat))
    (hcode : codeLow410 m = codeLow410 n) : m = n := by
  simp [codeLow410] at hcode
  have h0 : m 0 = n 0 := by omega
  have h1 : m 1 = n 1 := by omega
  have h2 : m 2 = n 2 := by omega
  have h3 : m 3 = n 3 := by omega
  apply Finsupp.ext
  intro i
  by_cases hi0 : i = 0
  · subst i; simpa using h0
  by_cases hi1 : i = 1
  · subst i; simpa using h1
  by_cases hi2 : i = 2
  · subst i; simpa using h2
  by_cases hi3 : i = 3
  · subst i; simpa using h3
  have hmi : m i = 0 := by
    by_contra hz
    have hi := hms (Finsupp.mem_support_iff.mpr hz)
    simpa [hi0, hi1, hi2, hi3] using hi
  have hni : n i = 0 := by
    by_contra hz
    have hi := hns (Finsupp.mem_support_iff.mpr hz)
    simpa [hi0, hi1, hi2, hi3] using hi
  exact hmi.trans hni.symm

end SPR.N6.Tail.NatEncoding
