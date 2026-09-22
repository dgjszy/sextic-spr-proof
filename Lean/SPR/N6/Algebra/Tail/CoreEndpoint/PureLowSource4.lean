import SPR.N6.Algebra.Tail.CoreEndpoint.PureLowSource
import SPR.N6.Algebra.Tail.CoreEndpoint.PureLow4

/-! Complete compactified source coefficient 4, with no frequency term omitted. -/
namespace SPR.N6.Tail.CoreEndpoint.PureSource
noncomputable section
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 0 in
-- Each first-root coefficient is normalized separately.
theorem low_coefficient4 (e f g v : ℝ) : lr4 e f g v = PureLow4.source e f g v := by
  simp only [lr4,D1,D2,W,H0,H1,H2,LZ0,LZ1,LZ2,node0,lz0,lz1,lz2,L,J,M,PureLow4.source]
  ring
end
end SPR.N6.Tail.CoreEndpoint.PureSource
