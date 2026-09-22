import SPR.N6.Algebra.Tail.OuterCoreFrequency
import SPR.N6.Algebra.Tail.CoreEndpoint.PureLowBridge
import SPR.N6.Construction.CoreFirstCoefficient

/-!
# First complete low-core coefficient, including both frequency endpoints

The entire compactified source is connected to the original homogeneous core.
Continuity restores t=B. This discharges a second coefficient of the two-tail
interface, not a complete contact branch or the unrestricted synthesis theorem.
-/
namespace SPR.N6
noncomputable section
open MvPolynomial
namespace OuterParameters

/-- The low first coefficient is nonnegative on the full closed required interval. -/
theorem first_low_core_coefficient (p : OuterParameters) (hA : 0 < p.A)
    (he : 0 ≤ p.e) (hf : 0 < p.f) (hg : 0 ≤ p.g)
    (t : ℝ) (ht0 : 0 ≤ t) (htB : t ≤ p.B) :
    0 ≤ coeff (Tail.OuterIndices.exponent 5 0 0)
      (p.corePolynomial true ((p.e+p.f+p.g)/p.f) t) := by
  rw [← Tail.OuterIndices.eval_first_axis _ (p.corePolynomial_homogeneous _ _ _),
    corePolynomial_eval]
  simp only [Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_two,
    Matrix.cons_val,Matrix.head_cons,Matrix.tail_cons,mul_one,mul_zero,add_zero]
  apply Tail.OuterHomogeneous.low_core_of_compactification _ _ _ _ _ _ _ _
    (by dsimp [B]; positivity) ?_ t ht0 htB
  intro v hv
  have hh := Tail.CoreEndpoint.PureSource.low_source_nonnegative hA.le he hf hg hv
  simp only [Tail.CoreEndpoint.PureSource.L,Tail.CoreEndpoint.PureSource.J,
    Tail.CoreEndpoint.PureSource.M,L,J,b,c,B] at *
  convert hh using 2 <;> congr 1 <;> ring
end OuterParameters
namespace EvenGeometry
variable {B : Box6}

/-- This is the first coefficient of the same actual candidate on the closed low tail. -/
theorem first_low_core_coefficient (q : EvenGeometry B) (t : ℝ)
    (ht0 : 0 ≤ t) (htB : t ≤ q.B) :
    0 ≤ coeff (Tail.OuterIndices.exponent 5 0 0)
      (q.outerParameters.corePolynomial true ((q.c-q.A)/(q.b-q.B)) t) := by
  have hA : 0 < q.outerParameters.A := lt_trans q.a_pos q.a_lt_A
  have he : 0 ≤ q.outerParameters.e := le_of_lt (sub_pos.mpr q.A_lt_B)
  have hf : 0 < q.outerParameters.f := sub_pos.mpr q.B_lt_b
  have hg : 0 ≤ q.outerParameters.g := le_of_lt (sub_pos.mpr q.b_lt_c)
  have hB' : q.outerParameters.B = q.B := by simp [outerParameters,OuterParameters.B]
  have hh := q.outerParameters.first_low_core_coefficient hA he hf hg t ht0
    (by rwa [hB'])
  have hm : (q.outerParameters.e+q.outerParameters.f+q.outerParameters.g)/
      q.outerParameters.f = (q.c-q.A)/(q.b-q.B) := by
    simp only [outerParameters]
    congr 1
    ring
  rwa [hm] at hh

/-- The two pure first-coordinate blocks are discharged; all forty other blocks remain inputs. -/
theorem synthesis_of_twenty_core_coefficients (q : EvenGeometry B)
    (hB : B.RobustlyHurwitz)
    (hhigh : ∀ t : ℝ, q.b ≤ t → ∀ d ∈ Tail.OuterIndices.indices,
      d ≠ Tail.OuterIndices.exponent 5 0 0 →
      0 ≤ coeff d (q.outerParameters.corePolynomial false ((q.c-q.A)/(q.b-q.B)) t))
    (hlow : ∀ t : ℝ, 0 ≤ t → t ≤ q.B → ∀ d ∈ Tail.OuterIndices.indices,
      d ≠ Tail.OuterIndices.exponent 5 0 0 →
      0 ≤ coeff d (q.outerParameters.corePolynomial true ((q.c-q.A)/(q.b-q.B)) t)) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, B.Contains a → FrequencySPR a.toPoly b := by
  apply q.synthesis_of_remaining_core_coefficients hB hhigh
  intro t ht0 htB d hd
  by_cases he : d = Tail.OuterIndices.exponent 5 0 0
  · subst d
    exact q.first_low_core_coefficient t ht0 htB
  · exact hlow t ht0 htB d hd he
end EvenGeometry
end
end SPR.N6
