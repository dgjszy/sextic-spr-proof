import SPR.N6.Algebra.Tail.CoreEndpoint.PureLowSource
import SPR.N6.Algebra.Tail.CoreEndpoint.PureLow1

/-! Complete compactified source coefficient 1, with no frequency term omitted. -/
namespace SPR.N6.Tail.CoreEndpoint.PureSource
noncomputable section
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 0 in
-- Each first-root coefficient is normalized separately.
theorem low_coefficient1 (e f g v : ℝ) : lr1 e f g v = PureLow1.source e f g v := by
  simp only [lr1,D1,D2,W,H0,H1,H2,LZ0,LZ1,LZ2,node0,lz0,lz1,lz2,L,J,M,PureLow1.source]
  ring
end
end SPR.N6.Tail.CoreEndpoint.PureSource
