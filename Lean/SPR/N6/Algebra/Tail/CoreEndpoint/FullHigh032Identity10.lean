import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Data

/-! Exact A^10 source identity for FullHigh032.
This is the unchanged algebraic identity, checked in its own module to bound
the live proof environment. The complete sign argument remains in FullHigh032. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0
namespace FullHigh032

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition10 (e f g v : ℝ) :
    FullHigh03210.source e f g v = FullHigh03210.leading0 e g v +
      f*FullHigh03210.leading1 e g v + f^2*FullHigh03210.remainder e f g v := by
  unfold FullHigh03210.source FullHigh03210.leading0 FullHigh03210.leading1 FullHigh03210.remainder
  unfold SmallGap.PolarCoefficientsHigh2.c500 SmallGap.ReducedLayers.high0_010_4
    SmallGap.ReducedLayers.high0_001_3 SmallGap.ReducedLayers.high1_020_6
    SmallGap.ReducedLayers.high1_011_5 SmallGap.ReducedLayers.high1_002_4
  simp only [FullHigh03210.remainderData, NonnegativeExpression.eval]
  ring

end FullHigh032
end
end SPR.N6.Tail.CoreEndpoint
