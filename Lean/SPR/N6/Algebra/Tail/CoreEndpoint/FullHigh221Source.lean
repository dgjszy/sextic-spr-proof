import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh221Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh221
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh2210.source e f g v+FullHigh2211.source e f g v*A+FullHigh2212.source e f g
    v*A^2+FullHigh2213.source e f g v*A^3+FullHigh2214.source e f g v*A^4+FullHigh2215.source e f
    g v*A^5+FullHigh2216.source e f g v*A^6+FullHigh2217.source e f g v*A^7

end
end SPR.N6.Tail.CoreEndpoint.FullHigh221
