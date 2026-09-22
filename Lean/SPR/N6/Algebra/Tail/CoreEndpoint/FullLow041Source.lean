import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow041
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow0410.source e f g v+FullLow0411.source e f g v*A+FullLow0412.source e f g
    v*A^2+FullLow0413.source e f g v*A^3+FullLow0414.source e f g v*A^4+FullLow0415.source e f g
    v*A^5+FullLow0416.source e f g v*A^6+FullLow0417.source e f g v*A^7+FullLow0418.source e f g
    v*A^8+FullLow0419.source e f g v*A^9+FullLow04110.source e f g v*A^10+FullLow04111.source e f
    g v*A^11+FullLow04112.source e f g v*A^12+FullLow04113.source e f g v*A^13

end
end SPR.N6.Tail.CoreEndpoint.FullLow041
