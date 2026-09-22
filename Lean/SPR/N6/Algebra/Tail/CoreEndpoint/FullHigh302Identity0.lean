import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh302Data

/-! Exact source layer for the high (3,0,2) coefficient.
The complete sign statement requires assembling all five layers. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh302
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition0 (e f g v : ℝ) :
    FullHigh3020.source e f g v = FullHigh3020.leading0 e g v +
      f*FullHigh3020.leading1 e g v + f^2*FullHigh3020.remainder e f g v := by
  unfold FullHigh3020.source FullHigh3020.leading0 FullHigh3020.leading1 FullHigh3020.remainder
  unfold SmallGap.PolarCoefficientsHigh0.c320 SmallGap.ReducedLayers.high0_100_0
    SmallGap.ReducedLayers.high0_001_0 SmallGap.ReducedLayers.high1_200_0
    SmallGap.ReducedLayers.high1_101_0 SmallGap.ReducedLayers.high1_002_0
  simp only [FullHigh3020.remainderData, NonnegativeExpression.eval]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullHigh302
