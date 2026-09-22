import SPR.N6.Algebra.UpperResidualCertificate
import SPR.N6.Construction.BaselinePositive

/-!
# The upper baseline residual is strictly positive on the whole real axis

The discriminant complement splits into nonnegative multiples of the actual
first two even widths and a strictly positive polynomial in the strict root gaps.
-/
namespace SPR.N6
noncomputable section

set_option maxHeartbeats 8000000 in
/-- Full source identity for the static integer width-slack certificate. -/
theorem UpperResidualCertificate.defining_identity (a d e f g h : ℝ) :
    8*source a (a+d) (a+d+e) (a+d+e+f) (a+d+e+f+g) (a+d+e+f+g+h) =
      LastRootCertificate.widthSlack a d e f g h * secondMultiplier a d e f g h +
      (d+h-f)*firstMultiplier a d e f g h + remainder a d e f g h := by
  simp only [source, LastRootCertificate.widthSlack, secondMultiplier, firstMultiplier, remainder]
  ring

namespace EvenGeometry
variable {K : Box6}

/-- The actual upper residual has strictly negative discriminant. -/
theorem residualUpper_determinant_pos (q : EvenGeometry K) :
    0 < UpperResidualCertificate.source q.a q.A q.B q.b q.c q.C := by
  have hd := sub_pos.mpr q.a_lt_A
  have he := sub_pos.mpr q.A_lt_B
  have hf := sub_pos.mpr q.B_lt_b
  have hg := sub_pos.mpr q.b_lt_c
  have hh := sub_pos.mpr q.c_lt_C
  have hS := UpperResidualCertificate.secondMultiplier_pos q.a_pos hd he hf hg hh
  have hK := UpperResidualCertificate.firstMultiplier_pos q.a_pos hd he hf hg hh
  have hR := UpperResidualCertificate.remainder_pos q.a_pos hd he hf hg hh
  obtain ⟨hw1, hw2⟩ := q.width_budget
  have hslack : 0 ≤ LastRootCertificate.widthSlack q.a (q.A-q.a) (q.B-q.A)
      (q.b-q.B) (q.c-q.b) (q.C-q.c) := by
    unfold LastRootCertificate.widthSlack
    linarith only [hw2]
  have hp := add_pos_of_nonneg_of_pos
    (add_nonneg (mul_nonneg hslack hS.le) (mul_nonneg hw1 hK.le)) hR
  rw [← UpperResidualCertificate.defining_identity] at hp
  have hs : 0 < 8*UpperResidualCertificate.source q.a q.A q.B q.b q.c q.C := by
    convert hp using 1 <;> congr 2 <;> ring
  linarith only [hs]

/-- Exact shift by b of the denominator-cleared original quadratic. -/
theorem residualUpper_shifted (q : EvenGeometry K) (t : ℝ) :
    q.D1*q.D2*q.residualUpper t =
      (q.a*q.D2+q.C*q.D1)*(t-q.b)^2 +
      (-q.C*(q.c-q.b)*q.D1-(q.b*(q.c-q.a)+q.a*(q.C-q.b))*q.D2)*(t-q.b) +
      q.b*(q.C-q.b)*(q.c-q.a)*q.D2 := by
  obtain ⟨hba, hca, hCA, hCB, _, _, _, _, _, _⟩ := q.positive_gaps
  have n1 : q.D1 ≠ 0 := ne_of_gt (mul_pos hba hca)
  have n2 : q.D2 ≠ 0 := ne_of_gt (mul_pos hCA hCB)
  simp only [residualUpper]
  field_simp
  simp only [D1, D2]
  ring

/-- Strict positivity of the actual upper baseline residual for every real t. -/
theorem residualUpper_pos (q : EvenGeometry K) (t : ℝ) : 0 < q.residualUpper t := by
  obtain ⟨hba, hca, hCA, hCB, _, _, _, _, _, _⟩ := q.positive_gaps
  have hD1 : 0 < q.D1 := mul_pos hba hca
  have hD2 : 0 < q.D2 := mul_pos hCA hCB
  have hc : 0 < q.C := q.a_pos.trans
    (q.a_lt_A.trans (q.A_lt_B.trans (q.B_lt_b.trans (q.b_lt_c.trans q.c_lt_C))))
  have hlead : 0 < q.a*q.D2+q.C*q.D1 := by have ha := q.a_pos; positivity
  have hdet := q.residualUpper_determinant_pos
  change 0 < 4*(q.b*(q.C-q.b)*(q.c-q.a)*q.D2)*(q.a*q.D2+q.C*q.D1)-
    (-q.C*(q.c-q.b)*q.D1-(q.b*(q.c-q.a)+q.a*(q.C-q.b))*q.D2)^2 at hdet
  have hp := quadratic_pos
    (b := -q.C*(q.c-q.b)*q.D1-(q.b*(q.c-q.a)+q.a*(q.C-q.b))*q.D2)
    (c := q.b*(q.C-q.b)*(q.c-q.a)*q.D2)
    hlead (by nlinarith only [hdet]) (t-q.b)
  rw [← q.residualUpper_shifted] at hp
  exact (mul_pos_iff_of_pos_left (mul_pos hD1 hD2)).mp hp

end EvenGeometry
end
end SPR.N6
