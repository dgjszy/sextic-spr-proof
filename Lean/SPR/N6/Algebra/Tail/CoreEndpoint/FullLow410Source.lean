import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow410Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow410
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow4100.source e f g v+FullLow4101.source e f g v*A+FullLow4102.source e f g
    v*A^2+FullLow4103.source e f g v*A^3+FullLow4104.source e f g v*A^4+FullLow4105.source e f g
    v*A^5+FullLow4106.source e f g v*A^6

end
end SPR.N6.Tail.CoreEndpoint.FullLow410
