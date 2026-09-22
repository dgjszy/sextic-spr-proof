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

namespace FullLow2030
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c230 e f g v*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_0 e g v*e^3+6*SmallGap.ReducedLayers.low0_001_0 e
    g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_200_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_101_0 e g
    v*e^2+3*SmallGap.ReducedLayers.low1_002_0 e g v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 40 1) .v) (.rational 1100 1)) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 40 1) .v) (.rational 864 1)) .v) (.rational 9530 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 100 1) .v) (.rational 1368 1)) .v) (.rational 11950 1)) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 792 1) .v) (.rational 8728 1)) .v) (.rational
    52044 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2376 1) .v) (.rational 18980 1)) .v)
    (.rational 90874 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2576 1) .v) (.rational
    13968 1)) .v) (.rational 55236 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 7204 1) .v) (.rational 54524 1)) .v) (.rational 201526 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 25214 1) .v) (.rational 150876 1)) .v) (.rational
    457138 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 34178 1) .v) (.rational 158420
    1)) .v) (.rational 392338 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22410
    1) .v) (.rational 79812 1)) .v) (.rational 158714 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 39958 1) .v) (.rational
    234956 1)) .v) (.rational 588953 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 159832 1)
    .v) (.rational 788652 1)) .v) (.rational 1663113 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 258712 1) .v) (.rational 1065020 1)) .v) (.rational 1875049 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 216724 1) .v) (.rational 745772 1)) .v) (.rational
    1082465 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 99090 1) .v) (.rational
    288744 1)) .v) (.rational 340610 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 151172 1) .v) (.rational 738114 1))
    .v) (.rational 1345697 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 680274 1) .v)
    (.rational 2908508 1)) .v) (.rational 4589278 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1276312 1) .v) (.rational 4774500 1)) .v) (.rational 6481722 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1292480 1) .v) (.rational 4246612 1)) .v) (.rational
    4929874 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 762008 1) .v)
    (.rational 2220934 1)) .v) (.rational 2197019 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 261126 1) .v) (.rational 686736 1)) .v) (.rational 581184 1)) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 413005 1) .v) (.rational 1742988 1)) .v) (.rational 2448878 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2065025 1) .v) (.rational 7874282 1)) .v) (.rational
    9846219 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4397834 1) .v) (.rational
    15163236 1)) .v) (.rational 16817718 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5201186 1) .v) (.rational 16273112 1)) .v) (.rational 15976260 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3728533 1) .v) (.rational 10660984 1)) .v)
    (.rational 9273774 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1654553 1)
    .v) (.rational 4371174 1)) .v) (.rational 3389779 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 442116 1) .v) (.rational 1095000 1)) .v) (.rational 766802 1)) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 840658 1) .v) (.rational 3146012 1)) .v) (.rational 3573777
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4623619 1) .v) (.rational 16007660 1)) .v)
    (.rational 16600869 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11004997 1) .v)
    (.rational 35283792 1)) .v) (.rational 33351131 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 14845344 1) .v) (.rational 44199344 1)) .v) (.rational 38074310 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 12474740 1) .v) (.rational 34658932 1)) .v)
    (.rational 27270115 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6748651 1)
    .v) (.rational 17622112 1)) .v) (.rational 12733687 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2339173 1) .v) (.rational 5793436 1)) .v) (.rational 3879599 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 497346 1) .v) (.rational 1180484 1)) .v)
    (.rational 741402 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1295406 1) .v)
    (.rational 4372352 1)) .v) (.rational 4175707 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    7772436 1) .v) (.rational 24715336 1)) .v) (.rational 22024138 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 20428390 1) .v) (.rational 61248718 1)) .v) (.rational 50891138 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 30894620 1) .v) (.rational 87506274
    1)) .v) (.rational 67828758 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    29680330 1) .v) (.rational 79675352 1)) .v) (.rational 57735762 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 18850396 1) .v) (.rational 48180512 1)) .v) (.rational
    32771255 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7971438 1) .v)
    (.rational 19512010 1)) .v) (.rational 12532245 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2198536 1) .v) (.rational 5187342 1)) .v) (.rational 3169687 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 373796 1) .v) (.rational 855544 1)) .v)
    (.rational 501204 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1518776 1) .v) (.rational 4677532 1)) .v) (.rational 3873771 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9872044 1) .v) (.rational 29055518 1)) .v) (.rational 22859442 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 28377564 1) .v) (.rational 79857712 1)) .v)
    (.rational 59665742 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 47484118 1)
    .v) (.rational 127921268 1)) .v) (.rational 90810442 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 51211818 1) .v) (.rational 132343436 1)) .v) (.rational 89400440 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 37211022 1) .v) (.rational 92510094
    1)) .v) (.rational 59624432 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    18474176 1) .v) (.rational 44343624 1)) .v) (.rational 27370830 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6212038 1) .v) (.rational 14454364 1)) .v) (.rational
    8582856 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1368038 1) .v)
    (.rational 3097828 1)) .v) (.rational 1777705 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 183854 1) .v) (.rational 406316 1)) .v) (.rational 226150 1)) (.pow .g 9))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1348440 1) .v) (.rational
    3820720 1)) .v) (.rational 2810825 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 9439080 1)
    .v) (.rational 25852420 1)) .v) (.rational 18329800 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 29441770 1) .v) (.rational 77963572 1)) .v) (.rational 53260274 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 53942580 1) .v) (.rational 138200680 1)) .v)
    (.rational 90990218 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 64410665 1)
    .v) (.rational 159845326 1)) .v) (.rational 101518457 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 52544415 1) .v) (.rational 126522116 1)) .v) (.rational 77632903 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 29827988 1) .v) (.rational 69836888
    1)) .v) (.rational 41488992 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11760002 1) .v) (.rational 26836124 1)) .v) (.rational 15475472 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3150661 1) .v) (.rational 7023442 1)) .v) (.rational
    3941498 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 546671 1) .v)
    (.rational 1192312 1)) .v) (.rational 652419 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 55972 1) .v) (.rational 119420 1)) .v) (.rational 63734 1)) (.pow .g 10))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 892620 1) .v)
    (.rational 2341004 1)) .v) (.rational 1558523 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    6694650 1) .v) (.rational 17130214 1)) .v) (.rational 11116484 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 22509442 1) .v) (.rational 56195882 1)) .v) (.rational 35537404 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 44775848 1) .v) (.rational
    109097140 1)) .v) (.rational 67234060 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 58547740 1) .v) (.rational 139304750 1)) .v) (.rational 83696906 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 52856397 1) .v) (.rational 122921270 1)) .v)
    (.rational 72056037 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 33651465 1)
    .v) (.rational 76578024 1)) .v) (.rational 43845055 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 15142632 1) .v) (.rational 33761852 1)) .v) (.rational 18905010 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4743486 1) .v) (.rational 10374358
    1)) .v) (.rational 5688467 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    997173 1) .v) (.rational 2140832 1)) .v) (.rational 1150465 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 131033 1) .v) (.rational 276034 1)) .v) (.rational 145359 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 9340 1) .v) (.rational 19252 1))
    .v) (.rational 9912 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 427316 1) .v) (.rational 1042124 1)) .v) (.rational
    636828 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3418528 1) .v) (.rational 8197100 1))
    .v) (.rational 4926205 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 12320978 1) .v)
    (.rational 29044714 1)) .v) (.rational 17161265 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 26422606 1) .v) (.rational 61237318 1)) .v) (.rational 35569697 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 37498600 1) .v) (.rational 85460618 1)) .v)
    (.rational 48802791 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 37040746 1)
    .v) (.rational 83043554 1)) .v) (.rational 46635279 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 26059508 1) .v) (.rational 57503154 1)) .v) (.rational 31769971 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 13121558 1) .v) (.rational 28514206
    1)) .v) (.rational 15507075 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4675702 1) .v) (.rational 10011358 1)) .v) (.rational 5361863 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1143734 1) .v) (.rational 2413418 1)) .v) (.rational
    1273240 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 180806 1) .v)
    (.rational 375820 1)) .v) (.rational 195232 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16364 1) .v) (.rational 33444 1)) .v) (.rational 17080 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 626 1) .v) (.rational 1252 1)) .v) (.rational 626 1))
    (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 139892 1) .v) (.rational 318418 1)) .v) (.rational 180566 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1189082 1) .v) (.rational 2678510 1)) .v) (.rational
    1504170 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4571840 1) .v) (.rational
    10190168 1)) .v) (.rational 5665620 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10507160 1) .v) (.rational 23171280 1)) .v) (.rational 12752848 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 16065276 1) .v) (.rational 35053332 1)) .v)
    (.rational 19095984 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 17203342 1)
    .v) (.rational 37142248 1)) .v) (.rational 20027998 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13218444 1) .v) (.rational 28243340 1)) .v) (.rational 15075568 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 7335284 1) .v) (.rational 15513516
    1)) .v) (.rational 8197904 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2913690 1) .v) (.rational 6100310 1)) .v) (.rational 3191628 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 806356 1) .v) (.rational 1671242 1)) .v) (.rational 865644 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 147160 1) .v) (.rational 301820 1))
    .v) (.rational 154712 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 15832 1)
    .v) (.rational 32100 1)) .v) (.rational 16268 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 754 1) .v) (.rational 1508 1)) .v) (.rational 754 1)) (.pow .g 12))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    28043 1) .v) (.rational 59756 1)) .v) (.rational 31713 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 252387 1) .v) (.rational 535206 1)) .v) (.rational 282819 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1030844 1) .v) (.rational 2175172 1)) .v) (.rational 1144328 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2525980 1) .v) (.rational 5303208
    1)) .v) (.rational 2777228 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4135062 1) .v) (.rational 8637208 1)) .v) (.rational 4502146 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4763486 1) .v) (.rational 9898884 1)) .v) (.rational 5135398 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3959254 1) .v) (.rational 8185444
    1)) .v) (.rational 4226190 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2392260 1) .v) (.rational 4920464 1)) .v) (.rational 2528204 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1042825 1) .v) (.rational 2133888 1)) .v) (.rational 1091063 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 319807 1) .v) (.rational 650998 1))
    .v) (.rational 331191 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 65478 1)
    .v) (.rational 132568 1)) .v) (.rational 67090 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8032 1) .v) (.rational 16168 1)) .v) (.rational 8136 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 446 1) .v) (.rational 892 1)) .v) (.rational 446 1))
    (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 2598 1) .v) (.rational 5196 1)) .v) (.rational 2598 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 24681 1) .v) (.rational 49362 1)) .v) (.rational
    24681 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 106691 1) .v) (.rational 213382
    1)) .v) (.rational 106691 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    277508 1) .v) (.rational 555016 1)) .v) (.rational 277508 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 483776 1) .v) (.rational 967552 1)) .v) (.rational 483776 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 595622 1) .v) (.rational 1191244
    1)) .v) (.rational 595622 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    531258 1) .v) (.rational 1062516 1)) .v) (.rational 531258 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 346060 1) .v) (.rational 692120 1)) .v) (.rational 346060 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 163498 1) .v) (.rational 326996 1))
    .v) (.rational 163498 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 54681 1)
    .v) (.rational 109362 1)) .v) (.rational 54681 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12299 1) .v) (.rational 24598 1)) .v) (.rational 12299 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1672 1) .v) (.rational 3344 1)) .v) (.rational 1672
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 104 1) .v) (.rational 208 1))
    .v) (.rational 104 1)) (.pow .g 12))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2030

namespace FullLow2031
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow1.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_0 e g v*e^2+4*SmallGap.ReducedLayers.low0_100_1
    e g v*e^3+12*SmallGap.ReducedLayers.low0_001_0 e g v*e^1+6*SmallGap.ReducedLayers.low0_001_1 e
    g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_0 e g v*e^2+1*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^3+6*SmallGap.ReducedLayers.low1_101_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^2+3*SmallGap.ReducedLayers.low1_002_0 e g v+3*SmallGap.ReducedLayers.low1_002_1 e g v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    260 1) .v) (.rational 7710 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 220 1) .v)
    (.rational 4952 1)) .v) (.rational 62425 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 550
    1) .v) (.rational 7604 1)) .v) (.rational 76334 1)) .g))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 3984 1) .v) (.rational 45544 1)) .v) (.rational 318299 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11952 1) .v) (.rational 95768 1)) .v) (.rational
    539176 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 12962 1) .v) (.rational 66460 1))
    .v) (.rational 312929 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 33660 1) .v) (.rational 264896 1)) .v) (.rational 1149979 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 117810 1) .v) (.rational 712282 1)) .v) (.rational 2525688
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 159710 1) .v) (.rational 718738 1)) .v)
    (.rational 2071827 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 104750 1)
    .v) (.rational 343862 1)) .v) (.rational 784914 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 174896 1) .v) (.rational 1076864
    1)) .v) (.rational 3134969 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 699584 1) .v)
    (.rational 3534552 1)) .v) (.rational 8581405 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1132398 1) .v) (.rational 4645986 1)) .v) (.rational 9295978 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 948650 1) .v) (.rational 3156682 1)) .v) (.rational
    5098707 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 433762 1) .v)
    (.rational 1187206 1)) .v) (.rational 1506883 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 621732 1) .v)
    (.rational 3206502 1)) .v) (.rational 6676991 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2797794 1) .v) (.rational 12423078 1)) .v) (.rational 22150275 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5249524 1) .v) (.rational 20019332 1)) .v) (.rational 30280958 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5316962 1) .v) (.rational 17475786
    1)) .v) (.rational 22185837 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3135662 1) .v) (.rational 8990348 1)) .v) (.rational 9500735 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1074936 1) .v) (.rational 2749688 1)) .v) (.rational 2424154 1))
    (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1593176 1) .v) (.rational 7157694 1)) .v) (.rational
    11292419 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7965880 1) .v) (.rational 31926172
    1)) .v) (.rational 44367172 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16968758 1)
    .v) (.rational 60691690 1)) .v) (.rational 73896256 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 20079752 1) .v) (.rational 64358008 1)) .v) (.rational 68381370 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 14408530 1) .v) (.rational 41759192
    1)) .v) (.rational 38714754 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6403154 1) .v) (.rational 17026770 1)) .v) (.rational 13872678 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1714244 1) .v) (.rational 4264440 1)) .v) (.rational
    3105805 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3021640 1) .v) (.rational 12102628
    1)) .v) (.rational 15207727 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 16619020 1) .v)
    (.rational 60981364 1)) .v) (.rational 69339294 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 39574640 1) .v) (.rational 133186312 1)) .v) (.rational 136688593 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 53443230 1) .v) (.rational 165545692 1)) .v)
    (.rational 153241418 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 44994188
    1) .v) (.rational 129109172 1)) .v) (.rational 108059138 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 24411058 1) .v) (.rational 65509290 1)) .v) (.rational 49916078
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8494966 1) .v) (.rational
    21581894 1)) .v) (.rational 15148852 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1815540 1) .v) (.rational 4425910 1)) .v) (.rational 2905944 1)) (.pow .g 7)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 4287684 1) .v) (.rational 15524212 1)) .v) (.rational
    16192577 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 25726104 1) .v) (.rational 87080004
    1)) .v) (.rational 84147165 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 67665892 1)
    .v) (.rational 214361936 1)) .v) (.rational 191696448 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 102506840 1) .v) (.rational 304719992 1)) .v) (.rational 252297114 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 98764374 1) .v) (.rational
    276709836 1)) .v) (.rational 212671864 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 63003600 1) .v) (.rational 167402556 1)) .v) (.rational 120052718 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 26808978 1) .v) (.rational 68077366 1)) .v)
    (.rational 45907370 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 7455918 1)
    .v) (.rational 18247606 1)) .v) (.rational 11678563 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1281424 1) .v) (.rational 3045870 1)) .v) (.rational 1866625 1)) (.pow
    .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4546492 1) .v) (.rational
    15007628 1)) .v) (.rational 13425586 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 29552198
    1) .v) (.rational 92645764 1)) .v) (.rational 78290085 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 85034308 1) .v) (.rational 253374740 1)) .v) (.rational 202156589 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 142614516 1) .v) (.rational 404596790 1))
    .v) (.rational 304961456 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    154414302 1) .v) (.rational 418280276 1)) .v) (.rational 298421269 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 112866756 1) .v) (.rational 293070166 1)) .v) (.rational
    198591232 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 56507748 1) .v)
    (.rational 141326164 1)) .v) (.rational 91390417 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 19218846 1) .v) (.rational 46535876 1)) .v) (.rational 28876223 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4296580 1) .v) (.rational 10118666 1)) .v)
    (.rational 6055766 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 588786 1)
    .v) (.rational 1352112 1)) .v) (.rational 782836 1)) (.pow .g 9)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 3555378 1) .v) (.rational 10757992 1)) .v)
    (.rational 8463246 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 24887646 1) .v) (.rational
    72420904 1)) .v) (.rational 54662324 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    77726010 1) .v) (.rational 217595654 1)) .v) (.rational 157519599 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 142816662 1) .v) (.rational 385037916 1)) .v) (.rational
    267419191 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 171365084 1) .v)
    (.rational 445674698 1)) .v) (.rational 297311173 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 140828248 1) .v) (.rational 354135814 1)) .v) (.rational 227370578 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 80782108 1) .v) (.rational
    196974152 1)) .v) (.rational 122045385 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32304118 1) .v) (.rational 76606008 1)) .v) (.rational 45946167 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8819148 1) .v) (.rational 20391356 1)) .v)
    (.rational 11871229 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1568404 1)
    .v) (.rational 3539792 1)) .v) (.rational 2003064 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 165834 1) .v) (.rational 364616 1)) .v) (.rational 200242 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1992420 1)
    .v) (.rational 5546532 1)) .v) (.rational 3910104 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14943150 1) .v) (.rational 40413962 1)) .v) (.rational 27671998 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 50318614 1) .v) (.rational 132218762 1)) .v) (.rational
    87896882 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 100433216 1) .v)
    (.rational 256512394 1)) .v) (.rational 165565137 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 132079766 1) .v) (.rational 328172690 1)) .v) (.rational 205758140 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 120276442 1) .v) (.rational
    291083348 1)) .v) (.rational 177453940 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 77516948 1) .v) (.rational 183003896 1)) .v) (.rational 108624559 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 35465790 1) .v) (.rational 81804922 1)) .v)
    (.rational 47347957 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 11357394 1)
    .v) (.rational 25626374 1)) .v) (.rational 14481532 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2457516 1) .v) (.rational 5425654 1)) .v) (.rational 2994742 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 335374 1) .v) (.rational 723178 1)) .v)
    (.rational 389307 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 25134 1) .v)
    (.rational 52616 1)) .v) (.rational 27482 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 757712 1) .v) (.rational
    1945664 1)) .v) (.rational 1246548 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 6061696 1)
    .v) (.rational 15250112 1)) .v) (.rational 9581488 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 21884536 1) .v) (.rational 53932982 1)) .v) (.rational 33215596 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 47112072 1) .v) (.rational 113738130 1)) .v)
    (.rational 68647832 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 67295988 1)
    .v) (.rational 159199224 1)) .v) (.rational 94169538 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 67126160 1) .v) (.rational 155682010 1)) .v) (.rational 90278136 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 47879974 1) .v) (.rational
    108938134 1)) .v) (.rational 61960170 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 24562346 1) .v) (.rational 54861556 1)) .v) (.rational 30622212 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8970782 1) .v) (.rational 19678856 1)) .v)
    (.rational 10784176 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2265948 1)
    .v) (.rational 4881258 1)) .v) (.rational 2626024 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 373458 1) .v) (.rational 788952 1)) .v) (.rational 416182 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 35698 1) .v) (.rational 73686 1)) .v)
    (.rational 37988 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 1470 1) .v)
    (.rational 2940 1)) .v) (.rational 1470 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 175308 1) .v) (.rational
    416046 1)) .v) (.rational 244818 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1490118 1)
    .v) (.rational 3489706 1)) .v) (.rational 2029072 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5739944 1) .v) (.rational 13260784 1)) .v) (.rational 7615424 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 13247220 1) .v) (.rational 30185172 1)) .v)
    (.rational 17115408 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 20399044 1)
    .v) (.rational 45841120 1)) .v) (.rational 25657932 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 22078108 1) .v) (.rational 48933608 1)) .v) (.rational 27033684 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 17220068 1) .v) (.rational 37648376
    1)) .v) (.rational 20529652 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9750928 1) .v) (.rational 21033152 1)) .v) (.rational 11321568 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3977280 1) .v) (.rational 8465242 1)) .v) (.rational
    4497978 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1138974 1) .v)
    (.rational 2391670 1)) .v) (.rational 1254212 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 217140 1) .v) (.rational 449552 1)) .v) (.rational 232516 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 24700 1) .v) (.rational 50340 1)) .v) (.rational
    25640 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 1264 1) .v) (.rational
    2528 1)) .v) (.rational 1264 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 18642 1) .v) (.rational 40954 1))
    .v) (.rational 22312 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 167778 1) .v) (.rational
    365988 1)) .v) (.rational 198210 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 686624
    1) .v) (.rational 1486732 1)) .v) (.rational 800108 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1690024 1) .v) (.rational 3631296 1)) .v) (.rational 1941272 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2787524 1) .v) (.rational 5942132 1)) .v)
    (.rational 3154608 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3247636 1)
    .v) (.rational 6867184 1)) .v) (.rational 3619548 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2742380 1) .v) (.rational 5751696 1)) .v) (.rational 3009316 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1692520 1) .v) (.rational 3520984 1)) .v)
    (.rational 1828464 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 758414 1)
    .v) (.rational 1565066 1)) .v) (.rational 806652 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 240874 1) .v) (.rational 493132 1)) .v) (.rational 252258 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 51524 1) .v) (.rational 104660 1)) .v) (.rational
    53136 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 6672 1) .v) (.rational
    13448 1)) .v) (.rational 6776 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    396 1) .v) (.rational 792 1)) .v) (.rational 396 1)) (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2031

namespace FullLow2032
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow2.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_0 e g v*e^1+12*SmallGap.ReducedLayers.low0_100_1
    e g v*e^2+4*SmallGap.ReducedLayers.low0_100_2 e g v*e^3+6*SmallGap.ReducedLayers.low0_001_0 e
    g v+12*SmallGap.ReducedLayers.low0_001_1 e g v*e^1+6*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^2+1*SmallGap.ReducedLayers.low1_200_2 e g v*e^3+3*SmallGap.ReducedLayers.low1_101_0 e g
    v+6*SmallGap.ReducedLayers.low1_101_1 e g v*e^1+3*SmallGap.ReducedLayers.low1_101_2 e g
    v*e^2+3*SmallGap.ReducedLayers.low1_002_1 e g v+3*SmallGap.ReducedLayers.low1_002_2 e g v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 700 1) .v)
    (.rational 23250 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 480 1) .v) (.rational
    11948 1)) .v) (.rational 176804 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1200 1) .v)
    (.rational 17756 1)) .v) (.rational 210652 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 8130 1) .v) (.rational 100212 1)) .v) (.rational 842804 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 24390 1) .v) (.rational 202440 1)) .v) (.rational 1382023
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 26460 1) .v) (.rational 129988 1)) .v)
    (.rational 761356 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 64536 1) .v) (.rational 540632 1)) .v) (.rational 2834538 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 225876 1) .v) (.rational 1402010 1)) .v) (.rational 6006069 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 306252 1) .v) (.rational 1339790 1)) .v)
    (.rational 4670437 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 200940 1)
    .v) (.rational 592186 1)) .v) (.rational 1623835 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 315306 1) .v) (.rational
    2063416 1)) .v) (.rational 7169828 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1261224 1)
    .v) (.rational 6580924 1)) .v) (.rational 18940603 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2041482 1) .v) (.rational 8337372 1)) .v) (.rational 19547495 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1710162 1) .v) (.rational 5419392 1)) .v) (.rational
    10021262 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 781884 1) .v)
    (.rational 1946048 1)) .v) (.rational 2698759 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1051008 1) .v)
    (.rational 5792362 1)) .v) (.rational 14123180 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4729536 1) .v) (.rational 21964630 1)) .v) (.rational 45375475 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8873736 1) .v) (.rational 34532396 1)) .v) (.rational
    59616004 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8986908 1) .v)
    (.rational 29360810 1)) .v) (.rational 41611479 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5298948 1) .v) (.rational 14736892 1)) .v) (.rational 16855769 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1815684 1) .v) (.rational 4427900 1)) .v)
    (.rational 4073742 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2507823 1) .v) (.rational 12131950
    1)) .v) (.rational 21968118 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 12539115 1) .v)
    (.rational 53262358 1)) .v) (.rational 84024516 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26712198 1) .v) (.rational 99575416 1)) .v) (.rational 135756344 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 31614102 1) .v) (.rational 103885352 1)) .v)
    (.rational 121543090 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 22690305
    1) .v) (.rational 66475954 1)) .v) (.rational 66591794 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10085841 1) .v) (.rational 26857302 1)) .v) (.rational 23222707 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2700054 1) .v) (.rational 6708788
    1)) .v) (.rational 5122382 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4375752 1) .v)
    (.rational 18996398 1)) .v) (.rational 26923123 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 24066636 1) .v) (.rational 94585310 1)) .v) (.rational 120131195 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 57324492 1) .v) (.rational 204199052 1)) .v) (.rational
    231530397 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 77460444 1) .v)
    (.rational 251200832 1)) .v) (.rational 253869736 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 65281776 1) .v) (.rational 194374102 1)) .v) (.rational 175548227 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 35470596 1) .v) (.rational 98215436
    1)) .v) (.rational 79970066 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    12366732 1) .v) (.rational 32370106 1)) .v) (.rational 24134626 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2648196 1) .v) (.rational 6669842 1)) .v) (.rational
    4644099 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5607195 1) .v)
    (.rational 22094486 1)) .v) (.rational 25625197 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 33643170 1) .v) (.rational 122795486 1)) .v) (.rational 130893026 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 88536765 1) .v) (.rational 299775226 1)) .v)
    (.rational 293228672 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 134288100
    1) .v) (.rational 423296210 1)) .v) (.rational 380119664 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 129655149 1) .v) (.rational 382774302 1)) .v) (.rational
    316606379 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 82966866 1) .v)
    (.rational 231362142 1)) .v) (.rational 177468289 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 35454357 1) .v) (.rational 94367586 1)) .v) (.rational 67805153 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 9914190 1) .v) (.rational 25466814
    1)) .v) (.rational 17340852 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1714998 1) .v) (.rational 4291888 1)) .v) (.rational 2797427 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 5224938 1) .v) (.rational 18793434 1)) .v)
    (.rational 18475668 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 33962097 1) .v)
    (.rational 115153620 1)) .v) (.rational 106255280 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 97806072 1) .v) (.rational 312983792 1)) .v) (.rational 270889117 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 164350329 1) .v) (.rational 497623808 1)) .v)
    (.rational 404302268 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 178531140
    1) .v) (.rational 513540114 1)) .v) (.rational 392678572 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 131137263 1) .v) (.rational 360331138 1)) .v) (.rational
    260490391 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 66108504 1) .v)
    (.rational 174659756 1)) .v) (.rational 120110765 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 22692039 1) .v) (.rational 58036278 1)) .v) (.rational 38222589 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5133678 1) .v) (.rational 12780258
    1)) .v) (.rational 8106209 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    714000 1) .v) (.rational 1733804 1)) .v) (.rational 1061188 1)) (.pow .g 9)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3448323 1) .v) (.rational 11353134 1))
    .v) (.rational 9715000 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 24138261 1) .v)
    (.rational 75950082 1)) .v) (.rational 62034533 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 75474846 1) .v) (.rational 227116440 1)) .v) (.rational 176986037 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 139051683 1) .v) (.rational 400803764 1)) .v)
    (.rational 298139023 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 167604975
    1) .v) (.rational 463915078 1)) .v) (.rational 329918874 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 138679668 1) .v) (.rational 369841194 1)) .v) (.rational
    252130699 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 80317212 1) .v)
    (.rational 207184736 1)) .v) (.rational 135872121 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 32538975 1) .v) (.rational 81504252 1)) .v) (.rational 51608525 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 9037560 1) .v) (.rational 22044264
    1)) .v) (.rational 13515682 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1643757 1) .v) (.rational 3905568 1)) .v) (.rational 2319604 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 178914 1) .v) (.rational 412088 1)) .v) (.rational 236064 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1529436 1) .v) (.rational 4614730 1)) .v) (.rational 3504769 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11470770 1) .v) (.rational 33443332 1)) .v) (.rational 24566426 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 38685516 1) .v) (.rational 109009542 1)) .v)
    (.rational 77408921 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 77482509 1)
    .v) (.rational 211178868 1)) .v) (.rational 144974114 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 102495798 1) .v) (.rational 270556270 1)) .v) (.rational 179682851 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 94160649 1) .v) (.rational
    241162954 1)) .v) (.rational 155141971 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 61442886 1) .v) (.rational 153004888 1)) .v) (.rational 95508270 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 28589463 1) .v) (.rational 69354848 1)) .v)
    (.rational 42081692 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 9363126 1)
    .v) (.rational 22152676 1)) .v) (.rational 13080362 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2086869 1) .v) (.rational 4812062 1)) .v) (.rational 2763761 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 296154 1) .v) (.rational 662702 1)) .v)
    (.rational 368879 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 23388 1) .v)
    (.rational 50208 1)) .v) (.rational 26820 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 409431 1) .v) (.rational
    1132518 1)) .v) (.rational 774219 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3275448 1)
    .v) (.rational 8834778 1)) .v) (.rational 5902575 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11848089 1) .v) (.rational 31155990 1)) .v) (.rational 20329614 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 25616283 1) .v) (.rational 65678614 1)) .v)
    (.rational 41840924 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 36857565 1)
    .v) (.rational 92180022 1)) .v) (.rational 57332742 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 37166595 1) .v) (.rational 90734250 1)) .v) (.rational 55114814 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 26919141 1) .v) (.rational 64202346
    1)) .v) (.rational 38108250 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    14099109 1) .v) (.rational 32874510 1)) .v) (.rational 19078124 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5293266 1) .v) (.rational 12068120 1)) .v) (.rational
    6848437 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1386417 1) .v)
    (.rational 3087596 1)) .v) (.rational 1711939 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 239682 1) .v) (.rational 519768 1)) .v) (.rational 280808 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 24420 1) .v) (.rational 51212 1)) .v) (.rational
    26792 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 1098 1) .v) (.rational
    2196 1)) .v) (.rational 1098 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 50058 1) .v) (.rational 126912 1)) .v)
    (.rational 78894 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 425493 1) .v) (.rational
    1060110 1)) .v) (.rational 649359 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1642812 1) .v) (.rational 4020032 1)) .v) (.rational 2424512 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3811230 1) .v) (.rational 9156232 1)) .v) (.rational 5433730 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5920338 1) .v) (.rational 13960928
    1)) .v) (.rational 8148518 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6491784 1) .v) (.rational 15025396 1)) .v) (.rational 8622704 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5156646 1) .v) (.rational 11715080 1)) .v) (.rational
    6609106 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2992638 1) .v)
    (.rational 6673624 1)) .v) (.rational 3700658 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1260720 1) .v) (.rational 2759192 1)) .v) (.rational 1503480 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 376443 1) .v) (.rational 808078 1)) .v)
    (.rational 432393 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 75726 1) .v)
    (.rational 159224 1)) .v) (.rational 83550 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9228 1) .v) (.rational 18960 1)) .v) (.rational 9732 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 516 1) .v) (.rational 1032 1)) .v) (.rational 516 1))
    (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2032

namespace FullLow2033
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow3.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_0 e g v+12*SmallGap.ReducedLayers.low0_100_1 e g
    v*e^1+12*SmallGap.ReducedLayers.low0_100_2 e g v*e^2+4*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^3+6*SmallGap.ReducedLayers.low0_001_1 e g v+12*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_001_3 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_200_0 e g v+3*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_200_2 e g v*e^2+1*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_101_1 e g v+6*SmallGap.ReducedLayers.low1_101_2 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_101_3 e g v*e^2+3*SmallGap.ReducedLayers.low1_002_2 e g
    v+3*SmallGap.ReducedLayers.low1_002_3 e g v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1000 1) .v) (.rational
    39100 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 520 1) .v) (.rational 15552 1))
    .v) (.rational 280916 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1300 1) .v) (.rational
    22344 1)) .v) (.rational 326008 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 8406 1) .v) (.rational 119632 1)) .v) (.rational 1255800 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25218 1) .v) (.rational 230732 1)) .v) (.rational 1990799 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 27368 1) .v) (.rational 133764 1)) .v) (.rational
    1036076 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 63628 1) .v) (.rational 598328 1)) .v) (.rational 3930745 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 222698 1) .v) (.rational 1483782 1)) .v) (.rational 8013318 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 302006 1) .v) (.rational 1316186 1)) .v)
    (.rational 5861646 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 198270 1)
    .v) (.rational 511914 1)) .v) (.rational 1823726 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 295060 1) .v) (.rational
    2138588 1)) .v) (.rational 9190991 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1180240 1)
    .v) (.rational 6577488 1)) .v) (.rational 23343677 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1910542 1) .v) (.rational 7924850 1)) .v) (.rational 22757633 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1600786 1) .v) (.rational 4819466 1)) .v) (.rational
    10686070 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 732126 1) .v)
    (.rational 1600434 1)) .v) (.rational 2495370 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 925856 1) .v)
    (.rational 5637598 1)) .v) (.rational 16621218 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4166352 1) .v) (.rational 20808772 1)) .v) (.rational 51514495 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7817212 1) .v) (.rational 31662280 1)) .v) (.rational
    64579924 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7917266 1) .v)
    (.rational 25939154 1)) .v) (.rational 42393543 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4668446 1) .v) (.rational 12546324 1)) .v) (.rational 15901583 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1599438 1) .v) (.rational 3663994 1)) .v)
    (.rational 3538306 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2052596 1) .v) (.rational 10996972
    1)) .v) (.rational 23501788 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 10262980 1) .v)
    (.rational 47347668 1)) .v) (.rational 87208271 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 21864612 1) .v) (.rational 86647778 1)) .v) (.rational 135980540 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 25880568 1) .v) (.rational 88459268 1)) .v)
    (.rational 116952008 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 18578946
    1) .v) (.rational 55523774 1)) .v) (.rational 61479150 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8259366 1) .v) (.rational 22134794 1)) .v) (.rational 20705392 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2210274 1) .v) (.rational 5502812
    1)) .v) (.rational 4484356 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3261440 1) .v)
    (.rational 15725066 1)) .v) (.rational 25753239 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17937920 1) .v) (.rational 77186546 1)) .v) (.rational 112144514 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 42735012 1) .v) (.rational 164264668 1)) .v) (.rational
    210591083 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 57773154 1) .v)
    (.rational 199427616 1)) .v) (.rational 224982230 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 48727068 1) .v) (.rational 152718034 1)) .v) (.rational 152035556 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 26502126 1) .v) (.rational 76713956
    1)) .v) (.rational 68170716 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9248730 1) .v) (.rational 25272998 1)) .v) (.rational 20465175 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1980936 1) .v) (.rational 5229434 1)) .v) (.rational
    3955992 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3694122 1) .v)
    (.rational 16192404 1)) .v) (.rational 21339927 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22164732 1) .v) (.rational 89018130 1)) .v) (.rational 106905363 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 58353870 1) .v) (.rational 215137414 1)) .v) (.rational
    234946968 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 88592640 1) .v)
    (.rational 301261964 1)) .v) (.rational 299324118 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 85673052 1) .v) (.rational 270923440 1)) .v) (.rational 245968344 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 54948420 1) .v) (.rational
    163476786 1)) .v) (.rational 136854828 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23549488 1) .v) (.rational 66851948 1)) .v) (.rational 52286783 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6606030 1) .v) (.rational 18155790 1)) .v)
    (.rational 13458040 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1145564 1)
    .v) (.rational 3083906 1)) .v) (.rational 2189884 1)) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 2911356 1) .v) (.rational 11654094 1)) .v) (.rational
    12850924 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 18923814 1) .v) (.rational 70786104
    1)) .v) (.rational 72748095 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 54534516 1)
    .v) (.rational 190961400 1)) .v) (.rational 182773331 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 91777884 1) .v) (.rational 301960908 1)) .v) (.rational 269471520 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 99953098 1) .v) (.rational
    310790062 1)) .v) (.rational 259525344 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 73697742 1) .v) (.rational 218254016 1)) .v) (.rational 171590494 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 37344012 1) .v) (.rational 106295208 1)) .v)
    (.rational 79315689 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 12902526 1)
    .v) (.rational 35618450 1)) .v) (.rational 25434569 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2941496 1) .v) (.rational 7929490 1)) .v) (.rational 5450607 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 412334 1) .v) (.rational 1087122 1)) .v)
    (.rational 719474 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1517184 1) .v) (.rational 5558760 1)) .v) (.rational 5281110 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 10620288 1) .v) (.rational 36911544 1)) .v) (.rational 33277654
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 33238998 1) .v) (.rational 109732026 1))
    .v) (.rational 93838761 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    61370244 1) .v) (.rational 192937002 1)) .v) (.rational 156634847 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 74241232 1) .v) (.rational 223127894 1)) .v) (.rational
    172368032 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 61762454 1) .v)
    (.rational 178343254 1)) .v) (.rational 131586753 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 36041650 1) .v) (.rational 100554932 1)) .v) (.rational 71193231 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 14749936 1) .v) (.rational 39971330
    1)) .v) (.rational 27280045 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4150768 1) .v) (.rational 10962880 1)) .v) (.rational 7233084 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 767506 1) .v) (.rational 1974112 1)) .v) (.rational 1257847
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 85198 1) .v) (.rational 211512
    1)) .v) (.rational 129088 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 470340 1) .v) (.rational 1579170 1)) .v) (.rational 1320360
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3527550 1) .v) (.rational 11368572 1)) .v)
    (.rational 9148872 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11912286 1) .v)
    (.rational 36876930 1)) .v) (.rational 28548088 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 23928684 1) .v) (.rational 71262804 1)) .v) (.rational 53082825 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 31809438 1) .v) (.rational 91345098 1)) .v)
    (.rational 65544354 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 29438970 1)
    .v) (.rational 81753750 1)) .v) (.rational 56617666 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19411272 1) .v) (.rational 52294992 1)) .v) (.rational 35037407 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 9161910 1) .v) (.rational 24008304
    1)) .v) (.rational 15595693 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3058738 1) .v) (.rational 7804200 1)) .v) (.rational 4919810 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 699500 1) .v) (.rational 1733650 1)) .v) (.rational 1058698 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 102762 1) .v) (.rational 245250 1))
    .v) (.rational 144073 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 8506 1)
    .v) (.rational 19128 1)) .v) (.rational 10622 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 65772 1) .v) (.rational
    202452 1)) .v) (.rational 151236 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 526176 1)
    .v) (.rational 1569558 1)) .v) (.rational 1141188 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1906722 1) .v) (.rational 5512104 1)) .v) (.rational 3897474 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4138974 1) .v) (.rational 11602116 1)) .v) (.rational
    7974946 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5995518 1) .v)
    (.rational 16312098 1)) .v) (.rational 10901336 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6107454 1) .v) (.rational 16148340 1)) .v) (.rational 10498230 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4488144 1) .v) (.rational 11546304 1)) .v)
    (.rational 7307520 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2398632 1)
    .v) (.rational 6007782 1)) .v) (.rational 3703298 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 925928 1) .v) (.rational 2256106 1)) .v) (.rational 1353866 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 252014 1) .v) (.rational 595378 1)) .v)
    (.rational 346966 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 45966 1) .v)
    (.rational 104508 1)) .v) (.rational 58794 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5054 1) .v) (.rational 10906 1)) .v) (.rational 5852 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 254 1) .v) (.rational 508 1)) .v) (.rational 254 1))
    (.pow .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2033

namespace FullLow2034
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_1 e g v+12*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^1+12*SmallGap.ReducedLayers.low0_100_3 e g v*e^2+4*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^3+6*SmallGap.ReducedLayers.low0_001_2 e g v+12*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_001_4 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_200_1 e g v+3*SmallGap.ReducedLayers.low1_200_2 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_200_3 e g v*e^2+1*SmallGap.ReducedLayers.low1_200_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_101_2 e g v+6*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_101_4 e g v*e^2+3*SmallGap.ReducedLayers.low1_002_3 e g
    v+3*SmallGap.ReducedLayers.low1_002_4 e g v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 800 1) .v) (.rational 39600 1)) .e)
    (.add (.mul (.add (.mul (.add (.mul (.rational 280 1) .v) (.rational 11528 1)) .v) (.rational
    270574 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 700 1) .v) (.rational 16016 1)) .v)
    (.rational 305942 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    4398 1) .v) (.rational 82144 1)) .v) (.rational 1139846 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13194 1) .v) (.rational 150536 1)) .v) (.rational 1746559 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 14324 1) .v) (.rational 76444 1)) .v) (.rational 856682 1)) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 32268 1)
    .v) (.rational 382424 1)) .v) (.rational 3327980 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 112938 1) .v) (.rational 899422 1)) .v) (.rational 6519879 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 153206 1) .v) (.rational 721474 1)) .v) (.rational 4462875 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 100670 1) .v) (.rational 224378 1))
    .v) (.rational 1208701 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 144002 1) .v) (.rational 1281896 1)) .v) (.rational 7184927
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 576008 1) .v) (.rational 3771840 1)) .v)
    (.rational 17509728 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 932706 1) .v)
    (.rational 4248960 1)) .v) (.rational 16025638 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 782090 1) .v) (.rational 2332732 1)) .v) (.rational 6749325 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 358204 1) .v) (.rational 669640 1)) .v)
    (.rational 1260393 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 429888 1) .v) (.rational 3170372 1)) .v)
    (.rational 11859593 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1934496 1) .v) (.rational
    11323532 1)) .v) (.rational 35377315 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    3630808 1) .v) (.rational 16515524 1)) .v) (.rational 42105572 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3680180 1) .v) (.rational 12848258 1)) .v) (.rational
    25705347 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2173052 1) .v)
    (.rational 5876338 1)) .v) (.rational 8719902 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 746004 1) .v) (.rational 1638410 1)) .v) (.rational 1716874 1)) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 890546 1) .v) (.rational 5723144 1)) .v) (.rational 15054110 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4452730 1) .v) (.rational 24069080 1)) .v) (.rational
    54080015 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 9490208 1) .v) (.rational
    42890356 1)) .v) (.rational 81111330 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11244452 1) .v) (.rational 42581224 1)) .v) (.rational 66696054 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8085808 1) .v) (.rational 26056392 1)) .v)
    (.rational 33455248 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3603308 1)
    .v) (.rational 10207308 1)) .v) (.rational 10846964 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 967058 1) .v) (.rational 2523988 1)) .v) (.rational 2313670 1)) (.pow
    .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1285200 1) .v) (.rational 7354084 1)) .v) (.rational
    14424148 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7068600 1) .v) (.rational 35488810
    1)) .v) (.rational 61185115 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16850268 1)
    .v) (.rational 74230046 1)) .v) (.rational 111711825 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 22811706 1) .v) (.rational 88696664 1)) .v) (.rational 116070028 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 19285480 1) .v) (.rational 67101740
    1)) .v) (.rational 76623592 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10524752 1) .v) (.rational 33508468 1)) .v) (.rational 33901720 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3688376 1) .v) (.rational 11056716 1)) .v) (.rational
    10180458 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 793374 1) .v)
    (.rational 2304850 1)) .v) (.rational 1988749 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 1264530 1) .v) (.rational 6494100 1)) .v) (.rational 10023933 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7587180 1) .v) (.rational 35247600 1)) .v) (.rational
    49167690 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 19991638 1) .v) (.rational
    84185564 1)) .v) (.rational 105847575 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 30409040 1) .v) (.rational 116772532 1)) .v) (.rational 132429138 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 29500992 1) .v) (.rational 104424980 1)) .v)
    (.rational 107447802 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19008708
    1) .v) (.rational 62989360 1)) .v) (.rational 59515626 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8195376 1) .v) (.rational 25899316 1)) .v) (.rational 22847479 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2314638 1) .v) (.rational 7104600
    1)) .v) (.rational 5948157 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    403864 1) .v) (.rational 1220056 1)) .v) (.rational 978725 1)) (.pow .g 8)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 805644 1) .v) (.rational 3728232 1)) .v) (.rational
    4732569 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5236686 1) .v) (.rational 22417920
    1)) .v) (.rational 26329809 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 15106272 1)
    .v) (.rational 59963808 1)) .v) (.rational 65110869 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25480950 1) .v) (.rational 94257096 1)) .v) (.rational 94783407 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 27856872 1) .v) (.rational 96796328
    1)) .v) (.rational 90588066 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    20654118 1) .v) (.rational 68138684 1)) .v) (.rational 59834114 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10543480 1) .v) (.rational 33430332 1)) .v) (.rational
    27825975 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3675854 1) .v)
    (.rational 11332902 1)) .v) (.rational 9026158 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 846272 1) .v) (.rational 2557466 1)) .v) (.rational 1959104 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 119556 1) .v) (.rational 354350 1)) .v)
    (.rational 260314 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 298404 1) .v) (.rational 1250316 1)) .v) (.rational 1350216 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2088828 1) .v) (.rational 8233272 1)) .v) (.rational 8383068 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6544194 1) .v) (.rational 24315432 1)) .v)
    (.rational 23336835 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 12110400 1)
    .v) (.rational 42581544 1)) .v) (.rational 38577654 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14706132 1) .v) (.rational 49214544 1)) .v) (.rational 42232095 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 12302394 1) .v) (.rational 39472716
    1)) .v) (.rational 32250747 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7232858 1) .v) (.rational 22430020 1)) .v) (.rational 17556173 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2987924 1) .v) (.rational 9021328 1)) .v) (.rational
    6801320 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 850112 1) .v)
    (.rational 2509812 1)) .v) (.rational 1827209 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 158978 1) .v) (.rational 458184 1)) .v) (.rational 321123 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 17766 1) .v) (.rational 49360 1)) .v) (.rational
    32882 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 48600 1) .v) (.rational 185760 1)) .v) (.rational 175068 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 364500 1) .v) (.rational 1327428 1)) .v) (.rational 1197180 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1231776 1) .v) (.rational 4281936 1)) .v)
    (.rational 3694479 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2478294 1)
    .v) (.rational 8248692 1)) .v) (.rational 6814539 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3303228 1) .v) (.rational 10571892 1)) .v) (.rational 8380299 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3068670 1) .v) (.rational 9493482 1)) .v)
    (.rational 7243902 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2033424 1)
    .v) (.rational 6115086 1)) .v) (.rational 4508196 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 965484 1) .v) (.rational 2836284 1)) .v) (.rational 2026827 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 324456 1) .v) (.rational 933412 1)) .v)
    (.rational 647449 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 74676 1) .v)
    (.rational 209814 1)) .v) (.rational 140916 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11022 1) .v) (.rational 29838 1)) .v) (.rational 19215 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 912 1) .v) (.rational 2284 1)) .v) (.rational 1372
    1)) (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2034

namespace FullLow2035
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  3*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_2 e g v+12*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^1+12*SmallGap.ReducedLayers.low0_100_4 e g v*e^2+6*SmallGap.ReducedLayers.low0_001_3 e g
    v+12*SmallGap.ReducedLayers.low0_001_4 e g v*e^1+6*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_200_2 e g v+3*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_200_4 e g v*e^2+3*SmallGap.ReducedLayers.low1_101_3 e g
    v+6*SmallGap.ReducedLayers.low1_101_4 e g v*e^1+3*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^2+3*SmallGap.ReducedLayers.low1_002_4 e g v+3*SmallGap.ReducedLayers.low1_002_5 e g v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 340 1) .v) (.rational 24150 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 60 1) .v) (.rational 4616 1)) .v) (.rational 158021 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 150 1) .v) (.rational 6212 1)) .v) (.rational 174238
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 930 1) .v) (.rational
    30888 1)) .v) (.rational 631217 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2790 1) .v)
    (.rational 53676 1)) .v) (.rational 935827 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3030 1) .v) (.rational 23056 1)) .v) (.rational 433171 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6720 1) .v) (.rational 135056
    1)) .v) (.rational 1727138 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 23520 1) .v)
    (.rational 299384 1)) .v) (.rational 3254748 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31920 1) .v) (.rational 210380 1)) .v) (.rational 2084503 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21000 1) .v) (.rational 41320 1)) .v) (.rational
    481218 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 29310 1) .v) (.rational 427096 1)) .v) (.rational 3449300 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 117240 1) .v) (.rational 1194016 1)) .v) (.rational 8072426
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 189960 1) .v) (.rational 1232976 1)) .v)
    (.rational 6934865 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 159540 1)
    .v) (.rational 575808 1)) .v) (.rational 2589869 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 73290 1) .v) (.rational 118592 1)) .v) (.rational 344231 1)) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 84480 1) .v) (.rational 993308 1)) .v) (.rational 5177927 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 380160 1) .v) (.rational 3413740 1)) .v) (.rational 14876186 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 714120 1) .v) (.rational 4722028 1)) .v)
    (.rational 16820802 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 725340 1)
    .v) (.rational 3421200 1)) .v) (.rational 9538248 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 429900 1) .v) (.rational 1434352 1)) .v) (.rational 2899332 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 148440 1) .v) (.rational 368284 1)) .v)
    (.rational 492008 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 165600 1) .v) (.rational 1650412 1)) .v)
    (.rational 5822429 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 828000 1) .v) (.rational
    6748340 1)) .v) (.rational 20252965 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1766850 1) .v) (.rational 11637340 1)) .v) (.rational 29245632 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2099400 1) .v) (.rational 11150452 1)) .v) (.rational
    23048406 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1517160 1) .v)
    (.rational 6601004 1)) .v) (.rational 11098404 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 681180 1) .v) (.rational 2528316 1)) .v) (.rational 3508844 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 184710 1) .v) (.rational 621964 1)) .v)
    (.rational 751175 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 218520 1) .v) (.rational
    1869300 1)) .v) (.rational 4737540 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1201860 1)
    .v) (.rational 8831400 1)) .v) (.rational 19564788 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2869980 1) .v) (.rational 18079060 1)) .v) (.rational 34745232 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3900960 1) .v) (.rational 21188192 1)) .v)
    (.rational 35197980 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3320640 1)
    .v) (.rational 15812468 1)) .v) (.rational 22841054 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1830780 1) .v) (.rational 7863280 1)) .v) (.rational 10081160 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 650580 1) .v) (.rational 2612496 1)) .v)
    (.rational 3068485 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 142440 1)
    .v) (.rational 552872 1)) .v) (.rational 611762 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 185220 1) .v) (.rational 1354272 1)) .v) (.rational 2609748 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1111320 1) .v) (.rational 7229268 1)) .v) (.rational
    12518856 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2935440 1) .v) (.rational
    17011256 1)) .v) (.rational 26393526 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4490100 1) .v) (.rational 23338300 1)) .v) (.rational 32484720 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4397310 1) .v) (.rational 20776168 1)) .v)
    (.rational 26148192 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2873160 1)
    .v) (.rational 12583492 1)) .v) (.rational 14536970 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1262520 1) .v) (.rational 5243128 1)) .v) (.rational 5664481 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 365400 1) .v) (.rational 1468068 1)) .v)
    (.rational 1505391 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 65670 1) .v)
    (.rational 257932 1)) .v) (.rational 251891 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 90720 1) .v) (.rational 561816 1)) .v) (.rational 863028 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 589680 1) .v) (.rational 3333960 1)) .v) (.rational
    4712256 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1706760 1) .v) (.rational
    8824644 1)) .v) (.rational 11463576 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2900700 1) .v) (.rational 13789200 1)) .v) (.rational 16496532 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3211380 1) .v) (.rational 14169000 1)) .v)
    (.rational 15704549 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2425680 1)
    .v) (.rational 10061484 1)) .v) (.rational 10431354 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1270200 1) .v) (.rational 5023000 1)) .v) (.rational 4923906 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 457800 1) .v) (.rational 1746000 1)) .v)
    (.rational 1631100 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 109860 1)
    .v) (.rational 406012 1)) .v) (.rational 361739 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16290 1) .v) (.rational 57936 1)) .v) (.rational 48742 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 19440 1) .v) (.rational
    101088 1)) .v) (.rational 128520 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 136080 1)
    .v) (.rational 659016 1)) .v) (.rational 785268 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 428220 1) .v) (.rational 1932600 1)) .v) (.rational 2157204 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 800280 1) .v) (.rational 3376116 1)) .v) (.rational
    3535380 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 987840 1) .v)
    (.rational 3917124 1)) .v) (.rational 3862605 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 846540 1) .v) (.rational 3178488 1)) .v) (.rational 2967783 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 514530 1) .v) (.rational 1843020 1)) .v)
    (.rational 1638900 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 222120 1)
    .v) (.rational 762912 1)) .v) (.rational 648378 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 66870 1) .v) (.rational 220188 1)) .v) (.rational 178529 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 13410 1) .v) (.rational 41988 1)) .v) (.rational
    32149 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1620 1) .v) (.rational
    4740 1)) .v) (.rational 3350 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2035

namespace FullLow2036
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  6*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_3 e g v+12*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_001_4 e g v+12*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_200_3 e g v+3*SmallGap.ReducedLayers.low1_200_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_101_4 e g v+6*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_002_5 e g v+3*SmallGap.ReducedLayers.low1_002_6 e g v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 60 1) .v) (.rational 8210 1)) .e) (.add (.mul (.add (.mul
    (.rational 780 1) .v) (.rational 51804 1)) .f) (.mul (.add (.mul (.rational 1020 1) .v)
    (.rational 55776 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 4980 1) .v)
    (.rational 197562 1)) .f) (.mul (.add (.mul (.rational 8220 1) .v) (.rational 283996 1)) .g))
    .f) (.mul (.add (.mul (.rational 2880 1) .v) (.rational 124742 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20700 1) .v) (.rational 509818 1)) .f)
    (.mul (.add (.mul (.rational 43140 1) .v) (.rational 926948 1)) .g)) .f) (.mul (.add (.mul
    (.rational 25620 1) .v) (.rational 559376 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational
    720 1) .v) (.rational 110548 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 62280 1) .v) (.rational 945792 1)) .f) (.mul (.add (.mul
    (.rational 164640 1) .v) (.rational 2134024 1)) .g)) .f) (.mul (.add (.mul (.rational 152460
    1) .v) (.rational 1736434 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 54060 1) .v)
    (.rational 584744 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 1800 1) .v) (.rational
    52002 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 136560 1) .v) (.rational 1288246 1)) .f) (.mul (.add (.mul (.rational 448920
    1) .v) (.rational 3578328 1)) .g)) .f) (.mul (.add (.mul (.rational 581220 1) .v) (.rational
    3879306 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 380460 1) .v) (.rational 2084048
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 136860 1) .v) (.rational 592110 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.rational 28920 1) .v) (.rational 94608 1)) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    207000 1) .v) (.rational 1262532 1)) .f) (.mul (.add (.mul (.rational 816480 1) .v) (.rational
    4261248 1)) .g)) .f) (.mul (.add (.mul (.rational 1347840 1) .v) (.rational 5962176 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.rational 1228080 1) .v) (.rational 4567320 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.rational 690660 1) .v) (.rational 2167642 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.rational 254100 1) .v) (.rational 694516 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 61440 1) .v) (.rational 154322 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 200520 1) .v)
    (.rational 835788 1)) .f) (.mul (.add (.mul (.rational 917640 1) .v) (.rational 3358272 1))
    .g)) .f) (.mul (.add (.mul (.rational 1817400 1) .v) (.rational 5815260 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 2064960 1) .v) (.rational 5787144 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 1505100 1) .v) (.rational 3743874 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 740580 1) .v) (.rational 1678796 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 247140 1) .v) (.rational 525484 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    53040 1) .v) (.rational 107188 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 110160 1)
    .v) (.rational 330480 1)) .f) (.mul (.add (.mul (.rational 570240 1) .v) (.rational 1545480
    1)) .g)) .f) (.mul (.add (.mul (.rational 1304280 1) .v) (.rational 3188148 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.rational 1749600 1) .v) (.rational 3871152 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 1538280 1) .v) (.rational 3114432 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 932400 1) .v) (.rational 1756136 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 393900 1) .v) (.rational 700882 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    112740 1) .v) (.rational 190664 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 20220 1)
    .v) (.rational 32244 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25920 1)
    .v) (.rational 58320 1)) .f) (.mul (.add (.mul (.rational 149040 1) .v) (.rational 311040 1))
    .g)) .f) (.mul (.add (.mul (.rational 384120 1) .v) (.rational 742092 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 589320 1) .v) (.rational 1055688 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 601560 1) .v) (.rational 1005134 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 430200 1) .v) (.rational 676368 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 219060 1) .v) (.rational 326642 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    78300 1) .v) (.rational 111048 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 18720 1) .v)
    (.rational 25146 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 2700 1) .v) (.rational
    3400 1)) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2036

namespace FullLow2037
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  10*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_4 e g v+6*SmallGap.ReducedLayers.low0_001_5 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_200_4 e g v+3*SmallGap.ReducedLayers.low1_101_5 e g
    v+3*SmallGap.ReducedLayers.low1_002_6 e g v)

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

end FullLow2037

end
end SPR.N6.Tail.CoreEndpoint
