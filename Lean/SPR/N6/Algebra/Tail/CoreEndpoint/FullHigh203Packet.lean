import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh203Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketHigh
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh203Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullHigh203.source A e f g v = (SmallGap.PolarPacket.highOuter A e f g v).c203 := by
  simp only [FullHigh203.source, FullHigh2030.source, FullHigh2031.source, FullHigh2032.source, FullHigh2033.source, FullHigh2034.source, FullHigh2035.source,
    SmallGap.PolarPacket.highOuter, QuinticSource.transform, SmallGap.PolarPacket.high,
    SmallGap.PolarCoefficients.high230, SmallGap.PolarCoefficients.high320, SmallGap.PolarCoefficients.high410, SmallGap.PolarCoefficients.high500]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullHigh203Packet
