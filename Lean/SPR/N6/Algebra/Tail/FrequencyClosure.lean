import SPR.N6.Algebra.Tail.RootSource
import Mathlib.Topology.Order.DenselyOrdered

/-!
# Recovering the closed low-frequency endpoint

Nonnegativity on a half-open interval extends to its closed endpoint for the
actual denominator-free source. This uses continuity of the displayed source;
no finite sampling statement is used.
-/
namespace SPR.N6.Tail.RootSource
noncomputable section

/-- The complete source is continuous in its frequency argument. -/
@[fun_prop] theorem continuous_source (i : Bool) (a A B b c C m : ℝ) :
    Continuous (source i a A B b c C m) := by
  change Continuous (fun t => source i a A B b c C m t)
  cases i <;>
    simp only [source,residual,zero,LowerZero.q0,LowerZero.q1,
      Bool.false_eq_true,ite_false,ite_true] <;> fun_prop

/-- Clearing the ratio endpoint preserves continuity in frequency. -/
theorem continuous_endpoint (i : Bool) (a A B b c C : ℝ) :
    Continuous (endpoint i a A B b c C) := by
  unfold endpoint
  fun_prop

/-- All points of the closed interval follow from its half-open interior. -/
theorem endpoint_nonnegative_closed (i : Bool) (a A B b c C : ℝ) (hB : 0 < B)
    (h : ∀ t : ℝ, 0 ≤ t → t < B → 0 ≤ endpoint i a A B b c C t) :
    ∀ t : ℝ, 0 ≤ t → t ≤ B → 0 ≤ endpoint i a A B b c C t := by
  have hc : IsClosed {t : ℝ | 0 ≤ endpoint i a A B b c C t} :=
    isClosed_Ici.preimage (continuous_endpoint i a A B b c C)
  have hs : Set.Ico (0 : ℝ) B ⊆ {t : ℝ | 0 ≤ endpoint i a A B b c C t} :=
    fun t ht => h t ht.1 ht.2
  have hh := closure_minimal hs hc
  rw [closure_Ico (ne_of_lt hB)] at hh
  exact fun t ht0 htB => hh ⟨ht0,htB⟩

end
end SPR.N6.Tail.RootSource
