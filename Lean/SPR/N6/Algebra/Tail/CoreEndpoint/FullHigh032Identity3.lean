import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Data

/-! Exact A^3 source identity for FullHigh032.
This is the unchanged algebraic identity, checked in its own module to bound
the live proof environment. The complete sign argument remains in FullHigh032. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0
namespace FullHigh032

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition3 (e f g v : ℝ) :
    FullHigh0323.source e f g v = FullHigh0323.leading0 e g v +
      f*FullHigh0323.leading1 e g v + f^2*FullHigh0323.remainder e f g v := by
  unfold FullHigh0323.source FullHigh0323.leading0 FullHigh0323.leading1 FullHigh0323.remainder
  unfold SmallGap.PolarCoefficientsHigh2.c032 SmallGap.PolarCoefficientsHigh1.c041
    SmallGap.PolarCoefficientsHigh2.c041 SmallGap.PolarCoefficientsHigh0.c050
    SmallGap.PolarCoefficientsHigh1.c050 SmallGap.PolarCoefficientsHigh2.c050
    SmallGap.PolarCoefficientsHigh2.c113 SmallGap.PolarCoefficientsHigh1.c122
    SmallGap.PolarCoefficientsHigh2.c122 SmallGap.PolarCoefficientsHigh0.c131
    SmallGap.PolarCoefficientsHigh1.c131 SmallGap.PolarCoefficientsHigh2.c131
    SmallGap.PolarCoefficientsHigh0.c140 SmallGap.PolarCoefficientsHigh1.c140
    SmallGap.PolarCoefficientsHigh2.c140 SmallGap.PolarCoefficientsHigh1.c203
    SmallGap.PolarCoefficientsHigh0.c212 SmallGap.PolarCoefficientsHigh1.c212
    SmallGap.PolarCoefficientsHigh0.c221 SmallGap.PolarCoefficientsHigh1.c221
    SmallGap.PolarCoefficientsHigh0.c230 SmallGap.PolarCoefficientsHigh1.c230
    SmallGap.ReducedLayers.high0_010_0 SmallGap.ReducedLayers.high0_010_1
    SmallGap.ReducedLayers.high0_010_2 SmallGap.ReducedLayers.high0_010_3
    SmallGap.ReducedLayers.high0_001_0 SmallGap.ReducedLayers.high0_001_1
    SmallGap.ReducedLayers.high0_001_2 SmallGap.ReducedLayers.high0_001_3
    SmallGap.ReducedLayers.high1_020_0 SmallGap.ReducedLayers.high1_020_1
    SmallGap.ReducedLayers.high1_020_2 SmallGap.ReducedLayers.high1_020_3
    SmallGap.ReducedLayers.high1_011_0 SmallGap.ReducedLayers.high1_011_1
    SmallGap.ReducedLayers.high1_011_2 SmallGap.ReducedLayers.high1_011_3
    SmallGap.ReducedLayers.high1_002_0 SmallGap.ReducedLayers.high1_002_1
    SmallGap.ReducedLayers.high1_002_2 SmallGap.ReducedLayers.high1_002_3
  simp only [FullHigh0323.remainderData, NonnegativeExpression.eval]
  ring

end FullHigh032
end
end SPR.N6.Tail.CoreEndpoint
