import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh122Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh122
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh1220.source e f g v+FullHigh1221.source e f g v*A+FullHigh1222.source e f g
    v*A^2+FullHigh1223.source e f g v*A^3+FullHigh1224.source e f g v*A^4+FullHigh1225.source e f
    g v*A^5+FullHigh1226.source e f g v*A^6+FullHigh1227.source e f g v*A^7+FullHigh1228.source e
    f g v*A^8

end
end SPR.N6.Tail.CoreEndpoint.FullHigh122
