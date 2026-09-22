import SPR.N6.Construction.LowerSource
import SPR.N6.Algebra.FirstBand.Source

/-!
# Link the first-band scalar certificate to the original candidate quotient

All parameters are actual root gaps. No frequency-dependent numerator or
replacement odd ratio is introduced by the interval coordinate u.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
variable {B : Box6}

set_option maxHeartbeats 0 in
-- Three small parameter identities connect the scalar clearing quantities.
/-- The same clearing weight, denominator, and mixing coefficient. -/
theorem first_band_scalars (q : EvenGeometry B) :
    let a := q.a
    let d := q.A-q.a
    let e := q.B-q.A
    let f := q.b-q.B
    let g := q.c-q.b
    let h := q.C-q.c
    q.commonWeight = FirstBand.w0 a d e f g h+FirstBand.w1 a d e f g h*q.ratio ∧
    q.D1*q.D2 = FirstBand.den a d e f g h ∧
    q.clearedBaseSecond = FirstBand.mix a d e f g h := by
  dsimp
  simp only [commonWeight, clearWeightA, clearWeightB, clearWeightb, clearWeightc,
    FirstBand.w0, FirstBand.w1, FirstBand.den, FirstBand.mix, clearedBaseSecond, D1,D2]
  refine ⟨?_,?_,?_⟩ <;> ring

/-- Actual lower baseline residual in the same first-band coordinate. -/
theorem first_band_residual (q : EvenGeometry B) (u : ℝ) :
    let a := q.a
    let d := q.A-q.a
    let e := q.B-q.A
    let f := q.b-q.B
    let g := q.c-q.b
    let h := q.C-q.c
    q.D1*q.D2*q.residualLower (a+d*u) =
      FirstBand.l0 a d e f g h+FirstBand.l1 a d e f g h*u+
        FirstBand.l2 a d e f g h*u^2 := by
  obtain ⟨hba,hca,hCA,hCB,_,_,_,_,_,_⟩ := q.positive_gaps
  have hD1 : q.D1 ≠ 0 := ne_of_gt (mul_pos hba hca)
  have hD2 : q.D2 ≠ 0 := ne_of_gt (mul_pos hCA hCB)
  dsimp only
  simp only [residualLower, FirstBand.l0, FirstBand.l1, FirstBand.l2]
  field_simp
  unfold D1 D2
  ring

set_option maxHeartbeats 0 in
-- Translation expands only the quadratic zero direction, not the full quartic.
/-- The same zero direction in first-band frequency and ratio coefficients. -/
theorem first_band_zero (q : EvenGeometry B) (u : ℝ) :
    let a := q.a
    let d := q.A-q.a
    let e := q.B-q.A
    let f := q.b-q.B
    let g := q.c-q.b
    let h := q.C-q.c
    let m := q.ratio
    q.lowerZeroQuotient false (a+d*u) =
      (FirstBand.z00 a d e f g h+FirstBand.z01 a d e f g h*m+FirstBand.z02 a d e f g h*m^2)+
      (FirstBand.z10 a d e f g h+FirstBand.z11 a d e f g h*m+FirstBand.z12 a d e f g h*m^2)*u+
      (FirstBand.z20 a d e f g h+FirstBand.z21 a d e f g h*m+FirstBand.z22 a d e f g h*m^2)*u^2 := by
  dsimp only
  simp only [lowerZeroQuotient, Bool.false_eq_true, ite_false, LowerZero.q0,
    LowerZero.q00, LowerZero.q01, LowerZero.q02, FirstBand.z00, FirstBand.z01,
    FirstBand.z02, FirstBand.z10, FirstBand.z11, FirstBand.z12, FirstBand.z20,
    FirstBand.z21, FirstBand.z22]
  ring

/-- Exact first-band source identity for the actual candidate. -/
theorem first_band_source (q : EvenGeometry B) (hB : B.RobustlyHurwitz) (u : ℝ) :
    q.D1*q.D2*q.commonWeight*
      (q.contactQuotient q.candidate (false,false)).eval (q.a+(q.A-q.a)*u) =
    FirstBand.source q.a (q.A-q.a) (q.B-q.A) (q.b-q.B) (q.c-q.b) (q.C-q.c) q.ratio u := by
  obtain ⟨hW,hD,hF⟩ := q.first_band_scalars
  have hL := q.first_band_residual u
  have hZ := q.first_band_zero u
  rw [q.lower_candidate_quotient hB false]
  simp only [lowerBaseline, Bool.false_eq_true, ite_false]
  have hid : q.D1*q.D2*q.commonWeight*
      (q.ratio*(q.a+(q.A-q.a)*u-q.b)^2*q.residualLower (q.a+(q.A-q.a)*u)+
        (q.a+(q.A-q.a)*u)*(q.a+(q.A-q.a)*u-q.A)^2) =
    q.commonWeight*(q.ratio*(q.a+(q.A-q.a)*u-q.b)^2*
      (q.D1*q.D2*q.residualLower (q.a+(q.A-q.a)*u))+
      (q.D1*q.D2)*(q.a+(q.A-q.a)*u)*(q.A-q.a)^2*(u-1)^2) := by ring
  rw [hid,hL,hD,hW,hF,hZ]
  unfold FirstBand.source FirstBand.jump
  ring

end EvenGeometry
end
end SPR.N6
