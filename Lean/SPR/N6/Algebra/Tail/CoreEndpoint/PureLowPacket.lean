import SPR.N6.Algebra.Tail.CoreEndpoint.PureLow
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketLow
/-! The earlier source certificate equals the universal physical-width coefficient.
All scalar identities are proved over arbitrary reals; signs are applied separately. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0
namespace PureLowPacket

theorem layer0 (e f g v : ℝ) :
    PureLow0.source e f g v =
      1*SmallGap.PolarCoefficientsLow0.c500 e f g v := by
  unfold PureLow0.source SmallGap.PolarCoefficientsLow0.c500
  ring

theorem layer1 (e f g v : ℝ) :
    PureLow1.source e f g v =
      1*SmallGap.PolarCoefficientsLow1.c500 e f g v := by
  unfold PureLow1.source SmallGap.PolarCoefficientsLow1.c500
  ring

theorem layer2 (e f g v : ℝ) :
    PureLow2.source e f g v =
      1*SmallGap.PolarCoefficientsLow2.c500 e f g v := by
  unfold PureLow2.source SmallGap.PolarCoefficientsLow2.c500
  ring

theorem layer3 (e f g v : ℝ) :
    PureLow3.source e f g v =
      1*SmallGap.PolarCoefficientsLow3.c500 e f g v := by
  unfold PureLow3.source SmallGap.PolarCoefficientsLow3.c500
  ring

theorem layer4 (e f g v : ℝ) :
    PureLow4.source e f g v =
      1*SmallGap.PolarCoefficientsLow4.c500 e f g v := by
  unfold PureLow4.source SmallGap.PolarCoefficientsLow4.c500
  ring

/-- Exact bridge from the certified source to the same transformed packet. -/
theorem source_eq (A e f g v : ℝ) :
    PureLow.source A e f g v = (SmallGap.PolarPacket.lowOuter A e f g v).c500 := by
  unfold PureLow.source
  rw [layer0, layer1, layer2, layer3, layer4]
  simp only [SmallGap.PolarPacket.lowOuter, QuinticSource.transform, SmallGap.PolarPacket.low, SmallGap.PolarCoefficients.low500]
  ring

end PureLowPacket
end
end SPR.N6.Tail.CoreEndpoint
