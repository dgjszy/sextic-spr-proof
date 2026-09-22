import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh203Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh203
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh2030.source e f g v+FullHigh2031.source e f g v*A+FullHigh2032.source e f g
    v*A^2+FullHigh2033.source e f g v*A^3+FullHigh2034.source e f g v*A^4+FullHigh2035.source e f
    g v*A^5

end
end SPR.N6.Tail.CoreEndpoint.FullHigh203
