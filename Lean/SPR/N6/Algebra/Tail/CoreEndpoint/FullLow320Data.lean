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

namespace FullLow3200
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsLow0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_0 e g v*e^4+4*SmallGap.ReducedLayers.low0_010_0 e
    g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_0 e g v*e^4+3*SmallGap.ReducedLayers.low1_110_0 e g
    v*e^2+1*SmallGap.ReducedLayers.low1_020_0 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 40 1) .v) (.rational 1120 1)) .e) (.add (.mul (.add (.mul (.add
    (.mul (.rational 40 1) .v) (.rational 872 1)) .v) (.rational 9926 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 100 1) .v) (.rational 1384 1)) .v) (.rational 12704 1)) .g))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 796 1) .v) (.rational 8908 1)) .v)
    (.rational 55568 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2388 1) .v) (.rational 19432
    1)) .v) (.rational 99376 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2588 1) .v)
    (.rational 14332 1)) .v) (.rational 62492 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 7292 1) .v) (.rational 56244 1)) .v) (.rational
    220404 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 25522 1) .v) (.rational 156080 1)) .v)
    (.rational 512324 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 34574 1) .v)
    (.rational 164072 1)) .v) (.rational 453850 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 22630 1) .v) (.rational 82368 1)) .v) (.rational 191332 1)) (.pow .g 3))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 40774
    1) .v) (.rational 244608 1)) .v) (.rational 657460 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 163096 1) .v) (.rational 822844 1)) .v) (.rational 1898368 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 263804 1) .v) (.rational 1111336 1)) .v) (.rational 2196986 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 220576 1) .v) (.rational 775128 1))
    .v) (.rational 1305852 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 100494
    1) .v) (.rational 296904 1)) .v) (.rational 422682 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 155588 1) .v)
    (.rational 774440 1)) .v) (.rational 1525018 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    700146 1) .v) (.rational 3056026 1)) .v) (.rational 5296322 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1312600 1) .v) (.rational 5012924 1)) .v) (.rational 7624624 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1326752 1) .v) (.rational 4438976 1)) .v)
    (.rational 5903468 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 779576 1)
    .v) (.rational 2298548 1)) .v) (.rational 2662878 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 265734 1) .v) (.rational 698598 1)) .v) (.rational 703614 1)) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 428954 1) .v) (.rational 1841598 1)) .v) (.rational 2800790 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2144770 1) .v) (.rational 8325992 1)) .v) (.rational
    11411661 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4564190 1) .v) (.rational
    16009974 1)) .v) (.rational 19728344 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5388140 1) .v) (.rational 17099464 1)) .v) (.rational 18900740 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3850198 1) .v) (.rational 11095810 1)) .v)
    (.rational 10982954 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1700138 1)
    .v) (.rational 4478672 1)) .v) (.rational 3968247 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 451154 1) .v) (.rational 1096666 1)) .v) (.rational 871144 1)) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 881998 1) .v) (.rational 3348448 1)) .v) (.rational 4105876
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4850989 1) .v) (.rational 17040630 1)) .v)
    (.rational 19234777 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11537447 1) .v)
    (.rational 37486610 1)) .v) (.rational 38876796 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 15536094 1) .v) (.rational 46721332 1)) .v) (.rational 44448266 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 13015148 1) .v) (.rational 36298180 1)) .v)
    (.rational 31643304 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7008169 1)
    .v) (.rational 18187242 1)) .v) (.rational 14522663 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2413279 1) .v) (.rational 5854878 1)) .v) (.rational 4283568 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 508716 1) .v) (.rational 1160076 1)) .v)
    (.rational 778102 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1375834 1) .v)
    (.rational 4697476 1)) .v) (.rational 4809872 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    8255004 1) .v) (.rational 26545286 1)) .v) (.rational 25480179 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 21680368 1) .v) (.rational 65628120 1)) .v) (.rational 58959209 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 32730970 1) .v) (.rational 93273952
    1)) .v) (.rational 78320526 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    31350470 1) .v) (.rational 84163820 1)) .v) (.rational 65981228 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 19821104 1) .v) (.rational 50195594 1)) .v) (.rational
    36708503 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8328940 1) .v)
    (.rational 19932768 1)) .v) (.rational 13586711 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2277986 1) .v) (.rational 5161588 1)) .v) (.rational 3274996 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 383268 1) .v) (.rational 823152 1)) .v)
    (.rational 484796 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1639570 1) .v) (.rational 5095636 1)) .v) (.rational 4482842 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10657205 1) .v) (.rational 31631132 1)) .v) (.rational 26485765 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 30611278 1) .v) (.rational 86705630 1)) .v)
    (.rational 68999934 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 51132774 1)
    .v) (.rational 138154190 1)) .v) (.rational 104346578 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 54983187 1) .v) (.rational 141681900 1)) .v) (.rational 101433781 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 39772419 1) .v) (.rational 97746246
    1)) .v) (.rational 66243923 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    19621876 1) .v) (.rational 45996930 1)) .v) (.rational 29461192 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6542852 1) .v) (.rational 14626430 1)) .v) (.rational
    8832820 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1425565 1) .v)
    (.rational 3035688 1)) .v) (.rational 1721485 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 189106 1) .v) (.rational 382378 1)) .v) (.rational 202126 1)) (.pow .g 9))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1490502 1) .v) (.rational
    4255684 1)) .v) (.rational 3292228 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 10433514
    1) .v) (.rational 28766362 1)) .v) (.rational 21446293 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 32518379 1) .v) (.rational 86500346 1)) .v) (.rational 62062261 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 59474592 1) .v) (.rational 152513282 1)) .v)
    (.rational 105160869 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 70803325
    1) .v) (.rational 174902128 1)) .v) (.rational 115729925 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 57498282 1) .v) (.rational 136720630 1)) .v) (.rational 86671226
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 32432647 1) .v) (.rational
    74165272 1)) .v) (.rational 44950639 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12677836 1) .v) (.rational 27842614 1)) .v) (.rational 16087291 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3359053 1) .v) (.rational 7068480 1)) .v)
    (.rational 3876191 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 574756 1)
    .v) (.rational 1154088 1)) .v) (.rational 596273 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 57862 1) .v) (.rational 110018 1)) .v) (.rational 52872 1)) (.pow .g 10))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1023426 1) .v)
    (.rational 2704800 1)) .v) (.rational 1875516 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    7675695 1) .v) (.rational 19765928 1)) .v) (.rational 13342227 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25787433 1) .v) (.rational 64640880 1)) .v) (.rational 42420816 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 51203607 1) .v) (.rational
    124815560 1)) .v) (.rational 79524647 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 66746527 1) .v) (.rational 158055888 1)) .v) (.rational 97621424 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 59978578 1) .v) (.rational 137810202 1)) .v)
    (.rational 82366204 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 37935942 1)
    .v) (.rational 84453250 1)) .v) (.rational 48736784 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16919727 1) .v) (.rational 36425452 1)) .v) (.rational 20235919 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5238849 1) .v) (.rational 10876248
    1)) .v) (.rational 5791616 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1085007 1) .v) (.rational 2162814 1)) .v) (.rational 1096609 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 139925 1) .v) (.rational 265902 1)) .v) (.rational 126974 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 9746 1) .v) (.rational 17436 1))
    .v) (.rational 7690 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 520072 1) .v) (.rational 1280820 1)) .v) (.rational
    808988 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4160576 1) .v) (.rational 10057798 1))
    .v) (.rational 6234581 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 14982940 1) .v)
    (.rational 35518408 1)) .v) (.rational 21582579 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 32070500 1) .v) (.rational 74476288 1)) .v) (.rational 44305438 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 45367842 1) .v) (.rational 103089968 1)) .v)
    (.rational 59953475 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 44596760 1)
    .v) (.rational 99026694 1)) .v) (.rational 56203963 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 31160658 1) .v) (.rational 67505664 1)) .v) (.rational 37312444 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 15544600 1) .v) (.rational 32787296
    1)) .v) (.rational 17600248 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5471496 1) .v) (.rational 11204988 1)) .v) (.rational 5819241 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1317296 1) .v) (.rational 2608688 1)) .v) (.rational
    1303442 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 204054 1) .v)
    (.rational 388384 1)) .v) (.rational 185083 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 17996 1) .v) (.rational 32596 1)) .v) (.rational 14600 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 666 1) .v) (.rational 1128 1)) .v) (.rational 462 1))
    (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 188762 1) .v) (.rational 436012 1)) .v) (.rational 254438 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1604477 1) .v) (.rational 3660106 1)) .v) (.rational
    2109845 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6163488 1) .v) (.rational
    13873618 1)) .v) (.rational 7892264 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14136620 1) .v) (.rational 31368678 1)) .v) (.rational 17590984 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 21540730 1) .v) (.rational 47068202 1)) .v)
    (.rational 25987143 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 22947613 1)
    .v) (.rational 49314482 1)) .v) (.rational 26766881 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17503502 1) .v) (.rational 36938260 1)) .v) (.rational 19674519 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 9617124 1) .v) (.rational 19892792
    1)) .v) (.rational 10373522 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3770305 1) .v) (.rational 7625478 1)) .v) (.rational 3881234 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1025860 1) .v) (.rational 2021992 1)) .v) (.rational 1000228 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 183196 1) .v) (.rational 350230 1))
    .v) (.rational 167323 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 19170 1)
    .v) (.rational 35294 1)) .v) (.rational 16124 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 881 1) .v) (.rational 1544 1)) .v) (.rational 663 1)) (.pow .g 12))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    45996 1) .v) (.rational 100338 1)) .v) (.rational 54822 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 413964 1) .v) (.rational 896358 1)) .v) (.rational 486282 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1689145 1) .v) (.rational 3628024 1)) .v) (.rational 1952943 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4129976 1) .v) (.rational 8792378
    1)) .v) (.rational 4692321 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6735544 1) .v) (.rational 14200692 1)) .v) (.rational 7506609 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7715372 1) .v) (.rational 16092802 1)) .v) (.rational
    8416553 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 6361597 1) .v)
    (.rational 13111626 1)) .v) (.rational 6775502 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3802262 1) .v) (.rational 7732386 1)) .v) (.rational 3941433 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1633921 1) .v) (.rational 3272588 1)) .v)
    (.rational 1641946 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 491924 1)
    .v) (.rational 968112 1)) .v) (.rational 476749 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 98386 1) .v) (.rational 189654 1)) .v) (.rational 91311 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11718 1) .v) (.rational 22028 1)) .v) (.rational
    10310 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 627 1) .v) (.rational
    1142 1)) .v) (.rational 515 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6684 1) .v) (.rational 13884
    1)) .v) (.rational 7200 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 63498 1) .v)
    (.rational 131466 1)) .v) (.rational 67968 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 274188 1) .v) (.rational 565602 1)) .v) (.rational 291414 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 711399 1) .v) (.rational 1461480 1)) .v) (.rational
    750081 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1234914 1) .v)
    (.rational 2525286 1)) .v) (.rational 1290372 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1510671 1) .v) (.rational 3073106 1)) .v) (.rational 1562435 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1335201 1) .v) (.rational 2700110 1)) .v)
    (.rational 1364909 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 859053 1)
    .v) (.rational 1725510 1)) .v) (.rational 866457 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 399309 1) .v) (.rational 795850 1)) .v) (.rational 396541 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 130779 1) .v) (.rational 258316 1)) .v)
    (.rational 127537 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 28647 1) .v)
    (.rational 55992 1)) .v) (.rational 27345 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3768 1) .v) (.rational 7274 1)) .v) (.rational 3506 1)) (.pow .g 11))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 225 1) .v) (.rational 428 1)) .v) (.rational 203 1)) (.pow
    .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 432 1) .v) (.rational 864 1)) .v) (.rational 432 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4320 1) .v) (.rational 8640 1)) .v) (.rational 4320 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 19674 1) .v) (.rational 39348 1)) .v)
    (.rational 19674 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 53946 1) .v)
    (.rational 107892 1)) .v) (.rational 53946 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 99175 1) .v) (.rational 198350 1)) .v) (.rational 99175 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 128768 1) .v) (.rational 257536 1)) .v) (.rational 128768
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 121072 1) .v) (.rational 242144
    1)) .v) (.rational 121072 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 83060
    1) .v) (.rational 166120 1)) .v) (.rational 83060 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 41266 1) .v) (.rational 82532 1)) .v) (.rational 41266 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 14480 1) .v) (.rational 28960 1)) .v)
    (.rational 14480 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 3406 1) .v)
    (.rational 6812 1)) .v) (.rational 3406 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 482 1) .v) (.rational 964 1)) .v) (.rational 482 1)) (.pow .g 11))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 31 1) .v) (.rational 62 1)) .v) (.rational 31 1)) (.pow .g 12)))
    (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3200

namespace FullLow3201
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsLow1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsLow0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(24*SmallGap.ReducedLayers.low0_100_0 e g v*e^3+6*SmallGap.ReducedLayers.low0_100_1
    e g v*e^4+8*SmallGap.ReducedLayers.low0_010_0 e g v*e^1+4*SmallGap.ReducedLayers.low0_010_1 e
    g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(12*SmallGap.ReducedLayers.low1_200_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_110_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^2+1*SmallGap.ReducedLayers.low1_020_1 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 300 1) .v) (.rational 8960 1)) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 260 1) .v) (.rational 5868 1)) .v) (.rational 74734 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 650 1) .v) (.rational 9076 1)) .v) (.rational 93558 1)) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 4798 1) .v) (.rational 55268 1)) .v) (.rational
    393606 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 14394 1) .v) (.rational 117220 1)) .v)
    (.rational 685790 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 15604 1) .v)
    (.rational 82368 1)) .v) (.rational 415316 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 41292 1) .v) (.rational 327924 1)) .v)
    (.rational 1468951 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 144522 1) .v) (.rational
    888386 1)) .v) (.rational 3322601 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 195814
    1) .v) (.rational 903582 1)) .v) (.rational 2838365 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 128230 1) .v) (.rational 434654 1)) .v) (.rational 1139451 1)) (.pow .g
    3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    218574 1) .v) (.rational 1355990 1)) .v) (.rational 4126072 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 874296 1) .v) (.rational 4475886 1)) .v) (.rational 11606613 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1414316 1) .v) (.rational 5909572 1)) .v) (.rational
    13006901 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1182912 1) .v)
    (.rational 4018604 1)) .v) (.rational 7434205 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 539230 1) .v) (.rational 1501510 1)) .v) (.rational 2299639 1)) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 792486 1) .v) (.rational 4104070 1)) .v) (.rational 9018747 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3566187 1) .v) (.rational 15962488 1)) .v) (.rational 30601485
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6686688 1) .v) (.rational 25773554 1))
    .v) (.rational 42892689 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6761202
    1) .v) (.rational 22458832 1)) .v) (.rational 32234561 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3975298 1) .v) (.rational 11462850 1)) .v) (.rational 14092430 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1356343 1) .v) (.rational 3449144
    1)) .v) (.rational 3617714 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2076873 1) .v) (.rational
    9331622 1)) .v) (.rational 15602751 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 10384365
    1) .v) (.rational 41727394 1)) .v) (.rational 62337729 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 22103833 1) .v) (.rational 79346166 1)) .v) (.rational 105514149 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 26109142 1) .v) (.rational 83858242 1)) .v)
    (.rational 98897541 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 18675635 1)
    .v) (.rational 53943870 1)) .v) (.rational 56266872 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8259241 1) .v) (.rational 21656402 1)) .v) (.rational 19971284 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2196239 1) .v) (.rational 5299462
    1)) .v) (.rational 4335836 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4048718 1) .v)
    (.rational 16157502 1)) .v) (.rational 21490581 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22267949 1) .v) (.rational 81536826 1)) .v) (.rational 99087820 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 52981425 1) .v) (.rational 177935586 1)) .v) (.rational
    197055756 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 71406795 1) .v)
    (.rational 220225310 1)) .v) (.rational 221788125 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 59911956 1) .v) (.rational 170214176 1)) .v) (.rational 155704636 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 32335779 1) .v) (.rational 85080982
    1)) .v) (.rational 70710385 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11171321 1) .v) (.rational 27423738 1)) .v) (.rational 20748789 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2364965 1) .v) (.rational 5463786 1)) .v) (.rational
    3776290 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5953601 1) .v)
    (.rational 21417140 1)) .v) (.rational 23516619 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 35721606 1) .v) (.rational 120237106 1)) .v) (.rational 123020675 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 93866964 1) .v) (.rational 295538086 1)) .v)
    (.rational 281221977 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 141886765
    1) .v) (.rational 418106760 1)) .v) (.rational 369476493 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 136192246 1) .v) (.rational 376224912 1)) .v) (.rational
    308494104 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 86386060 1) .v)
    (.rational 224321236 1)) .v) (.rational 170655260 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 36466528 1) .v) (.rational 89338990 1)) .v) (.rational 63091812 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 10035121 1) .v) (.rational 23289528
    1)) .v) (.rational 15278794 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1701749 1) .v) (.rational 3754188 1)) .v) (.rational 2287300 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 6626164 1) .v) (.rational 21696766 1)) .v)
    (.rational 20271233 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 43070066 1) .v)
    (.rational 133990902 1)) .v) (.rational 118599550 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 123798914 1) .v) (.rational 365738674 1)) .v) (.rational 306210313 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 207123301 1) .v) (.rational 581075266 1))
    .v) (.rational 459585037 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    223331075 1) .v) (.rational 595288896 1)) .v) (.rational 444353879 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 162221169 1) .v) (.rational 411251218 1)) .v) (.rational
    289522139 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 80505780 1) .v)
    (.rational 194376172 1)) .v) (.rational 128985080 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 27059763 1) .v) (.rational 62306486 1)) .v) (.rational 38936108 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5957879 1) .v) (.rational 13089726
    1)) .v) (.rational 7686783 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    800935 1) .v) (.rational 1676364 1)) .v) (.rational 920424 1)) (.pow .g 9)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5547575 1) .v) (.rational 16647384 1))
    .v) (.rational 13559827 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 38833025 1) .v)
    (.rational 112072944 1)) .v) (.rational 87669053 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 121135296 1) .v) (.rational 335988290 1)) .v) (.rational 252055092 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 221982451 1) .v) (.rational 591456568 1))
    .v) (.rational 424975807 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    265145115 1) .v) (.rational 678479168 1)) .v) (.rational 466380589 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 216406870 1) .v) (.rational 531799862 1)) .v) (.rational
    349317434 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 122941859 1) .v)
    (.rational 290128192 1)) .v) (.rational 181871899 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 48526727 1) .v) (.rational 109939886 1)) .v) (.rational 65650788 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 13023560 1) .v) (.rational 28294712
    1)) .v) (.rational 16046655 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2265801 1) .v) (.rational 4706954 1)) .v) (.rational 2521470 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 232989 1) .v) (.rational 459786 1)) .v) (.rational 230288 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3435318 1) .v) (.rational 9496434 1)) .v) (.rational 6876162 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 25764885 1) .v) (.rational 69179278 1)) .v) (.rational 48639881 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 86646647 1) .v) (.rational 225780922 1)) .v)
    (.rational 153946611 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 172435783
    1) .v) (.rational 435730526 1)) .v) (.rational 287745551 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 225646781 1) .v) (.rational 552546036 1)) .v) (.rational
    352939094 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 203952012 1) .v)
    (.rational 483626628 1)) .v) (.rational 298380925 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 130068044 1) .v) (.rational 298425192 1)) .v) (.rational 177541637 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 58667250 1) .v) (.rational
    130085092 1)) .v) (.rational 74461168 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18437739 1) .v) (.rational 39433032 1)) .v) (.rational 21645900 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3893433 1) .v) (.rational 8004372 1)) .v)
    (.rational 4191720 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 514849 1)
    .v) (.rational 1011236 1)) .v) (.rational 500782 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 37037 1) .v) (.rational 68704 1)) .v) (.rational 31667 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1523905 1) .v) (.rational 3897314 1)) .v) (.rational 2548465 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12191240 1) .v) (.rational 30532696 1)) .v) (.rational 19560050 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 43951952 1) .v) (.rational 107699974 1)) .v)
    (.rational 67515510 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 94316964 1)
    .v) (.rational 225919286 1)) .v) (.rational 138417670 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 134000639 1) .v) (.rational 313464042 1)) .v) (.rational 187458275 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 132584722 1) .v) (.rational
    302583936 1)) .v) (.rational 176360771 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 93498466 1) .v) (.rational 207923088 1)) .v) (.rational 117906443 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 47230587 1) .v) (.rational 102185082 1)) .v)
    (.rational 56250621 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 16902603 1)
    .v) (.rational 35499722 1)) .v) (.rational 18911569 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4158140 1) .v) (.rational 8449516 1)) .v) (.rational 4336311 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 662286 1) .v) (.rational 1295218 1)) .v)
    (.rational 635805 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 60547 1) .v)
    (.rational 112956 1)) .v) (.rational 52409 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2349 1) .v) (.rational 4114 1)) .v) (.rational 1765 1)) (.pow .g 12)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    457054 1) .v) (.rational 1085696 1)) .v) (.rational 649618 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3884959 1) .v) (.rational 9099650 1)) .v) (.rational 5372419 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 14942044 1) .v) (.rational 34480888 1)) .v)
    (.rational 20067382 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 34366150 1)
    .v) (.rational 78061704 1)) .v) (.rational 44735366 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 52612314 1) .v) (.rational 117519230 1)) .v) (.rational 66237925 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 56447612 1) .v) (.rational
    123853402 1)) .v) (.rational 68565384 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 43489844 1) .v) (.rational 93613710 1)) .v) (.rational 50821229 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 24222099 1) .v) (.rational 51071022 1)) .v)
    (.rational 27135291 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 9667675 1)
    .v) (.rational 19925634 1)) .v) (.rational 10334966 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2692079 1) .v) (.rational 5408620 1)) .v) (.rational 2728815 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 495178 1) .v) (.rational 965826 1)) .v)
    (.rational 471531 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 53805 1) .v)
    (.rational 101250 1)) .v) (.rational 47445 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2595 1) .v) (.rational 4664 1)) .v) (.rational 2069 1)) (.pow .g 12))) .f))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    82770 1) .v) (.rational 183366 1)) .v) (.rational 101556 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 744930 1) .v) (.rational 1636806 1)) .v) (.rational 899652 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3043579 1) .v) (.rational 6628328 1)) .v) (.rational 3612877 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7463552 1) .v) (.rational 16098112
    1)) .v) (.rational 8694398 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    12233393 1) .v) (.rational 26111014 1)) .v) (.rational 13960543 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 14119371 1) .v) (.rational 29794330 1)) .v) (.rational
    15753205 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 11766932 1) .v)
    (.rational 24522208 1)) .v) (.rational 12806222 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7135345 1) .v) (.rational 14667146 1)) .v) (.rational 7554419 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3124932 1) .v) (.rational 6326222 1)) .v)
    (.rational 3207848 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 964003 1)
    .v) (.rational 1918304 1)) .v) (.rational 955423 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 198821 1) .v) (.rational 387904 1)) .v) (.rational 189169 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 24607 1) .v) (.rational 46902 1)) .v) (.rational
    22295 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 1381 1) .v) (.rational
    2558 1)) .v) (.rational 1177 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6804 1) .v) (.rational
    14124 1)) .v) (.rational 7320 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 64638 1) .v)
    (.rational 133746 1)) .v) (.rational 69108 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 279492 1) .v) (.rational 576210 1)) .v) (.rational 296718 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 727413 1) .v) (.rational 1493508 1)) .v) (.rational
    766095 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1269398 1) .v)
    (.rational 2594254 1)) .v) (.rational 1324856 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1565301 1) .v) (.rational 3182366 1)) .v) (.rational 1617065 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1399195 1) .v) (.rational 2828098 1)) .v)
    (.rational 1428903 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 914095 1)
    .v) (.rational 1835594 1)) .v) (.rational 921499 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 433503 1) .v) (.rational 864238 1)) .v) (.rational 430735 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 145673 1) .v) (.rational 288104 1)) .v)
    (.rational 142431 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 32957 1) .v)
    (.rational 64612 1)) .v) (.rational 31655 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4512 1) .v) (.rational 8762 1)) .v) (.rational 4250 1)) (.pow .g 11))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 283 1) .v) (.rational 544 1)) .v) (.rational 261 1)) (.pow
    .g 12))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3201

namespace FullLow3202
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsLow2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    4*SmallGap.PolarCoefficientsLow0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(36*SmallGap.ReducedLayers.low0_100_0 e g v*e^2+24*SmallGap.ReducedLayers.low0_100_1
    e g v*e^3+6*SmallGap.ReducedLayers.low0_100_2 e g v*e^4+4*SmallGap.ReducedLayers.low0_010_0 e
    g v+8*SmallGap.ReducedLayers.low0_010_1 e g v*e^1+4*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(18*SmallGap.ReducedLayers.low1_200_0 e g v*e^2+12*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_200_2 e g v*e^4+3*SmallGap.ReducedLayers.low1_110_0 e g
    v+6*SmallGap.ReducedLayers.low1_110_1 e g v*e^1+3*SmallGap.ReducedLayers.low1_110_2 e g
    v*e^2+1*SmallGap.ReducedLayers.low1_020_2 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    960 1) .v) (.rational 31440 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 700 1) .v)
    (.rational 17040 1)) .v) (.rational 247592 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1750 1) .v) (.rational 25640 1)) .v) (.rational 302778 1)) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 12162 1) .v) (.rational 148036 1)) .v) (.rational 1227170
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 36486 1) .v) (.rational 303768 1)) .v)
    (.rational 2077992 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 39566 1) .v)
    (.rational 200640 1)) .v) (.rational 1205282 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 99048 1) .v) (.rational 822636 1)) .v)
    (.rational 4299033 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 346668 1) .v) (.rational
    2163382 1)) .v) (.rational 9429085 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    469796 1) .v) (.rational 2106714 1)) .v) (.rational 7714635 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 307820 1) .v) (.rational 952806 1)) .v) (.rational 2908643 1))
    (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 497270 1) .v) (.rational 3221084 1)) .v) (.rational 11318296 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1989080 1) .v) (.rational 10382648 1)) .v) (.rational 30893294
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3217960 1) .v) (.rational 13304290 1))
    .v) (.rational 33296846 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2692100
    1) .v) (.rational 8731958 1)) .v) (.rational 18093694 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1227730 1) .v) (.rational 3144014 1)) .v) (.rational 5253698 1)) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 1709202 1) .v) (.rational 9276948 1)) .v) (.rational 23161823 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7691409 1) .v) (.rational 35437622 1)) .v) (.rational
    76485547 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 14422680 1) .v) (.rational
    56060210 1)) .v) (.rational 103782331 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14586138 1) .v) (.rational 47802022 1)) .v) (.rational 75089139 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8578754 1) .v) (.rational 23906750 1)) .v)
    (.rational 31482380 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2928161 1)
    .v) (.rational 7087280 1)) .v) (.rational 7761834 1)) (.pow .g 5)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    4231771 1) .v) (.rational 20042870 1)) .v) (.rational 37425919 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 21158855 1) .v) (.rational 88425528 1)) .v) (.rational 146137723 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 45044564 1) .v) (.rational 165791302 1)) .v)
    (.rational 241134034 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 53225126
    1) .v) (.rational 172831008 1)) .v) (.rational 219942066 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 38093871 1) .v) (.rational 109876904 1)) .v) (.rational 121800523
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 16860863 1) .v) (.rational
    43769554 1)) .v) (.rational 42242751 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4487730 1) .v) (.rational 10690576 1)) .v) (.rational 9040348 1)) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 7740104 1) .v) (.rational 32735408 1)) .v) (.rational 47887211
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 42570572 1) .v) (.rational 163529014 1)) .v)
    (.rational 216737217 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 101315170 1) .v)
    (.rational 353356834 1)) .v) (.rational 422793573 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 136638975 1) .v) (.rational 433481856 1)) .v) (.rational 466887203 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 114772304 1) .v) (.rational
    332766790 1)) .v) (.rational 322200198 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 62048518 1) .v) (.rational 165735276 1)) .v) (.rational 144436490 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 21483990 1) .v) (.rational 53456032 1)) .v)
    (.rational 42121720 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4560095 1)
    .v) (.rational 10707378 1)) .v) (.rational 7685226 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 10562129 1) .v) (.rational 40413878 1)) .v) (.rational 48196663 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 63372774 1) .v) (.rational 225123386 1)) .v)
    (.rational 248454021 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 166603928 1) .v)
    (.rational 549442518 1)) .v) (.rational 559860087 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 252102545 1) .v) (.rational 772850156 1)) .v) (.rational 725937395 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 242427133 1) .v) (.rational
    692860286 1)) .v) (.rational 599643803 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 154193776 1) .v) (.rational 412759738 1)) .v) (.rational 329465613 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 65339386 1) .v) (.rational 164835752 1)) .v)
    (.rational 121646595 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 18070117
    1) .v) (.rational 43260522 1)) .v) (.rational 29617439 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3082960 1) .v) (.rational 7047106 1)) .v) (.rational 4487708 1)) (.pow
    .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10733718 1) .v) (.rational
    37435952 1)) .v) (.rational 37602605 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 69769167
    1) .v) (.rational 229770970 1)) .v) (.rational 217475239 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 200676336 1) .v) (.rational 623943770 1)) .v) (.rational 555531563 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 336259011 1) .v) (.rational 987658370 1))
    .v) (.rational 826249755 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    363522014 1) .v) (.rational 1010188730 1)) .v) (.rational 793653506 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 265097736 1) .v) (.rational 698653860 1)) .v)
    (.rational 515597370 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 132294904
    1) .v) (.rational 331688868 1)) .v) (.rational 230118034 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 44800799 1) .v) (.rational 107208224 1)) .v) (.rational 69986102
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 9959828 1) .v) (.rational
    22803820 1)) .v) (.rational 14006350 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1355157 1) .v) (.rational 2967996 1)) .v) (.rational 1709924 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8015143 1) .v) (.rational
    25592478 1)) .v) (.rational 22217103 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 56106001
    1) .v) (.rational 171438568 1)) .v) (.rational 142340989 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 175172503 1) .v) (.rational 512007872 1)) .v) (.rational 405994035 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 321657005 1) .v) (.rational 899327732 1))
    .v) (.rational 680284219 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    385526012 1) .v) (.rational 1031571938 1)) .v) (.rational 743803094 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 316300538 1) .v) (.rational 810695820 1)) .v)
    (.rational 556919408 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 181018517
    1) .v) (.rational 444931798 1)) .v) (.rational 291108067 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 72166997 1) .v) (.rational 170281236 1)) .v) (.rational 106047083
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 19624953 1) .v) (.rational
    44461534 1)) .v) (.rational 26315451 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3473017 1) .v) (.rational 7541082 1)) .v) (.rational 4225561 1)) (.pow .g 9))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 364952 1) .v) (.rational 754788 1)) .v) (.rational
    396958 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 4273460 1) .v) (.rational 12524820 1)) .v) (.rational 9586942 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 32050950 1) .v) (.rational 90871212 1)) .v) (.rational
    67330100 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 107906754 1) .v) (.rational
    295757532 1)) .v) (.rational 211844416 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 215287826 1) .v) (.rational 570177718 1)) .v) (.rational 394340752 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 282930062 1) .v) (.rational 723882896 1))
    .v) (.rational 482891233 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    257382620 1) .v) (.rational 636108096 1)) .v) (.rational 408887703 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 165646922 1) .v) (.rational 395429466 1)) .v) (.rational
    244667631 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 75647703 1) .v)
    (.rational 174371174 1)) .v) (.rational 103706093 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 24168906 1) .v) (.rational 53736338 1)) .v) (.rational 30650235 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 5214820 1) .v) (.rational 11154340
    1)) .v) (.rational 6077229 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    709204 1) .v) (.rational 1451118 1)) .v) (.rational 749661 1)) (.pow .g 10))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 52921 1) .v) (.rational 102356 1)) .v) (.rational 49435 1)) (.pow
    .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1541033 1) .v) (.rational 4151862 1)) .v) (.rational 2845501 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12328264 1) .v) (.rational 32420762 1)) .v) (.rational 21718045
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 44505258 1) .v) (.rational 114145612 1))
    .v) (.rational 74645263 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    95792186 1) .v) (.rational 239427808 1)) .v) (.rational 152663381 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 136791705 1) .v) (.rational 332965532 1)) .v) (.rational
    206752708 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 136387824 1) .v)
    (.rational 323084354 1)) .v) (.rational 195126108 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 97226594 1) .v) (.rational 223971888 1)) .v) (.rational 131380432 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 49840223 1) .v) (.rational
    111532672 1)) .v) (.rational 63432872 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18186702 1) .v) (.rational 39470690 1)) .v) (.rational 21711933 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4589134 1) .v) (.rational 9632680 1)) .v)
    (.rational 5105871 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 755502 1)
    .v) (.rational 1526404 1)) .v) (.rational 774989 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 72129 1) .v) (.rational 139084 1)) .v) (.rational 66955 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2966 1) .v) (.rational 5372 1)) .v)
    (.rational 2406 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 337080 1) .v) (.rational 835452 1)) .v) (.rational
    518760 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2865180 1) .v) (.rational 6984768 1))
    .v) (.rational 4272396 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11036792 1) .v)
    (.rational 26440168 1)) .v) (.rational 15914050 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 25472340 1) .v) (.rational 59912724 1)) .v) (.rational 35443230 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 39225598 1) .v) (.rational 90500256 1)) .v)
    (.rational 52557663 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 42456817 1)
    .v) (.rational 95992864 1)) .v) (.rational 54655199 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 33117872 1) .v) (.rational 73299098 1)) .v) (.rational 40856669 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 18756067 1) .v) (.rational 40584352
    1)) .v) (.rational 22107459 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7652310 1) .v) (.rational 16160254 1)) .v) (.rational 8583775 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2192283 1) .v) (.rational 4507616 1)) .v) (.rational
    2327593 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 418212 1) .v)
    (.rational 834262 1)) .v) (.rational 416949 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 47617 1) .v) (.rational 91660 1)) .v) (.rational 44043 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2440 1) .v) (.rational 4494 1)) .v) (.rational 2054
    1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 33804 1) .v) (.rational 77088 1)) .v) (.rational 43764 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 304236 1) .v) (.rational 686988 1)) .v) (.rational
    386640 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1245149 1) .v) (.rational 2781734
    1)) .v) (.rational 1550649 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3065176 1) .v) (.rational 6768934 1)) .v) (.rational 3733677 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5056885 1) .v) (.rational 11028394 1)) .v) (.rational 6012970 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5893671 1) .v) (.rational 12680872
    1)) .v) (.rational 6826324 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4979273 1) .v) (.rational 10558458 1)) .v) (.rational 5604658 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3075215 1) .v) (.rational 6419024 1)) .v) (.rational
    3355118 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1379301 1) .v)
    (.rational 2830214 1)) .v) (.rational 1454192 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 438625 1) .v) (.rational 883284 1)) .v) (.rational 445220 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 93982 1) .v) (.rational 185344 1)) .v) (.rational
    91405 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 12197 1) .v) (.rational
    23490 1)) .v) (.rational 11293 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    726 1) .v) (.rational 1360 1)) .v) (.rational 634 1)) (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3202

namespace FullLow3203
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow3.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsLow3.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow3.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    8*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(24*SmallGap.ReducedLayers.low0_100_0 e g v*e^1+36*SmallGap.ReducedLayers.low0_100_1
    e g v*e^2+24*SmallGap.ReducedLayers.low0_100_2 e g v*e^3+6*SmallGap.ReducedLayers.low0_100_3 e
    g v*e^4+4*SmallGap.ReducedLayers.low0_010_1 e g v+8*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_010_3 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(12*SmallGap.ReducedLayers.low1_200_0 e g v*e^1+18*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_200_2 e g v*e^3+3*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_110_1 e g v+6*SmallGap.ReducedLayers.low1_110_2 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_110_3 e g v*e^2+1*SmallGap.ReducedLayers.low1_020_3 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1700 1) .v)
    (.rational 63200 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1000 1) .v) (.rational
    27700 1)) .v) (.rational 471710 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2500 1) .v)
    (.rational 40500 1)) .v) (.rational 562900 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 16588 1) .v) (.rational 222604 1)) .v) (.rational 2203296 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 49764 1) .v) (.rational 439732 1)) .v) (.rational 3618136
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 53984 1) .v) (.rational 268400 1)) .v)
    (.rational 1998984 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 129032 1) .v) (.rational 1156712 1)) .v) (.rational 7235909 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 451612 1) .v) (.rational 2933782 1)) .v) (.rational
    15337493 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 612164 1) .v) (.rational
    2697250 1)) .v) (.rational 11929465 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 401380 1) .v) (.rational 1112254 1)) .v) (.rational 4148667 1)) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 617440 1)
    .v) (.rational 4275978 1)) .v) (.rational 17785790 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2469760 1) .v) (.rational 13381398 1)) .v) (.rational 46911461 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3996136 1) .v) (.rational 16481652 1)) .v) (.rational
    48252013 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3344248 1) .v)
    (.rational 10283540 1)) .v) (.rational 24559625 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1526088 1) .v) (.rational 3495030 1)) .v) (.rational 6507933 1)) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2013312 1) .v) (.rational 11671982 1)) .v) (.rational 33854383 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9059904 1) .v) (.rational 43601372 1)) .v) (.rational 108352528
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16990240 1) .v) (.rational 67171052 1))
    .v) (.rational 141386997 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    17186288 1) .v) (.rational 55612176 1)) .v) (.rational 97474585 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10111424 1) .v) (.rational 27017790 1)) .v) (.rational
    38613448 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3452616 1) .v)
    (.rational 7833912 1)) .v) (.rational 8980967 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4690776 1)
    .v) (.rational 23805658 1)) .v) (.rational 50608932 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23453880 1) .v) (.rational 103316110 1)) .v) (.rational 192446186 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 49936166 1) .v) (.rational 190305780 1)) .v)
    (.rational 308042782 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 59021384
    1) .v) (.rational 194886858 1)) .v) (.rational 271696795 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 42261596 1) .v) (.rational 121970474 1)) .v) (.rational 145397775
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 18716240 1) .v) (.rational
    48072922 1)) .v) (.rational 48956289 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4983646 1) .v) (.rational 11707308 1)) .v) (.rational 10296335 1)) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 7972076 1) .v) (.rational 36268582 1)) .v) (.rational 59339333
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 43846418 1) .v) (.rational 178994444 1)) .v)
    (.rational 262887615 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 104375402 1) .v)
    (.rational 382129952 1)) .v) (.rational 501331031 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 140841174 1) .v) (.rational 463629790 1)) .v) (.rational 541190566 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 118408392 1) .v) (.rational
    352850110 1)) .v) (.rational 365901786 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 64095486 1) .v) (.rational 174921336 1)) .v) (.rational 161586684 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 22226106 1) .v) (.rational 56450452 1)) .v)
    (.rational 46843778 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4723866 1)
    .v) (.rational 11373394 1)) .v) (.rational 8588207 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 9920628 1) .v) (.rational 40952258 1)) .v) (.rational 53854546 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 59523768 1) .v) (.rational 226031654 1)) .v)
    (.rational 272969539 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 156547876 1) .v)
    (.rational 546995902 1)) .v) (.rational 604916039 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 237104840 1) .v) (.rational 764034382 1)) .v) (.rational 772415680 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 228363028 1) .v) (.rational
    681820164 1)) .v) (.rational 630220626 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 145584520 1) .v) (.rational 405702364 1)) .v) (.rational 343755086 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 61881492 1) .v) (.rational 162501982 1)) .v)
    (.rational 126880570 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 17177536
    1) .v) (.rational 42959638 1)) .v) (.rational 31122657 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2942096 1) .v) (.rational 7072086 1)) .v) (.rational 4781395 1)) (.pow
    .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8948176 1) .v) (.rational
    33719014 1)) .v) (.rational 36942435 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 58163144
    1) .v) (.rational 205460204 1)) .v) (.rational 210817454 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 167397104 1) .v) (.rational 554485474 1)) .v) (.rational 531863185 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 280889488 1) .v) (.rational 873766254 1))
    .v) (.rational 782738642 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    304388256 1) .v) (.rational 891817582 1)) .v) (.rational 746268424 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 222767868 1) .v) (.rational 617421304 1)) .v) (.rational
    483352282 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 111721664 1) .v)
    (.rational 294528286 1)) .v) (.rational 216299230 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 38079688 1) .v) (.rational 96041726 1)) .v) (.rational 66377413 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8534040 1) .v) (.rational 20686944
    1)) .v) (.rational 13483292 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1172008 1) .v) (.rational 2732808 1)) .v) (.rational 1676749 1)) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5698244 1) .v) (.rational 19659506
    1)) .v) (.rational 18456008 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 39887708 1) .v)
    (.rational 130910966 1)) .v) (.rational 116975600 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 124643942 1) .v) (.rational 389144808 1)) .v) (.rational 330487184 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 229323448 1) .v) (.rational 681567702 1))
    .v) (.rational 549651600 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    275772042 1) .v) (.rational 781444238 1)) .v) (.rational 598289832 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 227385644 1) .v) (.rational 615732220 1)) .v) (.rational
    447748046 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 131048992 1) .v)
    (.rational 340059432 1)) .v) (.rational 235087890 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 52742248 1) .v) (.rational 131510024 1)) .v) (.rational 86510357 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 14521434 1) .v) (.rational 34850976
    1)) .v) (.rational 21813781 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2610884 1) .v) (.rational 6024410 1)) .v) (.rational 3578031 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 279790 1) .v) (.rational 616320 1)) .v) (.rational 344385 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2432116 1) .v) (.rational 7692394 1)) .v) (.rational 6321192 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 18240870 1) .v) (.rational 55526446 1)) .v) (.rational 44000724 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 61483054 1) .v) (.rational 180063818 1)) .v)
    (.rational 137411456 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 122986656
    1) .v) (.rational 346550320 1)) .v) (.rational 254416264 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 162342062 1) .v) (.rational 440335492 1)) .v) (.rational
    310768743 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 148665154 1) .v)
    (.rational 388480668 1)) .v) (.rational 263464913 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 96578276 1) .v) (.rational 243377234 1)) .v) (.rational 158569697 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 44671206 1) .v) (.rational
    108642558 1)) .v) (.rational 67971474 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14516554 1) .v) (.rational 34067734 1)) .v) (.rational 20440829 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3203044 1) .v) (.rational 7237556 1)) .v)
    (.rational 4151427 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 448606 1)
    .v) (.rational 969822 1)) .v) (.rational 528093 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 34798 1) .v) (.rational 70908 1)) .v) (.rational 36110 1)) (.pow .g 11))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    625476 1) .v) (.rational 1813752 1)) .v) (.rational 1325412 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5003808 1) .v) (.rational 14099496 1)) .v) (.rational 10040436 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 18091144 1) .v) (.rational 49498498 1)) .v)
    (.rational 34303152 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 39071368 1)
    .v) (.rational 103749330 1)) .v) (.rational 69886036 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 56114330 1) .v) (.rational 144565874 1)) .v) (.rational 94550086 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 56431460 1) .v) (.rational
    141027140 1)) .v) (.rational 89466281 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 40719134 1) .v) (.rational 98693542 1)) .v) (.rational 60668973 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 21221104 1) .v) (.rational 49861520 1)) .v)
    (.rational 29663092 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 7916222 1)
    .v) (.rational 18009890 1)) .v) (.rational 10349204 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2056676 1) .v) (.rational 4518884 1)) .v) (.rational 2500253 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 351938 1) .v) (.rational 742968 1)) .v)
    (.rational 393597 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 35392 1) .v)
    (.rational 71086 1)) .v) (.rational 35694 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1564 1) .v) (.rational 2932 1)) .v) (.rational 1368 1)) (.pow .g 12)))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 73440
    1) .v) (.rational 195072 1)) .v) (.rational 128232 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 624240 1) .v) (.rational 1624308 1)) .v) (.rational 1049364 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2409284 1) .v) (.rational 6134994 1)) .v) (.rational
    3889980 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5584830 1) .v)
    (.rational 13903738 1)) .v) (.rational 8640868 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8663614 1) .v) (.rational 21068428 1)) .v) (.rational 12816481 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 9480796 1) .v) (.rational 22501900 1)) .v)
    (.rational 13380674 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7510226 1)
    .v) (.rational 17381040 1)) .v) (.rational 10088655 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4342888 1) .v) (.rational 9789714 1)) .v) (.rational 5537486 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1821270 1) .v) (.rational 3992758 1)) .v)
    (.rational 2196373 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 540804 1)
    .v) (.rational 1150468 1)) .v) (.rational 613746 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 108066 1) .v) (.rational 222338 1)) .v) (.rational 114577 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 13066 1) .v) (.rational 25872 1)) .v) (.rational
    12806 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 724 1) .v) (.rational
    1370 1)) .v) (.rational 646 1)) (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3203

namespace FullLow3204
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow3.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsLow4.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow3.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow4.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    8*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow2.c410 e f g v*e*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_0 e g v+24*SmallGap.ReducedLayers.low0_100_1 e g
    v*e^1+36*SmallGap.ReducedLayers.low0_100_2 e g v*e^2+24*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^3+6*SmallGap.ReducedLayers.low0_100_4 e g v*e^4+4*SmallGap.ReducedLayers.low0_010_2 e g
    v+8*SmallGap.ReducedLayers.low0_010_3 e g v*e^1+4*SmallGap.ReducedLayers.low0_010_4 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_0 e g v+12*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_200_2 e g v*e^2+12*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_200_4 e g v*e^4+3*SmallGap.ReducedLayers.low1_110_2 e g
    v+6*SmallGap.ReducedLayers.low1_110_3 e g v*e^1+3*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^2+1*SmallGap.ReducedLayers.low1_020_4 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1800 1) .v) (.rational
    79600 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 800 1) .v) (.rational 27240 1))
    .v) (.rational 565540 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2000 1) .v) (.rational
    38680 1)) .v) (.rational 658080 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 12832 1) .v) (.rational 203636 1)) .v) (.rational 2495664 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 38496 1) .v) (.rational 385528 1)) .v) (.rational 3967914 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 41776 1) .v) (.rational 212940 1)) .v) (.rational
    2078056 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 96348 1) .v) (.rational 990600 1)) .v) (.rational 7684283 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 337218 1) .v) (.rational 2406854 1)) .v) (.rational 15696463 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 457246 1) .v) (.rational 2051826 1)) .v)
    (.rational 11521663 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 300070 1)
    .v) (.rational 731666 1)) .v) (.rational 3612937 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 442806 1) .v) (.rational
    3454452 1)) .v) (.rational 17586514 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1771224
    1) .v) (.rational 10429004 1)) .v) (.rational 44659614 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2866596 1) .v) (.rational 12197150 1)) .v) (.rational 43491444 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2400504 1) .v) (.rational 7071906 1)) .v)
    (.rational 20353874 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1096726 1)
    .v) (.rational 2184294 1)) .v) (.rational 4702954 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1375492 1) .v)
    (.rational 8914544 1)) .v) (.rational 30950491 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6189714 1) .v) (.rational 32410244 1)) .v) (.rational 95646038 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11610232 1) .v) (.rational 48272144 1)) .v) (.rational
    119219711 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 11750480 1) .v)
    (.rational 38406078 1)) .v) (.rational 77390511 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6919768 1) .v) (.rational 17898658 1)) .v) (.rational 28395182 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2365886 1) .v) (.rational 5019014 1)) .v)
    (.rational 6060723 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3014428 1) .v) (.rational 17055656
    1)) .v) (.rational 42363890 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 15072140 1) .v)
    (.rational 72580068 1)) .v) (.rational 156363497 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32098508 1) .v) (.rational 130798472 1)) .v) (.rational 241636488 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 37961192 1) .v) (.rational 130958912 1)) .v)
    (.rational 204758092 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 27209420
    1) .v) (.rational 80319038 1)) .v) (.rational 105091846 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12067076 1) .v) (.rational 31229638 1)) .v) (.rational 34145331
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3217964 1) .v) (.rational
    7582106 1)) .v) (.rational 7053864 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4726136 1)
    .v) (.rational 23924080 1)) .v) (.rational 44765771 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25993748 1) .v) (.rational 116391794 1)) .v) (.rational 193614071 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 61899664 1) .v) (.rational 244911650 1)) .v)
    (.rational 359816776 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 83595378
    1) .v) (.rational 293225564 1)) .v) (.rational 378474044 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 70379536 1) .v) (.rational 220905392 1)) .v) (.rational 250098848
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 38172848 1) .v) (.rational
    108979588 1)) .v) (.rational 108798630 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13268408 1) .v) (.rational 35238320 1)) .v) (.rational 31461877 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2826042 1) .v) (.rational 7158358 1)) .v)
    (.rational 5830919 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5270018 1)
    .v) (.rational 24136668 1)) .v) (.rational 35692318 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31620108 1) .v) (.rational 131794392 1)) .v) (.rational 177506274 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 83203450 1) .v) (.rational 315784898 1)) .v)
    (.rational 386032270 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 126166260
    1) .v) (.rational 437526398 1)) .v) (.rational 484606914 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 121754774 1) .v) (.rational 388517840 1)) .v) (.rational
    390341070 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 77842724 1) .v)
    (.rational 231061312 1)) .v) (.rational 211652720 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 33209886 1) .v) (.rational 92990532 1)) .v) (.rational 78370418 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 9257228 1) .v) (.rational 24821532
    1)) .v) (.rational 19460428 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1591376 1) .v) (.rational 4136558 1)) .v) (.rational 3042452 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 4077440 1) .v) (.rational 16987184 1)) .v)
    (.rational 20663269 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 26503360 1) .v)
    (.rational 102639296 1)) .v) (.rational 116144442 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 76329576 1) .v) (.rational 275017284 1)) .v) (.rational 288934649 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 128275708 1) .v) (.rational 431168664 1)) .v)
    (.rational 420318198 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 139365760
    1) .v) (.rational 439150708 1)) .v) (.rational 397726288 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 102383550 1) .v) (.rational 304577996 1)) .v) (.rational
    257155784 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 51611000 1) .v)
    (.rational 146209684 1)) .v) (.rational 115690276 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17704636 1) .v) (.rational 48190594 1)) .v) (.rational 35946043 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3996988 1) .v) (.rational 10525658
    1)) .v) (.rational 7430546 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    552730 1) .v) (.rational 1410074 1)) .v) (.rational 940453 1)) (.pow .g 9)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2079156 1) .v) (.rational 7905652 1)) .v)
    (.rational 8163086 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 14554092 1) .v) (.rational
    52279104 1)) .v) (.rational 51099341 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    45517400 1) .v) (.rational 154557488 1)) .v) (.rational 142804336 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 83901204 1) .v) (.rational 269798156 1)) .v) (.rational
    235528569 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 101213992 1) .v)
    (.rational 309185128 1)) .v) (.rational 255183062 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 83848116 1) .v) (.rational 244370784 1)) .v) (.rational 191024810 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 48639540 1) .v) (.rational
    135935136 1)) .v) (.rational 100909848 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19744092 1) .v) (.rational 53176524 1)) .v) (.rational 37589255 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5495300 1) .v) (.rational 14310066 1)) .v)
    (.rational 9644860 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1000968 1)
    .v) (.rational 2517958 1)) .v) (.rational 1614167 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 108772 1) .v) (.rational 261818 1)) .v) (.rational 158024 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 628344 1)
    .v) (.rational 2186688 1)) .v) (.rational 1962900 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4712580 1) .v) (.rational 15689364 1)) .v) (.rational 13519548 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15900316 1) .v) (.rational 50653948 1)) .v) (.rational
    41846601 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 31877924 1) .v)
    (.rational 97269604 1)) .v) (.rational 76984062 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 42239356 1) .v) (.rational 123659240 1)) .v) (.rational 93754354 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 38902380 1) .v) (.rational 109527570 1)) .v)
    (.rational 79589643 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 25476736 1)
    .v) (.rational 69163070 1)) .v) (.rational 48213127 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11913738 1) .v) (.rational 31257792 1)) .v) (.rational 20918766 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3928416 1) .v) (.rational 9969752
    1)) .v) (.rational 6403568 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    883602 1) .v) (.rational 2163990 1)) .v) (.rational 1330205 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 126902 1) .v) (.rational 297274 1)) .v) (.rational 173480 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 10168 1) .v) (.rational 22272 1))
    .v) (.rational 12104 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 85320 1) .v) (.rational 272472 1)) .v) (.rational
    216432 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 682560 1) .v) (.rational 2106336 1))
    .v) (.rational 1624212 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2470944 1) .v)
    (.rational 7366544 1)) .v) (.rational 5506866 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5351808 1) .v) (.rational 15416844 1)) .v) (.rational 11161049 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7723562 1) .v) (.rational 21510696 1)) .v)
    (.rational 15070318 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7824348 1)
    .v) (.rational 21085528 1)) .v) (.rational 14289731 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5705582 1) .v) (.rational 14889546 1)) .v) (.rational 9757774 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3017744 1) .v) (.rational 7628386 1)) .v)
    (.rational 4831469 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1149080 1)
    .v) (.rational 2810840 1)) .v) (.rational 1718052 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 307220 1) .v) (.rational 724700 1)) .v) (.rational 426085 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 54750 1) .v) (.rational 123562 1)) .v)
    (.rational 69412 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 5840 1) .v)
    (.rational 12414 1)) .v) (.rational 6574 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 282 1) .v) (.rational 548 1)) .v) (.rational 266 1)) (.pow .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3204

namespace FullLow3205
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsLow4.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow4.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow3.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    8*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow3.c410 e f g v*e*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_1 e g v+24*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^1+36*SmallGap.ReducedLayers.low0_100_3 e g v*e^2+24*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^3+4*SmallGap.ReducedLayers.low0_010_3 e g v+8*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_010_5 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_1 e g v+12*SmallGap.ReducedLayers.low1_200_2 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_200_3 e g v*e^2+12*SmallGap.ReducedLayers.low1_200_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_110_3 e g v+6*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_110_5 e g v*e^2+1*SmallGap.ReducedLayers.low1_020_5 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1140 1) .v) (.rational 64320 1))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 340 1) .v) (.rational 16212 1)) .v)
    (.rational 437066 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 850 1) .v) (.rational 22364
    1)) .v) (.rational 495774 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 5334 1) .v) (.rational 113692 1)) .v) (.rational 1828694 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16002 1) .v) (.rational 205644 1)) .v) (.rational 2812542 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 17372 1) .v) (.rational 100272 1)) .v) (.rational
    1391516 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 39084 1) .v) (.rational 520152 1)) .v) (.rational 5287944 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 136794 1) .v) (.rational 1203580 1)) .v) (.rational 10391350 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 185558 1) .v) (.rational 930900 1)) .v)
    (.rational 7156974 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 121910 1)
    .v) (.rational 259452 1)) .v) (.rational 1971386 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 174146 1) .v) (.rational
    1715284 1)) .v) (.rational 11257618 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 696584 1)
    .v) (.rational 4966680 1)) .v) (.rational 27459636 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1127868 1) .v) (.rational 5439120 1)) .v) (.rational 25160216 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 945560 1) .v) (.rational 2832832 1)) .v) (.rational
    10613888 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 432922 1) .v)
    (.rational 735228 1)) .v) (.rational 1985294 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 518964 1) .v)
    (.rational 4183824 1)) .v) (.rational 18228416 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2335338 1) .v) (.rational 14739672 1)) .v) (.rational 54259342 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4382704 1) .v) (.rational 21063276 1)) .v) (.rational
    64289692 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4441220 1) .v)
    (.rational 15904148 1)) .v) (.rational 38884176 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2621276 1) .v) (.rational 6984972 1)) .v) (.rational 12926356 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 899262 1) .v) (.rational 1860228 1)) .v)
    (.rational 2436982 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1073108 1) .v) (.rational 7464628
    1)) .v) (.rational 22591736 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5365540 1) .v)
    (.rational 31051044 1)) .v) (.rational 80762772 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11434154 1) .v) (.rational 54525104 1)) .v) (.rational 120119286 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 13543376 1) .v) (.rational 53118688 1)) .v)
    (.rational 97386000 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9733444 1)
    .v) (.rational 31782732 1)) .v) (.rational 47740656 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4333784 1) .v) (.rational 12163604 1)) .v) (.rational 14961188 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1161674 1) .v) (.rational 2948832
    1)) .v) (.rational 3060414 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1545960 1) .v)
    (.rational 9489844 1)) .v) (.rational 21069320 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8502780 1) .v) (.rational 45405284 1)) .v) (.rational 88794484 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 20265384 1) .v) (.rational 93947256 1)) .v) (.rational
    160504308 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 27423378 1) .v)
    (.rational 110790428 1)) .v) (.rational 164299874 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 23167240 1) .v) (.rational 82576960 1)) .v) (.rational 106213832 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 12629036 1) .v) (.rational 40606800
    1)) .v) (.rational 45744308 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4418828 1) .v) (.rational 13209844 1)) .v) (.rational 13321948 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 948462 1) .v) (.rational 2720888 1)) .v) (.rational 2523118
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1518840 1) .v) (.rational 8291216
    1)) .v) (.rational 14231880 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 9113040 1) .v)
    (.rational 44703184 1)) .v) (.rational 69326628 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 24006304 1) .v) (.rational 105888712 1)) .v) (.rational 147757252 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 36495320 1) .v) (.rational 145432944 1)) .v)
    (.rational 182311608 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 35371806
    1) .v) (.rational 128610220 1)) .v) (.rational 145245366 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 22758744 1) .v) (.rational 76662840 1)) .v) (.rational 78676504
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9792228 1) .v) (.rational
    31149896 1)) .v) (.rational 29453172 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2757984 1) .v) (.rational 8447520 1)) .v) (.rational 7467496 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 479422 1) .v) (.rational 1433984 1)) .v) (.rational
    1195234 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 966672 1)
    .v) (.rational 4706488 1)) .v) (.rational 6529940 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6283368 1) .v) (.rational 28155104 1)) .v) (.rational 36093168 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 18119856 1) .v) (.rational 74822816 1)) .v) (.rational
    88438496 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 30542160 1) .v)
    (.rational 116693816 1)) .v) (.rational 127160292 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 33349236 1) .v) (.rational 118751232 1)) .v) (.rational 119623252 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 24680934 1) .v) (.rational 82752984
    1)) .v) (.rational 77512642 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    12566320 1) .v) (.rational 40163332 1)) .v) (.rational 35267076 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4365452 1) .v) (.rational 13460388 1)) .v) (.rational
    11169740 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1000136 1) .v)
    (.rational 2999800 1)) .v) (.rational 2362394 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 140328 1) .v) (.rational 409440 1)) .v) (.rational 304732 1)) (.pow .g 9))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 357912 1) .v) (.rational
    1559088 1)) .v) (.rational 1811376 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2505384 1)
    .v) (.rational 10226952 1)) .v) (.rational 11181888 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7846032 1) .v) (.rational 30049144 1)) .v) (.rational 30878592 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 14506200 1) .v) (.rational 52283384 1)) .v)
    (.rational 50496972 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 17588196 1)
    .v) (.rational 59956588 1)) .v) (.rational 54522060 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14679132 1) .v) (.rational 47651076 1)) .v) (.rational 40939380 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8601614 1) .v) (.rational 26797544
    1)) .v) (.rational 21851482 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3537032 1) .v) (.rational 10652584 1)) .v) (.rational 8279764 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 999926 1) .v) (.rational 2924104 1)) .v) (.rational 2170198
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 185294 1) .v) (.rational 525184
    1)) .v) (.rational 370774 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 20418
    1) .v) (.rational 55360 1)) .v) (.rational 36662 1)) (.pow .g 10)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 58320 1) .v) (.rational 228528 1))
    .v) (.rational 228528 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 437400 1) .v)
    (.rational 1628640 1)) .v) (.rational 1555200 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1477368 1) .v) (.rational 5232752 1)) .v) (.rational 4766332 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2968992 1) .v) (.rational 10026184 1)) .v) (.rational
    8709720 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3949584 1) .v)
    (.rational 12761460 1)) .v) (.rational 10581656 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3658380 1) .v) (.rational 11362508 1)) .v) (.rational 9009680 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2413992 1) .v) (.rational 7244784 1)) .v)
    (.rational 5506920 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1139382 1)
    .v) (.rational 3320108 1)) .v) (.rational 2424806 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 379668 1) .v) (.rational 1077152 1)) .v) (.rational 756480 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 86298 1) .v) (.rational 237908 1)) .v)
    (.rational 160242 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 12486 1) .v)
    (.rational 33056 1)) .v) (.rational 21150 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 996 1) .v) (.rational 2444 1)) .v) (.rational 1448 1)) (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3205

namespace FullLow3206
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow4.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    8*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow4.c410 e f g v*e*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_2 e g v+24*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^1+36*SmallGap.ReducedLayers.low0_100_4 e g v*e^2+4*SmallGap.ReducedLayers.low0_010_4 e g
    v+8*SmallGap.ReducedLayers.low0_010_5 e g v*e^1+4*SmallGap.ReducedLayers.low0_010_6 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_2 e g v+12*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_200_4 e g v*e^2+3*SmallGap.ReducedLayers.low1_110_4 e g
    v+6*SmallGap.ReducedLayers.low1_110_5 e g v*e^1+3*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^2+1*SmallGap.ReducedLayers.low1_020_6 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 400 1) .v) (.rational 32560 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 60 1) .v) (.rational 5408 1)) .v) (.rational 212664 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 150 1) .v) (.rational 7256 1)) .v) (.rational 235178
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 930 1) .v) (.rational
    35964 1)) .v) (.rational 847330 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2790 1) .v)
    (.rational 62088 1)) .v) (.rational 1260684 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3030 1) .v) (.rational 26008 1)) .v) (.rational 588682 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6720 1) .v) (.rational 156008
    1)) .v) (.rational 2308388 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 23520 1) .v)
    (.rational 342572 1)) .v) (.rational 4363476 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31920 1) .v) (.rational 234740 1)) .v) (.rational 2813934 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21000 1) .v) (.rational 40240 1)) .v) (.rational
    664736 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 29310 1) .v) (.rational 489388 1)) .v) (.rational 4575826 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 117240 1) .v) (.rational 1354108 1)) .v) (.rational
    10720866 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 189960 1) .v) (.rational
    1370028 1)) .v) (.rational 9228566 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 159540 1) .v) (.rational 610044 1)) .v) (.rational 3463600 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 73290 1) .v) (.rational 108356 1)) .v) (.rational
    469308 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 84480 1) .v) (.rational 1130504 1)) .v) (.rational 6791682
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 380160 1) .v) (.rational 3848560 1)) .v)
    (.rational 19476912 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 714120 1) .v)
    (.rational 5243824 1)) .v) (.rational 21941040 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 725340 1) .v) (.rational 3708540 1)) .v) (.rational 12345468 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 429900 1) .v) (.rational 1498516 1)) .v)
    (.rational 3686544 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 148440 1)
    .v) (.rational 367312 1)) .v) (.rational 599396 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 165600 1)
    .v) (.rational 1868776 1)) .v) (.rational 7525712 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 828000 1) .v) (.rational 7579400 1)) .v) (.rational 26058510 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1766850 1) .v) (.rational 12925060 1)) .v) (.rational
    37339598 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2099400 1) .v)
    (.rational 12202396 1)) .v) (.rational 29053274 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1517160 1) .v) (.rational 7095932 1)) .v) (.rational 13709530 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 681180 1) .v) (.rational 2669148 1)) .v)
    (.rational 4214322 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 184710 1)
    .v) (.rational 647692 1)) .v) (.rational 875604 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    218520 1) .v) (.rational 2108520 1)) .v) (.rational 6022284 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1201860 1) .v) (.rational 9892800 1)) .v) (.rational 24715812 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2869980 1) .v) (.rational 20075200 1)) .v) (.rational
    43481820 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3900960 1) .v)
    (.rational 23281856 1)) .v) (.rational 43457064 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3320640 1) .v) (.rational 17176064 1)) .v) (.rational 27698936 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1830780 1) .v) (.rational 8447620 1)) .v)
    (.rational 11971176 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 650580 1)
    .v) (.rational 2781948 1)) .v) (.rational 3568774 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 142440 1) .v) (.rational 585296 1)) .v) (.rational 698792 1)) (.pow .g
    7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 185220 1) .v) (.rational 1523016 1)) .v)
    (.rational 3260724 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1111320 1) .v) (.rational
    8080704 1)) .v) (.rational 15536040 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2935440 1) .v) (.rational 18875528 1)) .v) (.rational 32443808 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4490100 1) .v) (.rational 25679080 1)) .v) (.rational
    39429012 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4397310 1) .v)
    (.rational 22656844 1)) .v) (.rational 31247858 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2873160 1) .v) (.rational 13605076 1)) .v) (.rational 17073462 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1262520 1) .v) (.rational 5626684 1)) .v)
    (.rational 6537890 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 365400 1)
    .v) (.rational 1565964 1)) .v) (.rational 1709076 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 65670 1) .v) (.rational 273676 1)) .v) (.rational 281332 1)) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 90720 1) .v) (.rational 630288 1))
    .v) (.rational 1060128 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 589680 1) .v)
    (.rational 3719520 1)) .v) (.rational 5751000 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1706760 1) .v) (.rational 9780552 1)) .v) (.rational 13866900 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2900700 1) .v) (.rational 15169920 1)) .v) (.rational
    19728588 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3211380 1) .v)
    (.rational 15465480 1)) .v) (.rational 18525906 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2425680 1) .v) (.rational 10896432 1)) .v) (.rational 12118944 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1270200 1) .v) (.rational 5399800 1)) .v)
    (.rational 5630196 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 457800 1)
    .v) (.rational 1864020 1)) .v) (.rational 1835304 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 109860 1) .v) (.rational 430396 1)) .v) (.rational 400212 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 16290 1) .v) (.rational 60888 1)) .v)
    (.rational 52874 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 19440 1) .v) (.rational 113184 1)) .v) (.rational 155304 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 136080 1) .v) (.rational 733968 1)) .v) (.rational 943488 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 428220 1) .v) (.rational 2139000 1)) .v) (.rational
    2571468 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 800280 1) .v)
    (.rational 3710448 1)) .v) (.rational 4171704 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 987840 1) .v) (.rational 4272432 1)) .v) (.rational 4502216 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 846540 1) .v) (.rational 3439584 1)) .v)
    (.rational 3411246 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 514530 1)
    .v) (.rational 1978500 1)) .v) (.rational 1855486 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 222120 1) .v) (.rational 812196 1)) .v) (.rational 722318 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 66870 1) .v) (.rational 232224 1)) .v)
    (.rational 195388 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 13410 1) .v)
    (.rational 43764 1)) .v) (.rational 34446 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1620 1) .v) (.rational 4860 1)) .v) (.rational 3490 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3206

namespace FullLow3207
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_3 e g v+24*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_010_5 e g v+8*SmallGap.ReducedLayers.low0_010_6 e g v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_3 e g v+12*SmallGap.ReducedLayers.low1_200_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_110_5 e g v+6*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^1+1*SmallGap.ReducedLayers.low1_020_7 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 60 1) .v) (.rational 9440 1)) .e) (.add (.mul (.add (.mul
    (.rational 780 1) .v) (.rational 59562 1)) .f) (.mul (.add (.mul (.rational 1020 1) .v)
    (.rational 64248 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 4980 1) .v)
    (.rational 227076 1)) .f) (.mul (.add (.mul (.rational 8220 1) .v) (.rational 327148 1)) .g))
    .f) (.mul (.add (.mul (.rational 2880 1) .v) (.rational 144536 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20700 1) .v) (.rational 585304 1)) .f)
    (.mul (.add (.mul (.rational 43140 1) .v) (.rational 1066184 1)) .g)) .f) (.mul (.add (.mul
    (.rational 25620 1) .v) (.rational 646328 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational
    720 1) .v) (.rational 130084 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 62280 1) .v) (.rational 1082856 1)) .f) (.mul (.add (.mul
    (.rational 164640 1) .v) (.rational 2444392 1)) .g)) .f) (.mul (.add (.mul (.rational 152460
    1) .v) (.rational 1990852 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 54060 1) .v)
    (.rational 672452 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 1800 1) .v) (.rational
    61056 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 136560 1) .v) (.rational 1468048 1)) .f) (.mul (.add (.mul (.rational 448920
    1) .v) (.rational 4070904 1)) .g)) .f) (.mul (.add (.mul (.rational 581220 1) .v) (.rational
    4399248 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 380460 1) .v) (.rational 2348384
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 136860 1) .v) (.rational 657900 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.rational 28920 1) .v) (.rational 101844 1)) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    207000 1) .v) (.rational 1429896 1)) .f) (.mul (.add (.mul (.rational 816480 1) .v) (.rational
    4808304 1)) .g)) .f) (.mul (.add (.mul (.rational 1347840 1) .v) (.rational 6687408 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.rational 1228080 1) .v) (.rational 5074800 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.rational 690660 1) .v) (.rational 2375716 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.rational 254100 1) .v) (.rational 748948 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 61440 1) .v) (.rational 164216 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 200520 1) .v)
    (.rational 940224 1)) .f) (.mul (.add (.mul (.rational 917640 1) .v) (.rational 3758736 1))
    .g)) .f) (.mul (.add (.mul (.rational 1817400 1) .v) (.rational 6461400 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 2064960 1) .v) (.rational 6367392 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 1505100 1) .v) (.rational 4070952 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 740580 1) .v) (.rational 1803848 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 247140 1) .v) (.rational 559072 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    53040 1) .v) (.rational 113164 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 110160 1)
    .v) (.rational 369360 1)) .f) (.mul (.add (.mul (.rational 570240 1) .v) (.rational 1717200
    1)) .g)) .f) (.mul (.add (.mul (.rational 1304280 1) .v) (.rational 3515064 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.rational 1749600 1) .v) (.rational 4227696 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 1538280 1) .v) (.rational 3365496 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 932400 1) .v) (.rational 1878008 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 393900 1) .v) (.rational 742516 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    112740 1) .v) (.rational 200252 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 20220 1)
    .v) (.rational 33552 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25920 1)
    .v) (.rational 64800 1)) .f) (.mul (.add (.mul (.rational 149040 1) .v) (.rational 343440 1))
    .g)) .f) (.mul (.add (.mul (.rational 384120 1) .v) (.rational 812976 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 589320 1) .v) (.rational 1145904 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 601560 1) .v) (.rational 1080152 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 430200 1) .v) (.rational 719544 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 219060 1) .v) (.rational 344096 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    78300 1) .v) (.rational 115824 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 18720 1) .v)
    (.rational 25938 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 2700 1) .v) (.rational
    3460 1)) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow3207

namespace FullLow3208
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  10*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_4 e g v+4*SmallGap.ReducedLayers.low0_010_6 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_4 e g v+3*SmallGap.ReducedLayers.low1_110_6 e g
    v+1*SmallGap.ReducedLayers.low1_020_8 e g v)

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

end FullLow3208

end
end SPR.N6.Tail.CoreEndpoint
