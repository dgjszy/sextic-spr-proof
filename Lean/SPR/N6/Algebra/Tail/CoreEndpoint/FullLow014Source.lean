import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow014Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow014
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow0140.source e f g v+FullLow0141.source e f g v*A+FullLow0142.source e f g
    v*A^2+FullLow0143.source e f g v*A^3+FullLow0144.source e f g v*A^4+FullLow0145.source e f g
    v*A^5+FullLow0146.source e f g v*A^6+FullLow0147.source e f g v*A^7+FullLow0148.source e f g
    v*A^8+FullLow0149.source e f g v*A^9+FullLow01410.source e f g v*A^10

end
end SPR.N6.Tail.CoreEndpoint.FullLow014
