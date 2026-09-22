import SPR.N6.Algebra.Tail.RootSource
import SPR.N6.Construction.HighRatio

/-!
# The factored endpoint source is the same actual candidate

The arbitrary-ratio identities are algebraic; robust stability is used only
later when the actual ratio and positive clearing factors are applied. Contact
frequencies remain included because the already-divided quotient is used.
-/
namespace SPR.N6
noncomputable section
open Polynomial
namespace EvenGeometry
variable {B : Box6}

/-- The cancelled outer-root mixing expression is the actual coefficient. -/
theorem tail_mixture_eq (q : EvenGeometry B) :
    Tail.RootSource.mixture q.a q.A q.B q.b q.c q.C = q.clearedBaseSecond := by
  unfold Tail.RootSource.mixture Tail.RootSource.den1 Tail.RootSource.den2
    clearedBaseSecond D1 D2
  ring

/-- Common denominator cancellation is valid because actual root gaps are strict. -/
theorem tail_residual_eq (q : EvenGeometry B) (i : Bool) (t : ℝ) :
    Tail.RootSource.residual i q.a q.A q.B q.b q.c q.C t =
      q.D1*q.D2*(if i then q.residualUpper t else q.residualLower t) := by
  obtain ⟨hba,hca,hCA,hCB,_,_,_,_,_,_⟩ := q.positive_gaps
  have hD1 : q.D1 ≠ 0 := ne_of_gt (mul_pos hba hca)
  have hD2 : q.D2 ≠ 0 := ne_of_gt (mul_pos hCA hCB)
  cases i <;> simp only [Tail.RootSource.residual,Tail.RootSource.den1,
    Tail.RootSource.den2,Bool.false_eq_true,ite_false,ite_true,residualLower,residualUpper]
  · change _ = q.D1*q.D2*(q.a*(t-q.A)*(t-q.B)/q.D1+(t-q.a)*(q.C*t-q.A*q.B)/q.D2)
    field_simp
    unfold D1 D2
    ring
  · change _ = q.D1*q.D2*(q.C*(t-q.b)*(t-q.c)/q.D2+(t-q.C)*(q.a*t-q.b*q.c)/q.D1)
    field_simp
    unfold D1 D2
    ring

/-- The source is exactly the actual cleared quotient at any ratio parameter. -/
theorem tail_source_eq (q : EvenGeometry B) (i : Bool) (m t : ℝ) :
    Tail.RootSource.source i q.a q.A q.B q.b q.c q.C m t =
      (q.ratioQuotientPoly i t).eval m := by
  have hW : Tail.RootSource.weight q.a q.A q.B q.b q.c q.C m =
      q.ratioWeightPoly.eval m := by
    simp only [Tail.RootSource.weight,ratioWeightPoly,eval_add,eval_mul,eval_C,eval_X,
      clearWeightB,clearWeightb]
    ring
  have hZ : Tail.RootSource.zero i q.a q.A q.B q.b q.c q.C m t =
      (q.ratioZeroQuotientPoly i t).eval m := (q.ratio_zero_quotient_eval_at i t m).symm
  unfold Tail.RootSource.source
  rw [q.tail_mixture_eq,q.tail_residual_eq,hW,hZ]
  simp only [ratioQuotientPoly,eval_add,eval_mul,eval_X,eval_C,
    Tail.RootSource.den1,Tail.RootSource.den2]
  change _ = q.D1*q.D2*q.ratioWeightPoly.eval m*
    (m*(if i then (t-q.B)^2*q.residualUpper t else (t-q.b)^2*q.residualLower t)+
      t*(if i then (t-q.c)^2 else (t-q.A)^2))+
    q.clearedBaseSecond*t*(q.ratioZeroQuotientPoly i t).eval m
  cases i <;> simp only [Bool.false_eq_true,ite_false,ite_true] <;> unfold D1 D2 <;> ring

/-- No endpoint source is detached from the actual ratio polynomial. -/
theorem tail_endpoint_eq (q : EvenGeometry B) (i : Bool) (t : ℝ) :
    Tail.RootSource.endpoint i q.a q.A q.B q.b q.c q.C t =
      2*(q.b-q.B)^2*(q.ratioQuotientPoly i t).eval ((q.c-q.A)/(q.b-q.B)) := by
  have hf : q.b-q.B ≠ 0 := ne_of_gt (sub_pos.mpr q.B_lt_b)
  simp only [Tail.RootSource.endpoint,q.tail_source_eq,
    quadratic_eval_coefficients _ (q.ratio_quotient_degree i t)]
  field_simp
  ring

end EvenGeometry
end
end SPR.N6
