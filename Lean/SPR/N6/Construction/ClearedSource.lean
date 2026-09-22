import SPR.N6.Construction.Quotients

/-!
# A common positive clearing factor for the remaining candidate certificates

The weights and root parameter below are the same actual quantities used by
`candidate`. The quadratic `clearedZeroOdd` has no divisions; the proof links
it to the actual interpolation polynomial before it is used in a source identity.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
variable {B : Box6}

def clearScale (q : EvenGeometry B) : ℝ :=
  q.ratio*(q.b-q.A)*(q.c-q.A)^2*(q.b-q.B)^2*(q.c-q.B)

def clearWeightA (q : EvenGeometry B) : ℝ :=
  q.ratio*(q.C-q.A)*(q.b-q.B)^2*(q.c-q.B)
def clearWeightB (q : EvenGeometry B) : ℝ :=
  (q.C-q.B)*(q.b-q.A)*(q.c-q.A)^2
def clearWeightb (q : EvenGeometry B) : ℝ :=
  (q.b-q.a)*(q.c-q.A)^2*(q.c-q.B)
def clearWeightc (q : EvenGeometry B) : ℝ :=
  q.ratio*(q.c-q.a)*(q.b-q.A)*(q.b-q.B)^2

def commonWeight (q : EvenGeometry B) : ℝ :=
  q.clearWeightA+q.clearWeightB+q.clearWeightb+q.clearWeightc

def commonWeightedRoot (q : EvenGeometry B) : ℝ :=
  q.A*q.clearWeightA+q.B*q.clearWeightB+q.b*q.clearWeightb+q.c*q.clearWeightc

/-- The explicit polynomial m W Kz, with all three interpolation denominators cancelled. -/
def clearedZeroOdd (q : EvenGeometry B) (t : ℝ) : ℝ :=
  q.ratio*(q.A-q.C)*
    ((q.A-q.B)*(q.C-q.B)*(q.c-q.A)-(q.b-q.a)*(q.c-q.A)*(q.c-q.B)-
      q.ratio*(q.c-q.a)*(q.b-q.B)^2)*(t-q.B)*(t-q.b) +
  (q.B-q.C)*q.ratio*(q.c-q.B)*
    ((q.B-q.A)*(q.C-q.A)-(q.c-q.a)*(q.b-q.A))*(t-q.A)*(t-q.b) +
  (q.b-q.a)*(q.b-q.c)*q.ratio*
    ((q.C-q.A)*(q.c-q.B)+(q.c-q.a)*(q.b-q.c))*(t-q.A)*(t-q.B) +
  (q.b-q.a)*(q.c-q.A)^2*(q.C-q.B)*(t-q.A)*(t-q.c)

/-- All four cleared weights arise from one and the same positive multiplier. -/
theorem clear_weights (q : EvenGeometry B) (hB : B.RobustlyHurwitz) :
    q.clearWeightA = q.clearScale*q.weightA ∧
    q.clearWeightB = q.clearScale*q.weightB ∧
    q.clearWeightb = q.clearScale*q.weightb ∧
    q.clearWeightc = q.clearScale*q.weightc := by
  obtain ⟨_, _, _, _, _, _, hbA, hbB, hcA, hcB⟩ := q.positive_gaps
  have n1 := ne_of_gt hbA
  have n2 := ne_of_gt hbB
  have n3 := ne_of_gt hcA
  have n4 := ne_of_gt hcB
  have nm := ne_of_gt (lt_trans zero_lt_one (q.ratio_bounds hB).1)
  simp only [clearWeightA, clearWeightB, clearWeightb, clearWeightc, clearScale,
    weightA, weightB, weightb, weightc]
  refine ⟨?_, ?_, ?_, ?_⟩ <;> field_simp <;> ring

/-- Both clearing factors are strictly positive, including degenerate coefficient widths. -/
theorem clear_factors_pos (q : EvenGeometry B) (hB : B.RobustlyHurwitz) :
    0 < q.clearScale ∧ 0 < q.commonWeight := by
  obtain ⟨_, _, _, _, _, _, hbA, hbB, hcA, hcB⟩ := q.positive_gaps
  have hm : 0 < q.ratio := lt_trans zero_lt_one (q.ratio_bounds hB).1
  have hs : 0 < q.clearScale := by unfold clearScale; positivity
  obtain ⟨h1, h2, h3, h4⟩ := q.clear_weights hB
  have hsum := (q.weights_pos hB).2.2.2.2
  refine ⟨hs, ?_⟩
  unfold commonWeight
  rw [h1, h2, h3, h4]
  simpa only [weightSum, mul_add] using mul_pos hs hsum

/-- Preserve the same actual weighted mean in denominator-cleared form. -/
theorem common_weight_rho (q : EvenGeometry B) (hB : B.RobustlyHurwitz) :
    q.commonWeight*q.rho = q.commonWeightedRoot := by
  obtain ⟨h1, h2, h3, h4⟩ := q.clear_weights hB
  have hsum := (q.weights_pos hB).2.2.2.2
  have hmean : q.weightSum*q.rho =
      q.A*q.weightA+q.B*q.weightB+q.b*q.weightb+q.c*q.weightc := by
    unfold rho
    field_simp
  unfold commonWeight commonWeightedRoot
  rw [h1, h2, h3, h4]
  calc
    _ = q.clearScale*(q.weightSum*q.rho) := by unfold weightSum; ring
    _ = _ := by rw [hmean]; ring

set_option maxHeartbeats 4000000 in
set_option maxRecDepth 8192 in
-- A fixed rational interpolation identity, with no external polynomial oracle.
/-- Connect the explicit denominator-free quadratic to the same zero-direction odd part. -/
theorem cleared_zero_odd_identity (q : EvenGeometry B) (hB : B.RobustlyHurwitz) (t : ℝ) :
    q.ratio*q.commonWeight*q.zeroK t = q.clearedZeroOdd t := by
  obtain ⟨_, _, _, _, _, hBA, hbA, hbB, hcA, hcB⟩ := q.positive_gaps
  have nm := ne_of_gt (lt_trans zero_lt_one (q.ratio_bounds hB).1)
  have nW := ne_of_gt (q.clear_factors_pos hB).2
  have nAB : q.A-q.B ≠ 0 := sub_ne_zero.mpr (ne_of_lt q.A_lt_B)
  have nAb : q.A-q.b ≠ 0 := sub_ne_zero.mpr (ne_of_lt (q.A_lt_B.trans q.B_lt_b))
  have nAc : q.A-q.c ≠ 0 := sub_ne_zero.mpr
    (ne_of_lt (q.A_lt_B.trans (q.B_lt_b.trans q.b_lt_c)))
  have nBb : q.B-q.b ≠ 0 := sub_ne_zero.mpr (ne_of_lt q.B_lt_b)
  have nbA := ne_of_gt hbA
  have nbB := ne_of_gt hbB
  have nBA := ne_of_gt hBA
  have hr : q.rho = q.commonWeightedRoot/q.commonWeight := by
    apply (eq_div_iff nW).mpr
    nlinarith only [q.common_weight_rho hB]
  have hz : q.zeroK t =
      (q.A-q.rho)*(q.A-q.C)/((q.c-q.A)*(q.b-q.A))*(t-q.B)*(t-q.b) +
      (q.B-q.rho)*(q.B-q.C)/(q.ratio*(q.b-q.B)^2)*(t-q.A)*(t-q.b) +
      (q.b-q.rho)*(q.b-q.a)*(q.b-q.c)/
        (q.ratio*(q.b-q.A)*(q.b-q.B)^2)*(t-q.A)*(t-q.B) := by
    simp only [zeroK, interpA, interpB, interpb, valueA, valueB, valueb]
    field_simp
    ring
  rw [hz, hr]
  field_simp
  simp only [commonWeight, commonWeightedRoot, clearWeightA, clearWeightB,
    clearWeightb, clearWeightc, clearedZeroOdd]
  ring

/-- The original baseline quadratic coefficient after clearing D1 D2. -/
def clearedBaseSecond (q : EvenGeometry B) : ℝ :=
  q.D1*q.D2+q.a*(q.A+q.B+q.b+q.c-q.a)*q.D2+
    (q.A*q.B+q.C*(q.b+q.c))*q.D1

theorem cleared_base_second (q : EvenGeometry B) :
    q.D1*q.D2*q.baseF2 = q.clearedBaseSecond := by
  obtain ⟨hba, hca, hCA, hCB, _, _, _, _, _, _⟩ := q.positive_gaps
  have n1 : q.D1 ≠ 0 := ne_of_gt (mul_pos hba hca)
  have n2 : q.D2 ≠ 0 := ne_of_gt (mul_pos hCA hCB)
  rw [q.base_coefficients.2.1]
  unfold clearedBaseSecond
  field_simp

/-- Same-candidate source identity for either lower-odd contact polynomial. -/
theorem cleared_lower_source (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (i : Bool) (t : ℝ) :
    q.D1*q.D2*q.commonWeight*(q.contactSource q.candidate (i,false)).eval t =
      q.ratio*q.commonWeight*q.D1*q.D2*q.baseF t*
        (if i then B.evenUpper t else B.evenLower t) +
      q.D1*q.D2*q.commonWeight*t*(q.lowerOddShape t+q.ratio*q.upperOddShape t)*
        q.lowerOddShape t +
      q.clearedBaseSecond*(q.ratio*t*(q.commonWeight*t-q.commonWeightedRoot)*
        (if i then B.evenUpper t else B.evenLower t)+t*q.clearedZeroOdd t*q.lowerOddShape t) := by
  have hr := q.common_weight_rho hB
  have hz := q.cleared_zero_odd_identity hB t
  have hf := q.cleared_base_second
  rw [eval_contactSource, q.candidate_even, q.candidate_odd]
  simp only [Bool.false_eq_true, ite_false]
  rw [← hz, ← hr, ← hf]
  unfold eta
  ring

end EvenGeometry
end
end SPR.N6
