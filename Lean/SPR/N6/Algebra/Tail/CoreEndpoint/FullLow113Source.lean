import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow113Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow113
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow1130.source e f g v+FullLow1131.source e f g v*A+FullLow1132.source e f g
    v*A^2+FullLow1133.source e f g v*A^3+FullLow1134.source e f g v*A^4+FullLow1135.source e f g
    v*A^5+FullLow1136.source e f g v*A^6+FullLow1137.source e f g v*A^7+FullLow1138.source e f g
    v*A^8+FullLow1139.source e f g v*A^9

end
end SPR.N6.Tail.CoreEndpoint.FullLow113
