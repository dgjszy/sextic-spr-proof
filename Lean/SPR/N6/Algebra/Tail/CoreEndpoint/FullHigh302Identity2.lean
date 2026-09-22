import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh302Data

/-! Exact source layer for the high (3,0,2) coefficient.
The complete sign statement requires assembling all five layers. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh302
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition2 (e f g v : ℝ) :
    FullHigh3022.source e f g v = FullHigh3022.leading0 e g v +
      f*FullHigh3022.leading1 e g v + f^2*FullHigh3022.remainder e f g v := by
  unfold FullHigh3022.source FullHigh3022.leading0 FullHigh3022.leading1 FullHigh3022.remainder
  unfold SmallGap.PolarCoefficientsHigh2.c320 SmallGap.PolarCoefficientsHigh1.c410
    SmallGap.PolarCoefficientsHigh0.c500 SmallGap.ReducedLayers.high0_100_0
    SmallGap.ReducedLayers.high0_100_1 SmallGap.ReducedLayers.high0_100_2
    SmallGap.ReducedLayers.high0_001_1 SmallGap.ReducedLayers.high0_001_2
    SmallGap.ReducedLayers.high1_200_0 SmallGap.ReducedLayers.high1_200_1
    SmallGap.ReducedLayers.high1_200_2 SmallGap.ReducedLayers.high1_101_1
    SmallGap.ReducedLayers.high1_101_2 SmallGap.ReducedLayers.high1_002_2
  simp only [FullHigh3022.remainderData, NonnegativeExpression.eval]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullHigh302
