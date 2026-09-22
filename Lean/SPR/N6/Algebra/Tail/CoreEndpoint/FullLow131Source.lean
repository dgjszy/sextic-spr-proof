import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow131Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow131
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow1310.source e f g v+FullLow1311.source e f g v*A+FullLow1312.source e f g
    v*A^2+FullLow1313.source e f g v*A^3+FullLow1314.source e f g v*A^4+FullLow1315.source e f g
    v*A^5+FullLow1316.source e f g v*A^6+FullLow1317.source e f g v*A^7+FullLow1318.source e f g
    v*A^8+FullLow1319.source e f g v*A^9+FullLow13110.source e f g v*A^10+FullLow13111.source e f
    g v*A^11

end
end SPR.N6.Tail.CoreEndpoint.FullLow131
