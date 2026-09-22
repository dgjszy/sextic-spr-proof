import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Data

/-! Exact A^8 source identity for FullHigh032.
This is the unchanged algebraic identity, checked in its own module to bound
the live proof environment. The complete sign argument remains in FullHigh032. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0
namespace FullHigh032

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition8 (e f g v : ℝ) :
    FullHigh0328.source e f g v = FullHigh0328.leading0 e g v +
      f*FullHigh0328.leading1 e g v + f^2*FullHigh0328.remainder e f g v := by
  unfold FullHigh0328.source FullHigh0328.leading0 FullHigh0328.leading1 FullHigh0328.remainder
  unfold SmallGap.PolarCoefficientsHigh2.c320 SmallGap.PolarCoefficientsHigh2.c401
    SmallGap.PolarCoefficientsHigh1.c410 SmallGap.PolarCoefficientsHigh2.c410
    SmallGap.PolarCoefficientsHigh0.c500 SmallGap.ReducedLayers.high0_010_2
    SmallGap.ReducedLayers.high0_010_3 SmallGap.ReducedLayers.high0_010_4
    SmallGap.ReducedLayers.high0_001_1 SmallGap.ReducedLayers.high0_001_2
    SmallGap.ReducedLayers.high0_001_3 SmallGap.ReducedLayers.high1_020_4
    SmallGap.ReducedLayers.high1_020_5 SmallGap.ReducedLayers.high1_020_6
    SmallGap.ReducedLayers.high1_011_3 SmallGap.ReducedLayers.high1_011_4
    SmallGap.ReducedLayers.high1_011_5 SmallGap.ReducedLayers.high1_002_2
    SmallGap.ReducedLayers.high1_002_3 SmallGap.ReducedLayers.high1_002_4
  simp only [FullHigh0328.remainderData, NonnegativeExpression.eval]
  ring

end FullHigh032
end
end SPR.N6.Tail.CoreEndpoint
