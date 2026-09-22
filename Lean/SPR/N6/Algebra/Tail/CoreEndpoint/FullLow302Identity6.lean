import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow302Data

/-! Exact source layer for the low (3,0,2) coefficient.
The complete sign statement requires assembling all seven layers. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow302
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition6 (e f g v : ℝ) :
    FullLow3026.source e f g v = FullLow3026.leading0 e g v +
      f*FullLow3026.leading1 e g v + f^2*FullLow3026.remainder e f g v := by
  unfold FullLow3026.source FullLow3026.leading0 FullLow3026.leading1 FullLow3026.remainder
  unfold SmallGap.PolarCoefficientsLow4.c500 SmallGap.ReducedLayers.low0_100_4
    SmallGap.ReducedLayers.low0_001_5 SmallGap.ReducedLayers.low1_200_4
    SmallGap.ReducedLayers.low1_101_5 SmallGap.ReducedLayers.low1_002_6
  simp only [FullLow3026.remainderData, NonnegativeExpression.eval]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow302
