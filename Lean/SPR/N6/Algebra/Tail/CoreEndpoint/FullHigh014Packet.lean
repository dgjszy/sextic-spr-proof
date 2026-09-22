import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh014Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketHigh
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh014Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullHigh014.source A e f g v = (SmallGap.PolarPacket.highOuter A e f g v).c014 := by
  simp only [FullHigh014.source, FullHigh0140.source, FullHigh0141.source, FullHigh0142.source, FullHigh0143.source, FullHigh0144.source, FullHigh0145.source, FullHigh0146.source, FullHigh0147.source, FullHigh0148.source,
    SmallGap.PolarPacket.highOuter, QuinticSource.transform, SmallGap.PolarPacket.high,
    SmallGap.PolarCoefficients.high041, SmallGap.PolarCoefficients.high050, SmallGap.PolarCoefficients.high131, SmallGap.PolarCoefficients.high140, SmallGap.PolarCoefficients.high221, SmallGap.PolarCoefficients.high230, SmallGap.PolarCoefficients.high311, SmallGap.PolarCoefficients.high320, SmallGap.PolarCoefficients.high401, SmallGap.PolarCoefficients.high410, SmallGap.PolarCoefficients.high500]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullHigh014Packet
