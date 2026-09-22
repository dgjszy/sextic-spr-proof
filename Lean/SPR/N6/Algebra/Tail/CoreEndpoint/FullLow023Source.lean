import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow023
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow0230.source e f g v+FullLow0231.source e f g v*A+FullLow0232.source e f g
    v*A^2+FullLow0233.source e f g v*A^3+FullLow0234.source e f g v*A^4+FullLow0235.source e f g
    v*A^5+FullLow0236.source e f g v*A^6+FullLow0237.source e f g v*A^7+FullLow0238.source e f g
    v*A^8+FullLow0239.source e f g v*A^9+FullLow02310.source e f g v*A^10+FullLow02311.source e f
    g v*A^11

end
end SPR.N6.Tail.CoreEndpoint.FullLow023
