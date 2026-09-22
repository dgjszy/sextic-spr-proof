import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh122Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketHigh
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh122Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullHigh122.source A e f g v = (SmallGap.PolarPacket.highOuter A e f g v).c122 := by
  simp only [FullHigh122.source, FullHigh1220.source, FullHigh1221.source, FullHigh1222.source, FullHigh1223.source, FullHigh1224.source, FullHigh1225.source, FullHigh1226.source, FullHigh1227.source, FullHigh1228.source,
    SmallGap.PolarPacket.highOuter, QuinticSource.transform, SmallGap.PolarPacket.high,
    SmallGap.PolarCoefficients.high122, SmallGap.PolarCoefficients.high131, SmallGap.PolarCoefficients.high140, SmallGap.PolarCoefficients.high212, SmallGap.PolarCoefficients.high221, SmallGap.PolarCoefficients.high230, SmallGap.PolarCoefficients.high302, SmallGap.PolarCoefficients.high311, SmallGap.PolarCoefficients.high320, SmallGap.PolarCoefficients.high401, SmallGap.PolarCoefficients.high410, SmallGap.PolarCoefficients.high500]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullHigh122Packet
