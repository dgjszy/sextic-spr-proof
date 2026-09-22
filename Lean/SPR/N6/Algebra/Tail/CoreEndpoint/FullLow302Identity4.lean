import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow302Data

/-! Exact source layer for the low (3,0,2) coefficient.
The complete sign statement requires assembling all seven layers. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow302
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition4 (e f g v : ℝ) :
    FullLow3024.source e f g v = FullLow3024.leading0 e g v +
      f*FullLow3024.leading1 e g v + f^2*FullLow3024.remainder e f g v := by
  unfold FullLow3024.source FullLow3024.leading0 FullLow3024.leading1 FullLow3024.remainder
  unfold SmallGap.PolarCoefficientsLow4.c320 SmallGap.PolarCoefficientsLow3.c410
    SmallGap.PolarCoefficientsLow2.c500 SmallGap.ReducedLayers.low0_100_2
    SmallGap.ReducedLayers.low0_100_3 SmallGap.ReducedLayers.low0_100_4
    SmallGap.ReducedLayers.low0_001_3 SmallGap.ReducedLayers.low0_001_4
    SmallGap.ReducedLayers.low1_200_2 SmallGap.ReducedLayers.low1_200_3
    SmallGap.ReducedLayers.low1_200_4 SmallGap.ReducedLayers.low1_101_3
    SmallGap.ReducedLayers.low1_101_4 SmallGap.ReducedLayers.low1_002_4
  simp only [FullLow3024.remainderData, NonnegativeExpression.eval]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow302
