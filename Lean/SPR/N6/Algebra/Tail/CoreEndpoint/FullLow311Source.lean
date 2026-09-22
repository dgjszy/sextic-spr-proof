import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow311Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow311
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow3110.source e f g v+FullLow3111.source e f g v*A+FullLow3112.source e f g
    v*A^2+FullLow3113.source e f g v*A^3+FullLow3114.source e f g v*A^4+FullLow3115.source e f g
    v*A^5+FullLow3116.source e f g v*A^6+FullLow3117.source e f g v*A^7

end
end SPR.N6.Tail.CoreEndpoint.FullLow311
