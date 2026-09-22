import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh320Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh320
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh3200.source e f g v+FullHigh3201.source e f g v*A+FullHigh3202.source e f g
    v*A^2+FullHigh3203.source e f g v*A^3+FullHigh3204.source e f g v*A^4+FullHigh3205.source e f
    g v*A^5+FullHigh3206.source e f g v*A^6

end
end SPR.N6.Tail.CoreEndpoint.FullHigh320
