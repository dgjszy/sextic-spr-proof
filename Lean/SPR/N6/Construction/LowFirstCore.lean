import SPR.N6.Algebra.Tail.LowFirst.Zero
import SPR.N6.Algebra.Tail.LowFirst.Middle
import SPR.N6.Algebra.Tail.LowFirst.Contact
import SPR.N6.Construction.CoreConcavity

/-!
# The low first-ratio core on the entire closed frequency interval

Three exact quadratic Bernstein entries use the actual second even-width slack.
They cover the whole interval, including both contacts, and remove the last
first-ratio obligation from the concavity reduction. The two upper-ratio core
signs remain explicit hypotheses in the final synthesis interface.
-/
namespace SPR.N6
noncomputable section
open Polynomial
set_option Elab.async false

/-- A degree-at-most-two polynomial is nonnegative on a closed interval from three entries. -/
theorem quadratic_zero_interval_nonnegative (p : ℝ[X]) (hp : p.natDegree ≤ 2)
    {T t : ℝ} (hT : 0 < T) (ht0 : 0 ≤ t) (htT : t ≤ T)
    (h0 : 0 ≤ p.eval 0)
    (hm : 0 ≤ 4*p.eval 0+T*(p.eval 1-p.eval (-1)))
    (h1 : 0 ≤ p.eval T) : 0 ≤ p.eval t := by
  let u := t/T
  have hu0 : 0 ≤ u := div_nonneg ht0 hT.le
  have hu1 : u ≤ 1 := (div_le_one hT).mpr htT
  have hid : p.eval t = p.eval 0*(1-u)^2+
      (4*p.eval 0+T*(p.eval 1-p.eval (-1)))/2*u*(1-u)+p.eval T*u^2 := by
    simp only [quadratic_eval_coefficients p hp,u]
    field_simp
    ring
  rw [hid]
  exact add_nonneg
    (add_nonneg (mul_nonneg h0 (sq_nonneg _))
      (mul_nonneg (mul_nonneg (div_nonneg hm (by norm_num)) hu0)
        (sub_nonneg.mpr hu1))) (mul_nonneg h1 (sq_nonneg _))

namespace EvenGeometry
variable {B : Box6}

/-- The certificate slack is the same actual second even-width budget. -/
theorem low_first_core_slack (q : EvenGeometry B) :
    0 ≤ Tail.LowFirst.slack q.a (q.A-q.a) (q.B-q.A)
      (q.b-q.B) (q.c-q.b) (q.C-q.c) := by
  obtain ⟨_,hS⟩ := q.width_budget
  dsimp only [Tail.LowFirst.slack,Tail.LowFirst.slack0,Tail.LowFirst.kappa]
  nlinarith only [hS]

/-- All three frequency Bernstein entries concern the exact same first-ratio core. -/
theorem low_first_core_entries (q : EvenGeometry B) :
    let p := Tail.RootSource.corePolynomial true q.a q.A q.B q.b q.c q.C 1
    0 ≤ p.eval 0 ∧ 0 ≤ 4*p.eval 0+q.B*(p.eval 1-p.eval (-1)) ∧
      0 ≤ p.eval q.B := by
  dsimp only
  simp only [Tail.RootSource.corePolynomial_eval]
  have hd := (sub_pos.mpr q.a_lt_A).le
  have he := (sub_pos.mpr q.A_lt_B).le
  have hf := (sub_pos.mpr q.B_lt_b).le
  have hg := (sub_pos.mpr q.b_lt_c).le
  have hh := (sub_pos.mpr q.c_lt_C).le
  have hS := q.low_first_core_slack
  have h0 := Tail.LowFirst.Zero.nonnegative q.a_pos.le hd he hf hg hh hS
  have hm := Tail.LowFirst.Middle.nonnegative q.a_pos.le hd he hf hg hh hS
  have h1 := Tail.LowFirst.Contact.nonnegative q.a_pos.le hd he hf hg hh hS
  rw [← Tail.LowFirst.Zero.source] at h0
  rw [← Tail.LowFirst.Middle.source] at hm
  rw [← Tail.LowFirst.Contact.source] at h1
  have hA : q.a+(q.A-q.a) = q.A := by ring
  have hB' : q.a+(q.A-q.a)+(q.B-q.A) = q.B := by ring
  have hb : q.a+(q.A-q.a)+(q.B-q.A)+(q.b-q.B) = q.b := by ring
  have hc : q.a+(q.A-q.a)+(q.B-q.A)+(q.b-q.B)+(q.c-q.b) = q.c := by ring
  have hC : q.a+(q.A-q.a)+(q.B-q.A)+(q.b-q.B)+(q.c-q.b)+(q.C-q.c) = q.C := by ring
  rw [hC,hc,hb,hB',hA] at h0 hm h1
  exact ⟨by linarith only [h0],hm,by linarith only [h1]⟩

/-- The first low ratio endpoint is nonnegative at every required finite frequency. -/
theorem low_core_first_nonnegative (q : EvenGeometry B) (t : ℝ)
    (ht0 : 0 ≤ t) (htB : t ≤ q.B) :
    0 ≤ Tail.RootSource.core true q.a q.A q.B q.b q.c q.C 1 t := by
  have hB' : 0 < q.B := q.a_pos.trans (q.a_lt_A.trans q.A_lt_B)
  obtain ⟨h0,hm,h1⟩ := q.low_first_core_entries
  have hh := quadratic_zero_interval_nonnegative
    (Tail.RootSource.corePolynomial true q.a q.A q.B q.b q.c q.C 1)
    (Tail.RootSource.corePolynomial_degree true q.a q.A q.B q.b q.c q.C 1)
    hB' ht0 htB h0 hm h1
  simpa only [Tail.RootSource.corePolynomial_eval] using hh

/-- Only the two upper-ratio quadratic cores remain as universal tail obligations. -/
theorem synthesis_of_upper_ratio_cores (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (hhigh : ∀ t : ℝ, q.b ≤ t → 0 ≤
      Tail.RootSource.core false q.a q.A q.B q.b q.c q.C ((q.c-q.A)/(q.b-q.B)) t)
    (hlow : ∀ t : ℝ, 0 ≤ t → t ≤ q.B → 0 ≤
      Tail.RootSource.core true q.a q.A q.B q.b q.c q.C ((q.c-q.A)/(q.b-q.B)) t) :
    ∃ b : ℝ[X], b.natDegree = 6 ∧
      ∀ a : Poly6, B.Contains a → FrequencySPR a.toPoly b :=
  q.synthesis_of_core_ratio_endpoints hB hhigh q.low_core_first_nonnegative hlow

end EvenGeometry
end
end SPR.N6
