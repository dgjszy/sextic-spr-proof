import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh023Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh023
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh0230.source e f g v+FullHigh0231.source e f g v*A+FullHigh0232.source e f g
    v*A^2+FullHigh0233.source e f g v*A^3+FullHigh0234.source e f g v*A^4+FullHigh0235.source e f
    g v*A^5+FullHigh0236.source e f g v*A^6+FullHigh0237.source e f g v*A^7+FullHigh0238.source e
    f g v*A^8+FullHigh0239.source e f g v*A^9

end
end SPR.N6.Tail.CoreEndpoint.FullHigh023
