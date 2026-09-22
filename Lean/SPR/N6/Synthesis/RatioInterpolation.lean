import SPR.N6.Construction.RatioPolynomial
import SPR.N6.Synthesis.CandidateLift

/-!
# Closed-interval ratio interpolation for the actual lower sources

The three Bernstein entries refer to the exact polynomial already linked to
the same candidate. Their signs remain certificate obligations. The actual
canonical ratio, including its upper endpoint, is covered without a limit.
-/
namespace SPR.N6
noncomputable section
open Polynomial

/-- Expand any polynomial of degree at most two without a nonzero-leading assumption. -/
theorem quadratic_eval_coefficients (p : ℝ[X]) (hp : p.natDegree ≤ 2) (x : ℝ) :
    p.eval x = p.coeff 0+p.coeff 1*x+p.coeff 2*x^2 := by
  rw [p.eval_eq_sum_range' (by omega : p.natDegree < 3)]
  simp [Finset.sum_range_succ]

/-- The middle quadratic Bernstein entry on [1,M]. -/
def ratioMiddle (p : ℝ[X]) (M : ℝ) : ℝ :=
  p.coeff 0+(1+M)*p.coeff 1/2+M*p.coeff 2

/-- Nonnegative endpoint and middle entries cover the entire closed ratio interval. -/
theorem quadratic_ratio_nonneg (p : ℝ[X]) (hp : p.natDegree ≤ 2)
    {M m : ℝ} (hM : 1 < M) (hm1 : 1 ≤ m) (hmM : m ≤ M)
    (h0 : 0 ≤ p.eval 1) (h1 : 0 ≤ ratioMiddle p M) (h2 : 0 ≤ p.eval M) :
    0 ≤ p.eval m := by
  let u := (m-1)/(M-1)
  have hden : 0 < M-1 := sub_pos.mpr hM
  have hu0 : 0 ≤ u := div_nonneg (sub_nonneg.mpr hm1) hden.le
  have hu1 : u ≤ 1 := (div_le_one hden).mpr (by linarith)
  have hid : p.eval m = p.eval 1*(1-u)^2+2*ratioMiddle p M*u*(1-u)+p.eval M*u^2 := by
    simp only [quadratic_eval_coefficients p hp, ratioMiddle, u]
    field_simp
    ring
  rw [hid]
  exact add_nonneg
    (add_nonneg (mul_nonneg h0 (sq_nonneg _))
      (mul_nonneg (mul_nonneg (mul_nonneg (by norm_num) h1) hu0) (sub_nonneg.mpr hu1)))
    (mul_nonneg h2 (sq_nonneg _))

namespace EvenGeometry
variable {B : Box6}

/-- Three signs of the exact ratio polynomial suffice for one original lower-odd source. -/
theorem lower_source_nonneg_of_ratio_entries (q : EvenGeometry B)
    (hB : B.RobustlyHurwitz) (i : Bool) (t : ℝ)
    (h0 : 0 ≤ (q.ratioSourcePoly i t).eval 1)
    (h1 : 0 ≤ ratioMiddle (q.ratioSourcePoly i t) ((q.c-q.A)/(q.b-q.B)))
    (h2 : 0 ≤ (q.ratioSourcePoly i t).eval ((q.c-q.A)/(q.b-q.B))) :
    0 ≤ (q.contactSource q.candidate (i,false)).eval t := by
  obtain ⟨hm1, hmM⟩ := q.ratio_bounds hB
  have hM := lt_of_lt_of_le hm1 hmM
  have hp := quadratic_ratio_nonneg (q.ratioSourcePoly i t) (q.ratio_source_degree i t)
    hM hm1.le hmM h0 h1 h2
  rw [q.ratio_source_eval hB i t] at hp
  obtain ⟨hba, hca, hCA, hCB, _, _, _, _, _, _⟩ := q.positive_gaps
  have hD1 : 0 < q.D1 := mul_pos hba hca
  have hD2 : 0 < q.D2 := mul_pos hCA hCB
  have hW := (q.clear_factors_pos hB).2
  exact (mul_nonneg_iff_of_pos_left (mul_pos (mul_pos hD1 hD2) hW)).mp hp

end EvenGeometry
end
end SPR.N6
