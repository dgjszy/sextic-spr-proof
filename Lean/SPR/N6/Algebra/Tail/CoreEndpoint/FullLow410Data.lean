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

namespace FullLow4100
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    1*SmallGap.PolarCoefficientsLow0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_0 e g v*e^2+1*SmallGap.ReducedLayers.low0_010_0 e
    g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_0 e g v*e^2+1*SmallGap.ReducedLayers.low1_110_0 e g
    v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    20 1) .v) (.rational 540 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 20 1) .v)
    (.rational 428 1)) .v) (.rational 4607 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 50 1)
    .v) (.rational 676 1)) .v) (.rational 5702 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 394 1) .v) (.rational 4322 1)) .v) (.rational 24852 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1182 1) .v) (.rational 9408 1)) .v) (.rational 43122 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1282 1) .v) (.rational 6958 1)) .v) (.rational 26224
    1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3558 1) .v) (.rational 26998 1)) .v) (.rational 95276 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12453 1) .v) (.rational 75014 1)) .v) (.rational 216679 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 16891 1) .v) (.rational 79438 1)) .v) (.rational 188447 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 11095 1) .v) (.rational 40658 1)) .v)
    (.rational 78673 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 19479 1) .v) (.rational 115600 1)) .v) (.rational 275483 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 77916 1) .v) (.rational 390328 1)) .v) (.rational
    786486 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 126234 1) .v) (.rational 532336
    1)) .v) (.rational 906890 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    105996 1) .v) (.rational 378376 1)) .v) (.rational 544086 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 48679 1) .v) (.rational 149496 1)) .v) (.rational 181487 1))
    (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 72072 1) .v) (.rational 356568 1)) .v) (.rational 618768 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 324324 1) .v) (.rational 1414462 1)) .v) (.rational 2146136
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 609240 1) .v) (.rational 2345516 1)) .v)
    (.rational 3114612 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 618828 1)
    .v) (.rational 2115660 1)) .v) (.rational 2463836 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 366844 1) .v) (.rational 1126360 1)) .v) (.rational 1156046 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 126796 1) .v) (.rational 355518 1)) .v)
    (.rational 324712 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 190094 1) .v) (.rational 812826 1)) .v)
    (.rational 1091614 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 950470 1) .v) (.rational
    3697004 1)) .v) (.rational 4476393 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2027410 1) .v) (.rational 7189654 1)) .v) (.rational 7862114 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2406820 1) .v) (.rational 7818740 1)) .v) (.rational 7746148 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1736862 1) .v) (.rational 5207722
    1)) .v) (.rational 4698382 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    778690 1) .v) (.rational 2176764 1)) .v) (.rational 1801855 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 211146 1) .v) (.rational 556854 1)) .v) (.rational 426950 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 367126 1) .v) (.rational 1386028 1)) .v)
    (.rational 1511536 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2019193 1) .v) (.rational
    7098422 1)) .v) (.rational 7162619 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    4815431 1) .v) (.rational 15794406 1)) .v) (.rational 14770674 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6525492 1) .v) (.rational 20037172 1)) .v) (.rational
    17414444 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5526896 1) .v)
    (.rational 15964452 1)) .v) (.rational 12944940 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3026191 1) .v) (.rational 8272658 1)) .v) (.rational 6289531 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1066977 1) .v) (.rational 2779114 1)) .v)
    (.rational 1992068 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 232148 1)
    .v) (.rational 579876 1)) .v) (.rational 393858 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 524732 1) .v) (.rational 1772626 1)) .v) (.rational 1629006 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3148392 1) .v) (.rational 10081636 1)) .v) (.rational
    8752812 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8294130 1) .v) (.rational
    25210312 1)) .v) (.rational 20702076 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12610390 1) .v) (.rational 36462308 1)) .v) (.rational 28372748 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 12225646 1) .v) (.rational 33725626 1)) .v)
    (.rational 24929270 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7872556 1)
    .v) (.rational 20791188 1)) .v) (.rational 14640962 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3394582 1) .v) (.rational 8613884 1)) .v) (.rational 5795256 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 961126 1) .v) (.rational 2350764 1)) .v)
    (.rational 1514218 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 169118 1)
    .v) (.rational 399348 1)) .v) (.rational 246336 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 554120 1) .v) (.rational 1690144 1)) .v) (.rational 1346165 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3601780 1) .v) (.rational 10559618 1)) .v)
    (.rational 8076324 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10380782 1) .v)
    (.rational 29276182 1)) .v) (.rational 21514237 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 17474721 1) .v) (.rational 47464890 1)) .v) (.rational 33546863 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 19040047 1) .v) (.rational 49886934 1)) .v)
    (.rational 33953412 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 14049174 1)
    .v) (.rational 35570412 1)) .v) (.rational 23345062 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7127556 1) .v) (.rational 17467006 1)) .v) (.rational 11066893 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2467521 1) .v) (.rational 5859418
    1)) .v) (.rational 3585315 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    564527 1) .v) (.rational 1298694 1)) .v) (.rational 766524 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 79686 1) .v) (.rational 177106 1)) .v) (.rational 100410 1))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 426318 1)
    .v) (.rational 1182008 1)) .v) (.rational 833608 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2984226 1) .v) (.rational 8042168 1)) .v) (.rational 5515513 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9335217 1) .v) (.rational 24459534 1)) .v) (.rational
    16314733 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17216364 1) .v)
    (.rational 43879776 1)) .v) (.rational 28473837 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 20787045 1) .v) (.rational 51569484 1)) .v) (.rational 32568863 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 17242608 1) .v) (.rational 41664044 1)) .v)
    (.rational 25618776 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 10019809 1)
    .v) (.rational 23591968 1)) .v) (.rational 14124677 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4076644 1) .v) (.rational 9351828 1)) .v) (.rational 5448319 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1138079 1) .v) (.rational 2540486 1)) .v)
    (.rational 1437517 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 208228 1)
    .v) (.rational 450836 1)) .v) (.rational 246733 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 22824 1) .v) (.rational 47592 1)) .v) (.rational 24978 1)) (.pow .g 10))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 231888 1) .v)
    (.rational 587718 1)) .v) (.rational 373182 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1739160 1) .v) (.rational 4323612 1)) .v) (.rational 2695926 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5865604 1) .v) (.rational 14302596 1)) .v) (.rational 8755939 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 11749166 1) .v) (.rational 28100740 1))
    .v) (.rational 16888098 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    15544058 1) .v) (.rational 36467692 1)) .v) (.rational 21512927 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 14281465 1) .v) (.rational 32865518 1)) .v) (.rational
    19026915 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9318541 1) .v)
    (.rational 21029222 1)) .v) (.rational 11941857 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4333746 1) .v) (.rational 9583204 1)) .v) (.rational 5332342 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1417298 1) .v) (.rational 3065872 1)) .v)
    (.rational 1668107 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 314914 1)
    .v) (.rational 664256 1)) .v) (.rational 352070 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 44428 1) .v) (.rational 90840 1)) .v) (.rational 46583 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3473 1) .v) (.rational 6806 1)) .v) (.rational 3333
    1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 84273 1) .v) (.rational 196266 1)) .v) (.rational 113739 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 674184 1) .v) (.rational 1551840 1)) .v) (.rational 889842
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2437544 1) .v) (.rational 5544160 1))
    .v) (.rational 3144644 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5264588
    1) .v) (.rational 11829640 1)) .v) (.rational 6635111 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7561322 1) .v) (.rational 16781322 1)) .v) (.rational 9304650 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7603660 1) .v) (.rational 16661984 1))
    .v) (.rational 9128653 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5484646
    1) .v) (.rational 11860108 1)) .v) (.rational 6416280 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2855434 1) .v) (.rational 6087484 1)) .v) (.rational 3248431 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1062672 1) .v) (.rational 2229948 1)) .v)
    (.rational 1171632 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 274788 1)
    .v) (.rational 566064 1)) .v) (.rational 291969 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 46616 1) .v) (.rational 93856 1)) .v) (.rational 47290 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4618 1) .v) (.rational 9020 1)) .v) (.rational 4402
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 199 1) .v) (.rational 372 1))
    .v) (.rational 173 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 18288 1) .v) (.rational 39348 1)) .v)
    (.rational 21060 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 155448 1) .v) (.rational
    332676 1)) .v) (.rational 177228 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 599520
    1) .v) (.rational 1275930 1)) .v) (.rational 676410 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1387440 1) .v) (.rational 2935800 1)) .v) (.rational 1548360 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2146332 1) .v) (.rational 4514256 1)) .v)
    (.rational 2367924 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2338830 1)
    .v) (.rational 4887894 1)) .v) (.rational 2549064 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1841274 1) .v) (.rational 3821854 1)) .v) (.rational 1980580 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1055373 1) .v) (.rational 2174174 1)) .v)
    (.rational 1118801 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 437085 1)
    .v) (.rational 892750 1)) .v) (.rational 455665 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 127512 1) .v) (.rational 257806 1)) .v) (.rational 130294 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 24852 1) .v) (.rational 49616 1)) .v) (.rational
    24764 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 2901 1) .v) (.rational
    5698 1)) .v) (.rational 2797 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    153 1) .v) (.rational 294 1)) .v) (.rational 141 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1782 1) .v)
    (.rational 3564 1)) .v) (.rational 1782 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 16038
    1) .v) (.rational 32076 1)) .v) (.rational 16038 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 65691 1) .v) (.rational 131382 1)) .v) (.rational 65691 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 162000 1) .v) (.rational 324000 1)) .v) (.rational 162000
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 268062 1) .v) (.rational 536124
    1)) .v) (.rational 268062 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    313782 1) .v) (.rational 627564 1)) .v) (.rational 313782 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 266657 1) .v) (.rational 533314 1)) .v) (.rational 266657 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 165912 1) .v) (.rational 331824 1))
    .v) (.rational 165912 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 75075 1)
    .v) (.rational 150150 1)) .v) (.rational 75075 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 24112 1) .v) (.rational 48224 1)) .v) (.rational 24112 1)) (.pow .g 9))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5220 1) .v) (.rational 10440 1)) .v) (.rational 5220
    1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 684 1) .v) (.rational 1368 1))
    .v) (.rational 684 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 41 1) .v)
    (.rational 82 1)) .v) (.rational 41 1)) (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow4100

namespace FullLow4101
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    2*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(8*SmallGap.ReducedLayers.low0_100_0 e g v*e^1+4*SmallGap.ReducedLayers.low0_100_1 e
    g v*e^2+1*SmallGap.ReducedLayers.low0_010_1 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.low1_200_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^2+1*SmallGap.ReducedLayers.low1_110_1 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 110 1) .v)
    (.rational 3250 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 90 1) .v) (.rational
    2026 1)) .v) (.rational 25634 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 225 1) .v)
    (.rational 3082 1)) .v) (.rational 30777 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1589 1) .v) (.rational 18258 1)) .v) (.rational 127501 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4767 1) .v) (.rational 38114 1)) .v) (.rational 212919 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5172 1) .v) (.rational 26186 1)) .v)
    (.rational 121914 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 13102 1) .v) (.rational 104638 1)) .v) (.rational 450019 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 45857 1) .v) (.rational 280530 1)) .v) (.rational 981784 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 62199 1) .v) (.rational 282706 1)) .v) (.rational
    805168 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 40855 1) .v) (.rational
    135758 1)) .v) (.rational 309156 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 66224 1) .v) (.rational 418284 1)) .v)
    (.rational 1198258 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 264896 1) .v) (.rational
    1373662 1)) .v) (.rational 3286715 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    429072 1) .v) (.rational 1811688 1)) .v) (.rational 3601657 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 360080 1) .v) (.rational 1240676 1)) .v) (.rational 2028675 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 165188 1) .v) (.rational 473072 1))
    .v) (.rational 629617 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 227402 1) .v) (.rational 1213210 1)) .v)
    (.rational 2479802 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1023309 1) .v) (.rational
    4712744 1)) .v) (.rational 8303407 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1921808 1) .v) (.rational 7636558 1)) .v) (.rational 11568843 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1950886 1) .v) (.rational 6728068 1)) .v) (.rational
    8747495 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1155210 1) .v)
    (.rational 3506966 1)) .v) (.rational 3920849 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 398531 1) .v) (.rational 1090064 1)) .v) (.rational 1058844 1)) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 556607 1) .v) (.rational 2595882 1)) .v) (.rational 4023065 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2783035 1) .v) (.rational 11620066 1)) .v) (.rational
    16022821 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5935683 1) .v) (.rational
    22230926 1)) .v) (.rational 27275707 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7044522 1) .v) (.rational 23800930 1)) .v) (.rational 26033917 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5080987 1) .v) (.rational 15642078 1)) .v)
    (.rational 15331730 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2275881 1)
    .v) (.rational 6476270 1)) .v) (.rational 5742190 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 616105 1) .v) (.rational 1649098 1)) .v) (.rational 1340768 1)) (.pow
    .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 992218 1) .v) (.rational 4116492 1)) .v) (.rational
    5088170 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5457199 1) .v) (.rational 20821630
    1)) .v) (.rational 23550761 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 13016123 1)
    .v) (.rational 45776832 1)) .v) (.rational 47432621 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17643561 1) .v) (.rational 57452750 1)) .v) (.rational 54683953 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 14950752 1) .v) (.rational 45384858
    1)) .v) (.rational 39867231 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8191407 1) .v) (.rational 23389534 1)) .v) (.rational 19090530 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2890109 1) .v) (.rational 7842832 1)) .v) (.rational
    5996918 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 629069 1) .v)
    (.rational 1638974 1)) .v) (.rational 1183508 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 1294344 1) .v) (.rational 4818622 1)) .v) (.rational 4942156 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7766064 1) .v) (.rational 27133152 1)) .v) (.rational
    26060532 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 20468159 1) .v) (.rational
    67239196 1)) .v) (.rational 60544889 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31151875 1) .v) (.rational 96526230 1)) .v) (.rational 81662039 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 30254125 1) .v) (.rational 88816362 1)) .v)
    (.rational 70830385 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19531954 1)
    .v) (.rational 54624870 1)) .v) (.rational 41238879 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8451325 1) .v) (.rational 22652704 1)) .v) (.rational 16264486 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2403307 1) .v) (.rational 6208498
    1)) .v) (.rational 4256584 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    425003 1) .v) (.rational 1062074 1)) .v) (.rational 696550 1)) (.pow .g 8)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1224460 1) .v) (.rational 4107652 1)) .v) (.rational
    3600938 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7958990 1) .v) (.rational 25454322
    1)) .v) (.rational 21281892 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 22957898 1)
    .v) (.rational 70087154 1)) .v) (.rational 55924856 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 38719549 1) .v) (.rational 113059614 1)) .v) (.rational 86211389 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 42322163 1) .v) (.rational
    118517188 1)) .v) (.rational 86528397 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31376451 1) .v) (.rational 84533946 1)) .v) (.rational 59228043 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 16022660 1) .v) (.rational 41667560 1)) .v)
    (.rational 28080787 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5594935 1)
    .v) (.rational 14082734 1)) .v) (.rational 9143690 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1294045 1) .v) (.rational 3156454 1)) .v) (.rational 1974366 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 185084 1) .v) (.rational 436626 1)) .v)
    (.rational 262183 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 819098 1) .v) (.rational 2480512 1)) .v) (.rational 1899132 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5733686 1) .v) (.rational 16763572 1)) .v) (.rational 12416376
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 17958622 1) .v) (.rational 50723952 1))
    .v) (.rational 36352014 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    33213814 1) .v) (.rational 90724216 1)) .v) (.rational 62944108 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 40293447 1) .v) (.rational 106588114 1)) .v) (.rational
    71649447 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 33660123 1) .v)
    (.rational 86366514 1)) .v) (.rational 56303195 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 19753399 1) .v) (.rational 49234678 1)) .v) (.rational 31152043 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8142784 1) .v) (.rational 19733942 1)) .v)
    (.rational 12121115 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2312088 1)
    .v) (.rational 5446780 1)) .v) (.rational 3244237 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 432212 1) .v) (.rational 987144 1)) .v) (.rational 568167 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 48651 1) .v) (.rational 106944 1)) .v)
    (.rational 58994 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 368124 1) .v) (.rational 1006674 1)) .v) (.rational 683586 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2760930 1) .v) (.rational 7365828 1)) .v) (.rational
    4892916 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 9327846 1) .v) (.rational
    24281208 1)) .v) (.rational 15774536 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18756894 1) .v) (.rational 47655388 1)) .v) (.rational 30276944 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 24976988 1) .v) (.rational 61966392 1)) .v)
    (.rational 38503084 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 23170631 1)
    .v) (.rational 56160974 1)) .v) (.rational 34130359 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 15322723 1) .v) (.rational 36295840 1)) .v) (.rational 21571287 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 7254777 1) .v) (.rational 16792338
    1)) .v) (.rational 9753947 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2428496 1) .v) (.rational 5487002 1)) .v) (.rational 3110210 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 555952 1) .v) (.rational 1222848 1)) .v) (.rational 674266 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 81472 1) .v) (.rational 173454 1))
    .v) (.rational 92458 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 6684 1)
    .v) (.rational 13608 1)) .v) (.rational 6924 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 99954 1) .v) (.rational
    246636 1)) .v) (.rational 150174 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 799632 1)
    .v) (.rational 1942380 1)) .v) (.rational 1167120 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2897670 1) .v) (.rational 6927144 1)) .v) (.rational 4105530 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6290130 1) .v) (.rational 14795604 1)) .v) (.rational
    8645592 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9110990 1) .v)
    (.rational 21082882 1)) .v) (.rational 12141192 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9277506 1) .v) (.rational 21115224 1)) .v) (.rational 11978376 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 6809339 1) .v) (.rational 15237408 1)) .v)
    (.rational 8509705 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3628175 1)
    .v) (.rational 7976878 1)) .v) (.rational 4381465 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1391539 1) .v) (.rational 3002058 1)) .v) (.rational 1619231 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 373996 1) .v) (.rational 789928 1)) .v)
    (.rational 417318 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 66651 1) .v)
    (.rational 137292 1)) .v) (.rational 70741 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7033 1) .v) (.rational 14034 1)) .v) (.rational 7001 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 329 1) .v) (.rational 628 1)) .v) (.rational 299 1))
    (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 12420 1) .v) (.rational 27612 1)) .v) (.rational 15192 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 105570 1) .v) (.rational 232920 1)) .v) (.rational 127350
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 408324 1) .v) (.rational 893538 1)) .v)
    (.rational 485214 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 951030 1) .v)
    (.rational 2062980 1)) .v) (.rational 1111950 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1486998 1) .v) (.rational 3195588 1)) .v) (.rational 1708590 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1646112 1) .v) (.rational 3502458 1)) .v)
    (.rational 1856346 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1324480 1)
    .v) (.rational 2788266 1)) .v) (.rational 1463786 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 781429 1) .v) (.rational 1626286 1)) .v) (.rational 844857 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 335945 1) .v) (.rational 690470 1)) .v)
    (.rational 354525 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 102768 1) .v)
    (.rational 208318 1)) .v) (.rational 105550 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 21262 1) .v) (.rational 42436 1)) .v) (.rational 21174 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2675 1) .v) (.rational 5246 1)) .v) (.rational 2571
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 155 1) .v) (.rational 298 1))
    .v) (.rational 143 1)) (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow4101

namespace FullLow4102
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    2*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow2.c410 e f g v*e*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_0 e g v+8*SmallGap.ReducedLayers.low0_100_1 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_100_2 e g v*e^2+1*SmallGap.ReducedLayers.low0_010_2 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_0 e g v+6*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_200_2 e g v*e^2+1*SmallGap.ReducedLayers.low1_110_2 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 240 1) .v) (.rational
    8200 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 150 1) .v) (.rational 3900 1)) .v)
    (.rational 60258 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 375 1) .v) (.rational 5700
    1)) .v) (.rational 70161 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2461 1) .v) (.rational 31476 1)) .v) (.rational 277097 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7383 1) .v) (.rational 62416 1)) .v) (.rational 444237 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8013 1) .v) (.rational 38670 1)) .v) (.rational
    237381 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 18910 1) .v) (.rational 164674 1)) .v) (.rational 898117 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 66185 1) .v) (.rational 421124 1)) .v) (.rational 1869888 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 89775 1) .v) (.rational 394692 1)) .v) (.rational
    1427050 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 58975 1) .v) (.rational
    170148 1)) .v) (.rational 487034 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 89011 1) .v) (.rational 610562 1)) .v)
    (.rational 2186417 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 356044 1) .v) (.rational
    1931454 1)) .v) (.rational 5722237 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    576580 1) .v) (.rational 2426422 1)) .v) (.rational 5878097 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 483586 1) .v) (.rational 1566602 1)) .v) (.rational 3028637 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 221593 1) .v) (.rational 561736 1))
    .v) (.rational 836352 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 283392 1) .v) (.rational 1652944 1)) .v)
    (.rational 4122781 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1275264 1) .v) (.rational
    6244612 1)) .v) (.rational 13234610 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2394104 1) .v) (.rational 9796990 1)) .v) (.rational 17504483 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2428132 1) .v) (.rational 8336532 1)) .v) (.rational
    12441199 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1435392 1) .v)
    (.rational 4205316 1)) .v) (.rational 5213032 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 493766 1) .v) (.rational 1275688 1)) .v) (.rational 1324615 1)) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 637029 1) .v) (.rational 3282560 1)) .v) (.rational 6056295 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3185145 1) .v) (.rational 14395118 1)) .v) (.rational
    23286667 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6790874 1) .v) (.rational
    26942340 1)) .v) (.rational 38110484 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8052626 1) .v) (.rational 28224666 1)) .v) (.rational 34889965 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5799137 1) .v) (.rational 18197858 1)) .v)
    (.rational 19742882 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2590829 1)
    .v) (.rational 7430888 1)) .v) (.rational 7161224 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 698348 1) .v) (.rational 1879134 1)) .v) (.rational 1641441 1)) (.pow
    .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1025464 1) .v) (.rational 4748958 1)) .v) (.rational
    6845054 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5640052 1) .v) (.rational 23648992
    1)) .v) (.rational 30796186 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 13449616 1)
    .v) (.rational 51191126 1)) .v) (.rational 60232447 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 18222882 1) .v) (.rational 63332632 1)) .v) (.rational 67493794 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 15428860 1) .v) (.rational 49444564
    1)) .v) (.rational 47999709 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8441258 1) .v) (.rational 25281992 1)) .v) (.rational 22571147 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2970854 1) .v) (.rational 8448794 1)) .v) (.rational
    7023760 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 643788 1) .v)
    (.rational 1765960 1)) .v) (.rational 1384171 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 1175933 1) .v) (.rational 4928650 1)) .v) (.rational 5803049 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7055598 1) .v) (.rational 27409356 1)) .v) (.rational
    29906964 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 18597376 1) .v) (.rational
    67137794 1)) .v) (.rational 67951022 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 28310565 1) .v) (.rational 95422294 1)) .v) (.rational 89819933 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 27503729 1) .v) (.rational 87149950 1)) .v)
    (.rational 76641087 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 17763104 1)
    .v) (.rational 53380746 1)) .v) (.rational 44138173 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7687852 1) .v) (.rational 22127516 1)) .v) (.rational 17330205 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2185487 1) .v) (.rational 6081284
    1)) .v) (.rational 4541880 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    385774 1) .v) (.rational 1044538 1)) .v) (.rational 746547 1)) (.pow .g 8)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 938084 1) .v) (.rational 3568696 1)) .v) (.rational
    3550665 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 6097546 1) .v) (.rational 21882300
    1)) .v) (.rational 20590476 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 17596980 1)
    .v) (.rational 59695416 1)) .v) (.rational 53165107 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 29710384 1) .v) (.rational 95592944 1)) .v) (.rational 80728630 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 32533946 1) .v) (.rational 99737936
    1)) .v) (.rational 80103188 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    24184386 1) .v) (.rational 71035832 1)) .v) (.rational 54462218 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12394832 1) .v) (.rational 35089130 1)) .v) (.rational
    25785934 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4348120 1) .v)
    (.rational 11926460 1)) .v) (.rational 8428863 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1011168 1) .v) (.rational 2695520 1)) .v) (.rational 1834112 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 145443 1) .v) (.rational 376188 1)) .v)
    (.rational 245564 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 495126 1) .v) (.rational 1711960 1)) .v) (.rational 1475328 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3465882 1) .v) (.rational 11459896 1)) .v) (.rational 9489825 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10866194 1) .v) (.rational 34403940 1)) .v)
    (.rational 27383010 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 20140698 1)
    .v) (.rational 61189684 1)) .v) (.rational 46852953 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 24523679 1) .v) (.rational 71692140 1)) .v) (.rational 52888441 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 20598851 1) .v) (.rational 58132274
    1)) .v) (.rational 41395210 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    12181192 1) .v) (.rational 33293760 1)) .v) (.rational 22927238 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5073304 1) .v) (.rational 13463866 1)) .v) (.rational
    8977426 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1460172 1) .v)
    (.rational 3765470 1)) .v) (.rational 2430137 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 277786 1) .v) (.rational 694128 1)) .v) (.rational 432037 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 31967 1) .v) (.rational 76644 1)) .v) (.rational
    45554 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 155700 1) .v) (.rational 489564 1)) .v) (.rational 371880 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1167750 1) .v) (.rational 3549636 1)) .v) (.rational 2623500 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3951742 1) .v) (.rational 11618904 1)) .v)
    (.rational 8352669 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7975448 1)
    .v) (.rational 22703736 1)) .v) (.rational 15875616 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10685278 1) .v) (.rational 29489938 1)) .v) (.rational 20064141 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10003026 1) .v) (.rational 26805276
    1)) .v) (.rational 17753696 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6699892 1) .v) (.rational 17456122 1)) .v) (.rational 11259042 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3227586 1) .v) (.rational 8182024 1)) .v) (.rational
    5138558 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1105720 1) .v)
    (.rational 2725470 1)) .v) (.rational 1664559 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 261053 1) .v) (.rational 623620 1)) .v) (.rational 369123 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 39869 1) .v) (.rational 91554 1)) .v) (.rational
    52124 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 3461 1) .v) (.rational
    7500 1)) .v) (.rational 4039 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 22140 1) .v) (.rational 63288 1)) .v)
    (.rational 42894 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 177120 1) .v) (.rational
    493884 1)) .v) (.rational 328950 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 643500
    1) .v) (.rational 1749732 1)) .v) (.rational 1144260 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1404900 1) .v) (.rational 3724680 1)) .v) (.rational 2389839 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2054423 1) .v) (.rational 5311070 1)) .v)
    (.rational 3341297 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2121798 1)
    .v) (.rational 5349144 1)) .v) (.rational 3297675 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1588550 1) .v) (.rational 3905014 1)) .v) (.rational 2357282 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 869585 1) .v) (.rational 2083082 1)) .v)
    (.rational 1229878 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 345808 1)
    .v) (.rational 805992 1)) .v) (.rational 464540 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 97540 1) .v) (.rational 220528 1)) .v) (.rational 123681 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 18546 1) .v) (.rational 40458 1)) .v) (.rational
    21962 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 2137 1) .v) (.rational
    4458 1)) .v) (.rational 2321 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    113 1) .v) (.rational 222 1)) .v) (.rational 109 1)) (.pow .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow4102

namespace FullLow4103
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow3.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    2*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow3.c410 e f g v*e*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_1 e g v+8*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_100_3 e g v*e^2+1*SmallGap.ReducedLayers.low0_010_3 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_1 e g v+6*SmallGap.ReducedLayers.low1_200_2 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_200_3 e g v*e^2+1*SmallGap.ReducedLayers.low1_110_3 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 260 1) .v) (.rational 11100 1)) .e)
    (.add (.mul (.add (.mul (.add (.mul (.rational 110 1) .v) (.rational 3824 1)) .v) (.rational
    76715 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 275 1) .v) (.rational 5368 1)) .v)
    (.rational 86711 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1731
    1) .v) (.rational 27956 1)) .v) (.rational 328183 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5193 1) .v) (.rational 52232 1)) .v) (.rational 504977 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5638 1) .v) (.rational 28054 1)) .v) (.rational 250550 1)) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12726 1)
    .v) (.rational 133736 1)) .v) (.rational 978427 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 44541 1) .v) (.rational 322136 1)) .v) (.rational 1938638 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 60427 1) .v) (.rational 271624 1)) .v) (.rational 1361432 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 39715 1) .v) (.rational 95888 1))
    .v) (.rational 394782 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 56929 1) .v) (.rational 459156 1)) .v) (.rational 2169797
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 227716 1) .v) (.rational 1382826 1)) .v)
    (.rational 5390761 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 368772 1) .v)
    (.rational 1618902 1)) .v) (.rational 5121307 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 309310 1) .v) (.rational 948134 1)) .v) (.rational 2330991 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 141743 1) .v) (.rational 301702 1)) .v)
    (.rational 525152 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 170406 1) .v) (.rational 1156286 1)) .v) (.rational
    3692806 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 766827 1) .v) (.rational 4212266 1))
    .v) (.rational 11297015 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1439456 1) .v)
    (.rational 6317174 1)) .v) (.rational 14020129 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1459570 1) .v) (.rational 5102476 1)) .v) (.rational 9172087 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 862414 1) .v) (.rational 2442250 1)) .v)
    (.rational 3476473 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 296373 1)
    .v) (.rational 711554 1)) .v) (.rational 799880 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 353992 1)
    .v) (.rational 2113380 1)) .v) (.rational 4832158 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1769960 1) .v) (.rational 9029216 1)) .v) (.rational 17839986 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3773131 1) .v) (.rational 16416168 1)) .v) (.rational
    27838593 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4472764 1) .v)
    (.rational 16693970 1)) .v) (.rational 24176401 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3219086 1) .v) (.rational 10482198 1)) .v) (.rational 12987919 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1436416 1) .v) (.rational 4202450 1)) .v)
    (.rational 4524027 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 386221 1)
    .v) (.rational 1055242 1)) .v) (.rational 1017628 1)) (.pow .g 6)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 512220 1) .v) (.rational 2738450 1)) .v) (.rational 4755294 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2817210 1) .v) (.rational 13380432 1)) .v) (.rational 20705568
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6717576 1) .v) (.rational 28408784 1))
    .v) (.rational 39116422 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9100017
    1) .v) (.rational 34521286 1)) .v) (.rational 42367649 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7701860 1) .v) (.rational 26569116 1)) .v) (.rational 29271315 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4210234 1) .v) (.rational 13471900
    1)) .v) (.rational 13507841 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1478962 1) .v) (.rational 4494928 1)) .v) (.rational 4179473 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 319143 1) .v) (.rational 942678 1)) .v) (.rational 827590 1))
    (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 505110 1) .v) (.rational 2432696
    1)) .v) (.rational 3376824 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3030660 1) .v)
    (.rational 13335784 1)) .v) (.rational 16952916 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7988486 1) .v) (.rational 32225100 1)) .v) (.rational 37541318 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 12161380 1) .v) (.rational 45276832 1)) .v)
    (.rational 48494052 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11815089 1)
    .v) (.rational 41020188 1)) .v) (.rational 40655851 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7629336 1) .v) (.rational 25039918 1)) .v) (.rational 23188007 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3299262 1) .v) (.rational 10395318
    1)) .v) (.rational 9097367 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    935646 1) .v) (.rational 2871546 1)) .v) (.rational 2399025 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 164153 1) .v) (.rational 495654 1)) .v) (.rational 397212 1))
    (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 322308 1) .v)
    (.rational 1403308 1)) .v) (.rational 1621392 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2095002 1) .v) (.rational 8506928 1)) .v) (.rational 9202434 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6046344 1) .v) (.rational 22972952 1)) .v) (.rational 23292042 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10209870 1) .v) (.rational 36495728
    1)) .v) (.rational 34778878 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11182254 1) .v) (.rational 37892630 1)) .v) (.rational 34099034 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8313651 1) .v) (.rational 26957870 1)) .v) (.rational
    23050911 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4260320 1) .v)
    (.rational 13353130 1)) .v) (.rational 10923257 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1493128 1) .v) (.rational 4565028 1)) .v) (.rational 3592931 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 346204 1) .v) (.rational 1038462 1)) .v)
    (.rational 788152 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 49392 1) .v)
    (.rational 145214 1)) .v) (.rational 105817 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 119448 1) .v) (.rational 472716 1)) .v) (.rational
    468774 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 836136 1) .v) (.rational 3133872 1))
    .v) (.rational 2960172 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2621178 1) .v)
    (.rational 9331180 1)) .v) (.rational 8402142 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4857300 1) .v) (.rational 16493960 1)) .v) (.rational 14185176 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5912034 1) .v) (.rational 19256092 1)) .v)
    (.rational 15865374 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4962828 1)
    .v) (.rational 15604944 1)) .v) (.rational 12364638 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2932051 1) .v) (.rational 8959188 1)) .v) (.rational 6854257 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1219408 1) .v) (.rational 3640934 1)) .v)
    (.rational 2697923 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 350149 1)
    .v) (.rational 1024354 1)) .v) (.rational 735688 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 66331 1) .v) (.rational 189574 1)) .v) (.rational 131428 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7557 1) .v) (.rational 20816 1)) .v) (.rational
    13750 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 19440 1) .v) (.rational 70560 1)) .v) (.rational 61452 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 145800 1) .v) (.rational 507060 1)) .v) (.rational 426330 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 493092 1) .v) (.rational 1647476 1)) .v)
    (.rational 1337664 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 993798 1)
    .v) (.rational 3201244 1)) .v) (.rational 2512848 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1328436 1) .v) (.rational 4143414 1)) .v) (.rational 3150072 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1239480 1) .v) (.rational 3761060 1)) .v)
    (.rational 2775872 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 826428 1)
    .v) (.rational 2450940 1)) .v) (.rational 1760330 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 395793 1) .v) (.rational 1151366 1)) .v) (.rational 806191 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 134622 1) .v) (.rational 384540 1)) .v)
    (.rational 262556 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 31527 1) .v)
    (.rational 88052 1)) .v) (.rational 58439 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4779 1) .v) (.rational 12848 1)) .v) (.rational 8203 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 414 1) .v) (.rational 1026 1)) .v) (.rational 612 1)) (.pow
    .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow4103

namespace FullLow4104
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    2*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow4.c410 e f g v*e*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_2 e g v+8*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_100_4 e g v*e^2+1*SmallGap.ReducedLayers.low0_010_4 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_2 e g v+6*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_200_4 e g v*e^2+1*SmallGap.ReducedLayers.low1_110_4 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 140 1) .v) (.rational 8500 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 30 1) .v) (.rational 1912 1)) .v) (.rational 55832 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 75 1) .v) (.rational 2584 1)) .v) (.rational 61407
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 465 1) .v) (.rational
    12906 1)) .v) (.rational 224289 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1395 1) .v)
    (.rational 22632 1)) .v) (.rational 332134 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1515 1) .v) (.rational 10052 1)) .v) (.rational 153413 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3360 1) .v) (.rational 57052
    1)) .v) (.rational 619219 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 11760 1) .v)
    (.rational 128098 1)) .v) (.rational 1169571 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15960 1) .v) (.rational 93010 1)) .v) (.rational 753790 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10500 1) .v) (.rational 21200 1)) .v) (.rational 177767 1))
    (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 14655 1) .v) (.rational 182402 1)) .v) (.rational 1253391 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 58620 1) .v) (.rational 516962 1)) .v) (.rational 2955569 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 94980 1) .v) (.rational 547962 1)) .v) (.rational
    2580865 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 79770 1) .v) (.rational
    270786 1)) .v) (.rational 1003848 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 36645 1) .v) (.rational 64414 1)) .v) (.rational 155750 1)) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    42240 1) .v) (.rational 428056 1)) .v) (.rational 1914887 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 190080 1) .v) (.rational 1489460 1)) .v) (.rational 5572364 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 357060 1) .v) (.rational 2100116 1)) .v) (.rational
    6448239 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 362670 1) .v)
    (.rational 1566930 1)) .v) (.rational 3817017 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 214950 1) .v) (.rational 685094 1)) .v) (.rational 1259391 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 74220 1) .v) (.rational 184628 1)) .v) (.rational
    246991 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 82800 1) .v) (.rational 716024 1)) .v)
    (.rational 2195722 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 414000 1) .v) (.rational
    2958640 1)) .v) (.rational 7761673 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    883425 1) .v) (.rational 5174810 1)) .v) (.rational 11490509 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1049700 1) .v) (.rational 5049254 1)) .v) (.rational 9395525 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 758580 1) .v) (.rational 3053038
    1)) .v) (.rational 4754605 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    340590 1) .v) (.rational 1193742 1)) .v) (.rational 1587467 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 92355 1) .v) (.rational 298118 1)) .v) (.rational 353822 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 109260 1) .v) (.rational 815040 1)) .v)
    (.rational 1820802 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 600930 1) .v) (.rational
    3885000 1)) .v) (.rational 7648794 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1434990 1) .v) (.rational 8041460 1)) .v) (.rational 13905030 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1950480 1) .v) (.rational 9547264 1)) .v) (.rational
    14512368 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1660320 1) .v)
    (.rational 7224436 1)) .v) (.rational 9740779 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 915390 1) .v) (.rational 3639470 1)) .v) (.rational 4437623 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 325290 1) .v) (.rational 1221522 1)) .v)
    (.rational 1381736 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 71220 1) .v)
    (.rational 260224 1)) .v) (.rational 278749 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 92610 1) .v) (.rational 592764 1)) .v) (.rational 1020066 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 555660 1) .v) (.rational 3188916 1)) .v) (.rational 4974318 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1467720 1) .v) (.rational 7573492 1)) .v)
    (.rational 10707806 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2245050 1)
    .v) (.rational 10498760 1)) .v) (.rational 13503174 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2198655 1) .v) (.rational 9447746 1)) .v) (.rational 11149259 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1436580 1) .v) (.rational 5780954 1)) .v)
    (.rational 6342833 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 631260 1)
    .v) (.rational 2429786 1)) .v) (.rational 2515653 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 182700 1) .v) (.rational 685086 1)) .v) (.rational 676734 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 32835 1) .v) (.rational 121094 1)) .v)
    (.rational 114318 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 45360
    1) .v) (.rational 246672 1)) .v) (.rational 342216 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 294840 1) .v) (.rational 1474200 1)) .v) (.rational 1897020 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 853380 1) .v) (.rational 3934368 1)) .v) (.rational 4700058
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1450350 1) .v) (.rational
    6204240 1)) .v) (.rational 6903546 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1605690 1) .v) (.rational 6436260 1)) .v) (.rational 6711155 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1212840 1) .v) (.rational 4613268 1)) .v) (.rational
    4544568 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 635100 1) .v)
    (.rational 2323100 1)) .v) (.rational 2180319 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 228900 1) .v) (.rational 813990 1)) .v) (.rational 732057 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 54930 1) .v) (.rational 190814 1)) .v) (.rational
    164435 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 8145 1) .v) (.rational
    27492 1)) .v) (.rational 22494 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 9720 1) .v) (.rational 44496 1)) .v) (.rational 51588 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 68040 1) .v) (.rational 292032 1)) .v) (.rational
    319536 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 214110 1) .v) (.rational 863100
    1)) .v) (.rational 892134 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    400140 1) .v) (.rational 1520892 1)) .v) (.rational 1488582 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 493920 1) .v) (.rational 1780908 1)) .v) (.rational 1656680 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 423270 1) .v) (.rational 1458696
    1)) .v) (.rational 1295625 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    257265 1) .v) (.rational 853770 1)) .v) (.rational 727201 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 111060 1) .v) (.rational 356814 1)) .v) (.rational 292109 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 33435 1) .v) (.rational 104076 1))
    .v) (.rational 81720 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 6705 1)
    .v) (.rational 20106 1)) .v) (.rational 15001 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 810 1) .v) (.rational 2310 1)) .v) (.rational 1605 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow4104

namespace FullLow4105
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_3 e g v+8*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^1+1*SmallGap.ReducedLayers.low0_010_5 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_3 e g v+6*SmallGap.ReducedLayers.low1_200_4 e g
    v*e^1+1*SmallGap.ReducedLayers.low1_110_5 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 30 1) .v) (.rational 3490 1)) .e) (.add (.mul (.add (.mul
    (.rational 390 1) .v) (.rational 22023 1)) .f) (.mul (.add (.mul (.rational 510 1) .v)
    (.rational 23652 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 2490 1) .v)
    (.rational 84024 1)) .f) (.mul (.add (.mul (.rational 4110 1) .v) (.rational 120422 1)) .g))
    .f) (.mul (.add (.mul (.rational 1440 1) .v) (.rational 52474 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10350 1) .v) (.rational 217166 1)) .f)
    (.mul (.add (.mul (.rational 21570 1) .v) (.rational 393856 1)) .g)) .f) (.mul (.add (.mul
    (.rational 12810 1) .v) (.rational 236212 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational
    360 1) .v) (.rational 45506 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 31140 1) .v) (.rational 404364 1)) .f) (.mul (.add (.mul
    (.rational 82320 1) .v) (.rational 911828 1)) .g)) .f) (.mul (.add (.mul (.rational 76230 1)
    .v) (.rational 741008 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 27030 1) .v)
    (.rational 248518 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 900 1) .v) (.rational
    21474 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 68280 1) .v) (.rational 554222 1)) .f) (.mul (.add (.mul (.rational 224460 1)
    .v) (.rational 1542876 1)) .g)) .f) (.mul (.add (.mul (.rational 290610 1) .v) (.rational
    1679682 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 190230 1) .v) (.rational 909856 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.rational 68430 1) .v) (.rational 263160 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.rational 14460 1) .v) (.rational 43686 1)) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    103500 1) .v) (.rational 547584 1)) .f) (.mul (.add (.mul (.rational 408240 1) .v) (.rational
    1857096 1)) .g)) .f) (.mul (.add (.mul (.rational 673920 1) .v) (.rational 2618472 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.rational 614040 1) .v) (.rational 2029920 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.rational 345330 1) .v) (.rational 979784 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.rational 127050 1) .v) (.rational 320042 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 30720 1) .v) (.rational 72214 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 100260 1) .v)
    (.rational 365676 1)) .f) (.mul (.add (.mul (.rational 458820 1) .v) (.rational 1478904 1))
    .g)) .f) (.mul (.add (.mul (.rational 908700 1) .v) (.rational 2584560 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 1032480 1) .v) (.rational 2603448 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 752550 1) .v) (.rational 1708398 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 370290 1) .v) (.rational 776872 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 123570 1) .v) (.rational 245948 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    26520 1) .v) (.rational 50606 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 55080 1) .v)
    (.rational 145800 1)) .f) (.mul (.add (.mul (.rational 285120 1) .v) (.rational 686880 1))
    .g)) .f) (.mul (.add (.mul (.rational 652140 1) .v) (.rational 1430616 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 874800 1) .v) (.rational 1757304 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 769140 1) .v) (.rational 1431684 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 466200 1) .v) (.rational 817132 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 196950 1) .v) (.rational 329624 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    56370 1) .v) (.rational 90538 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 10110 1) .v)
    (.rational 15468 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12960 1) .v)
    (.rational 25920 1)) .f) (.mul (.add (.mul (.rational 74520 1) .v) (.rational 139320 1)) .g))
    .f) (.mul (.add (.mul (.rational 192060 1) .v) (.rational 335604 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.rational 294660 1) .v) (.rational 482736 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.rational 300780 1) .v) (.rational 465058 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational
    215100 1) .v) (.rational 316596 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational 109530 1)
    .v) (.rational 154594 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational 39150 1) .v)
    (.rational 53136 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 9360 1) .v) (.rational
    12177 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 1350 1) .v) (.rational 1670 1)) (.pow
    .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow4105

namespace FullLow4106
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  5*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_4 e g v+1*SmallGap.ReducedLayers.low0_010_6 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_4 e g v+1*SmallGap.ReducedLayers.low1_110_6 e g v)

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

end FullLow4106

end
end SPR.N6.Tail.CoreEndpoint
