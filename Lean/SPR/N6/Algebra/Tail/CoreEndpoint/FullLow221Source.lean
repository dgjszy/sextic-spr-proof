import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow221Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow221
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow2210.source e f g v+FullLow2211.source e f g v*A+FullLow2212.source e f g
    v*A^2+FullLow2213.source e f g v*A^3+FullLow2214.source e f g v*A^4+FullLow2215.source e f g
    v*A^5+FullLow2216.source e f g v*A^6+FullLow2217.source e f g v*A^7+FullLow2218.source e f g
    v*A^8+FullLow2219.source e f g v*A^9

end
end SPR.N6.Tail.CoreEndpoint.FullLow221
