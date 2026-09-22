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

namespace FullLow0050
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c050 e f g v*((e+f)*(e+f+g))^5

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_001_0 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_002_0 e g v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 4 1) .v) (.rational 114 1)) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 4 1) .v) (.rational 88 1)) .v) (.rational 1022 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10 1) .v) (.rational 140 1)) .v) (.rational 1319 1)) .g)))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 80 1) .v) (.rational 896 1))
    .v) (.rational 5764 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 240 1) .v) (.rational
    1950 1)) .v) (.rational 10302 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 260 1) .v)
    (.rational 1428 1)) .v) (.rational 6402 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 738 1) .v) (.rational 5636 1)) .v) (.rational 23000
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2583 1) .v) (.rational 15542 1)) .v)
    (.rational 52911 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3497 1) .v) (.rational
    16150 1)) .v) (.rational 45727 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2285 1) .v) (.rational 7946 1)) .v) (.rational 18355 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4184 1) .v) (.rational 24604
    1)) .v) (.rational 69190 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 16736 1) .v)
    (.rational 82056 1)) .v) (.rational 196016 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27046 1) .v) (.rational 109372 1)) .v) (.rational 219314 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 22562 1) .v) (.rational 74848 1)) .v) (.rational
    123374 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10234 1) .v) (.rational
    27960 1)) .v) (.rational 36706 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16360 1) .v) (.rational 79248 1))
    .v) (.rational 163098 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 73620 1) .v) (.rational
    309744 1)) .v) (.rational 552319 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 137852
    1) .v) (.rational 501348 1)) .v) (.rational 765075 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 138922 1) .v) (.rational 436240 1)) .v) (.rational 560491 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 81182 1) .v) (.rational 221140 1)) .v)
    (.rational 234649 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 27430 1) .v)
    (.rational 65664 1)) .v) (.rational 56550 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 46872 1) .v)
    (.rational 195208 1)) .v) (.rational 308672 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    234360 1) .v) (.rational 874114 1)) .v) (.rational 1222402 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 497966 1) .v) (.rational 1659544 1)) .v) (.rational 2031852 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 585704 1) .v) (.rational 1744412 1)) .v)
    (.rational 1848860 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 415786 1)
    .v) (.rational 1110972 1)) .v) (.rational 1008306 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 181706 1) .v) (.rational 439462 1)) .v) (.rational 339244 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 47488 1) .v) (.rational 105508 1)) .v)
    (.rational 69524 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 101926 1) .v) (.rational
    375804 1)) .v) (.rational 475904 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 560593 1)
    .v) (.rational 1895146 1)) .v) (.rational 2166087 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1330859 1) .v) (.rational 4120094 1)) .v) (.rational 4218753 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1784418 1) .v) (.rational 5061124 1)) .v) (.rational
    4609081 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1483612 1) .v)
    (.rational 3866284 1)) .v) (.rational 3113721 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 789509 1) .v) (.rational 1901894 1)) .v) (.rational 1352208 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 267235 1) .v) (.rational 600950 1)) .v)
    (.rational 379302 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 54992 1) .v)
    (.rational 117012 1)) .v) (.rational 66614 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 171776 1) .v) (.rational 572572 1)) .v) (.rational 602030 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1030656 1) .v) (.rational 3208524 1)) .v) (.rational 3103892 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2701224 1) .v) (.rational 7847400 1)) .v)
    (.rational 6948744 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4058440 1)
    .v) (.rational 11006642 1)) .v) (.rational 8881330 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3854802 1) .v) (.rational 9778956 1)) .v) (.rational 7170546 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2405784 1) .v) (.rational 5732208 1)) .v)
    (.rational 3821016 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 992118 1)
    .v) (.rational 2234932 1)) .v) (.rational 1361486 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 264342 1) .v) (.rational 568170 1)) .v) (.rational 320012 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 42920 1) .v) (.rational 89016 1)) .v)
    (.rational 47190 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    226908 1) .v) (.rational 694408 1)) .v) (.rational 625482 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1474902 1) .v) (.rational 4277812 1)) .v) (.rational 3607241 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4226862 1) .v) (.rational 11611644 1)) .v) (.rational
    9134983 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7023819 1) .v)
    (.rational 18278526 1)) .v) (.rational 13379733 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7485063 1) .v) (.rational 18476190 1)) .v) (.rational 12567597 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5340024 1) .v) (.rational 12536784 1)) .v)
    (.rational 7932096 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2582544 1)
    .v) (.rational 5792052 1)) .v) (.rational 3423182 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 837681 1) .v) (.rational 1805982 1)) .v) (.rational 1005224 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 175817 1) .v) (.rational 367258 1)) .v)
    (.rational 194864 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 22184 1) .v)
    (.rational 45300 1)) .v) (.rational 23251 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 235840 1) .v) (.rational 670384 1)) .v) (.rational 531284
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1650880 1) .v) (.rational 4500386 1)) .v)
    (.rational 3389762 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5133104 1) .v)
    (.rational 13412036 1)) .v) (.rational 9579482 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9337184 1) .v) (.rational 23383270 1)) .v) (.rational 15811132 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11012064 1) .v) (.rational 26451840 1)) .v)
    (.rational 16922208 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8815440 1)
    .v) (.rational 20345844 1)) .v) (.rational 12326136 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4871154 1) .v) (.rational 10833452 1)) .v) (.rational 6234270 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1850760 1) .v) (.rational 3983054 1)) .v)
    (.rational 2189332 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 471942 1)
    .v) (.rational 988260 1)) .v) (.rational 523066 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 76742 1) .v) (.rational 157380 1)) .v) (.rational 81014 1)) (.pow .g 9))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7220 1) .v) (.rational 14600 1)) .v) (.rational 7386
    1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 192302 1) .v) (.rational 512252 1)) .v) (.rational 365248 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1442265 1) .v) (.rational 3720138 1)) .v) (.rational 2553357 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4833743 1) .v) (.rational 12066450 1)) .v)
    (.rational 7960089 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9544977 1)
    .v) (.rational 23056002 1)) .v) (.rational 14603021 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 12324977 1) .v) (.rational 28817854 1)) .v) (.rational 17517897 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10916202 1) .v) (.rational 24731748
    1)) .v) (.rational 14438364 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6762846 1) .v) (.rational 14873600 1)) .v) (.rational 8355718 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2931465 1) .v) (.rational 6275922 1)) .v) (.rational
    3404914 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 873577 1) .v)
    (.rational 1827378 1)) .v) (.rational 962502 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 171996 1) .v) (.rational 353172 1)) .v) (.rational 181801 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 20752 1) .v) (.rational 42044 1)) .v) (.rational
    21307 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1323 1) .v) (.rational
    2658 1)) .v) (.rational 1335 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 121752 1) .v) (.rational 306020 1)) .v)
    (.rational 199946 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 974016 1) .v) (.rational
    2389472 1)) .v) (.rational 1518648 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    3499238 1) .v) (.rational 8374444 1)) .v) (.rational 5171890 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 7449386 1) .v) (.rational 17387636 1)) .v) (.rational 10426690
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10440454 1) .v) (.rational
    23769168 1)) .v) (.rational 13835726 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10118434 1) .v) (.rational 22480784 1)) .v) (.rational 12706488 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6927978 1) .v) (.rational 15037596 1)) .v)
    (.rational 8262730 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3361038 1)
    .v) (.rational 7139634 1)) .v) (.rational 3822040 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1139728 1) .v) (.rational 2375240 1)) .v) (.rational 1242862 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 261262 1) .v) (.rational 535884 1)) .v)
    (.rational 275264 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 37964 1) .v)
    (.rational 76928 1)) .v) (.rational 38984 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3080 1) .v) (.rational 6190 1)) .v) (.rational 3110 1)) (.pow .g 11))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 102 1) .v) (.rational 204 1)) .v) (.rational 102 1)) (.pow
    .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 58688 1) .v) (.rational 139936 1)) .v) (.rational 85030 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 498848 1) .v) (.rational 1168632 1)) .v) (.rational 696581 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1911952 1) .v) (.rational 4398700 1)) .v)
    (.rational 2570117 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4362680 1)
    .v) (.rational 9853996 1)) .v) (.rational 5640725 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6589156 1) .v) (.rational 14610528 1)) .v) (.rational 8191363 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6925646 1) .v) (.rational 15078632 1))
    .v) (.rational 8280478 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5181938
    1) .v) (.rational 11084252 1)) .v) (.rational 5965596 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2772957 1) .v) (.rational 5833270 1)) .v) (.rational 3080582 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1049445 1) .v) (.rational 2174466 1)) .v)
    (.rational 1128950 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 272656 1)
    .v) (.rational 557628 1)) .v) (.rational 285373 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 45868 1) .v) (.rational 92836 1)) .v) (.rational 46983 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4445 1) .v) (.rational 8930 1)) .v) (.rational 4485
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 185 1) .v) (.rational 370 1))
    .v) (.rational 185 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 20824 1) .v) (.rational 47304 1)) .v)
    (.rational 27048 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 187416 1) .v) (.rational
    420606 1)) .v) (.rational 237502 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 763166
    1) .v) (.rational 1691472 1)) .v) (.rational 942744 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1857232 1) .v) (.rational 4064128 1)) .v) (.rational 2234884 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3004754 1) .v) (.rational 6490780 1)) .v)
    (.rational 3520666 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3400054 1)
    .v) (.rational 7250454 1)) .v) (.rational 3878844 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2754910 1) .v) (.rational 5800704 1)) .v) (.rational 3061366 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1607566 1) .v) (.rational 3343982 1)) .v)
    (.rational 1741964 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 669062 1)
    .v) (.rational 1376148 1)) .v) (.rational 708294 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 193194 1) .v) (.rational 393420 1)) .v) (.rational 200366 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 36620 1) .v) (.rational 73960 1)) .v) (.rational
    37346 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 4074 1) .v) (.rational
    8178 1)) .v) (.rational 4104 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    200 1) .v) (.rational 400 1)) .v) (.rational 200 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5130
    1) .v) (.rational 11140 1)) .v) (.rational 6050 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 48735 1) .v) (.rational 105046 1)) .v) (.rational 56635 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 210077 1) .v) (.rational 449338 1)) .v) (.rational 240423 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 542912 1) .v) (.rational 1152080
    1)) .v) (.rational 611591 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    936082 1) .v) (.rational 1970400 1)) .v) (.rational 1037559 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1133345 1) .v) (.rational 2366230 1)) .v) (.rational 1235776 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 987007 1) .v) (.rational 2044042
    1)) .v) (.rational 1058764 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    622271 1) .v) (.rational 1278546 1)) .v) (.rational 656952 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 281527 1) .v) (.rational 574130 1)) .v) (.rational 292766 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 89012 1) .v) (.rational 180300 1))
    .v) (.rational 91309 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 18640 1)
    .v) (.rational 37540 1)) .v) (.rational 18901 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2317 1) .v) (.rational 4646 1)) .v) (.rational 2329 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 129 1) .v) (.rational 258 1)) .v) (.rational 129 1))
    (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 784 1) .v) (.rational 1632 1)) .v) (.rational 848 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7840 1) .v) (.rational 16264 1)) .v) (.rational 8424
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 35660 1) .v) (.rational 73712 1)) .v)
    (.rational 38052 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 97500 1) .v)
    (.rational 200794 1)) .v) (.rational 103294 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 178366 1) .v) (.rational 365932 1)) .v) (.rational 187566 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 229856 1) .v) (.rational 469736 1)) .v)
    (.rational 239880 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 213808 1) .v)
    (.rational 435232 1)) .v) (.rational 221424 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 144536 1) .v) (.rational 293084 1)) .v) (.rational 148548 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 70420 1) .v) (.rational 142264 1)) .v) (.rational
    71844 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 24096 1) .v) (.rational
    48512 1)) .v) (.rational 24416 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5492 1) .v) (.rational 11024 1)) .v) (.rational 5532 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 748 1) .v) (.rational 1498 1)) .v) (.rational 750 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 46 1) .v) (.rational 92 1)) .v) (.rational 46 1))
    (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 56 1) .v) (.rational 112 1)) .v) (.rational 56 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 588 1) .v) (.rational 1176 1)) .v) (.rational 588 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2814 1) .v) (.rational 5628 1)) .v)
    (.rational 2814 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8113 1) .v)
    (.rational 16226 1)) .v) (.rational 8113 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15687 1) .v) (.rational 31374 1)) .v) (.rational 15687 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 21420 1) .v) (.rational 42840 1)) .v) (.rational 21420 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 21168 1) .v) (.rational 42336 1))
    .v) (.rational 21168 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 15246 1)
    .v) (.rational 30492 1)) .v) (.rational 15246 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7938 1) .v) (.rational 15876 1)) .v) (.rational 7938 1)) (.pow .g 8))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2912 1) .v) (.rational 5824 1)) .v) (.rational 2912
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 714 1) .v) (.rational 1428 1))
    .v) (.rational 714 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 105 1) .v)
    (.rational 210 1)) .v) (.rational 105 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7 1) .v) (.rational 14 1)) .v) (.rational 7 1)) (.pow .g 12))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0050

namespace FullLow0051
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow1.c050 e f g v*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow0.c140 e f g v*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_001_0 e g v*e^3+1*SmallGap.ReducedLayers.low0_001_1 e
    g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_002_0 e g v*e^2+1*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 34 1) .v) (.rational 1025 1)) .e) (.add (.mul (.add (.mul (.add
    (.mul (.rational 30 1) .v) (.rational 680 1)) .v) (.rational 8707 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 75 1) .v) (.rational 1058 1)) .v) (.rational 11028 1)) .g))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 562 1) .v) (.rational 6452 1)) .v)
    (.rational 46550 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1686 1) .v) (.rational 13708
    1)) .v) (.rational 81437 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1827 1) .v)
    (.rational 9630 1)) .v) (.rational 49093 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 4910 1) .v) (.rational 38422 1)) .v) (.rational
    176094 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 17185 1) .v) (.rational 103776 1)) .v)
    (.rational 396214 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 23271 1) .v)
    (.rational 104778 1)) .v) (.rational 332386 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 15215 1) .v) (.rational 49620 1)) .v) (.rational 127942 1)) (.pow .g 3))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 26517
    1) .v) (.rational 160232 1)) .v) (.rational 502146 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 106068 1) .v) (.rational 525608 1)) .v) (.rational 1392477 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 171447 1) .v) (.rational 686680 1)) .v) (.rational 1516411 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 143103 1) .v) (.rational 459326 1))
    .v) (.rational 823739 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 64980 1)
    .v) (.rational 167696 1)) .v) (.rational 234205 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 98960 1) .v) (.rational
    494766 1)) .v) (.rational 1121326 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 445320 1)
    .v) (.rational 1909324 1)) .v) (.rational 3724475 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 834094 1) .v) (.rational 3047480 1)) .v) (.rational 5041651 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 841169 1) .v) (.rational 2614046 1)) .v) (.rational
    3593781 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 492195 1) .v)
    (.rational 1308310 1)) .v) (.rational 1457825 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 166645 1) .v) (.rational 385286 1)) .v) (.rational 339956 1)) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 270251 1) .v) (.rational 1167126 1)) .v) (.rational 2006755 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1351255 1) .v) (.rational 5175926 1)) .v) (.rational
    7816605 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2872296 1) .v) (.rational
    9731006 1)) .v) (.rational 12754108 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3381654 1) .v) (.rational 10135852 1)) .v) (.rational 11372822 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2404764 1) .v) (.rational 6409062 1)) .v)
    (.rational 6074329 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1053774 1)
    .v) (.rational 2526200 1)) .v) (.rational 2005951 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 276475 1) .v) (.rational 607638 1)) .v) (.rational 406502 1)) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 557778 1) .v) (.rational 2140920 1)) .v) (.rational 2914427
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3067779 1) .v) (.rational 10717554 1)) .v)
    (.rational 13086824 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7286873 1) .v)
    (.rational 23140406 1)) .v) (.rational 25128403 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9782586 1) .v) (.rational 28261476 1)) .v) (.rational 27063014 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8151574 1) .v) (.rational 21507164 1)) .v)
    (.rational 18043315 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4352894 1)
    .v) (.rational 10571820 1)) .v) (.rational 7758534 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1480770 1) .v) (.rational 3351934 1)) .v) (.rational 2168451 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 306829 1) .v) (.rational 658178 1)) .v)
    (.rational 382920 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 885730 1) .v)
    (.rational 3081138 1)) .v) (.rational 3449181 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    5314380 1) .v) (.rational 17169130 1)) .v) (.rational 17593718 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13937592 1) .v) (.rational 41787964 1)) .v) (.rational 38972435 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 20972810 1) .v) (.rational 58399314
    1)) .v) (.rational 49324420 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    19974154 1) .v) (.rational 51797500 1)) .v) (.rational 39505544 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12517936 1) .v) (.rational 30393590 1)) .v) (.rational
    20952991 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5193535 1) .v)
    (.rational 11904316 1)) .v) (.rational 7468790 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1395451 1) .v) (.rational 3052984 1)) .v) (.rational 1767679 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 229165 1) .v) (.rational 484696 1)) .v)
    (.rational 264207 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1090790 1) .v) (.rational 3486340 1)) .v) (.rational 3316943 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7090135 1) .v) (.rational 21383802 1)) .v) (.rational 18970622 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 20335088 1) .v) (.rational 57842102 1)) .v)
    (.rational 47668684 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 33851499 1)
    .v) (.rational 90854568 1)) .v) (.rational 69356077 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 36186440 1) .v) (.rational 91807434 1)) .v) (.rational 64841527 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 25939965 1) .v) (.rational 62429942
    1)) .v) (.rational 40856551 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    12632218 1) .v) (.rational 28997326 1)) .v) (.rational 17675785 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4137116 1) .v) (.rational 9124534 1)) .v) (.rational
    5229678 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 879781 1) .v)
    (.rational 1880610 1)) .v) (.rational 1026744 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 112980 1) .v) (.rational 236160 1)) .v) (.rational 124600 1)) (.pow .g 9))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1041568 1) .v) (.rational
    3088784 1)) .v) (.rational 2567980 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7290976 1)
    .v) (.rational 20664456 1)) .v) (.rational 16278787 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22689491 1) .v) (.rational 61430154 1)) .v) (.rational 45740693 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 41354258 1) .v) (.rational 106972656 1)) .v)
    (.rational 75156853 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 48939172 1)
    .v) (.rational 121081064 1)) .v) (.rational 80228238 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 39383423 1) .v) (.rational 93403194 1)) .v) (.rational 58441434 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 21928033 1) .v) (.rational 50026368
    1)) .v) (.rational 29663409 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8419984 1) .v) (.rational 18567396 1)) .v) (.rational 10498047 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2178219 1) .v) (.rational 4670112 1)) .v) (.rational
    2539066 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 361122 1) .v)
    (.rational 757492 1)) .v) (.rational 399800 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 34870 1) .v) (.rational 71948 1)) .v) (.rational 37181 1)) (.pow .g 10))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 764730 1) .v)
    (.rational 2119238 1)) .v) (.rational 1575176 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    5735475 1) .v) (.rational 15348612 1)) .v) (.rational 10955926 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19240137 1) .v) (.rational 49694702 1)) .v) (.rational 34009340 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 38072853 1) .v) (.rational 94905444
    1)) .v) (.rational 62200636 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    49340471 1) .v) (.rational 118764194 1)) .v) (.rational 74518695 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 43944890 1) .v) (.rational 102271766 1)) .v) (.rational
    61484320 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 27444720 1) .v)
    (.rational 61888204 1)) .v) (.rational 35728959 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12030177 1) .v) (.rational 26366616 1)) .v) (.rational 14673660 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3639929 1) .v) (.rational 7783670 1)) .v)
    (.rational 4198003 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 731437 1)
    .v) (.rational 1532624 1)) .v) (.rational 806024 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 90697 1) .v) (.rational 186952 1)) .v) (.rational 96439 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6000 1) .v) (.rational 12194 1)) .v) (.rational
    6194 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 423921 1) .v) (.rational 1103668 1)) .v) (.rational 746952 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3391368 1) .v) (.rational 8598916 1)) .v) (.rational
    5650637 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 12195391 1) .v) (.rational
    30098896 1)) .v) (.rational 19182085 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26018797 1) .v) (.rational 62492154 1)) .v) (.rational 38592429 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 36602397 1) .v) (.rational 85565266 1)) .v)
    (.rational 51187726 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 35677265 1)
    .v) (.rational 81228552 1)) .v) (.rational 47090311 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 24630401 1) .v) (.rational 54682676 1)) .v) (.rational 30758886 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 12087051 1) .v) (.rational 26215940
    1)) .v) (.rational 14340317 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4163009 1) .v) (.rational 8842644 1)) .v) (.rational 4718889 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 974375 1) .v) (.rational 2032676 1)) .v) (.rational 1062376 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 145566 1) .v) (.rational 299084 1))
    .v) (.rational 153699 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 12256 1)
    .v) (.rational 24850 1)) .v) (.rational 12594 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 427 1) .v) (.rational 854 1)) .v) (.rational 427 1)) (.pow .g 12)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    171740 1) .v) (.rational 421766 1)) .v) (.rational 263712 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1459790 1) .v) (.rational 3516184 1)) .v) (.rational 2153579 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5600326 1) .v) (.rational 13223796 1)) .v) (.rational
    7926999 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 12806645 1) .v)
    (.rational 29634454 1)) .v) (.rational 17375253 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 19414953 1) .v) (.rational 44022856 1)) .v) (.rational 25237136 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 20523672 1) .v) (.rational 45611460 1)) .v)
    (.rational 25567391 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 15483559 1)
    .v) (.rational 33746474 1)) .v) (.rational 18507195 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8380944 1) .v) (.rational 17932382 1)) .v) (.rational 9633052 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3221355 1) .v) (.rational 6776574 1)) .v)
    (.rational 3572218 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 854398 1)
    .v) (.rational 1770336 1)) .v) (.rational 917916 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 147707 1) .v) (.rational 302054 1)) .v) (.rational 154444 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 14839 1) .v) (.rational 30000 1)) .v) (.rational
    15161 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 648 1) .v) (.rational
    1296 1)) .v) (.rational 648 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 48003 1) .v) (.rational 111558 1))
    .v) (.rational 65179 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 432027 1) .v) (.rational
    990614 1)) .v) (.rational 570939 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1760866
    1) .v) (.rational 3981882 1)) .v) (.rational 2262498 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4294316 1) .v) (.rational 9573572 1)) .v) (.rational 5360038 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6972979 1) .v) (.rational 15322368 1))
    .v) (.rational 8450072 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7934465
    1) .v) (.rational 17184758 1)) .v) (.rational 9333857 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6480776 1) .v) (.rational 13837746 1)) .v) (.rational 7403487 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3824033 1) .v) (.rational 8053626 1)) .v)
    (.rational 4246615 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1615651 1)
    .v) (.rational 3358972 1)) .v) (.rational 1747198 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 475924 1) .v) (.rational 977868 1)) .v) (.rational 502432 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 92602 1) .v) (.rational 188300 1)) .v)
    (.rational 95723 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 10659 1) .v)
    (.rational 21482 1)) .v) (.rational 10823 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 547 1) .v) (.rational 1094 1)) .v) (.rational 547 1)) (.pow .g 12))) (.pow .f 2)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    8278 1) .v) (.rational 18252 1)) .v) (.rational 10054 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 78641 1) .v) (.rational 171946 1)) .v) (.rational 93953 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 339287 1) .v) (.rational 735394 1)) .v) (.rational 398431 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 878594 1) .v) (.rational 1887220
    1)) .v) (.rational 1013472 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1520088 1) .v) (.rational 3235094 1)) .v) (.rational 1721488 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1850162 1) .v) (.rational 3900846 1)) .v) (.rational 2056466 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1623566 1) .v) (.rational 3391234
    1)) .v) (.rational 1771126 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1034436 1) .v) (.rational 2141002 1)) .v) (.rational 1107920 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 474694 1) .v) (.rational 973950 1)) .v) (.rational 499582 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 152933 1) .v) (.rational 311264 1))
    .v) (.rational 158373 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 32819 1)
    .v) (.rational 66324 1)) .v) (.rational 33507 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4210 1) .v) (.rational 8458 1)) .v) (.rational 4248 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 244 1) .v) (.rational 488 1)) .v) (.rational 244 1))
    (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 664 1) .v) (.rational 1392 1)) .v) (.rational 728 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6640 1) .v) (.rational 13864 1)) .v) (.rational 7224
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 30226 1) .v) (.rational 62844 1)) .v)
    (.rational 32618 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 82794 1) .v)
    (.rational 171382 1)) .v) (.rational 88588 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 151941 1) .v) (.rational 313082 1)) .v) (.rational 161141 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 196752 1) .v) (.rational 403528 1)) .v) (.rational
    206776 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 184296 1) .v) (.rational
    376208 1)) .v) (.rational 191912 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 125796 1) .v) (.rational 255604 1)) .v) (.rational 129808 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 62094 1) .v) (.rational 125612 1)) .v) (.rational
    63518 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 21616 1) .v) (.rational
    43552 1)) .v) (.rational 21936 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5038 1) .v) (.rational 10116 1)) .v) (.rational 5078 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 706 1) .v) (.rational 1414 1)) .v) (.rational 708 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 45 1) .v) (.rational 90 1)) .v) (.rational 45 1))
    (.pow .g 12))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0051

namespace FullLow0052
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow2.c050 e f g v*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow1.c140 e f g v*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow0.c230 e f g v*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_001_0 e g v*e^2+4*SmallGap.ReducedLayers.low0_001_1 e
    g v*e^3+1*SmallGap.ReducedLayers.low0_001_2 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_002_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^2+1*SmallGap.ReducedLayers.low1_002_2 e g v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 126 1) .v) (.rational 4103 1)) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 96 1) .v) (.rational 2310 1)) .v) (.rational 33102 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 240 1) .v) (.rational 3510 1)) .v) (.rational 41097 1)) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1703 1) .v) (.rational 20434 1)) .v) (.rational
    167788 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5109 1) .v) (.rational 42230 1)) .v)
    (.rational 286816 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5538 1) .v) (.rational
    28186 1)) .v) (.rational 167129 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 14162 1) .v) (.rational 114940 1)) .v) (.rational 600675
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 49567 1) .v) (.rational 302838 1)) .v)
    (.rational 1318860 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 67137 1) .v)
    (.rational 294842 1)) .v) (.rational 1069332 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 43925 1) .v) (.rational 132520 1)) .v) (.rational 391114 1)) (.pow .g 3))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 72935
    1) .v) (.rational 456550 1)) .v) (.rational 1618167 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 291740 1) .v) (.rational 1467944 1)) .v) (.rational 4381133 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 471659 1) .v) (.rational 1869780 1)) .v) (.rational 4623433
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 393887 1) .v) (.rational
    1213110 1)) .v) (.rational 2406021 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 179030 1) .v) (.rational 428616 1)) .v) (.rational 644046 1)) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    259296 1) .v) (.rational 1346892 1)) .v) (.rational 3406923 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1166832 1) .v) (.rational 5118770 1)) .v) (.rational 11072012 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2186020 1) .v) (.rational 8028704 1)) .v) (.rational
    14590950 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2205854 1) .v)
    (.rational 6759322 1)) .v) (.rational 10060036 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1292082 1) .v) (.rational 3323798 1)) .v) (.rational 3918379 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 438178 1) .v) (.rational 966542 1)) .v)
    (.rational 873064 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 671993 1) .v) (.rational 3029230 1)) .v)
    (.rational 5730522 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3359965 1) .v) (.rational
    13281134 1)) .v) (.rational 21909305 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    7144506 1) .v) (.rational 24672156 1)) .v) (.rational 34992304 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8418234 1) .v) (.rational 25401786 1)) .v) (.rational
    30458554 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5994902 1) .v)
    (.rational 15905946 1)) .v) (.rational 15853462 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2632740 1) .v) (.rational 6233312 1)) .v) (.rational 5110511 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 692857 1) .v) (.rational 1499914 1)) .v)
    (.rational 1019602 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1307238 1) .v)
    (.rational 5260972 1)) .v) (.rational 7778475 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    7189809 1) .v) (.rational 26113016 1)) .v) (.rational 34404117 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17085925 1) .v) (.rational 55918236 1)) .v) (.rational 65000053 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22963095 1) .v) (.rational 67800802
    1)) .v) (.rational 68850154 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    19171560 1) .v) (.rational 51328882 1)) .v) (.rational 45190445 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10268013 1) .v) (.rational 25182422 1)) .v) (.rational
    19198149 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3507807 1) .v)
    (.rational 8005254 1)) .v) (.rational 5339601 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 730995 1) .v) (.rational 1584170 1)) .v) (.rational 947990 1)) (.pow .g 7))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1936600 1) .v) (.rational 7085898 1)) .v) (.rational
    8523910 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 11619600 1) .v) (.rational 39231462
    1)) .v) (.rational 42965902 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 30492648 1)
    .v) (.rational 94938934 1)) .v) (.rational 94051861 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 45950240 1) .v) (.rational 132087838 1)) .v) (.rational 117716994 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 43871507 1) .v) (.rational
    116870688 1)) .v) (.rational 93423735 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27600188 1) .v) (.rational 68608166 1)) .v) (.rational 49280875 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11514121 1) .v) (.rational 26984278 1)) .v)
    (.rational 17570346 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3117113 1)
    .v) (.rational 6978940 1)) .v) (.rational 4188467 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 517028 1) .v) (.rational 1122018 1)) .v) (.rational 634503 1)) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2193136 1) .v) (.rational 7382054
    1)) .v) (.rational 7482039 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 14255384 1) .v)
    (.rational 45054000 1)) .v) (.rational 42399373 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 40916912 1) .v) (.rational 121374502 1)) .v) (.rational 105621755 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 68233792 1) .v) (.rational 190137802 1)) .v)
    (.rational 152541568 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 73162364
    1) .v) (.rational 191999188 1)) .v) (.rational 141870802 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 52691034 1) .v) (.rational 130818222 1)) .v) (.rational 89227661
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 25832052 1) .v) (.rational
    61084602 1)) .v) (.rational 38706763 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8538786 1) .v) (.rational 19398040 1)) .v) (.rational 11543414 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1838542 1) .v) (.rational 4051266 1)) .v)
    (.rational 2295607 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 240012 1)
    .v) (.rational 517496 1)) .v) (.rational 283047 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1887783 1) .v) (.rational 5890766 1)) .v) (.rational
    5179053 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 13214481 1) .v) (.rational 39255550
    1)) .v) (.rational 32594898 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 41160296 1)
    .v) (.rational 116356038 1)) .v) (.rational 91003045 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 75173523 1) .v) (.rational 202316394 1)) .v) (.rational 148782878 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 89275671 1) .v) (.rational
    229101586 1)) .v) (.rational 158368006 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 72232858 1) .v) (.rational 177256642 1)) .v) (.rational 115374751 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 40531444 1) .v) (.rational 95518890 1)) .v)
    (.rational 58791535 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 15731443 1)
    .v) (.rational 35801340 1)) .v) (.rational 20979982 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4129172 1) .v) (.rational 9131394 1)) .v) (.rational 5138909 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 697951 1) .v) (.rational 1508568 1)) .v)
    (.rational 822417 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 69151 1) .v)
    (.rational 146588 1)) .v) (.rational 77885 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1215082 1) .v) (.rational 3533260 1)) .v)
    (.rational 2758320 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 9113115 1) .v) (.rational
    25508624 1)) .v) (.rational 19075418 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    30601437 1) .v) (.rational 82415016 1)) .v) (.rational 58928788 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 60693763 1) .v) (.rational 157285784 1)) .v) (.rational
    107407222 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 78965623 1) .v)
    (.rational 197066100 1)) .v) (.rational 128492494 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 70753804 1) .v) (.rational 170321942 1)) .v) (.rational 106147875 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 44570118 1) .v) (.rational
    103760062 1)) .v) (.rational 61967185 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19771368 1) .v) (.rational 44665574 1)) .v) (.rational 25667368 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6079427 1) .v) (.rational 13379950 1)) .v)
    (.rational 7437381 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1248264 1)
    .v) (.rational 2686410 1)) .v) (.rational 1452261 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 159296 1) .v) (.rational 335986 1)) .v) (.rational 177347 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 10954 1) .v) (.rational 22610 1)) .v)
    (.rational 11656 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 566905 1) .v) (.rational 1541618 1)) .v) (.rational 1088432
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4535240 1) .v) (.rational 11979996 1)) .v)
    (.rational 8195841 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16326469 1) .v)
    (.rational 41869690 1)) .v) (.rational 27719149 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 34918583 1) .v) (.rational 86922080 1)) .v) (.rational 55636153 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 49330507 1) .v) (.rational 119225258 1)) .v)
    (.rational 73756168 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 48394883 1)
    .v) (.rational 113653470 1)) .v) (.rational 67984115 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 33720775 1) .v) (.rational 77059048 1)) .v) (.rational 44630728 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 16760909 1) .v) (.rational 37344364
    1)) .v) (.rational 20990483 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5873228 1) .v) (.rational 12788816 1)) .v) (.rational 6997464 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1406617 1) .v) (.rational 3000282 1)) .v) (.rational
    1603272 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 216648 1) .v)
    (.rational 453338 1)) .v) (.rational 237199 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 19000 1) .v) (.rational 38976 1)) .v) (.rational 19976 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 700 1) .v) (.rational 1400 1)) .v) (.rational 700 1))
    (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 181208 1) .v) (.rational 462008 1)) .v) (.rational 299220 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1540268 1) .v) (.rational 3843544 1)) .v) (.rational
    2434382 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5915784 1) .v) (.rational
    14439672 1)) .v) (.rational 8935064 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13563020 1) .v) (.rational 32370446 1)) .v) (.rational 19554124 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 20652692 1) .v) (.rational 48192036 1)) .v)
    (.rational 28406996 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 21979620 1)
    .v) (.rational 50157238 1)) .v) (.rational 28850267 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16742644 1) .v) (.rational 37387812 1)) .v) (.rational 20996899 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 9183724 1) .v) (.rational 20089282
    1)) .v) (.rational 11027954 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3593580 1) .v) (.rational 7710676 1)) .v) (.rational 4144254 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 975952 1) .v) (.rational 2056986 1)) .v) (.rational 1084521 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 174052 1) .v) (.rational 360740 1))
    .v) (.rational 186887 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 18216 1)
    .v) (.rational 37128 1)) .v) (.rational 18912 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 840 1) .v) (.rational 1680 1)) .v) (.rational 840 1)) (.pow .g 12))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    35521 1) .v) (.rational 85074 1)) .v) (.rational 51097 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 319689 1) .v) (.rational 754166 1)) .v) (.rational 446245 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1304500 1) .v) (.rational 3029472 1)) .v) (.rational 1764622 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3189716 1) .v) (.rational 7288934
    1)) .v) (.rational 4176818 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5202674 1) .v) (.rational 11695070 1)) .v) (.rational 6589842 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5960682 1) .v) (.rational 13179596 1)) .v) (.rational
    7300710 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4916455 1) .v)
    (.rational 10694572 1)) .v) (.rational 5824435 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2940250 1) .v) (.rational 6295012 1)) .v) (.rational 3372162 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1264806 1) .v) (.rational 2667154 1)) .v)
    (.rational 1406478 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 381489 1)
    .v) (.rational 793070 1)) .v) (.rational 412137 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 76541 1) .v) (.rational 157012 1)) .v) (.rational 80503 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9166 1) .v) (.rational 18566 1)) .v) (.rational
    9400 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 495 1) .v) (.rational 990
    1)) .v) (.rational 495 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3222 1) .v) (.rational 7260
    1)) .v) (.rational 4078 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 30609 1) .v)
    (.rational 68306 1)) .v) (.rational 38021 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 132209 1) .v) (.rational 292054 1)) .v) (.rational 161007 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 343247 1) .v) (.rational 750270 1)) .v) (.rational
    409446 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 596502 1) .v) (.rational
    1289686 1)) .v) (.rational 696425 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 730943 1) .v) (.rational 1562868 1)) .v) (.rational 834816 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 647633 1) .v) (.rational 1369340 1)) .v) (.rational
    723436 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 418119 1) .v) (.rational
    874364 1)) .v) (.rational 456922 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 195277 1) .v) (.rational 404040 1)) .v) (.rational 208926 1)) (.pow .g 8))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 64372 1) .v) (.rational 131866 1)) .v) (.rational
    67515 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 14226 1) .v) (.rational
    28878 1)) .v) (.rational 14653 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1894 1) .v) (.rational 3814 1)) .v) (.rational 1920 1)) (.pow .g 11))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 115 1) .v) (.rational 230 1)) .v) (.rational 115 1)) (.pow .g 12)))
    (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0052

namespace FullLow0053
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow3.c050 e f g v*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow2.c140 e f g v*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow1.c230 e f g v*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_001_0 e g v*e^1+6*SmallGap.ReducedLayers.low0_001_1 e
    g v*e^2+4*SmallGap.ReducedLayers.low0_001_2 e g v*e^3+1*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_002_0 e g v+3*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_002_2 e g v*e^2+1*SmallGap.ReducedLayers.low1_002_3 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    266 1) .v) (.rational 9597 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 170 1) .v)
    (.rational 4508 1)) .v) (.rational 73732 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 425
    1) .v) (.rational 6682 1)) .v) (.rational 89632 1)) .g))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 2885 1) .v) (.rational 37248 1)) .v) (.rational 354619 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8655 1) .v) (.rational 74602 1)) .v) (.rational
    591300 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 9385 1) .v) (.rational 46748 1))
    .v) (.rational 331833 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 22980 1) .v) (.rational 197676 1)) .v) (.rational 1200029 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 80430 1) .v) (.rational 505752 1)) .v) (.rational 2565327
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 108970 1) .v) (.rational 470250 1)) .v)
    (.rational 2001058 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 71350 1) .v)
    (.rational 196428 1)) .v) (.rational 687827 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 113179 1) .v) (.rational 746212 1))
    .v) (.rational 3044895 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 452716 1) .v)
    (.rational 2342364 1)) .v) (.rational 8028538 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 732070 1) .v) (.rational 2889460 1)) .v) (.rational 8171957 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 611704 1) .v) (.rational 1798928 1)) .v) (.rational
    4035529 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 278327 1) .v)
    (.rational 605792 1)) .v) (.rational 995910 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 383188 1) .v)
    (.rational 2096926 1)) .v) (.rational 6015589 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1724346 1) .v) (.rational 7825096 1)) .v) (.rational 19081962 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3231240 1) .v) (.rational 12010354 1)) .v) (.rational 24384123 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3262392 1) .v) (.rational 9868428
    1)) .v) (.rational 16152387 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1912876 1) .v) (.rational 4736160 1)) .v) (.rational 5972035 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 649684 1) .v) (.rational 1351612 1)) .v) (.rational 1248785 1))
    (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 939078 1) .v) (.rational 4475040 1)) .v) (.rational 9445837
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4695390 1) .v) (.rational 19358550 1)) .v)
    (.rational 35377008 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 9987137 1) .v)
    (.rational 35444526 1)) .v) (.rational 55149009 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11776208 1) .v) (.rational 35963546 1)) .v) (.rational 46669924 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8396932 1) .v) (.rational 22231036 1)) .v)
    (.rational 23544820 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3694706 1)
    .v) (.rational 8638522 1)) .v) (.rational 7363871 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 974817 1) .v) (.rational 2076042 1)) .v) (.rational 1439838 1)) (.pow
    .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1709412 1) .v) (.rational 7301520 1)) .v) (.rational
    11870711 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 9401766 1) .v) (.rational 35886932
    1)) .v) (.rational 51639598 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 22352058 1)
    .v) (.rational 76103000 1)) .v) (.rational 95821227 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 30071016 1) .v) (.rational 91462856 1)) .v) (.rational 99609660 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 25149964 1) .v) (.rational 68778284
    1)) .v) (.rational 64222364 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    13505828 1) .v) (.rational 33638208 1)) .v) (.rational 26909987 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4630900 1) .v) (.rational 10712914 1)) .v) (.rational
    7444679 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 969554 1) .v)
    (.rational 2135328 1)) .v) (.rational 1329825 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 2334828 1) .v) (.rational 9093006 1)) .v) (.rational 11885778 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 14008968 1) .v) (.rational 49976378 1)) .v) (.rational
    59140465 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 36784566 1) .v) (.rational
    120137856 1)) .v) (.rational 127783145 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 55507290 1) .v) (.rational 166255752 1)) .v) (.rational 157994796 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 53121011 1) .v) (.rational 146636202 1)) .v)
    (.rational 124148179 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 33538952
    1) .v) (.rational 86077922 1)) .v) (.rational 65118831 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14062304 1) .v) (.rational 33987848 1)) .v) (.rational 23234624 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3832550 1) .v) (.rational 8862372
    1)) .v) (.rational 5583445 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    641091 1) .v) (.rational 1441710 1)) .v) (.rational 857219 1)) (.pow .g 8)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 2388522 1) .v) (.rational 8565948 1)) .v) (.rational
    9345131 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 15525393 1) .v) (.rational 51985754
    1)) .v) (.rational 52426467 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 44596000 1)
    .v) (.rational 139394294 1)) .v) (.rational 129374137 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 74498677 1) .v) (.rational 217671906 1)) .v) (.rational 185356625 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 80119028 1) .v) (.rational
    219576596 1)) .v) (.rational 171450768 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 57964533 1) .v) (.rational 149883710 1)) .v) (.rational 107656547 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 28601984 1) .v) (.rational 70362556 1)) .v)
    (.rational 46859164 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 9537883 1)
    .v) (.rational 22551322 1)) .v) (.rational 14097460 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2077500 1) .v) (.rational 4771126 1)) .v) (.rational 2840157 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 275219 1) .v) (.rational 619090 1)) .v)
    (.rational 355207 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1805125 1) .v) (.rational 5995480 1)) .v) (.rational 5629112 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12635875 1) .v) (.rational 39774422 1)) .v) (.rational 35146372
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 39394545 1) .v) (.rational 117495642 1))
    .v) (.rational 97440371 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    72100895 1) .v) (.rational 203928998 1)) .v) (.rational 158448743 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 85937119 1) .v) (.rational 231003872 1)) .v) (.rational
    168159187 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 69915745 1) .v)
    (.rational 179279230 1)) .v) (.rational 122559150 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 39540930 1) .v) (.rational 97230224 1)) .v) (.rational 62739534 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 15513345 1) .v) (.rational 36816552
    1)) .v) (.rational 22593207 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4130993 1) .v) (.rational 9524632 1)) .v) (.rational 5607027 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 711593 1) .v) (.rational 1602134 1)) .v) (.rational 911413 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 72254 1) .v) (.rational 158982 1))
    .v) (.rational 87637 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 978856 1) .v) (.rational 3020812 1)) .v) (.rational 2500420 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7341420 1) .v) (.rational 21728636 1)) .v)
    (.rational 17180381 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 24678916 1) .v)
    (.rational 70026802 1)) .v) (.rational 52788021 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 49068084 1) .v) (.rational 133525392 1)) .v) (.rational 95850344 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 64109388 1) .v) (.rational 167505506 1)) .v)
    (.rational 114495321 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 57811424
    1) .v) (.rational 145346638 1)) .v) (.rational 94730139 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 36751880 1) .v) (.rational 89189596 1)) .v) (.rational 55592454
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 16509636 1) .v) (.rational
    38822532 1)) .v) (.rational 23244058 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5163124 1) .v) (.rational 11810778 1)) .v) (.rational 6826953 1)) (.pow .g 8))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1084228 1) .v) (.rational 2419654 1)) .v) (.rational
    1356066 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 142548 1) .v)
    (.rational 310314 1)) .v) (.rational 168855 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10200 1) .v) (.rational 21516 1)) .v) (.rational 11316 1)) (.pow .g 11))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    360549 1) .v) (.rational 1035772 1)) .v) (.rational 769902 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2884392 1) .v) (.rational 8024112 1)) .v) (.rational 5766203 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10396322 1) .v) (.rational 27991676 1)) .v)
    (.rational 19418163 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22297394 1)
    .v) (.rational 58098476 1)) .v) (.rational 38868762 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 31650152 1) .v) (.rational 79843500 1)) .v) (.rational 51498756 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 31274626 1) .v) (.rational 76465902
    1)) .v) (.rational 47575638 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    22017202 1) .v) (.rational 52260176 1)) .v) (.rational 31412280 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11099782 1) .v) (.rational 25631314 1)) .v) (.rational
    14918708 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3964337 1) .v)
    (.rational 8925084 1)) .v) (.rational 5044400 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 973814 1) .v) (.rational 2140642 1)) .v) (.rational 1177623 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 155120 1) .v) (.rational 332788 1)) .v)
    (.rational 178309 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 14232 1) .v)
    (.rational 29666 1)) .v) (.rational 15434 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 558 1) .v) (.rational 1116 1)) .v) (.rational 558 1)) (.pow .g 12)))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 80856
    1) .v) (.rational 216450 1)) .v) (.rational 146504 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 687276 1) .v) (.rational 1795964 1)) .v) (.rational 1186533 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2643232 1) .v) (.rational 6737974 1)) .v) (.rational
    4339983 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6078720 1) .v)
    (.rational 15109622 1)) .v) (.rational 9479602 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9304686 1) .v) (.rational 22550372 1)) .v) (.rational 13773255 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 9981283 1) .v) (.rational 23592668 1)) .v)
    (.rational 14027842 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7689412 1)
    .v) (.rational 17738522 1)) .v) (.rational 10272860 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4283653 1) .v) (.rational 9653806 1)) .v) (.rational 5451179 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1711330 1) .v) (.rational 3771742 1)) .v)
    (.rational 2079447 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 477681 1)
    .v) (.rational 1030372 1)) .v) (.rational 555335 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 88312 1) .v) (.rational 186388 1)) .v) (.rational 98243 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9691 1) .v) (.rational 19968 1)) .v) (.rational
    10277 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 476 1) .v) (.rational
    952 1)) .v) (.rational 476 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8340 1) .v) (.rational 20816 1))
    .v) (.rational 12964 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 75060 1) .v) (.rational
    184122 1)) .v) (.rational 112790 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 306731
    1) .v) (.rational 738924 1)) .v) (.rational 444799 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 752488 1) .v) (.rational 1779202 1)) .v) (.rational 1051520 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1234281 1) .v) (.rational 2863146 1)) .v)
    (.rational 1660268 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1426187 1)
    .v) (.rational 3245124 1)) .v) (.rational 1845613 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1190631 1) .v) (.rational 2657614 1)) .v) (.rational 1482356 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 723879 1) .v) (.rational 1585560 1)) .v)
    (.rational 867607 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 318283 1) .v)
    (.rational 684462 1)) .v) (.rational 367640 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 98781 1) .v) (.rational 208666 1)) .v) (.rational 110093 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 20562 1) .v) (.rational 42678 1)) .v) (.rational
    22129 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 2581 1) .v) (.rational
    5262 1)) .v) (.rational 2681 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    148 1) .v) (.rational 296 1)) .v) (.rational 148 1)) (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0053

namespace FullLow0054
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c050 e f g v*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow3.c140 e f g v*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow2.c230 e f g v*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_001_0 e g v+4*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_001_2 e g v*e^2+4*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^3+1*SmallGap.ReducedLayers.low0_001_4 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_002_1 e g v+3*SmallGap.ReducedLayers.low1_002_2 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_002_3 e g v*e^2+1*SmallGap.ReducedLayers.low1_002_4 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 350 1) .v)
    (.rational 14455 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 180 1) .v) (.rational
    5530 1)) .v) (.rational 106070 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 450 1) .v)
    (.rational 7990 1)) .v) (.rational 126129 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 2950 1) .v) (.rational 42830 1)) .v) (.rational 484739 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8850 1) .v) (.rational 82840 1)) .v) (.rational 787180 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 9600 1) .v) (.rational 48040 1)) .v)
    (.rational 423929 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 22670 1) .v) (.rational 214554 1)) .v) (.rational 1549925 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 79345 1) .v) (.rational 530492 1)) .v) (.rational 3219133 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 107535 1) .v) (.rational 465452 1)) .v)
    (.rational 2404695 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 70475 1) .v)
    (.rational 174874 1)) .v) (.rational 766769 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 107268 1) .v) (.rational 769080 1))
    .v) (.rational 3695478 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 429072 1) .v)
    (.rational 2346696 1)) .v) (.rational 9467302 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 694032 1) .v) (.rational 2780890 1)) .v) (.rational 9251811 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 580344 1) .v) (.rational 1636874 1)) .v) (.rational
    4289360 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 264420 1) .v)
    (.rational 512512 1)) .v) (.rational 947471 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 346436 1) .v)
    (.rational 2054168 1)) .v) (.rational 6819815 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1558962 1) .v) (.rational 7503410 1)) .v) (.rational 21070839 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2922172 1) .v) (.rational 11215614 1)) .v) (.rational 26014294 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2952446 1) .v) (.rational 8931662
    1)) .v) (.rational 16443951 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1733346 1) .v) (.rational 4146902 1)) .v) (.rational 5695370 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 589828 1) .v) (.rational 1151442 1)) .v) (.rational 1090522 1))
    (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 801268 1) .v) (.rational 4139498 1)) .v) (.rational 9922958
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4006340 1) .v) (.rational 17632518 1)) .v)
    (.rational 36346719 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8524550 1) .v)
    (.rational 31734508 1)) .v) (.rational 55174792 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10060160 1) .v) (.rational 31629312 1)) .v) (.rational 45241766 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7183960 1) .v) (.rational 19235380 1)) .v)
    (.rational 22022413 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3167948 1)
    .v) (.rational 7390536 1)) .v) (.rational 6649951 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 838210 1) .v) (.rational 1771312 1)) .v) (.rational 1271175 1)) (.pow
    .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1355560 1) .v) (.rational 6285490 1)) .v) (.rational
    11412839 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7455580 1) .v) (.rational 30551204
    1)) .v) (.rational 48775122 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 17733592 1)
    .v) (.rational 64064218 1)) .v) (.rational 88774467 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 23884314 1) .v) (.rational 76199820 1)) .v) (.rational 90448419 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 20014256 1) .v) (.rational 56841456
    1)) .v) (.rational 57229369 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10778824 1) .v) (.rational 27690938 1)) .v) (.rational 23655849 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3710096 1) .v) (.rational 8833312 1)) .v) (.rational
    6522026 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 780346 1) .v)
    (.rational 1773424 1)) .v) (.rational 1175276 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 1684163 1) .v) (.rational 7122636 1)) .v) (.rational 10259741 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10104978 1) .v) (.rational 38826436 1)) .v) (.rational
    50350793 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 26550385 1) .v) (.rational
    92632608 1)) .v) (.rational 107305130 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 40122960 1) .v) (.rational 127412734 1)) .v) (.rational 131008098 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 38494847 1) .v) (.rational 111968996 1)) .v)
    (.rational 101943377 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 24396386
    1) .v) (.rational 65721264 1)) .v) (.rational 53231815 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10282195 1) .v) (.rational 26060102 1)) .v) (.rational 19047245 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2820908 1) .v) (.rational 6853348
    1)) .v) (.rational 4623780 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    475522 1) .v) (.rational 1127618 1)) .v) (.rational 719580 1)) (.pow .g 8)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1520858 1) .v) (.rational 5916070 1)) .v) (.rational
    7038199 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 9885577 1) .v) (.rational 35677542
    1)) .v) (.rational 39060878 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 28418866 1)
    .v) (.rational 95162080 1)) .v) (.rational 95435350 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 47562416 1) .v) (.rational 148068538 1)) .v) (.rational 135617722 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 51312693 1) .v) (.rational
    149193788 1)) .v) (.rational 124806591 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 37301019 1) .v) (.rational 102052216 1)) .v) (.rational 78324795 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 18528744 1) .v) (.rational 48190962 1)) .v)
    (.rational 34263704 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 6233400 1)
    .v) (.rational 15597240 1)) .v) (.rational 10415419 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1372841 1) .v) (.rational 3342958 1)) .v) (.rational 2126703 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 184254 1) .v) (.rational 439968 1)) .v)
    (.rational 269185 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 971788 1) .v) (.rational 3492008 1)) .v) (.rational 3544795 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 6802516 1) .v) (.rational 23048466 1)) .v) (.rational 21941081
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 21228959 1) .v) (.rational 67824552 1))
    .v) (.rational 60372755 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    38941046 1) .v) (.rational 117476040 1)) .v) (.rational 97624870 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 46591521 1) .v) (.rational 133120880 1)) .v) (.rational
    103330540 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 38124648 1) .v)
    (.rational 103668072 1)) .v) (.rational 75402848 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 21737583 1) .v) (.rational 56620188 1)) .v) (.rational 38825439 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8622582 1) .v) (.rational 21674748 1)) .v)
    (.rational 14127474 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2329225 1)
    .v) (.rational 5689920 1)) .v) (.rational 3554601 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 408590 1) .v) (.rational 973924 1)) .v) (.rational 586259 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 42418 1) .v) (.rational 98396 1)) .v)
    (.rational 56984 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 416734 1) .v) (.rational 1386288 1)) .v) (.rational 1231328 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3125505 1) .v) (.rational 9928920 1)) .v) (.rational
    8399239 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10518973 1) .v) (.rational
    31905316 1)) .v) (.rational 25652928 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20969832 1) .v) (.rational 60771098 1)) .v) (.rational 46390293 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 27521335 1) .v) (.rational 76339400 1)) .v)
    (.rational 55338532 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 24986874 1)
    .v) (.rational 66531012 1)) .v) (.rational 45882940 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16038457 1) .v) (.rational 41152202 1)) .v) (.rational 27094881 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 7300122 1) .v) (.rational 18129198
    1)) .v) (.rational 11448954 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2323313 1) .v) (.rational 5605960 1)) .v) (.rational 3411501 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 499224 1) .v) (.rational 1172294 1)) .v) (.rational 689295 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 67631 1) .v) (.rational 154024 1))
    .v) (.rational 87333 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 5031 1)
    .v) (.rational 10958 1)) .v) (.rational 5927 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 107691 1) .v) (.rational
    331950 1)) .v) (.rational 262890 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 861528 1)
    .v) (.rational 2562054 1)) .v) (.rational 1956633 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3109474 1) .v) (.rational 8917190 1)) .v) (.rational 6556450 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6689578 1) .v) (.rational 18501356 1)) .v) (.rational
    13083258 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9545318 1) .v)
    (.rational 25479382 1)) .v) (.rational 17324997 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9506918 1) .v) (.rational 24527982 1)) .v) (.rational 16048610 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 6768520 1) .v) (.rational 16912936 1)) .v)
    (.rational 10666547 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3465374 1)
    .v) (.rational 8405350 1)) .v) (.rational 5121736 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1263637 1) .v) (.rational 2980444 1)) .v) (.rational 1758751 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 319114 1) .v) (.rational 732004 1)) .v)
    (.rational 418749 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 52746 1) .v)
    (.rational 117270 1)) .v) (.rational 64903 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5088 1) .v) (.rational 10854 1)) .v) (.rational 5766 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 214 1) .v) (.rational 428 1)) .v) (.rational 214 1))
    (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 12690 1) .v) (.rational 36252 1)) .v) (.rational 25956 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 107865 1) .v) (.rational 299802 1)) .v) (.rational 209064
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 415502 1) .v) (.rational 1122758 1)) .v)
    (.rational 761481 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 958965 1) .v)
    (.rational 2518234 1)) .v) (.rational 1659306 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1476811 1) .v) (.rational 3768704 1)) .v) (.rational 2411052 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1598779 1) .v) (.rational 3966438 1)) .v)
    (.rational 2463578 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1247829 1)
    .v) (.rational 3011812 1)) .v) (.rational 1817000 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 707696 1) .v) (.rational 1663196 1)) .v) (.rational 975475 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 289610 1) .v) (.rational 663074 1)) .v)
    (.rational 378411 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 83466 1) .v)
    (.rational 186084 1)) .v) (.rational 103352 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16099 1) .v) (.rational 34866 1)) .v) (.rational 18817 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1869 1) .v) (.rational 3910 1)) .v) (.rational 2041
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 99 1) .v) (.rational 198 1))
    .v) (.rational 99 1)) (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0054

namespace FullLow0055
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c140 e f g v*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow3.c230 e f g v*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_001_1 e g v+4*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_001_3 e g v*e^2+4*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^3+1*SmallGap.ReducedLayers.low0_001_5 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_002_2 e g v+3*SmallGap.ReducedLayers.low1_002_3 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_002_4 e g v*e^2+1*SmallGap.ReducedLayers.low1_002_5 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 294 1) .v) (.rational
    14539 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 114 1) .v) (.rational 4368 1))
    .v) (.rational 102222 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 285 1) .v) (.rational
    6150 1)) .v) (.rational 118794 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1820 1) .v) (.rational 31876 1)) .v) (.rational 444754 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5460 1) .v) (.rational 59360 1)) .v) (.rational 702422 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5925 1) .v) (.rational 31318 1)) .v) (.rational
    361807 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 13598 1) .v) (.rational 151102 1)) .v) (.rational 1344220 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 47593 1) .v) (.rational 359400 1)) .v) (.rational 2707616 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 64527 1) .v) (.rational 293318 1)) .v) (.rational
    1928747 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 42335 1) .v) (.rational
    93892 1)) .v) (.rational 562190 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 62189 1) .v) (.rational 514900 1)) .v)
    (.rational 3007254 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 248756 1) .v) (.rational
    1520864 1)) .v) (.rational 7471677 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    402527 1) .v) (.rational 1715568 1)) .v) (.rational 6983135 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 336935 1) .v) (.rational 935478 1)) .v) (.rational 3006956 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 153812 1) .v) (.rational 260844 1))
    .v) (.rational 570591 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 192300 1) .v) (.rational 1306242 1)) .v)
    (.rational 5162920 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 865350 1) .v) (.rational
    4657010 1)) .v) (.rational 15514955 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1622758 1) .v) (.rational 6745988 1)) .v) (.rational 18461097 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1641353 1) .v) (.rational 5166034 1)) .v) (.rational
    11078823 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 965499 1) .v)
    (.rational 2294702 1)) .v) (.rational 3551368 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 329515 1) .v) (.rational 612620 1)) .v) (.rational 605032 1)) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 419811 1) .v) (.rational 2473728 1)) .v) (.rational 6904483 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2099055 1) .v) (.rational 10356726 1)) .v) (.rational
    24712978 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4468714 1) .v) (.rational
    18278006 1)) .v) (.rational 36494342 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5280526 1) .v) (.rational 17842160 1)) .v) (.rational 28962956 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3779344 1) .v) (.rational 10642912 1)) .v)
    (.rational 13591957 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1672222 1)
    .v) (.rational 4034704 1)) .v) (.rational 3966817 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 444421 1) .v) (.rational 964066 1)) .v) (.rational 745650 1)) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 656354 1) .v) (.rational 3455202 1)) .v) (.rational 7163556
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3609947 1) .v) (.rational 16588674 1)) .v)
    (.rational 30062324 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8592497 1) .v)
    (.rational 34354568 1)) .v) (.rational 53660072 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11591634 1) .v) (.rational 40398204 1)) .v) (.rational 53615310 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9740726 1) .v) (.rational 29878418 1)) .v)
    (.rational 33361624 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5267878 1)
    .v) (.rational 14504284 1)) .v) (.rational 13665480 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1823338 1) .v) (.rational 4640640 1)) .v) (.rational 3780561 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 386061 1) .v) (.rational 939890 1)) .v)
    (.rational 691464 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 730774 1) .v)
    (.rational 3486740 1)) .v) (.rational 5645529 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    4384644 1) .v) (.rational 18834294 1)) .v) (.rational 27316081 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11530652 1) .v) (.rational 44565208 1)) .v) (.rational 57421550 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17460690 1) .v) (.rational 60905072
    1)) .v) (.rational 69283548 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    16810522 1) .v) (.rational 53344590 1)) .v) (.rational 53504182 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10709032 1) .v) (.rational 31342958 1)) .v) (.rational
    27917866 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4545251 1) .v)
    (.rational 12504036 1)) .v) (.rational 10067129 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1257955 1) .v) (.rational 3323278 1)) .v) (.rational 2479184 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 214145 1) .v) (.rational 553692 1)) .v)
    (.rational 391467 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    565288 1) .v) (.rational 2462000 1)) .v) (.rational 3251914 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3674372 1) .v) (.rational 14742696 1)) .v) (.rational 17845291 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10574220 1) .v) (.rational 39096326 1)) .v)
    (.rational 43164221 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17740118 1)
    .v) (.rational 60609402 1)) .v) (.rational 60874354 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19217674 1) .v) (.rational 61031594 1)) .v) (.rational 55824194 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 14055786 1) .v) (.rational 41884930
    1)) .v) (.rational 35107134 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7041034 1) .v) (.rational 19932386 1)) .v) (.rational 15487634 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2394593 1) .v) (.rational 6528464 1)) .v) (.rational
    4771795 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 534333 1) .v)
    (.rational 1419834 1)) .v) (.rational 988862 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 72732 1) .v) (.rational 189494 1)) .v) (.rational 126406 1)) (.pow .g 9))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 288516 1) .v) (.rational
    1151630 1)) .v) (.rational 1285065 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2019612 1)
    .v) (.rational 7557340 1)) .v) (.rational 7880156 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6310288 1) .v) (.rational 22143976 1)) .v) (.rational 21513456 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11606772 1) .v) (.rational 38274342 1)) .v)
    (.rational 34602269 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 13951207 1)
    .v) (.rational 43408042 1)) .v) (.rational 36562306 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11494711 1) .v) (.rational 33956262 1)) .v) (.rational 26760798 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 6616802 1) .v) (.rational 18706410
    1)) .v) (.rational 13892826 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2657858 1) .v) (.rational 7252902 1)) .v) (.rational 5120087 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 729414 1) .v) (.rational 1934968 1)) .v) (.rational 1307927 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 130388 1) .v) (.rational 337092 1))
    .v) (.rational 218693 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 13810 1)
    .v) (.rational 34556 1)) .v) (.rational 21371 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 87336 1) .v) (.rational 320406 1)) .v)
    (.rational 310242 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 655020 1) .v) (.rational
    2283474 1)) .v) (.rational 2099202 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2207396 1) .v) (.rational 7313114 1)) .v) (.rational 6369736 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4413604 1) .v) (.rational 13913538 1)) .v) (.rational 11471435
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5821670 1) .v) (.rational
    17507726 1)) .v) (.rational 13672709 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5325375 1) .v) (.rational 15337770 1)) .v) (.rational 11373860 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3454277 1) .v) (.rational 9574722 1)) .v)
    (.rational 6769876 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1594470 1)
    .v) (.rational 4275102 1)) .v) (.rational 2896187 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 516752 1) .v) (.rational 1345254 1)) .v) (.rational 876641 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 113611 1) .v) (.rational 287178 1)) .v)
    (.rational 180122 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 15829 1) .v)
    (.rational 38554 1)) .v) (.rational 23136 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1216 1) .v) (.rational 2786 1)) .v) (.rational 1570 1)) (.pow .g 11)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11880 1)
    .v) (.rational 40152 1)) .v) (.rational 34416 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    95040 1) .v) (.rational 308526 1)) .v) (.rational 254298 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 343524 1) .v) (.rational 1070864 1)) .v) (.rational 847297 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 741468 1) .v) (.rational 2220666 1)) .v)
    (.rational 1685022 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1063870 1)
    .v) (.rational 3065322 1)) .v) (.rational 2230549 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1068456 1) .v) (.rational 2968006 1)) .v) (.rational 2073376 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 769726 1) .v) (.rational 2066840 1)) .v)
    (.rational 1388895 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 400504 1)
    .v) (.rational 1042126 1)) .v) (.rational 675250 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 149249 1) .v) (.rational 376776 1)) .v) (.rational 235790 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 38804 1) .v) (.rational 94852 1)) .v) (.rational
    57286 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 6672 1) .v) (.rational
    15664 1)) .v) (.rational 9078 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    680 1) .v) (.rational 1504 1)) .v) (.rational 824 1)) (.pow .g 11))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 31 1) .v) (.rational 62 1)) .v) (.rational 31 1)) (.pow .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0055

namespace FullLow0056
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c230 e f g v*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_001_2 e g v+4*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_001_4 e g v*e^2+4*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_002_3 e g v+3*SmallGap.ReducedLayers.low1_002_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_002_5 e g v*e^2+1*SmallGap.ReducedLayers.low1_002_6 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 154 1) .v) (.rational 9765 1)) .e)
    (.add (.mul (.add (.mul (.add (.mul (.rational 40 1) .v) (.rational 2170 1)) .v) (.rational
    66002 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 100 1) .v) (.rational 2978 1)) .v)
    (.rational 74903 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 627
    1) .v) (.rational 15022 1)) .v) (.rational 274050 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1881 1) .v) (.rational 26878 1)) .v) (.rational 420432 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2042 1) .v) (.rational 12650 1)) .v) (.rational 206523 1)) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4590 1)
    .v) (.rational 67696 1)) .v) (.rational 783849 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16065 1) .v) (.rational 154318 1)) .v) (.rational 1529034 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 21791 1) .v) (.rational 115250 1)) .v) (.rational 1035126 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 14315 1) .v) (.rational 28444 1))
    .v) (.rational 271552 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 20429 1) .v) (.rational 220050 1)) .v) (.rational 1644509
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 81716 1) .v) (.rational 627096 1)) .v)
    (.rational 3958169 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 132303 1) .v)
    (.rational 667128 1)) .v) (.rational 3530067 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 110903 1) .v) (.rational 327922 1)) .v) (.rational 1400045 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 50764 1) .v) (.rational 74876 1)) .v) (.rational
    216422 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 60804 1) .v) (.rational 530740 1)) .v) (.rational 2617075
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 273618 1) .v) (.rational 1842952 1)) .v)
    (.rational 7646258 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 513460 1) .v)
    (.rational 2576596 1)) .v) (.rational 8767170 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 520226 1) .v) (.rational 1882826 1)) .v) (.rational 4993058 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 306950 1) .v) (.rational 789914 1)) .v)
    (.rational 1477017 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 105252 1)
    .v) (.rational 199612 1)) .v) (.rational 220724 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 125567 1)
    .v) (.rational 939972 1)) .v) (.rational 3186982 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 627835 1) .v) (.rational 3862834 1)) .v) (.rational 11148942 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1337810 1) .v) (.rational 6673824 1)) .v) (.rational
    16036748 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1584230 1) .v)
    (.rational 6368674 1)) .v) (.rational 12360496 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1138108 1) .v) (.rational 3720732 1)) .v) (.rational 5635628 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 506426 1) .v) (.rational 1391704 1)) .v)
    (.rational 1614636 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 135629 1)
    .v) (.rational 332210 1)) .v) (.rational 305704 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    180672 1) .v) (.rational 1190098 1)) .v) (.rational 2927100 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 993696 1) .v) (.rational 5637450 1)) .v) (.rational 12065984 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2368050 1) .v) (.rational 11520820 1)) .v) (.rational
    21154571 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3203505 1) .v)
    (.rational 13391846 1)) .v) (.rational 20806626 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2704900 1) .v) (.rational 9830700 1)) .v) (.rational 12826026 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1473332 1) .v) (.rational 4768196 1)) .v)
    (.rational 5267998 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 514928 1)
    .v) (.rational 1536398 1)) .v) (.rational 1483083 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 110355 1) .v) (.rational 315258 1)) .v) (.rational 278038 1)) (.pow .g
    7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 177315 1) .v) (.rational 1037938 1)) .v)
    (.rational 1954501 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1063890 1) .v) (.rational
    5549570 1)) .v) (.rational 9324401 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2802097 1) .v) (.rational 13015638 1)) .v) (.rational 19355125 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4258160 1) .v) (.rational 17679950 1)) .v) (.rational
    23144454 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4124262 1) .v)
    (.rational 15459576 1)) .v) (.rational 17830464 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2650878 1) .v) (.rational 9122258 1)) .v) (.rational 9368834 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1138908 1) .v) (.rational 3678522 1)) .v)
    (.rational 3434650 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 320133 1)
    .v) (.rational 993288 1)) .v) (.rational 863977 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 55498 1) .v) (.rational 168366 1)) .v) (.rational 138713 1)) (.pow .g 8))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 112770 1) .v) (.rational 589040 1)) .v)
    (.rational 889948 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 733005 1) .v) (.rational
    3498502 1)) .v) (.rational 4827424 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2113344 1) .v) (.rational 9219730 1)) .v) (.rational 11565342 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3560337 1) .v) (.rational 14247142 1)) .v) (.rational
    16215485 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3884160 1) .v)
    (.rational 14362498 1)) .v) (.rational 14868577 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2870775 1) .v) (.rational 9921478 1)) .v) (.rational 9418348 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1458916 1) .v) (.rational 4780406 1)) .v)
    (.rational 4215492 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 505505 1)
    .v) (.rational 1593432 1)) .v) (.rational 1323651 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 115400 1) .v) (.rational 353694 1)) .v) (.rational 279297 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 16110 1) .v) (.rational 48094 1)) .v)
    (.rational 36045 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 41742 1) .v) (.rational 195264 1)) .v) (.rational 245781 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 292194 1) .v) (.rational 1272708 1)) .v) (.rational 1492182 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 914787 1) .v) (.rational 3711686 1)) .v)
    (.rational 4041860 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1690200 1)
    .v) (.rational 6404770 1)) .v) (.rational 6472273 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2047026 1) .v) (.rational 7281446 1)) .v) (.rational 6842152 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1705587 1) .v) (.rational 5738196 1)) .v)
    (.rational 5040510 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 997037 1)
    .v) (.rational 3201870 1)) .v) (.rational 2649922 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 408614 1) .v) (.rational 1263856 1)) .v) (.rational 993523 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 114974 1) .v) (.rational 344564 1)) .v)
    (.rational 258537 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 21161 1) .v)
    (.rational 61400 1)) .v) (.rational 43878 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2307 1) .v) (.rational 6400 1)) .v) (.rational 4297 1)) (.pow .g 10)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6804 1) .v) (.rational
    28656 1)) .v) (.rational 30942 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 51030 1) .v)
    (.rational 203040 1)) .v) (.rational 207495 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 172296 1) .v) (.rational 647836 1)) .v) (.rational 625292 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 345969 1) .v) (.rational 1231490 1)) .v) (.rational
    1121879 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 459594 1) .v)
    (.rational 1554072 1)) .v) (.rational 1337802 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 424809 1) .v) (.rational 1371472 1)) .v) (.rational 1119140 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 279456 1) .v) (.rational 866658 1)) .v)
    (.rational 673505 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 131328 1) .v)
    (.rational 393556 1)) .v) (.rational 292669 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 43488 1) .v) (.rational 126414 1)) .v) (.rational 90213 1)) (.pow .g 8))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9792 1) .v) (.rational 27580 1)) .v) (.rational 18855
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1395 1) .v) (.rational 3766 1))
    .v) (.rational 2443 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 108 1) .v)
    (.rational 270 1)) .v) (.rational 162 1)) (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0056

namespace FullLow0057
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_001_3 e g v+4*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_001_5 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_002_4 e g v+3*SmallGap.ReducedLayers.low1_002_5 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_002_6 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 46 1) .v) (.rational 4223 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 6 1) .v) (.rational 620 1)) .v) (.rational 27532 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 15 1) .v) (.rational 830 1)) .v) (.rational 30492 1))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 93 1) .v) (.rational 4104
    1)) .v) (.rational 109383 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 279 1) .v)
    (.rational 7050 1)) .v) (.rational 162836 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 303 1) .v) (.rational 2896 1)) .v) (.rational 76099 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 672 1) .v) (.rational 17696
    1)) .v) (.rational 296585 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2352 1) .v)
    (.rational 38576 1)) .v) (.rational 559695 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3192 1) .v) (.rational 25910 1)) .v) (.rational 359312 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2100 1) .v) (.rational 3916 1)) .v) (.rational 83599 1))
    (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2931 1) .v) (.rational 55168 1)) .v) (.rational 583617 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11724 1) .v) (.rational 151420 1)) .v) (.rational 1360408 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 18996 1) .v) (.rational 150708 1)) .v) (.rational
    1158035 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 15954 1) .v) (.rational
    64428 1)) .v) (.rational 422277 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7329 1) .v) (.rational 9812 1)) .v) (.rational 50422 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8448 1) .v)
    (.rational 126770 1)) .v) (.rational 857803 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    38016 1) .v) (.rational 428338 1)) .v) (.rational 2438440 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 71412 1) .v) (.rational 576562 1)) .v) (.rational 2702445 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 72534 1) .v) (.rational 399588 1)) .v) (.rational
    1472505 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 42990 1) .v) (.rational
    156268 1)) .v) (.rational 410241 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14844 1) .v) (.rational 36634 1)) .v) (.rational 56801 1)) (.pow .g 5)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 16560 1) .v) (.rational 208714 1)) .v) (.rational 940085 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 82800 1) .v) (.rational 841046 1)) .v) (.rational 3217955 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 176685 1) .v) (.rational 1421278 1)) .v) (.rational
    4526989 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 209940 1) .v)
    (.rational 1325434 1)) .v) (.rational 3422110 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 151716 1) .v) (.rational 759086 1)) .v) (.rational 1547468 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 68118 1) .v) (.rational 280998 1)) .v) (.rational
    451336 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 18471 1) .v) (.rational
    67342 1)) .v) (.rational 89842 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21852 1)
    .v) (.rational 234774 1)) .v) (.rational 744258 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 120186 1) .v) (.rational 1095420 1)) .v) (.rational 3015804 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 286998 1) .v) (.rational 2207134 1)) .v) (.rational 5210538
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 390096 1) .v) (.rational
    2537552 1)) .v) (.rational 5083116 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 332064 1) .v) (.rational 1853966 1)) .v) (.rational 3147065 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 183078 1) .v) (.rational 903196 1)) .v) (.rational
    1321465 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 65058 1) .v) (.rational
    295140 1)) .v) (.rational 385822 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14244 1) .v) (.rational 61772 1)) .v) (.rational 74849 1)) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 18522 1) .v) (.rational 169176 1)) .v) (.rational 399222
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 111132 1) .v) (.rational 893214 1)) .v)
    (.rational 1877784 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 293544 1) .v)
    (.rational 2073980 1)) .v) (.rational 3856228 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 449010 1) .v) (.rational 2801986 1)) .v) (.rational 4592478 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 439731 1) .v) (.rational 2453752 1)) .v)
    (.rational 3560449 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 287316 1)
    .v) (.rational 1462666 1)) .v) (.rational 1906240 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 126252 1) .v) (.rational 601024 1)) .v) (.rational 718905 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 36540 1) .v) (.rational 166386 1)) .v)
    (.rational 186177 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6567 1) .v)
    (.rational 28942 1)) .v) (.rational 30459 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 9072 1) .v) (.rational 69876 1)) .v) (.rational 128808 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 58968 1) .v) (.rational 410508 1)) .v) (.rational 690120
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 170676 1) .v) (.rational 1073646 1)) .v)
    (.rational 1638774 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 290070 1)
    .v) (.rational 1655064 1)) .v) (.rational 2291064 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 321138 1) .v) (.rational 1676196 1)) .v) (.rational 2112595 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 242568 1) .v) (.rational 1173138 1)) .v)
    (.rational 1358940 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 127020 1)
    .v) (.rational 577660 1)) .v) (.rational 622713 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 45780 1) .v) (.rational 198204 1)) .v) (.rational 200835 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10986 1) .v) (.rational 45478 1)) .v) (.rational
    43381 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1629 1) .v) (.rational
    6384 1)) .v) (.rational 5667 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1944 1) .v) (.rational 12528 1)) .v) (.rational 18756 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 13608 1) .v) (.rational 80892 1)) .v) (.rational 112608 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 42822 1) .v) (.rational 234540 1)) .v)
    (.rational 302622 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 80028 1) .v)
    (.rational 404478 1)) .v) (.rational 483288 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 98784 1) .v) (.rational 462774 1)) .v) (.rational 513175 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 84654 1) .v) (.rational 370068 1)) .v) (.rational
    382863 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 51453 1) .v) (.rational
    211398 1)) .v) (.rational 205397 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22212 1) .v) (.rational 86148 1)) .v) (.rational 78970 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6687 1) .v) (.rational 24426 1)) .v) (.rational 21093 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1341 1) .v) (.rational 4554 1)) .v)
    (.rational 3662 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 162 1) .v)
    (.rational 498 1)) .v) (.rational 363 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0057

namespace FullLow0058
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_001_4 e g v+4*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_002_5 e g v+3*SmallGap.ReducedLayers.low1_002_6 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 6 1) .v) (.rational 1067 1)) .e) (.add (.mul (.add (.mul
    (.rational 78 1) .v) (.rational 6732 1)) .f) (.mul (.add (.mul (.rational 102 1) .v)
    (.rational 7272 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 498 1) .v)
    (.rational 25659 1)) .f) (.mul (.add (.mul (.rational 822 1) .v) (.rational 37030 1)) .g)) .f)
    (.mul (.add (.mul (.rational 288 1) .v) (.rational 16433 1)) (.pow .g 2)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 2070 1) .v) (.rational 66079 1)) .f) (.mul
    (.add (.mul (.rational 4314 1) .v) (.rational 120542 1)) .g)) .f) (.mul (.add (.mul (.rational
    2562 1) .v) (.rational 73328 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 72 1) .v)
    (.rational 14962 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 6228 1) .v) (.rational 121992 1)) .f) (.mul (.add (.mul (.rational 16464 1)
    .v) (.rational 275476 1)) .g)) .f) (.mul (.add (.mul (.rational 15246 1) .v) (.rational 224527
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 5406 1) .v) (.rational 76016 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.rational 180 1) .v) (.rational 7011 1)) (.pow .g 4)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13656 1) .v)
    (.rational 164785 1)) .f) (.mul (.add (.mul (.rational 44892 1) .v) (.rational 456348 1)) .g))
    .f) (.mul (.add (.mul (.rational 58122 1) .v) (.rational 491919 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.rational 38046 1) .v) (.rational 261272 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.rational 13686 1) .v) (.rational 72369 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational
    2892 1) .v) (.rational 10908 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20700 1) .v) (.rational 159726 1)) .f)
    (.mul (.add (.mul (.rational 81648 1) .v) (.rational 535536 1)) .g)) .f) (.mul (.add (.mul
    (.rational 134784 1) .v) (.rational 741264 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational
    122808 1) .v) (.rational 558228 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 69066 1)
    .v) (.rational 258379 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 25410 1) .v)
    (.rational 80338 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational 6144 1) .v) (.rational
    17411 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 20052 1) .v) (.rational 104466 1)) .f) (.mul (.add
    (.mul (.rational 91764 1) .v) (.rational 415920 1)) .g)) .f) (.mul (.add (.mul (.rational
    181740 1) .v) (.rational 710754 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 206496 1)
    .v) (.rational 694764 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 150510 1) .v)
    (.rational 439803 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 74058 1) .v) (.rational
    192890 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational 24714 1) .v) (.rational 59266 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.rational 5304 1) .v) (.rational 11914 1)) (.pow .g 7))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 11016 1) .v) (.rational 40824 1)) .f) (.mul (.add (.mul
    (.rational 57024 1) .v) (.rational 188892 1)) .g)) .f) (.mul (.add (.mul (.rational 130428 1)
    .v) (.rational 384198 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 174960 1) .v)
    (.rational 458424 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 153828 1) .v) (.rational
    361656 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 93240 1) .v) (.rational 199988 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.rational 39390 1) .v) (.rational 78415 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.rational 11274 1) .v) (.rational 20984 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.rational 2022 1) .v) (.rational 3486 1)) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 2592 1) .v) (.rational 7128 1)) .f) (.mul (.add (.mul (.rational 14904
    1) .v) (.rational 37584 1)) .g)) .f) (.mul (.add (.mul (.rational 38412 1) .v) (.rational
    88386 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 58932 1) .v) (.rational 123612 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.rational 60156 1) .v) (.rational 115517 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.rational 43020 1) .v) (.rational 76272 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.rational 21906 1) .v) (.rational 36155 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.rational 7830 1) .v) (.rational 12060 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.rational 1872 1) .v) (.rational 2673 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 270
    1) .v) (.rational 352 1)) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0058

namespace FullLow0059
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_001_5 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_002_6 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 120 1) .e) (.add (.mul (.rational 735 1) .f) (.mul (.rational 774 1) .g))) .e)
    (.add (.mul (.add (.mul (.rational 2694 1) .f) (.mul (.rational 3765 1) .g)) .f) (.mul
    (.rational 1584 1) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 6600 1)
    .f) (.mul (.rational 11628 1) .g)) .f) (.mul (.rational 6705 1) (.pow .g 2))) .f) (.mul
    (.rational 1194 1) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 11424 1) .f) (.mul (.rational 24996 1) .g)) .f) (.mul (.rational 19614 1) (.pow .g
    2))) .f) (.mul (.rational 6315 1) (.pow .g 3))) .f) (.mul (.rational 528 1) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 14058 1) .f) (.mul
    (.rational 37944 1) .g)) .f) (.mul (.rational 40092 1) (.pow .g 2))) .f) (.mul (.rational
    21312 1) (.pow .g 3))) .f) (.mul (.rational 6315 1) (.pow .g 4))) .f) (.mul (.rational 1194 1)
    (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 11700 1) .f) (.mul (.rational 38358 1) .g)) .f) (.mul (.rational 52512 1) (.pow .g
    2))) .f) (.mul (.rational 40092 1) (.pow .g 3))) .f) (.mul (.rational 19614 1) (.pow .g 4)))
    .f) (.mul (.rational 6705 1) (.pow .g 5))) .f) (.mul (.rational 1584 1) (.pow .g 6)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5832 1) .f) (.mul (.rational 22680 1) .g)) .f) (.mul (.rational 38358 1) (.pow .g 2))) .f)
    (.mul (.rational 37944 1) (.pow .g 3))) .f) (.mul (.rational 24996 1) (.pow .g 4))) .f) (.mul
    (.rational 11628 1) (.pow .g 5))) .f) (.mul (.rational 3765 1) (.pow .g 6))) .f) (.mul
    (.rational 774 1) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1296 1) .f) (.mul (.rational 5832 1) .g))
    .f) (.mul (.rational 11700 1) (.pow .g 2))) .f) (.mul (.rational 14058 1) (.pow .g 3))) .f)
    (.mul (.rational 11424 1) (.pow .g 4))) .f) (.mul (.rational 6600 1) (.pow .g 5))) .f) (.mul
    (.rational 2694 1) (.pow .g 6))) .f) (.mul (.rational 735 1) (.pow .g 7))) .f) (.mul
    (.rational 120 1) (.pow .g 8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0059

end
end SPR.N6.Tail.CoreEndpoint
