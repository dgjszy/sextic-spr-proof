import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh410
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketHigh
/-! The earlier source certificate equals the universal physical-width coefficient.
All scalar identities are proved over arbitrary reals; signs are applied separately. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0
namespace MixedHigh410Packet

theorem layer0 (e f g v : ℝ) :
    MixedHigh4100.source e f g v =
      1*SmallGap.PolarCoefficientsHigh0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
      1*SmallGap.PolarCoefficientsHigh0.c410 e f g v*e*((e+f)*(e+f+g)) := by
  unfold MixedHigh4100.source SmallGap.PolarCoefficientsHigh0.c401 SmallGap.PolarCoefficientsHigh0.c410
  ring

theorem layer1 (e f g v : ℝ) :
    MixedHigh4101.source e f g v =
      1*SmallGap.PolarCoefficientsHigh1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
      2*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))+
      1*SmallGap.PolarCoefficientsHigh1.c410 e f g v*e*((e+f)*(e+f+g)) := by
  unfold MixedHigh4101.source SmallGap.PolarCoefficientsHigh1.c401 SmallGap.PolarCoefficientsHigh0.c410 SmallGap.PolarCoefficientsHigh1.c410
  ring

theorem layer2 (e f g v : ℝ) :
    MixedHigh4102.source e f g v =
      1*SmallGap.PolarCoefficientsHigh2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
      2*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
      1*SmallGap.PolarCoefficientsHigh2.c410 e f g v*e*((e+f)*(e+f+g))+
      5*SmallGap.PolarCoefficientsHigh0.c500 e f g v := by
  unfold MixedHigh4102.source SmallGap.PolarCoefficientsHigh2.c401 SmallGap.PolarCoefficientsHigh1.c410 SmallGap.PolarCoefficientsHigh2.c410 SmallGap.PolarCoefficientsHigh0.c500
  ring

theorem layer3 (e f g v : ℝ) :
    MixedHigh4103.source e f g v =
      2*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
      5*SmallGap.PolarCoefficientsHigh1.c500 e f g v := by
  unfold MixedHigh4103.source SmallGap.PolarCoefficientsHigh2.c410 SmallGap.PolarCoefficientsHigh1.c500
  ring

theorem layer4 (e f g v : ℝ) :
    MixedHigh4104.source e f g v =
      5*SmallGap.PolarCoefficientsHigh2.c500 e f g v := by
  unfold MixedHigh4104.source SmallGap.PolarCoefficientsHigh2.c500
  ring

/-- Exact bridge from the certified source to the same transformed packet. -/
theorem source_eq (A e f g v : ℝ) :
    MixedHigh410.source A e f g v = (SmallGap.PolarPacket.highOuter A e f g v).c410 := by
  unfold MixedHigh410.source
  rw [layer0, layer1, layer2, layer3, layer4]
  simp only [SmallGap.PolarPacket.highOuter, QuinticSource.transform, SmallGap.PolarPacket.high, SmallGap.PolarCoefficients.high401, SmallGap.PolarCoefficients.high410, SmallGap.PolarCoefficients.high500]
  ring

end MixedHigh410Packet
end
end SPR.N6.Tail.CoreEndpoint
