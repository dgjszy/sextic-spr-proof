import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Data

/-! Exact A^1 source identity for FullHigh032.
This is the unchanged algebraic identity, checked in its own module to bound
the live proof environment. The complete sign argument remains in FullHigh032. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0
namespace FullHigh032

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition1 (e f g v : ℝ) :
    FullHigh0321.source e f g v = FullHigh0321.leading0 e g v +
      f*FullHigh0321.leading1 e g v + f^2*FullHigh0321.remainder e f g v := by
  unfold FullHigh0321.source FullHigh0321.leading0 FullHigh0321.leading1 FullHigh0321.remainder
  unfold SmallGap.PolarCoefficientsHigh1.c023 SmallGap.PolarCoefficientsHigh0.c032
    SmallGap.PolarCoefficientsHigh1.c032 SmallGap.PolarCoefficientsHigh0.c041
    SmallGap.PolarCoefficientsHigh1.c041 SmallGap.PolarCoefficientsHigh0.c050
    SmallGap.PolarCoefficientsHigh1.c050 SmallGap.PolarCoefficientsHigh0.c113
    SmallGap.PolarCoefficientsHigh0.c122 SmallGap.PolarCoefficientsHigh0.c131
    SmallGap.PolarCoefficientsHigh0.c140 SmallGap.ReducedLayers.high0_010_0
    SmallGap.ReducedLayers.high0_010_1 SmallGap.ReducedLayers.high0_001_0
    SmallGap.ReducedLayers.high0_001_1 SmallGap.ReducedLayers.high1_020_0
    SmallGap.ReducedLayers.high1_020_1 SmallGap.ReducedLayers.high1_011_0
    SmallGap.ReducedLayers.high1_011_1 SmallGap.ReducedLayers.high1_002_0
    SmallGap.ReducedLayers.high1_002_1
  simp only [FullHigh0321.remainderData, NonnegativeExpression.eval]
  ring

end FullHigh032
end
end SPR.N6.Tail.CoreEndpoint
