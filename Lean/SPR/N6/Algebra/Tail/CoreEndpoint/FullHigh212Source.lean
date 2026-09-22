import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh212Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh212
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh2120.source e f g v+FullHigh2121.source e f g v*A+FullHigh2122.source e f g
    v*A^2+FullHigh2123.source e f g v*A^3+FullHigh2124.source e f g v*A^4+FullHigh2125.source e f
    g v*A^5+FullHigh2126.source e f g v*A^6

end
end SPR.N6.Tail.CoreEndpoint.FullHigh212
