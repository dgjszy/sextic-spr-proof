import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh230Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketHigh
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh230Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullHigh230.source A e f g v = (SmallGap.PolarPacket.highOuter A e f g v).c230 := by
  simp only [FullHigh230.source, FullHigh2300.source, FullHigh2301.source, FullHigh2302.source, FullHigh2303.source, FullHigh2304.source, FullHigh2305.source, FullHigh2306.source, FullHigh2307.source, FullHigh2308.source,
    SmallGap.PolarPacket.highOuter, QuinticSource.transform, SmallGap.PolarPacket.high,
    SmallGap.PolarCoefficients.high203, SmallGap.PolarCoefficients.high212, SmallGap.PolarCoefficients.high221, SmallGap.PolarCoefficients.high230, SmallGap.PolarCoefficients.high302, SmallGap.PolarCoefficients.high311, SmallGap.PolarCoefficients.high320, SmallGap.PolarCoefficients.high401, SmallGap.PolarCoefficients.high410, SmallGap.PolarCoefficients.high500]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullHigh230Packet
