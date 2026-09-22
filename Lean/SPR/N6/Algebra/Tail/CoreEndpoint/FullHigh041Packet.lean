import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh041Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketHigh
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh041Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullHigh041.source A e f g v = (SmallGap.PolarPacket.highOuter A e f g v).c041 := by
  simp only [FullHigh041.source, FullHigh0410.source, FullHigh0411.source, FullHigh0412.source, FullHigh0413.source, FullHigh0414.source, FullHigh0415.source, FullHigh0416.source, FullHigh0417.source, FullHigh0418.source, FullHigh0419.source, FullHigh04110.source, FullHigh04111.source,
    SmallGap.PolarPacket.highOuter, QuinticSource.transform, SmallGap.PolarPacket.high,
    SmallGap.PolarCoefficients.high014, SmallGap.PolarCoefficients.high023, SmallGap.PolarCoefficients.high032, SmallGap.PolarCoefficients.high041, SmallGap.PolarCoefficients.high050, SmallGap.PolarCoefficients.high104, SmallGap.PolarCoefficients.high113, SmallGap.PolarCoefficients.high122, SmallGap.PolarCoefficients.high131, SmallGap.PolarCoefficients.high140, SmallGap.PolarCoefficients.high203, SmallGap.PolarCoefficients.high212, SmallGap.PolarCoefficients.high221, SmallGap.PolarCoefficients.high230, SmallGap.PolarCoefficients.high302, SmallGap.PolarCoefficients.high311, SmallGap.PolarCoefficients.high320, SmallGap.PolarCoefficients.high401, SmallGap.PolarCoefficients.high410, SmallGap.PolarCoefficients.high500]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullHigh041Packet
