import SPR.N6.Algebra.Tail.FrequencyHomogeneous
import SPR.N6.Algebra.Tail.QuadraticCore
import Mathlib.Topology.Order.DenselyOrdered

/-!
# Exact quadratic frequency clearing for the smaller core

The low compactification uses only the second power of the positive denominator.
All coefficients and the endpoint t=B are retained. These identities connect
finite polynomial certificates on v>=0 to the whole closed required interval.
-/
namespace SPR.N6.Tail.RootSource
noncomputable section

/-- The entire homogeneous frequency core, including its baseline square. -/
def coreFrequency (i : Bool) (a A B b c C m n d : ℝ) : ℝ :=
  den1 a b c*den2 A B C*weight a A B b c C m*
      (n-(if i then c else A)*d)^2+
    mixture a A B b c C*zeroFrequency i a A B b c C m n d

/-- The correct denominator power is two because the retained core is quadratic. -/
theorem coreFrequency_eq (i : Bool) (a A B b c C m n d : ℝ) (hd : d ≠ 0) :
    coreFrequency i a A B b c C m n d = d^2*core i a A B b c C m (n/d) := by
  cases i <;> simp only [coreFrequency,core,zeroFrequency,zero,
    LowerZero.q0,LowerZero.q1,Bool.false_eq_true,ite_false,ite_true] <;> field_simp

/-- The core is continuous in the original real frequency-squared variable. -/
@[fun_prop] theorem continuous_core (i : Bool) (a A B b c C m : ℝ) :
    Continuous (core i a A B b c C m) := by
  change Continuous (fun t => core i a A B b c C m t)
  cases i <;> simp only [core,zero,LowerZero.q0,LowerZero.q1,
    Bool.false_eq_true,ite_false,ite_true] <;> fun_prop

/-- No closed endpoint is omitted by the half-open compactification. -/
theorem core_nonnegative_closed (i : Bool) (a A B b c C m : ℝ) (hB : 0 < B)
    (h : ∀ t : ℝ, 0 ≤ t → t < B → 0 ≤ core i a A B b c C m t) :
    ∀ t : ℝ, 0 ≤ t → t ≤ B → 0 ≤ core i a A B b c C m t := by
  have hc : IsClosed {t : ℝ | 0 ≤ core i a A B b c C m t} :=
    isClosed_Ici.preimage (continuous_core i a A B b c C m)
  have hs : Set.Ico (0 : ℝ) B ⊆ {t : ℝ | 0 ≤ core i a A B b c C m t} :=
    fun t ht => h t ht.1 ht.2
  have hh := closure_minimal hs hc
  rw [closure_Ico (ne_of_lt hB)] at hh
  exact fun t ht0 htB => hh ⟨ht0,htB⟩

/-- A nonnegative polynomial on v>=0 covers the actual closed low-frequency interval. -/
theorem low_core_of_compactification (a A B b c C m : ℝ) (hB : 0 < B)
    (h : ∀ v : ℝ, 0 ≤ v → 0 ≤ coreFrequency true a A B b c C m (B*v) (1+v)) :
    ∀ t : ℝ, 0 ≤ t → t ≤ B → 0 ≤ core true a A B b c C m t := by
  apply core_nonnegative_closed true a A B b c C m hB
  intro t ht0 htB
  let v := t/(B-t)
  have hden : 0 < B-t := sub_pos.mpr htB
  have hv : 0 ≤ v := div_nonneg ht0 hden.le
  have hd : 0 < 1+v := by linarith only [hv]
  have hh := h v hv
  rw [coreFrequency_eq _ _ _ _ _ _ _ _ _ _ (ne_of_gt hd)] at hh
  have hid : B*v/(1+v) = t := by
    dsimp [v]
    field_simp
    ring
  rw [hid] at hh
  exact (mul_nonneg_iff_of_pos_left (sq_pos_of_pos hd)).mp hh

end
end SPR.N6.Tail.RootSource
