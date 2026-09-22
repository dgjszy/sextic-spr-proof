import SPR.N6.Algebra.Tail.OuterAxis
import SPR.N6.Algebra.Tail.CoreEndpoint.PureBridge
import SPR.N6.Construction.OuterCorePolynomial

/-!
# First complete upper-ratio coefficient of the actual high core

The coefficient is extracted from the complete polynomial by homogeneity, then
identified with the checked two-cone square certificate. No source-table
identity or unphysical root positivity is taken as an assumption.
-/
namespace SPR.N6
noncomputable section
open MvPolynomial
namespace OuterParameters

/-- The first high-core coefficient is nonnegative over both complete inner-gap cones. -/
theorem first_high_core_coefficient (p : OuterParameters) (hA : 0 ≤ p.A)
    (he : 0 ≤ p.e) (hf : 0 < p.f) (hg : 0 ≤ p.g) (v : ℝ) (hv : 0 ≤ v) :
    0 ≤ coeff (Tail.OuterIndices.exponent 5 0 0)
      (p.corePolynomial false ((p.e+p.f+p.g)/p.f) (p.b+v)) := by
  rw [← Tail.OuterIndices.eval_first_axis _ (p.corePolynomial_homogeneous _ _ _),
    corePolynomial_eval]
  simp only [Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_two, Matrix.cons_val, Matrix.head_cons, Matrix.tail_cons,
    mul_one,mul_zero,add_zero]
  have hh := Tail.CoreEndpoint.PureSource.source_nonnegative hA he hf hg hv
  simp only [Tail.CoreEndpoint.PureSource.L,Tail.CoreEndpoint.PureSource.J,
    Tail.CoreEndpoint.PureSource.M,L,J,b,c,B] at *
  convert hh using 2 <;> congr 1 <;> ring

end OuterParameters
namespace EvenGeometry
variable {B : Box6}

/-- This checked coefficient belongs to the same candidate and actual ratio endpoint. -/
theorem first_high_core_coefficient (q : EvenGeometry B) (t : ℝ) (ht : q.b ≤ t) :
    0 ≤ coeff (Tail.OuterIndices.exponent 5 0 0)
      (q.outerParameters.corePolynomial false ((q.c-q.A)/(q.b-q.B)) t) := by
  have hA : 0 ≤ q.outerParameters.A := le_of_lt (lt_trans q.a_pos q.a_lt_A)
  have he : 0 ≤ q.outerParameters.e := le_of_lt (sub_pos.mpr q.A_lt_B)
  have hf : 0 < q.outerParameters.f := sub_pos.mpr q.B_lt_b
  have hg : 0 ≤ q.outerParameters.g := le_of_lt (sub_pos.mpr q.b_lt_c)
  have hv : 0 ≤ t-q.b := sub_nonneg.mpr ht
  have hh := q.outerParameters.first_high_core_coefficient hA he hf hg (t-q.b) hv
  have hb : q.outerParameters.b+(t-q.b) = t := by
    simp [outerParameters,OuterParameters.b,OuterParameters.B]
  have hm : (q.outerParameters.e+q.outerParameters.f+q.outerParameters.g)/
      q.outerParameters.f = (q.c-q.A)/(q.b-q.B) := by
    simp only [outerParameters]
    congr 1
    ring
  rwa [hb,hm] at hh

/-- The first coefficient is discharged; only the other twenty high coefficients remain.
The entire low-core coefficient family is still an explicit input. -/
theorem synthesis_of_remaining_core_coefficients (q : EvenGeometry B)
    (hB : B.RobustlyHurwitz)
    (hhigh : ∀ t : ℝ, q.b ≤ t → ∀ d ∈ Tail.OuterIndices.indices,
      d ≠ Tail.OuterIndices.exponent 5 0 0 →
      0 ≤ coeff d (q.outerParameters.corePolynomial false ((q.c-q.A)/(q.b-q.B)) t))
    (hlow : ∀ t : ℝ, 0 ≤ t → t ≤ q.B → ∀ d ∈ Tail.OuterIndices.indices,
      0 ≤ coeff d (q.outerParameters.corePolynomial true ((q.c-q.A)/(q.b-q.B)) t)) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, B.Contains a → FrequencySPR a.toPoly b := by
  apply q.synthesis_of_upper_core_coefficients hB ?_ hlow
  intro t ht d hd
  by_cases he : d = Tail.OuterIndices.exponent 5 0 0
  · subst d
    exact q.first_high_core_coefficient t ht
  · exact hhigh t ht d hd he
end EvenGeometry
end
end SPR.N6
