import SPR.N6.Algebra.Tail.OuterCore
import SPR.N6.Algebra.Tail.CoreFrequency

/-! Closed frequency coverage for the entire homogeneous quadratic core. -/
namespace SPR.N6.Tail.OuterHomogeneous
noncomputable section

@[fun_prop] theorem continuous_core (i : Bool) (s aN A B b c CN m : ℝ) :
    Continuous (core i s aN A B b c CN m) := by
  change Continuous (fun t => core i s aN A B b c CN m t)
  cases i <;> simp only [core,zero,Bool.false_eq_true,ite_false,ite_true] <;> fun_prop

/-- Compactification includes the original right endpoint by continuity. -/
theorem low_core_of_compactification (s aN A B b c CN m : ℝ) (hB : 0 < B)
    (h : ∀ v : ℝ, 0 ≤ v → 0 ≤ core true s aN A B b c CN m (B*v/(1+v))) :
    ∀ t : ℝ, 0 ≤ t → t ≤ B → 0 ≤ core true s aN A B b c CN m t := by
  have hc : IsClosed {t : ℝ | 0 ≤ core true s aN A B b c CN m t} :=
    isClosed_Ici.preimage (continuous_core true s aN A B b c CN m)
  have hs : Set.Ico (0 : ℝ) B ⊆ {t : ℝ | 0 ≤ core true s aN A B b c CN m t} := by
    intro t ht
    have hden : 0 < B-t := sub_pos.mpr ht.2
    let v := t/(B-t)
    have hv : 0 ≤ v := div_nonneg ht.1 (sub_pos.mpr ht.2).le
    have hd : 0 < 1+v := by linarith only [hv]
    have hh := h v hv
    have hid : B*v/(1+v) = t := by
      dsimp [v]
      field_simp [ne_of_gt hB,ne_of_gt hden]
      <;> ring
    rwa [hid] at hh
  have hh := closure_minimal hs hc
  rw [closure_Ico (ne_of_lt hB)] at hh
  exact fun t ht0 htB => hh ⟨ht0,htB⟩
end
end SPR.N6.Tail.OuterHomogeneous
