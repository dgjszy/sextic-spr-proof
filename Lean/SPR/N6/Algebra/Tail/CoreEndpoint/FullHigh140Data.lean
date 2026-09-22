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

namespace FullHigh1400
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    1*SmallGap.PolarCoefficientsHigh0.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsHigh0.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh0.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e^4*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_100_0 e g v*e^8+4*SmallGap.ReducedLayers.high0_010_0
    e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_110_0 e g v*e^6+3*SmallGap.ReducedLayers.high1_020_0 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 656 1) .e) (.add (.mul (.rational
    6723 1) .f) (.add (.mul (.rational 8512 1) .g) (.mul (.rational 1228 1) .v)))) .e) (.add (.mul
    (.add (.mul (.rational 42992 1) .f) (.add (.mul (.rational 74260 1) .g) (.mul (.rational 11798
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 45910 1) .g) (.mul (.rational 15212 1) .v))
    .g) (.mul (.rational 580 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    192584 1) .f) (.add (.mul (.rational 421039 1) .g) (.mul (.rational 70734 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 351022 1) .g) (.mul (.rational 125074 1) .v)) .g) (.mul
    (.rational 5255 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 138905 1) .g)
    (.mul (.rational 78774 1) .v)) .g) (.mul (.rational 7002 1) (.pow .v 2))) .g))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 642861 1) .f) (.add (.mul (.rational
    1699485 1) .g) (.mul (.rational 296736 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1782299
    1) .g) (.mul (.rational 666966 1) .v)) .g) (.mul (.rational 29636 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 943923 1) .g) (.mul (.rational 570106 1) .v)) .g) (.mul
    (.rational 54438 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 264432 1)
    .g) (.mul (.rational 230578 1) .v)) .g) (.mul (.rational 35590 1) (.pow .v 2))) (.pow .g 2))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1660184 1) .f)
    (.add (.mul (.rational 5146387 1) .g) (.mul (.rational 925598 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 6501174 1) .g) (.mul (.rational 2524788 1) .v)) .g) (.mul (.rational 116552
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4310958 1) .g) (.mul (.rational
    2728142 1) .v)) .g) (.mul (.rational 273176 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1607466 1) .g) (.mul (.rational 1486354 1) .v)) .g) (.mul (.rational 243668
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 333335 1) .g)
    (.mul (.rational 427836 1) .v)) .g) (.mul (.rational 102946 1) (.pow .v 2))) (.pow .g 3))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3397923
    1) .f) (.add (.mul (.rational 12081123 1) .g) (.mul (.rational 2226478 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 17848000 1) .g) (.mul (.rational 7143564 1) .v)) .g) (.mul
    (.rational 339388 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 14210406 1)
    .g) (.mul (.rational 9335048 1) .v)) .g) (.mul (.rational 968201 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6609271 1) .g) (.mul (.rational 6399854 1) .v)) .g)
    (.mul (.rational 1095841 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1816323 1) .g) (.mul (.rational 2466688 1) .v)) .g) (.mul (.rational 626633 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 282922 1) .g) (.mul
    (.rational 529134 1) .v)) .g) (.mul (.rational 189861 1) (.pow .v 2))) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5599282 1) .f) (.add (.mul (.rational 22456577 1) .g) (.mul (.rational 4226508 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 37977110 1) .g) (.mul (.rational 15595358 1) .v)) .g) (.mul
    (.rational 758213 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 35278031 1)
    .g) (.mul (.rational 23913194 1) .v)) .g) (.mul (.rational 2550226 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 19645412 1) .g) (.mul (.rational 19764184 1) .v)) .g)
    (.mul (.rational 3500746 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6711913 1) .g) (.mul (.rational 9546510 1) .v)) .g) (.mul (.rational 2527528 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1380350 1) .g) (.mul
    (.rational 2727868 1) .v)) .g) (.mul (.rational 1029383 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 159975 1) .g) (.mul (.rational 443012 1) .v)) .g)
    (.mul (.rational 234428 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7502781 1) .f)
    (.add (.mul (.rational 33505121 1) .g) (.mul (.rational 6424860 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 63818753 1) .g) (.mul (.rational 26805130 1) .v)) .g) (.mul (.rational
    1328560 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 67737629 1) .g) (.mul
    (.rational 47183420 1) .v)) .g) (.mul (.rational 5148978 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 43913169 1) .g) (.mul (.rational 45651372 1) .v)) .g) (.mul
    (.rational 8312190 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    17916457 1) .g) (.mul (.rational 26503120 1) .v)) .g) (.mul (.rational 7253413 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4566789 1) .g) (.mul
    (.rational 9454252 1) .v)) .g) (.mul (.rational 3712297 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 696337 1) .g) (.mul (.rational 2035454 1) .v)) .g)
    (.mul (.rational 1129251 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 57700 1) .g) (.mul (.rational 248094 1) .v)) .g) (.mul (.rational 196487 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8219354 1) .f) (.add (.mul (.rational
    40446835 1) .g) (.mul (.rational 7888738 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    85678868 1) .g) (.mul (.rational 36723192 1) .v)) .g) (.mul (.rational 1850486 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 102276416 1) .g) (.mul (.rational 72985352
    1) .v)) .g) (.mul (.rational 8121806 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 75625114 1) .g) (.mul (.rational 80916436 1) .v)) .g) (.mul (.rational 15078265 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 35842676 1) .g) (.mul
    (.rational 54863756 1) .v)) .g) (.mul (.rational 15433100 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10882310 1) .g) (.mul (.rational 23452804 1) .v)) .g)
    (.mul (.rational 9513124 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2050384 1) .g) (.mul (.rational 6279766 1) .v)) .g) (.mul (.rational 3619730 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 222743 1) .g) (.mul
    (.rational 1009986 1) .v)) .g) (.mul (.rational 836233 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11977 1) .g) (.mul (.rational 88848 1) .v)) .g) (.mul
    (.rational 110250 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    7373275 1) .f) (.add (.mul (.rational 39642811 1) .g) (.mul (.rational 7853846 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 92445078 1) .g) (.mul (.rational 40361816 1) .v)) .g) (.mul
    (.rational 2063424 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 122578676 1)
    .g) (.mul (.rational 89401994 1) .v)) .g) (.mul (.rational 10118097 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 101785812 1) .g) (.mul (.rational 111746628 1) .v))
    .g) (.mul (.rational 21239511 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 54924996 1) .g) (.mul (.rational 86656752 1) .v)) .g) (.mul (.rational 24948822 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 19329716 1) .g) (.mul
    (.rational 43159116 1) .v)) .g) (.mul (.rational 17988894 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4326784 1) .g) (.mul (.rational 13806198 1) .v)) .g)
    (.mul (.rational 8214192 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 578993 1) .g) (.mul (.rational 2751022 1) .v)) .g) (.mul (.rational 2362646 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 40661 1) .g) (.mul
    (.rational 317814 1) .v)) .g) (.mul (.rational 411143 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1084 1) .g) (.mul (.rational 18326 1) .v)) .g) (.mul
    (.rational 39511 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 5404802 1) .f) (.add (.mul (.rational 31525195 1) .g) (.mul (.rational 6337292 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 80256958 1) .g) (.mul (.rational 35641670 1) .v))
    .g) (.mul (.rational 1845481 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    117033807 1) .g) (.mul (.rational 87072612 1) .v)) .g) (.mul (.rational 10000892 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 107815162 1) .g) (.mul (.rational
    121150938 1) .v)) .g) (.mul (.rational 23424317 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 65236050 1) .g) (.mul (.rational 105757176 1) .v)) .g) (.mul
    (.rational 31058736 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26090596 1) .g) (.mul (.rational 60122832 1) .v)) .g) (.mul (.rational 25643562 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6754106 1) .g) (.mul
    (.rational 22351378 1) .v)) .g) (.mul (.rational 13657350 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1070746 1) .g) (.mul (.rational 5303750 1) .v)) .g)
    (.mul (.rational 4696581 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 92306 1) .g) (.mul (.rational 756044 1) .v)) .g) (.mul (.rational 1012696 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3200 1) .g) (.mul
    (.rational 56958 1) .v)) .g) (.mul (.rational 127678 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 1646 1) .v) .g) (.mul (.rational 8126 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3218063 1) .f) (.add
    (.mul (.rational 20241439 1) .g) (.mul (.rational 4124952 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 55866445 1) .g) (.mul (.rational 25204570 1) .v)) .g) (.mul (.rational 1319876 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 88864061 1) .g) (.mul (.rational
    67333410 1) .v)) .g) (.mul (.rational 7834386 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 89938394 1) .g) (.mul (.rational 103225962 1) .v)) .g) (.mul (.rational
    20257266 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 60296462
    1) .g) (.mul (.rational 100177990 1) .v)) .g) (.mul (.rational 29927286 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 26997182 1) .g) (.mul (.rational 64002960
    1) .v)) .g) (.mul (.rational 27840426 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7926430 1) .g) (.mul (.rational 27102166 1) .v)) .g) (.mul (.rational
    16938264 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1449644
    1) .g) (.mul (.rational 7453618 1) .v)) .g) (.mul (.rational 6772884 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 147592 1) .g) (.mul (.rational 1260902 1)
    .v)) .g) (.mul (.rational 1739129 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6256 1) .g) (.mul (.rational 116690 1) .v)) .g) (.mul (.rational 270313 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 4380 1) .v) .g) (.mul
    (.rational 22423 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 723 1) (.pow .v 2))
    (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1539960 1) .f) (.add (.mul (.rational 10391985 1) .g) (.mul (.rational 2145138 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 30913010 1) .g) (.mul (.rational 14153028 1) .v)) .g) (.mul
    (.rational 748580 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 53272758 1)
    .g) (.mul (.rational 41051278 1) .v)) .g) (.mul (.rational 4830780 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 58762134 1) .g) (.mul (.rational 68762602 1) .v)) .g)
    (.mul (.rational 13668982 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 43233783 1) .g) (.mul (.rational 73448620 1) .v)) .g) (.mul (.rational 22266594 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 21418652 1) .g) (.mul
    (.rational 52096762 1) .v)) .g) (.mul (.rational 23044294 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7027916 1) .g) (.mul (.rational 24747786 1) .v)) .g)
    (.mul (.rational 15765402 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1454554 1) .g) (.mul (.rational 7734566 1) .v)) .g) (.mul (.rational 7182841 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 170366 1) .g) (.mul
    (.rational 1511958 1) .v)) .g) (.mul (.rational 2137474 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8498 1) .g) (.mul (.rational 165410 1) .v)) .g) (.mul
    (.rational 393944 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 7588
    1) .v) .g) (.mul (.rational 40062 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    1671 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 582545 1) .f) (.add (.mul (.rational 4198945 1) .g) (.mul (.rational
    877298 1) .v))) .f) (.add (.mul (.add (.mul (.rational 13394844 1) .g) (.mul (.rational
    6217116 1) .v)) .g) (.mul (.rational 331724 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 24865398 1) .g) (.mul (.rational 19461236 1) .v)) .g) (.mul (.rational
    2312723 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 29694087 1) .g)
    (.mul (.rational 35369158 1) .v)) .g) (.mul (.rational 7109015 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 23788931 1) .g) (.mul (.rational 41241768 1) .v))
    .g) (.mul (.rational 12659965 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12918590 1) .g) (.mul (.rational 32159550 1) .v)) .g) (.mul (.rational 14428097 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4683144 1) .g) (.mul
    (.rational 16934816 1) .v)) .g) (.mul (.rational 10962838 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1081118 1) .g) (.mul (.rational 5925826 1) .v)) .g)
    (.mul (.rational 5604288 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 142942 1) .g) (.mul (.rational 1313038 1) .v)) .g) (.mul (.rational 1894925 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8176 1) .g) (.mul
    (.rational 165438 1) .v)) .g) (.mul (.rational 403265 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 8932 1) .v) .g) (.mul (.rational 48397 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 2459 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 169872 1) .f) (.add (.mul
    (.rational 1302825 1) .g) (.mul (.rational 275308 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 4437754 1) .g) (.mul (.rational 2086098 1) .v)) .g) (.mul (.rational 112147 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 8830593 1) .g) (.mul (.rational
    7011002 1) .v)) .g) (.mul (.rational 840146 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11353096 1) .g) (.mul (.rational 13743524 1) .v)) .g) (.mul (.rational
    2788168 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9839661 1)
    .g) (.mul (.rational 17374966 1) .v)) .g) (.mul (.rational 5389376 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5812670 1) .g) (.mul (.rational 14776212 1)
    .v)) .g) (.mul (.rational 6707247 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2306799 1) .g) (.mul (.rational 8543438 1) .v)) .g) (.mul (.rational 5604162
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 587348 1) .g)
    (.mul (.rational 3308452 1) .v)) .g) (.mul (.rational 3176031 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 86426 1) .g) (.mul (.rational 818974 1) .v)) .g)
    (.mul (.rational 1202068 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5564 1) .g) (.mul (.rational 116626 1) .v)) .g) (.mul (.rational 289766 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 7224 1) .v) .g) (.mul (.rational
    39992 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 2385 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    36727 1) .f) (.add (.mul (.rational 298709 1) .g) (.mul (.rational 63792 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 1082387 1) .g) (.mul (.rational 514802 1) .v)) .g) (.mul
    (.rational 27848 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2299091 1) .g)
    (.mul (.rational 1849352 1) .v)) .g) (.mul (.rational 223126 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3167141 1) .g) (.mul (.rational 3890584 1) .v)) .g) (.mul
    (.rational 795226 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2953477 1) .g) (.mul (.rational 5302188 1) .v)) .g) (.mul (.rational 1658353 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1886029 1) .g) (.mul (.rational
    4885108 1) .v)) .g) (.mul (.rational 2238101 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 813337 1) .g) (.mul (.rational 3077252 1) .v)) .g) (.mul
    (.rational 2039669 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    226376 1) .g) (.mul (.rational 1306632 1) .v)) .g) (.mul (.rational 1269161 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 36666 1) .g) (.mul (.rational
    357284 1) .v)) .g) (.mul (.rational 531451 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2620 1) .g) (.mul (.rational 56698 1) .v)) .g) (.mul (.rational
    143023 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3956 1) .v) .g)
    (.mul (.rational 22281 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1521 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 5523 1) .f) (.add (.mul (.rational 47497 1) .g) (.mul (.rational 10242 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 182495 1) .g) (.mul (.rational 87724 1) .v)) .g)
    (.mul (.rational 4768 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 412292 1)
    .g) (.mul (.rational 335552 1) .v)) .g) (.mul (.rational 40692 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 606102 1) .g) (.mul (.rational 754320 1) .v)) .g) (.mul
    (.rational 155037 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    605374 1) .g) (.mul (.rational 1102780 1) .v)) .g) (.mul (.rational 347008 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 415702 1) .g) (.mul (.rational
    1094632 1) .v)) .g) (.mul (.rational 504868 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 193620 1) .g) (.mul (.rational 746424 1) .v)) .g) (.mul
    (.rational 498456 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    58487 1) .g) (.mul (.rational 344912 1) .v)) .g) (.mul (.rational 337862 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 10337 1) .g) (.mul (.rational
    103250 1) .v)) .g) (.mul (.rational 155072 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 811 1) .g) (.mul (.rational 18060 1) .v)) .g) (.mul (.rational
    46068 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1400 1) .v) .g)
    (.mul (.rational 7988 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 613 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 513 1) .f) (.add (.mul (.rational 4653 1) .g) (.mul (.rational 1012 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 18904 1) .g) (.mul (.rational 9172 1) .v)) .g) (.mul
    (.rational 500 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 45284 1) .g)
    (.mul (.rational 37232 1) .v)) .g) (.mul (.rational 4529 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 70798 1) .g) (.mul (.rational 89104 1) .v)) .g) (.mul (.rational
    18373 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 75446 1) .g)
    (.mul (.rational 139160 1) .v)) .g) (.mul (.rational 43940 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 55468 1) .g) (.mul (.rational 148120 1) .v)) .g)
    (.mul (.rational 68572 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27764 1) .g) (.mul (.rational 108752 1) .v)) .g) (.mul (.rational 72926 1) (.pow .v
    2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9049 1) .g) (.mul (.rational
    54352 1) .v)) .g) (.mul (.rational 53494 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1733 1) .g) (.mul (.rational 17684 1) .v)) .g) (.mul (.rational 26708
    1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 148 1) .g) (.mul
    (.rational 3380 1) .v)) .g) (.mul (.rational 8680 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 288 1) .v) .g) (.mul (.rational 1657 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 141 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 6))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22 1) .f) (.add (.mul
    (.rational 210 1) .g) (.mul (.rational 46 1) .v))) .f) (.add (.mul (.add (.mul (.rational 900
    1) .g) (.mul (.rational 440 1) .v)) .g) (.mul (.rational 24 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2280 1) .g) (.mul (.rational 1890 1) .v)) .g) (.mul (.rational
    230 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3780 1) .g) (.mul
    (.rational 4800 1) .v)) .g) (.mul (.rational 990 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4284 1) .g) (.mul (.rational 7980 1) .v)) .g) (.mul
    (.rational 2520 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3360 1) .g) (.mul (.rational 9072 1) .v)) .g) (.mul (.rational 4200 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1800 1) .g) (.mul (.rational 7140 1) .v))
    .g) (.mul (.rational 4788 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 630 1) .g) (.mul (.rational 3840 1) .v)) .g) (.mul (.rational 3780 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 130 1) .g) (.mul (.rational 1350 1)
    .v)) .g) (.mul (.rational 2040 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12 1) .g) (.mul (.rational 280 1) .v)) .g) (.mul (.rational 720 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 26 1) .v) .g) (.mul (.rational 150
    1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 14 1) (.pow .v 2)) (.pow .g 10)))
    (.pow .f 7))) .e)

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1400

namespace FullHigh1401
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh1.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    2*SmallGap.PolarCoefficientsHigh0.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsHigh1.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    4*SmallGap.PolarCoefficientsHigh0.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh1.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    6*SmallGap.PolarCoefficientsHigh0.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsHigh1.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    8*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e^4*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(8*SmallGap.ReducedLayers.high0_100_0 e g v*e^7+1*SmallGap.ReducedLayers.high0_100_1
    e g v*e^8+24*SmallGap.ReducedLayers.high0_010_0 e g v*e^5+4*SmallGap.ReducedLayers.high0_010_1
    e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.high1_110_0 e g v*e^5+1*SmallGap.ReducedLayers.high1_110_1 e g
    v*e^6+12*SmallGap.ReducedLayers.high1_020_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_020_1 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6652 1) .e) (.add (.mul (.rational 66019
    1) .f) (.add (.mul (.rational 83121 1) .g) (.mul (.rational 12358 1) .v)))) .e) (.add (.mul
    (.add (.mul (.rational 409425 1) .f) (.add (.mul (.rational 703293 1) .g) (.mul (.rational
    114186 1) .v))) .f) (.add (.mul (.add (.mul (.rational 432554 1) .g) (.mul (.rational 145640
    1) .v)) .g) (.mul (.rational 5790 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 1779409 1) .f) (.add (.mul (.rational 3869366 1) .g) (.mul (.rational 659792 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 3209877 1) .g) (.mul (.rational 1153944 1) .v))
    .g) (.mul (.rational 50085 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1265308 1) .g) (.mul (.rational 717444 1) .v)) .g) (.mul (.rational 65714 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5760759 1) .f) (.add
    (.mul (.rational 15149809 1) .g) (.mul (.rational 2670412 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 15812117 1) .g) (.mul (.rational 5938640 1) .v)) .g) (.mul (.rational 270440 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 8342855 1) .g) (.mul (.rational
    5015092 1) .v)) .g) (.mul (.rational 489046 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2332956 1) .g) (.mul (.rational 2001364 1) .v)) .g) (.mul (.rational 313448
    1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 14413271 1) .f) (.add (.mul (.rational 44451716 1) .g) (.mul (.rational
    8037494 1) .v))) .f) (.add (.mul (.add (.mul (.rational 55893260 1) .g) (.mul (.rational
    21702256 1) .v)) .g) (.mul (.rational 1020059 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36926874 1) .g) (.mul (.rational 23187928 1) .v)) .g) (.mul (.rational
    2354861 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 13742335 1) .g)
    (.mul (.rational 12481224 1) .v)) .g) (.mul (.rational 2062343 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2852168 1) .g) (.mul (.rational 3548482 1) .v))
    .g) (.mul (.rational 852407 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 28531159 1) .f) (.add (.mul (.rational
    100932783 1) .g) (.mul (.rational 18642892 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    148434666 1) .g) (.mul (.rational 59241244 1) .v)) .g) (.mul (.rational 2850752 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 117750676 1) .g) (.mul (.rational 76612780
    1) .v)) .g) (.mul (.rational 8017013 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 54650139 1) .g) (.mul (.rational 51950184 1) .v)) .g) (.mul (.rational 8923451 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 15023919 1) .g) (.mul
    (.rational 19803724 1) .v)) .g) (.mul (.rational 5005089 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2349846 1) .g) (.mul (.rational 4205776 1) .v)) .g)
    (.mul (.rational 1483981 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 45363979 1) .f) (.add (.mul
    (.rational 181038050 1) .g) (.mul (.rational 34075114 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 304781845 1) .g) (.mul (.rational 124596382 1) .v)) .g) (.mul (.rational 6110919 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 282078938 1) .g) (.mul (.rational
    189216342 1) .v)) .g) (.mul (.rational 20282160 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 156720177 1) .g) (.mul (.rational 154832812 1) .v)) .g) (.mul
    (.rational 27423723 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 53536308 1) .g) (.mul (.rational 74052578 1) .v)) .g) (.mul (.rational 19466347 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11044563 1) .g) (.mul
    (.rational 20972046 1) .v)) .g) (.mul (.rational 7782182 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1290144 1) .g) (.mul (.rational 3383610 1) .v)) .g)
    (.mul (.rational 1738557 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 58471259 1) .f)
    (.add (.mul (.rational 259836205 1) .g) (.mul (.rational 49761078 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 492700587 1) .g) (.mul (.rational 205843736 1) .v)) .g) (.mul
    (.rational 10262014 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 520995127
    1) .g) (.mul (.rational 359111522 1) .v)) .g) (.mul (.rational 39287938 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 336897281 1) .g) (.mul (.rational 344296640 1)
    .v)) .g) (.mul (.rational 62567408 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 137365479 1) .g) (.mul (.rational 198109630 1) .v)) .g) (.mul (.rational
    53789227 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 35090701
    1) .g) (.mul (.rational 70105856 1) .v)) .g) (.mul (.rational 27093463 1) (.pow .v 2))) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5384577 1) .g) (.mul (.rational 15003274
    1) .v)) .g) (.mul (.rational 8108705 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 451668 1) .g) (.mul (.rational 1824644 1) .v)) .g) (.mul (.rational
    1389839 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 61378757 1) .f) (.add
    (.mul (.rational 300572888 1) .g) (.mul (.rational 58508956 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 633841804 1) .g) (.mul (.rational 270198930 1) .v)) .g) (.mul (.rational
    13668303 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 753716480 1) .g) (.mul
    (.rational 532578854 1) .v)) .g) (.mul (.rational 59325817 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 555759402 1) .g) (.mul (.rational 585535688 1) .v)) .g)
    (.mul (.rational 108809041 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 263101984 1) .g) (.mul (.rational 393807978 1) .v)) .g) (.mul (.rational 109922706
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 79985614 1) .g)
    (.mul (.rational 167124042 1) .v)) .g) (.mul (.rational 66833622 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 15143942 1) .g) (.mul (.rational 44503270 1)
    .v)) .g) (.mul (.rational 25082088 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1661610 1) .g) (.mul (.rational 7140612 1) .v)) .g) (.mul (.rational 5721416
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 90891 1) .g) (.mul
    (.rational 629944 1) .v)) .g) (.mul (.rational 747073 1) (.pow .v 2))) (.pow .g 7)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 52504701 1) .f) (.add (.mul (.rational 280933131 1)
    .g) (.mul (.rational 55545138 1) .v))) .f) (.add (.mul (.add (.mul (.rational 652161090 1) .g)
    (.mul (.rational 283329892 1) .v)) .g) (.mul (.rational 14525478 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 861310848 1) .g) (.mul (.rational 622784566 1) .v)) .g)
    (.mul (.rational 70514047 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    713020150 1) .g) (.mul (.rational 772475108 1) .v)) .g) (.mul (.rational 146431041 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 384118196 1) .g) (.mul
    (.rational 594611974 1) .v)) .g) (.mul (.rational 170049554 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 135240994 1) .g) (.mul (.rational 294181512 1) .v))
    .g) (.mul (.rational 121172128 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 30377510 1) .g) (.mul (.rational 93622806 1) .v)) .g) (.mul (.rational
    54687390 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4096784
    1) .g) (.mul (.rational 18608308 1) .v)) .g) (.mul (.rational 15562406 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 291740 1) .g) (.mul (.rational 2153534 1)
    .v)) .g) (.mul (.rational 2685883 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7956 1) .g) (.mul (.rational 125232 1) .v)) .g) (.mul (.rational 257197 1)
    (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 36478791 1)
    .f) (.add (.mul (.rational 211757298 1) .g) (.mul (.rational 42502320 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 536644631 1) .g) (.mul (.rational 237383588 1) .v)) .g) (.mul
    (.rational 12322299 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 779356112
    1) .g) (.mul (.rational 575825284 1) .v)) .g) (.mul (.rational 66178806 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 715571888 1) .g) (.mul (.rational 795529608 1)
    .v)) .g) (.mul (.rational 153536167 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 432036360 1) .g) (.mul (.rational 689726418 1) .v)) .g) (.mul (.rational
    201561718 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    172717552 1) .g) (.mul (.rational 389704490 1) .v)) .g) (.mul (.rational 164740742 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 44806694 1) .g) (.mul
    (.rational 144172934 1) .v)) .g) (.mul (.rational 86872826 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7144236 1) .g) (.mul (.rational 34118508 1) .v)) .g)
    (.mul (.rational 29606538 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 622614 1) .g) (.mul (.rational 4867394 1) .v)) .g) (.mul (.rational 6339271 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 21980 1) .g) (.mul
    (.rational 368974 1) .v)) .g) (.mul (.rational 796569 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 10818 1) .v) .g) (.mul (.rational 50841 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20428933 1) .f) (.add
    (.mul (.rational 127890911 1) .g) (.mul (.rational 26046080 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 351374223 1) .g) (.mul (.rational 158128824 1) .v)) .g) (.mul (.rational
    8304468 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 556566613 1) .g) (.mul
    (.rational 419677560 1) .v)) .g) (.mul (.rational 48902738 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 561267054 1) .g) (.mul (.rational 639196372 1) .v)) .g)
    (.mul (.rational 125397904 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 375286510 1) .g) (.mul (.rational 616425446 1) .v)) .g) (.mul (.rational 183670784
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 167825382 1) .g)
    (.mul (.rational 391578028 1) .v)) .g) (.mul (.rational 169388284 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 49316136 1) .g) (.mul (.rational 165041242
    1) .v)) .g) (.mul (.rational 102195188 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9053842 1) .g) (.mul (.rational 45258004 1) .v)) .g) (.mul (.rational
    40554796 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 929202 1)
    .g) (.mul (.rational 7655338 1) .v)) .g) (.mul (.rational 10351849 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 39938 1) .g) (.mul (.rational 711428 1) .v))
    .g) (.mul (.rational 1604047 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 26990 1) .v) .g) (.mul (.rational 133277 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 4337 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 9104661 1) .f) (.add (.mul (.rational 61156312 1) .g) (.mul
    (.rational 12632230 1) .v))) .f) (.add (.mul (.add (.mul (.rational 181098668 1) .g) (.mul
    (.rational 82853420 1) .v)) .g) (.mul (.rational 4398893 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 310753850 1) .g) (.mul (.rational 238877092 1) .v)) .g) (.mul
    (.rational 28191139 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    341461643 1) .g) (.mul (.rational 397730696 1) .v)) .g) (.mul (.rational 79195793 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 250449690 1) .g) (.mul
    (.rational 422367872 1) .v)) .g) (.mul (.rational 128061043 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 123831794 1) .g) (.mul (.rational 297980234 1) .v))
    .g) (.mul (.rational 131561166 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 40618990 1) .g) (.mul (.rational 140913402 1) .v)) .g) (.mul (.rational
    89370774 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8424094
    1) .g) (.mul (.rational 43903988 1) .v)) .g) (.mul (.rational 40459634 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 991998 1) .g) (.mul (.rational 8574622 1)
    .v)) .g) (.mul (.rational 11979587 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 49980 1) .g) (.mul (.rational 940334 1) .v)) .g) (.mul (.rational 2201725 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 43454 1) .v) .g) (.mul
    (.rational 224073 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 9405 1) (.pow .v
    2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3166157 1) .f) (.add (.mul (.rational 22719329 1) .g) (.mul (.rational 4757336 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 72153662 1) .g) (.mul (.rational 33533620 1) .v)) .g) (.mul
    (.rational 1798436 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 133365660 1)
    .g) (.mul (.rational 104396992 1) .v)) .g) (.mul (.rational 12464231 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 158627831 1) .g) (.mul (.rational 188695424 1) .v))
    .g) (.mul (.rational 38079473 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 126641669 1) .g) (.mul (.rational 218851414 1) .v)) .g) (.mul (.rational 67392253
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 68592424 1) .g)
    (.mul (.rational 169803752 1) .v)) .g) (.mul (.rational 76331411 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 24831802 1) .g) (.mul (.rational 89028110 1)
    .v)) .g) (.mul (.rational 57657114 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5735190 1) .g) (.mul (.rational 31051152 1) .v)) .g) (.mul (.rational
    29318996 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 760596 1)
    .g) (.mul (.rational 6869434 1) .v)) .g) (.mul (.rational 9871613 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 43792 1) .g) (.mul (.rational 866324 1) .v))
    .g) (.mul (.rational 2095603 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 46986 1) .v) .g) (.mul (.rational 251541 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 12833 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 833782 1) .f) (.add (.mul (.rational
    6367497 1) .g) (.mul (.rational 1350874 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    21596535 1) .g) (.mul (.rational 10187446 1) .v)) .g) (.mul (.rational 551369 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 42792874 1) .g) (.mul (.rational 34071838
    1) .v)) .g) (.mul (.rational 4110236 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 54793865 1) .g) (.mul (.rational 66463084 1) .v)) .g) (.mul (.rational 13571573 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 47313398 1) .g) (.mul
    (.rational 83618792 1) .v)) .g) (.mul (.rational 26099047 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 27862557 1) .g) (.mul (.rational 70785288 1) .v)) .g)
    (.mul (.rational 32317164 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11033010 1) .g) (.mul (.rational 40758496 1) .v)) .g) (.mul (.rational 26872497 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2806769 1) .g) (.mul
    (.rational 15731348 1) .v)) .g) (.mul (.rational 15163806 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 413445 1) .g) (.mul (.rational 3886094 1) .v)) .g)
    (.mul (.rational 5719433 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26716 1) .g) (.mul (.rational 553282 1) .v)) .g) (.mul (.rational 1375807 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 34354 1) .v) .g) (.mul (.rational
    189859 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 11353 1) (.pow .v 2)) (.pow
    .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    158701 1) .f) (.add (.mul (.rational 1285736 1) .g) (.mul (.rational 276136 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 4640452 1) .g) (.mul (.rational 2219374 1) .v)) .g) (.mul
    (.rational 121062 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9817421 1)
    .g) (.mul (.rational 7939506 1) .v)) .g) (.mul (.rational 966198 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 13470949 1) .g) (.mul (.rational 16632024 1) .v)) .g)
    (.mul (.rational 3429816 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12515081 1) .g) (.mul (.rational 22570944 1) .v)) .g) (.mul (.rational 7123779 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7964791 1) .g) (.mul
    (.rational 20710644 1) .v)) .g) (.mul (.rational 9576261 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3425207 1) .g) (.mul (.rational 12997044 1) .v)) .g)
    (.mul (.rational 8694579 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 951586 1) .g) (.mul (.rational 5501016 1) .v)) .g) (.mul (.rational 5392053 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 154059 1) .g) (.mul
    (.rational 1500744 1) .v)) .g) (.mul (.rational 2251881 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11025 1) .g) (.mul (.rational 237934 1) .v)) .g)
    (.mul (.rational 605049 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    16618 1) .v) .g) (.mul (.rational 94251 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 6447 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 20204 1) .f) (.add (.mul (.rational 173179 1) .g)
    (.mul (.rational 37602 1) .v))) .f) (.add (.mul (.add (.mul (.rational 663132 1) .g) (.mul
    (.rational 321032 1) .v)) .g) (.mul (.rational 17614 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1492936 1) .g) (.mul (.rational 1223906 1) .v)) .g) (.mul (.rational
    149902 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2187052 1) .g) (.mul
    (.rational 2742024 1) .v)) .g) (.mul (.rational 569495 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2176902 1) .g) (.mul (.rational 3995068 1) .v)) .g)
    (.mul (.rational 1271012 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1489964 1) .g) (.mul (.rational 3952312 1) .v)) .g) (.mul (.rational 1844052 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 691952 1) .g) (.mul
    (.rational 2686572 1) .v)) .g) (.mul (.rational 1815856 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 208536 1) .g) (.mul (.rational 1237976 1) .v)) .g)
    (.mul (.rational 1227982 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 36807 1) .g) (.mul (.rational 369794 1) .v)) .g) (.mul (.rational 562620 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2888 1) .g) (.mul
    (.rational 64608 1) .v)) .g) (.mul (.rational 166982 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 5010 1) .v) .g) (.mul (.rational 28962 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 2227 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 5))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1486 1) .f) (.add (.mul
    (.rational 13448 1) .g) (.mul (.rational 2944 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    54508 1) .g) (.mul (.rational 26628 1) .v)) .g) (.mul (.rational 1464 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 130256 1) .g) (.mul (.rational 107864 1) .v)) .g)
    (.mul (.rational 13240 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    203140 1) .g) (.mul (.rational 257584 1) .v)) .g) (.mul (.rational 53626 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 215936 1) .g) (.mul (.rational
    401408 1) .v)) .g) (.mul (.rational 128048 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 158368 1) .g) (.mul (.rational 426328 1) .v)) .g) (.mul
    (.rational 199528 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    79088 1) .g) (.mul (.rational 312368 1) .v)) .g) (.mul (.rational 211904 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 25726 1) .g) (.mul (.rational
    155824 1) .v)) .g) (.mul (.rational 155260 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4920 1) .g) (.mul (.rational 50624 1) .v)) .g) (.mul (.rational
    77456 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 420 1) .g)
    (.mul (.rational 9668 1) .v)) .g) (.mul (.rational 25168 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 824 1) .v) .g) (.mul (.rational 4808 1) (.pow .v 2))) (.pow
    .g 9))) .f) (.mul (.mul (.rational 410 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 6))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 44 1) .f) (.add (.mul
    (.rational 420 1) .g) (.mul (.rational 92 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1800
    1) .g) (.mul (.rational 880 1) .v)) .g) (.mul (.rational 48 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4560 1) .g) (.mul (.rational 3780 1) .v)) .g) (.mul (.rational
    460 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7560 1) .g) (.mul
    (.rational 9600 1) .v)) .g) (.mul (.rational 1980 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8568 1) .g) (.mul (.rational 15960 1) .v)) .g) (.mul
    (.rational 5040 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6720 1) .g) (.mul (.rational 18144 1) .v)) .g) (.mul (.rational 8400 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3600 1) .g) (.mul (.rational 14280 1) .v))
    .g) (.mul (.rational 9576 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1260 1) .g) (.mul (.rational 7680 1) .v)) .g) (.mul (.rational 7560 1) (.pow .v
    2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 260 1) .g) (.mul (.rational
    2700 1) .v)) .g) (.mul (.rational 4080 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 24 1) .g) (.mul (.rational 560 1) .v)) .g) (.mul (.rational 1440 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 52 1) .v) .g) (.mul
    (.rational 300 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 28 1) (.pow .v 2))
    (.pow .g 10))) (.pow .f 7)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1401

namespace FullHigh1402
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    2*SmallGap.PolarCoefficientsHigh1.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsHigh2.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    4*SmallGap.PolarCoefficientsHigh0.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    4*SmallGap.PolarCoefficientsHigh1.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh2.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    12*SmallGap.PolarCoefficientsHigh0.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    6*SmallGap.PolarCoefficientsHigh1.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsHigh2.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    8*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e^4*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh0.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsHigh0.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh0.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(28*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^6+8*SmallGap.ReducedLayers.high0_100_1 e g v*e^7+1*SmallGap.ReducedLayers.high0_100_2 e g
    v*e^8+60*SmallGap.ReducedLayers.high0_010_0 e g v*e^4+24*SmallGap.ReducedLayers.high0_010_1 e
    g v*e^5+4*SmallGap.ReducedLayers.high0_010_2 e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.high1_110_0 e g v*e^4+6*SmallGap.ReducedLayers.high1_110_1 e
    g v*e^5+1*SmallGap.ReducedLayers.high1_110_2 e g v*e^6+18*SmallGap.ReducedLayers.high1_020_0 e
    g v*e^2+12*SmallGap.ReducedLayers.high1_020_1 e g v*e^3+3*SmallGap.ReducedLayers.high1_020_2 e
    g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 30410 1) .e) (.add (.mul (.rational 292933 1) .f)
    (.add (.mul (.rational 366833 1) .g) (.mul (.rational 56022 1) .v)))) .e) (.add (.mul (.add
    (.mul (.rational 1763127 1) .f) (.add (.mul (.rational 3011714 1) .g) (.mul (.rational 498488
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 1842695 1) .g) (.mul (.rational 628214 1) .v))
    .g) (.mul (.rational 26040 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 7430629 1) .f) (.add (.mul (.rational 16066889 1) .g) (.mul (.rational 2775494 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 13258027 1) .g) (.mul (.rational 4794062 1) .v))
    .g) (.mul (.rational 215287 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5204439 1) .g) (.mul (.rational 2935856 1) .v)) .g) (.mul (.rational 277670 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 23291509 1) .f) (.add
    (.mul (.rational 60905800 1) .g) (.mul (.rational 10822354 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 63232146 1) .g) (.mul (.rational 23772230 1) .v)) .g) (.mul (.rational
    1112250 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 33219426 1) .g) (.mul
    (.rational 19786808 1) .v)) .g) (.mul (.rational 1975761 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9267517 1) .g) (.mul (.rational 7766212 1) .v)) .g) (.mul
    (.rational 1237084 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 56297575 1) .f) (.add (.mul (.rational 172641349 1) .g)
    (.mul (.rational 31352036 1) .v))) .f) (.add (.mul (.add (.mul (.rational 215930968 1) .g)
    (.mul (.rational 83649838 1) .v)) .g) (.mul (.rational 4015493 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 142035360 1) .g) (.mul (.rational 88169050 1) .v)) .g)
    (.mul (.rational 9108813 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    52718253 1) .g) (.mul (.rational 46743216 1) .v)) .g) (.mul (.rational 7804156 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10943817 1) .g) (.mul
    (.rational 13075560 1) .v)) .g) (.mul (.rational 3138497 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 107350591
    1) .f) (.add (.mul (.rational 377609360 1) .g) (.mul (.rational 69873948 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 552387997 1) .g) (.mul (.rational 219524158 1) .v)) .g) (.mul
    (.rational 10737044 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 436257670
    1) .g) (.mul (.rational 280327274 1) .v)) .g) (.mul (.rational 29695328 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 201889091 1) .g) (.mul (.rational 187484902 1)
    .v)) .g) (.mul (.rational 32394234 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 55481246 1) .g) (.mul (.rational 70447568 1) .v)) .g) (.mul (.rational
    17736599 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8708117
    1) .g) (.mul (.rational 14754850 1) .v)) .g) (.mul (.rational 5112400 1) (.pow .v 2))) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 163825443 1) .f) (.add (.mul (.rational 650073079 1) .g) (.mul (.rational
    122400602 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1088613307 1) .g) (.mul (.rational
    442775922 1) .v)) .g) (.mul (.rational 21993495 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1002983671 1) .g) (.mul (.rational 664598026 1) .v)) .g) (.mul (.rational
    71871596 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 555511515 1) .g)
    (.mul (.rational 537094054 1) .v)) .g) (.mul (.rational 95430997 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 189600385 1) .g) (.mul (.rational 253617612
    1) .v)) .g) (.mul (.rational 66330943 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 39214863 1) .g) (.mul (.rational 70960334 1) .v)) .g) (.mul (.rational
    25894017 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4615421
    1) .g) (.mul (.rational 11338118 1) .v)) .g) (.mul (.rational 5639063 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 201766213 1) .f) (.add (.mul (.rational 891507726 1) .g) (.mul
    (.rational 170703190 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1681471696 1) .g) (.mul
    (.rational 699060194 1) .v)) .g) (.mul (.rational 35211010 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1769863588 1) .g) (.mul (.rational 1206514874 1) .v)) .g) (.mul
    (.rational 132904999 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1140643820 1) .g) (.mul (.rational 1143797436 1) .v)) .g) (.mul (.rational 208268636 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 464459046 1) .g) (.mul
    (.rational 650739540 1) .v)) .g) (.mul (.rational 175828718 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 118849832 1) .g) (.mul (.rational 227860336 1) .v))
    .g) (.mul (.rational 86817504 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18349162 1) .g) (.mul (.rational 48357346 1) .v)) .g) (.mul (.rational 25448970 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1558273 1) .g) (.mul
    (.rational 5858160 1) .v)) .g) (.mul (.rational 4277932 1) (.pow .v 2))) (.pow .g 6)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 201254053 1) .f) (.add (.mul (.rational 979928555 1) .g) (.mul
    (.rational 190776152 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2055375448 1) .g) (.mul
    (.rational 872784962 1) .v)) .g) (.mul (.rational 44550379 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2432604944 1) .g) (.mul (.rational 1703405916 1) .v)) .g) (.mul
    (.rational 190910709 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1787278814 1) .g) (.mul (.rational 1853857584 1) .v)) .g) (.mul (.rational 345219410 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 844585702 1) .g) (.mul
    (.rational 1234372656 1) .v)) .g) (.mul (.rational 343380846 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 256986614 1) .g) (.mul (.rational 519032916 1)
    .v)) .g) (.mul (.rational 205347678 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 48889398 1) .g) (.mul (.rational 137217490 1) .v)) .g) (.mul (.rational
    75781256 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5419882
    1) .g) (.mul (.rational 21942780 1) .v)) .g) (.mul (.rational 17022868 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 301858 1) .g) (.mul (.rational 1942070 1)
    .v)) .g) (.mul (.rational 2198735 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 162452785 1) .f) (.add (.mul (.rational 864272078 1) .g) (.mul (.rational
    171075048 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1995489945 1) .g) (.mul (.rational
    865062130 1) .v)) .g) (.mul (.rational 44737996 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2622735432 1) .g) (.mul (.rational 1884349848 1) .v)) .g) (.mul (.rational
    214727192 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2162846954 1) .g)
    (.mul (.rational 2315905282 1) .v)) .g) (.mul (.rational 440443552 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1162506778 1) .g) (.mul (.rational
    1766785400 1) .v)) .g) (.mul (.rational 504790802 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 409321874 1) .g) (.mul (.rational 867050564 1) .v)) .g)
    (.mul (.rational 354809192 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 92261522 1) .g) (.mul (.rational 274207862 1) .v)) .g) (.mul (.rational 157986196
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 12546972 1) .g)
    (.mul (.rational 54340688 1) .v)) .g) (.mul (.rational 44423118 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 907156 1) .g) (.mul (.rational 6305556 1) .v))
    .g) (.mul (.rational 7604563 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25356 1) .g) (.mul (.rational 370900 1) .v)) .g) (.mul (.rational 727648 1) (.pow
    .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 105569943 1) .f)
    (.add (.mul (.rational 609340331 1) .g) (.mul (.rational 122635274 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1535800865 1) .g) (.mul (.rational 679438402 1) .v)) .g) (.mul
    (.rational 35598509 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2219343189
    1) .g) (.mul (.rational 1634512188 1) .v)) .g) (.mul (.rational 189286838 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2029318312 1) .g) (.mul (.rational
    2239436466 1) .v)) .g) (.mul (.rational 434506973 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1221823592 1) .g) (.mul (.rational 1926074966 1) .v)) .g)
    (.mul (.rational 564119858 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 488084076 1) .g) (.mul (.rational 1080443128 1) .v)) .g) (.mul (.rational 455909138
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 126897308 1) .g)
    (.mul (.rational 397493878 1) .v)) .g) (.mul (.rational 237836446 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 20363094 1) .g) (.mul (.rational 93813336 1)
    .v)) .g) (.mul (.rational 80309006 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1796616 1) .g) (.mul (.rational 13410484 1) .v)) .g) (.mul (.rational
    17093127 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 64746 1)
    .g) (.mul (.rational 1026168 1) .v)) .g) (.mul (.rational 2147906 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 30710 1) .v) .g) (.mul (.rational 138467 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    54668815 1) .f) (.add (.mul (.rational 340300316 1) .g) (.mul (.rational 69636086 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 929818618 1) .g) (.mul (.rational 419632338 1) .v)) .g)
    (.mul (.rational 22272158 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1465284378 1) .g) (.mul (.rational 1105277716 1) .v)) .g) (.mul (.rational 130019351 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1471140041 1) .g) (.mul (.rational
    1670699468 1) .v)) .g) (.mul (.rational 330382996 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 980425504 1) .g) (.mul (.rational 1599517782 1) .v)) .g)
    (.mul (.rational 479428753 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 437740244 1) .g) (.mul (.rational 1009488410 1) .v)) .g) (.mul (.rational 438090484
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 128747102 1) .g)
    (.mul (.rational 423323998 1) .v)) .g) (.mul (.rational 262045408 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 23741898 1) .g) (.mul (.rational 115779204
    1) .v)) .g) (.mul (.rational 103251092 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2459796 1) .g) (.mul (.rational 19608664 1) .v)) .g) (.mul (.rational
    26242181 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 107480 1)
    .g) (.mul (.rational 1835620 1) .v)) .g) (.mul (.rational 4068558 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 70794 1) .v) .g) (.mul (.rational 340923 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 11328 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22186189 1) .f) (.add
    (.mul (.rational 148184215 1) .g) (.mul (.rational 30828172 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 436378152 1) .g) (.mul (.rational 200816770 1) .v)) .g) (.mul (.rational
    10794647 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 744861000 1) .g) (.mul
    (.rational 574955202 1) .v)) .g) (.mul (.rational 68663299 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 814604453 1) .g) (.mul (.rational 950684400 1) .v)) .g)
    (.mul (.rational 191409192 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 595198005 1) .g) (.mul (.rational 1002886036 1) .v)) .g) (.mul (.rational 307115949
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 293569600 1) .g)
    (.mul (.rational 703314998 1) .v)) .g) (.mul (.rational 313138403 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 96257290 1) .g) (.mul (.rational 331012384
    1) .v)) .g) (.mul (.rational 211261362 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 20013504 1) .g) (.mul (.rational 102849044 1) .v)) .g) (.mul (.rational
    95115908 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2372402
    1) .g) (.mul (.rational 20094992 1) .v)) .g) (.mul (.rational 28074881 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 121014 1) .g) (.mul (.rational 2215220 1)
    .v)) .g) (.mul (.rational 5163972 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 103646 1) .v) .g) (.mul (.rational 529213 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 22582 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 6876229 1) .f) (.add (.mul (.rational 49065700 1) .g)
    (.mul (.rational 10375148 1) .v))) .f) (.add (.mul (.add (.mul (.rational 154958827 1) .g)
    (.mul (.rational 72673802 1) .v)) .g) (.mul (.rational 3954684 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 284872998 1) .g) (.mul (.rational 224804658 1) .v)) .g)
    (.mul (.rational 27233968 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    337132067 1) .g) (.mul (.rational 403747682 1) .v)) .g) (.mul (.rational 82663546 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 267979216 1) .g) (.mul
    (.rational 465404208 1) .v)) .g) (.mul (.rational 145354199 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 144666569 1) .g) (.mul (.rational 359082378 1) .v))
    .g) (.mul (.rational 163620688 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 52283518 1) .g) (.mul (.rational 187398240 1) .v)) .g) (.mul (.rational
    122910333 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 12082992
    1) .g) (.mul (.rational 65163710 1) .v)) .g) (.mul (.rational 62230762 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1608648 1) .g) (.mul (.rational 14408460
    1) .v)) .g) (.mul (.rational 20903857 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 93396 1) .g) (.mul (.rational 1822860 1) .v)) .g) (.mul (.rational
    4440968 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 99718 1) .v) .g)
    (.mul (.rational 535979 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 27688 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1563220 1) .f) (.add (.mul (.rational 11872454 1) .g) (.mul (.rational
    2550582 1) .v))) .f) (.add (.mul (.add (.mul (.rational 40043737 1) .g) (.mul (.rational
    19124862 1) .v)) .g) (.mul (.rational 1052773 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 78908317 1) .g) (.mul (.rational 63589578 1) .v)) .g) (.mul (.rational
    7806104 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 100502151 1) .g)
    (.mul (.rational 123317106 1) .v)) .g) (.mul (.rational 25635931 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 86359381 1) .g) (.mul (.rational 154264040
    1) .v)) .g) (.mul (.rational 49037555 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 50647149 1) .g) (.mul (.rational 129894682 1) .v)) .g) (.mul (.rational
    60414885 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19996247
    1) .g) (.mul (.rational 74451452 1) .v)) .g) (.mul (.rational 50012107 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5080857 1) .g) (.mul (.rational 28638878
    1) .v)) .g) (.mul (.rational 28123289 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 749361 1) .g) (.mul (.rational 7064026 1) .v)) .g) (.mul (.rational
    10587521 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 48646 1)
    .g) (.mul (.rational 1007000 1) .v)) .g) (.mul (.rational 2548170 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 62850 1) .v) .g) (.mul (.rational 353065 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 21304 1) (.pow .v 2)) (.pow .g 10))) (.pow .f
    3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 243885 1) .f)
    (.add (.mul (.rational 1965304 1) .g) (.mul (.rational 428648 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 7054228 1) .g) (.mul (.rational 3427432 1) .v)) .g) (.mul (.rational 190630
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 14841184 1) .g) (.mul
    (.rational 12196410 1) .v)) .g) (.mul (.rational 1514785 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 20252126 1) .g) (.mul (.rational 25413044 1) .v)) .g) (.mul
    (.rational 5353604 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    18715376 1) .g) (.mul (.rational 34305108 1) .v)) .g) (.mul (.rational 11071624 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11852924 1) .g) (.mul
    (.rational 31318548 1) .v)) .g) (.mul (.rational 14822632 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5076448 1) .g) (.mul (.rational 19564312 1) .v)) .g)
    (.mul (.rational 13409362 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1406269 1) .g) (.mul (.rational 8249820 1) .v)) .g) (.mul (.rational 8292500 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 227416 1) .g) (.mul
    (.rational 2245284 1) .v)) .g) (.mul (.rational 3457664 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 16296 1) .g) (.mul (.rational 355828 1) .v)) .g)
    (.mul (.rational 929234 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    24910 1) .v) .g) (.mul (.rational 145157 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 9992 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 23074 1) .f) (.add (.mul (.rational 196776 1) .g)
    (.mul (.rational 43522 1) .v))) .f) (.add (.mul (.add (.mul (.rational 749506 1) .g) (.mul
    (.rational 369910 1) .v)) .g) (.mul (.rational 20748 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1678180 1) .g) (.mul (.rational 1403706 1) .v)) .g) (.mul (.rational
    175980 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2444736 1) .g) (.mul
    (.rational 3129904 1) .v)) .g) (.mul (.rational 666314 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2419844 1) .g) (.mul (.rational 4538380 1) .v)) .g)
    (.mul (.rational 1482180 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1647296 1) .g) (.mul (.rational 4468716 1) .v)) .g) (.mul (.rational 2143708 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 761196 1) .g) (.mul
    (.rational 3024140 1) .v)) .g) (.mul (.rational 2105068 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 228430 1) .g) (.mul (.rational 1388096 1) .v)) .g)
    (.mul (.rational 1420440 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 40196 1) .g) (.mul (.rational 413394 1) .v)) .g) (.mul (.rational 649964 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3150 1) .g) (.mul
    (.rational 72110 1) .v)) .g) (.mul (.rational 192920 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 5594 1) .v) .g) (.mul (.rational 33528 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 2590 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 5))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 980 1) .f) (.add (.mul
    (.rational 8828 1) .g) (.mul (.rational 1976 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    35608 1) .g) (.mul (.rational 17808 1) .v)) .g) (.mul (.rational 1004 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 84656 1) .g) (.mul (.rational 71864 1) .v)) .g) (.mul
    (.rational 9060 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 131320 1)
    .g) (.mul (.rational 170944 1) .v)) .g) (.mul (.rational 36616 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 138824 1) .g) (.mul (.rational 265328 1) .v)) .g)
    (.mul (.rational 87248 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 101248 1) .g) (.mul (.rational 280672 1) .v)) .g) (.mul (.rational 135688 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 50288 1) .g) (.mul
    (.rational 204848 1) .v)) .g) (.mul (.rational 143864 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16276 1) .g) (.mul (.rational 101824 1) .v)) .g) (.mul
    (.rational 105280 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3100 1) .g) (.mul (.rational 32984 1) .v)) .g) (.mul (.rational 52496 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 264 1) .g) (.mul (.rational 6288 1) .v))
    .g) (.mul (.rational 17068 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 536 1) .v) .g) (.mul (.rational 3268 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 280 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1402

namespace FullHigh1403
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsHigh2.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    4*SmallGap.PolarCoefficientsHigh1.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    4*SmallGap.PolarCoefficientsHigh2.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    8*SmallGap.PolarCoefficientsHigh0.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    12*SmallGap.PolarCoefficientsHigh1.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    6*SmallGap.PolarCoefficientsHigh2.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    32*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    8*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh1.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    4*SmallGap.PolarCoefficientsHigh0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh1.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    8*SmallGap.PolarCoefficientsHigh0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsHigh1.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(56*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^5+28*SmallGap.ReducedLayers.high0_100_1 e g v*e^6+8*SmallGap.ReducedLayers.high0_100_2 e g
    v*e^7+80*SmallGap.ReducedLayers.high0_010_0 e g v*e^3+60*SmallGap.ReducedLayers.high0_010_1 e
    g v*e^4+24*SmallGap.ReducedLayers.high0_010_2 e g v*e^5+4*SmallGap.ReducedLayers.high0_010_3 e
    g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(20*SmallGap.ReducedLayers.high1_110_0 e g v*e^3+15*SmallGap.ReducedLayers.high1_110_1 e
    g v*e^4+6*SmallGap.ReducedLayers.high1_110_2 e g v*e^5+1*SmallGap.ReducedLayers.high1_110_3 e
    g v*e^6+12*SmallGap.ReducedLayers.high1_020_0 e g v*e^1+18*SmallGap.ReducedLayers.high1_020_1
    e g v*e^2+12*SmallGap.ReducedLayers.high1_020_2 e g v*e^3+3*SmallGap.ReducedLayers.high1_020_3
    e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 82528 1) .e) (.add (.mul (.rational 773436 1) .f) (.add (.mul
    (.rational 963596 1) .g) (.mul (.rational 150632 1) .v)))) .e) (.add (.mul (.add (.mul
    (.rational 4522786 1) .f) (.add (.mul (.rational 7682632 1) .g) (.mul (.rational 1292626 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 4676678 1) .g) (.mul (.rational 1607548 1) .v))
    .g) (.mul (.rational 69480 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 18479296 1) .f) (.add (.mul (.rational 39722680 1) .g) (.mul (.rational 6935370 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 32598784 1) .g) (.mul (.rational 11811246 1) .v))
    .g) (.mul (.rational 549724 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    12742088 1) .g) (.mul (.rational 7106686 1) .v)) .g) (.mul (.rational 695736 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 55996636 1) .f) (.add
    (.mul (.rational 145536566 1) .g) (.mul (.rational 26020568 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 150229794 1) .g) (.mul (.rational 56346258 1) .v)) .g) (.mul (.rational
    2716192 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 78552538 1) .g) (.mul
    (.rational 46098410 1) .v)) .g) (.mul (.rational 4728296 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 21855786 1) .g) (.mul (.rational 17725662 1) .v)) .g) (.mul
    (.rational 2880192 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 130382392 1) .f) (.add (.mul (.rational 397322096 1) .g)
    (.mul (.rational 72372668 1) .v))) .f) (.add (.mul (.add (.mul (.rational 494006794 1) .g)
    (.mul (.rational 190409296 1) .v)) .g) (.mul (.rational 9367866 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 323318490 1) .g) (.mul (.rational 197425574 1) .v)) .g)
    (.mul (.rational 20823350 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    119612838 1) .g) (.mul (.rational 102694146 1) .v)) .g) (.mul (.rational 17376926 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 24822846 1) .g) (.mul
    (.rational 28121590 1) .v)) .g) (.mul (.rational 6751234 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 238465140
    1) .f) (.add (.mul (.rational 833421678 1) .g) (.mul (.rational 154396610 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 1211760348 1) .g) (.mul (.rational 478570360 1) .v)) .g) (.mul
    (.rational 23888384 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 951979920
    1) .g) (.mul (.rational 601776368 1) .v)) .g) (.mul (.rational 64789446 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 438926164 1) .g) (.mul (.rational 395541050 1)
    .v)) .g) (.mul (.rational 68975146 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 120490602 1) .g) (.mul (.rational 145832280 1) .v)) .g) (.mul (.rational
    36629930 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 18966428
    1) .g) (.mul (.rational 29958022 1) .v)) .g) (.mul (.rational 10167438 1) (.pow .v 2))) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 347238624 1) .f) (.add (.mul (.rational 1368848348 1) .g) (.mul (.rational
    257867926 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2278023410 1) .g) (.mul (.rational
    920955166 1) .v)) .g) (.mul (.rational 46546812 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2087391510 1) .g) (.mul (.rational 1362729688 1) .v)) .g) (.mul (.rational
    149359228 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1151447022 1) .g)
    (.mul (.rational 1084130036 1) .v)) .g) (.mul (.rational 194008846 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 392325322 1) .g) (.mul (.rational 503442332
    1) .v)) .g) (.mul (.rational 131333082 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 81295552 1) .g) (.mul (.rational 138529760 1) .v)) .g) (.mul (.rational
    49693302 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 9635140
    1) .g) (.mul (.rational 21816414 1) .v)) .g) (.mul (.rational 10448466 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 405480666 1) .f) (.add (.mul (.rational 1779708828 1) .g) (.mul
    (.rational 341107380 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3335445648 1) .g) (.mul
    (.rational 1380219546 1) .v)) .g) (.mul (.rational 70621996 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3491027602 1) .g) (.mul (.rational 2351089052 1) .v)) .g) (.mul
    (.rational 262178732 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2240122648 1) .g) (.mul (.rational 2197700488 1) .v)) .g) (.mul (.rational 402976452 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 910107204 1) .g) (.mul
    (.rational 1232184056 1) .v)) .g) (.mul (.rational 332673586 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 233113908 1) .g) (.mul (.rational 425367908 1)
    .v)) .g) (.mul (.rational 160145610 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36194310 1) .g) (.mul (.rational 89197254 1) .v)) .g) (.mul (.rational
    45680210 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3111082
    1) .g) (.mul (.rational 10733066 1) .v)) .g) (.mul (.rational 7481534 1) (.pow .v 2))) (.pow
    .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 380500768 1) .f) (.add (.mul (.rational 1840231000 1)
    .g) (.mul (.rational 359135948 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3834993024 1)
    .g) (.mul (.rational 1624763304 1) .v)) .g) (.mul (.rational 84220944 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4512563884 1) .g) (.mul (.rational 3133311976 1) .v))
    .g) (.mul (.rational 355620648 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3300120960 1) .g) (.mul (.rational 3367462572 1) .v)) .g) (.mul (.rational
    632420364 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1555223248 1) .g) (.mul (.rational 2213818952 1) .v)) .g) (.mul (.rational 617439052 1) (.pow
    .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 473297962 1) .g) (.mul
    (.rational 919734024 1) .v)) .g) (.mul (.rational 361836938 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 90439582 1) .g) (.mul (.rational 240779378 1) .v))
    .g) (.mul (.rational 130788654 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10130594 1) .g) (.mul (.rational 38309762 1) .v)) .g) (.mul (.rational
    28835762 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 574666 1)
    .g) (.mul (.rational 3402162 1) .v)) .g) (.mul (.rational 3681462 1) (.pow .v 2))) (.pow .g
    7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 286138554 1) .f) (.add (.mul (.rational
    1511955124 1) .g) (.mul (.rational 300692262 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    3468102150 1) .g) (.mul (.rational 1504862528 1) .v)) .g) (.mul (.rational 79101408 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4531118488 1) .g) (.mul (.rational
    3242564782 1) .v)) .g) (.mul (.rational 374795280 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3718276930 1) .g) (.mul (.rational 3940813700 1) .v)) .g) (.mul
    (.rational 757975104 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1992129150 1) .g) (.mul (.rational 2973276484 1) .v)) .g) (.mul (.rational
    855567720 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    701014034 1) .g) (.mul (.rational 1444336024 1) .v)) .g) (.mul (.rational 591886680 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 158519976 1) .g) (.mul
    (.rational 453141426 1) .v)) .g) (.mul (.rational 259508426 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21744858 1) .g) (.mul (.rational 89470586 1) .v)) .g)
    (.mul (.rational 72034998 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1597662 1) .g) (.mul (.rational 10420938 1) .v)) .g) (.mul (.rational 12250766 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 45834 1) .g) (.mul
    (.rational 622454 1) .v)) .g) (.mul (.rational 1178802 1) (.pow .v 2))) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 171059248 1) .f) (.add (.mul (.rational
    980578928 1) .g) (.mul (.rational 198867270 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    2455106732 1) .g) (.mul (.rational 1091353014 1) .v)) .g) (.mul (.rational 58224372 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3526105572 1) .g) (.mul (.rational
    2599665638 1) .v)) .g) (.mul (.rational 306179628 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3207446664 1) .g) (.mul (.rational 3526397182 1) .v)) .g) (.mul
    (.rational 694575408 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1924033836 1) .g) (.mul (.rational 3003708224 1) .v)) .g) (.mul (.rational
    890736620 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    767537334 1) .g) (.mul (.rational 1670357792 1) .v)) .g) (.mul (.rational 711088168 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 199956714 1) .g) (.mul
    (.rational 610492162 1) .v)) .g) (.mul (.rational 366800904 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 32308122 1) .g) (.mul (.rational 143692718 1) .v))
    .g) (.mul (.rational 122807154 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2889590 1) .g) (.mul (.rational 20617838 1) .v)) .g) (.mul (.rational
    26064738 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 106540 1)
    .g) (.mul (.rational 1599694 1) .v)) .g) (.mul (.rational 3299238 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 49268 1) .v) .g) (.mul (.rational 217726 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    80128384 1) .f) (.add (.mul (.rational 495341934 1) .g) (.mul (.rational 102493696 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1344342826 1) .g) (.mul (.rational 612250170 1) .v))
    .g) (.mul (.rational 33174544 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2105173150 1) .g) (.mul (.rational 1598211966 1) .v)) .g) (.mul (.rational 191847840 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2101933076 1) .g) (.mul (.rational
    2394258978 1) .v)) .g) (.mul (.rational 482749156 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1394911982 1) .g) (.mul (.rational 2272717330 1) .v)) .g)
    (.mul (.rational 693673100 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 621428790 1) .g) (.mul (.rational 1423578016 1) .v)) .g) (.mul (.rational 627936160
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 182913264 1) .g)
    (.mul (.rational 593649050 1) .v)) .g) (.mul (.rational 372582324 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 33899994 1) .g) (.mul (.rational 162010574
    1) .v)) .g) (.mul (.rational 146025808 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3550894 1) .g) (.mul (.rational 27530714 1) .v)) .g) (.mul (.rational
    37102202 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 158154 1)
    .g) (.mul (.rational 2608118 1) .v)) .g) (.mul (.rational 5798986 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 103100 1) .v) .g) (.mul (.rational 496366 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 17178 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 28730920 1) .f) (.add
    (.mul (.rational 190565568 1) .g) (.mul (.rational 40239700 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 557345874 1) .g) (.mul (.rational 260017900 1) .v)) .g) (.mul (.rational
    14313322 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 945142434 1) .g) (.mul
    (.rational 738372886 1) .v)) .g) (.mul (.rational 90324746 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1027563850 1) .g) (.mul (.rational 1211025722 1) .v)) .g)
    (.mul (.rational 249778506 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 747200554 1) .g) (.mul (.rational 1267740690 1) .v)) .g) (.mul (.rational 397640842
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 367400358 1) .g)
    (.mul (.rational 883094658 1) .v)) .g) (.mul (.rational 402544110 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 120395690 1) .g) (.mul (.rational 413563510
    1) .v)) .g) (.mul (.rational 270025282 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25108402 1) .g) (.mul (.rational 128235718 1) .v)) .g) (.mul (.rational
    121190146 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3000538
    1) .g) (.mul (.rational 25119578 1) .v)) .g) (.mul (.rational 35813162 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 155380 1) .g) (.mul (.rational 2795826 1)
    .v)) .g) (.mul (.rational 6640660 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 133460 1) .v) .g) (.mul (.rational 693328 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 30616 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 7597072 1) .f) (.add (.mul (.rational 53830294 1) .g)
    (.mul (.rational 11599590 1) .v))) .f) (.add (.mul (.add (.mul (.rational 168820600 1) .g)
    (.mul (.rational 80646716 1) .v)) .g) (.mul (.rational 4509432 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 308254736 1) .g) (.mul (.rational 247589576 1) .v)) .g)
    (.mul (.rational 30847982 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    362504914 1) .g) (.mul (.rational 441364170 1) .v)) .g) (.mul (.rational 93016962 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 286576296 1) .g) (.mul
    (.rational 505182580 1) .v)) .g) (.mul (.rational 162537062 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 154073122 1) .g) (.mul (.rational 387353754 1) .v))
    .g) (.mul (.rational 181955758 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 55569592 1) .g) (.mul (.rational 201197352 1) .v)) .g) (.mul (.rational
    136118806 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 12854294
    1) .g) (.mul (.rational 69800430 1) .v)) .g) (.mul (.rational 68792170 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1720026 1) .g) (.mul (.rational 15455686
    1) .v)) .g) (.mul (.rational 23149834 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 100942 1) .g) (.mul (.rational 1969074 1) .v)) .g) (.mul (.rational
    4954450 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 109360 1) .v)
    .g) (.mul (.rational 607340 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 32252 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1391940 1) .f) (.add (.mul (.rational 10497016 1) .g) (.mul (.rational
    2307514 1) .v))) .f) (.add (.mul (.add (.mul (.rational 35151906 1) .g) (.mul (.rational
    17182702 1) .v)) .g) (.mul (.rational 975332 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 68778718 1) .g) (.mul (.rational 56731188 1) .v)) .g) (.mul (.rational
    7191600 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 87005282 1) .g)
    (.mul (.rational 109251244 1) .v)) .g) (.mul (.rational 23489278 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 74297434 1) .g) (.mul (.rational 135757964
    1) .v)) .g) (.mul (.rational 44703066 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 43346266 1) .g) (.mul (.rational 113625704 1) .v)) .g) (.mul (.rational
    54834170 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 17051426
    1) .g) (.mul (.rational 64811952 1) .v)) .g) (.mul (.rational 45249486 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4326778 1) .g) (.mul (.rational 24857748
    1) .v)) .g) (.mul (.rational 25414610 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 639342 1) .g) (.mul (.rational 6131114 1) .v)) .g) (.mul (.rational
    9584678 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 41764 1)
    .g) (.mul (.rational 877674 1) .v)) .g) (.mul (.rational 2320946 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 55340 1) .v) .g) (.mul (.rational 325570 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 20064 1) (.pow .v 2)) (.pow .g 10))) (.pow .f
    3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 157194 1) .f)
    (.add (.mul (.rational 1257676 1) .g) (.mul (.rational 281852 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 4481144 1) .g) (.mul (.rational 2239074 1) .v)) .g) (.mul (.rational 128868
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9357622 1) .g) (.mul (.rational
    7914908 1) .v)) .g) (.mul (.rational 1019212 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12675090 1) .g) (.mul (.rational 16382192 1) .v)) .g) (.mul (.rational
    3585712 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 11630254
    1) .g) (.mul (.rational 21970664 1) .v)) .g) (.mul (.rational 7384050 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7318046 1) .g) (.mul (.rational 19936180
    1) .v)) .g) (.mul (.rational 9849666 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3117234 1) .g) (.mul (.rational 12388504 1) .v)) .g) (.mul (.rational
    8886842 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 860252 1)
    .g) (.mul (.rational 5203648 1) .v)) .g) (.mul (.rational 5489562 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 138910 1) .g) (.mul (.rational 1413692 1)
    .v)) .g) (.mul (.rational 2291622 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9970 1) .g) (.mul (.rational 224314 1) .v)) .g) (.mul (.rational 618610 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 15788 1) .v) .g) (.mul
    (.rational 97506 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 6814 1) (.pow .v
    2)) (.pow .g 10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 8196 1) .f) (.add (.mul (.rational 69388 1) .g) (.mul (.rational 15836 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 262284 1) .g) (.mul (.rational 133772 1) .v)) .g)
    (.mul (.rational 7792 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 582632 1)
    .g) (.mul (.rational 504404 1) .v)) .g) (.mul (.rational 65828 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 841904 1) .g) (.mul (.rational 1117376 1) .v)) .g) (.mul
    (.rational 248276 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    826560 1) .g) (.mul (.rational 1609608 1) .v)) .g) (.mul (.rational 550248 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 558208 1) .g) (.mul (.rational
    1574776 1) .v)) .g) (.mul (.rational 793240 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 256024 1) .g) (.mul (.rational 1059352 1) .v)) .g) (.mul
    (.rational 776944 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    76332 1) .g) (.mul (.rational 483744 1) .v)) .g) (.mul (.rational 523488 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 13364 1) .g) (.mul (.rational
    143516 1) .v)) .g) (.mul (.rational 239576 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1044 1) .g) (.mul (.rational 24988 1) .v)) .g) (.mul (.rational
    71288 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1940 1) .v) .g)
    (.mul (.rational 12460 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 972 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1403

namespace FullHigh1404
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsHigh2.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    8*SmallGap.PolarCoefficientsHigh1.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    12*SmallGap.PolarCoefficientsHigh2.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    16*SmallGap.PolarCoefficientsHigh0.c140 e f g v*((e+f)*(e+f+g))^4+
    32*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh2.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    4*SmallGap.PolarCoefficientsHigh1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh2.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    8*SmallGap.PolarCoefficientsHigh0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsHigh1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsHigh2.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    24*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    3*SmallGap.PolarCoefficientsHigh0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(70*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^4+56*SmallGap.ReducedLayers.high0_100_1 e g v*e^5+28*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^6+60*SmallGap.ReducedLayers.high0_010_0 e g v*e^2+80*SmallGap.ReducedLayers.high0_010_1
    e g v*e^3+60*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^4+24*SmallGap.ReducedLayers.high0_010_3 e g v*e^5+4*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.high1_110_0 e g v*e^2+20*SmallGap.ReducedLayers.high1_110_1 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_110_2 e g v*e^4+6*SmallGap.ReducedLayers.high1_110_3 e
    g v*e^5+1*SmallGap.ReducedLayers.high1_110_4 e g v*e^6+3*SmallGap.ReducedLayers.high1_020_0 e
    g v+12*SmallGap.ReducedLayers.high1_020_1 e g v*e^1+18*SmallGap.ReducedLayers.high1_020_2 e g
    v*e^2+12*SmallGap.ReducedLayers.high1_020_3 e g v*e^3+3*SmallGap.ReducedLayers.high1_020_4 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 147224 1) .e) (.add (.mul (.rational 1345694 1) .f) (.add (.mul (.rational
    1668492 1) .g) (.mul (.rational 266000 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    7655292 1) .f) (.add (.mul (.rational 12932376 1) .g) (.mul (.rational 2204736 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 7834672 1) .g) (.mul (.rational 2702032 1) .v)) .g) (.mul
    (.rational 121800 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    30324872 1) .f) (.add (.mul (.rational 64793704 1) .g) (.mul (.rational 11401816 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 52881024 1) .g) (.mul (.rational 19109964 1) .v)) .g) (.mul
    (.rational 923622 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 20585708 1)
    .g) (.mul (.rational 11264904 1) .v)) .g) (.mul (.rational 1144948 1) (.pow .v 2))) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 88716268 1) .f) (.add (.mul
    (.rational 229083536 1) .g) (.mul (.rational 41117046 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 235040302 1) .g) (.mul (.rational 87581506 1) .v)) .g) (.mul (.rational 4363876 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 122296580 1) .g) (.mul (.rational
    70200518 1) .v)) .g) (.mul (.rational 7425008 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 33936066 1) .g) (.mul (.rational 26316798 1) .v)) .g) (.mul (.rational
    4379056 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 198420621 1) .f) (.add (.mul (.rational 600502100 1) .g) (.mul
    (.rational 109528154 1) .v))) .f) (.add (.mul (.add (.mul (.rational 741768238 1) .g) (.mul
    (.rational 283464064 1) .v)) .g) (.mul (.rational 14352634 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 482787830 1) .g) (.mul (.rational 288134504 1) .v)) .g) (.mul
    (.rational 31165384 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    177958545 1) .g) (.mul (.rational 146342584 1) .v)) .g) (.mul (.rational 25197118 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 36911698 1) .g) (.mul
    (.rational 38962294 1) .v)) .g) (.mul (.rational 9368704 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 346494863
    1) .f) (.add (.mul (.rational 1202226970 1) .g) (.mul (.rational 222779240 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 1735919104 1) .g) (.mul (.rational 679557906 1) .v)) .g) (.mul
    (.rational 34789902 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1355515274
    1) .g) (.mul (.rational 838577730 1) .v)) .g) (.mul (.rational 92224120 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 622228141 1) .g) (.mul (.rational 539199894 1)
    .v)) .g) (.mul (.rational 95315242 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 170523796 1) .g) (.mul (.rational 193857030 1) .v)) .g) (.mul (.rational
    48677780 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 26907060
    1) .g) (.mul (.rational 38747880 1) .v)) .g) (.mul (.rational 12829424 1) (.pow .v 2))) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 478264942 1) .f) (.add (.mul (.rational 1871170293 1) .g) (.mul (.rational
    352720798 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3091432391 1) .g) (.mul (.rational
    1240573124 1) .v)) .g) (.mul (.rational 64171938 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2814366580 1) .g) (.mul (.rational 1803747340 1) .v)) .g) (.mul (.rational
    201549138 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1544658788 1) .g)
    (.mul (.rational 1406674052 1) .v)) .g) (.mul (.rational 254901722 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 524940699 1) .g) (.mul (.rational 638934166
    1) .v)) .g) (.mul (.rational 166862162 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 108897727 1) .g) (.mul (.rational 171761668 1) .v)) .g) (.mul
    (.rational 60546364 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12987864 1) .g) (.mul (.rational 26461936 1) .v)) .g) (.mul (.rational 12104864 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 524785436 1) .f) (.add (.mul (.rational
    2285422425 1) .g) (.mul (.rational 439058992 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    4250988680 1) .g) (.mul (.rational 1751125994 1) .v)) .g) (.mul (.rational 91653738 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4418819478 1) .g) (.mul (.rational
    2935175342 1) .v)) .g) (.mul (.rational 333720917 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2819774788 1) .g) (.mul (.rational 2695215040 1) .v)) .g) (.mul
    (.rational 501152952 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1141786883 1) .g) (.mul (.rational 1482434006 1) .v)) .g) (.mul (.rational
    402369260 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    292472702 1) .g) (.mul (.rational 501882356 1) .v)) .g) (.mul (.rational 187455062 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 45633470 1) .g) (.mul
    (.rational 103410784 1) .v)) .g) (.mul (.rational 51546675 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3966906 1) .g) (.mul (.rational 12299850 1) .v)) .g)
    (.mul (.rational 8144616 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    457765044 1) .f) (.add (.mul (.rational 2196201885 1) .g) (.mul (.rational 430842108 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 4541268418 1) .g) (.mul (.rational 1923176202 1) .v))
    .g) (.mul (.rational 102082158 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5305403576 1) .g) (.mul (.rational 3654758840 1) .v)) .g) (.mul (.rational 423761584 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3856798645 1) .g) (.mul (.rational
    3866347200 1) .v)) .g) (.mul (.rational 738959195 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1810363277 1) .g) (.mul (.rational 2500320034 1) .v)) .g)
    (.mul (.rational 705497336 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 550474936 1) .g) (.mul (.rational 1022190578 1) .v)) .g) (.mul (.rational 403328870
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 105574176 1) .g)
    (.mul (.rational 263962800 1) .v)) .g) (.mul (.rational 142105488 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 11943019 1) .g) (.mul (.rational 41670148 1)
    .v)) .g) (.mul (.rational 30642201 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 689598 1) .g) (.mul (.rational 3711666 1) .v)) .g) (.mul (.rational 3871040
    1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 315621982 1) .f)
    (.add (.mul (.rational 1654110027 1) .g) (.mul (.rational 331949344 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 3763905215 1) .g) (.mul (.rational 1640824432 1) .v)) .g) (.mul
    (.rational 88537046 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4881089102
    1) .g) (.mul (.rational 3488930444 1) .v)) .g) (.mul (.rational 413439111 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3980060187 1) .g) (.mul (.rational
    4181652816 1) .v)) .g) (.mul (.rational 822759967 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2122750515 1) .g) (.mul (.rational 3110973432 1) .v)) .g)
    (.mul (.rational 912610000 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 745734807 1) .g) (.mul (.rational 1491430966 1) .v)) .g) (.mul (.rational 620016998
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 169062098 1) .g)
    (.mul (.rational 463019962 1) .v)) .g) (.mul (.rational 267254679 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 23387293 1) .g) (.mul (.rational 90975034 1)
    .v)) .g) (.mul (.rational 73273829 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1746514 1) .g) (.mul (.rational 10650170 1) .v)) .g) (.mul (.rational
    12443926 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 51432 1)
    .g) (.mul (.rational 649248 1) .v)) .g) (.mul (.rational 1219792 1) (.pow .v 2))) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 169888912 1) .f) (.add (.mul
    (.rational 965756151 1) .g) (.mul (.rational 198547004 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2398244744 1) .g) (.mul (.rational 1077246074 1) .v)) .g) (.mul (.rational 59209692
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3418004451 1) .g) (.mul
    (.rational 2535551232 1) .v)) .g) (.mul (.rational 307589902 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3088280606 1) .g) (.mul (.rational 3397552546 1) .v)) .g)
    (.mul (.rational 688799186 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1843203186 1) .g) (.mul (.rational 2859409278 1) .v)) .g) (.mul (.rational
    871652182 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    733493911 1) .g) (.mul (.rational 1572980862 1) .v)) .g) (.mul (.rational 686994888 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 191359845 1) .g) (.mul
    (.rational 570282316 1) .v)) .g) (.mul (.rational 350616888 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 31133756 1) .g) (.mul (.rational 133855442 1) .v))
    .g) (.mul (.rational 116740672 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2825023 1) .g) (.mul (.rational 19325930 1) .v)) .g) (.mul (.rational
    24886344 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 106727 1)
    .g) (.mul (.rational 1529844 1) .v)) .g) (.mul (.rational 3217220 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 49008 1) .v) .g) (.mul (.rational 222140 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    69878200 1) .f) (.add (.mul (.rational 428314357 1) .g) (.mul (.rational 90301702 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 1152717959 1) .g) (.mul (.rational 533800062 1) .v)) .g)
    (.mul (.rational 29929338 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1790777737 1) .g) (.mul (.rational 1378448098 1) .v)) .g) (.mul (.rational 171352155 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1775375481 1) .g) (.mul (.rational
    2042761318 1) .v)) .g) (.mul (.rational 426788178 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1171608356 1) .g) (.mul (.rational 1919068658 1) .v)) .g)
    (.mul (.rational 607200997 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 520248419 1) .g) (.mul (.rational 1191257580 1) .v)) .g) (.mul (.rational 544861226
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 153168235 1) .g)
    (.mul (.rational 493640840 1) .v)) .g) (.mul (.rational 321318830 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 28536699 1) .g) (.mul (.rational 134517042
    1) .v)) .g) (.mul (.rational 125802026 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3025775 1) .g) (.mul (.rational 23005964 1) .v)) .g) (.mul (.rational
    32211291 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 137702 1)
    .g) (.mul (.rational 2220230 1) .v)) .g) (.mul (.rational 5144636 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 90970 1) .v) .g) (.mul (.rational 459139 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 17008 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21202889 1) .f) (.add
    (.mul (.rational 139419791 1) .g) (.mul (.rational 30161626 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 404267006 1) .g) (.mul (.rational 193022070 1) .v)) .g) (.mul (.rational
    11048216 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 679911680 1) .g) (.mul
    (.rational 542758088 1) .v)) .g) (.mul (.rational 69151124 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 733662264 1) .g) (.mul (.rational 881581052 1) .v)) .g)
    (.mul (.rational 189700797 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 530175171 1) .g) (.mul (.rational 914489356 1) .v)) .g) (.mul (.rational 299795008
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 259604430 1) .g)
    (.mul (.rational 632101290 1) .v)) .g) (.mul (.rational 301727883 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 84979794 1) .g) (.mul (.rational 294477500
    1) .v)) .g) (.mul (.rational 201779806 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17782135 1) .g) (.mul (.rational 91223032 1) .v)) .g) (.mul (.rational
    90710730 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2145396
    1) .g) (.mul (.rational 17973634 1) .v)) .g) (.mul (.rational 27054108 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 113108 1) .g) (.mul (.rational 2032828 1)
    .v)) .g) (.mul (.rational 5121355 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 100068 1) .v) .g) (.mul (.rational 554938 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 26003 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 4469711 1) .f) (.add (.mul (.rational 31391639 1) .g)
    (.mul (.rational 6969672 1) .v))) .f) (.add (.mul (.add (.mul (.rational 97580481 1) .g) (.mul
    (.rational 48023286 1) .v)) .g) (.mul (.rational 2806252 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 176643886 1) .g) (.mul (.rational 146100922 1) .v)) .g) (.mul
    (.rational 19068861 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    206066212 1) .g) (.mul (.rational 258138714 1) .v)) .g) (.mul (.rational 57138193 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 161771819 1) .g) (.mul
    (.rational 293027162 1) .v)) .g) (.mul (.rational 99302514 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 86519853 1) .g) (.mul (.rational 223112538 1) .v))
    .g) (.mul (.rational 110739975 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 31124032 1) .g) (.mul (.rational 115337414 1) .v)) .g) (.mul (.rational
    82743943 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7208135
    1) .g) (.mul (.rational 39968774 1) .v)) .g) (.mul (.rational 41942530 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 970768 1) .g) (.mul (.rational 8890022 1)
    .v)) .g) (.mul (.rational 14246924 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 57752 1) .g) (.mul (.rational 1147184 1) .v)) .g) (.mul (.rational 3106443 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 65304 1) .v) .g) (.mul
    (.rational 393086 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 21935 1) (.pow .v
    2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 584010 1) .f) (.add (.mul (.rational 4364296 1) .g) (.mul (.rational 994190
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 14480957 1) .g) (.mul (.rational 7340598 1)
    .v)) .g) (.mul (.rational 437652 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 28076447 1) .g) (.mul (.rational 24029420 1) .v)) .g) (.mul (.rational 3209192 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 35208044 1) .g) (.mul
    (.rational 45888210 1) .v)) .g) (.mul (.rational 10428960 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 29828305 1) .g) (.mul (.rational 56575192 1) .v)) .g)
    (.mul (.rational 19765000 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17288716 1) .g) (.mul (.rational 47032018 1) .v)) .g) (.mul (.rational 24179531 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6770977 1) .g) (.mul
    (.rational 26695608 1) .v)) .g) (.mul (.rational 19946670 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1715822 1) .g) (.mul (.rational 10218830 1) .v)) .g)
    (.mul (.rational 11239457 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 254279 1) .g) (.mul (.rational 2526770 1) .v)) .g) (.mul (.rational 4274620 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 16755 1) .g) (.mul
    (.rational 364952 1) .v)) .g) (.mul (.rational 1051545 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 23428 1) .v) .g) (.mul (.rational 151366 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 9703 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 35568 1) .f) (.add
    (.mul (.rational 281898 1) .g) (.mul (.rational 65844 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 994723 1) .g) (.mul (.rational 518814 1) .v)) .g) (.mul (.rational 31520 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2056967 1) .g) (.mul (.rational 1818778
    1) .v)) .g) (.mul (.rational 248112 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2759453 1) .g) (.mul (.rational 3733564 1) .v)) .g) (.mul (.rational 869148 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2508887 1) .g) (.mul
    (.rational 4967852 1) .v)) .g) (.mul (.rational 1783565 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1565743 1) .g) (.mul (.rational 4475960 1) .v)) .g)
    (.mul (.rational 2373795 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 662533 1) .g) (.mul (.rational 2765624 1) .v)) .g) (.mul (.rational 2141121 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 182047 1) .g) (.mul
    (.rational 1157668 1) .v)) .g) (.mul (.rational 1326007 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 29363 1) .g) (.mul (.rational 314464 1) .v)) .g)
    (.mul (.rational 557223 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2114 1) .g) (.mul (.rational 50122 1) .v)) .g) (.mul (.rational 152265 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3566 1) .v) .g) (.mul (.rational
    24475 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1761 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1404

namespace FullHigh1405
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsHigh2.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    16*SmallGap.PolarCoefficientsHigh1.c140 e f g v*((e+f)*(e+f+g))^4+
    32*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsHigh2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    8*SmallGap.PolarCoefficientsHigh1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsHigh2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    16*SmallGap.PolarCoefficientsHigh0.c230 e f g v*((e+f)*(e+f+g))^3+
    24*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    6*SmallGap.PolarCoefficientsHigh0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    12*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(56*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^3+70*SmallGap.ReducedLayers.high0_100_1 e g v*e^4+56*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^5+24*SmallGap.ReducedLayers.high0_010_0 e g v*e^1+60*SmallGap.ReducedLayers.high0_010_1
    e g v*e^2+80*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^3+60*SmallGap.ReducedLayers.high0_010_3 e g v*e^4+24*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.high1_110_0 e g v*e^1+15*SmallGap.ReducedLayers.high1_110_1 e
    g v*e^2+20*SmallGap.ReducedLayers.high1_110_2 e g v*e^3+15*SmallGap.ReducedLayers.high1_110_3
    e g v*e^4+6*SmallGap.ReducedLayers.high1_110_4 e g v*e^5+3*SmallGap.ReducedLayers.high1_020_1
    e g v+12*SmallGap.ReducedLayers.high1_020_2 e g v*e^1+18*SmallGap.ReducedLayers.high1_020_3 e
    g v*e^2+12*SmallGap.ReducedLayers.high1_020_4 e g v*e^3+3*SmallGap.ReducedLayers.high1_020_5 e
    g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    180376 1) .e) (.add (.mul (.rational 1612058 1) .f) (.add (.mul (.rational 1989862 1) .g)
    (.mul (.rational 322308 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 8934792 1) .f) (.add
    (.mul (.rational 15013570 1) .g) (.mul (.rational 2584258 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 9056230 1) .g) (.mul (.rational 3116452 1) .v)) .g) (.mul (.rational 146580 1)
    (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 34324949 1) .f) (.add (.mul
    (.rational 72893629 1) .g) (.mul (.rational 12887014 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 59174387 1) .g) (.mul (.rational 21212914 1) .v)) .g) (.mul (.rational 1067150 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 22954275 1) .g) (.mul (.rational
    12210154 1) .v)) .g) (.mul (.rational 1293292 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 96839246 1) .f) (.add (.mul (.rational 248355797 1)
    .g) (.mul (.rational 44628514 1) .v))) .f) (.add (.mul (.add (.mul (.rational 253232475 1) .g)
    (.mul (.rational 93271540 1) .v)) .g) (.mul (.rational 4822056 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 131134479 1) .g) (.mul (.rational 72965164 1) .v)) .g)
    (.mul (.rational 7997028 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    36310499 1) .g) (.mul (.rational 26504524 1) .v)) .g) (.mul (.rational 4541240 1) (.pow .v
    2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    207460017 1) .f) (.add (.mul (.rational 623164387 1) .g) (.mul (.rational 113588050 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 764380232 1) .g) (.mul (.rational 288357370 1) .v)) .g)
    (.mul (.rational 15101857 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    494614684 1) .g) (.mul (.rational 286167596 1) .v)) .g) (.mul (.rational 31923171 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 181656899 1) .g) (.mul (.rational
    141035592 1) .v)) .g) (.mul (.rational 24848843 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 37672053 1) .g) (.mul (.rational 36160298 1) .v)) .g) (.mul
    (.rational 8731081 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 344220495 1) .f) (.add (.mul (.rational
    1184675541 1) .g) (.mul (.rational 219371468 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1697398913 1) .g) (.mul (.rational 656557204 1) .v)) .g) (.mul (.rational 34687752 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1316526036 1) .g) (.mul (.rational
    791781150 1) .v)) .g) (.mul (.rational 89543113 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 601385067 1) .g) (.mul (.rational 495075856 1) .v)) .g) (.mul
    (.rational 89280111 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 164500939 1) .g) (.mul (.rational 172078320 1) .v)) .g) (.mul (.rational 43352295
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 26018545 1) .g)
    (.mul (.rational 33056500 1) .v)) .g) (.mul (.rational 10616093 1) (.pow .v 2))) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 447074523 1) .f) (.add (.mul (.rational 1734031822 1) .g) (.mul (.rational
    327188018 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2840962737 1) .g) (.mul (.rational
    1129859762 1) .v)) .g) (.mul (.rational 60270981 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2566890661 1) .g) (.mul (.rational 1607707438 1) .v)) .g) (.mul (.rational
    184631396 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1400469413 1) .g)
    (.mul (.rational 1222343182 1) .v)) .g) (.mul (.rational 226096505 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 474362328 1) .g) (.mul (.rational 539033306
    1) .v)) .g) (.mul (.rational 141829805 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 98459975 1) .g) (.mul (.rational 140170902 1) .v)) .g) (.mul (.rational
    48604666 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 11809189
    1) .g) (.mul (.rational 20864918 1) .v)) .g) (.mul (.rational 9009667 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 456137181 1) .f) (.add (.mul (.rational 1968337301 1) .g) (.mul
    (.rational 379755080 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3628592547 1) .g) (.mul
    (.rational 1488522994 1) .v)) .g) (.mul (.rational 80439830 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3740859659 1) .g) (.mul (.rational 2445842706 1) .v)) .g) (.mul
    (.rational 286403346 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2370827744 1) .g) (.mul (.rational 2195511712 1) .v)) .g) (.mul (.rational 418393628 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 955675891 1) .g) (.mul
    (.rational 1177319654 1) .v)) .g) (.mul (.rational 324624631 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 244564491 1) .g) (.mul (.rational 387907618 1)
    .v)) .g) (.mul (.rational 145004803 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 38307373 1) .g) (.mul (.rational 77852394 1) .v)) .g) (.mul (.rational
    37953319 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3362789
    1) .g) (.mul (.rational 9075020 1) .v)) .g) (.mul (.rational 5704415 1) (.pow .v 2))) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 364469587 1) .f) (.add (.mul (.rational 1731902758 1) .g)
    (.mul (.rational 342796506 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3547546272 1) .g)
    (.mul (.rational 1505533436 1) .v)) .g) (.mul (.rational 82768467 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4107939378 1) .g) (.mul (.rational 2809692110 1) .v)) .g)
    (.mul (.rational 337019897 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2963597958 1) .g) (.mul (.rational 2913466412 1) .v)) .g) (.mul (.rational 574567875 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1383455283 1) .g) (.mul
    (.rational 1844005396 1) .v)) .g) (.mul (.rational 534368494 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 419732566 1) .g) (.mul (.rational 737590546 1)
    .v)) .g) (.mul (.rational 296659652 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 80696918 1) .g) (.mul (.rational 186785846 1) .v)) .g) (.mul (.rational
    101431230 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9206627
    1) .g) (.mul (.rational 29122236 1) .v)) .g) (.mul (.rational 21359522 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 539837 1) .g) (.mul (.rational 2597826 1)
    .v)) .g) (.mul (.rational 2689591 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 225751163 1) .f) (.add (.mul (.rational 1171373907 1) .g) (.mul (.rational
    238540486 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2639253852 1) .g) (.mul (.rational
    1161524668 1) .v)) .g) (.mul (.rational 65223768 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3390684854 1) .g) (.mul (.rational 2429675530 1) .v)) .g) (.mul (.rational
    299720035 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2741969954 1) .g)
    (.mul (.rational 2861481484 1) .v)) .g) (.mul (.rational 585919831 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1453161198 1) .g) (.mul (.rational
    2090606706 1) .v)) .g) (.mul (.rational 637549054 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 508830137 1) .g) (.mul (.rational 984955576 1) .v)) .g)
    (.mul (.rational 424849078 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 115493484 1) .g) (.mul (.rational 301467304 1) .v)) .g) (.mul (.rational 180134158
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 16093867 1) .g)
    (.mul (.rational 58833652 1) .v)) .g) (.mul (.rational 49015412 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1219927 1) .g) (.mul (.rational 6934082 1) .v))
    .g) (.mul (.rational 8419505 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 36777 1) .g) (.mul (.rational 434128 1) .v)) .g) (.mul (.rational 860591 1) (.pow
    .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 106297422 1) .f)
    (.add (.mul (.rational 598061489 1) .g) (.mul (.rational 125586200 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1469992174 1) .g) (.mul (.rational 672017988 1) .v)) .g) (.mul
    (.rational 38668477 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2074541317
    1) .g) (.mul (.rational 1558599700 1) .v)) .g) (.mul (.rational 198284418 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1857887925 1) .g) (.mul (.rational
    2056682672 1) .v)) .g) (.mul (.rational 438025343 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1101029075 1) .g) (.mul (.rational 1704703778 1) .v)) .g)
    (.mul (.rational 546879148 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 436302005 1) .g) (.mul (.rational 924824942 1) .v)) .g) (.mul (.rational 425938406
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 113832310 1) .g)
    (.mul (.rational 331874398 1) .v)) .g) (.mul (.rational 215781430 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 18632884 1) .g) (.mul (.rational 77670570 1)
    .v)) .g) (.mul (.rational 71989192 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1714561 1) .g) (.mul (.rational 11323108 1) .v)) .g) (.mul (.rational
    15635243 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 66342 1)
    .g) (.mul (.rational 922132 1) .v)) .g) (.mul (.rational 2111120 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 31120 1) .v) .g) (.mul (.rational 156817 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    36794921 1) .f) (.add (.mul (.rational 223146132 1) .g) (.mul (.rational 48395050 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 594202322 1) .g) (.mul (.rational 282448970 1) .v)) .g)
    (.mul (.rational 16689806 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    913678368 1) .g) (.mul (.rational 719729414 1) .v)) .g) (.mul (.rational 94572284 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 897352525 1) .g) (.mul (.rational
    1052291742 1) .v)) .g) (.mul (.rational 233179486 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 587597787 1) .g) (.mul (.rational 975827054 1) .v)) .g)
    (.mul (.rational 328749956 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 259587825 1) .g) (.mul (.rational 598971088 1) .v)) .g) (.mul (.rational 293071500
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 76342313 1) .g)
    (.mul (.rational 246355796 1) .v)) .g) (.mul (.rational 172567794 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 14289823 1) .g) (.mul (.rational 67093522 1)
    .v)) .g) (.mul (.rational 68063590 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1534244 1) .g) (.mul (.rational 11599160 1) .v)) .g) (.mul (.rational
    17809645 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 71428 1)
    .g) (.mul (.rational 1150710 1) .v)) .g) (.mul (.rational 2967077 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 49558 1) .v) .g) (.mul (.rational 283309 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 11529 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8833142 1) .f) (.add
    (.mul (.rational 57448797 1) .g) (.mul (.rational 12879936 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 164757690 1) .g) (.mul (.rational 81456330 1) .v)) .g) (.mul (.rational
    4948170 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 274142890 1) .g) (.mul
    (.rational 226284710 1) .v)) .g) (.mul (.rational 30721124 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 292889129 1) .g) (.mul (.rational 363149638 1) .v)) .g)
    (.mul (.rational 83655574 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 209866892 1) .g) (.mul (.rational 372489080 1) .v)) .g) (.mul (.rational 131434612
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 102141936 1) .g)
    (.mul (.rational 255065594 1) .v)) .g) (.mul (.rational 131893039 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 33356594 1) .g) (.mul (.rational 118147640
    1) .v)) .g) (.mul (.rational 88384131 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7000823 1) .g) (.mul (.rational 36618466 1) .v)) .g) (.mul (.rational
    40136495 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 853459 1)
    .g) (.mul (.rational 7290576 1) .v)) .g) (.mul (.rational 12239766 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 45912 1) .g) (.mul (.rational 845428 1) .v))
    .g) (.mul (.rational 2409647 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 43514 1) .v) .g) (.mul (.rational 277447 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 14155 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1314306 1) .f) (.add (.mul (.rational 9126486 1) .g)
    (.mul (.rational 2115972 1) .v))) .f) (.add (.mul (.add (.mul (.rational 28046927 1) .g) (.mul
    (.rational 14418656 1) .v)) .g) (.mul (.rational 900576 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 50204748 1) .g) (.mul (.rational 43375538 1) .v)) .g) (.mul
    (.rational 6080724 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 57950931
    1) .g) (.mul (.rational 75801306 1) .v)) .g) (.mul (.rational 18122458 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 45073453 1) .g) (.mul (.rational 85181984
    1) .v)) .g) (.mul (.rational 31381768 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 23934846 1) .g) (.mul (.rational 64326202 1) .v)) .g) (.mul (.rational
    34972602 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8577102
    1) .g) (.mul (.rational 33090396 1) .v)) .g) (.mul (.rational 26235581 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1988273 1) .g) (.mul (.rational 11473198
    1) .v)) .g) (.mul (.rational 13446239 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 269811 1) .g) (.mul (.rational 2574716 1) .v)) .g) (.mul (.rational
    4665258 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 16317 1)
    .g) (.mul (.rational 339294 1) .v)) .g) (.mul (.rational 1053568 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 20050 1) .v) .g) (.mul (.rational 140557 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 8445 1) (.pow .v 2)) (.pow .g 10))) (.pow .f
    2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 91332 1) .f)
    (.add (.mul (.rational 674506 1) .g) (.mul (.rational 161696 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 2211380 1) .g) (.mul (.rational 1181268 1) .v)) .g) (.mul (.rational 75816 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4236891 1) .g) (.mul (.rational
    3825812 1) .v)) .g) (.mul (.rational 553104 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5252968 1) .g) (.mul (.rational 7230666 1) .v)) .g) (.mul (.rational 1790190
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4404661 1) .g)
    (.mul (.rational 8830302 1) .v)) .g) (.mul (.rational 3385120 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2531406 1) .g) (.mul (.rational 7283674 1) .v))
    .g) (.mul (.rational 4143333 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 985805 1) .g) (.mul (.rational 4113918 1) .v)) .g) (.mul (.rational 3434022 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 249416 1) .g) (.mul
    (.rational 1574142 1) .v)) .g) (.mul (.rational 1955759 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 37113 1) .g) (.mul (.rational 391706 1) .v)) .g)
    (.mul (.rational 758100 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2474 1) .g) (.mul (.rational 57482 1) .v)) .g) (.mul (.rational 192195 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3798 1) .v) .g) (.mul (.rational
    28918 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1971 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1405

namespace FullHigh1406
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  16*SmallGap.PolarCoefficientsHigh2.c140 e f g v*((e+f)*(e+f+g))^4+
    8*SmallGap.PolarCoefficientsHigh2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    16*SmallGap.PolarCoefficientsHigh1.c230 e f g v*((e+f)*(e+f+g))^3+
    24*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    6*SmallGap.PolarCoefficientsHigh1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    12*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    4*SmallGap.PolarCoefficientsHigh0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(28*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^2+56*SmallGap.ReducedLayers.high0_100_1 e g v*e^3+70*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^4+4*SmallGap.ReducedLayers.high0_010_0 e g v+24*SmallGap.ReducedLayers.high0_010_1 e g
    v*e^1+60*SmallGap.ReducedLayers.high0_010_2 e g v*e^2+80*SmallGap.ReducedLayers.high0_010_3 e
    g v*e^3+60*SmallGap.ReducedLayers.high0_010_4 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_110_0 e g v+6*SmallGap.ReducedLayers.high1_110_1 e g
    v*e^1+15*SmallGap.ReducedLayers.high1_110_2 e g v*e^2+20*SmallGap.ReducedLayers.high1_110_3 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_110_4 e g v*e^4+3*SmallGap.ReducedLayers.high1_020_2 e
    g v+12*SmallGap.ReducedLayers.high1_020_3 e g v*e^1+18*SmallGap.ReducedLayers.high1_020_4 e g
    v*e^2+12*SmallGap.ReducedLayers.high1_020_5 e g v*e^3+3*SmallGap.ReducedLayers.high1_020_6 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 153692 1)
    .e) (.add (.mul (.rational 1346394 1) .f) (.add (.mul (.rational 1655206 1) .g) (.mul
    (.rational 271348 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 7282430 1) .f) (.add (.mul
    (.rational 12174668 1) .g) (.mul (.rational 2107856 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 7316854 1) .g) (.mul (.rational 2497100 1) .v)) .g) (.mul (.rational 122640 1)
    (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 27145889 1) .f) (.add (.mul
    (.rational 57296081 1) .g) (.mul (.rational 10140852 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 46282007 1) .g) (.mul (.rational 16355784 1) .v)) .g) (.mul (.rational 858830 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 17906863 1) .g) (.mul (.rational
    9156704 1) .v)) .g) (.mul (.rational 1015644 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 73783654 1) .f) (.add (.mul (.rational 187883812 1)
    .g) (.mul (.rational 33699344 1) .v))) .f) (.add (.mul (.add (.mul (.rational 190394346 1) .g)
    (.mul (.rational 68903856 1) .v)) .g) (.mul (.rational 3713240 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 98178604 1) .g) (.mul (.rational 52365214 1) .v)) .g) (.mul
    (.rational 5984926 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 27159564
    1) .g) (.mul (.rational 18284488 1) .v)) .g) (.mul (.rational 3251748 1) (.pow .v 2))) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 150977567
    1) .f) (.add (.mul (.rational 449843697 1) .g) (.mul (.rational 81767316 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 547751096 1) .g) (.mul (.rational 202940858 1) .v)) .g) (.mul
    (.rational 11062089 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 352412514
    1) .g) (.mul (.rational 195650512 1) .v)) .g) (.mul (.rational 22680961 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 129044261 1) .g) (.mul (.rational 92808806 1)
    .v)) .g) (.mul (.rational 16873873 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 26790045 1) .g) (.mul (.rational 22596692 1) .v)) .g) (.mul (.rational
    5507867 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 236778867 1) .f) (.add (.mul (.rational 807566070 1) .g)
    (.mul (.rational 149316212 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1147340312 1) .g)
    (.mul (.rational 436931402 1) .v)) .g) (.mul (.rational 24013768 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 883555938 1) .g) (.mul (.rational 512345104 1) .v)) .g)
    (.mul (.rational 60132516 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    401651735 1) .g) (.mul (.rational 309122432 1) .v)) .g) (.mul (.rational 57433436 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 109717532 1) .g) (.mul
    (.rational 102599106 1) .v)) .g) (.mul (.rational 26128402 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 17410618 1) .g) (.mul (.rational 18565022 1) .v)) .g)
    (.mul (.rational 5742144 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 286974863 1) .f) (.add (.mul
    (.rational 1102066275 1) .g) (.mul (.rational 208356138 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1788487575 1) .g) (.mul (.rational 703916826 1) .v)) .g) (.mul (.rational 39120243
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1602321031 1) .g) (.mul
    (.rational 975459794 1) .v)) .g) (.mul (.rational 116484276 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 868494983 1) .g) (.mul (.rational 718002026 1) .v)) .g)
    (.mul (.rational 137326581 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 293131141 1) .g) (.mul (.rational 304249922 1) .v)) .g) (.mul (.rational 81685455
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 60879415 1) .g)
    (.mul (.rational 75371224 1) .v)) .g) (.mul (.rational 25895902 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7341845 1) .g) (.mul (.rational 10603986 1) .v))
    .g) (.mul (.rational 4265329 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 268865395 1) .f)
    (.add (.mul (.rational 1147801256 1) .g) (.mul (.rational 223091290 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 2093849798 1) .g) (.mul (.rational 856389302 1) .v)) .g) (.mul
    (.rational 48408154 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2137809750
    1) .g) (.mul (.rational 1373127874 1) .v)) .g) (.mul (.rational 168103221 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1343929289 1) .g) (.mul (.rational
    1197567728 1) .v)) .g) (.mul (.rational 237979776 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 538760732 1) .g) (.mul (.rational 620902886 1) .v)) .g)
    (.mul (.rational 177377578 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 137630070 1) .g) (.mul (.rational 196899574 1) .v)) .g) (.mul (.rational 75264278
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 21620350 1) .g)
    (.mul (.rational 37957520 1) .v)) .g) (.mul (.rational 18499891 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1912304 1) .g) (.mul (.rational 4268892 1) .v))
    .g) (.mul (.rational 2608468 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    193215743 1) .f) (.add (.mul (.rational 907614481 1) .g) (.mul (.rational 182245704 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1838019520 1) .g) (.mul (.rational 784864562 1) .v))
    .g) (.mul (.rational 45419749 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2105479696 1) .g) (.mul (.rational 1432361572 1) .v)) .g) (.mul (.rational 181121379 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1504599590 1) .g) (.mul (.rational
    1448098880 1) .v)) .g) (.mul (.rational 301313182 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 697312528 1) .g) (.mul (.rational 891096000 1) .v)) .g)
    (.mul (.rational 272410718 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 210757618 1) .g) (.mul (.rational 345984072 1) .v)) .g) (.mul (.rational 146609664
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 40550048 1) .g)
    (.mul (.rational 85195612 1) .v)) .g) (.mul (.rational 48690574 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4653515 1) .g) (.mul (.rational 13024870 1) .v))
    .g) (.mul (.rational 10104147 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 275561 1) .g) (.mul (.rational 1159564 1) .v)) .g) (.mul (.rational 1300325 1)
    (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 104649295 1) .f) (.add
    (.mul (.rational 536406030 1) .g) (.mul (.rational 111718616 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 1193881681 1) .g) (.mul (.rational 534137970 1) .v)) .g) (.mul (.rational
    31826884 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1515772798 1) .g)
    (.mul (.rational 1094868892 1) .v)) .g) (.mul (.rational 143827346 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1212682858 1) .g) (.mul (.rational 1261154390 1) .v))
    .g) (.mul (.rational 276103818 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 637098230 1) .g) (.mul (.rational 900020860 1) .v)) .g) (.mul (.rational
    294868788 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    221847123 1) .g) (.mul (.rational 414336840 1) .v)) .g) (.mul (.rational 193223936 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 50300896 1) .g) (.mul
    (.rational 124397364 1) .v)) .g) (.mul (.rational 81152454 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7041211 1) .g) (.mul (.rational 24053722 1) .v)) .g)
    (.mul (.rational 22252550 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 539302 1) .g) (.mul (.rational 2860646 1) .v)) .g) (.mul (.rational 3970222 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 16488 1) .g) (.mul
    (.rational 185234 1) .v)) .g) (.mul (.rational 437432 1) (.pow .v 2))) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 41378518 1) .f) (.add (.mul (.rational
    229829554 1) .g) (.mul (.rational 49797534 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    557603340 1) .g) (.mul (.rational 261978830 1) .v)) .g) (.mul (.rational 16140463 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 776970328 1) .g) (.mul (.rational 596523548
    1) .v)) .g) (.mul (.rational 81698366 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 687646707 1) .g) (.mul (.rational 771966086 1) .v)) .g) (.mul (.rational 178161067
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 403445969 1) .g)
    (.mul (.rational 627355538 1) .v)) .g) (.mul (.rational 219895166 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 158748227 1) .g) (.mul (.rational 334218668
    1) .v)) .g) (.mul (.rational 170007618 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 41309401 1) .g) (.mul (.rational 118352254 1) .v)) .g) (.mul (.rational
    86255070 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 6784548
    1) .g) (.mul (.rational 27617112 1) .v)) .g) (.mul (.rational 29288924 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 630952 1) .g) (.mul (.rational 4085128 1)
    .v)) .g) (.mul (.rational 6635459 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 24864 1) .g) (.mul (.rational 345748 1) .v)) .g) (.mul (.rational 961988 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 12442 1) .v) .g) (.mul
    (.rational 78499 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 11284343 1) .f) (.add (.mul (.rational 67517052 1) .g) (.mul (.rational
    15249382 1) .v))) .f) (.add (.mul (.add (.mul (.rational 177336946 1) .g) (.mul (.rational
    87601278 1) .v)) .g) (.mul (.rational 5594498 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 269011706 1) .g) (.mul (.rational 219508994 1) .v)) .g) (.mul (.rational
    31390467 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 260844557 1) .g)
    (.mul (.rational 315442840 1) .v)) .g) (.mul (.rational 76715776 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 168904352 1) .g) (.mul (.rational 287643068
    1) .v)) .g) (.mul (.rational 107472155 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 73995516 1) .g) (.mul (.rational 173997150 1) .v)) .g) (.mul (.rational
    95674170 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 21673826
    1) .g) (.mul (.rational 70897236 1) .v)) .g) (.mul (.rational 56757332 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4065614 1) .g) (.mul (.rational 19319236
    1) .v)) .g) (.mul (.rational 22878232 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 440984 1) .g) (.mul (.rational 3395982 1) .v)) .g) (.mul (.rational
    6243167 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 20944 1)
    .g) (.mul (.rational 350248 1) .v)) .g) (.mul (.rational 1111100 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 16090 1) .v) .g) (.mul (.rational 115887 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 5232 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1899396 1) .f) (.add
    (.mul (.rational 12179880 1) .g) (.mul (.rational 2870868 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 34430806 1) .g) (.mul (.rational 17887836 1) .v)) .g) (.mul (.rational 1185444 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 56474560 1) .g) (.mul (.rational
    48929658 1) .v)) .g) (.mul (.rational 7305732 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 59515631 1) .g) (.mul (.rational 77313890 1) .v)) .g) (.mul (.rational
    19778475 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 42126873
    1) .g) (.mul (.rational 78148348 1) .v)) .g) (.mul (.rational 30986194 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 20307104 1) .g) (.mul (.rational 52866504
    1) .v)) .g) (.mul (.rational 31165314 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6595874 1) .g) (.mul (.rational 24317392 1) .v)) .g) (.mul (.rational
    21106503 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1385315
    1) .g) (.mul (.rational 7552986 1) .v)) .g) (.mul (.rational 9807979 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 170413 1) .g) (.mul (.rational 1528728 1)
    .v)) .g) (.mul (.rational 3113200 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9348 1) .g) (.mul (.rational 183824 1) .v)) .g) (.mul (.rational 651192 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 10046 1) .v) .g) (.mul
    (.rational 81363 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 4588 1) (.pow .v
    2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    148884 1) .f) (.add (.mul (.rational 1018644 1) .g) (.mul (.rational 250680 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 3083399 1) .g) (.mul (.rational 1684128 1) .v)) .g) (.mul
    (.rational 115824 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5436540 1)
    .g) (.mul (.rational 4993474 1) .v)) .g) (.mul (.rational 777708 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6184557 1) .g) (.mul (.rational 8602734 1) .v)) .g)
    (.mul (.rational 2309286 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4746942 1) .g) (.mul (.rational 9540946 1) .v)) .g) (.mul (.rational 3996751 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2493569 1) .g) (.mul
    (.rational 7128994 1) .v)) .g) (.mul (.rational 4474048 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 887424 1) .g) (.mul (.rational 3646098 1) .v)) .g)
    (.mul (.rational 3396957 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 205495 1) .g) (.mul (.rational 1267074 1) .v)) .g) (.mul (.rational 1781238 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 28082 1) .g) (.mul
    (.rational 288534 1) .v)) .g) (.mul (.rational 641481 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1728 1) .g) (.mul (.rational 39246 1) .v)) .g) (.mul
    (.rational 153036 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2444
    1) .v) .g) (.mul (.rational 21983 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    1448 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1406

namespace FullHigh1407
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  16*SmallGap.PolarCoefficientsHigh2.c230 e f g v*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsHigh2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    12*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    8*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsHigh1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(8*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^1+28*SmallGap.ReducedLayers.high0_100_1 e g v*e^2+56*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^3+4*SmallGap.ReducedLayers.high0_010_1 e g v+24*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^1+60*SmallGap.ReducedLayers.high0_010_3 e g v*e^2+80*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_110_1 e g v+6*SmallGap.ReducedLayers.high1_110_2 e g
    v*e^1+15*SmallGap.ReducedLayers.high1_110_3 e g v*e^2+20*SmallGap.ReducedLayers.high1_110_4 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_020_3 e g v+12*SmallGap.ReducedLayers.high1_020_4 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_020_5 e g v*e^2+12*SmallGap.ReducedLayers.high1_020_6 e
    g v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 89920 1) .e) (.add
    (.mul (.rational 774028 1) .f) (.add (.mul (.rational 948108 1) .g) (.mul (.rational 156712 1)
    .v)))) .e) (.add (.mul (.add (.mul (.rational 4092582 1) .f) (.add (.mul (.rational 6808944 1)
    .g) (.mul (.rational 1181118 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4080410 1) .g)
    (.mul (.rational 1372004 1) .v)) .g) (.mul (.rational 70440 1) (.pow .v 2))))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 14811094 1) .f) (.add (.mul (.rational 31072034 1) .g)
    (.mul (.rational 5484854 1) .v))) .f) (.add (.mul (.add (.mul (.rational 24989682 1) .g) (.mul
    (.rational 8644722 1) .v)) .g) (.mul (.rational 475452 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9657094 1) .g) (.mul (.rational 4684866 1) .v)) .g) (.mul (.rational
    547640 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    38749324 1) .f) (.add (.mul (.rational 97947232 1) .g) (.mul (.rational 17478812 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 98674112 1) .g) (.mul (.rational 34846154 1) .v)) .g) (.mul
    (.rational 1968560 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 50721192 1)
    .g) (.mul (.rational 25581466 1) .v)) .g) (.mul (.rational 3074536 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 14046564 1) .g) (.mul (.rational 8493158 1) .v)) .g)
    (.mul (.rational 1586864 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 75510310 1) .f) (.add (.mul (.rational 223037382 1)
    .g) (.mul (.rational 40344720 1) .v))) .f) (.add (.mul (.add (.mul (.rational 269570258 1) .g)
    (.mul (.rational 97521552 1) .v)) .g) (.mul (.rational 5576048 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 172550354 1) .g) (.mul (.rational 90778858 1) .v)) .g)
    (.mul (.rational 11048888 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    63091568 1) .g) (.mul (.rational 40995574 1) .v)) .g) (.mul (.rational 7793096 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 13145840 1) .g) (.mul
    (.rational 9273198 1) .v)) .g) (.mul (.rational 2308712 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 111294268
    1) .f) (.add (.mul (.rational 375794248 1) .g) (.mul (.rational 69368994 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 529117222 1) .g) (.mul (.rational 197664556 1) .v)) .g) (.mul
    (.rational 11420008 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 404592616
    1) .g) (.mul (.rational 224009360 1) .v)) .g) (.mul (.rational 27644120 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 183193108 1) .g) (.mul (.rational 129113198 1)
    .v)) .g) (.mul (.rational 25115504 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 50064904 1) .g) (.mul (.rational 40177348 1) .v)) .g) (.mul (.rational
    10516736 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7991370
    1) .g) (.mul (.rational 6604382 1) .v)) .g) (.mul (.rational 1959112 1) (.pow .v 2))) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 124664682 1) .f) (.add (.mul (.rational 473341930 1) .g) (.mul (.rational 89887750
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 760067764 1) .g) (.mul (.rational 295898814 1)
    .v)) .g) (.mul (.rational 17375664 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 674818616 1) .g) (.mul (.rational 397070924 1) .v)) .g) (.mul (.rational 50168304
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 363412376 1) .g) (.mul
    (.rational 280517732 1) .v)) .g) (.mul (.rational 56699252 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 122329608 1) .g) (.mul (.rational 112618744 1) .v))
    .g) (.mul (.rational 31692580 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25459114 1) .g) (.mul (.rational 25938524 1) .v)) .g) (.mul (.rational 9086444 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3091350 1) .g) (.mul
    (.rational 3303790 1) .v)) .g) (.mul (.rational 1245740 1) (.pow .v 2))) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 105626764 1) .f) (.add (.mul (.rational 445257308 1) .g) (.mul (.rational
    87666352 1) .v))) .f) (.add (.mul (.add (.mul (.rational 802426806 1) .g) (.mul (.rational
    328272590 1) .v)) .g) (.mul (.rational 19774408 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 810312116 1) .g) (.mul (.rational 510945868 1) .v)) .g) (.mul (.rational
    66915528 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 504882740 1) .g)
    (.mul (.rational 429838876 1) .v)) .g) (.mul (.rational 91715704 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 201243528 1) .g) (.mul (.rational 213233268
    1) .v)) .g) (.mul (.rational 65601876 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 51327882 1) .g) (.mul (.rational 64090276 1) .v)) .g) (.mul (.rational
    26421900 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8085200
    1) .g) (.mul (.rational 11608970 1) .v)) .g) (.mul (.rational 6114556 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 718752 1) .g) (.mul (.rational 1223218 1)
    .v)) .g) (.mul (.rational 824596 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    66662494 1) .f) (.add (.mul (.rational 308816114 1) .g) (.mul (.rational 63457396 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 616869334 1) .g) (.mul (.rational 266939644 1) .v)) .g)
    (.mul (.rational 16648132 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    697564270 1) .g) (.mul (.rational 474088980 1) .v)) .g) (.mul (.rational 65052012 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 492886584 1) .g) (.mul (.rational
    464442700 1) .v)) .g) (.mul (.rational 105784092 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 226458428 1) .g) (.mul (.rational 275695196 1) .v)) .g)
    (.mul (.rational 93353784 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 68100568 1) .g) (.mul (.rational 102906548 1) .v)) .g) (.mul (.rational 49164020 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 13089224 1) .g) (.mul
    (.rational 24378210 1) .v)) .g) (.mul (.rational 16186076 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1504648 1) .g) (.mul (.rational 3621118 1) .v)) .g)
    (.mul (.rational 3444724 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 88968 1) .g) (.mul (.rational 320042 1) .v)) .g) (.mul (.rational 480160 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 30404070 1) .f) (.add (.mul
    (.rational 153504600 1) .g) (.mul (.rational 33085116 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 336497504 1) .g) (.mul (.rational 154716100 1) .v)) .g) (.mul (.rational 10062064
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 420955576 1) .g) (.mul
    (.rational 309328396 1) .v)) .g) (.mul (.rational 44784476 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 332233212 1) .g) (.mul (.rational 346578152 1) .v)) .g)
    (.mul (.rational 84697748 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 172553728 1) .g) (.mul (.rational 240074678 1) .v)) .g) (.mul (.rational 89351200
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 59590022 1) .g)
    (.mul (.rational 107284688 1) .v)) .g) (.mul (.rational 58283824 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 13451944 1) .g) (.mul (.rational 31426812 1)
    .v)) .g) (.mul (.rational 24782524 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1881152 1) .g) (.mul (.rational 6012002 1) .v)) .g) (.mul (.rational 7085916
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 143936 1) .g)
    (.mul (.rational 724498 1) .v)) .g) (.mul (.rational 1367376 1) (.pow .v 2))) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4344 1) .g) (.mul (.rational 48774 1) .v)) .g)
    (.mul (.rational 166728 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 9479700 1) .f) (.add (.mul (.rational 51802232 1) .g) (.mul (.rational
    11750416 1) .v))) .f) (.add (.mul (.add (.mul (.rational 123604278 1) .g) (.mul (.rational
    60535252 1) .v)) .g) (.mul (.rational 4123604 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 169402814 1) .g) (.mul (.rational 134700648 1) .v)) .g) (.mul (.rational
    20643400 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 147580320 1) .g)
    (.mul (.rational 170056804 1) .v)) .g) (.mul (.rational 44604976 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 85376416 1) .g) (.mul (.rational 134738286
    1) .v)) .g) (.mul (.rational 54793820 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 33218338 1) .g) (.mul (.rational 70116394 1) .v)) .g) (.mul (.rational
    42545732 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8580518
    1) .g) (.mul (.rational 24420116 1) .v)) .g) (.mul (.rational 22027312 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1404828 1) .g) (.mul (.rational 5686768
    1) .v)) .g) (.mul (.rational 7815436 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 130620 1) .g) (.mul (.rational 859046 1) .v)) .g) (.mul (.rational
    1900608 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5136 1)
    .g) (.mul (.rational 76222 1) .v)) .g) (.mul (.rational 301376 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 2928 1) .v) .g) (.mul (.rational 26900 1) (.pow .v 2)))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1810080 1)
    .f) (.add (.mul (.rational 10642944 1) .g) (.mul (.rational 2545728 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 27454446 1) .g) (.mul (.rational 14334924 1) .v)) .g) (.mul (.rational
    1024776 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 40894300 1) .g) (.mul
    (.rational 35154848 1) .v)) .g) (.mul (.rational 5704704 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 38952808 1) .g) (.mul (.rational 49391648 1) .v)) .g) (.mul
    (.rational 13868216 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 24811216 1) .g) (.mul (.rational 44043856 1) .v)) .g) (.mul (.rational 19423684 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10719406 1) .g) (.mul
    (.rational 26126294 1) .v)) .g) (.mul (.rational 17441308 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3108560 1) .g) (.mul (.rational 10515696 1) .v)) .g)
    (.mul (.rational 10583832 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 580240 1) .g) (.mul (.rational 2870548 1) .v)) .g) (.mul (.rational 4449384 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 62964 1) .g) (.mul
    (.rational 516456 1) .v)) .g) (.mul (.rational 1294392 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3004 1) .g) (.mul (.rational 55930 1) .v)) .g) (.mul
    (.rational 250072 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2760
    1) .v) .g) (.mul (.rational 28556 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    1412 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 159840 1) .f) (.add (.mul (.rational 1006116 1) .g) (.mul (.rational 253992
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 2789604 1) .g) (.mul (.rational 1552416 1)
    .v)) .g) (.mul (.rational 116496 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4485860 1) .g) (.mul (.rational 4160572 1) .v)) .g) (.mul (.rational 713880 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4635352 1) .g) (.mul
    (.rational 6437512 1) .v)) .g) (.mul (.rational 1927420 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3220500 1) .g) (.mul (.rational 6376216 1) .v)) .g)
    (.mul (.rational 3026960 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1527340 1) .g) (.mul (.rational 4239852 1) .v)) .g) (.mul (.rational 3077244 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 490012 1) .g) (.mul
    (.rational 1930692 1) .v)) .g) (.mul (.rational 2132640 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 102240 1) .g) (.mul (.rational 601440 1) .v)) .g)
    (.mul (.rational 1031072 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12584 1) .g) (.mul (.rational 124520 1) .v)) .g) (.mul (.rational 347120 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 696 1) .g) (.mul (.rational
    15692 1) .v)) .g) (.mul (.rational 78428 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 920 1) .v) .g) (.mul (.rational 10728 1) (.pow .v 2))) (.pow .g 9))) .f)
    (.mul (.mul (.rational 668 1) (.pow .v 2)) (.pow .g 10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1407

namespace FullHigh1408
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  12*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    8*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsHigh2.c410 e f g v*e*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_100_0 e g v+8*SmallGap.ReducedLayers.high0_100_1 e g
    v*e^1+28*SmallGap.ReducedLayers.high0_100_2 e g v*e^2+4*SmallGap.ReducedLayers.high0_010_2 e g
    v+24*SmallGap.ReducedLayers.high0_010_3 e g v*e^1+60*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_110_2 e g v+6*SmallGap.ReducedLayers.high1_110_3 e g
    v*e^1+15*SmallGap.ReducedLayers.high1_110_4 e g v*e^2+3*SmallGap.ReducedLayers.high1_020_4 e g
    v+12*SmallGap.ReducedLayers.high1_020_5 e g v*e^1+18*SmallGap.ReducedLayers.high1_020_6 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 34568 1) .e) (.add (.mul (.rational
    293071 1) .f) (.add (.mul (.rational 357836 1) .g) (.mul (.rational 59412 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 1517316 1) .f) (.add (.mul (.rational 2513012 1) .g) (.mul
    (.rational 435026 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1503098 1) .g) (.mul
    (.rational 494468 1) .v)) .g) (.mul (.rational 26580 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 5334406 1) .f) (.add (.mul (.rational 11124155 1) .g) (.mul
    (.rational 1950770 1) .v))) .f) (.add (.mul (.add (.mul (.rational 8914804 1) .g) (.mul
    (.rational 2995226 1) .v)) .g) (.mul (.rational 173299 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3447153 1) .g) (.mul (.rational 1561946 1) .v)) .g) (.mul (.rational
    194066 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    13420171 1) .f) (.add (.mul (.rational 33665539 1) .g) (.mul (.rational 5957550 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 33734823 1) .g) (.mul (.rational 11534684 1) .v)) .g) (.mul
    (.rational 687912 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 17313657 1)
    .g) (.mul (.rational 8121512 1) .v)) .g) (.mul (.rational 1038066 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4814314 1) .g) (.mul (.rational 2523876 1) .v)) .g)
    (.mul (.rational 504922 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 24823991 1) .f) (.add (.mul (.rational 72642939 1)
    .g) (.mul (.rational 13055348 1) .v))) .f) (.add (.mul (.add (.mul (.rational 87163048 1) .g)
    (.mul (.rational 30597756 1) .v)) .g) (.mul (.rational 1853336 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 55577932 1) .g) (.mul (.rational 27294574 1) .v)) .g) (.mul
    (.rational 3537510 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 20346557
    1) .g) (.mul (.rational 11556198 1) .v)) .g) (.mul (.rational 2346076 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4273173 1) .g) (.mul (.rational 2338454
    1) .v)) .g) (.mul (.rational 611264 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 34158188 1) .f) (.add (.mul
    (.rational 114059995 1) .g) (.mul (.rational 21046662 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 159103732 1) .g) (.mul (.rational 58134262 1) .v)) .g) (.mul (.rational 3579850 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 120893096 1) .g) (.mul (.rational
    63226006 1) .v)) .g) (.mul (.rational 8359199 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 54640174 1) .g) (.mul (.rational 34363156 1) .v)) .g) (.mul (.rational
    7189281 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 14996273
    1) .g) (.mul (.rational 9744242 1) .v)) .g) (.mul (.rational 2724523 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2420630 1) .g) (.mul (.rational 1349382 1)
    .v)) .g) (.mul (.rational 392611 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 34950234 1) .f) (.add
    (.mul (.rational 130984950 1) .g) (.mul (.rational 25115510 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 207914927 1) .g) (.mul (.rational 80207754 1) .v)) .g) (.mul (.rational
    5074965 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 182946951 1) .g) (.mul
    (.rational 103591934 1) .v)) .g) (.mul (.rational 14212836 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 98027450 1) .g) (.mul (.rational 69552572 1) .v)) .g) (.mul
    (.rational 15415798 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 33006764 1) .g) (.mul (.rational 25973088 1) .v)) .g) (.mul (.rational 8108680 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6913643 1) .g) (.mul
    (.rational 5347452 1) .v)) .g) (.mul (.rational 2098303 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 849371 1) .g) (.mul (.rational 559404 1) .v)) .g)
    (.mul (.rational 231770 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 26258543 1) .f)
    (.add (.mul (.rational 109043734 1) .g) (.mul (.rational 21963090 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 193806641 1) .g) (.mul (.rational 79891066 1) .v)) .g) (.mul (.rational
    5267462 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 193414049 1) .g) (.mul
    (.rational 120082538 1) .v)) .g) (.mul (.rational 17422083 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 119486939 1) .g) (.mul (.rational 96751804 1) .v)) .g)
    (.mul (.rational 23272206 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 47436688 1) .g) (.mul (.rational 45433600 1) .v)) .g) (.mul (.rational 16197291 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 12114119 1) .g) (.mul
    (.rational 12720430 1) .v)) .g) (.mul (.rational 6381101 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1918761 1) .g) (.mul (.rational 2103054 1) .v)) .g)
    (.mul (.rational 1487716 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 171358 1) .g) (.mul (.rational 197612 1) .v)) .g) (.mul (.rational 220297 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 14081004 1) .f) (.add (.mul (.rational
    64132772 1) .g) (.mul (.rational 13683304 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    126033024 1) .g) (.mul (.rational 55991204 1) .v)) .g) (.mul (.rational 3894318 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 140422366 1) .g) (.mul (.rational 96319292
    1) .v)) .g) (.mul (.rational 14984172 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 98009967 1) .g) (.mul (.rational 90936432 1) .v)) .g) (.mul (.rational 24050230 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 44645361 1) .g) (.mul
    (.rational 51743316 1) .v)) .g) (.mul (.rational 21104588 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 13368068 1) .g) (.mul (.rational 18443296 1) .v)) .g)
    (.mul (.rational 11257038 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2566642 1) .g) (.mul (.rational 4182638 1) .v)) .g) (.mul (.rational 3898318 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 294142 1) .g) (.mul
    (.rational 604074 1) .v)) .g) (.mul (.rational 922642 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 17011 1) .g) (.mul (.rational 53278 1) .v)) .g) (.mul
    (.rational 148340 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5104530 1) .f) (.add (.mul (.rational 25287046 1) .g) (.mul (.rational 5747180 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 54396104 1) .g) (.mul (.rational 26172280 1) .v)) .g) (.mul
    (.rational 1935288 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 66834738 1)
    .g) (.mul (.rational 50797052 1) .v)) .g) (.mul (.rational 8531532 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 51899170 1) .g) (.mul (.rational 55082908 1) .v)) .g)
    (.mul (.rational 16060600 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26594317 1) .g) (.mul (.rational 36859338 1) .v)) .g) (.mul (.rational 17040382 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9091208 1) .g) (.mul
    (.rational 15939074 1) .v)) .g) (.mul (.rational 11397066 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2036210 1) .g) (.mul (.rational 4561334 1) .v)) .g)
    (.mul (.rational 5122525 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 281818 1) .g) (.mul (.rational 870720 1) .v)) .g) (.mul (.rational 1603755 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 20985 1) .g) (.mul
    (.rational 107608 1) .v)) .g) (.mul (.rational 345583 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 576 1) .g) (.mul (.rational 7494 1) .v)) .g) (.mul
    (.rational 46417 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1121580 1) .f) (.add (.mul (.rational 6001506 1) .g) (.mul (.rational 1457352 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 14016114 1) .g) (.mul (.rational 7316820 1) .v))
    .g) (.mul (.rational 577008 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    18804550 1) .g) (.mul (.rational 15826292 1) .v)) .g) (.mul (.rational 2872260 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16051980 1) .g) (.mul (.rational
    19383760 1) .v)) .g) (.mul (.rational 6206562 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9115546 1) .g) (.mul (.rational 14895402 1) .v)) .g) (.mul
    (.rational 7704108 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3489717 1) .g) (.mul (.rational 7545378 1) .v)) .g) (.mul (.rational 6147189 1) (.pow .v 2)))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 888363 1) .g) (.mul (.rational
    2585838 1) .v)) .g) (.mul (.rational 3347748 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 143002 1) .g) (.mul (.rational 604484 1) .v)) .g) (.mul
    (.rational 1280564 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    12899 1) .g) (.mul (.rational 93886 1) .v)) .g) (.mul (.rational 340548 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 471 1) .g) (.mul (.rational 8666 1) .v))
    .g) (.mul (.rational 58704 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 338 1) .v) .g) (.mul (.rational 5552 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 112860 1) .f) (.add (.mul
    (.rational 648504 1) .g) (.mul (.rational 168408 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1633104 1) .g) (.mul (.rational 924480 1) .v)) .g) (.mul (.rational 77724 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2373320 1) .g) (.mul (.rational 2205112
    1) .v)) .g) (.mul (.rational 431208 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2205755 1) .g) (.mul (.rational 3008420 1) .v)) .g) (.mul (.rational 1050552 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1372054 1) .g) (.mul
    (.rational 2605478 1) .v)) .g) (.mul (.rational 1488348 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 579759 1) .g) (.mul (.rational 1506902 1) .v)) .g)
    (.mul (.rational 1370966 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 164625 1) .g) (.mul (.rational 597394 1) .v)) .g) (.mul (.rational 869319 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 30040 1) .g) (.mul
    (.rational 163520 1) .v)) .g) (.mul (.rational 389350 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3157 1) .g) (.mul (.rational 30154 1) .v)) .g) (.mul
    (.rational 122321 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    142 1) .g) (.mul (.rational 3398 1) .v)) .g) (.mul (.rational 25575 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 174 1) .v) .g) (.mul (.rational 3136 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 165 1) (.pow .v 2)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1408

namespace FullHigh1409
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_100_1 e g v+8*SmallGap.ReducedLayers.high0_100_2 e g
    v*e^1+4*SmallGap.ReducedLayers.high0_010_3 e g v+24*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_110_3 e g v+6*SmallGap.ReducedLayers.high1_110_4 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_020_5 e g v+12*SmallGap.ReducedLayers.high1_020_6 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 7884 1) .e) (.add (.mul (.rational 65979 1) .f)
    (.add (.mul (.rational 80337 1) .g) (.mul (.rational 13350 1) .v)))) .e) (.add (.mul (.add
    (.mul (.rational 335007 1) .f) (.add (.mul (.rational 552521 1) .g) (.mul (.rational 95076 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 330192 1) .g) (.mul (.rational 105492 1) .v)) .g)
    (.mul (.rational 5950 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    1144692 1) .f) (.add (.mul (.rational 2373059 1) .g) (.mul (.rational 411786 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 1896854 1) .g) (.mul (.rational 613654 1) .v)) .g) (.mul
    (.rational 37557 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 735523 1) .g)
    (.mul (.rational 305554 1) .v)) .g) (.mul (.rational 40818 1) (.pow .v 2))) .g))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2765763 1) .f) (.add (.mul (.rational
    6883868 1) .g) (.mul (.rational 1204254 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    6866678 1) .g) (.mul (.rational 2253600 1) .v)) .g) (.mul (.rational 143136 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3526416 1) .g) (.mul (.rational 1507596 1) .v))
    .g) (.mul (.rational 208118 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    988443 1) .g) (.mul (.rational 427964 1) .v)) .g) (.mul (.rational 94576 1) (.pow .v 2)))
    (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    4837218 1) .f) (.add (.mul (.rational 14013731 1) .g) (.mul (.rational 2500620 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 16700560 1) .g) (.mul (.rational 5653030 1) .v)) .g) (.mul
    (.rational 367274 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 10629582 1)
    .g) (.mul (.rational 4787116 1) .v)) .g) (.mul (.rational 673714 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3912032 1) .g) (.mul (.rational 1857672 1) .v)) .g)
    (.mul (.rational 417208 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 833381 1) .g) (.mul (.rational 311728 1) .v)) .g) (.mul (.rational 91814 1) (.pow
    .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 6163290 1) .f) (.add (.mul (.rational 20324958 1) .g) (.mul (.rational
    3763356 1) .v))) .f) (.add (.mul (.add (.mul (.rational 28086651 1) .g) (.mul (.rational
    10027068 1) .v)) .g) (.mul (.rational 670176 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 21243456 1) .g) (.mul (.rational 10384054 1) .v)) .g) (.mul (.rational
    1510652 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 9622514 1) .g)
    (.mul (.rational 5235280 1) .v)) .g) (.mul (.rational 1231892 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2669756 1) .g) (.mul (.rational 1291392 1) .v))
    .g) (.mul (.rational 421462 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 439803 1) .g) (.mul (.rational 122488 1) .v)) .g) (.mul (.rational 42456 1) (.pow
    .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 5673096 1) .f) (.add (.mul (.rational 20941374 1) .g) (.mul
    (.rational 4095408 1) .v))) .f) (.add (.mul (.add (.mul (.rational 32834604 1) .g) (.mul
    (.rational 12633660 1) .v)) .g) (.mul (.rational 884768 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 28667019 1) .g) (.mul (.rational 15618376 1) .v)) .g) (.mul
    (.rational 2416704 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 15338860
    1) .g) (.mul (.rational 9877166 1) .v)) .g) (.mul (.rational 2547978 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5200006 1) .g) (.mul (.rational 3364568 1)
    .v)) .g) (.mul (.rational 1299514 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1106564 1) .g) (.mul (.rational 584344 1) .v)) .g) (.mul (.rational 328950 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 139153 1) .g) (.mul
    (.rational 38084 1) .v)) .g) (.mul (.rational 38994 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 3676608 1) .f) (.add (.mul (.rational 14994000 1) .g) (.mul (.rational 3143592 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 26237700 1) .g) (.mul (.rational 11064960 1) .v))
    .g) (.mul (.rational 829176 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    25884980 1) .g) (.mul (.rational 16003600 1) .v)) .g) (.mul (.rational 2706444 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 15901017 1) .g) (.mul (.rational
    12309584 1) .v)) .g) (.mul (.rational 3595128 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 6324764 1) .g) (.mul (.rational 5457154 1) .v)) .g) (.mul
    (.rational 2537400 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1631510 1) .g) (.mul (.rational 1421520 1) .v)) .g) (.mul (.rational 1062536 1) (.pow .v 2)))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 262580 1) .g) (.mul (.rational
    215076 1) .v)) .g) (.mul (.rational 289238 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 23765 1) .g) (.mul (.rational 18100 1) .v)) .g) (.mul (.rational
    55336 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1591632 1) .f) (.add
    (.mul (.rational 7096608 1) .g) (.mul (.rational 1611720 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 13680504 1) .g) (.mul (.rational 6389928 1) .v)) .g) (.mul (.rational 520404 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 15003916 1) .g) (.mul (.rational
    10617872 1) .v)) .g) (.mul (.rational 1994676 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10361226 1) .g) (.mul (.rational 9657400 1) .v)) .g) (.mul (.rational
    3230700 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4700681 1)
    .g) (.mul (.rational 5292700 1) .v)) .g) (.mul (.rational 2932272 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1411456 1) .g) (.mul (.rational 1830826 1)
    .v)) .g) (.mul (.rational 1687122 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 272742 1) .g) (.mul (.rational 413172 1) .v)) .g) (.mul (.rational 665458 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 31217 1) .g) (.mul
    (.rational 62240 1) .v)) .g) (.mul (.rational 185492 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1718 1) .g) (.mul (.rational 5962 1) .v)) .g) (.mul
    (.rational 34274 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    413100 1) .f) (.add (.mul (.rational 1996596 1) .g) (.mul (.rational 493992 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 4196052 1) .g) (.mul (.rational 2180520 1) .v)) .g) (.mul
    (.rational 194400 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5050260 1)
    .g) (.mul (.rational 4095216 1) .v)) .g) (.mul (.rational 858600 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3857550 1) .g) (.mul (.rational 4297080 1) .v)) .g)
    (.mul (.rational 1642224 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1954810 1) .g) (.mul (.rational 2794220 1) .v)) .g) (.mul (.rational 1811556 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 664197 1) .g) (.mul
    (.rational 1189900 1) .v)) .g) (.mul (.rational 1301496 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 147956 1) .g) (.mul (.rational 344722 1) .v)) .g)
    (.mul (.rational 650548 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20091 1) .g) (.mul (.rational 69128 1) .v)) .g) (.mul (.rational 230636 1) (.pow .v
    2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1383 1) .g) (.mul (.rational
    9132 1) .v)) .g) (.mul (.rational 55582 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25 1) .g) (.mul (.rational 644 1) .v)) .g) (.mul (.rational 8082 1)
    (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 48600 1)
    .f) (.add (.mul (.rational 252828 1) .g) (.mul (.rational 68256 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 574308 1) .g) (.mul (.rational 331992 1) .v)) .g) (.mul (.rational 32400 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 750660 1) .g) (.mul (.rational
    694704 1) .v)) .g) (.mul (.rational 162000 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 626100 1) .g) (.mul (.rational 823680 1) .v)) .g) (.mul (.rational 356196 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 348722 1) .g) (.mul
    (.rational 615784 1) .v)) .g) (.mul (.rational 458724 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 131316 1) .g) (.mul (.rational 307316 1) .v)) .g) (.mul
    (.rational 389332 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    32789 1) .g) (.mul (.rational 106072 1) .v)) .g) (.mul (.rational 231024 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5076 1) .g) (.mul (.rational 25562
    1) .v)) .g) (.mul (.rational 97426 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 411 1) .g) (.mul (.rational 4086 1) .v)) .g) (.mul (.rational 28314 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10 1) .g) (.mul (.rational
    362 1) .v)) .g) (.mul (.rational 5193 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 10 1) .v) .g) (.mul (.rational 500 1) (.pow .v 2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1409

namespace FullHigh14010
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  5*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_100_2 e g v+4*SmallGap.ReducedLayers.high0_010_4 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_110_4 e g v+3*SmallGap.ReducedLayers.high1_020_6 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 810 1) .e) (.add (.mul (.rational 6705 1) .f) (.add (.mul
    (.rational 8145 1) .g) (.mul (.rational 1350 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    33435 1) .f) (.add (.mul (.rational 54930 1) .g) (.mul (.rational 9360 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 32835 1) .g) (.mul (.rational 10110 1) .v)) .g) (.mul (.rational
    600 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 111060 1) .f) (.add
    (.mul (.rational 228900 1) .g) (.mul (.rational 39150 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 182700 1) .g) (.mul (.rational 56370 1) .v)) .g) (.mul (.rational 3675 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 71220 1) .g) (.mul (.rational 26520 1) .v))
    .g) (.mul (.rational 3870 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 257265 1) .f) (.add (.mul (.rational 635100 1) .g) (.mul (.rational 109530 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 631260 1) .g) (.mul (.rational 196950 1) .v)) .g)
    (.mul (.rational 13470 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 325290
    1) .g) (.mul (.rational 123570 1) .v)) .g) (.mul (.rational 18825 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 92355 1) .g) (.mul (.rational 30720 1) .v)) .g) (.mul
    (.rational 7920 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 423270 1) .f) (.add (.mul (.rational 1212840 1) .g) (.mul
    (.rational 215100 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1436580 1) .g) (.mul
    (.rational 466200 1) .v)) .g) (.mul (.rational 33000 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 915390 1) .g) (.mul (.rational 370290 1) .v)) .g) (.mul (.rational
    58140 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 340590 1) .g) (.mul
    (.rational 127050 1) .v)) .g) (.mul (.rational 33525 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 74220 1) .g) (.mul (.rational 14460 1) .v)) .g) (.mul
    (.rational 5970 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 493920 1) .f) (.add (.mul (.rational 1605690 1) .g)
    (.mul (.rational 300780 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2198655 1) .g) (.mul
    (.rational 769140 1) .v)) .g) (.mul (.rational 57120 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1660320 1) .g) (.mul (.rational 752550 1) .v)) .g) (.mul (.rational
    124980 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 758580 1) .g) (.mul
    (.rational 345330 1) .v)) .g) (.mul (.rational 98070 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 214950 1) .g) (.mul (.rational 68430 1) .v)) .g) (.mul
    (.rational 31575 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    36645 1) .g) (.mul (.rational 900 1) .v)) .g) (.mul (.rational 2640 1) (.pow .v 2))) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 400140 1) .f) (.add (.mul (.rational 1450350 1) .g) (.mul (.rational 294660 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 2245050 1) .g) (.mul (.rational 874800 1) .v))
    .g) (.mul (.rational 70290 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1950480 1) .g) (.mul (.rational 1032480 1) .v)) .g) (.mul (.rational 189720 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1049700 1) .g) (.mul (.rational 614040 1)
    .v)) .g) (.mul (.rational 200460 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 362670 1) .g) (.mul (.rational 190230 1) .v)) .g) (.mul (.rational 106560 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 79770 1) .g) (.mul
    (.rational 27030 1) .v)) .g) (.mul (.rational 31575 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10500 1) .g) (.mul (.rational 360 1) .v)) .g) (.mul
    (.rational 5970 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 214110 1) .f) (.add (.mul
    (.rational 853380 1) .g) (.mul (.rational 192060 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1467720 1) .g) (.mul (.rational 652140 1) .v)) .g) (.mul (.rational 58500 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1434990 1) .g) (.mul (.rational 908700
    1) .v)) .g) (.mul (.rational 191790 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 883425 1) .g) (.mul (.rational 673920 1) .v)) .g) (.mul (.rational 262560 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 357060 1) .g) (.mul
    (.rational 290610 1) .v)) .g) (.mul (.rational 200460 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 94980 1) .g) (.mul (.rational 76230 1) .v)) .g) (.mul
    (.rational 98070 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    15960 1) .g) (.mul (.rational 12810 1) .v)) .g) (.mul (.rational 33525 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1515 1) .g) (.mul (.rational 1440 1) .v))
    .g) (.mul (.rational 7920 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 68040
    1) .f) (.add (.mul (.rational 294840 1) .g) (.mul (.rational 74520 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 555660 1) .g) (.mul (.rational 285120 1) .v)) .g) (.mul (.rational
    29160 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 600930 1) .g) (.mul
    (.rational 458820 1) .v)) .g) (.mul (.rational 113400 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 414000 1) .g) (.mul (.rational 408240 1) .v)) .g) (.mul
    (.rational 191790 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    190080 1) .g) (.mul (.rational 224460 1) .v)) .g) (.mul (.rational 189720 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 58620 1) .g) (.mul (.rational 82320
    1) .v)) .g) (.mul (.rational 124980 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11760 1) .g) (.mul (.rational 21570 1) .v)) .g) (.mul (.rational 58140 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1395 1) .g) (.mul
    (.rational 4110 1) .v)) .g) (.mul (.rational 18825 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 75 1) .g) (.mul (.rational 510 1) .v)) .g) (.mul (.rational
    3870 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9720 1) .f) (.add
    (.mul (.rational 45360 1) .g) (.mul (.rational 12960 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 92610 1) .g) (.mul (.rational 55080 1) .v)) .g) (.mul (.rational 6480 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 109260 1) .g) (.mul (.rational 100260 1)
    .v)) .g) (.mul (.rational 29160 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 82800 1) .g) (.mul (.rational 103500 1) .v)) .g) (.mul (.rational 58500 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 42240 1) .g) (.mul (.rational
    68280 1) .v)) .g) (.mul (.rational 70290 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14655 1) .g) (.mul (.rational 31140 1) .v)) .g) (.mul (.rational 57120
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3360 1) .g) (.mul
    (.rational 10350 1) .v)) .g) (.mul (.rational 33000 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 465 1) .g) (.mul (.rational 2490 1) .v)) .g) (.mul
    (.rational 13470 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    30 1) .g) (.mul (.rational 390 1) .v)) .g) (.mul (.rational 3675 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.mul (.rational 30 1) .v) .g) (.mul (.rational 600 1) (.pow .v
    2))) (.pow .g 8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh14010

end
end SPR.N6.Tail.CoreEndpoint
