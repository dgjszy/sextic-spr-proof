import SPR.N6.Preliminaries.OddEnvelope

/-!
# Strict lifting of one weak envelope witness to the original box

This is an explicitly conditional bridge, not a synthesis assertion. Its input
is one fixed cubic/quadratic pair, four half-axis weak inequalities, and the
strict lower inequalities where the odd numerator vanishes. The output has
exact degree six and satisfies the original all-box, all-frequency condition.
-/
namespace SPR.N6
noncomputable section

/-- One cubic even component and one quadratic odd component, in ascending order. -/
structure ParityNumerator where
  f0 : ℝ
  f1 : ℝ
  f2 : ℝ
  f3 : ℝ
  k0 : ℝ
  k1 : ℝ
  k2 : ℝ

namespace ParityNumerator

def F (n : ParityNumerator) (t : ℝ) : ℝ := n.f3 * t ^ 3 + n.f2 * t ^ 2 + n.f1 * t + n.f0

def K (n : ParityNumerator) (t : ℝ) : ℝ := n.k2 * t ^ 2 + n.k1 * t + n.k0

/-- β(s)=h F(-s²)+s K(-s²), with no normalization that changes degree. -/
def coefficients (n : ParityNumerator) (h : ℝ) : Vec7 :=
  ![-h * n.f3, n.k2, h * n.f2, -n.k1, -h * n.f1, n.k0, h * n.f0]

theorem coefficients_even (n : ParityNumerator) (h t : ℝ) :
    numeratorEven (n.coefficients h) t = h * n.F t := by
  simp [coefficients, numeratorEven, F]
  ring

theorem coefficients_odd (n : ParityNumerator) (h t : ℝ) :
    numeratorOdd (n.coefficients h) t = n.K t := by
  simp [coefficients, numeratorOdd, K]

end ParityNumerator

/-- Four weak scalar corners become strictly positive inside the open odd interval.
When the odd multiplier is zero, strictness of the two even corners is required. -/
theorem scalar_strict_lift {F K E Em Ep O U V t : ℝ}
    (ht : 0 < t) (hEm : Em ≤ E) (hEp : E ≤ Ep) (hU : U < O) (hV : O < V)
    (h00 : 0 ≤ F * Em + t * K * U) (h01 : 0 ≤ F * Em + t * K * V)
    (h10 : 0 ≤ F * Ep + t * K * U) (h11 : 0 ≤ F * Ep + t * K * V)
    (hz : K = 0 → 0 < F * Em ∧ 0 < F * Ep) : 0 < F * E + t * K * O := by
  rcases lt_trichotomy K 0 with hK | hK | hK
  · have hko := mul_lt_mul_of_neg_left hV (mul_neg_of_pos_of_neg ht hK)
    by_cases hf : 0 ≤ F
    · have he := mul_le_mul_of_nonneg_left hEm hf
      exact lt_of_le_of_lt h01 (add_lt_add_of_le_of_lt he hko)
    · have he := mul_le_mul_of_nonpos_left hEp (le_of_not_ge hf)
      exact lt_of_le_of_lt h11 (add_lt_add_of_le_of_lt he hko)
  · obtain ⟨hlo, hup⟩ := hz hK
    rw [hK, mul_zero, zero_mul, add_zero]
    by_cases hf : 0 ≤ F
    · exact lt_of_lt_of_le hlo (mul_le_mul_of_nonneg_left hEm hf)
    · exact lt_of_lt_of_le hup (mul_le_mul_of_nonpos_left hEp (le_of_not_ge hf))
  · have hko := mul_lt_mul_of_pos_left hU (mul_pos ht hK)
    by_cases hf : 0 ≤ F
    · have he := mul_le_mul_of_nonneg_left hEm hf
      exact lt_of_le_of_lt h00 (add_lt_add_of_le_of_lt he hko)
    · have he := mul_le_mul_of_nonpos_left hEp (le_of_not_ge hf)
      exact lt_of_le_of_lt h10 (add_lt_add_of_le_of_lt he hko)

/-- Precisely the envelope obligations still owed by a candidate construction. -/
structure EnvelopeWitness {B : Box6} (g : EvenGeometry B) (n : ParityNumerator) : Prop where
  constant_pos : 0 < n.f0
  cubic_neg : n.f3 < 0
  lower_lower : ∀ t : ℝ, 0 ≤ t →
    0 ≤ n.F t * B.evenLower t + t * n.K t * g.lowerOddShape t
  lower_upper : ∀ t : ℝ, 0 ≤ t →
    0 ≤ n.F t * B.evenLower t + t * n.K t * (g.ratio * g.upperOddShape t)
  upper_lower : ∀ t : ℝ, 0 ≤ t →
    0 ≤ n.F t * B.evenUpper t + t * n.K t * g.lowerOddShape t
  upper_upper : ∀ t : ℝ, 0 ≤ t →
    0 ≤ n.F t * B.evenUpper t + t * n.K t * (g.ratio * g.upperOddShape t)
  at_odd_zero : ∀ t : ℝ, 0 < t → n.K t = 0 →
    0 < n.F t * B.evenLower t ∧ 0 < n.F t * B.evenUpper t

/-- Kernel-checked return from one envelope witness to one exact-six original-box numerator. -/
theorem EnvelopeWitness.synthesis {B : Box6} {g : EvenGeometry B} {n : ParityNumerator}
    (w : EnvelopeWitness g n) (hB : B.RobustlyHurwitz) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, B.Contains a → FrequencySPR a.toPoly b := by
  have hh := (g.strict_odd_envelope hB).1
  refine ⟨numeratorPoly (n.coefficients g.lowerScale), ?_, ?_⟩
  · apply numeratorPoly_degree
    change -g.lowerScale * n.f3 ≠ 0
    exact mul_ne_zero (neg_ne_zero.mpr (ne_of_gt hh)) (ne_of_lt w.cubic_neg)
  · intro a ha
    apply (frequencySPR_iff (hB a ha) _).mpr
    intro t ht
    by_cases hz : t = 0
    · subst t
      have hc := (sextic_coefficients_pos (hB a ha)).2.2.2.2.2
      simpa [pairing, ParityNumerator.coefficients_even, ParityNumerator.F, evenPart] using
        mul_pos (mul_pos hh w.constant_pos) hc
    · have ht' : 0 < t := lt_of_le_of_ne ht (Ne.symm hz)
      obtain ⟨hel, heu, _, _⟩ := B.component_bounds ha ht
      obtain ⟨hol, hou⟩ := g.actual_odd_inside hB ha ht
      have hp := scalar_strict_lift ht' hel heu hol hou
        (w.lower_lower t ht) (w.lower_upper t ht) (w.upper_lower t ht) (w.upper_upper t ht)
        (w.at_odd_zero t ht')
      have hscaled := mul_pos hh hp
      unfold pairing
      rw [ParityNumerator.coefficients_even, ParityNumerator.coefficients_odd]
      convert hscaled using 1 <;> field_simp <;> ring

end
end SPR.N6
