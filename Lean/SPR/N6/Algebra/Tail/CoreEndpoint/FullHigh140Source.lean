import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh140Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh140
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh1400.source e f g v+FullHigh1401.source e f g v*A+FullHigh1402.source e f g
    v*A^2+FullHigh1403.source e f g v*A^3+FullHigh1404.source e f g v*A^4+FullHigh1405.source e f
    g v*A^5+FullHigh1406.source e f g v*A^6+FullHigh1407.source e f g v*A^7+FullHigh1408.source e
    f g v*A^8+FullHigh1409.source e f g v*A^9+FullHigh14010.source e f g v*A^10

end
end SPR.N6.Tail.CoreEndpoint.FullHigh140
