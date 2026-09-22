import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow005Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow005
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow0050.source e f g v+FullLow0051.source e f g v*A+FullLow0052.source e f g
    v*A^2+FullLow0053.source e f g v*A^3+FullLow0054.source e f g v*A^4+FullLow0055.source e f g
    v*A^5+FullLow0056.source e f g v*A^6+FullLow0057.source e f g v*A^7+FullLow0058.source e f g
    v*A^8+FullLow0059.source e f g v*A^9

end
end SPR.N6.Tail.CoreEndpoint.FullLow005
