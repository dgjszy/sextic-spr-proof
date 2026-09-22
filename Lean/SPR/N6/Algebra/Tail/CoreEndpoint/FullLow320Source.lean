import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow320Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow320
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow3200.source e f g v+FullLow3201.source e f g v*A+FullLow3202.source e f g
    v*A^2+FullLow3203.source e f g v*A^3+FullLow3204.source e f g v*A^4+FullLow3205.source e f g
    v*A^5+FullLow3206.source e f g v*A^6+FullLow3207.source e f g v*A^7+FullLow3208.source e f g
    v*A^8

end
end SPR.N6.Tail.CoreEndpoint.FullLow320
