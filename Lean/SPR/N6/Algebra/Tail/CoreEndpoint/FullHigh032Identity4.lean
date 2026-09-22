import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Data

/-! Exact A^4 source identity for FullHigh032.
This is the unchanged algebraic identity, checked in its own module to bound
the live proof environment. The complete sign argument remains in FullHigh032. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0
namespace FullHigh032

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition4 (e f g v : ℝ) :
    FullHigh0324.source e f g v = FullHigh0324.leading0 e g v +
      f*FullHigh0324.leading1 e g v + f^2*FullHigh0324.remainder e f g v := by
  unfold FullHigh0324.source FullHigh0324.leading0 FullHigh0324.leading1 FullHigh0324.remainder
  unfold SmallGap.PolarCoefficientsHigh2.c041 SmallGap.PolarCoefficientsHigh1.c050
    SmallGap.PolarCoefficientsHigh2.c050 SmallGap.PolarCoefficientsHigh2.c122
    SmallGap.PolarCoefficientsHigh1.c131 SmallGap.PolarCoefficientsHigh2.c131
    SmallGap.PolarCoefficientsHigh0.c140 SmallGap.PolarCoefficientsHigh1.c140
    SmallGap.PolarCoefficientsHigh2.c140 SmallGap.PolarCoefficientsHigh2.c203
    SmallGap.PolarCoefficientsHigh1.c212 SmallGap.PolarCoefficientsHigh2.c212
    SmallGap.PolarCoefficientsHigh0.c221 SmallGap.PolarCoefficientsHigh1.c221
    SmallGap.PolarCoefficientsHigh2.c221 SmallGap.PolarCoefficientsHigh0.c230
    SmallGap.PolarCoefficientsHigh1.c230 SmallGap.PolarCoefficientsHigh2.c230
    SmallGap.PolarCoefficientsHigh0.c302 SmallGap.PolarCoefficientsHigh0.c311
    SmallGap.PolarCoefficientsHigh0.c320 SmallGap.ReducedLayers.high0_010_0
    SmallGap.ReducedLayers.high0_010_1 SmallGap.ReducedLayers.high0_010_2
    SmallGap.ReducedLayers.high0_010_3 SmallGap.ReducedLayers.high0_010_4
    SmallGap.ReducedLayers.high0_001_0 SmallGap.ReducedLayers.high0_001_1
    SmallGap.ReducedLayers.high0_001_2 SmallGap.ReducedLayers.high0_001_3
    SmallGap.ReducedLayers.high1_020_0 SmallGap.ReducedLayers.high1_020_1
    SmallGap.ReducedLayers.high1_020_2 SmallGap.ReducedLayers.high1_020_3
    SmallGap.ReducedLayers.high1_020_4 SmallGap.ReducedLayers.high1_011_0
    SmallGap.ReducedLayers.high1_011_1 SmallGap.ReducedLayers.high1_011_2
    SmallGap.ReducedLayers.high1_011_3 SmallGap.ReducedLayers.high1_011_4
    SmallGap.ReducedLayers.high1_002_0 SmallGap.ReducedLayers.high1_002_1
    SmallGap.ReducedLayers.high1_002_2 SmallGap.ReducedLayers.high1_002_3
    SmallGap.ReducedLayers.high1_002_4
  simp only [FullHigh0324.remainderData, NonnegativeExpression.eval]
  ring

end FullHigh032
end
end SPR.N6.Tail.CoreEndpoint
