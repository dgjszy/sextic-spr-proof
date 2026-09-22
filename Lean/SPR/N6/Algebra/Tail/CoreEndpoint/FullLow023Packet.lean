import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Source
import SPR.N6.Algebra.Tail.SmallGap.PolarPacketLow
/-! The reconstructed source is the corresponding coefficient after the universal
actual-width substitution. This bridge is an identity over all real parameters. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow023Packet
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Exact whole-coefficient reconstruction from its finite A layers. -/
theorem source_eq (A e f g v : ℝ) :
    FullLow023.source A e f g v = (SmallGap.PolarPacket.lowOuter A e f g v).c023 := by
  simp only [FullLow023.source, FullLow0230.source, FullLow0231.source, FullLow0232.source, FullLow0233.source, FullLow0234.source, FullLow0235.source, FullLow0236.source, FullLow0237.source, FullLow0238.source, FullLow0239.source, FullLow02310.source, FullLow02311.source,
    SmallGap.PolarPacket.lowOuter, QuinticSource.transform, SmallGap.PolarPacket.low,
    SmallGap.PolarCoefficients.low032, SmallGap.PolarCoefficients.low041, SmallGap.PolarCoefficients.low050, SmallGap.PolarCoefficients.low122, SmallGap.PolarCoefficients.low131, SmallGap.PolarCoefficients.low140, SmallGap.PolarCoefficients.low212, SmallGap.PolarCoefficients.low221, SmallGap.PolarCoefficients.low230, SmallGap.PolarCoefficients.low302, SmallGap.PolarCoefficients.low311, SmallGap.PolarCoefficients.low320, SmallGap.PolarCoefficients.low401, SmallGap.PolarCoefficients.low410, SmallGap.PolarCoefficients.low500]
  -- The same common width factors occur on both sides; keep them atomic.
  generalize ((e+f)*(e+f+g)) = weight
  try generalize (f+g) = gap
  ring

end
end SPR.N6.Tail.CoreEndpoint.FullLow023Packet
