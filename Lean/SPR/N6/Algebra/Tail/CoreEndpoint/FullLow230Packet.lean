import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow230Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketLow
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow230Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullLow230.source A e f g v = (SmallGap.PolarPacket.lowOuter A e f g v).c230 := by
  simp only [FullLow230.source, FullLow2300.source, FullLow2301.source, FullLow2302.source, FullLow2303.source, FullLow2304.source, FullLow2305.source, FullLow2306.source, FullLow2307.source, FullLow2308.source, FullLow2309.source, FullLow23010.source,
    SmallGap.PolarPacket.lowOuter, QuinticSource.transform, SmallGap.PolarPacket.low,
    SmallGap.PolarCoefficients.low203, SmallGap.PolarCoefficients.low212, SmallGap.PolarCoefficients.low221, SmallGap.PolarCoefficients.low230, SmallGap.PolarCoefficients.low302, SmallGap.PolarCoefficients.low311, SmallGap.PolarCoefficients.low320, SmallGap.PolarCoefficients.low401, SmallGap.PolarCoefficients.low410, SmallGap.PolarCoefficients.low500]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow230Packet
