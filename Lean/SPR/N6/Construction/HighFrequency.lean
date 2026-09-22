import SPR.N6.Algebra.Tail.HighFrequency
import SPR.N6.Construction.TailSource

/-!
# The actual high endpoint from its exact cubic remainder

The quartic coefficient is proved positive using the original strictly ordered
positive roots. The sign of the cubic remainder is still an explicit input.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
variable {B : Box6}

/-- Positivity of the omitted quartic coefficient holds on the actual geometry. -/
theorem high_endpoint_leading_pos (q : EvenGeometry B) :
    0 < Tail.RootSource.highLeading q.a q.A q.B q.b q.c q.C := by
  obtain ⟨hba,hca,hCA,hCB,hcb,hBA,_,_,_,_⟩ := q.positive_gaps
  have ha := q.a_pos
  have hC := ha.trans (q.a_lt_A.trans
    (q.A_lt_B.trans (q.B_lt_b.trans (q.b_lt_c.trans q.c_lt_C))))
  have hfb : 0 < q.b-q.B := sub_pos.mpr q.B_lt_b
  have hcA : 0 < q.c-q.A := sub_pos.mpr (q.A_lt_B.trans (q.B_lt_b.trans q.b_lt_c))
  have hbA : 0 < q.b-q.A := sub_pos.mpr (q.A_lt_B.trans q.B_lt_b)
  have hcB : 0 < q.c-q.B := sub_pos.mpr (q.B_lt_b.trans q.b_lt_c)
  unfold Tail.RootSource.highLeading Tail.RootSource.weight
    Tail.RootSource.weightSlope Tail.RootSource.den1 Tail.RootSource.den2
  positivity

/-- A sign proof for the remainder supplies the whole actual high endpoint. -/
theorem high_endpoint_of_remainder (q : EvenGeometry B)
    (h : ∀ v : ℝ, 0 ≤ v →
      0 ≤ Tail.RootSource.highRemainder q.a q.A q.B q.b q.c q.C v)
    (t : ℝ) (ht : q.b ≤ t) :
    0 ≤ (q.ratioQuotientPoly false t).eval ((q.c-q.A)/(q.b-q.B)) := by
  have hv : 0 ≤ t-q.b := sub_nonneg.mpr ht
  have hs : 0 ≤ Tail.RootSource.endpoint false q.a q.A q.B q.b q.c q.C t := by
    have hr := Tail.RootSource.highRemainder_restore q.a q.A q.B q.b q.c q.C (t-q.b)
    rw [add_sub_cancel] at hr
    rw [hr]
    exact add_nonneg (h _ hv) (mul_nonneg q.high_endpoint_leading_pos.le (pow_nonneg hv 4))
  rw [q.tail_endpoint_eq] at hs
  have hf : 0 < q.b-q.B := sub_pos.mpr q.B_lt_b
  exact (mul_nonneg_iff_of_pos_left (by positivity : 0 < 2*(q.b-q.B)^2)).mp hs

end EvenGeometry
end
end SPR.N6
