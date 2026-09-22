import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh320Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketHigh
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh320Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullHigh320.source A e f g v = (SmallGap.PolarPacket.highOuter A e f g v).c320 := by
  simp only [FullHigh320.source, FullHigh3200.source, FullHigh3201.source, FullHigh3202.source, FullHigh3203.source, FullHigh3204.source, FullHigh3205.source, FullHigh3206.source,
    SmallGap.PolarPacket.highOuter, QuinticSource.transform, SmallGap.PolarPacket.high,
    SmallGap.PolarCoefficients.high302, SmallGap.PolarCoefficients.high311, SmallGap.PolarCoefficients.high320, SmallGap.PolarCoefficients.high401, SmallGap.PolarCoefficients.high410, SmallGap.PolarCoefficients.high500]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullHigh320Packet
