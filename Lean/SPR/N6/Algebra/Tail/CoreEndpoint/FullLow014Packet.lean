import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow014Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketLow
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow014Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullLow014.source A e f g v = (SmallGap.PolarPacket.lowOuter A e f g v).c014 := by
  simp only [FullLow014.source, FullLow0140.source, FullLow0141.source, FullLow0142.source, FullLow0143.source, FullLow0144.source, FullLow0145.source, FullLow0146.source, FullLow0147.source, FullLow0148.source, FullLow0149.source, FullLow01410.source,
    SmallGap.PolarPacket.lowOuter, QuinticSource.transform, SmallGap.PolarPacket.low,
    SmallGap.PolarCoefficients.low041, SmallGap.PolarCoefficients.low050, SmallGap.PolarCoefficients.low131, SmallGap.PolarCoefficients.low140, SmallGap.PolarCoefficients.low221, SmallGap.PolarCoefficients.low230, SmallGap.PolarCoefficients.low311, SmallGap.PolarCoefficients.low320, SmallGap.PolarCoefficients.low401, SmallGap.PolarCoefficients.low410, SmallGap.PolarCoefficients.low500]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow014Packet
