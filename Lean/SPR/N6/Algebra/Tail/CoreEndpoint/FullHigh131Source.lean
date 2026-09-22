import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh131Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh131
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh1310.source e f g v+FullHigh1311.source e f g v*A+FullHigh1312.source e f g
    v*A^2+FullHigh1313.source e f g v*A^3+FullHigh1314.source e f g v*A^4+FullHigh1315.source e f
    g v*A^5+FullHigh1316.source e f g v*A^6+FullHigh1317.source e f g v*A^7+FullHigh1318.source e
    f g v*A^8+FullHigh1319.source e f g v*A^9

end
end SPR.N6.Tail.CoreEndpoint.FullHigh131
