import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow005Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketLow
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow005Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullLow005.source A e f g v = (SmallGap.PolarPacket.lowOuter A e f g v).c005 := by
  simp only [FullLow005.source, FullLow0050.source, FullLow0051.source, FullLow0052.source, FullLow0053.source, FullLow0054.source, FullLow0055.source, FullLow0056.source, FullLow0057.source, FullLow0058.source, FullLow0059.source,
    SmallGap.PolarPacket.lowOuter, QuinticSource.transform, SmallGap.PolarPacket.low,
    SmallGap.PolarCoefficients.low050, SmallGap.PolarCoefficients.low140, SmallGap.PolarCoefficients.low230, SmallGap.PolarCoefficients.low320, SmallGap.PolarCoefficients.low410, SmallGap.PolarCoefficients.low500]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow005Packet
