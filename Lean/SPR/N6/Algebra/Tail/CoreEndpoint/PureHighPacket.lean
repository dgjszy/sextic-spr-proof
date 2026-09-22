import SPR.N6.Algebra.Tail.CoreEndpoint.PureHigh
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketHigh
/-! The earlier source certificate equals the universal physical-width coefficient.
All scalar identities are proved over arbitrary reals; signs are applied separately. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0
namespace PureHighPacket

theorem layer0 (e f g v : ℝ) :
    PureHigh0.source e f g v =
      1*SmallGap.PolarCoefficientsHigh0.c500 e f g v := by
  unfold PureHigh0.source SmallGap.PolarCoefficientsHigh0.c500
  ring

theorem layer1 (e f g v : ℝ) :
    PureHigh1.source e f g v =
      1*SmallGap.PolarCoefficientsHigh1.c500 e f g v := by
  unfold PureHigh1.source SmallGap.PolarCoefficientsHigh1.c500
  ring

theorem layer2 (e f g v : ℝ) :
    PureHigh2.source e f g v =
      1*SmallGap.PolarCoefficientsHigh2.c500 e f g v := by
  unfold PureHigh2.source SmallGap.PolarCoefficientsHigh2.c500
  ring

/-- Exact bridge from the certified source to the same transformed packet. -/
theorem source_eq (A e f g v : ℝ) :
    PureHigh.source A e f g v = (SmallGap.PolarPacket.highOuter A e f g v).c500 := by
  unfold PureHigh.source
  rw [layer0, layer1, layer2]
  simp only [SmallGap.PolarPacket.highOuter, QuinticSource.transform, SmallGap.PolarPacket.high, SmallGap.PolarCoefficients.high500]
  ring

end PureHighPacket
end
end SPR.N6.Tail.CoreEndpoint
