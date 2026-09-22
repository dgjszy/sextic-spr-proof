import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow104Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketLow
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow104Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullLow104.source A e f g v = (SmallGap.PolarPacket.lowOuter A e f g v).c104 := by
  simp only [FullLow104.source, FullLow1040.source, FullLow1041.source, FullLow1042.source, FullLow1043.source, FullLow1044.source, FullLow1045.source, FullLow1046.source, FullLow1047.source, FullLow1048.source,
    SmallGap.PolarPacket.lowOuter, QuinticSource.transform, SmallGap.PolarPacket.low,
    SmallGap.PolarCoefficients.low140, SmallGap.PolarCoefficients.low230, SmallGap.PolarCoefficients.low320, SmallGap.PolarCoefficients.low410, SmallGap.PolarCoefficients.low500]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow104Packet
