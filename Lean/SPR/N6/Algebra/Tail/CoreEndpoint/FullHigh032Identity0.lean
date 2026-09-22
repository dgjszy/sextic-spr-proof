import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Data

/-! Exact A^0 source identity for FullHigh032.
This is the unchanged algebraic identity, checked in its own module to bound
the live proof environment. The complete sign argument remains in FullHigh032. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0
namespace FullHigh032

/-- Exact A-layer equality, without any sign assumption. -/
theorem decomposition0 (e f g v : ℝ) :
    FullHigh0320.source e f g v = FullHigh0320.leading0 e g v +
      f*FullHigh0320.leading1 e g v + f^2*FullHigh0320.remainder e f g v := by
  unfold FullHigh0320.source FullHigh0320.leading0 FullHigh0320.leading1 FullHigh0320.remainder
  unfold SmallGap.PolarCoefficientsHigh0.c023 SmallGap.PolarCoefficientsHigh0.c032
    SmallGap.PolarCoefficientsHigh0.c041 SmallGap.PolarCoefficientsHigh0.c050
    SmallGap.ReducedLayers.high0_010_0 SmallGap.ReducedLayers.high0_001_0
    SmallGap.ReducedLayers.high1_020_0 SmallGap.ReducedLayers.high1_011_0
    SmallGap.ReducedLayers.high1_002_0
  simp only [FullHigh0320.remainderData, NonnegativeExpression.eval]
  ring

end FullHigh032
end
end SPR.N6.Tail.CoreEndpoint
