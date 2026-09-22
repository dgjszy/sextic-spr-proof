import SPR.N6.Algebra.Tail.NonnegativeExpression
import SPR.N6.Algebra.Tail.OuterCore
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsLow0
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsLow1
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsLow2
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsLow3
import SPR.N6.Algebra.Tail.SmallGap.PolarCoefficientsLow4
import SPR.N6.Algebra.Tail.SmallGap.ReducedLayers
/-! Exact positive higher-gap remainder after keeping the full pure axis.
The two lowest gap factors retain their earlier whole-coefficient sign proofs. -/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace FullLow2300
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow0.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow0.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsLow0.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_0 e g v*e^6+6*SmallGap.ReducedLayers.low0_010_0 e
    g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_200_0 e g v*e^6+3*SmallGap.ReducedLayers.low1_110_0 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_020_0 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 40 1) .v) (.rational 1160 1)) .e) (.add
    (.mul (.add (.mul (.add (.mul (.rational 40 1) .v) (.rational 888 1)) .v) (.rational 10646 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 100 1) .v) (.rational 1416 1)) .v) (.rational
    14020 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 804 1) .v)
    (.rational 9172 1)) .v) (.rational 61632 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2412
    1) .v) (.rational 20048 1)) .v) (.rational 112996 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2612 1) .v) (.rational 14748 1)) .v) (.rational 72912 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7468 1) .v) (.rational 58484
    1)) .v) (.rational 252268 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 26138 1) .v)
    (.rational 162096 1)) .v) (.rational 597064 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 35366 1) .v) (.rational 169208 1)) .v) (.rational 536674 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 23070 1) .v) (.rational 83376 1)) .v) (.rational
    227780 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 42598 1) .v) (.rational 257804 1)) .v) (.rational 775340 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 170392 1) .v) (.rational 864024 1)) .v) (.rational 2261062
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 275188 1) .v) (.rational 1156112 1)) .v)
    (.rational 2626312 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 229192 1)
    .v) (.rational 791768 1)) .v) (.rational 1550078 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 103638 1) .v) (.rational 294036 1)) .v) (.rational 489384 1)) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 167192 1) .v) (.rational 833864 1)) .v) (.rational 1854156 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 752364 1) .v) (.rational 3273146 1)) .v) (.rational 6452272 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1408000 1) .v) (.rational 5313196 1)) .v)
    (.rational 9236732 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1416968 1)
    .v) (.rational 4622268 1)) .v) (.rational 7031312 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 825944 1) .v) (.rational 2329384 1)) .v) (.rational 3067328 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 277956 1) .v) (.rational 681418 1)) .v)
    (.rational 766256 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 479242 1) .v) (.rational 2049934 1)) .v)
    (.rational 3526270 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2396210 1) .v) (.rational
    9210980 1)) .v) (.rational 14300019 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    5089130 1) .v) (.rational 17520354 1)) .v) (.rational 24412542 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5979260 1) .v) (.rational 18396316 1)) .v) (.rational
    22847920 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4236382 1) .v)
    (.rational 11645314 1)) .v) (.rational 12784770 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1845818 1) .v) (.rational 4544292 1)) .v) (.rational 4367557 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 480366 1) .v) (.rational 1065358 1)) .v)
    (.rational 887062 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1038690 1) .v) (.rational
    3914092 1)) .v) (.rational 5403602 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5712795 1)
    .v) (.rational 19789702 1)) .v) (.rational 25069667 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13557605 1) .v) (.rational 43064974 1)) .v) (.rational 49807050 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 18163260 1) .v) (.rational 52804988 1)) .v)
    (.rational 55433840 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 15079948 1)
    .v) (.rational 40089384 1)) .v) (.rational 37947470 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8007503 1) .v) (.rational 19473758 1)) .v) (.rational 16497101 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2702321 1) .v) (.rational 6023870
    1)) .v) (.rational 4529262 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    554010 1) .v) (.rational 1136096 1)) .v) (.rational 751244 1)) (.pow .g 7)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 1737804 1) .v) (.rational 5880258 1)) .v) (.rational 6717636 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10426824 1) .v) (.rational 33011280 1)) .v)
    (.rational 35128922 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 27320710 1) .v)
    (.rational 80756040 1)) .v) (.rational 79699092 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 41024330 1) .v) (.rational 113000972 1)) .v) (.rational 102923392 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 38927344 1) .v) (.rational 99775394 1))
    .v) (.rational 83412646 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    24258460 1) .v) (.rational 57805760 1)) .v) (.rational 44082740 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9983622 1) .v) (.rational 22111508 1)) .v) (.rational
    15272648 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2653378 1) .v)
    (.rational 5463532 1)) .v) (.rational 3389206 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 429656 1) .v) (.rational 822872 1)) .v) (.rational 453590 1)) (.pow .g 8))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2270268 1) .v) (.rational 6996628 1)) .v)
    (.rational 6787790 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 14756742 1) .v) (.rational
    43151980 1)) .v) (.rational 39520290 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    42283882 1) .v) (.rational 117087862 1)) .v) (.rational 100852122 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 70237189 1) .v) (.rational 183818996 1)) .v) (.rational
    148291839 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 74801469 1) .v)
    (.rational 184683526 1)) .v) (.rational 138895665 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 53313936 1) .v) (.rational 123971054 1)) .v) (.rational 86456844 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 25750084 1) .v) (.rational 56302942
    1)) .v) (.rational 36181808 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8338925 1) .v) (.rational 17117080 1)) .v) (.rational 10057267 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1747201 1) .v) (.rational 3360102 1)) .v) (.rational
    1786633 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 220172 1) .v)
    (.rational 395442 1)) .v) (.rational 187524 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 2326102 1) .v) (.rational 6601308 1)) .v) (.rational
    5560562 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 16282714 1) .v) (.rational 44343420
    1)) .v) (.rational 35675224 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 50623321 1)
    .v) (.rational 132048266 1)) .v) (.rational 101143997 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 92064644 1) .v) (.rational 229565768 1)) .v) (.rational 166819706 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 108539021 1) .v) (.rational
    258199440 1)) .v) (.rational 177290269 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 86840552 1) .v) (.rational 196664784 1)) .v) (.rational 127003911 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 47949625 1) .v) (.rational 103139504 1)) .v)
    (.rational 62291893 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 18201100 1)
    .v) (.rational 37087052 1)) .v) (.rational 20799806 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4636497 1) .v) (.rational 8919736 1)) .v) (.rational 4601497 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 753306 1) .v) (.rational 1361924 1)) .v)
    (.rational 637573 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 70882 1) .v)
    (.rational 119570 1)) .v) (.rational 49746 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1865736 1) .v) (.rational 4919164 1)) .v)
    (.rational 3667392 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 13993020 1) .v) (.rational
    35731964 1)) .v) (.rational 25700794 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    46895788 1) .v) (.rational 115776068 1)) .v) (.rational 80125382 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 92595152 1) .v) (.rational 220591896 1)) .v) (.rational
    146450870 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 119546362 1) .v)
    (.rational 274257508 1)) .v) (.rational 174063032 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 105858753 1) .v) (.rational 233333750 1)) .v) (.rational 140993003 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 65562075 1) .v) (.rational
    138484166 1)) .v) (.rational 79274114 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 28407768 1) .v) (.rational 57323680 1)) .v) (.rational 30890950 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8461596 1) .v) (.rational 16248184 1)) .v)
    (.rational 8173344 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1665231 1)
    .v) (.rational 3026986 1)) .v) (.rational 1404455 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 200885 1) .v) (.rational 343082 1)) .v) (.rational 144186 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 12820 1) .v) (.rational 20332 1)) .v)
    (.rational 7512 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1161766 1) .v) (.rational 2867168 1)) .v) (.rational
    1923988 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 9294128 1) .v) (.rational 22384728
    1)) .v) (.rational 14617030 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 33390356 1)
    .v) (.rational 78357552 1)) .v) (.rational 49679876 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 71085252 1) .v) (.rational 162252048 1)) .v) (.rational 99627480 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 99631722 1) .v) (.rational
    220750466 1)) .v) (.rational 130887530 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 96564880 1) .v) (.rational 207223744 1)) .v) (.rational 118227986 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 66122240 1) .v) (.rational 137070572 1)) .v)
    (.rational 74927962 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 32081386 1)
    .v) (.rational 64040268 1)) .v) (.rational 33358242 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10879626 1) .v) (.rational 20830338 1)) .v) (.rational 10264876 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2494028 1) .v) (.rational 4556216
    1)) .v) (.rational 2102704 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    362388 1) .v) (.rational 627136 1)) .v) (.rational 267014 1)) (.pow .g 10))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 29398 1) .v) (.rational 47684 1)) .v) (.rational 18286 1)) (.pow
    .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 974 1) .v) (.rational 1456 1)) .v)
    (.rational 482 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 552616 1) .v) (.rational 1285184 1)) .v) (.rational
    788048 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4697236 1) .v) (.rational 10728594 1))
    .v) (.rational 6448288 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 18004256 1) .v)
    (.rational 40330456 1)) .v) (.rational 23717400 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 41087200 1) .v) (.rational 90124756 1)) .v) (.rational 51749632 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 62069260 1) .v) (.rational 133082352 1)) .v)
    (.rational 74430992 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 65259974 1)
    .v) (.rational 136490368 1)) .v) (.rational 74137718 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 48850702 1) .v) (.rational 99421594 1)) .v) (.rational 52260052 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 26155723 1) .v) (.rational 51648000
    1)) .v) (.rational 26153697 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9905375 1) .v) (.rational 18907766 1)) .v) (.rational 9169307 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2575280 1) .v) (.rational 4729462 1)) .v) (.rational
    2178672 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 433468 1) .v)
    (.rational 760974 1)) .v) (.rational 329090 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 42011 1) .v) (.rational 69860 1)) .v) (.rational 27849 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1747 1) .v) (.rational 2714 1)) .v) (.rational 967
    1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 195470 1) .v) (.rational 431174 1)) .v) (.rational 245010 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1759230 1) .v) (.rational 3831356 1)) .v) (.rational
    2147023 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7164344 1) .v) (.rational
    15387590 1)) .v) (.rational 8491860 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17438872 1) .v) (.rational 36890348 1)) .v) (.rational 20016486 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 28224306 1) .v) (.rational 58717320 1)) .v)
    (.rational 31264506 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 31955462 1)
    .v) (.rational 65264164 1)) .v) (.rational 34022918 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25912549 1) .v) (.rational 51846806 1)) .v) (.rational 26388089 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 15136524 1) .v) (.rational 29595480
    1)) .v) (.rational 14654370 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6308017 1) .v) (.rational 12014948 1)) .v) (.rational 5761501 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1824256 1) .v) (.rational 3371400 1)) .v) (.rational
    1556071 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 346347 1) .v)
    (.rational 617780 1)) .v) (.rational 272083 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 38584 1) .v) (.rational 65940 1)) .v) (.rational 27356 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1895 1) .v) (.rational 3070 1)) .v) (.rational 1175
    1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 49210 1) .v) (.rational 103684 1)) .v) (.rational
    55366 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 467495 1) .v) (.rational 976814 1)) .v)
    (.rational 516975 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2015441 1) .v)
    (.rational 4172630 1)) .v) (.rational 2186558 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5210126 1) .v) (.rational 10677340 1)) .v) (.rational 5533494 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8987752 1) .v) (.rational 18211256 1)) .v)
    (.rational 9320916 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10890110 1)
    .v) (.rational 21787396 1)) .v) (.rational 10994670 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9494338 1) .v) (.rational 18724916 1)) .v) (.rational 9297624 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5994716 1) .v) (.rational 11632096 1))
    .v) (.rational 5668764 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2717386
    1) .v) (.rational 5175260 1)) .v) (.rational 2467434 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 861267 1) .v) (.rational 1605086 1)) .v) (.rational 745531 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 180885 1) .v) (.rational 328582 1)) .v)
    (.rational 147834 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 22558 1) .v)
    (.rational 39732 1)) .v) (.rational 17174 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1260 1) .v) (.rational 2136 1)) .v) (.rational 876 1)) (.pow .g 12))) (.pow .f 3)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    8184 1) .v) (.rational 16618 1)) .v) (.rational 8468 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 81840 1) .v) (.rational 165400 1)) .v) (.rational 83870 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 372298 1) .v) (.rational 748472 1)) .v) (.rational 377440 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1018242 1) .v) (.rational 2035020
    1)) .v) (.rational 1019826 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1863780 1) .v) (.rational 3700104 1)) .v) (.rational 1841112 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2403816 1) .v) (.rational 4736208 1)) .v) (.rational 2337516 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2238684 1) .v) (.rational 4372872
    1)) .v) (.rational 2137968 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1515900 1) .v) (.rational 2931768 1)) .v) (.rational 1417764 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 740232 1) .v) (.rational 1415250 1)) .v) (.rational 675636 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 254040 1) .v) (.rational 479224 1))
    .v) (.rational 225302 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 58122 1)
    .v) (.rational 107920 1)) .v) (.rational 49808 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7954 1) .v) (.rational 14492 1)) .v) (.rational 6538 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 492 1) .v) (.rational 876 1)) .v) (.rational 384 1))
    (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 780 1) .v) (.rational 1548 1)) .v) (.rational 768 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8190 1) .v) (.rational 16224 1)) .v) (.rational 8034
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 39198 1) .v) (.rational 77486 1)) .v)
    (.rational 38288 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 113031 1) .v)
    (.rational 222900 1)) .v) (.rational 109869 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 218619 1) .v) (.rational 429930 1)) .v) (.rational 211311 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 298656 1) .v) (.rational 585456 1)) .v)
    (.rational 286800 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 295344 1) .v)
    (.rational 576828 1)) .v) (.rational 281484 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 212922 1) .v) (.rational 414072 1)) .v) (.rational 201150 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 111006 1) .v) (.rational 214800 1)) .v)
    (.rational 103794 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 40794 1) .v)
    (.rational 78480 1)) .v) (.rational 37686 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10026 1) .v) (.rational 19158 1)) .v) (.rational 9132 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1479 1) .v) (.rational 2804 1)) .v) (.rational 1325 1))
    (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 99 1) .v) (.rational 186 1)) .v)
    (.rational 87 1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 30 1) .v) (.rational 60 1)) .v)
    (.rational 30 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 330 1) .v) (.rational 660 1))
    .v) (.rational 330 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1657 1) .v)
    (.rational 3314 1)) .v) (.rational 1657 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5020 1) .v) (.rational 10040 1)) .v) (.rational 5020 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10215 1) .v) (.rational 20430 1)) .v) (.rational 10215 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 14700 1) .v) (.rational 29400 1))
    .v) (.rational 14700 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 15330 1)
    .v) (.rational 30660 1)) .v) (.rational 15330 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11664 1) .v) (.rational 23328 1)) .v) (.rational 11664 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6420 1) .v) (.rational 12840 1)) .v) (.rational 6420
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2490 1) .v) (.rational 4980 1))
    .v) (.rational 2490 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 645 1) .v)
    (.rational 1290 1)) .v) (.rational 645 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 100 1) .v) (.rational 200 1)) .v) (.rational 100 1)) (.pow .g 11))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 7 1) .v) (.rational 14 1)) .v) (.rational 7 1)) (.pow .g 12)))
    (.pow .f 6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2300

namespace FullLow2301
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow1.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsLow0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow1.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsLow1.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    6*SmallGap.PolarCoefficientsLow0.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow1.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(24*SmallGap.ReducedLayers.low0_100_0 e g v*e^5+4*SmallGap.ReducedLayers.low0_100_1
    e g v*e^6+24*SmallGap.ReducedLayers.low0_010_0 e g v*e^3+6*SmallGap.ReducedLayers.low0_010_1 e
    g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.low1_200_0 e g v*e^5+1*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^6+12*SmallGap.ReducedLayers.low1_110_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_020_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 380 1) .v) (.rational 11580 1)) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 340 1) .v) (.rational 7748 1)) .v) (.rational 101116 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 850 1) .v) (.rational 12116 1)) .v) (.rational 130898
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6450 1) .v)
    (.rational 75076 1)) .v) (.rational 557282 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    19350 1) .v) (.rational 160676 1)) .v) (.rational 1002214 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 20960 1) .v) (.rational 114028 1)) .v) (.rational 630020 1)) (.pow .g 2))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 57084 1) .v)
    (.rational 455456 1)) .v) (.rational 2173007 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    199794 1) .v) (.rational 1239502 1)) .v) (.rational 5042601 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 270398 1) .v) (.rational 1261930 1)) .v) (.rational 4419993 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 176510 1) .v) (.rational 601610 1)) .v)
    (.rational 1815715 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 311996 1) .v) (.rational 1926734 1)) .v) (.rational 6367444
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1247984 1) .v) (.rational 6363078 1)) .v)
    (.rational 18221475 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2016024 1) .v)
    (.rational 8364900 1)) .v) (.rational 20688055 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1680128 1) .v) (.rational 5614420 1)) .v) (.rational 11879195 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 760660 1) .v) (.rational 2042278 1)) .v)
    (.rational 3630657 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1176666 1) .v) (.rational 6007478 1)) .v)
    (.rational 14527522 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5294997 1) .v) (.rational
    23311438 1)) .v) (.rational 49695623 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    9912016 1) .v) (.rational 37365694 1)) .v) (.rational 69757557 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9982070 1) .v) (.rational 32084384 1)) .v) (.rational
    51934211 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5825894 1) .v)
    (.rational 15974262 1)) .v) (.rational 22112155 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1964553 1) .v) (.rational 4632154 1)) .v) (.rational 5390462 1)) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 3242971 1) .v) (.rational 14253582 1)) .v) (.rational 26364281 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 16214855 1) .v) (.rational 63479806 1)) .v)
    (.rational 105340645 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 34449211 1) .v)
    (.rational 119653384 1)) .v) (.rational 176941513 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 40507714 1) .v) (.rational 124547266 1)) .v) (.rational 162759673 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 28742153 1) .v) (.rational 78265418
    1)) .v) (.rational 89484174 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    12551851 1) .v) (.rational 30402582 1)) .v) (.rational 30077040 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3277397 1) .v) (.rational 7127616 1)) .v) (.rational
    6036248 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6749414 1) .v) (.rational 26227792
    1)) .v) (.rational 38520714 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 37121777 1) .v)
    (.rational 131705408 1)) .v) (.rational 176524723 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 88133545 1) .v) (.rational 284730546 1)) .v) (.rational 346223417 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 118187625 1) .v) (.rational 347100652 1)) .v)
    (.rational 380366629 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 98291940
    1) .v) (.rational 262369454 1)) .v) (.rational 257202573 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 52331979 1) .v) (.rational 127198412 1)) .v) (.rational 110677062
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 17728617 1) .v) (.rational
    39409274 1)) .v) (.rational 30202078 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3653835 1) .v) (.rational 7479768 1)) .v) (.rational 5014278 1)) (.pow .g 7)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 10809644 1) .v) (.rational 37828030 1)) .v)
    (.rational 45555534 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 64857864 1) .v)
    (.rational 211248656 1)) .v) (.rational 235881896 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 170024495 1) .v) (.rational 514326628 1)) .v) (.rational 529906205 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 255592055 1) .v) (.rational 716922182 1))
    .v) (.rational 677936651 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    243001669 1) .v) (.rational 631494644 1)) .v) (.rational 544963533 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 151890850 1) .v) (.rational 365771006 1)) .v) (.rational
    286332627 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 62785285 1) .v)
    (.rational 140298100 1)) .v) (.rational 99006864 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16788007 1) .v) (.rational 34898818 1)) .v) (.rational 22058884 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2740555 1) .v) (.rational 5317026 1)) .v)
    (.rational 2989416 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    13449256 1) .v) (.rational 42948484 1)) .v) (.rational 43600068 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 87420164 1) .v) (.rational 263812444 1)) .v) (.rational 251907122 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 250629718 1) .v) (.rational 713369094 1))
    .v) (.rational 638164686 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    416841645 1) .v) (.rational 1117176538 1)) .v) (.rational 932288759 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 444898761 1) .v) (.rational 1121254302 1)) .v)
    (.rational 868844263 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 318164793
    1) .v) (.rational 753359694 1)) .v) (.rational 539379581 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 154418988 1) .v) (.rational 343384312 1)) .v) (.rational
    225931547 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 50345331 1) .v)
    (.rational 105136986 1)) .v) (.rational 63184116 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10644745 1) .v) (.rational 20875890 1)) .v) (.rational 11375294 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1357533 1) .v) (.rational 2498118 1)) .v)
    (.rational 1222108 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 13026600 1) .v) (.rational 38336616 1)) .v) (.rational 33596464 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 91186200 1) .v) (.rational 256715756 1)) .v) (.rational
    214299640 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 283668930 1) .v) (.rational
    762593746 1)) .v) (.rational 604405090 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 516592980 1) .v) (.rational 1323832084 1)) .v) (.rational 992648830 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 610474943 1) .v) (.rational 1488818940 1))
    .v) (.rational 1052104169 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    490210165 1) .v) (.rational 1136006134 1)) .v) (.rational 753362159 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 272096155 1) .v) (.rational 598292706 1)) .v)
    (.rational 370551397 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 104038810
    1) .v) (.rational 216734114 1)) .v) (.rational 124650849 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 26764539 1) .v) (.rational 52726392 1)) .v) (.rational 27958194
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 4405675 1) .v) (.rational
    8184478 1)) .v) (.rational 3962150 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 421707 1) .v) (.rational 735040 1)) .v) (.rational 320144 1)) (.pow .g 10)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9774820 1) .v)
    (.rational 26715624 1)) .v) (.rational 20627879 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 73311150 1) .v) (.rational 193593618 1)) .v) (.rational 143945675 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 245847846 1) .v) (.rational 626208038 1)) .v)
    (.rational 447169607 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 486125224
    1) .v) (.rational 1192278430 1)) .v) (.rational 815254325 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 629182156 1) .v) (.rational 1483224134 1)) .v) (.rational
    967968299 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 559273099 1) .v)
    (.rational 1264870074 1)) .v) (.rational 784933338 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 348288277 1) .v) (.rational 754194264 1)) .v) (.rational 443134188 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 152067975 1) .v) (.rational
    314569874 1)) .v) (.rational 174089362 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 45765394 1) .v) (.rational 90184708 1)) .v) (.rational 46698268 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9131209 1) .v) (.rational 17075762 1)) .v)
    (.rational 8198361 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1121693 1)
    .v) (.rational 1979196 1)) .v) (.rational 869497 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 73311 1) .v) (.rational 120906 1)) .v) (.rational 47595 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5611796 1) .v) (.rational 14334258 1)) .v) (.rational 9924812 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 44894368 1) .v) (.rational 111711218 1)) .v) (.rational 75176099 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 161393236 1) .v) (.rational 390616750 1)) .v)
    (.rational 254923293 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 344101212
    1) .v) (.rational 808711662 1)) .v) (.rational 510574283 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 483513618 1) .v) (.rational 1101494528 1)) .v) (.rational
    670886375 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 470459696 1) .v)
    (.rational 1036840278 1)) .v) (.rational 607289247 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 323957327 1) .v) (.rational 689187078 1)) .v) (.rational 386727270 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 158406121 1) .v) (.rational
    324462556 1)) .v) (.rational 173627714 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 54287685 1) .v) (.rational 106724490 1)) .v) (.rational 54144098 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 12620230 1) .v) (.rational 23713980 1)) .v)
    (.rational 11315700 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1867913 1)
    .v) (.rational 3335488 1)) .v) (.rational 1480145 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 155261 1) .v) (.rational 261202 1)) .v) (.rational 105941 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 5313 1) .v) (.rational 8304 1)) .v)
    (.rational 2991 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 2410230 1) .v) (.rational 5785654 1)) .v) (.rational
    3647902 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 20486955 1) .v) (.rational 48236634
    1)) .v) (.rational 29790415 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 78575972 1)
    .v) (.rational 181219598 1)) .v) (.rational 109431637 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 179580690 1) .v) (.rational 405080722 1)) .v) (.rational 238696581 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 271973506 1) .v) (.rational
    599037406 1)) .v) (.rational 343659843 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 287062594 1) .v) (.rational 616222486 1)) .v) (.rational 343260343 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 216081676 1) .v) (.rational 451107836 1))
    .v) (.rational 243220071 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    116590287 1) .v) (.rational 236116464 1)) .v) (.rational 122741108 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 44615785 1) .v) (.rational 87379252 1)) .v) (.rational
    43578366 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 11761041 1) .v)
    (.rational 22187196 1)) .v) (.rational 10546608 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2015894 1) .v) (.rational 3643802 1)) .v) (.rational 1635786 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 200081 1) .v) (.rational 343922 1)) .v)
    (.rational 143841 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 8585 1) .v)
    (.rational 13876 1)) .v) (.rational 5291 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 745955 1) .v)
    (.rational 1691670 1)) .v) (.rational 984829 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    6713595 1) .v) (.rational 15019746 1)) .v) (.rational 8620237 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 27357639 1) .v) (.rational 60311754 1)) .v) (.rational 34078281 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 66686292 1) .v) (.rational
    144686258 1)) .v) (.rational 80360659 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 108193158 1) .v) (.rational 230694454 1)) .v) (.rational 125721201 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 122953866 1) .v) (.rational 257226770 1))
    .v) (.rational 137252969 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    100239546 1) .v) (.rational 205364560 1)) .v) (.rational 107020295 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 58990644 1) .v) (.rational 118088102 1)) .v) (.rational
    59915529 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 24831507 1) .v)
    (.rational 48436978 1)) .v) (.rational 23834944 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7277123 1) .v) (.rational 13784684 1)) .v) (.rational 6545366 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1405791 1) .v) (.rational 2574430 1)) .v)
    (.rational 1171420 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 160176 1)
    .v) (.rational 281864 1)) .v) (.rational 121688 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8100 1) .v) (.rational 13578 1)) .v) (.rational 5478 1)) (.pow .g 12))) (.pow
    .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 156074 1) .v) (.rational 336248 1)) .v) (.rational 183122 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1482703 1) .v) (.rational 3166608 1)) .v) (.rational 1709183 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6395879 1) .v) (.rational 13529542 1)) .v)
    (.rational 7230559 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 16556045 1)
    .v) (.rational 34654720 1)) .v) (.rational 18317259 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 28625536 1) .v) (.rational 59224438 1)) .v) (.rational 30920174 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 34806326 1) .v) (.rational 71087076
    1)) .v) (.rational 36602162 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    30498874 1) .v) (.rational 61397672 1)) .v) (.rational 31120446 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 19392074 1) .v) (.rational 38411348 1)) .v) (.rational
    19123330 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8873590 1) .v)
    (.rational 17257440 1)) .v) (.rational 8415694 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2847691 1) .v) (.rational 5423388 1)) .v) (.rational 2581439 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 607847 1) .v) (.rational 1129858 1)) .v)
    (.rational 522475 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 77401 1) .v)
    (.rational 139804 1)) .v) (.rational 62403 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4440 1) .v) (.rational 7746 1)) .v) (.rational 3306 1)) (.pow .g 12))) (.pow
    .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 19564 1) .v) (.rational 40310 1)) .v) (.rational 20814 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 195640 1) .v) (.rational 401228 1)) .v) (.rational 206208 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 890465 1) .v) (.rational 1816762 1)) .v)
    (.rational 928829 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2438445 1)
    .v) (.rational 4946244 1)) .v) (.rational 2513895 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4472797 1) .v) (.rational 9013946 1)) .v) (.rational 4550725 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5787644 1) .v) (.rational 11578504 1))
    .v) (.rational 5801108 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5415466
    1) .v) (.rational 10744412 1)) .v) (.rational 5336506 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3691022 1) .v) (.rational 7254328 1)) .v) (.rational 3567098 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1818310 1) .v) (.rational 3535394 1)) .v)
    (.rational 1718320 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 631332 1)
    .v) (.rational 1212396 1)) .v) (.rational 581300 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 146645 1) .v) (.rational 277594 1)) .v) (.rational 130969 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 20461 1) .v) (.rational 38084 1)) .v) (.rational
    17623 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 1297 1) .v) (.rational
    2366 1)) .v) (.rational 1069 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1092 1) .v) (.rational
    2172 1)) .v) (.rational 1080 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 11466 1) .v)
    (.rational 22776 1)) .v) (.rational 11310 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 54906 1) .v) (.rational 108902 1)) .v) (.rational 53996 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 158517 1) .v) (.rational 313872 1)) .v) (.rational 155355
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 307233 1) .v) (.rational 607158
    1)) .v) (.rational 299925 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    421056 1) .v) (.rational 830256 1)) .v) (.rational 409200 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 418320 1) .v) (.rational 822780 1)) .v) (.rational 404460 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 303534 1) .v) (.rational 595296 1))
    .v) (.rational 291762 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 159642 1)
    .v) (.rational 312072 1)) .v) (.rational 152430 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 59358 1) .v) (.rational 115608 1)) .v) (.rational 56250 1)) (.pow .g 9))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 14814 1) .v) (.rational 28734 1)) .v) (.rational
    13920 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 2229 1) .v) (.rational
    4304 1)) .v) (.rational 2075 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    153 1) .v) (.rational 294 1)) .v) (.rational 141 1)) (.pow .g 12))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2301

namespace FullLow2302
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow2.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsLow1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow2.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsLow1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsLow2.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsLow0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow2.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(60*SmallGap.ReducedLayers.low0_100_0 e g v*e^4+24*SmallGap.ReducedLayers.low0_100_1
    e g v*e^5+4*SmallGap.ReducedLayers.low0_100_2 e g v*e^6+36*SmallGap.ReducedLayers.low0_010_0 e
    g v*e^2+24*SmallGap.ReducedLayers.low0_010_1 e g v*e^3+6*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.low1_200_0 e g v*e^4+6*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_200_2 e g v*e^6+18*SmallGap.ReducedLayers.low1_110_0 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_110_1 e g v*e^3+3*SmallGap.ReducedLayers.low1_110_2 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_020_0 e g v+6*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_2 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 1600 1) .v) (.rational 52080 1)) .e) (.add (.mul (.add (.mul
    (.add (.mul (.rational 1260 1) .v) (.rational 30152 1)) .v) (.rational 433352 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3150 1) .v) (.rational 46184 1)) .v) (.rational 550738 1))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22746 1) .v) (.rational
    274080 1)) .v) (.rational 2273222 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 68238 1)
    .v) (.rational 572640 1)) .v) (.rational 4002634 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 73938 1) .v) (.rational 389092 1)) .v) (.rational 2442862 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 192516 1) .v)
    (.rational 1578560 1)) .v) (.rational 8429471 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    673806 1) .v) (.rational 4204094 1)) .v) (.rational 19134999 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 912162 1) .v) (.rational 4149266 1)) .v) (.rational 16291645 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 595890 1) .v) (.rational 1893298 1)) .v)
    (.rational 6432453 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1008870 1) .v) (.rational 6391588 1)) .v) (.rational
    23478250 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4035480 1) .v) (.rational 20739652
    1)) .v) (.rational 65766830 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6520536 1)
    .v) (.rational 26670630 1)) .v) (.rational 72705872 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5437428 1) .v) (.rational 17436690 1)) .v) (.rational 40370896 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2464578 1) .v) (.rational 6164774
    1)) .v) (.rational 11833610 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3650034 1) .v) (.rational 19153320 1))
    .v) (.rational 50894528 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 16425153 1) .v)
    (.rational 73310734 1)) .v) (.rational 170739059 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 30754752 1) .v) (.rational 115697106 1)) .v) (.rational 234215453 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 30990918 1) .v) (.rational 97703134 1)) .v)
    (.rational 169738359 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 18107382
    1) .v) (.rational 47870122 1)) .v) (.rational 70092675 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6116517 1) .v) (.rational 13711716 1)) .v) (.rational 16547278 1))
    (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 9636235 1) .v) (.rational 43689996 1)) .v) (.rational
    87671019 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 48181175 1) .v) (.rational 192556668
    1)) .v) (.rational 344439003 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 102393514
    1) .v) (.rational 358992416 1)) .v) (.rational 567748716 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 120487006 1) .v) (.rational 369662072 1)) .v) (.rational
    511578258 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 85599575 1) .v)
    (.rational 230115630 1)) .v) (.rational 275269385 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 37455139 1) .v) (.rational 88831522 1)) .v) (.rational 90659177 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9806892 1) .v) (.rational 20807118
    1)) .v) (.rational 17920468 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 19143898 1) .v)
    (.rational 77049528 1)) .v) (.rational 121311912 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 105291439 1) .v) (.rational 383863056 1)) .v) (.rational 548222473 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 250073687 1) .v) (.rational 823446372 1)) .v)
    (.rational 1059451049 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 335645799
    1) .v) (.rational 996777618 1)) .v) (.rational 1146417305 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 279574828 1) .v) (.rational 749340910 1)) .v) (.rational
    764009411 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 149204909 1) .v)
    (.rational 362282010 1)) .v) (.rational 324772984 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 50718719 1) .v) (.rational 112385866 1)) .v) (.rational 87990300 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 10500861 1) .v) (.rational 21469348
    1)) .v) (.rational 14627362 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    29099704 1) .v) (.rational 105837312 1)) .v) (.rational 135269490 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 174598224 1) .v) (.rational 587496822 1)) .v) (.rational 692660209 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 457920601 1) .v) (.rational 1422499816 1))
    .v) (.rational 1538714426 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    689119285 1) .v) (.rational 1973810378 1)) .v) (.rational 1947547023 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 656403550 1) .v) (.rational 1733477328 1)) .v)
    (.rational 1550958586 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 411478954
    1) .v) (.rational 1003501110 1)) .v) (.rational 809500429 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 170794497 1) .v) (.rational 385982666 1)) .v) (.rational
    279330478 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 45927685 1) .v)
    (.rational 96689012 1)) .v) (.rational 62537493 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7553424 1) .v) (.rational 14907598 1)) .v) (.rational 8595272 1)) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 34077794 1) .v) (.rational
    113366652 1)) .v) (.rational 121169316 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    221505661 1) .v) (.rational 693148354 1)) .v) (.rational 694053293 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 635399474 1) .v) (.rational 1866947250 1)) .v) (.rational
    1743823806 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1058134836 1) .v)
    (.rational 2915351152 1)) .v) (.rational 2528929762 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1131857583 1) .v) (.rational 2922207044 1)) .v) (.rational 2343552637
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 812191260 1) .v) (.rational
    1965208100 1)) .v) (.rational 1450650198 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 396121972 1) .v) (.rational 899223920 1)) .v) (.rational 608377075 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 130020332 1) .v) (.rational 277426966 1))
    .v) (.rational 171341577 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    27739189 1) .v) (.rational 55755474 1)) .v) (.rational 31305878 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3579309 1) .v) (.rational 6786780 1)) .v) (.rational
    3445912 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    30708284 1) .v) (.rational 94234228 1)) .v) (.rational 86408456 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 214957988 1) .v) (.rational 628770298 1)) .v) (.rational 547551111 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 669134651 1) .v) (.rational 1862559034 1))
    .v) (.rational 1535159383 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1220354062 1) .v) (.rational 3227819094 1)) .v) (.rational 2509162703 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1445771572 1) .v) (.rational 3629523170 1)) .v)
    (.rational 2651331270 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1165444339 1) .v) (.rational 2774761718 1)) .v) (.rational 1897643840 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 650495459 1) .v) (.rational 1468184422 1)) .v)
    (.rational 936424981 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 250641260
    1) .v) (.rational 536190362 1)) .v) (.rational 317636011 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 65148968 1) .v) (.rational 132066880 1)) .v) (.rational 72319188
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 10871721 1) .v) (.rational
    20860874 1)) .v) (.rational 10492991 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1059366 1) .v) (.rational 1917502 1)) .v) (.rational 877338 1)) (.pow .g 10)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21094478 1) .v)
    (.rational 60081252 1)) .v) (.rational 48296771 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 158208585 1) .v) (.rational 434163492 1)) .v) (.rational 335362338 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 530925575 1) .v) (.rational 1401585204 1)) .v)
    (.rational 1037463761 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1051519365 1) .v) (.rational 2666257000 1)) .v) (.rational 1885777434 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1364742929 1) .v) (.rational 3319014704 1)) .v)
    (.rational 2236161719 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1218266214 1) .v) (.rational 2837859700 1)) .v) (.rational 1815409201 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 763320676 1) .v) (.rational 1700944812 1)) .v)
    (.rational 1029492476 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 336102132
    1) .v) (.rational 715500222 1)) .v) (.rational 408080853 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 102309775 1) .v) (.rational 207727614 1)) .v) (.rational
    111101812 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 20724423 1) .v)
    (.rational 40032944 1)) .v) (.rational 19950181 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2597173 1) .v) (.rational 4752424 1)) .v) (.rational 2186233 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 174273 1) .v) (.rational 299618 1)) .v)
    (.rational 125345 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 10834102 1) .v) (.rational 28776528 1)) .v)
    (.rational 20651210 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 86672816 1) .v)
    (.rational 223780826 1)) .v) (.rational 155852859 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 311820820 1) .v) (.rational 781436060 1)) .v) (.rational 526992787 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 665971460 1) .v) (.rational 1617449480 1))
    .v) (.rational 1053705032 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    938562760 1) .v) (.rational 2205707096 1)) .v) (.rational 1384466289 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 917360708 1) .v) (.rational 2082733650 1)) .v)
    (.rational 1255950179 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 635804209
    1) .v) (.rational 1392136020 1)) .v) (.rational 803949947 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 313690445 1) .v) (.rational 661134266 1)) .v) (.rational
    364267031 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 108813022 1) .v)
    (.rational 220234604 1)) .v) (.rational 115240691 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25705158 1) .v) (.rational 49806532 1)) .v) (.rational 24603530 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 3886053 1) .v) (.rational 7175456
    1)) .v) (.rational 3318338 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    332181 1) .v) (.rational 580270 1)) .v) (.rational 248089 1)) (.pow .g 11))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 11802 1) .v) (.rational 19260 1)) .v) (.rational 7458 1)) (.pow
    .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 4021168 1) .v) (.rational 9999332 1)) .v) (.rational 6505324 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 34179928 1) .v) (.rational 83232128 1)) .v) (.rational
    52986090 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 131196928 1) .v) (.rational
    312436960 1)) .v) (.rational 194281521 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 300378400 1) .v) (.rational 698562874 1)) .v) (.rational 423466395 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 456313702 1) .v) (.rational 1034744750 1))
    .v) (.rational 610159948 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    483882295 1) .v) (.rational 1068124236 1)) .v) (.rational 611175138 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 366678754 1) .v) (.rational 786471468 1)) .v)
    (.rational 435454744 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 199680910
    1) .v) (.rational 415276214 1)) .v) (.rational 221758043 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 77366025 1) .v) (.rational 155618234 1)) .v) (.rational 79823205
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 20731667 1) .v) (.rational
    40203600 1)) .v) (.rational 19706298 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3630772 1) .v) (.rational 6758864 1)) .v) (.rational 3143629 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 370656 1) .v) (.rational 658260 1)) .v) (.rational
    287604 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 16507 1) .v) (.rational
    27704 1)) .v) (.rational 11197 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1016239 1) .v) (.rational 2374224
    1)) .v) (.rational 1418831 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 9146151 1) .v)
    (.rational 21056002 1)) .v) (.rational 12397248 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 37299439 1) .v) (.rational 84519610 1)) .v) (.rational 48960799 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 91082756 1) .v) (.rational 202893138 1)) .v)
    (.rational 115459011 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 148227364
    1) .v) (.rational 324144820 1)) .v) (.rational 180888083 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 169237964 1) .v) (.rational 362765194 1)) .v) (.rational
    198126121 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 138898465 1) .v)
    (.rational 291337734 1)) .v) (.rational 155366736 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 82496828 1) .v) (.rational 168986066 1)) .v) (.rational 87756061 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 35157016 1) .v) (.rational 70165778
    1)) .v) (.rational 35365781 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10471569 1) .v) (.rational 20303820 1)) .v) (.rational 9891503 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2065960 1) .v) (.rational 3877400 1)) .v) (.rational
    1815845 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 241884 1) .v)
    (.rational 437252 1)) .v) (.rational 195368 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12669 1) .v) (.rational 21906 1)) .v) (.rational 9237 1)) (.pow .g 12)))
    (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 155940 1) .v) (.rational 343508 1)) .v) (.rational 190788 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1481430 1) .v) (.rational 3232854 1)) .v) (.rational
    1779012 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6395238 1) .v) (.rational
    13813598 1)) .v) (.rational 7524045 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16583058 1) .v) (.rational 35418824 1)) .v) (.rational 19074094 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 28757406 1) .v) (.rational 60668192 1)) .v)
    (.rational 32261094 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 35125245 1)
    .v) (.rational 73102890 1)) .v) (.rational 38328317 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 30978339 1) .v) (.rational 63513646 1)) .v) (.rational 32777465 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 19873113 1) .v) (.rational 40074598
    1)) .v) (.rational 20315445 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9202563 1) .v) (.rational 18217614 1)) .v) (.rational 9050059 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2999601 1) .v) (.rational 5816392 1)) .v) (.rational
    2823139 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 653235 1) .v)
    (.rational 1237292 1)) .v) (.rational 584574 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 85329 1) .v) (.rational 157322 1)) .v) (.rational 71993 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5055 1) .v) (.rational 9030 1)) .v) (.rational
    3975 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 10908 1) .v) (.rational 22748 1)) .v)
    (.rational 11874 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 109080 1) .v) (.rational
    226388 1)) .v) (.rational 117618 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 496837
    1) .v) (.rational 1025630 1)) .v) (.rational 530059 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1362753 1) .v) (.rational 2796324 1)) .v) (.rational 1436619 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2506669 1) .v) (.rational 5109146 1)) .v)
    (.rational 2607265 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3257420 1)
    .v) (.rational 6589480 1)) .v) (.rational 3337184 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3066658 1) .v) (.rational 6151292 1)) .v) (.rational 3088414 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2107814 1) .v) (.rational 4187944 1)) .v)
    (.rational 2082026 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1050118 1)
    .v) (.rational 2064224 1)) .v) (.rational 1014724 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 370004 1) .v) (.rational 718596 1)) .v) (.rational 348710 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 87577 1) .v) (.rational 167782 1)) .v)
    (.rational 80215 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 12513 1) .v)
    (.rational 23604 1)) .v) (.rational 11091 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 817 1) .v) (.rational 1514 1)) .v) (.rational 697 1)) (.pow .g 12))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2302

namespace FullLow2303
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow3.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsLow2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow3.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsLow2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsLow3.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow0.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow3.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    12*SmallGap.PolarCoefficientsLow0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(80*SmallGap.ReducedLayers.low0_100_0 e g v*e^3+60*SmallGap.ReducedLayers.low0_100_1
    e g v*e^4+24*SmallGap.ReducedLayers.low0_100_2 e g v*e^5+4*SmallGap.ReducedLayers.low0_100_3 e
    g v*e^6+24*SmallGap.ReducedLayers.low0_010_0 e g v*e^1+36*SmallGap.ReducedLayers.low0_010_1 e
    g v*e^2+24*SmallGap.ReducedLayers.low0_010_2 e g v*e^3+6*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(20*SmallGap.ReducedLayers.low1_200_0 e g v*e^3+15*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_200_2 e g v*e^5+1*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^6+12*SmallGap.ReducedLayers.low1_110_0 e g v*e^1+18*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_110_2 e g v*e^3+3*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_020_1 e g v+6*SmallGap.ReducedLayers.low1_020_2 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_3 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 3920 1) .v) (.rational 138960 1)) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 2660 1) .v) (.rational 68712 1)) .v) (.rational 1103830 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6650 1) .v) (.rational 102984 1)) .v) (.rational 1375442 1)) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 46050 1) .v) (.rational 586496 1))
    .v) (.rational 5512266 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 138150 1) .v)
    (.rational 1192552 1)) .v) (.rational 9484638 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 149740 1) .v) (.rational 768732 1)) .v) (.rational 5598908 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 374420 1) .v)
    (.rational 3202312 1)) .v) (.rational 19410780 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1310470 1) .v) (.rational 8314548 1)) .v) (.rational 42997222 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1774570 1) .v) (.rational 7895020 1)) .v) (.rational
    35400682 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1160250 1) .v)
    (.rational 3394980 1)) .v) (.rational 13317266 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1884674 1) .v) (.rational 12382660
    1)) .v) (.rational 51240106 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7538696 1) .v)
    (.rational 39344064 1)) .v) (.rational 140119740 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12184016 1) .v) (.rational 49225420 1)) .v) (.rational 150158208 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10166612 1) .v) (.rational 31087228 1)) .v)
    (.rational 80016840 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4613670 1)
    .v) (.rational 10559832 1)) .v) (.rational 22203654 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6536542 1) .v)
    (.rational 35561544 1)) .v) (.rational 105082181 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 29414439 1) .v) (.rational 133914426 1)) .v) (.rational 344822737 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 55089104 1) .v) (.rational 207340202 1)) .v)
    (.rational 460471010 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 55544482
    1) .v) (.rational 171407024 1)) .v) (.rational 322970632 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 32487682 1) .v) (.rational 82206160 1)) .v) (.rational 128282703
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10991691 1) .v) (.rational
    23146430 1)) .v) (.rational 29012339 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16476287 1) .v)
    (.rational 77666088 1)) .v) (.rational 170820075 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 82381435 1) .v) (.rational 338134508 1)) .v) (.rational 658422125 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 175123141 1) .v) (.rational 622139308 1)) .v)
    (.rational 1061840657 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 206203954
    1) .v) (.rational 632139256 1)) .v) (.rational 933600484 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 146667005 1) .v) (.rational 388816368 1)) .v) (.rational
    489318747 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 64289203 1) .v)
    (.rational 148851724 1)) .v) (.rational 157123907 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16873083 1) .v) (.rational 34802220 1)) .v) (.rational 30477269 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 31052034 1) .v) (.rational 130430366 1)) .v)
    (.rational 222091651 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 170786187 1) .v)
    (.rational 643905356 1)) .v) (.rational 988031160 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 405770119 1) .v) (.rational 1368740326 1)) .v) (.rational 1877394450 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 545069133 1) .v) (.rational 1642946998 1))
    .v) (.rational 1996156665 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    454666892 1) .v) (.rational 1226863876 1)) .v) (.rational 1307903355 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 243181477 1) .v) (.rational 591036132 1)) .v)
    (.rational 548165712 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 82916479
    1) .v) (.rational 183551146 1)) .v) (.rational 147357630 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 17234547 1) .v) (.rational 35307458 1)) .v) (.rational 24562055
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 44361953 1) .v) (.rational
    168967752 1)) .v) (.rational 230986525 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    266171718 1) .v) (.rational 931529034 1)) .v) (.rational 1168171907 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 698406838 1) .v) (.rational 2241205628 1)) .v) (.rational
    2562521431 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1052126775 1) .v)
    (.rational 3093342178 1)) .v) (.rational 3204331045 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1003998676 1) .v) (.rational 2707184960 1)) .v) (.rational 2525199432
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 631122952 1) .v) (.rational
    1565987526 1)) .v) (.rational 1308598881 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 262992954 1) .v) (.rational 604146448 1)) .v) (.rational 450860919 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 71092087 1) .v) (.rational 152492370 1)) .v)
    (.rational 101607019 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 11769931
    1) .v) (.rational 23804692 1)) .v) (.rational 14196165 1)) (.pow .g 8)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 48199684 1) .v) (.rational 168308090 1)) .v)
    (.rational 190771515 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 313297946 1) .v)
    (.rational 1023706782 1)) .v) (.rational 1082250692 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 899216902 1) .v) (.rational 2744927706 1)) .v) (.rational 2694248689 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1499415555 1) .v) (.rational 4272278192 1))
    .v) (.rational 3875581835 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1607472533 1) .v) (.rational 4275901604 1)) .v) (.rational 3569533671 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1157425845 1) .v) (.rational 2878472212 1)) .v)
    (.rational 2203242173 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 567256844
    1) .v) (.rational 1322775184 1)) .v) (.rational 925875099 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 187432417 1) .v) (.rational 411505396 1)) .v) (.rational
    263019055 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 40338177 1) .v)
    (.rational 83766638 1)) .v) (.rational 48862566 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5263039 1) .v) (.rational 10372954 1)) .v) (.rational 5514775 1)) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 39587519 1) .v)
    (.rational 127619740 1)) .v) (.rational 123284949 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 277112633 1) .v) (.rational 848069440 1)) .v) (.rational 775463009 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 863197422 1) .v) (.rational 2504114476 1)) .v)
    (.rational 2159706088 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1576720303 1) .v) (.rational 4331175780 1)) .v) (.rational 3511089225 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1872934339 1) .v) (.rational 4869262912 1)) .v)
    (.rational 3697835253 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1515920004 1) .v) (.rational 3730616056 1)) .v) (.rational 2646036126 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 851042093 1) .v) (.rational 1984241432 1)) .v)
    (.rational 1310989419 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 330541247
    1) .v) (.rational 731167244 1)) .v) (.rational 448983531 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 86839012 1) .v) (.rational 182508972 1)) .v) (.rational 103927262
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 14695311 1) .v) (.rational
    29357920 1)) .v) (.rational 15452139 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1457957 1) .v) (.rational 2761448 1)) .v) (.rational 1334755 1)) (.pow .g 10))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 24174262 1) .v)
    (.rational 72273986 1)) .v) (.rational 60882305 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 181306965 1) .v) (.rational 520583644 1)) .v) (.rational 420349588 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 608916831 1) .v) (.rational 1676690704 1)) .v)
    (.rational 1294121164 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1208137099 1) .v) (.rational 3186323052 1)) .v) (.rational 2344183766 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1572809793 1) .v) (.rational 3969197698 1)) .v)
    (.rational 2775699199 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1410554838 1) .v) (.rational 3403883660 1)) .v) (.rational 2256460120 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 889715834 1) .v) (.rational 2052207302 1)) .v)
    (.rational 1286169734 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 395374104
    1) .v) (.rational 871471590 1)) .v) (.rational 514959625 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 121849979 1) .v) (.rational 256538562 1)) .v) (.rational
    142487478 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 25090659 1) .v)
    (.rational 50390700 1)) .v) (.rational 26199018 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3212979 1) .v) (.rational 6133950 1)) .v) (.rational 2965780 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 221807 1) .v) (.rational 399194 1)) .v)
    (.rational 177387 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 10637149 1) .v) (.rational 29582860 1)) .v)
    (.rational 22139685 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 85097192 1) .v)
    (.rational 229454714 1)) .v) (.rational 166351497 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 306420474 1) .v) (.rational 799934536 1)) .v) (.rational 560535627 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 655742458 1) .v) (.rational 1655154736 1))
    .v) (.rational 1118378007 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    927298413 1) .v) (.rational 2260176740 1)) .v) (.rational 1469070688 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 911060760 1) .v) (.rational 2141773006 1)) .v)
    (.rational 1335789572 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 636137614
    1) .v) (.rational 1440743676 1)) .v) (.rational 859955930 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 317077639 1) .v) (.rational 691019082 1)) .v) (.rational
    393604980 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 111510051 1) .v)
    (.rational 233494916 1)) .v) (.rational 126494872 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 26827130 1) .v) (.rational 53852480 1)) .v) (.rational 27628143 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 4154544 1) .v) (.rational 7964916
    1)) .v) (.rational 3845957 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    366669 1) .v) (.rational 666782 1)) .v) (.rational 300113 1)) (.pow .g 11))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 13603 1) .v) (.rational 23156 1)) .v) (.rational 9553 1)) (.pow
    .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 3186998 1) .v) (.rational 8262150 1)) .v) (.rational 5577110 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 27089483 1) .v) (.rational 68630276 1)) .v) (.rational
    45272085 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 104079648 1) .v) (.rational
    257339996 1)) .v) (.rational 165586809 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 238807700 1) .v) (.rational 575475082 1)) .v) (.rational 360494437 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 364119284 1) .v) (.rational 853999896 1))
    .v) (.rational 519726918 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    388287198 1) .v) (.rational 885089212 1)) .v) (.rational 522125357 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 296601386 1) .v) (.rational 656115216 1)) .v) (.rational
    374262222 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 163303943 1) .v)
    (.rational 349996506 1)) .v) (.rational 192520144 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 64210475 1) .v) (.rational 133071992 1)) .v) (.rational 70358397 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 17543989 1) .v) (.rational 35069076
    1)) .v) (.rational 17751048 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3151700 1) .v) (.rational 6054872 1)) .v) (.rational 2918407 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 332663 1) .v) (.rational 610920 1)) .v) (.rational 278257
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 15485 1) .v) (.rational 26950
    1)) .v) (.rational 11465 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 581760 1) .v) (.rational 1408020 1)) .v)
    (.rational 867834 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5235840 1) .v) (.rational
    12467448 1)) .v) (.rational 7563732 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    21373881 1) .v) (.rational 50013388 1)) .v) (.rational 29822721 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 52312008 1) .v) (.rational 120134766 1)) .v) (.rational
    70297977 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 85461983 1) .v)
    (.rational 192363648 1)) .v) (.rational 110269172 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 98150381 1) .v) (.rational 216224008 1)) .v) (.rational 121188078 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 81231232 1) .v) (.rational
    174874388 1)) .v) (.rational 95627575 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 48801283 1) .v) (.rational 102490572 1)) .v) (.rational 54550378 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 21116458 1) .v) (.rational 43178936 1)) .v)
    (.rational 22306377 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 6416003 1)
    .v) (.rational 12743488 1)) .v) (.rational 6368282 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1298771 1) .v) (.rational 2498208 1)) .v) (.rational 1202504 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 157157 1) .v) (.rational 291590 1)) .v)
    (.rational 134433 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 8587 1) .v)
    (.rational 15284 1)) .v) (.rational 6697 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 48792 1)
    .v) (.rational 110376 1)) .v) (.rational 62748 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 463524 1) .v) (.rational 1037664 1)) .v) (.rational 584106 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2003018 1) .v) (.rational 4433122 1)) .v) (.rational 2468262 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5205791 1) .v) (.rational 11378748
    1)) .v) (.rational 6258981 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9062922 1) .v) (.rational 19541610 1)) .v) (.rational 10605136 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11135543 1) .v) (.rational 23656238 1)) .v) (.rational
    12647339 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9903929 1) .v)
    (.rational 20701142 1)) .v) (.rational 10884769 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6426849 1) .v) (.rational 13197534 1)) .v) (.rational 6811973 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3021541 1) .v) (.rational 6085798 1)) .v)
    (.rational 3076981 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1004377 1)
    .v) (.rational 1980490 1)) .v) (.rational 978431 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 224241 1) .v) (.rational 431952 1)) .v) (.rational 207901 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 30220 1) .v) (.rational 56718 1)) .v) (.rational
    26498 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 1861 1) .v) (.rational
    3392 1)) .v) (.rational 1531 1)) (.pow .g 12))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2303

namespace FullLow2304
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsLow3.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow4.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsLow3.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsLow4.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow1.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow3.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow4.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    12*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    6*SmallGap.PolarCoefficientsLow0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(60*SmallGap.ReducedLayers.low0_100_0 e g v*e^2+80*SmallGap.ReducedLayers.low0_100_1
    e g v*e^3+60*SmallGap.ReducedLayers.low0_100_2 e g v*e^4+24*SmallGap.ReducedLayers.low0_100_3
    e g v*e^5+4*SmallGap.ReducedLayers.low0_100_4 e g v*e^6+6*SmallGap.ReducedLayers.low0_010_0 e
    g v+24*SmallGap.ReducedLayers.low0_010_1 e g v*e^1+36*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^2+24*SmallGap.ReducedLayers.low0_010_3 e g v*e^3+6*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.low1_200_0 e g v*e^2+20*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_200_2 e g v*e^4+6*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_200_4 e g v*e^6+3*SmallGap.ReducedLayers.low1_110_0 e g
    v+12*SmallGap.ReducedLayers.low1_110_1 e g v*e^1+18*SmallGap.ReducedLayers.low1_110_2 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_110_3 e g v*e^3+3*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_020_2 e g v+6*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_4 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    6160 1) .v) (.rational 243600 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 3500 1)
    .v) (.rational 101080 1)) .v) (.rational 1851038 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8750 1) .v) (.rational 148120 1)) .v) (.rational 2258662 1)) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 58530 1) .v) (.rational 811880 1)) .v)
    (.rational 8805034 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 175590 1) .v) (.rational
    1601680 1)) .v) (.rational 14776652 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    190390 1) .v) (.rational 968780 1)) .v) (.rational 8403394 1)) (.pow .g 2)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 459540 1) .v) (.rational 4200940
    1)) .v) (.rational 29414596 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1608390 1) .v)
    (.rational 10590320 1)) .v) (.rational 63420936 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2178730 1) .v) (.rational 9584720 1)) .v) (.rational 50246292 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1425850 1) .v) (.rational 3796180 1)) .v) (.rational
    17814416 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 2228296 1) .v) (.rational 15491152 1)) .v) (.rational 73399230 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8913184 1) .v) (.rational 48016188 1)) .v) (.rational
    195388632 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 14409564 1) .v) (.rational
    58063752 1)) .v) (.rational 201961778 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12032548 1) .v) (.rational 35020808 1)) .v) (.rational 102319130 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5468060 1) .v) (.rational 11226572 1)) .v)
    (.rational 26382984 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 7411878 1) .v) (.rational 42535840 1)) .v)
    (.rational 141790053 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 33353451 1) .v)
    (.rational 157141044 1)) .v) (.rational 453874845 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 62483096 1) .v) (.rational 237703446 1)) .v) (.rational 587502830 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 63041398 1) .v) (.rational 191265676 1)) .v)
    (.rational 396097292 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 36916558
    1) .v) (.rational 89159272 1)) .v) (.rational 149711149 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12512619 1) .v) (.rational 24511620 1)) .v) (.rational 31937799
    1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 17793949 1) .v) (.rational 88565146 1)) .v) (.rational
    216124195 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 88969745 1) .v) (.rational
    380155260 1)) .v) (.rational 815427811 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    189184852 1) .v) (.rational 688590222 1)) .v) (.rational 1282559738 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 222920938 1) .v) (.rational 688396528 1)) .v)
    (.rational 1095654520 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 158756513
    1) .v) (.rational 417149738 1)) .v) (.rational 556383323 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 69719185 1) .v) (.rational 158025832 1)) .v) (.rational 173224407
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 18343150 1) .v) (.rational
    36855610 1)) .v) (.rational 32858640 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    31618436 1) .v) (.rational 140568464 1)) .v) (.rational 261586857 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 173901398 1) .v) (.rational 686775612 1)) .v) (.rational 1143624543 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 413325436 1) .v) (.rational 1444565140 1))
    .v) (.rational 2132154065 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    555703977 1) .v) (.rational 1716974746 1)) .v) (.rational 2222382469 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 464240848 1) .v) (.rational 1272127050 1)) .v)
    (.rational 1428456583 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 248867528
    1) .v) (.rational 610337852 1)) .v) (.rational 589531657 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 85116476 1) .v) (.rational 189821796 1)) .v) (.rational 157372195
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 17757993 1) .v) (.rational
    36805674 1)) .v) (.rational 26394195 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 41988987 1) .v) (.rational 169636658 1)) .v) (.rational 250374207 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 251933922 1) .v) (.rational 928033974 1)) .v) (.rational
    1248981261 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 661363256 1) .v) (.rational
    2216784696 1)) .v) (.rational 2701874917 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 997421995 1) .v) (.rational 3041327566 1)) .v) (.rational 3333980083 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 953606883 1) .v) (.rational 2651370782 1))
    .v) (.rational 2598179075 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    601168704 1) .v) (.rational 1532744766 1)) .v) (.rational 1337242631 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 251509830 1) .v) (.rational 593528420 1)) .v)
    (.rational 460858533 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 68338263
    1) .v) (.rational 151123426 1)) .v) (.rational 104890391 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 11383508 1) .v) (.rational 23905600 1)) .v) (.rational 14948780
    1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 41586290 1) .v)
    (.rational 154201344 1)) .v) (.rational 186974957 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 270310885 1) .v) (.rational 932423032 1)) .v) (.rational 1049516845 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 776299964 1) .v) (.rational 2487617910 1)) .v)
    (.rational 2586532525 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1296230067 1) .v) (.rational 3857723160 1)) .v) (.rational 3688216065 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1392913872 1) .v) (.rational 3855042754 1)) .v)
    (.rational 3375859994 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1006516524 1) .v) (.rational 2598726320 1)) .v) (.rational 2079236294 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 495778032 1) .v) (.rational 1200334764 1)) .v)
    (.rational 877039929 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 164916999
    1) .v) (.rational 376952948 1)) .v) (.rational 251953851 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 35797490 1) .v) (.rational 77797982 1)) .v) (.rational 47714221
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 4719051 1) .v) (.rational
    9800032 1)) .v) (.rational 5524579 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 30298185 1) .v) (.rational 103702430 1)) .v) (.rational 106428623
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 212087295 1) .v) (.rational 685968016 1)) .v)
    (.rational 663943813 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 661124283 1) .v)
    (.rational 2018169440 1)) .v) (.rational 1835574393 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1209610863 1) .v) (.rational 3483173188 1)) .v) (.rational 2966969451
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1440926338 1) .v) (.rational
    3915480702 1)) .v) (.rational 3114600296 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1171279310 1) .v) (.rational 3007680488 1)) .v) (.rational 2229589876 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 661583921 1) .v) (.rational 1609366390 1))
    .v) (.rational 1110593369 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    259098407 1) .v) (.rational 599014684 1)) .v) (.rational 384761825 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 68818845 1) .v) (.rational 151699248 1)) .v) (.rational
    90719873 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 11810675 1) .v)
    (.rational 24864108 1)) .v) (.rational 13831389 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1192404 1) .v) (.rational 2390606 1)) .v) (.rational 1230706 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15774732 1)
    .v) (.rational 50000916 1)) .v) (.rational 44500207 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 118310490 1) .v) (.rational 358810948 1)) .v) (.rational 305250689 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 397684718 1) .v) (.rational 1152584216 1)) .v)
    (.rational 934643739 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 790574902
    1) .v) (.rational 2187769742 1)) .v) (.rational 1686521233 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1032634582 1) .v) (.rational 2727566348 1)) .v) (.rational
    1994021860 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 930792962 1) .v)
    (.rational 2347114890 1)) .v) (.rational 1623920888 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 591345088 1) .v) (.rational 1424554452 1)) .v) (.rational 931288496 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 265391529 1) .v) (.rational
    611385668 1)) .v) (.rational 377169818 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 82879098 1) .v) (.rational 182727322 1)) .v) (.rational 106231445 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 17365980 1) .v) (.rational 36626794 1)) .v)
    (.rational 20019839 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2275028 1)
    .v) (.rational 4573972 1)) .v) (.rational 2338521 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 161769 1) .v) (.rational 306822 1)) .v) (.rational 145053 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5558773 1) .v) (.rational 16345094 1)) .v) (.rational 12859943 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 44470184 1) .v) (.rational 126384674 1)) .v) (.rational 96120451 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 160288898 1) .v) (.rational 439732568 1)) .v)
    (.rational 322538921 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 343794066
    1) .v) (.rational 909423168 1)) .v) (.rational 641865505 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 488037519 1) .v) (.rational 1243728356 1)) .v) (.rational
    842820778 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 482295628 1) .v)
    (.rational 1183364854 1)) .v) (.rational 768351720 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 339570158 1) .v) (.rational 801829538 1)) .v) (.rational 497858628 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 171202513 1) .v) (.rational
    388903542 1)) .v) (.rational 230465768 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 61141186 1) .v) (.rational 133520594 1)) .v) (.rational 75353003 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 15012774 1) .v) (.rational 31467280 1)) .v)
    (.rational 16861405 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2388690 1)
    .v) (.rational 4787946 1)) .v) (.rational 2424095 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 218579 1) .v) (.rational 415698 1)) .v) (.rational 197119 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 8520 1) .v) (.rational 15120 1)) .v)
    (.rational 6600 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1189080 1) .v) (.rational 3245688 1)) .v) (.rational
    2291556 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 10107180 1) .v) (.rational 26889852
    1)) .v) (.rational 18521880 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 38876680 1)
    .v) (.rational 100679476 1)) .v) (.rational 67527295 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 89431500 1) .v) (.rational 225158576 1)) .v) (.rational 146761239 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 136958570 1) .v) (.rational
    334823960 1)) .v) (.rational 211665574 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 147021875 1) .v) (.rational 348619622 1)) .v) (.rational 213310026 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 113372116 1) .v) (.rational 260462582 1))
    .v) (.rational 153931004 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    63234743 1) .v) (.rational 140591686 1)) .v) (.rational 80076512 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 25298700 1) .v) (.rational 54355486 1)) .v) (.rational
    29762574 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 7072485 1) .v)
    (.rational 14654230 1)) .v) (.rational 7689934 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1309380 1) .v) (.rational 2607854 1)) .v) (.rational 1305925 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 143801 1) .v) (.rational 273810 1)) .v)
    (.rational 130009 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 7058 1) .v)
    (.rational 12730 1)) .v) (.rational 5672 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 116736 1) .v)
    (.rational 295752 1)) .v) (.rational 189552 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1050624 1) .v) (.rational 2612976 1)) .v) (.rational 1646268 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4294381 1) .v) (.rational 10471230 1)) .v) (.rational 6474987 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10540904 1) .v) (.rational 25166002 1))
    .v) (.rational 15247371 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    17305687 1) .v) (.rational 40400394 1)) .v) (.rational 23940000 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 20023493 1) .v) (.rational 45646764 1)) .v) (.rational
    26404680 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 16747489 1) .v)
    (.rational 37229858 1)) .v) (.rational 20980770 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10206785 1) .v) (.rational 22093548 1)) .v) (.rational 12103686 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4501249 1) .v) (.rational 9471822 1)) .v)
    (.rational 5032356 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1401887 1)
    .v) (.rational 2862124 1)) .v) (.rational 1470660 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 292942 1) .v) (.rational 578832 1)) .v) (.rational 286683 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 36915 1) .v) (.rational 70362 1)) .v)
    (.rational 33447 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2124 1) .v)
    (.rational 3888 1)) .v) (.rational 1764 1)) (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2304

namespace FullLow2305
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsLow4.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow3.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsLow4.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow2.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow3.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow4.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow3.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow3.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    12*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow3.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsLow1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(24*SmallGap.ReducedLayers.low0_100_0 e g v*e^1+60*SmallGap.ReducedLayers.low0_100_1
    e g v*e^2+80*SmallGap.ReducedLayers.low0_100_2 e g v*e^3+60*SmallGap.ReducedLayers.low0_100_3
    e g v*e^4+24*SmallGap.ReducedLayers.low0_100_4 e g v*e^5+6*SmallGap.ReducedLayers.low0_010_1 e
    g v+24*SmallGap.ReducedLayers.low0_010_2 e g v*e^1+36*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^2+24*SmallGap.ReducedLayers.low0_010_4 e g v*e^3+6*SmallGap.ReducedLayers.low0_010_5 e g
    v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.low1_200_0 e g v*e^1+15*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^2+20*SmallGap.ReducedLayers.low1_200_2 e g v*e^3+15*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_200_4 e g v*e^5+3*SmallGap.ReducedLayers.low1_110_1 e g
    v+12*SmallGap.ReducedLayers.low1_110_2 e g v*e^1+18*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_110_4 e g v*e^3+3*SmallGap.ReducedLayers.low1_110_5 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_020_3 e g v+6*SmallGap.ReducedLayers.low1_020_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_5 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6440 1) .v)
    (.rational 293160 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 2940 1) .v)
    (.rational 99568 1)) .v) (.rational 2135686 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    7350 1) .v) (.rational 142576 1)) .v) (.rational 2548910 1)) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 47814 1) .v) (.rational 755112 1)) .v) (.rational 9686782
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 143442 1) .v) (.rational 1441248 1)) .v)
    (.rational 15826046 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 155592 1) .v)
    (.rational 807428 1)) .v) (.rational 8634872 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 364548 1) .v) (.rational 3706684 1)) .v)
    (.rational 30684043 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1275918 1) .v) (.rational
    9035626 1)) .v) (.rational 64235589 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1729026 1) .v) (.rational 7707718 1)) .v) (.rational 48717269 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1132770 1) .v) (.rational 2714306 1)) .v) (.rational
    16061115 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1709472 1) .v) (.rational 13033382 1)) .v) (.rational 72219384 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6837888 1) .v) (.rational 39259406 1)) .v) (.rational
    186626863 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11058504 1) .v) (.rational
    45536640 1)) .v) (.rational 185089147 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9242904 1) .v) (.rational 25833120 1)) .v) (.rational 88153851 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4207728 1) .v) (.rational 7591534 1)) .v)
    (.rational 20558149 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 5462244 1) .v) (.rational 34165646 1)) .v)
    (.rational 130863877 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 24580098 1) .v)
    (.rational 123479852 1)) .v) (.rational 407572414 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 46064064 1) .v) (.rational 181675648 1)) .v) (.rational 509189087 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 46517100 1) .v) (.rational 141329932 1)) .v)
    (.rational 327531435 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 27283716
    1) .v) (.rational 63461474 1)) .v) (.rational 116253228 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9270102 1) .v) (.rational 16879516 1)) .v) (.rational 22886163
    1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 12471606 1) .v) (.rational 67528322 1)) .v) (.rational
    185734940 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 62358030 1) .v) (.rational
    285251294 1)) .v) (.rational 684519684 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    132651408 1) .v) (.rational 507443252 1)) .v) (.rational 1046999654 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 156457452 1) .v) (.rational 497711098 1)) .v)
    (.rational 865566057 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 111612234
    1) .v) (.rational 296291798 1)) .v) (.rational 423745861 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 49139346 1) .v) (.rational 110862390 1)) .v) (.rational 127319841
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 12971316 1) .v) (.rational
    25797808 1)) .v) (.rational 23598885 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    20771880 1) .v) (.rational 100383082 1)) .v) (.rational 206964411 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 114245340 1) .v) (.rational 484791400 1)) .v) (.rational 887839661 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 271668924 1) .v) (.rational 1007740648 1))
    .v) (.rational 1621322571 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    365670108 1) .v) (.rational 1184690098 1)) .v) (.rational 1653827052 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 306089880 1) .v) (.rational 870331958 1)) .v)
    (.rational 1041707454 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 164571456
    1) .v) (.rational 415984912 1)) .v) (.rational 423672736 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 56507808 1) .v) (.rational 129758936 1)) .v) (.rational 112763444
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 11844432 1) .v) (.rational
    25418290 1)) .v) (.rational 19167919 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 25326564 1) .v) (.rational 111071122 1)) .v) (.rational 179177168 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 151959384 1) .v) (.rational 602473378 1)) .v) (.rational
    880690139 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 399155082 1) .v) (.rational
    1427781374 1)) .v) (.rational 1876960759 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 602814390 1) .v) (.rational 1946325202 1)) .v) (.rational 2284216894 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 577706646 1) .v) (.rational 1690436160 1))
    .v) (.rational 1760999704 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    365493468 1) .v) (.rational 977523240 1)) .v) (.rational 902005232 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 153655014 1) .v) (.rational 380613954 1)) .v) (.rational
    312233884 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 42005118 1) .v)
    (.rational 97981254 1)) .v) (.rational 72175325 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7045278 1) .v) (.rational 15734018 1)) .v) (.rational 10542469 1)) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22367064 1) .v) (.rational 89813562
    1)) .v) (.rational 117828529 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 145385916 1) .v)
    (.rational 539562504 1)) .v) (.rational 653844910 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 417830676 1) .v) (.rational 1431616690 1)) .v) (.rational 1594208407 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 698823642 1) .v) (.rational 2211739198 1))
    .v) (.rational 2253069068 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    753059790 1) .v) (.rational 2207591394 1)) .v) (.rational 2050833122 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 546459354 1) .v) (.rational 1491698300 1)) .v)
    (.rational 1262799128 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 270749160
    1) .v) (.rational 693680290 1)) .v) (.rational 536382026 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 90753750 1) .v) (.rational 220361754 1)) .v) (.rational 156463725
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 19884810 1) .v) (.rational
    46194768 1)) .v) (.rational 30308870 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2648880 1) .v) (.rational 5921296 1)) .v) (.rational 3600855 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13927464 1) .v) (.rational
    51457206 1)) .v) (.rational 56709502 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 97492248
    1) .v) (.rational 338625306 1)) .v) (.rational 350595864 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 304158942 1) .v) (.rational 992306172 1)) .v) (.rational 961645102 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 557554428 1) .v) (.rational 1708846258
    1)) .v) (.rational 1545239588 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    666324972 1) .v) (.rational 1921424570 1)) .v) (.rational 1617702770 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 544274514 1) .v) (.rational 1481086896 1)) .v)
    (.rational 1160106740 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 309535110
    1) .v) (.rational 798400252 1)) .v) (.rational 582300644 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 122337360 1) .v) (.rational 300694572 1)) .v) (.rational
    204658155 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 32877966 1) .v)
    (.rational 77387952 1)) .v) (.rational 49275281 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5724828 1) .v) (.rational 12933498 1)) .v) (.rational 7706697 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 587640 1) .v) (.rational 1268560 1)) .v)
    (.rational 703211 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 5800404 1) .v) (.rational 19774874 1)) .v) (.rational 18788234
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 43503030 1) .v) (.rational 141301382 1)) .v)
    (.rational 127937616 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 146368998 1) .v)
    (.rational 452530410 1)) .v) (.rational 389361658 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 291602532 1) .v) (.rational 857903400 1)) .v) (.rational 699720040 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 382286610 1) .v) (.rational
    1070775848 1)) .v) (.rational 826298135 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 346499604 1) .v) (.rational 925239632 1)) .v) (.rational 674749199 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 221869386 1) .v) (.rational 565971170 1))
    .v) (.rational 389927835 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    100640340 1) .v) (.rational 245853418 1)) .v) (.rational 160060428 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 31874862 1) .v) (.rational 74716802 1)) .v) (.rational
    45975787 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 6801924 1) .v)
    (.rational 15298768 1)) .v) (.rational 8886247 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 912042 1) .v) (.rational 1958926 1)) .v) (.rational 1068439 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 66738 1) .v) (.rational 134832 1)) .v)
    (.rational 68094 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1451400 1) .v) (.rational 4573440 1)) .v) (.rational
    3822264 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 11611200 1) .v) (.rational 35233200
    1)) .v) (.rational 28393728 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 41897532 1)
    .v) (.rational 122298390 1)) .v) (.rational 94814038 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 90086724 1) .v) (.rational 252780158 1)) .v) (.rational 188122040 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 128423634 1) .v) (.rational
    346299750 1)) .v) (.rational 246932118 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 127723992 1) .v) (.rational 331029852 1)) .v) (.rational 225819225 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 90745824 1) .v) (.rational 226160730 1)) .v)
    (.rational 147426527 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 46324782
    1) .v) (.rational 111079800 1)) .v) (.rational 69126490 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 16823112 1) .v) (.rational 38813206 1)) .v) (.rational 23032218
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 4223916 1) .v) (.rational
    9362932 1)) .v) (.rational 5286405 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 692340 1) .v) (.rational 1467600 1)) .v) (.rational 784669 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 65946 1) .v) (.rational 132202 1)) .v) (.rational
    66256 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2718 1) .v) (.rational
    5028 1)) .v) (.rational 2310 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 165240 1) .v) (.rational 481608 1)) .v)
    (.rational 359520 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1404540 1) .v) (.rational
    3976932 1)) .v) (.rational 2890392 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    5409492 1) .v) (.rational 14861794 1)) .v) (.rational 10495018 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12480390 1) .v) (.rational 33233762 1)) .v) (.rational
    22757928 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 19207974 1) .v)
    (.rational 49532224 1)) .v) (.rational 32828985 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 20774676 1) .v) (.rational 51843176 1)) .v) (.rational 33197506 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 16192134 1) .v) (.rational 39079840 1)) .v)
    (.rational 24137131 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 9165354 1)
    .v) (.rational 21379346 1)) .v) (.rational 12715208 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3740460 1) .v) (.rational 8423482 1)) .v) (.rational 4814943 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1073844 1) .v) (.rational 2329904 1)) .v)
    (.rational 1276690 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 205986 1)
    .v) (.rational 428938 1)) .v) (.rational 224411 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 23724 1) .v) (.rational 47088 1)) .v) (.rational 23364 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1242 1) .v) (.rational 2322 1)) .v) (.rational 1080
    1)) (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2305

namespace FullLow2306
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsLow4.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow3.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow4.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow4.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow3.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow4.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    12*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow3.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow4.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsLow2.c410 e f g v*e*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_0 e g v+24*SmallGap.ReducedLayers.low0_100_1 e g
    v*e^1+60*SmallGap.ReducedLayers.low0_100_2 e g v*e^2+80*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^3+60*SmallGap.ReducedLayers.low0_100_4 e g v*e^4+6*SmallGap.ReducedLayers.low0_010_2 e g
    v+24*SmallGap.ReducedLayers.low0_010_3 e g v*e^1+36*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^2+24*SmallGap.ReducedLayers.low0_010_5 e g v*e^3+6*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_200_0 e g v+6*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_200_2 e g v*e^2+20*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_200_4 e g v*e^4+3*SmallGap.ReducedLayers.low1_110_2 e g
    v+12*SmallGap.ReducedLayers.low1_110_3 e g v*e^1+18*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_110_5 e g v*e^3+3*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_020_4 e g v+6*SmallGap.ReducedLayers.low1_020_5 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_6 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4480 1) .v) (.rational
    245280 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1540 1) .v) (.rational 65688 1))
    .v) (.rational 1717226 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3850 1) .v) (.rational
    91896 1)) .v) (.rational 2002378 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 24510 1) .v) (.rational 472576 1)) .v) (.rational 7436982 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 73530 1) .v) (.rational 870656 1)) .v) (.rational 11808204 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 79790 1) .v) (.rational 445068 1)) .v) (.rational
    6155890 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 182524 1) .v) (.rational 2206856 1)) .v) (.rational 22338207 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 638834 1) .v) (.rational 5183022 1)) .v) (.rational 45301031 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 866078 1) .v) (.rational 4114370 1)) .v)
    (.rational 32718263 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 568110 1)
    .v) (.rational 1216170 1)) .v) (.rational 9868225 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 831502 1) .v) (.rational
    7411196 1)) .v) (.rational 49511150 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3326008
    1) .v) (.rational 21623556 1)) .v) (.rational 123900234 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5381488 1) .v) (.rational 23866382 1)) .v) (.rational 117314460 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4503436 1) .v) (.rational 12483818 1)) .v)
    (.rational 51871062 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2054850 1)
    .v) (.rational 3198510 1)) .v) (.rational 10513302 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2558984 1) .v)
    (.rational 18542944 1)) .v) (.rational 83822709 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11515428 1) .v) (.rational 65417572 1)) .v) (.rational 253471860 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 21591712 1) .v) (.rational 93243004 1)) .v) (.rational
    304545159 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 21832328 1) .v)
    (.rational 69647990 1)) .v) (.rational 185620879 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12835232 1) .v) (.rational 29812170 1)) .v) (.rational 60999796 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4376592 1) .v) (.rational 7581838 1)) .v)
    (.rational 10770945 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5554070 1) .v) (.rational 34639036
    1)) .v) (.rational 109923032 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 27770350 1) .v)
    (.rational 143802036 1)) .v) (.rational 395132847 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 59111460 1) .v) (.rational 250793636 1)) .v) (.rational 586599012 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 69823740 1) .v) (.rational 240838784 1)) .v)
    (.rational 468199920 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 49940478
    1) .v) (.rational 140601482 1)) .v) (.rational 220481612 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 22073814 1) .v) (.rational 51944630 1)) .v) (.rational 63947325
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5857584 1) .v) (.rational
    12086534 1)) .v) (.rational 11670432 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    8621264 1) .v) (.rational 47688608 1)) .v) (.rational 111218025 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 47416952 1) .v) (.rational 227446874 1)) .v) (.rational 467693077 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 112841496 1) .v) (.rational 466876258 1))
    .v) (.rational 835917274 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    152159592 1) .v) (.rational 542663880 1)) .v) (.rational 834432054 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 127763208 1) .v) (.rational 395517652 1)) .v) (.rational
    515973450 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 69011796 1) .v)
    (.rational 188699996 1)) .v) (.rational 207894412 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 23844540 1) .v) (.rational 59242856 1)) .v) (.rational 55716383 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5036148 1) .v) (.rational 11772650
    1)) .v) (.rational 9715593 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    9513906 1) .v) (.rational 47363244 1)) .v) (.rational 85090050 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 57083436 1) .v) (.rational 254532744 1)) .v) (.rational 411795678 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 150082044 1) .v) (.rational 598194622 1)) .v)
    (.rational 864406852 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 227145390
    1) .v) (.rational 810371606 1)) .v) (.rational 1038211940 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 218485338 1) .v) (.rational 701994376 1)) .v) (.rational
    793747314 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 138986808 1) .v)
    (.rational 407025624 1)) .v) (.rational 406635588 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 58868716 1) .v) (.rational 159929072 1)) .v) (.rational 142457888 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 16245162 1) .v) (.rational 41801100
    1)) .v) (.rational 33727722 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2754044 1) .v) (.rational 6838790 1)) .v) (.rational 5077096 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 7279656 1) .v) (.rational 32852568 1)) .v)
    (.rational 47433257 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 47317764 1) .v)
    (.rational 195947736 1)) .v) (.rational 260035794 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 136134168 1) .v) (.rational 516886572 1)) .v) (.rational 627124825 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 228242520 1) .v) (.rational 795758520 1))
    .v) (.rational 879016578 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    246980644 1) .v) (.rational 794235172 1)) .v) (.rational 797281886 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 180337104 1) .v) (.rational 539140388 1)) .v) (.rational
    492644490 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 90116688 1) .v)
    (.rational 253240704 1)) .v) (.rational 211858412 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 30542088 1) .v) (.rational 81697754 1)) .v) (.rational 63125711 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6781856 1) .v) (.rational 17461162
    1)) .v) (.rational 12562266 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    916502 1) .v) (.rational 2282418 1)) .v) (.rational 1531381 1)) (.pow .g 9)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3666492 1) .v) (.rational 15065172 1))
    .v) (.rational 18106782 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 25665444 1) .v)
    (.rational 98563488 1)) .v) (.rational 110853437 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 80164356 1) .v) (.rational 287592624 1)) .v) (.rational 301564680 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 147335364 1) .v) (.rational 494278236 1)) .v)
    (.rational 481900477 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 176861482
    1) .v) (.rational 556438244 1)) .v) (.rational 503810892 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 145426322 1) .v) (.rational 431200528 1)) .v) (.rational
    362888488 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 83468848 1) .v)
    (.rational 234805076 1)) .v) (.rational 184233692 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 33389752 1) .v) (.rational 89777084 1)) .v) (.rational 65967343 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 9109888 1) .v) (.rational 23557498
    1)) .v) (.rational 16272556 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1614628 1) .v) (.rational 4022782 1)) .v) (.rational 2611783 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 168754 1) .v) (.rational 401934 1)) .v) (.rational 243046 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1092312 1) .v) (.rational 4101000 1)) .v) (.rational 4219188 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8192340 1) .v) (.rational 29160300 1)) .v) (.rational 28496568 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 27596436 1) .v) (.rational 93077484 1)) .v)
    (.rational 86158097 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 55126344 1)
    .v) (.rational 176256492 1)) .v) (.rational 154209402 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 72597540 1) .v) (.rational 220388952 1)) .v) (.rational 182029104 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 66247764 1) .v) (.rational
    191483034 1)) .v) (.rational 149295485 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 42820896 1) .v) (.rational 118287078 1)) .v) (.rational 87157297 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 19668168 1) .v) (.rational 52134780 1)) .v)
    (.rational 36368528 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6329848 1)
    .v) (.rational 16149228 1)) .v) (.rational 10679558 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1377698 1) .v) (.rational 3382174 1)) .v) (.rational 2117763 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 189042 1) .v) (.rational 443274 1)) .v)
    (.rational 260978 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 14158 1) .v)
    (.rational 30996 1)) .v) (.rational 16838 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 145800 1) .v) (.rational
    501960 1)) .v) (.rational 451716 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1166400 1)
    .v) (.rational 3850440 1)) .v) (.rational 3331752 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4213872 1) .v) (.rational 13328904 1)) .v) (.rational 11064078 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9085104 1) .v) (.rational 27532836 1)) .v)
    (.rational 21881801 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 13010718 1)
    .v) (.rational 37799208 1)) .v) (.rational 28721638 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13029156 1) .v) (.rational 36332736 1)) .v) (.rational 26374083 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9347376 1) .v) (.rational 25061790
    1)) .v) (.rational 17376408 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4835262 1) .v) (.rational 12485490 1)) .v) (.rational 8269207 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1787192 1) .v) (.rational 4447432 1)) .v) (.rational
    2812796 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 459320 1) .v)
    (.rational 1099372 1)) .v) (.rational 662613 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 77664 1) .v) (.rational 177462 1)) .v) (.rational 101322 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7718 1) .v) (.rational 16534 1)) .v) (.rational
    8816 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 338 1) .v) (.rational 652
    1)) .v) (.rational 314 1)) (.pow .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2306

namespace FullLow2307
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsLow4.c230 e f g v*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow4.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    12*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow4.c320 e f g v*e*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow3.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsLow3.c410 e f g v*e*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_1 e g v+24*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^1+60*SmallGap.ReducedLayers.low0_100_3 e g v*e^2+80*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^3+6*SmallGap.ReducedLayers.low0_010_3 e g v+24*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^1+36*SmallGap.ReducedLayers.low0_010_5 e g v*e^2+24*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_200_1 e g v+6*SmallGap.ReducedLayers.low1_200_2 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_200_3 e g v*e^2+20*SmallGap.ReducedLayers.low1_200_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_110_3 e g v+12*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_110_5 e g v*e^2+12*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_020_5 e g v+6*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_7 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2000 1) .v) (.rational 140880 1))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 460 1) .v) (.rational 27992 1)) .v)
    (.rational 950242 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1150 1) .v) (.rational
    38264 1)) .v) (.rational 1081478 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 7206 1) .v) (.rational 192160 1)) .v) (.rational 3936062 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 21618 1) .v) (.rational 341240 1)) .v) (.rational 6064114 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 23468 1) .v) (.rational 156532 1)) .v) (.rational
    3008972 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 52716 1) .v) (.rational 857600 1)) .v) (.rational 11216966 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 184506 1) .v) (.rational 1935664 1)) .v) (.rational 21993324 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 250262 1) .v) (.rational 1410736 1)) .v)
    (.rational 15055920 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 164390 1)
    .v) (.rational 315488 1)) .v) (.rational 4076668 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 234434 1) .v) (.rational
    2760656 1)) .v) (.rational 23389154 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 937736 1)
    .v) (.rational 7786524 1)) .v) (.rational 56580066 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1518192 1) .v) (.rational 8121588 1)) .v) (.rational 50954302 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1272500 1) .v) (.rational 3822772 1)) .v) (.rational
    20666094 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 582358 1) .v)
    (.rational 776332 1)) .v) (.rational 3436560 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 697116 1) .v)
    (.rational 6599636 1)) .v) (.rational 36857348 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3137022 1) .v) (.rational 22706060 1)) .v) (.rational 108092518 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5886496 1) .v) (.rational 31281404 1)) .v) (.rational
    124700294 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5963300 1) .v)
    (.rational 22320488 1)) .v) (.rational 71775450 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3517724 1) .v) (.rational 9019036 1)) .v) (.rational 21643758 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1205778 1) .v) (.rational 2164940 1)) .v)
    (.rational 3345820 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1438232 1) .v) (.rational 11594624
    1)) .v) (.rational 44254580 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7191160 1) .v)
    (.rational 47284376 1)) .v) (.rational 155092172 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15322046 1) .v) (.rational 80813344 1)) .v) (.rational 223524402 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 18141224 1) .v) (.rational 75974284 1)) .v)
    (.rational 172540446 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 13028716
    1) .v) (.rational 43533708 1)) .v) (.rational 78570034 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5794736 1) .v) (.rational 15926292 1)) .v) (.rational 22293170 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1550906 1) .v) (.rational 3724684
    1)) .v) (.rational 4110316 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2067480 1) .v)
    (.rational 14565892 1)) .v) (.rational 39919744 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11371140 1) .v) (.rational 68571040 1)) .v) (.rational 164534764 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 27095616 1) .v) (.rational 138991304 1)) .v) (.rational
    288096240 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 36646722 1) .v)
    (.rational 159887708 1)) .v) (.rational 282306778 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 30930760 1) .v) (.rational 115907864 1)) .v) (.rational 172577578 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 16837604 1) .v) (.rational 55449880
    1)) .v) (.rational 69765382 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5879732 1) .v) (.rational 17628744 1)) .v) (.rational 19155366 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1258638 1) .v) (.rational 3575356 1)) .v) (.rational
    3477748 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2027460 1) .v)
    (.rational 12600912 1)) .v) (.rational 26103312 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12164760 1) .v) (.rational 67037088 1)) .v) (.rational 124349940 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 32035636 1) .v) (.rational 156221336 1)) .v) (.rational
    257295024 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 48667880 1) .v)
    (.rational 210532000 1)) .v) (.rational 305811096 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 47113434 1) .v) (.rational 182382032 1)) .v) (.rational 233162118 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 30258816 1) .v) (.rational
    106511332 1)) .v) (.rational 120557634 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12985932 1) .v) (.rational 42493060 1)) .v) (.rational 43231618 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3644676 1) .v) (.rational 11353644 1)) .v)
    (.rational 10587090 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 630538 1)
    .v) (.rational 1904068 1)) .v) (.rational 1649288 1)) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1288728 1) .v) (.rational 7088376 1)) .v) (.rational
    11618460 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 8376732 1) .v) (.rational 41931024
    1)) .v) (.rational 62889804 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 24147024 1)
    .v) (.rational 109934496 1)) .v) (.rational 150068796 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 40664580 1) .v) (.rational 168800160 1)) .v) (.rational 208992984 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 44333964 1) .v) (.rational
    168878276 1)) .v) (.rational 189631416 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32734566 1) .v) (.rational 115651892 1)) .v) (.rational 118327046 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 16612000 1) .v) (.rational 55196916 1)) .v)
    (.rational 51928758 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5744648 1)
    .v) (.rational 18212376 1)) .v) (.rational 15924286 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1307864 1) .v) (.rational 3997868 1)) .v) (.rational 3270752 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 181872 1) .v) (.rational 536396 1)) .v)
    (.rational 409126 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 476928 1) .v) (.rational 2326968 1)) .v) (.rational 3133620 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3338496 1) .v) (.rational 15118704 1)) .v) (.rational 18982296
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10449708 1) .v) (.rational 43907112 1))
    .v) (.rational 51208884 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    19297800 1) .v) (.rational 75361872 1)) .v) (.rational 81462372 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 23352324 1) .v) (.rational 85118832 1)) .v) (.rational
    85271208 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19432608 1) .v)
    (.rational 66560664 1)) .v) (.rational 61960836 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11339126 1) .v) (.rational 36810664 1)) .v) (.rational 32001458 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4635248 1) .v) (.rational 14384068 1)) .v)
    (.rational 11744006 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1299554 1)
    .v) (.rational 3876348 1)) .v) (.rational 2981504 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 237926 1) .v) (.rational 681108 1)) .v) (.rational 491772 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 25722 1) .v) (.rational 69664 1)) .v)
    (.rational 46496 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 77760 1) .v) (.rational 337824 1)) .v) (.rational 385128 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 583200 1) .v) (.rational 2387880 1)) .v) (.rational 2577420
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1968552 1) .v) (.rational 7593240 1))
    .v) (.rational 7738260 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3950388
    1) .v) (.rational 14369208 1)) .v) (.rational 13800288 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5242296 1) .v) (.rational 18028716 1)) .v) (.rational 16309524 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4837800 1) .v) (.rational 15797304
    1)) .v) (.rational 13475568 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3175128 1) .v) (.rational 9897552 1)) .v) (.rational 7980516 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1487178 1) .v) (.rational 4449468 1)) .v) (.rational 3400734 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 490092 1) .v) (.rational 1412296
    1)) .v) (.rational 1024636 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    109542 1) .v) (.rational 303672 1)) .v) (.rational 208614 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 15414 1) .v) (.rational 40680 1)) .v) (.rational 26202 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1164 1) .v) (.rational 2836 1)) .v)
    (.rational 1672 1)) (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2307

namespace FullLow2308
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  12*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow4.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsLow4.c410 e f g v*e*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_2 e g v+24*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^1+60*SmallGap.ReducedLayers.low0_100_4 e g v*e^2+6*SmallGap.ReducedLayers.low0_010_4 e g
    v+24*SmallGap.ReducedLayers.low0_010_5 e g v*e^1+36*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_200_2 e g v+6*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_200_4 e g v*e^2+3*SmallGap.ReducedLayers.low1_110_4 e g
    v+12*SmallGap.ReducedLayers.low1_110_5 e g v*e^1+18*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^2+3*SmallGap.ReducedLayers.low1_020_6 e g v+6*SmallGap.ReducedLayers.low1_020_7 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_8 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 520 1) .v) (.rational 53160 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 60 1) .v) (.rational 6992 1)) .v) (.rational 346340 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 150 1) .v) (.rational 9344 1)) .v) (.rational 384382
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 930 1) .v) (.rational
    46116 1)) .v) (.rational 1374686 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2790 1) .v)
    (.rational 78912 1)) .v) (.rational 2052328 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3030 1) .v) (.rational 31912 1)) .v) (.rational 965998 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6720 1) .v) (.rational 197912
    1)) .v) (.rational 3720530 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 23520 1) .v)
    (.rational 428948 1)) .v) (.rational 7043082 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31920 1) .v) (.rational 283460 1)) .v) (.rational 4554172 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21000 1) .v) (.rational 38080 1)) .v) (.rational
    1085106 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 29310 1) .v) (.rational 613972 1)) .v) (.rational 7294862 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 117240 1) .v) (.rational 1674292 1)) .v) (.rational
    17046554 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 189960 1) .v) (.rational
    1644132 1)) .v) (.rational 14584838 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 159540 1) .v) (.rational 678516 1)) .v) (.rational 5389532 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 73290 1) .v) (.rational 87884 1)) .v) (.rational
    683624 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 84480 1) .v) (.rational 1404896 1)) .v) (.rational 10656554
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 380160 1) .v) (.rational 4718200 1)) .v)
    (.rational 30321872 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 714120 1) .v)
    (.rational 6287416 1)) .v) (.rational 33655986 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 725340 1) .v) (.rational 4283220 1)) .v) (.rational 18387822 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 429900 1) .v) (.rational 1626844 1)) .v)
    (.rational 5147226 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 148440 1)
    .v) (.rational 365368 1)) .v) (.rational 716882 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 165600 1)
    .v) (.rational 2305504 1)) .v) (.rational 11576984 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 828000 1) .v) (.rational 9241520 1)) .v) (.rational 39593782 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1766850 1) .v) (.rational 15500500 1)) .v) (.rational
    55598970 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2099400 1) .v)
    (.rational 14306284 1)) .v) (.rational 41874882 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1517160 1) .v) (.rational 8085788 1)) .v) (.rational 18795450 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 681180 1) .v) (.rational 2950812 1)) .v)
    (.rational 5406254 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 184710 1)
    .v) (.rational 699148 1)) .v) (.rational 1054280 1)) (.pow .g 6)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 218520 1) .v) (.rational 2586960 1)) .v) (.rational 9066900 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1201860 1) .v) (.rational 12015600 1)) .v) (.rational 36653412
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2869980 1) .v) (.rational 24067480 1))
    .v) (.rational 63077340 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3900960
    1) .v) (.rational 27469184 1)) .v) (.rational 61139904 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3320640 1) .v) (.rational 19903256 1)) .v) (.rational 37479194 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1830780 1) .v) (.rational 9616300
    1)) .v) (.rational 15522410 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    650580 1) .v) (.rational 3120852 1)) .v) (.rational 4458976 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 142440 1) .v) (.rational 650144 1)) .v) (.rational 850982 1))
    (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 185220 1) .v) (.rational 1860504
    1)) .v) (.rational 4805316 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1111320 1) .v)
    (.rational 9783576 1)) .v) (.rational 22530132 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2935440 1) .v) (.rational 22604072 1)) .v) (.rational 46040028 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4490100 1) .v) (.rational 30360640 1)) .v)
    (.rational 54433452 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4397310 1)
    .v) (.rational 26418196 1)) .v) (.rational 41780550 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2873160 1) .v) (.rational 15648244 1)) .v) (.rational 22088738 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1262520 1) .v) (.rational 6393796
    1)) .v) (.rational 8212582 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    365400 1) .v) (.rational 1761756 1)) .v) (.rational 2095584 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 65670 1) .v) (.rational 305164 1)) .v) (.rational 337568 1))
    (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 90720 1) .v) (.rational
    767232 1)) .v) (.rational 1531008 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 589680 1)
    .v) (.rational 4490640 1)) .v) (.rational 8174520 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1706760 1) .v) (.rational 11692368 1)) .v) (.rational 19311972 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2900700 1) .v) (.rational 17931360 1)) .v)
    (.rational 26804628 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3211380 1)
    .v) (.rational 18058440 1)) .v) (.rational 24482378 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2425680 1) .v) (.rational 12566328 1)) .v) (.rational 15565944 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1270200 1) .v) (.rational 6153400
    1)) .v) (.rational 7039194 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    457800 1) .v) (.rational 2100060 1)) .v) (.rational 2238150 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 109860 1) .v) (.rational 479164 1)) .v) (.rational 476006 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 16290 1) .v) (.rational 66792 1))
    .v) (.rational 61048 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 19440 1) .v) (.rational 137376 1)) .v) (.rational 220104 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 136080 1) .v) (.rational 883872 1)) .v) (.rational 1317168 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 428220 1) .v) (.rational 2551800 1)) .v)
    (.rational 3522540 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 800280 1)
    .v) (.rational 4379112 1)) .v) (.rational 5587380 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 987840 1) .v) (.rational 4983048 1)) .v) (.rational 5880348 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 846540 1) .v) (.rational 3961776 1)) .v)
    (.rational 4339518 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 514530 1)
    .v) (.rational 2249460 1)) .v) (.rational 2298882 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 222120 1) .v) (.rational 910764 1)) .v) (.rational 871530 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 66870 1) .v) (.rational 256296 1)) .v)
    (.rational 229124 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 13410 1) .v)
    (.rational 47316 1)) .v) (.rational 39022 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1620 1) .v) (.rational 5100 1)) .v) (.rational 3770 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2308

namespace FullLow2309
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  12*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_3 e g v+24*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_010_5 e g v+24*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_200_3 e g v+6*SmallGap.ReducedLayers.low1_200_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_110_5 e g v+12*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_7 e g v+6*SmallGap.ReducedLayers.low1_020_8 e g v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 60 1) .v) (.rational 11900 1)) .e) (.add (.mul (.add (.mul
    (.rational 780 1) .v) (.rational 75078 1)) .f) (.mul (.add (.mul (.rational 1020 1) .v)
    (.rational 81192 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 4980 1) .v)
    (.rational 286104 1)) .f) (.mul (.add (.mul (.rational 8220 1) .v) (.rational 413452 1)) .g))
    .f) (.mul (.add (.mul (.rational 2880 1) .v) (.rational 184124 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20700 1) .v) (.rational 736276 1)) .f)
    (.mul (.add (.mul (.rational 43140 1) .v) (.rational 1344656 1)) .g)) .f) (.mul (.add (.mul
    (.rational 25620 1) .v) (.rational 820232 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational
    720 1) .v) (.rational 169156 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 62280 1) .v) (.rational 1356984 1)) .f) (.mul (.add (.mul
    (.rational 164640 1) .v) (.rational 3065128 1)) .g)) .f) (.mul (.add (.mul (.rational 152460
    1) .v) (.rational 2499688 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 54060 1) .v)
    (.rational 847868 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 1800 1) .v) (.rational
    79164 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 136560 1) .v) (.rational 1827652 1)) .f) (.mul (.add (.mul (.rational 448920
    1) .v) (.rational 5056056 1)) .g)) .f) (.mul (.add (.mul (.rational 581220 1) .v) (.rational
    5439132 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 380460 1) .v) (.rational 2877056
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 136860 1) .v) (.rational 789480 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.rational 28920 1) .v) (.rational 116316 1)) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    207000 1) .v) (.rational 1764624 1)) .f) (.mul (.add (.mul (.rational 816480 1) .v) (.rational
    5902416 1)) .g)) .f) (.mul (.add (.mul (.rational 1347840 1) .v) (.rational 8137872 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.rational 1228080 1) .v) (.rational 6089760 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.rational 690660 1) .v) (.rational 2791864 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.rational 254100 1) .v) (.rational 857812 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 61440 1) .v) (.rational 184004 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 200520 1) .v)
    (.rational 1149096 1)) .f) (.mul (.add (.mul (.rational 917640 1) .v) (.rational 4559664 1))
    .g)) .f) (.mul (.add (.mul (.rational 1817400 1) .v) (.rational 7753680 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 2064960 1) .v) (.rational 7527888 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 1505100 1) .v) (.rational 4725108 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 740580 1) .v) (.rational 2053952 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 247140 1) .v) (.rational 626248 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    53040 1) .v) (.rational 125116 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 110160 1)
    .v) (.rational 447120 1)) .f) (.mul (.add (.mul (.rational 570240 1) .v) (.rational 2060640
    1)) .g)) .f) (.mul (.add (.mul (.rational 1304280 1) .v) (.rational 4168896 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.rational 1749600 1) .v) (.rational 4940784 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 1538280 1) .v) (.rational 3867624 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 932400 1) .v) (.rational 2121752 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 393900 1) .v) (.rational 825784 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    112740 1) .v) (.rational 219428 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 20220 1)
    .v) (.rational 36168 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25920 1)
    .v) (.rational 77760 1)) .f) (.mul (.add (.mul (.rational 149040 1) .v) (.rational 408240 1))
    .g)) .f) (.mul (.add (.mul (.rational 384120 1) .v) (.rational 954744 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 589320 1) .v) (.rational 1326336 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 601560 1) .v) (.rational 1230188 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 430200 1) .v) (.rational 805896 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 219060 1) .v) (.rational 379004 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    78300 1) .v) (.rational 125376 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 18720 1) .v)
    (.rational 27522 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 2700 1) .v) (.rational
    3580 1)) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2309

namespace FullLow23010
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  10*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_4 e g v+6*SmallGap.ReducedLayers.low0_010_6 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_200_4 e g v+3*SmallGap.ReducedLayers.low1_110_6 e g
    v+3*SmallGap.ReducedLayers.low1_020_8 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1200 1) .e) (.add (.mul (.rational 7350 1) .f) (.mul (.rational 7740 1) .g))) .e)
    (.add (.mul (.add (.mul (.rational 26940 1) .f) (.mul (.rational 37650 1) .g)) .f) (.mul
    (.rational 15840 1) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 66000 1)
    .f) (.mul (.rational 116280 1) .g)) .f) (.mul (.rational 67050 1) (.pow .g 2))) .f) (.mul
    (.rational 11940 1) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 114240 1) .f) (.mul (.rational 249960 1) .g)) .f) (.mul (.rational 196140 1) (.pow
    .g 2))) .f) (.mul (.rational 63150 1) (.pow .g 3))) .f) (.mul (.rational 5280 1) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 140580 1) .f)
    (.mul (.rational 379440 1) .g)) .f) (.mul (.rational 400920 1) (.pow .g 2))) .f) (.mul
    (.rational 213120 1) (.pow .g 3))) .f) (.mul (.rational 63150 1) (.pow .g 4))) .f) (.mul
    (.rational 11940 1) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 117000 1) .f) (.mul (.rational 383580 1) .g)) .f) (.mul
    (.rational 525120 1) (.pow .g 2))) .f) (.mul (.rational 400920 1) (.pow .g 3))) .f) (.mul
    (.rational 196140 1) (.pow .g 4))) .f) (.mul (.rational 67050 1) (.pow .g 5))) .f) (.mul
    (.rational 15840 1) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 58320 1) .f) (.mul (.rational 226800 1) .g)) .f)
    (.mul (.rational 383580 1) (.pow .g 2))) .f) (.mul (.rational 379440 1) (.pow .g 3))) .f)
    (.mul (.rational 249960 1) (.pow .g 4))) .f) (.mul (.rational 116280 1) (.pow .g 5))) .f)
    (.mul (.rational 37650 1) (.pow .g 6))) .f) (.mul (.rational 7740 1) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 12960 1) .f) (.mul (.rational 58320 1) .g)) .f) (.mul (.rational 117000 1) (.pow .g
    2))) .f) (.mul (.rational 140580 1) (.pow .g 3))) .f) (.mul (.rational 114240 1) (.pow .g 4)))
    .f) (.mul (.rational 66000 1) (.pow .g 5))) .f) (.mul (.rational 26940 1) (.pow .g 6))) .f)
    (.mul (.rational 7350 1) (.pow .g 7))) .f) (.mul (.rational 1200 1) (.pow .g 8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow23010

end
end SPR.N6.Tail.CoreEndpoint
