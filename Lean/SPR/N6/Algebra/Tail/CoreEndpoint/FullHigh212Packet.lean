import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh212Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketHigh
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh212Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullHigh212.source A e f g v = (SmallGap.PolarPacket.highOuter A e f g v).c212 := by
  simp only [FullHigh212.source, FullHigh2120.source, FullHigh2121.source, FullHigh2122.source, FullHigh2123.source, FullHigh2124.source, FullHigh2125.source, FullHigh2126.source,
    SmallGap.PolarPacket.highOuter, QuinticSource.transform, SmallGap.PolarPacket.high,
    SmallGap.PolarCoefficients.high221, SmallGap.PolarCoefficients.high230, SmallGap.PolarCoefficients.high311, SmallGap.PolarCoefficients.high320, SmallGap.PolarCoefficients.high401, SmallGap.PolarCoefficients.high410, SmallGap.PolarCoefficients.high500]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullHigh212Packet
