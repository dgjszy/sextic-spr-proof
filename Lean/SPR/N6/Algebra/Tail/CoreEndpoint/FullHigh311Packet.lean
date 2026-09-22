import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh311Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketHigh
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh311Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullHigh311.source A e f g v = (SmallGap.PolarPacket.highOuter A e f g v).c311 := by
  simp only [FullHigh311.source, FullHigh3110.source, FullHigh3111.source, FullHigh3112.source, FullHigh3113.source, FullHigh3114.source, FullHigh3115.source,
    SmallGap.PolarPacket.highOuter, QuinticSource.transform, SmallGap.PolarPacket.high,
    SmallGap.PolarCoefficients.high311, SmallGap.PolarCoefficients.high320, SmallGap.PolarCoefficients.high401, SmallGap.PolarCoefficients.high410, SmallGap.PolarCoefficients.high500]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullHigh311Packet
