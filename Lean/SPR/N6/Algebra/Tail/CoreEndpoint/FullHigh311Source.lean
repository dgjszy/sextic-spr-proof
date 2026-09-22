import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh311Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh311
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh3110.source e f g v+FullHigh3111.source e f g v*A+FullHigh3112.source e f g
    v*A^2+FullHigh3113.source e f g v*A^3+FullHigh3114.source e f g v*A^4+FullHigh3115.source e f
    g v*A^5

end
end SPR.N6.Tail.CoreEndpoint.FullHigh311
