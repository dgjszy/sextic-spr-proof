import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow122Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow122
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow1220.source e f g v+FullLow1221.source e f g v*A+FullLow1222.source e f g
    v*A^2+FullLow1223.source e f g v*A^3+FullLow1224.source e f g v*A^4+FullLow1225.source e f g
    v*A^5+FullLow1226.source e f g v*A^6+FullLow1227.source e f g v*A^7+FullLow1228.source e f g
    v*A^8+FullLow1229.source e f g v*A^9+FullLow12210.source e f g v*A^10

end
end SPR.N6.Tail.CoreEndpoint.FullLow122
