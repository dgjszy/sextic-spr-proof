import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh401
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketHigh
/-! The earlier source certificate equals the universal physical-width coefficient.
All scalar identities are proved over arbitrary reals; signs are applied separately. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0
namespace MixedHigh401Packet

theorem layer0 (e f g v : ℝ) :
    MixedHigh4010.source e f g v =
      1*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g)) := by
  unfold MixedHigh4010.source SmallGap.PolarCoefficientsHigh0.c410
  ring

theorem layer1 (e f g v : ℝ) :
    MixedHigh4011.source e f g v =
      1*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
      5*SmallGap.PolarCoefficientsHigh0.c500 e f g v := by
  unfold MixedHigh4011.source SmallGap.PolarCoefficientsHigh1.c410 SmallGap.PolarCoefficientsHigh0.c500
  ring

theorem layer2 (e f g v : ℝ) :
    MixedHigh4012.source e f g v =
      1*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
      5*SmallGap.PolarCoefficientsHigh1.c500 e f g v := by
  unfold MixedHigh4012.source SmallGap.PolarCoefficientsHigh2.c410 SmallGap.PolarCoefficientsHigh1.c500
  ring

theorem layer3 (e f g v : ℝ) :
    MixedHigh4013.source e f g v =
      5*SmallGap.PolarCoefficientsHigh2.c500 e f g v := by
  unfold MixedHigh4013.source SmallGap.PolarCoefficientsHigh2.c500
  ring

/-- Exact bridge from the certified source to the same transformed packet. -/
theorem source_eq (A e f g v : ℝ) :
    MixedHigh401.source A e f g v = (SmallGap.PolarPacket.highOuter A e f g v).c401 := by
  unfold MixedHigh401.source
  rw [layer0, layer1, layer2, layer3]
  simp only [SmallGap.PolarPacket.highOuter, QuinticSource.transform, SmallGap.PolarPacket.high, SmallGap.PolarCoefficients.high410, SmallGap.PolarCoefficients.high500]
  ring

end MixedHigh401Packet
end
end SPR.N6.Tail.CoreEndpoint
