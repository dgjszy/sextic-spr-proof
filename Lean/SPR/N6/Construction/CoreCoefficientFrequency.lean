import SPR.N6.Construction.OuterCorePolynomial
import SPR.N6.Algebra.Tail.OuterCoreFrequency

/-! Frequency continuity of every actual core coefficient and closed low endpoint recovery. -/
namespace SPR.N6
noncomputable section
open MvPolynomial

namespace OuterParameters

/-- The core is quadratic in its frequency argument, with no divisions. -/
theorem corePolynomial_frequency_quadratic (p : OuterParameters) (i : Bool) (m t : ℝ) :
    MvPolynomial.C (2 : ℝ) * p.corePolynomial i m t =
      MvPolynomial.C (2 : ℝ) * p.corePolynomial i m 0 +
        MvPolynomial.C t *
          (p.corePolynomial i m 1 - p.corePolynomial i m (-1)) +
        MvPolynomial.C (t^2) *
          (p.corePolynomial i m 1 + p.corePolynomial i m (-1) -
            MvPolynomial.C (2 : ℝ) * p.corePolynomial i m 0) := by
  classical
  unfold corePolynomial Tail.OuterHomogeneous.core
  cases i <;>
    simp only [Tail.OuterHomogeneous.zero, Bool.false_eq_true, ite_false, ite_true,
      MvPolynomial.C_0, MvPolynomial.C_1, MvPolynomial.C_add,
      MvPolynomial.C_mul, MvPolynomial.C_pow, map_add, map_sub, map_mul,
      map_pow, map_neg, map_zero, map_one, map_ofNat]
  all_goals ring

/-- Every original coefficient is continuous in the same frequency parameter. -/
theorem continuous_corePolynomial_coeff (p : OuterParameters) (i : Bool) (m : ℝ)
    (d : Fin 3 →₀ ℕ) :
    Continuous (fun t : ℝ => coeff d (p.corePolynomial i m t)) := by
  have hpoly := fun t : ℝ => corePolynomial_frequency_quadratic p i m t
  have hform : ∀ t : ℝ,
      coeff d (p.corePolynomial i m t) =
        coeff d (p.corePolynomial i m 0) +
          (t / 2) * (coeff d (p.corePolynomial i m 1) -
            coeff d (p.corePolynomial i m (-1))) +
          (t^2 / 2) *
            (coeff d (p.corePolynomial i m 1) + coeff d (p.corePolynomial i m (-1)) -
              2 * coeff d (p.corePolynomial i m 0)) := by
    intro t
    have hcoeff := congrArg (fun q : MvPolynomial (Fin 3) ℝ => coeff d q) (hpoly t)
    simp only [coeff_add, coeff_sub, coeff_C_mul] at hcoeff
    nlinarith only [hcoeff]
  have hc : Continuous (fun t : ℝ =>
      coeff d (p.corePolynomial i m 0) +
        (t / 2) * (coeff d (p.corePolynomial i m 1) -
          coeff d (p.corePolynomial i m (-1))) +
        (t^2 / 2) * (coeff d (p.corePolynomial i m 1) +
          coeff d (p.corePolynomial i m (-1)) - 2 * coeff d (p.corePolynomial i m 0))) := by
    fun_prop
  exact hc.congr (fun t => (hform t).symm)

/-- Finite compactification covers the closed low interval coefficient by coefficient. -/
theorem low_coeff_of_compactification (p : OuterParameters) (m : ℝ)
    (d : Fin 3 →₀ ℕ) (hB : 0 < p.B)
    (h : ∀ v : ℝ, 0 ≤ v →
      0 ≤ coeff d (p.corePolynomial true m (p.B*v/(1+v)))) :
    ∀ t : ℝ, 0 ≤ t → t ≤ p.B → 0 ≤ coeff d (p.corePolynomial true m t) := by
  have hc : IsClosed {t : ℝ | 0 ≤ coeff d (p.corePolynomial true m t)} :=
    isClosed_Ici.preimage (p.continuous_corePolynomial_coeff true m d)
  have hs : Set.Ico (0 : ℝ) p.B ⊆ {t : ℝ | 0 ≤ coeff d (p.corePolynomial true m t)} := by
    intro t ht
    have hden : 0 < p.B-t := sub_pos.mpr ht.2
    let v := t/(p.B-t)
    have hv : 0 ≤ v := div_nonneg ht.1 hden.le
    have hh := h v hv
    have hid : p.B*v/(1+v) = t := by
      dsimp [v]
      field_simp [ne_of_gt hB, ne_of_gt hden]
      <;> ring
    rwa [hid] at hh
  have hh := closure_minimal hs hc
  rw [closure_Ico (ne_of_lt hB)] at hh
  exact fun t ht0 htB => hh ⟨ht0,htB⟩

end OuterParameters
end
end SPR.N6
