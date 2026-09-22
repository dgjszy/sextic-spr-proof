import SPR.N6.Preliminaries.EvenDerivative
import SPR.N6.Definitions.Box
import SPR.Common.CompactPerturbation

/-!
# Complete synthesis when all three even coefficient intervals are fixed

One sufficiently small positive multiple of the negative even derivative is
used for the numerator odd part. Compactification includes zero and infinity,
and the compact perturbation lemma chooses the same scalar for both actual odd
endpoints. The conclusion is the original exact-degree-six, all-box SPR claim.
-/
namespace SPR.N6
noncomputable section

/-- Homogeneous even part at t=x/(1-x). -/
def compactEven (a : Poly6) (x : ℝ) : ℝ :=
  -x ^ 3 + a.a2 * x ^ 2 * (1 - x) - a.a4 * x * (1 - x) ^ 2 + a.a6 * (1 - x) ^ 3

/-- Homogeneous negative even derivative. -/
def compactSlope (a : Poly6) (x : ℝ) : ℝ :=
  3 * x ^ 2 - 2 * a.a2 * x * (1 - x) + a.a4 * (1 - x) ^ 2

/-- Homogeneous odd part. -/
def compactOdd (a : Poly6) (x : ℝ) : ℝ :=
  a.a1 * x ^ 2 - a.a3 * x * (1 - x) + a.a5 * (1 - x) ^ 2

/-- Degree-six compactification of t(-E')O. -/
def compactDerivativePair (a : Poly6) (x : ℝ) : ℝ :=
  x * (1 - x) * compactSlope a x * compactOdd a x

theorem compactEven_eq (a : Poly6) {x : ℝ} (hx : x ≠ 1) :
    compactEven a x = (1 - x) ^ 3 * evenPart a (x / (1 - x)) := by
  have hd : 1 - x ≠ 0 := sub_ne_zero.mpr (Ne.symm hx)
  unfold compactEven evenPart
  field_simp

theorem compactDerivativePair_eq (a : Poly6) {x : ℝ} (hx : x ≠ 1) :
    compactDerivativePair a x = (1 - x) ^ 6 *
      (x / (1 - x) * evenSlope a (x / (1 - x)) * oddPart a (x / (1 - x))) := by
  have hd : 1 - x ≠ 0 := sub_ne_zero.mpr (Ne.symm hx)
  unfold compactDerivativePair compactSlope compactOdd evenSlope oddPart
  field_simp

/-- At every zero of the compact even part the compact perturbation is strictly positive. -/
theorem compact_zero_derivative_pos {a : Poly6} (ha : IsHurwitz a.toPoly)
    {x : ℝ} (hx : x ∈ Set.Icc (0 : ℝ) 1) (he : compactEven a x = 0) :
    0 < compactDerivativePair a x := by
  have hx1 : x ≠ 1 := by intro hh; simp [hh, compactEven] at he
  have h1x : 0 < 1 - x := sub_pos.mpr (lt_of_le_of_ne hx.2 hx1)
  have he' : evenPart a (x / (1 - x)) = 0 := by
    rw [compactEven_eq a hx1] at he
    exact (mul_eq_zero.mp he).resolve_left (ne_of_gt (pow_pos h1x 3))
  rw [compactDerivativePair_eq a hx1]
  exact mul_pos (pow_pos h1x 6) (even_root_slope_odd_pos ha he')

/-- Explicit exact-six numerator: original even part and ε times its negative derivative. -/
def derivativeNumerator (a : Poly6) (ε : ℝ) : Vec7 :=
  ![1, 3 * ε, a.a2, 2 * ε * a.a2, a.a4, ε * a.a4, a.a6]

theorem derivativeNumerator_even (a : Poly6) (ε t : ℝ) :
    numeratorEven (derivativeNumerator a ε) t = evenPart a t := by
  simp [derivativeNumerator, numeratorEven, evenPart]

theorem derivativeNumerator_odd (a : Poly6) (ε t : ℝ) :
    numeratorOdd (derivativeNumerator a ε) t = ε * evenSlope a t := by
  simp [derivativeNumerator, numeratorOdd, evenSlope]
  ring

/-- An original box with fixed even coefficients has one exact-six strict SPR numerator. -/
theorem Box6.fixed_even_synthesis (K : Box6) (hK : K.RobustlyHurwitz)
    (h2 : K.lower.a2 = K.upper.a2) (h4 : K.lower.a4 = K.upper.a4)
    (h6 : K.lower.a6 = K.upper.a6) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, K.Contains a → FrequencySPR a.toPoly b := by
  let am := K.corner (false, false)
  let ap := K.corner (false, true)
  let f : ℝ → ℝ := fun x => compactEven K.lower x ^ 2
  let g : ℝ → ℝ := fun x => min (compactDerivativePair am x) (compactDerivativePair ap x)
  have hf : Continuous f := by unfold f compactEven; fun_prop
  have hg : Continuous g := by
    unfold g compactDerivativePair compactSlope compactOdd am ap
    fun_prop
  have heq (c : Corner) (x : ℝ) : compactEven (K.corner c) x = compactEven K.lower x := by
    rcases c with ⟨i, j⟩
    cases i <;> cases j <;> simp [compactEven, Box6.corner, h2, h4, h6]
  have hz (x : ℝ) (hx : x ∈ Set.Icc (0 : ℝ) 1) (hz : f x = 0) : 0 < g x := by
    have hE : compactEven K.lower x = 0 := sq_eq_zero_iff.mp hz
    apply lt_min
    · apply compact_zero_derivative_pos (hK _ (K.corner_mem (false, false))) hx
      rw [heq, hE]
    · apply compact_zero_derivative_pos (hK _ (K.corner_mem (false, true))) hx
      rw [heq, hE]
  obtain ⟨ε, hε, hpos⟩ := compact_positive_perturbation isCompact_Icc hf hg
    (fun x _ => sq_nonneg _) hz
  refine ⟨numeratorPoly (derivativeNumerator K.lower ε),
    numeratorPoly_degree _ (by simp [derivativeNumerator]), ?_⟩
  apply (K.frequencySPR_iff_corners hK _).mpr
  intro c
  apply (frequencySPR_iff (hK _ (K.corner_mem c)) _).mpr
  intro t ht
  let x := t / (1 + t)
  have ht1 : 0 < 1 + t := by linarith
  have hx0 : 0 ≤ x := div_nonneg ht ht1.le
  have hx1 : x < 1 := (div_lt_one ht1).mpr (by linarith)
  have hd : 0 < 1 - x := sub_pos.mpr hx1
  have hinv : x / (1 - x) = t := by dsimp [x]; field_simp; ring
  have hc (x : ℝ) : g x ≤ compactDerivativePair (K.corner c) x := by
    rcases c with ⟨i, j⟩
    cases i <;> cases j
    · exact min_le_left _ _
    · exact min_le_right _ _
    · simpa [g, compactDerivativePair, compactSlope, compactOdd, am, ap,
        Box6.corner, h2, h4, h6] using min_le_left
        (compactDerivativePair am x) (compactDerivativePair ap x)
    · simpa [g, compactDerivativePair, compactSlope, compactOdd, am, ap,
        Box6.corner, h2, h4, h6] using min_le_right
        (compactDerivativePair am x) (compactDerivativePair ap x)
  have hh : 0 < compactEven (K.corner c) x ^ 2 + ε * compactDerivativePair (K.corner c) x := by
    rw [heq]
    exact lt_of_lt_of_le (hpos x ⟨hx0, hx1.le⟩)
      (add_le_add le_rfl (mul_le_mul_of_nonneg_left (hc x) hε.le))
  rw [compactEven_eq _ (ne_of_lt hx1), compactDerivativePair_eq _ (ne_of_lt hx1), hinv] at hh
  have hp : 0 < evenPart (K.corner c) t ^ 2 + ε *
      (t * evenSlope (K.corner c) t * oddPart (K.corner c) t) := by
    apply (mul_pos_iff_of_pos_left (pow_pos hd 6)).mp
    convert hh using 1 <;> ring
  have hE : evenPart K.lower t = evenPart (K.corner c) t := by
    rcases c with ⟨i, j⟩
    cases i <;> cases j <;> simp [evenPart, Box6.corner, h2, h4, h6]
  have hS : evenSlope K.lower t = evenSlope (K.corner c) t := by
    rcases c with ⟨i, j⟩
    cases i <;> cases j <;> simp [evenSlope, Box6.corner, h2, h4]
  unfold pairing
  rw [derivativeNumerator_even, derivativeNumerator_odd, hE, hS]
  nlinarith only [hp]

end
end SPR.N6
