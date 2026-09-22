import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow050Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow050
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow0500.source e f g v+FullLow0501.source e f g v*A+FullLow0502.source e f g
    v*A^2+FullLow0503.source e f g v*A^3+FullLow0504.source e f g v*A^4+FullLow0505.source e f g
    v*A^5+FullLow0506.source e f g v*A^6+FullLow0507.source e f g v*A^7+FullLow0508.source e f g
    v*A^8+FullLow0509.source e f g v*A^9+FullLow05010.source e f g v*A^10+FullLow05011.source e f
    g v*A^11+FullLow05012.source e f g v*A^12+FullLow05013.source e f g v*A^13+FullLow05014.source
    e f g v*A^14

end
end SPR.N6.Tail.CoreEndpoint.FullLow050
