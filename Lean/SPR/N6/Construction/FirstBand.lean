import SPR.N6.Construction.FirstBandSource
import SPR.N6.Algebra.FirstBand.Assembly

/-!
# The actual first-band obligation is discharged

This theorem certifies the same candidate on the closed interval [a,A],
including its endpoints, using no extra assumption on even coefficient widths.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
variable {B : Box6}

/-- Strict positivity of the actual lower-odd quotient on [a,A]. -/
theorem candidate_lower_first_pos (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (t : ℝ) (hta : q.a ≤ t) (htA : t ≤ q.A) :
    0 < (q.contactQuotient q.candidate (false,false)).eval t := by
  have hd : 0 < q.A-q.a := sub_pos.mpr q.a_lt_A
  have he : 0 < q.B-q.A := sub_pos.mpr q.A_lt_B
  have hf : 0 < q.b-q.B := sub_pos.mpr q.B_lt_b
  have hg : 0 < q.c-q.b := sub_pos.mpr q.b_lt_c
  have hh : 0 < q.C-q.c := sub_pos.mpr q.c_lt_C
  let u := (t-q.a)/(q.A-q.a)
  have hu0 : 0 ≤ u := div_nonneg (sub_nonneg.mpr hta) hd.le
  have hu1 : u ≤ 1 := (div_le_one hd).mpr (by linarith)
  have ht : t = q.a+(q.A-q.a)*u := by dsimp [u]; field_simp; ring
  obtain ⟨hm,hM⟩ := q.ratio_bounds hB
  have hM' : q.ratio ≤ ((q.B-q.A)+(q.b-q.B)+(q.c-q.b))/(q.b-q.B) := by
    convert hM using 1 <;> congr 1 <;> ring
  have hp := FirstBand.source_positive q.a_pos hd he hf hg hh hm.le hM' hu0 hu1
  rw [← q.first_band_source hB u, ← ht] at hp
  obtain ⟨hba,hca,hCA,hCB,_,_,_,_,_,_⟩ := q.positive_gaps
  have hD1 : 0 < q.D1 := mul_pos hba hca
  have hD2 : 0 < q.D2 := mul_pos hCA hCB
  exact (mul_pos_iff_of_pos_left
    (mul_pos (mul_pos hD1 hD2) (q.clear_factors_pos hB).2)).mp hp

end EvenGeometry
end
end SPR.N6
