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

namespace FullLow3020
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_0 e g v*e^2+4*SmallGap.ReducedLayers.low0_001_0 e
    g v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_0 e g v*e^2+3*SmallGap.ReducedLayers.low1_101_0 e g
    v*e^1+1*SmallGap.ReducedLayers.low1_002_0 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    40 1) .v) (.rational 1080 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 40 1) .v)
    (.rational 856 1)) .v) (.rational 9188 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 100 1)
    .v) (.rational 1352 1)) .v) (.rational 11336 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 788 1) .v) (.rational 8612 1)) .v) (.rational 49324 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2364 1) .v) (.rational 18720 1)) .v) (.rational 84990 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2564 1) .v) (.rational 13812 1)) .v) (.rational
    50988 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 7116 1) .v) (.rational 53600 1)) .v) (.rational 188067 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 24906 1) .v) (.rational 148580 1)) .v) (.rational 423345 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 33782 1) .v) (.rational 156844 1)) .v) (.rational
    362041 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22190 1) .v) (.rational
    79964 1)) .v) (.rational 147167 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 39020 1) .v) (.rational 229264 1)) .v)
    (.rational 541720 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 156080 1) .v) (.rational
    772032 1)) .v) (.rational 1527969 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 252856
    1) .v) (.rational 1049500 1)) .v) (.rational 1731647 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 212288 1) .v) (.rational 743404 1)) .v) (.rational 1015061 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 97468 1) .v) (.rational 292884 1)) .v)
    (.rational 329237 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 145024 1) .v) (.rational 709606 1)) .v) (.rational
    1217661 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 652608 1) .v) (.rational 2807378 1))
    .v) (.rational 4171915 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1225736 1) .v)
    (.rational 4641292 1)) .v) (.rational 5960468 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1244572 1) .v) (.rational 4173980 1)) .v) (.rational 4628722 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 737300 1) .v) (.rational 2217030 1)) .v)
    (.rational 2130349 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 254572 1)
    .v) (.rational 699154 1)) .v) (.rational 588767 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 385849 1)
    .v) (.rational 1632962 1)) .v) (.rational 2165353 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1929245 1) .v) (.rational 7408916 1)) .v) (.rational 8781828 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4114098 1) .v) (.rational 14369532 1)) .v) (.rational
    15225769 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4880922 1) .v)
    (.rational 15586064 1)) .v) (.rational 14794672 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3518349 1) .v) (.rational 10359718 1)) .v) (.rational 8857757 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1574649 1) .v) (.rational 4325976 1)) .v)
    (.rational 3364754 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 425896 1)
    .v) (.rational 1107276 1)) .v) (.rational 794669 1)) (.pow .g 6)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 755894 1) .v) (.rational 2831166 1)) .v) (.rational 3049895 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4157417 1) .v) (.rational 14467794 1)) .v) (.rational 14320088
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 9910819 1) .v) (.rational 32114992 1))
    .v) (.rational 29235685 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    13418058 1) .v) (.rational 40646170 1)) .v) (.rational 34124656 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11346668 1) .v) (.rational 32319918 1)) .v) (.rational
    25146956 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6197653 1) .v)
    (.rational 16726750 1)) .v) (.rational 12148951 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2177571 1) .v) (.rational 5618060 1)) .v) (.rational 3844254 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 471512 1) .v) (.rational 1173462 1)) .v)
    (.rational 763937 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1103619 1) .v)
    (.rational 3711298 1)) .v) (.rational 3376959 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    6621714 1) .v) (.rational 21067216 1)) .v) (.rational 18014123 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17435219 1) .v) (.rational 52569198 1)) .v) (.rational 42288248 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 26477050 1) .v) (.rational 75866192
    1)) .v) (.rational 57545142 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    25617149 1) .v) (.rational 70029258 1)) .v) (.rational 50265645 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16445150 1) .v) (.rational 43100800 1)) .v) (.rational
    29417772 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7060121 1) .v)
    (.rational 17838814 1)) .v) (.rational 11644053 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1987094 1) .v) (.rational 4867268 1)) .v) (.rational 3056045 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 346868 1) .v) (.rational 827392 1)) .v)
    (.rational 502051 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1200572 1) .v) (.rational 3659262 1)) .v) (.rational 2896559 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7803718 1) .v) (.rational 22824122 1)) .v) (.rational 17283055 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 22477284 1) .v) (.rational 63158090 1)) .v)
    (.rational 45787190 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 37784164 1)
    .v) (.rational 102183962 1)) .v) (.rational 71033384 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 41070050 1) .v) (.rational 107169232 1)) .v) (.rational 71601650 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 30195342 1) .v) (.rational 76257912
    1)) .v) (.rational 49114098 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    15241280 1) .v) (.rational 37379410 1)) .v) (.rational 23285518 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5240236 1) .v) (.rational 12521274 1)) .v) (.rational
    7569338 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1187978 1) .v)
    (.rational 2772566 1)) .v) (.rational 1630465 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 165680 1) .v) (.rational 377938 1)) .v) (.rational 216321 1)) (.pow .g 9))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 961081 1) .v) (.rational
    2672286 1)) .v) (.rational 1881081 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 6727567 1)
    .v) (.rational 18155600 1)) .v) (.rational 12395854 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 21030459 1) .v) (.rational 55123154 1)) .v) (.rational 36520406 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 38724383 1) .v) (.rational 98691800 1)) .v)
    (.rational 63504711 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 46632224 1)
    .v) (.rational 115728608 1)) .v) (.rational 72420854 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 38527956 1) .v) (.rational 93275624 1)) .v) (.rational 56860778 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 22264991 1) .v) (.rational 52685462
    1)) .v) (.rational 31343673 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8991275 1) .v) (.rational 20832416 1)) .v) (.rational 12115557 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2485529 1) .v) (.rational 5645534 1)) .v) (.rational
    3213087 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 448951 1) .v)
    (.rational 999556 1)) .v) (.rational 556600 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 48380 1) .v) (.rational 105300 1)) .v) (.rational 57215 1)) (.pow .g 10))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 550402 1) .v)
    (.rational 1402706 1)) .v) (.rational 892510 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    4128015 1) .v) (.rational 10306682 1)) .v) (.rational 6429017 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13912389 1) .v) (.rational 34042316 1)) .v) (.rational 20820576 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 27822301 1) .v) (.rational 66757502
    1)) .v) (.rational 40049440 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    36708667 1) .v) (.rational 86438658 1)) .v) (.rational 50898010 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 33590458 1) .v) (.rational 77695736 1)) .v) (.rational
    44939967 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 21793956 1) .v)
    (.rational 49566156 1)) .v) (.rational 28185879 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10059261 1) .v) (.rational 22513556 1)) .v) (.rational 12595308 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3257401 1) .v) (.rational 7177088 1)) .v)
    (.rational 3951434 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 714571 1)
    .v) (.rational 1549178 1)) .v) (.rational 838876 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 99143 1) .v) (.rational 211024 1)) .v) (.rational 112141 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7578 1) .v) (.rational 15746 1)) .v) (.rational
    8168 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 213613 1) .v) (.rational 500774 1)) .v) (.rational 291541 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1708904 1) .v) (.rational 3955816 1)) .v) (.rational
    2276498 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6174427 1) .v) (.rational
    14114538 1)) .v) (.rational 8029081 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13315169 1) .v) (.rational 30065436 1)) .v) (.rational 16907520 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 19075256 1) .v) (.rational 42558540 1)) .v)
    (.rational 23664823 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19109471 1)
    .v) (.rational 42143804 1)) .v) (.rational 23177976 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13711752 1) .v) (.rational 29903180 1)) .v) (.rational 16270699 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 7089077 1) .v) (.rational 15292280
    1)) .v) (.rational 8233478 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2614635 1) .v) (.rational 5578846 1)) .v) (.rational 2971904 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 668405 1) .v) (.rational 1409860 1)) .v) (.rational 742634 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 111749 1) .v) (.rational 232650 1))
    .v) (.rational 120984 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 10862 1)
    .v) (.rational 22244 1)) .v) (.rational 11382 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 456 1) .v) (.rational 912 1)) .v) (.rational 456 1)) (.pow .g 12)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    50376 1) .v) (.rational 108948 1)) .v) (.rational 58572 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 428196 1) .v) (.rational 920604 1)) .v) (.rational 492408 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1650530 1) .v) (.rational 3527658 1)) .v) (.rational 1877128 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3815055 1) .v) (.rational 8106150
    1)) .v) (.rational 4291095 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5889689 1) .v) (.rational 12442034 1)) .v) (.rational 6552345 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6398535 1) .v) (.rational 13440252 1)) .v) (.rational
    7041717 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5016509 1) .v)
    (.rational 10478346 1)) .v) (.rational 5461837 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2859879 1) .v) (.rational 5940336 1)) .v) (.rational 3080457 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1176445 1) .v) (.rational 2429710 1)) .v)
    (.rational 1253265 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 340389 1)
    .v) (.rational 698744 1)) .v) (.rational 358355 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 65689 1) .v) (.rational 133924 1)) .v) (.rational 68235 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7578 1) .v) (.rational 15322 1)) .v) (.rational
    7744 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 394 1) .v) (.rational 788
    1)) .v) (.rational 394 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5454 1) .v) (.rational 10908 1)) .v)
    (.rational 5454 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 49086 1) .v) (.rational 98172
    1)) .v) (.rational 49086 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 200997 1) .v)
    (.rational 401994 1)) .v) (.rational 200997 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 495360 1) .v) (.rational 990720 1)) .v) (.rational 495360 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 818806 1) .v) (.rational 1637612 1)) .v)
    (.rational 818806 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 956998 1) .v)
    (.rational 1913996 1)) .v) (.rational 956998 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 811648 1) .v) (.rational 1623296 1)) .v) (.rational 811648 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 503786 1) .v) (.rational 1007572 1)) .v)
    (.rational 503786 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 227360 1) .v)
    (.rational 454720 1)) .v) (.rational 227360 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 72836 1) .v) (.rational 145672 1)) .v) (.rational 72836 1)) (.pow .g 9))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 15739 1) .v) (.rational 31478 1)) .v) (.rational
    15739 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 2062 1) .v) (.rational
    4124 1)) .v) (.rational 2062 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    124 1) .v) (.rational 248 1)) .v) (.rational 124 1)) (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3020

namespace FullLow3021
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_0 e g v*e^1+6*SmallGap.ReducedLayers.low0_100_1
    e g v*e^2+4*SmallGap.ReducedLayers.low0_001_0 e g v+4*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.low1_200_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^2+3*SmallGap.ReducedLayers.low1_101_0 e g v+3*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^1+1*SmallGap.ReducedLayers.low1_002_1 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 220 1) .v)
    (.rational 6500 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 180 1) .v) (.rational
    4052 1)) .v) (.rational 51151 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 450 1) .v)
    (.rational 6164 1)) .v) (.rational 61248 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 3178 1) .v) (.rational 36404 1)) .v) (.rational 253409 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9534 1) .v) (.rational 75892 1)) .v) (.rational 420566 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10344 1) .v) (.rational 52008 1)) .v)
    (.rational 237691 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 26204 1) .v) (.rational 207952 1)) .v) (.rational 890184 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 91714 1) .v) (.rational 556230 1)) .v) (.rational 1923811 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 124398 1) .v) (.rational 558666 1)) .v)
    (.rational 1551526 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 81710 1) .v)
    (.rational 267066 1)) .v) (.rational 578275 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 132582 1) .v) (.rational 830048 1))
    .v) (.rational 2361210 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 530328 1) .v)
    (.rational 2718692 1)) .v) (.rational 6402700 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 858984 1) .v) (.rational 3573814 1)) .v) (.rational 6894385 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 720804 1) .v) (.rational 2438618 1)) .v) (.rational
    3785474 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 330618 1) .v)
    (.rational 927122 1)) .v) (.rational 1135655 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 456476 1) .v)
    (.rational 2411494 1)) .v) (.rational 4883293 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2054142 1) .v) (.rational 9343222 1)) .v) (.rational 16159440 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3857416 1) .v) (.rational 15095848 1)) .v) (.rational 22160972 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3914960 1) .v) (.rational 13262790
    1)) .v) (.rational 16430451 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2317344 1) .v) (.rational 6899908 1)) .v) (.rational 7208397 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 798958 1) .v) (.rational 2144572 1)) .v) (.rational 1911603 1))
    (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1122652 1) .v) (.rational 5188600 1)) .v) (.rational
    7958011 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5613260 1) .v) (.rational 23171354
    1)) .v) (.rational 31356012 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11970224 1)
    .v) (.rational 44220732 1)) .v) (.rational 52692070 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14201336 1) .v) (.rational 47238904 1)) .v) (.rational 49586222 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10236556 1) .v) (.rational 31002642
    1)) .v) (.rational 28816540 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4580684 1) .v) (.rational 12837360 1)) .v) (.rational 10694272 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1238260 1) .v) (.rational 3275714 1)) .v) (.rational
    2493173 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2015752 1) .v) (.rational 8308070
    1)) .v) (.rational 10172066 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 11086636 1) .v)
    (.rational 41935554 1)) .v) (.rational 46658859 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26437240 1) .v) (.rational 92000732 1)) .v) (.rational 93042021 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 35817810 1) .v) (.rational 115251994 1)) .v)
    (.rational 106207002 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 30324416
    1) .v) (.rational 90936002 1)) .v) (.rational 76790424 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16592128 1) .v) (.rational 46862952 1)) .v) (.rational 36600434 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5842808 1) .v) (.rational 15736950
    1)) .v) (.rational 11507341 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1268410 1) .v) (.rational 3298892 1)) .v) (.rational 2287987 1)) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 2655212 1) .v) (.rational 9857956 1)) .v) (.rational
    10044498 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 15931272 1) .v) (.rational 55405280
    1)) .v) (.rational 52581622 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 41976046 1)
    .v) (.rational 137039930 1)) .v) (.rational 121241422 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 63843570 1) .v) (.rational 196394150 1)) .v) (.rational 162383240 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 61933244 1) .v) (.rational
    180488096 1)) .v) (.rational 140083114 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 39915548 1) .v) (.rational 110961816 1)) .v) (.rational 81350790 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 17229778 1) .v) (.rational 46047572 1)) .v)
    (.rational 32131173 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4883918 1)
    .v) (.rational 12644980 1)) .v) (.rational 8461414 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 860080 1) .v) (.rational 2170090 1)) .v) (.rational 1400259 1)) (.pow
    .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2541884 1) .v) (.rational
    8546266 1)) .v) (.rational 7477530 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 16522246
    1) .v) (.rational 52866486 1)) .v) (.rational 43934624 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 47641684 1) .v) (.rational 145299938 1)) .v) (.rational 114779892 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 80284556 1) .v) (.rational 233982374 1))
    .v) (.rational 176012778 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    87634254 1) .v) (.rational 244925816 1)) .v) (.rational 175964979 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 64837032 1) .v) (.rational 174537240 1)) .v) (.rational
    120227256 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 33016032 1) .v)
    (.rational 86014654 1)) .v) (.rational 57061068 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11485776 1) .v) (.rational 29090532 1)) .v) (.rational 18663815 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2643866 1) .v) (.rational 6530680 1)) .v)
    (.rational 4063590 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 375912 1)
    .v) (.rational 905788 1)) .v) (.rational 546473 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1723162 1) .v) (.rational 5261636 1)) .v) (.rational
    4044618 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 12062134 1) .v) (.rational 35495982
    1)) .v) (.rational 26314418 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 37764284 1)
    .v) (.rational 107202672 1)) .v) (.rational 76673248 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 69777962 1) .v) (.rational 191375218 1)) .v) (.rational 132187736 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 84518124 1) .v) (.rational
    224433412 1)) .v) (.rational 149961389 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 70440162 1) .v) (.rational 181572336 1)) .v) (.rational 117616626 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 41205612 1) .v) (.rational 103387864 1)) .v)
    (.rational 65080830 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 16914726 1)
    .v) (.rational 41411430 1)) .v) (.rational 25385898 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4777384 1) .v) (.rational 11428746 1)) .v) (.rational 6830561 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 887258 1) .v) (.rational 2072452 1)) .v)
    (.rational 1206498 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 99100 1) .v)
    (.rational 224898 1)) .v) (.rational 126916 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 785068 1) .v) (.rational 2180426 1)) .v)
    (.rational 1497010 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5888010 1) .v) (.rational
    15923696 1)) .v) (.rational 10668578 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    19883434 1) .v) (.rational 52381642 1)) .v) (.rational 34246872 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 39940836 1) .v) (.rational 102576080 1)) .v) (.rational
    65467184 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 53093422 1) .v)
    (.rational 133071460 1)) .v) (.rational 82967104 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 49127892 1) .v) (.rational 120327110 1)) .v) (.rational 73358377 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 32374834 1) .v) (.rational 77593918 1)) .v)
    (.rational 46305947 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 15258642 1)
    .v) (.rational 35825818 1)) .v) (.rational 20945586 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5078522 1) .v) (.rational 11684994 1)) .v) (.rational 6694044 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1154484 1) .v) (.rational 2600130 1)) .v)
    (.rational 1457837 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 167774 1)
    .v) (.rational 368420 1)) .v) (.rational 201421 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 13632 1) .v) (.rational 28910 1)) .v) (.rational 15278 1)) (.pow .g 11))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    215886 1) .v) (.rational 545808 1)) .v) (.rational 338682 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1727088 1) .v) (.rational 4288980 1)) .v) (.rational 2621064 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6255406 1) .v) (.rational 15257972 1)) .v) (.rational
    9180506 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 13563802 1) .v)
    (.rational 32500438 1)) .v) (.rational 19251142 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 19610252 1) .v) (.rational 46174480 1)) .v) (.rational 26927306 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19914590 1) .v) (.rational 46099938 1)) .v)
    (.rational 26472634 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 14562658 1)
    .v) (.rational 33157654 1)) .v) (.rational 18753538 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7722176 1) .v) (.rational 17299228 1)) .v) (.rational 9637602 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2943952 1) .v) (.rational 6487832 1)) .v)
    (.rational 3559266 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 785422 1)
    .v) (.rational 1701086 1)) .v) (.rational 918022 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 138744 1) .v) (.rational 294594 1)) .v) (.rational 156016 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 14490 1) .v) (.rational 30010 1)) .v) (.rational
    15520 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 670 1) .v) (.rational
    1340 1)) .v) (.rational 670 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 27108 1) .v) (.rational 62412 1)) .v)
    (.rational 35304 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 230418 1) .v) (.rational
    525048 1)) .v) (.rational 294630 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 890756
    1) .v) (.rational 2008110 1)) .v) (.rational 1117354 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2072310 1) .v) (.rational 4620660 1)) .v) (.rational 2548350 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3234106 1) .v) (.rational 7130868 1)) .v)
    (.rational 3896762 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3570346 1)
    .v) (.rational 7783874 1)) .v) (.rational 4213528 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2862030 1) .v) (.rational 6169388 1)) .v) (.rational 3307358 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1680404 1) .v) (.rational 3581386 1)) .v)
    (.rational 1900982 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 718040 1)
    .v) (.rational 1512900 1)) .v) (.rational 794860 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 218016 1) .v) (.rational 453998 1)) .v) (.rational 235982 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 44698 1) .v) (.rational 91942 1)) .v) (.rational
    47244 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 5562 1) .v) (.rational
    11290 1)) .v) (.rational 5728 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    318 1) .v) (.rational 636 1)) .v) (.rational 318 1)) (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3021

namespace FullLow3022
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_0 e g v+12*SmallGap.ReducedLayers.low0_100_1 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_100_2 e g v*e^2+4*SmallGap.ReducedLayers.low0_001_1 e g
    v+4*SmallGap.ReducedLayers.low0_001_2 e g v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_0 e g v+6*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_200_2 e g v*e^2+3*SmallGap.ReducedLayers.low1_101_1 e g
    v+3*SmallGap.ReducedLayers.low1_101_2 e g v*e^1+1*SmallGap.ReducedLayers.low1_002_2 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 480 1) .v) (.rational
    16400 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 300 1) .v) (.rational 7800 1))
    .v) (.rational 120321 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 750 1) .v) (.rational
    11400 1)) .v) (.rational 139812 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 4922 1) .v) (.rational 62824 1)) .v) (.rational 551707 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14766 1) .v) (.rational 124448 1)) .v) (.rational 880195 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 16026 1) .v) (.rational 76924 1)) .v) (.rational
    465101 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 37820 1) .v) (.rational 327892 1)) .v) (.rational 1781651 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 132370 1) .v) (.rational 836928 1)) .v) (.rational 3680529 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 179550 1) .v) (.rational 781952 1)) .v) (.rational
    2766324 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 117950 1) .v)
    (.rational 335404 1)) .v) (.rational 914469 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 178112 1) .v) (.rational 1214008
    1)) .v) (.rational 4322898 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 712448 1) .v)
    (.rational 3831728 1)) .v) (.rational 11202149 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1153724 1) .v) (.rational 4799106 1)) .v) (.rational 11318488 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 967604 1) .v) (.rational 3087222 1)) .v) (.rational
    5674248 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 443348 1) .v)
    (.rational 1103274 1)) .v) (.rational 1500198 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 567828 1) .v)
    (.rational 3288492 1)) .v) (.rational 8140804 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2555226 1) .v) (.rational 12395996 1)) .v) (.rational 25860321 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4796824 1) .v) (.rational 19397504 1)) .v) (.rational 33691756 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4864496 1) .v) (.rational 16463212
    1)) .v) (.rational 23462294 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2875104 1) .v) (.rational 8289848 1)) .v) (.rational 9592433 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 988714 1) .v) (.rational 2515028 1)) .v) (.rational 2382371 1))
    (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1279566 1) .v) (.rational 6550752 1)) .v) (.rational
    11985903 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 6397830 1) .v) (.rational 28670148
    1)) .v) (.rational 45642432 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 13639420 1)
    .v) (.rational 53546900 1)) .v) (.rational 73790281 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16170700 1) .v) (.rational 55991012 1)) .v) (.rational 66610990 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11641666 1) .v) (.rational 36063070
    1)) .v) (.rational 37177202 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5198434 1) .v) (.rational 14733430 1)) .v) (.rational 13356575 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1400188 1) .v) (.rational 3735322 1)) .v) (.rational
    3058294 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2067860 1) .v) (.rational 9530808
    1)) .v) (.rational 13634307 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 11373230 1) .v)
    (.rational 47379768 1)) .v) (.rational 60842139 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27118058 1) .v) (.rational 102382004 1)) .v) (.rational 117897396 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 36732036 1) .v) (.rational 126484476 1)) .v)
    (.rational 130869656 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 31085168
    1) .v) (.rational 98679668 1)) .v) (.rational 92341650 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16994530 1) .v) (.rational 50482828 1)) .v) (.rational 43247462 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5974942 1) .v) (.rational 16905384
    1)) .v) (.rational 13481974 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1292964 1) .v) (.rational 3546548 1)) .v) (.rational 2678985 1)) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 2384464 1) .v) (.rational 9969944 1)) .v) (.rational
    11676852 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 14306784 1) .v) (.rational 55361832
    1)) .v) (.rational 59782693 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 37703756 1)
    .v) (.rational 135406270 1)) .v) (.rational 134892493 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 57373260 1) .v) (.rational 192219662 1)) .v) (.rational 177160882 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 55700686 1) .v) (.rational
    175445400 1)) .v) (.rational 150448792 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 35937808 1) .v) (.rational 107492612 1)) .v) (.rational 86492566 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 15532220 1) .v) (.rational 44621532 1)) .v)
    (.rational 34038299 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4407400 1)
    .v) (.rational 12295744 1)) .v) (.rational 8980830 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 776186 1) .v) (.rational 2119938 1)) .v) (.rational 1492188 1)) (.pow
    .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1915948 1) .v) (.rational
    7288964 1)) .v) (.rational 7237437 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 12453662
    1) .v) (.rational 44634996 1)) .v) (.rational 41748973 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 35931540 1) .v) (.rational 121604756 1)) .v) (.rational 107229540 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 60633188 1) .v) (.rational 194508192 1))
    .v) (.rational 162066514 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    66335158 1) .v) (.rational 202788680 1)) .v) (.rational 160288377 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 49244724 1) .v) (.rational 144409576 1)) .v) (.rational
    108866302 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 25192480 1) .v)
    (.rational 71377340 1)) .v) (.rational 51635916 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8816720 1) .v) (.rational 24295340 1)) .v) (.rational 16960060 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2044410 1) .v) (.rational 5503080 1)) .v)
    (.rational 3718928 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 293064 1)
    .v) (.rational 770276 1)) .v) (.rational 503129 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1020108 1) .v) (.rational 3534488 1)) .v) (.rational
    3051240 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7140756 1) .v) (.rational 23632384
    1)) .v) (.rational 19542157 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 22380286 1)
    .v) (.rational 70859380 1)) .v) (.rational 56151849 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 41451888 1) .v) (.rational 125876712 1)) .v) (.rational 95721954 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 50411134 1) .v) (.rational
    147329776 1)) .v) (.rational 107762469 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 42268048 1) .v) (.rational 119376516 1)) .v) (.rational 84245153 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 24935522 1) .v) (.rational 68346432 1)) .v)
    (.rational 46692682 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 10353680 1)
    .v) (.rational 27640452 1)) .v) (.rational 18332288 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2968944 1) .v) (.rational 7733098 1)) .v) (.rational 4985023 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 562418 1) .v) (.rational 1426386 1)) .v)
    (.rational 891752 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 64426 1) .v)
    (.rational 157658 1)) .v) (.rational 94793 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 323964 1) .v) (.rational 1022124 1)) .v)
    (.rational 780846 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2429730 1) .v) (.rational
    7403496 1)) .v) (.rational 5488500 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    8218682 1) .v) (.rational 24204464 1)) .v) (.rational 17411163 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16570528 1) .v) (.rational 47232708 1)) .v) (.rational
    32983343 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 22164326 1) .v)
    (.rational 61262912 1)) .v) (.rational 41572661 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 20699976 1) .v) (.rational 55604304 1)) .v) (.rational 36718579 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 13820726 1) .v) (.rational 36157284 1)) .v)
    (.rational 23269247 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 6631464 1)
    .v) (.rational 16921896 1)) .v) (.rational 10624213 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2261018 1) .v) (.rational 5627412 1)) .v) (.rational 3446297 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 530920 1) .v) (.rational 1285164 1)) .v)
    (.rational 765819 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 80614 1) .v)
    (.rational 188272 1)) .v) (.rational 108428 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6958 1) .v) (.rational 15392 1)) .v) (.rational 8434 1)) (.pow .g 11)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 46548
    1) .v) (.rational 133584 1)) .v) (.rational 91416 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 372384 1) .v) (.rational 1041564 1)) .v) (.rational 698766 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1352082 1) .v) (.rational 3685640 1)) .v) (.rational 2422528 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2947854 1) .v) (.rational 7833444
    1)) .v) (.rational 5042843 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4301092 1) .v) (.rational 11148132 1)) .v) (.rational 7028579 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4427922 1) .v) (.rational 11201740 1)) .v) (.rational
    6917461 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3301078 1) .v)
    (.rational 8154818 1)) .v) (.rational 4933011 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1797532 1) .v) (.rational 4335814 1)) .v) (.rational 2568557 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 710390 1) .v) (.rational 1671132 1)) .v)
    (.rational 968435 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 198986 1) .v)
    (.rational 455164 1)) .v) (.rational 257357 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 37560 1) .v) (.rational 83074 1)) .v) (.rational 45597 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4298 1) .v) (.rational 9106 1)) .v) (.rational 4808
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 226 1) .v) (.rational 452 1))
    .v) (.rational 226 1)) (.pow .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3022

namespace FullLow3023
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_1 e g v+12*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_100_3 e g v*e^2+4*SmallGap.ReducedLayers.low0_001_2 e g
    v+4*SmallGap.ReducedLayers.low0_001_3 e g v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_1 e g v+6*SmallGap.ReducedLayers.low1_200_2 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_200_3 e g v*e^2+3*SmallGap.ReducedLayers.low1_101_2 e g
    v+3*SmallGap.ReducedLayers.low1_101_3 e g v*e^1+1*SmallGap.ReducedLayers.low1_002_3 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 520 1) .v) (.rational 22200 1)) .e)
    (.add (.mul (.add (.mul (.add (.mul (.rational 220 1) .v) (.rational 7648 1)) .v) (.rational
    153287 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 550 1) .v) (.rational 10736 1)) .v)
    (.rational 173048 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3462 1) .v) (.rational 55864 1)) .v) (.rational 654651 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10386 1) .v) (.rational 104320 1)) .v) (.rational 1004196 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 11276 1) .v) (.rational 55952 1)) .v) (.rational 494349 1)) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25452 1)
    .v) (.rational 266944 1)) .v) (.rational 1947306 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 89082 1) .v) (.rational 642334 1)) .v) (.rational 3838005 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 120854 1) .v) (.rational 540530 1)) .v) (.rational 2664366 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 79430 1) .v) (.rational 189982 1))
    .v) (.rational 749809 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 113858 1) .v) (.rational 915744 1)) .v) (.rational 4308530
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 455432 1) .v) (.rational 2754336 1)) .v)
    (.rational 10628798 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 737544 1) .v)
    (.rational 3218232 1)) .v) (.rational 9965523 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 618620 1) .v) (.rational 1879504 1)) .v) (.rational 4419620 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 283486 1) .v) (.rational 596060 1)) .v)
    (.rational 941537 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 340812 1) .v) (.rational 2306068 1)) .v) (.rational
    7323751 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1533654 1) .v) (.rational 8389756 1))
    .v) (.rational 22230656 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2878912 1) .v)
    (.rational 12561256 1)) .v) (.rational 27252828 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2919140 1) .v) (.rational 10127186 1)) .v) (.rational 17497607 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1724828 1) .v) (.rational 4840034 1)) .v)
    (.rational 6458721 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 592746 1)
    .v) (.rational 1409902 1)) .v) (.rational 1442615 1)) (.pow .g 5)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    707984 1) .v) (.rational 4219404 1)) .v) (.rational 9591793 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3539920 1) .v) (.rational 18004720 1)) .v) (.rational 35150454 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7546262 1) .v) (.rational 32689716 1)) .v) (.rational
    54304574 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8945528 1) .v)
    (.rational 33200284 1)) .v) (.rational 46578190 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6438172 1) .v) (.rational 20830668 1)) .v) (.rational 24694910 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2872832 1) .v) (.rational 8353936 1)) .v)
    (.rational 8517066 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 772442 1)
    .v) (.rational 2101496 1)) .v) (.rational 1912681 1)) (.pow .g 6)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1024440 1) .v) (.rational 5479300 1)) .v) (.rational 9471018 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5634420 1) .v) (.rational 26741466 1)) .v) (.rational 40973837
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 13435152 1) .v) (.rational 56708854 1))
    .v) (.rational 76815623 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    18200034 1) .v) (.rational 68841800 1)) .v) (.rational 82526976 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15403720 1) .v) (.rational 52958676 1)) .v) (.rational
    56619342 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8420468 1) .v)
    (.rational 26864252 1)) .v) (.rational 26033302 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2957924 1) .v) (.rational 8977676 1)) .v) (.rational 8067735 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 638286 1) .v) (.rational 1888086 1)) .v)
    (.rational 1608727 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1010220 1)
    .v) (.rational 4882912 1)) .v) (.rational 6762814 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6061320 1) .v) (.rational 26736908 1)) .v) (.rational 33769400 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15976972 1) .v) (.rational 64535448 1)) .v) (.rational
    74345848 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 24322760 1) .v)
    (.rational 90591464 1)) .v) (.rational 95507532 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 23630178 1) .v) (.rational 82040328 1)) .v) (.rational 79744272 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 15258672 1) .v) (.rational 50097308 1)) .v)
    (.rational 45418946 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 6598524 1)
    .v) (.rational 20825328 1)) .v) (.rational 17857549 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1871292 1) .v) (.rational 5766096 1)) .v) (.rational 4735840 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 328306 1) .v) (.rational 998532 1)) .v)
    (.rational 790775 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    644616 1) .v) (.rational 2827904 1)) .v) (.rational 3270082 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4190004 1) .v) (.rational 17122372 1)) .v) (.rational 18476698 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 12092688 1) .v) (.rational 46185100 1)) .v)
    (.rational 46552770 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 20419740 1)
    .v) (.rational 73301428 1)) .v) (.rational 69230324 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 22364508 1) .v) (.rational 76067404 1)) .v) (.rational 67690783 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 16627302 1) .v) (.rational 54123760
    1)) .v) (.rational 45727318 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8520640 1) .v) (.rational 26834660 1)) .v) (.rational 21708474 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2986256 1) .v) (.rational 9190314 1)) .v) (.rational
    7170933 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 692408 1) .v)
    (.rational 2095926 1)) .v) (.rational 1582848 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 98784 1) .v) (.rational 294034 1)) .v) (.rational 214185 1)) (.pow .g 9))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 238896 1) .v) (.rational
    956988 1)) .v) (.rational 952884 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1672272 1)
    .v) (.rational 6336072 1)) .v) (.rational 5994432 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5242356 1) .v) (.rational 18841412 1)) .v) (.rational 16950830 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9714600 1) .v) (.rational 33267100 1)) .v)
    (.rational 28524496 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11824068 1)
    .v) (.rational 38808776 1)) .v) (.rational 31831939 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9925656 1) .v) (.rational 31443744 1)) .v) (.rational 24790542 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5864102 1) .v) (.rational 18060912
    1)) .v) (.rational 13757428 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2438816 1) .v) (.rational 7348000 1)) .v) (.rational 5430298 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 700298 1) .v) (.rational 2070716 1)) .v) (.rational 1486887 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 132662 1) .v) (.rational 383984 1))
    .v) (.rational 266958 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 15114 1)
    .v) (.rational 42256 1)) .v) (.rational 28090 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 38880 1) .v) (.rational 143568 1)) .v)
    (.rational 125928 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 291600 1) .v) (.rational
    1030212 1)) .v) (.rational 870804 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 986184
    1) .v) (.rational 3342232 1)) .v) (.rational 2723414 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1987596 1) .v) (.rational 6485336 1)) .v) (.rational 5101202 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2656872 1) .v) (.rational 8384712 1)) .v)
    (.rational 6380868 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2478960 1)
    .v) (.rational 7605766 1)) .v) (.rational 5616587 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1652856 1) .v) (.rational 4955538 1)) .v) (.rational 3562187 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 791586 1) .v) (.rational 2328640 1)) .v)
    (.rational 1633438 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 269244 1)
    .v) (.rational 778200 1)) .v) (.rational 533034 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 63054 1) .v) (.rational 178306 1)) .v) (.rational 118905 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9558 1) .v) (.rational 26026 1)) .v) (.rational
    16723 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 828 1) .v) (.rational
    2076 1)) .v) (.rational 1248 1)) (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3023

namespace FullLow3024
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_2 e g v+12*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_100_4 e g v*e^2+4*SmallGap.ReducedLayers.low0_001_3 e g
    v+4*SmallGap.ReducedLayers.low0_001_4 e g v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_2 e g v+6*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_200_4 e g v*e^2+3*SmallGap.ReducedLayers.low1_101_3 e g
    v+3*SmallGap.ReducedLayers.low1_101_4 e g v*e^1+1*SmallGap.ReducedLayers.low1_002_4 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 280 1) .v) (.rational 17000 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 60 1) .v) (.rational 3824 1)) .v) (.rational 111625 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 150 1) .v) (.rational 5168 1)) .v) (.rational 122712
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 930 1) .v) (.rational
    25812 1)) .v) (.rational 448137 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2790 1) .v)
    (.rational 45264 1)) .v) (.rational 662771 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3030 1) .v) (.rational 20104 1)) .v) (.rational 305059 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6720 1) .v) (.rational 114104
    1)) .v) (.rational 1236104 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 23520 1) .v)
    (.rational 256196 1)) .v) (.rational 2329374 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31920 1) .v) (.rational 186020 1)) .v) (.rational 1492901 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21000 1) .v) (.rational 42400 1)) .v) (.rational
    345520 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 29310 1) .v) (.rational 364804 1)) .v) (.rational 2499612 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 117240 1) .v) (.rational 1033924 1)) .v) (.rational 5875084
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 189960 1) .v) (.rational 1095924 1)) .v)
    (.rational 5095661 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 159540 1)
    .v) (.rational 541572 1)) .v) (.rational 1949679 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 73290 1) .v) (.rational 128828 1)) .v) (.rational 285427 1)) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 84480 1) .v) (.rational 856112 1)) .v) (.rational 3816487 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 380160 1) .v) (.rational 2978920 1)) .v) (.rational 11064370 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 714120 1) .v) (.rational 4200232 1)) .v)
    (.rational 12720372 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 725340 1)
    .v) (.rational 3133860 1)) .v) (.rational 7443942 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 429900 1) .v) (.rational 1370188 1)) .v) (.rational 2407638 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 148440 1) .v) (.rational 369256 1)) .v)
    (.rational 458534 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 165600 1) .v) (.rational 1432048 1)) .v)
    (.rational 4377095 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 828000 1) .v) (.rational
    5917280 1)) .v) (.rational 15414713 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1766850 1) .v) (.rational 10349620 1)) .v) (.rational 22696300 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2099400 1) .v) (.rational 10098508 1)) .v) (.rational
    18421828 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1517160 1) .v)
    (.rational 6106076 1)) .v) (.rational 9242366 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 681180 1) .v) (.rational 2387484 1)) .v) (.rational 3063790 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 184710 1) .v) (.rational 596236 1)) .v)
    (.rational 681571 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 218520 1) .v) (.rational
    1630080 1)) .v) (.rational 3633996 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1201860 1)
    .v) (.rational 7770000 1)) .v) (.rational 15212928 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2869980 1) .v) (.rational 16082920 1)) .v) (.rational 27536568 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3900960 1) .v) (.rational 19094528 1)) .v)
    (.rational 28600332 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3320640 1)
    .v) (.rational 14448872 1)) .v) (.rational 19112336 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1830780 1) .v) (.rational 7278940 1)) .v) (.rational 8685154 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 650580 1) .v) (.rational 2443044 1)) .v)
    (.rational 2705455 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 142440 1)
    .v) (.rational 520448 1)) .v) (.rational 547484 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 185220 1) .v) (.rational 1185528 1)) .v) (.rational 2040012 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1111320 1) .v) (.rational 6377832 1)) .v) (.rational
    9916872 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2935440 1) .v) (.rational
    15146984 1)) .v) (.rational 21272158 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4490100 1) .v) (.rational 20997520 1)) .v) (.rational 26732856 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4397310 1) .v) (.rational 18895492 1)) .v)
    (.rational 22013800 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2873160 1)
    .v) (.rational 11561908 1)) .v) (.rational 12509560 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1262520 1) .v) (.rational 4859572 1)) .v) (.rational 4965237 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 365400 1) .v) (.rational 1370172 1)) .v)
    (.rational 1338789 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 65670 1) .v)
    (.rational 242188 1)) .v) (.rational 226869 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 90720 1) .v) (.rational 493344 1)) .v) (.rational 686196 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 589680 1) .v) (.rational 2948400 1)) .v) (.rational
    3792744 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1706760 1) .v) (.rational
    7868736 1)) .v) (.rational 9368352 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2900700 1) .v) (.rational 12408480 1)) .v) (.rational 13722432 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3211380 1) .v) (.rational 12872520 1)) .v)
    (.rational 13313677 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2425680 1)
    .v) (.rational 9226536 1)) .v) (.rational 9008778 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1270200 1) .v) (.rational 4646200 1)) .v) (.rational 4324584 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 457800 1) .v) (.rational 1627980 1)) .v)
    (.rational 1454346 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 109860 1)
    .v) (.rational 381628 1)) .v) (.rational 327373 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16290 1) .v) (.rational 54984 1)) .v) (.rational 44886 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 19440 1) .v) (.rational 88992
    1)) .v) (.rational 103752 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 136080 1) .v)
    (.rational 584064 1)) .v) (.rational 640836 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 428220 1) .v) (.rational 1726200 1)) .v) (.rational 1784148 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 800280 1) .v) (.rational 3041784 1)) .v) (.rational
    2969556 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 987840 1) .v)
    (.rational 3561816 1)) .v) (.rational 3299011 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 846540 1) .v) (.rational 2917392 1)) .v) (.rational 2577963 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 514530 1) .v) (.rational 1707540 1)) .v)
    (.rational 1447232 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 222120 1)
    .v) (.rational 713628 1)) .v) (.rational 581884 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 66870 1) .v) (.rational 208152 1)) .v) (.rational 162999 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 13410 1) .v) (.rational 40212 1)) .v) (.rational
    29963 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1620 1) .v) (.rational
    4620 1)) .v) (.rational 3210 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3024

namespace FullLow3025
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_3 e g v+12*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_001_4 e g v+4*SmallGap.ReducedLayers.low0_001_5 e g v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_3 e g v+6*SmallGap.ReducedLayers.low1_200_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_101_4 e g v+3*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^1+1*SmallGap.ReducedLayers.low1_002_5 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 60 1) .v) (.rational 6980 1)) .e) (.add (.mul (.add (.mul
    (.rational 780 1) .v) (.rational 44046 1)) .f) (.mul (.add (.mul (.rational 1020 1) .v)
    (.rational 47304 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 4980 1) .v)
    (.rational 168048 1)) .f) (.mul (.add (.mul (.rational 8220 1) .v) (.rational 240844 1)) .g))
    .f) (.mul (.add (.mul (.rational 2880 1) .v) (.rational 104948 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20700 1) .v) (.rational 434332 1)) .f)
    (.mul (.add (.mul (.rational 43140 1) .v) (.rational 787712 1)) .g)) .f) (.mul (.add (.mul
    (.rational 25620 1) .v) (.rational 472424 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational
    720 1) .v) (.rational 91012 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 62280 1) .v) (.rational 808728 1)) .f) (.mul (.add (.mul
    (.rational 164640 1) .v) (.rational 1823656 1)) .g)) .f) (.mul (.add (.mul (.rational 152460
    1) .v) (.rational 1482016 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 54060 1) .v)
    (.rational 497036 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 1800 1) .v) (.rational
    42948 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 136560 1) .v) (.rational 1108444 1)) .f) (.mul (.add (.mul (.rational 448920
    1) .v) (.rational 3085752 1)) .g)) .f) (.mul (.add (.mul (.rational 581220 1) .v) (.rational
    3359364 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 380460 1) .v) (.rational 1819712
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 136860 1) .v) (.rational 526320 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.rational 28920 1) .v) (.rational 87372 1)) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    207000 1) .v) (.rational 1095168 1)) .f) (.mul (.add (.mul (.rational 816480 1) .v) (.rational
    3714192 1)) .g)) .f) (.mul (.add (.mul (.rational 1347840 1) .v) (.rational 5236944 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.rational 1228080 1) .v) (.rational 4059840 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.rational 690660 1) .v) (.rational 1959568 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.rational 254100 1) .v) (.rational 640084 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 61440 1) .v) (.rational 144428 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 200520 1) .v)
    (.rational 731352 1)) .f) (.mul (.add (.mul (.rational 917640 1) .v) (.rational 2957808 1))
    .g)) .f) (.mul (.add (.mul (.rational 1817400 1) .v) (.rational 5169120 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 2064960 1) .v) (.rational 5206896 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 1505100 1) .v) (.rational 3416796 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 740580 1) .v) (.rational 1553744 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 247140 1) .v) (.rational 491896 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    53040 1) .v) (.rational 101212 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 110160 1)
    .v) (.rational 291600 1)) .f) (.mul (.add (.mul (.rational 570240 1) .v) (.rational 1373760
    1)) .g)) .f) (.mul (.add (.mul (.rational 1304280 1) .v) (.rational 2861232 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.rational 1749600 1) .v) (.rational 3514608 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 1538280 1) .v) (.rational 2863368 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 932400 1) .v) (.rational 1634264 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 393900 1) .v) (.rational 659248 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    112740 1) .v) (.rational 181076 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 20220 1)
    .v) (.rational 30936 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25920 1)
    .v) (.rational 51840 1)) .f) (.mul (.add (.mul (.rational 149040 1) .v) (.rational 278640 1))
    .g)) .f) (.mul (.add (.mul (.rational 384120 1) .v) (.rational 671208 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 589320 1) .v) (.rational 965472 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.rational 601560 1) .v) (.rational 930116 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.rational 430200 1) .v) (.rational 633192 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational
    219060 1) .v) (.rational 309188 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational 78300 1)
    .v) (.rational 106272 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 18720 1) .v)
    (.rational 24354 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 2700 1) .v) (.rational
    3340 1)) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3025

namespace FullLow3026
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  10*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_4 e g v+4*SmallGap.ReducedLayers.low0_001_5 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_4 e g v+3*SmallGap.ReducedLayers.low1_101_5 e g
    v+1*SmallGap.ReducedLayers.low1_002_6 e g v)

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

end FullLow3026

end
end SPR.N6.Tail.CoreEndpoint
