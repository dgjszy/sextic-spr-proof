import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow032Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketLow
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow032Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullLow032.source A e f g v = (SmallGap.PolarPacket.lowOuter A e f g v).c032 := by
  simp only [FullLow032.source, FullLow0320.source, FullLow0321.source, FullLow0322.source, FullLow0323.source, FullLow0324.source, FullLow0325.source, FullLow0326.source, FullLow0327.source, FullLow0328.source, FullLow0329.source, FullLow03210.source, FullLow03211.source, FullLow03212.source,
    SmallGap.PolarPacket.lowOuter, QuinticSource.transform, SmallGap.PolarPacket.low,
    SmallGap.PolarCoefficients.low023, SmallGap.PolarCoefficients.low032, SmallGap.PolarCoefficients.low041, SmallGap.PolarCoefficients.low050, SmallGap.PolarCoefficients.low113, SmallGap.PolarCoefficients.low122, SmallGap.PolarCoefficients.low131, SmallGap.PolarCoefficients.low140, SmallGap.PolarCoefficients.low203, SmallGap.PolarCoefficients.low212, SmallGap.PolarCoefficients.low221, SmallGap.PolarCoefficients.low230, SmallGap.PolarCoefficients.low302, SmallGap.PolarCoefficients.low311, SmallGap.PolarCoefficients.low320, SmallGap.PolarCoefficients.low401, SmallGap.PolarCoefficients.low410, SmallGap.PolarCoefficients.low500]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow032Packet
