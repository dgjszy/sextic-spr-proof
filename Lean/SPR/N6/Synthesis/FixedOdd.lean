import SPR.N6.Synthesis.FixedEven
import SPR.N6.Preliminaries.OddDerivative

/-!
# Complete synthesis with three fixed odd coefficient intervals

The leading weak pairing is t O². Its zeros at zero, the two positive odd roots,
and compactified infinity are all covered by one cubic even perturbation.
One compactness argument chooses the same positive scalar for both even endpoints.
-/
namespace SPR.N6
noncomputable section

/-- Cubic perturbation: O+t O'-t O, with correct signs at zero and infinity. -/
def oddLiftEven (a : Poly6) (t : ℝ) : ℝ :=
  oddPart a t+t*oddSlope a t-t*oddPart a t

def compactOddLift (a : Poly6) (x : ℝ) : ℝ :=
  -a.a1*x^3+(3*a.a1+a.a3)*x^2*(1-x)-
    (2*a.a3+a.a5)*x*(1-x)^2+a.a5*(1-x)^3

def compactOddBase (a : Poly6) (x : ℝ) : ℝ :=
  x*(1-x)*compactOdd a x^2

def compactOddPair (a : Poly6) (x : ℝ) : ℝ :=
  compactOddLift a x*compactEven a x

theorem compactOdd_eq (a : Poly6) {x : ℝ} (hx : x ≠ 1) :
    compactOdd a x = (1-x)^2*oddPart a (x/(1-x)) := by
  have hd : 1-x ≠ 0 := sub_ne_zero.mpr (Ne.symm hx)
  unfold compactOdd oddPart
  field_simp

theorem compactOddLift_eq (a : Poly6) {x : ℝ} (hx : x ≠ 1) :
    compactOddLift a x = (1-x)^3*oddLiftEven a (x/(1-x)) := by
  have hd : 1-x ≠ 0 := sub_ne_zero.mpr (Ne.symm hx)
  unfold compactOddLift oddLiftEven oddPart oddSlope
  field_simp
  ring

theorem compactOddBase_eq (a : Poly6) {x : ℝ} (hx : x ≠ 1) :
    compactOddBase a x = (1-x)^6*(x/(1-x)*oddPart a (x/(1-x))^2) := by
  have hd : 1-x ≠ 0 := sub_ne_zero.mpr (Ne.symm hx)
  rw [compactOddBase,compactOdd_eq a hx]
  field_simp

theorem compactOddPair_eq (a : Poly6) {x : ℝ} (hx : x ≠ 1) :
    compactOddPair a x = (1-x)^6*(oddLiftEven a (x/(1-x))*evenPart a (x/(1-x))) := by
  rw [compactOddPair,compactOddLift_eq a hx,compactEven_eq a hx]
  ring

/-- All compactified zeros are protected, including the two added endpoints. -/
theorem compact_odd_zero_pair_pos {a : Poly6} (ha : IsHurwitz a.toPoly)
    {x : ℝ} (hx : x ∈ Set.Icc (0 : ℝ) 1) (hz : compactOddBase a x = 0) :
    0 < compactOddPair a x := by
  obtain ⟨h1,_,_,_,h5,h6⟩ := sextic_coefficients_pos ha
  by_cases hx0 : x = 0
  · subst x
    simpa [compactOddPair,compactOddLift,compactEven] using mul_pos h5 h6
  by_cases hx1 : x = 1
  · subst x
    simpa [compactOddPair,compactOddLift,compactEven] using h1
  have hxpos : 0 < x := lt_of_le_of_ne hx.1 (Ne.symm hx0)
  have hd : 0 < 1-x := sub_pos.mpr (lt_of_le_of_ne hx.2 hx1)
  have hcompact : compactOdd a x = 0 := by
    have hsq : compactOdd a x^2 = 0 :=
      (mul_eq_zero.mp hz).resolve_left (ne_of_gt (mul_pos hxpos hd))
    exact sq_eq_zero_iff.mp hsq
  have ho : oddPart a (x/(1-x)) = 0 := by
    rw [compactOdd_eq a hx1] at hcompact
    exact (mul_eq_zero.mp hcompact).resolve_left (ne_of_gt (pow_pos hd 2))
  have hp : 0 < oddLiftEven a (x/(1-x))*evenPart a (x/(1-x)) := by
    simpa [oddLiftEven,ho] using odd_root_slope_even_pos ha ho
  rw [compactOddPair_eq a hx1]
  exact mul_pos (pow_pos hd 6) hp

/-- The common odd part and a small multiple of the cubic lift define an exact-six numerator. -/
def oddDerivativeNumerator (a : Poly6) (ε : ℝ) : Vec7 :=
  ![ε*a.a1,a.a1,ε*(3*a.a1+a.a3),a.a3,ε*(2*a.a3+a.a5),a.a5,ε*a.a5]

theorem oddDerivativeNumerator_even (a : Poly6) (ε t : ℝ) :
    numeratorEven (oddDerivativeNumerator a ε) t = ε*oddLiftEven a t := by
  simp [oddDerivativeNumerator,numeratorEven,oddLiftEven,oddPart,oddSlope]
  ring

theorem oddDerivativeNumerator_odd (a : Poly6) (ε t : ℝ) :
    numeratorOdd (oddDerivativeNumerator a ε) t = oddPart a t := by
  simp [oddDerivativeNumerator,numeratorOdd,oddPart]

/-- Original-box synthesis when l1=u1, l3=u3 and l5=u5, with arbitrary even widths. -/
theorem Box6.fixed_odd_synthesis (K : Box6) (hK : K.RobustlyHurwitz)
    (h1 : K.lower.a1 = K.upper.a1) (h3 : K.lower.a3 = K.upper.a3)
    (h5 : K.lower.a5 = K.upper.a5) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, K.Contains a → FrequencySPR a.toPoly b := by
  let am := K.corner (false,false)
  let ap := K.corner (true,false)
  let f : ℝ → ℝ := compactOddBase K.lower
  let g : ℝ → ℝ := fun x => min (compactOddPair am x) (compactOddPair ap x)
  have hf : Continuous f := by unfold f compactOddBase compactOdd; fun_prop
  have hg : Continuous g := by
    unfold g compactOddPair compactOddLift compactEven am ap
    fun_prop
  have heq (c : Corner) (x : ℝ) :
      compactOddBase (K.corner c) x = compactOddBase K.lower x := by
    rcases c with ⟨i,j⟩
    cases i <;> cases j <;> simp [compactOddBase,compactOdd,Box6.corner,h1,h3,h5]
  have hnonneg (x : ℝ) (hx : x ∈ Set.Icc (0 : ℝ) 1) : 0 ≤ f x := by
    exact mul_nonneg (mul_nonneg hx.1 (sub_nonneg.mpr hx.2)) (sq_nonneg _)
  have hz (x : ℝ) (hx : x ∈ Set.Icc (0 : ℝ) 1) (hz : f x = 0) : 0 < g x := by
    apply lt_min
    · apply compact_odd_zero_pair_pos (hK _ (K.corner_mem (false,false))) hx
      rw [heq]
      exact hz
    · apply compact_odd_zero_pair_pos (hK _ (K.corner_mem (true,false))) hx
      rw [heq]
      exact hz
  obtain ⟨ε,hε,hpos⟩ := compact_positive_perturbation isCompact_Icc hf hg hnonneg hz
  have hlead : 0 < K.lower.a1 := by
    simpa [am,Box6.corner] using (sextic_coefficients_pos (hK _ (K.corner_mem (false,false)))).1
  refine ⟨numeratorPoly (oddDerivativeNumerator K.lower ε),
    numeratorPoly_degree _ (by simpa [oddDerivativeNumerator] using ne_of_gt (mul_pos hε hlead)), ?_⟩
  apply (K.frequencySPR_iff_corners hK _).mpr
  intro c
  apply (frequencySPR_iff (hK _ (K.corner_mem c)) _).mpr
  intro t ht
  let x := t/(1+t)
  have ht1 : 0 < 1+t := by linarith
  have hx0 : 0 ≤ x := div_nonneg ht ht1.le
  have hx1 : x < 1 := (div_lt_one ht1).mpr (by linarith)
  have hd : 0 < 1-x := sub_pos.mpr hx1
  have hinv : x/(1-x) = t := by dsimp [x]; field_simp; ring
  have hc (x : ℝ) : g x ≤ compactOddPair (K.corner c) x := by
    rcases c with ⟨i,j⟩
    cases i <;> cases j
    · exact min_le_left _ _
    · simpa [g,compactOddPair,compactOddLift,compactEven,am,ap,Box6.corner,h1,h3,h5]
        using min_le_left (compactOddPair am x) (compactOddPair ap x)
    · exact min_le_right _ _
    · simpa [g,compactOddPair,compactOddLift,compactEven,am,ap,Box6.corner,h1,h3,h5]
        using min_le_right (compactOddPair am x) (compactOddPair ap x)
  have hp : 0 < compactOddBase (K.corner c) x+ε*compactOddPair (K.corner c) x := by
    rw [heq]
    exact lt_of_lt_of_le (hpos x ⟨hx0,hx1.le⟩)
      (add_le_add le_rfl (mul_le_mul_of_nonneg_left (hc x) hε.le))
  rw [compactOddBase_eq _ (ne_of_lt hx1),compactOddPair_eq _ (ne_of_lt hx1),hinv] at hp
  have hpair : 0 < t*oddPart (K.corner c) t^2+
      ε*(oddLiftEven (K.corner c) t*evenPart (K.corner c) t) := by
    apply (mul_pos_iff_of_pos_left (pow_pos hd 6)).mp
    convert hp using 1 <;> ring
  have hO : oddPart K.lower t = oddPart (K.corner c) t := by
    rcases c with ⟨i,j⟩
    cases i <;> cases j <;> simp [oddPart,Box6.corner,h1,h3,h5]
  have hF : oddLiftEven K.lower t = oddLiftEven (K.corner c) t := by
    rcases c with ⟨i,j⟩
    cases i <;> cases j <;> simp [oddLiftEven,oddPart,oddSlope,Box6.corner,h1,h3,h5]
  unfold pairing
  rw [oddDerivativeNumerator_even,oddDerivativeNumerator_odd,hO,hF]
  nlinarith only [hpair]

end
end SPR.N6
