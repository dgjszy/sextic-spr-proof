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

namespace FullHigh3020
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_100_0 e g v*e^2+4*SmallGap.ReducedLayers.high0_001_0
    e g v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_0 e g v*e^2+3*SmallGap.ReducedLayers.high1_101_0 e g
    v*e^1+1*SmallGap.ReducedLayers.high1_002_0 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1288 1) .e)
    (.add (.mul (.rational 12730 1) .f) (.add (.mul (.rational 15980 1) .g) (.mul (.rational 2280
    1) .v)))) .e) (.add (.mul (.add (.mul (.rational 76974 1) .f) (.add (.mul (.rational 131340 1)
    .g) (.mul (.rational 20128 1) .v))) .f) (.add (.mul (.add (.mul (.rational 81866 1) .g) (.mul
    (.rational 24280 1) .v)) .g) (.mul (.rational 1040 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 318928 1) .f) (.add (.mul (.rational 686396 1) .g) (.mul
    (.rational 109452 1) .v))) .f) (.add (.mul (.add (.mul (.rational 573988 1) .g) (.mul
    (.rational 180356 1) .v)) .g) (.mul (.rational 8372 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 233884 1) .g) (.mul (.rational 105876 1) .v)) .g) (.mul (.rational
    10084 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    960399 1) .f) (.add (.mul (.rational 2491149 1) .g) (.mul (.rational 409798 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 2608249 1) .g) (.mul (.rational 858110 1) .v)) .g) (.mul
    (.rational 41500 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1412543 1) .g)
    (.mul (.rational 684906 1) .v)) .g) (.mul (.rational 68634 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 417660 1) .g) (.mul (.rational 260562 1) .v)) .g) (.mul
    (.rational 39740 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 2173948 1) .f) (.add (.mul (.rational 6591331 1) .g) (.mul
    (.rational 1118060 1) .v))) .f) (.add (.mul (.add (.mul (.rational 8276533 1) .g) (.mul
    (.rational 2846012 1) .v)) .g) (.mul (.rational 141583 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5577357 1) .g) (.mul (.rational 2881476 1) .v)) .g) (.mul (.rational
    299671 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2175947 1) .g) (.mul
    (.rational 1484592 1) .v)) .g) (.mul (.rational 238979 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 489868 1) .g) (.mul (.rational 411384 1) .v)) .g)
    (.mul (.rational 89393 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 3770448 1) .f) (.add (.mul (.rational 13072069
    1) .g) (.mul (.rational 2292504 1) .v))) .f) (.add (.mul (.add (.mul (.rational 19116055 1)
    .g) (.mul (.rational 6883148 1) .v)) .g) (.mul (.rational 351476 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15378113 1) .g) (.mul (.rational 8464050 1) .v)) .g) (.mul
    (.rational 912017 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7424621
    1) .g) (.mul (.rational 5519578 1) .v)) .g) (.mul (.rational 935003 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2192154 1) .g) (.mul (.rational 2061982 1)
    .v)) .g) (.mul (.rational 483945 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 382772 1) .g) (.mul (.rational 442074 1) .v)) .g) (.mul (.rational 133821 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 5056176 1) .f) (.add (.mul (.rational 19715401 1) .g) (.mul
    (.rational 3587532 1) .v))) .f) (.add (.mul (.add (.mul (.rational 32869545 1) .g) (.mul
    (.rational 12428626 1) .v)) .g) (.mul (.rational 653079 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 30680481 1) .g) (.mul (.rational 18013272 1) .v)) .g) (.mul
    (.rational 2017145 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 17604487
    1) .g) (.mul (.rational 14241920 1) .v)) .g) (.mul (.rational 2544912 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6399758 1) .g) (.mul (.rational 6710860
    1) .v)) .g) (.mul (.rational 1699314 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1457536 1) .g) (.mul (.rational 1928154 1) .v)) .g) (.mul (.rational
    650619 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 196404 1)
    .g) (.mul (.rational 329104 1) .v)) .g) (.mul (.rational 144185 1) (.pow .v 2))) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 5246408 1) .f) (.add (.mul (.rational 22711977 1) .g) (.mul (.rational
    4302828 1) .v))) .f) (.add (.mul (.add (.mul (.rational 42477778 1) .g) (.mul (.rational
    16911570 1) .v)) .g) (.mul (.rational 918240 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 45058480 1) .g) (.mul (.rational 28255324 1) .v)) .g) (.mul (.rational
    3302157 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 29883169 1) .g)
    (.mul (.rational 26281824 1) .v)) .g) (.mul (.rational 4970335 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 12852978 1) .g) (.mul (.rational 14965442 1) .v))
    .g) (.mul (.rational 4089530 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3585969 1) .g) (.mul (.rational 5394748 1) .v)) .g) (.mul (.rational 2016388 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 626821 1) .g) (.mul
    (.rational 1224622 1) .v)) .g) (.mul (.rational 613427 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 62996 1) .g) (.mul (.rational 166650 1) .v)) .g)
    (.mul (.rational 113289 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    4180498 1) .f) (.add (.mul (.rational 19884215 1) .g) (.mul (.rational 3932992 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 41192691 1) .g) (.mul (.rational 17301544 1) .v)) .g) (.mul
    (.rational 974623 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 48876644 1)
    .g) (.mul (.rational 32755248 1) .v)) .g) (.mul (.rational 4009711 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 36709348 1) .g) (.mul (.rational 35049108 1) .v)) .g)
    (.mul (.rational 7031512 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18173500 1) .g) (.mul (.rational 23400024 1) .v)) .g) (.mul (.rational 6896544 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5970118 1) .g) (.mul
    (.rational 10140572 1) .v)) .g) (.mul (.rational 4173706 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1271369 1) .g) (.mul (.rational 2866916 1) .v)) .g)
    (.mul (.rational 1619854 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 164715 1) .g) (.mul (.rational 514140 1) .v)) .g) (.mul (.rational 403765 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 11288 1) .g) (.mul
    (.rational 54068 1) .v)) .g) (.mul (.rational 61987 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 2513500 1) .f) (.add (.mul (.rational 13023393 1) .g) (.mul
    (.rational 2694740 1) .v))) .f) (.add (.mul (.add (.mul (.rational 29579000 1) .g) (.mul
    (.rational 13121660 1) .v)) .g) (.mul (.rational 769280 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 38770045 1) .g) (.mul (.rational 27763564 1) .v)) .g) (.mul
    (.rational 3568621 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 32464158
    1) .g) (.mul (.rational 33584076 1) .v)) .g) (.mul (.rational 7154269 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 18128726 1) .g) (.mul (.rational 25701948
    1) .v)) .g) (.mul (.rational 8156000 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6822521 1) .g) (.mul (.rational 12991388 1) .v)) .g) (.mul (.rational
    5853536 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1701130 1)
    .g) (.mul (.rational 4383610 1) .v)) .g) (.mul (.rational 2762122 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 266699 1) .g) (.mul (.rational 970002 1)
    .v)) .g) (.mul (.rational 865360 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 23366 1) .g) (.mul (.rational 132994 1) .v)) .g) (.mul (.rational 175871 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 842 1) .g) (.mul
    (.rational 9890 1) .v)) .g) (.mul (.rational 21527 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1104268 1) .f) (.add (.mul (.rational 6188139
    1) .g) (.mul (.rational 1341104 1) .v))) .f) (.add (.mul (.add (.mul (.rational 15278483 1)
    .g) (.mul (.rational 7161518 1) .v)) .g) (.mul (.rational 437869 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 21898265 1) .g) (.mul (.rational 16744024 1) .v)) .g) (.mul
    (.rational 2262651 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 20191055
    1) .g) (.mul (.rational 22578666 1) .v)) .g) (.mul (.rational 5106384 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 12521766 1) .g) (.mul (.rational 19461824
    1) .v)) .g) (.mul (.rational 6633586 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5290524 1) .g) (.mul (.rational 11217556 1) .v)) .g) (.mul (.rational
    5502468 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1502550 1)
    .g) (.mul (.rational 4383532 1) .v)) .g) (.mul (.rational 3051528 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 273846 1) .g) (.mul (.rational 1146942 1)
    .v)) .g) (.mul (.rational 1147388 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 28764 1) .g) (.mul (.rational 191796 1) .v)) .g) (.mul (.rational 288300 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1308 1) .g) (.mul
    (.rational 18342 1) .v)) .g) (.mul (.rational 45877 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 744 1) .v) .g) (.mul (.rational 4063 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 334777 1) .f) (.add
    (.mul (.rational 2016586 1) .g) (.mul (.rational 458014 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 5373901 1) .g) (.mul (.rational 2661084 1) .v)) .g) (.mul (.rational 169876 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 8351539 1) .g) (.mul (.rational
    6810246 1) .v)) .g) (.mul (.rational 967821 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8393773 1) .g) (.mul (.rational 10120176 1) .v)) .g) (.mul (.rational 2427711
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5709806 1) .g)
    (.mul (.rational 9687182 1) .v)) .g) (.mul (.rational 3537294 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2666459 1) .g) (.mul (.rational 6255938 1) .v))
    .g) (.mul (.rational 3324470 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 845209 1) .g) (.mul (.rational 2768142 1) .v)) .g) (.mul (.rational 2113110 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 174154 1) .g) (.mul
    (.rational 831060 1) .v)) .g) (.mul (.rational 923202 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 21056 1) .g) (.mul (.rational 162368 1) .v)) .g) (.mul
    (.rational 274416 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1132 1) .g) (.mul (.rational 18646 1) .v)) .g) (.mul (.rational 53082 1) (.pow .v 2))) (.pow
    .g 8))) .f) (.mul (.add (.mul (.mul (.rational 952 1) .v) .g) (.mul (.rational 5995 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 295 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 62640 1) .f) (.add (.mul
    (.rational 403446 1) .g) (.mul (.rational 96036 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1153318 1) .g) (.mul (.rational 602976 1) .v)) .g) (.mul (.rational 40206 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1929593 1) .g) (.mul (.rational 1675552
    1) .v)) .g) (.mul (.rational 250350 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2096159 1) .g) (.mul (.rational 2717662 1) .v)) .g) (.mul (.rational 690649 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1548220 1) .g) (.mul
    (.rational 2855604 1) .v)) .g) (.mul (.rational 1114239 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 789246 1) .g) (.mul (.rational 2037218 1) .v)) .g)
    (.mul (.rational 1168019 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 274861 1) .g) (.mul (.rational 1002960 1) .v)) .g) (.mul (.rational 834689 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 62727 1) .g) (.mul
    (.rational 337834 1) .v)) .g) (.mul (.rational 413679 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8488 1) .g) (.mul (.rational 74824 1) .v)) .g) (.mul
    (.rational 141013 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    518 1) .g) (.mul (.rational 9878 1) .v)) .g) (.mul (.rational 31747 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 592 1) .v) .g) (.mul (.rational 4269 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 260 1) (.pow .v 2)) (.pow .g 10))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5454 1) .f) (.add (.mul
    (.rational 37386 1) .g) (.mul (.rational 9324 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    114039 1) .g) (.mul (.rational 62892 1) .v)) .g) (.mul (.rational 4380 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 204144 1) .g) (.mul (.rational 188454 1) .v)) .g)
    (.mul (.rational 29586 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    237979 1) .g) (.mul (.rational 330912 1) .v)) .g) (.mul (.rational 88970 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 189232 1) .g) (.mul (.rational
    378006 1) .v)) .g) (.mul (.rational 157253 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 104231 1) .g) (.mul (.rational 294468 1) .v)) .g) (.mul
    (.rational 181539 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    39384 1) .g) (.mul (.rational 159042 1) .v)) .g) (.mul (.rational 143643 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9799 1) .g) (.mul (.rational 59064
    1) .v)) .g) (.mul (.rational 79271 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1454 1) .g) (.mul (.rational 14502 1) .v)) .g) (.mul (.rational 30275 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 98 1) .g) (.mul
    (.rational 2136 1) .v)) .g) (.mul (.rational 7693 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 144 1) .v) .g) (.mul (.rational 1179 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 83 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh3020

namespace FullHigh3021
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^1+6*SmallGap.ReducedLayers.high0_100_1 e g v*e^2+4*SmallGap.ReducedLayers.high0_001_0 e g
    v+4*SmallGap.ReducedLayers.high0_001_1 e g v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.high1_200_0 e g v*e^1+3*SmallGap.ReducedLayers.high1_200_1 e g
    v*e^2+3*SmallGap.ReducedLayers.high1_101_0 e g v+3*SmallGap.ReducedLayers.high1_101_1 e g
    v*e^1+1*SmallGap.ReducedLayers.high1_002_1 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5348 1) .e) (.add (.mul
    (.rational 49158 1) .f) (.add (.mul (.rational 60882 1) .g) (.mul (.rational 9300 1) .v))))
    .e) (.add (.mul (.add (.mul (.rational 277360 1) .f) (.add (.mul (.rational 466790 1) .g)
    (.mul (.rational 74954 1) .v))) .f) (.add (.mul (.add (.mul (.rational 286102 1) .g) (.mul
    (.rational 87524 1) .v)) .g) (.mul (.rational 4200 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 1071984 1) .f) (.add (.mul (.rational 2275324 1) .g) (.mul
    (.rational 373494 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1872036 1) .g) (.mul
    (.rational 593582 1) .v)) .g) (.mul (.rational 30535 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 749788 1) .g) (.mul (.rational 329890 1) .v)) .g) (.mul (.rational
    35366 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3000992 1) .f) (.add (.mul (.rational 7675536 1) .g) (.mul (.rational 1283096 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 7911270 1) .g) (.mul (.rational 2587998 1) .v)) .g) (.mul
    (.rational 137183 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4215968 1)
    .g) (.mul (.rational 1958078 1) .v)) .g) (.mul (.rational 216940 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1228414 1) .g) (.mul (.rational 690794 1) .v)) .g)
    (.mul (.rational 116547 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 6275428 1) .f) (.add (.mul (.rational 18756556 1) .g)
    (.mul (.rational 3209004 1) .v))) .f) (.add (.mul (.add (.mul (.rational 23195826 1) .g) (.mul
    (.rational 7872792 1) .v)) .g) (.mul (.rational 425270 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 15396924 1) .g) (.mul (.rational 7584146 1) .v)) .g) (.mul (.rational
    859953 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5927710 1) .g) (.mul
    (.rational 3656490 1) .v)) .g) (.mul (.rational 639300 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1322032 1) .g) (.mul (.rational 929714 1) .v)) .g)
    (.mul (.rational 214133 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9960722 1) .f) (.add (.mul (.rational
    34032508 1) .g) (.mul (.rational 6008418 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    49031270 1) .g) (.mul (.rational 17422156 1) .v)) .g) (.mul (.rational 960792 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 38888494 1) .g) (.mul (.rational 20493036
    1) .v)) .g) (.mul (.rational 2390302 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18553234 1) .g) (.mul (.rational 12638130 1) .v)) .g) (.mul (.rational 2309549 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5435930 1) .g) (.mul
    (.rational 4411976 1) .v)) .g) (.mul (.rational 1099770 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 947790 1) .g) (.mul (.rational 876322 1) .v)) .g)
    (.mul (.rational 271509 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12064826 1) .f) (.add (.mul
    (.rational 46345280 1) .g) (.mul (.rational 8517602 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 76141626 1) .g) (.mul (.rational 28581314 1) .v)) .g) (.mul (.rational 1622117 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 70127424 1) .g) (.mul (.rational
    39865840 1) .v)) .g) (.mul (.rational 4836070 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 39814988 1) .g) (.mul (.rational 30128580 1) .v)) .g) (.mul (.rational
    5832716 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 14387608
    1) .g) (.mul (.rational 13495212 1) .v)) .g) (.mul (.rational 3683993 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3278920 1) .g) (.mul (.rational 3681836
    1) .v)) .g) (.mul (.rational 1324595 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 445900 1) .g) (.mul (.rational 601450 1) .v)) .g) (.mul (.rational
    277619 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11103262 1) .f) (.add (.mul
    (.rational 47334410 1) .g) (.mul (.rational 9126148 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 87252586 1) .g) (.mul (.rational 34857298 1) .v)) .g) (.mul (.rational 2055583 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 91390186 1) .g) (.mul (.rational
    56388888 1) .v)) .g) (.mul (.rational 7193604 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 60046012 1) .g) (.mul (.rational 50633300 1) .v)) .g) (.mul (.rational
    10500892 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 25715808
    1) .g) (.mul (.rational 27812164 1) .v)) .g) (.mul (.rational 8369594 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7194878 1) .g) (.mul (.rational 9710876
    1) .v)) .g) (.mul (.rational 4017678 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1272716 1) .g) (.mul (.rational 2160970 1) .v)) .g) (.mul (.rational
    1210742 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 130854 1)
    .g) (.mul (.rational 294422 1) .v)) .g) (.mul (.rational 229141 1) (.pow .v 2))) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 7646722 1) .f) (.add (.mul (.rational 35801160 1) .g) (.mul
    (.rational 7284924 1) .v))) .f) (.add (.mul (.add (.mul (.rational 73101542 1) .g) (.mul
    (.rational 31244876 1) .v)) .g) (.mul (.rational 1930502 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 85698134 1) .g) (.mul (.rational 57591980 1) .v)) .g) (.mul
    (.rational 7790519 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 63836542
    1) .g) (.mul (.rational 59996332 1) .v)) .g) (.mul (.rational 13415505 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 31518928 1) .g) (.mul (.rational 39100896
    1) .v)) .g) (.mul (.rational 12979730 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10405032 1) .g) (.mul (.rational 16662796 1) .v)) .g) (.mul (.rational
    7831426 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2248322 1)
    .g) (.mul (.rational 4698354 1) .v)) .g) (.mul (.rational 3089902 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 299048 1) .g) (.mul (.rational 858618 1)
    .v)) .g) (.mul (.rational 805669 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 21334 1) .g) (.mul (.rational 94434 1) .v)) .g) (.mul (.rational 133531 1)
    (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3823350 1) .f) (.add
    (.mul (.rational 19489454 1) .g) (.mul (.rational 4203216 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 43625884 1) .g) (.mul (.rational 20012732 1) .v)) .g) (.mul (.rational 1303194 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 56521070 1) .g) (.mul (.rational
    41421436 1) .v)) .g) (.mul (.rational 5970372 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 46984806 1) .g) (.mul (.rational 49118588 1) .v)) .g) (.mul (.rational
    11869000 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 26205346
    1) .g) (.mul (.rational 37034866 1) .v)) .g) (.mul (.rational 13520660 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9929326 1) .g) (.mul (.rational 18615528
    1) .v)) .g) (.mul (.rational 9821190 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2518068 1) .g) (.mul (.rational 6340792 1) .v)) .g) (.mul (.rational
    4780278 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 406504 1)
    .g) (.mul (.rational 1446498 1) .v)) .g) (.mul (.rational 1582659 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 37220 1) .g) (.mul (.rational 209706 1) .v))
    .g) (.mul (.rational 348610 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1428 1) .g) (.mul (.rational 16922 1) .v)) .g) (.mul (.rational 47195 1) (.pow .v
    2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1312504 1) .f)
    (.add (.mul (.rational 7231170 1) .g) (.mul (.rational 1657236 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 17591678 1) .g) (.mul (.rational 8673756 1) .v)) .g) (.mul (.rational 597410
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 24928216 1) .g) (.mul
    (.rational 19912652 1) .v)) .g) (.mul (.rational 3065082 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 22834764 1) .g) (.mul (.rational 26464416 1) .v)) .g) (.mul
    (.rational 6908870 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    14160836 1) .g) (.mul (.rational 22630818 1) .v)) .g) (.mul (.rational 9047788 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6033332 1) .g) (.mul
    (.rational 13077094 1) .v)) .g) (.mul (.rational 7668481 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1746056 1) .g) (.mul (.rational 5201852 1) .v)) .g)
    (.mul (.rational 4423992 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 328374 1) .g) (.mul (.rational 1413788 1) .v)) .g) (.mul (.rational 1767670 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 36126 1) .g) (.mul
    (.rational 251574 1) .v)) .g) (.mul (.rational 482459 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1752 1) .g) (.mul (.rational 26274 1) .v)) .g) (.mul
    (.rational 85022 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1196 1)
    .v) .g) (.mul (.rational 8471 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 276966 1) .f) (.add (.mul (.rational 1638876 1) .g)
    (.mul (.rational 399660 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4301262 1) .g) (.mul
    (.rational 2279856 1) .v)) .g) (.mul (.rational 166392 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6608702 1) .g) (.mul (.rational 5745104 1) .v)) .g) (.mul (.rational
    944928 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6601622 1) .g) (.mul
    (.rational 8447860 1) .v)) .g) (.mul (.rational 2379438 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4494332 1) .g) (.mul (.rational 8063192 1) .v)) .g)
    (.mul (.rational 3515892 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2118858 1) .g) (.mul (.rational 5250306 1) .v)) .g) (.mul (.rational 3397161 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 685228 1) .g) (.mul
    (.rational 2378164 1) .v)) .g) (.mul (.rational 2258232 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 145850 1) .g) (.mul (.rational 745064 1) .v)) .g)
    (.mul (.rational 1052174 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18478 1) .g) (.mul (.rational 155356 1) .v)) .g) (.mul (.rational 340362 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1058 1) .g) (.mul
    (.rational 19506 1) .v)) .g) (.mul (.rational 73035 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 1116 1) .v) .g) (.mul (.rational 9314 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 528 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 27108 1) .f) (.add (.mul (.rational
    171330 1) .g) (.mul (.rational 44472 1) .v))) .f) (.add (.mul (.add (.mul (.rational 482012 1)
    .g) (.mul (.rational 274452 1) .v)) .g) (.mul (.rational 21240 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 797026 1) .g) (.mul (.rational 752372 1) .v)) .g) (.mul
    (.rational 132192 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 860612 1)
    .g) (.mul (.rational 1210844 1) .v)) .g) (.mul (.rational 367366 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 636424 1) .g) (.mul (.rational 1273088 1)
    .v)) .g) (.mul (.rational 603462 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 327720 1) .g) (.mul (.rational 919284 1) .v)) .g) (.mul (.rational 653028 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 116498 1) .g) (.mul
    (.rational 464920 1) .v)) .g) (.mul (.rational 489781 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 27464 1) .g) (.mul (.rational 163796 1) .v)) .g) (.mul
    (.rational 259505 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3890 1) .g) (.mul (.rational 38728 1) .v)) .g) (.mul (.rational 96384 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 252 1) .g) (.mul (.rational 5576 1) .v))
    .g) (.mul (.rational 24078 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 372 1) .v) .g) (.mul (.rational 3653 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 255 1) (.pow .v 2)) (.pow .g 10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh3021

namespace FullHigh3022
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_100_0 e g v+12*SmallGap.ReducedLayers.high0_100_1 e
    g v*e^1+6*SmallGap.ReducedLayers.high0_100_2 e g v*e^2+4*SmallGap.ReducedLayers.high0_001_1 e
    g v+4*SmallGap.ReducedLayers.high0_001_2 e g v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_0 e g v+6*SmallGap.ReducedLayers.high1_200_1 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_200_2 e g v*e^2+3*SmallGap.ReducedLayers.high1_101_1 e g
    v+3*SmallGap.ReducedLayers.high1_101_2 e g v*e^1+1*SmallGap.ReducedLayers.high1_002_2 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8452 1) .e) (.add (.mul (.rational
    73580 1) .f) (.add (.mul (.rational 90178 1) .g) (.mul (.rational 14460 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 391584 1) .f) (.add (.mul (.rational 651172 1) .g) (.mul
    (.rational 108394 1) .v))) .f) (.add (.mul (.add (.mul (.rational 393304 1) .g) (.mul
    (.rational 122680 1) .v)) .g) (.mul (.rational 6480 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 1417712 1) .f) (.add (.mul (.rational 2969098 1) .g) (.mul
    (.rational 499426 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2404076 1) .g) (.mul
    (.rational 764056 1) .v)) .g) (.mul (.rational 43379 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 946266 1) .g) (.mul (.rational 398854 1) .v)) .g) (.mul (.rational
    48346 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3681740 1) .f) (.add (.mul (.rational 9277784 1) .g) (.mul (.rational 1574592 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 9399138 1) .g) (.mul (.rational 3042508 1) .v)) .g) (.mul
    (.rational 177939 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4916112 1)
    .g) (.mul (.rational 2151898 1) .v)) .g) (.mul (.rational 267999 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1406174 1) .g) (.mul (.rational 679788 1) .v)) .g)
    (.mul (.rational 131369 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 7050526 1) .f) (.add (.mul (.rational 20731032 1) .g)
    (.mul (.rational 3581584 1) .v))) .f) (.add (.mul (.add (.mul (.rational 25166864 1) .g) (.mul
    (.rational 8396316 1) .v)) .g) (.mul (.rational 499456 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16376624 1) .g) (.mul (.rational 7556570 1) .v)) .g) (.mul (.rational
    956394 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6181654 1) .g) (.mul
    (.rational 3278568 1) .v)) .g) (.mul (.rational 646343 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1354380 1) .g) (.mul (.rational 702550 1) .v)) .g)
    (.mul (.rational 179356 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10078330 1) .f) (.add (.mul (.rational
    33823364 1) .g) (.mul (.rational 6027570 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    47774030 1) .g) (.mul (.rational 16696640 1) .v)) .g) (.mul (.rational 1013942 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 37105012 1) .g) (.mul (.rational 18405320
    1) .v)) .g) (.mul (.rational 2390248 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17338292 1) .g) (.mul (.rational 10328960 1) .v)) .g) (.mul (.rational 2119005 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4985428 1) .g) (.mul
    (.rational 3134932 1) .v)) .g) (.mul (.rational 871145 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 856240 1) .g) (.mul (.rational 504408 1) .v)) .g)
    (.mul (.rational 163433 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10755426 1) .f) (.add (.mul
    (.rational 40521324 1) .g) (.mul (.rational 7552342 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 65186890 1) .g) (.mul (.rational 24248136 1) .v)) .g) (.mul (.rational 1522827 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 58734108 1) .g) (.mul (.rational
    31875712 1) .v)) .g) (.mul (.rational 4330266 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 32634628 1) .g) (.mul (.rational 22232896 1) .v)) .g) (.mul (.rational
    4880732 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 11566354
    1) .g) (.mul (.rational 8938956 1) .v)) .g) (.mul (.rational 2796278 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2595856 1) .g) (.mul (.rational 2118384 1)
    .v)) .g) (.mul (.rational 877880 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 349510 1) .g) (.mul (.rational 291942 1) .v)) .g) (.mul (.rational 156634 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 8467408 1) .f) (.add (.mul (.rational 35352386
    1) .g) (.mul (.rational 6974808 1) .v))) .f) (.add (.mul (.add (.mul (.rational 63735886 1)
    .g) (.mul (.rational 25559336 1) .v)) .g) (.mul (.rational 1685311 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 65255260 1) .g) (.mul (.rational 39233092 1) .v)) .g) (.mul
    (.rational 5680749 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 41938810
    1) .g) (.mul (.rational 32977544 1) .v)) .g) (.mul (.rational 7910682 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17613668 1) .g) (.mul (.rational 16712576
    1) .v)) .g) (.mul (.rational 5961960 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4855066 1) .g) (.mul (.rational 5327276 1) .v)) .g) (.mul (.rational
    2704054 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 851502 1)
    .g) (.mul (.rational 1085466 1) .v)) .g) (.mul (.rational 786668 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 87422 1) .g) (.mul (.rational 138844 1) .v))
    .g) (.mul (.rational 151589 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    4783314 1) .f) (.add (.mul (.rational 21902272 1) .g) (.mul (.rational 4616792 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 43695804 1) .g) (.mul (.rational 19058116 1) .v)) .g) (.mul
    (.rational 1335732 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 50042132 1)
    .g) (.mul (.rational 33559156 1) .v)) .g) (.mul (.rational 5244852 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 36457902 1) .g) (.mul (.rational 33142800 1) .v)) .g)
    (.mul (.rational 8770928 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17659764 1) .g) (.mul (.rational 20363736 1) .v)) .g) (.mul (.rational 8261212 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5750080 1) .g) (.mul
    (.rational 8192600 1) .v)) .g) (.mul (.rational 4910592 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1234784 1) .g) (.mul (.rational 2213698 1) .v)) .g)
    (.mul (.rational 1959506 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 164732 1) .g) (.mul (.rational 400176 1) .v)) .g) (.mul (.rational 536429 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 11906 1) .g) (.mul
    (.rational 45278 1) .v)) .g) (.mul (.rational 96352 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1837650 1) .f) (.add (.mul (.rational 9148886 1) .g) (.mul
    (.rational 2073592 1) .v))) .f) (.add (.mul (.add (.mul (.rational 19991542 1) .g) (.mul
    (.rational 9531812 1) .v)) .g) (.mul (.rational 715704 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25293600 1) .g) (.mul (.rational 18963172 1) .v)) .g) (.mul (.rational
    3218280 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 20569544 1) .g)
    (.mul (.rational 21544568 1) .v)) .g) (.mul (.rational 6297710 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11265656 1) .g) (.mul (.rational 15567630 1) .v))
    .g) (.mul (.rational 7117160 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4217896 1) .g) (.mul (.rational 7556356 1) .v)) .g) (.mul (.rational 5208162 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1066360 1) .g) (.mul
    (.rational 2533420 1) .v)) .g) (.mul (.rational 2615084 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 173564 1) .g) (.mul (.rational 586920 1) .v)) .g)
    (.mul (.rational 918309 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16242 1) .g) (.mul (.rational 89618 1) .v)) .g) (.mul (.rational 219395 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 648 1) .g) (.mul (.rational
    7848 1) .v)) .g) (.mul (.rational 32519 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 430704 1) .f) (.add (.mul (.rational 2314386 1) .g) (.mul
    (.rational 566244 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5491920 1) .g) (.mul
    (.rational 2868840 1) .v)) .g) (.mul (.rational 231732 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7598990 1) .g) (.mul (.rational 6363844 1) .v)) .g) (.mul (.rational
    1174824 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6813924 1) .g)
    (.mul (.rational 8173220 1) .v)) .g) (.mul (.rational 2632200 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4155338 1) .g) (.mul (.rational 6781962 1) .v))
    .g) (.mul (.rational 3462348 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1753512 1) .g) (.mul (.rational 3844704 1) .v)) .g) (.mul (.rational 2995425 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 507714 1) .g) (.mul
    (.rational 1531404 1) .v)) .g) (.mul (.rational 1801938 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 96770 1) .g) (.mul (.rational 429316 1) .v)) .g)
    (.mul (.rational 768328 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10960 1) .g) (.mul (.rational 81518 1) .v)) .g) (.mul (.rational 228222 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 558 1) .g) (.mul (.rational
    9376 1) .v)) .g) (.mul (.rational 44337 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 484 1) .v) .g) (.mul (.rational 4912 1) (.pow .v 2))) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 46548 1) .f) (.add (.mul
    (.rational 268236 1) .g) (.mul (.rational 70992 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 686172 1) .g) (.mul (.rational 392796 1) .v)) .g) (.mul (.rational 34200 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1029520 1) .g) (.mul (.rational 960512
    1) .v)) .g) (.mul (.rational 192852 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1007644 1) .g) (.mul (.rational 1374400 1) .v)) .g) (.mul (.rational 486168 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 675788 1) .g) (.mul
    (.rational 1285276 1) .v)) .g) (.mul (.rational 728052 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 316398 1) .g) (.mul (.rational 830668 1) .v)) .g)
    (.mul (.rational 725035 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 102738 1) .g) (.mul (.rational 381284 1) .v)) .g) (.mul (.rational 507111 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 22262 1) .g) (.mul
    (.rational 124480 1) .v)) .g) (.mul (.rational 254222 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2918 1) .g) (.mul (.rational 27908 1) .v)) .g) (.mul
    (.rational 90376 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    176 1) .g) (.mul (.rational 3880 1) .v)) .g) (.mul (.rational 21717 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 252 1) .v) .g) (.mul (.rational 3161 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 210 1) (.pow .v 2)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh3022

namespace FullHigh3023
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_100_1 e g v+12*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^1+4*SmallGap.ReducedLayers.high0_001_2 e g v+4*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_1 e g v+6*SmallGap.ReducedLayers.high1_200_2 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_101_2 e g v+3*SmallGap.ReducedLayers.high1_101_3 e g
    v*e^1+1*SmallGap.ReducedLayers.high1_002_3 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 6012 1) .e) (.add (.mul (.rational 50562 1) .f)
    (.add (.mul (.rational 61566 1) .g) (.mul (.rational 10140 1) .v)))) .e) (.add (.mul (.add
    (.mul (.rational 258066 1) .f) (.add (.mul (.rational 425578 1) .g) (.mul (.rational 72288 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 254736 1) .g) (.mul (.rational 79656 1) .v)) .g)
    (.mul (.rational 4520 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    886716 1) .f) (.add (.mul (.rational 1837822 1) .g) (.mul (.rational 313668 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 1471312 1) .g) (.mul (.rational 463532 1) .v)) .g) (.mul
    (.rational 28566 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 572774 1) .g)
    (.mul (.rational 227852 1) .v)) .g) (.mul (.rational 30804 1) (.pow .v 2))) .g))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2155014 1) .f) (.add (.mul (.rational
    5361664 1) .g) (.mul (.rational 920052 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5356624
    1) .g) (.mul (.rational 1705680 1) .v)) .g) (.mul (.rational 109188 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2762388 1) .g) (.mul (.rational 1125048 1) .v)) .g)
    (.mul (.rational 157324 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    779994 1) .g) (.mul (.rational 310672 1) .v)) .g) (.mul (.rational 70388 1) (.pow .v 2)))
    (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3791424 1) .f) (.add (.mul (.rational 10977538 1) .g) (.mul (.rational 1918560 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 13102880 1) .g) (.mul (.rational 4294700 1) .v)) .g) (.mul
    (.rational 281632 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 8376996 1)
    .g) (.mul (.rational 3585848 1) .v)) .g) (.mul (.rational 512012 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3107956 1) .g) (.mul (.rational 1355976 1) .v)) .g)
    (.mul (.rational 312704 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 670318 1) .g) (.mul (.rational 211904 1) .v)) .g) (.mul (.rational 66412 1) (.pow
    .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 4858560 1) .f) (.add (.mul (.rational 16008744 1) .g) (.mul (.rational
    2902728 1) .v))) .f) (.add (.mul (.add (.mul (.rational 22157298 1) .g) (.mul (.rational
    7658544 1) .v)) .g) (.mul (.rational 517968 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16839648 1) .g) (.mul (.rational 7829132 1) .v)) .g) (.mul (.rational 1159096
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7696012 1) .g) (.mul
    (.rational 3864560 1) .v)) .g) (.mul (.rational 937276 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2165248 1) .g) (.mul (.rational 908496 1) .v)) .g)
    (.mul (.rational 316676 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 364014 1) .g) (.mul (.rational 69584 1) .v)) .g) (.mul (.rational 30588 1) (.pow .v
    2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 4495608 1) .f) (.add (.mul (.rational 16575612 1) .g) (.mul
    (.rational 3177384 1) .v))) .f) (.add (.mul (.add (.mul (.rational 26030652 1) .g) (.mul
    (.rational 9709560 1) .v)) .g) (.mul (.rational 690724 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 22845462 1) .g) (.mul (.rational 11870768 1) .v)) .g) (.mul (.rational
    1877952 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 12345080 1) .g)
    (.mul (.rational 7392868 1) .v)) .g) (.mul (.rational 1976304 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4251428 1) .g) (.mul (.rational 2450824 1) .v))
    .g) (.mul (.rational 1013012 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 926092 1) .g) (.mul (.rational 397352 1) .v)) .g) (.mul (.rational 263160 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 120554 1) .g) (.mul
    (.rational 17632 1) .v)) .g) (.mul (.rational 34572 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2926404 1) .f) (.add (.mul (.rational 11916360 1) .g) (.mul (.rational 2452536 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 20885220 1) .g) (.mul (.rational 8555040 1) .v))
    .g) (.mul (.rational 654168 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    20721400 1) .g) (.mul (.rational 12260120 1) .v)) .g) (.mul (.rational 2130552 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 12868806 1) .g) (.mul (.rational
    9335872 1) .v)) .g) (.mul (.rational 2838864 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5209912 1) .g) (.mul (.rational 4087412 1) .v)) .g) (.mul
    (.rational 2029920 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1380220 1) .g) (.mul (.rational 1045200 1) .v)) .g) (.mul (.rational 876628 1) (.pow .v 2)))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 231220 1) .g) (.mul (.rational
    153168 1) .v)) .g) (.mul (.rational 251884 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 22330 1) .g) (.mul (.rational 12080 1) .v)) .g) (.mul (.rational
    51308 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1271016 1) .f) (.add
    (.mul (.rational 5656284 1) .g) (.mul (.rational 1262880 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 10921392 1) .g) (.mul (.rational 4963464 1) .v)) .g) (.mul (.rational 414192 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 12052148 1) .g) (.mul (.rational
    8185456 1) .v)) .g) (.mul (.rational 1586568 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8424168 1) .g) (.mul (.rational 7401320 1) .v)) .g) (.mul (.rational 2584560
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3898258 1) .g)
    (.mul (.rational 4043840 1) .v)) .g) (.mul (.rational 2383056 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1206368 1) .g) (.mul (.rational 1402508 1) .v))
    .g) (.mul (.rational 1411776 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 244056 1) .g) (.mul (.rational 321336 1) .v)) .g) (.mul (.rational 580604 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 30106 1) .g) (.mul
    (.rational 50320 1) .v)) .g) (.mul (.rational 169456 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1924 1) .g) (.mul (.rational 5156 1) .v)) .g) (.mul
    (.rational 32692 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    330480 1) .f) (.add (.mul (.rational 1593648 1) .g) (.mul (.rational 387936 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 3354876 1) .g) (.mul (.rational 1697760 1) .v)) .g) (.mul
    (.rational 155520 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4065480 1)
    .g) (.mul (.rational 3168648 1) .v)) .g) (.mul (.rational 686880 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3147420 1) .g) (.mul (.rational 3315840 1) .v)) .g)
    (.mul (.rational 1322952 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1630640 1) .g) (.mul (.rational 2163040 1) .v)) .g) (.mul (.rational 1483848 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 573186 1) .g) (.mul
    (.rational 933680 1) .v)) .g) (.mul (.rational 1096608 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 134488 1) .g) (.mul (.rational 279116 1) .v)) .g)
    (.mul (.rational 569864 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19878 1) .g) (.mul (.rational 59344 1) .v)) .g) (.mul (.rational 211468 1) (.pow .v
    2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1614 1) .g) (.mul (.rational
    8616 1) .v)) .g) (.mul (.rational 53636 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 50 1) .g) (.mul (.rational 712 1) .v)) .g) (.mul (.rational 8316 1)
    (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 38880 1)
    .f) (.add (.mul (.rational 201744 1) .g) (.mul (.rational 53568 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 459144 1) .g) (.mul (.rational 258336 1) .v)) .g) (.mul (.rational 25920 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 604740 1) .g) (.mul (.rational
    537792 1) .v)) .g) (.mul (.rational 129600 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 512040 1) .g) (.mul (.rational 637560 1) .v)) .g) (.mul (.rational 287088 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 292336 1) .g) (.mul
    (.rational 480392 1) .v)) .g) (.mul (.rational 376152 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 114348 1) .g) (.mul (.rational 244768 1) .v)) .g) (.mul
    (.rational 328556 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    30262 1) .g) (.mul (.rational 88016 1) .v)) .g) (.mul (.rational 202992 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5148 1) .g) (.mul (.rational 22756 1)
    .v)) .g) (.mul (.rational 90128 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 498 1) .g) (.mul (.rational 4068 1) .v)) .g) (.mul (.rational 27972 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 20 1) .g) (.mul (.rational
    436 1) .v)) .g) (.mul (.rational 5634 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 20 1) .v) .g) (.mul (.rational 640 1) (.pow .v 2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh3023

namespace FullHigh3024
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  10*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_100_2 e g v+4*SmallGap.ReducedLayers.high0_001_3 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_2 e g v+3*SmallGap.ReducedLayers.high1_101_3 e g
    v+1*SmallGap.ReducedLayers.high1_002_4 e g v)

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

end FullHigh3024

end
end SPR.N6.Tail.CoreEndpoint
