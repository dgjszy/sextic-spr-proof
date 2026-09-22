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

namespace FullHigh1130
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    4*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_0 e g v*e^5+4*SmallGap.ReducedLayers.high0_010_0
    e g v*e^3+12*SmallGap.ReducedLayers.high0_001_0 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_110_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_101_0 e g
    v*e^4+3*SmallGap.ReducedLayers.high1_011_0 e g v*e^2+6*SmallGap.ReducedLayers.high1_002_0 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 2600 1) .e) (.add (.mul (.rational 26208 1) .f) (.add (.mul
    (.rational 33052 1) .g) (.mul (.rational 4768 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    163598 1) .f) (.add (.mul (.rational 281068 1) .g) (.mul (.rational 44210 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 174382 1) .g) (.mul (.rational 55628 1) .v)) .g) (.mul (.rational
    2200 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 709694 1) .f) (.add
    (.mul (.rational 1541197 1) .g) (.mul (.rational 254250 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1286188 1) .g) (.mul (.rational 437914 1) .v)) .g) (.mul (.rational 18812 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 515165 1) .g) (.mul (.rational 269166 1)
    .v)) .g) (.mul (.rational 23916 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 2274495 1) .f) (.add (.mul (.rational 5965173 1) .g) (.mul (.rational
    1016279 1) .v))) .f) (.add (.mul (.add (.mul (.rational 6248144 1) .g) (.mul (.rational
    2223393 1) .v)) .g) (.mul (.rational 99644 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3336933 1) .g) (.mul (.rational 1853119 1) .v)) .g) (.mul (.rational 174132 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 955299 1) .g) (.mul (.rational
    733719 1) .v)) .g) (.mul (.rational 107380 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5585909 1) .f) (.add (.mul
    (.rational 17157637 1) .g) (.mul (.rational 2997599 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 21603594 1) .g) (.mul (.rational 7957430 1) .v)) .g) (.mul (.rational 366133 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 14398980 1) .g) (.mul (.rational
    8381342 1) .v)) .g) (.mul (.rational 816086 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5459589 1) .g) (.mul (.rational 4467088 1) .v)) .g) (.mul (.rational 687281
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1169315 1) .g)
    (.mul (.rational 1266467 1) .v)) .g) (.mul (.rational 271764 1) (.pow .v 2))) (.pow .g 3))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    10755459 1) .f) (.add (.mul (.rational 37847906 1) .g) (.mul (.rational 6758089 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 55625845 1) .g) (.mul (.rational 21105067 1) .v)) .g) (.mul
    (.rational 989983 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 44384304 1)
    .g) (.mul (.rational 26883684 1) .v)) .g) (.mul (.rational 2688470 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 20898855 1) .g) (.mul (.rational 18023630 1) .v)) .g)
    (.mul (.rational 2879293 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5894802 1) .g) (.mul (.rational 6834209 1) .v)) .g) (.mul (.rational 1547444 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 959677 1) .g) (.mul
    (.rational 1457143 1) .v)) .g) (.mul (.rational 437694 1) (.pow .v 2))) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    16466901 1) .f) (.add (.mul (.rational 65292474 1) .g) (.mul (.rational 11896995 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 109650816 1) .g) (.mul (.rational 42743879 1) .v)) .g)
    (.mul (.rational 2037998 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    101796341 1) .g) (.mul (.rational 63899949 1) .v)) .g) (.mul (.rational 6537512 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 57158499 1) .g) (.mul (.rational
    51638628 1) .v)) .g) (.mul (.rational 8516609 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 19929638 1) .g) (.mul (.rational 24517245 1) .v)) .g) (.mul
    (.rational 5805220 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4250712 1) .g) (.mul (.rational 6948035 1) .v)) .g) (.mul (.rational 2221551 1) (.pow .v 2)))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 521787 1) .g) (.mul (.rational
    1135171 1) .v)) .g) (.mul (.rational 474186 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    20202138 1) .f) (.add (.mul (.rational 89097289 1) .g) (.mul (.rational 16556316 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 168238565 1) .g) (.mul (.rational 67290061 1) .v)) .g)
    (.mul (.rational 3258148 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    177997465 1) .g) (.mul (.rational 115514780 1) .v)) .g) (.mul (.rational 12072240 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 115912347 1) .g) (.mul (.rational
    109273501 1) .v)) .g) (.mul (.rational 18557247 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 48008845 1) .g) (.mul (.rational 62314976 1) .v)) .g) (.mul
    (.rational 15359094 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12600113 1) .g) (.mul (.rational 22006273 1) .v)) .g) (.mul (.rational 7431955 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2015729 1) .g) (.mul
    (.rational 4748754 1) .v)) .g) (.mul (.rational 2135076 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 179605 1) .g) (.mul (.rational 591133 1) .v)) .g)
    (.mul (.rational 352144 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    19909670 1) .f) (.add (.mul (.rational 96659326 1) .g) (.mul (.rational 18315162 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 202647214 1) .g) (.mul (.rational 83103172 1) .v)) .g)
    (.mul (.rational 4086770 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    240530442 1) .g) (.mul (.rational 161132062 1) .v)) .g) (.mul (.rational 17196058 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 178014581 1) .g) (.mul (.rational
    174660450 1) .v)) .g) (.mul (.rational 30507618 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 85221991 1) .g) (.mul (.rational 116254551 1) .v)) .g) (.mul
    (.rational 29752594 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26461446 1) .g) (.mul (.rational 49116814 1) .v)) .g) (.mul (.rational 17439543 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5183912 1) .g) (.mul
    (.rational 13138600 1) .v)) .g) (.mul (.rational 6309994 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 598517 1) .g) (.mul (.rational 2145702 1) .v)) .g)
    (.mul (.rational 1391775 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 35209 1) .g) (.mul (.rational 196297 1) .v)) .g) (.mul (.rational 177192 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15723828 1) .f) (.add (.mul
    (.rational 83323264 1) .g) (.mul (.rational 16100644 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 192001392 1) .g) (.mul (.rational 80698030 1) .v)) .g) (.mul (.rational 4033018 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 252538688 1) .g) (.mul (.rational
    174449614 1) .v)) .g) (.mul (.rational 19015460 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 209173189 1) .g) (.mul (.rational 213190350 1) .v)) .g) (.mul
    (.rational 38282704 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 113468344 1) .g) (.mul (.rational 162194041 1) .v)) .g) (.mul (.rational 43036216
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 40573987 1) .g)
    (.mul (.rational 79712115 1) .v)) .g) (.mul (.rational 29662999 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9361628 1) .g) (.mul (.rational 25394710 1) .v))
    .g) (.mul (.rational 12957758 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1316343 1) .g) (.mul (.rational 5110572 1) .v)) .g) (.mul (.rational 3580583 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 99660 1) .g) (.mul
    (.rational 608767 1) .v)) .g) (.mul (.rational 604756 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2965 1) .g) (.mul (.rational 37289 1) .v)) .g) (.mul
    (.rational 57542 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 9875144 1) .f) (.add (.mul (.rational 56717161 1) .g) (.mul (.rational 11178368 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 142461004 1) .g) (.mul (.rational 61352092 1)
    .v)) .g) (.mul (.rational 3118380 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 205599231 1) .g) (.mul (.rational 146333476 1) .v)) .g) (.mul (.rational 16298156
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 188305791 1) .g) (.mul
    (.rational 199061756 1) .v)) .g) (.mul (.rational 36741492 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 114014673 1) .g) (.mul (.rational 170368127 1) .v))
    .g) (.mul (.rational 46815720 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 46042074 1) .g) (.mul (.rational 95419663 1) .v)) .g) (.mul (.rational 37124262 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 12183212 1) .g) (.mul
    (.rational 35219839 1) .v)) .g) (.mul (.rational 19012240 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2007127 1) .g) (.mul (.rational 8396500 1) .v)) .g)
    (.mul (.rational 6313267 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 183841 1) .g) (.mul (.rational 1223891 1) .v)) .g) (.mul (.rational 1326556 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6978 1) .g) (.mul
    (.rational 96733 1) .v)) .g) (.mul (.rational 165781 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 3043 1) .v) .g) (.mul (.rational 10766 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4862963 1) .f) (.add
    (.mul (.rational 30091999 1) .g) (.mul (.rational 6050271 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 81824650 1) .g) (.mul (.rational 36099551 1) .v)) .g) (.mul (.rational 1867416 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 128528807 1) .g) (.mul (.rational
    94189043 1) .v)) .g) (.mul (.rational 10722668 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 128918484 1) .g) (.mul (.rational 141167283 1) .v)) .g) (.mul
    (.rational 26776200 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 86104588 1) .g) (.mul (.rational 134225385 1) .v)) .g) (.mul (.rational 38159800 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 38692185 1) .g) (.mul
    (.rational 84346254 1) .v)) .g) (.mul (.rational 34236256 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11518018 1) .g) (.mul (.rational 35352451 1) .v)) .g)
    (.mul (.rational 20115572 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2165545 1) .g) (.mul (.rational 9717868 1) .v)) .g) (.mul (.rational 7797965 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 230930 1) .g) (.mul
    (.rational 1667253 1) .v)) .g) (.mul (.rational 1956754 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10515 1) .g) (.mul (.rational 159860 1) .v)) .g)
    (.mul (.rational 301485 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    6413 1) .v) .g) (.mul (.rational 25392 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 864 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 1835169 1) .f) (.add (.mul (.rational 12173217 1) .g) (.mul
    (.rational 2497091 1) .v))) .f) (.add (.mul (.add (.mul (.rational 35626502 1) .g) (.mul
    (.rational 16098002 1) .v)) .g) (.mul (.rational 847981 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 60501720 1) .g) (.mul (.rational 45619814 1) .v)) .g) (.mul
    (.rational 5309354 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 65938052
    1) .g) (.mul (.rational 74700738 1) .v)) .g) (.mul (.rational 14555871 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 48125540 1) .g) (.mul (.rational 78120070
    1) .v)) .g) (.mul (.rational 22952952 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 23789268 1) .g) (.mul (.rational 54408498 1) .v)) .g) (.mul (.rational
    22992841 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7852354
    1) .g) (.mul (.rational 25504074 1) .v)) .g) (.mul (.rational 15244952 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1653345 1) .g) (.mul (.rational 7926578
    1) .v)) .g) (.mul (.rational 6754295 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 200025 1) .g) (.mul (.rational 1558903 1) .v)) .g) (.mul (.rational
    1967598 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10520 1)
    .g) (.mul (.rational 174536 1) .v)) .g) (.mul (.rational 359132 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 8400 1) .v) .g) (.mul (.rational 36864 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 1600 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 511595 1) .f) (.add (.mul
    (.rational 3622018 1) .g) (.mul (.rational 758033 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 11353245 1) .g) (.mul (.rational 5252499 1) .v)) .g) (.mul (.rational 281831 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 20727864 1) .g) (.mul (.rational
    16070188 1) .v)) .g) (.mul (.rational 1911926 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 24386872 1) .g) (.mul (.rational 28549676 1) .v)) .g) (.mul (.rational
    5711803 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 19302434
    1) .g) (.mul (.rational 32570066 1) .v)) .g) (.mul (.rational 9877988 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10400736 1) .g) (.mul (.rational 24897528
    1) .v)) .g) (.mul (.rational 10931333 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3764412 1) .g) (.mul (.rational 12898570 1) .v)) .g) (.mul (.rational
    8073358 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 875237 1)
    .g) (.mul (.rational 4466232 1) .v)) .g) (.mul (.rational 4022569 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 117944 1) .g) (.mul (.rational 987977 1)
    .v)) .g) (.mul (.rational 1332680 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6987 1) .g) (.mul (.rational 125905 1) .v)) .g) (.mul (.rational 280416 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 7006 1) .v) .g) (.mul
    (.rational 33760 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1760 1) (.pow .v
    2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 99069 1) .f) (.add (.mul (.rational 745832 1) .g) (.mul (.rational 159235 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 2493448 1) .g) (.mul (.rational 1180635 1) .v))
    .g) (.mul (.rational 64530 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4871103 1) .g) (.mul (.rational 3880057 1) .v)) .g) (.mul (.rational 471744 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6153530 1) .g) (.mul (.rational 7435322 1)
    .v)) .g) (.mul (.rational 1526083 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5249209 1) .g) (.mul (.rational 9191224 1) .v)) .g) (.mul (.rational 2873252
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3060682 1) .g)
    (.mul (.rational 7651080 1) .v)) .g) (.mul (.rational 3482257 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1204113 1) .g) (.mul (.rational 4339980 1) .v))
    .g) (.mul (.rational 2835262 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 305853 1) .g) (.mul (.rational 1655382 1) .v)) .g) (.mul (.rational 1568909 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 45295 1) .g) (.mul
    (.rational 406157 1) .v)) .g) (.mul (.rational 582088 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2970 1) .g) (.mul (.rational 57869 1) .v)) .g) (.mul
    (.rational 138477 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3635
    1) .v) .g) (.mul (.rational 19062 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    1152 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 11868 1) .f) (.add (.mul (.rational 94707 1) .g) (.mul
    (.rational 20622 1) .v))) .f) (.add (.mul (.add (.mul (.rational 336513 1) .g) (.mul
    (.rational 162987 1) .v)) .g) (.mul (.rational 9072 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 700667 1) .g) (.mul (.rational 572906 1) .v)) .g) (.mul (.rational
    71136 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 946186 1) .g) (.mul
    (.rational 1178481 1) .v)) .g) (.mul (.rational 247869 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 865491 1) .g) (.mul (.rational 1569833 1) .v)) .g)
    (.mul (.rational 504966 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 542902 1) .g) (.mul (.rational 1414015 1) .v)) .g) (.mul (.rational 665507 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 230573 1) .g) (.mul
    (.rational 871737 1) .v)) .g) (.mul (.rational 592428 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 63462 1) .g) (.mul (.rational 363091 1) .v)) .g) (.mul
    (.rational 360531 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10226 1) .g) (.mul (.rational 97781 1) .v)) .g) (.mul (.rational 148054 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 733 1) .g) (.mul (.rational 15378 1) .v))
    .g) (.mul (.rational 39261 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 1073 1) .v) .g) (.mul (.rational 6072 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 416 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 660 1) .f) (.add (.mul (.rational 5568 1) .g)
    (.mul (.rational 1236 1) .v))) .f) (.add (.mul (.add (.mul (.rational 20966 1) .g) (.mul
    (.rational 10380 1) .v)) .g) (.mul (.rational 588 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 46378 1) .g) (.mul (.rational 38886 1) .v)) .g) (.mul (.rational 4926
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 66710 1) .g) (.mul
    (.rational 85524 1) .v)) .g) (.mul (.rational 18406 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 65170 1) .g) (.mul (.rational 122220 1) .v)) .g) (.mul
    (.rational 40370 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    43778 1) .g) (.mul (.rational 118524 1) .v)) .g) (.mul (.rational 57526 1) (.pow .v 2))) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19966 1) .g) (.mul (.rational 78960 1)
    .v)) .g) (.mul (.rational 55622 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5918 1) .g) (.mul (.rational 35676 1) .v)) .g) (.mul (.rational 36946 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1030 1) .g) (.mul
    (.rational 10464 1) .v)) .g) (.mul (.rational 16646 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 80 1) .g) (.mul (.rational 1800 1) .v)) .g) (.mul
    (.rational 4870 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 138 1)
    .v) .g) (.mul (.rational 836 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 64 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1130

namespace FullHigh1131
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh1.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    8*SmallGap.PolarCoefficientsHigh0.c140 e f g v*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    6*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(20*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^4+4*SmallGap.ReducedLayers.high0_100_1 e g v*e^5+12*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^2+4*SmallGap.ReducedLayers.high0_010_1 e g v*e^3+48*SmallGap.ReducedLayers.high0_001_0 e g
    v*e^3+12*SmallGap.ReducedLayers.high0_001_1 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_110_0 e g v*e^2+1*SmallGap.ReducedLayers.high1_110_1 e g
    v*e^3+12*SmallGap.ReducedLayers.high1_101_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_101_1 e g
    v*e^4+6*SmallGap.ReducedLayers.high1_011_0 e g v*e^1+3*SmallGap.ReducedLayers.high1_011_1 e g
    v*e^2+18*SmallGap.ReducedLayers.high1_002_0 e g v*e^2+6*SmallGap.ReducedLayers.high1_002_1 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 18580 1) .e) (.add (.mul (.rational 179224 1) .f) (.add (.mul (.rational
    224256 1) .g) (.mul (.rational 33664 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 1072581
    1) .f) (.add (.mul (.rational 1828230 1) .g) (.mul (.rational 295449 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1125005 1) .g) (.mul (.rational 365162 1) .v)) .g) (.mul (.rational
    15420 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 4460551 1) .f)
    (.add (.mul (.rational 9611300 1) .g) (.mul (.rational 1613303 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 7958451 1) .g) (.mul (.rational 2727912 1) .v)) .g) (.mul (.rational 123906
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3165778 1) .g) (.mul (.rational
    1637187 1) .v)) .g) (.mul (.rational 154088 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 13682564 1) .f) (.add (.mul (.rational 35607979 1) .g)
    (.mul (.rational 6130752 1) .v))) .f) (.add (.mul (.add (.mul (.rational 37019471 1) .g) (.mul
    (.rational 13172318 1) .v)) .g) (.mul (.rational 618884 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 19644793 1) .g) (.mul (.rational 10737040 1) .v)) .g) (.mul
    (.rational 1056700 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5600853
    1) .g) (.mul (.rational 4138902 1) .v)) .g) (.mul (.rational 630644 1) (.pow .v 2))) (.pow .g
    2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 32065349 1)
    .f) (.add (.mul (.rational 97737583 1) .g) (.mul (.rational 17185184 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 122180585 1) .g) (.mul (.rational 44839744 1) .v)) .g) (.mul (.rational
    2148358 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 80947713 1) .g) (.mul
    (.rational 46278532 1) .v)) .g) (.mul (.rational 4680764 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 30578454 1) .g) (.mul (.rational 24093750 1) .v)) .g) (.mul
    (.rational 3824786 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6548912 1) .g) (.mul (.rational 6656560 1) .v)) .g) (.mul (.rational 1452640 1) (.pow .v 2)))
    (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 58657721 1) .f) (.add (.mul (.rational 204835969 1) .g) (.mul (.rational 36745344
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 298945666 1) .g) (.mul (.rational 112915658 1)
    .v)) .g) (.mul (.rational 5489618 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 237175391 1) .g) (.mul (.rational 141226402 1) .v)) .g) (.mul (.rational 14594314
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 111295036 1) .g) (.mul
    (.rational 92782676 1) .v)) .g) (.mul (.rational 15218402 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 31396360 1) .g) (.mul (.rational 34434836 1) .v)) .g)
    (.mul (.rational 7908894 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5138229 1) .g) (.mul (.rational 7192258 1) .v)) .g) (.mul (.rational 2146212 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 84820354 1) .f) (.add (.mul (.rational 333744515 1) .g)
    (.mul (.rational 61114718 1) .v))) .f) (.add (.mul (.add (.mul (.rational 556621560 1) .g)
    (.mul (.rational 216326324 1) .v)) .g) (.mul (.rational 10663916 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 513907915 1) .g) (.mul (.rational 318177652 1) .v)) .g)
    (.mul (.rational 33560830 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    287626623 1) .g) (.mul (.rational 252710588 1) .v)) .g) (.mul (.rational 42737516 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 100309652 1) .g) (.mul
    (.rational 117901560 1) .v)) .g) (.mul (.rational 28357938 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21504911 1) .g) (.mul (.rational 32886250 1) .v)) .g)
    (.mul (.rational 10521864 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2671002 1) .g) (.mul (.rational 5314014 1) .v)) .g) (.mul (.rational 2173724 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 97528376 1) .f) (.add (.mul (.rational
    426821104 1) .g) (.mul (.rational 79874474 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    800424964 1) .g) (.mul (.rational 320241252 1) .v)) .g) (.mul (.rational 16026306 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 842266176 1) .g) (.mul (.rational 541907054
    1) .v)) .g) (.mul (.rational 58406162 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 546751734 1) .g) (.mul (.rational 505164186 1) .v)) .g) (.mul (.rational 88118808
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 226498339 1) .g)
    (.mul (.rational 284053876 1) .v)) .g) (.mul (.rational 71439576 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 59739339 1) .g) (.mul (.rational 99134948 1)
    .v)) .g) (.mul (.rational 33823610 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9665809 1) .g) (.mul (.rational 21248076 1) .v)) .g) (.mul (.rational 9522450
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 878271 1) .g)
    (.mul (.rational 2651218 1) .v)) .g) (.mul (.rational 1550900 1) (.pow .v 2))) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 89184338 1) .f) (.add (.mul (.rational 429626738 1) .g) (.mul
    (.rational 82269258 1) .v))) .f) (.add (.mul (.add (.mul (.rational 894521828 1) .g) (.mul
    (.rational 368694736 1) .v)) .g) (.mul (.rational 18768808 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1055972644 1) .g) (.mul (.rational 705902904 1) .v)) .g) (.mul
    (.rational 77881934 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    779000343 1) .g) (.mul (.rational 755765464 1) .v)) .g) (.mul (.rational 136136890 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 372944811 1) .g) (.mul
    (.rational 497445458 1) .v)) .g) (.mul (.rational 130767464 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 116330799 1) .g) (.mul (.rational 208397152 1) .v))
    .g) (.mul (.rational 75566522 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23035547 1) .g) (.mul (.rational 55562464 1) .v)) .g) (.mul (.rational 27054822 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2709976 1) .g) (.mul
    (.rational 9123538 1) .v)) .g) (.mul (.rational 5957796 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 164100 1) .g) (.mul (.rational 850408 1) .v)) .g)
    (.mul (.rational 770840 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 64496919 1) .f) (.add (.mul (.rational 339104884 1) .g) (.mul (.rational 66522287
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 775954339 1) .g) (.mul (.rational 329693584 1)
    .v)) .g) (.mul (.rational 17107762 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1014937390 1) .g) (.mul (.rational 704838209 1) .v)) .g) (.mul (.rational 79746872
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 837783564 1) .g) (.mul
    (.rational 852413486 1) .v)) .g) (.mul (.rational 158731266 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 454326137 1) .g) (.mul (.rational 642787021 1) .v))
    .g) (.mul (.rational 176562260 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 163114811 1) .g) (.mul (.rational 314060594 1) .v)) .g) (.mul (.rational
    120689520 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 38009919
    1) .g) (.mul (.rational 99986069 1) .v)) .g) (.mul (.rational 52541474 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5439547 1) .g) (.mul (.rational 20275738
    1) .v)) .g) (.mul (.rational 14605480 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 423320 1) .g) (.mul (.rational 2464095 1) .v)) .g) (.mul (.rational
    2522594 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 13110 1)
    .g) (.mul (.rational 156652 1) .v)) .g) (.mul (.rational 251856 1) (.pow .v 2))) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 36436603 1) .f) (.add (.mul
    (.rational 207608822 1) .g) (.mul (.rational 41759989 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 517752421 1) .g) (.mul (.rational 226870532 1) .v)) .g) (.mul (.rational 12020910
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 742893226 1) .g) (.mul
    (.rational 535813661 1) .v)) .g) (.mul (.rational 62253736 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 677848123 1) .g) (.mul (.rational 722408266 1) .v)) .g)
    (.mul (.rational 139151830 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 410081727 1) .g) (.mul (.rational 613893455 1) .v)) .g) (.mul (.rational 176076432
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 166142953 1) .g)
    (.mul (.rational 342460140 1) .v)) .g) (.mul (.rational 139077546 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 44351179 1) .g) (.mul (.rational 126538423
    1) .v)) .g) (.mul (.rational 71330526 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7425010 1) .g) (.mul (.rational 30435022 1) .v)) .g) (.mul (.rational
    23940426 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 697652 1)
    .g) (.mul (.rational 4527071 1) .v)) .g) (.mul (.rational 5160226 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 27496 1) .g) (.mul (.rational 370998 1) .v))
    .g) (.mul (.rational 676462 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 12359 1) .v) .g) (.mul (.rational 47524 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15741468 1) .f) (.add (.mul
    (.rational 96619095 1) .g) (.mul (.rational 19939754 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 260787265 1) .g) (.mul (.rational 117864932 1) .v)) .g) (.mul (.rational 6385046 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 407123989 1) .g) (.mul (.rational
    304814610 1) .v)) .g) (.mul (.rational 36396510 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 406611883 1) .g) (.mul (.rational 453293914 1) .v)) .g) (.mul
    (.rational 90322158 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 271150127 1) .g) (.mul (.rational 428458112 1) .v)) .g) (.mul (.rational 128169218
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 122115131 1) .g)
    (.mul (.rational 268476518 1) .v)) .g) (.mul (.rational 114879612 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 36619157 1) .g) (.mul (.rational 112747268
    1) .v)) .g) (.mul (.rational 67800652 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6982531 1) .g) (.mul (.rational 31275692 1) .v)) .g) (.mul (.rational
    26629326 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 761800 1)
    .g) (.mul (.rational 5470928 1) .v)) .g) (.mul (.rational 6859282 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 35890 1) .g) (.mul (.rational 542568 1) .v))
    .g) (.mul (.rational 1105786 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 22952 1) .v) .g) (.mul (.rational 100050 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 3784 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 5021505 1) .f) (.add (.mul (.rational 33032079 1) .g) (.mul
    (.rational 6996086 1) .v))) .f) (.add (.mul (.add (.mul (.rational 95928283 1) .g) (.mul
    (.rational 44711440 1) .v)) .g) (.mul (.rational 2478070 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 161825603 1) .g) (.mul (.rational 125677752 1) .v)) .g) (.mul
    (.rational 15425414 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    175486003 1) .g) (.mul (.rational 204337490 1) .v)) .g) (.mul (.rational 42095048 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 127751329 1) .g) (.mul
    (.rational 212565816 1) .v)) .g) (.mul (.rational 66210194 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 63202889 1) .g) (.mul (.rational 147693370 1) .v))
    .g) (.mul (.rational 66375864 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20976449 1) .g) (.mul (.rational 69369702 1) .v)) .g) (.mul (.rational 44269276 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4468116 1) .g) (.mul
    (.rational 21741582 1) .v)) .g) (.mul (.rational 19882426 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 551196 1) .g) (.mul (.rational 4351198 1) .v)) .g)
    (.mul (.rational 5938162 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 29860 1) .g) (.mul (.rational 501990 1) .v)) .g) (.mul (.rational 1129214 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 25318 1) .v) .g) (.mul (.rational
    123450 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 5874 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1114219 1)
    .f) (.add (.mul (.rational 7820549 1) .g) (.mul (.rational 1699816 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 24313542 1) .g) (.mul (.rational 11681548 1) .v)) .g) (.mul (.rational
    662464 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 44065031 1) .g) (.mul
    (.rational 35463864 1) .v)) .g) (.mul (.rational 4472554 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 51535540 1) .g) (.mul (.rational 62576402 1) .v)) .g) (.mul
    (.rational 13313648 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 40632715 1) .g) (.mul (.rational 71019401 1) .v)) .g) (.mul (.rational 22987120 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 21873924 1) .g) (.mul
    (.rational 54147044 1) .v)) .g) (.mul (.rational 25474238 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7941777 1) .g) (.mul (.rational 28085723 1) .v)) .g)
    (.mul (.rational 18926672 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1862221 1) .g) (.mul (.rational 9790674 1) .v)) .g) (.mul (.rational 9550114 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 254840 1) .g) (.mul
    (.rational 2197367 1) .v)) .g) (.mul (.rational 3234728 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 15466 1) .g) (.mul (.rational 287116 1) .v)) .g)
    (.mul (.rational 705090 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    16613 1) .v) .g) (.mul (.rational 89518 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 5038 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 153480 1) .f) (.add (.mul (.rational 1145031 1) .g)
    (.mul (.rational 255318 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3794424 1) .g) (.mul
    (.rational 1877880 1) .v)) .g) (.mul (.rational 108924 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7351777 1) .g) (.mul (.rational 6124192 1) .v)) .g) (.mul (.rational
    792918 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 9220530 1) .g) (.mul
    (.rational 11654376 1) .v)) .g) (.mul (.rational 2556948 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7821705 1) .g) (.mul (.rational 14325359 1) .v)) .g)
    (.mul (.rational 4806972 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4546196 1) .g) (.mul (.rational 11882354 1) .v)) .g) (.mul (.rational 5832136 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1788879 1) .g) (.mul
    (.rational 6737205 1) .v)) .g) (.mul (.rational 4771716 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 456522 1) .g) (.mul (.rational 2580292 1) .v)) .g)
    (.mul (.rational 2667828 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 68320 1) .g) (.mul (.rational 639691 1) .v)) .g) (.mul (.rational 1007708 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4560 1) .g) (.mul
    (.rational 92874 1) .v)) .g) (.mul (.rational 246612 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 6011 1) .v) .g) (.mul (.rational 35406 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 2272 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9876 1) .f) (.add (.mul
    (.rational 78054 1) .g) (.mul (.rational 17844 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    274672 1) .g) (.mul (.rational 139890 1) .v)) .g) (.mul (.rational 8292 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 566530 1) .g) (.mul (.rational 487796 1) .v)) .g)
    (.mul (.rational 64752 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    758302 1) .g) (.mul (.rational 995810 1) .v)) .g) (.mul (.rational 224870 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 688262 1) .g) (.mul (.rational
    1317566 1) .v)) .g) (.mul (.rational 457152 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 429134 1) .g) (.mul (.rational 1180510 1) .v)) .g) (.mul
    (.rational 602384 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    181622 1) .g) (.mul (.rational 725590 1) .v)) .g) (.mul (.rational 537664 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 49990 1) .g) (.mul (.rational
    302326 1) .v)) .g) (.mul (.rational 329412 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 8092 1) .g) (.mul (.rational 81830 1) .v)) .g) (.mul (.rational
    136960 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 586 1) .g)
    (.mul (.rational 13016 1) .v)) .g) (.mul (.rational 37052 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 926 1) .v) .g) (.mul (.rational 5904 1) (.pow .v 2))) (.pow
    .g 9))) .f) (.mul (.mul (.rational 422 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1131

namespace FullHigh1132
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    8*SmallGap.PolarCoefficientsHigh1.c140 e f g v*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    14*SmallGap.PolarCoefficientsHigh0.c230 e f g v*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    6*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(40*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^3+20*SmallGap.ReducedLayers.high0_100_1 e g v*e^4+4*SmallGap.ReducedLayers.high0_100_2 e g
    v*e^5+12*SmallGap.ReducedLayers.high0_010_0 e g v*e^1+12*SmallGap.ReducedLayers.high0_010_1 e
    g v*e^2+4*SmallGap.ReducedLayers.high0_010_2 e g v*e^3+72*SmallGap.ReducedLayers.high0_001_0 e
    g v*e^2+48*SmallGap.ReducedLayers.high0_001_1 e g v*e^3+12*SmallGap.ReducedLayers.high0_001_2
    e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_110_0 e g v*e^1+3*SmallGap.ReducedLayers.high1_110_1 e g
    v*e^2+1*SmallGap.ReducedLayers.high1_110_2 e g v*e^3+18*SmallGap.ReducedLayers.high1_101_0 e g
    v*e^2+12*SmallGap.ReducedLayers.high1_101_1 e g v*e^3+3*SmallGap.ReducedLayers.high1_101_2 e g
    v*e^4+3*SmallGap.ReducedLayers.high1_011_0 e g v+6*SmallGap.ReducedLayers.high1_011_1 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_011_2 e g v*e^2+18*SmallGap.ReducedLayers.high1_002_0 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_002_1 e g v*e^2+6*SmallGap.ReducedLayers.high1_002_2 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    57140 1) .e) (.add (.mul (.rational 530056 1) .f) (.add (.mul (.rational 658424 1) .g) (.mul
    (.rational 102216 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 3047439 1) .f) (.add (.mul
    (.rational 5153930 1) .g) (.mul (.rational 852347 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 3145919 1) .g) (.mul (.rational 1033190 1) .v)) .g) (.mul (.rational 46500 1) (.pow
    .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 12144601 1) .f) (.add (.mul
    (.rational 25955300 1) .g) (.mul (.rational 4421387 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 21313981 1) .g) (.mul (.rational 7321055 1) .v)) .g) (.mul (.rational 352384 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 8415570 1) .g) (.mul (.rational
    4271357 1) .v)) .g) (.mul (.rational 427712 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 35561363 1) .f) (.add (.mul (.rational 91765303 1) .g)
    (.mul (.rational 15938643 1) .v))) .f) (.add (.mul (.add (.mul (.rational 94603482 1) .g)
    (.mul (.rational 33523928 1) .v)) .g) (.mul (.rational 1659210 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 49826215 1) .g) (.mul (.rational 26586566 1) .v)) .g) (.mul
    (.rational 2758302 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 14129509
    1) .g) (.mul (.rational 9895392 1) .v)) .g) (.mul (.rational 1582006 1) (.pow .v 2))) (.pow .g
    2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 79141858 1)
    .f) (.add (.mul (.rational 239130534 1) .g) (.mul (.rational 42269685 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 296403763 1) .g) (.mul (.rational 108013558 1) .v)) .g) (.mul
    (.rational 5423271 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 194903961 1)
    .g) (.mul (.rational 108641047 1) .v)) .g) (.mul (.rational 11500380 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 73226951 1) .g) (.mul (.rational 54799387 1) .v)) .g)
    (.mul (.rational 9046897 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15652797 1) .g) (.mul (.rational 14578992 1) .v)) .g) (.mul (.rational 3252282 1)
    (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 136570502 1) .f) (.add (.mul (.rational 472643436 1) .g) (.mul
    (.rational 85154831 1) .v))) .f) (.add (.mul (.add (.mul (.rational 683895494 1) .g) (.mul
    (.rational 256517835 1) .v)) .g) (.mul (.rational 13022363 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 538528664 1) .g) (.mul (.rational 313332296 1) .v)) .g) (.mul
    (.rational 33738748 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    251341014 1) .g) (.mul (.rational 200198703 1) .v)) .g) (.mul (.rational 33998229 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 70762152 1) .g) (.mul
    (.rational 71972734 1) .v)) .g) (.mul (.rational 16870532 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11615390 1) .g) (.mul (.rational 14529730 1) .v)) .g)
    (.mul (.rational 4299666 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 184724386 1) .f) (.add (.mul
    (.rational 720170772 1) .g) (.mul (.rational 132629831 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1190723782 1) .g) (.mul (.rational 460817573 1) .v)) .g) (.mul (.rational 23688927
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1091141893 1) .g) (.mul
    (.rational 663516493 1) .v)) .g) (.mul (.rational 72837870 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 607422539 1) .g) (.mul (.rational 514503404 1) .v)) .g)
    (.mul (.rational 90093691 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 211414771 1) .g) (.mul (.rational 233852066 1) .v)) .g) (.mul (.rational 57633700
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 45455861 1) .g)
    (.mul (.rational 63531404 1) .v)) .g) (.mul (.rational 20438770 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5699420 1) .g) (.mul (.rational 10037262 1) .v))
    .g) (.mul (.rational 4007336 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 196552310 1) .f)
    (.add (.mul (.rational 852116334 1) .g) (.mul (.rational 160925367 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1584012083 1) .g) (.mul (.rational 634260368 1) .v)) .g) (.mul
    (.rational 33138771 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1654342255
    1) .g) (.mul (.rational 1053266186 1) .v)) .g) (.mul (.rational 118384254 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1068177553 1) .g) (.mul (.rational 962127059
    1) .v)) .g) (.mul (.rational 174475547 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 441622912 1) .g) (.mul (.rational 529812363 1) .v)) .g) (.mul
    (.rational 137669910 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 116810881 1) .g) (.mul (.rational 181323721 1) .v)) .g) (.mul (.rational 63259148
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19078335 1) .g)
    (.mul (.rational 38303659 1) .v)) .g) (.mul (.rational 17299260 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1764457 1) .g) (.mul (.rational 4761084 1) .v))
    .g) (.mul (.rational 2766012 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    164023548 1) .f) (.add (.mul (.rational 782576430 1) .g) (.mul (.rational 152007247 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1614946924 1) .g) (.mul (.rational 670715574 1) .v))
    .g) (.mul (.rational 35770519 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1892059011 1) .g) (.mul (.rational 1263149965 1) .v)) .g) (.mul (.rational 146024213 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1388318332 1) .g) (.mul (.rational
    1329650090 1) .v)) .g) (.mul (.rational 250741575 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 663308642 1) .g) (.mul (.rational 860962136 1) .v)) .g)
    (.mul (.rational 236411052 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 207474403 1) .g) (.mul (.rational 355726696 1) .v)) .g) (.mul (.rational 134239608
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 41466220 1) .g)
    (.mul (.rational 94089904 1) .v)) .g) (.mul (.rational 47478735 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4965269 1) .g) (.mul (.rational 15494167 1) .v))
    .g) (.mul (.rational 10470874 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 309229 1) .g) (.mul (.rational 1472792 1) .v)) .g) (.mul (.rational 1393290 1)
    (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 106254183 1) .f) (.add
    (.mul (.rational 553182902 1) .g) (.mul (.rational 110787226 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 1254398024 1) .g) (.mul (.rational 541404247 1) .v)) .g) (.mul (.rational
    29588703 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1628187471 1) .g)
    (.mul (.rational 1140927495 1) .v)) .g) (.mul (.rational 136166442 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1336673260 1) .g) (.mul (.rational 1360549200 1) .v))
    .g) (.mul (.rational 267587432 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 723317610 1) .g) (.mul (.rational 1013091135 1) .v)) .g) (.mul (.rational
    294219332 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    260357824 1) .g) (.mul (.rational 490408904 1) .v)) .g) (.mul (.rational 199484984 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 61217971 1) .g) (.mul
    (.rational 155669507 1) .v)) .g) (.mul (.rational 86792750 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8914494 1) .g) (.mul (.rational 31812675 1) .v)) .g)
    (.mul (.rational 24459205 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 713456 1) .g) (.mul (.rational 3959133 1) .v)) .g) (.mul (.rational 4384932 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 23025 1) .g) (.mul
    (.rational 263244 1) .v)) .g) (.mul (.rational 469390 1) (.pow .v 2))) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 52394221 1) .f) (.add (.mul (.rational
    295542122 1) .g) (.mul (.rational 61139870 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    730247841 1) .g) (.mul (.rational 327953226 1) .v)) .g) (.mul (.rational 18422493 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1039574581 1) .g) (.mul (.rational
    764880168 1) .v)) .g) (.mul (.rational 94484778 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 943191689 1) .g) (.mul (.rational 1019266506 1) .v)) .g) (.mul
    (.rational 209389713 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 569237299 1) .g) (.mul (.rational 857823611 1) .v)) .g) (.mul (.rational 263334450
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 231133049 1) .g)
    (.mul (.rational 475738759 1) .v)) .g) (.mul (.rational 207708520 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 62224668 1) .g) (.mul (.rational 175896975
    1) .v)) .g) (.mul (.rational 107272256 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10592608 1) .g) (.mul (.rational 42770902 1) .v)) .g) (.mul (.rational
    36755124 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1022708
    1) .g) (.mul (.rational 6528943 1) .v)) .g) (.mul (.rational 8256454 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 41970 1) .g) (.mul (.rational 560195 1) .v))
    .g) (.mul (.rational 1159298 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 20021 1) .v) .g) (.mul (.rational 89940 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 19015827 1) .f) (.add (.mul
    (.rational 115516427 1) .g) (.mul (.rational 24714874 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 308829783 1) .g) (.mul (.rational 144406478 1) .v)) .g) (.mul (.rational 8354427 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 478196938 1) .g) (.mul (.rational
    369335812 1) .v)) .g) (.mul (.rational 47286120 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 474725384 1) .g) (.mul (.rational 543859458 1) .v)) .g) (.mul
    (.rational 116725289 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 315668324 1) .g) (.mul (.rational 510222525 1) .v)) .g) (.mul (.rational 165281080
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 142391237 1) .g)
    (.mul (.rational 318601572 1) .v)) .g) (.mul (.rational 148606172 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 43026005 1) .g) (.mul (.rational 134190124
    1) .v)) .g) (.mul (.rational 88718790 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8332445 1) .g) (.mul (.rational 37695339 1) .v)) .g) (.mul (.rational
    35696656 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 932632 1)
    .g) (.mul (.rational 6769760 1) .v)) .g) (.mul (.rational 9590374 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 45650 1) .g) (.mul (.rational 702017 1) .v))
    .g) (.mul (.rational 1650640 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 31769 1) .v) .g) (.mul (.rational 163806 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 6986 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 4791474 1) .f) (.add (.mul (.rational 31184404 1) .g) (.mul
    (.rational 6904520 1) .v))) .f) (.add (.mul (.add (.mul (.rational 89667157 1) .g) (.mul
    (.rational 43656778 1) .v)) .g) (.mul (.rational 2603802 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 149962872 1) .g) (.mul (.rational 121493244 1) .v)) .g) (.mul
    (.rational 16126617 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    161554935 1) .g) (.mul (.rational 195850366 1) .v)) .g) (.mul (.rational 43881320 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 117191799 1) .g) (.mul
    (.rational 202505571 1) .v)) .g) (.mul (.rational 69057911 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 58017845 1) .g) (.mul (.rational 140415776 1) .v))
    .g) (.mul (.rational 69639393 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19378700 1) .g) (.mul (.rational 66220115 1) .v)) .g) (.mul (.rational 47093316 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4185125 1) .g) (.mul
    (.rational 21024810 1) .v)) .g) (.mul (.rational 21691753 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 528401 1) .g) (.mul (.rational 4315397 1) .v)) .g)
    (.mul (.rational 6748553 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 29640 1) .g) (.mul (.rational 518958 1) .v)) .g) (.mul (.rational 1363699 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 27841 1) .v) .g) (.mul (.rational
    162179 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 8609 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 748980 1)
    .f) (.add (.mul (.rational 5199012 1) .g) (.mul (.rational 1191384 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 15995307 1) .g) (.mul (.rational 8105586 1) .v)) .g) (.mul (.rational
    498474 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 28721709 1) .g) (.mul
    (.rational 24380514 1) .v)) .g) (.mul (.rational 3353526 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 33343968 1) .g) (.mul (.rational 42685560 1) .v)) .g) (.mul
    (.rational 9969861 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    26169894 1) .g) (.mul (.rational 48187184 1) .v)) .g) (.mul (.rational 17251242 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 14079324 1) .g) (.mul
    (.rational 36684021 1) .v)) .g) (.mul (.rational 19257300 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5135685 1) .g) (.mul (.rational 19106835 1) .v)) .g)
    (.mul (.rational 14517732 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1218156 1) .g) (.mul (.rational 6741850 1) .v)) .g) (.mul (.rational 7508433 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 170076 1) .g) (.mul
    (.rational 1548174 1) .v)) .g) (.mul (.rational 2641854 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10641 1) .g) (.mul (.rational 209895 1) .v)) .g)
    (.mul (.rational 608364 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    12821 1) .v) .g) (.mul (.rational 83238 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 5160 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 54720 1) .f) (.add (.mul (.rational 403518 1) .g)
    (.mul (.rational 95676 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1322376 1) .g) (.mul
    (.rational 696924 1) .v)) .g) (.mul (.rational 44172 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2536272 1) .g) (.mul (.rational 2252598 1) .v)) .g) (.mul (.rational
    320742 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3154114 1) .g) (.mul
    (.rational 4254426 1) .v)) .g) (.mul (.rational 1033956 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2659740 1) .g) (.mul (.rational 5201916 1) .v)) .g)
    (.mul (.rational 1949439 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1542258 1) .g) (.mul (.rational 4307046 1) .v)) .g) (.mul (.rational 2383109 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 608336 1) .g) (.mul
    (.rational 2450004 1) .v)) .g) (.mul (.rational 1977363 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 156582 1) .g) (.mul (.rational 947958 1) .v)) .g)
    (.mul (.rational 1130997 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23814 1) .g) (.mul (.rational 239616 1) .v)) .g) (.mul (.rational 442021 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1630 1) .g) (.mul
    (.rational 35886 1) .v)) .g) (.mul (.rational 113499 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 2430 1) .v) .g) (.mul (.rational 17379 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 1211 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1132

namespace FullHigh1133
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsHigh2.c140 e f g v*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    14*SmallGap.PolarCoefficientsHigh1.c230 e f g v*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    18*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    4*SmallGap.PolarCoefficientsHigh0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(40*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^2+40*SmallGap.ReducedLayers.high0_100_1 e g v*e^3+20*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^4+4*SmallGap.ReducedLayers.high0_010_0 e g v+12*SmallGap.ReducedLayers.high0_010_1 e g
    v*e^1+12*SmallGap.ReducedLayers.high0_010_2 e g v*e^2+4*SmallGap.ReducedLayers.high0_010_3 e g
    v*e^3+48*SmallGap.ReducedLayers.high0_001_0 e g v*e^1+72*SmallGap.ReducedLayers.high0_001_1 e
    g v*e^2+48*SmallGap.ReducedLayers.high0_001_2 e g v*e^3+12*SmallGap.ReducedLayers.high0_001_3
    e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_110_0 e g v+3*SmallGap.ReducedLayers.high1_110_1 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_110_2 e g v*e^2+1*SmallGap.ReducedLayers.high1_110_3 e g
    v*e^3+12*SmallGap.ReducedLayers.high1_101_0 e g v*e^1+18*SmallGap.ReducedLayers.high1_101_1 e
    g v*e^2+12*SmallGap.ReducedLayers.high1_101_2 e g v*e^3+3*SmallGap.ReducedLayers.high1_101_3 e
    g v*e^4+3*SmallGap.ReducedLayers.high1_011_1 e g v+6*SmallGap.ReducedLayers.high1_011_2 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_011_3 e g v*e^2+6*SmallGap.ReducedLayers.high1_002_0 e g
    v+18*SmallGap.ReducedLayers.high1_002_1 e g v*e^1+18*SmallGap.ReducedLayers.high1_002_2 e g
    v*e^2+6*SmallGap.ReducedLayers.high1_002_3 e g v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 98000 1)
    .e) (.add (.mul (.rational 878964 1) .f) (.add (.mul (.rational 1084756 1) .g) (.mul
    (.rational 172984 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 4869671 1) .f) (.add (.mul
    (.rational 8174550 1) .g) (.mul (.rational 1376567 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 4952647 1) .g) (.mul (.rational 1634198 1) .v)) .g) (.mul (.rational 78200 1) (.pow
    .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 18610853 1) .f) (.add (.mul
    (.rational 39447300 1) .g) (.mul (.rational 6794301 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 32125809 1) .g) (.mul (.rational 10989278 1) .v)) .g) (.mul (.rational 561416 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 12592890 1) .g) (.mul (.rational
    6203365 1) .v)) .g) (.mul (.rational 663768 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 51933510 1) .f) (.add (.mul (.rational 132809417 1) .g)
    (.mul (.rational 23208748 1) .v))) .f) (.add (.mul (.add (.mul (.rational 135691459 1) .g)
    (.mul (.rational 47622264 1) .v)) .g) (.mul (.rational 2494586 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 70891659 1) .g) (.mul (.rational 36527050 1) .v)) .g) (.mul
    (.rational 4023686 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 19985139
    1) .g) (.mul (.rational 12988348 1) .v)) .g) (.mul (.rational 2200454 1) (.pow .v 2))) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 109282407
    1) .f) (.add (.mul (.rational 327004073 1) .g) (.mul (.rational 58014196 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 401442457 1) .g) (.mul (.rational 144588048 1) .v)) .g) (.mul
    (.rational 7661168 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 261675445 1)
    .g) (.mul (.rational 140788206 1) .v)) .g) (.mul (.rational 15739128 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 97653616 1) .g) (.mul (.rational 68056968 1) .v)) .g)
    (.mul (.rational 11809518 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20804842 1) .g) (.mul (.rational 17125266 1) .v)) .g) (.mul (.rational 3936988 1)
    (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 176590694 1) .f) (.add (.mul (.rational 604831273 1) .g) (.mul
    (.rational 109397161 1) .v))) .f) (.add (.mul (.add (.mul (.rational 866288384 1) .g) (.mul
    (.rational 321604602 1) .v)) .g) (.mul (.rational 17201434 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 675834671 1) .g) (.mul (.rational 381055350 1) .v)) .g) (.mul
    (.rational 43213054 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    313103629 1) .g) (.mul (.rational 234335928 1) .v)) .g) (.mul (.rational 41697378 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 87787308 1) .g) (.mul
    (.rational 80324845 1) .v)) .g) (.mul (.rational 19410468 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 14417977 1) .g) (.mul (.rational 15311758 1) .v)) .g)
    (.mul (.rational 4481520 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 220993923 1) .f) (.add (.mul
    (.rational 852160901 1) .g) (.mul (.rational 158009461 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1393941960 1) .g) (.mul (.rational 536426622 1) .v)) .g) (.mul (.rational 29075520
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1264933279 1) .g) (.mul
    (.rational 751206624 1) .v)) .g) (.mul (.rational 86938430 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 698642340 1) .g) (.mul (.rational 563404348 1) .v)) .g)
    (.mul (.rational 103653506 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 242023938 1) .g) (.mul (.rational 246209013 1) .v)) .g) (.mul (.rational 63107506
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 52034845 1) .g)
    (.mul (.rational 63996410 1) .v)) .g) (.mul (.rational 20927844 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6563518 1) .g) (.mul (.rational 9668614 1) .v))
    .g) (.mul (.rational 3758844 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 214274898 1) .f)
    (.add (.mul (.rational 918303821 1) .g) (.mul (.rational 175531698 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1688079842 1) .g) (.mul (.rational 677081386 1) .v)) .g) (.mul
    (.rational 37435856 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1745176380
    1) .g) (.mul (.rational 1096789887 1) .v)) .g) (.mul (.rational 130607878 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1117566530 1) .g) (.mul (.rational 973874624
    1) .v)) .g) (.mul (.rational 187018480 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 459702744 1) .g) (.mul (.rational 519683992 1) .v)) .g) (.mul
    (.rational 142505972 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 121546249 1) .g) (.mul (.rational 172159906 1) .v)) .g) (.mul (.rational 62884588
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19968863 1) .g)
    (.mul (.rational 35331041 1) .v)) .g) (.mul (.rational 16508436 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1871817 1) .g) (.mul (.rational 4317120 1) .v))
    .g) (.mul (.rational 2574768 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    159736485 1) .f) (.add (.mul (.rational 753014057 1) .g) (.mul (.rational 149112238 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1536033789 1) .g) (.mul (.rational 645071072 1) .v))
    .g) (.mul (.rational 36635428 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1780775608 1) .g) (.mul (.rational 1188581315 1) .v)) .g) (.mul (.rational 146761808 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1295561614 1) .g) (.mul (.rational
    1221851688 1) .v)) .g) (.mul (.rational 246784794 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 615712428 1) .g) (.mul (.rational 771984168 1) .v)) .g)
    (.mul (.rational 227587656 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 192482046 1) .g) (.mul (.rational 311721180 1) .v)) .g) (.mul (.rational 126611008
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 38699829 1) .g)
    (.mul (.rational 81083945 1) .v)) .g) (.mul (.rational 44248688 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4700150 1) .g) (.mul (.rational 13310028 1) .v))
    .g) (.mul (.rational 9852812 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 299754 1) .g) (.mul (.rational 1288570 1) .v)) .g) (.mul (.rational 1375076 1)
    (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 89960967 1) .f) (.add
    (.mul (.rational 462541813 1) .g) (.mul (.rational 95259226 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 1036368571 1) .g) (.mul (.rational 457226820 1) .v)) .g) (.mul (.rational
    26830954 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1330706409 1) .g)
    (.mul (.rational 945313804 1) .v)) .g) (.mul (.rational 121735118 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1082925959 1) .g) (.mul (.rational 1105393426 1) .v))
    .g) (.mul (.rational 235906774 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 582810840 1) .g) (.mul (.rational 807765321 1) .v)) .g) (.mul (.rational
    256288232 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    209654137 1) .g) (.mul (.rational 385020714 1) .v)) .g) (.mul (.rational 172631144 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 49597292 1) .g) (.mul
    (.rational 121272842 1) .v)) .g) (.mul (.rational 75496644 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7329936 1) .g) (.mul (.rational 24939018 1) .v)) .g)
    (.mul (.rational 21840788 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 601796 1) .g) (.mul (.rational 3189540 1) .v)) .g) (.mul (.rational 4144716 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 20180 1) .g) (.mul
    (.rational 223584 1) .v)) .g) (.mul (.rational 485312 1) (.pow .v 2))) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 37072220 1) .f) (.add (.mul (.rational
    206421547 1) .g) (.mul (.rational 44340112 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    503768973 1) .g) (.mul (.rational 233982624 1) .v)) .g) (.mul (.rational 14247728 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 709220161 1) .g) (.mul (.rational 536690026
    1) .v)) .g) (.mul (.rational 72337466 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 637709340 1) .g) (.mul (.rational 703696460 1) .v)) .g) (.mul (.rational 158976282
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 382715242 1) .g)
    (.mul (.rational 583860077 1) .v)) .g) (.mul (.rational 199026860 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 155290725 1) .g) (.mul (.rational 320643790
    1) .v)) .g) (.mul (.rational 157398704 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 42064080 1) .g) (.mul (.rational 118382226 1) .v)) .g) (.mul (.rational
    82514384 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7269628
    1) .g) (.mul (.rational 29142496 1) .v)) .g) (.mul (.rational 29249548 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 720648 1) .g) (.mul (.rational 4593924 1)
    .v)) .g) (.mul (.rational 6971546 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 30792 1) .g) (.mul (.rational 417204 1) .v)) .g) (.mul (.rational 1067012 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 16209 1) .v) .g) (.mul
    (.rational 92172 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 10559212 1) .f) (.add (.mul (.rational 63286826 1) .g) (.mul (.rational
    14205144 1) .v))) .f) (.add (.mul (.add (.mul (.rational 167041727 1) .g) (.mul (.rational
    81766086 1) .v)) .g) (.mul (.rational 5179826 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 255693707 1) .g) (.mul (.rational 206076534 1) .v)) .g) (.mul (.rational
    29118496 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 251494745 1) .g)
    (.mul (.rational 299388156 1) .v)) .g) (.mul (.rational 71586364 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 166256752 1) .g) (.mul (.rational 277857072
    1) .v)) .g) (.mul (.rational 101435098 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 74928947 1) .g) (.mul (.rational 172511626 1) .v)) .g) (.mul (.rational
    91977058 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 22776415
    1) .g) (.mul (.rational 72860923 1) .v)) .g) (.mul (.rational 56042778 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4477341 1) .g) (.mul (.rational 20794736
    1) .v)) .g) (.mul (.rational 23406852 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 514488 1) .g) (.mul (.rational 3864282 1) .v)) .g) (.mul (.rational
    6669338 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 26216 1)
    .g) (.mul (.rational 424196 1) .v)) .g) (.mul (.rational 1246110 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 20845 1) .v) .g) (.mul (.rational 137094 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 6594 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1859760 1) .f) (.add
    (.mul (.rational 11935266 1) .g) (.mul (.rational 2802132 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 33863924 1) .g) (.mul (.rational 17473236 1) .v)) .g) (.mul (.rational 1152984 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 55961833 1) .g) (.mul (.rational
    47989972 1) .v)) .g) (.mul (.rational 7110276 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 59706506 1) .g) (.mul (.rational 76476980 1) .v)) .g) (.mul (.rational
    19327840 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 43042102
    1) .g) (.mul (.rational 78419396 1) .v)) .g) (.mul (.rational 30544546 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 21281312 1) .g) (.mul (.rational 54211840
    1) .v)) .g) (.mul (.rational 31173834 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7147021 1) .g) (.mul (.rational 25702631 1) .v)) .g) (.mul (.rational
    21576520 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1565618
    1) .g) (.mul (.rational 8304648 1) .v)) .g) (.mul (.rational 10326630 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 202714 1) .g) (.mul (.rational 1763538 1)
    .v)) .g) (.mul (.rational 3401054 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11816 1) .g) (.mul (.rational 223944 1) .v)) .g) (.mul (.rational 742674 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 12979 1) .v) .g) (.mul
    (.rational 97364 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 5798 1) (.pow .v
    2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    152760 1) .f) (.add (.mul (.rational 1044900 1) .g) (.mul (.rational 256680 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 3170074 1) .g) (.mul (.rational 1723500 1) .v)) .g) (.mul
    (.rational 118488 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5621022 1)
    .g) (.mul (.rational 5121404 1) .v)) .g) (.mul (.rational 795144 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6458742 1) .g) (.mul (.rational 8875758 1) .v)) .g)
    (.mul (.rational 2366418 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5034476 1) .g) (.mul (.rational 9951924 1) .v)) .g) (.mul (.rational 4120832 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2703098 1) .g) (.mul
    (.rational 7565308 1) .v)) .g) (.mul (.rational 4664694 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 990446 1) .g) (.mul (.rational 3966046 1) .v)) .g)
    (.mul (.rational 3603408 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 237970 1) .g) (.mul (.rational 1424278 1) .v)) .g) (.mul (.rational 1935612 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 34004 1) .g) (.mul
    (.rational 337784 1) .v)) .g) (.mul (.rational 719000 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2204 1) .g) (.mul (.rational 48148 1) .v)) .g) (.mul
    (.rational 177990 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3154
    1) .v) .g) (.mul (.rational 26656 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    1838 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1133

namespace FullHigh1134
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  14*SmallGap.PolarCoefficientsHigh2.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    18*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    20*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsHigh1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(20*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^1+40*SmallGap.ReducedLayers.high0_100_1 e g v*e^2+40*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^3+4*SmallGap.ReducedLayers.high0_010_1 e g v+12*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^1+12*SmallGap.ReducedLayers.high0_010_3 e g v*e^2+4*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^3+12*SmallGap.ReducedLayers.high0_001_0 e g v+48*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^1+72*SmallGap.ReducedLayers.high0_001_2 e g v*e^2+48*SmallGap.ReducedLayers.high0_001_3 e
    g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_110_1 e g v+3*SmallGap.ReducedLayers.high1_110_2 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_110_3 e g v*e^2+1*SmallGap.ReducedLayers.high1_110_4 e g
    v*e^3+3*SmallGap.ReducedLayers.high1_101_0 e g v+12*SmallGap.ReducedLayers.high1_101_1 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_101_2 e g v*e^2+12*SmallGap.ReducedLayers.high1_101_3 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_011_2 e g v+6*SmallGap.ReducedLayers.high1_011_3 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_011_4 e g v*e^2+6*SmallGap.ReducedLayers.high1_002_1 e g
    v+18*SmallGap.ReducedLayers.high1_002_2 e g v*e^1+18*SmallGap.ReducedLayers.high1_002_3 e g
    v*e^2+6*SmallGap.ReducedLayers.high1_002_4 e g v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 101200 1) .e) (.add
    (.mul (.rational 882496 1) .f) (.add (.mul (.rational 1083084 1) .g) (.mul (.rational 176176
    1) .v)))) .e) (.add (.mul (.add (.mul (.rational 4729959 1) .f) (.add (.mul (.rational 7886070
    1) .g) (.mul (.rational 1344399 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4748087 1) .g)
    (.mul (.rational 1561094 1) .v)) .g) (.mul (.rational 79200 1) (.pow .v 2))))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 17369257 1) .f) (.add (.mul (.rational 36520655 1) .g)
    (.mul (.rational 6330443 1) .v))) .f) (.add (.mul (.add (.mul (.rational 29515959 1) .g) (.mul
    (.rational 9977349 1) .v)) .g) (.mul (.rational 541524 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11500417 1) .g) (.mul (.rational 5422377 1) .v)) .g) (.mul (.rational
    622652 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    46169128 1) .f) (.add (.mul (.rational 116977564 1) .g) (.mul (.rational 20495498 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 118449524 1) .g) (.mul (.rational 40882325 1) .v)) .g)
    (.mul (.rational 2276558 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    61412076 1) .g) (.mul (.rational 30128641 1) .v)) .g) (.mul (.rational 3551566 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 17226708 1) .g) (.mul (.rational
    10098371 1) .v)) .g) (.mul (.rational 1836746 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 91550725 1) .f) (.add (.mul
    (.rational 271080741 1) .g) (.mul (.rational 48171000 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 329389061 1) .g) (.mul (.rational 116578140 1) .v)) .g) (.mul (.rational 6567470 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 212747837 1) .g) (.mul (.rational
    109058113 1) .v)) .g) (.mul (.rational 13014062 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 78849518 1) .g) (.mul (.rational 49810075 1) .v)) .g) (.mul (.rational
    9220004 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 16743686
    1) .g) (.mul (.rational 11527107 1) .v)) .g) (.mul (.rational 2771150 1) (.pow .v 2))) (.pow
    .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 137556658 1) .f) (.add (.mul (.rational 465647416 1) .g) (.mul (.rational 84543465
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 659281615 1) .g) (.mul (.rational 241350670 1)
    .v)) .g) (.mul (.rational 13745686 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 508904902 1) .g) (.mul (.rational 275175068 1) .v)) .g) (.mul (.rational 33325298
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 233741644 1) .g) (.mul
    (.rational 160658831 1) .v)) .g) (.mul (.rational 30493676 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 65184646 1) .g) (.mul (.rational 51242974 1) .v)) .g)
    (.mul (.rational 13014680 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10694775 1) .g) (.mul (.rational 8824919 1) .v)) .g) (.mul (.rational 2554798 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 157398849 1) .f) (.add (.mul (.rational 599165983 1) .g)
    (.mul (.rational 112112515 1) .v))) .f) (.add (.mul (.add (.mul (.rational 967658764 1) .g)
    (.mul (.rational 369957867 1) .v)) .g) (.mul (.rational 21447924 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 867644222 1) .g) (.mul (.rational 499910954 1) .v)) .g)
    (.mul (.rational 62112870 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    474345944 1) .g) (.mul (.rational 358173350 1) .v)) .g) (.mul (.rational 70862048 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 163141710 1) .g) (.mul
    (.rational 147536008 1) .v)) .g) (.mul (.rational 40479604 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 34969051 1) .g) (.mul (.rational 35552378 1) .v)) .g)
    (.mul (.rational 12187754 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4418709 1) .g) (.mul (.rational 4896487 1) .v)) .g) (.mul (.rational 1884482 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 136548922 1) .f) (.add (.mul (.rational
    577070144 1) .g) (.mul (.rational 112200916 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1046125101 1) .g) (.mul (.rational 421338383 1) .v)) .g) (.mul (.rational 25115002 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1067286584 1) .g) (.mul (.rational
    660787918 1) .v)) .g) (.mul (.rational 85338678 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 675574058 1) .g) (.mul (.rational 564180070 1) .v)) .g) (.mul
    (.rational 118234504 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 275464368 1) .g) (.mul (.rational 287228322 1) .v)) .g) (.mul (.rational 86473164
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 72496017 1) .g)
    (.mul (.rational 90130330 1) .v)) .g) (.mul (.rational 36347652 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11915768 1) .g) (.mul (.rational 17479865 1) .v))
    .g) (.mul (.rational 9096880 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1123062 1) .g) (.mul (.rational 2036929 1) .v)) .g) (.mul (.rational 1393138 1)
    (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 88463863 1) .f) (.add (.mul
    (.rational 410807243 1) .g) (.mul (.rational 83574886 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 825497695 1) .g) (.mul (.rational 352629322 1) .v)) .g) (.mul (.rational 21823918
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 943371277 1) .g) (.mul
    (.rational 631234962 1) .v)) .g) (.mul (.rational 85676622 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 677585586 1) .g) (.mul (.rational 627775762 1) .v)) .g)
    (.mul (.rational 140890062 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 318802286 1) .g) (.mul (.rational 382314098 1) .v)) .g) (.mul (.rational 127011180
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 99082360 1) .g)
    (.mul (.rational 148636034 1) .v)) .g) (.mul (.rational 69382340 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19914878 1) .g) (.mul (.rational 37424157 1)
    .v)) .g) (.mul (.rational 24187448 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2433016 1) .g) (.mul (.rational 6044779 1) .v)) .g) (.mul (.rational 5557486
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 156936 1) .g)
    (.mul (.rational 591917 1) .v)) .g) (.mul (.rational 838162 1) (.pow .v 2))) (.pow .g 7))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 41533155 1) .f) (.add (.mul (.rational 210153282 1)
    .g) (.mul (.rational 44970822 1) .v))) .f) (.add (.mul (.add (.mul (.rational 463390118 1) .g)
    (.mul (.rational 210916450 1) .v)) .g) (.mul (.rational 13655722 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 585916642 1) .g) (.mul (.rational 425017954 1) .v)) .g)
    (.mul (.rational 61065986 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    470267316 1) .g) (.mul (.rational 483351260 1) .v)) .g) (.mul (.rational 116750000 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 250313110 1) .g) (.mul
    (.rational 343248023 1) .v)) .g) (.mul (.rational 125613340 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 89446985 1) .g) (.mul (.rational 159403064 1) .v))
    .g) (.mul (.rational 84573760 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 21146980 1) .g) (.mul (.rational 49359054 1) .v)) .g) (.mul (.rational 37645636 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3146720 1) .g) (.mul
    (.rational 10164641 1) .v)) .g) (.mul (.rational 11403276 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 262280 1) .g) (.mul (.rational 1338049 1) .v)) .g)
    (.mul (.rational 2339220 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9000 1) .g) (.mul (.rational 99375 1) .v)) .g) (.mul (.rational 302010 1) (.pow .v
    2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13369542 1) .f)
    (.add (.mul (.rational 73190006 1) .g) (.mul (.rational 16534072 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 175619427 1) .g) (.mul (.rational 85399534 1) .v)) .g) (.mul (.rational
    5812172 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 243252731 1) .g) (.mul
    (.rational 191454936 1) .v)) .g) (.mul (.rational 29222122 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 215541840 1) .g) (.mul (.rational 245205034 1) .v)) .g)
    (.mul (.rational 63780310 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 127843522 1) .g) (.mul (.rational 198960123 1) .v)) .g) (.mul (.rational 79767860
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 51503395 1) .g)
    (.mul (.rational 107356273 1) .v)) .g) (.mul (.rational 63695468 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 13942205 1) .g) (.mul (.rational 39357026 1)
    .v)) .g) (.mul (.rational 34297216 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2428644 1) .g) (.mul (.rational 9799996 1) .v)) .g) (.mul (.rational 12781642
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 245184 1) .g)
    (.mul (.rational 1603619 1) .v)) .g) (.mul (.rational 3282984 1) (.pow .v 2))) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10800 1) .g) (.mul (.rational 155563 1) .v)) .g)
    (.mul (.rational 551126 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    6624 1) .v) .g) (.mul (.rational 52514 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 2643570 1) .f) (.add (.mul (.rational 15562644
    1) .g) (.mul (.rational 3719748 1) .v))) .f) (.add (.mul (.add (.mul (.rational 40350915 1)
    .g) (.mul (.rational 20986422 1) .v)) .g) (.mul (.rational 1505160 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 60720988 1) .g) (.mul (.rational 51816200 1) .v)) .g) (.mul
    (.rational 8409240 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 58814674
    1) .g) (.mul (.rational 73785728 1) .v)) .g) (.mul (.rational 20628878 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 38406364 1) .g) (.mul (.rational 67288840
    1) .v)) .g) (.mul (.rational 29366734 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17180551 1) .g) (.mul (.rational 41293163 1) .v)) .g) (.mul (.rational
    27043798 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5219900
    1) .g) (.mul (.rational 17430348 1) .v)) .g) (.mul (.rational 16999302 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1035178 1) .g) (.mul (.rational 5060890
    1) .v)) .g) (.mul (.rational 7472250 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 121392 1) .g) (.mul (.rational 980016 1) .v)) .g) (.mul (.rational
    2288862 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6400 1)
    .g) (.mul (.rational 115165 1) .v)) .g) (.mul (.rational 467998 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 6216 1) .v) .g) (.mul (.rational 57014 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 3068 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 242460 1) .f) (.add (.mul
    (.rational 1526808 1) .g) (.mul (.rational 386556 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 4251666 1) .g) (.mul (.rational 2365068 1) .v)) .g) (.mul (.rational 178920 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6902084 1) .g) (.mul (.rational
    6374758 1) .v)) .g) (.mul (.rational 1099440 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7247656 1) .g) (.mul (.rational 9983848 1) .v)) .g) (.mul (.rational 2991988
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5159004 1) .g)
    (.mul (.rational 10095316 1) .v)) .g) (.mul (.rational 4768358 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2531362 1) .g) (.mul (.rational 6927234 1) .v))
    .g) (.mul (.rational 4960452 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 849784 1) .g) (.mul (.rational 3296238 1) .v)) .g) (.mul (.rational 3550758 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 187884 1) .g) (.mul
    (.rational 1086852 1) .v)) .g) (.mul (.rational 1789346 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 24848 1) .g) (.mul (.rational 240740 1) .v)) .g)
    (.mul (.rational 632654 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1500 1) .g) (.mul (.rational 32678 1) .v)) .g) (.mul (.rational 150980 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2072 1) .v) .g) (.mul (.rational
    21942 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1466 1) (.pow .v 2)) (.pow .g
    10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1134

namespace FullHigh1135
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  18*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    20*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsHigh2.c410 e f g v*e*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_0 e g v+20*SmallGap.ReducedLayers.high0_100_1 e
    g v*e^1+40*SmallGap.ReducedLayers.high0_100_2 e g v*e^2+4*SmallGap.ReducedLayers.high0_010_2 e
    g v+12*SmallGap.ReducedLayers.high0_010_3 e g v*e^1+12*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^2+12*SmallGap.ReducedLayers.high0_001_1 e g v+48*SmallGap.ReducedLayers.high0_001_2 e g
    v*e^1+72*SmallGap.ReducedLayers.high0_001_3 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_110_2 e g v+3*SmallGap.ReducedLayers.high1_110_3 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_110_4 e g v*e^2+3*SmallGap.ReducedLayers.high1_101_1 e g
    v+12*SmallGap.ReducedLayers.high1_101_2 e g v*e^1+18*SmallGap.ReducedLayers.high1_101_3 e g
    v*e^2+3*SmallGap.ReducedLayers.high1_011_3 e g v+6*SmallGap.ReducedLayers.high1_011_4 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_011_5 e g v*e^2+6*SmallGap.ReducedLayers.high1_002_2 e g
    v+18*SmallGap.ReducedLayers.high1_002_3 e g v*e^1+18*SmallGap.ReducedLayers.high1_002_4 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 62900 1) .e) (.add (.mul (.rational
    536272 1) .f) (.add (.mul (.rational 655208 1) .g) (.mul (.rational 107952 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 2793084 1) .f) (.add (.mul (.rational 4629188 1) .g) (.mul
    (.rational 793940 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2774516 1) .g) (.mul
    (.rational 900752 1) .v)) .g) (.mul (.rational 48300 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 9884008 1) .f) (.add (.mul (.rational 20626892 1) .g) (.mul
    (.rational 3579116 1) .v))) .f) (.add (.mul (.add (.mul (.rational 16566088 1) .g) (.mul
    (.rational 5484488 1) .v)) .g) (.mul (.rational 316378 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6431424 1) .g) (.mul (.rational 2855228 1) .v)) .g) (.mul (.rational
    353384 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    25046392 1) .f) (.add (.mul (.rational 62879644 1) .g) (.mul (.rational 11001360 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 63155160 1) .g) (.mul (.rational 21260144 1) .v)) .g) (.mul
    (.rational 1263522 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 32552832 1)
    .g) (.mul (.rational 14950196 1) .v)) .g) (.mul (.rational 1901874 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9112984 1) .g) (.mul (.rational 4643952 1) .v)) .g)
    (.mul (.rational 922894 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 46703516 1) .f) (.add (.mul (.rational 136780896 1)
    .g) (.mul (.rational 24298304 1) .v))) .f) (.add (.mul (.add (.mul (.rational 164531056 1) .g)
    (.mul (.rational 56857296 1) .v)) .g) (.mul (.rational 3431528 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 105402220 1) .g) (.mul (.rational 50692684 1) .v)) .g)
    (.mul (.rational 6537516 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    38873648 1) .g) (.mul (.rational 21488952 1) .v)) .g) (.mul (.rational 4332898 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8252244 1) .g) (.mul
    (.rational 4368260 1) .v)) .g) (.mul (.rational 1131728 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 64843664 1)
    .f) (.add (.mul (.rational 216707416 1) .g) (.mul (.rational 39540204 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 303104884 1) .g) (.mul (.rational 109089448 1) .v)) .g) (.mul
    (.rational 6696820 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 231493088 1)
    .g) (.mul (.rational 118696360 1) .v)) .g) (.mul (.rational 15625628 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 105489568 1) .g) (.mul (.rational 64716376 1) .v))
    .g) (.mul (.rational 13464198 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 29302892 1) .g) (.mul (.rational 18507800 1) .v)) .g) (.mul (.rational 5146594 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4810676 1) .g) (.mul
    (.rational 2618736 1) .v)) .g) (.mul (.rational 769366 1) (.pow .v 2))) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    67017108 1) .f) (.add (.mul (.rational 251380812 1) .g) (.mul (.rational 47704748 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 400189568 1) .g) (.mul (.rational 152244168 1) .v)) .g)
    (.mul (.rational 9614514 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    354118896 1) .g) (.mul (.rational 196920920 1) .v)) .g) (.mul (.rational 26941476 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 191482040 1) .g) (.mul (.rational
    132891656 1) .v)) .g) (.mul (.rational 29351752 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 65353292 1) .g) (.mul (.rational 50213856 1) .v)) .g) (.mul
    (.rational 15638884 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13956008 1) .g) (.mul (.rational 10607088 1) .v)) .g) (.mul (.rational 4193128 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1762256 1) .g) (.mul
    (.rational 1178652 1) .v)) .g) (.mul (.rational 522116 1) (.pow .v 2))) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 50923388 1) .f) (.add (.mul (.rational 211650220 1) .g) (.mul (.rational
    42247992 1) .v))) .f) (.add (.mul (.add (.mul (.rational 377361728 1) .g) (.mul (.rational
    153642976 1) .v)) .g) (.mul (.rational 10128278 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 378936188 1) .g) (.mul (.rational 231505232 1) .v)) .g) (.mul (.rational
    33557406 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 236483384 1) .g)
    (.mul (.rational 187801936 1) .v)) .g) (.mul (.rational 45108876 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 95326384 1) .g) (.mul (.rational 89457472 1)
    .v)) .g) (.mul (.rational 31859484 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 24884756 1) .g) (.mul (.rational 25748896 1) .v)) .g) (.mul (.rational
    12939968 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4067700
    1) .g) (.mul (.rational 4485252 1) .v)) .g) (.mul (.rational 3196588 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 380836 1) .g) (.mul (.rational 463328 1)
    .v)) .g) (.mul (.rational 515926 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    27659052 1) .f) (.add (.mul (.rational 126075896 1) .g) (.mul (.rational 26704384 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 248603736 1) .g) (.mul (.rational 109286840 1) .v)) .g)
    (.mul (.rational 7615296 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    278877760 1) .g) (.mul (.rational 188622296 1) .v)) .g) (.mul (.rational 29375280 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 196853100 1) .g) (.mul (.rational
    179556240 1) .v)) .g) (.mul (.rational 47495944 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 91217136 1) .g) (.mul (.rational 103834944 1) .v)) .g) (.mul
    (.rational 42307928 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 28000544 1) .g) (.mul (.rational 38096872 1) .v)) .g) (.mul (.rational 23169744 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5572156 1) .g) (.mul
    (.rational 9067772 1) .v)) .g) (.mul (.rational 8351524 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 673636 1) .g) (.mul (.rational 1409448 1) .v)) .g)
    (.mul (.rational 2074654 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 42580 1) .g) (.mul (.rational 137068 1) .v)) .g) (.mul (.rational 348488 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10173636 1) .f) (.add (.mul
    (.rational 50432764 1) .g) (.mul (.rational 11402720 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 108878444 1) .g) (.mul (.rational 51944776 1) .v)) .g) (.mul (.rational 3857040 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 134774520 1) .g) (.mul (.rational
    101219288 1) .v)) .g) (.mul (.rational 17052768 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 105971812 1) .g) (.mul (.rational 110802304 1) .v)) .g) (.mul
    (.rational 32353948 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 55350088 1) .g) (.mul (.rational 75475188 1) .v)) .g) (.mul (.rational 34841944 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 19457096 1) .g) (.mul
    (.rational 33638240 1) .v)) .g) (.mul (.rational 23870316 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4536848 1) .g) (.mul (.rational 10092944 1) .v)) .g)
    (.mul (.rational 11096092 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 666292 1) .g) (.mul (.rational 2060904 1) .v)) .g) (.mul (.rational 3615438 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 54540 1) .g) (.mul
    (.rational 277636 1) .v)) .g) (.mul (.rational 811678 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1800 1) .g) (.mul (.rational 21552 1) .v)) .g) (.mul
    (.rational 113854 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 2272752 1) .f) (.add (.mul (.rational 12166740 1) .g) (.mul (.rational
    2946456 1) .v))) .f) (.add (.mul (.add (.mul (.rational 28520856 1) .g) (.mul (.rational
    14798304 1) .v)) .g) (.mul (.rational 1175112 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 38574820 1) .g) (.mul (.rational 32152088 1) .v)) .g) (.mul (.rational
    5866992 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 33384504 1) .g)
    (.mul (.rational 39794920 1) .v)) .g) (.mul (.rational 12780648 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 19364488 1) .g) (.mul (.rational 31176036 1) .v))
    .g) (.mul (.rational 16103520 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7647060 1) .g) (.mul (.rational 16302024 1) .v)) .g) (.mul (.rational 13153566 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2035284 1) .g) (.mul
    (.rational 5862192 1) .v)) .g) (.mul (.rational 7398036 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 349420 1) .g) (.mul (.rational 1464992 1) .v)) .g)
    (.mul (.rational 2943608 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34760 1) .g) (.mul (.rational 247756 1) .v)) .g) (.mul (.rational 818556 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1500 1) .g) (.mul
    (.rational 25448 1) .v)) .g) (.mul (.rational 148734 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 1160 1) .v) .g) (.mul (.rational 15164 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 233064 1) .f) (.add
    (.mul (.rational 1339272 1) .g) (.mul (.rational 347904 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 3385368 1) .g) (.mul (.rational 1910088 1) .v)) .g) (.mul (.rational 162288 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4962560 1) .g) (.mul (.rational
    4577824 1) .v)) .g) (.mul (.rational 902952 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4681964 1) .g) (.mul (.rational 6317120 1) .v)) .g) (.mul (.rational 2218320
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2980936 1) .g)
    (.mul (.rational 5585840 1) .v)) .g) (.mul (.rational 3191976 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1303224 1) .g) (.mul (.rational 3340952 1) .v))
    .g) (.mul (.rational 3012398 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 388392 1) .g) (.mul (.rational 1392208 1) .v)) .g) (.mul (.rational 1975554 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 75880 1) .g) (.mul
    (.rational 407936 1) .v)) .g) (.mul (.rational 923380 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8800 1) .g) (.mul (.rational 81976 1) .v)) .g) (.mul
    (.rational 305348 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    460 1) .g) (.mul (.rational 10256 1) .v)) .g) (.mul (.rational 67962 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 600 1) .v) .g) (.mul (.rational 9058 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 540 1) (.pow .v 2)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1135

namespace FullHigh1136
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  20*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_1 e g v+20*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^1+4*SmallGap.ReducedLayers.high0_010_3 e g v+12*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^1+12*SmallGap.ReducedLayers.high0_001_2 e g v+48*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_110_3 e g v+3*SmallGap.ReducedLayers.high1_110_4 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_101_2 e g v+12*SmallGap.ReducedLayers.high1_101_3 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_011_4 e g v+6*SmallGap.ReducedLayers.high1_011_5 e g
    v*e^1+6*SmallGap.ReducedLayers.high1_002_3 e g v+18*SmallGap.ReducedLayers.high1_002_4 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 21780 1) .e) (.add (.mul (.rational 182520 1)
    .f) (.add (.mul (.rational 222240 1) .g) (.mul (.rational 36840 1) .v)))) .e) (.add (.mul
    (.add (.mul (.rational 928080 1) .f) (.add (.mul (.rational 1530620 1) .g) (.mul (.rational
    262440 1) .v))) .f) (.add (.mul (.add (.mul (.rational 915120 1) .g) (.mul (.rational 290640
    1) .v)) .g) (.mul (.rational 16420 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 3176100 1) .f) (.add (.mul (.rational 6583940 1) .g) (.mul (.rational 1137240 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 5265020 1) .g) (.mul (.rational 1690840 1) .v))
    .g) (.mul (.rational 103680 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2043820 1) .g) (.mul (.rational 838960 1) .v)) .g) (.mul (.rational 112440 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7686540 1) .f) (.add
    (.mul (.rational 19129400 1) .g) (.mul (.rational 3328560 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 19089980 1) .g) (.mul (.rational 6212880 1) .v)) .g) (.mul (.rational 395460 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9815220 1) .g) (.mul (.rational
    4140240 1) .v)) .g) (.mul (.rational 573560 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2756880 1) .g) (.mul (.rational 1166600 1) .v)) .g) (.mul (.rational 259540
    1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 13465860 1) .f) (.add (.mul (.rational 39005000 1) .g) (.mul (.rational
    6919800 1) .v))) .f) (.add (.mul (.add (.mul (.rational 46504000 1) .g) (.mul (.rational
    15600760 1) .v)) .g) (.mul (.rational 1016180 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 29636160 1) .g) (.mul (.rational 13160080 1) .v)) .g) (.mul (.rational
    1859440 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10932020 1) .g)
    (.mul (.rational 5071320 1) .v)) .g) (.mul (.rational 1147120 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2337080 1) .g) (.mul (.rational 835360 1) .v))
    .g) (.mul (.rational 250040 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 17185140 1) .f) (.add (.mul (.rational
    56658660 1) .g) (.mul (.rational 10429440 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    78330600 1) .g) (.mul (.rational 27712680 1) .v)) .g) (.mul (.rational 1858320 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 59326560 1) .g) (.mul (.rational 28597240
    1) .v)) .g) (.mul (.rational 4180400 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26941040 1) .g) (.mul (.rational 14335120 1) .v)) .g) (.mul (.rational 3401060 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7504760 1) .g) (.mul
    (.rational 3491280 1) .v)) .g) (.mul (.rational 1159600 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1243620 1) .g) (.mul (.rational 314560 1) .v)) .g)
    (.mul (.rational 115500 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15841800 1) .f) (.add (.mul
    (.rational 58458360 1) .g) (.mul (.rational 11368200 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 91699860 1) .g) (.mul (.rational 34976880 1) .v)) .g) (.mul (.rational 2460260 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 80179500 1) .g) (.mul (.rational
    43107520 1) .v)) .g) (.mul (.rational 6711360 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 43022800 1) .g) (.mul (.rational 27147200 1) .v)) .g) (.mul (.rational
    7072260 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 14651440
    1) .g) (.mul (.rational 9179960 1) .v)) .g) (.mul (.rational 3612040 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3139220 1) .g) (.mul (.rational 1566040 1)
    .v)) .g) (.mul (.rational 921060 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 398860 1) .g) (.mul (.rational 93800 1) .v)) .g) (.mul (.rational 112560 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 10279620 1) .f) (.add (.mul (.rational 41904360
    1) .g) (.mul (.rational 8739720 1) .v))) .f) (.add (.mul (.add (.mul (.rational 73360620 1)
    .g) (.mul (.rational 30684960 1) .v)) .g) (.mul (.rational 2312520 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 72491360 1) .g) (.mul (.rational 44267320 1) .v)) .g) (.mul
    (.rational 7543440 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 44670840
    1) .g) (.mul (.rational 33955040 1) .v)) .g) (.mul (.rational 10029120 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17859440 1) .g) (.mul (.rational 15001720
    1) .v)) .g) (.mul (.rational 7104720 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4643240 1) .g) (.mul (.rational 3888240 1) .v)) .g) (.mul (.rational
    3001700 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 756380 1)
    .g) (.mul (.rational 583320 1) .v)) .g) (.mul (.rational 830360 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 69860 1) .g) (.mul (.rational 48280 1) .v)) .g)
    (.mul (.rational 161980 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    4454280 1) .f) (.add (.mul (.rational 19849500 1) .g) (.mul (.rational 4486320 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 38282400 1) .g) (.mul (.rational 17743320 1) .v)) .g) (.mul
    (.rational 1455000 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 42059980 1)
    .g) (.mul (.rational 29421200 1) .v)) .g) (.mul (.rational 5575920 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 29146620 1) .g) (.mul (.rational 26716120 1) .v)) .g)
    (.mul (.rational 9045960 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13299620 1) .g) (.mul (.rational 14629240 1) .v)) .g) (.mul (.rational 8247600 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4029280 1) .g) (.mul
    (.rational 5064160 1) .v)) .g) (.mul (.rational 4786020 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 789540 1) .g) (.mul (.rational 1147680 1) .v)) .g)
    (.mul (.rational 1911520 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 92540 1) .g) (.mul (.rational 174800 1) .v)) .g) (.mul (.rational 540440 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5360 1) .g) (.mul
    (.rational 17080 1) .v)) .g) (.mul (.rational 101240 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1156680 1) .f) (.add (.mul (.rational 5586840 1) .g) (.mul
    (.rational 1375920 1) .v))) .f) (.add (.mul (.add (.mul (.rational 11746980 1) .g) (.mul
    (.rational 6058800 1) .v)) .g) (.mul (.rational 544320 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14166000 1) .g) (.mul (.rational 11359080 1) .v)) .g) (.mul (.rational
    2404080 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10862520 1) .g)
    (.mul (.rational 11910000 1) .v)) .g) (.mul (.rational 4607400 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5540260 1) .g) (.mul (.rational 7751480 1) .v))
    .g) (.mul (.rational 5106960 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1901580 1) .g) (.mul (.rational 3313480 1) .v)) .g) (.mul (.rational 3699600 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 430400 1) .g) (.mul
    (.rational 968560 1) .v)) .g) (.mul (.rational 1870960 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 60060 1) .g) (.mul (.rational 197600 1) .v)) .g)
    (.mul (.rational 672740 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4380 1) .g) (.mul (.rational 26880 1) .v)) .g) (.mul (.rational 164800 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 100 1) .g) (.mul (.rational
    2000 1) .v)) .g) (.mul (.rational 24480 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 136080 1) .f) (.add (.mul (.rational 707400 1) .g) (.mul
    (.rational 190080 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1607760 1) .g) (.mul
    (.rational 922320 1) .v)) .g) (.mul (.rational 90720 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2106060 1) .g) (.mul (.rational 1927200 1) .v)) .g) (.mul (.rational
    453600 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1764240 1) .g) (.mul
    (.rational 2284920 1) .v)) .g) (.mul (.rational 999480 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 989780 1) .g) (.mul (.rational 1711960 1) .v)) .g)
    (.mul (.rational 1293600 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 376980 1) .g) (.mul (.rational 859400 1) .v)) .g) (.mul (.rational 1107220 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 95840 1) .g) (.mul
    (.rational 300160 1) .v)) .g) (.mul (.rational 665040 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15300 1) .g) (.mul (.rational 73880 1) .v)) .g) (.mul
    (.rational 284980 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1320 1) .g) (.mul (.rational 12240 1) .v)) .g) (.mul (.rational 84600 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 40 1) .g) (.mul (.rational 1160 1) .v))
    .g) (.mul (.rational 16020 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 40 1) .v) .g) (.mul (.rational 1640 1) (.pow .v 2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1136

namespace FullHigh1137
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  20*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_2 e g v+4*SmallGap.ReducedLayers.high0_010_4 e g
    v+12*SmallGap.ReducedLayers.high0_001_3 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_110_4 e g v+3*SmallGap.ReducedLayers.high1_101_3 e g
    v+3*SmallGap.ReducedLayers.high1_011_5 e g v+6*SmallGap.ReducedLayers.high1_002_4 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 3240 1) .e) (.add (.mul (.rational 26820 1) .f) (.add (.mul
    (.rational 32580 1) .g) (.mul (.rational 5400 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    133740 1) .f) (.add (.mul (.rational 219720 1) .g) (.mul (.rational 37440 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 131340 1) .g) (.mul (.rational 40440 1) .v)) .g) (.mul (.rational
    2400 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 444240 1) .f) (.add
    (.mul (.rational 915600 1) .g) (.mul (.rational 156600 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 730800 1) .g) (.mul (.rational 225480 1) .v)) .g) (.mul (.rational 14700 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 284880 1) .g) (.mul (.rational 106080 1)
    .v)) .g) (.mul (.rational 15480 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1029060 1) .f) (.add (.mul (.rational 2540400 1) .g) (.mul (.rational
    438120 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2525040 1) .g) (.mul (.rational 787800
    1) .v)) .g) (.mul (.rational 53880 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1301160 1) .g) (.mul (.rational 494280 1) .v)) .g) (.mul (.rational 75300 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 369420 1) .g) (.mul (.rational
    122880 1) .v)) .g) (.mul (.rational 31680 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1693080 1) .f) (.add (.mul
    (.rational 4851360 1) .g) (.mul (.rational 860400 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 5746320 1) .g) (.mul (.rational 1864800 1) .v)) .g) (.mul (.rational 132000 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3661560 1) .g) (.mul (.rational
    1481160 1) .v)) .g) (.mul (.rational 232560 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1362360 1) .g) (.mul (.rational 508200 1) .v)) .g) (.mul (.rational 134100 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 296880 1) .g) (.mul
    (.rational 57840 1) .v)) .g) (.mul (.rational 23880 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1975680 1) .f)
    (.add (.mul (.rational 6422760 1) .g) (.mul (.rational 1203120 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 8794620 1) .g) (.mul (.rational 3076560 1) .v)) .g) (.mul (.rational 228480
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6641280 1) .g) (.mul (.rational
    3010200 1) .v)) .g) (.mul (.rational 499920 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3034320 1) .g) (.mul (.rational 1381320 1) .v)) .g) (.mul (.rational 392280
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 859800 1) .g)
    (.mul (.rational 273720 1) .v)) .g) (.mul (.rational 126300 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 146580 1) .g) (.mul (.rational 3600 1) .v)) .g) (.mul
    (.rational 10560 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1600560 1) .f) (.add (.mul (.rational
    5801400 1) .g) (.mul (.rational 1178640 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    8980200 1) .g) (.mul (.rational 3499200 1) .v)) .g) (.mul (.rational 281160 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7801920 1) .g) (.mul (.rational 4129920 1) .v))
    .g) (.mul (.rational 758880 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    4198800 1) .g) (.mul (.rational 2456160 1) .v)) .g) (.mul (.rational 801840 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1450680 1) .g) (.mul (.rational
    760920 1) .v)) .g) (.mul (.rational 426240 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 319080 1) .g) (.mul (.rational 108120 1) .v)) .g) (.mul
    (.rational 126300 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    42000 1) .g) (.mul (.rational 1440 1) .v)) .g) (.mul (.rational 23880 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 856440 1) .f) (.add (.mul (.rational 3413520 1) .g) (.mul
    (.rational 768240 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5870880 1) .g) (.mul
    (.rational 2608560 1) .v)) .g) (.mul (.rational 234000 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5739960 1) .g) (.mul (.rational 3634800 1) .v)) .g) (.mul (.rational
    767160 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3533700 1) .g) (.mul
    (.rational 2695680 1) .v)) .g) (.mul (.rational 1050240 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1428240 1) .g) (.mul (.rational 1162440 1) .v)) .g)
    (.mul (.rational 801840 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 379920 1) .g) (.mul (.rational 304920 1) .v)) .g) (.mul (.rational 392280 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 63840 1) .g) (.mul
    (.rational 51240 1) .v)) .g) (.mul (.rational 134100 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6060 1) .g) (.mul (.rational 5760 1) .v)) .g) (.mul
    (.rational 31680 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 272160 1) .f)
    (.add (.mul (.rational 1179360 1) .g) (.mul (.rational 298080 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 2222640 1) .g) (.mul (.rational 1140480 1) .v)) .g) (.mul (.rational 116640
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2403720 1) .g) (.mul (.rational
    1835280 1) .v)) .g) (.mul (.rational 453600 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1656000 1) .g) (.mul (.rational 1632960 1) .v)) .g) (.mul (.rational 767160
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 760320 1) .g)
    (.mul (.rational 897840 1) .v)) .g) (.mul (.rational 758880 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 234480 1) .g) (.mul (.rational 329280 1) .v)) .g)
    (.mul (.rational 499920 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 47040 1) .g) (.mul (.rational 86280 1) .v)) .g) (.mul (.rational 232560 1) (.pow .v
    2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5580 1) .g) (.mul (.rational
    16440 1) .v)) .g) (.mul (.rational 75300 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 300 1) .g) (.mul (.rational 2040 1) .v)) .g) (.mul (.rational 15480 1)
    (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 38880 1) .f) (.add
    (.mul (.rational 181440 1) .g) (.mul (.rational 51840 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 370440 1) .g) (.mul (.rational 220320 1) .v)) .g) (.mul (.rational 25920 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 437040 1) .g) (.mul (.rational 401040 1)
    .v)) .g) (.mul (.rational 116640 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 331200 1) .g) (.mul (.rational 414000 1) .v)) .g) (.mul (.rational 234000 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 168960 1) .g) (.mul
    (.rational 273120 1) .v)) .g) (.mul (.rational 281160 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 58620 1) .g) (.mul (.rational 124560 1) .v)) .g) (.mul
    (.rational 228480 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    13440 1) .g) (.mul (.rational 41400 1) .v)) .g) (.mul (.rational 132000 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1860 1) .g) (.mul (.rational 9960 1) .v))
    .g) (.mul (.rational 53880 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 120 1) .g) (.mul (.rational 1560 1) .v)) .g) (.mul (.rational 14700 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.mul (.rational 120 1) .v) .g) (.mul (.rational 2400
    1) (.pow .v 2))) (.pow .g 8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1137

end
end SPR.N6.Tail.CoreEndpoint
