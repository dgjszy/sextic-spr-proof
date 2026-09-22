import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh113Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh113
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh1130.source e f g v+FullHigh1131.source e f g v*A+FullHigh1132.source e f g
    v*A^2+FullHigh1133.source e f g v*A^3+FullHigh1134.source e f g v*A^4+FullHigh1135.source e f
    g v*A^5+FullHigh1136.source e f g v*A^6+FullHigh1137.source e f g v*A^7

end
end SPR.N6.Tail.CoreEndpoint.FullHigh113
