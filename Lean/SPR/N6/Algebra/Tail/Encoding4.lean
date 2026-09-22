import SPR.N6.Algebra.Tail.NatEncoding

/-! Four-variable mixed-radix encoding, with symbolic lower-digit bounds.
Only monomial exponents are bounded; real parameters are unrestricted. -/
namespace SPR.N6.Tail.Encoding4
open SPR.N6.Tail.TermEncoding
open scoped BigOperators

/-- Three lower-digit radices; the leading digit need not be bounded. -/
def code (d1 d2 d3 : ℕ) (m : E) : ℕ :=
  ((m 0 * (d1 + 1) + m 1) * (d2 + 1) + m 2) * (d3 + 1) + m 3

/-- Recover a remainder and quotient from a bounded mixed-radix digit. -/
lemma digit_unique {a b c d r : ℕ} (hr : 0 < r) (hb : b < r) (hd : d < r)
    (h : a * r + b = c * r + d) : a = c ∧ b = d := by
  have hbd : b = d := by
    have hh := congrArg (fun k => k % r) h
    simpa [Nat.add_mod, Nat.mod_eq_of_lt hb, Nat.mod_eq_of_lt hd] using hh
  constructor
  · have hh : a * r = c * r := Nat.add_right_cancel (h.trans (by rw [hbd]))
    exact Nat.eq_of_mul_eq_mul_right hr hh
  · exact hbd

/-- The code is injective on four-variable monomials with the specified low bounds. -/
theorem code_injective (d1 d2 d3 : ℕ) {m n : E}
    (hm1 : m 1 ≤ d1) (hm2 : m 2 ≤ d2) (hm3 : m 3 ≤ d3)
    (hn1 : n 1 ≤ d1) (hn2 : n 2 ≤ d2) (hn3 : n 3 ≤ d3)
    (hms : m.support ⊆ ({0, 1, 2, 3} : Finset ℕ))
    (hns : n.support ⊆ ({0, 1, 2, 3} : Finset ℕ))
    (hc : code d1 d2 d3 m = code d1 d2 d3 n) : m = n := by
  obtain ⟨h2, h3⟩ := digit_unique (Nat.succ_pos d3)
    (Nat.lt_succ_of_le hm3) (Nat.lt_succ_of_le hn3) hc
  obtain ⟨h1, h2⟩ := digit_unique (Nat.succ_pos d2)
    (Nat.lt_succ_of_le hm2) (Nat.lt_succ_of_le hn2) h2
  obtain ⟨h0, h1⟩ := digit_unique (Nat.succ_pos d1)
    (Nat.lt_succ_of_le hm1) (Nat.lt_succ_of_le hn1) h1
  apply Finsupp.ext
  intro i
  by_cases hi0 : i = 0
  · subst i; exact h0
  by_cases hi1 : i = 1
  · subst i; exact h1
  by_cases hi2 : i = 2
  · subst i; exact h2
  by_cases hi3 : i = 3
  · subst i; exact h3
  have hmi : m i = 0 := by
    by_contra hz
    have hi := hms (Finsupp.mem_support_iff.mpr hz)
    simpa [hi0, hi1, hi2, hi3] using hi
  have hni : n i = 0 := by
    by_contra hz
    have hi := hns (Finsupp.mem_support_iff.mpr hz)
    simpa [hi0, hi1, hi2, hi3] using hi
  exact hmi.trans hni.symm

/-- Integer substitution for the four variables, using the same radices as `code`. -/
def vars (B d1 d2 d3 : ℕ) : ℕ → ℤ
  | 0 => (B : ℤ) ^ ((d1 + 1) * (d2 + 1) * (d3 + 1))
  | 1 => (B : ℤ) ^ ((d2 + 1) * (d3 + 1))
  | 2 => (B : ℤ) ^ (d3 + 1)
  | 3 => (B : ℤ)
  | _ => 1

/-- The substitution agrees with the monomial code on its entire allowed support. -/
lemma vars_power_code (B d1 d2 d3 : ℕ) (m : E)
    (hs : m.support ⊆ ({0, 1, 2, 3} : Finset ℕ)) :
    m.prod (fun i n => vars B d1 d2 d3 i ^ n) =
      (B : ℤ) ^ code d1 d2 d3 m := by
  rw [Finsupp.prod_of_support_subset m hs
    (fun i n => vars B d1 d2 d3 i ^ n) (by intro; simp)]
  simp [vars, ← pow_mul, ← pow_add]
  congr 1
  simp only [code]
  ring

end SPR.N6.Tail.Encoding4
