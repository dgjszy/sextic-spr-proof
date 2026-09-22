import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow320Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketLow
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow320Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullLow320.source A e f g v = (SmallGap.PolarPacket.lowOuter A e f g v).c320 := by
  simp only [FullLow320.source, FullLow3200.source, FullLow3201.source, FullLow3202.source, FullLow3203.source, FullLow3204.source, FullLow3205.source, FullLow3206.source, FullLow3207.source, FullLow3208.source,
    SmallGap.PolarPacket.lowOuter, QuinticSource.transform, SmallGap.PolarPacket.low,
    SmallGap.PolarCoefficients.low302, SmallGap.PolarCoefficients.low311, SmallGap.PolarCoefficients.low320, SmallGap.PolarCoefficients.low401, SmallGap.PolarCoefficients.low410, SmallGap.PolarCoefficients.low500]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow320Packet
