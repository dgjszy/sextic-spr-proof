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

namespace FullLow3110
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    2*SmallGap.PolarCoefficientsLow0.c320 e f g v*e*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_0 e g v*e^3+4*SmallGap.ReducedLayers.low0_010_0
    e g v*e^1+4*SmallGap.ReducedLayers.low0_001_0 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.low1_200_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_110_0 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_101_0 e g v*e^2+1*SmallGap.ReducedLayers.low1_011_0 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 80 1) .v) (.rational 2200 1)) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 80 1) .v) (.rational 1728 1)) .v) (.rational 19112 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 200 1) .v) (.rational 2736 1)) .v) (.rational 24036 1)) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1584 1) .v) (.rational 17520 1)) .v) (.rational
    104844 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4752 1) .v) (.rational 38152 1)) .v)
    (.rational 184248 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5152 1) .v) (.rational
    28144 1)) .v) (.rational 113388 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 14408 1) .v) (.rational 109844 1)) .v) (.rational 407999
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 50428 1) .v) (.rational 304662 1)) .v)
    (.rational 934292 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 68356 1) .v)
    (.rational 320922 1)) .v) (.rational 814457 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 44820 1) .v) (.rational 162338 1)) .v) (.rational 337874 1)) (.pow .g 3))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 79792
    1) .v) (.rational 473888 1)) .v) (.rational 1196549 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 319168 1) .v) (.rational 1594974 1)) .v) (.rational 3417476 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 516648 1) .v) (.rational 2161056 1)) .v) (.rational 3917235
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 432856 1) .v) (.rational
    1518764 1)) .v) (.rational 2313960 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 197960 1) .v) (.rational 589904 1)) .v) (.rational 749918 1)) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    300578 1) .v) (.rational 1484234 1)) .v) (.rational 2733177 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1352601 1) .v) (.rational 5864527 1)) .v) (.rational 9432108 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2538064 1) .v) (.rational 9656898 1)) .v) (.rational
    13530433 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2571086 1) .v)
    (.rational 8616242 1)) .v) (.rational 10490394 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1516774 1) .v) (.rational 4517754 1)) .v) (.rational 4776354 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 520289 1) .v) (.rational 1398487 1)) .v)
    (.rational 1289020 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 814526 1) .v) (.rational 3475384
    1)) .v) (.rational 4942083 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4072630 1) .v)
    (.rational 15740464 1)) .v) (.rational 20092080 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8675455 1) .v) (.rational 30394851 1)) .v) (.rational 34779871 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10266040 1) .v) (.rational 32708094 1)) .v)
    (.rational 33539040 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7366784 1)
    .v) (.rational 21474594 1)) .v) (.rational 19762996 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3274258 1) .v) (.rational 8813864 1)) .v) (.rational 7312320 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 876987 1) .v) (.rational 2206283 1)) .v)
    (.rational 1663284 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1636456 1) .v)
    (.rational 6180674 1)) .v) (.rational 7110291 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    9000508 1) .v) (.rational 31519471 1)) .v) (.rational 33345198 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 21430050 1) .v) (.rational 69642865 1)) .v) (.rational 67713322 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 28931415 1) .v) (.rational 87446237
    1)) .v) (.rational 78170794 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    24345328 1) .v) (.rational 68704598 1)) .v) (.rational 56564048 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 13198934 1) .v) (.rational 34970617 1)) .v) (.rational
    26604830 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4589334 1) .v)
    (.rational 11494525 1)) .v) (.rational 8120699 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 980095 1) .v) (.rational 2337891 1)) .v) (.rational 1542812 1)) (.pow .g
    7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 2474236 1) .v) (.rational 8404234 1)) .v)
    (.rational 8118459 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 14845416 1) .v) (.rational
    47598968 1)) .v) (.rational 43151254 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    39035343 1) .v) (.rational 118206919 1)) .v) (.rational 100531394 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 59093735 1) .v) (.rational 169236667 1)) .v) (.rational
    135072064 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 56869299 1) .v)
    (.rational 154375135 1)) .v) (.rational 115762656 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 36214362 1) .v) (.rational 93471156 1)) .v) (.rational 65987494 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 15372849 1) .v) (.rational 37867969
    1)) .v) (.rational 25235025 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4262391 1) .v) (.rational 10059303 1)) .v) (.rational 6345304 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 729961 1) .v) (.rational 1655559 1)) .v) (.rational 990332
    1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2826436 1) .v)
    (.rational 8729770 1)) .v) (.rational 7292437 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    18371834 1) .v) (.rational 54318163 1)) .v) (.rational 43290999 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 52837446 1) .v) (.rational 149566760 1)) .v) (.rational 113683759 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 88515779 1) .v) (.rational
    240042467 1)) .v) (.rational 174012618 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 95655193 1) .v) (.rational 248789622 1)) .v) (.rational 172096001 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 69715287 1) .v) (.rational 174169646 1)) .v)
    (.rational 115064875 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 34761900
    1) .v) (.rational 83567158 1)) .v) (.rational 52784370 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11758749 1) .v) (.rational 27245367 1)) .v) (.rational 16467742 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2610457 1) .v) (.rational 5834844
    1)) .v) (.rational 3374477 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    354639 1) .v) (.rational 763933 1)) .v) (.rational 421776 1)) (.pow .g 9)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2425342 1) .v) (.rational 6867202 1)) .v)
    (.rational 5076551 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 16977394 1) .v) (.rational
    46533128 1)) .v) (.rational 33253668 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    52984496 1) .v) (.rational 140559839 1)) .v) (.rational 97052830 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 97200854 1) .v) (.rational 249601376 1)) .v) (.rational
    166474188 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 116315908 1) .v)
    (.rational 289218229 1)) .v) (.rational 186318719 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 95199602 1) .v) (.rational 229324654 1)) .v) (.rational 142708844 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 54294749 1) .v) (.rational
    126774586 1)) .v) (.rational 76212471 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 21542966 1) .v) (.rational 48770934 1)) .v) (.rational 28315556 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5820884 1) .v) (.rational 12771495 1)) .v)
    (.rational 7152867 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1021408 1)
    .v) (.rational 2167798 1)) .v) (.rational 1167840 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 106165 1) .v) (.rational 216897 1)) .v) (.rational 111696 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1537286 1)
    .v) (.rational 4016246 1)) .v) (.rational 2675796 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11529645 1) .v) (.rational 29424773 1)) .v) (.rational 19148529 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 38788789 1) .v) (.rational 96667817 1)) .v) (.rational
    61410582 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 77260846 1) .v)
    (.rational 187978605 1)) .v) (.rational 116520202 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 101251299 1) .v) (.rational 240467721 1)) .v) (.rational 145380353 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 91718660 1) .v) (.rational
    212602940 1)) .v) (.rational 125314534 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 58673167 1) .v) (.rational 132714608 1)) .v) (.rational 76226508 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 26573643 1) .v) (.rational 58625518 1)) .v)
    (.rational 32782848 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8395915 1)
    .v) (.rational 18045985 1)) .v) (.rational 9808769 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1784841 1) .v) (.rational 3729069 1)) .v) (.rational 1964373 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 237996 1) .v) (.rational 481203 1)) .v)
    (.rational 244336 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 17301 1) .v)
    (.rational 33559 1)) .v) (.rational 16258 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 697072 1) .v) (.rational
    1689774 1)) .v) (.rational 1029692 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5576576 1)
    .v) (.rational 13304794 1)) .v) (.rational 7983890 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20110503 1) .v) (.rational 47202077 1)) .v) (.rational 27877139 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 43183441 1) .v) (.rational 99672271 1)) .v)
    (.rational 57903272 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 61420316 1)
    .v) (.rational 139352149 1)) .v) (.rational 79587145 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 60871371 1) .v) (.rational 135696653 1)) .v) (.rational 76143570 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 43024895 1) .v) (.rational 94186254
    1)) .v) (.rational 51886574 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    21800278 1) .v) (.rational 46825616 1)) .v) (.rational 25298080 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7832325 1) .v) (.rational 16485124 1)) .v) (.rational
    8720039 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1936247 1) .v)
    (.rational 3984651 1)) .v) (.rational 2058228 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 310258 1) .v) (.rational 621977 1)) .v) (.rational 312365 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 28575 1) .v) (.rational 55447 1)) .v) (.rational
    26872 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 1119 1) .v) (.rational
    2077 1)) .v) (.rational 958 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 213398 1) .v) (.rational 482500 1)) .v)
    (.rational 272270 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1813883 1) .v) (.rational
    4061866 1)) .v) (.rational 2271617 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    6977788 1) .v) (.rational 15469076 1)) .v) (.rational 8569952 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16055750 1) .v) (.rational 35222811 1)) .v) (.rational
    19321072 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 24598644 1) .v)
    (.rational 53377297 1)) .v) (.rational 28975400 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 26421213 1) .v) (.rational 56680056 1)) .v) (.rational 30430586 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 20387592 1) .v) (.rational 43212205 1)) .v)
    (.rational 22928632 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 11378246 1)
    .v) (.rational 23807878 1)) .v) (.rational 12472921 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4553125 1) .v) (.rational 9393991 1)) .v) (.rational 4852747 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1271914 1) .v) (.rational 2583062 1)) .v)
    (.rational 1313095 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 234850 1)
    .v) (.rational 468211 1)) .v) (.rational 233506 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 25634 1) .v) (.rational 49959 1)) .v) (.rational 24325 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1243 1) .v) (.rational 2352 1)) .v) (.rational 1109
    1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 39384 1) .v) (.rational 83502 1)) .v) (.rational 44118 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 354456 1) .v) (.rational 748224 1)) .v) (.rational
    393768 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1448371 1) .v) (.rational 3043170
    1)) .v) (.rational 1594799 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3552632 1) .v) (.rational 7427628 1)) .v) (.rational 3874996 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5825537 1) .v) (.rational 12115843 1)) .v) (.rational 6290306 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6727875 1) .v) (.rational 13914207
    1)) .v) (.rational 7186332 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5611788 1) .v) (.rational 11536100 1)) .v) (.rational 5924312 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3406741 1) .v) (.rational 6957269 1)) .v) (.rational
    3550528 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1494042 1) .v)
    (.rational 3028938 1)) .v) (.rational 1534896 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 461637 1) .v) (.rational 928153 1)) .v) (.rational 466516 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 95381 1) .v) (.rational 189910 1)) .v) (.rational
    94529 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 11827 1) .v) (.rational
    23271 1)) .v) (.rational 11444 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    665 1) .v) (.rational 1289 1)) .v) (.rational 624 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3294
    1) .v) (.rational 6588 1)) .v) (.rational 3294 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31293 1) .v) (.rational 62586 1)) .v) (.rational 31293 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 135315 1) .v) (.rational 270630 1)) .v) (.rational 135315 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 352206 1) .v) (.rational 704412 1))
    .v) (.rational 352206 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 614722 1)
    .v) (.rational 1229444 1)) .v) (.rational 614722 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 758181 1) .v) (.rational 1516362 1)) .v) (.rational 758181 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 677915 1) .v) (.rational 1355830 1)) .v)
    (.rational 677915 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 443027 1) .v)
    (.rational 886054 1)) .v) (.rational 443027 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 210171 1) .v) (.rational 420342 1)) .v) (.rational 210171 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 70642 1) .v) (.rational 141284 1)) .v) (.rational
    70642 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 15982 1) .v) (.rational
    31964 1)) .v) (.rational 15982 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2187 1) .v) (.rational 4374 1)) .v) (.rational 2187 1)) (.pow .g 11))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 137 1) .v) (.rational 274 1)) .v) (.rational 137 1)) (.pow .g 12)))
    (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3110

namespace FullLow3111
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2+
    2*SmallGap.PolarCoefficientsLow1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    4*SmallGap.PolarCoefficientsLow0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(36*SmallGap.ReducedLayers.low0_100_0 e g v*e^2+12*SmallGap.ReducedLayers.low0_100_1
    e g v*e^3+4*SmallGap.ReducedLayers.low0_010_0 e g v+4*SmallGap.ReducedLayers.low0_010_1 e g
    v*e^1+8*SmallGap.ReducedLayers.low0_001_0 e g v*e^1+4*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(18*SmallGap.ReducedLayers.low1_200_0 e g v*e^2+6*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_110_0 e g v+3*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^1+6*SmallGap.ReducedLayers.low1_101_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^2+1*SmallGap.ReducedLayers.low1_011_1 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    520 1) .v) (.rational 15420 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 440 1) .v)
    (.rational 9904 1)) .v) (.rational 125136 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1100 1) .v) (.rational 15208 1)) .v) (.rational 153416 1)) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 7968 1) .v) (.rational 91376 1)) .v) (.rational 640526 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 23904 1) .v) (.rational 192400 1)) .v) (.rational
    1091368 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 25924 1) .v) (.rational 133856
    1)) .v) (.rational 641034 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 67320 1) .v) (.rational 533246 1)) .v) (.rational 2324508 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 235620 1) .v) (.rational 1437169 1)) .v) (.rational
    5150779 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 319420 1) .v) (.rational 1455095
    1)) .v) (.rational 4291189 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    209500 1) .v) (.rational 699363 1)) .v) (.rational 1670577 1)) (.pow .g 3)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 349400 1) .v)
    (.rational 2170980 1)) .v) (.rational 6359448 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1397600 1) .v) (.rational 7144994 1)) .v) (.rational 17598552 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2262340 1) .v) (.rational 9423630 1)) .v) (.rational 19384590 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1895420 1) .v) (.rational 6427230 1)) .v)
    (.rational 10897944 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 866820 1)
    .v) (.rational 2425318 1)) .v) (.rational 3333054 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1238348 1) .v)
    (.rational 6453054 1)) .v) (.rational 13553784 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5572566 1) .v) (.rational 25068335 1)) .v) (.rational 45483527 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10456840 1) .v) (.rational 40520188 1)) .v) (.rational
    63162444 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10593632 1) .v)
    (.rational 35479948 1)) .v) (.rational 47220432 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6250216 1) .v) (.rational 18294568 1)) .v) (.rational 20701390 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2144114 1) .v) (.rational 5598213 1)) .v)
    (.rational 5401473 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3155882 1) .v) (.rational 14321066
    1)) .v) (.rational 22829074 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 15779410 1) .v)
    (.rational 64033952 1)) .v) (.rational 90668562 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 33618465 1) .v) (.rational 122048041 1)) .v) (.rational 153045470 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 39797400 1) .v) (.rational 129737774 1)) .v)
    (.rational 143810022 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 28576932
    1) .v) (.rational 84324646 1)) .v) (.rational 82690550 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 12713418 1) .v) (.rational 34390306 1)) .v) (.rational 29996156 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3409121 1) .v) (.rational 8597095
    1)) .v) (.rational 6745574 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5934922 1) .v)
    (.rational 23966664 1)) .v) (.rational 30436008 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32642071 1) .v) (.rational 121020198 1)) .v) (.rational 140071979 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 77748365 1) .v) (.rational 264903412 1)) .v)
    (.rational 279072977 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 105052110
    1) .v) (.rational 329930983 1)) .v) (.rational 316362049 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 88528476 1) .v) (.rational 257671660 1)) .v) (.rational 225333576
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 48100983 1) .v) (.rational
    130774212 1)) .v) (.rational 104781755 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16774833 1) .v) (.rational 43024708 1)) .v) (.rational 31817471 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3595860 1) .v) (.rational 8794887 1)) .v)
    (.rational 6056953 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8322218 1)
    .v) (.rational 30289578 1)) .v) (.rational 31879872 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 49933308 1) .v) (.rational 170222124 1)) .v) (.rational 166932494 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 131376623 1) .v) (.rational 419837355 1)) .v)
    (.rational 383390006 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 199161125
    1) .v) (.rational 597858539 1)) .v) (.rational 508590826 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 192120599 1) .v) (.rational 543604669 1)) .v) (.rational
    431515002 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 122782034 1) .v)
    (.rational 329019428 1)) .v) (.rational 244466414 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 52382477 1) .v) (.rational 133705419 1)) .v) (.rational 93388848 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 14620649 1) .v) (.rational 35761613
    1)) .v) (.rational 23592098 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2524939 1) .v) (.rational 5947531 1)) .v) (.rational 3719376 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 8688908 1) .v) (.rational 28723838 1)) .v)
    (.rational 25847324 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 56477902 1) .v)
    (.rational 177614003 1)) .v) (.rational 151637047 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 162570352 1) .v) (.rational 486590916 1)) .v) (.rational 393957560 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 272880014 1) .v) (.rational 778277496 1))
    .v) (.rational 597681350 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    295876468 1) .v) (.rational 805680507 1)) .v) (.rational 587442379 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 216729384 1) .v) (.rational 564954696 1)) .v) (.rational
    391751912 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 108835896 1) .v)
    (.rational 272434394 1)) .v) (.rational 180049918 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 37168098 1) .v) (.rational 89615350 1)) .v) (.rational 56567420 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8354388 1) .v) (.rational 19443527
    1)) .v) (.rational 11735401 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1152934 1) .v) (.rational 2589343 1)) .v) (.rational 1492111 1)) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6665602 1) .v) (.rational 20114044
    1)) .v) (.rational 15848934 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 46659214 1) .v)
    (.rational 135610124 1)) .v) (.rational 102854170 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 145780445 1) .v) (.rational 408114619 1)) .v) (.rational 297792984 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 268112888 1) .v) (.rational 723338856 1))
    .v) (.rational 507714422 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    322217063 1) .v) (.rational 838508875 1)) .v) (.rational 566302150 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 265428442 1) .v) (.rational 667090114 1)) .v) (.rational
    433760868 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 152763502 1) .v)
    (.rational 371316792 1)) .v) (.rational 232627018 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 61362952 1) .v) (.rational 144424862 1)) .v) (.rational 87223440 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 16850549 1) .v) (.rational 38418009
    1)) .v) (.rational 22359218 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3019284 1) .v) (.rational 6658764 1)) .v) (.rational 3726248 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 322307 1) .v) (.rational 684061 1)) .v) (.rational 365836 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3650898 1) .v) (.rational 10090742 1)) .v) (.rational 7090088 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 27381735 1) .v) (.rational 73631375 1)) .v) (.rational 50371186 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 92244437 1) .v) (.rational 241278385 1)) .v)
    (.rational 160604956 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 184299193
    1) .v) (.rational 468889525 1)) .v) (.rational 303562812 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 242781235 1) .v) (.rational 600914707 1)) .v) (.rational
    378291396 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 221642894 1) .v)
    (.rational 533882141 1)) .v) (.rational 326774029 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 143349612 1) .v) (.rational 336144413 1)) .v) (.rational 200015083 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 65894181 1) .v) (.rational
    150435548 1)) .v) (.rational 86986319 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 21230253 1) .v) (.rational 47160945 1)) .v) (.rational 26471348 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4629393 1) .v) (.rational 9987181 1)) .v)
    (.rational 5428236 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 637925 1)
    .v) (.rational 1330551 1)) .v) (.rational 696720 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 48396 1) .v) (.rational 96650 1)) .v) (.rational 48254 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1352118 1) .v) (.rational 3431518 1)) .v) (.rational 2180092 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10816944 1) .v) (.rational 26935182 1)) .v) (.rational 16812066 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 39070047 1) .v) (.rational 95414359 1)) .v)
    (.rational 58471060 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 84193809 1)
    .v) (.rational 201584351 1)) .v) (.rational 121214738 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 120470117 1) .v) (.rational 282716077 1)) .v) (.rational 166721974 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 120472137 1) .v) (.rational
    277047949 1)) .v) (.rational 160147880 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 86234808 1) .v) (.rational 194278350 1)) .v) (.rational 110017512 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 44446072 1) .v) (.rational 98045480 1)) .v)
    (.rational 54347404 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 16330812 1)
    .v) (.rational 35238858 1)) .v) (.rational 19094524 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4156329 1) .v) (.rational 8756255 1)) .v) (.rational 4627598 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 691457 1) .v) (.rational 1417243 1)) .v)
    (.rational 727644 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 66861 1) .v)
    (.rational 132471 1)) .v) (.rational 65610 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2793 1) .v) (.rational 5283 1)) .v) (.rational 2490 1)) (.pow .g 12)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    303564 1) .v) (.rational 708792 1)) .v) (.rational 411564 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2580294 1) .v) (.rational 5954136 1)) .v) (.rational 3421110 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9943574 1) .v) (.rational 22664796 1)) .v) (.rational
    12878550 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22970925 1) .v)
    (.rational 51693463 1)) .v) (.rational 29030560 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 35429643 1) .v) (.rational 78680263 1)) .v) (.rational 43644114 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 38438153 1) .v) (.rational 84196226 1)) .v)
    (.rational 46101559 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 30080039 1)
    .v) (.rational 64953411 1)) .v) (.rational 35081410 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17107673 1) .v) (.rational 36391987 1)) .v) (.rational 19370892 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 7016975 1) .v) (.rational 14690288
    1)) .v) (.rational 7697075 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2023353 1) .v) (.rational 4162748 1)) .v) (.rational 2143289 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 388979 1) .v) (.rational 784659 1)) .v) (.rational 395970 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 44690 1) .v) (.rational 88080 1))
    .v) (.rational 43390 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2314 1)
    .v) (.rational 4431 1)) .v) (.rational 2117 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 31212 1) .v)
    (.rational 67158 1)) .v) (.rational 35946 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    280908 1) .v) (.rational 601128 1)) .v) (.rational 320220 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1150024 1) .v) (.rational 2446476 1)) .v) (.rational 1296452 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2832944 1) .v) (.rational 5988252 1)) .v)
    (.rational 3155308 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4679107 1)
    .v) (.rational 9822983 1)) .v) (.rational 5143876 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5462597 1) .v) (.rational 11383651 1)) .v) (.rational 5921054 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4625740 1) .v) (.rational 9564004 1)) .v)
    (.rational 4938264 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2865407 1)
    .v) (.rational 5874601 1)) .v) (.rational 3009194 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1289944 1) .v) (.rational 2620742 1)) .v) (.rational 1330798 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 412007 1) .v) (.rational 828893 1)) .v)
    (.rational 416886 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 88720 1) .v)
    (.rational 176588 1)) .v) (.rational 87868 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11577 1) .v) (.rational 22771 1)) .v) (.rational 11194 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 693 1) .v) (.rational 1345 1)) .v) (.rational 652 1))
    (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3111

namespace FullLow3112
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    2*SmallGap.PolarCoefficientsLow2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(36*SmallGap.ReducedLayers.low0_100_0 e g v*e^1+36*SmallGap.ReducedLayers.low0_100_1
    e g v*e^2+12*SmallGap.ReducedLayers.low0_100_2 e g v*e^3+4*SmallGap.ReducedLayers.low0_010_1 e
    g v+4*SmallGap.ReducedLayers.low0_010_2 e g v*e^1+4*SmallGap.ReducedLayers.low0_001_0 e g
    v+8*SmallGap.ReducedLayers.low0_001_1 e g v*e^1+4*SmallGap.ReducedLayers.low0_001_2 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(18*SmallGap.ReducedLayers.low1_200_0 e g v*e^1+18*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_200_2 e g v*e^3+3*SmallGap.ReducedLayers.low1_110_1 e g
    v+3*SmallGap.ReducedLayers.low1_110_2 e g v*e^1+3*SmallGap.ReducedLayers.low1_101_0 e g
    v+6*SmallGap.ReducedLayers.low1_101_1 e g v*e^1+3*SmallGap.ReducedLayers.low1_101_2 e g
    v*e^2+1*SmallGap.ReducedLayers.low1_011_2 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1400 1) .v)
    (.rational 46500 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 960 1) .v) (.rational
    23896 1)) .v) (.rational 354232 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2400 1) .v)
    (.rational 35512 1)) .v) (.rational 422936 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 16260 1) .v) (.rational 200904 1)) .v) (.rational 1693738 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 48780 1) .v) (.rational 406320 1)) .v) (.rational 2791088
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 52920 1) .v) (.rational 261536 1)) .v)
    (.rational 1554278 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 129072 1) .v) (.rational 1086840 1)) .v) (.rational 5717697 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 451752 1) .v) (.rational 2824376 1)) .v) (.rational
    12209782 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 612504 1) .v) (.rational
    2708008 1)) .v) (.rational 9634221 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 401880 1) .v) (.rational 1203096 1)) .v) (.rational 3447372 1)) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 630164 1)
    .v) (.rational 4154472 1)) .v) (.rational 14510457 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2520656 1) .v) (.rational 13282968 1)) .v) (.rational 38712820 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4080156 1) .v) (.rational 16883729 1)) .v) (.rational
    40602968 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3418172 1) .v)
    (.rational 11018075 1)) .v) (.rational 21367593 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1562960 1) .v) (.rational 3971243 1)) .v) (.rational 5996525 1)) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2096572 1) .v) (.rational 11652856 1)) .v) (.rational 28618647 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9434574 1) .v) (.rational 44296396 1)) .v) (.rational 92930120
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 17702544 1) .v) (.rational 69842734 1))
    .v) (.rational 123975281 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    17930892 1) .v) (.rational 59557839 1)) .v) (.rational 88365803 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10575372 1) .v) (.rational 29959305 1)) .v) (.rational
    36745005 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3625206 1) .v)
    (.rational 9003953 1)) .v) (.rational 9121375 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4985574 1)
    .v) (.rational 24314676 1)) .v) (.rational 44409961 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 24927870 1) .v) (.rational 106984896 1)) .v) (.rational 171581692 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 53109497 1) .v) (.rational 200488962 1)) .v)
    (.rational 280826696 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 62870768
    1) .v) (.rational 209625106 1)) .v) (.rational 255324228 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 45143528 1) .v) (.rational 134323449 1)) .v) (.rational 142155855
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 20079950 1) .v) (.rational
    54256751 1)) .v) (.rational 50215595 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5380985 1) .v) (.rational 13519413 1)) .v) (.rational 11122026 1)) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 8653562 1) .v) (.rational 37811684 1)) .v) (.rational 54054509
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 47594591 1) .v) (.rational 188632474 1)) .v)
    (.rational 243303154 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 113382987 1) .v)
    (.rational 408037656 1)) .v) (.rational 473708352 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 153264009 1) .v) (.rational 502810302 1)) .v) (.rational 525051557 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 129246116 1) .v) (.rational
    389443172 1)) .v) (.rational 366630094 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 70291501 1) .v) (.rational 196725077 1)) .v) (.rational 168048131 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 24540247 1) .v) (.rational 64706509 1)) .v)
    (.rational 50700052 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5264931 1)
    .v) (.rational 13280543 1)) .v) (.rational 9672024 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 11009570 1) .v) (.rational 43552228 1)) .v) (.rational 50869327 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 66057420 1) .v) (.rational 242457268 1)) .v)
    (.rational 261698920 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 173874732 1) .v)
    (.rational 592886815 1)) .v) (.rational 590794947 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 263847310 1) .v) (.rational 838372983 1)) .v) (.rational 771629149 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 254948004 1) .v) (.rational
    758758416 1)) .v) (.rational 646603068 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 163339776 1) .v) (.rational 458571990 1)) .v) (.rational 363524162 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 69919760 1) .v) (.rational 186780802 1)) .v)
    (.rational 138651381 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 19597146
    1) .v) (.rational 50261836 1)) .v) (.rational 35194572 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3400302 1) .v) (.rational 8434079 1)) .v) (.rational 5602099 1)) (.pow
    .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10167192 1) .v) (.rational
    36597728 1)) .v) (.rational 36126877 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 66086748
    1) .v) (.rational 224579040 1)) .v) (.rational 208958206 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 190369500 1) .v) (.rational 611306938 1)) .v) (.rational 535840771 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 320078022 1) .v) (.rational 973220775 1))
    .v) (.rational 804042833 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    348040214 1) .v) (.rational 1005272657 1)) .v) (.rational 784075075 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 256027140 1) .v) (.rational 705541918 1)) .v)
    (.rational 520987410 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 129335144
    1) .v) (.rational 341768922 1)) .v) (.rational 239807566 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 44517382 1) .v) (.rational 113370064 1)) .v) (.rational 75870670
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10106982 1) .v) (.rational
    24895716 1)) .v) (.rational 15928490 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1411892 1) .v) (.rational 3364327 1)) .v) (.rational 2055335 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6640590 1) .v) (.rational
    21801300 1)) .v) (.rational 18658857 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 46484130
    1) .v) (.rational 146045672 1)) .v) (.rational 119695484 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 145390875 1) .v) (.rational 437346636 1)) .v) (.rational 343059112 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 268051560 1) .v) (.rational 772856066 1))
    .v) (.rational 580270418 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    323478771 1) .v) (.rational 895573916 1)) .v) (.rational 644088499 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 268126320 1) .v) (.rational 714504886 1)) .v) (.rational
    492884194 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 155667058 1) .v)
    (.rational 400345074 1)) .v) (.rational 265339178 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 63268732 1) .v) (.rational 157418392 1)) .v) (.rational 100392994 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 17644417 1) .v) (.rational 42527255
    1)) .v) (.rational 26108986 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3225250 1) .v) (.rational 7520631 1)) .v) (.rational 4435723 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 353125 1) .v) (.rational 791391 1)) .v) (.rational 445262 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2912530 1) .v) (.rational 8727756 1)) .v) (.rational 6599294 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 21843975 1) .v) (.rational 63335010 1)) .v) (.rational 46436272 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 73696987 1) .v) (.rational 206742856 1)) .v)
    (.rational 146879769 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 147730128
    1) .v) (.rational 401120044 1)) .v) (.rational 276039351 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 195695343 1) .v) (.rational 514668782 1)) .v) (.rational
    343074968 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 180153611 1) .v)
    (.rational 459379066 1)) .v) (.rational 296701247 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 117890600 1) .v) (.rational 291781402 1)) .v) (.rational 182666503 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 55058517 1) .v) (.rational
    132370826 1)) .v) (.rational 80335762 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18116005 1) .v) (.rational 42302754 1)) .v) (.rational 24872294 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4060630 1) .v) (.rational 9191257 1)) .v)
    (.rational 5223078 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 580095 1)
    .v) (.rational 1265685 1)) .v) (.rational 691215 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 46155 1) .v) (.rational 95817 1)) .v) (.rational 49662 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    771042 1) .v) (.rational 2108364 1)) .v) (.rational 1427736 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6168336 1) .v) (.rational 16470036 1)) .v) (.rational 10922340 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 22322128 1) .v) (.rational 58174050 1)) .v)
    (.rational 37748723 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 48309016 1)
    .v) (.rational 122852510 1)) .v) (.rational 77948560 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 69621973 1) .v) (.rational 172758514 1)) .v) (.rational 107122633 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 70373918 1) .v) (.rational
    170399632 1)) .v) (.rational 103214986 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 51137301 1) .v) (.rational 120830287 1)) .v) (.rational 71465281 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 26897098 1) .v) (.rational 62005445 1)) .v)
    (.rational 35786113 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10151393 1)
    .v) (.rational 22812366 1)) .v) (.rational 12832209 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2675786 1) .v) (.rational 5849718 1)) .v) (.rational 3199804 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 466023 1) .v) (.rational 987049 1)) .v)
    (.rational 522804 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 47878 1) .v)
    (.rational 97475 1)) .v) (.rational 49597 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2172 1) .v) (.rational 4186 1)) .v) (.rational 2014 1)) (.pow .g 12)))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 93312
    1) .v) (.rational 232584 1)) .v) (.rational 142440 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 793152 1) .v) (.rational 1945752 1)) .v) (.rational 1176234 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3063866 1) .v) (.rational 7391880 1)) .v) (.rational
    4406678 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7115955 1) .v)
    (.rational 16872212 1)) .v) (.rational 9910268 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11074435 1) .v) (.rational 25789838 1)) .v) (.rational 14912150 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 12176398 1) .v) (.rational 27835086 1)) .v)
    (.rational 15830431 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9707809 1)
    .v) (.rational 21771930 1)) .v) (.rational 12168140 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5660622 1) .v) (.rational 12446499 1)) .v) (.rational 6829166 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2398645 1) .v) (.rational 5165887 1)) .v)
    (.rational 2779123 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 721230 1)
    .v) (.rational 1519268 1)) .v) (.rational 799985 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 146261 1) .v) (.rational 300712 1)) .v) (.rational 154596 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 17987 1) .v) (.rational 35983 1)) .v) (.rational
    17996 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 1016 1) .v) (.rational
    1969 1)) .v) (.rational 953 1)) (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3112

namespace FullLow3113
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow3.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    2*SmallGap.PolarCoefficientsLow3.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow2.c410 e f g v*e*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_0 e g v+36*SmallGap.ReducedLayers.low0_100_1 e g
    v*e^1+36*SmallGap.ReducedLayers.low0_100_2 e g v*e^2+12*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^3+4*SmallGap.ReducedLayers.low0_010_2 e g v+4*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_001_1 e g v+8*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_001_3 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.low1_200_0 e g v+18*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_200_2 e g v*e^2+6*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_110_2 e g v+3*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_101_1 e g v+6*SmallGap.ReducedLayers.low1_101_2 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_101_3 e g v*e^2+1*SmallGap.ReducedLayers.low1_011_3 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2000 1) .v) (.rational
    78200 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1040 1) .v) (.rational 31104 1))
    .v) (.rational 562508 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2600 1) .v) (.rational
    44688 1)) .v) (.rational 653784 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 16812 1) .v) (.rational 239616 1)) .v) (.rational 2519982 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 50436 1) .v) (.rational 462520 1)) .v) (.rational 4009628 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 54736 1) .v) (.rational 268672 1)) .v) (.rational
    2104954 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 127256 1) .v) (.rational 1200630 1)) .v) (.rational 7909538 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 445396 1) .v) (.rational 2982101 1)) .v) (.rational 16223315 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 604012 1) .v) (.rational 2652699 1)) .v)
    (.rational 12015863 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 396540 1)
    .v) (.rational 1037215 1)) .v) (.rational 3846421 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 589940 1) .v) (.rational
    4296676 1)) .v) (.rational 18544002 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2359760
    1) .v) (.rational 13240508 1)) .v) (.rational 47480602 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3819956 1) .v) (.rational 15997187 1)) .v) (.rational 46954209 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3200708 1) .v) (.rational 9765105 1)) .v)
    (.rational 22632983 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1463928 1)
    .v) (.rational 3256213 1)) .v) (.rational 5557873 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1849624 1) .v)
    (.rational 11324304 1)) .v) (.rational 33581764 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8323308 1) .v) (.rational 41879618 1)) .v) (.rational 105015296 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15617192 1) .v) (.rational 63875156 1)) .v) (.rational
    133468430 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 15818068 1) .v)
    (.rational 52464785 1)) .v) (.rational 89432361 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9328252 1) .v) (.rational 25429151 1)) .v) (.rational 34523373 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3196512 1) .v) (.rational 7428737 1)) .v)
    (.rational 7942759 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4094176 1) .v) (.rational 22043302
    1)) .v) (.rational 47427878 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 20470880 1) .v)
    (.rational 95073932 1)) .v) (.rational 177512232 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 43613880 1) .v) (.rational 174324078 1)) .v) (.rational 280011974 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 51630240 1) .v) (.rational 178289898 1)) .v)
    (.rational 244360150 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 37071108
    1) .v) (.rational 112033813 1)) .v) (.rational 130538529 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 16485180 1) .v) (.rational 44648689 1)) .v) (.rational 44560489
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4413564 1) .v) (.rational
    11073539 1)) .v) (.rational 9693823 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6489016 1)
    .v) (.rational 31392622 1)) .v) (.rational 51745458 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 35689588 1) .v) (.rational 154326803 1)) .v) (.rational 227029229 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 85032372 1) .v) (.rational 328945557 1)) .v)
    (.rational 430198117 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 114973764
    1) .v) (.rational 399891880 1)) .v) (.rational 464161212 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 96999240 1) .v) (.rational 306437150 1)) .v) (.rational 316533482
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 52780224 1) .v) (.rational
    153857770 1)) .v) (.rational 142735986 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18430992 1) .v) (.rational 50584710 1)) .v) (.rational 42822238 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3951096 1) .v) (.rational 10428247 1)) .v)
    (.rational 8208797 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7323048 1)
    .v) (.rational 32137500 1)) .v) (.rational 42562210 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 43938288 1) .v) (.rational 176914656 1)) .v) (.rational 214548590 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 115689732 1) .v) (.rational 428130827 1)) .v)
    (.rational 474747129 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 175681020
    1) .v) (.rational 600169615 1)) .v) (.rational 608909135 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 169959648 1) .v) (.rational 540014322 1)) .v) (.rational
    503063406 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 109073640 1) .v)
    (.rational 325726190 1)) .v) (.rational 280578730 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 46785944 1) .v) (.rational 132994344 1)) .v) (.rational 106984576 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 13139208 1) .v) (.rational 36015750
    1)) .v) (.rational 27343680 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2281852 1) .v) (.rational 6092627 1)) .v) (.rational 4397899 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 5743152 1) .v) (.rational 22962924 1)) .v)
    (.rational 25382420 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 37330488 1) .v)
    (.rational 139643760 1)) .v) (.rational 144411486 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 107593872 1) .v) (.rational 377167466 1)) .v) (.rational 364710076 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 181130928 1) .v) (.rational 596993516 1))
    .v) (.rational 540274776 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    197371664 1) .v) (.rational 614798742 1)) .v) (.rational 522140438 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 145643580 1) .v) (.rational 431702950 1)) .v) (.rational
    345634042 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 73882392 1) .v)
    (.rational 210047038 1)) .v) (.rational 159458402 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25564092 1) .v) (.rational 70249871 1)) .v) (.rational 50860091 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5838844 1) .v) (.rational 15595315
    1)) .v) (.rational 10806021 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    820312 1) .v) (.rational 2130299 1)) .v) (.rational 1410205 1)) (.pow .g 9)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2974656 1) .v) (.rational 10862598 1))
    .v) (.rational 10314116 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 20822592 1) .v)
    (.rational 72210104 1)) .v) (.rational 65258488 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 65182200 1) .v) (.rational 214910068 1)) .v) (.rational 184773976 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 120399504 1) .v) (.rational 378250558 1)) .v)
    (.rational 309546484 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 145754912
    1) .v) (.rational 437766350 1)) .v) (.rational 341528064 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 121384216 1) .v) (.rational 350010226 1)) .v) (.rational
    260973090 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 70937024 1) .v)
    (.rational 197295922 1)) .v) (.rational 141025734 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 29085728 1) .v) (.rational 78359780 1)) .v) (.rational 53846322 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8204336 1) .v) (.rational 21462173
    1)) .v) (.rational 14195187 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1521320 1) .v) (.rational 3858005 1)) .v) (.rational 2450085 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 169412 1) .v) (.rational 412493 1)) .v) (.rational 249143 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    915552 1) .v) (.rational 3058752 1)) .v) (.rational 2547948 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6866640 1) .v) (.rational 22042590 1)) .v) (.rational 17715390 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 23194176 1) .v) (.rational 71580170 1)) .v)
    (.rational 55466986 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 46618104 1)
    .v) (.rational 138480282 1)) .v) (.rational 103453380 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 62031336 1) .v) (.rational 177688758 1)) .v) (.rational 128042432 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 57490092 1) .v) (.rational
    159166287 1)) .v) (.rational 110744449 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 37980660 1) .v) (.rational 101873767 1)) .v) (.rational 68523931 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 17971236 1) .v) (.rational 46786126 1)) .v)
    (.rational 30450832 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6018320 1)
    .v) (.rational 15211860 1)) .v) (.rational 9577458 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1381372 1) .v) (.rational 3380253 1)) .v) (.rational 2053019 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 203772 1) .v) (.rational 478477 1)) .v)
    (.rational 278189 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 16940 1) .v)
    (.rational 37358 1)) .v) (.rational 20418 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 127008 1) .v) (.rational
    388644 1)) .v) (.rational 288348 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1016064 1)
    .v) (.rational 3015840 1)) .v) (.rational 2182260 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3683280 1) .v) (.rational 10603160 1)) .v) (.rational 7475498 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8001840 1) .v) (.rational 22346814 1)) .v) (.rational
    15340286 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11606544 1) .v)
    (.rational 31463330 1)) .v) (.rational 21022176 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11846256 1) .v) (.rational 31194544 1)) .v) (.rational 20283780 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8728332 1) .v) (.rational 22340079 1)) .v)
    (.rational 14135287 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4680540 1)
    .v) (.rational 11644053 1)) .v) (.rational 7166025 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1814308 1) .v) (.rational 4381436 1)) .v) (.rational 2619126 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 496216 1) .v) (.rational 1159138 1)) .v)
    (.rational 670946 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 90996 1) .v)
    (.rational 204127 1)) .v) (.rational 113697 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10060 1) .v) (.rational 21387 1)) .v) (.rational 11327 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 508 1) .v) (.rational 1000 1)) .v) (.rational 492 1))
    (.pow .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3113

namespace FullLow3114
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    2*SmallGap.PolarCoefficientsLow4.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow3.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow3.c410 e f g v*e*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_1 e g v+36*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^1+36*SmallGap.ReducedLayers.low0_100_3 e g v*e^2+12*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^3+4*SmallGap.ReducedLayers.low0_010_3 e g v+4*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_001_2 e g v+8*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_001_4 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.low1_200_1 e g v+18*SmallGap.ReducedLayers.low1_200_2 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_200_3 e g v*e^2+6*SmallGap.ReducedLayers.low1_200_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_110_3 e g v+3*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_101_2 e g v+6*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_101_4 e g v*e^2+1*SmallGap.ReducedLayers.low1_011_4 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1600 1) .v) (.rational 79200 1))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 560 1) .v) (.rational 23056 1)) .v)
    (.rational 541512 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1400 1) .v) (.rational
    32032 1)) .v) (.rational 612836 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 8796 1) .v) (.rational 164384 1)) .v) (.rational 2283998 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 26388 1) .v) (.rational 301360 1)) .v) (.rational 3507616 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 28648 1) .v) (.rational 153200 1)) .v) (.rational
    1730394 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 64536 1) .v) (.rational 765904 1)) .v) (.rational 6679658 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 225876 1) .v) (.rational 1802720 1)) .v) (.rational 13137716 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 306412 1) .v) (.rational 1448384 1)) .v)
    (.rational 9072086 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 201340 1)
    .v) (.rational 452344 1)) .v) (.rational 2517000 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 288004 1) .v) (.rational
    2568928 1)) .v) (.rational 14446280 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1152016
    1) .v) (.rational 7566312 1)) .v) (.rational 35397690 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1865412 1) .v) (.rational 8537064 1)) .v) (.rational 32739876 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1564180 1) .v) (.rational 4698992 1)) .v)
    (.rational 14101958 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 716408 1)
    .v) (.rational 1353968 1)) .v) (.rational 2791648 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 859776 1) .v)
    (.rational 6353752 1)) .v) (.rational 23870814 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3868992 1) .v) (.rational 22716616 1)) .v) (.rational 71651880 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7261616 1) .v) (.rational 33177232 1)) .v) (.rational
    86162156 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7360360 1) .v)
    (.rational 25852048 1)) .v) (.rational 53511378 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4346104 1) .v) (.rational 11841608 1)) .v) (.rational 18666418 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1492008 1) .v) (.rational 3303232 1)) .v)
    (.rational 3823410 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1781092 1) .v) (.rational 11461000
    1)) .v) (.rational 30287334 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 8905460 1) .v)
    (.rational 48245584 1)) .v) (.rational 109474552 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18980416 1) .v) (.rational 86065952 1)) .v) (.rational 165636788 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 22488904 1) .v) (.rational 85537760 1)) .v)
    (.rational 137808632 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 16171616
    1) .v) (.rational 52380240 1)) .v) (.rational 70097288 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7206616 1) .v) (.rational 20516544 1)) .v) (.rational 23013640 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1934116 1) .v) (.rational 5065952
    1)) .v) (.rational 4931602 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2570400 1) .v)
    (.rational 14703368 1)) .v) (.rational 28951466 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14137200 1) .v) (.rational 71016416 1)) .v) (.rational 123485728 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 33700536 1) .v) (.rational 148677520 1)) .v) (.rational
    227016384 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 45623412 1) .v)
    (.rational 177794872 1)) .v) (.rational 237721312 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 38570960 1) .v) (.rational 134562592 1)) .v) (.rational 158099048 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 21049504 1) .v) (.rational 67176032
    1)) .v) (.rational 70279424 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7376752 1) .v) (.rational 22137792 1)) .v) (.rational 21095642 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1586748 1) .v) (.rational 4604240 1)) .v) (.rational
    4095508 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2529060 1) .v)
    (.rational 12953160 1)) .v) (.rational 20036152 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15174360 1) .v) (.rational 70364520 1)) .v) (.rational 98740790 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 39983276 1) .v) (.rational 168200632 1)) .v) (.rational
    213698574 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 60818080 1) .v)
    (.rational 233469464 1)) .v) (.rational 268790808 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 59001984 1) .v) (.rational 208850056 1)) .v) (.rational 219022540 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 38017416 1) .v) (.rational
    125943776 1)) .v) (.rational 121548928 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16390752 1) .v) (.rational 51729248 1)) .v) (.rational 46590134 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4629276 1) .v) (.rational 14163192 1)) .v)
    (.rational 12067570 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 807728 1)
    .v) (.rational 2425664 1)) .v) (.rational 1969932 1)) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1611288 1) .v) (.rational 7413888 1)) .v) (.rational
    9407734 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 10473372 1) .v) (.rational 44618808
    1)) .v) (.rational 52548556 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 30212544 1)
    .v) (.rational 119449224 1)) .v) (.rational 130491348 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 50961900 1) .v) (.rational 187894248 1)) .v) (.rational 190695042 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 55713744 1) .v) (.rational
    193028368 1)) .v) (.rational 182766096 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 41308236 1) .v) (.rational 135861328 1)) .v) (.rational 120830696 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 21086960 1) .v) (.rational 66603864 1)) .v)
    (.rational 56108336 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 7351708 1)
    .v) (.rational 22545288 1)) .v) (.rational 18128788 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1692544 1) .v) (.rational 5076928 1)) .v) (.rational 3911666 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 239112 1) .v) (.rational 701488 1)) .v)
    (.rational 515910 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 596808 1) .v) (.rational 2477520 1)) .v) (.rational 2667132 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4177656 1) .v) (.rational 16329888 1)) .v) (.rational 16615728
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 13088388 1) .v) (.rational 48272760 1))
    .v) (.rational 46414340 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    24220800 1) .v) (.rational 84604728 1)) .v) (.rational 76962538 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 29412264 1) .v) (.rational 97835904 1)) .v) (.rational
    84436192 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 24604788 1) .v)
    (.rational 78477720 1)) .v) (.rational 64528032 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 14465716 1) .v) (.rational 44574968 1)) .v) (.rational 35091180 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5975848 1) .v) (.rational 17910392 1)) .v)
    (.rational 13557262 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1700224 1)
    .v) (.rational 4975608 1)) .v) (.rational 3627392 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 317956 1) .v) (.rational 906696 1)) .v) (.rational 634336 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 35532 1) .v) (.rational 97472 1)) .v)
    (.rational 64584 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 97200 1) .v) (.rational 366624 1)) .v) (.rational 343512 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 729000 1) .v) (.rational 2622672 1)) .v) (.rational 2356020
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2463552 1) .v) (.rational 8469312 1))
    .v) (.rational 7292306 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4956588
    1) .v) (.rational 16331688 1)) .v) (.rational 13486904 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6606456 1) .v) (.rational 20948016 1)) .v) (.rational 16619034 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6137340 1) .v) (.rational 18819672
    1)) .v) (.rational 14379322 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4066848 1) .v) (.rational 12122856 1)) .v) (.rational 8946346 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1930968 1) .v) (.rational 5620752 1)) .v) (.rational
    4016252 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 648912 1) .v)
    (.rational 1848584 1)) .v) (.rational 1280002 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 149352 1) .v) (.rational 415224 1)) .v) (.rational 277862 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 22044 1) .v) (.rational 59016 1)) .v) (.rational
    37796 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1824 1) .v) (.rational
    4520 1)) .v) (.rational 2696 1)) (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3114

namespace FullLow3115
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow4.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow4.c410 e f g v*e*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_2 e g v+36*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^1+36*SmallGap.ReducedLayers.low0_100_4 e g v*e^2+4*SmallGap.ReducedLayers.low0_010_4 e g
    v+4*SmallGap.ReducedLayers.low0_010_5 e g v*e^1+4*SmallGap.ReducedLayers.low0_001_3 e g
    v+8*SmallGap.ReducedLayers.low0_001_4 e g v*e^1+4*SmallGap.ReducedLayers.low0_001_5 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.low1_200_2 e g v+18*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_200_4 e g v*e^2+3*SmallGap.ReducedLayers.low1_110_4 e g
    v+3*SmallGap.ReducedLayers.low1_110_5 e g v*e^1+3*SmallGap.ReducedLayers.low1_101_3 e g
    v+6*SmallGap.ReducedLayers.low1_101_4 e g v*e^1+3*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^2+1*SmallGap.ReducedLayers.low1_011_5 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 680 1) .v) (.rational 48300 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 120 1) .v) (.rational 9232 1)) .v) (.rational 316120 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 300 1) .v) (.rational 12424 1)) .v) (.rational
    348680 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1860 1) .v)
    (.rational 61776 1)) .v) (.rational 1263316 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    5580 1) .v) (.rational 107352 1)) .v) (.rational 1874648 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6060 1) .v) (.rational 46112 1)) .v) (.rational 869876 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13440 1) .v) (.rational
    270112 1)) .v) (.rational 3458944 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 47040 1)
    .v) (.rational 598768 1)) .v) (.rational 6529032 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 63840 1) .v) (.rational 420760 1)) .v) (.rational 4198364 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 42000 1) .v) (.rational 82640 1)) .v) (.rational
    982464 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 58620 1) .v) (.rational 854192 1)) .v) (.rational 6912940 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 234480 1) .v) (.rational 2388032 1)) .v) (.rational
    16216960 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 379920 1) .v) (.rational
    2465952 1)) .v) (.rational 14001868 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 319080 1) .v) (.rational 1151616 1)) .v) (.rational 5295772 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 146580 1) .v) (.rational 237184 1)) .v) (.rational
    740608 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 168960 1) .v) (.rational 1986616 1)) .v) (.rational
    10382428 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 760320 1) .v) (.rational 6827480 1))
    .v) (.rational 29913088 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1428240 1) .v)
    (.rational 9444056 1)) .v) (.rational 33993816 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1450680 1) .v) (.rational 6842400 1)) .v) (.rational 19456680 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 859800 1) .v) (.rational 2868704 1)) .v)
    (.rational 6020952 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 296880 1)
    .v) (.rational 736568 1)) .v) (.rational 1054912 1)) (.pow .g 5)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    331200 1) .v) (.rational 3300824 1)) .v) (.rational 11673556 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1656000 1) .v) (.rational 13496680 1)) .v) (.rational 40723196 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3533700 1) .v) (.rational 23274680 1)) .v) (.rational
    59060700 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4198800 1) .v)
    (.rational 22300904 1)) .v) (.rational 46835256 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3034320 1) .v) (.rational 13202008 1)) .v) (.rational 22730496 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1362360 1) .v) (.rational 5056632 1)) .v)
    (.rational 7239976 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 369420 1)
    .v) (.rational 1243928 1)) .v) (.rational 1554496 1)) (.pow .g 6)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 437040 1) .v) (.rational 3738600 1)) .v) (.rational 9490296 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2403720 1) .v) (.rational 17662800 1)) .v) (.rational 39298896
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5739960 1) .v) (.rational 36158120 1))
    .v) (.rational 70037448 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7801920
    1) .v) (.rational 42376384 1)) .v) (.rational 71244768 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6641280 1) .v) (.rational 31624936 1)) .v) (.rational 46420552 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3661560 1) .v) (.rational 15726560
    1)) .v) (.rational 20542504 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1301160 1) .v) (.rational 5224992 1)) .v) (.rational 6253004 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 284880 1) .v) (.rational 1105744 1)) .v) (.rational 1243552 1))
    (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 370440 1) .v) (.rational 2708544
    1)) .v) (.rational 5219736 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2222640 1) .v)
    (.rational 14458536 1)) .v) (.rational 25101240 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5870880 1) .v) (.rational 34022512 1)) .v) (.rational 53073960 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8980200 1) .v) (.rational 46676600 1)) .v)
    (.rational 65516424 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8794620 1)
    .v) (.rational 41552336 1)) .v) (.rational 52865820 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5746320 1) .v) (.rational 25166984 1)) .v) (.rational 29426152 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2525040 1) .v) (.rational 10486256
    1)) .v) (.rational 11461100 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    730800 1) .v) (.rational 2936136 1)) .v) (.rational 3040140 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 131340 1) .v) (.rational 515864 1)) .v) (.rational 507316 1))
    (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 181440 1) .v)
    (.rational 1123632 1)) .v) (.rational 1722528 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1179360 1) .v) (.rational 6667920 1)) .v) (.rational 9427104 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3413520 1) .v) (.rational 17649288 1)) .v) (.rational 22990680 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5801400 1) .v) (.rational 27578400
    1)) .v) (.rational 33162384 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6422760 1) .v) (.rational 28338000 1)) .v) (.rational 31626364 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4851360 1) .v) (.rational 20122968 1)) .v) (.rational
    21023424 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2540400 1) .v)
    (.rational 10046000 1)) .v) (.rational 9919920 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 915600 1) .v) (.rational 3492000 1)) .v) (.rational 3281736 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 219720 1) .v) (.rational 812024 1)) .v)
    (.rational 726472 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 32580 1) .v)
    (.rational 115872 1)) .v) (.rational 97688 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 38880 1) .v) (.rational 202176 1)) .v) (.rational
    255888 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 272160 1) .v) (.rational 1318032 1))
    .v) (.rational 1567008 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 856440 1) .v)
    (.rational 3865200 1)) .v) (.rational 4314648 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1600560 1) .v) (.rational 6752232 1)) .v) (.rational 7085976 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1975680 1) .v) (.rational 7834248 1)) .v)
    (.rational 7753908 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1693080 1)
    .v) (.rational 6356976 1)) .v) (.rational 5962140 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1029060 1) .v) (.rational 3686040 1)) .v) (.rational 3292140 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 444240 1) .v) (.rational 1525824 1)) .v)
    (.rational 1301424 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 133740 1)
    .v) (.rational 440376 1)) .v) (.rational 357940 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 26820 1) .v) (.rational 83976 1)) .v) (.rational 64376 1)) (.pow .g 9))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3240 1) .v) (.rational 9480 1)) .v) (.rational 6700
    1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3115

namespace FullLow3116
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  12*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_3 e g v+36*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_010_5 e g v+4*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_001_4 e g v+8*SmallGap.ReducedLayers.low0_001_5 e g v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.low1_200_3 e g v+18*SmallGap.ReducedLayers.low1_200_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_110_5 e g v+3*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_101_4 e g v+6*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^1+1*SmallGap.ReducedLayers.low1_011_6 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 120 1) .v) (.rational 16420 1)) .e) (.add (.mul (.add (.mul
    (.rational 1560 1) .v) (.rational 103608 1)) .f) (.mul (.add (.mul (.rational 2040 1) .v)
    (.rational 111552 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 9960 1) .v)
    (.rational 395124 1)) .f) (.mul (.add (.mul (.rational 16440 1) .v) (.rational 567992 1)) .g))
    .f) (.mul (.add (.mul (.rational 5760 1) .v) (.rational 249484 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 41400 1) .v) (.rational 1019636 1)) .f)
    (.mul (.add (.mul (.rational 86280 1) .v) (.rational 1853896 1)) .g)) .f) (.mul (.add (.mul
    (.rational 51240 1) .v) (.rational 1118752 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational
    1440 1) .v) (.rational 221096 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 124560 1) .v) (.rational 1891584 1)) .f) (.mul (.add (.mul
    (.rational 329280 1) .v) (.rational 4268048 1)) .g)) .f) (.mul (.add (.mul (.rational 304920
    1) .v) (.rational 3472868 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 108120 1) .v)
    (.rational 1169488 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 3600 1) .v) (.rational
    104004 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 273120 1) .v) (.rational 2576492 1)) .f) (.mul (.add (.mul (.rational
    897840 1) .v) (.rational 7156656 1)) .g)) .f) (.mul (.add (.mul (.rational 1162440 1) .v)
    (.rational 7758612 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 760920 1) .v) (.rational
    4168096 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 273720 1) .v) (.rational 1184220
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 57840 1) .v) (.rational 189216 1)) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 414000 1) .v) (.rational 2525064 1)) .f) (.mul (.add (.mul (.rational 1632960 1)
    .v) (.rational 8522496 1)) .g)) .f) (.mul (.add (.mul (.rational 2695680 1) .v) (.rational
    11924352 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 2456160 1) .v) (.rational 9134640
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 1381320 1) .v) (.rational 4335284 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.rational 508200 1) .v) (.rational 1389032 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.rational 122880 1) .v) (.rational 308644 1)) (.pow .g 6)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 401040 1) .v) (.rational 1671576 1)) .f) (.mul (.add (.mul (.rational 1835280 1)
    .v) (.rational 6716544 1)) .g)) .f) (.mul (.add (.mul (.rational 3634800 1) .v) (.rational
    11630520 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 4129920 1) .v) (.rational 11574288
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 3010200 1) .v) (.rational 7487748 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.rational 1481160 1) .v) (.rational 3357592 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.rational 494280 1) .v) (.rational 1050968 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.rational 106080 1) .v) (.rational 214376 1)) (.pow .g 7)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 220320 1) .v) (.rational 660960 1)) .f) (.mul (.add (.mul (.rational 1140480
    1) .v) (.rational 3090960 1)) .g)) .f) (.mul (.add (.mul (.rational 2608560 1) .v) (.rational
    6376296 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 3499200 1) .v) (.rational 7742304
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 3076560 1) .v) (.rational 6228864 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.rational 1864800 1) .v) (.rational 3512272 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.rational 787800 1) .v) (.rational 1401764 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.rational 225480 1) .v) (.rational 381328 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.rational 40440 1) .v) (.rational 64488 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 51840 1) .v) (.rational 116640 1)) .f) (.mul (.add (.mul (.rational 298080 1) .v)
    (.rational 622080 1)) .g)) .f) (.mul (.add (.mul (.rational 768240 1) .v) (.rational 1484184
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 1178640 1) .v) (.rational 2111376 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.rational 1203120 1) .v) (.rational 2010268 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.rational 860400 1) .v) (.rational 1352736 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.rational 438120 1) .v) (.rational 653284 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.rational 156600 1) .v) (.rational 222096 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational
    37440 1) .v) (.rational 50292 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 5400 1) .v)
    (.rational 6800 1)) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3116

namespace FullLow3117
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  20*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_4 e g v+4*SmallGap.ReducedLayers.low0_010_6 e g
    v+4*SmallGap.ReducedLayers.low0_001_5 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.low1_200_4 e g v+3*SmallGap.ReducedLayers.low1_110_6 e g
    v+3*SmallGap.ReducedLayers.low1_101_5 e g v+1*SmallGap.ReducedLayers.low1_011_7 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2400 1) .e) (.add (.mul (.rational 14700 1) .f) (.mul (.rational 15480 1) .g))) .e)
    (.add (.mul (.add (.mul (.rational 53880 1) .f) (.mul (.rational 75300 1) .g)) .f) (.mul
    (.rational 31680 1) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 132000
    1) .f) (.mul (.rational 232560 1) .g)) .f) (.mul (.rational 134100 1) (.pow .g 2))) .f) (.mul
    (.rational 23880 1) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 228480 1) .f) (.mul (.rational 499920 1) .g)) .f) (.mul (.rational 392280 1) (.pow
    .g 2))) .f) (.mul (.rational 126300 1) (.pow .g 3))) .f) (.mul (.rational 10560 1) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 281160 1) .f)
    (.mul (.rational 758880 1) .g)) .f) (.mul (.rational 801840 1) (.pow .g 2))) .f) (.mul
    (.rational 426240 1) (.pow .g 3))) .f) (.mul (.rational 126300 1) (.pow .g 4))) .f) (.mul
    (.rational 23880 1) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 234000 1) .f) (.mul (.rational 767160 1) .g)) .f) (.mul
    (.rational 1050240 1) (.pow .g 2))) .f) (.mul (.rational 801840 1) (.pow .g 3))) .f) (.mul
    (.rational 392280 1) (.pow .g 4))) .f) (.mul (.rational 134100 1) (.pow .g 5))) .f) (.mul
    (.rational 31680 1) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 116640 1) .f) (.mul (.rational 453600 1) .g)) .f)
    (.mul (.rational 767160 1) (.pow .g 2))) .f) (.mul (.rational 758880 1) (.pow .g 3))) .f)
    (.mul (.rational 499920 1) (.pow .g 4))) .f) (.mul (.rational 232560 1) (.pow .g 5))) .f)
    (.mul (.rational 75300 1) (.pow .g 6))) .f) (.mul (.rational 15480 1) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 25920 1) .f) (.mul (.rational 116640 1) .g)) .f) (.mul (.rational 234000 1) (.pow
    .g 2))) .f) (.mul (.rational 281160 1) (.pow .g 3))) .f) (.mul (.rational 228480 1) (.pow .g
    4))) .f) (.mul (.rational 132000 1) (.pow .g 5))) .f) (.mul (.rational 53880 1) (.pow .g 6)))
    .f) (.mul (.rational 14700 1) (.pow .g 7))) .f) (.mul (.rational 2400 1) (.pow .g 8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3117

end
end SPR.N6.Tail.CoreEndpoint
