import SPR.N6.Algebra.Tail.QuadraticCore
import SPR.N6.Construction.TailSource
import SPR.N6.Construction.UpperResidual
import SPR.N6.Synthesis.WeakTails

/-!
# The quadratic core is a sufficient condition for the same actual candidate

The baseline residual is already positive on both required tails. Its removal
is justified explicitly, and all signs concern the same actual ratio and the
same candidate. Universal nonnegativity of the two cores remains unproved.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
variable {B : Box6}

/-- The clearing weight stays positive at every nonnegative ratio. -/
theorem tail_weight_pos (q : EvenGeometry B) {m : ℝ} (hm : 0 ≤ m) :
    0 < Tail.RootSource.weight q.a q.A q.B q.b q.c q.C m := by
  obtain ⟨hba,hca,hCA,hCB,_,_,_,_,_,_⟩ := q.positive_gaps
  have hcA : 0 < q.c-q.A := sub_pos.mpr (q.A_lt_B.trans (q.B_lt_b.trans q.b_lt_c))
  have hbA : 0 < q.b-q.A := sub_pos.mpr (q.A_lt_B.trans q.B_lt_b)
  have hcB : 0 < q.c-q.B := sub_pos.mpr (q.B_lt_b.trans q.b_lt_c)
  unfold Tail.RootSource.weight
  positivity

/-- A nonnegative core and residual imply the sign of the actual full contact quotient. -/
theorem quotient_nonnegative_of_core (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (i : Bool) (t : ℝ) (ht : 0 ≤ t)
    (hres : 0 ≤ (if i then q.residualUpper t else q.residualLower t))
    (hcore : 0 ≤ Tail.RootSource.core i q.a q.A q.B q.b q.c q.C q.ratio t) :
    0 ≤ (q.contactQuotient q.candidate (i,false)).eval t := by
  obtain ⟨hm,_⟩ := q.ratio_bounds hB
  have hm0 : 0 ≤ q.ratio := (lt_trans zero_lt_one hm).le
  obtain ⟨hba,hca,hCA,hCB,_,_,_,_,_,_⟩ := q.positive_gaps
  have hD1 : 0 < q.D1 := mul_pos hba hca
  have hD2 : 0 < q.D2 := mul_pos hCA hCB
  have hr : 0 ≤ Tail.RootSource.residual i q.a q.A q.B q.b q.c q.C t := by
    rw [q.tail_residual_eq]
    exact mul_nonneg (mul_pos hD1 hD2).le hres
  have hs : 0 ≤ Tail.RootSource.source i q.a q.A q.B q.b q.c q.C q.ratio t := by
    rw [Tail.RootSource.source_eq_core]
    exact add_nonneg
      (mul_nonneg (mul_nonneg (mul_nonneg (q.tail_weight_pos hm0).le hm0)
        (sq_nonneg _)) hr) (mul_nonneg ht hcore)
  rw [q.tail_source_eq,q.ratio_quotient_eval hB i t] at hs
  exact (mul_nonneg_iff_of_pos_left
    (mul_pos (mul_pos hD1 hD2) (q.clear_factors_pos hB).2)).mp hs

/-- Quadratic core signs on exactly the two missing intervals suffice for original-box synthesis. -/
theorem synthesis_of_quadratic_cores (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (hhigh : ∀ t : ℝ, q.b ≤ t →
      0 ≤ Tail.RootSource.core false q.a q.A q.B q.b q.c q.C q.ratio t)
    (hlow : ∀ t : ℝ, 0 ≤ t → t ≤ q.B →
      0 ≤ Tail.RootSource.core true q.a q.A q.B q.b q.c q.C q.ratio t) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, B.Contains a → FrequencySPR a.toPoly b := by
  have hw : WeakTailCertificates q := by
    constructor
    · intro t ht
      have hb := q.a_pos.trans (q.a_lt_A.trans (q.A_lt_B.trans q.B_lt_b))
      exact q.quotient_nonnegative_of_core hB false t (hb.trans_le ht).le
        (q.residualLower_pos_of_ge_B (q.B_lt_b.le.trans ht)).le (hhigh t ht)
    · intro t ht0 htB
      exact q.quotient_nonnegative_of_core hB true t ht0
        (q.residualUpper_pos t).le (hlow t ht0 htB)
  exact hw.synthesis hB

end EvenGeometry
end
end SPR.N6
