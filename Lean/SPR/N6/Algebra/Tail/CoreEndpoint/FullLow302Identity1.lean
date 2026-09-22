import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow302Data

/-! Exact source layer for the low (3,0,2) coefficient.
The complete sign statement requires assembling all seven layers. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow302
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition1 (e f g v : ℝ) :
    FullLow3021.source e f g v = FullLow3021.leading0 e g v +
      f*FullLow3021.leading1 e g v + f^2*FullLow3021.remainder e f g v := by
  unfold FullLow3021.source FullLow3021.leading0 FullLow3021.leading1 FullLow3021.remainder
  unfold SmallGap.PolarCoefficientsLow1.c320 SmallGap.PolarCoefficientsLow0.c410
    SmallGap.ReducedLayers.low0_100_0 SmallGap.ReducedLayers.low0_100_1
    SmallGap.ReducedLayers.low0_001_0 SmallGap.ReducedLayers.low0_001_1
    SmallGap.ReducedLayers.low1_200_0 SmallGap.ReducedLayers.low1_200_1
    SmallGap.ReducedLayers.low1_101_0 SmallGap.ReducedLayers.low1_101_1
    SmallGap.ReducedLayers.low1_002_1
  simp only [FullLow3021.remainderData, NonnegativeExpression.eval]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow302
