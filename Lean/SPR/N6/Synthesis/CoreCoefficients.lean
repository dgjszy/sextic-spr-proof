import SPR.N6.Construction.CoreFirstLowCoefficient
import SPR.N6.Synthesis.FixedEven

/-!
# Explicit algebraic interface remaining before unrestricted sixth-order synthesis

Only forty upper-ratio outer coefficients remain: twenty on each frequency
interval. The first coefficient on each interval has already been proved.
These assumptions concern explicit polynomial coefficients for arbitrary
positive inner roots and gaps; they do not assume numerator existence.
-/
namespace SPR.N6
noncomputable section
open MvPolynomial

/-- All unproved coefficient signs, with full real-frequency quantifiers retained. -/
structure RemainingCoreCoefficients : Prop where
  high : ∀ p : OuterParameters, 0 < p.A → 0 < p.e → 0 < p.f → 0 < p.g →
    ∀ t : ℝ, p.b ≤ t → ∀ d ∈ Tail.OuterIndices.indices,
      d ≠ Tail.OuterIndices.exponent 5 0 0 →
      0 ≤ coeff d (p.corePolynomial false ((p.e+p.f+p.g)/p.f) t)
  low : ∀ p : OuterParameters, 0 < p.A → 0 < p.e → 0 < p.f → 0 < p.g →
    ∀ t : ℝ, 0 ≤ t → t ≤ p.B → ∀ d ∈ Tail.OuterIndices.indices,
      d ≠ Tail.OuterIndices.exponent 5 0 0 →
      0 ≤ coeff d (p.corePolynomial true ((p.e+p.f+p.g)/p.f) t)

/-- The universal algebraic certificate, if supplied, proves the original statement.
Its existence is not asserted here. Degenerate boxes remain in the conclusion. -/
theorem RemainingCoreCoefficients.synthesis (h : RemainingCoreCoefficients) :
    RobustSPRStatement := by
  intro B hB
  by_cases hw : B.EvenVarying
  · obtain ⟨q⟩ := B.even_geometry hB hw
    have hA : 0 < q.outerParameters.A := lt_trans q.a_pos q.a_lt_A
    have he : 0 < q.outerParameters.e := sub_pos.mpr q.A_lt_B
    have hf : 0 < q.outerParameters.f := sub_pos.mpr q.B_lt_b
    have hg : 0 < q.outerParameters.g := sub_pos.mpr q.b_lt_c
    have hB' : q.outerParameters.B = q.B := by simp [EvenGeometry.outerParameters,OuterParameters.B]
    have hb : q.outerParameters.b = q.b := by
      simp [EvenGeometry.outerParameters,OuterParameters.b,OuterParameters.B]
    have hm : (q.outerParameters.e+q.outerParameters.f+q.outerParameters.g)/
        q.outerParameters.f = (q.c-q.A)/(q.b-q.B) := by
      simp only [EvenGeometry.outerParameters]
      congr 1
      ring
    apply q.synthesis_of_twenty_core_coefficients hB
    · intro t ht d hd hne
      have hh := h.high q.outerParameters hA he hf hg t (by rwa [hb]) d hd hne
      rwa [hm] at hh
    · intro t ht0 htB d hd hne
      have hh := h.low q.outerParameters hA he hf hg t ht0 (by rwa [hB']) d hd hne
      rwa [hm] at hh
  · have h2 := le_antisymm B.h2 (le_of_not_gt (fun h2 => hw (Or.inl h2)))
    have h4 := le_antisymm B.h4 (le_of_not_gt (fun h4 => hw (Or.inr (Or.inl h4))))
    have h6 := le_antisymm B.h6 (le_of_not_gt (fun h6 => hw (Or.inr (Or.inr h6))))
    exact B.fixed_even_synthesis hB h2 h4 h6
end
end SPR.N6
