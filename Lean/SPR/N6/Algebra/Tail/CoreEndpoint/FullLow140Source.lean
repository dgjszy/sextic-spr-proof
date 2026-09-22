import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow140Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow140
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow1400.source e f g v+FullLow1401.source e f g v*A+FullLow1402.source e f g
    v*A^2+FullLow1403.source e f g v*A^3+FullLow1404.source e f g v*A^4+FullLow1405.source e f g
    v*A^5+FullLow1406.source e f g v*A^6+FullLow1407.source e f g v*A^7+FullLow1408.source e f g
    v*A^8+FullLow1409.source e f g v*A^9+FullLow14010.source e f g v*A^10+FullLow14011.source e f
    g v*A^11+FullLow14012.source e f g v*A^12

end
end SPR.N6.Tail.CoreEndpoint.FullLow140
