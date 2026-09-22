import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh005Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh014Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh023Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh032Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh041Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh104Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh113Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh122Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh131Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh140Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh203Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh212Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh221Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh230Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh302Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh311Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh320Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow005Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow014Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow032Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow050Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow104Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow113Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow122Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow131Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow140Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow203Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow212Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow221Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow230Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow302Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow311Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow320Packet
import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow410Packet

/-!
# Exact endpoint source reconstructions

These imports identify every restored finite A-layer source with its actual
outer packet field. Except for the separately completed high (0,3,2) block,
they do not prove the sources nonnegative. Complete sign certificates are
imported separately by the synthesis modules; this entry itself only
collects the exact source reconstructions.
-/
