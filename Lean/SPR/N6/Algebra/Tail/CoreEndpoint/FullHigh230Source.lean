import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh230Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh230
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh2300.source e f g v+FullHigh2301.source e f g v*A+FullHigh2302.source e f g
    v*A^2+FullHigh2303.source e f g v*A^3+FullHigh2304.source e f g v*A^4+FullHigh2305.source e f
    g v*A^5+FullHigh2306.source e f g v*A^6+FullHigh2307.source e f g v*A^7+FullHigh2308.source e
    f g v*A^8

end
end SPR.N6.Tail.CoreEndpoint.FullHigh230
