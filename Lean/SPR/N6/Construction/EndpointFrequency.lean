import SPR.N6.Algebra.Tail.FrequencyHomogeneous
import SPR.N6.Algebra.Tail.FrequencyClosure
import SPR.N6.Construction.TailSource

/-!
# The low endpoint frequency chart reaches the actual quotient

The positive half-line parameter v represents every t in [0,B). The endpoint
B is recovered by continuity. The only remaining assumption is the sign of
the displayed denominator-free source, for the same fixed geometry.
-/
namespace SPR.N6
noncomputable section
open Polynomial
namespace EvenGeometry
variable {B : Box6}

/-- Exact equality with the actual endpoint quotient; no contact is excluded. -/
theorem endpoint_frequency_eq (q : EvenGeometry B) (i : Bool) (n d : ℝ) (hd : d ≠ 0) :
    Tail.RootSource.endpointFrequency i q.a q.A q.B q.b q.c q.C n d =
      d^4*(2*(q.b-q.B)^2*(q.ratioQuotientPoly i (n/d)).eval
        ((q.c-q.A)/(q.b-q.B))) := by
  rw [Tail.RootSource.endpointFrequency_eq i q.a q.A q.B q.b q.c q.C n d hd,
    q.tail_endpoint_eq]

/-- Homogeneous nonnegativity supplies every low frequency below its upper boundary. -/
theorem low_endpoint_of_homogeneous (q : EvenGeometry B)
    (h : ∀ v : ℝ, 0 ≤ v →
      0 ≤ Tail.RootSource.endpointFrequency true q.a q.A q.B q.b q.c q.C (q.B*v) (1+v))
    (t : ℝ) (ht0 : 0 ≤ t) (htB : t < q.B) :
    0 ≤ (q.ratioQuotientPoly true t).eval ((q.c-q.A)/(q.b-q.B)) := by
  let v := t/(q.B-t)
  have hden : 0 < q.B-t := sub_pos.mpr htB
  have hv : 0 ≤ v := div_nonneg ht0 hden.le
  have hd : 0 < 1+v := by linarith
  have hBpos := q.a_pos.trans (q.a_lt_A.trans q.A_lt_B)
  have hid : q.B*v/(1+v) = t := by
    dsimp [v]
    field_simp
    ring
  have hs := h v hv
  rw [q.endpoint_frequency_eq true (q.B*v) (1+v) (ne_of_gt hd),hid] at hs
  have hf : 0 < q.b-q.B := sub_pos.mpr q.B_lt_b
  have hh := (mul_nonneg_iff_of_pos_left (pow_pos hd 4)).mp hs
  exact (mul_nonneg_iff_of_pos_left (by positivity : 0 < 2*(q.b-q.B)^2)).mp hh

/-- The chart and continuity cover the whole closed low-frequency interval. -/
theorem low_endpoint_closed_of_homogeneous (q : EvenGeometry B)
    (h : ∀ v : ℝ, 0 ≤ v →
      0 ≤ Tail.RootSource.endpointFrequency true q.a q.A q.B q.b q.c q.C (q.B*v) (1+v))
    (t : ℝ) (ht0 : 0 ≤ t) (htB : t ≤ q.B) :
    0 ≤ (q.ratioQuotientPoly true t).eval ((q.c-q.A)/(q.b-q.B)) := by
  have hBpos := q.a_pos.trans (q.a_lt_A.trans q.A_lt_B)
  have hf : 0 < q.b-q.B := sub_pos.mpr q.B_lt_b
  have hc : 0 < 2*(q.b-q.B)^2 := by positivity
  have hs : ∀ u : ℝ, 0 ≤ u → u < q.B →
      0 ≤ Tail.RootSource.endpoint true q.a q.A q.B q.b q.c q.C u := by
    intro u hu0 huB
    rw [q.tail_endpoint_eq]
    exact mul_nonneg hc.le (q.low_endpoint_of_homogeneous h u hu0 huB)
  have hh := Tail.RootSource.endpoint_nonnegative_closed true q.a q.A q.B q.b q.c q.C
    hBpos hs t ht0 htB
  rw [q.tail_endpoint_eq] at hh
  exact (mul_nonneg_iff_of_pos_left hc).mp hh

end EvenGeometry
end
end SPR.N6
