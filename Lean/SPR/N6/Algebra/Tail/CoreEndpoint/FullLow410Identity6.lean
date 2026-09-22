import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow410Data

/-! Exact source layer for the low (4,1,0) coefficient.
The complete sign statement requires assembling all seven layers. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow410
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition6 (e f g v : ℝ) :
    FullLow4106.source e f g v = FullLow4106.leading0 e g v +
      f*FullLow4106.leading1 e g v + f^2*FullLow4106.remainder e f g v := by
  unfold FullLow4106.source FullLow4106.leading0 FullLow4106.leading1 FullLow4106.remainder
  unfold SmallGap.PolarCoefficientsLow4.c500 SmallGap.ReducedLayers.low0_100_4
    SmallGap.ReducedLayers.low0_010_6 SmallGap.ReducedLayers.low1_200_4
    SmallGap.ReducedLayers.low1_110_6
  simp only [FullLow4106.remainderData, NonnegativeExpression.eval]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow410
