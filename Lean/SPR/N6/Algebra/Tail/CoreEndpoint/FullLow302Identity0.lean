import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow302Data

/-! Exact source layer for the low (3,0,2) coefficient.
The complete sign statement requires assembling all seven layers. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow302
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition0 (e f g v : ℝ) :
    FullLow3020.source e f g v = FullLow3020.leading0 e g v +
      f*FullLow3020.leading1 e g v + f^2*FullLow3020.remainder e f g v := by
  unfold FullLow3020.source FullLow3020.leading0 FullLow3020.leading1 FullLow3020.remainder
  unfold SmallGap.PolarCoefficientsLow0.c320 SmallGap.ReducedLayers.low0_100_0
    SmallGap.ReducedLayers.low0_001_0 SmallGap.ReducedLayers.low1_200_0
    SmallGap.ReducedLayers.low1_101_0 SmallGap.ReducedLayers.low1_002_0
  simp only [FullLow3020.remainderData, NonnegativeExpression.eval]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow302
