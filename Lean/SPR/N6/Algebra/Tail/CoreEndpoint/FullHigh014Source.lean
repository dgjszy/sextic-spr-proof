import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh014Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh014
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh0140.source e f g v+FullHigh0141.source e f g v*A+FullHigh0142.source e f g
    v*A^2+FullHigh0143.source e f g v*A^3+FullHigh0144.source e f g v*A^4+FullHigh0145.source e f
    g v*A^5+FullHigh0146.source e f g v*A^6+FullHigh0147.source e f g v*A^7+FullHigh0148.source e
    f g v*A^8

end
end SPR.N6.Tail.CoreEndpoint.FullHigh014
