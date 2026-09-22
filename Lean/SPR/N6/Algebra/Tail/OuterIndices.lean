import Mathlib.RingTheory.MvPolynomial.Homogeneous
import Mathlib.Tactic

/-!
# Complete three-variable degree-five coefficient coverage

The outer homogeneous source has three coordinates. There are exactly twenty-one
degree-five exponent triples. This module proves that the displayed finite set
contains every possible term of a degree-five homogeneous polynomial, including
zero coefficients. Sign tests over this set therefore cannot omit a monomial.
-/
namespace SPR.N6.Tail.OuterIndices
noncomputable section
open MvPolynomial

def exponent (i j k : ℕ) : Fin 3 →₀ ℕ :=
  Finsupp.equivFunOnFinite.symm ![i,j,k]

/-- Closed bounds, with the third exponent determined by homogeneity. -/
def indices : Finset (Fin 3 →₀ ℕ) :=
  (((Finset.range 6).product (Finset.range 6)).filter
    (fun ij => ij.1+ij.2 ≤ 5)).image (fun ij => exponent ij.1 ij.2 (5-ij.1-ij.2))

theorem degree_three (d : Fin 3 →₀ ℕ) : d.degree = d 0+d 1+d 2 := by
  rw [Finsupp.degree_eq_sum]
  simp [Fin.sum_univ_succ]
  omega

theorem exponent_degree (i j k : ℕ) : (exponent i j k).degree = i+j+k := by
  rw [degree_three]
  simp [exponent]

/-- The list is exact, rather than merely a superset of a numerically sampled support. -/
theorem mem_indices_iff (d : Fin 3 →₀ ℕ) : d ∈ indices ↔ d.degree = 5 := by
  constructor
  · intro hd
    obtain ⟨⟨i,j⟩,hij,rfl⟩ := Finset.mem_image.mp hd
    have hle : i+j ≤ 5 := (Finset.mem_filter.mp hij).2
    rw [exponent_degree]
    omega
  · intro hd
    have hs : d 0+d 1+d 2 = 5 := by simpa only [degree_three] using hd
    apply Finset.mem_image.mpr
    refine ⟨(d 0,d 1),?_,?_⟩
    · apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_product.mpr ⟨Finset.mem_range.mpr ?_,Finset.mem_range.mpr ?_⟩,?_⟩
      all_goals omega
    · ext n
      fin_cases n <;> simp [exponent] <;> omega

/-- The twenty-one indices are counted by ordinary kernel reduction. -/
theorem cardinality : indices.card = 21 := by
  have hi : Function.Injective (fun ij : ℕ × ℕ => exponent ij.1 ij.2 (5-ij.1-ij.2)) := by
    intro p q hpq
    have h0 := congrArg (fun d : Fin 3 →₀ ℕ => d 0) hpq
    have h1 := congrArg (fun d : Fin 3 →₀ ℕ => d 1) hpq
    simp [exponent] at h0 h1
    exact Prod.ext h0 h1
  unfold indices
  rw [Finset.card_image_of_injective _ hi]
  decide

/-- Every homogeneous degree-five polynomial is the complete sum over these indices. -/
theorem expansion (P : MvPolynomial (Fin 3) ℝ) (hP : P.IsHomogeneous 5) :
    P = ∑ d ∈ indices, monomial d (coeff d P) := by
  classical
  calc
    P = ∑ d ∈ P.support, monomial d (coeff d P) := P.as_sum
    _ = ∑ d ∈ indices, monomial d (coeff d P) := by
      apply Finset.sum_subset
      · intro d hd
        apply (mem_indices_iff d).mpr
        simpa only [Finsupp.degree_eq_weight_one] using hP (mem_support_iff.mp hd)
      · intro d _ hd
        have hc : coeff d P = 0 := by simpa only [mem_support_iff,not_not] using hd
        rw [hc,monomial_zero]

/-- Nonnegative coefficients at every one of the twenty-one indices imply nonnegative evaluation. -/
theorem eval_nonnegative (P : MvPolynomial (Fin 3) ℝ) (hP : P.IsHomogeneous 5)
    (hcoeff : ∀ d ∈ indices, 0 ≤ coeff d P) (x : Fin 3 → ℝ) (hx : ∀ i, 0 ≤ x i) :
    0 ≤ eval x P := by
  rw [expansion P hP]
  simp only [map_sum,eval_monomial]
  apply Finset.sum_nonneg
  intro d hd
  apply mul_nonneg (hcoeff d hd)
  exact Finset.prod_nonneg (fun i _ => pow_nonneg (hx i) _)

end
end SPR.N6.Tail.OuterIndices
