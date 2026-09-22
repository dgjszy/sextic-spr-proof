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

namespace FullLow1040
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c140 e f g v*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_100_0 e g v*e^4+4*SmallGap.ReducedLayers.low0_001_0 e
    g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_101_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_002_0 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 20 1) .v) (.rational 560 1)) .e) (.add (.mul (.add (.mul (.add
    (.mul (.rational 20 1) .v) (.rational 436 1)) .v) (.rational 4937 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 50 1) .v) (.rational 692 1)) .v) (.rational 6284 1)) .g))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 398 1) .v) (.rational 4422 1)) .v)
    (.rational 27408 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1194 1) .v) (.rational 9620
    1)) .v) (.rational 48442 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1294 1) .v)
    (.rational 7062 1)) .v) (.rational 29790 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 3646 1) .v) (.rational 27722 1)) .v) (.rational
    107751 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 12761 1) .v) (.rational 76578 1)) .v)
    (.rational 246194 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 17287 1) .v)
    (.rational 79986 1)) .v) (.rational 212038 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11315 1) .v) (.rational 39822 1)) .v) (.rational 85420 1)) (.pow .g 3)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20449 1) .v)
    (.rational 120274 1)) .v) (.rational 319493 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    81796 1) .v) (.rational 402414 1)) .v) (.rational 903542 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 132290 1) .v) (.rational 539880 1)) .v) (.rational 1014382 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 110584 1) .v) (.rational 373732 1)) .v)
    (.rational 577648 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 50357 1) .v)
    (.rational 142158 1)) .v) (.rational 176603 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 78682 1) .v) (.rational
    382874 1)) .v) (.rational 741640 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 354069 1)
    .v) (.rational 1502618 1)) .v) (.rational 2519490 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 663620 1) .v) (.rational 2449316 1)) .v) (.rational 3522046 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 670348 1) .v) (.rational 2154738 1)) .v) (.rational
    2627268 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 393424 1) .v)
    (.rational 1109540 1)) .v) (.rational 1134414 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 133851 1) .v) (.rational 336284 1)) .v) (.rational 286700 1)) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 220315 1) .v) (.rational 924752 1)) .v) (.rational 1377665 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1101575 1) .v) (.rational 4159530 1)) .v) (.rational
    5495463 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2343184 1) .v) (.rational
    7953306 1)) .v) (.rational 9255543 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2763286 1) .v) (.rational 8446962 1)) .v) (.rational 8602179 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1970855 1) .v) (.rational 5455904 1)) .v) (.rational
    4840510 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 867679 1) .v)
    (.rational 2197146 1)) .v) (.rational 1699416 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 229222 1) .v) (.rational 538814 1)) .v) (.rational 366828 1)) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 464230 1) .v) (.rational 1727980 1)) .v) (.rational 2071178 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2553265 1) .v) (.rational 8753808 1)) .v)
    (.rational 9521899 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6068877 1) .v)
    (.rational 19162400 1)) .v) (.rational 18832037 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8160459 1) .v) (.rational 23768176 1)) .v) (.rational 21031635 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6819012 1) .v) (.rational 18392144 1)) .v)
    (.rational 14635391 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3657255 1)
    .v) (.rational 9195390 1)) .v) (.rational 6597212 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1252053 1) .v) (.rational 2962466 1)) .v) (.rational 1931726 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 261741 1) .v) (.rational 589730 1)) .v)
    (.rational 354452 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 750082 1) .v)
    (.rational 2523768 1)) .v) (.rational 2528250 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    4500492 1) .v) (.rational 14205184 1)) .v) (.rational 13184798 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11810704 1) .v) (.rational 34970680 1)) .v) (.rational 29990684 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17799010 1) .v) (.rational 49494688
    1)) .v) (.rational 39151946 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    16995706 1) .v) (.rational 44500628 1)) .v) (.rational 32471028 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10694176 1) .v) (.rational 26479986 1)) .v) (.rational
    17870262 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4462616 1) .v)
    (.rational 10514028 1)) .v) (.rational 6601570 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1208662 1) .v) (.rational 2730492 1)) .v) (.rational 1610156 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 200620 1) .v) (.rational 438308 1)) .v)
    (.rational 245670 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    937424 1) .v) (.rational 2890184 1)) .v) (.rational 2497553 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6093256 1) .v) (.rational 17879704 1)) .v) (.rational 14573404 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 17486464 1) .v) (.rational 48831332 1)) .v)
    (.rational 37476541 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 29149736 1)
    .v) (.rational 77519480 1)) .v) (.rational 55969080 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 31234814 1) .v) (.rational 79232518 1)) .v) (.rational 53836503 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 22472367 1) .v) (.rational 54524930
    1)) .v) (.rational 34937624 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11000940 1) .v) (.rational 25630944 1)) .v) (.rational 15550647 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3628764 1) .v) (.rational 8159294 1)) .v) (.rational
    4715974 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 779052 1) .v)
    (.rational 1700136 1)) .v) (.rational 943343 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 101287 1) .v) (.rational 215732 1)) .v) (.rational 115848 1)) (.pow .g 9))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 906492 1) .v) (.rational
    2586502 1)) .v) (.rational 1978298 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 6345444 1)
    .v) (.rational 17432616 1)) .v) (.rational 12764532 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19757878 1) .v) (.rational 52252666 1)) .v) (.rational 36586292 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 36056496 1) .v) (.rational 91823020 1)) .v)
    (.rational 61445732 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 42762225 1)
    .v) (.rational 104961554 1)) .v) (.rational 67146181 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 34526327 1) .v) (.rational 81816210 1)) .v) (.rational 50102471 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 19314334 1) .v) (.rational 44293760
    1)) .v) (.rational 26031451 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7464118 1) .v) (.rational 16618298 1)) .v) (.rational 9408543 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1947383 1) .v) (.rational 4224754 1)) .v) (.rational
    2315228 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 326401 1) .v)
    (.rational 692582 1)) .v) (.rational 369294 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 31956 1) .v) (.rational 66520 1)) .v) (.rational 34670 1)) (.pow .g 10))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 672898 1) .v)
    (.rational 1790082 1)) .v) (.rational 1237011 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    5046735 1) .v) (.rational 13048978 1)) .v) (.rational 8737284 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16938153 1) .v) (.rational 42555098 1)) .v) (.rational 27586564 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 33555847 1) .v) (.rational 81919774
    1)) .v) (.rational 51391664 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    43571583 1) .v) (.rational 103406178 1)) .v) (.rational 62782972 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 38922114 1) .v) (.rational 89877706 1)) .v) (.rational
    52850495 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 24410604 1) .v)
    (.rational 54923258 1)) .v) (.rational 31324401 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10761786 1) .v) (.rational 23637830 1)) .v) (.rational 13104379 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3280871 1) .v) (.rational 7050950 1)) .v)
    (.rational 3810383 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 665718 1)
    .v) (.rational 1403236 1)) .v) (.rational 741550 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 83562 1) .v) (.rational 173112 1)) .v) (.rational 89724 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5612 1) .v) (.rational 11436 1)) .v) (.rational
    5824 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 376637 1) .v) (.rational 939458 1)) .v) (.rational 596145 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3013096 1) .v) (.rational 7361758 1)) .v) (.rational
    4570182 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10839978 1) .v) (.rational
    25934008 1)) .v) (.rational 15741022 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23150666 1) .v) (.rational 54227524 1)) .v) (.rational 32168002 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 32624526 1) .v) (.rational 74827856 1)) .v)
    (.rational 43377654 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 31884366 1)
    .v) (.rational 71636232 1)) .v) (.rational 40592944 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 22094984 1) .v) (.rational 48662748 1)) .v) (.rational 26973056 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 10898498 1) .v) (.rational 23554272
    1)) .v) (.rational 12785354 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3779028 1) .v) (.rational 8025164 1)) .v) (.rational 4272432 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 892174 1) .v) (.rational 1864346 1)) .v) (.rational 975234 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 134736 1) .v) (.rational 277424 1))
    .v) (.rational 142844 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 11496 1)
    .v) (.rational 23340 1)) .v) (.rational 11844 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 407 1) .v) (.rational 814 1)) .v) (.rational 407 1)) (.pow .g 12)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    153906 1) .v) (.rational 361546 1)) .v) (.rational 213374 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1308201 1) .v) (.rational 3029786 1)) .v) (.rational 1762654 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5020772 1) .v) (.rational 11460404 1)) .v) (.rational
    6569496 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 11491770 1) .v)
    (.rational 25847426 1)) .v) (.rational 14594026 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 17448654 1) .v) (.rational 38668910 1)) .v) (.rational 21501083 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 18488600 1) .v) (.rational 40375218 1)) .v)
    (.rational 22108170 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 13995030 1)
    .v) (.rational 30124486 1)) .v) (.rational 16247835 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7609800 1) .v) (.rational 16153450 1)) .v) (.rational 8585904 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2942530 1) .v) (.rational 6163836 1)) .v)
    (.rational 3230941 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 786459 1)
    .v) (.rational 1627020 1)) .v) (.rational 841828 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 137274 1) .v) (.rational 280702 1)) .v) (.rational 143501 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 13954 1) .v) (.rational 28220 1)) .v) (.rational
    14266 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 618 1) .v) (.rational
    1236 1)) .v) (.rational 618 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 43355 1) .v) (.rational 96260 1))
    .v) (.rational 53365 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 390195 1) .v) (.rational
    858810 1)) .v) (.rational 472147 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1590924
    1) .v) (.rational 3470262 1)) .v) (.rational 1891359 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3882972 1) .v) (.rational 8392378 1)) .v) (.rational 4533257 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6313676 1) .v) (.rational 13519190 1))
    .v) (.rational 7236025 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7199192
    1) .v) (.rational 15271308 1)) .v) (.rational 8098375 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5897616 1) .v) (.rational 12394058 1)) .v) (.rational 6511819 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3493966 1) .v) (.rational 7275616 1)) .v)
    (.rational 3787691 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1484047 1)
    .v) (.rational 3062898 1)) .v) (.rational 1580372 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 440141 1) .v) (.rational 900690 1)) .v) (.rational 460770 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 86372 1) .v) (.rational 175328 1)) .v)
    (.rational 88970 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 10046 1) .v)
    (.rational 20238 1)) .v) (.rational 10192 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 522 1) .v) (.rational 1044 1)) .v) (.rational 522 1)) (.pow .g 12))) (.pow .f 2)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    7530 1) .v) (.rational 15848 1)) .v) (.rational 8318 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 71535 1) .v) (.rational 149948 1)) .v) (.rational 78413 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 308723 1) .v) (.rational 644420 1)) .v) (.rational 335697 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 800003 1) .v) (.rational 1662692
    1)) .v) (.rational 862689 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1385762 1) .v) (.rational 2867354 1)) .v) (.rational 1481592 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1689725 1) .v) (.rational 3480544 1)) .v) (.rational 1790819 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1486611 1) .v) (.rational 3048248
    1)) .v) (.rational 1561637 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    950521 1) .v) (.rational 1940176 1)) .v) (.rational 989655 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 438223 1) .v) (.rational 890492 1)) .v) (.rational 452269 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 142032 1) .v) (.rational 287364 1))
    .v) (.rational 145332 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 30710 1)
    .v) (.rational 61876 1)) .v) (.rational 31166 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3976 1) .v) (.rational 7980 1)) .v) (.rational 4004 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 233 1) .v) (.rational 466 1)) .v) (.rational 233 1))
    (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 608 1) .v) (.rational 1216 1)) .v) (.rational 608 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6080 1) .v) (.rational 12160 1)) .v) (.rational 6080
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 27684 1) .v) (.rational 55368 1)) .v)
    (.rational 27684 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 75876 1) .v)
    (.rational 151752 1)) .v) (.rational 75876 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 139387 1) .v) (.rational 278774 1)) .v) (.rational 139387 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 180776 1) .v) (.rational 361552 1)) .v) (.rational
    180776 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 169708 1) .v) (.rational
    339416 1)) .v) (.rational 169708 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 116192 1) .v) (.rational 232384 1)) .v) (.rational 116192 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 57586 1) .v) (.rational 115172 1)) .v) (.rational
    57586 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 20152 1) .v) (.rational
    40304 1)) .v) (.rational 20152 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4728 1) .v) (.rational 9456 1)) .v) (.rational 4728 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 668 1) .v) (.rational 1336 1)) .v) (.rational 668 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 43 1) .v) (.rational 86 1)) .v) (.rational 43 1))
    (.pow .g 12))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1040

namespace FullLow1041
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow1.c140 e f g v*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow0.c230 e f g v*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_0 e g v*e^3+1*SmallGap.ReducedLayers.low0_100_1 e
    g v*e^4+12*SmallGap.ReducedLayers.low0_001_0 e g v*e^2+4*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_101_0 e g v*e^2+1*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^3+6*SmallGap.ReducedLayers.low1_002_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 150 1) .v) (.rational 4480 1)) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 130 1) .v) (.rational 2934 1)) .v) (.rational 37198 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 325 1) .v) (.rational 4538 1)) .v) (.rational 46337 1)) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 2399 1) .v) (.rational 27458 1)) .v) (.rational
    194472 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7197 1) .v) (.rational 58082 1)) .v)
    (.rational 335159 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7802 1) .v) (.rational
    40612 1)) .v) (.rational 198623 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 20646 1) .v) (.rational 161828 1)) .v) (.rational 719852
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 72261 1) .v) (.rational 436404 1)) .v)
    (.rational 1601822 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 97907 1) .v)
    (.rational 440900 1)) .v) (.rational 1330567 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 64115 1) .v) (.rational 210128 1)) .v) (.rational 509020 1)) (.pow .g 3))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 109545
    1) .v) (.rational 667194 1)) .v) (.rational 2009377 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 438180 1) .v) (.rational 2190396 1)) .v) (.rational 5539684 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 708774 1) .v) (.rational 2872214 1)) .v) (.rational 6020765
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 592692 1) .v) (.rational
    1937786 1)) .v) (.rational 3288436 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 270077 1) .v) (.rational 718720 1)) .v) (.rational 953860 1)) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    399698 1) .v) (.rational 2026406 1)) .v) (.rational 4388146 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1798641 1) .v) (.rational 7838846 1)) .v) (.rational 14571013 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3371840 1) .v) (.rational 12577538 1)) .v) (.rational
    19825994 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3407782 1) .v)
    (.rational 10889200 1)) .v) (.rational 14330175 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2001866 1) .v) (.rational 5528642 1)) .v) (.rational 5975386 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 682039 1) .v) (.rational 1660442 1)) .v)
    (.rational 1460084 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1059666 1) .v) (.rational 4661418
    1)) .v) (.rational 7651092 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5298330 1) .v)
    (.rational 20739856 1)) .v) (.rational 29937434 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11274131 1) .v) (.rational 39222872 1)) .v) (.rational 49360231 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 13306544 1) .v) (.rational 41235828 1)) .v)
    (.rational 44848580 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9504630 1)
    .v) (.rational 26421600 1)) .v) (.rational 24679461 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4193972 1) .v) (.rational 10595806 1)) .v) (.rational 8504676 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1111483 1) .v) (.rational 2601614 1)) .v)
    (.rational 1817504 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2103004 1) .v)
    (.rational 8239836 1)) .v) (.rational 10740597 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11566522 1) .v) (.rational 41397850 1)) .v) (.rational 48613299 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 27507008 1) .v) (.rational 89922614 1)) .v) (.rational
    94608840 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 37032621 1) .v)
    (.rational 110813852 1)) .v) (.rational 104006993 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 31011692 1) .v) (.rational 85378806 1)) .v) (.rational 71375941 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 16687678 1) .v) (.rational 42638870
    1)) .v) (.rational 31859196 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5739982 1) .v) (.rational 13779182 1)) .v) (.rational 9298874 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1207599 1) .v) (.rational 2764352 1)) .v) (.rational
    1715090 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3171166 1) .v)
    (.rational 11256458 1)) .v) (.rational 12129344 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19026996 1) .v) (.rational 62952718 1)) .v) (.rational 62477003 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 49968292 1) .v) (.rational 154123008 1)) .v) (.rational
    140417373 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 75427330 1) .v)
    (.rational 217241944 1)) .v) (.rational 181335976 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 72228555 1) .v) (.rational 194939952 1)) .v) (.rational 149119399 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 45647196 1) .v) (.rational
    116108786 1)) .v) (.rational 81680967 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19167814 1) .v) (.rational 46313598 1)) .v) (.rational 30190740 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5236086 1) .v) (.rational 12133050 1)) .v)
    (.rational 7413246 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 879049 1)
    .v) (.rational 1972978 1)) .v) (.rational 1145254 1)) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 3648606 1) .v) (.rational 11866082 1)) .v) (.rational
    10927404 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 23715939 1) .v) (.rational 73037098
    1)) .v) (.rational 63143591 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 68120432 1)
    .v) (.rational 198673432 1)) .v) (.rational 160932148 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 113787047 1) .v) (.rational 314613268 1)) .v) (.rational 238558075 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 122353646 1) .v) (.rational
    321449644 1)) .v) (.rational 228306300 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 88501548 1) .v) (.rational 221740872 1)) .v) (.rational 147913080 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 43657760 1) .v) (.rational 104841898 1)) .v)
    (.rational 66014754 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 14553607 1)
    .v) (.rational 33702568 1)) .v) (.rational 20176098 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3168966 1) .v) (.rational 7122168 1)) .v) (.rational 4087782 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 419768 1) .v) (.rational 920592 1)) .v)
    (.rational 510491 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 3185943 1) .v) (.rational 9566454 1)) .v) (.rational 7732774 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 22301601 1) .v) (.rational 64214554 1)) .v) (.rational 49509611
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 69512832 1) .v) (.rational 191915348 1))
    .v) (.rational 140953971 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    127156179 1) .v) (.rational 336798906 1)) .v) (.rational 235510301 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 151418498 1) .v) (.rational 385283542 1)) .v) (.rational
    256620719 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 123015673 1) .v)
    (.rational 301362714 1)) .v) (.rational 191522931 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 69429165 1) .v) (.rational 164260872 1)) .v) (.rational 99915486 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 27160893 1) .v) (.rational 62292018
    1)) .v) (.rational 36423687 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7203516 1) .v) (.rational 16079272 1)) .v) (.rational 9083642 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1233963 1) .v) (.rational 2689940 1)) .v) (.rational
    1475109 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 124343 1) .v)
    (.rational 265098 1)) .v) (.rational 141513 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2077726 1) .v) (.rational 5791404 1)) .v)
    (.rational 4196044 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 15582945 1) .v) (.rational
    42077668 1)) .v) (.rational 29454772 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    52361107 1) .v) (.rational 136933468 1)) .v) (.rational 92523809 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 104005863 1) .v) (.rational 263467244 1)) .v) (.rational
    171753960 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 135660683 1) .v)
    (.rational 333099820 1)) .v) (.rational 209535550 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 122020195 1) .v) (.rational 290754622 1)) .v) (.rational 176647353 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 77282133 1) .v) (.rational
    179023426 1)) .v) (.rational 105228555 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34534308 1) .v) (.rational 77941836 1)) .v) (.rational 44432455 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10720925 1) .v) (.rational 23630298 1)) .v)
    (.rational 13102556 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2228307 1)
    .v) (.rational 4806282 1)) .v) (.rational 2599206 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 288739 1) .v) (.rational 609930 1)) .v) (.rational 322231 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 20234 1) .v) (.rational 41772 1)) .v)
    (.rational 21538 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 981225 1) .v) (.rational 2548998 1)) .v) (.rational 1682415
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7849800 1) .v) (.rational 19920848 1)) .v)
    (.rational 12833990 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 28275870 1) .v)
    (.rational 70074082 1)) .v) (.rational 44033037 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 60559590 1) .v) (.rational 146544006 1)) .v) (.rational 89774372 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 85756448 1) .v) (.rational 202664652 1)) .v)
    (.rational 121025597 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 84429918
    1) .v) (.rational 194968140 1)) .v) (.rational 113531849 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 59125140 1) .v) (.rational 133528754 1)) .v) (.rational 75879998
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 29587180 1) .v) (.rational
    65425238 1)) .v) (.rational 36326836 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10459161 1) .v) (.rational 22674582 1)) .v) (.rational 12319824 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2532942 1) .v) (.rational 5389616 1)) .v)
    (.rational 2869755 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 395534 1)
    .v) (.rational 826408 1)) .v) (.rational 431611 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 35274 1) .v) (.rational 72280 1)) .v) (.rational 37006 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1326 1) .v) (.rational 2652 1)) .v) (.rational 1326
    1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 317230 1) .v) (.rational 770370 1)) .v) (.rational 469012 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2696455 1) .v) (.rational 6441934 1)) .v) (.rational
    3859291 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10362236 1) .v) (.rational
    24344458 1)) .v) (.rational 14342936 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23787670 1) .v) (.rational 54942412 1)) .v) (.rational 31819479 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 36300632 1) .v) (.rational 82421414 1)) .v)
    (.rational 46908926 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 38759383 1)
    .v) (.rational 86520902 1)) .v) (.rational 48389454 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 29660398 1) .v) (.rational 65114812 1)) .v) (.rational 35794936 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 16370145 1) .v) (.rational 35362036
    1)) .v) (.rational 19116130 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6457080 1) .v) (.rational 13733392 1)) .v) (.rational 7305564 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1771382 1) .v) (.rational 3711704 1)) .v) (.rational
    1944351 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 319838 1) .v)
    (.rational 660462 1)) .v) (.rational 340872 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 33973 1) .v) (.rational 69108 1)) .v) (.rational 35135 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1594 1) .v) (.rational 3188 1)) .v) (.rational 1594
    1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 62856 1) .v) (.rational 143038 1)) .v) (.rational 81102 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 565704 1) .v) (.rational 1274052 1)) .v) (.rational
    715412 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2309547 1) .v) (.rational 5145848
    1)) .v) (.rational 2860343 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5653752 1) .v) (.rational 12458536 1)) .v) (.rational 6852486 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9239843 1) .v) (.rational 20132688 1)) .v) (.rational
    10953867 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10617425 1) .v)
    (.rational 22872772 1)) .v) (.rational 12307865 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8793914 1) .v) (.rational 18730782 1)) .v) (.rational 9967622 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5288563 1) .v) (.rational 11139240 1)) .v)
    (.rational 5862759 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2291452 1)
    .v) (.rational 4774136 1)) .v) (.rational 2485726 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 697423 1) .v) (.rational 1437808 1)) .v) (.rational 740827 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 141479 1) .v) (.rational 288714 1)) .v)
    (.rational 147263 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 17165 1) .v)
    (.rational 34680 1)) .v) (.rational 17515 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 941 1) .v) (.rational 1882 1)) .v) (.rational 941 1)) (.pow .g 12))) (.pow .f 2)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5760 1) .v) (.rational 12308 1)) .v) (.rational 6548 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 54720 1) .v) (.rational 116318 1)) .v) (.rational 61598 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 236458 1) .v) (.rational 499890 1)) .v) (.rational 263432 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 614533 1) .v) (.rational 1291752
    1)) .v) (.rational 677219 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1069814 1) .v) (.rational 2235458 1)) .v) (.rational 1165644 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1314385 1) .v) (.rational 2729864 1)) .v) (.rational 1415479 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1168895 1) .v) (.rational 2412816
    1)) .v) (.rational 1243921 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    758407 1) .v) (.rational 1555948 1)) .v) (.rational 797541 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 356483 1) .v) (.rational 727012 1)) .v) (.rational 370529 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 118459 1) .v) (.rational 240218 1))
    .v) (.rational 121759 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 26435 1)
    .v) (.rational 53326 1)) .v) (.rational 26891 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3560 1) .v) (.rational 7148 1)) .v) (.rational 3588 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 219 1) .v) (.rational 438 1)) .v) (.rational 219 1))
    (.pow .g 12))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1041

namespace FullLow1042
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow2.c140 e f g v*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow1.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_0 e g v*e^2+4*SmallGap.ReducedLayers.low0_100_1 e
    g v*e^3+1*SmallGap.ReducedLayers.low0_100_2 e g v*e^4+12*SmallGap.ReducedLayers.low0_001_0 e g
    v*e^1+12*SmallGap.ReducedLayers.low0_001_1 e g v*e^2+4*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_101_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^2+1*SmallGap.ReducedLayers.low1_101_2 e g v*e^3+3*SmallGap.ReducedLayers.low1_002_0 e g
    v+6*SmallGap.ReducedLayers.low1_002_1 e g v*e^1+3*SmallGap.ReducedLayers.low1_002_2 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    480 1) .v) (.rational 15720 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 350 1) .v)
    (.rational 8520 1)) .v) (.rational 123341 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 875
    1) .v) (.rational 12820 1)) .v) (.rational 150199 1)) .g))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 6081 1) .v) (.rational 73634 1)) .v) (.rational 607580 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 18243 1) .v) (.rational 150732 1)) .v) (.rational
    1019015 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 19783 1) .v) (.rational 99072
    1)) .v) (.rational 579294 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 49524 1) .v) (.rational 406788 1)) .v) (.rational 2113204 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 173334 1) .v) (.rational 1065158 1)) .v) (.rational
    4566532 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 234898 1) .v) (.rational 1030266
    1)) .v) (.rational 3636992 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    153910 1) .v) (.rational 461184 1)) .v) (.rational 1303880 1)) (.pow .g 3)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 249055 1) .v)
    (.rational 1587782 1)) .v) (.rational 5529765 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    996220 1) .v) (.rational 5091534 1)) .v) (.rational 14812371 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1611612 1) .v) (.rational 6479760 1)) .v) (.rational 15491852 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1348066 1) .v) (.rational 4217780 1)) .v)
    (.rational 8025699 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 614621 1)
    .v) (.rational 1506360 1)) .v) (.rational 2163545 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 859896 1) .v)
    (.rational 4581570 1)) .v) (.rational 11292755 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3869532 1) .v) (.rational 17410994 1)) .v) (.rational 36533710 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7255028 1) .v) (.rational 27375284 1)) .v) (.rational
    48137924 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7334782 1) .v)
    (.rational 23193874 1)) .v) (.rational 33447422 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4311238 1) .v) (.rational 11540288 1)) .v) (.rational 13312411 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1470048 1) .v) (.rational 3416450 1)) .v)
    (.rational 3099170 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2146405 1) .v) (.rational 9980674
    1)) .v) (.rational 18336737 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 10732025 1) .v)
    (.rational 43825208 1)) .v) (.rational 70186060 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22841797 1) .v) (.rational 81746446 1)) .v) (.rational 112857133 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 26975038 1) .v) (.rational 84801322 1)) .v)
    (.rational 99742129 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 19287113 1)
    .v) (.rational 53728730 1)) .v) (.rational 53348767 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8523211 1) .v) (.rational 21398092 1)) .v) (.rational 17934837 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2263165 1) .v) (.rational 5250672
    1)) .v) (.rational 3778553 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3975158 1) .v)
    (.rational 16549510 1)) .v) (.rational 23789740 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 21863369 1) .v) (.rational 82332246 1)) .v) (.rational 105779957 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 52015879 1) .v) (.rational 177146372 1)) .v) (.rational
    202043495 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 70096188 1) .v)
    (.rational 216484478 1)) .v) (.rational 217985650 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 58797484 1) .v) (.rational 165778582 1)) .v) (.rational 147077354 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 31719233 1) .v) (.rational 82575332
    1)) .v) (.rational 64842075 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10948295 1) .v) (.rational 26736790 1)) .v) (.rational 18839261 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2313582 1) .v) (.rational 5400202 1)) .v) (.rational
    3491722 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5518893 1) .v)
    (.rational 20882862 1)) .v) (.rational 24512387 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 33113358 1) .v) (.rational 115914124 1)) .v) (.rational 124502961 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 87015239 1) .v) (.rational 281889998 1)) .v)
    (.rational 275987086 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 131537080
    1) .v) (.rational 395259708 1)) .v) (.rational 351939080 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 126268236 1) .v) (.rational 353627880 1)) .v) (.rational
    286513622 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 80097402 1) .v)
    (.rational 210652006 1)) .v) (.rational 156037074 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 33811161 1) .v) (.rational 84356954 1)) .v) (.rational 57683548 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 9301374 1) .v) (.rational 22278032
    1)) .v) (.rational 14259531 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1575647 1) .v) (.rational 3665276 1)) .v) (.rational 2229299 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 5734442 1) .v) (.rational 19896254 1)) .v)
    (.rational 19757554 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 37273873 1) .v)
    (.rational 121740286 1)) .v) (.rational 112910474 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 107153024 1) .v) (.rational 329555852 1)) .v) (.rational 284836409 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 179329029 1) .v) (.rational 520201332 1))
    .v) (.rational 418604215 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    193463280 1) .v) (.rational 531001332 1)) .v) (.rational 398238405 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 140635947 1) .v) (.rational 367022616 1)) .v) (.rational
    257459374 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 69868452 1) .v)
    (.rational 174496780 1)) .v) (.rational 115216981 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 23516493 1) .v) (.rational 56628438 1)) .v) (.rational 35494509 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5186102 1) .v) (.rational 12128920
    1)) .v) (.rational 7281992 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    698325 1) .v) (.rational 1594350 1)) .v) (.rational 923151 1)) (.pow .g 9)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4399422 1) .v) (.rational 14070140 1))
    .v) (.rational 12155995 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 30795954 1) .v)
    (.rational 93992380 1)) .v) (.rational 77141051 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 96090096 1) .v) (.rational 279910782 1)) .v) (.rational 217916942 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 176193174 1) .v) (.rational 490322004 1)) .v)
    (.rational 361918568 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 210669979
    1) .v) (.rational 561160172 1)) .v) (.rational 393008046 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 172216037 1) .v) (.rational 440404404 1)) .v) (.rational
    293317673 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 98058047 1) .v)
    (.rational 241698608 1)) .v) (.rational 153671395 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 38826188 1) .v) (.rational 92661634 1)) .v) (.rational 56522225 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10464612 1) .v) (.rational 24286834
    1)) .v) (.rational 14287469 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1831046 1) .v) (.rational 4144320 1)) .v) (.rational 2360382 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 189708 1) .v) (.rational 418388 1)) .v) (.rational 230769 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2420874 1) .v) (.rational 7159574 1)) .v) (.rational 5498451 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 18156555 1) .v) (.rational 51810932 1)) .v) (.rational 38318126 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 61085141 1) .v) (.rational 168162034 1)) .v)
    (.rational 119639603 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 121678999
    1) .v) (.rational 323277710 1)) .v) (.rational 221145627 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 159480487 1) .v) (.rational 409326208 1)) .v) (.rational
    269310826 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 144497408 1) .v)
    (.rational 358874836 1)) .v) (.rational 227365099 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 92474872 1) .v) (.rational 222740382 1)) .v) (.rational 136168558 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 41916165 1) .v) (.rational 98166704
    1)) .v) (.rational 58066293 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    13263117 1) .v) (.rational 30274410 1)) .v) (.rational 17375927 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2827173 1) .v) (.rational 6298200 1)) .v) (.rational
    3514537 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 378779 1) .v)
    (.rational 822588 1)) .v) (.rational 446161 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 27756 1) .v) (.rational 58386 1)) .v) (.rational 30630 1)) (.pow .g 11))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    904648 1) .v) (.rational 2479036 1)) .v) (.rational 1720020 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7237184 1) .v) (.rational 19309270 1)) .v) (.rational 13042442 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 26106431 1) .v) (.rational 67791046 1)) .v)
    (.rational 44536368 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 56094297 1)
    .v) (.rational 141758480 1)) .v) (.rational 90531038 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 79870884 1) .v) (.rational 196501686 1)) .v) (.rational 121974930 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 79291315 1) .v) (.rational
    190049252 1)) .v) (.rational 114709484 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 56185424 1) .v) (.rational 131339422 1)) .v) (.rational 77152760 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 28573051 1) .v) (.rational 65224836 1)) .v)
    (.rational 37338102 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10320484 1)
    .v) (.rational 23032774 1)) .v) (.rational 12866466 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2571357 1) .v) (.rational 5613342 1)) .v) (.rational 3062622 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 416829 1) .v) (.rational 889180 1)) .v)
    (.rational 473612 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 39068 1) .v)
    (.rational 81108 1)) .v) (.rational 42040 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1572 1) .v) (.rational 3144 1)) .v) (.rational 1572 1)) (.pow .g 12)))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    205788 1) .v) (.rational 523224 1)) .v) (.rational 331978 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1749198 1) .v) (.rational 4363020 1)) .v) (.rational 2718239 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6732646 1) .v) (.rational 16465982 1)) .v) (.rational
    10065172 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 15510885 1) .v)
    (.rational 37182992 1)) .v) (.rational 22286471 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 23814041 1) .v) (.rational 55949308 1)) .v) (.rational 32869074 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 25660856 1) .v) (.rational 59093356 1)) .v)
    (.rational 34023714 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 19892971 1)
    .v) (.rational 44918146 1)) .v) (.rational 25351082 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11174702 1) .v) (.rational 24752874 1)) .v) (.rational 13699888 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4512165 1) .v) (.rational 9809572
    1)) .v) (.rational 5327006 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1276266 1) .v) (.rational 2723748 1)) .v) (.rational 1451739 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 239763 1) .v) (.rational 502052 1)) .v) (.rational 262566 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 26813 1) .v) (.rational 54986 1))
    .v) (.rational 28173 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 1346 1)
    .v) (.rational 2692 1)) .v) (.rational 1346 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21528 1) .v)
    (.rational 50832 1)) .v) (.rational 29764 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    193752 1) .v) (.rational 451728 1)) .v) (.rational 261508 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 792358 1) .v) (.rational 1823056 1)) .v) (.rational 1042719 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1947152 1) .v) (.rational 4418902 1)) .v)
    (.rational 2495601 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3202999 1)
    .v) (.rational 7167162 1)) .v) (.rational 3994674 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3716825 1) .v) (.rational 8198648 1)) .v) (.rational 4508082 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3121363 1) .v) (.rational 6786854 1)) .v)
    (.rational 3680868 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1912613 1)
    .v) (.rational 4099656 1)) .v) (.rational 2193084 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 849337 1) .v) (.rational 1795102 1)) .v) (.rational 947286 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 266819 1) .v) (.rational 556192 1)) .v)
    (.rational 289594 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 56347 1) .v)
    (.rational 115866 1)) .v) (.rational 59533 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7191 1) .v) (.rational 14586 1)) .v) (.rational 7395 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 420 1) .v) (.rational 840 1)) .v) (.rational 420 1))
    (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1042

namespace FullLow1043
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow3.c140 e f g v*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow2.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_0 e g v*e^1+6*SmallGap.ReducedLayers.low0_100_1 e
    g v*e^2+4*SmallGap.ReducedLayers.low0_100_2 e g v*e^3+1*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^4+4*SmallGap.ReducedLayers.low0_001_0 e g v+12*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^1+12*SmallGap.ReducedLayers.low0_001_2 e g v*e^2+4*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_101_0 e g v+3*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_101_2 e g v*e^2+1*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_002_1 e g v+6*SmallGap.ReducedLayers.low1_002_2 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_002_3 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 850 1) .v)
    (.rational 31600 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 500 1) .v) (.rational
    13850 1)) .v) (.rational 235205 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1250 1) .v)
    (.rational 20250 1)) .v) (.rational 279750 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 8294 1) .v) (.rational 110886 1)) .v) (.rational 1093418 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 24882 1) .v) (.rational 218618 1)) .v) (.rational 1781584
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 26992 1) .v) (.rational 132848 1)) .v)
    (.rational 967334 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 64516 1) .v) (.rational 573570 1)) .v) (.rational 3569914 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 225806 1) .v) (.rational 1449406 1)) .v) (.rational 7472138 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 306082 1) .v) (.rational 1324198 1)) .v)
    (.rational 5671900 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 200690 1)
    .v) (.rational 540044 1)) .v) (.rational 1874768 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 309034 1) .v) (.rational
    2114184 1)) .v) (.rational 8727136 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1236136 1)
    .v) (.rational 6586412 1)) .v) (.rational 22642076 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2000036 1) .v) (.rational 8061048 1)) .v) (.rational 22645106 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1673632 1) .v) (.rational 4987828 1)) .v) (.rational
    10977492 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 763610 1) .v)
    (.rational 1679806 1)) .v) (.rational 2666336 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1010428 1) .v)
    (.rational 5775162 1)) .v) (.rational 16567877 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4546926 1) .v) (.rational 21475802 1)) .v) (.rational 52059416 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8526248 1) .v) (.rational 32901770 1)) .v) (.rational
    66075518 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8622880 1) .v)
    (.rational 27075558 1)) .v) (.rational 43732414 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5071312 1) .v) (.rational 13087604 1)) .v) (.rational 16363403 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1730574 1) .v) (.rational 3789686 1)) .v)
    (.rational 3551248 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2366022 1) .v) (.rational 11842776
    1)) .v) (.rational 24833961 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 11830110 1) .v)
    (.rational 51186058 1)) .v) (.rational 92742084 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25184124 1) .v) (.rational 93854052 1)) .v) (.rational 144884542 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 29755836 1) .v) (.rational 95694340 1)) .v)
    (.rational 123893812 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 21293298
    1) .v) (.rational 59713932 1)) .v) (.rational 63981087 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9420930 1) .v) (.rational 23540182 1)) .v) (.rational 20842464 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2504896 1) .v) (.rational 5761654
    1)) .v) (.rational 4311612 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4052664 1) .v)
    (.rational 18230990 1)) .v) (.rational 29400085 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22289652 1) .v) (.rational 89652942 1)) .v) (.rational 128164642 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 53048704 1) .v) (.rational 190689996 1)) .v) (.rational
    239655293 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 71546778 1) .v)
    (.rational 230609730 1)) .v) (.rational 253037716 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 60098720 1) .v) (.rational 175179552 1)) .v) (.rational 167392725 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 32488120 1) .v) (.rational 86902612
    1)) .v) (.rational 72756146 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11243680 1) .v) (.rational 28167386 1)) .v) (.rational 21036825 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2383122 1) .v) (.rational 5723706 1)) .v) (.rational
    3921486 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5098610 1) .v)
    (.rational 20896478 1)) .v) (.rational 27135776 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 30591660 1) .v) (.rational 114980618 1)) .v) (.rational 135694525 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 80433008 1) .v) (.rational 277399578 1)) .v)
    (.rational 296176987 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 121741490
    1) .v) (.rational 386465518 1)) .v) (.rational 372358086 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 117118814 1) .v) (.rational 344388874 1)) .v) (.rational
    299755908 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 74534576 1) .v)
    (.rational 205037618 1)) .v) (.rational 162252861 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 31602572 1) .v) (.rational 82402462 1)) .v) (.rational 60023689 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8742698 1) .v) (.rational 21928742
    1)) .v) (.rational 14950592 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1490668 1) .v) (.rational 3645720 1)) .v) (.rational 2364430 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 4663808 1) .v) (.rational 17535340 1)) .v)
    (.rational 19050516 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 30314752 1) .v)
    (.rational 106560076 1)) .v) (.rational 107528438 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 87215308 1) .v) (.rational 286812280 1)) .v) (.rational 268157362 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 146221922 1) .v) (.rational 450932612 1)) .v)
    (.rational 390314674 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 158226266
    1) .v) (.rational 459603534 1)) .v) (.rational 368911417 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 115547190 1) .v) (.rational 318212094 1)) .v) (.rational
    238000142 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 57771984 1) .v)
    (.rational 152115462 1)) .v) (.rational 106858860 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19610634 1) .v) (.rational 49827502 1)) .v) (.rational 33204700 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4371618 1) .v) (.rational 10808278
    1)) .v) (.rational 6896810 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    596368 1) .v) (.rational 1441340 1)) .v) (.rational 885274 1)) (.pow .g 9)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3020212 1) .v) (.rational 10452946 1))
    .v) (.rational 9788447 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 21141484 1) .v)
    (.rational 69436168 1)) .v) (.rational 61492424 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 66033748 1) .v) (.rational 205897032 1)) .v) (.rational 172178471 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 121363196 1) .v) (.rational 359808792 1)) .v)
    (.rational 284012202 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 145685970
    1) .v) (.rational 411839360 1)) .v) (.rational 307227602 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 119805922 1) .v) (.rational 324270250 1)) .v) (.rational
    229316052 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 68793048 1) .v)
    (.rational 179202968 1)) .v) (.rational 120708667 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 27551184 1) .v) (.rational 69460228 1)) .v) (.rational 44821694 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 7538212 1) .v) (.rational 18480852
    1)) .v) (.rational 11484269 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1344872 1) .v) (.rational 3212484 1)) .v) (.rational 1927284 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 142800 1) .v) (.rational 331006 1)) .v) (.rational 191110 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1313580 1) .v) (.rational 4191392 1)) .v) (.rational 3459836 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9851850 1) .v) (.rational 30186212 1)) .v) (.rational 23907961 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 33187830 1) .v) (.rational 97651958 1)) .v)
    (.rational 74120440 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 66301170 1)
    .v) (.rational 187485370 1)) .v) (.rational 136321327 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 87327838 1) .v) (.rational 237697564 1)) .v) (.rational 165652051 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 79713634 1) .v) (.rational
    209341032 1)) .v) (.rational 140056343 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 51554922 1) .v) (.rational 131015406 1)) .v) (.rational 84364707 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 23706924 1) .v) (.rational 58477888 1)) .v)
    (.rational 36353509 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 7646994 1)
    .v) (.rational 18352268 1)) .v) (.rational 11043561 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1672050 1) .v) (.rational 3905116 1)) .v) (.rational 2276578 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 231686 1) .v) (.rational 524408 1)) .v)
    (.rational 295279 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 17756 1) .v)
    (.rational 38446 1)) .v) (.rational 20690 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 344580 1) .v) (.rational
    1014168 1)) .v) (.rational 750222 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2756640 1)
    .v) (.rational 7866300 1)) .v) (.rational 5647626 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9959556 1) .v) (.rational 27546042 1)) .v) (.rational 19173485 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 21475692 1) .v) (.rational 57576476 1)) .v)
    (.rational 38829202 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 30762050 1)
    .v) (.rational 79993234 1)) .v) (.rational 52264557 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 30815424 1) .v) (.rational 77805114 1)) .v) (.rational 49276215 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 22116568 1) .v) (.rational 54294990
    1)) .v) (.rational 33367962 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11445846 1) .v) (.rational 27358410 1)) .v) (.rational 16337184 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4232376 1) .v) (.rational 9857826 1)) .v) (.rational
    5725777 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1087956 1) .v)
    (.rational 2467634 1)) .v) (.rational 1393957 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 183868 1) .v) (.rational 404696 1)) .v) (.rational 221763 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 18234 1) .v) (.rational 38610 1)) .v) (.rational
    20376 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 794 1) .v) (.rational
    1588 1)) .v) (.rational 794 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 41256 1) .v) (.rational 111984 1)) .v)
    (.rational 75132 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 350676 1) .v) (.rational
    930336 1)) .v) (.rational 611334 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1352292
    1) .v) (.rational 3504148 1)) .v) (.rational 2252842 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3128670 1) .v) (.rational 7915376 1)) .v) (.rational 4974703 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4837938 1) .v) (.rational 11948554 1))
    .v) (.rational 7337106 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5269446
    1) .v) (.rational 12706418 1)) .v) (.rational 7621803 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4147526 1) .v) (.rational 9767666 1)) .v) (.rational 5723904 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2378552 1) .v) (.rational 5472678 1)) .v)
    (.rational 3133857 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 987280 1)
    .v) (.rational 2219346 1)) .v) (.rational 1242048 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 289578 1) .v) (.rational 635534 1)) .v) (.rational 347451 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 57050 1) .v) (.rational 121994 1)) .v)
    (.rational 65046 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 6790 1) .v)
    (.rational 14090 1)) .v) (.rational 7300 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 370 1) .v) (.rational 740 1)) .v) (.rational 370 1)) (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1043

namespace FullLow1044
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c140 e f g v*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow3.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_100_0 e g v+4*SmallGap.ReducedLayers.low0_100_1 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_100_2 e g v*e^2+4*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^3+1*SmallGap.ReducedLayers.low0_100_4 e g v*e^4+4*SmallGap.ReducedLayers.low0_001_1 e g
    v+12*SmallGap.ReducedLayers.low0_001_2 e g v*e^1+12*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^2+4*SmallGap.ReducedLayers.low0_001_4 e g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_101_1 e g v+3*SmallGap.ReducedLayers.low1_101_2 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_101_3 e g v*e^2+1*SmallGap.ReducedLayers.low1_101_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_002_2 e g v+6*SmallGap.ReducedLayers.low1_002_3 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_002_4 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 900 1) .v) (.rational
    39800 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 400 1) .v) (.rational 13620 1))
    .v) (.rational 282250 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1000 1) .v) (.rational
    19340 1)) .v) (.rational 327680 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 6416 1) .v) (.rational 101594 1)) .v) (.rational 1241502 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19248 1) .v) (.rational 192092 1)) .v) (.rational 1962721 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 20888 1) .v) (.rational 105742 1)) .v) (.rational
    1014126 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 48174 1) .v) (.rational 492782 1)) .v) (.rational 3806425 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 168609 1) .v) (.rational 1194210 1)) .v) (.rational 7701204 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 228623 1) .v) (.rational 1013018 1)) .v)
    (.rational 5541437 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 150035 1)
    .v) (.rational 357338 1)) .v) (.rational 1657056 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 221493 1) .v) (.rational
    1714842 1)) .v) (.rational 8674267 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 885972 1)
    .v) (.rational 5160150 1)) .v) (.rational 21742992 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1433862 1) .v) (.rational 6004826 1)) .v) (.rational 20677378 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1200684 1) .v) (.rational 3455762 1)) .v) (.rational
    9239447 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 548525 1) .v)
    (.rational 1057000 1)) .v) (.rational 1929907 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 688790 1) .v)
    (.rational 4425560 1)) .v) (.rational 15227249 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3099555 1) .v) (.rational 16036276 1)) .v) (.rational 46360658 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5813732 1) .v) (.rational 23781952 1)) .v) (.rational
    56427556 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5883472 1) .v)
    (.rational 18826414 1)) .v) (.rational 35260860 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3464204 1) .v) (.rational 8733610 1)) .v) (.rational 12188000 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1184125 1) .v) (.rational 2445106 1)) .v)
    (.rational 2392138 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1512722 1) .v) (.rational 8492838
    1)) .v) (.rational 20867869 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7563610 1) .v)
    (.rational 36031526 1)) .v) (.rational 75886117 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16106926 1) .v) (.rational 64708494 1)) .v) (.rational 114846287 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 19046044 1) .v) (.rational 64566414 1)) .v)
    (.rational 94628697 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 13648102 1)
    .v) (.rational 39505900 1)) .v) (.rational 46937602 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6050314 1) .v) (.rational 15364064 1)) .v) (.rational 14749689 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1612474 1) .v) (.rational 3746084
    1)) .v) (.rational 2994714 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2380000 1) .v)
    (.rational 11986658 1)) .v) (.rational 22188242 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13090000 1) .v) (.rational 58160402 1)) .v) (.rational 94687850 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 31168658 1) .v) (.rational 122039852 1)) .v) (.rational
    173036734 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 42083961 1) .v)
    (.rational 145756922 1)) .v) (.rational 178494275 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 35417216 1) .v) (.rational 109661074 1)) .v) (.rational 115664511 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19198438 1) .v) (.rational 54141092
    1)) .v) (.rational 49602893 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6667438 1) .v) (.rational 17572650 1)) .v) (.rational 14316512 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1418409 1) .v) (.rational 3595172 1)) .v) (.rational
    2693734 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2667607 1) .v)
    (.rational 12202998 1)) .v) (.rational 17890925 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16005642 1) .v) (.rational 66475680 1)) .v) (.rational 87971265 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 42110729 1) .v) (.rational 158905768 1)) .v) (.rational
    188849102 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 63835260 1) .v)
    (.rational 219742438 1)) .v) (.rational 233909344 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 61570615 1) .v) (.rational 194945978 1)) .v) (.rational 186240191 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 39332962 1) .v) (.rational
    116026918 1)) .v) (.rational 100349491 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16761459 1) .v) (.rational 46838318 1)) .v) (.rational 37252814 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4665040 1) .v) (.rational 12573420 1)) .v)
    (.rational 9375445 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 800326 1)
    .v) (.rational 2112602 1)) .v) (.rational 1500776 1)) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 2078500 1) .v) (.rational 8687284 1)) .v) (.rational
    10518437 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 13510250 1) .v) (.rational 52377700
    1)) .v) (.rational 58571327 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 38902368 1)
    .v) (.rational 140050052 1)) .v) (.rational 144261882 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 65350274 1) .v) (.rational 219190328 1)) .v) (.rational 207871462 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 70950146 1) .v) (.rational
    223043928 1)) .v) (.rational 195256912 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 52067727 1) .v) (.rational 154756168 1)) .v) (.rational 125864915 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 26208316 1) .v) (.rational 74449140 1)) .v)
    (.rational 56814086 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8972798 1)
    .v) (.rational 24639906 1)) .v) (.rational 17843658 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2020568 1) .v) (.rational 5414454 1)) .v) (.rational 3754812 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 278543 1) .v) (.rational 731082 1)) .v)
    (.rational 486694 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1069434 1) .v) (.rational 4097180 1)) .v) (.rational 4232309 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 7486038 1) .v) (.rational 27039944 1)) .v) (.rational 26289907
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 23406598 1) .v) (.rational 79781228 1))
    .v) (.rational 72894760 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    43121094 1) .v) (.rational 139025180 1)) .v) (.rational 119365500 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 51970772 1) .v) (.rational 159136506 1)) .v) (.rational
    128643502 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 42994404 1) .v)
    (.rational 125749706 1)) .v) (.rational 96107266 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 24892908 1) .v) (.rational 70022598 1)) .v) (.rational 50898261 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 10079118 1) .v) (.rational 27458422 1)) .v)
    (.rational 19106487 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2796250 1)
    .v) (.rational 7416462 1)) .v) (.rational 4964564 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 507330 1) .v) (.rational 1311068 1)) .v) (.rational 844728 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 54878 1) .v) (.rational 137070 1)) .v)
    (.rational 84360 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 326736 1) .v) (.rational 1149936 1)) .v) (.rational 1038324 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2450520 1) .v) (.rational 8235012 1)) .v) (.rational
    7105434 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8265356 1) .v) (.rational
    26534008 1)) .v) (.rational 21850843 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16558594 1) .v) (.rational 50854892 1)) .v) (.rational 39961435 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 21913448 1) .v) (.rational 64548022 1)) .v)
    (.rational 48447676 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 20145114 1)
    .v) (.rational 57111246 1)) .v) (.rational 41038198 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13159310 1) .v) (.rational 36052712 1)) .v) (.rational 24883017 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 6133161 1) .v) (.rational 16301530
    1)) .v) (.rational 10844230 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2013786 1) .v) (.rational 5204944 1)) .v) (.rational 3345042 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 450615 1) .v) (.rational 1131118 1)) .v) (.rational 701761 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 64327 1) .v) (.rational 155496 1))
    .v) (.rational 92517 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 5120 1)
    .v) (.rational 11642 1)) .v) (.rational 6522 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 44928 1) .v) (.rational
    145488 1)) .v) (.rational 116880 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 359424 1)
    .v) (.rational 1122648 1)) .v) (.rational 872256 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1300554 1) .v) (.rational 3918144 1)) .v) (.rational 2940669 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2813958 1) .v) (.rational 8181756 1)) .v) (.rational
    5928173 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4054027 1) .v)
    (.rational 11390222 1)) .v) (.rational 7968509 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4096500 1) .v) (.rational 11141448 1)) .v) (.rational 7532475 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2976769 1) .v) (.rational 7852512 1)) .v)
    (.rational 5137613 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1567234 1)
    .v) (.rational 4016054 1)) .v) (.rational 2546321 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 593314 1) .v) (.rational 1477048 1)) .v) (.rational 907992 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 157516 1) .v) (.rational 379860 1)) .v)
    (.rational 226005 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 27843 1) .v)
    (.rational 64512 1)) .v) (.rational 36924 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2944 1) .v) (.rational 6442 1)) .v) (.rational 3498 1)) (.pow .g 11))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 141 1) .v) (.rational 282 1)) .v) (.rational 141 1)) (.pow
    .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1044

namespace FullLow1045
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsLow4.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_100_1 e g v+4*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_100_3 e g v*e^2+4*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^3+4*SmallGap.ReducedLayers.low0_001_2 e g v+12*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^1+12*SmallGap.ReducedLayers.low0_001_4 e g v*e^2+4*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_101_2 e g v+3*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_101_4 e g v*e^2+1*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_002_3 e g v+6*SmallGap.ReducedLayers.low1_002_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_002_5 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 570 1) .v) (.rational 32160 1)) .e)
    (.add (.mul (.add (.mul (.add (.mul (.rational 170 1) .v) (.rational 8106 1)) .v) (.rational
    218312 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 425 1) .v) (.rational 11182 1)) .v)
    (.rational 247309 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2667 1) .v) (.rational 56798 1)) .v) (.rational 911756 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8001 1) .v) (.rational 102678 1)) .v) (.rational 1397531 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 8686 1) .v) (.rational 49980 1)) .v) (.rational 685479 1)) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 19542 1)
    .v) (.rational 259548 1)) .v) (.rational 2629822 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 68397 1) .v) (.rational 599852 1)) .v) (.rational 5136988 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 92779 1) .v) (.rational 462732 1)) .v) (.rational 3490649 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 60955 1) .v) (.rational 127932 1))
    .v) (.rational 925850 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 87073 1) .v) (.rational 855074 1)) .v) (.rational 5583447
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 348292 1) .v) (.rational 2472024 1)) .v)
    (.rational 13504308 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 563934 1) .v)
    (.rational 2699988 1)) .v) (.rational 12168599 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 472780 1) .v) (.rational 1399652 1)) .v) (.rational 4945998 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 216461 1) .v) (.rational 360270 1)) .v)
    (.rational 830552 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 259482 1) .v) (.rational 2085408 1)) .v) (.rational
    9024441 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1167669 1) .v) (.rational 7335060 1))
    .v) (.rational 26595795 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2191352 1) .v)
    (.rational 10458546 1)) .v) (.rational 30981264 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2220610 1) .v) (.rational 7874308 1)) .v) (.rational 18187971 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1310638 1) .v) (.rational 3448020 1)) .v)
    (.rational 5730789 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 449631 1)
    .v) (.rational 916908 1)) .v) (.rational 985974 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 536554 1)
    .v) (.rational 3724958 1)) .v) (.rational 11189277 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2682770 1) .v) (.rational 15471810 1)) .v) (.rational 39596382 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5717077 1) .v) (.rational 27119932 1)) .v) (.rational
    58018127 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6771688 1) .v)
    (.rational 26371688 1)) .v) (.rational 46051088 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4866722 1) .v) (.rational 15757638 1)) .v) (.rational 21964464 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2166892 1) .v) (.rational 6030838 1)) .v)
    (.rational 6691870 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 580837 1)
    .v) (.rational 1465428 1)) .v) (.rational 1348520 1)) (.pow .g 6)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 772980 1) .v) (.rational 4747322 1)) .v) (.rational 10471060 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4251390 1) .v) (.rational 22683244 1)) .v) (.rational 43719043
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10132692 1) .v) (.rational 46864914 1))
    .v) (.rational 78076641 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    13711689 1) .v) (.rational 55194442 1)) .v) (.rational 78777003 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11583620 1) .v) (.rational 41108924 1)) .v) (.rational
    50178340 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6314518 1) .v)
    (.rational 20223852 1)) .v) (.rational 21378550 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2209414 1) .v) (.rational 6592742 1)) .v) (.rational 6217459 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 474231 1) .v) (.rational 1363174 1)) .v)
    (.rational 1190002 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 759420 1)
    .v) (.rational 4163128 1)) .v) (.rational 7118488 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4556520 1) .v) (.rational 22416932 1)) .v) (.rational 34394336 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12003152 1) .v) (.rational 53029604 1)) .v) (.rational
    72611990 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 18247660 1) .v)
    (.rational 72754272 1)) .v) (.rational 88703844 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 17685903 1) .v) (.rational 64305062 1)) .v) (.rational 70063177 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 11379372 1) .v) (.rational 38348892 1)) .v)
    (.rational 37777644 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4896114 1)
    .v) (.rational 15609640 1)) .v) (.rational 14168595 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1378992 1) .v) (.rational 4246764 1)) .v) (.rational 3624702 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 239711 1) .v) (.rational 724216 1)) .v)
    (.rational 588784 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    483336 1) .v) (.rational 2374532 1)) .v) (.rational 3295076 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3141684 1) .v) (.rational 14186068 1)) .v) (.rational 18085816 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9059928 1) .v) (.rational 37650604 1)) .v) (.rational
    43980952 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 15271080 1) .v)
    (.rational 58656880 1)) .v) (.rational 62779350 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16674618 1) .v) (.rational 59657760 1)) .v) (.rational 58728947 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 12340467 1) .v) (.rational 41584512 1)) .v)
    (.rational 37968357 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 6283160 1)
    .v) (.rational 20210066 1)) .v) (.rational 17315192 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2182726 1) .v) (.rational 6790452 1)) .v) (.rational 5523327 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 500068 1) .v) (.rational 1518902 1)) .v)
    (.rational 1181195 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 70164 1) .v)
    (.rational 208326 1)) .v) (.rational 154533 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 178956 1) .v) (.rational 791100 1)) .v) (.rational
    923652 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1252692 1) .v) (.rational 5181804 1))
    .v) (.rational 5667264 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3923016 1) .v)
    (.rational 15203624 1)) .v) (.rational 15552080 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7253100 1) .v) (.rational 26420872 1)) .v) (.rational 25287112 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8794098 1) .v) (.rational 30274886 1)) .v)
    (.rational 27187837 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7339566 1)
    .v) (.rational 24059394 1)) .v) (.rational 20381886 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4300807 1) .v) (.rational 13541308 1)) .v) (.rational 10897993 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1768516 1) .v) (.rational 5392424
    1)) .v) (.rational 4150808 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    499963 1) .v) (.rational 1484060 1)) .v) (.rational 1096614 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 92647 1) .v) (.rational 267428 1)) .v) (.rational 189195 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 10209 1) .v) (.rational 28304 1))
    .v) (.rational 18921 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 29160 1) .v) (.rational 116712 1)) .v) (.rational 117864 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 218700 1) .v) (.rational 830412 1)) .v) (.rational
    797796 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 738684 1) .v) (.rational 2663656
    1)) .v) (.rational 2431732 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1484496 1) .v) (.rational 5095940 1)) .v) (.rational 4421528 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1974792 1) .v) (.rational 6478614 1)) .v) (.rational 5351668 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1829190 1) .v) (.rational 5764900
    1)) .v) (.rational 4548479 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1206996 1) .v) (.rational 3676050 1)) .v) (.rational 2781979 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 569691 1) .v) (.rational 1685962 1)) .v) (.rational 1228749 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 189834 1) .v) (.rational 547696 1))
    .v) (.rational 385214 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 43149 1)
    .v) (.rational 121156 1)) .v) (.rational 82064 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6243 1) .v) (.rational 16858 1)) .v) (.rational 10892 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 498 1) .v) (.rational 1246 1)) .v) (.rational 748 1))
    (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1045

namespace FullLow1046
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  3*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_100_2 e g v+4*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_100_4 e g v*e^2+4*SmallGap.ReducedLayers.low0_001_3 e g
    v+12*SmallGap.ReducedLayers.low0_001_4 e g v*e^1+12*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_101_3 e g v+3*SmallGap.ReducedLayers.low1_101_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_101_5 e g v*e^2+3*SmallGap.ReducedLayers.low1_002_4 e g
    v+6*SmallGap.ReducedLayers.low1_002_5 e g v*e^1+3*SmallGap.ReducedLayers.low1_002_6 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 200 1) .v) (.rational 16280 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 30 1) .v) (.rational 2704 1)) .v) (.rational 106293 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 75 1) .v) (.rational 3628 1)) .v) (.rational 117487
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 465 1) .v) (.rational
    17982 1)) .v) (.rational 423224 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1395 1) .v)
    (.rational 31044 1)) .v) (.rational 628845 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1515 1) .v) (.rational 13004 1)) .v) (.rational 292574 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3360 1) .v) (.rational 78004
    1)) .v) (.rational 1151860 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 11760 1) .v)
    (.rational 171286 1)) .v) (.rational 2171970 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15960 1) .v) (.rational 117370 1)) .v) (.rational 1392288 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10500 1) .v) (.rational 20120 1)) .v) (.rational
    322354 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 14655 1) .v) (.rational 244694 1)) .v) (.rational 2280743 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 58620 1) .v) (.rational 677054 1)) .v) (.rational 5324379
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 94980 1) .v) (.rational 685014 1)) .v)
    (.rational 4548214 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 79770 1) .v)
    (.rational 305022 1)) .v) (.rational 1673783 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36645 1) .v) (.rational 54178 1)) .v) (.rational 208581 1)) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 42240 1) .v) (.rational 565252 1)) .v) (.rational 3382554 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 190080 1) .v) (.rational 1924280 1)) .v) (.rational 9658098 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 357060 1) .v) (.rational 2621912 1)) .v)
    (.rational 10794414 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 362670 1)
    .v) (.rational 1854270 1)) .v) (.rational 5982642 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 214950 1) .v) (.rational 749258 1)) .v) (.rational 1732128 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 74220 1) .v) (.rational 183656 1)) .v)
    (.rational 264250 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 82800 1) .v) (.rational 934388 1)) .v)
    (.rational 3748507 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 414000 1) .v) (.rational
    3789700 1)) .v) (.rational 12920622 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    883425 1) .v) (.rational 6462530 1)) .v) (.rational 18385081 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1049700 1) .v) (.rational 6101198 1)) .v) (.rational 14157415 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 758580 1) .v) (.rational 3547966
    1)) .v) (.rational 6587921 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    340590 1) .v) (.rational 1334574 1)) .v) (.rational 1996017 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 92355 1) .v) (.rational 323846 1)) .v) (.rational 411729 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 109260 1) .v) (.rational 1054260 1)) .v)
    (.rational 3003534 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 600930 1) .v) (.rational
    4946400 1)) .v) (.rational 12273246 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1434990 1) .v) (.rational 10037600 1)) .v) (.rational 21467418 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1950480 1) .v) (.rational 11640928 1)) .v) (.rational
    21304128 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1660320 1) .v)
    (.rational 8588032 1)) .v) (.rational 13480246 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 915390 1) .v) (.rational 4223810 1)) .v) (.rational 5795496 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 325290 1) .v) (.rational 1390974 1)) .v)
    (.rational 1726370 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 71220 1) .v)
    (.rational 292648 1)) .v) (.rational 339382 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 92610 1) .v) (.rational 761508 1)) .v) (.rational 1630242 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 555660 1) .v) (.rational 4040352 1)) .v) (.rational 7736256 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1467720 1) .v) (.rational 9437764 1)) .v)
    (.rational 16078450 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2245050 1)
    .v) (.rational 12839540 1)) .v) (.rational 19441014 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2198655 1) .v) (.rational 11328422 1)) .v) (.rational 15339211 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1436580 1) .v) (.rational 6802538
    1)) .v) (.rational 8360625 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    631260 1) .v) (.rational 2813342 1)) .v) (.rational 3202876 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 182700 1) .v) (.rational 782982 1)) .v) (.rational 839859 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 32835 1) .v) (.rational 136838 1))
    .v) (.rational 138899 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    45360 1) .v) (.rational 315144 1)) .v) (.rational 531828 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 294840 1) .v) (.rational 1859760 1)) .v) (.rational 2874204 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 853380 1) .v) (.rational 4890276 1)) .v) (.rational 6901686
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1450350 1) .v) (.rational
    7584960 1)) .v) (.rational 9779634 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1605690 1) .v) (.rational 7732740 1)) .v) (.rational 9154320 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1212840 1) .v) (.rational 5448216 1)) .v) (.rational
    5979114 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 635100 1) .v)
    (.rational 2699900 1)) .v) (.rational 2779044 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 228900 1) .v) (.rational 932010 1)) .v) (.rational 907884 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 54930 1) .v) (.rational 215198 1)) .v) (.rational
    198609 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 8145 1) .v) (.rational
    30444 1)) .v) (.rational 26335 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 9720 1) .v) (.rational 56592 1)) .v) (.rational 78228 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 68040 1) .v) (.rational 366984 1)) .v) (.rational
    473508 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 214110 1) .v) (.rational 1069500
    1)) .v) (.rational 1285614 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    400140 1) .v) (.rational 1855224 1)) .v) (.rational 2078244 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 493920 1) .v) (.rational 2136216 1)) .v) (.rational 2236759 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 423270 1) .v) (.rational 1719792
    1)) .v) (.rational 1692336 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    257265 1) .v) (.rational 989250 1)) .v) (.rational 920573 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 111060 1) .v) (.rational 406098 1)) .v) (.rational 358825 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 33435 1) .v) (.rational 116112 1))
    .v) (.rational 97253 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 6705 1)
    .v) (.rational 21882 1)) .v) (.rational 17184 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 810 1) .v) (.rational 2430 1)) .v) (.rational 1745 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1046

namespace FullLow1047
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_100_3 e g v+4*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_001_4 e g v+12*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_101_4 e g v+3*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_002_5 e g v+6*SmallGap.ReducedLayers.low1_002_6 e g v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 30 1) .v) (.rational 4720 1)) .e) (.add (.mul (.add (.mul
    (.rational 390 1) .v) (.rational 29781 1)) .f) (.mul (.add (.mul (.rational 510 1) .v)
    (.rational 32124 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 2490 1) .v)
    (.rational 113538 1)) .f) (.mul (.add (.mul (.rational 4110 1) .v) (.rational 163574 1)) .g))
    .f) (.mul (.add (.mul (.rational 1440 1) .v) (.rational 72268 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10350 1) .v) (.rational 292652 1)) .f)
    (.mul (.add (.mul (.rational 21570 1) .v) (.rational 533092 1)) .g)) .f) (.mul (.add (.mul
    (.rational 12810 1) .v) (.rational 323164 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational
    360 1) .v) (.rational 65042 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 31140 1) .v) (.rational 541428 1)) .f) (.mul (.add (.mul
    (.rational 82320 1) .v) (.rational 1222196 1)) .g)) .f) (.mul (.add (.mul (.rational 76230 1)
    .v) (.rational 995426 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 27030 1) .v)
    (.rational 336226 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 900 1) .v) (.rational
    30528 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 68280 1) .v) (.rational 734024 1)) .f) (.mul (.add (.mul (.rational 224460 1)
    .v) (.rational 2035452 1)) .g)) .f) (.mul (.add (.mul (.rational 290610 1) .v) (.rational
    2199624 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 190230 1) .v) (.rational 1174192
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 68430 1) .v) (.rational 328950 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.rational 14460 1) .v) (.rational 50922 1)) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    103500 1) .v) (.rational 714948 1)) .f) (.mul (.add (.mul (.rational 408240 1) .v) (.rational
    2404152 1)) .g)) .f) (.mul (.add (.mul (.rational 673920 1) .v) (.rational 3343704 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.rational 614040 1) .v) (.rational 2537400 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.rational 345330 1) .v) (.rational 1187858 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.rational 127050 1) .v) (.rational 374474 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 30720 1) .v) (.rational 82108 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 100260 1) .v)
    (.rational 470112 1)) .f) (.mul (.add (.mul (.rational 458820 1) .v) (.rational 1879368 1))
    .g)) .f) (.mul (.add (.mul (.rational 908700 1) .v) (.rational 3230700 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 1032480 1) .v) (.rational 3183696 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 752550 1) .v) (.rational 2035476 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 370290 1) .v) (.rational 901924 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 123570 1) .v) (.rational 279536 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    26520 1) .v) (.rational 56582 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 55080 1) .v)
    (.rational 184680 1)) .f) (.mul (.add (.mul (.rational 285120 1) .v) (.rational 858600 1))
    .g)) .f) (.mul (.add (.mul (.rational 652140 1) .v) (.rational 1757532 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 874800 1) .v) (.rational 2113848 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 769140 1) .v) (.rational 1682748 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 466200 1) .v) (.rational 939004 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 196950 1) .v) (.rational 371258 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    56370 1) .v) (.rational 100126 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 10110 1) .v)
    (.rational 16776 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12960 1) .v)
    (.rational 32400 1)) .f) (.mul (.add (.mul (.rational 74520 1) .v) (.rational 171720 1)) .g))
    .f) (.mul (.add (.mul (.rational 192060 1) .v) (.rational 406488 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.rational 294660 1) .v) (.rational 572952 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.rational 300780 1) .v) (.rational 540076 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational
    215100 1) .v) (.rational 359772 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational 109530 1)
    .v) (.rational 172048 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational 39150 1) .v)
    (.rational 57912 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 9360 1) .v) (.rational
    12969 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 1350 1) .v) (.rational 1730 1)) (.pow
    .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1047

namespace FullLow1048
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  5*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_100_4 e g v+4*SmallGap.ReducedLayers.low0_001_5 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_101_5 e g v+3*SmallGap.ReducedLayers.low1_002_6 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 600 1) .e) (.add (.mul (.rational 3675 1) .f) (.mul (.rational 3870 1) .g))) .e)
    (.add (.mul (.add (.mul (.rational 13470 1) .f) (.mul (.rational 18825 1) .g)) .f) (.mul
    (.rational 7920 1) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 33000 1)
    .f) (.mul (.rational 58140 1) .g)) .f) (.mul (.rational 33525 1) (.pow .g 2))) .f) (.mul
    (.rational 5970 1) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 57120 1) .f) (.mul (.rational 124980 1) .g)) .f) (.mul (.rational 98070 1) (.pow .g
    2))) .f) (.mul (.rational 31575 1) (.pow .g 3))) .f) (.mul (.rational 2640 1) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 70290 1) .f) (.mul
    (.rational 189720 1) .g)) .f) (.mul (.rational 200460 1) (.pow .g 2))) .f) (.mul (.rational
    106560 1) (.pow .g 3))) .f) (.mul (.rational 31575 1) (.pow .g 4))) .f) (.mul (.rational 5970
    1) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 58500 1) .f) (.mul (.rational 191790 1) .g)) .f) (.mul (.rational 262560 1) (.pow
    .g 2))) .f) (.mul (.rational 200460 1) (.pow .g 3))) .f) (.mul (.rational 98070 1) (.pow .g
    4))) .f) (.mul (.rational 33525 1) (.pow .g 5))) .f) (.mul (.rational 7920 1) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 29160 1) .f) (.mul (.rational 113400 1) .g)) .f) (.mul (.rational 191790 1) (.pow
    .g 2))) .f) (.mul (.rational 189720 1) (.pow .g 3))) .f) (.mul (.rational 124980 1) (.pow .g
    4))) .f) (.mul (.rational 58140 1) (.pow .g 5))) .f) (.mul (.rational 18825 1) (.pow .g 6)))
    .f) (.mul (.rational 3870 1) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6480 1) .f) (.mul (.rational
    29160 1) .g)) .f) (.mul (.rational 58500 1) (.pow .g 2))) .f) (.mul (.rational 70290 1) (.pow
    .g 3))) .f) (.mul (.rational 57120 1) (.pow .g 4))) .f) (.mul (.rational 33000 1) (.pow .g
    5))) .f) (.mul (.rational 13470 1) (.pow .g 6))) .f) (.mul (.rational 3675 1) (.pow .g 7)))
    .f) (.mul (.rational 600 1) (.pow .g 8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1048

end
end SPR.N6.Tail.CoreEndpoint
