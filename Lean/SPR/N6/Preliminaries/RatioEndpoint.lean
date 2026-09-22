import SPR.N6.Preliminaries.OddEnvelope

/-!
# The ratio upper endpoint is exactly the fixed-odd-coefficient case

This identifies an original-box degeneracy, not a replacement denominator or
an arbitrary auxiliary ratio. Boxes with any odd coefficient width have a
strict upper ratio bound. Endpoint certificate values still concern the same
candidate and cannot be replaced by a different fixed-odd numerator.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
variable {B : Box6}

/-- Any positive odd coefficient width strictly separates the actual ratio from its upper bound. -/
theorem ratio_lt_upper_of_odd_width (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (hw : B.lower.a1 < B.upper.a1 ∨ B.lower.a3 < B.upper.a3 ∨ B.lower.a5 < B.upper.a5) :
    q.ratio < (q.c-q.A)/(q.b-q.B) := by
  obtain ⟨hl,hla,hak,_,_⟩ := q.strict_odd_envelope hB
  have hk : 0 < q.upperScale := hl.trans (hla.trans (B.h1.trans_lt hak))
  have hca : 0 < q.c-q.A := sub_pos.mpr (q.A_lt_B.trans (q.B_lt_b.trans q.b_lt_c))
  have hbb : 0 < q.b-q.B := sub_pos.mpr q.B_lt_b
  have hlo := sextic_coefficients_pos (hB _ B.lower_mem)
  have hup := sextic_coefficients_pos (hB _ B.upper_mem)
  have hprod : B.lower.a1*B.lower.a5 ≤ B.upper.a1*B.upper.a5 :=
    mul_le_mul B.h1 B.h5 hlo.2.2.2.2.1.le hup.1.le
  have hsq : B.lower.a3^2 ≤ B.upper.a3^2 :=
    (sq_le_sq₀ hlo.2.2.1.le hup.2.2.1.le).mpr B.h3
  have hdisc : B.lower.a3^2-4*B.upper.a1*B.upper.a5 <
      B.upper.a3^2-4*B.lower.a1*B.lower.a5 := by
    rcases hw with hw | hw | hw
    · have hp : B.lower.a1*B.lower.a5 < B.upper.a1*B.upper.a5 :=
        (mul_lt_mul_of_pos_right hw hlo.2.2.2.2.1).trans_le
          (mul_le_mul_of_nonneg_left B.h5 hup.1.le)
      linarith only [hsq,hp]
    · have hp := (sq_lt_sq₀ hlo.2.2.1.le hup.2.2.1.le).mpr hw
      linarith only [hp,hprod]
    · have hp : B.lower.a1*B.lower.a5 < B.upper.a1*B.upper.a5 :=
        (mul_le_mul_of_nonneg_right B.h1 hlo.2.2.2.2.1.le).trans_lt
          (mul_lt_mul_of_pos_left hw hup.1)
      linarith only [hsq,hp]
  have hd : 0 < B.lower.a3^2-4*B.upper.a1*B.upper.a5 := by
    apply Real.sqrt_pos.mp
    change 0 < Real.sqrt (B.lower.a3^2-4*B.upper.a1*B.upper.a5)/(q.b-q.B) at hk
    exact (div_pos_iff_of_pos_right hbb).mp hk
  have hsqrt := Real.sqrt_lt_sqrt hd.le hdisc
  unfold ratio
  rw [div_lt_iff₀ hl]
  unfold upperScale lowerScale
  calc
    Real.sqrt (B.lower.a3^2-4*B.upper.a1*B.upper.a5)/(q.b-q.B) <
        Real.sqrt (B.upper.a3^2-4*B.lower.a1*B.lower.a5)/(q.b-q.B) :=
      div_lt_div_of_pos_right hsqrt hbb
    _ = (q.c-q.A)/(q.b-q.B)*
        (Real.sqrt (B.upper.a3^2-4*B.lower.a1*B.lower.a5)/(q.c-q.A)) := by
      field_simp

/-- Equality at the canonical upper bound is equivalent to all three odd intervals degenerating. -/
theorem ratio_eq_upper_iff (q : EvenGeometry B) (hB : B.RobustlyHurwitz) :
    q.ratio = (q.c-q.A)/(q.b-q.B) ↔
      B.lower.a1 = B.upper.a1 ∧ B.lower.a3 = B.upper.a3 ∧ B.lower.a5 = B.upper.a5 := by
  constructor
  · intro heq
    have hn : ¬ (B.lower.a1 < B.upper.a1 ∨ B.lower.a3 < B.upper.a3 ∨
        B.lower.a5 < B.upper.a5) := by
      intro hw
      exact (ne_of_lt (q.ratio_lt_upper_of_odd_width hB hw)) heq
    exact ⟨le_antisymm B.h1 (le_of_not_gt (fun h => hn (Or.inl h))),
      le_antisymm B.h3 (le_of_not_gt (fun h => hn (Or.inr (Or.inl h)))),
      le_antisymm B.h5 (le_of_not_gt (fun h => hn (Or.inr (Or.inr h))))⟩
  · rintro ⟨h1,h3,h5⟩
    have hl := (q.strict_odd_envelope hB).1
    have hca : 0 < q.c-q.A := sub_pos.mpr (q.A_lt_B.trans (q.B_lt_b.trans q.b_lt_c))
    have hbb : 0 < q.b-q.B := sub_pos.mpr q.B_lt_b
    have hs : 0 < Real.sqrt (B.upper.a3^2-4*B.upper.a1*B.upper.a5) := by
      unfold lowerScale at hl
      rw [h1,h5] at hl
      exact (div_pos_iff_of_pos_right hca).mp hl
    unfold ratio upperScale lowerScale
    rw [h1,h3,h5]
    field_simp [ne_of_gt hs]

end EvenGeometry
end
end SPR.N6
