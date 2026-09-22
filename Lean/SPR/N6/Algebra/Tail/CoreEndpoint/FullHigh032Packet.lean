import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketHigh
/-! The certified source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh032Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullHigh032.source A e f g v = (SmallGap.PolarPacket.highOuter A e f g v).c032 := by
  simp only [FullHigh032.source, FullHigh0320.source, FullHigh0321.source, FullHigh0322.source, FullHigh0323.source, FullHigh0324.source, FullHigh0325.source, FullHigh0326.source, FullHigh0327.source, FullHigh0328.source, FullHigh0329.source, FullHigh03210.source,
    SmallGap.PolarPacket.highOuter, QuinticSource.transform, SmallGap.PolarPacket.high,
    SmallGap.PolarCoefficients.high023, SmallGap.PolarCoefficients.high032, SmallGap.PolarCoefficients.high041, SmallGap.PolarCoefficients.high050, SmallGap.PolarCoefficients.high113, SmallGap.PolarCoefficients.high122, SmallGap.PolarCoefficients.high131, SmallGap.PolarCoefficients.high140, SmallGap.PolarCoefficients.high203, SmallGap.PolarCoefficients.high212, SmallGap.PolarCoefficients.high221, SmallGap.PolarCoefficients.high230, SmallGap.PolarCoefficients.high302, SmallGap.PolarCoefficients.high311, SmallGap.PolarCoefficients.high320, SmallGap.PolarCoefficients.high401, SmallGap.PolarCoefficients.high410, SmallGap.PolarCoefficients.high500]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullHigh032Packet
