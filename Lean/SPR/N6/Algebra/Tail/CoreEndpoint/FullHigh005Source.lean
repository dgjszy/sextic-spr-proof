import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh005Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh005
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh0050.source e f g v+FullHigh0051.source e f g v*A+FullHigh0052.source e f g
    v*A^2+FullHigh0053.source e f g v*A^3+FullHigh0054.source e f g v*A^4+FullHigh0055.source e f
    g v*A^5+FullHigh0056.source e f g v*A^6+FullHigh0057.source e f g v*A^7

end
end SPR.N6.Tail.CoreEndpoint.FullHigh005
