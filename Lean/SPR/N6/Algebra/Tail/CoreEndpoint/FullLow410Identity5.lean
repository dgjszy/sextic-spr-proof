import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow410Data

/-! Exact source layer for the low (4,1,0) coefficient.
The complete sign statement requires assembling all seven layers. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow410
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition5 (e f g v : ℝ) :
    FullLow4105.source e f g v = FullLow4105.leading0 e g v +
      f*FullLow4105.leading1 e g v + f^2*FullLow4105.remainder e f g v := by
  unfold FullLow4105.source FullLow4105.leading0 FullLow4105.leading1 FullLow4105.remainder
  unfold SmallGap.PolarCoefficientsLow4.c410 SmallGap.PolarCoefficientsLow3.c500
    SmallGap.ReducedLayers.low0_100_3 SmallGap.ReducedLayers.low0_100_4
    SmallGap.ReducedLayers.low0_010_5 SmallGap.ReducedLayers.low1_200_3
    SmallGap.ReducedLayers.low1_200_4 SmallGap.ReducedLayers.low1_110_5
  simp only [FullLow4105.remainderData, NonnegativeExpression.eval]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow410
