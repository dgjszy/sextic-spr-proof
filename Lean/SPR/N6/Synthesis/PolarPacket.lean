import SPR.N6.Construction.PolarPacketTails
import SPR.N6.Synthesis.FixedEven

/-!
# Explicit polar-packet synthesis interface

The packet sign statements are explicit premises of this interface.  Once
provided, `Construction/PolarPacketTails.lean` transports them to the same
RootSource upper and lower tails, and the existing even-geometry synthesis
handles the original box.  The fixed-even branch is retained verbatim.
-/
namespace SPR.N6
noncomputable section

open Tail
open Tail.SmallGap

/-- Complete packet signs, with every parameter and finite compact frequency
quantified explicitly.  This is a certificate interface, not an assertion
that either packet is already nonnegative. -/
structure PolarPacketCertificates : Prop where
  high : ∀ A e f g v : ℝ, 0 ≤ A → 0 ≤ e → 0 ≤ f → 0 ≤ g → 0 ≤ v →
    QuinticSource.Nonnegative (PolarPacket.highOuter A e f g v)
  low : ∀ A e f g v : ℝ, 0 ≤ A → 0 ≤ e → 0 ≤ f → 0 ≤ g → 0 ≤ v →
    QuinticSource.Nonnegative (PolarPacket.lowOuter A e f g v)

namespace PolarPacketCertificates

/-! The next theorem exposes the exact RootSource tails before the original-box
assembly.  No packet sign is inferred from the name of the packet itself. -/

/-- A packet certificate gives both upper-ratio RootSource tails for one geometry. -/
theorem root_tails {B : Box6} {q : EvenGeometry B}
    (h : PolarPacketCertificates) :
    (∀ t : ℝ, q.b ≤ t →
      0 ≤ Tail.RootSource.core false q.a q.A q.B q.b q.c q.C
        ((q.c-q.A)/(q.b-q.B)) t) ∧
    (∀ t : ℝ, 0 ≤ t → t ≤ q.B →
      0 ≤ Tail.RootSource.core true q.a q.A q.B q.b q.c q.C
        ((q.c-q.A)/(q.b-q.B)) t) := by
  obtain ⟨hw1,hw2,hw3⟩ := q.outer_widths
  have hA : 0 ≤ q.outerParameters.A :=
    le_of_lt (lt_trans q.a_pos q.a_lt_A)
  have he : 0 ≤ q.outerParameters.e :=
    le_of_lt (sub_pos.mpr q.A_lt_B)
  have hf : 0 ≤ q.outerParameters.f :=
    le_of_lt (sub_pos.mpr q.B_lt_b)
  have hg : 0 ≤ q.outerParameters.g :=
    le_of_lt (sub_pos.mpr q.b_lt_c)
  constructor
  · apply q.high_root_tail_of_packet
    intro v hv
    exact h.high q.outerParameters.A q.outerParameters.e q.outerParameters.f
      q.outerParameters.g v hA he hf hg hv
  · apply q.low_root_tail_of_packet
    intro v hv
    exact h.low q.outerParameters.A q.outerParameters.e q.outerParameters.f
      q.outerParameters.g v hA he hf hg hv

end PolarPacketCertificates

/-- The explicit packet certificate implies the original robust SPR statement. -/
theorem synthesis_of_polar_packet_certificates
    (h : PolarPacketCertificates) : RobustSPRStatement := by
  intro B hB
  by_cases hw : B.EvenVarying
  · obtain ⟨q⟩ := B.even_geometry hB hw
    obtain ⟨hhigh,hlow⟩ := PolarPacketCertificates.root_tails h
      (q := q)
    exact q.synthesis_of_upper_ratio_cores hB hhigh hlow
  · have h2 := le_antisymm B.h2
      (le_of_not_gt (fun h2 => hw (Or.inl h2)))
    have h4 := le_antisymm B.h4
      (le_of_not_gt (fun h4 => hw (Or.inr (Or.inl h4))))
    have h6 := le_antisymm B.h6
      (le_of_not_gt (fun h6 => hw (Or.inr (Or.inr h6))))
    exact B.fixed_even_synthesis hB h2 h4 h6

end
end SPR.N6
