import SPR.N6.Algebra.Tail.OuterHomogeneous
import SPR.N6.Algebra.WidthCoordinates
import SPR.N6.Construction.TailSource

/-!
# The homogeneous outer source uses the actual nonnegative width coordinates

All three coordinates are recovered from the actual even widths. Their
weighted sum is one, and they reconstruct the same two outer roots. This
supplies the source side of future coefficient certificates without assuming
that the enlarged simplex consists of physically admissible roots.
-/
namespace SPR.N6
noncomputable section

namespace OuterParameters

def coordinateSum (p : OuterParameters) : ℝ := p.L*p.x+p.H*p.y+p.dq*p.z

def firstNumerator (p : OuterParameters) : ℝ :=
  (p.A*p.L-p.J)*p.x+p.A*p.B*p.dq*p.y+p.A*p.B*p.L*p.z

def lastNumerator (p : OuterParameters) : ℝ :=
  ((p.c+p.f)*p.L-p.J)*p.x+p.b*p.c*p.dq*p.y+p.b*p.c*p.L*p.z

/-- Reconstruction supplies the exact complete source, including degenerate width faces. -/
theorem source_at_coordinates (p : OuterParameters)
    (he : 0 < p.e) (hf : 0 < p.f) (hg : 0 < p.g)
    (hw1 : 0 ≤ p.width1) (hw2 : 0 ≤ p.width2) (hw3 : 0 ≤ p.width3)
    (i : Bool) (m t : ℝ) :
    Tail.OuterHomogeneous.source i p.coordinateSum p.firstNumerator p.A p.B p.b p.c
      p.lastNumerator m t = 2*Tail.RootSource.source i p.a p.A p.B p.b p.c p.C m t := by
  obtain ⟨_,_,_,hS,ha,hC⟩ := p.coordinates he hf hg hw1 hw2 hw3
  change p.coordinateSum = 1 at hS
  change p.firstNumerator = p.a at ha
  change p.lastNumerator = p.C at hC
  rw [hS,ha,hC,Tail.OuterHomogeneous.source_at_one]

end OuterParameters

namespace EvenGeometry
variable {B : Box6}

/-- The three homogeneous coordinates of the actual geometry are nonnegative. -/
theorem outer_coordinates_nonnegative (q : EvenGeometry B) :
    0 ≤ q.outerParameters.x ∧ 0 ≤ q.outerParameters.y ∧ 0 ≤ q.outerParameters.z := by
  obtain ⟨hw1,hw2,hw3⟩ := q.outer_widths
  obtain ⟨hx,hy,hz,_,_,_⟩ := q.outerParameters.coordinates
    (sub_pos.mpr q.A_lt_B) (sub_pos.mpr q.B_lt_b) (sub_pos.mpr q.b_lt_c) hw1 hw2 hw3
  exact ⟨hx,hy,hz⟩

/-- The nonnegative-coordinate source is twice the actual arbitrary-ratio quotient. -/
theorem outer_source_eq (q : EvenGeometry B) (i : Bool) (m t : ℝ) :
    let p := q.outerParameters
    Tail.OuterHomogeneous.source i p.coordinateSum p.firstNumerator q.A q.B q.b q.c
      p.lastNumerator m t = 2*(q.ratioQuotientPoly i t).eval m := by
  obtain ⟨hw1,hw2,hw3⟩ := q.outer_widths
  have hs := q.outerParameters.source_at_coordinates
    (sub_pos.mpr q.A_lt_B) (sub_pos.mpr q.B_lt_b) (sub_pos.mpr q.b_lt_c) hw1 hw2 hw3 i m t
  have hB : q.outerParameters.B = q.B := by
    simp only [outerParameters,OuterParameters.B]
    ring
  have hb : q.outerParameters.b = q.b := by
    simp only [OuterParameters.b,outerParameters,OuterParameters.B]
    ring
  have hc : q.outerParameters.c = q.c := by
    simp only [OuterParameters.c,OuterParameters.b,outerParameters,OuterParameters.B]
    ring
  rw [hB,hb,hc] at hs
  change Tail.OuterHomogeneous.source i q.outerParameters.coordinateSum
    q.outerParameters.firstNumerator q.A q.B q.b q.c q.outerParameters.lastNumerator m t =
      2*Tail.RootSource.source i q.a q.A q.B q.b q.c q.C m t at hs
  rw [q.tail_source_eq] at hs
  exact hs

end EvenGeometry
end
end SPR.N6
