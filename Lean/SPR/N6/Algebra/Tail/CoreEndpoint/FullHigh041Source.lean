import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh041Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh041
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullHigh0410.source e f g v+FullHigh0411.source e f g v*A+FullHigh0412.source e f g
    v*A^2+FullHigh0413.source e f g v*A^3+FullHigh0414.source e f g v*A^4+FullHigh0415.source e f
    g v*A^5+FullHigh0416.source e f g v*A^6+FullHigh0417.source e f g v*A^7+FullHigh0418.source e
    f g v*A^8+FullHigh0419.source e f g v*A^9+FullHigh04110.source e f g
    v*A^10+FullHigh04111.source e f g v*A^11

end
end SPR.N6.Tail.CoreEndpoint.FullHigh041
