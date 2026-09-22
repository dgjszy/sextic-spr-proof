import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh131Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketHigh
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh131Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullHigh131.source A e f g v = (SmallGap.PolarPacket.highOuter A e f g v).c131 := by
  simp only [FullHigh131.source, FullHigh1310.source, FullHigh1311.source, FullHigh1312.source, FullHigh1313.source, FullHigh1314.source, FullHigh1315.source, FullHigh1316.source, FullHigh1317.source, FullHigh1318.source, FullHigh1319.source,
    SmallGap.PolarPacket.highOuter, QuinticSource.transform, SmallGap.PolarPacket.high,
    SmallGap.PolarCoefficients.high113, SmallGap.PolarCoefficients.high122, SmallGap.PolarCoefficients.high131, SmallGap.PolarCoefficients.high140, SmallGap.PolarCoefficients.high203, SmallGap.PolarCoefficients.high212, SmallGap.PolarCoefficients.high221, SmallGap.PolarCoefficients.high230, SmallGap.PolarCoefficients.high302, SmallGap.PolarCoefficients.high311, SmallGap.PolarCoefficients.high320, SmallGap.PolarCoefficients.high401, SmallGap.PolarCoefficients.high410, SmallGap.PolarCoefficients.high500]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullHigh131Packet
