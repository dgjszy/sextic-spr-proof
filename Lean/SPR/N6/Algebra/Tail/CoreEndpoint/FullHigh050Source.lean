import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh050
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh0500.source e f g v+FullHigh0501.source e f g v*A+FullHigh0502.source e f g
    v*A^2+FullHigh0503.source e f g v*A^3+FullHigh0504.source e f g v*A^4+FullHigh0505.source e f
    g v*A^5+FullHigh0506.source e f g v*A^6+FullHigh0507.source e f g v*A^7+FullHigh0508.source e
    f g v*A^8+FullHigh0509.source e f g v*A^9+FullHigh05010.source e f g
    v*A^10+FullHigh05011.source e f g v*A^11+FullHigh05012.source e f g v*A^12

end
end SPR.N6.Tail.CoreEndpoint.FullHigh050
