import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketHigh
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh050Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullHigh050.source A e f g v = (SmallGap.PolarPacket.highOuter A e f g v).c050 := by
  simp only [FullHigh050.source, FullHigh0500.source, FullHigh0501.source, FullHigh0502.source, FullHigh0503.source, FullHigh0504.source, FullHigh0505.source, FullHigh0506.source, FullHigh0507.source, FullHigh0508.source, FullHigh0509.source, FullHigh05010.source, FullHigh05011.source, FullHigh05012.source,
    SmallGap.PolarPacket.highOuter, QuinticSource.transform, SmallGap.PolarPacket.high,
    SmallGap.PolarCoefficients.high005, SmallGap.PolarCoefficients.high014, SmallGap.PolarCoefficients.high023, SmallGap.PolarCoefficients.high032, SmallGap.PolarCoefficients.high041, SmallGap.PolarCoefficients.high050, SmallGap.PolarCoefficients.high104, SmallGap.PolarCoefficients.high113, SmallGap.PolarCoefficients.high122, SmallGap.PolarCoefficients.high131, SmallGap.PolarCoefficients.high140, SmallGap.PolarCoefficients.high203, SmallGap.PolarCoefficients.high212, SmallGap.PolarCoefficients.high221, SmallGap.PolarCoefficients.high230, SmallGap.PolarCoefficients.high302, SmallGap.PolarCoefficients.high311, SmallGap.PolarCoefficients.high320, SmallGap.PolarCoefficients.high401, SmallGap.PolarCoefficients.high410, SmallGap.PolarCoefficients.high500]
  simp only [SmallGap.PolarCoefficientsHigh0.c005, SmallGap.PolarCoefficientsHigh1.c005, SmallGap.PolarCoefficientsHigh2.c005]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullHigh050Packet
