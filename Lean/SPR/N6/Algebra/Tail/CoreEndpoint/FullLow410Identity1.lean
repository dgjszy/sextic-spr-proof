import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow410Data

/-! Exact source layer for the low (4,1,0) coefficient.
The complete sign statement requires assembling all seven layers. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow410
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition1 (e f g v : ℝ) :
    FullLow4101.source e f g v = FullLow4101.leading0 e g v +
      f*FullLow4101.leading1 e g v + f^2*FullLow4101.remainder e f g v := by
  unfold FullLow4101.source FullLow4101.leading0 FullLow4101.leading1 FullLow4101.remainder
  unfold SmallGap.PolarCoefficientsLow1.c401 SmallGap.PolarCoefficientsLow0.c410
    SmallGap.PolarCoefficientsLow1.c410 SmallGap.ReducedLayers.low0_100_0
    SmallGap.ReducedLayers.low0_100_1 SmallGap.ReducedLayers.low0_010_1
    SmallGap.ReducedLayers.low1_200_0 SmallGap.ReducedLayers.low1_200_1
    SmallGap.ReducedLayers.low1_110_1
  simp only [FullLow4101.remainderData, NonnegativeExpression.eval]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow410
