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

namespace FullHigh2030
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c230 e f g v*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_0 e g v*e^3+6*SmallGap.ReducedLayers.high0_001_0
    e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_200_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_101_0 e g
    v*e^2+3*SmallGap.ReducedLayers.high1_002_0 e g v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1292 1) .e) (.add (.mul (.rational 12860 1) .f) (.add (.mul (.rational 16170 1) .g) (.mul
    (.rational 2320 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 78690 1) .f) (.add (.mul
    (.rational 134608 1) .g) (.mul (.rational 20868 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 83758 1) .g) (.mul (.rational 25612 1) .v)) .g) (.mul (.rational 1060 1) (.pow .v
    2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 331844 1) .f) (.add (.mul (.rational
    716608 1) .g) (.mul (.rational 115896 1) .v))) .f) (.add (.mul (.add (.mul (.rational 598734
    1) .g) (.mul (.rational 194452 1) .v)) .g) (.mul (.rational 8706 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 242366 1) .g) (.mul (.rational 116396 1) .v)) .g) (.mul
    (.rational 10682 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1024079 1) .f) (.add (.mul (.rational 2667477 1) .g) (.mul (.rational 444728 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 2792749 1) .g) (.mul (.rational 947800 1) .v))
    .g) (.mul (.rational 44108 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1503947 1) .g) (.mul (.rational 770044 1) .v)) .g) (.mul (.rational 74270 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 439120 1) .g) (.mul (.rational 297952 1)
    .v)) .g) (.mul (.rational 43844 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 2395129 1) .f) (.add (.mul (.rational 7298120
    1) .g) (.mul (.rational 1249694 1) .v))) .f) (.add (.mul (.add (.mul (.rational 9170924 1) .g)
    (.mul (.rational 3233914 1) .v)) .g) (.mul (.rational 154206 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 6150578 1) .g) (.mul (.rational 3325222 1) .v)) .g) (.mul
    (.rational 331476 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2371831
    1) .g) (.mul (.rational 1735950 1) .v)) .g) (.mul (.rational 268096 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 523578 1) .g) (.mul (.rational 485260 1)
    .v)) .g) (.mul (.rational 101312 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4334954 1) .f) (.add (.mul
    (.rational 15115403 1) .g) (.mul (.rational 2657560 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 22137923 1) .g) (.mul (.rational 8099210 1) .v)) .g) (.mul (.rational 393955 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 17738749 1) .g) (.mul (.rational
    10088742 1) .v)) .g) (.mul (.rational 1034293 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8472763 1) .g) (.mul (.rational 6640982 1) .v)) .g) (.mul (.rational
    1068741 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2455132 1)
    .g) (.mul (.rational 2489926 1) .v)) .g) (.mul (.rational 553417 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 416944 1) .g) (.mul (.rational 531064 1)
    .v)) .g) (.mul (.rational 150956 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6141310 1) .f) (.add
    (.mul (.rational 24101564 1) .g) (.mul (.rational 4355832 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 40274572 1) .g) (.mul (.rational 15291378 1) .v)) .g) (.mul (.rational 758755 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 37474580 1) .g) (.mul (.rational
    22393288 1) .v)) .g) (.mul (.rational 2361044 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 21291272 1) .g) (.mul (.rational 17807964 1) .v)) .g) (.mul (.rational
    2983534 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7602594 1)
    .g) (.mul (.rational 8382584 1) .v)) .g) (.mul (.rational 1975742 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1685238 1) .g) (.mul (.rational 2382730 1)
    .v)) .g) (.mul (.rational 738093 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 218794 1) .g) (.mul (.rational 397184 1) .v)) .g) (.mul (.rational 155574 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 6837854 1) .f) (.add (.mul (.rational 29814534
    1) .g) (.mul (.rational 5547730 1) .v))) .f) (.add (.mul (.add (.mul (.rational 55933682 1)
    .g) (.mul (.rational 22058872 1) .v)) .g) (.mul (.rational 1118895 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 59196092 1) .g) (.mul (.rational 37154062 1) .v)) .g) (.mul
    (.rational 4036962 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 38907409
    1) .g) (.mul (.rational 34653932 1) .v)) .g) (.mul (.rational 6052316 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 16451685 1) .g) (.mul (.rational 19636354
    1) .v)) .g) (.mul (.rational 4904334 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4470839 1) .g) (.mul (.rational 6970920 1) .v)) .g) (.mul (.rational
    2341323 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 753317 1)
    .g) (.mul (.rational 1537570 1) .v)) .g) (.mul (.rational 673158 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 72140 1) .g) (.mul (.rational 200100 1) .v))
    .g) (.mul (.rational 113918 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5967426 1) .f) (.add (.mul (.rational 28608998 1) .g) (.mul (.rational 5489674 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 59499042 1) .g) (.mul (.rational 24396170 1) .v)) .g) (.mul
    (.rational 1268423 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 70500016 1)
    .g) (.mul (.rational 46472682 1) .v)) .g) (.mul (.rational 5216828 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 52525863 1) .g) (.mul (.rational 49743086 1) .v)) .g)
    (.mul (.rational 9072336 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25589468 1) .g) (.mul (.rational 32951100 1) .v)) .g) (.mul (.rational 8720310 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8195528 1) .g) (.mul
    (.rational 14015308 1) .v)) .g) (.mul (.rational 5085923 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1683556 1) .g) (.mul (.rational 3836008 1) .v)) .g)
    (.mul (.rational 1860226 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 207901 1) .g) (.mul (.rational 655220 1) .v)) .g) (.mul (.rational 425336 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 13396 1) .g) (.mul
    (.rational 64472 1) .v)) .g) (.mul (.rational 58264 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 4041130 1) .f) (.add (.mul (.rational 21121090 1) .g) (.mul
    (.rational 4185094 1) .v))) .f) (.add (.mul (.add (.mul (.rational 48200836 1) .g) (.mul
    (.rational 20562980 1) .v)) .g) (.mul (.rational 1098761 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 63153588 1) .g) (.mul (.rational 43714320 1) .v)) .g) (.mul
    (.rational 5081238 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 52515516
    1) .g) (.mul (.rational 52803588 1) .v)) .g) (.mul (.rational 10070810 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 28891711 1) .g) (.mul (.rational 40015012
    1) .v)) .g) (.mul (.rational 11217104 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10612469 1) .g) (.mul (.rational 19808706 1) .v)) .g) (.mul (.rational
    7740740 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2555227 1)
    .g) (.mul (.rational 6456462 1) .v)) .g) (.mul (.rational 3441139 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 382175 1) .g) (.mul (.rational 1357642 1)
    .v)) .g) (.mul (.rational 991673 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 31500 1) .g) (.mul (.rational 173664 1) .v)) .g) (.mul (.rational 180881 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1050 1) .g) (.mul
    (.rational 11816 1) .v)) .g) (.mul (.rational 19456 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 2082724 1) .f) (.add (.mul (.rational 11782548
    1) .g) (.mul (.rational 2413310 1) .v))) .f) (.add (.mul (.add (.mul (.rational 29258858 1)
    .g) (.mul (.rational 12992562 1) .v)) .g) (.mul (.rational 715015 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 41966474 1) .g) (.mul (.rational 30491224 1) .v)) .g) (.mul
    (.rational 3675968 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 38474918
    1) .g) (.mul (.rational 41013072 1) .v)) .g) (.mul (.rational 8185594 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 23539502 1) .g) (.mul (.rational 34965468
    1) .v)) .g) (.mul (.rational 10373292 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9721154 1) .g) (.mul (.rational 19716202 1) .v)) .g) (.mul (.rational
    8268822 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2669990 1)
    .g) (.mul (.rational 7435520 1) .v)) .g) (.mul (.rational 4325360 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 464940 1) .g) (.mul (.rational 1847464 1)
    .v)) .g) (.mul (.rational 1501382 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 46020 1) .g) (.mul (.rational 288034 1) .v)) .g) (.mul (.rational 340530 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1940 1) .g) (.mul
    (.rational 25168 1) .v)) .g) (.mul (.rational 47915 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 912 1) .v) .g) (.mul (.rational 3688 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 790015 1) .f) (.add
    (.mul (.rational 4808381 1) .g) (.mul (.rational 1018694 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 12901289 1) .g) (.mul (.rational 5963856 1) .v)) .g) (.mul (.rational 338545 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 20089745 1) .g) (.mul (.rational
    15311738 1) .v)) .g) (.mul (.rational 1916460 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 20105797 1) .g) (.mul (.rational 22685508 1) .v)) .g) (.mul (.rational
    4738472 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 13514559
    1) .g) (.mul (.rational 21469942 1) .v)) .g) (.mul (.rational 6732118 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6179793 1) .g) (.mul (.rational 13562252
    1) .v)) .g) (.mul (.rational 6083796 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1898059 1) .g) (.mul (.rational 5792670 1) .v)) .g) (.mul (.rational
    3655202 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 374490 1)
    .g) (.mul (.rational 1652576 1) .v)) .g) (.mul (.rational 1480092 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 42780 1) .g) (.mul (.rational 301372 1) .v))
    .g) (.mul (.rational 399350 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2140 1) .g) (.mul (.rational 31672 1) .v)) .g) (.mul (.rational 68717 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1448 1) .v) .g) (.mul (.rational
    6778 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 286 1) (.pow .v 2)) (.pow .g
    10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 208065 1) .f)
    (.add (.mul (.rational 1355336 1) .g) (.mul (.rational 297104 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 3905588 1) .g) (.mul (.rational 1879180 1) .v)) .g) (.mul (.rational 110139
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6556766 1) .g) (.mul (.rational
    5237996 1) .v)) .g) (.mul (.rational 680920 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7104488 1) .g) (.mul (.rational 8470864 1) .v)) .g) (.mul (.rational 1850964
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5195030 1) .g)
    (.mul (.rational 8803248 1) .v)) .g) (.mul (.rational 2912768 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2598724 1) .g) (.mul (.rational 6147328 1) .v))
    .g) (.mul (.rational 2939896 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 879072 1) .g) (.mul (.rational 2924824 1) .v)) .g) (.mul (.rational 1991164 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 192645 1) .g) (.mul
    (.rational 937916 1) .v)) .g) (.mul (.rational 918496 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 24716 1) .g) (.mul (.rational 194420 1) .v)) .g) (.mul
    (.rational 285790 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1410 1) .g) (.mul (.rational 23576 1) .v)) .g) (.mul (.rational 57595 1) (.pow .v 2))) (.pow
    .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1272 1) .v) .g) (.mul (.rational 6806 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 358 1) (.pow .v 2)) (.pow .g 10))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 34002 1) .f) (.add
    (.mul (.rational 235971 1) .g) (.mul (.rational 53526 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 726523 1) .g) (.mul (.rational 363710 1) .v)) .g) (.mul (.rational 22020 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1307139 1) .g) (.mul (.rational 1093478
    1) .v)) .g) (.mul (.rational 147633 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1522803 1) .g) (.mul (.rational 1915494 1) .v)) .g) (.mul (.rational 437529 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1201469 1) .g) (.mul
    (.rational 2166138 1) .v)) .g) (.mul (.rational 754985 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 651043 1) .g) (.mul (.rational 1654050 1) .v)) .g)
    (.mul (.rational 840773 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 239641 1) .g) (.mul (.rational 865134 1) .v)) .g) (.mul (.rational 632471 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 57451 1) .g) (.mul
    (.rational 306754 1) .v)) .g) (.mul (.rational 326325 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8116 1) .g) (.mul (.rational 70768 1) .v)) .g) (.mul
    (.rational 114427 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    514 1) .g) (.mul (.rational 9624 1) .v)) .g) (.mul (.rational 26207 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 588 1) .v) .g) (.mul (.rational 3556 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 218 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2598 1) .f) (.add (.mul
    (.rational 19132 1) .g) (.mul (.rational 4490 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    62652 1) .g) (.mul (.rational 32616 1) .v)) .g) (.mul (.rational 2040 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 120180 1) .g) (.mul (.rational 105168 1) .v)) .g)
    (.mul (.rational 14742 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    149640 1) .g) (.mul (.rational 198248 1) .v)) .g) (.mul (.rational 47292 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 126508 1) .g) (.mul (.rational
    242084 1) .v)) .g) (.mul (.rational 88728 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 73652 1) .g) (.mul (.rational 200312 1) .v)) .g) (.mul (.rational
    107928 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 29212 1)
    .g) (.mul (.rational 113936 1) .v)) .g) (.mul (.rational 89092 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7570 1) .g) (.mul (.rational 44088 1) .v)) .g)
    (.mul (.rational 50672 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1160 1) .g) (.mul (.rational 11138 1) .v)) .g) (.mul (.rational 19672 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 80 1) .g) (.mul (.rational
    1664 1) .v)) .g) (.mul (.rational 5008 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 112 1) .v) .g) (.mul (.rational 758 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 52 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2030

namespace FullHigh2031
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh1.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^2+4*SmallGap.ReducedLayers.high0_100_1 e g v*e^3+12*SmallGap.ReducedLayers.high0_001_0 e g
    v*e^1+6*SmallGap.ReducedLayers.high0_001_1 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_0 e g v*e^2+1*SmallGap.ReducedLayers.high1_200_1 e g
    v*e^3+6*SmallGap.ReducedLayers.high1_101_0 e g v*e^1+3*SmallGap.ReducedLayers.high1_101_1 e g
    v*e^2+3*SmallGap.ReducedLayers.high1_002_0 e g v+3*SmallGap.ReducedLayers.high1_002_1 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6654 1) .e)
    (.add (.mul (.rational 62412 1) .f) (.add (.mul (.rational 77628 1) .g) (.mul (.rational 11760
    1) .v)))) .e) (.add (.mul (.add (.mul (.rational 360810 1) .f) (.add (.mul (.rational 610438
    1) .g) (.mul (.rational 98154 1) .v))) .f) (.add (.mul (.add (.mul (.rational 375066 1) .g)
    (.mul (.rational 117348 1) .v)) .g) (.mul (.rational 5330 1) (.pow .v 2))))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 1437066 1) .f) (.add (.mul (.rational 3069232 1) .g) (.mul
    (.rational 507738 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2533546 1) .g) (.mul
    (.rational 828230 1) .v)) .g) (.mul (.rational 40281 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1013414 1) .g) (.mul (.rational 476378 1) .v)) .g) (.mul (.rational
    47916 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    4176794 1) .f) (.add (.mul (.rational 10759570 1) .g) (.mul (.rational 1817294 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 11135140 1) .g) (.mul (.rational 3764640 1) .v)) .g) (.mul
    (.rational 188523 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5930672 1)
    .g) (.mul (.rational 2944572 1) .v)) .g) (.mul (.rational 306820 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1716270 1) .g) (.mul (.rational 1083744 1) .v)) .g)
    (.mul (.rational 171743 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 9153724 1) .f) (.add (.mul (.rational 27581642 1) .g)
    (.mul (.rational 4759474 1) .v))) .f) (.add (.mul (.add (.mul (.rational 34273976 1) .g) (.mul
    (.rational 11983024 1) .v)) .g) (.mul (.rational 610331 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 22752148 1) .g) (.mul (.rational 11899178 1) .v)) .g) (.mul
    (.rational 1268264 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8704982
    1) .g) (.mul (.rational 5946550 1) .v)) .g) (.mul (.rational 976607 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1914406 1) .g) (.mul (.rational 1576948 1)
    .v)) .g) (.mul (.rational 343178 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15408956 1) .f) (.add (.mul
    (.rational 53123356 1) .g) (.mul (.rational 9402518 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 76960650 1) .g) (.mul (.rational 27927862 1) .v)) .g) (.mul (.rational 1445091 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 61080158 1) .g) (.mul (.rational
    33725090 1) .v)) .g) (.mul (.rational 3677851 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 28972604 1) .g) (.mul (.rational 21396028 1) .v)) .g) (.mul (.rational
    3644908 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8372980 1)
    .g) (.mul (.rational 7691410 1) .v)) .g) (.mul (.rational 1783841 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1426830 1) .g) (.mul (.rational 1569566 1)
    .v)) .g) (.mul (.rational 451527 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20096698 1) .f) (.add
    (.mul (.rational 77966708 1) .g) (.mul (.rational 14224702 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 128897004 1) .g) (.mul (.rational 48776766 1) .v)) .g) (.mul (.rational
    2574711 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 118857780 1) .g) (.mul
    (.rational 69532912 1) .v)) .g) (.mul (.rational 7802903 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 67117264 1) .g) (.mul (.rational 53651408 1) .v)) .g) (.mul
    (.rational 9544082 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    23926502 1) .g) (.mul (.rational 24455188 1) .v)) .g) (.mul (.rational 6075529 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5328252 1) .g) (.mul
    (.rational 6739840 1) .v)) .g) (.mul (.rational 2169863 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 700586 1) .g) (.mul (.rational 1097422 1) .v)) .g)
    (.mul (.rational 438254 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20316932 1) .f)
    (.add (.mul (.rational 87554394 1) .g) (.mul (.rational 16545578 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 162523212 1) .g) (.mul (.rational 64415732 1) .v)) .g) (.mul (.rational
    3490111 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 170526798 1) .g) (.mul
    (.rational 106041944 1) .v)) .g) (.mul (.rational 12332956 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 111473586 1) .g) (.mul (.rational 96561264 1) .v)) .g)
    (.mul (.rational 18068692 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 47100748 1) .g) (.mul (.rational 53447948 1) .v)) .g) (.mul (.rational 14294446 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 12873280 1) .g) (.mul
    (.rational 18606300 1) .v)) .g) (.mul (.rational 6681446 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2199778 1) .g) (.mul (.rational 4062216 1) .v)) .g)
    (.mul (.rational 1902746 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 215812 1) .g) (.mul (.rational 531936 1) .v)) .g) (.mul (.rational 327773 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15798436 1) .f) (.add (.mul (.rational
    74840866 1) .g) (.mul (.rational 14709322 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    154008476 1) .g) (.mul (.rational 64157208 1) .v)) .g) (.mul (.rational 3589893 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 180968646 1) .g) (.mul (.rational 119894938
    1) .v)) .g) (.mul (.rational 14543294 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 134171048 1) .g) (.mul (.rational 125968072 1) .v)) .g) (.mul (.rational 24932249
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 65365634 1) .g)
    (.mul (.rational 82109352 1) .v)) .g) (.mul (.rational 23698336 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 21074366 1) .g) (.mul (.rational 34561524 1) .v))
    .g) (.mul (.rational 13772308 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4395568 1) .g) (.mul (.rational 9460792 1) .v)) .g) (.mul (.rational 5097394 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 556980 1) .g) (.mul
    (.rational 1643414 1) .v)) .g) (.mul (.rational 1211252 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 37294 1) .g) (.mul (.rational 168156 1) .v)) .g)
    (.mul (.rational 179046 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 9283400 1) .f) (.add (.mul (.rational 47930128 1) .g) (.mul (.rational 9828284 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 108220662 1) .g) (.mul (.rational 47499438 1)
    .v)) .g) (.mul (.rational 2758527 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 140634722 1) .g) (.mul (.rational 99383112 1) .v)) .g) (.mul (.rational 12630789 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 116414470 1) .g) (.mul
    (.rational 118367054 1) .v)) .g) (.mul (.rational 24858784 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 64081270 1) .g) (.mul (.rational 88782626 1) .v)) .g)
    (.mul (.rational 27649754 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23711968 1) .g) (.mul (.rational 43801380 1) .v)) .g) (.mul (.rational 19244922 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5801800 1) .g) (.mul
    (.rational 14388590 1) .v)) .g) (.mul (.rational 8771484 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 891392 1) .g) (.mul (.rational 3100094 1) .v)) .g)
    (.mul (.rational 2655636 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 76468 1) .g) (.mul (.rational 415240 1) .v)) .g) (.mul (.rational 525113 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2696 1) .g) (.mul
    (.rational 30334 1) .v)) .g) (.mul (.rational 63267 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 3991834 1) .f) (.add (.mul (.rational 22300878
    1) .g) (.mul (.rational 4781368 1) .v))) .f) (.add (.mul (.add (.mul (.rational 54779778 1)
    .g) (.mul (.rational 25368112 1) .v)) .g) (.mul (.rational 1534420 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 77927874 1) .g) (.mul (.rational 58751462 1) .v)) .g) (.mul
    (.rational 7844583 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 71130306
    1) .g) (.mul (.rational 78198660 1) .v)) .g) (.mul (.rational 17444969 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 43555046 1) .g) (.mul (.rational 66283200
    1) .v)) .g) (.mul (.rational 22232598 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 18126856 1) .g) (.mul (.rational 37442894 1) .v)) .g) (.mul (.rational
    18017651 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5061626
    1) .g) (.mul (.rational 14308442 1) .v)) .g) (.mul (.rational 9737102 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 905848 1) .g) (.mul (.rational 3660508 1)
    .v)) .g) (.mul (.rational 3569237 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 93362 1) .g) (.mul (.rational 599900 1) .v)) .g) (.mul (.rational 878133 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4164 1) .g) (.mul
    (.rational 56462 1) .v)) .g) (.mul (.rational 137850 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 2264 1) .v) .g) (.mul (.rational 12134 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1186148 1) .f) (.add
    (.mul (.rational 7126340 1) .g) (.mul (.rational 1599668 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 18907834 1) .g) (.mul (.rational 9243612 1) .v)) .g) (.mul (.rational 583542 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 29195646 1) .g) (.mul (.rational
    23469412 1) .v)) .g) (.mul (.rational 3296146 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 29087592 1) .g) (.mul (.rational 34501154 1) .v)) .g) (.mul (.rational
    8173011 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 19568066
    1) .g) (.mul (.rational 32570230 1) .v)) .g) (.mul (.rational 11733701 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9017636 1) .g) (.mul (.rational 20685790
    1) .v)) .g) (.mul (.rational 10833967 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2815706 1) .g) (.mul (.rational 8984176 1) .v)) .g) (.mul (.rational
    6752608 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 570820 1)
    .g) (.mul (.rational 2646358 1) .v)) .g) (.mul (.rational 2893157 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 67858 1) .g) (.mul (.rational 508026 1) .v))
    .g) (.mul (.rational 845577 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3586 1) .g) (.mul (.rational 57502 1) .v)) .g) (.mul (.rational 161587 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2904 1) .v) .g) (.mul (.rational
    18120 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 888 1) (.pow .v 2)) (.pow .g
    10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 217836 1) .f)
    (.add (.mul (.rational 1399992 1) .g) (.mul (.rational 329220 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 3987520 1) .g) (.mul (.rational 2057748 1) .v)) .g) (.mul (.rational 135714
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6635250 1) .g) (.mul (.rational
    5680948 1) .v)) .g) (.mul (.rational 839346 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7154514 1) .g) (.mul (.rational 9133032 1) .v)) .g) (.mul (.rational 2294806
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5234104 1) .g)
    (.mul (.rational 9488224 1) .v)) .g) (.mul (.rational 3660423 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2637636 1) .g) (.mul (.rational 6676732 1) .v))
    .g) (.mul (.rational 3785424 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 906548 1) .g) (.mul (.rational 3236560 1) .v)) .g) (.mul (.rational 2664706 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 203940 1) .g) (.mul
    (.rational 1072740 1) .v)) .g) (.mul (.rational 1300619 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 27186 1) .g) (.mul (.rational 233976 1) .v)) .g)
    (.mul (.rational 437245 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1634 1) .g) (.mul (.rational 30484 1) .v)) .g) (.mul (.rational 97362 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1808 1) .v) .g) (.mul (.rational
    12992 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 787 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 18642 1)
    .f) (.add (.mul (.rational 127566 1) .g) (.mul (.rational 31428 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 387962 1) .g) (.mul (.rational 211212 1) .v)) .g) (.mul (.rational 14556 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 691398 1) .g) (.mul (.rational
    629572 1) .v)) .g) (.mul (.rational 97806 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 801006 1) .g) (.mul (.rational 1097628 1) .v)) .g) (.mul (.rational 292092 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 631826 1) .g) (.mul
    (.rational 1242380 1) .v)) .g) (.mul (.rational 511804 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 344610 1) .g) (.mul (.rational 957060 1) .v)) .g)
    (.mul (.rational 584756 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 128738 1) .g) (.mul (.rational 510340 1) .v)) .g) (.mul (.rational 457344 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 31632 1) .g) (.mul
    (.rational 186964 1) .v)) .g) (.mul (.rational 249360 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4632 1) .g) (.mul (.rational 45296 1) .v)) .g) (.mul
    (.rational 94148 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    308 1) .g) (.mul (.rational 6592 1) .v)) .g) (.mul (.rational 23688 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 440 1) .v) .g) (.mul (.rational 3602 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 252 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2031

namespace FullHigh2032
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^1+12*SmallGap.ReducedLayers.high0_100_1 e g v*e^2+4*SmallGap.ReducedLayers.high0_100_2 e g
    v*e^3+6*SmallGap.ReducedLayers.high0_001_0 e g v+12*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^1+6*SmallGap.ReducedLayers.high0_001_2 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_0 e g v*e^1+3*SmallGap.ReducedLayers.high1_200_1 e g
    v*e^2+1*SmallGap.ReducedLayers.high1_200_2 e g v*e^3+3*SmallGap.ReducedLayers.high1_101_0 e g
    v+6*SmallGap.ReducedLayers.high1_101_1 e g v*e^1+3*SmallGap.ReducedLayers.high1_101_2 e g
    v*e^2+3*SmallGap.ReducedLayers.high1_002_1 e g v+3*SmallGap.ReducedLayers.high1_002_2 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13830 1) .e) (.add
    (.mul (.rational 123552 1) .f) (.add (.mul (.rational 152250 1) .g) (.mul (.rational 24060 1)
    .v)))) .e) (.add (.mul (.add (.mul (.rational 678540 1) .f) (.add (.mul (.rational 1136166 1)
    .g) (.mul (.rational 188196 1) .v))) .f) (.add (.mul (.add (.mul (.rational 689868 1) .g)
    (.mul (.rational 218964 1) .v)) .g) (.mul (.rational 10830 1) (.pow .v 2))))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 2555034 1) .f) (.add (.mul (.rational 5396022 1) .g) (.mul
    (.rational 909888 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4398816 1) .g) (.mul
    (.rational 1438566 1) .v)) .g) (.mul (.rational 76068 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1737420 1) .g) (.mul (.rational 789300 1) .v)) .g) (.mul (.rational
    87582 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    6972051 1) .f) (.add (.mul (.rational 17744799 1) .g) (.mul (.rational 3031320 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 18125793 1) .g) (.mul (.rational 6073206 1) .v)) .g) (.mul
    (.rational 329568 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9528447 1)
    .g) (.mul (.rational 4527264 1) .v)) .g) (.mul (.rational 516063 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2725644 1) .g) (.mul (.rational 1553274 1) .v)) .g)
    (.mul (.rational 270498 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 14213472 1) .f) (.add (.mul (.rational 42278874 1)
    .g) (.mul (.rational 7348686 1) .v))) .f) (.add (.mul (.add (.mul (.rational 51828672 1) .g)
    (.mul (.rational 17884608 1) .v)) .g) (.mul (.rational 983574 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 33947730 1) .g) (.mul (.rational 16951500 1) .v)) .g) (.mul
    (.rational 1961931 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 12835464
    1) .g) (.mul (.rational 7940718 1) .v)) .g) (.mul (.rational 1415589 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2798604 1) .g) (.mul (.rational 1924494 1)
    .v)) .g) (.mul (.rational 444921 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21993378 1) .f) (.add (.mul
    (.rational 74793033 1) .g) (.mul (.rational 13334544 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 106840545 1) .g) (.mul (.rational 38319828 1) .v)) .g) (.mul (.rational 2137581 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 83647107 1) .g) (.mul (.rational
    44318784 1) .v)) .g) (.mul (.rational 5230908 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 39207033 1) .g) (.mul (.rational 26564598 1) .v)) .g) (.mul (.rational
    4893048 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 11234106
    1) .g) (.mul (.rational 8867328 1) .v)) .g) (.mul (.rational 2190933 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1907688 1) .g) (.mul (.rational 1648350 1)
    .v)) .g) (.mul (.rational 480585 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25965696 1) .f) (.add
    (.mul (.rational 99292521 1) .g) (.mul (.rational 18322404 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 161788746 1) .g) (.mul (.rational 60904272 1) .v)) .g) (.mul (.rational
    3473649 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 147146172 1) .g) (.mul
    (.rational 83532084 1) .v)) .g) (.mul (.rational 10173531 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 82114308 1) .g) (.mul (.rational 61442244 1) .v)) .g) (.mul
    (.rational 11885646 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 29031891 1) .g) (.mul (.rational 26428308 1) .v)) .g) (.mul (.rational 7110777 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6446418 1) .g) (.mul
    (.rational 6815754 1) .v)) .g) (.mul (.rational 2340006 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 851016 1) .g) (.mul (.rational 1037484 1) .v)) .g)
    (.mul (.rational 429444 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 23287812 1) .f)
    (.add (.mul (.rational 98849667 1) .g) (.mul (.rational 19037790 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 180774015 1) .g) (.mul (.rational 72032418 1) .v)) .g) (.mul (.rational
    4244874 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 187064778 1) .g) (.mul
    (.rational 114661674 1) .v)) .g) (.mul (.rational 14598399 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 120873363 1) .g) (.mul (.rational 100416672 1) .v)) .g)
    (.mul (.rational 20703426 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 50678688 1) .g) (.mul (.rational 53216466 1) .v)) .g) (.mul (.rational 15778614 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 13823586 1) .g) (.mul
    (.rational 17722788 1) .v)) .g) (.mul (.rational 7101930 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2375397 1) .g) (.mul (.rational 3728982 1) .v)) .g)
    (.mul (.rational 1972596 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 236466 1) .g) (.mul (.rational 479802 1) .v)) .g) (.mul (.rational 344184 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15627786 1) .f) (.add (.mul (.rational
    72871335 1) .g) (.mul (.rational 14748462 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    147681228 1) .g) (.mul (.rational 62688930 1) .v)) .g) (.mul (.rational 3854268 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 171139251 1) .g) (.mul (.rational 113834406
    1) .v)) .g) (.mul (.rational 15309105 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 125460054 1) .g) (.mul (.rational 115946622 1) .v)) .g) (.mul (.rational 25719003
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 60692769 1) .g)
    (.mul (.rational 73241856 1) .v)) .g) (.mul (.rational 24012366 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 19551150 1) .g) (.mul (.rational 29996610 1) .v))
    .g) (.mul (.rational 13825362 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4108197 1) .g) (.mul (.rational 8083434 1) .v)) .g) (.mul (.rational 5170212 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 529806 1) .g) (.mul
    (.rational 1412520 1) .v)) .g) (.mul (.rational 1283412 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 36534 1) .g) (.mul (.rational 149646 1) .v)) .g)
    (.mul (.rational 206097 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 7613982 1) .f) (.add (.mul (.rational 38668413 1) .g) (.mul (.rational 8266104 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 85953297 1) .g) (.mul (.rational 39033516 1) .v))
    .g) (.mul (.rational 2522091 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    110155809 1) .g) (.mul (.rational 79706742 1) .v)) .g) (.mul (.rational 11397894 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 90196065 1) .g) (.mul (.rational
    92655612 1) .v)) .g) (.mul (.rational 22201833 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 49339602 1) .g) (.mul (.rational 68001438 1) .v)) .g) (.mul
    (.rational 24594942 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18264450 1) .g) (.mul (.rational 33054804 1) .v)) .g) (.mul (.rational 17256642 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4510608 1) .g) (.mul
    (.rational 10845690 1) .v)) .g) (.mul (.rational 8088906 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 707322 1) .g) (.mul (.rational 2385246 1) .v)) .g)
    (.mul (.rational 2588979 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 62772 1) .g) (.mul (.rational 335310 1) .v)) .g) (.mul (.rational 557121 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2328 1) .g) (.mul
    (.rational 26442 1) .v)) .g) (.mul (.rational 74547 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 2547426 1) .f) (.add (.mul (.rational 13988949
    1) .g) (.mul (.rational 3169296 1) .v))) .f) (.add (.mul (.add (.mul (.rational 33815352 1)
    .g) (.mul (.rational 16466838 1) .v)) .g) (.mul (.rational 1123317 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 47438910 1) .g) (.mul (.rational 37357458 1) .v)) .g) (.mul
    (.rational 5698623 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 42847326
    1) .g) (.mul (.rational 48796452 1) .v)) .g) (.mul (.rational 12635865 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 26093613 1) .g) (.mul (.rational 40771986
    1) .v)) .g) (.mul (.rational 16190301 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10877328 1) .g) (.mul (.rational 22900440 1) .v)) .g) (.mul (.rational
    13365474 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3070890
    1) .g) (.mul (.rational 8827626 1) .v)) .g) (.mul (.rational 7496952 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 562230 1) .g) (.mul (.rational 2326368 1)
    .v)) .g) (.mul (.rational 2919657 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 60132 1) .g) (.mul (.rational 403134 1) .v)) .g) (.mul (.rational 781554 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2832 1) .g) (.mul
    (.rational 41250 1) .v)) .g) (.mul (.rational 136014 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 1848 1) .v) .g) (.mul (.rational 13428 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 524151 1) .f) (.add
    (.mul (.rational 3092934 1) .g) (.mul (.rational 744126 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 8071668 1) .g) (.mul (.rational 4218420 1) .v)) .g) (.mul (.rational 304560 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 12289545 1) .g) (.mul (.rational
    10522380 1) .v)) .g) (.mul (.rational 1713960 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 12119271 1) .g) (.mul (.rational 15244536 1) .v)) .g) (.mul (.rational
    4259949 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8114094 1)
    .g) (.mul (.rational 14265492 1) .v)) .g) (.mul (.rational 6187422 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3749208 1) .g) (.mul (.rational 9067614 1)
    .v)) .g) (.mul (.rational 5857041 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1185189 1) .g) (.mul (.rational 3999132 1) .v)) .g) (.mul (.rational 3808755
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 246180 1) .g)
    (.mul (.rational 1220244 1) .v)) .g) (.mul (.rational 1738191 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 30414 1) .g) (.mul (.rational 248598 1) .v)) .g)
    (.mul (.rational 552744 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1698 1) .g) (.mul (.rational 30642 1) .v)) .g) (.mul (.rational 117087 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1728 1) .v) .g) (.mul (.rational
    14775 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 828 1) (.pow .v 2)) (.pow .g
    10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 50058 1) .f)
    (.add (.mul (.rational 315681 1) .g) (.mul (.rational 80724 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 883824 1) .g) (.mul (.rational 495618 1) .v)) .g) (.mul (.rational 37908 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1449765 1) .g) (.mul (.rational
    1347120 1) .v)) .g) (.mul (.rational 234252 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1547472 1) .g) (.mul (.rational 2141034 1) .v)) .g) (.mul (.rational 644319
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1127235 1) .g)
    (.mul (.rational 2213760 1) .v)) .g) (.mul (.rational 1044141 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 569976 1) .g) (.mul (.rational 1566198 1) .v))
    .g) (.mul (.rational 1111635 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 198489 1) .g) (.mul (.rational 774300 1) .v)) .g) (.mul (.rational 819090 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 45780 1) .g) (.mul
    (.rational 266658 1) .v)) .g) (.mul (.rational 426534 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6342 1) .g) (.mul (.rational 61776 1) .v)) .g) (.mul
    (.rational 156027 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    402 1) .g) (.mul (.rational 8748 1) .v)) .g) (.mul (.rational 38493 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 576 1) .v) .g) (.mul (.rational 5778 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 399 1) (.pow .v 2)) (.pow .g 10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2032

namespace FullHigh2033
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  3*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_0 e g v+12*SmallGap.ReducedLayers.high0_100_1 e
    g v*e^1+12*SmallGap.ReducedLayers.high0_100_2 e g v*e^2+6*SmallGap.ReducedLayers.high0_001_1 e
    g v+12*SmallGap.ReducedLayers.high0_001_2 e g v*e^1+6*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_200_0 e g v+3*SmallGap.ReducedLayers.high1_200_1 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_200_2 e g v*e^2+3*SmallGap.ReducedLayers.high1_101_1 e g
    v+6*SmallGap.ReducedLayers.high1_101_2 e g v*e^1+3*SmallGap.ReducedLayers.high1_101_3 e g
    v*e^2+3*SmallGap.ReducedLayers.high1_002_2 e g v+3*SmallGap.ReducedLayers.high1_002_3 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 14486 1) .e) (.add (.mul (.rational
    124718 1) .f) (.add (.mul (.rational 152586 1) .g) (.mul (.rational 24820 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 656274 1) .f) (.add (.mul (.rational 1089298 1) .g) (.mul
    (.rational 184122 1) .v))) .f) (.add (.mul (.add (.mul (.rational 655234 1) .g) (.mul
    (.rational 208552 1) .v)) .g) (.mul (.rational 11110 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 2348186 1) .f) (.add (.mul (.rational 4908136 1) .g) (.mul
    (.rational 838398 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3956982 1) .g) (.mul
    (.rational 1282876 1) .v)) .g) (.mul (.rational 73467 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1546418 1) .g) (.mul (.rational 668006 1) .v)) .g) (.mul (.rational
    81884 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    6022568 1) .f) (.add (.mul (.rational 15145170 1) .g) (.mul (.rational 2607820 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 15273616 1) .g) (.mul (.rational 5035060 1) .v)) .g) (.mul
    (.rational 296915 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7928600 1)
    .g) (.mul (.rational 3545662 1) .v)) .g) (.mul (.rational 446339 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2243260 1) .g) (.mul (.rational 1107588 1) .v)) .g)
    (.mul (.rational 216941 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 11380200 1) .f) (.add (.mul (.rational 33388646 1)
    .g) (.mul (.rational 5840988 1) .v))) .f) (.add (.mul (.add (.mul (.rational 40338104 1) .g)
    (.mul (.rational 13666160 1) .v)) .g) (.mul (.rational 818566 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 26039254 1) .g) (.mul (.rational 12220630 1) .v)) .g) (.mul
    (.rational 1560108 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 9715078
    1) .g) (.mul (.rational 5225092 1) .v)) .g) (.mul (.rational 1039681 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2095728 1) .g) (.mul (.rational 1084358 1)
    .v)) .g) (.mul (.rational 277062 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16034268 1) .f) (.add (.mul
    (.rational 53687368 1) .g) (.mul (.rational 9660966 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 75444226 1) .g) (.mul (.rational 26675648 1) .v)) .g) (.mul (.rational 1627210 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 58097156 1) .g) (.mul (.rational
    29160432 1) .v)) .g) (.mul (.rational 3806762 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 26810172 1) .g) (.mul (.rational 16082680 1) .v)) .g) (.mul (.rational
    3312321 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7580562 1)
    .g) (.mul (.rational 4715944 1) .v)) .g) (.mul (.rational 1301683 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1274458 1) .g) (.mul (.rational 706792 1)
    .v)) .g) (.mul (.rational 214365 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16844862 1) .f) (.add
    (.mul (.rational 63309186 1) .g) (.mul (.rational 11875134 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 101294318 1) .g) (.mul (.rational 37963272 1) .v)) .g) (.mul (.rational
    2387467 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 90438870 1) .g) (.mul
    (.rational 49411668 1) .v)) .g) (.mul (.rational 6722110 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 49581660 1) .g) (.mul (.rational 33811772 1) .v)) .g) (.mul
    (.rational 7419482 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    17257054 1) .g) (.mul (.rational 13133744 1) .v)) .g) (.mul (.rational 4074572 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3784310 1) .g) (.mul
    (.rational 2929308 1) .v)) .g) (.mul (.rational 1173830 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 495070 1) .g) (.mul (.rational 363814 1) .v)) .g)
    (.mul (.rational 176608 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13035630 1) .f)
    (.add (.mul (.rational 54288198 1) .g) (.mul (.rational 10740636 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 97314916 1) .g) (.mul (.rational 39157620 1) .v)) .g) (.mul (.rational
    2577553 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 98672882 1) .g) (.mul
    (.rational 59449512 1) .v)) .g) (.mul (.rational 8593829 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 62513540 1) .g) (.mul (.rational 48987656 1) .v)) .g) (.mul
    (.rational 11721830 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25748708 1) .g) (.mul (.rational 24017756 1) .v)) .g) (.mul (.rational 8521634 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6922486 1) .g) (.mul
    (.rational 7270448 1) .v)) .g) (.mul (.rational 3649016 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1177062 1) .g) (.mul (.rational 1376654 1) .v)) .g)
    (.mul (.rational 982026 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 116294 1) .g) (.mul (.rational 161108 1) .v)) .g) (.mul (.rational 175677 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7226694 1) .f) (.add (.mul (.rational
    33006132 1) .g) (.mul (.rational 6951240 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    65454756 1) .g) (.mul (.rational 28533828 1) .v)) .g) (.mul (.rational 1991184 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 74196972 1) .g) (.mul (.rational 49669212
    1) .v)) .g) (.mul (.rational 7734384 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 53239384 1) .g) (.mul (.rational 48085504 1) .v)) .g) (.mul (.rational 12691172 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 25259690 1) .g) (.mul
    (.rational 28635404 1) .v)) .g) (.mul (.rational 11604700 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8009008 1) .g) (.mul (.rational 11014548 1) .v)) .g)
    (.mul (.rational 6621558 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1664362 1) .g) (.mul (.rational 2810542 1) .v)) .g) (.mul (.rational 2521068 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 213322 1) .g) (.mul
    (.rational 477732 1) .v)) .g) (.mul (.rational 662831 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 14662 1) .g) (.mul (.rational 51190 1) .v)) .g) (.mul
    (.rational 116254 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2719818 1) .f) (.add (.mul (.rational 13507494 1) .g) (.mul (.rational 3047520 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 29334390 1) .g) (.mul (.rational 13928388 1) .v)) .g) (.mul
    (.rational 1038936 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 36719156 1)
    .g) (.mul (.rational 27389908 1) .v)) .g) (.mul (.rational 4625388 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 29387546 1) .g) (.mul (.rational 30516448 1) .v)) .g)
    (.mul (.rational 8900974 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15748188 1) .g) (.mul (.rational 21410970 1) .v)) .g) (.mul (.rational 9815156 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5734164 1) .g) (.mul
    (.rational 9984068 1) .v)) .g) (.mul (.rational 6959750 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1401124 1) .g) (.mul (.rational 3189300 1) .v)) .g)
    (.mul (.rational 3377166 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 218942 1) .g) (.mul (.rational 702872 1) .v)) .g) (.mul (.rational 1150729 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 19510 1) .g) (.mul
    (.rational 102694 1) .v)) .g) (.mul (.rational 268925 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 732 1) .g) (.mul (.rational 8664 1) .v)) .g) (.mul
    (.rational 39181 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 623376 1) .f) (.add (.mul (.rational 3342222 1) .g) (.mul (.rational 810972 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 7882056 1) .g) (.mul (.rational 4086072 1) .v))
    .g) (.mul (.rational 327132 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10786830 1) .g) (.mul (.rational 8961708 1) .v)) .g) (.mul (.rational 1643976 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 9513612 1) .g) (.mul (.rational 11294580 1)
    .v)) .g) (.mul (.rational 3629748 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5672216 1) .g) (.mul (.rational 9115522 1) .v)) .g) (.mul (.rational 4675296
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2325924 1) .g)
    (.mul (.rational 4981568 1) .v)) .g) (.mul (.rational 3939781 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 650528 1) .g) (.mul (.rational 1900672 1) .v))
    .g) (.mul (.rational 2303214 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 119084 1) .g) (.mul (.rational 509864 1) .v)) .g) (.mul (.rational 955942 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 12878 1) .g) (.mul
    (.rational 93030 1) .v)) .g) (.mul (.rational 277404 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 622 1) .g) (.mul (.rational 10336 1) .v)) .g) (.mul
    (.rational 52735 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 516 1)
    .v) .g) (.mul (.rational 5696 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 65772 1) .f) (.add (.mul (.rational 378324 1) .g)
    (.mul (.rational 98928 1) .v))) .f) (.add (.mul (.add (.mul (.rational 961992 1) .g) (.mul
    (.rational 544644 1) .v)) .g) (.mul (.rational 46872 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1427460 1) .g) (.mul (.rational 1317576 1) .v)) .g) (.mul (.rational
    262332 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1373802 1) .g) (.mul
    (.rational 1851720 1) .v)) .g) (.mul (.rational 652824 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 900456 1) .g) (.mul (.rational 1686936 1) .v)) .g)
    (.mul (.rational 959544 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 409560 1) .g) (.mul (.rational 1053840 1) .v)) .g) (.mul (.rational 933321 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 128496 1) .g) (.mul
    (.rational 465072 1) .v)) .g) (.mul (.rational 635835 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 26780 1) .g) (.mul (.rational 145848 1) .v)) .g) (.mul
    (.rational 310410 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3364 1) .g) (.mul (.rational 31516 1) .v)) .g) (.mul (.rational 107586 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 194 1) .g) (.mul (.rational 4244 1) .v))
    .g) (.mul (.rational 25211 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 268 1) .v) .g) (.mul (.rational 3571 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 230 1) (.pow .v 2)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2033

namespace FullHigh2034
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  6*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_1 e g v+12*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^1+6*SmallGap.ReducedLayers.high0_001_2 e g v+12*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_200_1 e g v+3*SmallGap.ReducedLayers.high1_200_2 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_101_2 e g v+6*SmallGap.ReducedLayers.high1_101_3 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_002_3 e g v+3*SmallGap.ReducedLayers.high1_002_4 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 7638 1) .e) (.add (.mul (.rational 64128 1) .f)
    (.add (.mul (.rational 78084 1) .g) (.mul (.rational 12900 1) .v)))) .e) (.add (.mul (.add
    (.mul (.rational 326724 1) .f) (.add (.mul (.rational 538822 1) .g) (.mul (.rational 91932 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 322344 1) .g) (.mul (.rational 101544 1) .v)) .g)
    (.mul (.rational 5750 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    1120494 1) .f) (.add (.mul (.rational 2322538 1) .g) (.mul (.rational 398652 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 1858378 1) .g) (.mul (.rational 590828 1) .v)) .g) (.mul
    (.rational 36324 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 722486 1) .g)
    (.mul (.rational 291728 1) .v)) .g) (.mul (.rational 39276 1) (.pow .v 2))) .g))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2717766 1) .f) (.add (.mul (.rational
    6762676 1) .g) (.mul (.rational 1168128 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    6752746 1) .g) (.mul (.rational 2172600 1) .v)) .g) (.mul (.rational 138702 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3477462 1) .g) (.mul (.rational 1440072 1) .v))
    .g) (.mul (.rational 200476 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    979476 1) .g) (.mul (.rational 401548 1) .v)) .g) (.mul (.rational 90182 1) (.pow .v 2)))
    (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    4771926 1) .f) (.add (.mul (.rational 13819192 1) .g) (.mul (.rational 2432340 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 16485920 1) .g) (.mul (.rational 5463260 1) .v)) .g) (.mul
    (.rational 357118 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 10524024 1)
    .g) (.mul (.rational 4583912 1) .v)) .g) (.mul (.rational 651248 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3893974 1) .g) (.mul (.rational 1749204 1) .v)) .g)
    (.mul (.rational 399656 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 836392 1) .g) (.mul (.rational 280496 1) .v)) .g) (.mul (.rational 85948 1) (.pow
    .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 6103230 1) .f) (.add (.mul (.rational 20115606 1) .g) (.mul (.rational
    3673392 1) .v))) .f) (.add (.mul (.add (.mul (.rational 27826632 1) .g) (.mul (.rational
    9724476 1) .v)) .g) (.mul (.rational 655032 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 21114192 1) .g) (.mul (.rational 9985628 1) .v)) .g) (.mul (.rational 1469464
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 9620848 1) .g) (.mul
    (.rational 4965560 1) .v)) .g) (.mul (.rational 1191694 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2694292 1) .g) (.mul (.rational 1187544 1) .v)) .g)
    (.mul (.rational 404384 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 449946 1) .g) (.mul (.rational 98816 1) .v)) .g) (.mul (.rational 39642 1) (.pow .v
    2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 5637372 1) .f) (.add (.mul (.rational 20793468 1) .g) (.mul
    (.rational 4012956 1) .v))) .f) (.add (.mul (.add (.mul (.rational 32637078 1) .g) (.mul
    (.rational 12302520 1) .v)) .g) (.mul (.rational 870526 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 28593558 1) .g) (.mul (.rational 15098432 1) .v)) .g) (.mul
    (.rational 2370528 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 15400520
    1) .g) (.mul (.rational 9453112 1) .v)) .g) (.mul (.rational 2496246 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5276192 1) .g) (.mul (.rational 3163876 1)
    .v)) .g) (.mul (.rational 1277348 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1140598 1) .g) (.mul (.rational 525908 1) .v)) .g) (.mul (.rational 328950 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 146846 1) .g) (.mul
    (.rational 27388 1) .v)) .g) (.mul (.rational 41808 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 3664206 1) .f) (.add (.mul (.rational 14928300 1) .g) (.mul (.rational 3091644 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 26150250 1) .g) (.mul (.rational 10817520 1) .v))
    .g) (.mul (.rational 821532 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    25896160 1) .g) (.mul (.rational 15551300 1) .v)) .g) (.mul (.rational 2677608 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16024344 1) .g) (.mul (.rational
    11883088 1) .v)) .g) (.mul (.rational 3564096 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 6449848 1) .g) (.mul (.rational 5225228 1) .v)) .g) (.mul
    (.rational 2537400 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1694020 1) .g) (.mul (.rational 1344840 1) .v)) .g) (.mul (.rational 1084702 1) (.pow .v 2)))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 280210 1) .g) (.mul (.rational
    199332 1) .v)) .g) (.mul (.rational 306316 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 26530 1) .g) (.mul (.rational 16100 1) .v)) .g) (.mul (.rational
    61202 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1589724 1) .f) (.add
    (.mul (.rational 7079106 1) .g) (.mul (.rational 1589640 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 13661328 1) .g) (.mul (.rational 6266196 1) .v)) .g) (.mul (.rational 518628 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 15044762 1) .g) (.mul (.rational
    10360504 1) .v)) .g) (.mul (.rational 1987032 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10473882 1) .g) (.mul (.rational 9386900 1) .v)) .g) (.mul (.rational
    3230700 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4815442 1)
    .g) (.mul (.rational 5134100 1) .v)) .g) (.mul (.rational 2963304 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1475792 1) .g) (.mul (.rational 1779032 1)
    .v)) .g) (.mul (.rational 1738854 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 294294 1) .g) (.mul (.rational 405504 1) .v)) .g) (.mul (.rational 705656 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 35494 1) .g) (.mul
    (.rational 62680 1) .v)) .g) (.mul (.rational 203044 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2176 1) .g) (.mul (.rational 6284 1) .v)) .g) (.mul
    (.rational 38668 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    413100 1) .f) (.add (.mul (.rational 1993572 1) .g) (.mul (.rational 487944 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 4194414 1) .g) (.mul (.rational 2141640 1) .v)) .g) (.mul
    (.rational 194400 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5071320 1)
    .g) (.mul (.rational 4005612 1) .v)) .g) (.mul (.rational 858600 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3908700 1) .g) (.mul (.rational 4195560 1) .v)) .g)
    (.mul (.rational 1649868 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2010470 1) .g) (.mul (.rational 2733940 1) .v)) .g) (.mul (.rational 1840392 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 699054 1) .g) (.mul
    (.rational 1174700 1) .v)) .g) (.mul (.rational 1347672 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 161392 1) .g) (.mul (.rational 347504 1) .v)) .g)
    (.mul (.rational 691736 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23262 1) .g) (.mul (.rational 72496 1) .v)) .g) (.mul (.rational 253102 1) (.pow .v
    2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1806 1) .g) (.mul (.rational
    10224 1) .v)) .g) (.mul (.rational 63224 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 50 1) .g) (.mul (.rational 808 1) .v)) .g) (.mul (.rational 9624 1)
    (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 48600 1)
    .f) (.add (.mul (.rational 252396 1) .g) (.mul (.rational 67392 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 574056 1) .g) (.mul (.rational 325944 1) .v)) .g) (.mul (.rational 32400 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 754170 1) .g) (.mul (.rational
    679728 1) .v)) .g) (.mul (.rational 162000 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 635400 1) .g) (.mul (.rational 805860 1) .v)) .g) (.mul (.rational 357972 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 359854 1) .g) (.mul
    (.rational 605588 1) .v)) .g) (.mul (.rational 466368 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 139062 1) .g) (.mul (.rational 306412 1) .v)) .g) (.mul
    (.rational 403574 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    36148 1) .g) (.mul (.rational 108704 1) .v)) .g) (.mul (.rational 246168 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5982 1) .g) (.mul (.rational 27484
    1) .v)) .g) (.mul (.rational 107582 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 552 1) .g) (.mul (.rational 4752 1) .v)) .g) (.mul (.rational 32748 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 20 1) .g) (.mul (.rational
    484 1) .v)) .g) (.mul (.rational 6426 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 20 1) .v) .g) (.mul (.rational 700 1) (.pow .v 2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2034

namespace FullHigh2035
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  10*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_2 e g v+6*SmallGap.ReducedLayers.high0_001_3 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_200_2 e g v+3*SmallGap.ReducedLayers.high1_101_3 e g
    v+3*SmallGap.ReducedLayers.high1_002_4 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1620 1) .e) (.add (.mul (.rational 13410 1) .f) (.add (.mul
    (.rational 16290 1) .g) (.mul (.rational 2700 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    66870 1) .f) (.add (.mul (.rational 109860 1) .g) (.mul (.rational 18720 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 65670 1) .g) (.mul (.rational 20220 1) .v)) .g) (.mul (.rational
    1200 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 222120 1) .f) (.add
    (.mul (.rational 457800 1) .g) (.mul (.rational 78300 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 365400 1) .g) (.mul (.rational 112740 1) .v)) .g) (.mul (.rational 7350 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 142440 1) .g) (.mul (.rational 53040 1)
    .v)) .g) (.mul (.rational 7740 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 514530 1) .f) (.add (.mul (.rational 1270200 1) .g) (.mul (.rational
    219060 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1262520 1) .g) (.mul (.rational 393900
    1) .v)) .g) (.mul (.rational 26940 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 650580 1) .g) (.mul (.rational 247140 1) .v)) .g) (.mul (.rational 37650 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 184710 1) .g) (.mul (.rational 61440
    1) .v)) .g) (.mul (.rational 15840 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 846540 1) .f) (.add (.mul (.rational 2425680 1)
    .g) (.mul (.rational 430200 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2873160 1) .g)
    (.mul (.rational 932400 1) .v)) .g) (.mul (.rational 66000 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1830780 1) .g) (.mul (.rational 740580 1) .v)) .g) (.mul
    (.rational 116280 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 681180 1)
    .g) (.mul (.rational 254100 1) .v)) .g) (.mul (.rational 67050 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 148440 1) .g) (.mul (.rational 28920 1) .v)) .g)
    (.mul (.rational 11940 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 987840 1) .f) (.add (.mul (.rational 3211380 1)
    .g) (.mul (.rational 601560 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4397310 1) .g)
    (.mul (.rational 1538280 1) .v)) .g) (.mul (.rational 114240 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3320640 1) .g) (.mul (.rational 1505100 1) .v)) .g) (.mul
    (.rational 249960 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1517160
    1) .g) (.mul (.rational 690660 1) .v)) .g) (.mul (.rational 196140 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 429900 1) .g) (.mul (.rational 136860 1)
    .v)) .g) (.mul (.rational 63150 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 73290 1) .g) (.mul (.rational 1800 1) .v)) .g) (.mul (.rational 5280 1) (.pow
    .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 800280 1) .f) (.add (.mul (.rational 2900700 1) .g) (.mul
    (.rational 589320 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4490100 1) .g) (.mul
    (.rational 1749600 1) .v)) .g) (.mul (.rational 140580 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3900960 1) .g) (.mul (.rational 2064960 1) .v)) .g) (.mul (.rational
    379440 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2099400 1) .g) (.mul
    (.rational 1228080 1) .v)) .g) (.mul (.rational 400920 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 725340 1) .g) (.mul (.rational 380460 1) .v)) .g)
    (.mul (.rational 213120 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 159540 1) .g) (.mul (.rational 54060 1) .v)) .g) (.mul (.rational 63150 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 21000 1) .g) (.mul (.rational
    720 1) .v)) .g) (.mul (.rational 11940 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    428220 1) .f) (.add (.mul (.rational 1706760 1) .g) (.mul (.rational 384120 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 2935440 1) .g) (.mul (.rational 1304280 1) .v)) .g) (.mul
    (.rational 117000 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2869980 1)
    .g) (.mul (.rational 1817400 1) .v)) .g) (.mul (.rational 383580 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1766850 1) .g) (.mul (.rational 1347840 1) .v)) .g)
    (.mul (.rational 525120 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 714120 1) .g) (.mul (.rational 581220 1) .v)) .g) (.mul (.rational 400920 1) (.pow
    .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 189960 1) .g) (.mul
    (.rational 152460 1) .v)) .g) (.mul (.rational 196140 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 31920 1) .g) (.mul (.rational 25620 1) .v)) .g) (.mul
    (.rational 67050 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3030 1) .g) (.mul (.rational 2880 1) .v)) .g) (.mul (.rational 15840 1) (.pow .v 2))) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 136080 1) .f) (.add (.mul (.rational 589680 1) .g) (.mul
    (.rational 149040 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1111320 1) .g) (.mul
    (.rational 570240 1) .v)) .g) (.mul (.rational 58320 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1201860 1) .g) (.mul (.rational 917640 1) .v)) .g) (.mul (.rational
    226800 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 828000 1) .g) (.mul
    (.rational 816480 1) .v)) .g) (.mul (.rational 383580 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 380160 1) .g) (.mul (.rational 448920 1) .v)) .g) (.mul
    (.rational 379440 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    117240 1) .g) (.mul (.rational 164640 1) .v)) .g) (.mul (.rational 249960 1) (.pow .v 2)))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 23520 1) .g) (.mul (.rational 43140
    1) .v)) .g) (.mul (.rational 116280 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2790 1) .g) (.mul (.rational 8220 1) .v)) .g) (.mul (.rational 37650 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 150 1) .g) (.mul (.rational
    1020 1) .v)) .g) (.mul (.rational 7740 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 19440 1) .f) (.add (.mul (.rational 90720 1) .g) (.mul (.rational 25920
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 185220 1) .g) (.mul (.rational 110160 1) .v))
    .g) (.mul (.rational 12960 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    218520 1) .g) (.mul (.rational 200520 1) .v)) .g) (.mul (.rational 58320 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 165600 1) .g) (.mul (.rational 207000 1) .v)) .g)
    (.mul (.rational 117000 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 84480 1) .g) (.mul (.rational 136560 1) .v)) .g) (.mul (.rational 140580 1) (.pow
    .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 29310 1) .g) (.mul
    (.rational 62280 1) .v)) .g) (.mul (.rational 114240 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6720 1) .g) (.mul (.rational 20700 1) .v)) .g) (.mul
    (.rational 66000 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    930 1) .g) (.mul (.rational 4980 1) .v)) .g) (.mul (.rational 26940 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 60 1) .g) (.mul (.rational 780 1) .v)) .g)
    (.mul (.rational 7350 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.mul (.rational 60
    1) .v) .g) (.mul (.rational 1200 1) (.pow .v 2))) (.pow .g 8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2035

end
end SPR.N6.Tail.CoreEndpoint
