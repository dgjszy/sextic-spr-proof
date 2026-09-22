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

namespace FullHigh2120
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    3*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^4+6*SmallGap.ReducedLayers.high0_010_0 e g v*e^2+12*SmallGap.ReducedLayers.high0_001_0 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_0 e g v*e^4+3*SmallGap.ReducedLayers.high1_110_0 e g
    v*e^2+6*SmallGap.ReducedLayers.high1_101_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_011_0 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_002_0 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 3888 1) .e) (.add (.mul (.rational 38922 1) .f) (.add (.mul (.rational 49008
    1) .g) (.mul (.rational 7032 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 240216 1) .f)
    (.add (.mul (.rational 411732 1) .g) (.mul (.rational 64074 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 255864 1) .g) (.mul (.rational 79404 1) .v)) .g) (.mul (.rational 3240 1)
    (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1025004 1) .f) (.add (.mul
    (.rational 2219211 1) .g) (.mul (.rational 361470 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1853514 1) .g) (.mul (.rational 613194 1) .v)) .g) (.mul (.rational 27204 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 746931 1) .g) (.mul (.rational 371130 1)
    .v)) .g) (.mul (.rational 34056 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 3212372 1) .f) (.add (.mul (.rational 8394480 1) .g) (.mul (.rational
    1413246 1) .v))) .f) (.add (.mul (.add (.mul (.rational 8793459 1) .g) (.mul (.rational
    3047886 1) .v)) .g) (.mul (.rational 141336 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4720238 1) .g) (.mul (.rational 2506080 1) .v)) .g) (.mul (.rational 243546
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1366911 1) .g) (.mul
    (.rational 980910 1) .v)) .g) (.mul (.rational 148188 1) (.pow .v 2))) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7663216 1) .f) (.add
    (.mul (.rational 23441505 1) .g) (.mul (.rational 4060630 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 29499426 1) .g) (.mul (.rational 10639794 1) .v)) .g) (.mul (.rational 508234 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 19744582 1) .g) (.mul (.rational
    11078220 1) .v)) .g) (.mul (.rational 1119879 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7563846 1) .g) (.mul (.rational 5853508 1) .v)) .g) (.mul (.rational
    934662 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1648869 1)
    .g) (.mul (.rational 1653390 1) .v)) .g) (.mul (.rational 368191 1) (.pow .v 2))) (.pow .g
    3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    14221987 1) .f) (.add (.mul (.rational 49819642 1) .g) (.mul (.rational 8868808 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 73138839 1) .g) (.mul (.rational 27379350 1) .v)) .g) (.mul
    (.rational 1339866 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 58558540 1)
    .g) (.mul (.rational 34547816 1) .v)) .g) (.mul (.rational 3608314 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 27828697 1) .g) (.mul (.rational 23023006 1) .v)) .g)
    (.mul (.rational 3846963 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7978650 1) .g) (.mul (.rational 8724330 1) .v)) .g) (.mul (.rational 2072202 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1331325 1) .g) (.mul
    (.rational 1873964 1) .v)) .g) (.mul (.rational 594433 1) (.pow .v 2))) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    20797703 1) .f) (.add (.mul (.rational 82062433 1) .g) (.mul (.rational 15015874 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 137590306 1) .g) (.mul (.rational 53416004 1) .v)) .g)
    (.mul (.rational 2674140 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    128082161 1) .g) (.mul (.rational 79261556 1) .v)) .g) (.mul (.rational 8534748 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 72515173 1) .g) (.mul (.rational
    63822682 1) .v)) .g) (.mul (.rational 11115660 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 25668793 1) .g) (.mul (.rational 30365582 1) .v)) .g) (.mul
    (.rational 7634091 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5603274 1) .g) (.mul (.rational 8693288 1) .v)) .g) (.mul (.rational 2979996 1) (.pow .v 2)))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 710517 1) .g) (.mul (.rational
    1450548 1) .v)) .g) (.mul (.rational 661251 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    24108220 1) .f) (.add (.mul (.rational 105777170 1) .g) (.mul (.rational 19909033 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 199322297 1) .g) (.mul (.rational 80242775 1) .v)) .g)
    (.mul (.rational 4110743 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    211319478 1) .g) (.mul (.rational 136982602 1) .v)) .g) (.mul (.rational 15202753 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 138628849 1) .g) (.mul (.rational
    129391622 1) .v)) .g) (.mul (.rational 23453016 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 58223390 1) .g) (.mul (.rational 74113893 1) .v)) .g) (.mul
    (.rational 19642804 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15617885 1) .g) (.mul (.rational 26501677 1) .v)) .g) (.mul (.rational 9737782 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2577062 1) .g) (.mul
    (.rational 5852542 1) .v)) .g) (.mul (.rational 2917827 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 239313 1) .g) (.mul (.rational 755566 1) .v)) .g)
    (.mul (.rational 514481 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    22153694 1) .f) (.add (.mul (.rational 106978624 1) .g) (.mul (.rational 20727615 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 223732327 1) .g) (.mul (.rational 93406800 1) .v)) .g)
    (.mul (.rational 4901004 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    265942151 1) .g) (.mul (.rational 180402807 1) .v)) .g) (.mul (.rational 20643147 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 198103392 1) .g) (.mul (.rational
    195616832 1) .v)) .g) (.mul (.rational 36872507 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 96060253 1) .g) (.mul (.rational 131023771 1) .v)) .g) (.mul
    (.rational 36510894 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 30441981 1) .g) (.mul (.rational 56152430 1) .v)) .g) (.mul (.rational 21991484 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6141581 1) .g) (.mul
    (.rational 15395321 1) .v)) .g) (.mul (.rational 8314028 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 737820 1) .g) (.mul (.rational 2610460 1) .v)) .g)
    (.mul (.rational 1959045 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 45699 1) .g) (.mul (.rational 251774 1) .v)) .g) (.mul (.rational 273893 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16044946 1) .f) (.add (.mul
    (.rational 84558566 1) .g) (.mul (.rational 16876451 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 194305439 1) .g) (.mul (.rational 84126217 1) .v)) .g) (.mul (.rational 4525009 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 255791804 1) .g) (.mul (.rational
    181416557 1) .v)) .g) (.mul (.rational 21410046 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 213065120 1) .g) (.mul (.rational 222111547 1) .v)) .g) (.mul
    (.rational 43507797 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 116933040 1) .g) (.mul (.rational 170289093 1) .v)) .g) (.mul (.rational 49777346
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 42614222 1) .g)
    (.mul (.rational 84999589 1) .v)) .g) (.mul (.rational 35318145 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10108668 1) .g) (.mul (.rational 27780395 1) .v))
    .g) (.mul (.rational 16127424 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1476262 1) .g) (.mul (.rational 5807375 1) .v)) .g) (.mul (.rational 4752112 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 117454 1) .g) (.mul
    (.rational 729356 1) .v)) .g) (.mul (.rational 877068 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3723 1) .g) (.mul (.rational 47916 1) .v)) .g) (.mul
    (.rational 93771 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 9043862 1) .f) (.add (.mul (.rational 51654235 1) .g) (.mul (.rational 10623545 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 129346219 1) .g) (.mul (.rational 58064212 1)
    .v)) .g) (.mul (.rational 3203566 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 186732844 1) .g) (.mul (.rational 138328154 1) .v)) .g) (.mul (.rational 16836422
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 171847234 1) .g) (.mul
    (.rational 188740424 1) .v)) .g) (.mul (.rational 38383608 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 105144327 1) .g) (.mul (.rational 162949946 1) .v))
    .g) (.mul (.rational 49850200 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 43208751 1) .g) (.mul (.rational 92760696 1) .v)) .g) (.mul (.rational 40721820 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 11733527 1) .g) (.mul
    (.rational 35136654 1) .v)) .g) (.mul (.rational 21785634 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2003504 1) .g) (.mul (.rational 8699726 1) .v)) .g)
    (.mul (.rational 7693096 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 192397 1) .g) (.mul (.rational 1335991 1) .v)) .g) (.mul (.rational 1756813 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 7760 1) .g) (.mul
    (.rational 113118 1) .v)) .g) (.mul (.rational 244662 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 3886 1) .v) .g) (.mul (.rational 18193 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3881872 1) .f) (.add
    (.mul (.rational 23887706 1) .g) (.mul (.rational 5063205 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 64740542 1) .g) (.mul (.rational 30119715 1) .v)) .g) (.mul (.rational 1704825 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 101674818 1) .g) (.mul (.rational
    78579036 1) .v)) .g) (.mul (.rational 9859347 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 102386563 1) .g) (.mul (.rational 118235242 1) .v)) .g) (.mul
    (.rational 24931315 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 69020298 1) .g) (.mul (.rational 113480003 1) .v)) .g) (.mul (.rational 36243231 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 31512124 1) .g) (.mul
    (.rational 72499267 1) .v)) .g) (.mul (.rational 33492730 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9607992 1) .g) (.mul (.rational 31177910 1) .v)) .g)
    (.mul (.rational 20526786 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1867948 1) .g) (.mul (.rational 8893824 1) .v)) .g) (.mul (.rational 8433489 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 208280 1) .g) (.mul
    (.rational 1605232 1) .v)) .g) (.mul (.rational 2286653 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10045 1) .g) (.mul (.rational 164524 1) .v)) .g)
    (.mul (.rational 389336 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    7186 1) .v) .g) (.mul (.rational 37149 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 1471 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 1224256 1) .f) (.add (.mul (.rational 8076559 1) .g) (.mul
    (.rational 1763983 1) .v))) .f) (.add (.mul (.add (.mul (.rational 23555773 1) .g) (.mul
    (.rational 11350226 1) .v)) .g) (.mul (.rational 658874 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 39977287 1) .g) (.mul (.rational 32192107 1) .v)) .g) (.mul
    (.rational 4160112 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 43705770
    1) .g) (.mul (.rational 52957660 1) .v)) .g) (.mul (.rational 11559009 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 32156270 1) .g) (.mul (.rational 55923181
    1) .v)) .g) (.mul (.rational 18596792 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16123215 1) .g) (.mul (.rational 39594748 1) .v)) .g) (.mul (.rational
    19174149 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5439487
    1) .g) (.mul (.rational 19030765 1) .v)) .g) (.mul (.rational 13233489 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1181308 1) .g) (.mul (.rational 6129908
    1) .v)) .g) (.mul (.rational 6190150 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 148989 1) .g) (.mul (.rational 1265664 1) .v)) .g) (.mul (.rational
    1936866 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8270 1)
    .g) (.mul (.rational 151042 1) .v)) .g) (.mul (.rational 387435 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 7884 1) .v) .g) (.mul (.rational 44581 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 2223 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 266987 1) .f) (.add (.mul
    (.rational 1880324 1) .g) (.mul (.rational 422999 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 5873318 1) .g) (.mul (.rational 2928509 1) .v)) .g) (.mul (.rational 174213 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 10712048 1) .g) (.mul (.rational
    8974927 1) .v)) .g) (.mul (.rational 1192966 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12632511 1) .g) (.mul (.rational 16027057 1) .v)) .g) (.mul (.rational
    3613800 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10066834
    1) .g) (.mul (.rational 18465173 1) .v)) .g) (.mul (.rational 6375157 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5492521 1) .g) (.mul (.rational 14343755
    1) .v)) .g) (.mul (.rational 7252901 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2027316 1) .g) (.mul (.rational 7611713 1) .v)) .g) (.mul (.rational
    5562189 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 484850 1)
    .g) (.mul (.rational 2726803 1) .v)) .g) (.mul (.rational 2913953 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 67894 1) .g) (.mul (.rational 631696 1) .v))
    .g) (.mul (.rational 1030663 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4229 1) .g) (.mul (.rational 85524 1) .v)) .g) (.mul (.rational 235734 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 5140 1) .v) .g) (.mul (.rational
    31489 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1863 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    35883 1) .f) (.add (.mul (.rational 268829 1) .g) (.mul (.rational 62251 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 895693 1) .g) (.mul (.rational 461658 1) .v)) .g) (.mul
    (.rational 28110 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1747532 1) .g)
    (.mul (.rational 1521002 1) .v)) .g) (.mul (.rational 207592 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2211209 1) .g) (.mul (.rational 2931144 1) .v)) .g) (.mul
    (.rational 681134 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1896776 1) .g) (.mul (.rational 3659242 1) .v)) .g) (.mul (.rational 1307556 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1117879 1) .g) (.mul (.rational
    3093532 1) .v)) .g) (.mul (.rational 1626813 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 447448 1) .g) (.mul (.rational 1795128 1) .v)) .g) (.mul
    (.rational 1371658 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    116572 1) .g) (.mul (.rational 706952 1) .v)) .g) (.mul (.rational 794667 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 17879 1) .g) (.mul (.rational
    181139 1) .v)) .g) (.mul (.rational 312864 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1228 1) .g) (.mul (.rational 27322 1) .v)) .g) (.mul (.rational
    80261 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1846 1) .v) .g)
    (.mul (.rational 12138 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 823 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 2232 1) .f) (.add (.mul (.rational 17736 1) .g) (.mul (.rational 4224 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 62826 1) .g) (.mul (.rational 33432 1) .v)) .g)
    (.mul (.rational 2080 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 130634 1)
    .g) (.mul (.rational 117916 1) .v)) .g) (.mul (.rational 16488 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 176597 1) .g) (.mul (.rational 244048 1) .v)) .g) (.mul
    (.rational 58281 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    162252 1) .g) (.mul (.rational 328302 1) .v)) .g) (.mul (.rational 120990 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 102691 1) .g) (.mul (.rational
    300116 1) .v)) .g) (.mul (.rational 163437 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 44266 1) .g) (.mul (.rational 189002 1) .v)) .g) (.mul (.rational
    150240 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 12459 1)
    .g) (.mul (.rational 81096 1) .v)) .g) (.mul (.rational 95313 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2072 1) .g) (.mul (.rational 22738 1) .v)) .g)
    (.mul (.rational 41286 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 155 1) .g) (.mul (.rational 3772 1) .v)) .g) (.mul (.rational 11715 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 282 1) .v) .g) (.mul (.rational 1972
    1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 150 1) (.pow .v 2)) (.pow .g 10)))
    (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2120

namespace FullHigh2121
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    6*SmallGap.PolarCoefficientsHigh0.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    6*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(48*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^3+12*SmallGap.ReducedLayers.high0_100_1 e g v*e^4+12*SmallGap.ReducedLayers.high0_010_0 e
    g v*e^1+6*SmallGap.ReducedLayers.high0_010_1 e g v*e^2+36*SmallGap.ReducedLayers.high0_001_0 e
    g v*e^2+12*SmallGap.ReducedLayers.high0_001_1 e g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(12*SmallGap.ReducedLayers.high1_200_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_200_1 e
    g v*e^4+6*SmallGap.ReducedLayers.high1_110_0 e g v*e^1+3*SmallGap.ReducedLayers.high1_110_1 e
    g v*e^2+18*SmallGap.ReducedLayers.high1_101_0 e g v*e^2+6*SmallGap.ReducedLayers.high1_101_1 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_011_0 e g v+3*SmallGap.ReducedLayers.high1_011_1 e g
    v*e^1+6*SmallGap.ReducedLayers.high1_002_0 e g v*e^1+3*SmallGap.ReducedLayers.high1_002_1 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    23904 1) .e) (.add (.mul (.rational 227562 1) .f) (.add (.mul (.rational 283938 1) .g) (.mul
    (.rational 42684 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 1338777 1) .f) (.add (.mul
    (.rational 2273772 1) .g) (.mul (.rational 365325 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1398843 1) .g) (.mul (.rational 443478 1) .v)) .g) (.mul (.rational 19500 1) (.pow
    .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 5446155 1) .f) (.add (.mul
    (.rational 11684775 1) .g) (.mul (.rational 1942443 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 9665937 1) .g) (.mul (.rational 3223932 1) .v)) .g) (.mul (.rational 152463 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3859881 1) .g) (.mul (.rational
    1894119 1) .v)) .g) (.mul (.rational 185958 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 16244281 1) .f) (.add (.mul (.rational 42067542 1) .g)
    (.mul (.rational 7168033 1) .v))) .f) (.add (.mul (.add (.mul (.rational 43664265 1) .g) (.mul
    (.rational 15125571 1) .v)) .g) (.mul (.rational 740271 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 23241160 1) .g) (.mul (.rational 12092079 1) .v)) .g) (.mul
    (.rational 1240176 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6687336
    1) .g) (.mul (.rational 4567897 1) .v)) .g) (.mul (.rational 723891 1) (.pow .v 2))) (.pow .g
    2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 36755845 1)
    .f) (.add (.mul (.rational 111424489 1) .g) (.mul (.rational 19433419 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 138984252 1) .g) (.mul (.rational 49861007 1) .v)) .g) (.mul (.rational
    2493160 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 92293918 1) .g) (.mul
    (.rational 50592723 1) .v)) .g) (.mul (.rational 5341830 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 35152915 1) .g) (.mul (.rational 25912759 1) .v)) .g) (.mul
    (.rational 4289820 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7646769 1) .g) (.mul (.rational 7060658 1) .v)) .g) (.mul (.rational 1602454 1) (.pow .v 2)))
    (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 64375697 1) .f) (.add (.mul (.rational 223473024 1) .g) (.mul (.rational 39962395
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 325259080 1) .g) (.mul (.rational 120955198 1)
    .v)) .g) (.mul (.rational 6160292 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 258486308 1) .g) (.mul (.rational 149123741 1) .v)) .g) (.mul (.rational 16160390
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 122199477 1) .g) (.mul
    (.rational 96757579 1) .v)) .g) (.mul (.rational 16656096 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 34978204 1) .g) (.mul (.rational 35599762 1) .v)) .g)
    (.mul (.rational 8591108 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5857518 1) .g) (.mul (.rational 7421627 1) .v)) .g) (.mul (.rational 2335556 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 88229458 1) .f) (.add (.mul (.rational 344963368 1) .g)
    (.mul (.rational 63425413 1) .v))) .f) (.add (.mul (.add (.mul (.rational 573499933 1) .g)
    (.mul (.rational 221539858 1) .v)) .g) (.mul (.rational 11507538 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 530076437 1) .g) (.mul (.rational 322055327 1) .v)) .g)
    (.mul (.rational 35878304 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    298669300 1) .g) (.mul (.rational 253545159 1) .v)) .g) (.mul (.rational 45423516 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 105593932 1) .g) (.mul
    (.rational 117817534 1) .v)) .g) (.mul (.rational 30162024 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 23140837 1) .g) (.mul (.rational 32979857 1) .v)) .g)
    (.mul (.rational 11332148 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2966139 1) .g) (.mul (.rational 5408018 1) .v)) .g) (.mul (.rational 2419692 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 94967978 1) .f) (.add (.mul (.rational
    412844342 1) .g) (.mul (.rational 78266987 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    771416822 1) .g) (.mul (.rational 310232739 1) .v)) .g) (.mul (.rational 16484168 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 812194704 1) .g) (.mul (.rational 520165157
    1) .v)) .g) (.mul (.rational 59753844 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 530404134 1) .g) (.mul (.rational 482194878 1) .v)) .g) (.mul (.rational 90109966
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 222559022 1) .g)
    (.mul (.rational 271124198 1) .v)) .g) (.mul (.rational 73608856 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 59946538 1) .g) (.mul (.rational 95388032 1)
    .v)) .g) (.mul (.rational 35570982 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10000024 1) .g) (.mul (.rational 20843974 1) .v)) .g) (.mul (.rational
    10426870 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 946944 1)
    .g) (.mul (.rational 2690255 1) .v)) .g) (.mul (.rational 1819028 1) (.pow .v 2))) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 80035528 1) .f) (.add (.mul (.rational 382868218 1) .g)
    (.mul (.rational 75023707 1) .v))) .f) (.add (.mul (.add (.mul (.rational 793965247 1) .g)
    (.mul (.rational 332995079 1) .v)) .g) (.mul (.rational 18156796 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 937283991 1) .g) (.mul (.rational 633119715 1) .v)) .g)
    (.mul (.rational 75212767 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    695116417 1) .g) (.mul (.rational 675888430 1) .v)) .g) (.mul (.rational 131996436 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 336782279 1) .g) (.mul
    (.rational 446250690 1) .v)) .g) (.mul (.rational 128413582 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 107172155 1) .g) (.mul (.rational 189110996 1) .v))
    .g) (.mul (.rational 76139924 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 21856437 1) .g) (.mul (.rational 51580614 1) .v)) .g) (.mul (.rational 28495065 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2677087 1) .g) (.mul
    (.rational 8788633 1) .v)) .g) (.mul (.rational 6723192 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 170889 1) .g) (.mul (.rational 864182 1) .v)) .g)
    (.mul (.rational 959134 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 52267307 1) .f) (.add (.mul (.rational 272818304 1) .g) (.mul (.rational 55355144
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 621522215 1) .g) (.mul (.rational 272145314 1)
    .v)) .g) (.mul (.rational 15266184 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 812505572 1) .g) (.mul (.rational 578841562 1) .v)) .g) (.mul (.rational 71255098
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 673748421 1) .g) (.mul
    (.rational 699510166 1) .v)) .g) (.mul (.rational 142878465 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 369410604 1) .g) (.mul (.rational 530359653 1) .v))
    .g) (.mul (.rational 161526120 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 135153459 1) .g) (.mul (.rational 262750452 1) .v)) .g) (.mul (.rational
    113627022 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 32394628
    1) .g) (.mul (.rational 85763073 1) .v)) .g) (.mul (.rational 51777732 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4820383 1) .g) (.mul (.rational 18078451
    1) .v)) .g) (.mul (.rational 15393633 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 394968 1) .g) (.mul (.rational 2321153 1) .v)) .g) (.mul (.rational
    2914352 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 13071 1)
    .g) (.mul (.rational 158695 1) .v)) .g) (.mul (.rational 326580 1) (.pow .v 2))) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25932715 1) .f) (.add (.mul
    (.rational 146655481 1) .g) (.mul (.rational 30845926 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 363983044 1) .g) (.mul (.rational 166458276 1) .v)) .g) (.mul (.rational 9621967 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 521667380 1) .g) (.mul (.rational
    391711858 1) .v)) .g) (.mul (.rational 50011200 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 477775172 1) .g) (.mul (.rational 528557510 1) .v)) .g) (.mul
    (.rational 112878017 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 291929346 1) .g) (.mul (.rational 452319559 1) .v)) .g) (.mul (.rational 145463044
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 120369307 1) .g)
    (.mul (.rational 256216986 1) .v)) .g) (.mul (.rational 118386603 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 33000091 1) .g) (.mul (.rational 97166371 1)
    .v)) .g) (.mul (.rational 63526008 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5734448 1) .g) (.mul (.rational 24306067 1) .v)) .g) (.mul (.rational
    22732795 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 566178 1)
    .g) (.mul (.rational 3819365 1) .v)) .g) (.mul (.rational 5337960 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 23790 1) .g) (.mul (.rational 336531 1) .v))
    .g) (.mul (.rational 778993 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 12291 1) .v) .g) (.mul (.rational 62074 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9450581 1) .f) (.add (.mul
    (.rational 57559586 1) .g) (.mul (.rational 12555428 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 154548095 1) .g) (.mul (.rational 73802680 1) .v)) .g) (.mul (.rational 4398893 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 240839512 1) .g) (.mul (.rational
    190385736 1) .v)) .g) (.mul (.rational 25207856 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 241215180 1) .g) (.mul (.rational 283656300 1) .v)) .g) (.mul
    (.rational 63257349 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 162264290 1) .g) (.mul (.rational 270240383 1) .v)) .g) (.mul (.rational 91500690
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 74258648 1) .g)
    (.mul (.rational 172047415 1) .v)) .g) (.mul (.rational 84497783 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 22827544 1) .g) (.mul (.rational 74163003 1)
    .v)) .g) (.mul (.rational 52089336 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4508070 1) .g) (.mul (.rational 21383926 1) .v)) .g) (.mul (.rational
    21729605 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 515442 1)
    .g) (.mul (.rational 3946243 1) .v)) .g) (.mul (.rational 6059462 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 25800 1) .g) (.mul (.rational 419891 1) .v))
    .g) (.mul (.rational 1078803 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 19419 1) .v) .g) (.mul (.rational 109846 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 4757 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 2385593 1) .f) (.add (.mul (.rational 15568267 1) .g) (.mul
    (.rational 3521474 1) .v))) .f) (.add (.mul (.add (.mul (.rational 44954665 1) .g) (.mul
    (.rational 22400092 1) .v)) .g) (.mul (.rational 1376430 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 75644995 1) .g) (.mul (.rational 62854778 1) .v)) .g) (.mul
    (.rational 8622791 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 82175330
    1) .g) (.mul (.rational 102446384 1) .v)) .g) (.mul (.rational 23811516 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 60261794 1) .g) (.mul (.rational
    107447783 1) .v)) .g) (.mul (.rational 38178849 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 30241397 1) .g) (.mul (.rational 75841027 1) .v)) .g) (.mul
    (.rational 39395188 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10266319 1) .g) (.mul (.rational 36537157 1) .v)) .g) (.mul (.rational 27377142 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2258767 1) .g) (.mul
    (.rational 11885146 1) .v)) .g) (.mul (.rational 13003596 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 291057 1) .g) (.mul (.rational 2503283 1) .v)) .g)
    (.mul (.rational 4177985 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16680 1) .g) (.mul (.rational 308767 1) .v)) .g) (.mul (.rational 870486 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 16941 1) .v) .g) (.mul (.rational
    106185 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 5736 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 372627 1)
    .f) (.add (.mul (.rational 2594076 1) .g) (.mul (.rational 608124 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 8014922 1) .g) (.mul (.rational 4162448 1) .v)) .g) (.mul (.rational
    263460 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 14477364 1) .g) (.mul
    (.rational 12620876 1) .v)) .g) (.mul (.rational 1791246 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 16941156 1) .g) (.mul (.rational 22328472 1) .v)) .g) (.mul
    (.rational 5396395 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    13433272 1) .g) (.mul (.rational 25543420 1) .v)) .g) (.mul (.rational 9492394 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7320081 1) .g) (.mul
    (.rational 19768798 1) .v)) .g) (.mul (.rational 10809891 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2711472 1) .g) (.mul (.rational 10502208 1) .v)) .g)
    (.mul (.rational 8343530 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 654659 1) .g) (.mul (.rational 3791036 1) .v)) .g) (.mul (.rational 4431776 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 93216 1) .g) (.mul
    (.rational 892472 1) .v)) .g) (.mul (.rational 1604490 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5955 1) .g) (.mul (.rational 124110 1) .v)) .g) (.mul
    (.rational 380119 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 7764
    1) .v) .g) (.mul (.rational 53356 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    3375 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 27126 1) .f) (.add (.mul (.rational 200674 1) .g) (.mul
    (.rational 48710 1) .v))) .f) (.add (.mul (.add (.mul (.rational 660518 1) .g) (.mul
    (.rational 357012 1) .v)) .g) (.mul (.rational 23244 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1274286 1) .g) (.mul (.rational 1163084 1) .v)) .g) (.mul (.rational
    170448 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1596866 1) .g) (.mul
    (.rational 2218788 1) .v)) .g) (.mul (.rational 556128 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1359772 1) .g) (.mul (.rational 2747148 1) .v)) .g)
    (.mul (.rational 1064017 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 798084 1) .g) (.mul (.rational 2309944 1) .v)) .g) (.mul (.rational 1323791 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 319438 1) .g) (.mul
    (.rational 1338612 1) .v)) .g) (.mul (.rational 1121343 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 83636 1) .g) (.mul (.rational 529284 1) .v)) .g)
    (.mul (.rational 656693 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12966 1) .g) (.mul (.rational 137078 1) .v)) .g) (.mul (.rational 263383 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 906 1) .g) (.mul (.rational
    21068 1) .v)) .g) (.mul (.rational 69477 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 1464 1) .v) .g) (.mul (.rational 10921 1) (.pow .v 2))) (.pow .g 9))) .f)
    (.mul (.mul (.rational 779 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2121

namespace FullHigh2122
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    6*SmallGap.PolarCoefficientsHigh1.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    15*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsHigh0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    6*SmallGap.PolarCoefficientsHigh0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(72*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^2+48*SmallGap.ReducedLayers.high0_100_1 e g v*e^3+12*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^4+6*SmallGap.ReducedLayers.high0_010_0 e g v+12*SmallGap.ReducedLayers.high0_010_1 e g
    v*e^1+6*SmallGap.ReducedLayers.high0_010_2 e g v*e^2+36*SmallGap.ReducedLayers.high0_001_0 e g
    v*e^1+36*SmallGap.ReducedLayers.high0_001_1 e g v*e^2+12*SmallGap.ReducedLayers.high0_001_2 e
    g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(18*SmallGap.ReducedLayers.high1_200_0 e g v*e^2+12*SmallGap.ReducedLayers.high1_200_1 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_200_2 e g v*e^4+3*SmallGap.ReducedLayers.high1_110_0 e
    g v+6*SmallGap.ReducedLayers.high1_110_1 e g v*e^1+3*SmallGap.ReducedLayers.high1_110_2 e g
    v*e^2+18*SmallGap.ReducedLayers.high1_101_0 e g v*e^1+18*SmallGap.ReducedLayers.high1_101_1 e
    g v*e^2+6*SmallGap.ReducedLayers.high1_101_2 e g v*e^3+3*SmallGap.ReducedLayers.high1_011_1 e
    g v+3*SmallGap.ReducedLayers.high1_011_2 e g v*e^1+3*SmallGap.ReducedLayers.high1_002_0 e g
    v+6*SmallGap.ReducedLayers.high1_002_1 e g v*e^1+3*SmallGap.ReducedLayers.high1_002_2 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 61596 1)
    .e) (.add (.mul (.rational 561546 1) .f) (.add (.mul (.rational 694962 1) .g) (.mul (.rational
    108540 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 3159288 1) .f) (.add (.mul (.rational
    5318256 1) .g) (.mul (.rational 877734 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3240084
    1) .g) (.mul (.rational 1042236 1) .v)) .g) (.mul (.rational 49200 1) (.pow .v 2))))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.rational 12251748 1) .f) (.add (.mul (.rational 26039631
    1) .g) (.mul (.rational 4404264 1) .v))) .f) (.add (.mul (.add (.mul (.rational 21323418 1)
    .g) (.mul (.rational 7131297 1) .v)) .g) (.mul (.rational 360261 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8432067 1) .g) (.mul (.rational 4044114 1) .v)) .g) (.mul
    (.rational 427122 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 34670199 1) .f) (.add (.mul (.rational 88898178 1) .g) (.mul (.rational 15301596 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 91318098 1) .g) (.mul (.rational 31463169 1) .v))
    .g) (.mul (.rational 1635147 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    48122838 1) .g) (.mul (.rational 24280737 1) .v)) .g) (.mul (.rational 2651745 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 13733283 1) .g) (.mul (.rational
    8741535 1) .v)) .g) (.mul (.rational 1470357 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 73947807 1) .f) (.add (.mul
    (.rational 221851152 1) .g) (.mul (.rational 38916690 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 273798210 1) .g) (.mul (.rational 97295319 1) .v)) .g) (.mul (.rational 5136666 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 179996532 1) .g) (.mul (.rational
    95447364 1) .v)) .g) (.mul (.rational 10639884 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 67989663 1) .g) (.mul (.rational 46787874 1) .v)) .g) (.mul (.rational
    8128023 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 14715912
    1) .g) (.mul (.rational 12054786 1) .v)) .g) (.mul (.rational 2812662 1) (.pow .v 2))) (.pow
    .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 121071066 1) .f) (.add (.mul (.rational 415746096 1) .g) (.mul (.rational 74679315
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 598577934 1) .g) (.mul (.rational 220441137 1)
    .v)) .g) (.mul (.rational 11807445 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 470909664 1) .g) (.mul (.rational 263433714 1) .v)) .g) (.mul (.rational 29983338
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 220788684 1) .g) (.mul
    (.rational 164449977 1) .v)) .g) (.mul (.rational 29545191 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 62884608 1) .g) (.mul (.rational 57742410 1) .v)) .g)
    (.mul (.rational 14307045 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10530360 1) .g) (.mul (.rational 11411166 1) .v)) .g) (.mul (.rational 3560520 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 153465333 1) .f) (.add (.mul (.rational 593291892 1) .g)
    (.mul (.rational 109755351 1) .v))) .f) (.add (.mul (.add (.mul (.rational 975496782 1) .g)
    (.mul (.rational 374434479 1) .v)) .g) (.mul (.rational 20432340 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 892550223 1) .g) (.mul (.rational 529263375 1) .v)) .g)
    (.mul (.rational 61870506 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    498816951 1) .g) (.mul (.rational 403140645 1) .v)) .g) (.mul (.rational 75443790 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 175510434 1) .g) (.mul
    (.rational 180403311 1) .v)) .g) (.mul (.rational 47742282 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 38470230 1) .g) (.mul (.rational 48509601 1) .v)) .g)
    (.mul (.rational 16899627 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4964823 1) .g) (.mul (.rational 7662903 1) .v)) .g) (.mul (.rational 3377322 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 150672780 1) .f) (.add (.mul (.rational
    647390208 1) .g) (.mul (.rational 124014066 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1196125437 1) .g) (.mul (.rational 480983505 1) .v)) .g) (.mul (.rational 26905053 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1246652010 1) .g) (.mul (.rational
    786755535 1) .v)) .g) (.mul (.rational 95149452 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 807631473 1) .g) (.mul (.rational 709472172 1) .v)) .g) (.mul
    (.rational 139336677 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 337346682 1) .g) (.mul (.rational 387317028 1) .v)) .g) (.mul (.rational 110022348
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 90914163 1) .g)
    (.mul (.rational 132390696 1) .v)) .g) (.mul (.rational 51264372 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 15278652 1) .g) (.mul (.rational 28265262 1)
    .v)) .g) (.mul (.rational 14549319 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1470051 1) .g) (.mul (.rational 3610587 1) .v)) .g) (.mul (.rational 2502114
    1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 113705409 1) .f) (.add (.mul
    (.rational 537397488 1) .g) (.mul (.rational 107079726 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1101694119 1) .g) (.mul (.rational 465932991 1) .v)) .g) (.mul (.rational 26877702
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1287407085 1) .g) (.mul
    (.rational 866974926 1) .v)) .g) (.mul (.rational 109147032 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 947295372 1) .g) (.mul (.rational 904737468 1) .v)) .g)
    (.mul (.rational 187458204 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 457006344 1) .g) (.mul (.rational 584009970 1) .v)) .g) (.mul (.rational 178394244
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 145566735 1) .g)
    (.mul (.rational 242644776 1) .v)) .g) (.mul (.rational 103743276 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 29924745 1) .g) (.mul (.rational 65362314 1)
    .v)) .g) (.mul (.rational 38415840 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3728139 1) .g) (.mul (.rational 11148732 1) .v)) .g) (.mul (.rational 9134865
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 244716 1) .g)
    (.mul (.rational 1119228 1) .v)) .g) (.mul (.rational 1351290 1) (.pow .v 2))) (.pow .g 7))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 64806096 1) .f) (.add (.mul (.rational 334059666 1)
    .g) (.mul (.rational 69469245 1) .v))) .f) (.add (.mul (.add (.mul (.rational 752155683 1) .g)
    (.mul (.rational 335421867 1) .v)) .g) (.mul (.rational 20046783 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 973253460 1) .g) (.mul (.rational 700180623 1) .v)) .g)
    (.mul (.rational 92138964 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    800785839 1) .g) (.mul (.rational 830529495 1) .v)) .g) (.mul (.rational 182002575 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 437288892 1) .g) (.mul
    (.rational 619075908 1) .v)) .g) (.mul (.rational 203129328 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 160189761 1) .g) (.mul (.rational 302794398 1) .v))
    .g) (.mul (.rational 141820392 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 38721024 1) .g) (.mul (.rational 98373831 1) .v)) .g) (.mul (.rational
    64808094 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5864691
    1) .g) (.mul (.rational 20919792 1) .v)) .g) (.mul (.rational 19655574 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 494814 1) .g) (.mul (.rational 2761764 1)
    .v)) .g) (.mul (.rational 3886527 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 17106 1) .g) (.mul (.rational 198636 1) .v)) .g) (.mul (.rational 466680 1)
    (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 27017505 1)
    .f) (.add (.mul (.rational 150817839 1) .g) (.mul (.rational 32803635 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 369817710 1) .g) (.mul (.rational 174122820 1) .v)) .g) (.mul
    (.rational 10813923 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 524524962
    1) .g) (.mul (.rational 403079310 1) .v)) .g) (.mul (.rational 55557132 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 476646759 1) .g) (.mul (.rational 535608810 1)
    .v)) .g) (.mul (.rational 124168737 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 290084226 1) .g) (.mul (.rational 452546163 1) .v)) .g) (.mul (.rational
    159029118 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    119776860 1) .g) (.mul (.rational 254366367 1) .v)) .g) (.mul (.rational 129475857 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 33121617 1) .g) (.mul
    (.rational 96533049 1) .v)) .g) (.mul (.rational 70242354 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5859540 1) .g) (.mul (.rational 24479445 1) .v)) .g)
    (.mul (.rational 25810449 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 595902 1) .g) (.mul (.rational 3969792 1) .v)) .g) (.mul (.rational 6349560 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 26172 1) .g) (.mul
    (.rational 369096 1) .v)) .g) (.mul (.rational 992808 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 14589 1) .v) .g) (.mul (.rational 86580 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7781805 1) .f) (.add
    (.mul (.rational 46756926 1) .g) (.mul (.rational 10649172 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 123976101 1) .g) (.mul (.rational 61645866 1) .v)) .g) (.mul (.rational
    3984192 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 191123028 1) .g) (.mul
    (.rational 156715539 1) .v)) .g) (.mul (.rational 22634271 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 189882660 1) .g) (.mul (.rational 230492253 1) .v)) .g)
    (.mul (.rational 56458350 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 127205778 1) .g) (.mul (.rational 217471785 1) .v)) .g) (.mul (.rational 81539787
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 58287525 1) .g)
    (.mul (.rational 137861646 1) .v)) .g) (.mul (.rational 75711297 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 18068412 1) .g) (.mul (.rational 59672454 1)
    .v)) .g) (.mul (.rational 47413233 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3631005 1) .g) (.mul (.rational 17488161 1) .v)) .g) (.mul (.rational
    20376957 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 427272 1)
    .g) (.mul (.rational 3334437 1) .v)) .g) (.mul (.rational 5958249 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 22320 1) .g) (.mul (.rational 374154 1) .v))
    .g) (.mul (.rational 1134891 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 18693 1) .v) .g) (.mul (.rational 126252 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 6105 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1385262 1) .f) (.add (.mul (.rational 8911842 1) .g) (.mul
    (.rational 2126082 1) .v))) .f) (.add (.mul (.add (.mul (.rational 25395621 1) .g) (.mul
    (.rational 13329090 1) .v)) .g) (.mul (.rational 896790 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 42249123 1) .g) (.mul (.rational 36902139 1) .v)) .g) (.mul
    (.rational 5581482 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 45503703
    1) .g) (.mul (.rational 59469258 1) .v)) .g) (.mul (.rational 15360993 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 33215136 1) .g) (.mul (.rational 61891626
    1) .v)) .g) (.mul (.rational 24665550 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16680123 1) .g) (.mul (.rational 43590417 1) .v)) .g) (.mul (.rational
    25669581 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5705703
    1) .g) (.mul (.rational 21124806 1) .v)) .g) (.mul (.rational 18168576 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1275903 1) .g) (.mul (.rational 6990264
    1) .v)) .g) (.mul (.rational 8902347 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 168876 1) .g) (.mul (.rational 1519812 1) .v)) .g) (.mul (.rational
    2997246 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10068 1)
    .g) (.mul (.rational 197043 1) .v)) .g) (.mul (.rational 666249 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 11607 1) .v) .g) (.mul (.rational 88410 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 5304 1) (.pow .v 2)) (.pow .g 10))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 114930 1) .f) (.add
    (.mul (.rational 788010 1) .g) (.mul (.rational 196860 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2400519 1) .g) (.mul (.rational 1328520 1) .v)) .g) (.mul (.rational 93012 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4283076 1) .g) (.mul (.rational 3976722
    1) .v)) .g) (.mul (.rational 629166 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4964661 1) .g) (.mul (.rational 6961848 1) .v)) .g) (.mul (.rational 1892178 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3914868 1) .g) (.mul
    (.rational 7910250 1) .v)) .g) (.mul (.rational 3339117 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2132535 1) .g) (.mul (.rational 6113934 1) .v)) .g)
    (.mul (.rational 3841317 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 794844 1) .g) (.mul (.rational 3268620 1) .v)) .g) (.mul (.rational 3022797 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 194661 1) .g) (.mul
    (.rational 1199412 1) .v)) .g) (.mul (.rational 1656081 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 28386 1) .g) (.mul (.rational 290718 1) .v)) .g)
    (.mul (.rational 627063 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1878 1) .g) (.mul (.rational 42270 1) .v)) .g) (.mul (.rational 157827 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2814 1) .v) .g) (.mul (.rational
    23937 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1665 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2122

namespace FullHigh2123
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  6*SmallGap.PolarCoefficientsHigh2.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    15*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsHigh1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    24*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsHigh1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(48*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^1+72*SmallGap.ReducedLayers.high0_100_1 e g v*e^2+48*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^3+6*SmallGap.ReducedLayers.high0_010_1 e g v+12*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^1+6*SmallGap.ReducedLayers.high0_010_3 e g v*e^2+12*SmallGap.ReducedLayers.high0_001_0 e g
    v+36*SmallGap.ReducedLayers.high0_001_1 e g v*e^1+36*SmallGap.ReducedLayers.high0_001_2 e g
    v*e^2+12*SmallGap.ReducedLayers.high0_001_3 e g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(12*SmallGap.ReducedLayers.high1_200_0 e g v*e^1+18*SmallGap.ReducedLayers.high1_200_1 e
    g v*e^2+12*SmallGap.ReducedLayers.high1_200_2 e g v*e^3+3*SmallGap.ReducedLayers.high1_110_1 e
    g v+6*SmallGap.ReducedLayers.high1_110_2 e g v*e^1+3*SmallGap.ReducedLayers.high1_110_3 e g
    v*e^2+6*SmallGap.ReducedLayers.high1_101_0 e g v+18*SmallGap.ReducedLayers.high1_101_1 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_101_2 e g v*e^2+6*SmallGap.ReducedLayers.high1_101_3 e g
    v*e^3+3*SmallGap.ReducedLayers.high1_011_2 e g v+3*SmallGap.ReducedLayers.high1_011_3 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_002_1 e g v+6*SmallGap.ReducedLayers.high1_002_2 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_002_3 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 85104 1) .e) (.add
    (.mul (.rational 748716 1) .f) (.add (.mul (.rational 920208 1) .g) (.mul (.rational 147936 1)
    .v)))) .e) (.add (.mul (.add (.mul (.rational 4048035 1) .f) (.add (.mul (.rational 6759162 1)
    .g) (.mul (.rational 1138197 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4082931 1) .g)
    (.mul (.rational 1320630 1) .v)) .g) (.mul (.rational 66600 1) (.pow .v 2))))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 14995179 1) .f) (.add (.mul (.rational 31576833 1) .g)
    (.mul (.rational 5408205 1) .v))) .f) (.add (.mul (.add (.mul (.rational 25607085 1) .g) (.mul
    (.rational 8521551 1) .v)) .g) (.mul (.rational 460095 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10034187 1) .g) (.mul (.rational 4638999 1) .v)) .g) (.mul (.rational
    529398 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    40211940 1) .f) (.add (.mul (.rational 102043050 1) .g) (.mul (.rational 17686686 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 103690344 1) .g) (.mul (.rational 35297355 1) .v)) .g)
    (.mul (.rational 1957833 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    54078006 1) .g) (.mul (.rational 26093055 1) .v)) .g) (.mul (.rational 3062130 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 15300936 1) .g) (.mul (.rational
    8812101 1) .v)) .g) (.mul (.rational 1596681 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 80462655 1) .f) (.add (.mul
    (.rational 238635555 1) .g) (.mul (.rational 42034896 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 291024963 1) .g) (.mul (.rational 101874528 1) .v)) .g) (.mul (.rational 5728602 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 189127749 1) .g) (.mul (.rational
    95739987 1) .v)) .g) (.mul (.rational 11407545 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 70731726 1) .g) (.mul (.rational 44158893 1) .v)) .g) (.mul (.rational
    8182698 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 15204084
    1) .g) (.mul (.rational 10416225 1) .v)) .g) (.mul (.rational 2535489 1) (.pow .v 2))) (.pow
    .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 122035824 1) .f) (.add (.mul (.rational 413811174 1) .g) (.mul (.rational 74676615
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 588128283 1) .g) (.mul (.rational 213699858 1)
    .v)) .g) (.mul (.rational 12183894 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 456906228 1) .g) (.mul (.rational 245115540 1) .v)) .g) (.mul (.rational 29756622
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 211856730 1) .g) (.mul
    (.rational 144796617 1) .v)) .g) (.mul (.rational 27668355 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 59846034 1) .g) (.mul (.rational 47169282 1) .v)) .g)
    (.mul (.rational 12224556 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9981891 1) .g) (.mul (.rational 8428113 1) .v)) .g) (.mul (.rational 2605641 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 141017811 1) .f) (.add (.mul (.rational 537775359 1) .g)
    (.mul (.rational 100327329 1) .v))) .f) (.add (.mul (.add (.mul (.rational 871989996 1) .g)
    (.mul (.rational 332173149 1) .v)) .g) (.mul (.rational 19343085 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 787135200 1) .g) (.mul (.rational 452096622 1) .v)) .g)
    (.mul (.rational 56543376 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    434626536 1) .g) (.mul (.rational 328181142 1) .v)) .g) (.mul (.rational 65695722 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 151517058 1) .g) (.mul
    (.rational 138192600 1) .v)) .g) (.mul (.rational 38855511 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 33047601 1) .g) (.mul (.rational 34497318 1) .v)) .g)
    (.mul (.rational 12515067 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4267251 1) .g) (.mul (.rational 5011437 1) .v)) .g) (.mul (.rational 2212695 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 123615252 1) .f) (.add (.mul (.rational
    523405026 1) .g) (.mul (.rational 101794968 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    952817115 1) .g) (.mul (.rational 383823321 1) .v)) .g) (.mul (.rational 23055885 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 978936408 1) .g) (.mul (.rational 606828474
    1) .v)) .g) (.mul (.rational 79170522 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 626112324 1) .g) (.mul (.rational 525332802 1) .v)) .g) (.mul (.rational 111762972
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 258937212 1) .g)
    (.mul (.rational 273402162 1) .v)) .g) (.mul (.rational 84392400 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 69401943 1) .g) (.mul (.rational 88657470 1)
    .v)) .g) (.mul (.rational 37386036 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11668866 1) .g) (.mul (.rational 17990631 1) .v)) .g) (.mul (.rational
    10138596 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1130874
    1) .g) (.mul (.rational 2215023 1) .v)) .g) (.mul (.rational 1717281 1) (.pow .v 2))) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 80975925 1) .f) (.add (.mul (.rational 376784835 1) .g)
    (.mul (.rational 76915386 1) .v))) .f) (.add (.mul (.add (.mul (.rational 760434633 1) .g)
    (.mul (.rational 326026854 1) .v)) .g) (.mul (.rational 20387748 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 875373951 1) .g) (.mul (.rational 588642162 1) .v)) .g)
    (.mul (.rational 80906529 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    635554194 1) .g) (.mul (.rational 593716830 1) .v)) .g) (.mul (.rational 135441303 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 303455688 1) .g) (.mul
    (.rational 369379086 1) .v)) .g) (.mul (.rational 125540010 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 96116484 1) .g) (.mul (.rational 148008330 1) .v))
    .g) (.mul (.rational 71412684 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19776876 1) .g) (.mul (.rational 38748075 1) .v)) .g) (.mul (.rational 26246052 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2485872 1) .g) (.mul
    (.rational 6541557 1) .v)) .g) (.mul (.rational 6378045 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 166062 1) .g) (.mul (.rational 668055 1) .v)) .g)
    (.mul (.rational 1001919 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 38470761 1) .f) (.add (.mul (.rational 195058416 1) .g) (.mul (.rational 42003486
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 432038226 1) .g) (.mul (.rational 197964150 1)
    .v)) .g) (.mul (.rational 12974028 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 550386600 1) .g) (.mul (.rational 402426054 1) .v)) .g) (.mul (.rational 58619946
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 446670246 1) .g) (.mul
    (.rational 464064744 1) .v)) .g) (.mul (.rational 113900340 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 241371390 1) .g) (.mul (.rational 336328845 1) .v))
    .g) (.mul (.rational 125469336 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 87942225 1) .g) (.mul (.rational 160567008 1) .v)) .g) (.mul (.rational
    87194910 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 21292896
    1) .g) (.mul (.rational 51450978 1) .v)) .g) (.mul (.rational 40308816 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3259944 1) .g) (.mul (.rational 10999659
    1) .v)) .g) (.mul (.rational 12676785 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 281076 1) .g) (.mul (.rational 1499499 1) .v)) .g) (.mul (.rational
    2674140 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10056 1)
    .g) (.mul (.rational 114549 1) .v)) .g) (.mul (.rational 350079 1) (.pow .v 2))) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12542118 1) .f) (.add (.mul
    (.rational 68802576 1) .g) (.mul (.rational 15680244 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 165843561 1) .g) (.mul (.rational 81390810 1) .v)) .g) (.mul (.rational 5612802 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 231467931 1) .g) (.mul (.rational
    184052796 1) .v)) .g) (.mul (.rational 28486860 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 207419652 1) .g) (.mul (.rational 238909242 1) .v)) .g) (.mul
    (.rational 63065772 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 124924758 1) .g) (.mul (.rational 197602353 1) .v)) .g) (.mul (.rational 80454612
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 51323505 1) .g)
    (.mul (.rational 109357935 1) .v)) .g) (.mul (.rational 65897589 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 14228859 1) .g) (.mul (.rational 41335074 1)
    .v)) .g) (.mul (.rational 36530916 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2548860 1) .g) (.mul (.rational 10636620 1) .v)) .g) (.mul (.rational
    14008026 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 265716 1)
    .g) (.mul (.rational 1794993 1) .v)) .g) (.mul (.rational 3680829 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 12144 1) .g) (.mul (.rational 178617 1) .v))
    .g) (.mul (.rational 627066 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 7764 1) .v) .g) (.mul (.rational 60339 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2513916 1) .f) (.add (.mul
    (.rational 14829192 1) .g) (.mul (.rational 3583512 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 38622897 1) .g) (.mul (.rational 20314998 1) .v)) .g) (.mul (.rational 1477008 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 58564074 1) .g) (.mul (.rational
    50576592 1) .v)) .g) (.mul (.rational 8320752 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 57367092 1) .g) (.mul (.rational 72941916 1) .v)) .g) (.mul (.rational
    20664228 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 38038344
    1) .g) (.mul (.rational 67718568 1) .v)) .g) (.mul (.rational 29914134 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 17350437 1) .g) (.mul (.rational 42532581
    1) .v)) .g) (.mul (.rational 28131999 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5396586 1) .g) (.mul (.rational 18455916 1) .v)) .g) (.mul (.rational
    18107838 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1099470
    1) .g) (.mul (.rational 5519106 1) .v)) .g) (.mul (.rational 8149728 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 132852 1) .g) (.mul (.rational 1098948 1)
    .v)) .g) (.mul (.rational 2547570 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7236 1) .g) (.mul (.rational 132207 1) .v)) .g) (.mul (.rational 529023 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 7272 1) .v) .g) (.mul
    (.rational 65250 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 3558 1) (.pow .v
    2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    233928 1) .f) (.add (.mul (.rational 1475838 1) .g) (.mul (.rational 378468 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 4127646 1) .g) (.mul (.rational 2325960 1) .v)) .g) (.mul
    (.rational 178416 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6750702 1)
    .g) (.mul (.rational 6318162 1) .v)) .g) (.mul (.rational 1104192 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7167384 1) .g) (.mul (.rational 10012932 1) .v)) .g)
    (.mul (.rational 3036702 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5178996 1) .g) (.mul (.rational 10293108 1) .v)) .g) (.mul (.rational 4909044 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2589942 1) .g) (.mul
    (.rational 7214454 1) .v)) .g) (.mul (.rational 5198208 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 889374 1) .g) (.mul (.rational 3519954 1) .v)) .g)
    (.mul (.rational 3796635 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 201732 1) .g) (.mul (.rational 1192032 1) .v)) .g) (.mul (.rational 1952967 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 27426 1) .g) (.mul
    (.rational 270828 1) .v)) .g) (.mul (.rational 703554 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1704 1) .g) (.mul (.rational 37566 1) .v)) .g) (.mul
    (.rational 170550 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2424
    1) .v) .g) (.mul (.rational 25119 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    1701 1) (.pow .v 2)) (.pow .g 10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2123

namespace FullHigh2124
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  15*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsHigh2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    24*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsHigh2.c410 e f g v*e*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.high0_100_0 e g v+48*SmallGap.ReducedLayers.high0_100_1 e
    g v*e^1+72*SmallGap.ReducedLayers.high0_100_2 e g v*e^2+6*SmallGap.ReducedLayers.high0_010_2 e
    g v+12*SmallGap.ReducedLayers.high0_010_3 e g v*e^1+6*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^2+12*SmallGap.ReducedLayers.high0_001_1 e g v+36*SmallGap.ReducedLayers.high0_001_2 e g
    v*e^1+36*SmallGap.ReducedLayers.high0_001_3 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_0 e g v+12*SmallGap.ReducedLayers.high1_200_1 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_200_2 e g v*e^2+3*SmallGap.ReducedLayers.high1_110_2 e g
    v+6*SmallGap.ReducedLayers.high1_110_3 e g v*e^1+3*SmallGap.ReducedLayers.high1_110_4 e g
    v*e^2+6*SmallGap.ReducedLayers.high1_101_1 e g v+18*SmallGap.ReducedLayers.high1_101_2 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_101_3 e g v*e^2+3*SmallGap.ReducedLayers.high1_011_3 e g
    v+3*SmallGap.ReducedLayers.high1_011_4 e g v*e^1+3*SmallGap.ReducedLayers.high1_002_2 e g
    v+6*SmallGap.ReducedLayers.high1_002_3 e g v*e^1+3*SmallGap.ReducedLayers.high1_002_4 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 66456 1) .e) (.add (.mul (.rational
    568662 1) .f) (.add (.mul (.rational 695112 1) .g) (.mul (.rational 113928 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 2972844 1) .f) (.add (.mul (.rational 4929564 1) .g) (.mul
    (.rational 840282 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2958672 1) .g) (.mul
    (.rational 952104 1) .v)) .g) (.mul (.rational 51000 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 10561038 1) .f) (.add (.mul (.rational 22051128 1) .g) (.mul
    (.rational 3800922 1) .v))) .f) (.add (.mul (.add (.mul (.rational 17736222 1) .g) (.mul
    (.rational 5817144 1) .v)) .g) (.mul (.rational 335289 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6904344 1) .g) (.mul (.rational 3025566 1) .v)) .g) (.mul (.rational
    374202 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    26871612 1) .f) (.add (.mul (.rational 67498392 1) .g) (.mul (.rational 11731308 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 67902090 1) .g) (.mul (.rational 22648728 1) .v)) .g) (.mul
    (.rational 1345449 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 35101956 1)
    .g) (.mul (.rational 15922182 1) .v)) .g) (.mul (.rational 2024949 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9870822 1) .g) (.mul (.rational 4950504 1) .v)) .g)
    (.mul (.rational 984435 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 50325108 1) .f) (.add (.mul (.rational 147472770 1)
    .g) (.mul (.rational 26038716 1) .v))) .f) (.add (.mul (.add (.mul (.rational 177698832 1) .g)
    (.mul (.rational 60898548 1) .v)) .g) (.mul (.rational 3676674 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 114201288 1) .g) (.mul (.rational 54331146 1) .v)) .g)
    (.mul (.rational 7012224 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    42327552 1) .g) (.mul (.rational 23095176 1) .v)) .g) (.mul (.rational 4668507 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9048150 1) .g) (.mul
    (.rational 4729194 1) .v)) .g) (.mul (.rational 1237722 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 70198350 1)
    .f) (.add (.mul (.rational 234750564 1) .g) (.mul (.rational 42618114 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 328964814 1) .g) (.mul (.rational 117589956 1) .v)) .g) (.mul
    (.rational 7230438 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 252127368 1)
    .g) (.mul (.rational 128167356 1) .v)) .g) (.mul (.rational 16914960 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 115523976 1) .g) (.mul (.rational 70207884 1) .v))
    .g) (.mul (.rational 14682195 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32341236 1) .g) (.mul (.rational 20291160 1) .v)) .g) (.mul (.rational 5723235 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5365488 1) .g) (.mul
    (.rational 2943312 1) .v)) .g) (.mul (.rational 916491 1) (.pow .v 2))) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    72919062 1) .f) (.add (.mul (.rational 273708792 1) .g) (.mul (.rational 51758142 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 436650156 1) .g) (.mul (.rational 165296052 1) .v)) .g)
    (.mul (.rational 10473405 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    387890046 1) .g) (.mul (.rational 214403712 1) .v)) .g) (.mul (.rational 29467518 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 211028172 1) .g) (.mul (.rational
    145613304 1) .v)) .g) (.mul (.rational 32405802 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 72657426 1) .g) (.mul (.rational 55728300 1) .v)) .g) (.mul
    (.rational 17627064 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15701526 1) .g) (.mul (.rational 12075012 1) .v)) .g) (.mul (.rational 4962462 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2014464 1) .g) (.mul
    (.rational 1415238 1) .v)) .g) (.mul (.rational 705144 1) (.pow .v 2))) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 55716684 1) .f) (.add (.mul (.rational 231749778 1) .g) (.mul (.rational
    46175328 1) .v))) .f) (.add (.mul (.add (.mul (.rational 414162174 1) .g) (.mul (.rational
    168141828 1) .v)) .g) (.mul (.rational 11140185 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 417696948 1) .g) (.mul (.rational 254303772 1) .v)) .g) (.mul (.rational
    37096707 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 262457046 1) .g)
    (.mul (.rational 207886488 1) .v)) .g) (.mul (.rational 50378682 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 106840752 1) .g) (.mul (.rational 100428540
    1) .v)) .g) (.mul (.rational 36271128 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 28267986 1) .g) (.mul (.rational 29625972 1) .v)) .g) (.mul (.rational
    15246666 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4704894
    1) .g) (.mul (.rational 5376054 1) .v)) .g) (.mul (.rational 3979992 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 451554 1) .g) (.mul (.rational 590832 1)
    .v)) .g) (.mul (.rational 685551 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    30450186 1) .f) (.add (.mul (.rational 138914808 1) .g) (.mul (.rational 29423424 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 274629348 1) .g) (.mul (.rational 120628428 1) .v)) .g)
    (.mul (.rational 8460684 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    309562824 1) .g) (.mul (.rational 209139684 1) .v)) .g) (.mul (.rational 32815260 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 220182540 1) .g) (.mul (.rational
    200816232 1) .v)) .g) (.mul (.rational 53597544 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 103155330 1) .g) (.mul (.rational 117861492 1) .v)) .g) (.mul
    (.rational 48555660 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32146320 1) .g) (.mul (.rational 44274792 1) .v)) .g) (.mul (.rational 27277398 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6527916 1) .g) (.mul
    (.rational 10907346 1) .v)) .g) (.mul (.rational 10159644 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 811188 1) .g) (.mul (.rational 1771272 1) .v)) .g)
    (.mul (.rational 2605425 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 53370 1) .g) (.mul (.rational 180414 1) .v)) .g) (.mul (.rational 446682 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11278458 1) .f) (.add (.mul
    (.rational 55959582 1) .g) (.mul (.rational 12675768 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 121155054 1) .g) (.mul (.rational 57867636 1) .v)) .g) (.mul (.rational 4329864 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 150775968 1) .g) (.mul (.rational
    113337804 1) .v)) .g) (.mul (.rational 19247796 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 119560992 1) .g) (.mul (.rational 125235432 1) .v)) .g) (.mul
    (.rational 36869094 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 63216300 1) .g) (.mul (.rational 86620302 1) .v)) .g) (.mul (.rational 40296264 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 22597800 1) .g) (.mul
    (.rational 39500208 1) .v)) .g) (.mul (.rational 28175682 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5388204 1) .g) (.mul (.rational 12227136 1) .v)) .g)
    (.mul (.rational 13416672 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 815280 1) .g) (.mul (.rational 2591292 1) .v)) .g) (.mul (.rational 4473735 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 69558 1) .g) (.mul
    (.rational 362718 1) .v)) .g) (.mul (.rational 1022577 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2448 1) .g) (.mul (.rational 29232 1) .v)) .g) (.mul
    (.rational 145485 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 2539512 1) .f) (.add (.mul (.rational 13607190 1) .g) (.mul (.rational
    3307716 1) .v))) .f) (.add (.mul (.add (.mul (.rational 31996692 1) .g) (.mul (.rational
    16651872 1) .v)) .g) (.mul (.rational 1333692 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 43531770 1) .g) (.mul (.rational 36380292 1) .v)) .g) (.mul (.rational
    6693192 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 38027988 1) .g)
    (.mul (.rational 45477300 1) .v)) .g) (.mul (.rational 14710896 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 22357302 1) .g) (.mul (.rational 36191418 1) .v))
    .g) (.mul (.rational 18784620 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8992710 1) .g) (.mul (.rational 19358436 1) .v)) .g) (.mul (.rational 15617967 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2452116 1) .g) (.mul
    (.rational 7171260 1) .v)) .g) (.mul (.rational 8967438 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 434472 1) .g) (.mul (.rational 1855404 1) .v)) .g)
    (.mul (.rational 3643410 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 45054 1) .g) (.mul (.rational 325326 1) .v)) .g) (.mul (.rational 1032804 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2058 1) .g) (.mul
    (.rational 34644 1) .v)) .g) (.mul (.rational 191229 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 1644 1) .v) .g) (.mul (.rational 19962 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 262764 1) .f) (.add
    (.mul (.rational 1511244 1) .g) (.mul (.rational 394848 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 3832776 1) .g) (.mul (.rational 2173068 1) .v)) .g) (.mul (.rational 186408 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5654580 1) .g) (.mul (.rational
    5238552 1) .v)) .g) (.mul (.rational 1042092 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5389548 1) .g) (.mul (.rational 7304280 1) .v)) .g) (.mul (.rational 2581704
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3482184 1) .g)
    (.mul (.rational 6563652 1) .v)) .g) (.mul (.rational 3761784 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1552878 1) .g) (.mul (.rational 4016040 1) .v))
    .g) (.mul (.rational 3609825 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 474858 1) .g) (.mul (.rational 1723044 1) .v)) .g) (.mul (.rational 2414745 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 95838 1) .g) (.mul
    (.rational 522168 1) .v)) .g) (.mul (.rational 1153038 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11574 1) .g) (.mul (.rational 108684 1) .v)) .g)
    (.mul (.rational 389724 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 636 1) .g) (.mul (.rational 14076 1) .v)) .g) (.mul (.rational 88779 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 852 1) .v) .g) (.mul (.rational
    12159 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 750 1) (.pow .v 2)) (.pow .g
    10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2124

namespace FullHigh2125
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  24*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.high0_100_1 e g v+48*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^1+6*SmallGap.ReducedLayers.high0_010_3 e g v+12*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^1+12*SmallGap.ReducedLayers.high0_001_2 e g v+36*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_1 e g v+12*SmallGap.ReducedLayers.high1_200_2 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_110_3 e g v+6*SmallGap.ReducedLayers.high1_110_4 e g
    v*e^1+6*SmallGap.ReducedLayers.high1_101_2 e g v+18*SmallGap.ReducedLayers.high1_101_3 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_011_4 e g v+3*SmallGap.ReducedLayers.high1_011_5 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_002_3 e g v+6*SmallGap.ReducedLayers.high1_002_4 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 27792 1) .e) (.add (.mul (.rational 233082 1)
    .f) (.add (.mul (.rational 283806 1) .g) (.mul (.rational 46980 1) .v)))) .e) (.add (.mul
    (.add (.mul (.rational 1186146 1) .f) (.add (.mul (.rational 1956198 1) .g) (.mul (.rational
    334728 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1169856 1) .g) (.mul (.rational 370296
    1) .v)) .g) (.mul (.rational 20940 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 4062816 1) .f) (.add (.mul (.rational 8421762 1) .g) (.mul (.rational 1450908 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 6736332 1) .g) (.mul (.rational 2154372 1) .v))
    .g) (.mul (.rational 132246 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2616594 1) .g) (.mul (.rational 1066812 1) .v)) .g) (.mul (.rational 143244 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9841554 1) .f) (.add
    (.mul (.rational 24491064 1) .g) (.mul (.rational 4248612 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 24446604 1) .g) (.mul (.rational 7918560 1) .v)) .g) (.mul (.rational 504648 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 12577608 1) .g) (.mul (.rational
    5265288 1) .v)) .g) (.mul (.rational 730884 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3536874 1) .g) (.mul (.rational 1477272 1) .v)) .g) (.mul (.rational 329928
    1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 17257284 1) .f) (.add (.mul (.rational 49982538 1) .g) (.mul (.rational
    8838360 1) .v))) .f) (.add (.mul (.add (.mul (.rational 59606880 1) .g) (.mul (.rational
    19895460 1) .v)) .g) (.mul (.rational 1297812 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 38013156 1) .g) (.mul (.rational 16745928 1) .v)) .g) (.mul (.rational
    2371452 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 14039976 1) .g)
    (.mul (.rational 6427296 1) .v)) .g) (.mul (.rational 1459824 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3007398 1) .g) (.mul (.rational 1047264 1) .v))
    .g) (.mul (.rational 316452 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22043700 1) .f) (.add (.mul (.rational
    72667404 1) .g) (.mul (.rational 13332168 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    100487898 1) .g) (.mul (.rational 35371224 1) .v)) .g) (.mul (.rational 2376288 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 76166208 1) .g) (.mul (.rational 36426372
    1) .v)) .g) (.mul (.rational 5339496 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34637052 1) .g) (.mul (.rational 18199680 1) .v)) .g) (.mul (.rational 4338336 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9670008 1) .g) (.mul
    (.rational 4399776 1) .v)) .g) (.mul (.rational 1476276 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1607634 1) .g) (.mul (.rational 384144 1) .v)) .g)
    (.mul (.rational 146088 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20337408 1) .f) (.add (.mul
    (.rational 75033972 1) .g) (.mul (.rational 14545584 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 117730512 1) .g) (.mul (.rational 44686440 1) .v)) .g) (.mul (.rational 3150984 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 103024962 1) .g) (.mul (.rational
    54978288 1) .v)) .g) (.mul (.rational 8589312 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 55367880 1) .g) (.mul (.rational 34540068 1) .v)) .g) (.mul (.rational
    9048564 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 18902868
    1) .g) (.mul (.rational 11630784 1) .v)) .g) (.mul (.rational 4625052 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4065312 1) .g) (.mul (.rational 1963392
    1) .v)) .g) (.mul (.rational 1184220 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 519414 1) .g) (.mul (.rational 111432 1) .v)) .g) (.mul (.rational
    147132 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13206024 1) .f) (.add (.mul
    (.rational 53820720 1) .g) (.mul (.rational 11192256 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 94245840 1) .g) (.mul (.rational 39240000 1) .v)) .g) (.mul (.rational 2966688 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 93212760 1) .g) (.mul (.rational
    56527440 1) .v)) .g) (.mul (.rational 9673992 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 57539646 1) .g) (.mul (.rational 43290912 1) .v)) .g) (.mul (.rational
    12867984 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 23069352
    1) .g) (.mul (.rational 19089132 1) .v)) .g) (.mul (.rational 9134640 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6023460 1) .g) (.mul (.rational 4933440
    1) .v)) .g) (.mul (.rational 3878328 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 987600 1) .g) (.mul (.rational 736488 1) .v)) .g) (.mul (.rational
    1082244 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 92190 1)
    .g) (.mul (.rational 60360 1) .v)) .g) (.mul (.rational 213288 1) (.pow .v 2))) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 5725296 1) .f) (.add (.mul (.rational 25505784 1) .g) (.mul
    (.rational 5749200 1) .v))) .f) (.add (.mul (.add (.mul (.rational 49203792 1) .g) (.mul
    (.rational 22706784 1) .v)) .g) (.mul (.rational 1869192 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 54112128 1) .g) (.mul (.rational 37606656 1) .v)) .g) (.mul
    (.rational 7162488 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 37570788
    1) .g) (.mul (.rational 34117440 1) .v)) .g) (.mul (.rational 11630520 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17197878 1) .g) (.mul (.rational 18673080
    1) .v)) .g) (.mul (.rational 10630656 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5235648 1) .g) (.mul (.rational 6466668 1) .v)) .g) (.mul (.rational
    6197796 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1033596 1)
    .g) (.mul (.rational 1469016 1) .v)) .g) (.mul (.rational 2492124 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 122646 1) .g) (.mul (.rational 225120 1)
    .v)) .g) (.mul (.rational 709896 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7284 1) .g) (.mul (.rational 22236 1) .v)) .g) (.mul (.rational 133932 1)
    (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1487160 1) .f) (.add
    (.mul (.rational 7180488 1) .g) (.mul (.rational 1763856 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 15101856 1) .g) (.mul (.rational 7756560 1) .v)) .g) (.mul (.rational 699840 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 18231480 1) .g) (.mul (.rational
    14527728 1) .v)) .g) (.mul (.rational 3090960 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14009940 1) .g) (.mul (.rational 15225840 1) .v)) .g) (.mul (.rational
    5930352 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7170900 1)
    .g) (.mul (.rational 9914520 1) .v)) .g) (.mul (.rational 6590808 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2474766 1) .g) (.mul (.rational 4247160 1)
    .v)) .g) (.mul (.rational 4796208 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 564888 1) .g) (.mul (.rational 1247676 1) .v)) .g) (.mul (.rational 2440824
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 79938 1) .g) (.mul
    (.rational 256944 1) .v)) .g) (.mul (.rational 884208 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5994 1) .g) (.mul (.rational 35496 1) .v)) .g) (.mul
    (.rational 218436 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    150 1) .g) (.mul (.rational 2712 1) .v)) .g) (.mul (.rational 32796 1) (.pow .v 2))) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 174960 1) .f) (.add (.mul
    (.rational 909144 1) .g) (.mul (.rational 243648 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2066904 1) .g) (.mul (.rational 1180656 1) .v)) .g) (.mul (.rational 116640 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2710800 1) .g) (.mul (.rational
    2464992 1) .v)) .g) (.mul (.rational 583200 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2276280 1) .g) (.mul (.rational 2922480 1) .v)) .g) (.mul (.rational 1286568
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1282116 1) .g)
    (.mul (.rational 2192352 1) .v)) .g) (.mul (.rational 1669752 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 491328 1) .g) (.mul (.rational 1104168 1) .v))
    .g) (.mul (.rational 1435776 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 126102 1) .g) (.mul (.rational 388176 1) .v)) .g) (.mul (.rational 868032 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 20448 1) .g) (.mul
    (.rational 96636 1) .v)) .g) (.mul (.rational 375108 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1818 1) .g) (.mul (.rational 16308 1) .v)) .g) (.mul
    (.rational 112572 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    60 1) .g) (.mul (.rational 1596 1) .v)) .g) (.mul (.rational 21654 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 60 1) .v) .g) (.mul (.rational 2280 1) (.pow .v
    2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2125

namespace FullHigh2126
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  30*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.high0_100_2 e g v+6*SmallGap.ReducedLayers.high0_010_4 e
    g v+12*SmallGap.ReducedLayers.high0_001_3 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_2 e g v+3*SmallGap.ReducedLayers.high1_110_4 e g
    v+6*SmallGap.ReducedLayers.high1_101_3 e g v+3*SmallGap.ReducedLayers.high1_011_5 e g
    v+3*SmallGap.ReducedLayers.high1_002_4 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 4860 1) .e) (.add (.mul (.rational 40230 1) .f) (.add (.mul
    (.rational 48870 1) .g) (.mul (.rational 8100 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    200610 1) .f) (.add (.mul (.rational 329580 1) .g) (.mul (.rational 56160 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 197010 1) .g) (.mul (.rational 60660 1) .v)) .g) (.mul (.rational
    3600 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 666360 1) .f) (.add
    (.mul (.rational 1373400 1) .g) (.mul (.rational 234900 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1096200 1) .g) (.mul (.rational 338220 1) .v)) .g) (.mul (.rational 22050 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 427320 1) .g) (.mul (.rational 159120 1)
    .v)) .g) (.mul (.rational 23220 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1543590 1) .f) (.add (.mul (.rational 3810600 1) .g) (.mul (.rational
    657180 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3787560 1) .g) (.mul (.rational 1181700
    1) .v)) .g) (.mul (.rational 80820 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1951740 1) .g) (.mul (.rational 741420 1) .v)) .g) (.mul (.rational 112950 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 554130 1) .g) (.mul (.rational
    184320 1) .v)) .g) (.mul (.rational 47520 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2539620 1) .f) (.add (.mul
    (.rational 7277040 1) .g) (.mul (.rational 1290600 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 8619480 1) .g) (.mul (.rational 2797200 1) .v)) .g) (.mul (.rational 198000 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5492340 1) .g) (.mul (.rational
    2221740 1) .v)) .g) (.mul (.rational 348840 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2043540 1) .g) (.mul (.rational 762300 1) .v)) .g) (.mul (.rational 201150 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 445320 1) .g) (.mul
    (.rational 86760 1) .v)) .g) (.mul (.rational 35820 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2963520 1) .f)
    (.add (.mul (.rational 9634140 1) .g) (.mul (.rational 1804680 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 13191930 1) .g) (.mul (.rational 4614840 1) .v)) .g) (.mul (.rational 342720
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9961920 1) .g) (.mul (.rational
    4515300 1) .v)) .g) (.mul (.rational 749880 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4551480 1) .g) (.mul (.rational 2071980 1) .v)) .g) (.mul (.rational 588420
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1289700 1) .g)
    (.mul (.rational 410580 1) .v)) .g) (.mul (.rational 189450 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 219870 1) .g) (.mul (.rational 5400 1) .v)) .g) (.mul
    (.rational 15840 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2400840 1) .f) (.add (.mul (.rational
    8702100 1) .g) (.mul (.rational 1767960 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    13470300 1) .g) (.mul (.rational 5248800 1) .v)) .g) (.mul (.rational 421740 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11702880 1) .g) (.mul (.rational 6194880 1) .v))
    .g) (.mul (.rational 1138320 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6298200 1) .g) (.mul (.rational 3684240 1) .v)) .g) (.mul (.rational 1202760 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2176020 1) .g) (.mul
    (.rational 1141380 1) .v)) .g) (.mul (.rational 639360 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 478620 1) .g) (.mul (.rational 162180 1) .v)) .g)
    (.mul (.rational 189450 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 63000 1) .g) (.mul (.rational 2160 1) .v)) .g) (.mul (.rational 35820 1) (.pow .v
    2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1284660 1) .f) (.add (.mul (.rational 5120280 1) .g)
    (.mul (.rational 1152360 1) .v))) .f) (.add (.mul (.add (.mul (.rational 8806320 1) .g) (.mul
    (.rational 3912840 1) .v)) .g) (.mul (.rational 351000 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8609940 1) .g) (.mul (.rational 5452200 1) .v)) .g) (.mul (.rational
    1150740 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5300550 1) .g)
    (.mul (.rational 4043520 1) .v)) .g) (.mul (.rational 1575360 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2142360 1) .g) (.mul (.rational 1743660 1) .v))
    .g) (.mul (.rational 1202760 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 569880 1) .g) (.mul (.rational 457380 1) .v)) .g) (.mul (.rational 588420 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 95760 1) .g) (.mul
    (.rational 76860 1) .v)) .g) (.mul (.rational 201150 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9090 1) .g) (.mul (.rational 8640 1) .v)) .g) (.mul
    (.rational 47520 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 408240 1) .f)
    (.add (.mul (.rational 1769040 1) .g) (.mul (.rational 447120 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 3333960 1) .g) (.mul (.rational 1710720 1) .v)) .g) (.mul (.rational 174960
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3605580 1) .g) (.mul (.rational
    2752920 1) .v)) .g) (.mul (.rational 680400 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2484000 1) .g) (.mul (.rational 2449440 1) .v)) .g) (.mul (.rational 1150740
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1140480 1) .g)
    (.mul (.rational 1346760 1) .v)) .g) (.mul (.rational 1138320 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 351720 1) .g) (.mul (.rational 493920 1) .v)) .g)
    (.mul (.rational 749880 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 70560 1) .g) (.mul (.rational 129420 1) .v)) .g) (.mul (.rational 348840 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8370 1) .g) (.mul
    (.rational 24660 1) .v)) .g) (.mul (.rational 112950 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 450 1) .g) (.mul (.rational 3060 1) .v)) .g) (.mul
    (.rational 23220 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 58320
    1) .f) (.add (.mul (.rational 272160 1) .g) (.mul (.rational 77760 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 555660 1) .g) (.mul (.rational 330480 1) .v)) .g) (.mul (.rational
    38880 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 655560 1) .g) (.mul
    (.rational 601560 1) .v)) .g) (.mul (.rational 174960 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 496800 1) .g) (.mul (.rational 621000 1) .v)) .g) (.mul
    (.rational 351000 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    253440 1) .g) (.mul (.rational 409680 1) .v)) .g) (.mul (.rational 421740 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 87930 1) .g) (.mul (.rational
    186840 1) .v)) .g) (.mul (.rational 342720 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 20160 1) .g) (.mul (.rational 62100 1) .v)) .g) (.mul (.rational
    198000 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2790 1) .g)
    (.mul (.rational 14940 1) .v)) .g) (.mul (.rational 80820 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 180 1) .g) (.mul (.rational 2340 1) .v)) .g) (.mul
    (.rational 22050 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.mul (.rational 180 1)
    .v) .g) (.mul (.rational 3600 1) (.pow .v 2))) (.pow .g 8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2126

end
end SPR.N6.Tail.CoreEndpoint
