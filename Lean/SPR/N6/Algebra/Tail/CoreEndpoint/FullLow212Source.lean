import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow212Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow212
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow2120.source e f g v+FullLow2121.source e f g v*A+FullLow2122.source e f g
    v*A^2+FullLow2123.source e f g v*A^3+FullLow2124.source e f g v*A^4+FullLow2125.source e f g
    v*A^5+FullLow2126.source e f g v*A^6+FullLow2127.source e f g v*A^7+FullLow2128.source e f g
    v*A^8

end
end SPR.N6.Tail.CoreEndpoint.FullLow212
