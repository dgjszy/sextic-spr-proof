import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh302Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh302
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh3020.source e f g v+FullHigh3021.source e f g v*A+FullHigh3022.source e f g
    v*A^2+FullHigh3023.source e f g v*A^3+FullHigh3024.source e f g v*A^4

end
end SPR.N6.Tail.CoreEndpoint.FullHigh302
