import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow302Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow302
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow3020.source e f g v+FullLow3021.source e f g v*A+FullLow3022.source e f g
    v*A^2+FullLow3023.source e f g v*A^3+FullLow3024.source e f g v*A^4+FullLow3025.source e f g
    v*A^5+FullLow3026.source e f g v*A^6

end
end SPR.N6.Tail.CoreEndpoint.FullLow302
