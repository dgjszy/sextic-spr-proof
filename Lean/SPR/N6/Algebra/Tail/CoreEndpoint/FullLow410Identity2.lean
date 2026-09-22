import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow410Data

/-! Exact source layer for the low (4,1,0) coefficient.
The complete sign statement requires assembling all seven layers. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow410
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition2 (e f g v : ℝ) :
    FullLow4102.source e f g v = FullLow4102.leading0 e g v +
      f*FullLow4102.leading1 e g v + f^2*FullLow4102.remainder e f g v := by
  unfold FullLow4102.source FullLow4102.leading0 FullLow4102.leading1 FullLow4102.remainder
  unfold SmallGap.PolarCoefficientsLow2.c401 SmallGap.PolarCoefficientsLow1.c410
    SmallGap.PolarCoefficientsLow2.c410 SmallGap.PolarCoefficientsLow0.c500
    SmallGap.ReducedLayers.low0_100_0 SmallGap.ReducedLayers.low0_100_1
    SmallGap.ReducedLayers.low0_100_2 SmallGap.ReducedLayers.low0_010_2
    SmallGap.ReducedLayers.low1_200_0 SmallGap.ReducedLayers.low1_200_1
    SmallGap.ReducedLayers.low1_200_2 SmallGap.ReducedLayers.low1_110_2
  simp only [FullLow4102.remainderData, NonnegativeExpression.eval]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow410
