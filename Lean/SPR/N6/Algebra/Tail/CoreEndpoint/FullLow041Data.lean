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

namespace FullLow0410
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c014 e f g v*((e+f)*(e+f+g))^5*(f+g)^4+
    2*SmallGap.PolarCoefficientsLow0.c023 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^3+
    3*SmallGap.PolarCoefficientsLow0.c032 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow0.c041 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)+
    5*SmallGap.PolarCoefficientsLow0.c050 e f g v*e^4*((e+f)*(e+f+g))^5

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_0 e g v*e^7+1*SmallGap.ReducedLayers.low0_001_0 e
    g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_0 e g v*e^5+1*SmallGap.ReducedLayers.low1_011_0 e g
    v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20 1) .v)
    (.rational 610 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 20 1) .v) (.rational 456
    1)) .v) (.rational 5864 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 50 1) .v) (.rational
    732 1)) .v) (.rational 7995 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 408 1) .v) (.rational 4776 1)) .v) (.rational 35460 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1224 1) .v) (.rational 10462 1)) .v) (.rational 66864 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1324 1) .v) (.rational 7660 1)) .v) (.rational 44262 1))
    (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3866
    1) .v) (.rational 30812 1)) .v) (.rational 151375 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13531 1) .v) (.rational 85152 1)) .v) (.rational 365183 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 18277 1) .v) (.rational 87876 1)) .v) (.rational 332366 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 11865 1) .v) (.rational 42056 1)) .v)
    (.rational 140989 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 22690 1) .v) (.rational 138044 1)) .v) (.rational 485228 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 90760 1) .v) (.rational 459498 1)) .v) (.rational
    1428443 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 146274 1) .v) (.rational 605592
    1)) .v) (.rational 1659702 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    121162 1) .v) (.rational 403016 1)) .v) (.rational 965013 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 54212 1) .v) (.rational 142460 1)) .v) (.rational 292466 1))
    (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 92678 1) .v) (.rational 458112 1)) .v) (.rational 1212665 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 417051 1) .v) (.rational 1781175 1)) .v) (.rational 4220005
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 778636 1) .v) (.rational 2842438 1)) .v)
    (.rational 5978496 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 778988 1)
    .v) (.rational 2404878 1)) .v) (.rational 4432799 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 449128 1) .v) (.rational 1161368 1)) .v) (.rational 1838323 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 148469 1) .v) (.rational 319475 1)) .v)
    (.rational 420654 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 280329 1) .v) (.rational 1171168 1)) .v)
    (.rational 2421407 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1401645 1) .v) (.rational
    5204000 1)) .v) (.rational 9736023 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2969225 1) .v) (.rational 9723659 1)) .v) (.rational 16301496 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3467030 1) .v) (.rational 9940582 1)) .v) (.rational
    14733069 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2429077 1) .v)
    (.rational 6057034 1)) .v) (.rational 7787329 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1039535 1) .v) (.rational 2243512 1)) .v) (.rational 2435732 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 263361 1) .v) (.rational 491379 1)) .v)
    (.rational 433636 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 651840 1) .v) (.rational
    2365648 1)) .v) (.rational 3926785 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3585120 1)
    .v) (.rational 11817937 1)) .v) (.rational 17932169 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8485414 1) .v) (.rational 25261677 1)) .v) (.rational 34694600 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11295963 1) .v) (.rational 30199113 1)) .v)
    (.rational 37061535 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9272928 1)
    .v) (.rational 22145256 1)) .v) (.rational 23877189 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4836594 1) .v) (.rational 10274859 1)) .v) (.rational 9515730 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1589434 1) .v) (.rational 2997393 1)) .v)
    (.rational 2313360 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 313747 1)
    .v) (.rational 525979 1)) .v) (.rational 325018 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 1193127 1) .v) (.rational 3838536 1)) .v) (.rational 5228275 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7158762 1) .v) (.rational 21286070 1)) .v) (.rational
    26756067 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 18706446 1) .v) (.rational
    51171978 1)) .v) (.rational 58809036 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27910245 1) .v) (.rational 69915032 1)) .v) (.rational 72610373 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 26187126 1) .v) (.rational 59803359 1)) .v)
    (.rational 55302093 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 16033416 1)
    .v) (.rational 33251568 1)) .v) (.rational 26864586 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6428996 1) .v) (.rational 12075588 1)) .v) (.rational 8318184 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1646679 1) .v) (.rational 2799392 1)) .v)
    (.rational 1593590 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 253345 1)
    .v) (.rational 390751 1)) .v) (.rational 176814 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 1745146 1) .v) (.rational 5056272 1)) .v) (.rational 5753709 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11343449 1) .v) (.rational 30807855 1)) .v)
    (.rational 32645431 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 32415196 1) .v)
    (.rational 82208984 1)) .v) (.rational 80437786 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 53505639 1) .v) (.rational 126216332 1)) .v) (.rational 112864631 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 56357424 1) .v) (.rational 123173985 1))
    .v) (.rational 99387057 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    39483024 1) .v) (.rational 79662156 1)) .v) (.rational 57086820 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 18594604 1) .v) (.rational 34529796 1)) .v) (.rational
    21543522 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5810597 1) .v)
    (.rational 9912352 1)) .v) (.rational 5252434 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1158912 1) .v) (.rational 1816021 1)) .v) (.rational 792778 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 136557 1) .v) (.rational 197045 1)) .v)
    (.rational 68391 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2057913 1) .v) (.rational 5438576 1)) .v) (.rational 5251155 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 14405391 1) .v) (.rational 36105784 1)) .v) (.rational 32743347
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 44668239 1) .v) (.rational 105835873 1))
    .v) (.rational 89481964 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    80739351 1) .v) (.rational 180230666 1)) .v) (.rational 140804213 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 94179996 1) .v) (.rational 197383131 1)) .v) (.rational
    140956431 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 74117748 1) .v)
    (.rational 145347684 1)) .v) (.rational 93633618 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 39948272 1) .v) (.rational 73073952 1)) .v) (.rational 41782020 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 14656343 1) .v) (.rational 24943868 1)) .v)
    (.rational 12409418 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3562433 1)
    .v) (.rational 5632323 1)) .v) (.rational 2379874 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 543053 1) .v) (.rational 797578 1)) .v) (.rational 278228 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 46879 1) .v) (.rational 64085 1)) .v)
    (.rational 17894 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1964248 1) .v) (.rational 4785768 1)) .v) (.rational 3975647 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 14731860 1) .v) (.rational 34376329 1)) .v)
    (.rational 27044511 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 49247440 1) .v)
    (.rational 109756075 1)) .v) (.rational 81254940 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 96675150 1) .v) (.rational 205176499 1)) .v) (.rational 141863029 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 123562804 1) .v) (.rational 248964463 1))
    .v) (.rational 159320733 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    107721834 1) .v) (.rational 205415124 1)) .v) (.rational 120345444 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 65215402 1) .v) (.rational 117333552 1)) .v) (.rational
    62109180 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 27367539 1) .v)
    (.rational 46324828 1)) .v) (.rational 21804568 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7800770 1) .v) (.rational 12393497 1)) .v) (.rational 5088351 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1446237 1) .v) (.rational 2153299 1)) .v)
    (.rational 753839 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 160985 1) .v)
    (.rational 224551 1)) .v) (.rational 65338 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9216 1) .v) (.rational 12057 1)) .v) (.rational 2841 1)) (.pow .g 11)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1516931 1) .v) (.rational 3438968 1)) .v) (.rational 2490115 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12135448 1) .v) (.rational 26568438 1)) .v) (.rational 18364421 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 43495756 1) .v) (.rational 91745004 1)) .v)
    (.rational 60214544 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 92099952 1)
    .v) (.rational 186690392 1)) .v) (.rational 115618195 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 127884381 1) .v) (.rational 248449190 1)) .v) (.rational 144112067 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 122169794 1) .v) (.rational
    226836278 1)) .v) (.rational 122148060 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 81913496 1) .v) (.rational 144933012 1)) .v) (.rational 71687532 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 38585671 1) .v) (.rational 64869200 1)) .v)
    (.rational 29099300 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 12565005 1)
    .v) (.rational 20016035 1)) .v) (.rational 8019710 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2726428 1) .v) (.rational 4105532 1)) .v) (.rational 1442867 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 367976 1) .v) (.rational 522858 1)) .v)
    (.rational 157850 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 27035 1) .v)
    (.rational 36216 1)) .v) (.rational 9181 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 783 1) .v) (.rational 989 1)) .v) (.rational 206 1)) (.pow .g 12)))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    943306 1) .v) (.rational 2006336 1)) .v) (.rational 1282475 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8018101 1) .v) (.rational 16586109 1)) .v) (.rational 10198535 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 30667476 1) .v) (.rational 61576398 1)) .v)
    (.rational 36263544 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 69644050 1)
    .v) (.rational 135440846 1)) .v) (.rational 76008669 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 104322848 1) .v) (.rational 196048322 1)) .v) (.rational 104217149 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 108261881 1) .v) (.rational
    196105395 1)) .v) (.rational 98052118 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 79514246 1) .v) (.rational 138462310 1)) .v) (.rational 64570926 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 41452873 1) .v) (.rational 69199324 1)) .v)
    (.rational 29797768 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 15134350 1)
    .v) (.rational 24150921 1)) .v) (.rational 9488129 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3744818 1) .v) (.rational 5696482 1)) .v) (.rational 2012879 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 589890 1) .v) (.rational 853154 1)) .v)
    (.rational 266638 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 52325 1) .v)
    (.rational 71796 1)) .v) (.rational 19471 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1932 1) .v) (.rational 2511 1)) .v) (.rational 579 1)) (.pow .g 12))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    467747 1) .v) (.rational 940512 1)) .v) (.rational 537629 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4209723 1) .v) (.rational 8282616 1)) .v) (.rational 4587973 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 17111815 1) .v) (.rational 32889997 1)) .v)
    (.rational 17593896 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 41474132 1)
    .v) (.rational 77735826 1)) .v) (.rational 39997223 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 66629437 1) .v) (.rational 121543520 1)) .v) (.rational 59871511 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 74580107 1) .v) (.rational
    132121640 1)) .v) (.rational 61965624 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 59479357 1) .v) (.rational 102089407 1)) .v) (.rational 45291260 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 33942713 1) .v) (.rational 56301202 1)) .v)
    (.rational 23444408 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 13699672 1)
    .v) (.rational 21900451 1)) .v) (.rational 8480883 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3794182 1) .v) (.rational 5828900 1)) .v) (.rational 2076051 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 679840 1) .v) (.rational 1000748 1)) .v)
    (.rational 323540 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 70119 1) .v)
    (.rational 98616 1)) .v) (.rational 28497 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3108 1) .v) (.rational 4165 1)) .v) (.rational 1057 1)) (.pow .g 12))) (.pow .f
    2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 181992 1) .v) (.rational 348496 1)) .v) (.rational 180605 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1728924 1) .v) (.rational 3256523 1)) .v) (.rational 1646793 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7442090 1) .v) (.rational 13770227 1)) .v)
    (.rational 6777144 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 19170203 1)
    .v) (.rational 34794703 1)) .v) (.rational 16615989 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 32866708 1) .v) (.rational 58423078 1)) .v) (.rational 26975683 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 39446498 1) .v) (.rational 68548963
    1)) .v) (.rational 30476474 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    33918094 1) .v) (.rational 57507261 1)) .v) (.rational 24498376 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 21003632 1) .v) (.rational 34667543 1)) .v) (.rational
    14069018 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 9270178 1) .v)
    (.rational 14859023 1)) .v) (.rational 5704819 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2834018 1) .v) (.rational 4399558 1)) .v) (.rational 1584733 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 567136 1) .v) (.rational 850212 1)) .v)
    (.rational 284464 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 66325 1) .v)
    (.rational 95718 1)) .v) (.rational 29393 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3402 1) .v) (.rational 4711 1)) .v) (.rational 1309 1)) (.pow .g 12))) (.pow .f
    3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 54189 1) .v) (.rational 99556 1)) .v) (.rational 47479 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 541890 1) .v) (.rational 983686 1)) .v) (.rational 460733 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2462230 1) .v) (.rational 4411962 1)) .v) (.rational
    2025668 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6716205 1) .v)
    (.rational 11865912 1)) .v) (.rational 5328903 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12236352 1) .v) (.rational 21289179 1)) .v) (.rational 9328179 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 15669024 1) .v) (.rational 26808012 1)) .v)
    (.rational 11426562 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 14440776 1)
    .v) (.rational 24256848 1)) .v) (.rational 10022544 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9635502 1) .v) (.rational 15861792 1)) .v) (.rational 6326766 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4610745 1) .v) (.rational 7423182 1)) .v)
    (.rational 2844093 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1539462 1)
    .v) (.rational 2418334 1)) .v) (.rational 884689 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 339450 1) .v) (.rational 518926 1)) .v) (.rational 179948 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 44221 1) .v) (.rational 65592 1)) .v) (.rational
    21371 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2562 1) .v) (.rational
    3675 1)) .v) (.rational 1113 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11874 1) .v) (.rational
    21096 1)) .v) (.rational 9415 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 124677 1) .v)
    (.rational 219713 1)) .v) (.rational 96866 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 596316 1) .v) (.rational 1041612 1)) .v) (.rational 453081 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1716897 1) .v) (.rational 2970212 1)) .v) (.rational
    1272875 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3311928 1) .v)
    (.rational 5669493 1)) .v) (.rational 2389695 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4505850 1) .v) (.rational 7624494 1)) .v) (.rational 3154680 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4429152 1) .v) (.rational 7399644 1)) .v)
    (.rational 2998422 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3166074 1)
    .v) (.rational 5215236 1)) .v) (.rational 2063922 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1631322 1) .v) (.rational 2645262 1)) .v) (.rational 1019025 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 589953 1) .v) (.rational 939993 1)) .v)
    (.rational 351070 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 141876 1) .v)
    (.rational 221648 1)) .v) (.rational 79865 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 20325 1) .v) (.rational 31056 1)) .v) (.rational 10731 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1308 1) .v) (.rational 1949 1)) .v) (.rational 641
    1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1795 1) .v) (.rational 3112 1)) .v) (.rational 1325
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 19745 1) .v) (.rational 34066 1)) .v)
    (.rational 14401 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 99157 1) .v) (.rational
    170171 1)) .v) (.rational 71374 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    300495 1) .v) (.rational 512720 1)) .v) (.rational 213185 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 611790 1) .v) (.rational 1037235 1)) .v) (.rational 427125 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 881130 1) .v) (.rational 1483404
    1)) .v) (.rational 604290 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    920010 1) .v) (.rational 1536822 1)) .v) (.rational 618492 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 701214 1) .v) (.rational 1161192 1)) .v) (.rational 460938 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 386895 1) .v) (.rational 634470 1))
    .v) (.rational 247935 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 150565 1)
    .v) (.rational 244210 1)) .v) (.rational 93725 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 39185 1) .v) (.rational 62767 1)) .v) (.rational 23590 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6115 1) .v) (.rational 9656 1)) .v) (.rational 3541
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 432 1) .v) (.rational 671 1))
    .v) (.rational 239 1)) (.pow .g 12))) (.pow .f 6))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 166 1) .v) (.rational 284 1)) .v)
    (.rational 118 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1909 1) .v) (.rational 3259
    1)) .v) (.rational 1350 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10043 1) .v)
    (.rational 17105 1)) .v) (.rational 7062 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31955 1) .v) (.rational 54285 1)) .v) (.rational 22330 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 68475 1) .v) (.rational 115995 1)) .v) (.rational 47520 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 104082 1) .v) (.rational 175758 1))
    .v) (.rational 71676 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 115038 1)
    .v) (.rational 193578 1)) .v) (.rational 78540 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 93126 1) .v) (.rational 156090 1)) .v) (.rational 62964 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 54780 1) .v) (.rational 91410 1)) .v) (.rational
    36630 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 22825 1) .v) (.rational
    37895 1)) .v) (.rational 15070 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6391 1) .v) (.rational 10549 1)) .v) (.rational 4158 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1079 1) .v) (.rational 1769 1)) .v) (.rational 690 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 83 1) .v) (.rational 135 1)) .v) (.rational 52
    1)) (.pow .g 12))) (.pow .f 7))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 7 1) .v) (.rational 12 1)) .v) (.rational 5 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 84 1) .v) (.rational 144 1)) .v) (.rational 60 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 462 1) .v) (.rational 792 1)) .v) (.rational
    330 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1540 1) .v) (.rational 2640
    1)) .v) (.rational 1100 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3465 1)
    .v) (.rational 5940 1)) .v) (.rational 2475 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5544 1) .v) (.rational 9504 1)) .v) (.rational 3960 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6468 1) .v) (.rational 11088 1)) .v) (.rational 4620
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5544 1) .v) (.rational 9504 1))
    .v) (.rational 3960 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3465 1) .v)
    (.rational 5940 1)) .v) (.rational 2475 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1540 1) .v) (.rational 2640 1)) .v) (.rational 1100 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 462 1) .v) (.rational 792 1)) .v) (.rational 330 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 84 1) .v) (.rational 144 1)) .v)
    (.rational 60 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 7 1) .v)
    (.rational 12 1)) .v) (.rational 5 1)) (.pow .g 12))) (.pow .f 8))) .e)

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0410

namespace FullLow0411
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow1.c014 e f g v*((e+f)*(e+f+g))^5*(f+g)^4+
    4*SmallGap.PolarCoefficientsLow0.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    2*SmallGap.PolarCoefficientsLow1.c023 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^3+
    12*SmallGap.PolarCoefficientsLow0.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow1.c032 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^2+
    24*SmallGap.PolarCoefficientsLow0.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    4*SmallGap.PolarCoefficientsLow1.c041 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)+
    40*SmallGap.PolarCoefficientsLow0.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    5*SmallGap.PolarCoefficientsLow1.c050 e f g v*e^4*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow0.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    1*SmallGap.PolarCoefficientsLow0.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow0.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow0.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsLow0.c140 e f g v*e^4*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(28*SmallGap.ReducedLayers.low0_010_0 e g v*e^6+4*SmallGap.ReducedLayers.low0_010_1
    e g v*e^7+8*SmallGap.ReducedLayers.low0_001_0 e g v*e^7+1*SmallGap.ReducedLayers.low0_001_1 e
    g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.low1_020_0 e g v*e^4+3*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^5+6*SmallGap.ReducedLayers.low1_011_0 e g v*e^5+1*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 250 1) .v)
    (.rational 7905 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 230 1) .v) (.rational
    5344 1)) .v) (.rational 73056 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 575 1) .v)
    (.rational 8458 1)) .v) (.rational 98366 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 4494 1) .v) (.rational 53300 1)) .v) (.rational 425189 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 13482 1) .v) (.rational 114988 1)) .v) (.rational 791131
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 14587 1) .v) (.rational 82046 1)) .v)
    (.rational 514968 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 41046 1) .v) (.rational 330596 1)) .v) (.rational 1748438 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 143661 1) .v) (.rational 901297 1)) .v) (.rational 4162060 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 194107 1) .v) (.rational 912857 1)) .v)
    (.rational 3726811 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 126115 1)
    .v) (.rational 425751 1)) .v) (.rational 1548830 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 233099 1) .v) (.rational
    1432446 1)) .v) (.rational 5402232 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 932396 1)
    .v) (.rational 4713968 1)) .v) (.rational 15700046 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1503187 1) .v) (.rational 6126624 1)) .v) (.rational 17965521 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1246175 1) .v) (.rational 4009938 1)) .v) (.rational
    10255032 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 558498 1) .v)
    (.rational 1391074 1)) .v) (.rational 3038243 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 923138 1) .v)
    (.rational 4613524 1)) .v) (.rational 13019670 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4154121 1) .v) (.rational 17771310 1)) .v) (.rational 44766700 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7758478 1) .v) (.rational 28063582 1)) .v) (.rational
    62547203 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7768775 1) .v)
    (.rational 23474558 1)) .v) (.rational 45632034 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4486417 1) .v) (.rational 11207180 1)) .v) (.rational 18568677 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1487054 1) .v) (.rational 3053172 1)) .v)
    (.rational 4156088 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2709219 1) .v) (.rational 11466716
    1)) .v) (.rational 25077440 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 13546095 1) .v)
    (.rational 50571948 1)) .v) (.rational 99742468 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 28706614 1) .v) (.rational 93748876 1)) .v) (.rational 164974185 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 33549886 1) .v) (.rational 95079076 1)) .v)
    (.rational 147061980 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 23544632
    1) .v) (.rational 57512492 1)) .v) (.rational 76542735 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10102894 1) .v) (.rational 21189802 1)) .v) (.rational 23541876 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2569793 1) .v) (.rational 4635708
    1)) .v) (.rational 4120228 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6109792 1) .v)
    (.rational 22526248 1)) .v) (.rational 39232402 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 33603856 1) .v) (.rational 111869998 1)) .v) (.rational 177469082 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 79566254 1) .v) (.rational 237716448 1)) .v)
    (.rational 339812637 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 106019223
    1) .v) (.rational 282594174 1)) .v) (.rational 358919734 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 87177330 1) .v) (.rational 206267962 1)) .v) (.rational 228473361
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 45591273 1) .v) (.rational
    95442746 1)) .v) (.rational 89948886 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15042219 1) .v) (.rational 27861182 1)) .v) (.rational 21629608 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2986272 1) .v) (.rational 4918790 1)) .v)
    (.rational 3020152 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10831239 1)
    .v) (.rational 35519588 1)) .v) (.rational 50382072 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 64987434 1) .v) (.rational 196064612 1)) .v) (.rational 255794826 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 169885731 1) .v) (.rational 469276016 1)) .v)
    (.rational 557504717 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 253710510
    1) .v) (.rational 638686162 1)) .v) (.rational 682309390 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 238444281 1) .v) (.rational 544760448 1)) .v) (.rational
    515097957 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 146375838 1) .v)
    (.rational 302565600 1)) .v) (.rational 248195844 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 58923428 1) .v) (.rational 110070660 1)) .v) (.rational 76394766 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 15177219 1) .v) (.rational 25670624
    1)) .v) (.rational 14626126 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2353465 1) .v) (.rational 3626526 1)) .v) (.rational 1640515 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 15307770 1) .v) (.rational 45379100 1)) .v)
    (.rational 53446770 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 99500505 1) .v)
    (.rational 275522530 1)) .v) (.rational 301341208 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 284447610 1) .v) (.rational 732870314 1)) .v) (.rational 737723987 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 469956300 1) .v) (.rational 1122265866 1))
    .v) (.rational 1028540784 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    495814851 1) .v) (.rational 1093467618 1)) .v) (.rational 900406071 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 348252912 1) .v) (.rational 707182776 1)) .v)
    (.rational 514805640 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 164635614
    1) .v) (.rational 307259288 1)) .v) (.rational 193910738 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 51727383 1) .v) (.rational 88721960 1)) .v) (.rational 47440906
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10395760 1) .v) (.rational
    16429458 1)) .v) (.rational 7259012 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1237903 1) .v) (.rational 1813354 1)) .v) (.rational 646778 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 17383707 1) .v) (.rational
    47195148 1)) .v) (.rational 46965334 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    121685949 1) .v) (.rational 312494380 1)) .v) (.rational 291492358 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 377470152 1) .v) (.rational 913934604 1)) .v) (.rational
    793010735 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 682903575 1) .v)
    (.rational 1553786876 1)) .v) (.rational 1242720648 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 797839359 1) .v) (.rational 1700433600 1)) .v) (.rational 1240020939
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 629429142 1) .v) (.rational
    1253000868 1)) .v) (.rational 822369150 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 340485702 1) .v) (.rational 631659056 1)) .v) (.rational 367437980 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 125567079 1) .v) (.rational 216828000 1))
    .v) (.rational 109833380 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    30742665 1) .v) (.rational 49431408 1)) .v) (.rational 21388479 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4733502 1) .v) (.rational 7104950 1)) .v) (.rational
    2577537 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 414284 1) .v)
    (.rational 583382 1)) .v) (.rational 175108 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15907408 1) .v) (.rational 39982280 1))
    .v) (.rational 34166392 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 119305560 1) .v)
    (.rational 286641352 1)) .v) (.rational 231709828 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 398975188 1) .v) (.rational 913772090 1)) .v) (.rational 694285377 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 783871062 1) .v) (.rational 1706544352 1))
    .v) (.rational 1209628482 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1003363324 1) .v) (.rational 2070501394 1)) .v) (.rational 1357107115 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 876745452 1) .v) (.rational 1710203298 1)) .v)
    (.rational 1025888994 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 532588276
    1) .v) (.rational 979635090 1)) .v) (.rational 531388326 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 224581335 1) .v) (.rational 388802866 1)) .v) (.rational
    188116232 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 64447136 1) .v)
    (.rational 104910816 1)) .v) (.rational 44603144 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12060102 1) .v) (.rational 18466037 1)) .v) (.rational 6795670 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1359764 1) .v) (.rational 1962253 1)) .v)
    (.rational 617285 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 79233 1) .v)
    (.rational 108155 1)) .v) (.rational 28922 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11708817 1) .v) (.rational
    27499316 1)) .v) (.rational 20495282 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 93670536
    1) .v) (.rational 212164072 1)) .v) (.rational 150909466 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 335845897 1) .v) (.rational 731910668 1)) .v) (.rational 494256715 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 711686899 1) .v) (.rational 1488658014
    1)) .v) (.rational 948667484 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    989537420 1) .v) (.rational 1981667164 1)) .v) (.rational 1183383031 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 947304221 1) .v) (.rational 1811668870 1)) .v)
    (.rational 1005574772 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 637118658
    1) .v) (.rational 1160745268 1)) .v) (.rational 593257420 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 301436817 1) .v) (.rational 522012340 1)) .v) (.rational
    243075062 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 98762444 1) .v)
    (.rational 162286206 1)) .v) (.rational 68047006 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 21611975 1) .v) (.rational 33662142 1)) .v) (.rational 12555814 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2950999 1) .v) (.rational 4356796 1)) .v)
    (.rational 1429337 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 220312 1)
    .v) (.rational 308674 1)) .v) (.rational 88362 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6525 1) .v) (.rational 8694 1)) .v) (.rational 2169 1)) (.pow .g 12)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    6887150 1) .v) (.rational 15238668 1)) .v) (.rational 10058010 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 58540775 1) .v) (.rational 125862698 1)) .v) (.rational 79954292 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 223972306 1) .v) (.rational 467000586 1)) .v)
    (.rational 284347341 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 508976795
    1) .v) (.rational 1027073586 1)) .v) (.rational 596562150 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 763326783 1) .v) (.rational 1487437264 1)) .v) (.rational
    819661811 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 793616382 1) .v)
    (.rational 1489935908 1)) .v) (.rational 774040296 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 584467987 1) .v) (.rational 1054707766 1)) .v) (.rational 512842148 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 305878353 1) .v) (.rational
    529341828 1)) .v) (.rational 238931746 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 112278930 1) .v) (.rational 185939406 1)) .v) (.rational 77200800 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 27989473 1) .v) (.rational 44275554 1)) .v)
    (.rational 16744096 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 4454237 1)
    .v) (.rational 6721720 1)) .v) (.rational 2292691 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 400702 1) .v) (.rational 576538 1)) .v) (.rational 175836 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 15087 1) .v) (.rational 20702 1)) .v)
    (.rational 5615 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 3198233 1) .v) (.rational 6716932 1)) .v)
    (.rational 3986784 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 28784097 1) .v) (.rational
    59120436 1)) .v) (.rational 34042108 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    117032074 1) .v) (.rational 234702556 1)) .v) (.rational 130691231 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 283817060 1) .v) (.rational 554784428 1)) .v) (.rational
    297661992 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 456420778 1) .v)
    (.rational 867979124 1)) .v) (.rational 446853033 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 511685258 1) .v) (.rational 944783826 1)) .v) (.rational 464472056 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 409020535 1) .v) (.rational
    731706408 1)) .v) (.rational 341621462 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 234177170 1) .v) (.rational 404983942 1)) .v) (.rational 178443696 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 94948090 1) .v) (.rational 158382528 1)) .v)
    (.rational 65396242 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 26461993 1)
    .v) (.rational 42483754 1)) .v) (.rational 16310188 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4782535 1) .v) (.rational 7375124 1)) .v) (.rational 2610907 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 499158 1) .v) (.rational 738142 1)) .v)
    (.rational 238984 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 22491 1) .v)
    (.rational 31856 1)) .v) (.rational 9365 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1149960 1)
    .v) (.rational 2308904 1)) .v) (.rational 1251833 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10924620 1) .v) (.rational 21569730 1)) .v) (.rational 11428471 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 47034130 1) .v) (.rational 91203352 1)) .v) (.rational
    47112771 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 121212295 1) .v)
    (.rational 230511418 1)) .v) (.rational 115781394 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 207982262 1) .v) (.rational 387301370 1)) .v) (.rational 188571267 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 249932305 1) .v) (.rational
    454974766 1)) .v) (.rational 213971010 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 215299679 1) .v) (.rational 382428158 1)) .v) (.rational 173016690 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 133671811 1) .v) (.rational 231218326 1))
    .v) (.rational 100160664 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    59212475 1) .v) (.rational 99528338 1)) .v) (.rational 41061459 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 18193087 1) .v) (.rational 29649720 1)) .v) (.rational
    11579567 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 3665915 1) .v)
    (.rational 5779442 1)) .v) (.rational 2122387 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 432794 1) .v) (.rational 658568 1)) .v) (.rational 225774 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 22491 1) .v) (.rational 32964 1)) .v) (.rational
    10473 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 310669 1) .v) (.rational 600658 1)) .v)
    (.rational 302383 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3106690 1) .v) (.rational
    5934562 1)) .v) (.rational 2938826 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    14118209 1) .v) (.rational 26620008 1)) .v) (.rational 12945948 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 38523216 1) .v) (.rational 71617206 1)) .v) (.rational
    34140118 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 70227417 1) .v)
    (.rational 128570752 1)) .v) (.rational 59947455 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 90010788 1) .v) (.rational 162063236 1)) .v) (.rational 73723908 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 83066718 1) .v) (.rational 146864872 1)) .v)
    (.rational 64995168 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 55531632 1)
    .v) (.rational 96250940 1)) .v) (.rational 41300172 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 26643651 1) .v) (.rational 45188266 1)) .v) (.rational 18727053 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 8928682 1) .v) (.rational 14787642
    1)) .v) (.rational 5892370 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1978729 1) .v) (.rational 3193088 1)) .v) (.rational 1217060 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 259568 1) .v) (.rational 407150 1)) .v) (.rational 147582
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 15183 1) .v) (.rational 23092
    1)) .v) (.rational 7909 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 60144 1) .v) (.rational
    112868 1)) .v) (.rational 53694 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 631512 1) .v)
    (.rational 1175612 1)) .v) (.rational 553290 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3020730 1) .v) (.rational 5574416 1)) .v) (.rational 2592746 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8699055 1) .v) (.rational 15901138 1)) .v) (.rational
    7300123 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 16786845 1) .v)
    (.rational 30367842 1)) .v) (.rational 13741857 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 22851468 1) .v) (.rational 40871184 1)) .v) (.rational 18199896 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 22481424 1) .v) (.rational 39709656 1)) .v)
    (.rational 17367672 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 16089570 1)
    .v) (.rational 28030380 1)) .v) (.rational 12014370 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8304030 1) .v) (.rational 14247888 1)) .v) (.rational 5969148 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3010020 1) .v) (.rational 5077892 1)) .v)
    (.rational 2072982 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 726174 1)
    .v) (.rational 1202216 1)) .v) (.rational 476502 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 104487 1) .v) (.rational 169394 1)) .v) (.rational 64907 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 6765 1) .v) (.rational 10714 1)) .v)
    (.rational 3949 1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7707 1) .v) (.rational 14176 1)) .v)
    (.rational 6501 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 84777 1) .v) (.rational
    155208 1)) .v) (.rational 70751 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 425757
    1) .v) (.rational 775502 1)) .v) (.rational 351185 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1290375 1) .v) (.rational 2337300 1)) .v) (.rational 1050765 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2627550 1) .v) (.rational 4730310 1)) .v)
    (.rational 2109480 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3785274 1)
    .v) (.rational 6768672 1)) .v) (.rational 2991462 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3953754 1) .v) (.rational 7017276 1)) .v) (.rational 3070242 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3015054 1) .v) (.rational 5306904 1)) .v)
    (.rational 2295690 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1664775 1)
    .v) (.rational 2903100 1)) .v) (.rational 1239765 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 648525 1) .v) (.rational 1119160 1)) .v) (.rational 470955 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 169017 1) .v) (.rational 288246 1)) .v)
    (.rational 119261 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 26427 1) .v)
    (.rational 44468 1)) .v) (.rational 18041 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1872 1) .v) (.rational 3102 1)) .v) (.rational 1230 1)) (.pow .g 12))) (.pow .f
    6))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 562 1) .v) (.rational 1028 1)) .v) (.rational 466 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6463 1) .v) (.rational 11799 1)) .v) (.rational 5336 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 34001 1) .v) (.rational 61941 1)) .v) (.rational 27940 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 108185 1) .v) (.rational 196625 1)) .v)
    (.rational 88440 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 231825 1) .v)
    (.rational 420255 1)) .v) (.rational 188430 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 352374 1) .v) (.rational 636966 1)) .v) (.rational 284592 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 389466 1) .v) (.rational 701778 1)) .v)
    (.rational 312312 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 315282 1) .v)
    (.rational 566082 1)) .v) (.rational 250800 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 185460 1) .v) (.rational 331650 1)) .v) (.rational 146190 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 77275 1) .v) (.rational 137555 1)) .v) (.rational
    60280 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 21637 1) .v) (.rational
    38313 1)) .v) (.rational 16676 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3653 1) .v) (.rational 6429 1)) .v) (.rational 2776 1)) (.pow .g 11))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 281 1) .v) (.rational 491 1)) .v) (.rational 210 1)) (.pow .g 12)))
    (.pow .f 7))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 16 1) .v) (.rational 30 1)) .v) (.rational 14 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 192 1) .v) (.rational 360 1)) .v) (.rational 168 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1056 1) .v) (.rational 1980 1)) .v) (.rational 924 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3520 1) .v) (.rational 6600 1)) .v)
    (.rational 3080 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7920 1) .v)
    (.rational 14850 1)) .v) (.rational 6930 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12672 1) .v) (.rational 23760 1)) .v) (.rational 11088 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 14784 1) .v) (.rational 27720 1)) .v) (.rational 12936 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 12672 1) .v) (.rational 23760 1))
    .v) (.rational 11088 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 7920 1)
    .v) (.rational 14850 1)) .v) (.rational 6930 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3520 1) .v) (.rational 6600 1)) .v) (.rational 3080 1)) (.pow .g 9))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1056 1) .v) (.rational 1980 1)) .v) (.rational 924
    1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 192 1) .v) (.rational 360 1))
    .v) (.rational 168 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 16 1) .v)
    (.rational 30 1)) .v) (.rational 14 1)) (.pow .g 12))) (.pow .f 8)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0411

namespace FullLow0412
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow2.c014 e f g v*((e+f)*(e+f+g))^5*(f+g)^4+
    4*SmallGap.PolarCoefficientsLow1.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    2*SmallGap.PolarCoefficientsLow2.c023 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^3+
    12*SmallGap.PolarCoefficientsLow0.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow1.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow2.c032 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^2+
    48*SmallGap.PolarCoefficientsLow0.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsLow1.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    4*SmallGap.PolarCoefficientsLow2.c041 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)+
    120*SmallGap.PolarCoefficientsLow0.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsLow1.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    5*SmallGap.PolarCoefficientsLow2.c050 e f g v*e^4*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow1.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    3*SmallGap.PolarCoefficientsLow0.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow1.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    6*SmallGap.PolarCoefficientsLow0.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow1.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    9*SmallGap.PolarCoefficientsLow0.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsLow1.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    12*SmallGap.PolarCoefficientsLow0.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow1.c140 e f g v*e^4*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(84*SmallGap.ReducedLayers.low0_010_0 e g v*e^5+28*SmallGap.ReducedLayers.low0_010_1
    e g v*e^6+4*SmallGap.ReducedLayers.low0_010_2 e g v*e^7+28*SmallGap.ReducedLayers.low0_001_0 e
    g v*e^6+8*SmallGap.ReducedLayers.low0_001_1 e g v*e^7+1*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(30*SmallGap.ReducedLayers.low1_020_0 e g v*e^3+15*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_020_2 e g v*e^5+15*SmallGap.ReducedLayers.low1_011_0 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_011_1 e g v*e^5+1*SmallGap.ReducedLayers.low1_011_2 e g
    v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1430 1) .v) (.rational 47295
    1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1200 1) .v) (.rational 28750 1)) .v)
    (.rational 420466 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3000 1) .v) (.rational
    44830 1)) .v) (.rational 558539 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 22551 1) .v) (.rational 273042 1)) .v) (.rational 2354560 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 67653 1) .v) (.rational 579186 1)) .v) (.rational 4317887 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 73218 1) .v) (.rational 401138 1)) .v) (.rational
    2758583 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 198894 1) .v) (.rational 1626288 1)) .v) (.rational 9316549 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 696129 1) .v) (.rational 4365764 1)) .v) (.rational 21854803 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 940863 1) .v) (.rational 4325308 1)) .v)
    (.rational 19214883 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 611835 1)
    .v) (.rational 1954002 1)) .v) (.rational 7798783 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1093145 1) .v) (.rational
    6804252 1)) .v) (.rational 27696957 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4372580
    1) .v) (.rational 22100676 1)) .v) (.rational 79357989 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7051623 1) .v) (.rational 28253939 1)) .v) (.rational 89260268 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5850839 1) .v) (.rational 18119063 1)) .v)
    (.rational 49874763 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2626424 1)
    .v) (.rational 6135935 1)) .v) (.rational 14378911 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4193194 1) .v)
    (.rational 21229968 1)) .v) (.rational 64215846 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18869373 1) .v) (.rational 80910589 1)) .v) (.rational 217885585 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 35253396 1) .v) (.rational 126205340 1)) .v) (.rational
    299701416 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 35329812 1) .v)
    (.rational 104123531 1)) .v) (.rational 214604750 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 20434560 1) .v) (.rational 49000947 1)) .v) (.rational 85378166 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6790407 1) .v) (.rational 13179702
    1)) .v) (.rational 18593513 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11915048 1) .v) (.rational
    51186850 1)) .v) (.rational 118950884 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    59575240 1) .v) (.rational 223846464 1)) .v) (.rational 467476382 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 126296023 1) .v) (.rational 411180042 1)) .v) (.rational
    762677985 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 147732652 1) .v)
    (.rational 413089500 1)) .v) (.rational 669245323 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 103839339 1) .v) (.rational 247650381 1)) .v) (.rational 342098482 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 44669743 1) .v) (.rational 90619703
    1)) .v) (.rational 103106001 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11405216 1) .v) (.rational 19781377 1)) .v) (.rational 17665005 1)) (.pow .g 6)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 25977994 1) .v) (.rational 97515894 1)) .v) (.rational 178858278 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 142878967 1) .v) (.rational 481097761 1)) .v)
    (.rational 800701822 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 338434099 1) .v)
    (.rational 1015445261 1)) .v) (.rational 1515582903 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 451361193 1) .v) (.rational 1199361911 1)) .v) (.rational 1580589423
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 371746504 1) .v) (.rational
    870596220 1)) .v) (.rational 992403840 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 194913299 1) .v) (.rational 401439496 1)) .v) (.rational 385203476 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 64555073 1) .v) (.rational 117217736 1)) .v)
    (.rational 91440967 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 12885717 1)
    .v) (.rational 20823342 1)) .v) (.rational 12674633 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 44408417 1) .v) (.rational 148836754 1)) .v) (.rational 220521992 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 266450502 1) .v) (.rational 817417702 1)) .v)
    (.rational 1109998481 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 696815945 1) .v)
    (.rational 1946944646 1)) .v) (.rational 2397015467 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1041616790 1) .v) (.rational 2638289004 1)) .v) (.rational 2905326696
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 980567714 1) .v) (.rational
    2242941992 1)) .v) (.rational 2171988327 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 603525638 1) .v) (.rational 1244050138 1)) .v) (.rational 1037163532 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 243890748 1) .v) (.rational 453351463 1))
    .v) (.rational 317186803 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    63167507 1) .v) (.rational 106400373 1)) .v) (.rational 60713099 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9870360 1) .v) (.rational 15221597 1)) .v) (.rational
    6898348 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 60295052 1)
    .v) (.rational 183429730 1)) .v) (.rational 224188063 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 391917838 1) .v) (.rational 1109462380 1)) .v) (.rational 1255477593 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1120858272 1) .v) (.rational 2940843910 1)) .v)
    (.rational 3052324472 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1853624278 1) .v) (.rational 4490642291 1)) .v) (.rational 4226526421 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1958903638 1) .v) (.rational 4367750345 1)) .v)
    (.rational 3676870062 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1379528613 1) .v) (.rational 2824686001 1)) .v) (.rational 2092235138 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 654704548 1) .v) (.rational 1230429348 1)) .v)
    (.rational 786811768 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 206843234
    1) .v) (.rational 357528096 1)) .v) (.rational 193370149 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 41890464 1) .v) (.rational 66958938 1)) .v) (.rational 30055653
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 5041109 1) .v) (.rational
    7521340 1)) .v) (.rational 2771376 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 65447158 1) .v) (.rational 183097596 1)) .v) (.rational 188229647
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 458130106 1) .v) (.rational 1208914208 1))
    .v) (.rational 1162479788 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1421707102 1)
    .v) (.rational 3527080980 1)) .v) (.rational 3147432565 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2574551234 1) .v) (.rational 5985892692 1)) .v) (.rational
    4911070500 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3012877170 1) .v)
    (.rational 6546082734 1)) .v) (.rational 4884152427 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2383100398 1) .v) (.rational 4827502352 1)) .v) (.rational 3234402622
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1294066587 1) .v) (.rational
    2440967074 1)) .v) (.rational 1447813502 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 479840346 1) .v) (.rational 843026536 1)) .v) (.rational 436027873 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 118372822 1) .v) (.rational 194166441 1))
    .v) (.rational 86346160 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    18416900 1) .v) (.rational 28345107 1)) .v) (.rational 10735256 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1635022 1) .v) (.rational 2378897 1)) .v) (.rational 767688
    1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 56861556 1) .v) (.rational 147845280 1)) .v) (.rational 130228555 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 426461670 1) .v) (.rational 1057740468 1)) .v) (.rational
    880284062 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1426724626 1) .v) (.rational
    3366395084 1)) .v) (.rational 2630003246 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2805708074 1) .v) (.rational 6280755190 1)) .v) (.rational 4572102246 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3597148588 1) .v) (.rational 7619841782 1))
    .v) (.rational 5124397954 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3151132809 1) .v) (.rational 6302004641 1)) .v) (.rational 3877433918 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1921277297 1) .v) (.rational 3621386063 1)) .v)
    (.rational 2016666815 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 814425585
    1) .v) (.rational 1445586623 1)) .v) (.rational 720393991 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 235425092 1) .v) (.rational 393683320 1)) .v) (.rational
    173670028 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 44500294 1) .v)
    (.rational 70254506 1)) .v) (.rational 27206607 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5086898 1) .v) (.rational 7611768 1)) .v) (.rational 2580470 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 302076 1) .v) (.rational 430672 1)) .v)
    (.rational 128596 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 39390315 1) .v) (.rational 96028632 1)) .v)
    (.rational 73773361 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 315122520 1) .v)
    (.rational 739787984 1)) .v) (.rational 542191063 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1130270789 1) .v) (.rational 2549349163 1)) .v) (.rational 1773371202 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2397251423 1) .v) (.rational 5182741259 1))
    .v) (.rational 3401883931 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3338262728 1) .v) (.rational 6901638299 1)) .v) (.rational 4246416878 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3203382529 1) .v) (.rational 6319219565 1)) .v)
    (.rational 3617527000 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2161979484 1) .v) (.rational 4061451045 1)) .v) (.rational 2145624185 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1027949519 1) .v) (.rational 1836248341 1)) .v)
    (.rational 887495825 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 339116077
    1) .v) (.rational 575581875 1)) .v) (.rational 252342493 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 74911699 1) .v) (.rational 120840443 1)) .v) (.rational 47703651
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 10361823 1) .v) (.rational
    15908704 1)) .v) (.rational 5629951 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 787430 1) .v) (.rational 1153640 1)) .v) (.rational 366210 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 23904 1) .v) (.rational 33514 1)) .v) (.rational 9610
    1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 21553922 1) .v) (.rational 49640844 1)) .v) (.rational 33835812
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 183208337 1) .v) (.rational 409582917 1)) .v)
    (.rational 268771743 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 701186416 1) .v)
    (.rational 1518719468 1)) .v) (.rational 955660880 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1594731380 1) .v) (.rational 3339676317 1)) .v) (.rational 2006163528
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2395012712 1) .v) (.rational
    4839474401 1)) .v) (.rational 2761197661 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2495462476 1) .v) (.rational 4855276053 1)) .v) (.rational 2616329753 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1843667756 1) .v) (.rational 3447070001 1))
    .v) (.rational 1743421908 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    969232880 1) .v) (.rational 1738263598 1)) .v) (.rational 819679841 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 358011220 1) .v) (.rational 614994252 1)) .v)
    (.rational 268543648 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 90017647
    1) .v) (.rational 147975556 1)) .v) (.rational 59452296 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 14494784 1) .v) (.rational 22797089 1)) .v) (.rational 8384776
    1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1325104 1) .v) (.rational
    1995239 1)) .v) (.rational 670135 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 51014 1) .v) (.rational 73625 1)) .v) (.rational 22611 1)) (.pow .g 12))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    9166024 1) .v) (.rational 20077314 1)) .v) (.rational 12344970 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 82494216 1) .v) (.rational 176593552 1)) .v) (.rational 105415834 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 335513615 1) .v) (.rational 700806398 1)) .v)
    (.rational 404929515 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 814240024
    1) .v) (.rational 1656686128 1)) .v) (.rational 923437823 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1311035639 1) .v) (.rational 2593721645 1)) .v) (.rational
    1389399761 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1472590189 1) .v)
    (.rational 2827483369 1)) .v) (.rational 1449415215 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1180426879 1) .v) (.rational 2195521387 1)) .v) (.rational 1071943231
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 678514261 1) .v) (.rational
    1220161525 1)) .v) (.rational 564499501 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 276623279 1) .v) (.rational 480099863 1)) .v) (.rational 209330913 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 77678679 1) .v) (.rational 129912155 1)) .v)
    (.rational 53092811 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 14184350 1)
    .v) (.rational 22831755 1)) .v) (.rational 8702010 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1501383 1) .v) (.rational 2324295 1)) .v) (.rational 822912 1)) (.pow
    .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 68966 1) .v) (.rational 102662 1)) .v)
    (.rational 33696 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2952314 1) .v) (.rational 6188758
    1)) .v) (.rational 3488696 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 28046983 1) .v)
    (.rational 57791049 1)) .v) (.rational 31866662 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 120782831 1) .v) (.rational 244320465 1)) .v) (.rational 131494563 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 311455997 1) .v) (.rational 617632711 1))
    .v) (.rational 323655175 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    534962560 1) .v) (.rational 1038449612 1)) .v) (.rational 528367411 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 643891526 1) .v) (.rational 1221530325 1)) .v)
    (.rational 601581704 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 555966250
    1) .v) (.rational 1029025459 1)) .v) (.rational 488803630 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 346323146 1) .v) (.rational 624261493 1)) .v) (.rational
    284908226 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 154116262 1) .v)
    (.rational 270049011 1)) .v) (.rational 117915310 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 47651395 1) .v) (.rational 81018942 1)) .v) (.rational 33693706 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 9684527 1) .v) (.rational 15949832
    1)) .v) (.rational 6288783 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1156777 1) .v) (.rational 1842600 1)) .v) (.rational 685823 1)) (.pow .g 11))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 61080 1) .v) (.rational 93983 1)) .v) (.rational 32903 1)) (.pow
    .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 691483 1) .v) (.rational 1395780 1)) .v) (.rational 732987 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6914830 1) .v) (.rational 13787584 1)) .v)
    (.rational 7129219 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 31430403 1) .v)
    (.rational 61845092 1)) .v) (.rational 31439694 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 85800972 1) .v) (.rational 166429210 1)) .v) (.rational 83038338 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 156538774 1) .v) (.rational 298969326 1))
    .v) (.rational 146119272 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    200884196 1) .v) (.rational 377269128 1)) .v) (.rational 180220722 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 185721886 1) .v) (.rational 342490176 1)) .v) (.rational
    159509280 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 124476704 1) .v)
    (.rational 225048300 1)) .v) (.rational 101898576 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 59935567 1) .v) (.rational 106058280 1)) .v) (.rational 46538463 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 20183454 1) .v) (.rational 34894056
    1)) .v) (.rational 14786547 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4502783 1) .v) (.rational 7591468 1)) .v) (.rational 3094810 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 596036 1) .v) (.rational 978122 1)) .v) (.rational 382086
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 35296 1) .v) (.rational 56278
    1)) .v) (.rational 20982 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 110072 1) .v) (.rational
    215380 1)) .v) (.rational 107093 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1155756 1)
    .v) (.rational 2243284 1)) .v) (.rational 1104428 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5529108 1) .v) (.rational 10638140 1)) .v) (.rational 5180807 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 15927586 1) .v) (.rational 30354319 1)) .v)
    (.rational 14606733 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 30752514 1)
    .v) (.rational 58001331 1)) .v) (.rational 27543867 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 41897520 1) .v) (.rational 78129204 1)) .v) (.rational 36561804 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 41269536 1) .v) (.rational 76006644
    1)) .v) (.rational 34992258 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    29587212 1) .v) (.rational 53751954 1)) .v) (.rational 24299142 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15307236 1) .v) (.rational 27394494 1)) .v) (.rational
    12133383 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 5566964 1) .v)
    (.rational 9799456 1)) .v) (.rational 4241792 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1349148 1) .v) (.rational 2332024 1)) .v) (.rational 983711 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 195330 1) .v) (.rational 330935 1)) .v)
    (.rational 135605 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 12754 1) .v)
    (.rational 21139 1)) .v) (.rational 8385 1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10499 1)
    .v) (.rational 20078 1)) .v) (.rational 9619 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    115489 1) .v) (.rational 219854 1)) .v) (.rational 104765 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 580034 1) .v) (.rational 1098730 1)) .v) (.rational 520496 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1758225 1) .v) (.rational 3312490 1)) .v)
    (.rational 1559065 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3581175 1)
    .v) (.rational 6706860 1)) .v) (.rational 3134085 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5161218 1) .v) (.rational 9602796 1)) .v) (.rational 4451658 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5394228 1) .v) (.rational 9963828 1)) .v)
    (.rational 4578000 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4117098 1)
    .v) (.rational 7543860 1)) .v) (.rational 3431562 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2276025 1) .v) (.rational 4133190 1)) .v) (.rational 1858965 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 888125 1) .v) (.rational 1596710 1)) .v)
    (.rational 708985 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 231994 1) .v)
    (.rational 412418 1)) .v) (.rational 180464 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36389 1) .v) (.rational 63874 1)) .v) (.rational 27485 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2589 1) .v) (.rational 4480 1)) .v) (.rational 1891
    1)) (.pow .g 12))) (.pow .f 6))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 442 1) .v) (.rational 836 1)) .v) (.rational 394 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5083 1) .v) (.rational 9598 1)) .v) (.rational
    4515 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 26741 1) .v) (.rational 50402 1))
    .v) (.rational 23661 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 85085 1)
    .v) (.rational 160050 1)) .v) (.rational 74965 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 182325 1) .v) (.rational 342210 1)) .v) (.rational 159885 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 277134 1) .v) (.rational 518892 1)) .v)
    (.rational 241758 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 306306 1) .v)
    (.rational 571956 1)) .v) (.rational 265650 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 247962 1) .v) (.rational 461604 1)) .v) (.rational 213642 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 145860 1) .v) (.rational 270600 1)) .v)
    (.rational 124740 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 60775 1) .v)
    (.rational 112310 1)) .v) (.rational 51535 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17017 1) .v) (.rational 31306 1)) .v) (.rational 14289 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2873 1) .v) (.rational 5258 1)) .v) (.rational 2385 1))
    (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 221 1) .v) (.rational 402 1)) .v)
    (.rational 181 1)) (.pow .g 12))) (.pow .f 7)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0412

namespace FullLow0413
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow3.c014 e f g v*((e+f)*(e+f+g))^5*(f+g)^4+
    4*SmallGap.PolarCoefficientsLow2.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    2*SmallGap.PolarCoefficientsLow3.c023 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^3+
    12*SmallGap.PolarCoefficientsLow1.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow2.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow3.c032 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^2+
    32*SmallGap.PolarCoefficientsLow0.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    48*SmallGap.PolarCoefficientsLow1.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsLow2.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    4*SmallGap.PolarCoefficientsLow3.c041 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)+
    160*SmallGap.PolarCoefficientsLow0.c050 e f g v*e*((e+f)*(e+f+g))^5+
    120*SmallGap.PolarCoefficientsLow1.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsLow2.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    5*SmallGap.PolarCoefficientsLow3.c050 e f g v*e^4*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow2.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    3*SmallGap.PolarCoefficientsLow1.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow2.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    8*SmallGap.PolarCoefficientsLow0.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow1.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow2.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    24*SmallGap.PolarCoefficientsLow0.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    9*SmallGap.PolarCoefficientsLow1.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsLow2.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    48*SmallGap.PolarCoefficientsLow0.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    12*SmallGap.PolarCoefficientsLow1.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow2.c140 e f g v*e^4*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow0.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsLow0.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow0.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow0.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(140*SmallGap.ReducedLayers.low0_010_0 e g
    v*e^4+84*SmallGap.ReducedLayers.low0_010_1 e g v*e^5+28*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^6+4*SmallGap.ReducedLayers.low0_010_3 e g v*e^7+56*SmallGap.ReducedLayers.low0_001_0 e g
    v*e^5+28*SmallGap.ReducedLayers.low0_001_1 e g v*e^6+8*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^7+1*SmallGap.ReducedLayers.low0_001_3 e g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(30*SmallGap.ReducedLayers.low1_020_0 e g v*e^2+30*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_020_2 e g v*e^4+3*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^5+20*SmallGap.ReducedLayers.low1_011_0 e g v*e^3+15*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_011_2 e g v*e^5+1*SmallGap.ReducedLayers.low1_011_3 e g
    v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4950 1) .v) (.rational 172975 1)) .e)
    (.add (.mul (.add (.mul (.add (.mul (.rational 3750 1) .v) (.rational 93900 1)) .v) (.rational
    1480335 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 9375 1) .v) (.rational 144150 1)) .v)
    (.rational 1938030 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    68049 1) .v) (.rational 849408 1)) .v) (.rational 7974528 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 204147 1) .v) (.rational 1768554 1)) .v) (.rational 14394677 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 221007 1) .v) (.rational 1183512 1)) .v) (.rational
    9007390 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 580776 1) .v) (.rational 4853872 1)) .v) (.rational 30330281 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2032716 1) .v) (.rational 12804356 1)) .v) (.rational 70012929
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2748252 1) .v) (.rational 12360522 1))
    .v) (.rational 60305697 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1788840
    1) .v) (.rational 5366240 1)) .v) (.rational 23814475 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3091051 1) .v) (.rational
    19582514 1)) .v) (.rational 86600644 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 12364204
    1) .v) (.rational 62660888 1)) .v) (.rational 244269734 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 19946120 1) .v) (.rational 78561593 1)) .v) (.rational 269468517 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 16563646 1) .v) (.rational 49130767 1)) .v)
    (.rational 146876621 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7447573 1)
    .v) (.rational 16125305 1)) .v) (.rational 40969169 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11475974 1) .v)
    (.rational 59087346 1)) .v) (.rational 192670081 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 51641883 1) .v) (.rational 222469370 1)) .v) (.rational 644205216 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 96513772 1) .v) (.rational 342038380 1)) .v)
    (.rational 870617542 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 96802748
    1) .v) (.rational 277531055 1)) .v) (.rational 610093719 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 56075652 1) .v) (.rational 128270889 1)) .v) (.rational 236252374
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 18679987 1) .v) (.rational
    33924939 1)) .v) (.rational 49718145 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 31508639 1) .v)
    (.rational 137883416 1)) .v) (.rational 342107176 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 157543195 1) .v) (.rational 597248684 1)) .v) (.rational 1326848915 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 334099352 1) .v) (.rational 1085573257 1)) .v)
    (.rational 2131760710 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 391138238
    1) .v) (.rational 1078510576 1)) .v) (.rational 1837265744 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 275346793 1) .v) (.rational 639588539 1)) .v) (.rational
    919528795 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 118737965 1) .v)
    (.rational 232006107 1)) .v) (.rational 270448402 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 30425640 1) .v) (.rational 50472188 1)) .v) (.rational 45120903 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 66190402 1) .v) (.rational 253923394 1)) .v)
    (.rational 492369513 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 364047211 1) .v)
    (.rational 1243595725 1)) .v) (.rational 2179319697 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 862634783 1) .v) (.rational 2605008715 1)) .v) (.rational 4072857317 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1151502441 1) .v) (.rational 3054076098 1))
    .v) (.rational 4187607674 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    949899012 1) .v) (.rational 2202565144 1)) .v) (.rational 2588611395 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 499298961 1) .v) (.rational 1011305096 1)) .v)
    (.rational 988547910 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 165978971
    1) .v) (.rational 295265818 1)) .v) (.rational 231202154 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 33302999 1) .v) (.rational 52793489 1)) .v) (.rational 31789979
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 108574525 1) .v) (.rational
    373419778 1)) .v) (.rational 579775686 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    651447150 1) .v) (.rational 2039553012 1)) .v) (.rational 2891287864 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1704338077 1) .v) (.rational 4831838294 1)) .v) (.rational
    6181515557 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2550091510 1) .v)
    (.rational 6515995772 1)) .v) (.rational 7413771694 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2404627729 1) .v) (.rational 5519201357 1)) .v) (.rational 5483783324
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1483880506 1) .v) (.rational
    3056331968 1)) .v) (.rational 2593317282 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 601956297 1) .v) (.rational 1115754179 1)) .v) (.rational 787906004 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 156752812 1) .v) (.rational 263631421 1))
    .v) (.rational 150957385 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    24676188 1) .v) (.rational 38214886 1)) .v) (.rational 17429260 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 140670604 1) .v) (.rational 441061460 1)) .v)
    (.rational 560980843 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 914358926 1) .v)
    (.rational 2656812673 1)) .v) (.rational 3119016498 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2616116284 1) .v) (.rational 7016090386 1)) .v) (.rational 7527336706 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4330691376 1) .v) (.rational 10680896950 1))
    .v) (.rational 10348061758 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4584580880 1) .v) (.rational 10369276253 1)) .v) (.rational 8944120311 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3237350919 1) .v) (.rational 6706107767 1)) .v)
    (.rational 5065785118 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1542503844 1) .v) (.rational 2929473308 1)) .v) (.rational 1903376916 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 490069092 1) .v) (.rational 857018729 1)) .v)
    (.rational 470694439 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 100020812
    1) .v) (.rational 162427674 1)) .v) (.rational 74512216 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12163510 1) .v) (.rational 18574415 1)) .v) (.rational 7124149
    1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 144639659
    1) .v) (.rational 418749240 1)) .v) (.rational 445905972 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1012477613 1) .v) (.rational 2756482520 1)) .v) (.rational 2739521037 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3143384544 1) .v) (.rational 8021607471 1)) .v)
    (.rational 7380326662 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5698098295 1) .v) (.rational 13588840010 1)) .v) (.rational 11465137467 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6680025399 1) .v) (.rational 14850351513 1)) .v)
    (.rational 11365624030 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5298275734 1) .v) (.rational 10962506176 1)) .v) (.rational 7518779498 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2888694668 1) .v) (.rational 5561870960 1)) .v)
    (.rational 3374845816 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1077263039 1) .v) (.rational 1933712850 1)) .v) (.rational 1025508705 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 267860265 1) .v) (.rational 450257264 1)) .v)
    (.rational 206879739 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 42126594
    1) .v) (.rational 66794527 1)) .v) (.rational 26555399 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3795025 1) .v) (.rational 5729328 1)) .v) (.rational 1991295 1)) (.pow
    .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    117900604 1) .v) (.rational 318325284 1)) .v) (.rational 289745307 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 884254530 1) .v) (.rational 2272389046 1)) .v) (.rational 1951721075
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2959577630 1) .v) (.rational 7219690740
    1)) .v) (.rational 5813440987 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5826060890 1) .v) (.rational 13456425620 1)) .v) (.rational 10083881979 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7482733424 1) .v) (.rational 16326178974 1)) .v)
    (.rational 11292250988 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6572990193 1) .v) (.rational 13523350795 1)) .v) (.rational 8555795178 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4023785589 1) .v) (.rational 7799033577 1)) .v)
    (.rational 4471142302 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1715414493 1) .v) (.rational 3133091646 1)) .v) (.rational 1613177483 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 499798434 1) .v) (.rational 861799820 1)) .v)
    (.rational 395770264 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 95497109
    1) .v) (.rational 156035842 1)) .v) (.rational 63742015 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 11077975 1) .v) (.rational 17244640 1)) .v) (.rational 6291527
    1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 671177 1) .v) (.rational
    1001215 1)) .v) (.rational 330038 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 75660269 1) .v) (.rational 192020062 1))
    .v) (.rational 152363612 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 605282152 1) .v)
    (.rational 1476907912 1)) .v) (.rational 1117433958 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2171948006 1) .v) (.rational 5083703553 1)) .v) (.rational 3649216827 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4611198382 1) .v) (.rational 10330176391 1))
    .v) (.rational 6995690013 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6432382695 1) .v) (.rational 13762843269 1)) .v) (.rational 8738269921 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6189055120 1) .v) (.rational 12623903339 1)) .v)
    (.rational 7464064041 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4193428699 1) .v) (.rational 8142455991 1)) .v) (.rational 4452003118 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2004909886 1) .v) (.rational 3703206537 1)) .v)
    (.rational 1859709863 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 666501827
    1) .v) (.rational 1171311536 1)) .v) (.rational 537171921 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 148784880 1) .v) (.rational 249124469 1)) .v) (.rational
    103975273 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 20876201 1) .v)
    (.rational 33389542 1)) .v) (.rational 12685777 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1617732 1) .v) (.rational 2479584 1)) .v) (.rational 861852 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 50455 1) .v) (.rational 74279 1)) .v)
    (.rational 23824 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 37698662 1) .v) (.rational 90518042 1)) .v)
    (.rational 63776059 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 320438627 1) .v)
    (.rational 745986420 1)) .v) (.rational 506051996 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1226908424 1) .v) (.rational 2764063196 1)) .v) (.rational 1798423650 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2793040640 1) .v) (.rational 6077407067 1))
    .v) (.rational 3776518619 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4201547988 1) .v) (.rational 8812843699 1)) .v) (.rational 5205714508 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4388888920 1) .v) (.rational 8857793920 1)) .v)
    (.rational 4948529385 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3254587316 1) .v) (.rational 6309786609 1)) .v) (.rational 3316171511 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1719943258 1) .v) (.rational 3198974893 1)) .v)
    (.rational 1573231473 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 639920410
    1) .v) (.rational 1140910692 1)) .v) (.rational 522486584 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 162499813 1) .v) (.rational 277685794 1)) .v) (.rational
    117973443 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 26520228 1) .v)
    (.rational 43464693 1)) .v) (.rational 17099671 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2469254 1) .v) (.rational 3886354 1)) .v) (.rational 1417100 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 97484 1) .v) (.rational 147517 1)) .v)
    (.rational 50033 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 14250913 1) .v) (.rational 32550696 1)) .v)
    (.rational 20716144 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 128258217 1) .v)
    (.rational 286066900 1)) .v) (.rational 176826729 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 521837864 1) .v) (.rational 1134735043 1)) .v) (.rational 679309114 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1267516660 1) .v) (.rational 2682669348 1))
    .v) (.rational 1550438062 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2043930475 1) .v) (.rational 4203283603 1)) .v) (.rational 2337054567 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2301123657 1) .v) (.rational 4590062921 1)) .v)
    (.rational 2445872580 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1850829096 1) .v) (.rational 3574908088 1)) .v) (.rational 1818214613 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1068953789 1) .v) (.rational 1996145375 1)) .v)
    (.rational 964957416 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 438684645
    1) .v) (.rational 790916878 1)) .v) (.rational 361899657 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 124300510 1) .v) (.rational 216149603 1)) .v) (.rational 93270047
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 22976164 1) .v) (.rational
    38513585 1)) .v) (.rational 15628161 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2472479 1) .v) (.rational 3994653 1)) .v) (.rational 1522174 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 116155 1) .v) (.rational 180907 1)) .v) (.rational
    64752 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 3937050 1) .v) (.rational 8596394 1)) .v)
    (.rational 5021041 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 37401975 1) .v) (.rational
    80227785 1)) .v) (.rational 45862901 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    161122527 1) .v) (.rational 339089551 1)) .v) (.rational 189326815 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 415791117 1) .v) (.rational 857360690 1)) .v) (.rational
    466465248 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 715103024 1) .v)
    (.rational 1442617304 1)) .v) (.rational 762869131 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 862451790 1) .v) (.rational 1699583393 1)) .v) (.rational 871074008 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 746879266 1) .v) (.rational
    1435460103 1)) .v) (.rational 710850448 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 467184562 1) .v) (.rational 874305679 1)) .v) (.rational 416960198 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 209096862 1) .v) (.rational 380429575 1))
    .v) (.rational 174127513 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    65158379 1) .v) (.rational 115084154 1)) .v) (.rational 50385411 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 13383335 1) .v) (.rational 22918214 1)) .v) (.rational
    9568017 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1621521 1) .v)
    (.rational 2689563 1)) .v) (.rational 1068042 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 87280 1) .v) (.rational 140123 1)) .v) (.rational 52843 1)) (.pow .g 12)))
    (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 746475 1) .v) (.rational 1565368 1)) .v) (.rational 851691 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7464750 1) .v) (.rational 15457302 1)) .v) (.rational
    8285340 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 33939053 1) .v) (.rational
    69327688 1)) .v) (.rational 36557102 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 92706102 1) .v) (.rational 186609974 1)) .v) (.rational 96647000 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 169316459 1) .v) (.rational 335454645 1)) .v)
    (.rational 170329618 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 217639060
    1) .v) (.rational 423862452 1)) .v) (.rational 210574256 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 201695606 1) .v) (.rational 385603932 1)) .v) (.rational
    187011664 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 135641284 1) .v)
    (.rational 254190804 1)) .v) (.rational 120049112 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 65617397 1) .v) (.rational 120350454 1)) .v) (.rational 55202035 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 22238014 1) .v) (.rational 39857590
    1)) .v) (.rational 17705108 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5004005 1) .v) (.rational 8750964 1)) .v) (.rational 3753850 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 670086 1) .v) (.rational 1141750 1)) .v) (.rational 471664
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 40301 1) .v) (.rational 66821
    1)) .v) (.rational 26520 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 86306 1) .v) (.rational
    174676 1)) .v) (.rational 89802 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 906213 1) .v)
    (.rational 1819051 1)) .v) (.rational 926388 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4336140 1) .v) (.rational 8626580 1)) .v) (.rational 4347950 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 12496585 1) .v) (.rational 24621352 1)) .v)
    (.rational 12268887 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 24146640 1)
    .v) (.rational 47074863 1)) .v) (.rational 23164263 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 32936922 1) .v) (.rational 63476394 1)) .v) (.rational 30803316 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 32499936 1) .v) (.rational 61851300
    1)) .v) (.rational 29555064 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    23357610 1) .v) (.rational 43845492 1)) .v) (.rational 20595042 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12125610 1) .v) (.rational 22422102 1)) .v) (.rational
    10333212 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 4430465 1) .v)
    (.rational 8059363 1)) .v) (.rational 3636288 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1080516 1) .v) (.rational 1930768 1)) .v) (.rational 850914 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 157773 1) .v) (.rational 276524 1)) .v)
    (.rational 118751 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 10420 1) .v)
    (.rational 17887 1)) .v) (.rational 7467 1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4548 1) .v)
    (.rational 8936 1)) .v) (.rational 4404 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 50028
    1) .v) (.rational 97854 1)) .v) (.rational 47986 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 251289 1) .v) (.rational 489109 1)) .v) (.rational 238540 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 761910 1) .v) (.rational 1475040 1)) .v) (.rational
    715050 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1552545 1) .v)
    (.rational 2988045 1)) .v) (.rational 1438860 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2239056 1) .v) (.rational 4281492 1)) .v) (.rational 2046468 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2342466 1) .v) (.rational 4447338 1)) .v)
    (.rational 2108232 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1790388 1)
    .v) (.rational 3372408 1)) .v) (.rational 1583940 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 991710 1) .v) (.rational 1851690 1)) .v) (.rational 860700 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 388020 1) .v) (.rational 717470 1)) .v)
    (.rational 329610 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 101733 1) .v)
    (.rational 186081 1)) .v) (.rational 84364 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16038 1) .v) (.rational 28984 1)) .v) (.rational 12946 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1149 1) .v) (.rational 2049 1)) .v) (.rational 900
    1)) (.pow .g 12))) (.pow .f 6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0413

namespace FullLow0414
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c014 e f g v*((e+f)*(e+f+g))^5*(f+g)^4+
    4*SmallGap.PolarCoefficientsLow3.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    2*SmallGap.PolarCoefficientsLow4.c023 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^3+
    12*SmallGap.PolarCoefficientsLow2.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow3.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow4.c032 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^2+
    32*SmallGap.PolarCoefficientsLow1.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    48*SmallGap.PolarCoefficientsLow2.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsLow3.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    4*SmallGap.PolarCoefficientsLow4.c041 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)+
    80*SmallGap.PolarCoefficientsLow0.c050 e f g v*((e+f)*(e+f+g))^5+
    160*SmallGap.PolarCoefficientsLow1.c050 e f g v*e*((e+f)*(e+f+g))^5+
    120*SmallGap.PolarCoefficientsLow2.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsLow3.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    5*SmallGap.PolarCoefficientsLow4.c050 e f g v*e^4*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow3.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    3*SmallGap.PolarCoefficientsLow2.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow3.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    8*SmallGap.PolarCoefficientsLow1.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow2.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow3.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    20*SmallGap.PolarCoefficientsLow0.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsLow1.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    9*SmallGap.PolarCoefficientsLow2.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsLow3.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    80*SmallGap.PolarCoefficientsLow0.c140 e f g v*e*((e+f)*(e+f+g))^4+
    48*SmallGap.PolarCoefficientsLow1.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    12*SmallGap.PolarCoefficientsLow2.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow3.c140 e f g v*e^4*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow1.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    5*SmallGap.PolarCoefficientsLow0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow1.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    10*SmallGap.PolarCoefficientsLow0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow1.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    15*SmallGap.PolarCoefficientsLow0.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsLow1.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(140*SmallGap.ReducedLayers.low0_010_0 e g
    v*e^3+140*SmallGap.ReducedLayers.low0_010_1 e g v*e^4+84*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^5+28*SmallGap.ReducedLayers.low0_010_3 e g v*e^6+4*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^7+70*SmallGap.ReducedLayers.low0_001_0 e g v*e^4+56*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^5+28*SmallGap.ReducedLayers.low0_001_2 e g v*e^6+8*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^7+1*SmallGap.ReducedLayers.low0_001_4 e g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.low1_020_0 e g v*e^1+30*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^2+30*SmallGap.ReducedLayers.low1_020_2 e g v*e^3+15*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_020_4 e g v*e^5+15*SmallGap.ReducedLayers.low1_011_0 e g
    v*e^2+20*SmallGap.ReducedLayers.low1_011_1 e g v*e^3+15*SmallGap.ReducedLayers.low1_011_2 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_011_3 e g v*e^5+1*SmallGap.ReducedLayers.low1_011_4 e g
    v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 11550 1) .v) (.rational 431475 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 7800 1) .v) (.rational 207390 1)) .v) (.rational 3557280
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 19500 1) .v) (.rational 313230 1)) .v)
    (.rational 4584750 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    137196 1) .v) (.rational 1788162 1)) .v) (.rational 18432507 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 411588 1) .v) (.rational 3647946 1)) .v) (.rational 32704938 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 445728 1) .v) (.rational 2346288 1)) .v) (.rational
    19998225 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1135764 1) .v) (.rational 9798518 1)) .v) (.rational 67322661 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3975174 1) .v) (.rational 25344394 1)) .v) (.rational 152683396
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5376378 1) .v) (.rational 23729658 1))
    .v) (.rational 128518672 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3503010 1) .v) (.rational 9797848 1)) .v) (.rational 49158964 1)) (.pow .g 3)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5859368 1) .v)
    (.rational 38077210 1)) .v) (.rational 184284347 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23437472 1) .v) (.rational 119787064 1)) .v) (.rational 510887650 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 37822544 1) .v) (.rational 146776989 1)) .v)
    (.rational 551386074 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 31436480
    1) .v) (.rational 88984439 1)) .v) (.rational 291973931 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 14159096 1) .v) (.rational 28026859 1)) .v) (.rational 78220013
    1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 21045802 1) .v) (.rational 110934984 1)) .v) (.rational 392392881 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 94706109 1) .v) (.rational 411972013 1)) .v)
    (.rational 1290915326 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 177056680 1) .v)
    (.rational 622839342 1)) .v) (.rational 1710352959 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 177736538 1) .v) (.rational 495337289 1)) .v) (.rational 1168989405 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 103118874 1) .v) (.rational
    223815873 1)) .v) (.rational 438244648 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34436761 1) .v) (.rational 57899548 1)) .v) (.rational 88315705 1)) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 55726776 1) .v) (.rational 249966498 1)) .v) (.rational 665521963 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 278633880 1) .v) (.rational 1071251702 1)) .v)
    (.rational 2544105008 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 591103862 1) .v)
    (.rational 1923870253 1)) .v) (.rational 4018187971 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 692612168 1) .v) (.rational 1886617598 1)) .v) (.rational 3393079139
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 488324548 1) .v) (.rational
    1104347033 1)) .v) (.rational 1656957376 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 211093352 1) .v) (.rational 396293369 1)) .v) (.rational 473260902 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 54282470 1) .v) (.rational 85809602 1)) .v)
    (.rational 76400154 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 112390386 1) .v)
    (.rational 443383590 1)) .v) (.rational 912585869 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 618147123 1) .v) (.rational 2154110259 1)) .v) (.rational 3989859140 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1465301421 1) .v) (.rational 4474436473 1)) .v)
    (.rational 7353352765 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1957752972 1) .v) (.rational 5202078127 1)) .v) (.rational 7442711989 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1617585300 1) .v) (.rational 3723949428 1)) .v)
    (.rational 4521487482 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 852397875
    1) .v) (.rational 1701373404 1)) .v) (.rational 1695466335 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 284396685 1) .v) (.rational 496596122 1)) .v) (.rational
    390093142 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 57351678 1) .v)
    (.rational 89411236 1)) .v) (.rational 53234020 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 175924961 1) .v) (.rational 624812466 1)) .v) (.rational 1020017252 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1055549766 1) .v) (.rational 3392423420 1)) .v)
    (.rational 5036520146 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2762710702 1) .v)
    (.rational 7990329105 1)) .v) (.rational 10653506141 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4137680655 1) .v) (.rational 10718970585 1)) .v) (.rational 12634315974
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3908312864 1) .v) (.rational
    9043054047 1)) .v) (.rational 9240820187 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2418214952 1) .v) (.rational 4999284030 1)) .v) (.rational 4326895010 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 984791422 1) .v) (.rational 1828767422 1))
    .v) (.rational 1306945901 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    257833259 1) .v) (.rational 435281342 1)) .v) (.rational 251262853 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 40883755 1) .v) (.rational 63973856 1)) .v) (.rational
    29613002 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 215780772
    1) .v) (.rational 701619246 1)) .v) (.rational 931578264 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1402575018 1) .v) (.rational 4208010106 1)) .v) (.rational 5140561113 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4014768434 1) .v) (.rational 11068651246 1)) .v)
    (.rational 12311345655 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6652901189 1) .v) (.rational 16796712728 1)) .v) (.rational 16800108278 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7055689699 1) .v) (.rational 16276250980 1)) .v)
    (.rational 14428272650 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4996332525 1) .v) (.rational 10528592229 1)) .v) (.rational 8138749721 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2390398252 1) .v) (.rational 4614386444 1)) .v)
    (.rational 3059665294 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 763833359
    1) .v) (.rational 1360032047 1)) .v) (.rational 763295819 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 157119895 1) .v) (.rational 261022071 1)) .v) (.rational
    123471145 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 19307417 1) .v)
    (.rational 30391762 1)) .v) (.rational 12260267 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 207875334 1) .v) (.rational 626415126 1)) .v)
    (.rational 693075237 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1455127338 1) .v)
    (.rational 4110394652 1)) .v) (.rational 4235090922 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4519793219 1) .v) (.rational 11929778811 1)) .v) (.rational 11351458680 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8202103920 1) .v) (.rational 20172364780
    1)) .v) (.rational 17557788641 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9633801173 1) .v) (.rational 22032644525 1)) .v) (.rational 17355416029 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7663588154 1) .v) (.rational 16285547942 1)) .v)
    (.rational 11478158888 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4196273001 1) .v) (.rational 8294776440 1)) .v) (.rational 5173100389 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1574360676 1) .v) (.rational 2905129138 1)) .v)
    (.rational 1589139160 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 394715425
    1) .v) (.rational 684360968 1)) .v) (.rational 327246718 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 62773836 1) .v) (.rational 103211473 1)) .v) (.rational 43388470
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 5739844 1) .v) (.rational
    9043758 1)) .v) (.rational 3396599 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 156610626 1) .v) (.rational 441314394 1)) .v)
    (.rational 416340171 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1174579695 1) .v)
    (.rational 3142992130 1)) .v) (.rational 2794260168 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3933214955 1) .v) (.rational 9967859318 1)) .v) (.rational 8297316273 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7751438500 1) .v) (.rational 18560586286 1))
    .v) (.rational 14361637443 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9975061855 1) .v) (.rational 22523613158 1)) .v) (.rational 16073612050 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8788825859 1) .v) (.rational 18691635349 1)) .v)
    (.rational 12201970828 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5404015406 1) .v) (.rational 10824033981 1)) .v) (.rational 6413038704 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2318162442 1) .v) (.rational 4379139135 1)) .v)
    (.rational 2339803396 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 681201225
    1) .v) (.rational 1217594232 1)) .v) (.rational 584804087 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 131674374 1) .v) (.rational 223831672 1)) .v) (.rational 96819771
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 15515135 1) .v) (.rational
    25239296 1)) .v) (.rational 9911796 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 960018 1) .v) (.rational 1502440 1)) .v) (.rational 542422 1)) (.pow .g 11)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    91205556 1) .v) (.rational 241947110 1)) .v) (.rational 198807867 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 729644448 1) .v) (.rational 1857674166 1)) .v) (.rational 1454683462
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2619494770 1) .v) (.rational 6386658926
    1)) .v) (.rational 4742574949 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5567685550 1) .v) (.rational 12972190484 1)) .v) (.rational 9085304936 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7781892818 1) .v) (.rational 17293861292 1)) .v)
    (.rational 11357252005 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7510267142 1) .v) (.rational 15896166882 1)) .v) (.rational 9729963087 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5111168791 1) .v) (.rational 10294891259 1)) .v)
    (.rational 5839036338 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2458937375 1) .v) (.rational 4713335503 1)) .v) (.rational 2464738160 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 824470431 1) .v) (.rational 1505670083 1)) .v)
    (.rational 723565570 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 186206232
    1) .v) (.rational 324739238 1)) .v) (.rational 143350441 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 26542167 1) .v) (.rational 44347331 1)) .v) (.rational 18039299
    1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 2101277 1) .v) (.rational
    3373879 1)) .v) (.rational 1272602 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 67491 1) .v) (.rational 104151 1)) .v) (.rational 36660 1)) (.pow .g 12)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    40204052 1) .v) (.rational 100914868 1)) .v) (.rational 73626941 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 341734442 1) .v) (.rational 830575091 1)) .v) (.rational 583398340 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1309081014 1) .v) (.rational 3074987922 1))
    .v) (.rational 2071663104 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2983418765 1) .v) (.rational 6760298722 1)) .v) (.rational 4350771870 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4496558805 1) .v) (.rational 9811422760 1)) .v)
    (.rational 6005711632 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4711003778 1) .v) (.rational 9882591202 1)) .v) (.rational 5727492354 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3508568249 1) .v) (.rational 7067001834 1)) .v)
    (.rational 3860409131 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1865456329 1) .v) (.rational 3604824740 1)) .v) (.rational 1848393812 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 699885360 1) .v) (.rational 1297290782 1)) .v)
    (.rational 622370430 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 179757910
    1) .v) (.rational 319773835 1)) .v) (.rational 143281542 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 29790711 1) .v) (.rational 50920884 1)) .v) (.rational 21315173
    1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 2831992 1) .v) (.rational
    4657498 1)) .v) (.rational 1825506 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 115025 1) .v) (.rational 182038 1)) .v) (.rational 67013 1)) (.pow .g 12))) .f))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    12950374 1) .v) (.rational 30881766 1)) .v) (.rational 20351517 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 116553366 1) .v) (.rational 271128732 1)) .v) (.rational 173570348 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 474432785 1) .v) (.rational 1074893632 1))
    .v) (.rational 666607056 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1153585984 1) .v) (.rational 2541386734 1)) .v) (.rational 1522175862 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1863597740 1) .v) (.rational 3985558940 1)) .v)
    (.rational 2298015897 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2103996496 1) .v) (.rational 4361178248 1)) .v) (.rational 2412324054 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1699202084 1) .v) (.rational 3408644159 1)) .v)
    (.rational 1802368902 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 987028480
    1) .v) (.rational 1913773654 1)) .v) (.rational 964018698 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 408271484 1) .v) (.rational 764391919 1)) .v) (.rational
    365679837 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 116927330 1) .v)
    (.rational 211274200 1)) .v) (.rational 95759382 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 21926867 1) .v) (.rational 38230817 1)) .v) (.rational 16395122 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 2405688 1) .v) (.rational 4048032 1)) .v)
    (.rational 1642344 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 116010 1)
    .v) (.rational 188367 1)) .v) (.rational 72357 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2870112 1) .v) (.rational 6523962 1)) .v) (.rational 3942781 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 27266064 1) .v) (.rational 60840969 1)) .v) (.rational 35996126 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 117507424 1) .v) (.rational 257058539 1)) .v)
    (.rational 148588726 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 303528472
    1) .v) (.rational 650067181 1)) .v) (.rational 366304336 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 522889712 1) .v) (.rational 1094795608 1)) .v) (.rational
    599919231 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 632241928 1) .v)
    (.rational 1292187858 1)) .v) (.rational 686790755 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 549552248 1) .v) (.rational 1094774786 1)) .v) (.rational 562809149 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 345547384 1) .v) (.rational
    669994994 1)) .v) (.rational 332210931 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 155764952 1) .v) (.rational 293565846 1)) .v) (.rational 140006536 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 49010632 1) .v) (.rational 89681413 1)) .v)
    (.rational 41034251 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 10197896 1)
    .v) (.rational 18101371 1)) .v) (.rational 7929809 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1257104 1) .v) (.rational 2163137 1)) .v) (.rational 906033 1)) (.pow
    .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 69240 1) .v) (.rational 115440 1)) .v)
    (.rational 46200 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 390195 1) .v) (.rational 848016 1))
    .v) (.rational 476363 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3901950 1) .v)
    (.rational 8369408 1)) .v) (.rational 4632770 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17746838 1) .v) (.rational 37530220 1)) .v) (.rational 20442217 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 48515967 1) .v) (.rational 101044178 1)) .v)
    (.rational 54072699 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 88733849 1)
    .v) (.rational 181787974 1)) .v) (.rational 95410549 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 114307480 1) .v) (.rational 230063816 1)) .v) (.rational 118198664 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 106270556 1) .v) (.rational
    209847904 1)) .v) (.rational 105316750 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 71786674 1) .v) (.rational 138885020 1)) .v) (.rational 67937666 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 34940237 1) .v) (.rational 66138868 1)) .v)
    (.rational 31460809 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 11939554 1)
    .v) (.rational 22082984 1)) .v) (.rational 10191214 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2716430 1) .v) (.rational 4903140 1)) .v) (.rational 2190561 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 369111 1) .v) (.rational 649506 1)) .v)
    (.rational 280395 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 22631 1) .v)
    (.rational 38790 1)) .v) (.rational 16159 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 24446 1)
    .v) (.rational 50952 1)) .v) (.rational 26930 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    256683 1) .v) (.rational 530448 1)) .v) (.rational 277775 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1228542 1) .v) (.rational 2515436 1)) .v) (.rational 1303904 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3542854 1) .v) (.rational 7181353 1)) .v)
    (.rational 3681099 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6853221 1)
    .v) (.rational 13740237 1)) .v) (.rational 6956736 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9363906 1) .v) (.rational 18551652 1)) .v) (.rational 9265614 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9262512 1) .v) (.rational 18114348 1))
    .v) (.rational 8911896 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 6680088
    1) .v) (.rational 12881070 1)) .v) (.rational 6232542 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3484404 1) .v) (.rational 6616878 1)) .v) (.rational 3143274 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1281371 1) .v) (.rational 2393412 1)) .v)
    (.rational 1114211 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 315210 1)
    .v) (.rational 578400 1)) .v) (.rational 263384 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 46554 1) .v) (.rational 83825 1)) .v) (.rational 37271 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3121 1) .v) (.rational 5509 1)) .v) (.rational 2388
    1)) (.pow .g 12))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0414

namespace FullLow0415
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsLow4.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    12*SmallGap.PolarCoefficientsLow3.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow4.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    32*SmallGap.PolarCoefficientsLow2.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    48*SmallGap.PolarCoefficientsLow3.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsLow4.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    80*SmallGap.PolarCoefficientsLow1.c050 e f g v*((e+f)*(e+f+g))^5+
    160*SmallGap.PolarCoefficientsLow2.c050 e f g v*e*((e+f)*(e+f+g))^5+
    120*SmallGap.PolarCoefficientsLow3.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsLow4.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow4.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    3*SmallGap.PolarCoefficientsLow3.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow4.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    8*SmallGap.PolarCoefficientsLow2.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow3.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow4.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    20*SmallGap.PolarCoefficientsLow1.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsLow2.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    9*SmallGap.PolarCoefficientsLow3.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsLow4.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    48*SmallGap.PolarCoefficientsLow0.c140 e f g v*((e+f)*(e+f+g))^4+
    80*SmallGap.PolarCoefficientsLow1.c140 e f g v*e*((e+f)*(e+f+g))^4+
    48*SmallGap.PolarCoefficientsLow2.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    12*SmallGap.PolarCoefficientsLow3.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow4.c140 e f g v*e^4*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow2.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    5*SmallGap.PolarCoefficientsLow1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow2.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    10*SmallGap.PolarCoefficientsLow1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow2.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    36*SmallGap.PolarCoefficientsLow0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    15*SmallGap.PolarCoefficientsLow1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsLow2.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(84*SmallGap.ReducedLayers.low0_010_0 e g
    v*e^2+140*SmallGap.ReducedLayers.low0_010_1 e g v*e^3+140*SmallGap.ReducedLayers.low0_010_2 e
    g v*e^4+84*SmallGap.ReducedLayers.low0_010_3 e g v*e^5+28*SmallGap.ReducedLayers.low0_010_4 e
    g v*e^6+4*SmallGap.ReducedLayers.low0_010_5 e g v*e^7+56*SmallGap.ReducedLayers.low0_001_0 e g
    v*e^3+70*SmallGap.ReducedLayers.low0_001_1 e g v*e^4+56*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^5+28*SmallGap.ReducedLayers.low0_001_3 e g v*e^6+8*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^7+1*SmallGap.ReducedLayers.low0_001_5 e g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_0 e g v+15*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_020_2 e g v*e^2+30*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_020_4 e g v*e^4+3*SmallGap.ReducedLayers.low1_020_5 e g
    v*e^5+6*SmallGap.ReducedLayers.low1_011_0 e g v*e^1+15*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^2+20*SmallGap.ReducedLayers.low1_011_2 e g v*e^3+15*SmallGap.ReducedLayers.low1_011_3 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_011_4 e g v*e^5+1*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 19140 1) .v) (.rational 775170 1)) .e) (.add (.mul (.add (.mul
    (.add (.mul (.rational 11340 1) .v) (.rational 326352 1)) .v) (.rational 6161583 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 28350 1) .v) (.rational 484644 1)) .v) (.rational 7808730
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 194040 1) .v)
    (.rational 2685240 1)) .v) (.rational 30709668 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 582120 1) .v) (.rational 5357808 1)) .v) (.rational 53479455 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 630630 1) .v) (.rational 3291972 1)) .v) (.rational
    31873704 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1562148 1) .v) (.rational 14109736 1)) .v) (.rational 107614512 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5467518 1) .v) (.rational 35702390 1)) .v) (.rational 239381360
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7397586 1) .v) (.rational 32250414 1))
    .v) (.rational 196350011 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4825170 1) .v) (.rational 12488906 1)) .v) (.rational 72359930 1)) (.pow .g 3)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7822318 1) .v)
    (.rational 52781054 1)) .v) (.rational 281907649 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31289272 1) .v) (.rational 162898484 1)) .v) (.rational 766786336 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 50512098 1) .v) (.rational 194313889 1)) .v)
    (.rational 807414449 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 42023842
    1) .v) (.rational 113364331 1)) .v) (.rational 413365978 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 18962608 1) .v) (.rational 33789893 1)) .v) (.rational 105354828
    1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 27179930 1) .v) (.rational 148292608 1)) .v) (.rational 572931175 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 122309685 1) .v) (.rational 542303902 1)) .v)
    (.rational 1851625302 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 228746148 1) .v)
    (.rational 804194898 1)) .v) (.rational 2399348529 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 229832988 1) .v) (.rational 624455503 1)) .v) (.rational 1593416854 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 133566576 1) .v) (.rational
    274318745 1)) .v) (.rational 574567900 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 44723235 1) .v) (.rational 68939375 1)) .v) (.rational 109547942 1)) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 69286058 1) .v) (.rational 321898398 1)) .v) (.rational 924679241 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 346430290 1) .v) (.rational 1363450914 1)) .v)
    (.rational 3479538298 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 735209022 1) .v)
    (.rational 2415908696 1)) .v) (.rational 5393003845 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 862254348 1) .v) (.rational 2334106642 1)) .v) (.rational 4450791236
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 608930084 1) .v) (.rational
    1345656783 1)) .v) (.rational 2112964416 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 263907252 1) .v) (.rational 476709853 1)) .v) (.rational 582966290 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 68113888 1) .v) (.rational 102630943 1)) .v)
    (.rational 90419740 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 133650690 1) .v)
    (.rational 547687282 1)) .v) (.rational 1201749189 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 735078795 1) .v) (.rational 2637974185 1)) .v) (.rational 5185266613 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1743198991 1) .v) (.rational 5429618549 1)) .v)
    (.rational 9414204267 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2331304497 1) .v) (.rational 6255131574 1)) .v) (.rational 9368096646 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1929531408 1) .v) (.rational 4441542512 1)) .v)
    (.rational 5585066576 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1019490507 1) .v) (.rational 2018387904 1)) .v) (.rational 2053830377 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 341448873 1) .v) (.rational 589095418 1)) .v)
    (.rational 464820832 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 69212433
    1) .v) (.rational 106905093 1)) .v) (.rational 63158914 1)) (.pow .g 7)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 198380905 1) .v) (.rational 734611684 1)) .v) (.rational
    1265737984 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1190285430 1) .v) (.rational
    3963715180 1)) .v) (.rational 6185069762 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    3116752127 1) .v) (.rational 9278993631 1)) .v) (.rational 12937709404 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4672810860 1) .v) (.rational 12379642539 1)) .v)
    (.rational 15166061727 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4421865779 1) .v) (.rational 10401872202 1)) .v) (.rational 10968128207 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2743737686 1) .v) (.rational 5742220586 1)) .v)
    (.rational 5088639768 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1121934323 1) .v) (.rational 2106181962 1)) .v) (.rational 1531485259 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 295386950 1) .v) (.rational 505486408 1)) .v)
    (.rational 296793845 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 47181906
    1) .v) (.rational 75382449 1)) .v) (.rational 35929434 1)) (.pow .g 8)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 228174152 1) .v) (.rational 776316420 1)) .v)
    (.rational 1079959745 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1483131988 1) .v)
    (.rational 4635035533 1)) .v) (.rational 5913238230 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4247427054 1) .v) (.rational 12142493026 1)) .v) (.rational 14052404608 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7046396929 1) .v) (.rational 18367846951
    1)) .v) (.rational 19037550146 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7487707557 1) .v) (.rational 17768965912 1)) .v) (.rational 16255322287 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5318384841 1) .v) (.rational 11501869185 1)) .v)
    (.rational 9144483132 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2555679384 1) .v) (.rational 5061271044 1)) .v) (.rational 3448154443 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 821623353 1) .v) (.rational 1504312678 1)) .v)
    (.rational 871007600 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 170383275
    1) .v) (.rational 292596907 1)) .v) (.rational 144539970 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 21157591 1) .v) (.rational 34685269 1)) .v) (.rational 14917600
    1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 203145863
    1) .v) (.rational 642296792 1)) .v) (.rational 741141406 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1422021041 1) .v) (.rational 4200740796 1)) .v) (.rational 4503946315 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4419274126 1) .v) (.rational 12159110694 1)) .v)
    (.rational 12011420377 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8029371223 1) .v) (.rational 20524288442 1)) .v) (.rational 18503728325 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9450651326 1) .v) (.rational 22410304150 1)) .v)
    (.rational 18250568454 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7542188563 1) .v) (.rational 16594221774 1)) .v) (.rational 12082028769 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4149153152 1) .v) (.rational 8491123742 1)) .v)
    (.rational 5478138998 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1566847865 1) .v) (.rational 2998521124 1)) .v) (.rational 1705525295 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 396307493 1) .v) (.rational 715240421 1)) .v)
    (.rational 359323115 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 63766122
    1) .v) (.rational 109702671 1)) .v) (.rational 49208897 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5919278 1) .v) (.rational 9810841 1)) .v) (.rational 4000660 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    138726122 1) .v) (.rational 410787584 1)) .v) (.rational 403169594 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1040445915 1) .v) (.rational 2918401559 1)) .v) (.rational 2695733734
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3485974729 1) .v) (.rational 9238748013
    1)) .v) (.rational 7980194594 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6878739361 1) .v) (.rational 17187859141 1)) .v) (.rational 13786313614 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8871412567 1) .v) (.rational 20867528569 1)) .v)
    (.rational 15428847573 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7842848178 1) .v) (.rational 17357567764 1)) .v) (.rational 11745309235 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4846026158 1) .v) (.rational 10099773158 1)) .v)
    (.rational 6216180625 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2093072910 1) .v) (.rational 4118679721 1)) .v) (.rational 2296931304 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 620823209 1) .v) (.rational 1158678041 1)) .v)
    (.rational 585568620 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 121515047
    1) .v) (.rational 216424106 1)) .v) (.rational 99630989 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 14557943 1) .v) (.rational 24900716 1)) .v) (.rational 10542343
    1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 920709 1) .v) (.rational
    1517545 1)) .v) (.rational 596836 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 71299765 1) .v) (.rational 198787402 1))
    .v) (.rational 169730881 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 570398120 1) .v)
    (.rational 1523417662 1)) .v) (.rational 1238802308 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2048949846 1) .v) (.rational 5230916912 1)) .v) (.rational 4031529388 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4360681822 1) .v) (.rational 10620852634 1))
    .v) (.rational 7718013398 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6108597853 1) .v) (.rational 14171470186 1)) .v) (.rational 9657795608 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5915837892 1) .v) (.rational 13059122504 1)) .v)
    (.rational 8302464494 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4046356967 1) .v) (.rational 8497517129 1)) .v) (.rational 5016437528 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1960411616 1) .v) (.rational 3919783343 1)) .v)
    (.rational 2141584329 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 663677100
    1) .v) (.rational 1265976252 1)) .v) (.rational 639405343 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 151852100 1) .v) (.rational 277179328 1)) .v) (.rational
    129639528 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 22025835 1) .v)
    (.rational 38601005 1)) .v) (.rational 16792908 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1784994 1) .v) (.rational 3009009 1)) .v) (.rational 1224015 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 59178 1) .v) (.rational 95594 1)) .v)
    (.rational 36416 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 26677502 1) .v) (.rational 70287948 1)) .v)
    (.rational 53247537 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 226758767 1) .v)
    (.rational 577642145 1)) .v) (.rational 421190802 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 869141696 1) .v) (.rational 2136663982 1)) .v) (.rational 1494101578 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1983387380 1) .v) (.rational 4697090878 1))
    .v) (.rational 3137686242 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2996091808 1) .v) (.rational 6824179234 1)) .v) (.rational 4337228047 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3149920020 1) .v) (.rational 6891155509 1)) .v)
    (.rational 4150370452 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2357806470 1) .v) (.rational 4950037542 1)) .v) (.rational 2814588486 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1262502703 1) .v) (.rational 2542742455 1)) .v)
    (.rational 1360803814 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 478273945
    1) .v) (.rational 924433578 1)) .v) (.rational 464763267 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 124456183 1) .v) (.rational 231093614 1)) .v) (.rational
    109110302 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 20991068 1) .v)
    (.rational 37493756 1)) .v) (.rational 16646700 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2043123 1) .v) (.rational 3512967 1)) .v) (.rational 1469844 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 85687 1) .v) (.rational 141528 1)) .v)
    (.rational 55841 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 6855039 1) .v) (.rational 17111906 1)) .v)
    (.rational 11696741 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 61695351 1) .v)
    (.rational 150056174 1)) .v) (.rational 99632564 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 251273126 1) .v) (.rational 594514932 1)) .v) (.rational 382394614 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 611757052 1) .v) (.rational 1405757030 1))
    .v) (.rational 873356168 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    990472319 1) .v) (.rational 2207018340 1)) .v) (.rational 1320323192 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1122055669 1) .v) (.rational 2420893546 1)) .v)
    (.rational 1390187043 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 910665448
    1) .v) (.rational 1900059564 1)) .v) (.rational 1044118297 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 532651429 1) .v) (.rational 1073674206 1)) .v) (.rational
    563020495 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 222415127 1) .v)
    (.rational 432861890 1)) .v) (.rational 216118638 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 64515044 1) .v) (.rational 121201640 1)) .v) (.rational 57533317 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 12305990 1) .v) (.rational 22318040
    1)) .v) (.rational 10067677 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1381167 1) .v) (.rational 2417980 1)) .v) (.rational 1036813 1)) (.pow .g 11))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 68663 1) .v) (.rational 115904 1)) .v) (.rational 47241 1))
    (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1080868 1) .v) (.rational 2561094 1)) .v) (.rational
    1602166 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 10268246 1) .v) (.rational 23861434
    1)) .v) (.rational 14613100 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 44276148 1)
    .v) (.rational 100769586 1)) .v) (.rational 60293300 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 114506985 1) .v) (.rational 254881559 1)) .v) (.rational 148670226 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 197675466 1) .v) (.rational
    429713486 1)) .v) (.rational 243776656 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 239787387 1) .v) (.rational 508330151 1)) .v) (.rational 279778128 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 209401941 1) .v) (.rational 432302997 1))
    .v) (.rational 230257328 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    132529605 1) .v) (.rational 266103205 1)) .v) (.rational 136822412 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 60275385 1) .v) (.rational 117577399 1)) .v) (.rational
    58227006 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 19193251 1) .v)
    (.rational 36340851 1)) .v) (.rational 17300756 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4057499 1) .v) (.rational 7452237 1)) .v) (.rational 3405932 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 510750 1) .v) (.rational 909488 1)) .v)
    (.rational 398738 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 28917 1) .v)
    (.rational 49889 1)) .v) (.rational 20972 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 78764 1)
    .v) (.rational 177408 1)) .v) (.rational 102796 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 787640 1) .v) (.rational 1749634 1)) .v) (.rational 998966 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3584057 1) .v) (.rational 7843274 1)) .v) (.rational 4406377 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9808773 1) .v) (.rational 21122014
    1)) .v) (.rational 11657769 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    17973817 1) .v) (.rational 38038518 1)) .v) (.rational 20589645 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 23221436 1) .v) (.rational 48236436 1)) .v) (.rational
    25558368 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 21679882 1) .v)
    (.rational 44144100 1)) .v) (.rational 22850730 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 14731262 1) .v) (.rational 29363964 1)) .v) (.rational 14819022 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 7227598 1) .v) (.rational 14085804 1)) .v)
    (.rational 6916374 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2496292 1)
    .v) (.rational 4751178 1)) .v) (.rational 2265490 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 575997 1) .v) (.rational 1069618 1)) .v) (.rational 494477 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 79717 1) .v) (.rational 144326 1)) .v)
    (.rational 64609 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 5005 1) .v)
    (.rational 8830 1)) .v) (.rational 3825 1)) (.pow .g 12))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0415

namespace FullLow0416
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  12*SmallGap.PolarCoefficientsLow4.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    32*SmallGap.PolarCoefficientsLow3.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    48*SmallGap.PolarCoefficientsLow4.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    80*SmallGap.PolarCoefficientsLow2.c050 e f g v*((e+f)*(e+f+g))^5+
    160*SmallGap.PolarCoefficientsLow3.c050 e f g v*e*((e+f)*(e+f+g))^5+
    120*SmallGap.PolarCoefficientsLow4.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    3*SmallGap.PolarCoefficientsLow4.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    8*SmallGap.PolarCoefficientsLow3.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow4.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    20*SmallGap.PolarCoefficientsLow2.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsLow3.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    9*SmallGap.PolarCoefficientsLow4.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    48*SmallGap.PolarCoefficientsLow1.c140 e f g v*((e+f)*(e+f+g))^4+
    80*SmallGap.PolarCoefficientsLow2.c140 e f g v*e*((e+f)*(e+f+g))^4+
    48*SmallGap.PolarCoefficientsLow3.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    12*SmallGap.PolarCoefficientsLow4.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow3.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    5*SmallGap.PolarCoefficientsLow2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow3.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    10*SmallGap.PolarCoefficientsLow2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow3.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    28*SmallGap.PolarCoefficientsLow0.c230 e f g v*((e+f)*(e+f+g))^3+
    36*SmallGap.PolarCoefficientsLow1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    15*SmallGap.PolarCoefficientsLow2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsLow3.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    7*SmallGap.PolarCoefficientsLow0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    14*SmallGap.PolarCoefficientsLow0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(28*SmallGap.ReducedLayers.low0_010_0 e g v*e^1+84*SmallGap.ReducedLayers.low0_010_1
    e g v*e^2+140*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^3+140*SmallGap.ReducedLayers.low0_010_3 e g v*e^4+84*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^5+28*SmallGap.ReducedLayers.low0_010_5 e g v*e^6+4*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^7+28*SmallGap.ReducedLayers.low0_001_0 e g v*e^2+56*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^3+70*SmallGap.ReducedLayers.low0_001_2 e g v*e^4+56*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^5+28*SmallGap.ReducedLayers.low0_001_4 e g v*e^6+8*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^7)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_1 e g v+15*SmallGap.ReducedLayers.low1_020_2 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_020_3 e g v*e^2+30*SmallGap.ReducedLayers.low1_020_4 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_020_5 e g v*e^4+3*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_011_0 e g v+6*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_011_2 e g v*e^2+20*SmallGap.ReducedLayers.low1_011_3 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_011_4 e g v*e^4+6*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_011_6 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 23100 1) .v) (.rational 1031910 1)) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 11760 1) .v) (.rational 375228 1)) .v) (.rational 7914732 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 29400 1) .v) (.rational 547596 1)) .v) (.rational 9851022 1)) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 196434 1) .v) (.rational 2951172
    1)) .v) (.rational 37945980 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 589302 1) .v)
    (.rational 5749212 1)) .v) (.rational 64753530 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 638652 1) .v) (.rational 3351180 1)) .v) (.rational 37509006 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1542156 1) .v)
    (.rational 14879480 1)) .v) (.rational 127476246 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5397546 1) .v) (.rational 36747928 1)) .v) (.rational 277612606 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7305942 1) .v) (.rational 31834152 1)) .v) (.rational
    221194402 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4770990 1) .v)
    (.rational 11343556 1)) .v) (.rational 78031582 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7507934 1) .v) (.rational 53581150
    1)) .v) (.rational 319022585 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 30031736 1) .v)
    (.rational 161901292 1)) .v) (.rational 849795018 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 48501922 1) .v) (.rational 187221433 1)) .v) (.rational 870394343 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 40394690 1) .v) (.rational 104171795 1)) .v)
    (.rational 428412059 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 18264848
    1) .v) (.rational 28799617 1)) .v) (.rational 102594640 1)) (.pow .g 4)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25243378 1)
    .v) (.rational 145064976 1)) .v) (.rational 617131888 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 113595201 1) .v) (.rational 521653375 1)) .v) (.rational 1956133014 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 212536568 1) .v) (.rational 756926564 1)) .v)
    (.rational 2473009694 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 213767050
    1) .v) (.rational 571549333 1)) .v) (.rational 1589288485 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 124465002 1) .v) (.rational 242555373 1)) .v) (.rational
    547059173 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 41800349 1) .v)
    (.rational 58716228 1)) .v) (.rational 97116549 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 61852959 1)
    .v) (.rational 302658314 1)) .v) (.rational 943911770 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 309264795 1) .v) (.rational 1265982098 1)) .v) (.rational 3492219471 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 656622429 1) .v) (.rational 2210652956 1)) .v)
    (.rational 5303033017 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 770900946
    1) .v) (.rational 2100976614 1)) .v) (.rational 4267599679 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 545442267 1) .v) (.rational 1190806103 1)) .v) (.rational
    1963027584 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 237085629 1) .v)
    (.rational 415812201 1)) .v) (.rational 520626981 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 61445133 1) .v) (.rational 88985059 1)) .v) (.rational 77112073 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 113658782 1) .v) (.rational 491560876 1)) .v)
    (.rational 1155687998 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 625123301 1) .v)
    (.rational 2346382535 1)) .v) (.rational 4917775415 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1483149919 1) .v) (.rational 4783486273 1)) .v) (.rational 8788950489 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1985749878 1) .v) (.rational 5458579507 1))
    .v) (.rational 8592223395 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1646776500 1) .v) (.rational 3844008864 1)) .v) (.rational 5024640576 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 872748093 1) .v) (.rational 1738150704 1)) .v)
    (.rational 1812949872 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 293566699
    1) .v) (.rational 507850498 1)) .v) (.rational 404866794 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 59846392 1) .v) (.rational 93048158 1)) .v) (.rational 55242382
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 158821378 1) .v) (.rational
    622274200 1)) .v) (.rational 1136796444 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    952928268 1) .v) (.rational 3336149620 1)) .v) (.rational 5495920344 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2496533242 1) .v) (.rational 7761744550 1)) .v) (.rational
    11367202749 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3747490420 1) .v)
    (.rational 10299889492 1)) .v) (.rational 13174360848 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3553748416 1) .v) (.rational 8622951110 1)) .v) (.rational 9429979379
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2212262092 1) .v) (.rational
    4757412172 1)) .v) (.rational 4345169796 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 908812332 1) .v) (.rational 1752009113 1)) .v) (.rational 1309121944 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 240768490 1) .v) (.rational 424657661 1))
    .v) (.rational 257653527 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    38761560 1) .v) (.rational 64323839 1)) .v) (.rational 32288438 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 169321428 1) .v) (.rational 610736624 1)) .v)
    (.rational 894270484 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1100589282 1) .v)
    (.rational 3629757481 1)) .v) (.rational 4858457780 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3153679344 1) .v) (.rational 9470917696 1)) .v) (.rational 11458947555 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5238754290 1) .v) (.rational 14284668478 1))
    .v) (.rational 15421812785 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5579513266 1) .v) (.rational 13803116453 1)) .v) (.rational 13109580837 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3976875675 1) .v) (.rational 8948681262 1)) .v)
    (.rational 7372883014 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1920600056 1) .v) (.rational 3958586994 1)) .v) (.rational 2799398691 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 621662872 1) .v) (.rational 1188177411 1)) .v)
    (.rational 719638580 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 130063110
    1) .v) (.rational 234473148 1)) .v) (.rational 123040602 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 16328873 1) .v) (.rational 28294868 1)) .v) (.rational 13192307
    1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 136884712
    1) .v) (.rational 459232640 1)) .v) (.rational 555278740 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 958192984 1) .v) (.rational 2993373724 1)) .v) (.rational 3356000248 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2979628533 1) .v) (.rational 8641468326 1)) .v)
    (.rational 8907270004 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5421262406 1) .v) (.rational 14564605878 1)) .v) (.rational 13674877235 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6396316032 1) .v) (.rational 15905910664 1)) .v)
    (.rational 13473927846 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5123607557 1) .v) (.rational 11808145580 1)) .v) (.rational 8945422905 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2833685212 1) .v) (.rational 6076702666 1)) .v)
    (.rational 4091390723 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1077954340 1) .v) (.rational 2166433240 1)) .v) (.rational 1294994238 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 275317896 1) .v) (.rational 523860703 1)) .v)
    (.rational 279792966 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 44857785
    1) .v) (.rational 81751085 1)) .v) (.rational 39553449 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4229069 1) .v) (.rational 7452537 1)) .v) (.rational 3319443 1)) (.pow
    .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    82528634 1) .v) (.rational 259205276 1)) .v) (.rational 265920858 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 618964755 1) .v) (.rational 1836777737 1)) .v) (.rational 1771275234
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2075150507 1) .v) (.rational 5804156803
    1)) .v) (.rational 5228060420 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4100846178 1) .v) (.rational 10790579123 1)) .v) (.rational 9018042423 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5302231915 1) .v) (.rational 13112048229 1)) .v)
    (.rational 10099558266 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4705758233 1) .v) (.rational 10939204462 1)) .v) (.rational 7719243093 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2923991086 1) .v) (.rational 6401757570 1)) .v)
    (.rational 4120799787 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1272755094 1) .v) (.rational 2634503414 1)) .v) (.rational 1544983390 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 381474997 1) .v) (.rational 750789747 1)) .v)
    (.rational 402294420 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 75702408
    1) .v) (.rational 142615362 1)) .v) (.rational 70316226 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9232439 1) .v) (.rational 16741096 1)) .v) (.rational 7662328 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 597148 1) .v) (.rational 1042170
    1)) .v) (.rational 445022 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 35962068 1) .v) (.rational 106171134 1)) .v)
    (.rational 94618253 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 287696544 1) .v)
    (.rational 811988148 1)) .v) (.rational 688706750 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1034136338 1) .v) (.rational 2784491793 1)) .v) (.rational 2237143268 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2204264846 1) .v) (.rational 5652246085 1))
    .v) (.rational 4280475411 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3095932575 1) .v) (.rational 7550818513 1)) .v) (.rational 5363714508 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3010345204 1) .v) (.rational 6979759923 1)) .v)
    (.rational 4629995656 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2071046377 1) .v) (.rational 4567053961 1)) .v) (.rational 2819371885 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1011541518 1) .v) (.rational 2124972105 1)) .v)
    (.rational 1218701505 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 346223191
    1) .v) (.rational 694767357 1)) .v) (.rational 370402623 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 80385880 1) .v) (.rational 154616101 1)) .v) (.rational 76857176
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 11887881 1) .v) (.rational
    21977486 1)) .v) (.rational 10229405 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 988328 1) .v) (.rational 1755126 1)) .v) (.rational 766798 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 33890 1) .v) (.rational 57244 1)) .v) (.rational
    23354 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 10703422 1) .v) (.rational 29776580 1)) .v) (.rational
    23513008 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 90979087 1) .v) (.rational 244298352
    1)) .v) (.rational 185605088 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 348951450
    1) .v) (.rational 902764398 1)) .v) (.rational 657556287 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 797554135 1) .v) (.rational 1984579807 1)) .v) (.rational
    1380706402 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1208019303 1) .v)
    (.rational 2887112921 1)) .v) (.rational 1911389875 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1275285700 1) .v) (.rational 2924384580 1)) .v) (.rational 1835871497
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 960285201 1) .v) (.rational
    2111812975 1)) .v) (.rational 1253384022 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 518469622 1) .v) (.rational 1093661133 1)) .v) (.rational 612389775 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 198639715 1) .v) (.rational 402248032 1))
    .v) (.rational 212326152 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    52478273 1) .v) (.rational 102147066 1)) .v) (.rational 50856815 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9031493 1) .v) (.rational 16914325 1)) .v) (.rational
    7954759 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 903039 1) .v)
    (.rational 1625878 1)) .v) (.rational 722839 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 39272 1) .v) (.rational 67585 1)) .v) (.rational 28313 1)) (.pow .g 12)))
    .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1947539 1) .v) (.rational 5112514 1)) .v) (.rational 3635854 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 17527851 1) .v) (.rational 44768294 1)) .v) (.rational 30917727
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 71436756 1) .v) (.rational 177234458 1))
    .v) (.rational 118543267 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    174196092 1) .v) (.rational 419137436 1)) .v) (.rational 270730330 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 282798500 1) .v) (.rational 658927255 1)) .v) (.rational
    409822113 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 321700736 1) .v)
    (.rational 724909011 1)) .v) (.rational 432875081 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 262663522 1) .v) (.rational 571804045 1)) .v) (.rational 326952337 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 154920322 1) .v) (.rational
    325587059 1)) .v) (.rational 177863847 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 65427397 1) .v) (.rational 132705501 1)) .v) (.rational 69151795 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 19269205 1) .v) (.rational 37718115 1)) .v)
    (.rational 18733188 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 3750602 1)
    .v) (.rational 7084677 1)) .v) (.rational 3353232 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 432386 1) .v) (.rational 787541 1)) .v) (.rational 355155 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 22276 1) .v) (.rational 39006 1)) .v)
    (.rational 16730 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 163464 1) .v) (.rational 405184 1))
    .v) (.rational 262962 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1552908 1) .v)
    (.rational 3770484 1)) .v) (.rational 2394929 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6700622 1) .v) (.rational 15913582 1)) .v) (.rational 9872615 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 17356133 1) .v) (.rational 40259888 1)) .v)
    (.rational 24341776 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 30042444 1)
    .v) (.rational 67965206 1)) .v) (.rational 39955401 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 36592286 1) .v) (.rational 80622676 1)) .v) (.rational 45974969 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 32144882 1) .v) (.rational 68884928
    1)) .v) (.rational 38013899 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    20512128 1) .v) (.rational 42703804 1)) .v) (.rational 22755411 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9433438 1) .v) (.rational 19061648 1)) .v) (.rational
    9789421 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3048694 1) .v)
    (.rational 5974856 1)) .v) (.rational 2953066 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 657192 1) .v) (.rational 1248482 1)) .v) (.rational 593282 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 84859 1) .v) (.rational 156164 1)) .v) (.rational
    71305 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 4966 1) .v) (.rational
    8842 1)) .v) (.rational 3876 1)) (.pow .g 12))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0416

namespace FullLow0417
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  32*SmallGap.PolarCoefficientsLow4.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    80*SmallGap.PolarCoefficientsLow3.c050 e f g v*((e+f)*(e+f+g))^5+
    160*SmallGap.PolarCoefficientsLow4.c050 e f g v*e*((e+f)*(e+f+g))^5+
    8*SmallGap.PolarCoefficientsLow4.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    20*SmallGap.PolarCoefficientsLow3.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsLow4.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    48*SmallGap.PolarCoefficientsLow2.c140 e f g v*((e+f)*(e+f+g))^4+
    80*SmallGap.PolarCoefficientsLow3.c140 e f g v*e*((e+f)*(e+f+g))^4+
    48*SmallGap.PolarCoefficientsLow4.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow4.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    5*SmallGap.PolarCoefficientsLow3.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow4.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    10*SmallGap.PolarCoefficientsLow3.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow4.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    28*SmallGap.PolarCoefficientsLow1.c230 e f g v*((e+f)*(e+f+g))^3+
    36*SmallGap.PolarCoefficientsLow2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    15*SmallGap.PolarCoefficientsLow3.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsLow4.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    7*SmallGap.PolarCoefficientsLow1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    16*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2+
    14*SmallGap.PolarCoefficientsLow1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    4*SmallGap.PolarCoefficientsLow0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_0 e g v+28*SmallGap.ReducedLayers.low0_010_1 e g
    v*e^1+84*SmallGap.ReducedLayers.low0_010_2 e g v*e^2+140*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^3+140*SmallGap.ReducedLayers.low0_010_4 e g v*e^4+84*SmallGap.ReducedLayers.low0_010_5 e g
    v*e^5+28*SmallGap.ReducedLayers.low0_010_6 e g v*e^6+8*SmallGap.ReducedLayers.low0_001_0 e g
    v*e^1+28*SmallGap.ReducedLayers.low0_001_1 e g v*e^2+56*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^3+70*SmallGap.ReducedLayers.low0_001_3 e g v*e^4+56*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^5+28*SmallGap.ReducedLayers.low0_001_5 e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_2 e g v+15*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_020_4 e g v*e^2+30*SmallGap.ReducedLayers.low1_020_5 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_020_6 e g v*e^4+3*SmallGap.ReducedLayers.low1_020_7 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_011_1 e g v+6*SmallGap.ReducedLayers.low1_011_2 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_011_3 e g v*e^2+20*SmallGap.ReducedLayers.low1_011_4 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_011_5 e g v*e^4+6*SmallGap.ReducedLayers.low1_011_6 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_011_7 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    20460 1) .v) (.rational 1030590 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 8700 1)
    .v) (.rational 317640 1)) .v) (.rational 7634142 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 21750 1) .v) (.rational 455340 1)) .v) (.rational 9319668 1)) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 142326 1) .v) (.rational 2393232 1)) .v)
    (.rational 35212308 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 426978 1) .v) (.rational
    4544796 1)) .v) (.rational 58779966 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    462918 1) .v) (.rational 2493528 1)) .v) (.rational 32986836 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1092744 1) .v) (.rational
    11593888 1)) .v) (.rational 113320326 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3824604
    1) .v) (.rational 27888284 1)) .v) (.rational 241129910 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5179188 1) .v) (.rational 23016768 1)) .v) (.rational 185975222 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3386460 1) .v) (.rational 7347452 1)) .v)
    (.rational 62312210 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 5182390 1) .v) (.rational 40224062 1)) .v) (.rational
    270476845 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 20729560 1) .v) (.rational
    118782836 1)) .v) (.rational 704222780 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    33494428 1) .v) (.rational 132608799 1)) .v) (.rational 699348519 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 27929824 1) .v) (.rational 69632953 1)) .v) (.rational
    328810069 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 12658174 1) .v)
    (.rational 17333375 1)) .v) (.rational 72774904 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16870034 1) .v)
    (.rational 104927148 1)) .v) (.rational 496614405 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 75915153 1) .v) (.rational 370644224 1)) .v) (.rational 1541453482 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 142107776 1) .v) (.rational 525215490 1)) .v)
    (.rational 1896812805 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 143106502
    1) .v) (.rational 384253081 1)) .v) (.rational 1174855722 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 83510550 1) .v) (.rational 156520407 1)) .v) (.rational 382882751
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 28145477 1) .v) (.rational
    36146507 1)) .v) (.rational 62002280 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 39674983 1) .v)
    (.rational 209925590 1)) .v) (.rational 716590772 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 198374915 1) .v) (.rational 866822094 1)) .v) (.rational 2604080399 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 421411553 1) .v) (.rational 1490867927 1)) .v)
    (.rational 3869621619 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 495396722
    1) .v) (.rational 1392836190 1)) .v) (.rational 3031909108 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 351323149 1) .v) (.rational 775618431 1)) .v) (.rational
    1348634835 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 153255563 1) .v)
    (.rational 266963803 1)) .v) (.rational 343080640 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 39918811 1) .v) (.rational 56884672 1)) .v) (.rational 48516318 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 69147074 1) .v) (.rational 323537956 1)) .v)
    (.rational 820604769 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 380308907 1) .v)
    (.rational 1530454939 1)) .v) (.rational 3442420903 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 902849659 1) .v) (.rational 3090731411 1)) .v) (.rational 6054920713 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1210506663 1) .v) (.rational 3494896526 1))
    .v) (.rational 5817165814 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1006352684 1) .v) (.rational 2443115910 1)) .v) (.rational 3341647556 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 535365649 1) .v) (.rational 1101121188 1)) .v)
    (.rational 1187748539 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 181042843
    1) .v) (.rational 322928034 1)) .v) (.rational 264153041 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 37163997 1) .v) (.rational 59908207 1)) .v) (.rational 36800320
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 90182441 1) .v) (.rational
    382337266 1)) .v) (.rational 745334580 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    541094646 1) .v) (.rational 2036880522 1)) .v) (.rational 3565150540 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1418525919 1) .v) (.rational 4711126016 1)) .v) (.rational
    7294224195 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2132595340 1) .v)
    (.rational 6222235324 1)) .v) (.rational 8368191614 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2027748914 1) .v) (.rational 5196346657 1)) .v) (.rational 5943524625
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1267464722 1) .v) (.rational
    2870481830 1)) .v) (.rational 2733239424 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 523688867 1) .v) (.rational 1063970503 1)) .v) (.rational 831062500 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 139799396 1) .v) (.rational 261111423 1))
    .v) (.rational 167897341 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    22719035 1) .v) (.rational 40234102 1)) .v) (.rational 21956914 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 87821646 1) .v) (.rational 342423838 1)) .v)
    (.rational 531182203 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 570840699 1) .v)
    (.rational 2025902856 1)) .v) (.rational 2863960674 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1636887224 1) .v) (.rational 5266346468 1)) .v) (.rational 6708077854 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2723632043 1) .v) (.rational 7924522319 1))
    .v) (.rational 8980141646 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2909094538 1) .v) (.rational 7656548615 1)) .v) (.rational 7617975083 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2082556632 1) .v) (.rational 4979304154 1)) .v)
    (.rational 4299997660 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1011987744 1) .v) (.rational 2218843644 1)) .v) (.rational 1653179377 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 330288411 1) .v) (.rational 674049774 1)) .v)
    (.rational 435242720 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 69835684
    1) .v) (.rational 135183646 1)) .v) (.rational 76989820 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 8878309 1) .v) (.rational 16608625 1)) .v) (.rational 8557356 1))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 62967379 1)
    .v) (.rational 227830328 1)) .v) (.rational 290577930 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 440771653 1) .v) (.rational 1480005624 1)) .v) (.rational 1746834879 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1371681854 1) .v) (.rational 4261992405 1)) .v)
    (.rational 4616399244 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2500059635 1) .v) (.rational 7175686332 1)) .v) (.rational 7070161589 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2958587107 1) .v) (.rational 7844386941 1)) .v)
    (.rational 6971196832 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2380779944 1) .v) (.rational 5845752524 1)) .v) (.rational 4653831890 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1325334149 1) .v) (.rational 3030612980 1)) .v)
    (.rational 2154703653 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 508642523
    1) .v) (.rational 1092881606 1)) .v) (.rational 695946847 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 131415428 1) .v) (.rational 268361066 1)) .v) (.rational
    154563219 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 21721147 1) .v)
    (.rational 42644519 1)) .v) (.rational 22526906 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2082167 1) .v) (.rational 3957492 1)) .v) (.rational 1938658 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 32278038 1)
    .v) (.rational 108961760 1)) .v) (.rational 117603405 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 242085285 1) .v) (.rational 770052739 1)) .v) (.rational 780340921 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 812261319 1) .v) (.rational 2429087691 1)) .v)
    (.rational 2296951371 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1608071751 1) .v) (.rational 4514171459 1)) .v) (.rational 3958338301 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2085637905 1) .v) (.rational 5493514317 1)) .v)
    (.rational 4440905230 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1859798226 1) .v) (.rational 4601452798 1)) .v) (.rational 3413478490 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1163451422 1) .v) (.rational 2712045724 1)) .v)
    (.rational 1841979104 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 511130718
    1) .v) (.rational 1128164655 1)) .v) (.rational 702315501 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 155084199 1) .v) (.rational 326243969 1)) .v) (.rational
    187072118 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 31264101 1) .v)
    (.rational 63100316 1)) .v) (.rational 33574213 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3888213 1) .v) (.rational 7556620 1)) .v) (.rational 3753297 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 257271 1) .v) (.rational 478957 1)) .v)
    (.rational 221686 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 11198393 1) .v) (.rational 35382384 1)) .v)
    (.rational 33110741 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 89587144 1) .v)
    (.rational 269998478 1)) .v) (.rational 240297702 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 322286197 1) .v) (.rational 924662355 1)) .v) (.rational 779080014 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 688228359 1) .v) (.rational 1876874813 1))
    .v) (.rational 1490170278 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    969705704 1) .v) (.rational 2511489391 1)) .v) (.rational 1870901586 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 947480609 1) .v) (.rational 2330649305 1)) .v)
    (.rational 1623170926 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 656387602
    1) .v) (.rational 1535323447 1)) .v) (.rational 997456883 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 323673657 1) .v) (.rational 721633773 1)) .v) (.rational
    437217132 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 112213298 1) .v)
    (.rational 239255204 1)) .v) (.rational 135438375 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 26495955 1) .v) (.rational 54206165 1)) .v) (.rational 28766764 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 4004735 1) .v) (.rational 7871992
    1)) .v) (.rational 3927237 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    342364 1) .v) (.rational 643698 1)) .v) (.rational 301334 1)) (.pow .g 11))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12159 1) .v) (.rational 21459 1)) .v) (.rational 9300 1)) (.pow
    .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 2357172 1) .v) (.rational 6983658 1)) .v) (.rational 5779474 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 20035962 1) .v) (.rational 57186058 1)) .v) (.rational
    45509830 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 76912102 1) .v) (.rational
    211096600 1)) .v) (.rational 160984211 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 176121525 1) .v) (.rational 464116465 1)) .v) (.rational 337963877 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 267630625 1) .v) (.rational 676333379 1))
    .v) (.rational 468660050 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    283937628 1) .v) (.rational 687646537 1)) .v) (.rational 452067547 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 215332339 1) .v) (.rational 499752131 1)) .v) (.rational
    310985431 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 117412086 1) .v)
    (.rational 261302952 1)) .v) (.rational 153724999 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 45586625 1) .v) (.rational 97402080 1)) .v) (.rational 54172637 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 12258690 1) .v) (.rational 25175979
    1)) .v) (.rational 13249815 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2159651 1) .v) (.rational 4263179 1)) .v) (.rational 2124678 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 222717 1) .v) (.rational 421113 1)) .v) (.rational 198396
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 10094 1) .v) (.rational 18077
    1)) .v) (.rational 7983 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 227496 1) .v) (.rational 632566 1)) .v)
    (.rational 470298 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2047464 1) .v) (.rational
    5529630 1)) .v) (.rational 3990454 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    8351799 1) .v) (.rational 21871738 1)) .v) (.rational 15278667 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 20405208 1) .v) (.rational 51734814 1)) .v) (.rational
    34884764 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 33237366 1) .v)
    (.rational 81469537 1)) .v) (.rational 52878112 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 38002566 1) .v) (.rational 89951219 1)) .v) (.rational 56047917 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 31256511 1) .v) (.rational 71384434 1)) .v)
    (.rational 42601106 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 18623280 1)
    .v) (.rational 41019701 1)) .v) (.rational 23404739 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7973943 1) .v) (.rational 16936384 1)) .v) (.rational 9228864 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2391846 1) .v) (.rational 4898367 1)) .v)
    (.rational 2547877 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 476970 1)
    .v) (.rational 941248 1)) .v) (.rational 467159 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 56772 1) .v) (.rational 107709 1)) .v) (.rational 50937 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3051 1) .v) (.rational 5533 1)) .v) (.rational
    2482 1)) (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0417

namespace FullLow0418
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  80*SmallGap.PolarCoefficientsLow4.c050 e f g v*((e+f)*(e+f+g))^5+
    20*SmallGap.PolarCoefficientsLow4.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    48*SmallGap.PolarCoefficientsLow3.c140 e f g v*((e+f)*(e+f+g))^4+
    80*SmallGap.PolarCoefficientsLow4.c140 e f g v*e*((e+f)*(e+f+g))^4+
    5*SmallGap.PolarCoefficientsLow4.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow3.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    10*SmallGap.PolarCoefficientsLow4.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    28*SmallGap.PolarCoefficientsLow2.c230 e f g v*((e+f)*(e+f+g))^3+
    36*SmallGap.PolarCoefficientsLow3.c230 e f g v*e*((e+f)*(e+f+g))^3+
    15*SmallGap.PolarCoefficientsLow4.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow3.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    7*SmallGap.PolarCoefficientsLow2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow3.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    16*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    14*SmallGap.PolarCoefficientsLow2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow3.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    9*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_1 e g v+28*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^1+84*SmallGap.ReducedLayers.low0_010_3 e g v*e^2+140*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^3+140*SmallGap.ReducedLayers.low0_010_5 e g v*e^4+84*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^5+1*SmallGap.ReducedLayers.low0_001_0 e g v+8*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^1+28*SmallGap.ReducedLayers.low0_001_2 e g v*e^2+56*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^3+70*SmallGap.ReducedLayers.low0_001_4 e g v*e^4+56*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_3 e g v+15*SmallGap.ReducedLayers.low1_020_4 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_020_5 e g v*e^2+30*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_020_7 e g v*e^4+3*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_011_2 e g v+6*SmallGap.ReducedLayers.low1_011_3 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_011_4 e g v*e^2+20*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_011_6 e g v*e^4+6*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13200 1)
    .v) (.rational 772200 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 4500 1) .v)
    (.rational 196500 1)) .v) (.rational 5529360 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    11250 1) .v) (.rational 276600 1)) .v) (.rational 6611775 1)) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 72324 1) .v) (.rational 1422108 1)) .v) (.rational
    24540798 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 216972 1) .v) (.rational 2628954 1))
    .v) (.rational 39999552 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 235332 1) .v)
    (.rational 1345812 1)) .v) (.rational 21669360 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 544626 1) .v) (.rational 6633872 1)) .v)
    (.rational 75606621 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1906191 1) .v) (.rational
    15514756 1)) .v) (.rational 156863119 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2582577 1) .v) (.rational 12115272 1)) .v) (.rational 116655802 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1690965 1) .v) (.rational 3332200 1)) .v) (.rational
    36767125 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 2521406 1) .v) (.rational 22214494 1)) .v) (.rational 171834869 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10085624 1) .v) (.rational 64035118 1)) .v)
    (.rational 436444559 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16305030 1) .v)
    (.rational 68770793 1)) .v) (.rational 418852357 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 13615406 1) .v) (.rational 33688727 1)) .v) (.rational 186768236 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6187268 1) .v) (.rational 7217545 1)) .v)
    (.rational 37369134 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 7952824 1) .v) (.rational 55863296 1)) .v)
    (.rational 298577921 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 35787708 1) .v)
    (.rational 193783760 1)) .v) (.rational 906267561 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 67032972 1) .v) (.rational 267936210 1)) .v) (.rational 1083344862 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 67606098 1) .v) (.rational 189518735 1)) .v)
    (.rational 644536244 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 39560502
    1) .v) (.rational 73741789 1)) .v) (.rational 197386664 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 13390662 1) .v) (.rational 16110409 1)) .v) (.rational 28481605
    1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 17926089 1) .v) (.rational 106902346 1)) .v) (.rational
    404349106 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 89630445 1) .v) (.rational
    435881434 1)) .v) (.rational 1442397715 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    190536527 1) .v) (.rational 738771382 1)) .v) (.rational 2096565145 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 224363438 1) .v) (.rational 679076916 1)) .v)
    (.rational 1599454504 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 159586493
    1) .v) (.rational 372162139 1)) .v) (.rational 688918370 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 69935315 1) .v) (.rational 126673097 1)) .v) (.rational 168959202
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 18333515 1) .v) (.rational
    27015893 1)) .v) (.rational 23196683 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    29483222 1) .v) (.rational 155156122 1)) .v) (.rational 429198114 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 162157721 1) .v) (.rational 727666692 1)) .v) (.rational 1775050689 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 385270233 1) .v) (.rational 1456949210 1))
    .v) (.rational 3074948757 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    517533141 1) .v) (.rational 1635028748 1)) .v) (.rational 2909051064 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 431673212 1) .v) (.rational 1137501594 1)) .v)
    (.rational 1649190060 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 230805631
    1) .v) (.rational 512982439 1)) .v) (.rational 583125091 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 78603781 1) .v) (.rational 151742795 1)) .v) (.rational 131517056
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 16284099 1) .v) (.rational
    28629289 1)) .v) (.rational 19181004 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 35509538 1) .v) (.rational 168671850 1)) .v) (.rational 354560045 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 213057228 1) .v) (.rational 893228406 1)) .v) (.rational
    1678636107 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 559056168 1) .v) (.rational
    2055404159 1)) .v) (.rational 3401330201 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 842256250 1) .v) (.rational 2705647217 1)) .v) (.rational 3872244969 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 803779494 1) .v) (.rational 2259045012 1))
    .v) (.rational 2742000284 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    505209984 1) .v) (.rational 1253484270 1)) .v) (.rational 1268717076 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 210375650 1) .v) (.rational 469485598 1)) .v)
    (.rational 393966992 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 56738748
    1) .v) (.rational 117110086 1)) .v) (.rational 82746549 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9337398 1) .v) (.rational 18400821 1)) .v) (.rational 11359350
    1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 30981048 1) .v)
    (.rational 134548304 1)) .v) (.rational 223408489 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 201376812 1) .v) (.rational 792544620 1)) .v) (.rational 1195897710 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 578023506 1) .v) (.rational 2053594314 1)) .v)
    (.rational 2784656159 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 963984351
    1) .v) (.rational 3086175497 1)) .v) (.rational 3715917565 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1033686965 1) .v) (.rational 2986709723 1)) .v) (.rational
    3157237226 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 744426108 1) .v)
    (.rational 1953361586 1)) .v) (.rational 1798616269 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 364796360 1) .v) (.rational 879647330 1)) .v) (.rational 705275823 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 120399349 1) .v) (.rational
    271381882 1)) .v) (.rational 191506417 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25818027 1) .v) (.rational 55468566 1)) .v) (.rational 35159848 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3336590 1) .v) (.rational 6945615 1)) .v)
    (.rational 4036494 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 19051977 1) .v) (.rational 76213746 1)) .v) (.rational 103562866 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 133363839 1) .v) (.rational 493389428 1)) .v)
    (.rational 619388605 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 415462524 1) .v)
    (.rational 1417698024 1)) .v) (.rational 1630975404 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 759045237 1) .v) (.rational 2386119202 1)) .v) (.rational 2495402052
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 901944087 1) .v) (.rational
    2614528176 1)) .v) (.rational 2468165890 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 730310592 1) .v) (.rational 1959704122 1)) .v) (.rational 1662699182 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 410121499 1) .v) (.rational 1026151838 1))
    .v) (.rational 782731019 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    159254629 1) .v) (.rational 375409618 1)) .v) (.rational 259078392 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 41768902 1) .v) (.rational 93873221 1)) .v) (.rational
    59276624 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 7031077 1) .v)
    (.rational 15217245 1)) .v) (.rational 8892284 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 687595 1) .v) (.rational 1436723 1)) .v) (.rational 779615 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7828756 1)
    .v) (.rational 28979146 1)) .v) (.rational 33216321 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 58715670 1) .v) (.rational 204215776 1)) .v) (.rational 219545646 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 197215864 1) .v) (.rational 643126408 1)) .v)
    (.rational 644663954 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 391382121
    1) .v) (.rational 1195281352 1)) .v) (.rational 1110781493 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 509713524 1) .v) (.rational 1458177144 1)) .v) (.rational
    1250211040 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 457367240 1) .v)
    (.rational 1228151990 1)) .v) (.rational 968513805 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 288655649 1) .v) (.rational 730561502 1)) .v) (.rational 529748053 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 128330712 1) .v) (.rational
    307968484 1)) .v) (.rational 205982355 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 39543100 1) .v) (.rational 90605602 1)) .v) (.rational 56226868 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8126779 1) .v) (.rational 17880147 1)) .v)
    (.rational 10357292 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1033920 1)
    .v) (.rational 2185253 1)) .v) (.rational 1183370 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 70002 1) .v) (.rational 140415 1)) .v) (.rational 70413 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1929426 1) .v) (.rational 6629184 1)) .v) (.rational 6570276 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 15435408 1) .v) (.rational 50460516 1)) .v) (.rational 47529306 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 55586743 1) .v) (.rational 172579722 1)) .v)
    (.rational 153798347 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 118987561
    1) .v) (.rational 350389380 1)) .v) (.rational 294171801 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 168337870 1) .v) (.rational 469983370 1)) .v) (.rational
    370338940 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 165499991 1) .v)
    (.rational 438381760 1)) .v) (.rational 323358195 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 115663536 1) .v) (.rational 291240787 1)) .v) (.rational 200887462 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 57718513 1) .v) (.rational
    138583811 1)) .v) (.rational 89471448 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20326196 1) .v) (.rational 46704350 1)) .v) (.rational 28295134 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4896845 1) .v) (.rational 10796210 1)) .v)
    (.rational 6154697 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 758985 1)
    .v) (.rational 1603861 1)) .v) (.rational 860447 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 66898 1) .v) (.rational 134131 1)) .v) (.rational 67233 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2460 1) .v) (.rational 4534 1)) .v)
    (.rational 2074 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 215784 1) .v) (.rational 689688 1)) .v) (.rational
    602844 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1834164 1) .v) (.rational 5634852 1))
    .v) (.rational 4733214 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7048172 1) .v)
    (.rational 20776178 1)) .v) (.rational 16712965 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16178010 1) .v) (.rational 45692304 1)) .v) (.rational 35080419 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 24683536 1) .v) (.rational 66735172 1)) .v)
    (.rational 48748099 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 26349115 1)
    .v) (.rational 68174644 1)) .v) (.rational 47261958 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 20158660 1) .v) (.rational 49936928 1)) .v) (.rational 32801589 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 11124696 1) .v) (.rational 26413333
    1)) .v) (.rational 16430836 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4389265 1) .v) (.rational 10001769 1)) .v) (.rational 5894929 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1205511 1) .v) (.rational 2638002 1)) .v) (.rational
    1474124 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 218306 1) .v)
    (.rational 457896 1)) .v) (.rational 242394 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 23336 1) .v) (.rational 46561 1)) .v) (.rational 23225 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1109 1) .v) (.rational 2065 1)) .v) (.rational 956
    1)) (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0418

namespace FullLow0419
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  48*SmallGap.PolarCoefficientsLow4.c140 e f g v*((e+f)*(e+f+g))^4+
    12*SmallGap.PolarCoefficientsLow4.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    28*SmallGap.PolarCoefficientsLow3.c230 e f g v*((e+f)*(e+f+g))^3+
    36*SmallGap.PolarCoefficientsLow4.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow4.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    7*SmallGap.PolarCoefficientsLow3.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow4.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    16*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    14*SmallGap.PolarCoefficientsLow3.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow4.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    9*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow2.c410 e f g v*e*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_2 e g v+28*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^1+84*SmallGap.ReducedLayers.low0_010_4 e g v*e^2+140*SmallGap.ReducedLayers.low0_010_5 e g
    v*e^3+140*SmallGap.ReducedLayers.low0_010_6 e g v*e^4+1*SmallGap.ReducedLayers.low0_001_1 e g
    v+8*SmallGap.ReducedLayers.low0_001_2 e g v*e^1+28*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^2+56*SmallGap.ReducedLayers.low0_001_4 e g v*e^3+70*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_4 e g v+15*SmallGap.ReducedLayers.low1_020_5 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_020_6 e g v*e^2+30*SmallGap.ReducedLayers.low1_020_7 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_020_8 e g v*e^4+1*SmallGap.ReducedLayers.low1_011_3 e g
    v+6*SmallGap.ReducedLayers.low1_011_4 e g v*e^1+15*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^2+20*SmallGap.ReducedLayers.low1_011_6 e g v*e^3+15*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6050 1) .v) (.rational
    428725 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1550 1) .v) (.rational 86640 1))
    .v) (.rational 2970230 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3875 1) .v) (.rational
    119730 1)) .v) (.rational 3473850 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 24546 1) .v) (.rational 604212 1)) .v) (.rational 12687057 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 73638 1) .v) (.rational 1086196 1)) .v) (.rational 20150613
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 79903 1) .v) (.rational 513838 1)) .v)
    (.rational 10495200 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 181814 1) .v) (.rational 2722068 1)) .v) (.rational 37394746 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 636349 1) .v) (.rational 6182369 1)) .v) (.rational
    75476896 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 862603 1) .v) (.rational
    4537233 1)) .v) (.rational 53891917 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 565635 1) .v) (.rational 1012663 1)) .v) (.rational 15787134 1)) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 823463 1)
    .v) (.rational 8822380 1)) .v) (.rational 80798187 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3293852 1) .v) (.rational 24817964 1)) .v) (.rational 199813310 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5328419 1) .v) (.rational 25585259 1)) .v) (.rational
    184723804 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4456775 1) .v)
    (.rational 11565159 1)) .v) (.rational 77533891 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2031606 1) .v) (.rational 1987189 1)) .v) (.rational 13616233 1)) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2518732 1) .v) (.rational 21411324 1)) .v) (.rational 132441361 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 11334294 1) .v) (.rational 72992408 1)) .v) (.rational 392685766
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 21246110 1) .v) (.rational 98565152 1))
    .v) (.rational 455489944 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    21468013 1) .v) (.rational 67462559 1)) .v) (.rational 259908580 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12605119 1) .v) (.rational 25078583 1)) .v) (.rational
    74537828 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4289451 1) .v)
    (.rational 5178173 1)) .v) (.rational 9428820 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5432461 1)
    .v) (.rational 39063598 1)) .v) (.rational 167274333 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27162305 1) .v) (.rational 157454882 1)) .v) (.rational 585682918 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 57795042 1) .v) (.rational 263487078 1)) .v)
    (.rational 833406246 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 68206338
    1) .v) (.rational 239063178 1)) .v) (.rational 620824244 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 48704298 1) .v) (.rational 129627493 1)) .v) (.rational 260893541
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 21472392 1) .v) (.rational
    43988869 1)) .v) (.rational 62899767 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5676585 1) .v) (.rational 9485747 1)) .v) (.rational 8797704 1)) (.pow .g 6)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 8379886 1) .v) (.rational 52842442 1)) .v) (.rational 162621573
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 46089373 1) .v) (.rational 245932997 1)) .v)
    (.rational 663438553 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 109626891 1) .v)
    (.rational 489055743 1)) .v) (.rational 1134055590 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 147650712 1) .v) (.rational 546313132 1)) .v) (.rational 1061160244 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 123721710 1) .v) (.rational
    380021498 1)) .v) (.rational 599170647 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 66614940 1) .v) (.rational 172593286 1)) .v) (.rational 214409209 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 22909020 1) .v) (.rational 51875040 1)) .v)
    (.rational 50368335 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4806663 1)
    .v) (.rational 10012201 1)) .v) (.rational 7892060 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 9190896 1) .v) (.rational 51782940 1)) .v) (.rational 119626456 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 55145376 1) .v) (.rational 272726772 1)) .v)
    (.rational 560987216 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 144892746 1) .v)
    (.rational 625133855 1)) .v) (.rational 1127966077 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 218964450 1) .v) (.rational 822015625 1)) .v) (.rational 1279499179 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 210073194 1) .v) (.rational
    688625592 1)) .v) (.rational 909940512 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 133105212 1) .v) (.rational 385699694 1)) .v) (.rational 428498524 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 56053217 1) .v) (.rational 146821584 1)) .v)
    (.rational 137857831 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 15342963
    1) .v) (.rational 37428882 1)) .v) (.rational 30452744 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2571595 1) .v) (.rational 6018911 1)) .v) (.rational 4393567 1)) (.pow
    .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6989820 1) .v) (.rational
    35523810 1)) .v) (.rational 64289067 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 45433830
    1) .v) (.rational 208354296 1)) .v) (.rational 341845278 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 130607088 1) .v) (.rational 538533872 1)) .v) (.rational 792502275 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 218566854 1) .v) (.rational 809577206 1))
    .v) (.rational 1057292166 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    235753004 1) .v) (.rational 786888390 1)) .v) (.rational 904256980 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 171295308 1) .v) (.rational 519558808 1)) .v) (.rational
    523660824 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 84992394 1) .v)
    (.rational 237583984 1)) .v) (.rational 211188829 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 28518993 1) .v) (.rational 74821283 1)) .v) (.rational 59540954 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6244675 1) .v) (.rational 15656989
    1)) .v) (.rational 11364798 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    827182 1) .v) (.rational 2004257 1)) .v) (.rational 1341762 1)) (.pow .g 9)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3498492 1) .v) (.rational 16126212 1))
    .v) (.rational 23740886 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 24489444 1) .v)
    (.rational 104019620 1)) .v) (.rational 141285035 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 76412442 1) .v) (.rational 298339870 1)) .v) (.rational 371008372 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 140111880 1) .v) (.rational 502526686 1)) .v)
    (.rational 568137387 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 167520605
    1) .v) (.rational 553039262 1)) .v) (.rational 565481269 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 136909207 1) .v) (.rational 418228918 1)) .v) (.rational
    386146267 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 77892332 1) .v)
    (.rational 222091168 1)) .v) (.rational 185806862 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 30776054 1) .v) (.rational 82814912 1)) .v) (.rational 63314997 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8252690 1) .v) (.rational 21187199
    1)) .v) (.rational 14955154 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1427018 1) .v) (.rational 3517475 1)) .v) (.rational 2305740 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 143684 1) .v) (.rational 338483 1)) .v) (.rational 204824 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1035108 1) .v) (.rational 4344972 1)) .v) (.rational 5369148 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7763310 1) .v) (.rational 30520812 1)) .v) (.rational 35343432 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 26117190 1) .v) (.rational 95970230 1)) .v)
    (.rational 103560209 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 52018200
    1) .v) (.rational 178514832 1)) .v) (.rational 178592430 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 68162148 1) .v) (.rational 218653878 1)) .v) (.rational 202043900
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 61727391 1) .v) (.rational
    185639829 1)) .v) (.rational 158201897 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 39461811 1) .v) (.rational 111827383 1)) .v) (.rational 88022313 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 17846352 1) .v) (.rational 47966812 1)) .v)
    (.rational 35024762 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5620070 1)
    .v) (.rational 14418918 1)) .v) (.rational 9820074 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1185937 1) .v) (.rational 2914107 1)) .v) (.rational 1856641 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 155385 1) .v) (.rational 364123 1)) .v)
    (.rational 216108 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 10778 1) .v)
    (.rational 23600 1)) .v) (.rational 12822 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 137052 1) .v) (.rational
    525864 1)) .v) (.rational 559356 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1096416 1)
    .v) (.rational 3991128 1)) .v) (.rational 4031568 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3954450 1) .v) (.rational 13631120 1)) .v) (.rational 13019366 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8493870 1) .v) (.rational 27695748 1)) .v)
    (.rational 24913101 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 12086700 1)
    .v) (.rational 37280654 1)) .v) (.rational 31484252 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11986818 1) .v) (.rational 35020390 1)) .v) (.rational 27717765 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8479758 1) .v) (.rational 23528229
    1)) .v) (.rational 17452453 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4300620 1) .v) (.rational 11372967 1)) .v) (.rational 7919852 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1546231 1) .v) (.rational 3910502 1)) .v) (.rational
    2562885 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 382174 1) .v)
    (.rational 925420 1)) .v) (.rational 571453 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 61062 1) .v) (.rational 140905 1)) .v) (.rational 81693 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5566 1) .v) (.rational 12027 1)) .v) (.rational
    6461 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 211 1) .v) (.rational 406
    1)) .v) (.rational 195 1)) (.pow .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0419

namespace FullLow04110
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  28*SmallGap.PolarCoefficientsLow4.c230 e f g v*((e+f)*(e+f+g))^3+
    7*SmallGap.PolarCoefficientsLow4.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    16*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    14*SmallGap.PolarCoefficientsLow4.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow3.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    9*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow3.c410 e f g v*e*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_3 e g v+28*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^1+84*SmallGap.ReducedLayers.low0_010_5 e g v*e^2+140*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^3+1*SmallGap.ReducedLayers.low0_001_2 e g v+8*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^1+28*SmallGap.ReducedLayers.low0_001_4 e g v*e^2+56*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_5 e g v+15*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_020_7 e g v*e^2+30*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^3+1*SmallGap.ReducedLayers.low1_011_4 e g v+6*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_011_6 e g v*e^2+20*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1870 1) .v) (.rational 171435 1))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 320 1) .v) (.rational 25846 1)) .v)
    (.rational 1150194 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 800 1) .v) (.rational
    35062 1)) .v) (.rational 1313735 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 5007 1) .v) (.rational 174314 1)) .v) (.rational 4728908 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 15021 1) .v) (.rational 304546 1)) .v) (.rational 7302991 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 16306 1) .v) (.rational 131762 1)) .v) (.rational
    3639867 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 36582 1) .v) (.rational 761224 1)) .v) (.rational 13326077 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 128037 1) .v) (.rational 1678388 1)) .v) (.rational 26104127 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 173659 1) .v) (.rational 1150988 1)) .v)
    (.rational 17811875 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 114055 1)
    .v) (.rational 188410 1)) .v) (.rational 4776771 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 162433 1) .v) (.rational
    2396590 1)) .v) (.rational 27328886 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 649732 1)
    .v) (.rational 6585456 1)) .v) (.rational 65685153 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1051839 1) .v) (.rational 6518832 1)) .v) (.rational 58336617 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 881455 1) .v) (.rational 2699690 1)) .v) (.rational
    22889030 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 403256 1) .v)
    (.rational 332108 1)) .v) (.rational 3396697 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 482172 1) .v)
    (.rational 5620576 1)) .v) (.rational 42102390 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2169774 1) .v) (.rational 18867172 1)) .v) (.rational 121868097 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4071092 1) .v) (.rational 24963400 1)) .v) (.rational
    137203238 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4123210 1) .v)
    (.rational 16625380 1)) .v) (.rational 75252645 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2431198 1) .v) (.rational 5961692 1)) .v) (.rational 20356657 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 832776 1) .v) (.rational 1183570 1)) .v)
    (.rational 2311218 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 992959 1) .v) (.rational 9729340
    1)) .v) (.rational 49182024 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4964795 1) .v)
    (.rational 38841934 1)) .v) (.rational 169112185 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10576942 1) .v) (.rational 64395452 1)) .v) (.rational 236186594 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 12518998 1) .v) (.rational 58011470 1)) .v)
    (.rational 172995722 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8985812 1)
    .v) (.rational 31421004 1)) .v) (.rational 72140912 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3993082 1) .v) (.rational 10776156 1)) .v) (.rational 17783428 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1067377 1) .v) (.rational 2383394
    1)) .v) (.rational 2733094 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1424880 1) .v)
    (.rational 12087242 1)) .v) (.rational 43055810 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7836840 1) .v) (.rational 55893740 1)) .v) (.rational 173449141 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 18670482 1) .v) (.rational 110671222 1)) .v) (.rational
    293512212 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 25240869 1) .v)
    (.rational 123606706 1)) .v) (.rational 273641446 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 21288020 1) .v) (.rational 86556136 1)) .v) (.rational 156089882 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 11575228 1) .v) (.rational 39943688
    1)) .v) (.rational 57871958 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4035544 1) .v) (.rational 12311982 1)) .v) (.rational 14560199 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 861951 1) .v) (.rational 2446964 1)) .v) (.rational 2484061
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1395195 1) .v) (.rational 10365738
    1)) .v) (.rational 27322192 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 8371170 1) .v)
    (.rational 54318702 1)) .v) (.rational 127021787 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22039817 1) .v) (.rational 124219678 1)) .v) (.rational 254128872 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 33463360 1) .v) (.rational 163680782 1)) .v)
    (.rational 288861924 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 32362938
    1) .v) (.rational 138271708 1)) .v) (.rational 208334074 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 20754462 1) .v) (.rational 78707798 1)) .v) (.rational 101220220
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8888244 1) .v) (.rational
    30684986 1)) .v) (.rational 34208057 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2487357 1) .v) (.rational 8051256 1)) .v) (.rational 8000374 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 428606 1) .v) (.rational 1332098 1)) .v) (.rational
    1208130 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 885906 1)
    .v) (.rational 5787816 1)) .v) (.rational 11819359 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5758389 1) .v) (.rational 33794586 1)) .v) (.rational 62451517 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16593888 1) .v) (.rational 87205902 1)) .v) (.rational
    144399099 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 27924105 1) .v)
    (.rational 131436066 1)) .v) (.rational 193328892 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 30405528 1) .v) (.rational 128818462 1)) .v) (.rational 167486235 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 22407507 1) .v) (.rational 86359942
    1)) .v) (.rational 99432950 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11340260 1) .v) (.rational 40383726 1)) .v) (.rational 41597579 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3906721 1) .v) (.rational 13080546 1)) .v) (.rational
    12241813 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 884728 1) .v)
    (.rational 2822728 1)) .v) (.rational 2429489 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 122094 1) .v) (.rational 371764 1)) .v) (.rational 293829 1)) (.pow .g 9))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 327726 1) .v) (.rational
    1886868 1)) .v) (.rational 3104559 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2294082 1)
    .v) (.rational 12119508 1)) .v) (.rational 18380934 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7177611 1) .v) (.rational 34708530 1)) .v) (.rational 48174947 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 13242600 1) .v) (.rational 58606182 1)) .v)
    (.rational 74003635 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 15999258 1)
    .v) (.rational 64990722 1)) .v) (.rational 74420533 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13281411 1) .v) (.rational 49835112 1)) .v) (.rational 51802509 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7722697 1) .v) (.rational 27013886
    1)) .v) (.rational 25635519 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3141286 1) .v) (.rational 10345400 1)) .v) (.rational 9037651 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 874498 1) .v) (.rational 2729904 1)) .v) (.rational 2208794
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 158437 1) .v) (.rational 467976
    1)) .v) (.rational 349849 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 16839
    1) .v) (.rational 46256 1)) .v) (.rational 31401 1)) (.pow .g 10)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 53460 1) .v) (.rational 272016 1))
    .v) (.rational 372294 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 400950 1) .v)
    (.rational 1903068 1)) .v) (.rational 2439369 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1352664 1) .v) (.rational 5975076 1)) .v) (.rational 7133705 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2711241 1) .v) (.rational 11136954 1)) .v) (.rational
    12328172 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3590682 1) .v)
    (.rational 13732356 1)) .v) (.rational 14054763 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3303465 1) .v) (.rational 11802918 1)) .v) (.rational 11166706 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2158416 1) .v) (.rational 7242264 1)) .v)
    (.rational 6350131 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1004436 1)
    .v) (.rational 3183216 1)) .v) (.rational 2597582 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 327864 1) .v) (.rational 985166 1)) .v) (.rational 750466 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 72204 1) .v) (.rational 205422 1)) .v)
    (.rational 145793 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 9903 1) .v)
    (.rational 26388 1)) .v) (.rational 17258 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 708 1) .v) (.rational 1718 1)) .v) (.rational 1010 1)) (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow04110

namespace FullLow04111
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  16*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow4.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    9*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow4.c410 e f g v*e*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_4 e g v+28*SmallGap.ReducedLayers.low0_010_5 e g
    v*e^1+84*SmallGap.ReducedLayers.low0_010_6 e g v*e^2+1*SmallGap.ReducedLayers.low0_001_3 e g
    v+8*SmallGap.ReducedLayers.low0_001_4 e g v*e^1+28*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_6 e g v+15*SmallGap.ReducedLayers.low1_020_7 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_020_8 e g v*e^2+1*SmallGap.ReducedLayers.low1_011_5 e g
    v+6*SmallGap.ReducedLayers.low1_011_6 e g v*e^1+15*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 350 1) .v) (.rational 46755 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 30 1) .v) (.rational 4684 1)) .v) (.rational 304051 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 75 1) .v) (.rational 6238 1)) .v) (.rational 338606
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 465 1) .v) (.rational
    30672 1)) .v) (.rational 1203316 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1395 1) .v)
    (.rational 52074 1)) .v) (.rational 1802549 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1515 1) .v) (.rational 20384 1)) .v) (.rational 855038 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3360 1) .v) (.rational 130384
    1)) .v) (.rational 3239593 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 11760 1) .v)
    (.rational 279256 1)) .v) (.rational 6143121 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15960 1) .v) (.rational 178270 1)) .v) (.rational 3985361 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10500 1) .v) (.rational 17420 1)) .v) (.rational
    959547 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 14655 1) .v) (.rational 400424 1)) .v) (.rational 6294283 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 58620 1) .v) (.rational 1077284 1)) .v) (.rational 14679742
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 94980 1) .v) (.rational 1027644 1)) .v)
    (.rational 12501952 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 79770 1)
    .v) (.rational 390612 1)) .v) (.rational 4565362 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36645 1) .v) (.rational 28588 1)) .v) (.rational 549007 1)) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 42240 1) .v) (.rational 908242 1)) .v) (.rational 9070138 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 190080 1) .v) (.rational 3011330 1)) .v) (.rational 25630294 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 357060 1) .v) (.rational 3926402 1)) .v)
    (.rational 28073661 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 362670 1)
    .v) (.rational 2572620 1)) .v) (.rational 14925891 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 214950 1) .v) (.rational 909668 1)) .v) (.rational 3915951 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 74220 1) .v) (.rational 181226 1)) .v)
    (.rational 449011 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 82800 1) .v) (.rational 1480298 1)) .v)
    (.rational 9683050 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 414000 1) .v) (.rational
    5867350 1)) .v) (.rational 32733788 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    883425 1) .v) (.rational 9681830 1)) .v) (.rational 45079827 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1049700 1) .v) (.rational 8731058 1)) .v) (.rational 32860764 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 758580 1) .v) (.rational 4785286
    1)) .v) (.rational 13975704 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    340590 1) .v) (.rational 1686654 1)) .v) (.rational 3712300 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 92355 1) .v) (.rational 388166 1)) .v) (.rational 664675 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 109260 1) .v) (.rational 1652310 1)) .v)
    (.rational 7437450 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 600930 1) .v) (.rational
    7599900 1)) .v) (.rational 29620656 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1434990 1) .v) (.rational 15027950 1)) .v) (.rational 49845462 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1950480 1) .v) (.rational 16875088 1)) .v) (.rational
    46773336 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1660320 1) .v)
    (.rational 11997022 1)) .v) (.rational 27447685 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 915390 1) .v) (.rational 5684660 1)) .v) (.rational 10803955 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 325290 1) .v) (.rational 1814604 1)) .v)
    (.rational 2962229 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 71220 1) .v)
    (.rational 373708 1)) .v) (.rational 547345 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 92610 1) .v) (.rational 1183368 1)) .v) (.rational 3864822 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 555660 1) .v) (.rational 6168942 1)) .v) (.rational
    17821464 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1467720 1) .v) (.rational
    14098444 1)) .v) (.rational 35588838 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2245050 1) .v) (.rational 18691490 1)) .v) (.rational 40822098 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2198655 1) .v) (.rational 16030112 1)) .v)
    (.rational 30203007 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1436580 1)
    .v) (.rational 9356498 1)) .v) (.rational 15350062 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 631260 1) .v) (.rational 3772232 1)) .v) (.rational 5503394 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 182700 1) .v) (.rational 1027722 1)) .v)
    (.rational 1362972 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 32835 1) .v)
    (.rational 176198 1)) .v) (.rational 213838 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 45360 1) .v) (.rational 486324 1)) .v) (.rational 1208340 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 294840 1) .v) (.rational 2823660 1)) .v) (.rational
    6341976 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 853380 1) .v) (.rational 7280046
    1)) .v) (.rational 14648994 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1450350 1) .v) (.rational 11036760 1)) .v) (.rational 19770564 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1605690 1) .v) (.rational 10973940 1)) .v) (.rational
    17480956 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1212840 1) .v)
    (.rational 7535586 1)) .v) (.rational 10739250 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 635100 1) .v) (.rational 3641900 1)) .v) (.rational 4698057 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 228900 1) .v) (.rational 1227060 1)) .v)
    (.rational 1448445 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 54930 1) .v)
    (.rational 276158 1)) .v) (.rational 298648 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8145 1) .v) (.rational 37824 1)) .v) (.rational 36899 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9720 1) .v) (.rational 86832
    1)) .v) (.rational 170676 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 68040 1) .v)
    (.rational 554364 1)) .v) (.rational 1004220 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 214110 1) .v) (.rational 1585500 1)) .v) (.rational 2628174 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 400140 1) .v) (.rational 2691054 1)) .v) (.rational
    4060860 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 493920 1) .v)
    (.rational 3024486 1)) .v) (.rational 4147632 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 423270 1) .v) (.rational 2372532 1)) .v) (.rational 2964150 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 257265 1) .v) (.rational 1327950 1)) .v)
    (.rational 1519863 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 111060 1)
    .v) (.rational 529308 1)) .v) (.rational 557508 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 33435 1) .v) (.rational 146202 1)) .v) (.rational 141430 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6705 1) .v) (.rational 26322 1)) .v) (.rational
    23057 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 810 1) .v) (.rational
    2730 1)) .v) (.rational 2095 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow04111

namespace FullLow04112
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  9*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_5 e g v+28*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^1+1*SmallGap.ReducedLayers.low0_001_4 e g v+8*SmallGap.ReducedLayers.low0_001_5 e g v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_7 e g v+15*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^1+1*SmallGap.ReducedLayers.low1_011_6 e g v+6*SmallGap.ReducedLayers.low1_011_7 e g v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 30 1) .v) (.rational 7795 1)) .e) (.add (.mul (.add (.mul
    (.rational 390 1) .v) (.rational 49176 1)) .f) (.mul (.add (.mul (.rational 510 1) .v)
    (.rational 53304 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 2490 1) .v)
    (.rational 187323 1)) .f) (.mul (.add (.mul (.rational 4110 1) .v) (.rational 271454 1)) .g))
    .f) (.mul (.add (.mul (.rational 1440 1) .v) (.rational 121753 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10350 1) .v) (.rational 481367 1)) .f)
    (.mul (.add (.mul (.rational 21570 1) .v) (.rational 881182 1)) .g)) .f) (.mul (.add (.mul
    (.rational 12810 1) .v) (.rational 540544 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational
    360 1) .v) (.rational 113882 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 31140 1) .v) (.rational 884088 1)) .f) (.mul (.add (.mul
    (.rational 82320 1) .v) (.rational 1998116 1)) .g)) .f) (.mul (.add (.mul (.rational 76230 1)
    .v) (.rational 1631471 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 27030 1) .v)
    (.rational 555496 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 900 1) .v) (.rational
    53163 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 68280 1) .v) (.rational 1183529 1)) .f) (.mul (.add (.mul (.rational 224460
    1) .v) (.rational 3266892 1)) .g)) .f) (.mul (.add (.mul (.rational 290610 1) .v) (.rational
    3499479 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 190230 1) .v) (.rational 1835032
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 68430 1) .v) (.rational 493425 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.rational 14460 1) .v) (.rational 69012 1)) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    103500 1) .v) (.rational 1133358 1)) .f) (.mul (.add (.mul (.rational 408240 1) .v) (.rational
    3771792 1)) .g)) .f) (.mul (.add (.mul (.rational 673920 1) .v) (.rational 5156784 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.rational 614040 1) .v) (.rational 3806100 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.rational 345330 1) .v) (.rational 1708043 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.rational 127050 1) .v) (.rational 510554 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 30720 1) .v) (.rational 106843 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 100260 1) .v)
    (.rational 731202 1)) .f) (.mul (.add (.mul (.rational 458820 1) .v) (.rational 2880528 1))
    .g)) .f) (.mul (.add (.mul (.rational 908700 1) .v) (.rational 4846050 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 1032480 1) .v) (.rational 4634316 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 752550 1) .v) (.rational 2853171 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 370290 1) .v) (.rational 1214554 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 123570 1) .v) (.rational 363506 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    26520 1) .v) (.rational 71522 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 55080 1) .v)
    (.rational 281880 1)) .f) (.mul (.add (.mul (.rational 285120 1) .v) (.rational 1287900 1))
    .g)) .f) (.mul (.add (.mul (.rational 652140 1) .v) (.rational 2574822 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 874800 1) .v) (.rational 3005208 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 769140 1) .v) (.rational 2310408 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 466200 1) .v) (.rational 1243684 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 196950 1) .v) (.rational 475343 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    56370 1) .v) (.rational 124096 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 10110 1) .v)
    (.rational 20046 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12960 1) .v)
    (.rational 48600 1)) .f) (.mul (.add (.mul (.rational 74520 1) .v) (.rational 252720 1)) .g))
    .f) (.mul (.add (.mul (.rational 192060 1) .v) (.rational 583698 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.rational 294660 1) .v) (.rational 798492 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.rational 300780 1) .v) (.rational 727621 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational
    215100 1) .v) (.rational 467712 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational 109530 1)
    .v) (.rational 215683 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational 39150 1) .v)
    (.rational 69852 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 9360 1) .v) (.rational
    14949 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 1350 1) .v) (.rational 1880 1)) (.pow
    .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow04112

namespace FullLow04113
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  5*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_6 e g v+1*SmallGap.ReducedLayers.low0_001_5 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_8 e g v+1*SmallGap.ReducedLayers.low1_011_7 e g v)

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

end FullLow04113

end
end SPR.N6.Tail.CoreEndpoint
