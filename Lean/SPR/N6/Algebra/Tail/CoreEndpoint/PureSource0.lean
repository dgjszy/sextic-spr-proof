import SPR.N6.Algebra.Tail.CoreEndpoint.PureSource
import SPR.N6.Algebra.Tail.CoreEndpoint.PureHigh0

/-! Source identity for one complete first-root coefficient. -/
namespace SPR.N6.Tail.CoreEndpoint.PureSource
noncomputable section
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 0 in
-- This bounded coefficient identity avoids expansion of all first-root powers at once.
theorem coefficient0 (e f g v : ℝ) :
    D1 e f g*D2 e f g*W e f g*(e+f+v)^2+H0 e f g*Z e f g v = PureHigh0.source e f g v := by
  simp only [D1,D2,W,H0,H1,H2,Z,z0,z1,z2,L,J,M,PureHigh0.source]
  ring
end
end SPR.N6.Tail.CoreEndpoint.PureSource
