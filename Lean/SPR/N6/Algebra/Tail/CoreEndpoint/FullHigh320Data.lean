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

namespace FullHigh3200
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_100_0 e g v*e^4+4*SmallGap.ReducedLayers.high0_010_0
    e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_0 e g v*e^4+3*SmallGap.ReducedLayers.high1_110_0 e g
    v*e^2+1*SmallGap.ReducedLayers.high1_020_0 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 1296 1) .e) (.add (.mul (.rational 12958 1) .f) (.add (.mul (.rational 16312
    1) .g) (.mul (.rational 2328 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 79732 1) .f)
    (.add (.mul (.rational 136600 1) .g) (.mul (.rational 21104 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 84920 1) .g) (.mul (.rational 25984 1) .v)) .g) (.mul (.rational 1080 1)
    (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 338430 1) .f) (.add (.mul
    (.rational 732294 1) .g) (.mul (.rational 118536 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 611914 1) .g) (.mul (.rational 199996 1) .v)) .g) (.mul (.rational 9094 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 247038 1) .g) (.mul (.rational 120312 1)
    .v)) .g) (.mul (.rational 11420 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1052284 1) .f) (.add (.mul (.rational 2748036 1) .g) (.mul (.rational
    461370 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2880410 1) .g) (.mul (.rational 991214
    1) .v)) .g) (.mul (.rational 47456 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1549464 1) .g) (.mul (.rational 812318 1) .v)) .g) (.mul (.rational 82332 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 450390 1) .g) (.mul (.rational
    317274 1) .v)) .g) (.mul (.rational 50748 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2482969 1) .f) (.add (.mul
    (.rational 7590858 1) .g) (.mul (.rational 1318542 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 9560290 1) .g) (.mul (.rational 3448032 1) .v)) .g) (.mul (.rational 171452 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6414750 1) .g) (.mul (.rational
    3587996 1) .v)) .g) (.mul (.rational 381766 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2467921 1) .g) (.mul (.rational 1898752 1) .v)) .g) (.mul (.rational 324352
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 541228 1) .g)
    (.mul (.rational 538806 1) .v)) .g) (.mul (.rational 131594 1) (.pow .v 2))) (.pow .g 3))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4542545
    1) .f) (.add (.mul (.rational 15905890 1) .g) (.mul (.rational 2859448 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 23376472 1) .g) (.mul (.rational 8827078 1) .v)) .g) (.mul
    (.rational 453626 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 18770294 1)
    .g) (.mul (.rational 11160330 1) .v)) .g) (.mul (.rational 1238620 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8963431 1) .g) (.mul (.rational 7473046 1) .v)) .g)
    (.mul (.rational 1349454 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2587344 1) .g) (.mul (.rational 2855826 1) .v)) .g) (.mul (.rational 751300 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 435384 1) .g) (.mul
    (.rational 621372 1) .v)) .g) (.mul (.rational 226272 1) (.pow .v 2))) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    6523510 1) .f) (.add (.mul (.rational 25736763 1) .g) (.mul (.rational 4794362 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 43214731 1) .g) (.mul (.rational 17086704 1) .v)) .g) (.mul
    (.rational 906166 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 40363302 1)
    .g) (.mul (.rational 25464568 1) .v)) .g) (.mul (.rational 2940442 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 22976868 1) .g) (.mul (.rational 20660636 1) .v)) .g)
    (.mul (.rational 3924300 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8195237 1) .g) (.mul (.rational 9944662 1) .v)) .g) (.mul (.rational 2791244 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1806099 1) .g) (.mul
    (.rational 2893688 1) .v)) .g) (.mul (.rational 1143906 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 231558 1) .g) (.mul (.rational 493152 1) .v)) .g)
    (.mul (.rational 270750 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7394396 1) .f)
    (.add (.mul (.rational 32452783 1) .g) (.mul (.rational 6272140 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 61270812 1) .g) (.mul (.rational 25372750 1) .v)) .g) (.mul (.rational
    1388146 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 65211834 1) .g) (.mul
    (.rational 43593958 1) .v)) .g) (.mul (.rational 5230439 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 43041492 1) .g) (.mul (.rational 41589716 1) .v)) .g) (.mul
    (.rational 8282560 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    18229913 1) .g) (.mul (.rational 24161754 1) .v)) .g) (.mul (.rational 7189416 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4942334 1) .g) (.mul
    (.rational 8804768 1) .v)) .g) (.mul (.rational 3737342 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 825806 1) .g) (.mul (.rational 1991292 1) .v)) .g)
    (.mul (.rational 1189713 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 77750 1) .g) (.mul (.rational 264446 1) .v)) .g) (.mul (.rational 225632 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6612340 1) .f) (.add (.mul (.rational
    31956831 1) .g) (.mul (.rational 6413312 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    67001122 1) .g) (.mul (.rational 29056446 1) .v)) .g) (.mul (.rational 1639426 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 80001492 1) .g) (.mul (.rational 56585648
    1) .v)) .g) (.mul (.rational 7045136 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 60000121 1) .g) (.mul (.rational 62092032 1) .v)) .g) (.mul (.rational 12927633 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 29364365 1) .g) (.mul
    (.rational 42267066 1) .v)) .g) (.mul (.rational 13263028 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9415400 1) .g) (.mul (.rational 18497566 1) .v)) .g)
    (.mul (.rational 8360272 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1926276 1) .g) (.mul (.rational 5204260 1) .v)) .g) (.mul (.rational 3343590 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 235095 1) .g) (.mul
    (.rational 909612 1) .v)) .g) (.mul (.rational 841969 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 14808 1) .g) (.mul (.rational 90746 1) .v)) .g) (.mul
    (.rational 126742 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    4634610 1) .f) (.add (.mul (.rational 24461713 1) .g) (.mul (.rational 5099260 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 56389785 1) .g) (.mul (.rational 25595908 1) .v)) .g) (.mul
    (.rational 1488230 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 74621762 1)
    .g) (.mul (.rational 55746220 1) .v)) .g) (.mul (.rational 7189897 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 62627325 1) .g) (.mul (.rational 69179104 1) .v)) .g)
    (.mul (.rational 15011457 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34719149 1) .g) (.mul (.rational 53987108 1) .v)) .g) (.mul (.rational 17777544 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 12814961 1) .g) (.mul
    (.rational 27558726 1) .v)) .g) (.mul (.rational 13167878 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3086782 1) .g) (.mul (.rational 9256186 1) .v)) .g)
    (.mul (.rational 6334013 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 458799 1) .g) (.mul (.rational 1997570 1) .v)) .g) (.mul (.rational 1982883 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 37218 1) .g) (.mul
    (.rational 259950 1) .v)) .g) (.mul (.rational 391394 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1204 1) .g) (.mul (.rational 17740 1) .v)) .g) (.mul
    (.rational 44912 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2511854 1) .f) (.add (.mul (.rational 14380307 1) .g) (.mul (.rational 3113320 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 36154418 1) .g) (.mul (.rational 17160126 1) .v))
    .g) (.mul (.rational 1026776 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    52510011 1) .g) (.mul (.rational 41347316 1) .v)) .g) (.mul (.rational 5511838 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 48728648 1) .g) (.mul (.rational
    57259958 1) .v)) .g) (.mul (.rational 12905582 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 30141836 1) .g) (.mul (.rational 50380550 1) .v)) .g) (.mul
    (.rational 17325162 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12557189 1) .g) (.mul (.rational 29360766 1) .v)) .g) (.mul (.rational 14735068 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3466547 1) .g) (.mul
    (.rational 11439964 1) .v)) .g) (.mul (.rational 8270096 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 603350 1) .g) (.mul (.rational 2927030 1) .v)) .g)
    (.mul (.rational 3086138 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 59203 1) .g) (.mul (.rational 466346 1) .v)) .g) (.mul (.rational 749242 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2445 1) .g) (.mul
    (.rational 41088 1) .v)) .g) (.mul (.rational 111362 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 1472 1) .v) .g) (.mul (.rational 8854 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1028768 1) .f) (.add
    (.mul (.rational 6352243 1) .g) (.mul (.rational 1427518 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 17302481 1) .g) (.mul (.rational 8576270 1) .v)) .g) (.mul (.rational 527046 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 27363175 1) .g) (.mul (.rational
    22660166 1) .v)) .g) (.mul (.rational 3113445 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 27809679 1) .g) (.mul (.rational 34646606 1) .v)) .g) (.mul (.rational
    8080294 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 18968396
    1) .g) (.mul (.rational 33920722 1) .v)) .g) (.mul (.rational 12122179 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8786673 1) .g) (.mul (.rational 22201136
    1) .v)) .g) (.mul (.rational 11631122 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2725925 1) .g) (.mul (.rational 9825612 1) .v)) .g) (.mul (.rational
    7448878 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 540789 1)
    .g) (.mul (.rational 2897606 1) .v)) .g) (.mul (.rational 3218014 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 61705 1) .g) (.mul (.rational 542928 1) .v))
    .g) (.mul (.rational 922513 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3054 1) .g) (.mul (.rational 57974 1) .v)) .g) (.mul (.rational 166764 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2646 1) .v) .g) (.mul (.rational
    16941 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 716 1) (.pow .v 2)) (.pow .g
    10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 306701 1) .f)
    (.add (.mul (.rational 2032899 1) .g) (.mul (.rational 473834 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 5966238 1) .g) (.mul (.rational 3083834 1) .v)) .g) (.mul (.rational 194142
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 10207576 1) .g) (.mul
    (.rational 8870116 1) .v)) .g) (.mul (.rational 1251994 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 11273848 1) .g) (.mul (.rational 14843612 1) .v)) .g) (.mul
    (.rational 3567369 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8399549 1) .g) (.mul (.rational 16001708 1) .v)) .g) (.mul (.rational 5912694 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4275850 1) .g) (.mul (.rational
    11611182 1) .v)) .g) (.mul (.rational 6312063 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1468554 1) .g) (.mul (.rational 5743432 1) .v)) .g) (.mul
    (.rational 4534580 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    325583 1) .g) (.mul (.rational 1911992 1) .v)) .g) (.mul (.rational 2219476 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 42038 1) .g) (.mul (.rational
    409682 1) .v)) .g) (.mul (.rational 730194 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2396 1) .g) (.mul (.rational 50932 1) .v)) .g) (.mul (.rational
    154217 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2780 1) .v) .g)
    (.mul (.rational 18802 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 997 1) (.pow
    .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 62481 1) .f) (.add (.mul (.rational 442865 1) .g) (.mul (.rational 106972 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1394167 1) .g) (.mul (.rational 750382 1) .v)) .g)
    (.mul (.rational 48240 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2566898
    1) .g) (.mul (.rational 2335610 1) .v)) .g) (.mul (.rational 337359 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3061552 1) .g) (.mul (.rational 4247570 1) .v)) .g)
    (.mul (.rational 1047111 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2472625 1) .g) (.mul (.rational 4999082 1) .v)) .g) (.mul (.rational 1899650 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1370279 1) .g) (.mul
    (.rational 3980214 1) .v)) .g) (.mul (.rational 2231349 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 514888 1) .g) (.mul (.rational 2172530 1) .v)) .g)
    (.mul (.rational 1774029 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 125637 1) .g) (.mul (.rational 803382 1) .v)) .g) (.mul (.rational 967438 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 17988 1) .g) (.mul
    (.rational 192778 1) .v)) .g) (.mul (.rational 357552 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1148 1) .g) (.mul (.rational 27124 1) .v)) .g) (.mul
    (.rational 85749 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1700 1)
    .v) .g) (.mul (.rational 12050 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 753
    1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 7722 1) .f) (.add (.mul (.rational 58356 1) .g) (.mul (.rational
    14598 1) .v))) .f) (.add (.mul (.add (.mul (.rational 196365 1) .g) (.mul (.rational 109926 1)
    .v)) .g) (.mul (.rational 7188 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    387447 1) .g) (.mul (.rational 368484 1) .v)) .g) (.mul (.rational 54216 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 496518 1) .g) (.mul (.rational 724110 1) .v)) .g)
    (.mul (.rational 182134 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 432017 1) .g) (.mul (.rational 924024 1) .v)) .g) (.mul (.rational 358926 1) (.pow
    .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 258646 1) .g) (.mul
    (.rational 800494 1) .v)) .g) (.mul (.rational 459671 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 105305 1) .g) (.mul (.rational 477176 1) .v)) .g) (.mul
    (.rational 400012 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    27932 1) .g) (.mul (.rational 193474 1) .v)) .g) (.mul (.rational 239761 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4363 1) .g) (.mul (.rational 51130
    1) .v)) .g) (.mul (.rational 97854 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 305 1) .g) (.mul (.rational 7964 1) .v)) .g) (.mul (.rational 26061 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 556 1) .v) .g) (.mul (.rational
    4096 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 289 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    432 1) .f) (.add (.mul (.rational 3474 1) .g) (.mul (.rational 900 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 12465 1) .g) (.mul (.rational 7254 1) .v)) .g) (.mul (.rational 480 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 26277 1) .g) (.mul (.rational
    26094 1) .v)) .g) (.mul (.rational 3888 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36043 1) .g) (.mul (.rational 55164 1) .v)) .g) (.mul (.rational 14064 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 33621 1) .g) (.mul
    (.rational 75908 1) .v)) .g) (.mul (.rational 29919 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 21609 1) .g) (.mul (.rational 71064 1) .v)) .g) (.mul
    (.rational 41461 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9455 1) .g) (.mul (.rational 45864 1) .v)) .g) (.mul (.rational 39123 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2697 1) .g) (.mul (.rational 20164 1)
    .v)) .g) (.mul (.rational 25473 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 453 1) .g) (.mul (.rational 5784 1) .v)) .g) (.mul (.rational 11309 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 34 1) .g) (.mul (.rational
    978 1) .v)) .g) (.mul (.rational 3279 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 74 1) .v) .g) (.mul (.rational 561 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 43 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh3200

namespace FullHigh3201
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsHigh1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(24*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^3+6*SmallGap.ReducedLayers.high0_100_1 e g v*e^4+8*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^1+4*SmallGap.ReducedLayers.high0_010_1 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(12*SmallGap.ReducedLayers.high1_200_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_200_1 e
    g v*e^4+6*SmallGap.ReducedLayers.high1_110_0 e g v*e^1+3*SmallGap.ReducedLayers.high1_110_1 e
    g v*e^2+1*SmallGap.ReducedLayers.high1_020_1 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    7968 1) .e) (.add (.mul (.rational 75782 1) .f) (.add (.mul (.rational 94538 1) .g) (.mul
    (.rational 14156 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 444804 1) .f) (.add (.mul
    (.rational 755182 1) .g) (.mul (.rational 120698 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 464726 1) .g) (.mul (.rational 145780 1) .v)) .g) (.mul (.rational 6500 1) (.pow .v
    2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1802255 1) .f) (.add (.mul
    (.rational 3864967 1) .g) (.mul (.rational 639654 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 3198377 1) .g) (.mul (.rational 1057154 1) .v)) .g) (.mul (.rational 50938 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1279001 1) .g) (.mul (.rational 618026
    1) .v)) .g) (.mul (.rational 62292 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 5343970 1) .f) (.add (.mul (.rational 13832495 1) .g) (.mul
    (.rational 2352746 1) .v))) .f) (.add (.mul (.add (.mul (.rational 14364641 1) .g) (.mul
    (.rational 4949996 1) .v)) .g) (.mul (.rational 248224 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7658645 1) .g) (.mul (.rational 3946924 1) .v)) .g) (.mul (.rational
    418300 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2210081 1) .g) (.mul
    (.rational 1488356 1) .v)) .g) (.mul (.rational 247056 1) (.pow .v 2))) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11995531 1) .f) (.add
    (.mul (.rational 36349253 1) .g) (.mul (.rational 6354674 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 45371128 1) .g) (.mul (.rational 16281738 1) .v)) .g) (.mul (.rational 839415 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 30189020 1) .g) (.mul (.rational
    16516692 1) .v)) .g) (.mul (.rational 1815205 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11536945 1) .g) (.mul (.rational 8472704 1) .v)) .g) (.mul (.rational
    1481893 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2521099 1)
    .g) (.mul (.rational 2318290 1) .v)) .g) (.mul (.rational 569839 1) (.pow .v 2))) (.pow .g
    3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    20795329 1) .f) (.add (.mul (.rational 72171635 1) .g) (.mul (.rational 13005296 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 105144955 1) .g) (.mul (.rational 39374356 1) .v)) .g)
    (.mul (.rational 2081404 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    83757368 1) .g) (.mul (.rational 48642766 1) .v)) .g) (.mul (.rational 5527783 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 39749065 1) .g) (.mul (.rational
    31702880 1) .v)) .g) (.mul (.rational 5812737 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 11437337 1) .g) (.mul (.rational 11753964 1) .v)) .g) (.mul
    (.rational 3095913 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1927327 1) .g) (.mul (.rational 2478516 1) .v)) .g) (.mul (.rational 884815 1) (.pow .v 2)))
    (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 28141977 1) .f) (.add (.mul (.rational 110035206 1) .g) (.mul
    (.rational 20509170 1) .v))) .f) (.add (.mul (.add (.mul (.rational 183174275 1) .g) (.mul
    (.rational 71775186 1) .v)) .g) (.mul (.rational 3894831 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 169781607 1) .g) (.mul (.rational 104769318 1) .v)) .g) (.mul
    (.rational 12324300 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    96085855 1) .g) (.mul (.rational 83056694 1) .v)) .g) (.mul (.rational 15957223 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 34173564 1) .g) (.mul
    (.rational 38999106 1) .v)) .g) (.mul (.rational 10954443 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7543085 1) .g) (.mul (.rational 11073358 1) .v)) .g)
    (.mul (.rational 4317066 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 974503 1) .g) (.mul (.rational 1848278 1) .v)) .g) (.mul (.rational 983413 1) (.pow
    .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 29831207 1) .f) (.add (.mul (.rational 129736223 1)
    .g) (.mul (.rational 25089436 1) .v))) .f) (.add (.mul (.add (.mul (.rational 242844181 1) .g)
    (.mul (.rational 99795542 1) .v)) .g) (.mul (.rational 5571710 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 256533541 1) .g) (.mul (.rational 168318062 1) .v)) .g)
    (.mul (.rational 20533822 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    168374620 1) .g) (.mul (.rational 157435712 1) .v)) .g) (.mul (.rational 31706696 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 71126349 1) .g) (.mul
    (.rational 89638722 1) .v)) .g) (.mul (.rational 26769609 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 19314889 1) .g) (.mul (.rational 32055894 1) .v)) .g)
    (.mul (.rational 13523953 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3251591 1) .g) (.mul (.rational 7143430 1) .v)) .g) (.mul (.rational 4194697 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 310823 1) .g) (.mul
    (.rational 941924 1) .v)) .g) (.mul (.rational 781349 1) (.pow .v 2))) (.pow .g 6)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 24686777 1) .f) (.add (.mul (.rational 118200370 1) .g) (.mul
    (.rational 23772106 1) .v))) .f) (.add (.mul (.add (.mul (.rational 245675772 1) .g) (.mul
    (.rational 106030400 1) .v)) .g) (.mul (.rational 6102945 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 291159758 1) .g) (.mul (.rational 203101218 1) .v)) .g) (.mul
    (.rational 25728671 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    217167754 1) .g) (.mul (.rational 219124780 1) .v)) .g) (.mul (.rational 46246329 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 106011445 1) .g) (.mul
    (.rational 146735068 1) .v)) .g) (.mul (.rational 46443554 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 34045934 1) .g) (.mul (.rational 63300246 1) .v)) .g)
    (.mul (.rational 28681872 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7015954 1) .g) (.mul (.rational 17630898 1) .v)) .g) (.mul (.rational 11278002 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 868913 1) .g) (.mul
    (.rational 3072956 1) .v)) .g) (.mul (.rational 2812434 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 56075 1) .g) (.mul (.rational 308930 1) .v)) .g)
    (.mul (.rational 423985 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 15778637 1) .f) (.add (.mul (.rational 82480721 1) .g) (.mul (.rational 17275514 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 188448668 1) .g) (.mul (.rational 85457316 1)
    .v)) .g) (.mul (.rational 5076620 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 247484198 1) .g) (.mul (.rational 183362326 1) .v)) .g) (.mul (.rational 24125381
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 206544022 1) .g) (.mul
    (.rational 224230052 1) .v)) .g) (.mul (.rational 49527941 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 114197646 1) .g) (.mul (.rational 172637074 1) .v))
    .g) (.mul (.rational 57701410 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 42208779 1) .g) (.mul (.rational 87160096 1) .v)) .g) (.mul (.rational 42125682 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10236188 1) .g) (.mul
    (.rational 29081964 1) .v)) .g) (.mul (.rational 20052058 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1542677 1) .g) (.mul (.rational 6278060 1) .v)) .g)
    (.mul (.rational 6253584 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 128061 1) .g) (.mul (.rational 825286 1) .v)) .g) (.mul (.rational 1241599 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4291 1) .g) (.mul
    (.rational 57616 1) .v)) .g) (.mul (.rational 145037 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 7632802 1) .f) (.add (.mul (.rational 43259067
    1) .g) (.mul (.rational 9441160 1) .v))) .f) (.add (.mul (.add (.mul (.rational 107752894 1)
    .g) (.mul (.rational 51323580 1) .v)) .g) (.mul (.rational 3147079 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 155256495 1) .g) (.mul (.rational 121977132 1) .v)) .g)
    (.mul (.rational 16655038 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    143225411 1) .g) (.mul (.rational 166732896 1) .v)) .g) (.mul (.rational 38459389 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 88327789 1) .g) (.mul
    (.rational 145031322 1) .v)) .g) (.mul (.rational 50982748 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 36832227 1) .g) (.mul (.rational 83795342 1) .v)) .g)
    (.mul (.rational 42925922 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10230498 1) .g) (.mul (.rational 32513918 1) .v)) .g) (.mul (.rational 23951898 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1803608 1) .g) (.mul
    (.rational 8338914 1) .v)) .g) (.mul (.rational 8942412 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 180807 1) .g) (.mul (.rational 1343892 1) .v)) .g)
    (.mul (.rational 2190901 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7714 1) .g) (.mul (.rational 121204 1) .v)) .g) (.mul (.rational 332212 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 4512 1) .v) .g) (.mul (.rational
    27287 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 2699643 1) .f) (.add (.mul (.rational 16492164 1) .g) (.mul (.rational
    3749942 1) .v))) .f) (.add (.mul (.add (.mul (.rational 44479914 1) .g) (.mul (.rational
    22230286 1) .v)) .g) (.mul (.rational 1405926 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 69744932 1) .g) (.mul (.rational 57979834 1) .v)) .g) (.mul (.rational
    8202244 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 70424139 1) .g)
    (.mul (.rational 87595418 1) .v)) .g) (.mul (.rational 21041510 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 47861957 1) .g) (.mul (.rational 84900750 1) .v))
    .g) (.mul (.rational 31257332 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22177035 1) .g) (.mul (.rational 55178048 1) .v)) .g) (.mul (.rational 29784292 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6916651 1) .g) (.mul
    (.rational 24358348 1) .v)) .g) (.mul (.rational 19026686 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1388285 1) .g) (.mul (.rational 7210262 1) .v)) .g)
    (.mul (.rational 8249538 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 161548 1) .g) (.mul (.rational 1367476 1) .v)) .g) (.mul (.rational 2392603 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8236 1) .g) (.mul
    (.rational 149410 1) .v)) .g) (.mul (.rational 441975 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 7074 1) .v) .g) (.mul (.rational 46435 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 2059 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 657682 1) .f) (.add (.mul (.rational
    4309571 1) .g) (.mul (.rational 1020152 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    12513154 1) .g) (.mul (.rational 6552358 1) .v)) .g) (.mul (.rational 426762 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 21208622 1) .g) (.mul (.rational 18610082 1) .v))
    .g) (.mul (.rational 2721500 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23252435 1) .g) (.mul (.rational 30789434 1) .v)) .g) (.mul (.rational 7677598 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17246876 1) .g) (.mul
    (.rational 32883980 1) .v)) .g) (.mul (.rational 12625420 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8774324 1) .g) (.mul (.rational 23716458 1) .v)) .g)
    (.mul (.rational 13415713 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3026758 1) .g) (.mul (.rational 11713648 1) .v)) .g) (.mul (.rational 9637149 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 678181 1) .g) (.mul
    (.rational 3917766 1) .v)) .g) (.mul (.rational 4745537 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 89173 1) .g) (.mul (.rational 850156 1) .v)) .g)
    (.mul (.rational 1582938 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5224 1) .g) (.mul (.rational 108112 1) .v)) .g) (.mul (.rational 342173 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 6110 1) .v) .g) (.mul (.rational
    43177 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 2401 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 98442 1)
    .f) (.add (.mul (.rational 689070 1) .g) (.mul (.rational 169620 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 2143721 1) .g) (.mul (.rational 1173984 1) .v)) .g) (.mul (.rational
    78576 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3905516 1) .g) (.mul
    (.rational 3607838 1) .v)) .g) (.mul (.rational 543876 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4618537 1) .g) (.mul (.rational 6487086 1) .v)) .g) (.mul
    (.rational 1673266 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3709211 1) .g) (.mul (.rational 7565824 1) .v)) .g) (.mul (.rational 3016048 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2052174 1) .g) (.mul (.rational
    5989998 1) .v)) .g) (.mul (.rational 3532174 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 773802 1) .g) (.mul (.rational 3266932 1) .v)) .g) (.mul
    (.rational 2813499 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    190695 1) .g) (.mul (.rational 1214890 1) .v)) .g) (.mul (.rational 1546945 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 27793 1) .g) (.mul (.rational
    295564 1) .v)) .g) (.mul (.rational 581022 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1823 1) .g) (.mul (.rational 42586 1) .v)) .g) (.mul (.rational
    142952 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2766 1) .v) .g)
    (.mul (.rational 20835 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1367 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 6804 1) .f) (.add (.mul (.rational 50706 1) .g) (.mul (.rational 12960 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 168360 1) .g) (.mul (.rational 96228 1) .v)) .g)
    (.mul (.rational 6600 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 328185 1)
    .g) (.mul (.rational 318300 1) .v)) .g) (.mul (.rational 49296 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 416348 1) .g) (.mul (.rational 618150 1) .v)) .g) (.mul
    (.rational 164270 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    359719 1) .g) (.mul (.rational 781514 1) .v)) .g) (.mul (.rational 321960 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 214766 1) .g) (.mul (.rational
    673334 1) .v)) .g) (.mul (.rational 411667 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 87695 1) .g) (.mul (.rational 401338 1) .v)) .g) (.mul (.rational
    359570 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 23500 1)
    .g) (.mul (.rational 163890 1) .v)) .g) (.mul (.rational 217841 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3743 1) .g) (.mul (.rational 44030 1) .v)) .g)
    (.mul (.rational 90660 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 270 1) .g) (.mul (.rational 7054 1) .v)) .g) (.mul (.rational 24885 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 514 1) .v) .g) (.mul (.rational 4082
    1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 305 1) (.pow .v 2)) (.pow .g 10)))
    (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh3201

namespace FullHigh3202
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsHigh2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    4*SmallGap.PolarCoefficientsHigh0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(36*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^2+24*SmallGap.ReducedLayers.high0_100_1 e g v*e^3+6*SmallGap.ReducedLayers.high0_100_2 e g
    v*e^4+4*SmallGap.ReducedLayers.high0_010_0 e g v+8*SmallGap.ReducedLayers.high0_010_1 e g
    v*e^1+4*SmallGap.ReducedLayers.high0_010_2 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(18*SmallGap.ReducedLayers.high1_200_0 e g v*e^2+12*SmallGap.ReducedLayers.high1_200_1 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_200_2 e g v*e^4+3*SmallGap.ReducedLayers.high1_110_0 e
    g v+6*SmallGap.ReducedLayers.high1_110_1 e g v*e^1+3*SmallGap.ReducedLayers.high1_110_2 e g
    v*e^2+1*SmallGap.ReducedLayers.high1_020_2 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20532 1)
    .e) (.add (.mul (.rational 187062 1) .f) (.add (.mul (.rational 231474 1) .g) (.mul (.rational
    36060 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 1050738 1) .f) (.add (.mul (.rational
    1768324 1) .g) (.mul (.rational 290856 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1077530
    1) .g) (.mul (.rational 344148 1) .v)) .g) (.mul (.rational 16400 1) (.pow .v 2))))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.rational 4063451 1) .f) (.add (.mul (.rational 8633443 1) .g)
    (.mul (.rational 1456084 1) .v))) .f) (.add (.mul (.add (.mul (.rational 7071501 1) .g) (.mul
    (.rational 2350464 1) .v)) .g) (.mul (.rational 120282 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2799069 1) .g) (.mul (.rational 1327912 1) .v)) .g) (.mul (.rational
    142884 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    11451682 1) .f) (.add (.mul (.rational 29352844 1) .g) (.mul (.rational 5047184 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 30162094 1) .g) (.mul (.rational 10355752 1) .v)) .g) (.mul
    (.rational 547392 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 15913604 1)
    .g) (.mul (.rational 7975666 1) .v)) .g) (.mul (.rational 891778 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4550756 1) .g) (.mul (.rational 2866944 1) .v)) .g)
    (.mul (.rational 499348 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 24290797 1) .f) (.add (.mul (.rational 72853259 1)
    .g) (.mul (.rational 12804028 1) .v))) .f) (.add (.mul (.add (.mul (.rational 89956968 1) .g)
    (.mul (.rational 31980806 1) .v)) .g) (.mul (.rational 1725163 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 59223494 1) .g) (.mul (.rational 31370624 1) .v)) .g) (.mul
    (.rational 3600195 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 22424399
    1) .g) (.mul (.rational 15398194 1) .v)) .g) (.mul (.rational 2789579 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4869343 1) .g) (.mul (.rational 3981420
    1) .v)) .g) (.mul (.rational 992385 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 39493977 1) .f) (.add (.mul
    (.rational 135598498 1) .g) (.mul (.rational 24495148 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 195374848 1) .g) (.mul (.rational 72334790 1) .v)) .g) (.mul (.rational 3978048 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 153977318 1) .g) (.mul (.rational
    86601840 1) .v)) .g) (.mul (.rational 10205540 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 72399173 1) .g) (.mul (.rational 54275288 1) .v)) .g) (.mul (.rational
    10235588 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 20698772
    1) .g) (.mul (.rational 19187790 1) .v)) .g) (.mul (.rational 5110710 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3481302 1) .g) (.mul (.rational 3831418
    1) .v)) .g) (.mul (.rational 1341512 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 49641389 1) .f)
    (.add (.mul (.rational 191930801 1) .g) (.mul (.rational 35858350 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 315911565 1) .g) (.mul (.rational 122550822 1) .v)) .g) (.mul
    (.rational 6898249 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 289684053 1)
    .g) (.mul (.rational 173857486 1) .v)) .g) (.mul (.rational 21150292 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 162440885 1) .g) (.mul (.rational 133244486 1) .v))
    .g) (.mul (.rational 26306055 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 57408391 1) .g) (.mul (.rational 60183670 1) .v)) .g) (.mul (.rational 17173125 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 12648157 1) .g) (.mul
    (.rational 16391104 1) .v)) .g) (.mul (.rational 6376346 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1641055 1) .g) (.mul (.rational 2629886 1) .v)) .g)
    (.mul (.rational 1365139 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 48260537 1) .f)
    (.add (.mul (.rational 207450024 1) .g) (.mul (.rational 40306814 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 383855290 1) .g) (.mul (.rational 156813498 1) .v)) .g) (.mul
    (.rational 9083254 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 401147634 1)
    .g) (.mul (.rational 257841686 1) .v)) .g) (.mul (.rational 32572967 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 260910523 1) .g) (.mul (.rational 234356976 1) .v))
    .g) (.mul (.rational 48691344 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 109541636 1) .g) (.mul (.rational 129363202 1) .v)) .g) (.mul (.rational 39607550
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 29698058 1) .g)
    (.mul (.rational 44851490 1) .v)) .g) (.mul (.rational 19232242 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5022570 1) .g) (.mul (.rational 9733736 1) .v))
    .g) (.mul (.rational 5754953 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 486176 1) .g) (.mul (.rational 1263452 1) .v)) .g) (.mul (.rational 1049172 1)
    (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 36013461 1) .f) (.add (.mul
    (.rational 170355355 1) .g) (.mul (.rational 34568648 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 349929120 1) .g) (.mul (.rational 151062510 1) .v)) .g) (.mul (.rational 9046591 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 410251864 1) .g) (.mul (.rational
    282919332 1) .v)) .g) (.mul (.rational 37276297 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 303266202 1) .g) (.mul (.rational 297974080 1) .v)) .g) (.mul
    (.rational 65331618 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 147168512 1) .g) (.mul (.rational 194707312 1) .v)) .g) (.mul (.rational 63894186
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 47198982 1) .g)
    (.mul (.rational 82120504 1) .v)) .g) (.mul (.rational 38481696 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9774424 1) .g) (.mul (.rational 22492092 1) .v))
    .g) (.mul (.rational 14850138 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1226553 1) .g) (.mul (.rational 3897570 1) .v)) .g) (.mul (.rational 3682841 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 81027 1) .g) (.mul
    (.rational 395876 1) .v)) .g) (.mul (.rational 563231 1) (.pow .v 2))) (.pow .g 7)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 20270245 1) .f) (.add (.mul (.rational 104632282 1)
    .g) (.mul (.rational 22236608 1) .v))) .f) (.add (.mul (.add (.mul (.rational 236186403 1) .g)
    (.mul (.rational 107936990 1) .v)) .g) (.mul (.rational 6703444 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 306804746 1) .g) (.mul (.rational 227020124 1) .v)) .g)
    (.mul (.rational 31262750 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    253782286 1) .g) (.mul (.rational 272036138 1) .v)) .g) (.mul (.rational 62954158 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 139512066 1) .g) (.mul
    (.rational 205421644 1) .v)) .g) (.mul (.rational 72009420 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 51505025 1) .g) (.mul (.rational 102034584 1) .v))
    .g) (.mul (.rational 51791408 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12554608 1) .g) (.mul (.rational 33707732 1) .v)) .g) (.mul (.rational 24461522 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1917553 1) .g) (.mul
    (.rational 7281870 1) .v)) .g) (.mul (.rational 7660178 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 163042 1) .g) (.mul (.rational 972754 1) .v)) .g)
    (.mul (.rational 1552442 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5672 1) .g) (.mul (.rational 70326 1) .v)) .g) (.mul (.rational 188576 1) (.pow .v
    2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8335210 1) .f)
    (.add (.mul (.rational 46620414 1) .g) (.mul (.rational 10391698 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 114680276 1) .g) (.mul (.rational 55501258 1) .v)) .g) (.mul (.rational
    3579437 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 163398600 1) .g) (.mul
    (.rational 129560404 1) .v)) .g) (.mul (.rational 18651522 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 149384105 1) .g) (.mul (.rational 174040610 1) .v)) .g)
    (.mul (.rational 42439769 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 91596731 1) .g) (.mul (.rational 149041734 1) .v)) .g) (.mul (.rational 55559738 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 38149969 1) .g) (.mul
    (.rational 85094876 1) .v)) .g) (.mul (.rational 46399878 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10649339 1) .g) (.mul (.rational 32839730 1) .v)) .g)
    (.mul (.rational 25867354 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1902076 1) .g) (.mul (.rational 8461328 1) .v)) .g) (.mul (.rational 9753108 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 195192 1) .g) (.mul
    (.rational 1389400 1) .v)) .g) (.mul (.rational 2447633 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8640 1) .g) (.mul (.rational 130028 1) .v)) .g) (.mul
    (.rational 386572 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 5134
    1) .v) .g) (.mul (.rational 33657 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 2365301 1) .f) (.add (.mul (.rational 14249012 1) .g)
    (.mul (.rational 3332354 1) .v))) .f) (.add (.mul (.add (.mul (.rational 37926750 1) .g) (.mul
    (.rational 19424298 1) .v)) .g) (.mul (.rational 1300870 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 58776638 1) .g) (.mul (.rational 49828126 1) .v)) .g) (.mul
    (.rational 7490489 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 58792519
    1) .g) (.mul (.rational 74125024 1) .v)) .g) (.mul (.rational 18995352 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 39713440 1) .g) (.mul (.rational 70908796
    1) .v)) .g) (.mul (.rational 27976649 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 18372060 1) .g) (.mul (.rational 45668618 1) .v)) .g) (.mul (.rational
    26557462 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5754838
    1) .g) (.mul (.rational 20104916 1) .v)) .g) (.mul (.rational 17021876 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1168954 1) .g) (.mul (.rational 5989444
    1) .v)) .g) (.mul (.rational 7477696 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 138984 1) .g) (.mul (.rational 1157650 1) .v)) .g) (.mul (.rational
    2225125 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 7328 1)
    .g) (.mul (.rational 131016 1) .v)) .g) (.mul (.rational 428156 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 6558 1) .v) .g) (.mul (.rational 47685 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 2288 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 414396 1) .f) (.add (.mul
    (.rational 2674776 1) .g) (.mul (.rational 655980 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 7656874 1) .g) (.mul (.rational 4143780 1) .v)) .g) (.mul (.rational 287916 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 12814440 1) .g) (.mul (.rational
    11582470 1) .v)) .g) (.mul (.rational 1814844 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13905493 1) .g) (.mul (.rational 18886870 1) .v)) .g) (.mul (.rational
    5071073 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10242419
    1) .g) (.mul (.rational 19934260 1) .v)) .g) (.mul (.rational 8287326 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5197440 1) .g) (.mul (.rational 14266592
    1) .v)) .g) (.mul (.rational 8794910 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1798302 1) .g) (.mul (.rational 7034152 1) .v)) .g) (.mul (.rational
    6353349 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 406945 1)
    .g) (.mul (.rational 2367822 1) .v)) .g) (.mul (.rational 3174537 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 54495 1) .g) (.mul (.rational 522664 1) .v))
    .g) (.mul (.rational 1086552 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3284 1) .g) (.mul (.rational 68520 1) .v)) .g) (.mul (.rational 244240 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 4058 1) .v) .g) (.mul (.rational
    32553 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1948 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 33804 1)
    .f) (.add (.mul (.rational 232716 1) .g) (.mul (.rational 59784 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 712661 1) .g) (.mul (.rational 406752 1) .v)) .g) (.mul (.rational 29280 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1280036 1) .g) (.mul (.rational
    1229798 1) .v)) .g) (.mul (.rational 200436 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1495927 1) .g) (.mul (.rational 2179146 1) .v)) .g) (.mul (.rational 611266
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1191178 1) .g)
    (.mul (.rational 2511574 1) .v)) .g) (.mul (.rational 1096013 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 656195 1) .g) (.mul (.rational 1973046 1) .v))
    .g) (.mul (.rational 1283184 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 247632 1) .g) (.mul (.rational 1073670 1) .v)) .g) (.mul (.rational 1028551 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 61445 1) .g) (.mul
    (.rational 401190 1) .v)) .g) (.mul (.rational 573810 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9078 1) .g) (.mul (.rational 98914 1) .v)) .g) (.mul
    (.rational 220827 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    608 1) .g) (.mul (.rational 14586 1) .v)) .g) (.mul (.rational 56292 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 980 1) .v) .g) (.mul (.rational 8605 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 600 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh3202

namespace FullHigh3203
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsHigh2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    8*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsHigh1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(24*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^1+36*SmallGap.ReducedLayers.high0_100_1 e g v*e^2+24*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^3+4*SmallGap.ReducedLayers.high0_010_1 e g v+8*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^1+4*SmallGap.ReducedLayers.high0_010_3 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(12*SmallGap.ReducedLayers.high1_200_0 e g v*e^1+18*SmallGap.ReducedLayers.high1_200_1 e
    g v*e^2+12*SmallGap.ReducedLayers.high1_200_2 e g v*e^3+3*SmallGap.ReducedLayers.high1_110_1 e
    g v+6*SmallGap.ReducedLayers.high1_110_2 e g v*e^1+3*SmallGap.ReducedLayers.high1_110_3 e g
    v*e^2+1*SmallGap.ReducedLayers.high1_020_3 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 28368 1) .e) (.add
    (.mul (.rational 249484 1) .f) (.add (.mul (.rational 306604 1) .g) (.mul (.rational 49224 1)
    .v)))) .e) (.add (.mul (.add (.mul (.rational 1347634 1) .f) (.add (.mul (.rational 2249848 1)
    .g) (.mul (.rational 378170 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1359174 1) .g)
    (.mul (.rational 437884 1) .v)) .g) (.mul (.rational 22200 1) (.pow .v 2))))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 4983914 1) .f) (.add (.mul (.rational 10492878 1) .g) (.mul
    (.rational 1794402 1) .v))) .f) (.add (.mul (.add (.mul (.rational 8510222 1) .g) (.mul
    (.rational 2822134 1) .v)) .g) (.mul (.rational 153508 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3336618 1) .g) (.mul (.rational 1532550 1) .v)) .g) (.mul (.rational
    176840 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    13332436 1) .f) (.add (.mul (.rational 33824776 1) .g) (.mul (.rational 5859972 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 34376936 1) .g) (.mul (.rational 11678894 1) .v)) .g) (.mul
    (.rational 654272 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 17941040 1)
    .g) (.mul (.rational 8621470 1) .v)) .g) (.mul (.rational 1026312 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5082452 1) .g) (.mul (.rational 2907810 1) .v)) .g)
    (.mul (.rational 538816 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 26588986 1) .f) (.add (.mul (.rational 78840874 1)
    .g) (.mul (.rational 13905600 1) .v))) .f) (.add (.mul (.add (.mul (.rational 96176038 1) .g)
    (.mul (.rational 33680928 1) .v)) .g) (.mul (.rational 1918488 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 62555462 1) .g) (.mul (.rational 31650478 1) .v)) .g) (.mul
    (.rational 3839728 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 23429288
    1) .g) (.mul (.rational 14611186 1) .v)) .g) (.mul (.rational 2783328 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5046104 1) .g) (.mul (.rational 3455402
    1) .v)) .g) (.mul (.rational 883184 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 40156356 1) .f) (.add (.mul
    (.rational 136149968 1) .g) (.mul (.rational 24659078 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 193588074 1) .g) (.mul (.rational 70589124 1) .v)) .g) (.mul (.rational 4089752 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 150560664 1) .g) (.mul (.rational
    81075904 1) .v)) .g) (.mul (.rational 10060960 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 69936012 1) .g) (.mul (.rational 48037114 1) .v)) .g) (.mul (.rational
    9482584 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 19802416
    1) .g) (.mul (.rational 15735676 1) .v)) .g) (.mul (.rational 4303000 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3311766 1) .g) (.mul (.rational 2838090
    1) .v)) .g) (.mul (.rational 971152 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 46165134 1) .f)
    (.add (.mul (.rational 176060078 1) .g) (.mul (.rational 33053010 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 285671412 1) .g) (.mul (.rational 109579818 1) .v)) .g) (.mul
    (.rational 6504384 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 258239328 1)
    .g) (.mul (.rational 149549268 1) .v)) .g) (.mul (.rational 19186176 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 142902936 1) .g) (.mul (.rational 109081724 1) .v))
    .g) (.mul (.rational 22636852 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 49960456 1) .g) (.mul (.rational 46287672 1) .v)) .g) (.mul (.rational 13748004 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10932486 1) .g) (.mul
    (.rational 11686836 1) .v)) .g) (.mul (.rational 4637324 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1416266 1) .g) (.mul (.rational 1723274 1) .v)) .g)
    (.mul (.rational 885980 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 40227844 1) .f)
    (.add (.mul (.rational 170379956 1) .g) (.mul (.rational 33435568 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 310474578 1) .g) (.mul (.rational 126360698 1) .v)) .g) (.mul
    (.rational 7755832 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 319570980 1)
    .g) (.mul (.rational 200569844 1) .v)) .g) (.mul (.rational 26904200 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 204944244 1) .g) (.mul (.rational 174716404 1) .v))
    .g) (.mul (.rational 38583784 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 85050472 1) .g) (.mul (.rational 91756172 1) .v)) .g) (.mul (.rational 29846612 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 22885630 1) .g) (.mul
    (.rational 30116268 1) .v)) .g) (.mul (.rational 13700460 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3863320 1) .g) (.mul (.rational 6198078 1) .v)) .g)
    (.mul (.rational 3895004 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 375752 1) .g) (.mul (.rational 773030 1) .v)) .g) (.mul (.rational 692980 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 26176906 1) .f) (.add (.mul (.rational
    121877238 1) .g) (.mul (.rational 25165916 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    246322866 1) .g) (.mul (.rational 107013972 1) .v)) .g) (.mul (.rational 6846700 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 284217418 1) .g) (.mul (.rational 194179020
    1) .v)) .g) (.mul (.rational 27458324 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 207033040 1) .g) (.mul (.rational 197277924 1) .v)) .g) (.mul (.rational 46666916
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 99261404 1) .g)
    (.mul (.rational 123948516 1) .v)) .g) (.mul (.rational 44170024 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 31588200 1) .g) (.mul (.rational 50272908 1)
    .v)) .g) (.mul (.rational 25814804 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6531016 1) .g) (.mul (.rational 13333190 1) .v)) .g) (.mul (.rational 9782556
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 824568 1) .g)
    (.mul (.rational 2274922 1) .v)) .g) (.mul (.rational 2441316 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 55272 1) .g) (.mul (.rational 233294 1) .v)) .g)
    (.mul (.rational 388232 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 12347298 1) .f) (.add (.mul (.rational 62667944 1) .g) (.mul (.rational 13677876 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 139068496 1) .g) (.mul (.rational 64721708 1)
    .v)) .g) (.mul (.rational 4339408 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 177681704 1) .g) (.mul (.rational 132334564 1) .v)) .g) (.mul (.rational 19810772
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 144773044 1) .g) (.mul
    (.rational 153827352 1) .v)) .g) (.mul (.rational 39031756 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 78617288 1) .g) (.mul (.rational 112633538 1) .v))
    .g) (.mul (.rational 43765888 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 28802698 1) .g) (.mul (.rational 54418896 1) .v)) .g) (.mul (.rational 31054992 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7013592 1) .g) (.mul
    (.rational 17648100 1) .v)) .g) (.mul (.rational 14662140 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1079472 1) .g) (.mul (.rational 3807638 1) .v)) .g)
    (.mul (.rational 4686140 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 93472 1) .g) (.mul (.rational 520646 1) .v)) .g) (.mul (.rational 994072 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3352 1) .g) (.mul
    (.rational 39570 1) .v)) .g) (.mul (.rational 129216 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 3995452 1) .f) (.add (.mul (.rational 21950136
    1) .g) (.mul (.rational 5077968 1) .v))) .f) (.add (.mul (.add (.mul (.rational 53039138 1)
    .g) (.mul (.rational 26480988 1) .v)) .g) (.mul (.rational 1865644 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 74291562 1) .g) (.mul (.rational 60271512 1) .v)) .g) (.mul
    (.rational 9562312 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 66887952
    1) .g) (.mul (.rational 78904332 1) .v)) .g) (.mul (.rational 21435888 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 40516832 1) .g) (.mul (.rational 65948970
    1) .v)) .g) (.mul (.rational 27759652 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16752686 1) .g) (.mul (.rational 36927918 1) .v)) .g) (.mul (.rational
    23113420 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4675050
    1) .g) (.mul (.rational 14116844 1) .v)) .g) (.mul (.rational 13012240 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 842588 1) .g) (.mul (.rational 3663200 1)
    .v)) .g) (.mul (.rational 5043980 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 88284 1) .g) (.mul (.rational 619938 1) .v)) .g) (.mul (.rational 1329208 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4048 1) .g) (.mul
    (.rational 61434 1) .v)) .g) (.mul (.rational 225032 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 2640 1) .v) .g) (.mul (.rational 21348 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 794880 1) .f) (.add
    (.mul (.rational 4698048 1) .g) (.mul (.rational 1153536 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 12273402 1) .g) (.mul (.rational 6573540 1) .v)) .g) (.mul (.rational 487080 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 18689620 1) .g) (.mul (.rational
    16480416 1) .v)) .g) (.mul (.rational 2769120 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 18408520 1) .g) (.mul (.rational 23980864 1) .v)) .g) (.mul (.rational
    6954104 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 12286640
    1) .g) (.mul (.rational 22501456 1) .v)) .g) (.mul (.rational 10196716 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5645226 1) .g) (.mul (.rational 14297042
    1) .v)) .g) (.mul (.rational 9718420 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1768904 1) .g) (.mul (.rational 6272064 1) .v)) .g) (.mul (.rational
    6331032 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 362872 1)
    .g) (.mul (.rational 1890876 1) .v)) .g) (.mul (.rational 2872520 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 44100 1) .g) (.mul (.rational 377688 1) .v))
    .g) (.mul (.rational 899728 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2412 1) .g) (.mul (.rational 45310 1) .v)) .g) (.mul (.rational 185952 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2472 1) .v) .g) (.mul (.rational
    22700 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1220 1) (.pow .v 2)) (.pow .g
    10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 73440 1) .f)
    (.add (.mul (.rational 464460 1) .g) (.mul (.rational 121080 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 1303724 1) .g) (.mul (.rational 748320 1) .v)) .g) (.mul (.rational 58320 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2142780 1) .g) (.mul (.rational
    2047764 1) .v)) .g) (.mul (.rational 363960 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2289336 1) .g) (.mul (.rational 3275256 1) .v)) .g) (.mul (.rational 1010948
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1666508 1) .g)
    (.mul (.rational 3403304 1) .v)) .g) (.mul (.rational 1652528 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 840180 1) .g) (.mul (.rational 2412996 1) .v))
    .g) (.mul (.rational 1769780 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 290884 1) .g) (.mul (.rational 1190108 1) .v)) .g) (.mul (.rational 1305552 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 66480 1) .g) (.mul
    (.rational 406336 1) .v)) .g) (.mul (.rational 676128 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9096 1) .g) (.mul (.rational 92664 1) .v)) .g) (.mul
    (.rational 244080 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    568 1) .g) (.mul (.rational 12836 1) .v)) .g) (.mul (.rational 58996 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 824 1) .v) .g) (.mul (.rational 8632 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 580 1) (.pow .v 2)) (.pow .g 10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh3203

namespace FullHigh3204
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    8*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsHigh2.c410 e f g v*e*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_100_0 e g v+24*SmallGap.ReducedLayers.high0_100_1 e
    g v*e^1+36*SmallGap.ReducedLayers.high0_100_2 e g v*e^2+4*SmallGap.ReducedLayers.high0_010_2 e
    g v+8*SmallGap.ReducedLayers.high0_010_3 e g v*e^1+4*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_0 e g v+12*SmallGap.ReducedLayers.high1_200_1 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_200_2 e g v*e^2+3*SmallGap.ReducedLayers.high1_110_2 e g
    v+6*SmallGap.ReducedLayers.high1_110_3 e g v*e^1+3*SmallGap.ReducedLayers.high1_110_4 e g
    v*e^2+1*SmallGap.ReducedLayers.high1_020_4 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22152 1) .e) (.add (.mul (.rational
    189530 1) .f) (.add (.mul (.rational 231668 1) .g) (.mul (.rational 37952 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 990480 1) .f) (.add (.mul (.rational 1642312 1) .g) (.mul
    (.rational 279764 1) .v))) .f) (.add (.mul (.add (.mul (.rational 985732 1) .g) (.mul
    (.rational 316744 1) .v)) .g) (.mul (.rational 17000 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 3516440 1) .f) (.add (.mul (.rational 7341562 1) .g) (.mul
    (.rational 1264772 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5905228 1) .g) (.mul
    (.rational 1934212 1) .v)) .g) (.mul (.rational 111802 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2299270 1) .g) (.mul (.rational 1004916 1) .v)) .g) (.mul (.rational
    124836 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    8938430 1) .f) (.add (.mul (.rational 22449886 1) .g) (.mul (.rational 3901316 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 22585430 1) .g) (.mul (.rational 7527568 1) .v)) .g) (.mul
    (.rational 448924 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 11678578 1)
    .g) (.mul (.rational 5288392 1) .v)) .g) (.mul (.rational 676480 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3285636 1) .g) (.mul (.rational 1642944 1) .v)) .g)
    (.mul (.rational 329912 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 16716674 1) .f) (.add (.mul (.rational 48981298 1)
    .g) (.mul (.rational 8653664 1) .v))) .f) (.add (.mul (.add (.mul (.rational 59025872 1) .g)
    (.mul (.rational 20233384 1) .v)) .g) (.mul (.rational 1227892 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 37946616 1) .g) (.mul (.rational 18050124 1) .v)) .g) (.mul
    (.rational 2347176 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 14072758
    1) .g) (.mul (.rational 7675388 1) .v)) .g) (.mul (.rational 1570848 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3010662 1) .g) (.mul (.rational 1573668 1)
    .v)) .g) (.mul (.rational 422588 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 23275472 1) .f) (.add (.mul
    (.rational 77829246 1) .g) (.mul (.rational 14152380 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 109081800 1) .g) (.mul (.rational 39054116 1) .v)) .g) (.mul (.rational 2417316 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 83639640 1) .g) (.mul (.rational
    42594052 1) .v)) .g) (.mul (.rational 5674374 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 38351476 1) .g) (.mul (.rational 23367936 1) .v)) .g) (.mul (.rational
    4960134 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10747178
    1) .g) (.mul (.rational 6775900 1) .v)) .g) (.mul (.rational 1965762 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1785004 1) .g) (.mul (.rational 990092 1)
    .v)) .g) (.mul (.rational 331570 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 24122028 1) .f) (.add
    (.mul (.rational 90542340 1) .g) (.mul (.rational 17169068 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 144479706 1) .g) (.mul (.rational 54864828 1) .v)) .g) (.mul (.rational
    3504422 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 128420730 1) .g) (.mul
    (.rational 71259884 1) .v)) .g) (.mul (.rational 9902864 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 69931124 1) .g) (.mul (.rational 48520296 1) .v)) .g) (.mul
    (.rational 10978040 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 24107128 1) .g) (.mul (.rational 18655648 1) .v)) .g) (.mul (.rational 6065780 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5217066 1) .g) (.mul
    (.rational 4075968 1) .v)) .g) (.mul (.rational 1765298 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 670306 1) .g) (.mul (.rational 484952 1) .v)) .g)
    (.mul (.rational 270496 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 18379982 1) .f)
    (.add (.mul (.rational 76456156 1) .g) (.mul (.rational 15293892 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 136690282 1) .g) (.mul (.rational 55750684 1) .v)) .g) (.mul (.rational
    3727744 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 137965050 1) .g) (.mul
    (.rational 84485780 1) .v)) .g) (.mul (.rational 12474202 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 86792454 1) .g) (.mul (.rational 69295544 1) .v)) .g) (.mul
    (.rational 17077612 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 35386136 1) .g) (.mul (.rational 33655736 1) .v)) .g) (.mul (.rational 12459598 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9379270 1) .g) (.mul
    (.rational 10009052 1) .v)) .g) (.mul (.rational 5349066 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1563978 1) .g) (.mul (.rational 1836484 1) .v)) .g)
    (.mul (.rational 1437808 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 150356 1) .g) (.mul (.rational 204288 1) .v)) .g) (.mul (.rational 254590 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10012008 1) .f) (.add (.mul (.rational
    45685304 1) .g) (.mul (.rational 9724960 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    90372624 1) .g) (.mul (.rational 39930296 1) .v)) .g) (.mul (.rational 2827836 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 101975188 1) .g) (.mul (.rational 69403256
    1) .v)) .g) (.mul (.rational 11023080 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 72642050 1) .g) (.mul (.rational 66900944 1) .v)) .g) (.mul (.rational 18139340 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 34098838 1) .g) (.mul
    (.rational 39487936 1) .v)) .g) (.mul (.rational 16609624 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10649992 1) .g) (.mul (.rational 14945920 1) .v)) .g)
    (.mul (.rational 9461688 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2167740 1) .g) (.mul (.rational 3713548 1) .v)) .g) (.mul (.rational 3576640 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 269964 1) .g) (.mul
    (.rational 607188 1) .v)) .g) (.mul (.rational 926492 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 17790 1) .g) (.mul (.rational 61932 1) .v)) .g) (.mul
    (.rational 158908 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3694404 1) .f) (.add (.mul (.rational 18337996 1) .g) (.mul (.rational 4177976 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 39737120 1) .g) (.mul (.rational 19110160 1) .v)) .g) (.mul
    (.rational 1443408 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 49521076 1)
    .g) (.mul (.rational 37540072 1) .v)) .g) (.mul (.rational 6447696 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 39344660 1) .g) (.mul (.rational 41659896 1) .v)) .g)
    (.mul (.rational 12433152 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20853274 1) .g) (.mul (.rational 28982148 1) .v)) .g) (.mul (.rational 13705580 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7474928 1) .g) (.mul
    (.rational 13309356 1) .v)) .g) (.mul (.rational 9676612 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1787452 1) .g) (.mul (.rational 4148804 1) .v)) .g)
    (.mul (.rational 4648330 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 271196 1) .g) (.mul (.rational 883336 1) .v)) .g) (.mul (.rational 1557314 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 23186 1) .g) (.mul
    (.rational 123624 1) .v)) .g) (.mul (.rational 355538 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 816 1) .g) (.mul (.rational 9900 1) .v)) .g) (.mul
    (.rational 50262 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 828360 1) .f) (.add (.mul (.rational 4441500 1) .g) (.mul (.rational 1086480 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 10456572 1) .g) (.mul (.rational 5482296 1) .v))
    .g) (.mul (.rational 442800 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    14252020 1) .g) (.mul (.rational 12018248 1) .v)) .g) (.mul (.rational 2232360 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 12480408 1) .g) (.mul (.rational
    15093760 1) .v)) .g) (.mul (.rational 4935396 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 7359308 1) .g) (.mul (.rational 12083204 1) .v)) .g) (.mul
    (.rational 6346200 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2970030 1) .g) (.mul (.rational 6506524 1) .v)) .g) (.mul (.rational 5314622 1) (.pow .v 2)))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 812674 1) .g) (.mul (.rational
    2425196 1) .v)) .g) (.mul (.rational 3069504 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 144464 1) .g) (.mul (.rational 629784 1) .v)) .g) (.mul
    (.rational 1250524 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    15018 1) .g) (.mul (.rational 110380 1) .v)) .g) (.mul (.rational 354036 1) (.pow .v 2)))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 686 1) .g) (.mul (.rational 11692
    1) .v)) .g) (.mul (.rational 65240 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 548 1) .v) .g) (.mul (.rational 6756 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 85320 1) .f) (.add (.mul (.rational
    491184 1) .g) (.mul (.rational 129168 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1247736
    1) .g) (.mul (.rational 712800 1) .v)) .g) (.mul (.rational 61560 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1845080 1) .g) (.mul (.rational 1724896 1) .v)) .g) (.mul
    (.rational 345600 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1763918
    1) .g) (.mul (.rational 2417240 1) .v)) .g) (.mul (.rational 860688 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1143796 1) .g) (.mul (.rational 2185484 1)
    .v)) .g) (.mul (.rational 1261536 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 512118 1) .g) (.mul (.rational 1346036 1) .v)) .g) (.mul (.rational 1217624
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 157242 1) .g)
    (.mul (.rational 580852 1) .v)) .g) (.mul (.rational 818202 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 31856 1) .g) (.mul (.rational 176624 1) .v)) .g)
    (.mul (.rational 391516 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3858 1) .g) (.mul (.rational 36756 1) .v)) .g) (.mul (.rational 132242 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 212 1) .g) (.mul (.rational
    4740 1) .v)) .g) (.mul (.rational 30034 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 284 1) .v) .g) (.mul (.rational 4092 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 250 1) (.pow .v 2)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh3204

namespace FullHigh3205
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_100_1 e g v+24*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^1+4*SmallGap.ReducedLayers.high0_010_3 e g v+8*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_1 e g v+12*SmallGap.ReducedLayers.high1_200_2 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_110_3 e g v+6*SmallGap.ReducedLayers.high1_110_4 e g
    v*e^1+1*SmallGap.ReducedLayers.high1_020_5 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 9264 1) .e) (.add (.mul (.rational 77694 1) .f)
    (.add (.mul (.rational 94602 1) .g) (.mul (.rational 15660 1) .v)))) .e) (.add (.mul (.add
    (.mul (.rational 395382 1) .f) (.add (.mul (.rational 652066 1) .g) (.mul (.rational 111576 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 389952 1) .g) (.mul (.rational 123432 1) .v)) .g)
    (.mul (.rational 6980 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    1354272 1) .f) (.add (.mul (.rational 2807254 1) .g) (.mul (.rational 483636 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 2245444 1) .g) (.mul (.rational 718124 1) .v)) .g) (.mul
    (.rational 44082 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 872198 1) .g)
    (.mul (.rational 355604 1) .v)) .g) (.mul (.rational 47748 1) (.pow .v 2))) .g))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3280518 1) .f) (.add (.mul (.rational
    8163688 1) .g) (.mul (.rational 1416204 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    8148868 1) .g) (.mul (.rational 2639520 1) .v)) .g) (.mul (.rational 168216 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4192536 1) .g) (.mul (.rational 1755096 1) .v))
    .g) (.mul (.rational 243628 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1178958 1) .g) (.mul (.rational 492424 1) .v)) .g) (.mul (.rational 109976 1) (.pow .v 2)))
    (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5752428 1) .f) (.add (.mul (.rational 16660846 1) .g) (.mul (.rational 2946120 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 19868960 1) .g) (.mul (.rational 6631820 1) .v)) .g) (.mul
    (.rational 432604 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 12671052 1)
    .g) (.mul (.rational 5581976 1) .v)) .g) (.mul (.rational 790484 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4679992 1) .g) (.mul (.rational 2142432 1) .v)) .g)
    (.mul (.rational 486608 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1002466 1) .g) (.mul (.rational 349088 1) .v)) .g) (.mul (.rational 105484 1) (.pow
    .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 7347900 1) .f) (.add (.mul (.rational 24222468 1) .g) (.mul (.rational
    4444056 1) .v))) .f) (.add (.mul (.add (.mul (.rational 33495966 1) .g) (.mul (.rational
    11790408 1) .v)) .g) (.mul (.rational 792096 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 25388736 1) .g) (.mul (.rational 12142124 1) .v)) .g) (.mul (.rational
    1779832 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11545684 1) .g)
    (.mul (.rational 6066560 1) .v)) .g) (.mul (.rational 1446112 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3223336 1) .g) (.mul (.rational 1466592 1) .v))
    .g) (.mul (.rational 492092 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 535878 1) .g) (.mul (.rational 128048 1) .v)) .g) (.mul (.rational 48696 1) (.pow
    .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 6779136 1) .f) (.add (.mul (.rational 25011324 1) .g) (.mul
    (.rational 4848528 1) .v))) .f) (.add (.mul (.add (.mul (.rational 39243504 1) .g) (.mul
    (.rational 14895480 1) .v)) .g) (.mul (.rational 1050328 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 34341654 1) .g) (.mul (.rational 18326096 1) .v)) .g) (.mul
    (.rational 2863104 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 18455960
    1) .g) (.mul (.rational 11513356 1) .v)) .g) (.mul (.rational 3016188 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6300956 1) .g) (.mul (.rational 3876928
    1) .v)) .g) (.mul (.rational 1541684 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1355104 1) .g) (.mul (.rational 654464 1) .v)) .g) (.mul (.rational
    394740 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 173138 1)
    .g) (.mul (.rational 37144 1) .v)) .g) (.mul (.rational 49044 1) (.pow .v 2))) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 4402008 1) .f) (.add (.mul (.rational 17940240 1) .g) (.mul (.rational
    3730752 1) .v))) .f) (.add (.mul (.add (.mul (.rational 31415280 1) .g) (.mul (.rational
    13080000 1) .v)) .g) (.mul (.rational 988896 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 31070920 1) .g) (.mul (.rational 18842480 1) .v)) .g) (.mul (.rational
    3224664 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 19179882 1) .g)
    (.mul (.rational 14430304 1) .v)) .g) (.mul (.rational 4289328 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7689784 1) .g) (.mul (.rational 6363044 1) .v))
    .g) (.mul (.rational 3044880 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2007820 1) .g) (.mul (.rational 1644480 1) .v)) .g) (.mul (.rational 1292776 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 329200 1) .g) (.mul
    (.rational 245496 1) .v)) .g) (.mul (.rational 360748 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 30730 1) .g) (.mul (.rational 20120 1) .v)) .g) (.mul
    (.rational 71096 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1908432 1) .f)
    (.add (.mul (.rational 8501928 1) .g) (.mul (.rational 1916400 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 16401264 1) .g) (.mul (.rational 7568928 1) .v)) .g) (.mul (.rational 623064
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 18037376 1) .g) (.mul
    (.rational 12535552 1) .v)) .g) (.mul (.rational 2387496 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12523596 1) .g) (.mul (.rational 11372480 1) .v)) .g) (.mul
    (.rational 3876840 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5732626 1) .g) (.mul (.rational 6224360 1) .v)) .g) (.mul (.rational 3543552 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1745216 1) .g) (.mul (.rational
    2155556 1) .v)) .g) (.mul (.rational 2065932 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 344532 1) .g) (.mul (.rational 489672 1) .v)) .g) (.mul
    (.rational 830708 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    40882 1) .g) (.mul (.rational 75040 1) .v)) .g) (.mul (.rational 236632 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2428 1) .g) (.mul (.rational 7412 1) .v))
    .g) (.mul (.rational 44644 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 495720 1) .f) (.add (.mul (.rational 2393496 1) .g) (.mul (.rational 587952 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 5033952 1) .g) (.mul (.rational 2585520 1) .v))
    .g) (.mul (.rational 233280 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6077160 1) .g) (.mul (.rational 4842576 1) .v)) .g) (.mul (.rational 1030320 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4669980 1) .g) (.mul (.rational 5075280 1)
    .v)) .g) (.mul (.rational 1976784 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2390300 1) .g) (.mul (.rational 3304840 1) .v)) .g) (.mul (.rational 2196936
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 824922 1) .g)
    (.mul (.rational 1415720 1) .v)) .g) (.mul (.rational 1598736 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 188296 1) .g) (.mul (.rational 415892 1) .v)) .g)
    (.mul (.rational 813608 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26646 1) .g) (.mul (.rational 85648 1) .v)) .g) (.mul (.rational 294736 1) (.pow .v
    2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1998 1) .g) (.mul (.rational
    11832 1) .v)) .g) (.mul (.rational 72812 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 50 1) .g) (.mul (.rational 904 1) .v)) .g) (.mul (.rational 10932 1)
    (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 58320 1)
    .f) (.add (.mul (.rational 303048 1) .g) (.mul (.rational 81216 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 688968 1) .g) (.mul (.rational 393552 1) .v)) .g) (.mul (.rational 38880 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 903600 1) .g) (.mul (.rational
    821664 1) .v)) .g) (.mul (.rational 194400 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 758760 1) .g) (.mul (.rational 974160 1) .v)) .g) (.mul (.rational 428856 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 427372 1) .g) (.mul
    (.rational 730784 1) .v)) .g) (.mul (.rational 556584 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 163776 1) .g) (.mul (.rational 368056 1) .v)) .g) (.mul
    (.rational 478592 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    42034 1) .g) (.mul (.rational 129392 1) .v)) .g) (.mul (.rational 289344 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 6816 1) .g) (.mul (.rational 32212
    1) .v)) .g) (.mul (.rational 125036 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 606 1) .g) (.mul (.rational 5436 1) .v)) .g) (.mul (.rational 37524 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 20 1) .g) (.mul (.rational
    532 1) .v)) .g) (.mul (.rational 7218 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 20 1) .v) .g) (.mul (.rational 760 1) (.pow .v 2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh3205

namespace FullHigh3206
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  10*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_100_2 e g v+4*SmallGap.ReducedLayers.high0_010_4 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_2 e g v+3*SmallGap.ReducedLayers.high1_110_4 e g
    v+1*SmallGap.ReducedLayers.high1_020_6 e g v)

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

end FullHigh3206

end
end SPR.N6.Tail.CoreEndpoint
