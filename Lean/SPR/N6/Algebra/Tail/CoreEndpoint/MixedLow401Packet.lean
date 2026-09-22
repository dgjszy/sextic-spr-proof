import SPR.N6.Algebra.Tail.CoreEndpoint.MixedLow401
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketLow
/-! The earlier source certificate equals the universal physical-width coefficient.
All scalar identities are proved over arbitrary reals; signs are applied separately. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0
namespace MixedLow401Packet

theorem layer0 (e f g v : ℝ) :
    MixedLow4010.source e f g v =
      1*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g)) := by
  unfold MixedLow4010.source SmallGap.PolarCoefficientsLow0.c410
  ring

theorem layer1 (e f g v : ℝ) :
    MixedLow4011.source e f g v =
      1*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
      5*SmallGap.PolarCoefficientsLow0.c500 e f g v := by
  unfold MixedLow4011.source SmallGap.PolarCoefficientsLow1.c410 SmallGap.PolarCoefficientsLow0.c500
  ring

theorem layer2 (e f g v : ℝ) :
    MixedLow4012.source e f g v =
      1*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
      5*SmallGap.PolarCoefficientsLow1.c500 e f g v := by
  unfold MixedLow4012.source SmallGap.PolarCoefficientsLow2.c410 SmallGap.PolarCoefficientsLow1.c500
  ring

theorem layer3 (e f g v : ℝ) :
    MixedLow4013.source e f g v =
      1*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
      5*SmallGap.PolarCoefficientsLow2.c500 e f g v := by
  unfold MixedLow4013.source SmallGap.PolarCoefficientsLow3.c410 SmallGap.PolarCoefficientsLow2.c500
  ring

theorem layer4 (e f g v : ℝ) :
    MixedLow4014.source e f g v =
      1*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
      5*SmallGap.PolarCoefficientsLow3.c500 e f g v := by
  unfold MixedLow4014.source SmallGap.PolarCoefficientsLow4.c410 SmallGap.PolarCoefficientsLow3.c500
  ring

theorem layer5 (e f g v : ℝ) :
    MixedLow4015.source e f g v =
      5*SmallGap.PolarCoefficientsLow4.c500 e f g v := by
  unfold MixedLow4015.source SmallGap.PolarCoefficientsLow4.c500
  ring

/-- Exact bridge from the certified source to the same transformed packet. -/
theorem source_eq (A e f g v : ℝ) :
    MixedLow401.source A e f g v = (SmallGap.PolarPacket.lowOuter A e f g v).c401 := by
  unfold MixedLow401.source
  rw [layer0, layer1, layer2, layer3, layer4, layer5]
  simp only [SmallGap.PolarPacket.lowOuter, QuinticSource.transform, SmallGap.PolarPacket.low, SmallGap.PolarCoefficients.low410, SmallGap.PolarCoefficients.low500]
  ring

end MixedLow401Packet
end
end SPR.N6.Tail.CoreEndpoint
