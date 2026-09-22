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

namespace FullHigh1040
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c140 e f g v*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_100_0 e g v*e^4+4*SmallGap.ReducedLayers.high0_001_0
    e g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_101_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_002_0 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 648 1) .e) (.add (.mul (.rational 6495 1) .f) (.add (.mul (.rational 8180 1)
    .g) (.mul (.rational 1180 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 40206 1) .f) (.add
    (.mul (.rational 68944 1) .g) (.mul (.rational 10806 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 42828 1) .g) (.mul (.rational 13476 1) .v)) .g) (.mul (.rational 540 1) (.pow .v
    2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 172454 1) .f) (.add (.mul (.rational
    373593 1) .g) (.mul (.rational 61226 1) .v))) .f) (.add (.mul (.add (.mul (.rational 311884 1)
    .g) (.mul (.rational 104410 1) .v)) .g) (.mul (.rational 4521 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 125459 1) .g) (.mul (.rational 63562 1) .v)) .g) (.mul
    (.rational 5642 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 544682 1) .f) (.add (.mul (.rational 1424244 1) .g) (.mul (.rational 240456 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 1491060 1) .g) (.mul (.rational 520530 1) .v))
    .g) (.mul (.rational 23384 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    798732 1) .g) (.mul (.rational 429386 1) .v)) .g) (.mul (.rational 40016 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 230450 1) .g) (.mul (.rational 168414 1) .v)) .g)
    (.mul (.rational 24022 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1313271 1) .f) (.add (.mul (.rational 4019580 1) .g) (.mul
    (.rational 694660 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5054485 1) .g) (.mul
    (.rational 1823884 1) .v)) .g) (.mul (.rational 83675 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3375029 1) .g) (.mul (.rational 1900394 1) .v)) .g) (.mul (.rational
    182377 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1287556 1) .g) (.mul
    (.rational 1002766 1) .v)) .g) (.mul (.rational 149339 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 279031 1) .g) (.mul (.rational 281986 1) .v)) .g)
    (.mul (.rational 56913 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 2471348 1) .f) (.add (.mul (.rational 8660832
    1) .g) (.mul (.rational 1528058 1) .v))) .f) (.add (.mul (.add (.mul (.rational 12701849 1)
    .g) (.mul (.rational 4718434 1) .v)) .g) (.mul (.rational 219668 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10141867 1) .g) (.mul (.rational 5943640 1) .v)) .g) (.mul
    (.rational 582924 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4797257
    1) .g) (.mul (.rational 3943298 1) .v)) .g) (.mul (.rational 606792 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1366345 1) .g) (.mul (.rational 1482112 1)
    .v)) .g) (.mul (.rational 314500 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 226110 1) .g) (.mul (.rational 314268 1) .v)) .g) (.mul (.rational 84802 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 3677762 1) .f) (.add (.mul (.rational 14513913 1) .g) (.mul
    (.rational 2612126 1) .v))) .f) (.add (.mul (.add (.mul (.rational 24302030 1) .g) (.mul
    (.rational 9277296 1) .v)) .g) (.mul (.rational 437448 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 22551022 1) .g) (.mul (.rational 13711186 1) .v)) .g) (.mul (.rational
    1370941 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 12700929 1) .g)
    (.mul (.rational 10960828 1) .v)) .g) (.mul (.rational 1736350 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4462864 1) .g) (.mul (.rational 5155676 1) .v))
    .g) (.mul (.rational 1142878 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 965161 1) .g) (.mul (.rational 1451774 1) .v)) .g) (.mul (.rational 418298 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 121073 1) .g) (.mul
    (.rational 236900 1) .v)) .g) (.mul (.rational 84267 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 4355868 1) .f) (.add (.mul (.rational 19107796 1) .g) (.mul (.rational 3508248 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 35941989 1) .g) (.mul (.rational 14091922 1) .v))
    .g) (.mul (.rational 673228 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    37965417 1) .g) (.mul (.rational 23909082 1) .v)) .g) (.mul (.rational 2437508 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 24760527 1) .g) (.mul (.rational
    22365432 1) .v)) .g) (.mul (.rational 3645421 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 10314637 1) .g) (.mul (.rational 12629248 1) .v)) .g) (.mul
    (.rational 2918503 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2738138 1) .g) (.mul (.rational 4427992 1) .v)) .g) (.mul (.rational 1355461 1) (.pow .v 2)))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 446302 1) .g) (.mul (.rational
    953108 1) .v)) .g) (.mul (.rational 369949 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 40894 1) .g) (.mul (.rational 119238 1) .v)) .g) (.mul (.rational
    57236 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4108269 1) .f) (.add
    (.mul (.rational 19824548 1) .g) (.mul (.rational 3715236 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 41364559 1) .g) (.mul (.rational 16656292 1) .v)) .g) (.mul (.rational 807428 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 48958434 1) .g) (.mul (.rational
    31908912 1) .v)) .g) (.mul (.rational 3321356 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 36231242 1) .g) (.mul (.rational 34188568 1) .v)) .g) (.mul (.rational
    5738514 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17410232
    1) .g) (.mul (.rational 22519868 1) .v)) .g) (.mul (.rational 5423918 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5453976 1) .g) (.mul (.rational 9438096
    1) .v)) .g) (.mul (.rational 3062259 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1085237 1) .g) (.mul (.rational 2514926 1) .v)) .g) (.mul (.rational
    1059077 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 128379 1)
    .g) (.mul (.rational 411962 1) .v)) .g) (.mul (.rational 221313 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7825 1) .g) (.mul (.rational 38198 1) .v)) .g)
    (.mul (.rational 26463 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3069558 1) .f) (.add (.mul (.rational 16155296 1) .g) (.mul (.rational 3092506 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 37012366 1) .g) (.mul (.rational 15310272 1) .v)) .g) (.mul
    (.rational 754564 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 48481634 1)
    .g) (.mul (.rational 32687986 1) .v)) .g) (.mul (.rational 3480106 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 40086860 1) .g) (.mul (.rational 39465152 1) .v)) .g)
    (.mul (.rational 6830708 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 21780894 1) .g) (.mul (.rational 29691668 1) .v)) .g) (.mul (.rational 7456268 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7836817 1) .g) (.mul
    (.rational 14459946 1) .v)) .g) (.mul (.rational 4966106 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1830551 1) .g) (.mul (.rational 4581758 1) .v)) .g)
    (.mul (.rational 2084452 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 262675 1) .g) (.mul (.rational 922742 1) .v)) .g) (.mul (.rational 550158 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 20509 1) .g) (.mul
    (.rational 111066 1) .v)) .g) (.mul (.rational 88326 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 638 1) .g) (.mul (.rational 6972 1) .v)) .g) (.mul
    (.rational 7982 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1795386 1) .f) (.add (.mul (.rational 10232659 1) .g) (.mul (.rational 2002230 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 25526232 1) .g) (.mul (.rational 10850402 1) .v))
    .g) (.mul (.rational 544793 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    36635967 1) .g) (.mul (.rational 25546702 1) .v)) .g) (.mul (.rational 2786956 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 33436210 1) .g) (.mul (.rational
    34309078 1) .v)) .g) (.mul (.rational 6131673 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 20231690 1) .g) (.mul (.rational 29010468 1) .v)) .g) (.mul
    (.rational 7599336 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8197432 1) .g) (.mul (.rational 16079462 1) .v)) .g) (.mul (.rational 5838799 1) (.pow .v 2)))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2188163 1) .g) (.mul (.rational
    5891652 1) .v)) .g) (.mul (.rational 2885061 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 366275 1) .g) (.mul (.rational 1401726 1) .v)) .g) (.mul
    (.rational 920643 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    34413 1) .g) (.mul (.rational 205650 1) .v)) .g) (.mul (.rational 185444 1) (.pow .v 2)))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1357 1) .g) (.mul (.rational 16576
    1) .v)) .g) (.mul (.rational 22259 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 542 1) .v) .g) (.mul (.rational 1403 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 805106 1) .f) (.add (.mul
    (.rational 4939044 1) .g) (.mul (.rational 988520 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 13321702 1) .g) (.mul (.rational 5820590 1) .v)) .g) (.mul (.rational 298288 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 20777582 1) .g) (.mul (.rational
    14981182 1) .v)) .g) (.mul (.rational 1677360 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 20726234 1) .g) (.mul (.rational 22147234 1) .v)) .g) (.mul (.rational
    4091504 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 13799694
    1) .g) (.mul (.rational 20779566 1) .v)) .g) (.mul (.rational 5679208 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6202431 1) .g) (.mul (.rational 12900384
    1) .v)) .g) (.mul (.rational 4946852 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1855303 1) .g) (.mul (.rational 5354720 1) .v)) .g) (.mul (.rational
    2812588 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 352695 1)
    .g) (.mul (.rational 1463914 1) .v)) .g) (.mul (.rational 1052025 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 38345 1) .g) (.mul (.rational 251554 1) .v))
    .g) (.mul (.rational 254363 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1800 1) .g) (.mul (.rational 24430 1) .v)) .g) (.mul (.rational 37857 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1010 1) .v) .g) (.mul (.rational
    3113 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 106 1) (.pow .v 2)) (.pow .g
    10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 267389 1) .f)
    (.add (.mul (.rational 1756428 1) .g) (.mul (.rational 359772 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 5091855 1) .g) (.mul (.rational 2287292 1) .v)) .g) (.mul (.rational 119827
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 8570913 1) .g) (.mul (.rational
    6388490 1) .v)) .g) (.mul (.rational 735041 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9269298 1) .g) (.mul (.rational 10306282 1) .v)) .g) (.mul (.rational 1969619
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6725417 1) .g)
    (.mul (.rational 10618826 1) .v)) .g) (.mul (.rational 3027737 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3313668 1) .g) (.mul (.rational 7291022 1) .v))
    .g) (.mul (.rational 2948377 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1094287 1) .g) (.mul (.rational 3374598 1) .v)) .g) (.mul (.rational 1894903 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 231689 1) .g) (.mul
    (.rational 1038718 1) .v)) .g) (.mul (.rational 811747 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 28379 1) .g) (.mul (.rational 203370 1) .v)) .g)
    (.mul (.rational 228335 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1525 1) .g) (.mul (.rational 22862 1) .v)) .g) (.mul (.rational 40304 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1120 1) .v) .g) (.mul (.rational
    4032 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 174 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 61992 1)
    .f) (.add (.mul (.rational 434064 1) .g) (.mul (.rational 91030 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 1345549 1) .g) (.mul (.rational 621482 1) .v)) .g) (.mul (.rational 33324 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2430047 1) .g) (.mul (.rational
    1871876 1) .v)) .g) (.mul (.rational 221520 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2829907 1) .g) (.mul (.rational 3271414 1) .v)) .g) (.mul (.rational 646992
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2219681 1) .g)
    (.mul (.rational 3669636 1) .v)) .g) (.mul (.rational 1091144 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1187441 1) .g) (.mul (.rational 2758046 1) .v))
    .g) (.mul (.rational 1174324 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 427857 1) .g) (.mul (.rational 1405656 1) .v)) .g) (.mul (.rational 841078 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 99409 1) .g) (.mul
    (.rational 479562 1) .v)) .g) (.mul (.rational 405292 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 13455 1) .g) (.mul (.rational 104838 1) .v)) .g) (.mul
    (.rational 129580 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    806 1) .g) (.mul (.rational 13272 1) .v)) .g) (.mul (.rational 26296 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 740 1) .v) .g) (.mul (.rational 3062 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 156 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8960 1) .f) (.add (.mul
    (.rational 66609 1) .g) (.mul (.rational 14306 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    219806 1) .g) (.mul (.rational 104388 1) .v)) .g) (.mul (.rational 5734 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 423760 1) .g) (.mul (.rational 337222 1) .v)) .g)
    (.mul (.rational 41069 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    528319 1) .g) (.mul (.rational 634476 1) .v)) .g) (.mul (.rational 129864 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 444978 1) .g) (.mul (.rational
    769232 1) .v)) .g) (.mul (.rational 238370 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 256419 1) .g) (.mul (.rational 627456 1) .v)) .g) (.mul
    (.rational 280827 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    99856 1) .g) (.mul (.rational 348548 1) .v)) .g) (.mul (.rational 221552 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 25165 1) .g) (.mul (.rational
    130172 1) .v)) .g) (.mul (.rational 118379 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3709 1) .g) (.mul (.rational 31286 1) .v)) .g) (.mul (.rational
    42254 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 243 1) .g)
    (.mul (.rational 4372 1) .v)) .g) (.mul (.rational 9635 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 270 1) .v) .g) (.mul (.rational 1267 1) (.pow .v 2))) (.pow
    .g 9))) .f) (.mul (.mul (.rational 73 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 608 1) .f) (.add (.mul
    (.rational 4782 1) .g) (.mul (.rational 1052 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    16733 1) .g) (.mul (.rational 8170 1) .v)) .g) (.mul (.rational 460 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 34285 1) .g) (.mul (.rational 28174 1) .v)) .g) (.mul
    (.rational 3532 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 45533 1)
    .g) (.mul (.rational 56760 1) .v)) .g) (.mul (.rational 12021 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 40945 1) .g) (.mul (.rational 73916 1) .v)) .g)
    (.mul (.rational 23851 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25247 1) .g) (.mul (.rational 64964 1) .v)) .g) (.mul (.rational 30511 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10543 1) .g) (.mul (.rational
    39000 1) .v)) .g) (.mul (.rational 26259 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2855 1) .g) (.mul (.rational 15784 1) .v)) .g) (.mul (.rational 15377
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 453 1) .g) (.mul
    (.rational 4120 1) .v)) .g) (.mul (.rational 6041 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 32 1) .g) (.mul (.rational 626 1) .v)) .g) (.mul (.rational
    1521 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 42 1) .v) .g) (.mul
    (.rational 221 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 14 1) (.pow .v 2))
    (.pow .g 10))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1040

namespace FullHigh1041
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh1.c140 e f g v*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh0.c230 e f g v*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_0 e g v*e^3+1*SmallGap.ReducedLayers.high0_100_1
    e g v*e^4+12*SmallGap.ReducedLayers.high0_001_0 e g v*e^2+4*SmallGap.ReducedLayers.high0_001_1
    e g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_101_0 e g v*e^2+1*SmallGap.ReducedLayers.high1_101_1 e g
    v*e^3+6*SmallGap.ReducedLayers.high1_002_0 e g v*e^1+3*SmallGap.ReducedLayers.high1_002_1 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3984 1) .e) (.add (.mul (.rational 37963 1) .f) (.add (.mul (.rational 47377 1) .g) (.mul
    (.rational 7150 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 223857 1) .f) (.add (.mul
    (.rational 380333 1) .g) (.mul (.rational 61426 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 233918 1) .g) (.mul (.rational 74936 1) .v)) .g) (.mul (.rational 3250 1) (.pow .v
    2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 914260 1) .f) (.add (.mul (.rational
    1962449 1) .g) (.mul (.rational 327664 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1622798
    1) .g) (.mul (.rational 546092 1) .v)) .g) (.mul (.rational 25352 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 647129 1) .g) (.mul (.rational 322380 1) .v)) .g) (.mul
    (.rational 30840 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2742857 1) .f) (.add (.mul (.rational 7106516 1) .g) (.mul (.rational 1213114 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 7372708 1) .g) (.mul (.rational 2567282 1) .v))
    .g) (.mul (.rational 122645 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3917856 1) .g) (.mul (.rational 2057678 1) .v)) .g) (.mul (.rational 204242 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1124091 1) .g) (.mul (.rational 778650 1)
    .v)) .g) (.mul (.rational 117769 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 6254972 1) .f) (.add (.mul (.rational 18969499
    1) .g) (.mul (.rational 3301336 1) .v))) .f) (.add (.mul (.add (.mul (.rational 23645824 1)
    .g) (.mul (.rational 8482366 1) .v)) .g) (.mul (.rational 411320 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15672052 1) .g) (.mul (.rational 8609550 1) .v)) .g) (.mul
    (.rational 872925 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5949670
    1) .g) (.mul (.rational 4403362 1) .v)) .g) (.mul (.rational 688896 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1288419 1) .g) (.mul (.rational 1194962 1)
    .v)) .g) (.mul (.rational 249181 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11064874 1) .f) (.add (.mul
    (.rational 38419682 1) .g) (.mul (.rational 6821152 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 55867859 1) .g) (.mul (.rational 20642032 1) .v)) .g) (.mul (.rational 1012392 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 44297850 1) .g) (.mul (.rational
    25401614 1) .v)) .g) (.mul (.rational 2621620 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 20863702 1) .g) (.mul (.rational 16411258 1) .v)) .g) (.mul (.rational
    2643741 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5941542 1)
    .g) (.mul (.rational 5992946 1) .v)) .g) (.mul (.rational 1314342 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 988883 1) .g) (.mul (.rational 1235074 1)
    .v)) .g) (.mul (.rational 335613 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15351299 1) .f) (.add
    (.mul (.rational 60019795 1) .g) (.mul (.rational 10893972 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 99658526 1) .g) (.mul (.rational 37983756 1) .v)) .g) (.mul (.rational
    1886542 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 91865417 1) .g) (.mul
    (.rational 55001860 1) .v)) .g) (.mul (.rational 5788926 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 51541211 1) .g) (.mul (.rational 43009426 1) .v)) .g) (.mul
    (.rational 7147596 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    18117229 1) .g) (.mul (.rational 19779050 1) .v)) .g) (.mul (.rational 4563001 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3942600 1) .g) (.mul
    (.rational 5456430 1) .v)) .g) (.mul (.rational 1612014 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 501467 1) .g) (.mul (.rational 878178 1) .v)) .g)
    (.mul (.rational 313147 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16766842 1) .f)
    (.add (.mul (.rational 72860911 1) .g) (.mul (.rational 13555046 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 135918013 1) .g) (.mul (.rational 53550326 1) .v)) .g) (.mul (.rational
    2702884 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 142649692 1) .g) (.mul
    (.rational 89272836 1) .v)) .g) (.mul (.rational 9620892 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 92707989 1) .g) (.mul (.rational 82024956 1) .v)) .g) (.mul
    (.rational 14120648 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 38648541 1) .g) (.mul (.rational 45538172 1) .v)) .g) (.mul (.rational 11082290 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10327755 1) .g) (.mul
    (.rational 15751980 1) .v)) .g) (.mul (.rational 5051569 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1707580 1) .g) (.mul (.rational 3370730 1) .v)) .g)
    (.mul (.rational 1362944 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 160225 1) .g) (.mul (.rational 424966 1) .v)) .g) (.mul (.rational 212901 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 14374595 1) .f) (.add (.mul (.rational
    68706703 1) .g) (.mul (.rational 13134962 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    142172368 1) .g) (.mul (.rational 58022466 1) .v)) .g) (.mul (.rational 2988909 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 167212228 1) .g) (.mul (.rational 109508672
    1) .v)) .g) (.mul (.rational 12139259 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 123332959 1) .g) (.mul (.rational 115671152 1) .v)) .g) (.mul (.rational 20716206
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 59322508 1) .g)
    (.mul (.rational 75271042 1) .v)) .g) (.mul (.rational 19377926 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 18710990 1) .g) (.mul (.rational 31306204 1) .v))
    .g) (.mul (.rational 10884309 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3777582 1) .g) (.mul (.rational 8347998 1) .v)) .g) (.mul (.rational 3789850 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 457795 1) .g) (.mul
    (.rational 1387290 1) .v)) .g) (.mul (.rational 817048 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 28920 1) .g) (.mul (.rational 133096 1) .v)) .g)
    (.mul (.rational 105411 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 9575213 1) .f) (.add (.mul (.rational 49910265 1) .g) (.mul (.rational 9826846 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 113392572 1) .g) (.mul (.rational 48019136 1)
    .v)) .g) (.mul (.rational 2534924 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 147593452 1) .g) (.mul (.rational 101244542 1) .v)) .g) (.mul (.rational 11591069
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 121636625 1) .g) (.mul
    (.rational 120884984 1) .v)) .g) (.mul (.rational 22601241 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 66157435 1) .g) (.mul (.rational 90206758 1) .v)) .g)
    (.mul (.rational 24608826 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23967439 1) .g) (.mul (.rational 43803160 1) .v)) .g) (.mul (.rational 16475790 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5680208 1) .g) (.mul
    (.rational 13960852 1) .v)) .g) (.mul (.rational 7050473 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 835015 1) .g) (.mul (.rational 2866710 1) .v)) .g)
    (.mul (.rational 1944640 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 67585 1) .g) (.mul (.rational 358624 1) .v)) .g) (.mul (.rational 339630 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2211 1) .g) (.mul
    (.rational 23974 1) .v)) .g) (.mul (.rational 35361 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 4859846 1) .f) (.add (.mul (.rational 27427635
    1) .g) (.mul (.rational 5571692 1) .v))) .f) (.add (.mul (.add (.mul (.rational 67840930 1)
    .g) (.mul (.rational 29849016 1) .v)) .g) (.mul (.rational 1620342 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 96741755 1) .g) (.mul (.rational 69544368 1) .v)) .g) (.mul
    (.rational 8248520 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 87992317
    1) .g) (.mul (.rational 92606128 1) .v)) .g) (.mul (.rational 18115802 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 53288932 1) .g) (.mul (.rational 77911680
    1) .v)) .g) (.mul (.rational 22533182 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 21735488 1) .g) (.mul (.rational 43213560 1) .v)) .g) (.mul (.rational
    17532704 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5884864
    1) .g) (.mul (.rational 15986596 1) .v)) .g) (.mul (.rational 8903634 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1008735 1) .g) (.mul (.rational 3891158
    1) .v)) .g) (.mul (.rational 2989330 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 98200 1) .g) (.mul (.rational 594838 1) .v)) .g) (.mul (.rational
    656249 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4070 1) .g)
    (.mul (.rational 51146 1) .v)) .g) (.mul (.rational 90062 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 1834 1) .v) .g) (.mul (.rational 6861 1) (.pow .v 2)))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1817357 1)
    .f) (.add (.mul (.rational 11037862 1) .g) (.mul (.rational 2316506 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 29513298 1) .g) (.mul (.rational 13502790 1) .v)) .g) (.mul (.rational
    755687 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 45724740 1) .g) (.mul
    (.rational 34449622 1) .v)) .g) (.mul (.rational 4241938 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 45443696 1) .g) (.mul (.rational 50600298 1) .v)) .g) (.mul
    (.rational 10368447 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 30272069 1) .g) (.mul (.rational 47350076 1) .v)) .g) (.mul (.rational 14509158 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 13690295 1) .g) (.mul
    (.rational 29492284 1) .v)) .g) (.mul (.rational 12861971 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4150972 1) .g) (.mul (.rational 12390770 1) .v)) .g)
    (.mul (.rational 7550714 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 807367 1) .g) (.mul (.rational 3472354 1) .v)) .g) (.mul (.rational 2979729 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 90845 1) .g) (.mul
    (.rational 622270 1) .v)) .g) (.mul (.rational 783836 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4475 1) .g) (.mul (.rational 64434 1) .v)) .g) (.mul
    (.rational 132172 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2916
    1) .v) .g) (.mul (.rational 12906 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    546 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 472342 1) .f) (.add (.mul (.rational 3071157 1) .g) (.mul (.rational 666472
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 8823480 1) .g) (.mul (.rational 4199414 1)
    .v)) .g) (.mul (.rational 242712 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14747908 1) .g) (.mul (.rational 11642166 1) .v)) .g) (.mul (.rational 1489967 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 15883419 1) .g) (.mul
    (.rational 18689542 1) .v)) .g) (.mul (.rational 4012210 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11523261 1) .g) (.mul (.rational 19237384 1) .v)) .g)
    (.mul (.rational 6237105 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5708310 1) .g) (.mul (.rational 13273936 1) .v)) .g) (.mul (.rational 6199659 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1908870 1) .g) (.mul
    (.rational 6227218 1) .v)) .g) (.mul (.rational 4123120 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 412965 1) .g) (.mul (.rational 1966198 1) .v)) .g)
    (.mul (.rational 1863768 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 52260 1) .g) (.mul (.rational 401284 1) .v)) .g) (.mul (.rational 568257 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2940 1) .g) (.mul
    (.rational 47998 1) .v)) .g) (.mul (.rational 112575 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 2564 1) .v) .g) (.mul (.rational 13167 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 692 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 76248 1) .f) (.add (.mul (.rational
    528312 1) .g) (.mul (.rational 118608 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1622435
    1) .g) (.mul (.rational 803304 1) .v)) .g) (.mul (.rational 47994 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2908062 1) .g) (.mul (.rational 2404014 1) .v)) .g) (.mul
    (.rational 319902 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3370293
    1) .g) (.mul (.rational 4185162 1) .v)) .g) (.mul (.rational 940841 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2641039 1) .g) (.mul (.rational 4694748 1)
    .v)) .g) (.mul (.rational 1607668 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1418950 1) .g) (.mul (.rational 3548918 1) .v)) .g) (.mul (.rational 1768745
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 517012 1) .g)
    (.mul (.rational 1834080 1) .v)) .g) (.mul (.rational 1311471 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 122525 1) .g) (.mul (.rational 641638 1) .v)) .g)
    (.mul (.rational 665800 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17095 1) .g) (.mul (.rational 145988 1) .v)) .g) (.mul (.rational 229618 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1069 1) .g) (.mul
    (.rational 19602 1) .v)) .g) (.mul (.rational 51811 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 1186 1) .v) .g) (.mul (.rational 6957 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 425 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5760 1) .f) (.add (.mul
    (.rational 42360 1) .g) (.mul (.rational 9840 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    138418 1) .g) (.mul (.rational 71280 1) .v)) .g) (.mul (.rational 4404 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 264675 1) .g) (.mul (.rational 228952 1) .v)) .g)
    (.mul (.rational 31674 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    328110 1) .g) (.mul (.rational 429362 1) .v)) .g) (.mul (.rational 100986 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 275781 1) .g) (.mul (.rational
    520790 1) .v)) .g) (.mul (.rational 187997 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 159380 1) .g) (.mul (.rational 427306 1) .v)) .g) (.mul
    (.rational 226490 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    62653 1) .g) (.mul (.rational 240590 1) .v)) .g) (.mul (.rational 184831 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 16070 1) .g) (.mul (.rational 92022
    1) .v)) .g) (.mul (.rational 103764 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2435 1) .g) (.mul (.rational 22962 1) .v)) .g) (.mul (.rational 39731 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 166 1) .g) (.mul
    (.rational 3390 1) .v)) .g) (.mul (.rational 9982 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 226 1) .v) .g) (.mul (.rational 1495 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 102 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1041

namespace FullHigh1042
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c140 e f g v*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh1.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_100_0 e g v*e^2+4*SmallGap.ReducedLayers.high0_100_1
    e g v*e^3+1*SmallGap.ReducedLayers.high0_100_2 e g v*e^4+12*SmallGap.ReducedLayers.high0_001_0
    e g v*e^1+12*SmallGap.ReducedLayers.high0_001_1 e g v*e^2+4*SmallGap.ReducedLayers.high0_001_2
    e g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_101_0 e g v*e^1+3*SmallGap.ReducedLayers.high1_101_1 e g
    v*e^2+1*SmallGap.ReducedLayers.high1_101_2 e g v*e^3+3*SmallGap.ReducedLayers.high1_002_0 e g
    v+6*SmallGap.ReducedLayers.high1_002_1 e g v*e^1+3*SmallGap.ReducedLayers.high1_002_2 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10266 1)
    .e) (.add (.mul (.rational 93651 1) .f) (.add (.mul (.rational 115917 1) .g) (.mul (.rational
    18150 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 527727 1) .f) (.add (.mul (.rational
    888590 1) .g) (.mul (.rational 147150 1) .v))) .f) (.add (.mul (.add (.mul (.rational 541263
    1) .g) (.mul (.rational 175338 1) .v)) .g) (.mul (.rational 8200 1) (.pow .v 2))))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.rational 2052192 1) .f) (.add (.mul (.rational 4363160 1) .g)
    (.mul (.rational 740052 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3572060 1) .g) (.mul
    (.rational 1201882 1) .v)) .g) (.mul (.rational 59946 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1411156 1) .g) (.mul (.rational 684094 1) .v)) .g) (.mul (.rational
    70932 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5830942 1) .f) (.add (.mul (.rational 14956457 1) .g) (.mul (.rational 2577028 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 15358487 1) .g) (.mul (.rational 5310108 1) .v)) .g) (.mul
    (.rational 271353 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 8084221 1)
    .g) (.mul (.rational 4106022 1) .v)) .g) (.mul (.rational 438026 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2302395 1) .g) (.mul (.rational 1480494 1) .v)) .g)
    (.mul (.rational 240445 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 12504338 1) .f) (.add (.mul (.rational 37525309 1)
    .g) (.mul (.rational 6570728 1) .v))) .f) (.add (.mul (.add (.mul (.rational 46289533 1) .g)
    (.mul (.rational 16443080 1) .v)) .g) (.mul (.rational 849625 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 30388223 1) .g) (.mul (.rational 16132624 1) .v)) .g) (.mul
    (.rational 1746481 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11451313
    1) .g) (.mul (.rational 7898102 1) .v)) .g) (.mul (.rational 1314493 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2470658 1) .g) (.mul (.rational 2027870 1)
    .v)) .g) (.mul (.rational 441331 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20612272 1) .f) (.add (.mul
    (.rational 70790903 1) .g) (.mul (.rational 12647164 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 101850024 1) .g) (.mul (.rational 37318808 1) .v)) .g) (.mul (.rational 1946586 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 79989139 1) .g) (.mul (.rational
    44518312 1) .v)) .g) (.mul (.rational 4890893 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 37399357 1) .g) (.mul (.rational 27684248 1) .v)) .g) (.mul (.rational
    4729430 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10612562
    1) .g) (.mul (.rational 9655190 1) .v)) .g) (.mul (.rational 2212801 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1769487 1) .g) (.mul (.rational 1888198 1)
    .v)) .g) (.mul (.rational 515778 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 26341001 1) .f) (.add
    (.mul (.rational 101824540 1) .g) (.mul (.rational 18659240 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 167250669 1) .g) (.mul (.rational 63547746 1) .v)) .g) (.mul (.rational
    3360549 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 152707197 1) .g) (.mul
    (.rational 89507768 1) .v)) .g) (.mul (.rational 10043455 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 85065458 1) .g) (.mul (.rational 67766680 1) .v)) .g) (.mul
    (.rational 11986126 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 29802055 1) .g) (.mul (.rational 30043784 1) .v)) .g) (.mul (.rational 7319450 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6499536 1) .g) (.mul
    (.rational 7973540 1) .v)) .g) (.mul (.rational 2441035 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 834412 1) .g) (.mul (.rational 1239062 1) .v)) .g)
    (.mul (.rational 442207 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 26106868 1) .f)
    (.add (.mul (.rational 112126731 1) .g) (.mul (.rational 21189286 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 206876142 1) .g) (.mul (.rational 81935716 1) .v)) .g) (.mul (.rational
    4423472 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 215062296 1) .g) (.mul
    (.rational 133343728 1) .v)) .g) (.mul (.rational 15413585 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 138796878 1) .g) (.mul (.rational 119307012 1) .v)) .g)
    (.mul (.rational 22065767 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 57688484 1) .g) (.mul (.rational 64408174 1) .v)) .g) (.mul (.rational 16832762 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 15456695 1) .g) (.mul
    (.rational 21693744 1) .v)) .g) (.mul (.rational 7448551 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2581571 1) .g) (.mul (.rational 4551642 1) .v)) .g)
    (.mul (.rational 1964119 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 246923 1) .g) (.mul (.rational 571374 1) .v)) .g) (.mul (.rational 308008 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 19912415 1) .f) (.add (.mul (.rational
    94034684 1) .g) (.mul (.rational 18414026 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    192417913 1) .g) (.mul (.rational 79792128 1) .v)) .g) (.mul (.rational 4430142 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 224160144 1) .g) (.mul (.rational 147526622
    1) .v)) .g) (.mul (.rational 17711206 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 164215195 1) .g) (.mul (.rational 152544644 1) .v)) .g) (.mul (.rational 29742076
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 78775459 1) .g)
    (.mul (.rational 97251498 1) .v)) .g) (.mul (.rational 27417590 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 24925546 1) .g) (.mul (.rational 39779256 1) .v))
    .g) (.mul (.rational 15265379 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5087549 1) .g) (.mul (.rational 10527002 1) .v)) .g) (.mul (.rational 5347199 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 629388 1) .g) (.mul
    (.rational 1764982 1) .v)) .g) (.mul (.rational 1195357 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 41057 1) .g) (.mul (.rational 174960 1) .v)) .g)
    (.mul (.rational 167817 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 11483137 1) .f) (.add (.mul (.rational 59117303 1) .g) (.mul (.rational 12042718 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 132789879 1) .g) (.mul (.rational 57847434 1)
    .v)) .g) (.mul (.rational 3324006 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 171195097 1) .g) (.mul (.rational 119861418 1) .v)) .g) (.mul (.rational 15039951
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 140148161 1) .g) (.mul
    (.rational 140736718 1) .v)) .g) (.mul (.rational 29079137 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 76043582 1) .g) (.mul (.rational 103527214 1) .v))
    .g) (.mul (.rational 31542532 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27648905 1) .g) (.mul (.rational 49828482 1) .v)) .g) (.mul (.rational 21236292 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6629300 1) .g) (.mul
    (.rational 15903550 1) .v)) .g) (.mul (.rational 9297072 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 995962 1) .g) (.mul (.rational 3325162 1) .v)) .g)
    (.mul (.rational 2698317 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 83408 1) .g) (.mul (.rational 433508 1) .v)) .g) (.mul (.rational 515287 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2866 1) .g) (.mul
    (.rational 31028 1) .v)) .g) (.mul (.rational 60966 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 4848626 1) .f) (.add (.mul (.rational 27017361
    1) .g) (.mul (.rational 5742044 1) .v))) .f) (.add (.mul (.add (.mul (.rational 66053847 1)
    .g) (.mul (.rational 30296720 1) .v)) .g) (.mul (.rational 1810265 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 93286485 1) .g) (.mul (.rational 69559246 1) .v)) .g) (.mul
    (.rational 9160065 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 84287814
    1) .g) (.mul (.rational 91430748 1) .v)) .g) (.mul (.rational 20070304 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 50932363 1) .g) (.mul (.rational 76200354
    1) .v)) .g) (.mul (.rational 25066212 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 20855948 1) .g) (.mul (.rational 42139858 1) .v)) .g) (.mul (.rational
    19796146 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5715286
    1) .g) (.mul (.rational 15711790 1) .v)) .g) (.mul (.rational 10380376 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1001873 1) .g) (.mul (.rational 3917588
    1) .v)) .g) (.mul (.rational 3689350 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 101017 1) .g) (.mul (.rational 627142 1) .v)) .g) (.mul (.rational
    884622 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4404 1) .g)
    (.mul (.rational 57958 1) .v)) .g) (.mul (.rational 136791 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 2296 1) .v) .g) (.mul (.rational 12001 1) (.pow .v 2)))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1415644 1)
    .f) (.add (.mul (.rational 8485690 1) .g) (.mul (.rational 1885300 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 22420127 1) .g) (.mul (.rational 10840782 1) .v)) .g) (.mul (.rational
    675615 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 34393821 1) .g) (.mul
    (.rational 27316262 1) .v)) .g) (.mul (.rational 3783389 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 33952821 1) .g) (.mul (.rational 39722236 1) .v)) .g) (.mul
    (.rational 9267858 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    22567414 1) .g) (.mul (.rational 36957692 1) .v)) .g) (.mul (.rational 13092214 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10246765 1) .g) (.mul
    (.rational 23049068 1) .v)) .g) (.mul (.rational 11847059 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3144907 1) .g) (.mul (.rational 9801986 1) .v)) .g)
    (.mul (.rational 7215290 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 625607 1) .g) (.mul (.rational 2824076 1) .v)) .g) (.mul (.rational 3019351 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 72908 1) .g) (.mul
    (.rational 531096 1) .v)) .g) (.mul (.rational 864744 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3776 1) .g) (.mul (.rational 59126 1) .v)) .g) (.mul
    (.rational 163046 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2952
    1) .v) .g) (.mul (.rational 18183 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    891 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 255636 1) .f) (.add (.mul (.rational 1639686 1) .g) (.mul (.rational 381264
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 4653086 1) .g) (.mul (.rational 2372940 1)
    .v)) .g) (.mul (.rational 154500 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7698231 1) .g) (.mul (.rational 6508496 1) .v)) .g) (.mul (.rational 948774 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8232966 1) .g) (.mul
    (.rational 10366716 1) .v)) .g) (.mul (.rational 2568671 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5958335 1) .g) (.mul (.rational 10637240 1) .v)) .g)
    (.mul (.rational 4044969 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2962716 1) .g) (.mul (.rational 7370168 1) .v)) .g) (.mul (.rational 4117410 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1002541 1) .g) (.mul
    (.rational 3508976 1) .v)) .g) (.mul (.rational 2846528 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 221706 1) .g) (.mul (.rational 1141020 1) .v)) .g)
    (.mul (.rational 1363765 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 29031 1) .g) (.mul (.rational 244392 1) .v)) .g) (.mul (.rational 450905 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1714 1) .g) (.mul
    (.rational 31364 1) .v)) .g) (.mul (.rational 99180 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 1840 1) .v) .g) (.mul (.rational 13144 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 794 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21528 1) .f) (.add (.mul (.rational
    147072 1) .g) (.mul (.rational 35808 1) .v))) .f) (.add (.mul (.add (.mul (.rational 445882 1)
    .g) (.mul (.rational 239784 1) .v)) .g) (.mul (.rational 16320 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 790662 1) .g) (.mul (.rational 710816 1) .v)) .g) (.mul
    (.rational 109032 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 909468 1)
    .g) (.mul (.rational 1229622 1) .v)) .g) (.mul (.rational 323079 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 710572 1) .g) (.mul (.rational 1377328 1)
    .v)) .g) (.mul (.rational 560375 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 382980 1) .g) (.mul (.rational 1047210 1) .v)) .g) (.mul (.rational 632314 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 141094 1) .g) (.mul
    (.rational 549920 1) .v)) .g) (.mul (.rational 487527 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 34140 1) .g) (.mul (.rational 198170 1) .v)) .g) (.mul
    (.rational 261870 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4920 1) .g) (.mul (.rational 47248 1) .v)) .g) (.mul (.rational 97501 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 322 1) .g) (.mul (.rational 6782 1) .v))
    .g) (.mul (.rational 24258 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 448 1) .v) .g) (.mul (.rational 3661 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 255 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1042

namespace FullHigh1043
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsHigh2.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_0 e g v*e^1+6*SmallGap.ReducedLayers.high0_100_1
    e g v*e^2+4*SmallGap.ReducedLayers.high0_100_2 e g v*e^3+4*SmallGap.ReducedLayers.high0_001_0
    e g v+12*SmallGap.ReducedLayers.high0_001_1 e g v*e^1+12*SmallGap.ReducedLayers.high0_001_2 e
    g v*e^2+4*SmallGap.ReducedLayers.high0_001_3 e g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_101_0 e g v+3*SmallGap.ReducedLayers.high1_101_1 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_101_2 e g v*e^2+1*SmallGap.ReducedLayers.high1_101_3 e g
    v*e^3+3*SmallGap.ReducedLayers.high1_002_1 e g v+6*SmallGap.ReducedLayers.high1_002_2 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_002_3 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 14184 1) .e) (.add
    (.mul (.rational 124830 1) .f) (.add (.mul (.rational 153434 1) .g) (.mul (.rational 24700 1)
    .v)))) .e) (.add (.mul (.add (.mul (.rational 675528 1) .f) (.add (.mul (.rational 1128130 1)
    .g) (.mul (.rational 190314 1) .v))) .f) (.add (.mul (.add (.mul (.rational 681390 1) .g)
    (.mul (.rational 221268 1) .v)) .g) (.mul (.rational 11100 1) (.pow .v 2))))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 2506436 1) .f) (.add (.mul (.rational 5279172 1) .g) (.mul
    (.rational 905534 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4280584 1) .g) (.mul
    (.rational 1429450 1) .v)) .g) (.mul (.rational 76611 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1676420 1) .g) (.mul (.rational 780058 1) .v)) .g) (.mul (.rational
    88046 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    6737762 1) .f) (.add (.mul (.rational 17101962 1) .g) (.mul (.rational 2965576 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 17374980 1) .g) (.mul (.rational 5926338 1) .v)) .g) (.mul
    (.rational 325475 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9055482 1)
    .g) (.mul (.rational 4386950 1) .v)) .g) (.mul (.rational 507554 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2559086 1) .g) (.mul (.rational 1483462 1) .v)) .g)
    (.mul (.rational 262819 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 13526392 1) .f) (.add (.mul (.rational 40124748 1)
    .g) (.mul (.rational 7058832 1) .v))) .f) (.add (.mul (.add (.mul (.rational 48920302 1) .g)
    (.mul (.rational 17117712 1) .v)) .g) (.mul (.rational 950290 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 31764852 1) .g) (.mul (.rational 16088090 1) .v)) .g) (.mul
    (.rational 1882651 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11862598
    1) .g) (.mul (.rational 7414038 1) .v)) .g) (.mul (.rational 1335902 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2544976 1) .g) (.mul (.rational 1744374 1)
    .v)) .g) (.mul (.rational 403571 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20600430 1) .f) (.add (.mul
    (.rational 69862074 1) .g) (.mul (.rational 12562666 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 99248724 1) .g) (.mul (.rational 35938724 1) .v)) .g) (.mul (.rational 2016422 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 77021744 1) .g) (.mul (.rational
    41167228 1) .v)) .g) (.mul (.rational 4888394 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 35650904 1) .g) (.mul (.rational 24246982 1) .v)) .g) (.mul (.rational
    4481493 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10047470
    1) .g) (.mul (.rational 7855256 1) .v)) .g) (.mul (.rational 1923352 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1671414 1) .g) (.mul (.rational 1390326 1)
    .v)) .g) (.mul (.rational 382971 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 23923370 1) .f) (.add
    (.mul (.rational 91228414 1) .g) (.mul (.rational 16915938 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 147827626 1) .g) (.mul (.rational 55934474 1) .v)) .g) (.mul (.rational
    3195503 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 133258736 1) .g) (.mul
    (.rational 75924240 1) .v)) .g) (.mul (.rational 9254704 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 73424044 1) .g) (.mul (.rational 54852852 1) .v)) .g) (.mul
    (.rational 10580148 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25525458 1) .g) (.mul (.rational 22920364 1) .v)) .g) (.mul (.rational 6077835 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5549624 1) .g) (.mul
    (.rational 5655688 1) .v)) .g) (.mul (.rational 1853027 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 714284 1) .g) (.mul (.rational 808842 1) .v)) .g)
    (.mul (.rational 294575 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21091162 1) .f)
    (.add (.mul (.rational 89278364 1) .g) (.mul (.rational 17213872 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 162368416 1) .g) (.mul (.rational 64760758 1) .v)) .g) (.mul (.rational
    3807379 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 166526646 1) .g) (.mul
    (.rational 101991236 1) .v)) .g) (.mul (.rational 12938074 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 106231986 1) .g) (.mul (.rational 87752732 1) .v)) .g)
    (.mul (.rational 17962432 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 43787168 1) .g) (.mul (.rational 45255968 1) .v)) .g) (.mul (.rational 13207494 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11691166 1) .g) (.mul
    (.rational 14494356 1) .v)) .g) (.mul (.rational 5611782 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1957962 1) .g) (.mul (.rational 2897838 1) .v)) .g)
    (.mul (.rational 1432030 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 189082 1) .g) (.mul (.rational 351826 1) .v)) .g) (.mul (.rational 225937 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13903522 1) .f) (.add (.mul (.rational
    64656326 1) .g) (.mul (.rational 13055504 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    130316778 1) .g) (.mul (.rational 55168632 1) .v)) .g) (.mul (.rational 3372566 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 149682608 1) .g) (.mul (.rational 99124544
    1) .v)) .g) (.mul (.rational 13239681 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 108334878 1) .g) (.mul (.rational 99266648 1) .v)) .g) (.mul (.rational 21813643 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 51521194 1) .g) (.mul
    (.rational 61152104 1) .v)) .g) (.mul (.rational 19761658 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 16244728 1) .g) (.mul (.rational 24199656 1) .v)) .g)
    (.mul (.rational 10896826 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3326784 1) .g) (.mul (.rational 6249430 1) .v)) .g) (.mul (.rational 3857406 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 416340 1) .g) (.mul
    (.rational 1043058 1) .v)) .g) (.mul (.rational 905357 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 27718 1) .g) (.mul (.rational 106038 1) .v)) .g)
    (.mul (.rational 139857 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 6649938 1) .f) (.add (.mul (.rational 33685500 1) .g) (.mul (.rational 7162224 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 74478494 1) .g) (.mul (.rational 33627196 1) .v))
    .g) (.mul (.rational 2154972 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    94621348 1) .g) (.mul (.rational 67974736 1) .v)) .g) (.mul (.rational 9634596 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 76503560 1) .g) (.mul (.rational
    77774572 1) .v)) .g) (.mul (.rational 18450902 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 41148486 1) .g) (.mul (.rational 55792846 1) .v)) .g) (.mul
    (.rational 19940168 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14912726 1) .g) (.mul (.rational 26312888 1) .v)) .g) (.mul (.rational 13537474 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3590836 1) .g) (.mul
    (.rational 8326276 1) .v)) .g) (.mul (.rational 6105202 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 546912 1) .g) (.mul (.rational 1762734 1) .v)) .g)
    (.mul (.rational 1882525 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 46956 1) .g) (.mul (.rational 239510 1) .v)) .g) (.mul (.rational 394344 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1676 1) .g) (.mul
    (.rational 18398 1) .v)) .g) (.mul (.rational 52085 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 2182980 1) .f) (.add (.mul (.rational 11959124
    1) .g) (.mul (.rational 2687764 1) .v))) .f) (.add (.mul (.add (.mul (.rational 28761618 1)
    .g) (.mul (.rational 13889776 1) .v)) .g) (.mul (.rational 938112 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 40010196 1) .g) (.mul (.rational 31215176 1) .v)) .g) (.mul
    (.rational 4714464 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 35695908
    1) .g) (.mul (.rational 40184248 1) .v)) .g) (.mul (.rational 10303980 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 21383170 1) .g) (.mul (.rational 32892966
    1) .v)) .g) (.mul (.rational 12938378 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8731492 1) .g) (.mul (.rational 17988686 1) .v)) .g) (.mul (.rational
    10409153 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2405428
    1) .g) (.mul (.rational 6719936 1) .v)) .g) (.mul (.rational 5670852 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 428326 1) .g) (.mul (.rational 1713940 1)
    .v)) .g) (.mul (.rational 2147352 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 44430 1) .g) (.mul (.rational 288362 1) .v)) .g) (.mul (.rational 562339 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2024 1) .g) (.mul
    (.rational 28822 1) .v)) .g) (.mul (.rational 96506 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 1268 1) .v) .g) (.mul (.rational 9439 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 440532 1) .f) (.add
    (.mul (.rational 2594040 1) .g) (.mul (.rational 617736 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 6737598 1) .g) (.mul (.rational 3484896 1) .v)) .g) (.mul (.rational 248796 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 10176548 1) .g) (.mul (.rational
    8618656 1) .v)) .g) (.mul (.rational 1389024 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9918104 1) .g) (.mul (.rational 12323540 1) .v)) .g) (.mul (.rational 3411024
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6536128 1) .g)
    (.mul (.rational 11322128 1) .v)) .g) (.mul (.rational 4873020 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2960866 1) .g) (.mul (.rational 7029006 1) .v))
    .g) (.mul (.rational 4518123 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 914410 1) .g) (.mul (.rational 3015940 1) .v)) .g) (.mul (.rational 2870430 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 185054 1) .g) (.mul
    (.rational 894264 1) .v)) .g) (.mul (.rational 1280316 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 22234 1) .g) (.mul (.rational 177472 1) .v)) .g)
    (.mul (.rational 399326 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1206 1) .g) (.mul (.rational 21414 1) .v)) .g) (.mul (.rational 83365 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1188 1) .v) .g) (.mul (.rational
    10400 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 576 1) (.pow .v 2)) (.pow .g
    10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 41256 1) .f)
    (.add (.mul (.rational 259716 1) .g) (.mul (.rational 65616 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 724020 1) .g) (.mul (.rational 401160 1) .v)) .g) (.mul (.rational 30312 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1178844 1) .g) (.mul (.rational
    1082172 1) .v)) .g) (.mul (.rational 186084 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1244460 1) .g) (.mul (.rational 1700016 1) .v)) .g) (.mul (.rational 506760
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 893078 1) .g)
    (.mul (.rational 1729384 1) .v)) .g) (.mul (.rational 810084 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 443224 1) .g) (.mul (.rational 1198320 1) .v))
    .g) (.mul (.rational 847846 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 151016 1) .g) (.mul (.rational 578264 1) .v)) .g) (.mul (.rational 612769 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 34004 1) .g) (.mul
    (.rational 194176 1) .v)) .g) (.mul (.rational 312925 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4594 1) .g) (.mul (.rational 43944 1) .v)) .g) (.mul
    (.rational 112478 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    284 1) .g) (.mul (.rational 6104 1) .v)) .g) (.mul (.rational 27352 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 396 1) .v) .g) (.mul (.rational 4057 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 277 1) (.pow .v 2)) (.pow .g 10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1043

namespace FullHigh1044
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  3*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_100_0 e g v+4*SmallGap.ReducedLayers.high0_100_1 e g
    v*e^1+6*SmallGap.ReducedLayers.high0_100_2 e g v*e^2+4*SmallGap.ReducedLayers.high0_001_1 e g
    v+12*SmallGap.ReducedLayers.high0_001_2 e g v*e^1+12*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_101_1 e g v+3*SmallGap.ReducedLayers.high1_101_2 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_101_3 e g v*e^2+3*SmallGap.ReducedLayers.high1_002_2 e g
    v+6*SmallGap.ReducedLayers.high1_002_3 e g v*e^1+3*SmallGap.ReducedLayers.high1_002_4 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11076 1) .e) (.add (.mul (.rational
    94789 1) .f) (.add (.mul (.rational 115870 1) .g) (.mul (.rational 19000 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 495708 1) .f) (.add (.mul (.rational 822032 1) .g) (.mul
    (.rational 140212 1) .v))) .f) (.add (.mul (.add (.mul (.rational 493358 1) .g) (.mul
    (.rational 158996 1) .v)) .g) (.mul (.rational 8500 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 1762126 1) .f) (.add (.mul (.rational 3679595 1) .g) (.mul
    (.rational 634588 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2959460 1) .g) (.mul
    (.rational 971942 1) .v)) .g) (.mul (.rational 55862 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1151813 1) .g) (.mul (.rational 506064 1) .v)) .g) (.mul (.rational
    62316 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    4487989 1) .f) (.add (.mul (.rational 11274521 1) .g) (.mul (.rational 1959778 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 11341315 1) .g) (.mul (.rational 3785792 1) .v)) .g) (.mul
    (.rational 224021 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5861363 1)
    .g) (.mul (.rational 2663198 1) .v)) .g) (.mul (.rational 336743 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1647456 1) .g) (.mul (.rational 828696 1) .v)) .g)
    (.mul (.rational 163189 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 8416699 1) .f) (.add (.mul (.rational 24666941 1) .g)
    (.mul (.rational 4352740 1) .v))) .f) (.add (.mul (.add (.mul (.rational 29720008 1) .g) (.mul
    (.rational 10182824 1) .v)) .g) (.mul (.rational 611612 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 19093788 1) .g) (.mul (.rational 9085320 1) .v)) .g) (.mul
    (.rational 1163820 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7072805
    1) .g) (.mul (.rational 3860698 1) .v)) .g) (.mul (.rational 770745 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1510719 1) .g) (.mul (.rational 789564 1)
    .v)) .g) (.mul (.rational 201280 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11761714 1) .f) (.add (.mul
    (.rational 39335565 1) .g) (.mul (.rational 7129848 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 55114038 1) .g) (.mul (.rational 19669594 1) .v)) .g) (.mul (.rational 1201488 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 42222636 1) .g) (.mul (.rational
    21425426 1) .v)) .g) (.mul (.rational 2801133 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19332254 1) .g) (.mul (.rational 11718660 1) .v)) .g) (.mul (.rational
    2413998 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5406823 1)
    .g) (.mul (.rational 3375770 1) .v)) .g) (.mul (.rational 924864 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 895994 1) .g) (.mul (.rational 486058 1)
    .v)) .g) (.mul (.rational 139712 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12245340 1) .f) (.add
    (.mul (.rational 45965094 1) .g) (.mul (.rational 8668180 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 73310199 1) .g) (.mul (.rational 27666270 1) .v)) .g) (.mul (.rational 1738924 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 65086317 1) .g) (.mul (.rational
    35837962 1) .v)) .g) (.mul (.rational 4871074 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 35377162 1) .g) (.mul (.rational 24277620 1) .v)) .g) (.mul (.rational
    5312914 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 12165578
    1) .g) (.mul (.rational 9248276 1) .v)) .g) (.mul (.rational 2842798 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2625309 1) .g) (.mul (.rational 1987020 1)
    .v)) .g) (.mul (.rational 771505 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 336335 1) .g) (.mul (.rational 229270 1) .v)) .g) (.mul (.rational 99800 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 9382237 1) .f) (.add (.mul (.rational 39021848
    1) .g) (.mul (.rational 7744830 1) .v))) .f) (.add (.mul (.add (.mul (.rational 69708917 1)
    .g) (.mul (.rational 28171934 1) .v)) .g) (.mul (.rational 1849523 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 70249791 1) .g) (.mul (.rational 42525034 1) .v)) .g) (.mul
    (.rational 6128468 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 44089455
    1) .g) (.mul (.rational 34647724 1) .v)) .g) (.mul (.rational 8254088 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17920516 1) .g) (.mul (.rational 16648312
    1) .v)) .g) (.mul (.rational 5860577 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4733027 1) .g) (.mul (.rational 4870798 1) .v)) .g) (.mul (.rational
    2407689 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 786309 1)
    .g) (.mul (.rational 873776 1) .v)) .g) (.mul (.rational 607760 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 75340 1) .g) (.mul (.rational 94800 1) .v)) .g)
    (.mul (.rational 101222 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5144058 1) .f) (.add (.mul (.rational 23462284 1) .g) (.mul (.rational 4945328 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 46356804 1) .g) (.mul (.rational 20244328 1) .v)) .g) (.mul
    (.rational 1406310 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 52200014 1)
    .g) (.mul (.rational 35011600 1) .v)) .g) (.mul (.rational 5426880 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 37073155 1) .g) (.mul (.rational 33488272 1) .v)) .g)
    (.mul (.rational 8796178 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17335691 1) .g) (.mul (.rational 19543196 1) .v)) .g) (.mul (.rational 7880408 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5390444 1) .g) (.mul
    (.rational 7285304 1) .v)) .g) (.mul (.rational 4361622 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1092102 1) .g) (.mul (.rational 1779008 1) .v)) .g)
    (.mul (.rational 1598228 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 135414 1) .g) (.mul (.rational 286830 1) .v)) .g) (.mul (.rational 405229 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8895 1) .g) (.mul
    (.rational 29172 1) .v)) .g) (.mul (.rational 69440 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1912284 1) .f) (.add (.mul (.rational 9484196 1) .g) (.mul
    (.rational 2136268 1) .v))) .f) (.add (.mul (.add (.mul (.rational 20516458 1) .g) (.mul
    (.rational 9734132 1) .v)) .g) (.mul (.rational 721584 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25498118 1) .g) (.mul (.rational 19009232 1) .v)) .g) (.mul (.rational
    3192084 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 20181334 1) .g)
    (.mul (.rational 20915196 1) .v)) .g) (.mul (.rational 6073122 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10645463 1) .g) (.mul (.rational 14382360 1) .v))
    .g) (.mul (.rational 6579298 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3795136 1) .g) (.mul (.rational 6512058 1) .v)) .g) (.mul (.rational 4553588 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 902342 1) .g) (.mul
    (.rational 2001310 1) .v)) .g) (.mul (.rational 2148059 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 136162 1) .g) (.mul (.rational 422096 1) .v)) .g)
    (.mul (.rational 712588 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11593 1) .g) (.mul (.rational 59094 1) .v)) .g) (.mul (.rational 163090 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 408 1) .g) (.mul (.rational
    4794 1) .v)) .g) (.mul (.rational 23364 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 432324 1) .f) (.add (.mul (.rational 2314980 1) .g) (.mul
    (.rational 559332 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5437278 1) .g) (.mul
    (.rational 2809476 1) .v)) .g) (.mul (.rational 223164 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7384580 1) .g) (.mul (.rational 6117640 1) .v)) .g) (.mul (.rational
    1114884 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6435792 1) .g)
    (.mul (.rational 7612220 1) .v)) .g) (.mul (.rational 2435934 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3772780 1) .g) (.mul (.rational 6022204 1) .v))
    .g) (.mul (.rational 3088440 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1512555 1) .g) (.mul (.rational 3199550 1) .v)) .g) (.mul (.rational 2548678 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 411035 1) .g) (.mul
    (.rational 1177822 1) .v)) .g) (.mul (.rational 1454394 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 72592 1) .g) (.mul (.rational 303576 1) .v)) .g)
    (.mul (.rational 589208 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7509 1) .g) (.mul (.rational 53252 1) .v)) .g) (.mul (.rational 167250 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 343 1) .g) (.mul (.rational
    5702 1) .v)) .g) (.mul (.rational 31123 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 274 1) .v) .g) (.mul (.rational 3276 1) (.pow .v 2))) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 44928 1) .f) (.add (.mul
    (.rational 258156 1) .g) (.mul (.rational 67032 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 653724 1) .g) (.mul (.rational 367956 1) .v)) .g) (.mul (.rational 31356 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 962320 1) .g) (.mul (.rational 883736 1)
    .v)) .g) (.mul (.rational 174564 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 914557 1) .g) (.mul (.rational 1226140 1) .v)) .g) (.mul (.rational 430224 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 588830 1) .g) (.mul
    (.rational 1095142 1) .v)) .g) (.mul (.rational 623160 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 261567 1) .g) (.mul (.rational 665662 1) .v)) .g)
    (.mul (.rational 594463 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 79665 1) .g) (.mul (.rational 283922 1) .v)) .g) (.mul (.rational 395814 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 16018 1) .g) (.mul
    (.rational 85744 1) .v)) .g) (.mul (.rational 188588 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1929 1) .g) (.mul (.rational 17850 1) .v)) .g) (.mul
    (.rational 63787 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    106 1) .g) (.mul (.rational 2322 1) .v)) .g) (.mul (.rational 14576 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 142 1) .v) .g) (.mul (.rational 2007 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 125 1) (.pow .v 2)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1044

namespace FullHigh1045
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_100_1 e g v+4*SmallGap.ReducedLayers.high0_100_2 e g
    v*e^1+4*SmallGap.ReducedLayers.high0_001_2 e g v+12*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_101_2 e g v+3*SmallGap.ReducedLayers.high1_101_3 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_002_3 e g v+6*SmallGap.ReducedLayers.high1_002_4 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 4632 1) .e) (.add (.mul (.rational 38847 1) .f)
    (.add (.mul (.rational 47301 1) .g) (.mul (.rational 7830 1) .v)))) .e) (.add (.mul (.add
    (.mul (.rational 197691 1) .f) (.add (.mul (.rational 326033 1) .g) (.mul (.rational 55788 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 194976 1) .g) (.mul (.rational 61716 1) .v)) .g)
    (.mul (.rational 3490 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    677136 1) .f) (.add (.mul (.rational 1403627 1) .g) (.mul (.rational 241818 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 1122722 1) .g) (.mul (.rational 359062 1) .v)) .g) (.mul
    (.rational 22041 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 436099 1) .g)
    (.mul (.rational 177802 1) .v)) .g) (.mul (.rational 23874 1) (.pow .v 2))) .g))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1640259 1) .f) (.add (.mul (.rational
    4081844 1) .g) (.mul (.rational 708102 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4074434
    1) .g) (.mul (.rational 1319760 1) .v)) .g) (.mul (.rational 84108 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2096268 1) .g) (.mul (.rational 877548 1) .v)) .g) (.mul
    (.rational 121814 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 589479 1)
    .g) (.mul (.rational 246212 1) .v)) .g) (.mul (.rational 54988 1) (.pow .v 2))) (.pow .g 2))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2876214 1) .f)
    (.add (.mul (.rational 8330423 1) .g) (.mul (.rational 1473060 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 9934480 1) .g) (.mul (.rational 3315910 1) .v)) .g) (.mul (.rational 216302
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6335526 1) .g) (.mul (.rational
    2790988 1) .v)) .g) (.mul (.rational 395242 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2339996 1) .g) (.mul (.rational 1071216 1) .v)) .g) (.mul (.rational 243304
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 501233 1) .g)
    (.mul (.rational 174544 1) .v)) .g) (.mul (.rational 52742 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3673950 1)
    .f) (.add (.mul (.rational 12111234 1) .g) (.mul (.rational 2222028 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 16747983 1) .g) (.mul (.rational 5895204 1) .v)) .g) (.mul (.rational
    396048 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 12694368 1) .g) (.mul
    (.rational 6071062 1) .v)) .g) (.mul (.rational 889916 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5772842 1) .g) (.mul (.rational 3033280 1) .v)) .g) (.mul
    (.rational 723056 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1611668 1) .g) (.mul (.rational 733296 1) .v)) .g) (.mul (.rational 246046 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 267939 1) .g) (.mul (.rational
    64024 1) .v)) .g) (.mul (.rational 24348 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3389568 1) .f)
    (.add (.mul (.rational 12505662 1) .g) (.mul (.rational 2424264 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 19621752 1) .g) (.mul (.rational 7447740 1) .v)) .g) (.mul (.rational 525164
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 17170827 1) .g) (.mul
    (.rational 9163048 1) .v)) .g) (.mul (.rational 1431552 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9227980 1) .g) (.mul (.rational 5756678 1) .v)) .g) (.mul
    (.rational 1508094 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3150478 1) .g) (.mul (.rational 1938464 1) .v)) .g) (.mul (.rational 770842 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 677552 1) .g) (.mul (.rational
    327232 1) .v)) .g) (.mul (.rational 197370 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 86569 1) .g) (.mul (.rational 18572 1) .v)) .g) (.mul (.rational
    24522 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2201004 1) .f) (.add (.mul
    (.rational 8970120 1) .g) (.mul (.rational 1865376 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 15707640 1) .g) (.mul (.rational 6540000 1) .v)) .g) (.mul (.rational 494448 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 15535460 1) .g) (.mul (.rational
    9421240 1) .v)) .g) (.mul (.rational 1612332 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9589941 1) .g) (.mul (.rational 7215152 1) .v)) .g) (.mul (.rational 2144664
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3844892 1) .g)
    (.mul (.rational 3181522 1) .v)) .g) (.mul (.rational 1522440 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1003910 1) .g) (.mul (.rational 822240 1) .v))
    .g) (.mul (.rational 646388 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 164600 1) .g) (.mul (.rational 122748 1) .v)) .g) (.mul (.rational 180374 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 15365 1) .g) (.mul
    (.rational 10060 1) .v)) .g) (.mul (.rational 35548 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 954216 1) .f) (.add (.mul (.rational 4250964 1) .g) (.mul (.rational
    958200 1) .v))) .f) (.add (.mul (.add (.mul (.rational 8200632 1) .g) (.mul (.rational 3784464
    1) .v)) .g) (.mul (.rational 311532 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9018688 1) .g) (.mul (.rational 6267776 1) .v)) .g) (.mul (.rational 1193748 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6261798 1) .g) (.mul
    (.rational 5686240 1) .v)) .g) (.mul (.rational 1938420 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2866313 1) .g) (.mul (.rational 3112180 1) .v)) .g)
    (.mul (.rational 1771776 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 872608 1) .g) (.mul (.rational 1077778 1) .v)) .g) (.mul (.rational 1032966 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 172266 1) .g) (.mul
    (.rational 244836 1) .v)) .g) (.mul (.rational 415354 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 20441 1) .g) (.mul (.rational 37520 1) .v)) .g) (.mul
    (.rational 118316 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1214 1) .g) (.mul (.rational 3706 1) .v)) .g) (.mul (.rational 22322 1) (.pow .v 2))) (.pow .g
    7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 247860 1) .f) (.add (.mul (.rational 1196748 1)
    .g) (.mul (.rational 293976 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2516976 1) .g)
    (.mul (.rational 1292760 1) .v)) .g) (.mul (.rational 116640 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3038580 1) .g) (.mul (.rational 2421288 1) .v)) .g) (.mul
    (.rational 515160 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2334990
    1) .g) (.mul (.rational 2537640 1) .v)) .g) (.mul (.rational 988392 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1195150 1) .g) (.mul (.rational 1652420 1)
    .v)) .g) (.mul (.rational 1098468 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 412461 1) .g) (.mul (.rational 707860 1) .v)) .g) (.mul (.rational 799368 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 94148 1) .g) (.mul
    (.rational 207946 1) .v)) .g) (.mul (.rational 406804 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 13323 1) .g) (.mul (.rational 42824 1) .v)) .g) (.mul
    (.rational 147368 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    999 1) .g) (.mul (.rational 5916 1) .v)) .g) (.mul (.rational 36406 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 25 1) .g) (.mul (.rational 452 1) .v)) .g)
    (.mul (.rational 5466 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 29160 1) .f) (.add (.mul (.rational 151524 1) .g) (.mul (.rational 40608 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 344484 1) .g) (.mul (.rational 196776 1) .v)) .g)
    (.mul (.rational 19440 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 451800
    1) .g) (.mul (.rational 410832 1) .v)) .g) (.mul (.rational 97200 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 379380 1) .g) (.mul (.rational 487080 1) .v)) .g)
    (.mul (.rational 214428 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 213686 1) .g) (.mul (.rational 365392 1) .v)) .g) (.mul (.rational 278292 1) (.pow
    .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 81888 1) .g) (.mul
    (.rational 184028 1) .v)) .g) (.mul (.rational 239296 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 21017 1) .g) (.mul (.rational 64696 1) .v)) .g) (.mul
    (.rational 144672 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3408 1) .g) (.mul (.rational 16106 1) .v)) .g) (.mul (.rational 62518 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 303 1) .g) (.mul (.rational 2718 1) .v))
    .g) (.mul (.rational 18762 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10 1) .g) (.mul (.rational 266 1) .v)) .g) (.mul (.rational 3609 1) (.pow .v 2)))
    (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 10 1) .v) .g) (.mul (.rational 380 1)
    (.pow .v 2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1045

namespace FullHigh1046
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  5*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_100_2 e g v+4*SmallGap.ReducedLayers.high0_001_3 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_101_3 e g v+3*SmallGap.ReducedLayers.high1_002_4 e g v)

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

end FullHigh1046

end
end SPR.N6.Tail.CoreEndpoint
