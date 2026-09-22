import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow410Data

/-! Exact source layer for the low (4,1,0) coefficient.
The complete sign statement requires assembling all seven layers. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow410
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition3 (e f g v : ℝ) :
    FullLow4103.source e f g v = FullLow4103.leading0 e g v +
      f*FullLow4103.leading1 e g v + f^2*FullLow4103.remainder e f g v := by
  unfold FullLow4103.source FullLow4103.leading0 FullLow4103.leading1 FullLow4103.remainder
  unfold SmallGap.PolarCoefficientsLow3.c401 SmallGap.PolarCoefficientsLow2.c410
    SmallGap.PolarCoefficientsLow3.c410 SmallGap.PolarCoefficientsLow1.c500
    SmallGap.ReducedLayers.low0_100_1 SmallGap.ReducedLayers.low0_100_2
    SmallGap.ReducedLayers.low0_100_3 SmallGap.ReducedLayers.low0_010_3
    SmallGap.ReducedLayers.low1_200_1 SmallGap.ReducedLayers.low1_200_2
    SmallGap.ReducedLayers.low1_200_3 SmallGap.ReducedLayers.low1_110_3
  simp only [FullLow4103.remainderData, NonnegativeExpression.eval]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow410
