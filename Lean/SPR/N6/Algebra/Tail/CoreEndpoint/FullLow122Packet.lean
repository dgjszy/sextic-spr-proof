import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow122Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketLow
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow122Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullLow122.source A e f g v = (SmallGap.PolarPacket.lowOuter A e f g v).c122 := by
  simp only [FullLow122.source, FullLow1220.source, FullLow1221.source, FullLow1222.source, FullLow1223.source, FullLow1224.source, FullLow1225.source, FullLow1226.source, FullLow1227.source, FullLow1228.source, FullLow1229.source, FullLow12210.source,
    SmallGap.PolarPacket.lowOuter, QuinticSource.transform, SmallGap.PolarPacket.low,
    SmallGap.PolarCoefficients.low122, SmallGap.PolarCoefficients.low131, SmallGap.PolarCoefficients.low140, SmallGap.PolarCoefficients.low212, SmallGap.PolarCoefficients.low221, SmallGap.PolarCoefficients.low230, SmallGap.PolarCoefficients.low302, SmallGap.PolarCoefficients.low311, SmallGap.PolarCoefficients.low320, SmallGap.PolarCoefficients.low401, SmallGap.PolarCoefficients.low410, SmallGap.PolarCoefficients.low500]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow122Packet
