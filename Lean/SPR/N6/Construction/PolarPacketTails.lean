import SPR.N6.Construction.PolarCore
import SPR.N6.Algebra.Tail.CoreFrequency
import SPR.N6.Algebra.Tail.SmallGap.PolarPacket

/-!
# Root-source tails from an explicit outer packet

The packet hypotheses below are kept separate from the algebraic bridge.  A
packet sign certificate is supplied by the caller; this file only transports
that certificate through the same physical coordinates to the two RootSource
tails.  The low bridge uses the denominator-free frequency compactification,
so the endpoint `t = B` is retained by the closed-interval theorem.
-/
namespace SPR.N6
noncomputable section

open Tail
open Tail.SmallGap

namespace OuterParameters

/-! The following two lemmas are deliberately parameterized by the packet
signs.  In particular, they do not assert signs for `highOuter` or `lowOuter`.
-/

/-- A nonnegative high packet gives the same upper RootSource tail. -/
theorem high_root_tail_of_packet (p : OuterParameters)
    (hA : 0 ≤ p.A) (he : 0 < p.e) (hf : 0 < p.f) (hg : 0 < p.g)
    (hw1 : 0 ≤ p.width1) (hw2 : 0 ≤ p.width2) (hw3 : 0 ≤ p.width3)
    (hpacket : ∀ v : ℝ, 0 ≤ v →
      QuinticSource.Nonnegative (SmallGap.PolarPacket.highOuter
        p.A p.e p.f p.g v)) :
    ∀ v : ℝ, 0 ≤ v →
      0 ≤ Tail.RootSource.core false p.a p.A p.B p.b p.c p.C
        ((p.e+p.f+p.g)/p.f) (p.b+v) := by
  obtain ⟨hx,hy,hz,_,_,_⟩ := p.coordinates he hf hg hw1 hw2 hw3
  intro v hv
  have hpacket' := hpacket v hv
  have hpolar := SmallGap.PolarPacket.high_nonnegative hpacket' hx hy hz
  have hsource := p.high_core_eq_polar he hf hg hw1 hw2 hw3 v
  rw [hsource]
  exact mul_nonneg (by linarith) hpolar

/-- A nonnegative low packet gives the compactified low RootSource tail. -/
theorem low_root_tail_of_packet (p : OuterParameters)
    (hA : 0 ≤ p.A) (he : 0 < p.e) (hf : 0 < p.f) (hg : 0 < p.g)
    (hw1 : 0 ≤ p.width1) (hw2 : 0 ≤ p.width2) (hw3 : 0 ≤ p.width3)
    (hpacket : ∀ v : ℝ, 0 ≤ v →
      QuinticSource.Nonnegative (SmallGap.PolarPacket.lowOuter
        p.A p.e p.f p.g v)) :
    ∀ t : ℝ, 0 ≤ t → t ≤ p.B →
      0 ≤ Tail.RootSource.core true p.a p.A p.B p.b p.c p.C
        ((p.e+p.f+p.g)/p.f) t := by
  obtain ⟨hx,hy,hz,_,_,_⟩ := p.coordinates he hf hg hw1 hw2 hw3
  have hB : 0 < p.B := by
    simp only [OuterParameters.B]
    linarith
  have hcompact : ∀ v : ℝ, 0 ≤ v →
      0 ≤ Tail.RootSource.core true p.a p.A p.B p.b p.c p.C
        ((p.e+p.f+p.g)/p.f) (p.B*v/(1+v)) := by
    intro v hv
    have hv1 : 0 < 1 + v := by linarith
    have hpacket' := hpacket v hv
    have hpolar := SmallGap.PolarPacket.low_nonnegative hpacket' hx hy hz
    have hsource := p.low_core_eq_polar he hf hg hw1 hw2 hw3 v
      (ne_of_gt hv1)
    have hright : 0 ≤ (p.e+p.f+p.g) *
        PolarSource.polarPLow p.A p.e p.f p.g
          p.polarFirst p.polarSecond p.polarThird v := by
      exact mul_nonneg (by linarith) hpolar
    apply (mul_nonneg_iff_of_pos_left (sq_pos_of_pos hv1)).mp
    rw [hsource]
    exact hright
  apply Tail.RootSource.low_core_of_compactification
    p.a p.A p.B p.b p.c p.C ((p.e+p.f+p.g)/p.f) hB
  intro v hv
  have hv1 : 0 < 1 + v := by linarith
  rw [Tail.RootSource.coreFrequency_eq true p.a p.A p.B p.b p.c p.C
    ((p.e+p.f+p.g)/p.f) (p.B*v) (1+v) (ne_of_gt hv1)]
  exact mul_nonneg (sq_nonneg _) (hcompact v hv)

end OuterParameters

namespace EvenGeometry
variable {B : Box6}

/-- The packet high tail for the actual root geometry. -/
theorem high_root_tail_of_packet (q : EvenGeometry B)
    (hpacket : ∀ v : ℝ, 0 ≤ v →
      QuinticSource.Nonnegative (SmallGap.PolarPacket.highOuter
        q.outerParameters.A q.outerParameters.e q.outerParameters.f
          q.outerParameters.g v)) :
    ∀ t : ℝ, q.b ≤ t →
      0 ≤ Tail.RootSource.core false q.a q.A q.B q.b q.c q.C
        ((q.c-q.A)/(q.b-q.B)) t := by
  obtain ⟨hw1,hw2,hw3⟩ := q.outer_widths
  have hA : 0 ≤ q.outerParameters.A :=
    (lt_trans q.a_pos q.a_lt_A).le
  have he : 0 < q.outerParameters.e := sub_pos.mpr q.A_lt_B
  have hf : 0 < q.outerParameters.f := sub_pos.mpr q.B_lt_b
  have hg : 0 < q.outerParameters.g := sub_pos.mpr q.b_lt_c
  intro t ht
  have hv : 0 ≤ t-q.b := sub_nonneg.mpr ht
  have hh := q.outerParameters.high_root_tail_of_packet
    hA he hf hg hw1 hw2 hw3 hpacket (t-q.b) hv
  have hb : q.outerParameters.b+(t-q.b) = t := by
    simp [EvenGeometry.outerParameters,OuterParameters.b,OuterParameters.B]
  have hm : (q.outerParameters.e+q.outerParameters.f+q.outerParameters.g)/
      q.outerParameters.f = (q.c-q.A)/(q.b-q.B) := by
    simp only [EvenGeometry.outerParameters]
    congr 1
    ring
  have ha' : q.outerParameters.a = q.a := rfl
  have hA' : q.outerParameters.A = q.A := rfl
  have hB' : q.outerParameters.B = q.B := by
    simp [EvenGeometry.outerParameters,OuterParameters.B]
  have hb' : q.outerParameters.b = q.b := by
    simp [EvenGeometry.outerParameters,OuterParameters.b,OuterParameters.B]
  have hc' : q.outerParameters.c = q.c := by
    simp [EvenGeometry.outerParameters,OuterParameters.c,OuterParameters.b,
      OuterParameters.B]
  have hC' : q.outerParameters.C = q.C := rfl
  rw [hb,hm] at hh
  simpa only [ha',hA',hB',hb',hc',hC'] using hh

/-- The packet low tail for the same actual root geometry. -/
theorem low_root_tail_of_packet (q : EvenGeometry B)
    (hpacket : ∀ v : ℝ, 0 ≤ v →
      QuinticSource.Nonnegative (SmallGap.PolarPacket.lowOuter
        q.outerParameters.A q.outerParameters.e q.outerParameters.f
          q.outerParameters.g v)) :
    ∀ t : ℝ, 0 ≤ t → t ≤ q.B →
      0 ≤ Tail.RootSource.core true q.a q.A q.B q.b q.c q.C
        ((q.c-q.A)/(q.b-q.B)) t := by
  obtain ⟨hw1,hw2,hw3⟩ := q.outer_widths
  have hA : 0 ≤ q.outerParameters.A :=
    (lt_trans q.a_pos q.a_lt_A).le
  have he : 0 < q.outerParameters.e := sub_pos.mpr q.A_lt_B
  have hf : 0 < q.outerParameters.f := sub_pos.mpr q.B_lt_b
  have hg : 0 < q.outerParameters.g := sub_pos.mpr q.b_lt_c
  intro t ht0 htB
  have hh := q.outerParameters.low_root_tail_of_packet
    hA he hf hg hw1 hw2 hw3 hpacket t ht0 (by
      simpa [EvenGeometry.outerParameters,OuterParameters.B] using htB)
  have hB' : q.outerParameters.B = q.B := by
    simp [EvenGeometry.outerParameters,OuterParameters.B]
  have hm : (q.outerParameters.e+q.outerParameters.f+q.outerParameters.g)/
      q.outerParameters.f = (q.c-q.A)/(q.b-q.B) := by
    simp only [EvenGeometry.outerParameters]
    congr 1
    ring
  have ha' : q.outerParameters.a = q.a := rfl
  have hA' : q.outerParameters.A = q.A := rfl
  have hb' : q.outerParameters.b = q.b := by
    simp [EvenGeometry.outerParameters,OuterParameters.b,OuterParameters.B]
  have hc' : q.outerParameters.c = q.c := by
    simp [EvenGeometry.outerParameters,OuterParameters.c,OuterParameters.b,
      OuterParameters.B]
  have hC' : q.outerParameters.C = q.C := rfl
  rw [hB',hm] at hh
  simpa only [ha',hA',hb',hc',hC'] using hh

end EvenGeometry
end
end SPR.N6
