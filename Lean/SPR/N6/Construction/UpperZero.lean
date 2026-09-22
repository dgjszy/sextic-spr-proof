import SPR.N6.Algebra.UpperInner.Source
import SPR.N6.Algebra.UpperInner.Left
import SPR.N6.Algebra.UpperInner.MiddleLower
import SPR.N6.Algebra.UpperInner.MiddleUpper
import SPR.N6.Algebra.UpperInner.Right
import SPR.N6.Construction.ClearedSource
import SPR.N6.Algebra.WidthBudget

/-!
# Upper zero-direction quotients of the same actual candidate

The static gap certificates are connected to the actual common weight, mean,
and interpolation polynomial before any sign is transferred.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
variable {B : Box6}

/-- The upper zero-direction quadratic, with positive common weight cleared. -/
def upperZeroQuotient (q : EvenGeometry B) (i : Bool) (t : ℝ) : ℝ :=
  (if i then UpperInner.q1 else UpperInner.q0)
    (q.A-q.a) (q.B-q.A) (q.b-q.B) (q.c-q.b) (q.C-q.c) q.ratio (t-q.B)

set_option maxHeartbeats 0 in
/-- The translated certificate uses precisely the actual weight and weighted root. -/
theorem upper_zero_components (q : EvenGeometry B) (t : ℝ) :
    UpperInner.weight (q.A-q.a) (q.B-q.A) (q.b-q.B) (q.c-q.b) (q.C-q.c) q.ratio =
      q.commonWeight ∧
    UpperInner.weightedRoot (q.A-q.a) (q.B-q.A) (q.b-q.B) (q.c-q.b) (q.C-q.c) q.ratio =
      q.commonWeightedRoot-q.B*q.commonWeight ∧
    UpperInner.odd (q.A-q.a) (q.B-q.A) (q.b-q.B) (q.c-q.b) (q.C-q.c) q.ratio (t-q.B) =
      q.clearedZeroOdd t := by
  simp only [UpperInner.weight, UpperInner.weightedRoot, UpperInner.odd,
    commonWeight, commonWeightedRoot, clearWeightA, clearWeightB, clearWeightb,
    clearWeightc, clearedZeroOdd]
  refine ⟨?_, ?_, ?_⟩ <;> ring

/-- Exact zero-source factorization, valid even at its contact node. -/
theorem upper_zero_source (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (i : Bool) (t : ℝ) :
    q.commonWeight*((t-q.rho)*(if i then B.evenUpper t else B.evenLower t)+
      q.zeroK t*q.ratio*q.upperOddShape t) =
    (t-(if i then q.B else q.b))^2*q.upperZeroQuotient i t := by
  obtain ⟨hW,hN,hZ⟩ := q.upper_zero_components t
  have hmean := q.common_weight_rho hB
  have hodd := q.cleared_zero_odd_identity hB t
  have hl := UpperInner.source_lower (q.A-q.a) (q.B-q.A) (q.b-q.B)
    (q.c-q.b) (q.C-q.c) q.ratio (t-q.B)
  have hu := UpperInner.source_upper (q.A-q.a) (q.B-q.A) (q.b-q.B)
    (q.c-q.b) (q.C-q.c) q.ratio (t-q.B)
  rw [hW,hN,hZ] at hl hu
  rw [← hmean, ← hodd] at hl hu
  cases i
  · simp only [Bool.false_eq_true, ite_false, upperZeroQuotient]
    rw [q.lower_value]
    unfold upperOddShape
    convert hl using 1 <;> ring
  · simp only [ite_true, upperZeroQuotient]
    rw [q.upper_value]
    unfold upperOddShape
    convert hu using 1 <;> ring

/-- The relaxed second slack follows from the actual width budget and a>0. -/
theorem upper_zero_slacks (q : EvenGeometry B) :
    0 ≤ UpperInner.firstSlack (q.A-q.a) (q.b-q.B) (q.C-q.c) ∧
    0 ≤ UpperInner.secondSlack (q.A-q.a) (q.B-q.A) (q.b-q.B) (q.c-q.b) (q.C-q.c) := by
  obtain ⟨hK,hS⟩ := q.width_budget
  dsimp only [UpperInner.firstSlack, UpperInner.secondSlack]
  have hn := mul_nonneg q.a_pos.le hK
  exact ⟨hK, by nlinarith only [hS,hn]⟩

/-- Four closed certificate bands, with the actual ratio and width slacks. -/
theorem upper_zero_basic_bands (q : EvenGeometry B) (hB : B.RobustlyHurwitz) :
    (∀ t : ℝ, q.A ≤ t → t ≤ q.B → 0 < q.upperZeroQuotient true t) ∧
    (∀ i : Bool, ∀ t : ℝ, q.B ≤ t → t ≤ q.b → 0 < q.upperZeroQuotient i t) ∧
    (∀ t : ℝ, q.b ≤ t → t ≤ q.c → 0 < q.upperZeroQuotient false t) := by
  let d := q.A-q.a
  let e := q.B-q.A
  let f := q.b-q.B
  let g := q.c-q.b
  let h := q.C-q.c
  have hd : 0 < d := sub_pos.mpr q.a_lt_A
  have he : 0 < e := sub_pos.mpr q.A_lt_B
  have hf : 0 < f := sub_pos.mpr q.B_lt_b
  have hg : 0 < g := sub_pos.mpr q.b_lt_c
  have hh : 0 < h := sub_pos.mpr q.c_lt_C
  obtain ⟨hK,hS⟩ := q.upper_zero_slacks
  change 0 ≤ UpperInner.firstSlack d f h at hK
  change 0 ≤ UpperInner.secondSlack d e f g h at hS
  obtain ⟨hm,hM⟩ := q.ratio_bounds hB
  have hM' : q.ratio ≤ (e+f+g)/f := by
    convert hM using 1 <;> dsimp [e,f,g] <;> congr 1 <;> ring
  refine ⟨?_, ?_, ?_⟩
  · intro t htA htB
    let u := (t-q.A)/e
    have hu0 : 0 ≤ u := div_nonneg (sub_nonneg.mpr htA) he.le
    have hu1 : u ≤ 1 := (div_le_one he).mpr (by dsimp [e]; linarith)
    have hid : t-q.B = -e+(0-(-e))*u := by dsimp [u]; field_simp [ne_of_gt he]; dsimp [e]; ring
    change 0 < UpperInner.q1 d e f g h q.ratio (t-q.B)
    rw [hid]
    exact UpperInner.Left.positive hd he hf hg hh hS hK hm.le hM' hu0 hu1
  · intro i t htB htb
    let u := (t-q.B)/f
    have hu0 : 0 ≤ u := div_nonneg (sub_nonneg.mpr htB) hf.le
    have hu1 : u ≤ 1 := (div_le_one hf).mpr (by dsimp [f]; linarith)
    have hid : t-q.B = 0+(f-0)*u := by dsimp [u]; field_simp; ring
    cases i
    · change 0 < UpperInner.q0 d e f g h q.ratio (t-q.B)
      rw [hid]
      exact UpperInner.MiddleLower.positive hd he hf hg hh hS hK hm.le hM' hu0 hu1
    · change 0 < UpperInner.q1 d e f g h q.ratio (t-q.B)
      rw [hid]
      exact UpperInner.MiddleUpper.positive hd he hf hg hh hS hK hm.le hM' hu0 hu1
  · intro t htb htc
    let u := (t-q.b)/g
    have hu0 : 0 ≤ u := div_nonneg (sub_nonneg.mpr htb) hg.le
    have hu1 : u ≤ 1 := (div_le_one hg).mpr (by dsimp [g]; linarith)
    have hid : t-q.B = f+((f+g)-f)*u := by dsimp [u]; field_simp [ne_of_gt hg]; dsimp [f,g]; ring
    change 0 < UpperInner.q0 d e f g h q.ratio (t-q.B)
    rw [hid]
    exact UpperInner.Right.positive hd he hf hg hh hS hK hm.le hM' hu0 hu1

/-- The two zero-direction quotients are positive on the entire inner band. -/
theorem upper_zero_pos (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (i : Bool) (t : ℝ) (htA : q.A ≤ t) (htc : t ≤ q.c) :
    0 < q.upperZeroQuotient i t := by
  obtain ⟨hl,hm,hr⟩ := q.upper_zero_basic_bands hB
  obtain ⟨hrB,hrb⟩ := q.rho_bounds hB
  have ht : 0 < t := (q.a_pos.trans q.a_lt_A).trans_le htA
  have hW := (q.clear_factors_pos hB).2
  have hgap : 0 ≤ B.evenUpper t-B.evenLower t :=
    sub_nonneg.mpr (B.component_bounds (B.corner_mem (true,false)) ht.le).1
  have h0 := q.upper_zero_source hB false t
  have h1 := q.upper_zero_source hB true t
  simp only [Bool.false_eq_true, ite_false, ite_true] at h0 h1
  have hd : (t-q.B)^2*q.upperZeroQuotient true t-
      (t-q.b)^2*q.upperZeroQuotient false t =
        q.commonWeight*(t-q.rho)*(B.evenUpper t-B.evenLower t) := by
    rw [← h0, ← h1]
    ring
  by_cases htB : t < q.B
  · cases i
    · have hp := mul_pos (sq_pos_of_ne_zero (sub_ne_zero.mpr (ne_of_lt htB)))
        (hl t htA htB.le)
      have hn := mul_nonpos_of_nonpos_of_nonneg
        (mul_nonpos_of_nonneg_of_nonpos hW.le (show t-q.rho ≤ 0 by linarith)) hgap
      have hprod : 0 < (t-q.b)^2*q.upperZeroQuotient false t := by linarith only [hd,hp,hn]
      by_contra hz
      exact (not_lt_of_ge (mul_nonpos_of_nonneg_of_nonpos (sq_nonneg _) (le_of_not_gt hz))) hprod
    · exact hl t htA htB.le
  · by_cases htb : t ≤ q.b
    · exact hm i t (le_of_not_gt htB) htb
    · have hbt : q.b < t := lt_of_not_ge htb
      cases i
      · exact hr t hbt.le htc
      · have hp := mul_pos (sq_pos_of_ne_zero (sub_ne_zero.mpr (ne_of_gt hbt)))
          (hr t hbt.le htc)
        have hn := mul_nonneg (mul_nonneg hW.le (show 0 ≤ t-q.rho by linarith)) hgap
        have hprod : 0 < (t-q.B)^2*q.upperZeroQuotient true t := by linarith only [hd,hp,hn]
        by_contra hz
        exact (not_lt_of_ge (mul_nonpos_of_nonneg_of_nonpos (sq_nonneg _) (le_of_not_gt hz))) hprod

end EvenGeometry
end
end SPR.N6
