import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow203Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow203
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow2030.source e f g v+FullLow2031.source e f g v*A+FullLow2032.source e f g
    v*A^2+FullLow2033.source e f g v*A^3+FullLow2034.source e f g v*A^4+FullLow2035.source e f g
    v*A^5+FullLow2036.source e f g v*A^6+FullLow2037.source e f g v*A^7

end
end SPR.N6.Tail.CoreEndpoint.FullLow203
