import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow050Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketLow
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow050Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullLow050.source A e f g v = (SmallGap.PolarPacket.lowOuter A e f g v).c050 := by
  simp only [FullLow050.source, FullLow0500.source, FullLow0501.source, FullLow0502.source, FullLow0503.source, FullLow0504.source, FullLow0505.source, FullLow0506.source, FullLow0507.source, FullLow0508.source, FullLow0509.source, FullLow05010.source, FullLow05011.source, FullLow05012.source, FullLow05013.source, FullLow05014.source,
    SmallGap.PolarPacket.lowOuter, QuinticSource.transform, SmallGap.PolarPacket.low,
    SmallGap.PolarCoefficients.low005, SmallGap.PolarCoefficients.low014, SmallGap.PolarCoefficients.low023, SmallGap.PolarCoefficients.low032, SmallGap.PolarCoefficients.low041, SmallGap.PolarCoefficients.low050, SmallGap.PolarCoefficients.low104, SmallGap.PolarCoefficients.low113, SmallGap.PolarCoefficients.low122, SmallGap.PolarCoefficients.low131, SmallGap.PolarCoefficients.low140, SmallGap.PolarCoefficients.low203, SmallGap.PolarCoefficients.low212, SmallGap.PolarCoefficients.low221, SmallGap.PolarCoefficients.low230, SmallGap.PolarCoefficients.low302, SmallGap.PolarCoefficients.low311, SmallGap.PolarCoefficients.low320, SmallGap.PolarCoefficients.low401, SmallGap.PolarCoefficients.low410, SmallGap.PolarCoefficients.low500]
  simp only [SmallGap.PolarCoefficientsLow0.c005, SmallGap.PolarCoefficientsLow1.c005, SmallGap.PolarCoefficientsLow2.c005, SmallGap.PolarCoefficientsLow3.c005, SmallGap.PolarCoefficientsLow4.c005]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow050Packet
