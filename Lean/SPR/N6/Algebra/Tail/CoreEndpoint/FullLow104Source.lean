import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow104Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow104
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow1040.source e f g v+FullLow1041.source e f g v*A+FullLow1042.source e f g
    v*A^2+FullLow1043.source e f g v*A^3+FullLow1044.source e f g v*A^4+FullLow1045.source e f g
    v*A^5+FullLow1046.source e f g v*A^6+FullLow1047.source e f g v*A^7+FullLow1048.source e f g
    v*A^8

end
end SPR.N6.Tail.CoreEndpoint.FullLow104
