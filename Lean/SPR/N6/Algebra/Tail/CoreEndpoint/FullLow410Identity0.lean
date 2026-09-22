import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow410Data

/-! Exact source layer for the low `(4,1,0)` coefficient.
The complete sign statement requires assembling all seven layers. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow410
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition0 (e f g v : ℝ) :
    FullLow4100.source e f g v = FullLow4100.leading0 e g v +
      f*FullLow4100.leading1 e g v + f^2*FullLow4100.remainder e f g v := by
  unfold FullLow4100.source FullLow4100.leading0 FullLow4100.leading1 FullLow4100.remainder
  unfold SmallGap.PolarCoefficientsLow0.c401 SmallGap.PolarCoefficientsLow0.c410
    SmallGap.ReducedLayers.low0_100_0 SmallGap.ReducedLayers.low0_010_0
    SmallGap.ReducedLayers.low1_200_0 SmallGap.ReducedLayers.low1_110_0
  simp only [FullLow4100.remainderData, NonnegativeExpression.eval]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow410
