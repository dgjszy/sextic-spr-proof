import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh104Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketHigh
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh104Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullHigh104.source A e f g v = (SmallGap.PolarPacket.highOuter A e f g v).c104 := by
  simp only [FullHigh104.source, FullHigh1040.source, FullHigh1041.source, FullHigh1042.source, FullHigh1043.source, FullHigh1044.source, FullHigh1045.source, FullHigh1046.source,
    SmallGap.PolarPacket.highOuter, QuinticSource.transform, SmallGap.PolarPacket.high,
    SmallGap.PolarCoefficients.high140, SmallGap.PolarCoefficients.high230, SmallGap.PolarCoefficients.high320, SmallGap.PolarCoefficients.high410, SmallGap.PolarCoefficients.high500]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullHigh104Packet
