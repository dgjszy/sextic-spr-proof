import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow203Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketLow
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow203Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullLow203.source A e f g v = (SmallGap.PolarPacket.lowOuter A e f g v).c203 := by
  simp only [FullLow203.source, FullLow2030.source, FullLow2031.source, FullLow2032.source, FullLow2033.source, FullLow2034.source, FullLow2035.source, FullLow2036.source, FullLow2037.source,
    SmallGap.PolarPacket.lowOuter, QuinticSource.transform, SmallGap.PolarPacket.low,
    SmallGap.PolarCoefficients.low230, SmallGap.PolarCoefficients.low320, SmallGap.PolarCoefficients.low410, SmallGap.PolarCoefficients.low500]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow203Packet
