import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow230Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow230
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow2300.source e f g v+FullLow2301.source e f g v*A+FullLow2302.source e f g
    v*A^2+FullLow2303.source e f g v*A^3+FullLow2304.source e f g v*A^4+FullLow2305.source e f g
    v*A^5+FullLow2306.source e f g v*A^6+FullLow2307.source e f g v*A^7+FullLow2308.source e f g
    v*A^8+FullLow2309.source e f g v*A^9+FullLow23010.source e f g v*A^10

end
end SPR.N6.Tail.CoreEndpoint.FullLow230
