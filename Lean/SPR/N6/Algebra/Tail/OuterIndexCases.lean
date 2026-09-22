import SPR.N6.Algebra.Tail.OuterIndices

/-! An explicit exhaustive case theorem for the 21 homogeneous outer coefficients.
These are coefficient positions, not contact-branch words. -/
namespace SPR.N6.Tail.OuterIndices

/-- Every formal degree-five coefficient position is one of the displayed triples. -/
theorem cases_of_mem {d : Fin 3 →₀ ℕ} (hd : d ∈ indices) :
    d = exponent 0 0 5 ∨
    d = exponent 0 1 4 ∨
    d = exponent 0 2 3 ∨
    d = exponent 0 3 2 ∨
    d = exponent 0 4 1 ∨
    d = exponent 0 5 0 ∨
    d = exponent 1 0 4 ∨
    d = exponent 1 1 3 ∨
    d = exponent 1 2 2 ∨
    d = exponent 1 3 1 ∨
    d = exponent 1 4 0 ∨
    d = exponent 2 0 3 ∨
    d = exponent 2 1 2 ∨
    d = exponent 2 2 1 ∨
    d = exponent 2 3 0 ∨
    d = exponent 3 0 2 ∨
    d = exponent 3 1 1 ∨
    d = exponent 3 2 0 ∨
    d = exponent 4 0 1 ∨
    d = exponent 4 1 0 ∨
    d = exponent 5 0 0 := by
  classical
  rw [indices, Finset.mem_image] at hd
  obtain ⟨⟨i, j⟩, hij, rfl⟩ := hd
  have hle : i + j ≤ 5 := (Finset.mem_filter.mp hij).2
  have hi : i < 6 := by omega
  have hj : j < 6 := by omega
  interval_cases i <;> interval_cases j <;> norm_num at *

end SPR.N6.Tail.OuterIndices
