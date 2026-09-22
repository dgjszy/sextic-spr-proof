import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow140Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketLow
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow140Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullLow140.source A e f g v = (SmallGap.PolarPacket.lowOuter A e f g v).c140 := by
  simp only [FullLow140.source, FullLow1400.source, FullLow1401.source, FullLow1402.source, FullLow1403.source, FullLow1404.source, FullLow1405.source, FullLow1406.source, FullLow1407.source, FullLow1408.source, FullLow1409.source, FullLow14010.source, FullLow14011.source, FullLow14012.source,
    SmallGap.PolarPacket.lowOuter, QuinticSource.transform, SmallGap.PolarPacket.low,
    SmallGap.PolarCoefficients.low104, SmallGap.PolarCoefficients.low113, SmallGap.PolarCoefficients.low122, SmallGap.PolarCoefficients.low131, SmallGap.PolarCoefficients.low140, SmallGap.PolarCoefficients.low203, SmallGap.PolarCoefficients.low212, SmallGap.PolarCoefficients.low221, SmallGap.PolarCoefficients.low230, SmallGap.PolarCoefficients.low302, SmallGap.PolarCoefficients.low311, SmallGap.PolarCoefficients.low320, SmallGap.PolarCoefficients.low401, SmallGap.PolarCoefficients.low410, SmallGap.PolarCoefficients.low500]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow140Packet
