import SPR.N6.Algebra.Tail.NonnegativeExpression
import SPR.N6.Algebra.Tail.OuterCore
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsHigh0
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsHigh1
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsHigh2
import SPR.N6.Algebra.Tail.SmallGap.ReducedLayers
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace FullHigh1310
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    2*SmallGap.PolarCoefficientsHigh0.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    3*SmallGap.PolarCoefficientsHigh0.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    4*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e^3*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^7+12*SmallGap.ReducedLayers.high0_010_0 e g v*e^5+4*SmallGap.ReducedLayers.high0_001_0 e g
    v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_110_0 e g v*e^5+1*SmallGap.ReducedLayers.high1_101_0 e g
    v*e^6+6*SmallGap.ReducedLayers.high1_020_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_011_0 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2616 1) .e) (.add (.mul (.rational 26664
    1) .f) (.add (.mul (.rational 33716 1) .g) (.mul (.rational 4864 1) .v)))) .e) (.add (.mul
    (.add (.mul (.rational 169170 1) .f) (.add (.mul (.rational 291700 1) .g) (.mul (.rational
    46194 1) .v))) .f) (.add (.mul (.add (.mul (.rational 180546 1) .g) (.mul (.rational 59100 1)
    .v)) .g) (.mul (.rational 2280 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 749954 1) .f) (.add (.mul (.rational 1636089 1) .g) (.mul (.rational 273266 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 1364464 1) .g) (.mul (.rational 479242 1) .v))
    .g) (.mul (.rational 20280 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    542057 1) .g) (.mul (.rational 299590 1) .v)) .g) (.mul (.rational 26636 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2470849 1) .f) (.add
    (.mul (.rational 6515643 1) .g) (.mul (.rational 1128833 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 6830610 1) .g) (.mul (.rational 2516247 1) .v)) .g) (.mul (.rational 112148 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3627311 1) .g) (.mul (.rational
    2134541 1) .v)) .g) (.mul (.rational 202976 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1023263 1) .g) (.mul (.rational 858041 1) .v)) .g) (.mul (.rational 130516 1)
    (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 6279669 1) .f) (.add (.mul (.rational 19411023 1) .g) (.mul (.rational 3459369 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 24496684 1) .g) (.mul (.rational 9358874 1) .v))
    .g) (.mul (.rational 431881 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    16270682 1) .g) (.mul (.rational 10036382 1) .v)) .g) (.mul (.rational 997666 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6099379 1) .g) (.mul (.rational 5434020 1)
    .v)) .g) (.mul (.rational 875921 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1277923 1) .g) (.mul (.rational 1558121 1) .v)) .g) (.mul (.rational 363824
    1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 12608099 1) .f) (.add (.mul (.rational 44686496 1) .g) (.mul
    (.rational 8154081 1) .v))) .f) (.add (.mul (.add (.mul (.rational 65915135 1) .g) (.mul
    (.rational 25952045 1) .v)) .g) (.mul (.rational 1229327 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 52519198 1) .g) (.mul (.rational 33661592 1) .v)) .g) (.mul
    (.rational 3458690 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 24522133
    1) .g) (.mul (.rational 22933230 1) .v)) .g) (.mul (.rational 3856965 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6794662 1) .g) (.mul (.rational 8802173
    1) .v)) .g) (.mul (.rational 2171476 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1073301 1) .g) (.mul (.rational 1886725 1) .v)) .g) (.mul (.rational
    647766 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 20307494 1) .f) (.add (.mul (.rational 81167148
    1) .g) (.mul (.rational 15121647 1) .v))) .f) (.add (.mul (.add (.mul (.rational 136982324 1)
    .g) (.mul (.rational 55362295 1) .v)) .g) (.mul (.rational 2678837 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 127233687 1) .g) (.mul (.rational 84273339 1) .v)) .g)
    (.mul (.rational 8893346 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    71039526 1) .g) (.mul (.rational 69218320 1) .v)) .g) (.mul (.rational 12041189 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 24425854 1) .g) (.mul
    (.rational 33286209 1) .v)) .g) (.mul (.rational 8571390 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5080920 1) .g) (.mul (.rational 9497239 1) .v)) .g)
    (.mul (.rational 3442608 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 599591 1) .g) (.mul (.rational 1547125 1) .v)) .g) (.mul (.rational 774358 1) (.pow
    .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 26487813 1) .f) (.add (.mul (.rational 117852824 1)
    .g) (.mul (.rational 22375916 1) .v))) .f) (.add (.mul (.add (.mul (.rational 223914578 1) .g)
    (.mul (.rational 92651883 1) .v)) .g) (.mul (.rational 4565827 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 237460283 1) .g) (.mul (.rational 161937088 1) .v)) .g)
    (.mul (.rational 17481930 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    154168838 1) .g) (.mul (.rational 155714087 1) .v)) .g) (.mul (.rational 27867011 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 63196146 1) .g) (.mul
    (.rational 89985176 1) .v)) .g) (.mul (.rational 24006972 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 16254634 1) .g) (.mul (.rational 32033051 1) .v)) .g)
    (.mul (.rational 12134720 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2515619 1) .g) (.mul (.rational 6909062 1) .v)) .g) (.mul (.rational 3650936 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 213217 1) .g) (.mul
    (.rational 848555 1) .v)) .g) (.mul (.rational 630376 1) (.pow .v 2))) (.pow .g 6)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 28111875 1) .f) (.add (.mul (.rational 137799266 1) .g) (.mul
    (.rational 26629262 1) .v))) .f) (.add (.mul (.add (.mul (.rational 291044920 1) .g) (.mul
    (.rational 123066719 1) .v)) .g) (.mul (.rational 6164180 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 346888242 1) .g) (.mul (.rational 242914257 1) .v)) .g) (.mul
    (.rational 26754162 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    256604266 1) .g) (.mul (.rational 267675752 1) .v)) .g) (.mul (.rational 49099767 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 122002697 1) .g) (.mul
    (.rational 180632799 1) .v)) .g) (.mul (.rational 49675526 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 37297668 1) .g) (.mul (.rational 77016025 1) .v)) .g)
    (.mul (.rational 30281435 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7111690 1) .g) (.mul (.rational 20636767 1) .v)) .g) (.mul (.rational 11409962 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 787131 1) .g) (.mul
    (.rational 3337826 1) .v)) .g) (.mul (.rational 2617656 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 43513 1) .g) (.mul (.rational 297411 1) .v)) .g)
    (.mul (.rational 344476 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 24294115 1) .f) (.add (.mul (.rational 130087283 1) .g) (.mul (.rational 25563098
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 302354623 1) .g) (.mul (.rational 130463503 1)
    .v)) .g) (.mul (.rational 6632472 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 400040744 1) .g) (.mul (.rational 287069539 1) .v)) .g) (.mul (.rational 32193012
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 332003288 1) .g) (.mul
    (.rational 356677240 1) .v)) .g) (.mul (.rational 66875787 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 179467197 1) .g) (.mul (.rational 275253937 1) .v))
    .g) (.mul (.rational 77739808 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 63470022 1) .g) (.mul (.rational 136672670 1) .v)) .g) (.mul (.rational 55497939 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 14338244 1) .g) (.mul
    (.rational 43708959 1) .v)) .g) (.mul (.rational 25121874 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1947607 1) .g) (.mul (.rational 8743332 1) .v)) .g)
    (.mul (.rational 7180386 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 139924 1) .g) (.mul (.rational 1020155 1) .v)) .g) (.mul (.rational 1246916 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3857 1) .g) (.mul
    (.rational 59931 1) .v)) .g) (.mul (.rational 120414 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 17040516 1) .f) (.add (.mul (.rational 98975179
    1) .g) (.mul (.rational 19762950 1) .v))) .f) (.add (.mul (.add (.mul (.rational 251057724 1)
    .g) (.mul (.rational 110418240 1) .v)) .g) (.mul (.rational 5691114 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 365103591 1) .g) (.mul (.rational 268039366 1) .v))
    .g) (.mul (.rational 30558270 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 335869796 1) .g) (.mul (.rational 370765830 1) .v)) .g) (.mul (.rational 70904920
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 203319241 1) .g)
    (.mul (.rational 322059751 1) .v)) .g) (.mul (.rational 93140372 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 81565470 1) .g) (.mul (.rational 182460039
    1) .v)) .g) (.mul (.rational 76221397 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 21255598 1) .g) (.mul (.rational 67753875 1) .v)) .g) (.mul (.rational
    40279196 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3408658
    1) .g) (.mul (.rational 16114066 1) .v)) .g) (.mul (.rational 13772035 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 299213 1) .g) (.mul (.rational 2313865 1)
    .v)) .g) (.mul (.rational 2962830 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10658 1) .g) (.mul (.rational 176873 1) .v)) .g) (.mul (.rational 374796 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 5241 1) .v) .g) (.mul
    (.rational 24146 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 9628883 1) .f) (.add (.mul (.rational 60303651 1) .g) (.mul (.rational
    12227657 1) .v))) .f) (.add (.mul (.add (.mul (.rational 165790750 1) .g) (.mul (.rational
    74249965 1) .v)) .g) (.mul (.rational 3876234 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 262868381 1) .g) (.mul (.rational 197153725 1) .v)) .g) (.mul (.rational
    22819556 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 265463547 1) .g)
    (.mul (.rational 300528615 1) .v)) .g) (.mul (.rational 58512062 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 177845727 1) .g) (.mul (.rational 290202813
    1) .v)) .g) (.mul (.rational 85728320 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 79739178 1) .g) (.mul (.rational 184704518 1) .v)) .g) (.mul (.rational
    79122811 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 23512238
    1) .g) (.mul (.rational 78061025 1) .v)) .g) (.mul (.rational 47803918 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4335786 1) .g) (.mul (.rational 21486058
    1) .v)) .g) (.mul (.rational 19013879 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 447521 1) .g) (.mul (.rational 3652545 1) .v)) .g) (.mul (.rational
    4870312 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 19374 1)
    .g) (.mul (.rational 341684 1) .v)) .g) (.mul (.rational 758520 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 13075 1) .v) .g) (.mul (.rational 63488 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 2088 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4327819 1) .f) (.add (.mul
    (.rational 29077611 1) .g) (.mul (.rational 5983829 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 86143644 1) .g) (.mul (.rational 39249840 1) .v)) .g) (.mul (.rational 2073569 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 147916430 1) .g) (.mul (.rational
    113190776 1) .v)) .g) (.mul (.rational 13284422 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 162691227 1) .g) (.mul (.rational 188557276 1) .v)) .g) (.mul
    (.rational 37312555 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 119490098 1) .g) (.mul (.rational 200404556 1) .v)) .g) (.mul (.rational 60338060
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 59189590 1) .g)
    (.mul (.rational 141565935 1) .v)) .g) (.mul (.rational 62010375 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19463164 1) .g) (.mul (.rational 67070451 1)
    .v)) .g) (.mul (.rational 42159324 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4049666 1) .g) (.mul (.rational 20951838 1) .v)) .g) (.mul (.rational
    19114414 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 478905 1)
    .g) (.mul (.rational 4106821 1) .v)) .g) (.mul (.rational 5673002 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 24262 1) .g) (.mul (.rational 452599 1) .v))
    .g) (.mul (.rational 1046444 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 21055 1) .v) .g) (.mul (.rational 107080 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 4531 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1517193 1) .f) (.add (.mul (.rational 10888398 1) .g)
    (.mul (.rational 2272725 1) .v))) .f) (.add (.mul (.add (.mul (.rational 34588885 1) .g) (.mul
    (.rational 16019387 1) .v)) .g) (.mul (.rational 855631 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 63958286 1) .g) (.mul (.rational 49875206 1) .v)) .g) (.mul
    (.rational 5927866 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 76118733
    1) .g) (.mul (.rational 90168886 1) .v)) .g) (.mul (.rational 18105191 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 60821703 1) .g) (.mul (.rational
    104625022 1) .v)) .g) (.mul (.rational 32037588 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 32981583 1) .g) (.mul (.rational 81236299 1) .v)) .g) (.mul
    (.rational 36289275 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11959240 1) .g) (.mul (.rational 42640037 1) .v)) .g) (.mul (.rational 27420930 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2768126 1) .g) (.mul
    (.rational 14896616 1) .v)) .g) (.mul (.rational 13954726 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 368173 1) .g) (.mul (.rational 3303431 1) .v)) .g)
    (.mul (.rational 4705196 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 21280 1) .g) (.mul (.rational 418012 1) .v)) .g) (.mul (.rational 1001188 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 22779 1) .v) .g) (.mul (.rational
    120620 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 6189 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    402662 1) .f) (.add (.mul (.rational 3075206 1) .g) (.mul (.rational 650619 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 10431164 1) .g) (.mul (.rational 4905959 1) .v)) .g) (.mul
    (.rational 264641 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 20672737 1)
    .g) (.mul (.rational 16406807 1) .v)) .g) (.mul (.rational 1972046 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 26477834 1) .g) (.mul (.rational 32004620 1) .v)) .g)
    (.mul (.rational 6509241 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22872849 1) .g) (.mul (.rational 40270616 1) .v)) .g) (.mul (.rational 12514134 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 13477986 1) .g) (.mul
    (.rational 34099562 1) .v)) .g) (.mul (.rational 15492767 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5341659 1) .g) (.mul (.rational 19644624 1) .v)) .g)
    (.mul (.rational 12882290 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1360552 1) .g) (.mul (.rational 7588412 1) .v)) .g) (.mul (.rational 7270951 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 200749 1) .g) (.mul
    (.rational 1876965 1) .v)) .g) (.mul (.rational 2744106 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 13002 1) .g) (.mul (.rational 267751 1) .v)) .g)
    (.mul (.rational 660884 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    16673 1) .v) .g) (.mul (.rational 91392 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 5484 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 77231 1) .f) (.add (.mul (.rational 625674 1) .g)
    (.mul (.rational 134058 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2258126 1) .g) (.mul
    (.rational 1077265 1) .v)) .g) (.mul (.rational 58607 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4777353 1) .g) (.mul (.rational 3853110 1) .v)) .g) (.mul (.rational
    467570 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6555488 1) .g) (.mul
    (.rational 8070425 1) .v)) .g) (.mul (.rational 1659155 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6090859 1) .g) (.mul (.rational 10950853 1) .v)) .g)
    (.mul (.rational 3444796 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3876924 1) .g) (.mul (.rational 10047579 1) .v)) .g) (.mul (.rational 4629081 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1667671 1) .g) (.mul
    (.rational 6305485 1) .v)) .g) (.mul (.rational 4201594 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 463493 1) .g) (.mul (.rational 2669195 1) .v)) .g)
    (.mul (.rational 2605115 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 75083 1) .g) (.mul (.rational 728445 1) .v)) .g) (.mul (.rational 1087920 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5378 1) .g) (.mul
    (.rational 115568 1) .v)) .g) (.mul (.rational 292376 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 8081 1) .v) .g) (.mul (.rational 45576 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 3122 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9909 1) .f) (.add (.mul
    (.rational 84928 1) .g) (.mul (.rational 18404 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    325172 1) .g) (.mul (.rational 157095 1) .v)) .g) (.mul (.rational 8602 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 731990 1) .g) (.mul (.rational 598777 1) .v)) .g)
    (.mul (.rational 73182 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1072176 1) .g) (.mul (.rational 1341160 1) .v)) .g) (.mul (.rational 277925 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1067038 1) .g) (.mul (.rational
    1953504 1) .v)) .g) (.mul (.rational 620030 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 730198 1) .g) (.mul (.rational 1932014 1) .v)) .g) (.mul
    (.rational 899178 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    339042 1) .g) (.mul (.rational 1312850 1) .v)) .g) (.mul (.rational 885010 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 102155 1) .g) (.mul (.rational
    604752 1) .v)) .g) (.mul (.rational 598192 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 18026 1) .g) (.mul (.rational 180580 1) .v)) .g) (.mul (.rational
    273930 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1414 1) .g)
    (.mul (.rational 31539 1) .v)) .g) (.mul (.rational 81260 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 2445 1) .v) .g) (.mul (.rational 14088 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 1083 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 5))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 735 1) .f) (.add (.mul
    (.rational 6651 1) .g) (.mul (.rational 1454 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    26955 1) .g) (.mul (.rational 13149 1) .v)) .g) (.mul (.rational 722 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 64404 1) .g) (.mul (.rational 53253 1) .v)) .g) (.mul
    (.rational 6528 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 100422 1)
    .g) (.mul (.rational 127140 1) .v)) .g) (.mul (.rational 26433 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 106722 1) .g) (.mul (.rational 198072 1) .v)) .g)
    (.mul (.rational 63096 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 78246 1) .g) (.mul (.rational 210294 1) .v)) .g) (.mul (.rational 98280 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 39060 1) .g) (.mul (.rational
    154014 1) .v)) .g) (.mul (.rational 104328 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12699 1) .g) (.mul (.rational 76788 1) .v)) .g) (.mul (.rational
    76398 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2427 1) .g)
    (.mul (.rational 24930 1) .v)) .g) (.mul (.rational 38088 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 207 1) .g) (.mul (.rational 4757 1) .v)) .g) (.mul
    (.rational 12366 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 405 1)
    .v) .g) (.mul (.rational 2360 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 201 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 6))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 22 1) .f) (.add (.mul (.rational 210 1) .g) (.mul (.rational 46 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 900 1) .g) (.mul (.rational 440 1) .v)) .g) (.mul
    (.rational 24 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2280 1) .g) (.mul
    (.rational 1890 1) .v)) .g) (.mul (.rational 230 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3780 1) .g) (.mul (.rational 4800 1) .v)) .g) (.mul (.rational 990 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4284 1) .g) (.mul
    (.rational 7980 1) .v)) .g) (.mul (.rational 2520 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3360 1) .g) (.mul (.rational 9072 1) .v)) .g) (.mul
    (.rational 4200 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1800 1) .g) (.mul (.rational 7140 1) .v)) .g) (.mul (.rational 4788 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 630 1) .g) (.mul (.rational 3840 1) .v)) .g)
    (.mul (.rational 3780 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 130 1) .g) (.mul (.rational 1350 1) .v)) .g) (.mul (.rational 2040 1) (.pow .v 2)))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 12 1) .g) (.mul (.rational 280 1)
    .v)) .g) (.mul (.rational 720 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 26 1) .v) .g) (.mul (.rational 150 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 14 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 7)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1310

namespace FullHigh1311
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh1.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    4*SmallGap.PolarCoefficientsHigh0.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh1.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    12*SmallGap.PolarCoefficientsHigh0.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsHigh1.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh0.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsHigh0.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh0.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(28*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^6+4*SmallGap.ReducedLayers.high0_100_1 e g v*e^7+60*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^4+12*SmallGap.ReducedLayers.high0_010_1 e g v*e^5+24*SmallGap.ReducedLayers.high0_001_0 e
    g v*e^5+4*SmallGap.ReducedLayers.high0_001_1 e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.high1_110_0 e g v*e^4+3*SmallGap.ReducedLayers.high1_110_1 e
    g v*e^5+6*SmallGap.ReducedLayers.high1_101_0 e g v*e^5+1*SmallGap.ReducedLayers.high1_101_1 e
    g v*e^6+18*SmallGap.ReducedLayers.high1_020_0 e g v*e^2+6*SmallGap.ReducedLayers.high1_020_1 e
    g v*e^3+12*SmallGap.ReducedLayers.high1_011_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_011_1 e
    g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 23916 1) .e) (.add (.mul (.rational 235336 1) .f)
    (.add (.mul (.rational 295744 1) .g) (.mul (.rational 44080 1) .v)))) .e) (.add (.mul (.add
    (.mul (.rational 1443693 1) .f) (.add (.mul (.rational 2474102 1) .g) (.mul (.rational 400957
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 1522253 1) .g) (.mul (.rational 506546 1) .v))
    .g) (.mul (.rational 20500 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 6190345 1) .f) (.add (.mul (.rational 13423892 1) .g) (.mul (.rational 2277235 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 11131637 1) .g) (.mul (.rational 3942836 1) .v))
    .g) (.mul (.rational 173360 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4401902 1) .g) (.mul (.rational 2426727 1) .v)) .g) (.mul (.rational 223812 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 19713514 1) .f) (.add
    (.mul (.rational 51680387 1) .g) (.mul (.rational 9041654 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 53883529 1) .g) (.mul (.rational 19904576 1) .v)) .g) (.mul (.rational 914186 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 28488389 1) .g) (.mul (.rational
    16641446 1) .v)) .g) (.mul (.rational 1625600 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8017617 1) .g) (.mul (.rational 6580084 1) .v)) .g) (.mul (.rational
    1021450 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 48353251 1) .f) (.add (.mul (.rational 148605241 1) .g) (.mul
    (.rational 26632754 1) .v))) .f) (.add (.mul (.add (.mul (.rational 186551119 1) .g) (.mul
    (.rational 71198798 1) .v)) .g) (.mul (.rational 3362910 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 123381999 1) .g) (.mul (.rational 75335934 1) .v)) .g) (.mul
    (.rational 7636080 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 46142458
    1) .g) (.mul (.rational 40192532 1) .v)) .g) (.mul (.rational 6562758 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9674184 1) .g) (.mul (.rational 11348604
    1) .v)) .g) (.mul (.rational 2655212 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 93473100 1) .f) (.add (.mul
    (.rational 329414457 1) .g) (.mul (.rational 60277389 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 483399280 1) .g) (.mul (.rational 189702098 1) .v)) .g) (.mul (.rational 9148892 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 383559827 1) .g) (.mul (.rational
    243047750 1) .v)) .g) (.mul (.rational 25325914 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 178657427 1) .g) (.mul (.rational 163422270 1) .v)) .g) (.mul
    (.rational 27701202 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 49519220 1) .g) (.mul (.rational 61889967 1) .v)) .g) (.mul (.rational 15243494 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7857005 1) .g) (.mul
    (.rational 13102960 1) .v)) .g) (.mul (.rational 4429506 1) (.pow .v 2))) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    144493796 1) .f) (.add (.mul (.rational 574279946 1) .g) (.mul (.rational 107114921 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 964247348 1) .g) (.mul (.rational 388054820 1) .v)) .g)
    (.mul (.rational 19042986 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    891926313 1) .g) (.mul (.rational 584088996 1) .v)) .g) (.mul (.rational 62278224 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 496739061 1) .g) (.mul (.rational
    474144418 1) .v)) .g) (.mul (.rational 82875830 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 170790427 1) .g) (.mul (.rational 225363793 1) .v)) .g) (.mul
    (.rational 57842388 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 35657179 1) .g) (.mul (.rational 63625544 1) .v)) .g) (.mul (.rational 22729560 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4245542 1) .g) (.mul
    (.rational 10285834 1) .v)) .g) (.mul (.rational 4997496 1) (.pow .v 2))) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 180131039 1) .f) (.add (.mul (.rational 796976196 1) .g) (.mul (.rational
    151401106 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1506520478 1) .g) (.mul (.rational
    620780628 1) .v)) .g) (.mul (.rational 30944814 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1590995032 1) .g) (.mul (.rational 1073887655 1) .v)) .g) (.mul (.rational
    116875486 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1030154985 1) .g)
    (.mul (.rational 1021825778 1) .v)) .g) (.mul (.rational 183476330 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 422092075 1) .g) (.mul (.rational 584497756
    1) .v)) .g) (.mul (.rational 155413208 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 108879731 1) .g) (.mul (.rational 206198306 1) .v)) .g) (.mul
    (.rational 77144666 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16979261 1) .g) (.mul (.rational 44190503 1) .v)) .g) (.mul (.rational 22788638 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1459603 1) .g) (.mul
    (.rational 5419196 1) .v)) .g) (.mul (.rational 3870982 1) (.pow .v 2))) (.pow .g 6)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 181752208 1) .f) (.add (.mul (.rational 885942789 1) .g) (.mul
    (.rational 171343892 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1861647554 1) .g) (.mul
    (.rational 784666008 1) .v)) .g) (.mul (.rational 39699668 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2209386964 1) .g) (.mul (.rational 1534288129 1) .v)) .g) (.mul
    (.rational 170203046 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1629578497 1) .g) (.mul (.rational 1674801144 1) .v)) .g) (.mul (.rational 308199896 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 774095638 1) .g) (.mul
    (.rational 1120063044 1) .v)) .g) (.mul (.rational 307357950 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 237143541 1) .g) (.mul (.rational 473851698 1)
    .v)) .g) (.mul (.rational 184575948 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 45502861 1) .g) (.mul (.rational 126290455 1) .v)) .g) (.mul (.rational
    68535468 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5097924
    1) .g) (.mul (.rational 20403860 1) .v)) .g) (.mul (.rational 15525876 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 287556 1) .g) (.mul (.rational 1828588 1)
    .v)) .g) (.mul (.rational 2027532 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 148322929 1) .f) (.add (.mul (.rational 789791794 1) .g) (.mul (.rational
    155474299 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1826217167 1) .g) (.mul (.rational
    786781116 1) .v)) .g) (.mul (.rational 40386148 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2405611626 1) .g) (.mul (.rational 1716344195 1) .v)) .g) (.mul (.rational
    193897216 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1990080427 1) .g)
    (.mul (.rational 2114413936 1) .v)) .g) (.mul (.rational 398120608 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1074253647 1) .g) (.mul (.rational
    1618727196 1) .v)) .g) (.mul (.rational 457184852 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 380389005 1) .g) (.mul (.rational 798297306 1) .v)) .g)
    (.mul (.rational 322384364 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 86360283 1) .g) (.mul (.rational 254130963 1) .v)) .g) (.mul (.rational 144239258
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 11850412 1) .g)
    (.mul (.rational 50791546 1) .v)) .g) (.mul (.rational 40831450 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 866244 1) .g) (.mul (.rational 5956404 1) .v))
    .g) (.mul (.rational 7052730 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 24534 1) .g) (.mul (.rational 354862 1) .v)) .g) (.mul (.rational 682658 1) (.pow
    .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 97396257 1) .f)
    (.add (.mul (.rational 562543112 1) .g) (.mul (.rational 112697557 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1419487877 1) .g) (.mul (.rational 624728788 1) .v)) .g) (.mul
    (.rational 32526372 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2054873952
    1) .g) (.mul (.rational 1504551151 1) .v)) .g) (.mul (.rational 172974316 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1883668205 1) .g) (.mul (.rational
    2065100606 1) .v)) .g) (.mul (.rational 397330992 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1138052910 1) .g) (.mul (.rational 1780950254 1) .v)) .g)
    (.mul (.rational 516584468 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 456709229 1) .g) (.mul (.rational 1002880428 1) .v)) .g) (.mul (.rational 418490230
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 119446063 1) .g)
    (.mul (.rational 370893125 1) .v)) .g) (.mul (.rational 219113416 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 19311520 1) .g) (.mul (.rational 88139124 1)
    .v)) .g) (.mul (.rational 74374918 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1719733 1) .g) (.mul (.rational 12710256 1) .v)) .g) (.mul (.rational
    15944060 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 62682 1)
    .g) (.mul (.rational 983212 1) .v)) .g) (.mul (.rational 2022656 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 29815 1) .v) .g) (.mul (.rational 132012 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    50939968 1) .f) (.add (.mul (.rational 317245811 1) .g) (.mul (.rational 64667842 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 867573461 1) .g) (.mul (.rational 389834304 1) .v)) .g)
    (.mul (.rational 20581398 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1369019245 1) .g) (.mul (.rational 1027583300 1) .v)) .g) (.mul (.rational 120146604 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1377150388 1) .g) (.mul (.rational
    1555292484 1) .v)) .g) (.mul (.rational 305412382 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 920252907 1) .g) (.mul (.rational 1492019070 1) .v)) .g)
    (.mul (.rational 443605828 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 412359261 1) .g) (.mul (.rational 944378884 1) .v)) .g) (.mul (.rational 406034280
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 121857053 1) .g)
    (.mul (.rational 397616669 1) .v)) .g) (.mul (.rational 243515666 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 22608150 1) .g) (.mul (.rational 109337082
    1) .v)) .g) (.mul (.rational 96327540 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2360332 1) .g) (.mul (.rational 18648708 1) .v)) .g) (.mul (.rational
    24618976 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 104120 1)
    .g) (.mul (.rational 1761542 1) .v)) .g) (.mul (.rational 3846108 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 68707 1) .v) .g) (.mul (.rational 325602 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 10968 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20870683 1) .f) (.add
    (.mul (.rational 139443611 1) .g) (.mul (.rational 28914386 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 410885251 1) .g) (.mul (.rational 188384950 1) .v)) .g) (.mul (.rational
    10081558 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 702015783 1) .g) (.mul
    (.rational 539619984 1) .v)) .g) (.mul (.rational 64117380 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 768828407 1) .g) (.mul (.rational 893035656 1) .v)) .g)
    (.mul (.rational 178758966 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 562866882 1) .g) (.mul (.rational 943382784 1) .v)) .g) (.mul (.rational 286967052
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 278376293 1) .g)
    (.mul (.rational 662956268 1) .v)) .g) (.mul (.rational 292904502 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 91605981 1) .g) (.mul (.rational 312937851
    1) .v)) .g) (.mul (.rational 197965946 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19136576 1) .g) (.mul (.rational 97628472 1) .v)) .g) (.mul (.rational
    89379054 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2282271
    1) .g) (.mul (.rational 19179284 1) .v)) .g) (.mul (.rational 26490314 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 117318 1) .g) (.mul (.rational 2129510 1)
    .v)) .g) (.mul (.rational 4901162 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 100567 1) .v) .g) (.mul (.rational 506404 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 21854 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 6528034 1) .f) (.add (.mul (.rational 46589557 1) .g)
    (.mul (.rational 9823463 1) .v))) .f) (.add (.mul (.add (.mul (.rational 147192850 1) .g)
    (.mul (.rational 68811402 1) .v)) .g) (.mul (.rational 3730612 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 270762455 1) .g) (.mul (.rational 212904728 1) .v)) .g)
    (.mul (.rational 25683946 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    320733070 1) .g) (.mul (.rational 382563770 1) .v)) .g) (.mul (.rational 77951746 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 255289329 1) .g) (.mul
    (.rational 441362325 1) .v)) .g) (.mul (.rational 137092598 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 138076926 1) .g) (.mul (.rational 340989774 1) .v))
    .g) (.mul (.rational 154404986 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 50030781 1) .g) (.mul (.rational 178310135 1) .v)) .g) (.mul (.rational
    116111886 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 11602304
    1) .g) (.mul (.rational 62179910 1) .v)) .g) (.mul (.rational 58894890 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1551686 1) .g) (.mul (.rational 13803208
    1) .v)) .g) (.mul (.rational 19839242 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 90624 1) .g) (.mul (.rational 1755752 1) .v)) .g) (.mul (.rational
    4232642 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 96749 1) .v) .g)
    (.mul (.rational 513992 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 26788 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1497294 1) .f) (.add (.mul (.rational 11372334 1) .g) (.mul (.rational
    2436975 1) .v))) .f) (.add (.mul (.add (.mul (.rational 38363218 1) .g) (.mul (.rational
    18271108 1) .v)) .g) (.mul (.rational 1002658 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 75620697 1) .g) (.mul (.rational 60751446 1) .v)) .g) (.mul (.rational
    7431856 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 96364974 1) .g)
    (.mul (.rational 117833274 1) .v)) .g) (.mul (.rational 24400550 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 82869963 1) .g) (.mul (.rational 147462377
    1) .v)) .g) (.mul (.rational 46669480 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 48656684 1) .g) (.mul (.rational 124255664 1) .v)) .g) (.mul (.rational
    57504426 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19241623
    1) .g) (.mul (.rational 71300893 1) .v)) .g) (.mul (.rational 47624780 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4900112 1) .g) (.mul (.rational 27474786
    1) .v)) .g) (.mul (.rational 26806486 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 724919 1) .g) (.mul (.rational 6794264 1) .v)) .g) (.mul (.rational
    10108720 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 47254 1)
    .g) (.mul (.rational 972112 1) .v)) .g) (.mul (.rational 2439540 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 60989 1) .v) .g) (.mul (.rational 339436 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 20612 1) (.pow .v 2)) (.pow .g 10))) (.pow .f
    3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 235643 1) .f)
    (.add (.mul (.rational 1898774 1) .g) (.mul (.rational 413198 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 6815360 1) .g) (.mul (.rational 3303204 1) .v)) .g) (.mul (.rational 183250
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 14339510 1) .g) (.mul
    (.rational 11752415 1) .v)) .g) (.mul (.rational 1455542 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 19570678 1) .g) (.mul (.rational 24485606 1) .v)) .g) (.mul
    (.rational 5142270 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    18091030 1) .g) (.mul (.rational 33053582 1) .v)) .g) (.mul (.rational 10631184 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11463124 1) .g) (.mul
    (.rational 30181198 1) .v)) .g) (.mul (.rational 14229958 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4913210 1) .g) (.mul (.rational 18861544 1) .v)) .g)
    (.mul (.rational 12872712 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1362575 1) .g) (.mul (.rational 7959490 1) .v)) .g) (.mul (.rational 7962522 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 220708 1) .g) (.mul
    (.rational 2168996 1) .v)) .g) (.mul (.rational 3322280 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 15852 1) .g) (.mul (.rational 344422 1) .v)) .g)
    (.mul (.rational 894024 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    24185 1) .v) .g) (.mul (.rational 139978 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 9672 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 22490 1) .f) (.add (.mul (.rational 191767 1) .g)
    (.mul (.rational 42328 1) .v))) .f) (.add (.mul (.add (.mul (.rational 730316 1) .g) (.mul
    (.rational 359660 1) .v)) .g) (.mul (.rational 20132 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1634966 1) .g) (.mul (.rational 1364409 1) .v)) .g) (.mul (.rational
    170682 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2381442 1) .g) (.mul
    (.rational 3041372 1) .v)) .g) (.mul (.rational 645964 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2356900 1) .g) (.mul (.rational 4408712 1) .v)) .g)
    (.mul (.rational 1436250 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1604302 1) .g) (.mul (.rational 4339860 1) .v)) .g) (.mul (.rational 2076326 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 741306 1) .g) (.mul
    (.rational 2936290 1) .v)) .g) (.mul (.rational 2038022 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 222476 1) .g) (.mul (.rational 1347604 1) .v)) .g)
    (.mul (.rational 1374702 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 39157 1) .g) (.mul (.rational 401352 1) .v)) .g) (.mul (.rational 628894 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3070 1) .g) (.mul
    (.rational 70032 1) .v)) .g) (.mul (.rational 186670 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 5437 1) .v) .g) (.mul (.rational 32456 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 2510 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 5))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 964 1) .f) (.add (.mul
    (.rational 8682 1) .g) (.mul (.rational 1940 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    35010 1) .g) (.mul (.rational 17478 1) .v)) .g) (.mul (.rational 984 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 83208 1) .g) (.mul (.rational 70506 1) .v)) .g) (.mul
    (.rational 8876 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 129024 1)
    .g) (.mul (.rational 167640 1) .v)) .g) (.mul (.rational 35856 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 136332 1) .g) (.mul (.rational 260064 1) .v)) .g)
    (.mul (.rational 85392 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 99372 1) .g) (.mul (.rational 274932 1) .v)) .g) (.mul (.rational 132720 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 49320 1) .g) (.mul
    (.rational 200508 1) .v)) .g) (.mul (.rational 140616 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15948 1) .g) (.mul (.rational 99576 1) .v)) .g) (.mul
    (.rational 102816 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3034 1) .g) (.mul (.rational 32220 1) .v)) .g) (.mul (.rational 51216 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 258 1) .g) (.mul (.rational 6134 1) .v))
    .g) (.mul (.rational 16632 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 522 1) .v) .g) (.mul (.rational 3180 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 272 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1311

namespace FullHigh1312
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    4*SmallGap.PolarCoefficientsHigh1.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh2.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    12*SmallGap.PolarCoefficientsHigh0.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    12*SmallGap.PolarCoefficientsHigh1.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsHigh2.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    48*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh1.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    6*SmallGap.PolarCoefficientsHigh0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh1.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    12*SmallGap.PolarCoefficientsHigh0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsHigh1.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    18*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(84*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^5+28*SmallGap.ReducedLayers.high0_100_1 e g v*e^6+4*SmallGap.ReducedLayers.high0_100_2 e g
    v*e^7+120*SmallGap.ReducedLayers.high0_010_0 e g v*e^3+60*SmallGap.ReducedLayers.high0_010_1 e
    g v*e^4+12*SmallGap.ReducedLayers.high0_010_2 e g v*e^5+60*SmallGap.ReducedLayers.high0_001_0
    e g v*e^4+24*SmallGap.ReducedLayers.high0_001_1 e g v*e^5+4*SmallGap.ReducedLayers.high0_001_2
    e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(30*SmallGap.ReducedLayers.high1_110_0 e g v*e^3+15*SmallGap.ReducedLayers.high1_110_1 e
    g v*e^4+3*SmallGap.ReducedLayers.high1_110_2 e g v*e^5+15*SmallGap.ReducedLayers.high1_101_0 e
    g v*e^4+6*SmallGap.ReducedLayers.high1_101_1 e g v*e^5+1*SmallGap.ReducedLayers.high1_101_2 e
    g v*e^6+18*SmallGap.ReducedLayers.high1_020_0 e g v*e^1+18*SmallGap.ReducedLayers.high1_020_1
    e g v*e^2+6*SmallGap.ReducedLayers.high1_020_2 e g v*e^3+18*SmallGap.ReducedLayers.high1_011_0
    e g v*e^2+12*SmallGap.ReducedLayers.high1_011_1 e g v*e^3+3*SmallGap.ReducedLayers.high1_011_2
    e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 97404 1) .e) (.add (.mul (.rational 927936 1) .f) (.add (.mul
    (.rational 1159260 1) .g) (.mul (.rational 177816 1) .v)))) .e) (.add (.mul (.add (.mul
    (.rational 5509755 1) .f) (.add (.mul (.rational 9383978 1) .g) (.mul (.rational 1551963 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 5739411 1) .g) (.mul (.rational 1933566 1) .v))
    .g) (.mul (.rational 82060 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 22838337 1) .f) (.add (.mul (.rational 49213649 1) .g) (.mul (.rational 8461671 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 40563203 1) .g) (.mul (.rational 14438401 1) .v))
    .g) (.mul (.rational 660792 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    15960523 1) .g) (.mul (.rational 8725429 1) .v)) .g) (.mul (.rational 836964 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 70160996 1) .f) (.add
    (.mul (.rational 182759630 1) .g) (.mul (.rational 32238170 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 189395360 1) .g) (.mul (.rational 69945573 1) .v)) .g) (.mul (.rational
    3320634 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 99625658 1) .g) (.mul
    (.rational 57462573 1) .v)) .g) (.mul (.rational 5786540 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 27952464 1) .g) (.mul (.rational 22254259 1) .v)) .g) (.mul
    (.rational 3537490 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 165527611 1) .f) (.add (.mul (.rational 505444425 1) .g)
    (.mul (.rational 90997996 1) .v))) .f) (.add (.mul (.add (.mul (.rational 630657967 1) .g)
    (.mul (.rational 239862954 1) .v)) .g) (.mul (.rational 11640768 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 414974311 1) .g) (.mul (.rational 249662287 1) .v)) .g)
    (.mul (.rational 25907164 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    154683462 1) .g) (.mul (.rational 130711921 1) .v)) .g) (.mul (.rational 21696004 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 32423888 1) .g) (.mul
    (.rational 36149889 1) .v)) .g) (.mul (.rational 8488068 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 306620378
    1) .f) (.add (.mul (.rational 1073559764 1) .g) (.mul (.rational 196909071 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 1565815525 1) .g) (.mul (.rational 611429444 1) .v)) .g) (.mul
    (.rational 30155628 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1236023000
    1) .g) (.mul (.rational 771544338 1) .v)) .g) (.mul (.rational 81893654 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 573741706 1) .g) (.mul (.rational 510078589 1)
    .v)) .g) (.mul (.rational 87477686 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 158921940 1) .g) (.mul (.rational 189709094 1) .v)) .g) (.mul (.rational
    46749130 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 25304979
    1) .g) (.mul (.rational 39451827 1) .v)) .g) (.mul (.rational 13111470 1) (.pow .v 2))) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 452028810 1) .f) (.add (.mul (.rational 1784788270 1) .g) (.mul (.rational
    333411389 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2978455100 1) .g) (.mul (.rational
    1192700739 1) .v)) .g) (.mul (.rational 59658380 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2740748936 1) .g) (.mul (.rational 1770378358 1) .v)) .g) (.mul (.rational
    191679552 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1520907407 1) .g)
    (.mul (.rational 1415655316 1) .v)) .g) (.mul (.rational 249748202 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 522379911 1) .g) (.mul (.rational 662417432
    1) .v)) .g) (.mul (.rational 170008186 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 109367443 1) .g) (.mul (.rational 184221856 1) .v)) .g) (.mul
    (.rational 64902678 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13129651 1) .g) (.mul (.rational 29420897 1) .v)) .g) (.mul (.rational 13827302 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 534229095 1) .f) (.add (.mul (.rational
    2348060456 1) .g) (.mul (.rational 446912018 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    4411241410 1) .g) (.mul (.rational 1810973045 1) .v)) .g) (.mul (.rational 91847554 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4634051820 1) .g) (.mul (.rational
    3093329356 1) .v)) .g) (.mul (.rational 341389298 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2989195335 1) .g) (.mul (.rational 2904352428 1) .v)) .g) (.mul
    (.rational 526156082 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1223056998 1) .g) (.mul (.rational 1639094670 1) .v)) .g) (.mul (.rational
    436449102 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    316159206 1) .g) (.mul (.rational 571030662 1) .v)) .g) (.mul (.rational 211689088 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 49656354 1) .g) (.mul
    (.rational 121193621 1) .v)) .g) (.mul (.rational 61047592 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4328654 1) .g) (.mul (.rational 14804089 1) .v)) .g)
    (.mul (.rational 10147908 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    507226116 1) .f) (.add (.mul (.rational 2456023396 1) .g) (.mul (.rational 476577162 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 5128870334 1) .g) (.mul (.rational 2158784216 1) .v))
    .g) (.mul (.rational 111076868 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6054223448 1) .g) (.mul (.rational 4172930962 1) .v)) .g) (.mul (.rational 469513964 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4447679135 1) .g) (.mul (.rational
    4501679566 1) .v)) .g) (.mul (.rational 836896786 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2108974065 1) .g) (.mul (.rational 2975962082 1) .v)) .g)
    (.mul (.rational 820353852 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 647006855 1) .g) (.mul (.rational 1245978586 1) .v)) .g) (.mul (.rational 483753504
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 124898065 1) .g)
    (.mul (.rational 329553735 1) .v)) .g) (.mul (.rational 176435552 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 14167144 1) .g) (.mul (.rational 53118085 1)
    .v)) .g) (.mul (.rational 39376326 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 815942 1) .g) (.mul (.rational 4790999 1) .v)) .g) (.mul (.rational 5105064
    1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 385821951 1) .f)
    (.add (.mul (.rational 2040685938 1) .g) (.mul (.rational 403958217 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 4689010913 1) .g) (.mul (.rational 2023764564 1) .v)) .g) (.mul
    (.rational 105725752 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6142684980
    1) .g) (.mul (.rational 4369121909 1) .v)) .g) (.mul (.rational 501372160 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5060200783 1) .g) (.mul (.rational
    5326541642 1) .v)) .g) (.mul (.rational 1015861612 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2725422174 1) .g) (.mul (.rational 4037366834 1) .v)) .g)
    (.mul (.rational 1150381084 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 965741876 1) .g) (.mul (.rational 1973937352 1) .v)) .g) (.mul (.rational 799847632
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 220329156 1) .g)
    (.mul (.rational 624655361 1) .v)) .g) (.mul (.rational 353239410 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 30558819 1) .g) (.mul (.rational 124700213
    1) .v)) .g) (.mul (.rational 99025958 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2275646 1) .g) (.mul (.rational 14720797 1) .v)) .g) (.mul (.rational
    17056018 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 66352 1)
    .g) (.mul (.rational 893203 1) .v)) .g) (.mul (.rational 1666522 1) (.pow .v 2))) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 233238477 1) .f) (.add (.mul
    (.rational 1338065117 1) .g) (.mul (.rational 270342897 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 3354880375 1) .g) (.mul (.rational 1484792937 1) .v)) .g) (.mul (.rational 78814668
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4829019715 1) .g) (.mul
    (.rational 3542311237 1) .v)) .g) (.mul (.rational 414711966 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4406683213 1) .g) (.mul (.rational 4817104009 1) .v)) .g)
    (.mul (.rational 942126686 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2655112953 1) .g) (.mul (.rational 4118423876 1) .v)) .g) (.mul (.rational
    1211236786 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1065421327 1) .g) (.mul (.rational 2302312930 1) .v)) .g) (.mul (.rational 970749024 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 279672323 1) .g) (.mul
    (.rational 847446733 1) .v)) .g) (.mul (.rational 503609210 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 45620640 1) .g) (.mul (.rational 201305451 1) .v))
    .g) (.mul (.rational 169943320 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4128312 1) .g) (.mul (.rational 29216839 1) .v)) .g) (.mul (.rational
    36443048 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 154388 1)
    .g) (.mul (.rational 2298169 1) .v)) .g) (.mul (.rational 4672746 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 71914 1) .v) .g) (.mul (.rational 313162 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    110449266 1) .f) (.add (.mul (.rational 683186318 1) .g) (.mul (.rational 140924838 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1856184640 1) .g) (.mul (.rational 842301805 1) .v))
    .g) (.mul (.rational 45449746 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2911776098 1) .g) (.mul (.rational 2201272959 1) .v)) .g) (.mul (.rational 262933240 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2914772743 1) .g) (.mul (.rational
    3304020633 1) .v)) .g) (.mul (.rational 662280720 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1941294534 1) .g) (.mul (.rational 3145407569 1) .v)) .g)
    (.mul (.rational 953390006 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 869028874 1) .g) (.mul (.rational 1978394160 1) .v)) .g) (.mul (.rational 865575950
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 257411562 1) .g)
    (.mul (.rational 829706395 1) .v)) .g) (.mul (.rational 515823806 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 48091583 1) .g) (.mul (.rational 228131911
    1) .v)) .g) (.mul (.rational 203406066 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5087996 1) .g) (.mul (.rational 39137799 1) .v)) .g) (.mul (.rational
    52107808 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 229402 1)
    .g) (.mul (.rational 3751435 1) .v)) .g) (.mul (.rational 8231204 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 150384 1) .v) .g) (.mul (.rational 713936 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 25110 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 40024883 1) .f) (.add
    (.mul (.rational 265584137 1) .g) (.mul (.rational 55936232 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 777375327 1) .g) (.mul (.rational 361570044 1) .v)) .g) (.mul (.rational
    19834772 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1319999287 1) .g)
    (.mul (.rational 1027559667 1) .v)) .g) (.mul (.rational 125185154 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1437939113 1) .g) (.mul (.rational 1687644785 1) .v))
    .g) (.mul (.rational 346385220 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1048536453 1) .g) (.mul (.rational 1770464941 1) .v)) .g) (.mul (.rational
    552108862 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    517542791 1) .g) (.mul (.rational 1237147809 1) .v)) .g) (.mul (.rational 560067504 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 170458889 1) .g) (.mul
    (.rational 581906145 1) .v)) .g) (.mul (.rational 376879804 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 35782824 1) .g) (.mul (.rational 181499883 1) .v))
    .g) (.mul (.rational 169922886 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4311762 1) .g) (.mul (.rational 35827707 1) .v)) .g) (.mul (.rational
    50533714 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 225590 1)
    .g) (.mul (.rational 4026711 1) .v)) .g) (.mul (.rational 9450052 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 194540 1) .v) .g) (.mul (.rational 997570 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 44670 1) (.pow .v 2)) (.pow .g 10))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10693420 1) .f) (.add
    (.mul (.rational 75787536 1) .g) (.mul (.rational 16294957 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 237806199 1) .g) (.mul (.rational 113306898 1) .v)) .g) (.mul (.rational
    6317344 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 434610560 1) .g) (.mul
    (.rational 348015014 1) .v)) .g) (.mul (.rational 43212114 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 511815711 1) .g) (.mul (.rational 620931557 1) .v)) .g)
    (.mul (.rational 130330166 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 405440958 1) .g) (.mul (.rational 711743068 1) .v)) .g) (.mul (.rational 227893462
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 218602385 1) .g)
    (.mul (.rational 546936009 1) .v)) .g) (.mul (.rational 255450560 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 79149100 1) .g) (.mul (.rational 284988226
    1) .v)) .g) (.mul (.rational 191504772 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 18402489 1) .g) (.mul (.rational 99305871 1) .v)) .g) (.mul (.rational
    97095388 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2478742
    1) .g) (.mul (.rational 22119895 1) .v)) .g) (.mul (.rational 32826862 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 146692 1) .g) (.mul (.rational 2840145 1)
    .v)) .g) (.mul (.rational 7071256 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 159320 1) .v) .g) (.mul (.rational 874486 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 46982 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1979144 1) .f) (.add (.mul (.rational
    14926292 1) .g) (.mul (.rational 3274731 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    49997546 1) .g) (.mul (.rational 24383675 1) .v)) .g) (.mul (.rational 1380704 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 97877194 1) .g) (.mul (.rational 80518312
    1) .v)) .g) (.mul (.rational 10177966 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 123923196 1) .g) (.mul (.rational 155127116 1) .v)) .g) (.mul (.rational 33241368
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 105964636 1) .g)
    (.mul (.rational 192923500 1) .v)) .g) (.mul (.rational 63276996 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 61941362 1) .g) (.mul (.rational 161691122
    1) .v)) .g) (.mul (.rational 77667368 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 24432546 1) .g) (.mul (.rational 92419870 1) .v)) .g) (.mul (.rational
    64170054 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 6222704
    1) .g) (.mul (.rational 35553692 1) .v)) .g) (.mul (.rational 36114726 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 924036 1) .g) (.mul (.rational 8806681 1)
    .v)) .g) (.mul (.rational 13662808 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 60752 1) .g) (.mul (.rational 1268075 1) .v)) .g) (.mul (.rational 3323796 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 80586 1) .v) .g) (.mul
    (.rational 469328 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 29190 1) (.pow .v
    2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 225735 1) .f) (.add (.mul (.rational 1805908 1) .g) (.mul (.rational 403982
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 6434674 1) .g) (.mul (.rational 3208593 1)
    .v)) .g) (.mul (.rational 184290 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13439400 1) .g) (.mul (.rational 11340808 1) .v)) .g) (.mul (.rational 1456962 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 18211002 1) .g) (.mul
    (.rational 23474220 1) .v)) .g) (.mul (.rational 5124240 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 16721168 1) .g) (.mul (.rational 31490812 1) .v)) .g)
    (.mul (.rational 10550856 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10532688 1) .g) (.mul (.rational 28592246 1) .v)) .g) (.mul (.rational 14075332 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4493784 1) .g) (.mul
    (.rational 17786688 1) .v)) .g) (.mul (.rational 12705324 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1243015 1) .g) (.mul (.rational 7484108 1) .v)) .g)
    (.mul (.rational 7856112 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 201372 1) .g) (.mul (.rational 2038630 1) .v)) .g) (.mul (.rational 3285320 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 14518 1) .g) (.mul
    (.rational 324737 1) .v)) .g) (.mul (.rational 889386 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 22984 1) .v) .g) (.mul (.rational 140802 1) (.pow .v 2))) (.pow
    .g 9))) .f) (.mul (.mul (.rational 9904 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11886 1) .f) (.add (.mul
    (.rational 100606 1) .g) (.mul (.rational 22922 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 380216 1) .g) (.mul (.rational 193562 1) .v)) .g) (.mul (.rational 11256 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 844490 1) .g) (.mul (.rational 729612 1)
    .v)) .g) (.mul (.rational 95046 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1220226 1) .g) (.mul (.rational 1615820 1) .v)) .g) (.mul (.rational 358306 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1198078 1) .g) (.mul
    (.rational 2327192 1) .v)) .g) (.mul (.rational 793770 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 809326 1) .g) (.mul (.rational 2276736 1) .v)) .g)
    (.mul (.rational 1143926 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 371406 1) .g) (.mul (.rational 1531852 1) .v)) .g) (.mul (.rational 1120238 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 110840 1) .g) (.mul
    (.rational 699892 1) .v)) .g) (.mul (.rational 754866 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 19436 1) .g) (.mul (.rational 207870 1) .v)) .g) (.mul
    (.rational 345646 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1522 1) .g) (.mul (.rational 36262 1) .v)) .g) (.mul (.rational 102970 1) (.pow .v 2))) (.pow
    .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2824 1) .v) .g) (.mul (.rational 18036 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1412 1) (.pow .v 2)) (.pow .g 10))) (.pow .f
    5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1312

namespace FullHigh1313
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsHigh2.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    12*SmallGap.PolarCoefficientsHigh1.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    12*SmallGap.PolarCoefficientsHigh2.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    32*SmallGap.PolarCoefficientsHigh0.c140 e f g v*((e+f)*(e+f+g))^4+
    48*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh2.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    6*SmallGap.PolarCoefficientsHigh1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh2.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    16*SmallGap.PolarCoefficientsHigh0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsHigh1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsHigh2.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    48*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    18*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsHigh0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    6*SmallGap.PolarCoefficientsHigh0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    6*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(140*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^4+84*SmallGap.ReducedLayers.high0_100_1 e g v*e^5+28*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^6+120*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^2+120*SmallGap.ReducedLayers.high0_010_1 e g v*e^3+60*SmallGap.ReducedLayers.high0_010_2 e
    g v*e^4+12*SmallGap.ReducedLayers.high0_010_3 e g v*e^5+80*SmallGap.ReducedLayers.high0_001_0
    e g v*e^3+60*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^4+24*SmallGap.ReducedLayers.high0_001_2 e g v*e^5+4*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(30*SmallGap.ReducedLayers.high1_110_0 e g v*e^2+30*SmallGap.ReducedLayers.high1_110_1 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_110_2 e g v*e^4+3*SmallGap.ReducedLayers.high1_110_3 e
    g v*e^5+20*SmallGap.ReducedLayers.high1_101_0 e g v*e^3+15*SmallGap.ReducedLayers.high1_101_1
    e g v*e^4+6*SmallGap.ReducedLayers.high1_101_2 e g v*e^5+1*SmallGap.ReducedLayers.high1_101_3
    e g v*e^6+6*SmallGap.ReducedLayers.high1_020_0 e g v+18*SmallGap.ReducedLayers.high1_020_1 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_020_2 e g v*e^2+6*SmallGap.ReducedLayers.high1_020_3 e g
    v*e^3+12*SmallGap.ReducedLayers.high1_011_0 e g v*e^1+18*SmallGap.ReducedLayers.high1_011_1 e
    g v*e^2+12*SmallGap.ReducedLayers.high1_011_2 e g v*e^3+3*SmallGap.ReducedLayers.high1_011_3 e
    g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 231924 1) .e) (.add (.mul (.rational 2145564 1) .f) (.add (.mul (.rational
    2665612 1) .g) (.mul (.rational 419000 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    12348342 1) .f) (.add (.mul (.rational 20902856 1) .g) (.mul (.rational 3516066 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 12711222 1) .g) (.mul (.rational 4314132 1) .v)) .g) (.mul
    (.rational 191940 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    49475098 1) .f) (.add (.mul (.rational 105918252 1) .g) (.mul (.rational 18408430 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 86757362 1) .g) (.mul (.rational 30895844 1) .v)) .g) (.mul
    (.rational 1474572 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 33964444 1)
    .g) (.mul (.rational 18276182 1) .v)) .g) (.mul (.rational 1828828 1) (.pow .v 2))) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 146377008 1) .f) (.add (.mul
    (.rational 378679452 1) .g) (.mul (.rational 67207422 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 389853096 1) .g) (.mul (.rational 143375082 1) .v)) .g) (.mul (.rational 7059676 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 203931920 1) .g) (.mul (.rational
    115334842 1) .v)) .g) (.mul (.rational 12022528 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 57020608 1) .g) (.mul (.rational 43519662 1) .v)) .g) (.mul (.rational
    7114076 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 331069108 1) .f) (.add (.mul (.rational 1003707048 1) .g) (.mul
    (.rational 181260090 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1243791620 1) .g) (.mul
    (.rational 469877948 1) .v)) .g) (.mul (.rational 23534072 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 813580676 1) .g) (.mul (.rational 479332696 1) .v)) .g) (.mul
    (.rational 51166136 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    302037308 1) .g) (.mul (.rational 244988652 1) .v)) .g) (.mul (.rational 41519704 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 63252596 1) .g) (.mul
    (.rational 65881550 1) .v)) .g) (.mul (.rational 15554392 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 584654036
    1) .f) (.add (.mul (.rational 2031877234 1) .g) (.mul (.rational 373304438 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 2942590654 1) .g) (.mul (.rational 1140631010 1) .v)) .g) (.mul
    (.rational 57832366 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2308439226
    1) .g) (.mul (.rational 1412459848 1) .v)) .g) (.mul (.rational 153543424 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1066726274 1) .g) (.mul (.rational 913633400
    1) .v)) .g) (.mul (.rational 159301560 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 294985064 1) .g) (.mul (.rational 331537094 1) .v)) .g) (.mul
    (.rational 81958856 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 47092188 1) .g) (.mul (.rational 67168190 1) .v)) .g) (.mul (.rational 21880218 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 816143784 1) .f) (.add (.mul (.rational 3197896066 1) .g)
    (.mul (.rational 598484402 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5297835230 1) .g)
    (.mul (.rational 2108470988 1) .v)) .g) (.mul (.rational 108161112 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4843699030 1) .g) (.mul (.rational 3075819730 1) .v)) .g)
    (.mul (.rational 340291310 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2674873402 1) .g) (.mul (.rational 2412053040 1) .v)) .g) (.mul (.rational 432027758 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 916682364 1) .g) (.mul
    (.rational 1104924210 1) .v)) .g) (.mul (.rational 284793434 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 192251084 1) .g) (.mul (.rational 300669660 1)
    .v)) .g) (.mul (.rational 104540890 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 23247148 1) .g) (.mul (.rational 47090146 1) .v)) .g) (.mul (.rational
    21280608 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 905754436 1) .f) (.add (.mul
    (.rational 3949911022 1) .g) (.mul (.rational 754365538 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 7365317240 1) .g) (.mul (.rational 3013468162 1) .v)) .g) (.mul (.rational
    156631906 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7686052542 1) .g)
    (.mul (.rational 5066615578 1) .v)) .g) (.mul (.rational 571314686 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4932435742 1) .g) (.mul (.rational 4675978886 1) .v))
    .g) (.mul (.rational 861094994 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2012709556 1) .g) (.mul (.rational 2591603558 1) .v)) .g) (.mul (.rational
    695780880 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    520800174 1) .g) (.mul (.rational 886958142 1) .v)) .g) (.mul (.rational 327458454 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 82307212 1) .g) (.mul
    (.rational 185434334 1) .v)) .g) (.mul (.rational 91423442 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7269716 1) .g) (.mul (.rational 22464538 1) .v)) .g)
    (.mul (.rational 14753982 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    799167596 1) .f) (.add (.mul (.rational 3838782110 1) .g) (.mul (.rational 749543334 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 7955468178 1) .g) (.mul (.rational 3350656352 1) .v))
    .g) (.mul (.rational 176854876 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9326795906 1) .g) (.mul (.rational 6385157292 1) .v)) .g) (.mul (.rational 735381424 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6814840666 1) .g) (.mul (.rational
    6785312332 1) .v)) .g) (.mul (.rational 1286626334 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3221349272 1) .g) (.mul (.rational 4417663880 1) .v)) .g)
    (.mul (.rational 1235267542 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 988601820 1) .g) (.mul (.rational 1823312480 1) .v)) .g) (.mul (.rational 712355258
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 191848284 1) .g)
    (.mul (.rational 476874684 1) .v)) .g) (.mul (.rational 254174394 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 22023300 1) .g) (.mul (.rational 76504556 1)
    .v)) .g) (.mul (.rational 55756116 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1294808 1) .g) (.mul (.rational 6946002 1) .v)) .g) (.mul (.rational 7195112
    1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 557391094 1) .f)
    (.add (.mul (.rational 2924228418 1) .g) (.mul (.rational 584696236 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 6667034926 1) .g) (.mul (.rational 2893831666 1) .v)) .g) (.mul
    (.rational 155456478 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 8672761764
    1) .g) (.mul (.rational 6168087454 1) .v)) .g) (.mul (.rational 726998684 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7103917734 1) .g) (.mul (.rational
    7421705432 1) .v)) .g) (.mul (.rational 1450900684 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3812656836 1) .g) (.mul (.rational 5553721354 1) .v)) .g)
    (.mul (.rational 1617004260 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1350584092 1) .g) (.mul (.rational 2684450776 1) .v)) .g) (.mul (.rational
    1106543800 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    309465238 1) .g) (.mul (.rational 842608326 1) .v)) .g) (.mul (.rational 481923236 1) (.pow .v
    2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 43383720 1) .g) (.mul
    (.rational 167889516 1) .v)) .g) (.mul (.rational 133976584 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3293220 1) .g) (.mul (.rational 19987808 1) .v)) .g)
    (.mul (.rational 23149476 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 98950 1) .g) (.mul (.rational 1241958 1) .v)) .g) (.mul (.rational 2313922 1) (.pow
    .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 303512210 1) .f)
    (.add (.mul (.rational 1726853034 1) .g) (.mul (.rational 354030980 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 4295379364 1) .g) (.mul (.rational 1922865944 1) .v)) .g) (.mul
    (.rational 105325892 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6138181996
    1) .g) (.mul (.rational 4535051356 1) .v)) .g) (.mul (.rational 547813390 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5567918022 1) .g) (.mul (.rational
    6096810124 1) .v)) .g) (.mul (.rational 1229607906 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3341417656 1) .g) (.mul (.rational 5156392646 1) .v)) .g)
    (.mul (.rational 1562044192 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1339480526 1) .g) (.mul (.rational 2856295564 1) .v)) .g) (.mul (.rational
    1238342420 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    352777194 1) .g) (.mul (.rational 1045244898 1) .v)) .g) (.mul (.rational 637274712 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 58081848 1) .g) (.mul
    (.rational 248290796 1) .v)) .g) (.mul (.rational 214563820 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5347744 1) .g) (.mul (.rational 36375628 1) .v)) .g)
    (.mul (.rational 46386722 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 205654 1) .g) (.mul (.rational 2928680 1) .v)) .g) (.mul (.rational 6096094 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 95600 1) .v) .g) (.mul
    (.rational 428516 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 126292592 1) .f) (.add (.mul (.rational 774628310 1) .g) (.mul
    (.rational 162972856 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2087569408 1) .g) (.mul
    (.rational 964152916 1) .v)) .g) (.mul (.rational 53916362 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3250300762 1) .g) (.mul (.rational 2493746648 1) .v)) .g) (.mul
    (.rational 308952342 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    3233049128 1) .g) (.mul (.rational 3705359640 1) .v)) .g) (.mul (.rational 770880674 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2143548168 1) .g) (.mul
    (.rational 3494954822 1) .v)) .g) (.mul (.rational 1100032994 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 957853048 1) .g) (.mul (.rational 2181875710 1)
    .v)) .g) (.mul (.rational 991606784 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 284330540 1) .g) (.mul (.rational 911155014 1) .v)) .g) (.mul (.rational
    588601640 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 53526550
    1) .g) (.mul (.rational 250795706 1) .v)) .g) (.mul (.rational 232492356 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5748660 1) .g) (.mul (.rational
    43431276 1) .v)) .g) (.mul (.rational 60207726 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 265714 1) .g) (.mul (.rational 4253892 1) .v)) .g) (.mul
    (.rational 9749066 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    177248 1) .v) .g) (.mul (.rational 883858 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 33318 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 38765588 1) .f) (.add (.mul (.rational 255025990 1) .g) (.mul
    (.rational 55083808 1) .v))) .f) (.add (.mul (.add (.mul (.rational 740249338 1) .g) (.mul
    (.rational 352703508 1) .v)) .g) (.mul (.rational 20147284 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1247169718 1) .g) (.mul (.rational 992931656 1) .v)) .g) (.mul
    (.rational 126170068 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1349377170 1) .g) (.mul (.rational 1616040672 1) .v)) .g) (.mul (.rational 346547434 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 978863892 1) .g) (.mul
    (.rational 1681598870 1) .v)) .g) (.mul (.rational 548859528 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 481829460 1) .g) (.mul (.rational 1167584864 1)
    .v)) .g) (.mul (.rational 554278274 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 158819040 1) .g) (.mul (.rational 547334536 1) .v)) .g) (.mul (.rational
    372512408 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 33528524
    1) .g) (.mul (.rational 170951452 1) .v)) .g) (.mul (.rational 168613476 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4089976 1) .g) (.mul (.rational
    34035402 1) .v)) .g) (.mul (.rational 50743018 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 218536 1) .g) (.mul (.rational 3898544 1) .v)) .g) (.mul
    (.rational 9714772 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    194768 1) .v) .g) (.mul (.rational 1067002 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 50784 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 8266448 1) .f) (.add (.mul (.rational 58072988 1) .g) (.mul
    (.rational 12877492 1) .v))) .f) (.add (.mul (.add (.mul (.rational 180648022 1) .g) (.mul
    (.rational 88754280 1) .v)) .g) (.mul (.rational 5178240 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 327437826 1) .g) (.mul (.rational 270221060 1) .v)) .g) (.mul
    (.rational 35194336 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    382755404 1) .g) (.mul (.rational 478113396 1) .v)) .g) (.mul (.rational 105533532 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 301380116 1) .g) (.mul
    (.rational 543964544 1) .v)) .g) (.mul (.rational 183672470 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 161859584 1) .g) (.mul (.rational 415579686 1) .v))
    .g) (.mul (.rational 205311394 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 58553346 1) .g) (.mul (.rational 215861462 1) .v)) .g) (.mul (.rational
    153955706 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 13659772
    1) .g) (.mul (.rational 75289888 1) .v)) .g) (.mul (.rational 78438052 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1856668 1) .g) (.mul (.rational 16888168
    1) .v)) .g) (.mul (.rational 26828946 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 111714 1) .g) (.mul (.rational 2202462 1) .v)) .g) (.mul (.rational
    5902946 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 126986 1) .v)
    .g) (.mul (.rational 755438 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 42732 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1092460 1) .f) (.add (.mul (.rational 8164544 1) .g) (.mul (.rational
    1857956 1) .v))) .f) (.add (.mul (.add (.mul (.rational 27101036 1) .g) (.mul (.rational
    13718448 1) .v)) .g) (.mul (.rational 816896 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 52588198 1) .g) (.mul (.rational 44923408 1) .v)) .g) (.mul (.rational
    5989628 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 66037900 1) .g)
    (.mul (.rational 85859964 1) .v)) .g) (.mul (.rational 19469936 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 56067116 1) .g) (.mul (.rational 106011404 1)
    .v)) .g) (.mul (.rational 36927832 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 32597434 1) .g) (.mul (.rational 88333456 1) .v)) .g) (.mul (.rational
    45240990 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 12821166
    1) .g) (.mul (.rational 50310088 1) .v)) .g) (.mul (.rational 37409030 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3267588 1) .g) (.mul (.rational 19351068
    1) .v)) .g) (.mul (.rational 21153868 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 487840 1) .g) (.mul (.rational 4816104 1) .v)) .g) (.mul (.rational
    8086036 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 32446 1)
    .g) (.mul (.rational 701544 1) .v)) .g) (.mul (.rational 2002902 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 45520 1) .v) .g) (.mul (.rational 290930 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 18864 1) (.pow .v 2)) (.pow .g 10))) (.pow .f
    3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 67288 1) .f)
    (.add (.mul (.rational 533232 1) .g) (.mul (.rational 124432 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 1881748 1) .g) (.mul (.rational 980240 1) .v)) .g) (.mul (.rational 59496 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3892660 1) .g) (.mul (.rational
    3436344 1) .v)) .g) (.mul (.rational 468176 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5226054 1) .g) (.mul (.rational 7056160 1) .v)) .g) (.mul (.rational 1639860
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4757696 1) .g)
    (.mul (.rational 9395668 1) .v)) .g) (.mul (.rational 3365804 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2975162 1) .g) (.mul (.rational 8476536 1) .v))
    .g) (.mul (.rational 4482542 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1262628 1) .g) (.mul (.rational 5248700 1) .v)) .g) (.mul (.rational 4048344 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 348370 1) .g) (.mul
    (.rational 2204144 1) .v)) .g) (.mul (.rational 2512546 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 56504 1) .g) (.mul (.rational 601500 1) .v)) .g)
    (.mul (.rational 1059340 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4098 1) .g) (.mul (.rational 96488 1) .v)) .g) (.mul (.rational 290874 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 6924 1) .v) .g) (.mul (.rational
    47072 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 3418 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1313

namespace FullHigh1314
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  12*SmallGap.PolarCoefficientsHigh2.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    32*SmallGap.PolarCoefficientsHigh1.c140 e f g v*((e+f)*(e+f+g))^4+
    48*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e*((e+f)*(e+f+g))^4+
    6*SmallGap.PolarCoefficientsHigh2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    16*SmallGap.PolarCoefficientsHigh1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsHigh2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    40*SmallGap.PolarCoefficientsHigh0.c230 e f g v*((e+f)*(e+f+g))^3+
    48*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    18*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsHigh1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    15*SmallGap.PolarCoefficientsHigh0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    6*SmallGap.PolarCoefficientsHigh1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    30*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(140*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^3+140*SmallGap.ReducedLayers.high0_100_1 e g v*e^4+84*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^5+60*SmallGap.ReducedLayers.high0_010_0 e g v*e^1+120*SmallGap.ReducedLayers.high0_010_1
    e g v*e^2+120*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^3+60*SmallGap.ReducedLayers.high0_010_3 e g v*e^4+12*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^5+60*SmallGap.ReducedLayers.high0_001_0 e g v*e^2+80*SmallGap.ReducedLayers.high0_001_1
    e g v*e^3+60*SmallGap.ReducedLayers.high0_001_2 e g
    v*e^4+24*SmallGap.ReducedLayers.high0_001_3 e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.high1_110_0 e g v*e^1+30*SmallGap.ReducedLayers.high1_110_1 e
    g v*e^2+30*SmallGap.ReducedLayers.high1_110_2 e g v*e^3+15*SmallGap.ReducedLayers.high1_110_3
    e g v*e^4+3*SmallGap.ReducedLayers.high1_110_4 e g v*e^5+15*SmallGap.ReducedLayers.high1_101_0
    e g v*e^2+20*SmallGap.ReducedLayers.high1_101_1 e g
    v*e^3+15*SmallGap.ReducedLayers.high1_101_2 e g v*e^4+6*SmallGap.ReducedLayers.high1_101_3 e g
    v*e^5+6*SmallGap.ReducedLayers.high1_020_1 e g v+18*SmallGap.ReducedLayers.high1_020_2 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_020_3 e g v*e^2+6*SmallGap.ReducedLayers.high1_020_4 e g
    v*e^3+3*SmallGap.ReducedLayers.high1_011_0 e g v+12*SmallGap.ReducedLayers.high1_011_1 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_011_2 e g v*e^2+12*SmallGap.ReducedLayers.high1_011_3 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_011_4 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    355740 1) .e) (.add (.mul (.rational 3205880 1) .f) (.add (.mul (.rational 3962660 1) .g)
    (.mul (.rational 635480 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 17916480 1) .f) (.add
    (.mul (.rational 30148900 1) .g) (.mul (.rational 5138240 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 18236920 1) .g) (.mul (.rational 6199720 1) .v)) .g) (.mul (.rational 289100 1)
    (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 69409784 1) .f) (.add (.mul
    (.rational 147611647 1) .g) (.mul (.rational 25848176 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 120164002 1) .g) (.mul (.rational 42580720 1) .v)) .g) (.mul (.rational 2123680 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 46821739 1) .g) (.mul (.rational
    24569472 1) .v)) .g) (.mul (.rational 2574060 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 197509925 1) .f) (.add (.mul (.rational 507253537 1)
    .g) (.mul (.rational 90340323 1) .v))) .f) (.add (.mul (.add (.mul (.rational 518632280 1) .g)
    (.mul (.rational 188996911 1) .v)) .g) (.mul (.rational 9688900 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 269753869 1) .g) (.mul (.rational 148256929 1) .v)) .g)
    (.mul (.rational 16077520 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    75173061 1) .g) (.mul (.rational 54144937 1) .v)) .g) (.mul (.rational 9154340 1) (.pow .v
    2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    426892115 1) .f) (.add (.mul (.rational 1284067887 1) .g) (.mul (.rational 232170495 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1579274600 1) .g) (.mul (.rational 590112076 1) .v))
    .g) (.mul (.rational 30661097 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1026322998 1) .g) (.mul (.rational 587379282 1) .v)) .g) (.mul (.rational 64882338 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 379312089 1) .g) (.mul (.rational
    291105996 1) .v)) .g) (.mul (.rational 50675229 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 79341759 1) .g) (.mul (.rational 75343455 1) .v)) .g) (.mul
    (.rational 17939952 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 714848749 1) .f) (.add (.mul (.rational
    2463555406 1) .g) (.mul (.rational 452978007 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    3538973771 1) .g) (.mul (.rational 1357606293 1) .v)) .g) (.mul (.rational 71217041 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2756398202 1) .g) (.mul (.rational
    1642357254 1) .v)) .g) (.mul (.rational 184122802 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1266861299 1) .g) (.mul (.rational 1032729642 1) .v)) .g) (.mul
    (.rational 184308357 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 349473640 1) .g) (.mul (.rational 362288735 1) .v)) .g) (.mul (.rational 90217004
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 55894609 1) .g)
    (.mul (.rational 70594897 1) .v)) .g) (.mul (.rational 22433780 1) (.pow .v 2))) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 937389068 1) .f) (.add (.mul (.rational 3640496136 1) .g) (.mul (.rational
    682849345 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5979427130 1) .g) (.mul (.rational
    2361599083 1) .v)) .g) (.mul (.rational 125215397 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5424505977 1) .g) (.mul (.rational 3371133493 1) .v)) .g) (.mul
    (.rational 384311474 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2977219220 1) .g) (.mul (.rational 2577411002 1) .v)) .g) (.mul (.rational 472646217 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1016773254 1) .g) (.mul
    (.rational 1146745487 1) .v)) .g) (.mul (.rational 298903526 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 213362086 1) .g) (.mul (.rational 302210651 1)
    .v)) .g) (.mul (.rational 103914704 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 25953337 1) .g) (.mul (.rational 45845627 1) .v)) .g) (.mul (.rational
    19742390 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 966009652 1) .f) (.add (.mul
    (.rational 4173684724 1) .g) (.mul (.rational 801403377 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 7712559925 1) .g) (.mul (.rational 3146126044 1) .v)) .g) (.mul (.rational
    169192549 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7982077769 1) .g)
    (.mul (.rational 5185828736 1) .v)) .g) (.mul (.rational 603682962 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5087784405 1) .g) (.mul (.rational 4680123393 1) .v))
    .g) (.mul (.rational 885755675 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2067245894 1) .g) (.mul (.rational 2530785963 1) .v)) .g) (.mul (.rational
    692608214 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    534655915 1) .g) (.mul (.rational 844194344 1) .v)) .g) (.mul (.rational 313401188 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 84900561 1) .g) (.mul
    (.rational 172357496 1) .v)) .g) (.mul (.rational 83722838 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7584251 1) .g) (.mul (.rational 20543131 1) .v)) .g)
    (.mul (.rational 12968042 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    779982260 1) .f) (.add (.mul (.rational 3710584632 1) .g) (.mul (.rational 731762933 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 7617697842 1) .g) (.mul (.rational 3218717426 1) .v))
    .g) (.mul (.rational 176308765 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8853421085 1) .g) (.mul (.rational 6025003741 1) .v)) .g) (.mul (.rational 719448005 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6421918197 1) .g) (.mul (.rational
    6279076370 1) .v)) .g) (.mul (.rational 1231696071 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3020666305 1) .g) (.mul (.rational 4005047504 1) .v)) .g)
    (.mul (.rational 1153704620 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 925790064 1) .g) (.mul (.rational 1620032422 1) .v)) .g) (.mul (.rational 647741300
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 180343449 1) .g)
    (.mul (.rational 416595993 1) .v)) .g) (.mul (.rational 225219161 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 20921673 1) .g) (.mul (.rational 66246190 1)
    .v)) .g) (.mul (.rational 48539450 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1253145 1) .g) (.mul (.rational 6049453 1) .v)) .g) (.mul (.rational 6286708
    1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 488408280 1) .f)
    (.add (.mul (.rational 2536847642 1) .g) (.mul (.rational 515257225 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 5727668747 1) .g) (.mul (.rational 2512473171 1) .v)) .g) (.mul
    (.rational 140728297 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7383481963
    1) .g) (.mul (.rational 5270147642 1) .v)) .g) (.mul (.rational 647988038 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6001217272 1) .g) (.mul (.rational
    6235334192 1) .v)) .g) (.mul (.rational 1271557644 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3203175968 1) .g) (.mul (.rational 4587484628 1) .v)) .g)
    (.mul (.rational 1392278100 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1132369346 1) .g) (.mul (.rational 2183051018 1) .v)) .g) (.mul (.rational
    936687408 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    260229545 1) .g) (.mul (.rational 677306846 1) .v)) .g) (.mul (.rational 402630400 1) (.pow .v
    2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 36836988 1) .g) (.mul
    (.rational 134498872 1) .v)) .g) (.mul (.rational 111575849 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2847974 1) .g) (.mul (.rational 16184047 1) .v)) .g)
    (.mul (.rational 19589432 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 88059 1) .g) (.mul (.rational 1036803 1) .v)) .g) (.mul (.rational 2048100 1) (.pow
    .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 232589774 1) .f)
    (.add (.mul (.rational 1309778821 1) .g) (.mul (.rational 274567097 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 3225289776 1) .g) (.mul (.rational 1471029423 1) .v)) .g) (.mul
    (.rational 84511651 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4565774226
    1) .g) (.mul (.rational 3420075835 1) .v)) .g) (.mul (.rational 434116882 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4107963040 1) .g) (.mul (.rational
    4531378387 1) .v)) .g) (.mul (.rational 962121321 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2450476694 1) .g) (.mul (.rational 3779062858 1) .v)) .g)
    (.mul (.rational 1207578098 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 979660508 1) .g) (.mul (.rational 2068261176 1) .v)) .g) (.mul (.rational 947998660
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 258550197 1) .g)
    (.mul (.rational 751058316 1) .v)) .g) (.mul (.rational 485629812 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 42941006 1) .g) (.mul (.rational 178465499
    1) .v)) .g) (.mul (.rational 164398050 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4023380 1) .g) (.mul (.rational 26497093 1) .v)) .g) (.mul (.rational
    36338212 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 159214 1)
    .g) (.mul (.rational 2202715 1) .v)) .g) (.mul (.rational 5000696 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 76001 1) .v) .g) (.mul (.rational 378490 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    81459363 1) .f) (.add (.mul (.rational 494370691 1) .g) (.mul (.rational 107113440 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1318514075 1) .g) (.mul (.rational 625770523 1) .v))
    .g) (.mul (.rational 36947367 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2032912318 1) .g) (.mul (.rational 1597846487 1) .v)) .g) (.mul (.rational 209652274 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2004845464 1) .g) (.mul (.rational
    2344234083 1) .v)) .g) (.mul (.rational 518287755 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1320543750 1) .g) (.mul (.rational 2185361982 1) .v)) .g)
    (.mul (.rational 733853130 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 588065487 1) .g) (.mul (.rational 1351524375 1) .v)) .g) (.mul (.rational 658411902
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 174758115 1) .g)
    (.mul (.rational 561578791 1) .v)) .g) (.mul (.rational 391175800 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 33145859 1) .g) (.mul (.rational 154963392
    1) .v)) .g) (.mul (.rational 156110030 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3617140 1) .g) (.mul (.rational 27221139 1) .v)) .g) (.mul (.rational
    41439216 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 171766 1)
    .g) (.mul (.rational 2750291 1) .v)) .g) (.mul (.rational 7016654 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 120825 1) .v) .g) (.mul (.rational 681526 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 28238 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 19792513 1) .f) (.add
    (.mul (.rational 128792557 1) .g) (.mul (.rational 28864216 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 369836818 1) .g) (.mul (.rational 182676464 1) .v)) .g) (.mul (.rational
    11094954 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 616776129 1) .g) (.mul
    (.rational 508290725 1) .v)) .g) (.mul (.rational 68952147 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 661288256 1) .g) (.mul (.rational 818007073 1) .v)) .g)
    (.mul (.rational 188136380 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 476270438 1) .g) (.mul (.rational 842689510 1) .v)) .g) (.mul (.rational 296573865
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 233433044 1) .g)
    (.mul (.rational 580665807 1) .v)) .g) (.mul (.rational 299108269 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 76939783 1) .g) (.mul (.rational 271282398
    1) .v)) .g) (.mul (.rational 201865226 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16338397 1) .g) (.mul (.rational 85023315 1) .v)) .g) (.mul (.rational
    92538069 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2020725
    1) .g) (.mul (.rational 17162194 1) .v)) .g) (.mul (.rational 28554335 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 110604 1) .g) (.mul (.rational 2022333 1)
    .v)) .g) (.mul (.rational 5699703 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 105949 1) .v) .g) (.mul (.rational 666363 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 34561 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 2981475 1) .f) (.add (.mul (.rational 20709300 1) .g)
    (.mul (.rational 4801740 1) .v))) .f) (.add (.mul (.add (.mul (.rational 63701982 1) .g) (.mul
    (.rational 32733530 1) .v)) .g) (.mul (.rational 2045130 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 114231747 1) .g) (.mul (.rational 98584136 1) .v)) .g) (.mul
    (.rational 13816860 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    132237075 1) .g) (.mul (.rational 172645581 1) .v)) .g) (.mul (.rational 41235113 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 103291416 1) .g) (.mul
    (.rational 194668924 1) .v)) .g) (.mul (.rational 71578026 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 55176755 1) .g) (.mul (.rational 147743882 1) .v))
    .g) (.mul (.rational 80070328 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19930007 1) .g) (.mul (.rational 76533435 1) .v)) .g) (.mul (.rational 60395612 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4667142 1) .g) (.mul
    (.rational 26781961 1) .v)) .g) (.mul (.rational 31184545 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 641330 1) .g) (.mul (.rational 6080406 1) .v)) .g)
    (.mul (.rational 10923398 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 39371 1) .g) (.mul (.rational 812454 1) .v)) .g) (.mul (.rational 2495616 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 48767 1) .v) .g) (.mul (.rational
    337408 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 20572 1) (.pow .v 2)) (.pow
    .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    209790 1) .f) (.add (.mul (.rational 1549420 1) .g) (.mul (.rational 371570 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 5082652 1) .g) (.mul (.rational 2714760 1) .v)) .g) (.mul
    (.rational 174360 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9750294 1)
    .g) (.mul (.rational 8798116 1) .v)) .g) (.mul (.rational 1272270 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 12114734 1) .g) (.mul (.rational 16651672 1) .v)) .g)
    (.mul (.rational 4121106 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10192198 1) .g) (.mul (.rational 20384974 1) .v)) .g) (.mul (.rational 7805093 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5885650 1) .g) (.mul
    (.rational 16877700 1) .v)) .g) (.mul (.rational 9578589 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2307042 1) .g) (.mul (.rational 9584350 1) .v)) .g)
    (.mul (.rational 7970513 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 588684 1) .g) (.mul (.rational 3694416 1) .v)) .g) (.mul (.rational 4564985 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 88534 1) .g) (.mul
    (.rational 928112 1) .v)) .g) (.mul (.rational 1782791 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5978 1) .g) (.mul (.rational 137804 1) .v)) .g) (.mul
    (.rational 456263 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 9230
    1) .v) .g) (.mul (.rational 69429 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    4793 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1314

namespace FullHigh1315
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  32*SmallGap.PolarCoefficientsHigh2.c140 e f g v*((e+f)*(e+f+g))^4+
    16*SmallGap.PolarCoefficientsHigh2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    40*SmallGap.PolarCoefficientsHigh1.c230 e f g v*((e+f)*(e+f+g))^3+
    48*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsHigh2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    15*SmallGap.PolarCoefficientsHigh1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    6*SmallGap.PolarCoefficientsHigh2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    36*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2+
    30*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsHigh0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsHigh0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(84*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^2+140*SmallGap.ReducedLayers.high0_100_1 e g v*e^3+140*SmallGap.ReducedLayers.high0_100_2
    e g v*e^4+12*SmallGap.ReducedLayers.high0_010_0 e g v+60*SmallGap.ReducedLayers.high0_010_1 e
    g v*e^1+120*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^2+120*SmallGap.ReducedLayers.high0_010_3 e g v*e^3+60*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^4+24*SmallGap.ReducedLayers.high0_001_0 e g v*e^1+60*SmallGap.ReducedLayers.high0_001_1
    e g v*e^2+80*SmallGap.ReducedLayers.high0_001_2 e g
    v*e^3+60*SmallGap.ReducedLayers.high0_001_3 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_110_0 e g v+15*SmallGap.ReducedLayers.high1_110_1 e g
    v*e^1+30*SmallGap.ReducedLayers.high1_110_2 e g v*e^2+30*SmallGap.ReducedLayers.high1_110_3 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_110_4 e g v*e^4+6*SmallGap.ReducedLayers.high1_101_0 e
    g v*e^1+15*SmallGap.ReducedLayers.high1_101_1 e g v*e^2+20*SmallGap.ReducedLayers.high1_101_2
    e g v*e^3+15*SmallGap.ReducedLayers.high1_101_3 e g v*e^4+6*SmallGap.ReducedLayers.high1_020_2
    e g v+18*SmallGap.ReducedLayers.high1_020_3 e g v*e^1+18*SmallGap.ReducedLayers.high1_020_4 e
    g v*e^2+6*SmallGap.ReducedLayers.high1_020_5 e g v*e^3+3*SmallGap.ReducedLayers.high1_011_1 e
    g v+12*SmallGap.ReducedLayers.high1_011_2 e g v*e^1+18*SmallGap.ReducedLayers.high1_011_3 e g
    v*e^2+12*SmallGap.ReducedLayers.high1_011_4 e g v*e^3+3*SmallGap.ReducedLayers.high1_011_5 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 364476 1)
    .e) (.add (.mul (.rational 3209844 1) .f) (.add (.mul (.rational 3949356 1) .g) (.mul
    (.rational 643224 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 17455605 1) .f) (.add (.mul
    (.rational 29207950 1) .g) (.mul (.rational 5022369 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 17586741 1) .g) (.mul (.rational 5949810 1) .v)) .g) (.mul (.rational 290780 1)
    (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 65434485 1) .f) (.add (.mul
    (.rational 138237412 1) .g) (.mul (.rational 24298095 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 111879937 1) .g) (.mul (.rational 39196232 1) .v)) .g) (.mul (.rational 2047620 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 43426478 1) .g) (.mul (.rational
    21972323 1) .v)) .g) (.mul (.rational 2420916 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 178913174 1) .f) (.add (.mul (.rational 456015145 1)
    .g) (.mul (.rational 81245324 1) .v))) .f) (.add (.mul (.add (.mul (.rational 463021087 1) .g)
    (.mul (.rational 166185678 1) .v)) .g) (.mul (.rational 8909178 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 239546399 1) .g) (.mul (.rational 126508632 1) .v)) .g)
    (.mul (.rational 14361556 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    66590991 1) .g) (.mul (.rational 44338494 1) .v)) .g) (.mul (.rational 7816226 1) (.pow .v
    2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    368420713 1) .f) (.add (.mul (.rational 1098776003 1) .g) (.mul (.rational 198480028 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1340614493 1) .g) (.mul (.rational 492932938 1) .v))
    .g) (.mul (.rational 26734514 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    865421953 1) .g) (.mul (.rational 476198246 1) .v)) .g) (.mul (.rational 54850328 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 318486134 1) .g) (.mul (.rational
    226851268 1) .v)) .g) (.mul (.rational 40913102 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 66582940 1) .g) (.mul (.rational 55667626 1) .v)) .g) (.mul
    (.rational 13442852 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 581736008 1) .f) (.add (.mul (.rational
    1986017197 1) .g) (.mul (.rational 365175521 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    2827384350 1) .g) (.mul (.rational 1069534744 1) .v)) .g) (.mul (.rational 58516830 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2184795155 1) .g) (.mul (.rational
    1257124766 1) .v)) .g) (.mul (.rational 146710294 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 998283863 1) .g) (.mul (.rational 762032542 1) .v)) .g) (.mul
    (.rational 140612698 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 274671040 1) .g) (.mul (.rational 255016723 1) .v)) .g) (.mul (.rational 64469294
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 44012343 1) .g)
    (.mul (.rational 46791290 1) .v)) .g) (.mul (.rational 14415264 1) (.pow .v 2))) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 710248861 1) .f) (.add (.mul (.rational 2730225419 1) .g) (.mul (.rational
    513760633 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4439914584 1) .g) (.mul (.rational
    1737614964 1) .v)) .g) (.mul (.rational 96210210 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3991583247 1) .g) (.mul (.rational 2414298274 1) .v)) .g) (.mul (.rational
    286974494 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2174879578 1) .g)
    (.mul (.rational 1785905426 1) .v)) .g) (.mul (.rational 339728936 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 739508756 1) .g) (.mul (.rational 763168165
    1) .v)) .g) (.mul (.rational 203786494 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 155135745 1) .g) (.mul (.rational 191647228 1) .v)) .g) (.mul
    (.rational 65682482 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18959942 1) .g) (.mul (.rational 27535576 1) .v)) .g) (.mul (.rational 11185520 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 670727576 1) .f) (.add (.mul (.rational
    2866143777 1) .g) (.mul (.rational 555005042 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    5239345824 1) .g) (.mul (.rational 2133184808 1) .v)) .g) (.mul (.rational 120252700 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5368094184 1) .g) (.mul (.rational
    3429972443 1) .v)) .g) (.mul (.rational 418476034 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3392573820 1) .g) (.mul (.rational 3006684312 1) .v)) .g) (.mul
    (.rational 595106920 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1370312536 1) .g) (.mul (.rational 1571971376 1) .v)) .g) (.mul (.rational
    447315208 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    353667091 1) .g) (.mul (.rational 505032954 1) .v)) .g) (.mul (.rational 192664028 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 56321755 1) .g) (.mul
    (.rational 99249903 1) .v)) .g) (.mul (.rational 48590774 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5072989 1) .g) (.mul (.rational 11461866 1) .v)) .g)
    (.mul (.rational 7139120 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    486166687 1) .f) (.add (.mul (.rational 2285866723 1) .g) (.mul (.rational 457748314 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 4638633611 1) .g) (.mul (.rational 1973965746 1) .v))
    .g) (.mul (.rational 114042978 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5332203726 1) .g) (.mul (.rational 3612803917 1) .v)) .g) (.mul (.rational 455813072 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3830760266 1) .g) (.mul (.rational
    3671016616 1) .v)) .g) (.mul (.rational 761745224 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1788897224 1) .g) (.mul (.rational 2277381468 1) .v)) .g)
    (.mul (.rational 694182652 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 546315296 1) .g) (.mul (.rational 895139892 1) .v)) .g) (.mul (.rational 378512284
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 106571503 1) .g)
    (.mul (.rational 224316499 1) .v)) .g) (.mul (.rational 128265988 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 12454836 1) .g) (.mul (.rational 35103500 1)
    .v)) .g) (.mul (.rational 27378242 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 755908 1) .g) (.mul (.rational 3214638 1) .v)) .g) (.mul (.rational 3639972
    1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 265778027 1) .f)
    (.add (.mul (.rational 1363507957 1) .g) (.mul (.rational 283492328 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 3040808325 1) .g) (.mul (.rational 1357190226 1) .v)) .g) (.mul
    (.rational 80817138 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3873921257
    1) .g) (.mul (.rational 2789782866 1) .v)) .g) (.mul (.rational 366042378 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3115638955 1) .g) (.mul (.rational
    3229213196 1) .v)) .g) (.mul (.rational 705717214 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1649218660 1) .g) (.mul (.rational 2322324683 1) .v)) .g)
    (.mul (.rational 759130412 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 580238677 1) .g) (.mul (.rational 1081354626 1) .v)) .g) (.mul (.rational 503039940
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 133376344 1) .g)
    (.mul (.rational 329861348 1) .v)) .g) (.mul (.rational 214710072 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 19007654 1) .g) (.mul (.rational 65119922 1)
    .v)) .g) (.mul (.rational 60132204 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1490584 1) .g) (.mul (.rational 7939492 1) .v)) .g) (.mul (.rational 10986854
    1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 47084 1) .g) (.mul
    (.rational 528364 1) .v)) .g) (.mul (.rational 1237452 1) (.pow .v 2))) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 106150414 1) .f) (.add (.mul (.rational
    590055441 1) .g) (.mul (.rational 127748962 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1434258681 1) .g) (.mul (.rational 672893536 1) .v)) .g) (.mul (.rational 41468866 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2005113153 1) .g) (.mul (.rational
    1536223334 1) .v)) .g) (.mul (.rational 210336702 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1783682214 1) .g) (.mul (.rational 1997149728 1) .v)) .g) (.mul
    (.rational 460462292 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1054222556 1) .g) (.mul (.rational 1634662917 1) .v)) .g) (.mul (.rational
    571927524 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    419024557 1) .g) (.mul (.rational 879987308 1) .v)) .g) (.mul (.rational 446390600 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 110505908 1) .g) (.mul
    (.rational 316128296 1) .v)) .g) (.mul (.rational 229496396 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 18465808 1) .g) (.mul (.rational 75149038 1) .v)) .g)
    (.mul (.rational 79254476 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1755848 1) .g) (.mul (.rational 11365580 1) .v)) .g) (.mul (.rational 18303198 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 71232 1) .g) (.mul
    (.rational 985916 1) .v)) .g) (.mul (.rational 2705118 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 36437 1) .v) .g) (.mul (.rational 224852 1) (.pow .v 2)))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 29262866 1)
    .f) (.add (.mul (.rational 175200254 1) .g) (.mul (.rational 39574664 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 460957285 1) .g) (.mul (.rational 227577882 1) .v)) .g) (.mul
    (.rational 14550294 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 701410371
    1) .g) (.mul (.rational 571609000 1) .v)) .g) (.mul (.rational 81784006 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 683418135 1) .g) (.mul (.rational 824833586 1)
    .v)) .g) (.mul (.rational 200538756 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 445655444 1) .g) (.mul (.rational 757027234 1) .v)) .g) (.mul (.rational
    282458828 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    197136101 1) .g) (.mul (.rational 462262486 1) .v)) .g) (.mul (.rational 253474030 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 58485851 1) .g) (.mul
    (.rational 190797925 1) .v)) .g) (.mul (.rational 152037004 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11152141 1) .g) (.mul (.rational 52861054 1) .v)) .g)
    (.mul (.rational 62150108 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1234780 1) .g) (.mul (.rational 9478728 1) .v)) .g) (.mul (.rational 17238948 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 60172 1) .g) (.mul
    (.rational 999568 1) .v)) .g) (.mul (.rational 3121786 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 47025 1) .v) .g) (.mul (.rational 331458 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 15270 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4982796 1) .f) (.add (.mul
    (.rational 31966950 1) .g) (.mul (.rational 7541592 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 90498310 1) .g) (.mul (.rational 47027808 1) .v)) .g) (.mul (.rational 3122556 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 148850883 1) .g) (.mul (.rational
    128895022 1) .v)) .g) (.mul (.rational 19270272 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 157566732 1) .g) (.mul (.rational 204402768 1) .v)) .g) (.mul
    (.rational 52311946 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 112262524 1) .g) (.mul (.rational 207790168 1) .v)) .g) (.mul (.rational 82324626
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 54608070 1) .g)
    (.mul (.rational 141742894 1) .v)) .g) (.mul (.rational 83357406 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 17950631 1) .g) (.mul (.rational 65946781 1)
    .v)) .g) (.mul (.rational 56978044 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3827976 1) .g) (.mul (.rational 20786616 1) .v)) .g) (.mul (.rational
    26793650 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 479820 1)
    .g) (.mul (.rational 4282542 1) .v)) .g) (.mul (.rational 8625994 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 26924 1) .g) (.mul (.rational 525346 1) .v))
    .g) (.mul (.rational 1832862 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 29327 1) .v) .g) (.mul (.rational 232856 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 13372 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 395388 1) .f) (.add (.mul (.rational 2705808 1) .g)
    (.mul (.rational 666960 1) .v))) .f) (.add (.mul (.add (.mul (.rational 8199776 1) .g) (.mul
    (.rational 4482996 1) .v)) .g) (.mul (.rational 309144 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14491758 1) .g) (.mul (.rational 13312744 1) .v)) .g) (.mul (.rational
    2077764 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16550628 1) .g)
    (.mul (.rational 23003334 1) .v)) .g) (.mul (.rational 6182658 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 12778412 1) .g) (.mul (.rational 25635536 1) .v))
    .g) (.mul (.rational 10739326 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6768012 1) .g) (.mul (.rational 19292412 1) .v)) .g) (.mul (.rational 12088178 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2435102 1) .g) (.mul
    (.rational 9965194 1) .v)) .g) (.mul (.rational 9249078 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 571752 1) .g) (.mul (.rational 3507886 1) .v)) .g)
    (.mul (.rational 4898928 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 79464 1) .g) (.mul (.rational 811412 1) .v)) .g) (.mul (.rational 1786034 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4988 1) .g) (.mul
    (.rational 112348 1) .v)) .g) (.mul (.rational 432090 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 7130 1) .v) .g) (.mul (.rational 63014 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 4218 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1315

namespace FullHigh1316
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  40*SmallGap.PolarCoefficientsHigh2.c230 e f g v*((e+f)*(e+f+g))^3+
    15*SmallGap.PolarCoefficientsHigh2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    36*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    30*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsHigh1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    28*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsHigh1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(28*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^1+84*SmallGap.ReducedLayers.high0_100_1 e g v*e^2+140*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^3+12*SmallGap.ReducedLayers.high0_010_1 e g v+60*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^1+120*SmallGap.ReducedLayers.high0_010_3 e g v*e^2+120*SmallGap.ReducedLayers.high0_010_4
    e g v*e^3+4*SmallGap.ReducedLayers.high0_001_0 e g v+24*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^1+60*SmallGap.ReducedLayers.high0_001_2 e g v*e^2+80*SmallGap.ReducedLayers.high0_001_3 e
    g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_110_1 e g v+15*SmallGap.ReducedLayers.high1_110_2 e g
    v*e^1+30*SmallGap.ReducedLayers.high1_110_3 e g v*e^2+30*SmallGap.ReducedLayers.high1_110_4 e
    g v*e^3+1*SmallGap.ReducedLayers.high1_101_0 e g v+6*SmallGap.ReducedLayers.high1_101_1 e g
    v*e^1+15*SmallGap.ReducedLayers.high1_101_2 e g v*e^2+20*SmallGap.ReducedLayers.high1_101_3 e
    g v*e^3+6*SmallGap.ReducedLayers.high1_020_3 e g v+18*SmallGap.ReducedLayers.high1_020_4 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_020_5 e g v*e^2+6*SmallGap.ReducedLayers.high1_020_6 e g
    v*e^3+3*SmallGap.ReducedLayers.high1_011_2 e g v+12*SmallGap.ReducedLayers.high1_011_3 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_011_4 e g v*e^2+12*SmallGap.ReducedLayers.high1_011_5 e
    g v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 249396 1) .e) (.add
    (.mul (.rational 2153136 1) .f) (.add (.mul (.rational 2638484 1) .g) (.mul (.rational 434440
    1) .v)))) .e) (.add (.mul (.add (.mul (.rational 11419563 1) .f) (.add (.mul (.rational
    19007602 1) .g) (.mul (.rational 3282987 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    11403123 1) .g) (.mul (.rational 3812046 1) .v)) .g) (.mul (.rational 195300 1) (.pow .v
    2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 41463449 1) .f) (.add (.mul
    (.rational 87026979 1) .g) (.mul (.rational 15291551 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 70071559 1) .g) (.mul (.rational 24093061 1) .v)) .g) (.mul (.rational 1322040 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 27132821 1) .g) (.mul (.rational
    13059349 1) .v)) .g) (.mul (.rational 1521932 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 108864194 1) .f) (.add (.mul (.rational 275314806 1)
    .g) (.mul (.rational 48901234 1) .v))) .f) (.add (.mul (.add (.mul (.rational 277692210 1) .g)
    (.mul (.rational 97471773 1) .v)) .g) (.mul (.rational 5493026 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 143042934 1) .g) (.mul (.rational 71591645 1) .v)) .g)
    (.mul (.rational 8576300 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    39741740 1) .g) (.mul (.rational 23808091 1) .v)) .g) (.mul (.rational 4428730 1) (.pow .v
    2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    212966989 1) .f) (.add (.mul (.rational 629377593 1) .g) (.mul (.rational 113334012 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 761655277 1) .g) (.mul (.rational 273952740 1) .v)) .g)
    (.mul (.rational 15626602 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    488624433 1) .g) (.mul (.rational 255228941 1) .v)) .g) (.mul (.rational 30966448 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 179278390 1) .g) (.mul (.rational
    115524435 1) .v)) .g) (.mul (.rational 21871142 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 37538806 1) .g) (.mul (.rational 26260467 1) .v)) .g) (.mul
    (.rational 6508004 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 315234390 1) .f) (.add (.mul (.rational
    1065000150 1) .g) (.mul (.rational 195781045 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1501540809 1) .g) (.mul (.rational 557999006 1) .v)) .g) (.mul (.rational 32171540 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1150904360 1) .g) (.mul (.rational
    633153676 1) .v)) .g) (.mul (.rational 77924294 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 523041770 1) .g) (.mul (.rational 365994319 1) .v)) .g) (.mul
    (.rational 70960764 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 143705738 1) .g) (.mul (.rational 114554774 1) .v)) .g) (.mul (.rational 29895814
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 23107827 1) .g)
    (.mul (.rational 19046487 1) .v)) .g) (.mul (.rational 5665980 1) (.pow .v 2))) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 354779669 1) .f) (.add (.mul (.rational 1347842017 1) .g) (.mul (.rational
    255045135 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2167386268 1) .g) (.mul (.rational
    839956271 1) .v)) .g) (.mul (.rational 49249982 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1929190190 1) .g) (.mul (.rational 1128962418 1) .v)) .g) (.mul (.rational
    142361872 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1043062744 1) .g)
    (.mul (.rational 800327790 1) .v)) .g) (.mul (.rational 161404248 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 353138376 1) .g) (.mul (.rational 323399272
    1) .v)) .g) (.mul (.rational 90866718 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 74088071 1) .g) (.mul (.rational 75368494 1) .v)) .g) (.mul (.rational
    26481746 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 9096353
    1) .g) (.mul (.rational 9805443 1) .v)) .g) (.mul (.rational 3788006 1) (.pow .v 2))) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 302188102 1) .f) (.add (.mul (.rational 1274588378 1) .g) (.mul
    (.rational 250236976 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2300474935 1) .g) (.mul
    (.rational 937637551 1) .v)) .g) (.mul (.rational 56439670 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2329366140 1) .g) (.mul (.rational 1462203506 1) .v)) .g) (.mul
    (.rational 191292148 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1457535024 1) .g) (.mul (.rational 1234860950 1) .v)) .g) (.mul (.rational 263164780 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 584582912 1) .g) (.mul
    (.rational 616844390 1) .v)) .g) (.mul (.rational 189645120 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 150405661 1) .g) (.mul (.rational 187597626 1) .v))
    .g) (.mul (.rational 77487228 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23979798 1) .g) (.mul (.rational 34641633 1) .v)) .g) (.mul (.rational 18424000 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2168458 1) .g) (.mul
    (.rational 3760177 1) .v)) .g) (.mul (.rational 2601958 1) (.pow .v 2))) (.pow .g 6)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 191842219 1) .f) (.add (.mul (.rational 889239701 1) .g) (.mul
    (.rational 182351234 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1779072759 1) .g) (.mul
    (.rational 767686542 1) .v)) .g) (.mul (.rational 47882918 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2017549379 1) .g) (.mul (.rational 1366351886 1) .v)) .g) (.mul
    (.rational 187447104 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1432014954 1) .g) (.mul (.rational 1344125414 1) .v)) .g) (.mul (.rational 306019528 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 662327464 1) .g) (.mul
    (.rational 803608706 1) .v)) .g) (.mul (.rational 272020732 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 201049360 1) .g) (.mul (.rational 303448902 1) .v))
    .g) (.mul (.rational 145033420 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 39147228 1) .g) (.mul (.rational 73172101 1) .v)) .g) (.mul (.rational
    48683712 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4582692
    1) .g) (.mul (.rational 11145951 1) .v)) .g) (.mul (.rational 10636790 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 278416 1) .g) (.mul (.rational 1017093 1)
    .v)) .g) (.mul (.rational 1522992 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 88077483 1) .f) (.add (.mul (.rational 444940272 1) .g) (.mul (.rational
    95784702 1) .v))) .f) (.add (.mul (.add (.mul (.rational 976928192 1) .g) (.mul (.rational
    448308538 1) .v)) .g) (.mul (.rational 29183772 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1225781080 1) .g) (.mul (.rational 898363726 1) .v)) .g) (.mul (.rational
    130142418 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 972045782 1) .g)
    (.mul (.rational 1010901388 1) .v)) .g) (.mul (.rational 247091318 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 508420506 1) .g) (.mul (.rational 705334303
    1) .v)) .g) (.mul (.rational 262432688 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 177333221 1) .g) (.mul (.rational 318780632 1) .v)) .g) (.mul
    (.rational 173017036 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 40584916 1) .g) (.mul (.rational 94941682 1) .v)) .g) (.mul (.rational 74699464 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5784240 1) .g) (.mul
    (.rational 18576465 1) .v)) .g) (.mul (.rational 21770422 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 454800 1) .g) (.mul (.rational 2301617 1) .v)) .g)
    (.mul (.rational 4284906 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14336 1) .g) (.mul (.rational 159935 1) .v)) .g) (.mul (.rational 531644 1) (.pow
    .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 27666234 1) .f)
    (.add (.mul (.rational 151261136 1) .g) (.mul (.rational 34301560 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 361506267 1) .g) (.mul (.rational 176867242 1) .v)) .g) (.mul
    (.rational 12069858 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 496978371
    1) .g) (.mul (.rational 394472228 1) .v)) .g) (.mul (.rational 60535848 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 435107952 1) .g) (.mul (.rational 500189962 1)
    .v)) .g) (.mul (.rational 131287212 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 253572448 1) .g) (.mul (.rational 399167355 1) .v)) .g) (.mul (.rational
    162281450 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 99691927
    1) .g) (.mul (.rational 210016109 1) .v)) .g) (.mul (.rational 127197620 1) (.pow .v 2)))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 26121493 1) .g) (.mul (.rational
    74302526 1) .v)) .g) (.mul (.rational 66713412 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4360468 1) .g) (.mul (.rational 17667940 1) .v)) .g) (.mul
    (.rational 24051372 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 416424 1) .g) (.mul (.rational 2737715 1) .v)) .g) (.mul (.rational 5951344 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 17024 1) .g) (.mul
    (.rational 250075 1) .v)) .g) (.mul (.rational 960338 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 9944 1) .v) .g) (.mul (.rational 87418 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5326776 1) .f) (.add
    (.mul (.rational 31333440 1) .g) (.mul (.rational 7500048 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 80954703 1) .g) (.mul (.rational 42265902 1) .v)) .g) (.mul (.rational 3029796 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 120958922 1) .g) (.mul (.rational
    103886824 1) .v)) .g) (.mul (.rational 16894584 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 115801988 1) .g) (.mul (.rational 146585888 1) .v)) .g) (.mul
    (.rational 41211672 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 74321536 1) .g) (.mul (.rational 131638304 1) .v)) .g) (.mul (.rational 58051014 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 32455291 1) .g) (.mul
    (.rational 78920259 1) .v)) .g) (.mul (.rational 52572480 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9550042 1) .g) (.mul (.rational 32244076 1) .v)) .g)
    (.mul (.rational 32275140 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1817558 1) .g) (.mul (.rational 8976450 1) .v)) .g) (.mul (.rational 13765680 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 202372 1) .g) (.mul
    (.rational 1653892 1) .v)) .g) (.mul (.rational 4070906 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9996 1) .g) (.mul (.rational 184005 1) .v)) .g) (.mul
    (.rational 800560 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 9360
    1) .v) .g) (.mul (.rational 93284 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    4740 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 474768 1) .f) (.add (.mul (.rational 2989194 1) .g) (.mul (.rational 755940
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 8300034 1) .g) (.mul (.rational 4623216 1)
    .v)) .g) (.mul (.rational 348264 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13387566 1) .g) (.mul (.rational 12416406 1) .v)) .g) (.mul (.rational 2137212 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 13904112 1) .g) (.mul
    (.rational 19290396 1) .v)) .g) (.mul (.rational 5788206 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9734282 1) .g) (.mul (.rational 19236604 1) .v)) .g)
    (.mul (.rational 9138036 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4666666 1) .g) (.mul (.rational 12922278 1) .v)) .g) (.mul (.rational 9363166 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1519190 1) .g) (.mul
    (.rational 5968742 1) .v)) .g) (.mul (.rational 6559210 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 323072 1) .g) (.mul (.rational 1894096 1) .v)) .g)
    (.mul (.rational 3214486 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 40744 1) .g) (.mul (.rational 400980 1) .v)) .g) (.mul (.rational 1099460 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2324 1) .g) (.mul
    (.rational 51806 1) .v)) .g) (.mul (.rational 252814 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 3120 1) .v) .g) (.mul (.rational 35266 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 2248 1) (.pow .v 2)) (.pow .g 10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1316

namespace FullHigh1317
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  36*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsHigh2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    28*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsHigh2.c410 e f g v*e*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_0 e g v+28*SmallGap.ReducedLayers.high0_100_1 e
    g v*e^1+84*SmallGap.ReducedLayers.high0_100_2 e g v*e^2+12*SmallGap.ReducedLayers.high0_010_2
    e g v+60*SmallGap.ReducedLayers.high0_010_3 e g v*e^1+120*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^2+4*SmallGap.ReducedLayers.high0_001_1 e g v+24*SmallGap.ReducedLayers.high0_001_2 e g
    v*e^1+60*SmallGap.ReducedLayers.high0_001_3 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_110_2 e g v+15*SmallGap.ReducedLayers.high1_110_3 e g
    v*e^1+30*SmallGap.ReducedLayers.high1_110_4 e g v*e^2+1*SmallGap.ReducedLayers.high1_101_1 e g
    v+6*SmallGap.ReducedLayers.high1_101_2 e g v*e^1+15*SmallGap.ReducedLayers.high1_101_3 e g
    v*e^2+6*SmallGap.ReducedLayers.high1_020_4 e g v+18*SmallGap.ReducedLayers.high1_020_5 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_020_6 e g v*e^2+3*SmallGap.ReducedLayers.high1_011_3 e g
    v+12*SmallGap.ReducedLayers.high1_011_4 e g v*e^1+18*SmallGap.ReducedLayers.high1_011_5 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 109884 1) .e) (.add (.mul
    (.rational 932836 1) .f) (.add (.mul (.rational 1139140 1) .g) (.mul (.rational 188776 1)
    .v)))) .e) (.add (.mul (.add (.mul (.rational 4836300 1) .f) (.add (.mul (.rational 8011148 1)
    .g) (.mul (.rational 1383568 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4793996 1) .g)
    (.mul (.rational 1571696 1) .v)) .g) (.mul (.rational 84460 1) (.pow .v 2))))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 17028568 1) .f) (.add (.mul (.rational 35516012 1) .g)
    (.mul (.rational 6211480 1) .v))) .f) (.add (.mul (.add (.mul (.rational 28476776 1) .g) (.mul
    (.rational 9531056 1) .v)) .g) (.mul (.rational 551252 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11022104 1) .g) (.mul (.rational 4966992 1) .v)) .g) (.mul (.rational
    616884 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    42910756 1) .f) (.add (.mul (.rational 107661680 1) .g) (.mul (.rational 18996904 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 107942176 1) .g) (.mul (.rational 36757928 1) .v)) .g)
    (.mul (.rational 2191304 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    55457420 1) .g) (.mul (.rational 25866824 1) .v)) .g) (.mul (.rational 3304520 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 15446700 1) .g) (.mul (.rational
    8034312 1) .v)) .g) (.mul (.rational 1606360 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 79518100 1) .f) (.add (.mul
    (.rational 232732892 1) .g) (.mul (.rational 41703520 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 279417136 1) .g) (.mul (.rational 97687160 1) .v)) .g) (.mul (.rational 5914976 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 178370508 1) .g) (.mul (.rational
    87111192 1) .v)) .g) (.mul (.rational 11284896 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 65421152 1) .g) (.mul (.rational 36879952 1) .v)) .g) (.mul (.rational
    7483560 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 13777152
    1) .g) (.mul (.rational 7466040 1) .v)) .g) (.mul (.rational 1951696 1) (.pow .v 2))) (.pow .g
    3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    109636612 1) .f) (.add (.mul (.rational 366156276 1) .g) (.mul (.rational 67373832 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 511084272 1) .g) (.mul (.rational 186018784 1) .v)) .g)
    (.mul (.rational 11453544 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    388834008 1) .g) (.mul (.rational 202297520 1) .v)) .g) (.mul (.rational 26741760 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 176105408 1) .g) (.mul (.rational
    110005368 1) .v)) .g) (.mul (.rational 23014764 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 48481792 1) .g) (.mul (.rational 31244744 1) .v)) .g) (.mul
    (.rational 8745912 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7859948 1) .g) (.mul (.rational 4345384 1) .v)) .g) (.mul (.rational 1275164 1) (.pow .v 2)))
    (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 112426896 1) .f) (.add (.mul (.rational 421420524 1) .g) (.mul
    (.rational 80599408 1) .v))) .f) (.add (.mul (.add (.mul (.rational 669399024 1) .g) (.mul
    (.rational 257327136 1) .v)) .g) (.mul (.rational 16286596 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 589840164 1) .g) (.mul (.rational 332428864 1) .v)) .g) (.mul
    (.rational 45625000 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    316782616 1) .g) (.mul (.rational 223441560 1) .v)) .g) (.mul (.rational 49557520 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 107035664 1) .g) (.mul
    (.rational 83663480 1) .v)) .g) (.mul (.rational 26170648 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 22532676 1) .g) (.mul (.rational 17327952 1) .v)) .g)
    (.mul (.rational 6846724 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2788328 1) .g) (.mul (.rational 1838920 1) .v)) .g) (.mul (.rational 786056 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 84676000 1) .f) (.add (.mul (.rational
    351693992 1) .g) (.mul (.rational 70684512 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    625557176 1) .g) (.mul (.rational 257081240 1) .v)) .g) (.mul (.rational 16964156 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 625264704 1) .g) (.mul (.rational 386620240
    1) .v)) .g) (.mul (.rational 56144636 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 387278352 1) .g) (.mul (.rational 312010096 1) .v)) .g) (.mul (.rational 75145112
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 154358728 1) .g)
    (.mul (.rational 147028048 1) .v)) .g) (.mul (.rational 52532912 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 39646940 1) .g) (.mul (.rational 41448160 1)
    .v)) .g) (.mul (.rational 20886792 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6332604 1) .g) (.mul (.rational 6943808 1) .v)) .g) (.mul (.rational 4956500
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 572872 1) .g)
    (.mul (.rational 668952 1) .v)) .g) (.mul (.rational 754076 1) (.pow .v 2))) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 45532944 1) .f) (.add (.mul (.rational 207416872 1) .g) (.mul
    (.rational 44180336 1) .v))) .f) (.add (.mul (.add (.mul (.rational 407956176 1) .g) (.mul
    (.rational 180780592 1) .v)) .g) (.mul (.rational 12591312 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 455322464 1) .g) (.mul (.rational 311237680 1) .v)) .g) (.mul
    (.rational 48489864 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    318726724 1) .g) (.mul (.rational 294452560 1) .v)) .g) (.mul (.rational 78004048 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 145836476 1) .g) (.mul
    (.rational 168235184 1) .v)) .g) (.mul (.rational 68756288 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 43955792 1) .g) (.mul (.rational 60412856 1) .v)) .g)
    (.mul (.rational 36960576 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8521236 1) .g) (.mul (.rational 13875032 1) .v)) .g) (.mul (.rational 12951704 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 991092 1) .g) (.mul
    (.rational 2043936 1) .v)) .g) (.mul (.rational 3109480 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 58812 1) .g) (.mul (.rational 185280 1) .v)) .g)
    (.mul (.rational 506288 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 16558128 1) .f) (.add (.mul (.rational 82038464 1) .g) (.mul (.rational 18624544 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 176637736 1) .g) (.mul (.rational 84821072 1)
    .v)) .g) (.mul (.rational 6284448 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 217447760 1) .g) (.mul (.rational 164794928 1) .v)) .g) (.mul (.rational 27731664
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 169407484 1) .g) (.mul
    (.rational 179137728 1) .v)) .g) (.mul (.rational 52328904 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 87247796 1) .g) (.mul (.rational 120429144 1) .v))
    .g) (.mul (.rational 55764112 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 30049240 1) .g) (.mul (.rational 52492272 1) .v)) .g) (.mul (.rational 37557272 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6804584 1) .g) (.mul
    (.rational 15212992 1) .v)) .g) (.mul (.rational 17045024 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 957604 1) .g) (.mul (.rational 2958152 1) .v)) .g)
    (.mul (.rational 5397772 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 73324 1) .g) (.mul (.rational 374664 1) .v)) .g) (.mul (.rational 1176664 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2136 1) .g) (.mul
    (.rational 26952 1) .v)) .g) (.mul (.rational 159960 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 3651264 1) .f) (.add (.mul (.rational 19539792
    1) .g) (.mul (.rational 4742496 1) .v))) .f) (.add (.mul (.add (.mul (.rational 45678528 1)
    .g) (.mul (.rational 23812992 1) .v)) .g) (.mul (.rational 1882800 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 61414760 1) .g) (.mul (.rational 51569392 1) .v)) .g) (.mul
    (.rational 9381744 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 52616880
    1) .g) (.mul (.rational 63338000 1) .v)) .g) (.mul (.rational 20321904 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 30050020 1) .g) (.mul (.rational 48922432
    1) .v)) .g) (.mul (.rational 25334856 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11601384 1) .g) (.mul (.rational 24993680 1) .v)) .g) (.mul (.rational
    20350588 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2989940
    1) .g) (.mul (.rational 8678224 1) .v)) .g) (.mul (.rational 11184744 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 490240 1) .g) (.mul (.rational 2066808 1)
    .v)) .g) (.mul (.rational 4326320 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 45540 1) .g) (.mul (.rational 329024 1) .v)) .g) (.mul (.rational 1165152 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1756 1) .g) (.mul
    (.rational 31376 1) .v)) .g) (.mul (.rational 203896 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 1288 1) .v) .g) (.mul (.rational 19716 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 368928 1) .f) (.add
    (.mul (.rational 2119968 1) .g) (.mul (.rational 550656 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 5344128 1) .g) (.mul (.rational 3023136 1) .v)) .g) (.mul (.rational 255024 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7784560 1) .g) (.mul (.rational
    7220576 1) .v)) .g) (.mul (.rational 1416240 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7264360 1) .g) (.mul (.rational 9881680 1) .v)) .g) (.mul (.rational 3458976
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4547384 1) .g)
    (.mul (.rational 8606512 1) .v)) .g) (.mul (.rational 4922352 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1939608 1) .g) (.mul (.rational 5023432 1) .v))
    .g) (.mul (.rational 4565404 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 558312 1) .g) (.mul (.rational 2019152 1) .v)) .g) (.mul (.rational 2922564 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 103924 1) .g) (.mul
    (.rational 563488 1) .v)) .g) (.mul (.rational 1324904 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11256 1) .g) (.mul (.rational 106584 1) .v)) .g)
    (.mul (.rational 422416 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 532 1) .g) (.mul (.rational 12408 1) .v)) .g) (.mul (.rational 89960 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 664 1) .v) .g) (.mul (.rational
    11316 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 620 1) (.pow .v 2)) (.pow .g
    10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1317

namespace FullHigh1318
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  28*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_1 e g v+28*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^1+12*SmallGap.ReducedLayers.high0_010_3 e g v+60*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^1+4*SmallGap.ReducedLayers.high0_001_2 e g v+24*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_110_3 e g v+15*SmallGap.ReducedLayers.high1_110_4 e g
    v*e^1+1*SmallGap.ReducedLayers.high1_101_2 e g v+6*SmallGap.ReducedLayers.high1_101_3 e g
    v*e^1+6*SmallGap.ReducedLayers.high1_020_5 e g v+18*SmallGap.ReducedLayers.high1_020_6 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_011_4 e g v+12*SmallGap.ReducedLayers.high1_011_5 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 28284 1) .e) (.add (.mul (.rational 236784 1)
    .f) (.add (.mul (.rational 288312 1) .g) (.mul (.rational 47880 1) .v)))) .e) (.add (.mul
    (.add (.mul (.rational 1202712 1) .f) (.add (.mul (.rational 1983596 1) .g) (.mul (.rational
    341016 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1185552 1) .g) (.mul (.rational 378192
    1) .v)) .g) (.mul (.rational 21340 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 4111212 1) .f) (.add (.mul (.rational 8522804 1) .g) (.mul (.rational 1477176 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 6813284 1) .g) (.mul (.rational 2200024 1) .v))
    .g) (.mul (.rational 134712 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2642668 1) .g) (.mul (.rational 1094464 1) .v)) .g) (.mul (.rational 146328 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9937548 1) .f) (.add
    (.mul (.rational 24733448 1) .g) (.mul (.rational 4320864 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 24674468 1) .g) (.mul (.rational 8080560 1) .v)) .g) (.mul (.rational 513516 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 12675516 1) .g) (.mul (.rational
    5400336 1) .v)) .g) (.mul (.rational 746168 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3554808 1) .g) (.mul (.rational 1530104 1) .v)) .g) (.mul (.rational 338716
    1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 17387868 1) .f) (.add (.mul (.rational 50371616 1) .g) (.mul (.rational
    8974920 1) .v))) .f) (.add (.mul (.add (.mul (.rational 60036160 1) .g) (.mul (.rational
    20275000 1) .v)) .g) (.mul (.rational 1318124 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 38224272 1) .g) (.mul (.rational 17152336 1) .v)) .g) (.mul (.rational
    2416384 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 14076092 1) .g)
    (.mul (.rational 6644232 1) .v)) .g) (.mul (.rational 1494928 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3001376 1) .g) (.mul (.rational 1109728 1) .v))
    .g) (.mul (.rational 328184 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22163820 1) .f) (.add (.mul (.rational
    73086108 1) .g) (.mul (.rational 13512096 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    101007936 1) .g) (.mul (.rational 35976408 1) .v)) .g) (.mul (.rational 2406576 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 76424736 1) .g) (.mul (.rational 37223224
    1) .v)) .g) (.mul (.rational 5421872 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34640384 1) .g) (.mul (.rational 18739120 1) .v)) .g) (.mul (.rational 4418732 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9620936 1) .g) (.mul
    (.rational 4607472 1) .v)) .g) (.mul (.rational 1510432 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1587348 1) .g) (.mul (.rational 431488 1) .v)) .g)
    (.mul (.rational 151716 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20408856 1) .f) (.add (.mul
    (.rational 75329784 1) .g) (.mul (.rational 14710488 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 118125564 1) .g) (.mul (.rational 45348720 1) .v)) .g) (.mul (.rational 3179468 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 103171884 1) .g) (.mul (.rational
    56018176 1) .v)) .g) (.mul (.rational 8681664 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 55244560 1) .g) (.mul (.rational 35388176 1) .v)) .g) (.mul (.rational
    9152028 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 18750496
    1) .g) (.mul (.rational 12032168 1) .v)) .g) (.mul (.rational 4669384 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3997244 1) .g) (.mul (.rational 2080264
    1) .v)) .g) (.mul (.rational 1184220 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 504028 1) .g) (.mul (.rational 132824 1) .v)) .g) (.mul (.rational
    141504 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13230828 1) .f) (.add (.mul
    (.rational 53952120 1) .g) (.mul (.rational 11296152 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 94420740 1) .g) (.mul (.rational 39734880 1) .v)) .g) (.mul (.rational 2981976 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 93190400 1) .g) (.mul (.rational
    57432040 1) .v)) .g) (.mul (.rational 9731664 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 57292992 1) .g) (.mul (.rational 44143904 1) .v)) .g) (.mul (.rational
    12930048 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22819184
    1) .g) (.mul (.rational 19552984 1) .v)) .g) (.mul (.rational 9134640 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5898440 1) .g) (.mul (.rational 5086800
    1) .v)) .g) (.mul (.rational 3833996 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 952340 1) .g) (.mul (.rational 767976 1) .v)) .g) (.mul (.rational
    1048088 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 86660 1)
    .g) (.mul (.rational 64360 1) .v)) .g) (.mul (.rational 201556 1) (.pow .v 2))) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 5729112 1) .f) (.add (.mul (.rational 25540788 1) .g) (.mul
    (.rational 5793360 1) .v))) .f) (.add (.mul (.add (.mul (.rational 49242144 1) .g) (.mul
    (.rational 22954248 1) .v)) .g) (.mul (.rational 1872744 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 54030436 1) .g) (.mul (.rational 38121392 1) .v)) .g) (.mul
    (.rational 7177776 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 37345476
    1) .g) (.mul (.rational 34658440 1) .v)) .g) (.mul (.rational 11630520 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 16968356 1) .g) (.mul (.rational 18990280
    1) .v)) .g) (.mul (.rational 10568592 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5106976 1) .g) (.mul (.rational 6570256 1) .v)) .g) (.mul (.rational
    6094332 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 990492 1)
    .g) (.mul (.rational 1484352 1) .v)) .g) (.mul (.rational 2411728 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 114092 1) .g) (.mul (.rational 224240 1)
    .v)) .g) (.mul (.rational 674792 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6368 1) .g) (.mul (.rational 21592 1) .v)) .g) (.mul (.rational 125144 1)
    (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1487160 1) .f) (.add
    (.mul (.rational 7186536 1) .g) (.mul (.rational 1775952 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 15105132 1) .g) (.mul (.rational 7834320 1) .v)) .g) (.mul (.rational 699840 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 18189360 1) .g) (.mul (.rational
    14706936 1) .v)) .g) (.mul (.rational 3090960 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13907640 1) .g) (.mul (.rational 15428880 1) .v)) .g) (.mul (.rational
    5915064 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7059580 1)
    .g) (.mul (.rational 10035080 1) .v)) .g) (.mul (.rational 6533136 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2405052 1) .g) (.mul (.rational 4277560 1)
    .v)) .g) (.mul (.rational 4703856 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 538016 1) .g) (.mul (.rational 1242112 1) .v)) .g) (.mul (.rational 2358448
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 73596 1) .g) (.mul
    (.rational 250208 1) .v)) .g) (.mul (.rational 839276 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5148 1) .g) (.mul (.rational 33312 1) .v)) .g) (.mul
    (.rational 203152 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    100 1) .g) (.mul (.rational 2384 1) .v)) .g) (.mul (.rational 29712 1) (.pow .v 2))) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 174960 1) .f) (.add (.mul
    (.rational 910008 1) .g) (.mul (.rational 245376 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2067408 1) .g) (.mul (.rational 1192752 1) .v)) .g) (.mul (.rational 116640 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2703780 1) .g) (.mul (.rational
    2494944 1) .v)) .g) (.mul (.rational 583200 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2257680 1) .g) (.mul (.rational 2958120 1) .v)) .g) (.mul (.rational 1283016
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1259852 1) .g)
    (.mul (.rational 2212744 1) .v)) .g) (.mul (.rational 1654464 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 475836 1) .g) (.mul (.rational 1105976 1) .v))
    .g) (.mul (.rational 1407292 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 119384 1) .g) (.mul (.rational 382912 1) .v)) .g) (.mul (.rational 837744 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 18636 1) .g) (.mul
    (.rational 92792 1) .v)) .g) (.mul (.rational 354796 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1536 1) .g) (.mul (.rational 14976 1) .v)) .g) (.mul
    (.rational 103704 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    40 1) .g) (.mul (.rational 1352 1) .v)) .g) (.mul (.rational 19188 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 40 1) .v) .g) (.mul (.rational 1880 1) (.pow .v
    2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1318

namespace FullHigh1319
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  20*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_2 e g v+12*SmallGap.ReducedLayers.high0_010_4 e
    g v+4*SmallGap.ReducedLayers.high0_001_3 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_110_4 e g v+1*SmallGap.ReducedLayers.high1_101_3 e g
    v+6*SmallGap.ReducedLayers.high1_020_6 e g v+3*SmallGap.ReducedLayers.high1_011_5 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 3240 1) .e) (.add (.mul (.rational 26820 1) .f) (.add (.mul
    (.rational 32580 1) .g) (.mul (.rational 5400 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    133740 1) .f) (.add (.mul (.rational 219720 1) .g) (.mul (.rational 37440 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 131340 1) .g) (.mul (.rational 40440 1) .v)) .g) (.mul (.rational
    2400 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 444240 1) .f) (.add
    (.mul (.rational 915600 1) .g) (.mul (.rational 156600 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 730800 1) .g) (.mul (.rational 225480 1) .v)) .g) (.mul (.rational 14700 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 284880 1) .g) (.mul (.rational 106080 1)
    .v)) .g) (.mul (.rational 15480 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1029060 1) .f) (.add (.mul (.rational 2540400 1) .g) (.mul (.rational
    438120 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2525040 1) .g) (.mul (.rational 787800
    1) .v)) .g) (.mul (.rational 53880 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1301160 1) .g) (.mul (.rational 494280 1) .v)) .g) (.mul (.rational 75300 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 369420 1) .g) (.mul (.rational
    122880 1) .v)) .g) (.mul (.rational 31680 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1693080 1) .f) (.add (.mul
    (.rational 4851360 1) .g) (.mul (.rational 860400 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 5746320 1) .g) (.mul (.rational 1864800 1) .v)) .g) (.mul (.rational 132000 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3661560 1) .g) (.mul (.rational
    1481160 1) .v)) .g) (.mul (.rational 232560 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1362360 1) .g) (.mul (.rational 508200 1) .v)) .g) (.mul (.rational 134100 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 296880 1) .g) (.mul
    (.rational 57840 1) .v)) .g) (.mul (.rational 23880 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1975680 1) .f)
    (.add (.mul (.rational 6422760 1) .g) (.mul (.rational 1203120 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 8794620 1) .g) (.mul (.rational 3076560 1) .v)) .g) (.mul (.rational 228480
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6641280 1) .g) (.mul (.rational
    3010200 1) .v)) .g) (.mul (.rational 499920 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3034320 1) .g) (.mul (.rational 1381320 1) .v)) .g) (.mul (.rational 392280
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 859800 1) .g)
    (.mul (.rational 273720 1) .v)) .g) (.mul (.rational 126300 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 146580 1) .g) (.mul (.rational 3600 1) .v)) .g) (.mul
    (.rational 10560 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1600560 1) .f) (.add (.mul (.rational
    5801400 1) .g) (.mul (.rational 1178640 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    8980200 1) .g) (.mul (.rational 3499200 1) .v)) .g) (.mul (.rational 281160 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7801920 1) .g) (.mul (.rational 4129920 1) .v))
    .g) (.mul (.rational 758880 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    4198800 1) .g) (.mul (.rational 2456160 1) .v)) .g) (.mul (.rational 801840 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1450680 1) .g) (.mul (.rational
    760920 1) .v)) .g) (.mul (.rational 426240 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 319080 1) .g) (.mul (.rational 108120 1) .v)) .g) (.mul
    (.rational 126300 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    42000 1) .g) (.mul (.rational 1440 1) .v)) .g) (.mul (.rational 23880 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 856440 1) .f) (.add (.mul (.rational 3413520 1) .g) (.mul
    (.rational 768240 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5870880 1) .g) (.mul
    (.rational 2608560 1) .v)) .g) (.mul (.rational 234000 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5739960 1) .g) (.mul (.rational 3634800 1) .v)) .g) (.mul (.rational
    767160 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3533700 1) .g) (.mul
    (.rational 2695680 1) .v)) .g) (.mul (.rational 1050240 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1428240 1) .g) (.mul (.rational 1162440 1) .v)) .g)
    (.mul (.rational 801840 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 379920 1) .g) (.mul (.rational 304920 1) .v)) .g) (.mul (.rational 392280 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 63840 1) .g) (.mul
    (.rational 51240 1) .v)) .g) (.mul (.rational 134100 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6060 1) .g) (.mul (.rational 5760 1) .v)) .g) (.mul
    (.rational 31680 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 272160 1) .f)
    (.add (.mul (.rational 1179360 1) .g) (.mul (.rational 298080 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 2222640 1) .g) (.mul (.rational 1140480 1) .v)) .g) (.mul (.rational 116640
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2403720 1) .g) (.mul (.rational
    1835280 1) .v)) .g) (.mul (.rational 453600 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1656000 1) .g) (.mul (.rational 1632960 1) .v)) .g) (.mul (.rational 767160
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 760320 1) .g)
    (.mul (.rational 897840 1) .v)) .g) (.mul (.rational 758880 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 234480 1) .g) (.mul (.rational 329280 1) .v)) .g)
    (.mul (.rational 499920 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 47040 1) .g) (.mul (.rational 86280 1) .v)) .g) (.mul (.rational 232560 1) (.pow .v
    2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5580 1) .g) (.mul (.rational
    16440 1) .v)) .g) (.mul (.rational 75300 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 300 1) .g) (.mul (.rational 2040 1) .v)) .g) (.mul (.rational 15480 1)
    (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 38880 1) .f) (.add
    (.mul (.rational 181440 1) .g) (.mul (.rational 51840 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 370440 1) .g) (.mul (.rational 220320 1) .v)) .g) (.mul (.rational 25920 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 437040 1) .g) (.mul (.rational 401040 1)
    .v)) .g) (.mul (.rational 116640 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 331200 1) .g) (.mul (.rational 414000 1) .v)) .g) (.mul (.rational 234000 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 168960 1) .g) (.mul
    (.rational 273120 1) .v)) .g) (.mul (.rational 281160 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 58620 1) .g) (.mul (.rational 124560 1) .v)) .g) (.mul
    (.rational 228480 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    13440 1) .g) (.mul (.rational 41400 1) .v)) .g) (.mul (.rational 132000 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1860 1) .g) (.mul (.rational 9960 1) .v))
    .g) (.mul (.rational 53880 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 120 1) .g) (.mul (.rational 1560 1) .v)) .g) (.mul (.rational 14700 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.mul (.rational 120 1) .v) .g) (.mul (.rational 2400
    1) (.pow .v 2))) (.pow .g 8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1319

end
end SPR.N6.Tail.CoreEndpoint
