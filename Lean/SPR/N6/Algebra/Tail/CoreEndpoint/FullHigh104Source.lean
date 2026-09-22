import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh104Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh104
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh1040.source e f g v+FullHigh1041.source e f g v*A+FullHigh1042.source e f g
    v*A^2+FullHigh1043.source e f g v*A^3+FullHigh1044.source e f g v*A^4+FullHigh1045.source e f
    g v*A^5+FullHigh1046.source e f g v*A^6

end
end SPR.N6.Tail.CoreEndpoint.FullHigh104
