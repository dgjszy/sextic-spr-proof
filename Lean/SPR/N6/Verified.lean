import SPR.N6.Synthesis.AllCoreCoefficients
import SPR.N6.Synthesis.CoreLow302
import SPR.N6.Synthesis.CoreHigh302
import SPR.N6.Algebra.Tail.NatEncoding
import SPR.N6.Synthesis.CoreLow410
import SPR.N6.Algebra.Tail.SourcePackets
import SPR.N6.Construction.CoreCoefficientFrequency
import SPR.N6.Algebra.Tail.QuadraticJetMap
import SPR.N6.Algebra.WidthCoordinates
import SPR.N6.Algebra.Bernstein
import SPR.N6.Algebra.EndpointBlocks
import SPR.N6.Construction.BaselinePositive
import SPR.N6.Construction.LastRoot
import SPR.N6.Construction.UpperResidual
import SPR.N6.Construction.UpperInner
import SPR.N6.Construction.RatioPolynomial
import SPR.N6.Synthesis.CandidateLift
import SPR.N6.Synthesis.RatioInterpolation
import SPR.N6.Synthesis.FrequencyAssembly
import SPR.N6.Synthesis.FixedOdd
import SPR.N6.Synthesis.FixedSecondFourth
import SPR.N6.Construction.TailCoordinates
import SPR.N6.Preliminaries.RatioEndpoint
import SPR.N6.Construction.RatioQuotient
import SPR.N6.Construction.HighRatio
import SPR.N6.Synthesis.WeakTails
import SPR.N6.Synthesis.TailRatio
import SPR.N6.Synthesis.RelativeWidth
import SPR.N6.Synthesis.Remaining

import SPR.N6.Algebra.IndexedCoefficientCheck
import SPR.N6.Algebra.Tail.LowZeroObstruction
import SPR.N6.Construction.EndpointFrequency
import SPR.N6.Construction.HighFrequency
import SPR.N6.Construction.LowFirstCore
import SPR.N6.Construction.OuterPolynomial
import SPR.N6.Synthesis.HighEndpoint
import SPR.N6.Algebra.Tail.CoreFrequency
import SPR.N6.Synthesis.CoreCoefficients
import SPR.N6.Construction.CoreBivariateSlice
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh401ZeroJet
import SPR.N6.Construction.PolarCore
import SPR.N6.Synthesis.CoreMixedCoefficients
import SPR.N6.Construction.CoreSecondSlice
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh410ZeroJet
import SPR.N6.Construction.CoreSecondZero
import SPR.N6.Algebra.Tail.CoreEndpoint.DirectionalObstruction

import SPR.N6.Synthesis.CoreMixedLowCoefficients
import SPR.N6.Synthesis.CoreHigh032
import SPR.N6.Synthesis.PolarPacket
import SPR.N6.Construction.PolarPacketPolynomial
import SPR.N6.Construction.PacketCoefficientTransport
import SPR.N6.Algebra.Tail.NonnegativeExpression
import SPR.N6.Algebra.Tail.NonnegativeTerms
import SPR.N6.Algebra.Tail.SmallGap.ReducedLayers
import SPR.N6.Algebra.Tail.CoreEndpoint.PureHighPacket
import SPR.N6.Algebra.Tail.CoreEndpoint.PureLowPacket
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh401Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh410Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.MixedLow401Packet
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficients

/-!
# Sixth-order results currently checked by the kernel

This entry exposes the exact original target and its complete core-coefficient
synthesis proof, alongside the earlier original-box subclasses and conditional
reductions. `Synthesis.AllCoreCoefficients` supplies every remaining actual
coefficient and closes `RobustSPRStatement`, including degenerate boxes.

The static certificate sources below this entry are part of the normal Lake
build. No research script or exported JSON is a formal dependency.
-/
