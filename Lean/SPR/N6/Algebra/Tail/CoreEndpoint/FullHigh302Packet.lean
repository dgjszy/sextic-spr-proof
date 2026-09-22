import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh302Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketHigh
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh302Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullHigh302.source A e f g v = (SmallGap.PolarPacket.highOuter A e f g v).c302 := by
  simp only [FullHigh302.source, FullHigh3020.source, FullHigh3021.source, FullHigh3022.source, FullHigh3023.source, FullHigh3024.source,
    SmallGap.PolarPacket.highOuter, QuinticSource.transform, SmallGap.PolarPacket.high,
    SmallGap.PolarCoefficients.high320, SmallGap.PolarCoefficients.high410, SmallGap.PolarCoefficients.high500]
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullHigh302Packet
