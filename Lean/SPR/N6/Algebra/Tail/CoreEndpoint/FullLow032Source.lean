import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow032Data

/-! The complete source reconstructed from its finite A layers.
This definition is independent of the later sign certificate. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow032
noncomputable section

/-- The same complete source, before any sign assertion. -/
def source (A e f g v : ℝ) : ℝ :=
  FullLow0320.source e f g v+FullLow0321.source e f g v*A+FullLow0322.source e f g
    v*A^2+FullLow0323.source e f g v*A^3+FullLow0324.source e f g v*A^4+FullLow0325.source e f g
    v*A^5+FullLow0326.source e f g v*A^6+FullLow0327.source e f g v*A^7+FullLow0328.source e f g
    v*A^8+FullLow0329.source e f g v*A^9+FullLow03210.source e f g v*A^10+FullLow03211.source e f
    g v*A^11+FullLow03212.source e f g v*A^12

end
end SPR.N6.Tail.CoreEndpoint.FullLow032
