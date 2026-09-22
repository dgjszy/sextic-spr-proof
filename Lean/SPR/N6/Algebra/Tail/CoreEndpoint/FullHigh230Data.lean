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

namespace FullHigh2300
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    1*SmallGap.PolarCoefficientsHigh0.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh0.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_0 e g v*e^6+6*SmallGap.ReducedLayers.high0_010_0
    e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_200_0 e g v*e^6+3*SmallGap.ReducedLayers.high1_110_0 e g
    v*e^4+3*SmallGap.ReducedLayers.high1_020_0 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1304 1) .e) (.add (.mul (.rational 13202 1) .f) (.add
    (.mul (.rational 16668 1) .g) (.mul (.rational 2392 1) .v)))) .e) (.add (.mul (.add (.mul
    (.rational 82848 1) .f) (.add (.mul (.rational 142540 1) .g) (.mul (.rational 22344 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 88360 1) .g) (.mul (.rational 28192 1) .v)) .g) (.mul
    (.rational 1120 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 361568
    1) .f) (.add (.mul (.rational 786616 1) .g) (.mul (.rational 129840 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 656532 1) .g) (.mul (.rational 224680 1) .v)) .g) (.mul (.rational 9798
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 262316 1) .g) (.mul (.rational
    138632 1) .v)) .g) (.mul (.rational 12704 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1166614 1) .f) (.add (.mul (.rational 3066534 1) .g) (.mul
    (.rational 525598 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3215260 1) .g) (.mul
    (.rational 1157398 1) .v)) .g) (.mul (.rational 53264 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1715518 1) .g) (.mul (.rational 971086 1) .v)) .g) (.mul (.rational
    95360 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 489154 1) .g) (.mul
    (.rational 387090 1) .v)) .g) (.mul (.rational 60776 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2886833 1) .f) (.add (.mul
    (.rational 8892020 1) .g) (.mul (.rational 1572918 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 11217686 1) .g) (.mul (.rational 4209936 1) .v)) .g) (.mul (.rational 201252 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7479990 1) .g) (.mul (.rational
    4474456 1) .v)) .g) (.mul (.rational 461106 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2830633 1) .g) (.mul (.rational 2408476 1) .v)) .g) (.mul (.rational 402832
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 602826 1) .g)
    (.mul (.rational 690066 1) .v)) .g) (.mul (.rational 167474 1) (.pow .v 2))) (.pow .g 3))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5606839
    1) .f) (.add (.mul (.rational 19797738 1) .g) (.mul (.rational 3603800 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 29180426 1) .g) (.mul (.rational 11365266 1) .v)) .g) (.mul
    (.rational 560134 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 23325324 1)
    .g) (.mul (.rational 14638506 1) .v)) .g) (.mul (.rational 1567430 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10982819 1) .g) (.mul (.rational 9937098 1) .v)) .g)
    (.mul (.rational 1745388 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3088618 1) .g) (.mul (.rational 3819902 1) .v)) .g) (.mul (.rational 987502 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 499012 1) .g) (.mul
    (.rational 826204 1) .v)) .g) (.mul (.rational 298986 1) (.pow .v 2))) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    8671957 1) .f) (.add (.mul (.rational 34527010 1) .g) (.mul (.rational 6458118 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 58207063 1) .g) (.mul (.rational 23465284 1) .v)) .g) (.mul
    (.rational 1187484 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 54208602 1)
    .g) (.mul (.rational 35533540 1) .v)) .g) (.mul (.rational 3931490 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 30494287 1) .g) (.mul (.rational 29137460 1) .v)) .g)
    (.mul (.rational 5331536 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10627848 1) .g) (.mul (.rational 14060598 1) .v)) .g) (.mul (.rational 3826012 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2257321 1) .g) (.mul
    (.rational 4054552 1) .v)) .g) (.mul (.rational 1563888 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 274336 1) .g) (.mul (.rational 673960 1) .v)) .g)
    (.mul (.rational 362794 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10770441 1) .f)
    (.add (.mul (.rational 47734584 1) .g) (.mul (.rational 9166874 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 90575834 1) .g) (.mul (.rational 37727892 1) .v)) .g) (.mul (.rational
    1955578 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 96265098 1) .g) (.mul
    (.rational 65706120 1) .v)) .g) (.mul (.rational 7485249 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 62918863 1) .g) (.mul (.rational 63183444 1) .v)) .g) (.mul
    (.rational 11981318 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26112348 1) .g) (.mul (.rational 36698360 1) .v)) .g) (.mul (.rational 10430864 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6847244 1) .g) (.mul
    (.rational 13219982 1) .v)) .g) (.mul (.rational 5375838 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1089290 1) .g) (.mul (.rational 2911306 1) .v)) .g)
    (.mul (.rational 1669083 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 95810 1) .g) (.mul (.rational 369242 1) .v)) .g) (.mul (.rational 302070 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10777448 1) .f) (.add (.mul (.rational
    52626578 1) .g) (.mul (.rational 10370116 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    110993099 1) .g) (.mul (.rational 47705026 1) .v)) .g) (.mul (.rational 2528200 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 132526444 1) .g) (.mul (.rational 93966406
    1) .v)) .g) (.mul (.rational 10992760 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 98622189 1) .g) (.mul (.rational 103697812 1) .v)) .g) (.mul (.rational 20299681 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 47422486 1) .g) (.mul
    (.rational 70422358 1) .v)) .g) (.mul (.rational 20792112 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 14758629 1) .g) (.mul (.rational 30412946 1) .v)) .g)
    (.mul (.rational 12938034 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2887414 1) .g) (.mul (.rational 8323758 1) .v)) .g) (.mul (.rational 5030846 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 330961 1) .g) (.mul
    (.rational 1389700 1) .v)) .g) (.mul (.rational 1207713 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 19150 1) .g) (.mul (.rational 129482 1) .v)) .g)
    (.mul (.rational 169158 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 8678444 1) .f) (.add (.mul (.rational 46298928 1) .g) (.mul (.rational 9356536 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 107449868 1) .g) (.mul (.rational 47597402 1)
    .v)) .g) (.mul (.rational 2575182 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 142374408 1) .g) (.mul (.rational 104653638 1) .v)) .g) (.mul (.rational 12544466
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 118792507 1) .g) (.mul
    (.rational 130379496 1) .v)) .g) (.mul (.rational 26263762 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 64877582 1) .g) (.mul (.rational 101355628 1) .v))
    .g) (.mul (.rational 30946750 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23324466 1) .g) (.mul (.rational 51006612 1) .v)) .g) (.mul (.rational 22564596 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5396652 1) .g) (.mul
    (.rational 16662876 1) .v)) .g) (.mul (.rational 10535440 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 757523 1) .g) (.mul (.rational 3438442 1) .v)) .g)
    (.mul (.rational 3144762 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 56834 1) .g) (.mul (.rational 418890 1) .v)) .g) (.mul (.rational 579052 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1656 1) .g) (.mul
    (.rational 26072 1) .v)) .g) (.mul (.rational 60374 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 5590602 1) .f) (.add (.mul (.rational 32359132
    1) .g) (.mul (.rational 6702924 1) .v))) .f) (.add (.mul (.add (.mul (.rational 81960778 1)
    .g) (.mul (.rational 37376680 1) .v)) .g) (.mul (.rational 2061430 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 119337744 1) .g) (.mul (.rational 90770520 1) .v)) .g)
    (.mul (.rational 11125052 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    110305329 1) .g) (.mul (.rational 126022716 1) .v)) .g) (.mul (.rational 26048142 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 67397014 1) .g) (.mul
    (.rational 110351834 1) .v)) .g) (.mul (.rational 34710032 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 27446499 1) .g) (.mul (.rational 63383708 1) .v)) .g)
    (.mul (.rational 29013608 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7311914 1) .g) (.mul (.rational 24036840 1) .v)) .g) (.mul (.rational 15799726 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1208985 1) .g) (.mul
    (.rational 5891888 1) .v)) .g) (.mul (.rational 5628950 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 110540 1) .g) (.mul (.rational 881838 1) .v)) .g)
    (.mul (.rational 1279112 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4151 1) .g) (.mul (.rational 71232 1) .v)) .g) (.mul (.rational 173732 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2268 1) .v) .g) (.mul (.rational
    12254 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 2848760 1) .f) (.add (.mul (.rational 17785030 1) .g) (.mul (.rational
    3773634 1) .v))) .f) (.add (.mul (.add (.mul (.rational 48828672 1) .g) (.mul (.rational
    22896982 1) .v)) .g) (.mul (.rational 1285356 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 77499730 1) .g) (.mul (.rational 60887638 1) .v)) .g) (.mul (.rational
    7614518 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 78594797 1) .g)
    (.mul (.rational 93232902 1) .v)) .g) (.mul (.rational 19719052 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 53094258 1) .g) (.mul (.rational 90800936 1) .v))
    .g) (.mul (.rational 29318582 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 24130356 1) .g) (.mul (.rational 58593194 1) .v)) .g) (.mul (.rational 27629850 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7259540 1) .g) (.mul
    (.rational 25275450 1) .v)) .g) (.mul (.rational 17179679 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1376849 1) .g) (.mul (.rational 7161162 1) .v)) .g)
    (.mul (.rational 7102014 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 147590 1) .g) (.mul (.rational 1266278 1) .v)) .g) (.mul (.rational 1913854 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6714 1) .g) (.mul
    (.rational 124808 1) .v)) .g) (.mul (.rational 318258 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 5112 1) .v) .g) (.mul (.rational 28955 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 1058 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1127353 1) .f) (.add (.mul (.rational
    7553640 1) .g) (.mul (.rational 1640398 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    22351156 1) .g) (.mul (.rational 10763644 1) .v)) .g) (.mul (.rational 613964 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 38413502 1) .g) (.mul (.rational 31115708
    1) .v)) .g) (.mul (.rational 3961850 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 42406722 1) .g) (.mul (.rational 52102200 1) .v)) .g) (.mul (.rational 11245102 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 31375436 1) .g) (.mul
    (.rational 55865424 1) .v)) .g) (.mul (.rational 18454126 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 15729881 1) .g) (.mul (.rational 40001074 1) .v)) .g)
    (.mul (.rational 19351886 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5266074 1) .g) (.mul (.rational 19326738 1) .v)) .g) (.mul (.rational 13518006 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1123795 1) .g) (.mul
    (.rational 6204412 1) .v)) .g) (.mul (.rational 6352023 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 137548 1) .g) (.mul (.rational 1261838 1) .v)) .g)
    (.mul (.rational 1975038 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7293 1) .g) (.mul (.rational 146014 1) .v)) .g) (.mul (.rational 386756 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 7238 1) .v) .g) (.mul (.rational
    42700 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1989 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 336719 1)
    .f) (.add (.mul (.rational 2411114 1) .g) (.mul (.rational 535368 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 7652114 1) .g) (.mul (.rational 3778878 1) .v)) .g) (.mul (.rational
    218586 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 14161196 1) .g) (.mul
    (.rational 11803470 1) .v)) .g) (.mul (.rational 1526430 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 16907490 1) .g) (.mul (.rational 21460742 1) .v)) .g) (.mul
    (.rational 4712680 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    13595120 1) .g) (.mul (.rational 25123030 1) .v)) .g) (.mul (.rational 8460684 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7448854 1) .g) (.mul
    (.rational 19762312 1) .v)) .g) (.mul (.rational 9768786 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2743244 1) .g) (.mul (.rational 10565228 1) .v)) .g)
    (.mul (.rational 7569122 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 649131 1) .g) (.mul (.rational 3785150 1) .v)) .g) (.mul (.rational 3979630 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 88990 1) .g) (.mul
    (.rational 868222 1) .v)) .g) (.mul (.rational 1399360 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5356 1) .g) (.mul (.rational 114870 1) .v)) .g) (.mul
    (.rational 314164 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 6634
    1) .v) .g) (.mul (.rational 40516 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    2266 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 72565 1) .f) (.add (.mul (.rational 553302 1) .g) (.mul
    (.rational 125438 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1875707 1) .g) (.mul
    (.rational 948156 1) .v)) .g) (.mul (.rational 55480 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3720298 1) .g) (.mul (.rational 3183532 1) .v)) .g) (.mul (.rational
    416930 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4777724 1) .g) (.mul
    (.rational 6247600 1) .v)) .g) (.mul (.rational 1391200 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4148546 1) .g) (.mul (.rational 7929792 1) .v)) .g)
    (.mul (.rational 2712076 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2465212 1) .g) (.mul (.rational 6796744 1) .v)) .g) (.mul (.rational 3417900 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 989462 1) .g) (.mul
    (.rational 3981276 1) .v)) .g) (.mul (.rational 2907324 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 256623 1) .g) (.mul (.rational 1572752 1) .v)) .g)
    (.mul (.rational 1689160 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 38824 1) .g) (.mul (.rational 400770 1) .v)) .g) (.mul (.rational 661420 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2601 1) .g) (.mul
    (.rational 59452 1) .v)) .g) (.mul (.rational 166916 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 3896 1) .v) .g) (.mul (.rational 24490 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 1584 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10465 1) .f) (.add (.mul
    (.rational 84712 1) .g) (.mul (.rational 19566 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    305698 1) .g) (.mul (.rational 157768 1) .v)) .g) (.mul (.rational 9306 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 647270 1) .g) (.mul (.rational 566916 1) .v)) .g)
    (.mul (.rational 74897 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    890030 1) .g) (.mul (.rational 1194788 1) .v)) .g) (.mul (.rational 268614 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 830066 1) .g) (.mul (.rational
    1634572 1) .v)) .g) (.mul (.rational 565010 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 531532 1) .g) (.mul (.rational 1516044 1) .v)) .g) (.mul
    (.rational 771492 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    230698 1) .g) (.mul (.rational 965008 1) .v)) .g) (.mul (.rational 714216 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 64945 1) .g) (.mul (.rational
    416156 1) .v)) .g) (.mul (.rational 453832 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 10710 1) .g) (.mul (.rational 116358 1) .v)) .g) (.mul (.rational
    195414 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 786 1) .g)
    (.mul (.rational 19052 1) .v)) .g) (.mul (.rational 54570 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 1388 1) .v) .g) (.mul (.rational 8927 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 650 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 876 1) .f) (.add (.mul
    (.rational 7510 1) .g) (.mul (.rational 1760 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    28769 1) .g) (.mul (.rational 15090 1) .v)) .g) (.mul (.rational 892 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 64816 1) .g) (.mul (.rational 57814 1) .v)) .g) (.mul
    (.rational 7656 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 95060 1)
    .g) (.mul (.rational 130280 1) .v)) .g) (.mul (.rational 29369 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 94780 1) .g) (.mul (.rational 191128 1) .v)) .g)
    (.mul (.rational 66280 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 65030 1) .g) (.mul (.rational 190652 1) .v)) .g) (.mul (.rational 97412 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 30304 1) .g) (.mul (.rational
    130900 1) .v)) .g) (.mul (.rational 97384 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9176 1) .g) (.mul (.rational 61064 1) .v)) .g) (.mul (.rational 67046
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1630 1) .g) (.mul
    (.rational 18520 1) .v)) .g) (.mul (.rational 31384 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 129 1) .g) (.mul (.rational 3298 1) .v)) .g) (.mul
    (.rational 9560 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 262 1)
    .v) .g) (.mul (.rational 1712 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 137 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 30 1) .f) (.add (.mul (.rational 272 1) .g) (.mul (.rational 64 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 1104 1) .g) (.mul (.rational 582 1) .v)) .g)
    (.mul (.rational 34 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2640 1) .g)
    (.mul (.rational 2370 1) .v)) .g) (.mul (.rational 310 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4116 1) .g) (.mul (.rational 5688 1) .v)) .g) (.mul (.rational
    1266 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4368 1) .g)
    (.mul (.rational 8904 1) .v)) .g) (.mul (.rational 3048 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3192 1) .g) (.mul (.rational 9492 1) .v)) .g) (.mul
    (.rational 4788 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1584 1) .g) (.mul (.rational 6972 1) .v)) .g) (.mul (.rational 5124 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 510 1) .g) (.mul (.rational 3480 1) .v)) .g)
    (.mul (.rational 3780 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 96 1) .g) (.mul (.rational 1128 1) .v)) .g) (.mul (.rational 1896 1) (.pow .v 2)))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8 1) .g) (.mul (.rational 214 1)
    .v)) .g) (.mul (.rational 618 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 18 1) .v) .g) (.mul (.rational 118 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 10 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2300

namespace FullHigh2301
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh1.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsHigh0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh1.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsHigh0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsHigh1.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    6*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(24*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^5+4*SmallGap.ReducedLayers.high0_100_1 e g v*e^6+24*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^3+6*SmallGap.ReducedLayers.high0_010_1 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.high1_200_0 e g v*e^5+1*SmallGap.ReducedLayers.high1_200_1 e g
    v*e^6+12*SmallGap.ReducedLayers.high1_110_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_110_1 e g
    v*e^4+6*SmallGap.ReducedLayers.high1_020_0 e g v*e^1+3*SmallGap.ReducedLayers.high1_020_1 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 10620 1) .e) (.add (.mul (.rational 103422 1) .f) (.add (.mul
    (.rational 129678 1) .g) (.mul (.rational 19308 1) .v)))) .e) (.add (.mul (.add (.mul
    (.rational 625518 1) .f) (.add (.mul (.rational 1068850 1) .g) (.mul (.rational 172002 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 657960 1) .g) (.mul (.rational 214008 1) .v)) .g)
    (.mul (.rational 8960 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    2632467 1) .f) (.add (.mul (.rational 5688781 1) .g) (.mul (.rational 955650 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 4716361 1) .g) (.mul (.rational 1629854 1) .v)) .g) (.mul
    (.rational 74112 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1873415 1) .g)
    (.mul (.rational 987302 1) .v)) .g) (.mul (.rational 94224 1) (.pow .v 2))) .g))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8185536 1) .f) (.add (.mul (.rational
    21374995 1) .g) (.mul (.rational 3703456 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    22268593 1) .g) (.mul (.rational 8038986 1) .v)) .g) (.mul (.rational 382128 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11815785 1) .g) (.mul (.rational 6628602 1) .v))
    .g) (.mul (.rational 670168 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    3356811 1) .g) (.mul (.rational 2588438 1) .v)) .g) (.mul (.rational 415400 1) (.pow .v 2)))
    (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    19488979 1) .f) (.add (.mul (.rational 59640833 1) .g) (.mul (.rational 10611232 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 74775218 1) .g) (.mul (.rational 28010726 1) .v)) .g) (.mul
    (.rational 1372131 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 49596934 1)
    .g) (.mul (.rational 29294432 1) .v)) .g) (.mul (.rational 3080681 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 18702791 1) .g) (.mul (.rational 15481144 1) .v)) .g)
    (.mul (.rational 2622797 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3980941 1) .g) (.mul (.rational 4347776 1) .v)) .g) (.mul (.rational 1055667 1)
    (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 36326280 1) .f) (.add (.mul (.rational 127442597 1) .g) (.mul
    (.rational 23253288 1) .v))) .f) (.add (.mul (.add (.mul (.rational 186707525 1) .g) (.mul
    (.rational 72376506 1) .v)) .g) (.mul (.rational 3632438 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 148480542 1) .g) (.mul (.rational 91851762 1) .v)) .g) (.mul
    (.rational 9971521 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 69672054
    1) .g) (.mul (.rational 61343252 1) .v)) .g) (.mul (.rational 10848403 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 19579593 1) .g) (.mul (.rational 23178564
    1) .v)) .g) (.mul (.rational 5969899 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3174249 1) .g) (.mul (.rational 4930410 1) .v)) .g) (.mul (.rational
    1751067 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 53728686 1) .f) (.add (.mul (.rational
    212544418 1) .g) (.mul (.rational 39768176 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    356178981 1) .g) (.mul (.rational 142722876 1) .v)) .g) (.mul (.rational 7321742 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 330040941 1) .g) (.mul (.rational 213227316
    1) .v)) .g) (.mul (.rational 23816202 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 185021772 1) .g) (.mul (.rational 172341850 1) .v)) .g) (.mul (.rational 31640807
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 64425152 1) .g)
    (.mul (.rational 81946576 1) .v)) .g) (.mul (.rational 22179873 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 13722865 1) .g) (.mul (.rational 23303700 1) .v))
    .g) (.mul (.rational 8836011 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1681481 1) .g) (.mul (.rational 3831092 1) .v)) .g) (.mul (.rational 1997273 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 63511626 1) .f) (.add (.mul (.rational
    279670844 1) .g) (.mul (.rational 53679528 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    527513362 1) .g) (.mul (.rational 218394596 1) .v)) .g) (.mul (.rational 11442514 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 557825029 1) .g) (.mul (.rational 375707320
    1) .v)) .g) (.mul (.rational 43105196 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 363313485 1) .g) (.mul (.rational 356701502 1) .v)) .g) (.mul (.rational 67774704
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 150604724 1) .g)
    (.mul (.rational 204570498 1) .v)) .g) (.mul (.rational 57858393 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 39581674 1) .g) (.mul (.rational 72844196 1)
    .v)) .g) (.mul (.rational 29209233 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6341819 1) .g) (.mul (.rational 15900148 1) .v)) .g) (.mul (.rational 8888143
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 565537 1) .g)
    (.mul (.rational 2009026 1) .v)) .g) (.mul (.rational 1581889 1) (.pow .v 2))) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 60114600 1) .f) (.add (.mul (.rational 291638716 1) .g) (.mul
    (.rational 57446560 1) .v))) .f) (.add (.mul (.add (.mul (.rational 611400926 1) .g) (.mul
    (.rational 261445382 1) .v)) .g) (.mul (.rational 13985936 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 726290588 1) .g) (.mul (.rational 509251290 1) .v)) .g) (.mul
    (.rational 59955572 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    538499987 1) .g) (.mul (.rational 555661504 1) .v)) .g) (.mul (.rational 109027054 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 258548869 1) .g) (.mul
    (.rational 373252104 1) .v)) .g) (.mul (.rational 109869378 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 80596286 1) .g) (.mul (.rational 159642780 1) .v))
    .g) (.mul (.rational 67248991 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15863428 1) .g) (.mul (.rational 43385014 1) .v)) .g) (.mul (.rational 25748937 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1840343 1) .g) (.mul
    (.rational 7224984 1) .v)) .g) (.mul (.rational 6105995 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 108661 1) .g) (.mul (.rational 676204 1) .v)) .g)
    (.mul (.rational 850029 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 45418350 1) .f) (.add (.mul (.rational 240718252 1) .g) (.mul (.rational 48675290
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 555262038 1) .g) (.mul (.rational 245152422 1)
    .v)) .g) (.mul (.rational 13386784 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 731886356 1) .g) (.mul (.rational 533546012 1) .v)) .g) (.mul (.rational 64402172
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 608278204 1) .g) (.mul
    (.rational 658010980 1) .v)) .g) (.mul (.rational 133076548 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 331571491 1) .g) (.mul (.rational 506684578 1) .v))
    .g) (.mul (.rational 154713024 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 119317329 1) .g) (.mul (.rational 252915148 1) .v)) .g) (.mul (.rational
    111341366 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 27742510
    1) .g) (.mul (.rational 82155678 1) .v)) .g) (.mul (.rational 51381591 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3934502 1) .g) (.mul (.rational 16926004
    1) .v)) .g) (.mul (.rational 15204525 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 300433 1) .g) (.mul (.rational 2071458 1) .v)) .g) (.mul (.rational
    2789969 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8999 1)
    .g) (.mul (.rational 130662 1) .v)) .g) (.mul (.rational 292197 1) (.pow .v 2))) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 27158007 1) .f) (.add (.mul
    (.rational 156153177 1) .g) (.mul (.rational 32416042 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 393063591 1) .g) (.mul (.rational 179082068 1) .v)) .g) (.mul (.rational 9977980 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 569210225 1) .g) (.mul (.rational
    430850282 1) .v)) .g) (.mul (.rational 53264738 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 523916017 1) .g) (.mul (.rational 592748696 1) .v)) .g) (.mul
    (.rational 123329026 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 319349175 1) .g) (.mul (.rational 514701378 1) .v)) .g) (.mul (.rational 162533802
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 130074592 1) .g)
    (.mul (.rational 293573464 1) .v)) .g) (.mul (.rational 134461506 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 34782298 1) .g) (.mul (.rational 110816570
    1) .v)) .g) (.mul (.rational 72585228 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5800283 1) .g) (.mul (.rational 27136974 1) .v)) .g) (.mul (.rational
    25708323 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 538313 1)
    .g) (.mul (.rational 4079602 1) .v)) .g) (.mul (.rational 5834237 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 20698 1) .g) (.mul (.rational 333534 1) .v))
    .g) (.mul (.rational 796685 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 10862 1) .v) .g) (.mul (.rational 57015 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12658260 1) .f) (.add (.mul
    (.rational 78496691 1) .g) (.mul (.rational 16726040 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 214147969 1) .g) (.mul (.rational 100609252 1) .v)) .g) (.mul (.rational 5715736 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 337971075 1) .g) (.mul (.rational
    265237376 1) .v)) .g) (.mul (.rational 33541048 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 341185269 1) .g) (.mul (.rational 402782816 1) .v)) .g) (.mul
    (.rational 86042170 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 229810701 1) .g) (.mul (.rational 389338356 1) .v)) .g) (.mul (.rational 126772562
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 104379843 1) .g)
    (.mul (.rational 249702048 1) .v)) .g) (.mul (.rational 118500472 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 31482184 1) .g) (.mul (.rational 107293368
    1) .v)) .g) (.mul (.rational 73206832 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6011420 1) .g) (.mul (.rational 30380194 1) .v)) .g) (.mul (.rational
    30150818 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 652377 1)
    .g) (.mul (.rational 5394058 1) .v)) .g) (.mul (.rational 8127837 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 30267 1) .g) (.mul (.rational 537330 1) .v))
    .g) (.mul (.rational 1359825 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 22442 1) .v) .g) (.mul (.rational 125437 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 4695 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 4487859 1) .f) (.add (.mul (.rational 29866473 1) .g) (.mul
    (.rational 6529448 1) .v))) .f) (.add (.mul (.add (.mul (.rational 87803146 1) .g) (.mul
    (.rational 42497832 1) .v)) .g) (.mul (.rational 2459147 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 150014054 1) .g) (.mul (.rational 121874588 1) .v)) .g) (.mul
    (.rational 15739507 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    164792802 1) .g) (.mul (.rational 202527660 1) .v)) .g) (.mul (.rational 44319211 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 121500034 1) .g) (.mul
    (.rational 215679284 1) .v)) .g) (.mul (.rational 72192867 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 60825774 1) .g) (.mul (.rational 153586466 1) .v))
    .g) (.mul (.rational 75222549 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20391204 1) .g) (.mul (.rational 73951566 1) .v)) .g) (.mul (.rational 52300351 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4373697 1) .g) (.mul
    (.rational 23729532 1) .v)) .g) (.mul (.rational 24524155 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 540643 1) .g) (.mul (.rational 4843788 1) .v)) .g)
    (.mul (.rational 7637387 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 29130 1) .g) (.mul (.rational 565694 1) .v)) .g) (.mul (.rational 1505442 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 28510 1) .v) .g) (.mul (.rational
    168408 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 8016 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1164124 1)
    .f) (.add (.mul (.rational 8279181 1) .g) (.mul (.rational 1855884 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 26103053 1) .g) (.mul (.rational 13001616 1) .v)) .g) (.mul (.rational
    765178 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 48013278 1) .g) (.mul
    (.rational 40312468 1) .v)) .g) (.mul (.rational 5306389 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 57023006 1) .g) (.mul (.rational 72785116 1) .v)) .g) (.mul
    (.rational 16274419 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 45668104 1) .g) (.mul (.rational 84677770 1) .v)) .g) (.mul (.rational 29042465 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 24967186 1) .g) (.mul
    (.rational 66279562 1) .v)) .g) (.mul (.rational 33367893 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9197738 1) .g) (.mul (.rational 35325476 1) .v)) .g)
    (.mul (.rational 25770421 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2184338 1) .g) (.mul (.rational 12651168 1) .v)) .g) (.mul (.rational 13538259 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 301811 1) .g) (.mul
    (.rational 2911446 1) .v)) .g) (.mul (.rational 4772559 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 18405 1) .g) (.mul (.rational 388330 1) .v)) .g)
    (.mul (.rational 1078965 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    22748 1) .v) .g) (.mul (.rational 140918 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 8038 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 207066 1) .f) (.add (.mul (.rational 1568254 1) .g)
    (.mul (.rational 360148 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5281595 1) .g) (.mul
    (.rational 2703706 1) .v)) .g) (.mul (.rational 161518 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10411067 1) .g) (.mul (.rational 9017460 1) .v)) .g) (.mul (.rational
    1206876 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 13297243 1) .g)
    (.mul (.rational 17585536 1) .v)) .g) (.mul (.rational 4005611 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11495905 1) .g) (.mul (.rational 22196722 1) .v))
    .g) (.mul (.rational 7772397 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6812719 1) .g) (.mul (.rational 18941988 1) .v)) .g) (.mul (.rational 9760143 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2733245 1) .g) (.mul
    (.rational 11066546 1) .v)) .g) (.mul (.rational 8285803 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 710747 1) .g) (.mul (.rational 4371200 1) .v)) .g)
    (.mul (.rational 4815591 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 108233 1) .g) (.mul (.rational 1117506 1) .v)) .g) (.mul (.rational 1892091 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 7334 1) .g) (.mul
    (.rational 167042 1) .v)) .g) (.mul (.rational 481067 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 11090 1) .v) .g) (.mul (.rational 71473 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 4710 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22374 1) .f) (.add (.mul
    (.rational 179948 1) .g) (.mul (.rational 42292 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 645282 1) .g) (.mul (.rational 338994 1) .v)) .g) (.mul (.rational 20502 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1358143 1) .g) (.mul (.rational 1211134
    1) .v)) .g) (.mul (.rational 164292 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1857563 1) .g) (.mul (.rational 2538904 1) .v)) .g) (.mul (.rational 586938 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1724967 1) .g) (.mul
    (.rational 3457484 1) .v)) .g) (.mul (.rational 1230673 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1101563 1) .g) (.mul (.rational 3195764 1) .v)) .g)
    (.mul (.rational 1676921 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 477877 1) .g) (.mul (.rational 2030744 1) .v)) .g) (.mul (.rational 1551633 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 134883 1) .g) (.mul
    (.rational 876424 1) .v)) .g) (.mul (.rational 987617 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 22393 1) .g) (.mul (.rational 246064 1) .v)) .g) (.mul
    (.rational 427243 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1663 1) .g) (.mul (.rational 40634 1) .v)) .g) (.mul (.rational 120333 1) (.pow .v 2))) (.pow
    .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3002 1) .v) .g) (.mul (.rational 19951 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1481 1) (.pow .v 2)) (.pow .g 10))) (.pow .f
    4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1092 1) .f) (.add
    (.mul (.rational 9308 1) .g) (.mul (.rational 2236 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 35458 1) .g) (.mul (.rational 19084 1) .v)) .g) (.mul (.rational 1164 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 79472 1) .g) (.mul (.rational 72806 1) .v))
    .g) (.mul (.rational 9966 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    116032 1) .g) (.mul (.rational 163456 1) .v)) .g) (.mul (.rational 38158 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 115304 1) .g) (.mul (.rational
    239120 1) .v)) .g) (.mul (.rational 86024 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 78988 1) .g) (.mul (.rational 238168 1) .v)) .g) (.mul (.rational
    126448 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 36848 1)
    .g) (.mul (.rational 163604 1) .v)) .g) (.mul (.rational 126644 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11212 1) .g) (.mul (.rational 76576 1) .v)) .g)
    (.mul (.rational 87556 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2012 1) .g) (.mul (.rational 23396 1) .v)) .g) (.mul (.rational 41288 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 162 1) .g) (.mul (.rational
    4220 1) .v)) .g) (.mul (.rational 12724 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 342 1) .v) .g) (.mul (.rational 2318 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 190 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2301

namespace FullHigh2302
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsHigh1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh2.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsHigh0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsHigh1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsHigh2.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    3*SmallGap.PolarCoefficientsHigh0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(60*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^4+24*SmallGap.ReducedLayers.high0_100_1 e g v*e^5+4*SmallGap.ReducedLayers.high0_100_2 e g
    v*e^6+36*SmallGap.ReducedLayers.high0_010_0 e g v*e^2+24*SmallGap.ReducedLayers.high0_010_1 e
    g v*e^3+6*SmallGap.ReducedLayers.high0_010_2 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.high1_200_0 e g v*e^4+6*SmallGap.ReducedLayers.high1_200_1 e
    g v*e^5+1*SmallGap.ReducedLayers.high1_200_2 e g v*e^6+18*SmallGap.ReducedLayers.high1_110_0 e
    g v*e^2+12*SmallGap.ReducedLayers.high1_110_1 e g v*e^3+3*SmallGap.ReducedLayers.high1_110_2 e
    g v*e^4+3*SmallGap.ReducedLayers.high1_020_0 e g v+6*SmallGap.ReducedLayers.high1_020_1 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_020_2 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 37956 1) .e) (.add (.mul (.rational 356856 1) .f) (.add (.mul (.rational
    444558 1) .g) (.mul (.rational 68340 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 2083152
    1) .f) (.add (.mul (.rational 3535272 1) .g) (.mul (.rational 582072 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 2161128 1) .g) (.mul (.rational 713184 1) .v)) .g) (.mul (.rational
    31440 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 8449443 1) .f)
    (.add (.mul (.rational 18130935 1) .g) (.mul (.rational 3092280 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 14925021 1) .g) (.mul (.rational 5186988 1) .v)) .g) (.mul (.rational 246438
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5891049 1) .g) (.mul (.rational
    3074232 1) .v)) .g) (.mul (.rational 306552 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 25260292 1) .f) (.add (.mul (.rational 65487930 1) .g)
    (.mul (.rational 11449374 1) .v))) .f) (.add (.mul (.add (.mul (.rational 67737426 1) .g)
    (.mul (.rational 24435630 1) .v)) .g) (.mul (.rational 1204368 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 35711098 1) .g) (.mul (.rational 19723656 1) .v)) .g) (.mul
    (.rational 2062536 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10098858
    1) .g) (.mul (.rational 7500822 1) .v)) .g) (.mul (.rational 1236132 1) (.pow .v 2))) (.pow .g
    2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 57626574 1)
    .f) (.add (.mul (.rational 175055175 1) .g) (.mul (.rational 31290406 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 217896414 1) .g) (.mul (.rational 81232204 1) .v)) .g) (.mul (.rational
    4097913 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 143594640 1) .g) (.mul
    (.rational 83256510 1) .v)) .g) (.mul (.rational 8982243 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 53891316 1) .g) (.mul (.rational 42949468 1) .v)) .g) (.mul
    (.rational 7406115 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11450565 1) .g) (.mul (.rational 11731168 1) .v)) .g) (.mul (.rational 2856237 1) (.pow .v
    2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 102461929 1) .f) (.add (.mul (.rational 356772108 1) .g) (.mul (.rational
    65227200 1) .v))) .f) (.add (.mul (.add (.mul (.rational 518892832 1) .g) (.mul (.rational
    199791994 1) .v)) .g) (.mul (.rational 10270522 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 409985638 1) .g) (.mul (.rational 248843964 1) .v)) .g) (.mul (.rational
    27552186 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 191444673 1) .g)
    (.mul (.rational 162641172 1) .v)) .g) (.mul (.rational 29113584 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 53687758 1) .g) (.mul (.rational 59995558 1)
    .v)) .g) (.mul (.rational 15444334 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8722362 1) .g) (.mul (.rational 12448086 1) .v)) .g) (.mul (.rational 4332294
    1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 143746952 1) .f) (.add (.mul (.rational 564309687 1)
    .g) (.mul (.rational 105691958 1) .v))) .f) (.add (.mul (.add (.mul (.rational 938749938 1)
    .g) (.mul (.rational 373610598 1) .v)) .g) (.mul (.rational 19560274 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 864213845 1) .g) (.mul (.rational 548686430 1) .v))
    .g) (.mul (.rational 62289584 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 482089656 1) .g) (.mul (.rational 435106360 1) .v)) .g) (.mul (.rational 80659949
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 167470749 1) .g)
    (.mul (.rational 202701876 1) .v)) .g) (.mul (.rational 54840385 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 35728566 1) .g) (.mul (.rational 56477978 1)
    .v)) .g) (.mul (.rational 21094025 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4409199 1) .g) (.mul (.rational 9122084 1) .v)) .g) (.mul (.rational 4594739
    1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 160024156 1) .f) (.add (.mul (.rational
    699194943 1) .g) (.mul (.rational 134401562 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1309082314 1) .g) (.mul (.rational 539132030 1) .v)) .g) (.mul (.rational 28776652 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1375252854 1) .g) (.mul (.rational
    913195888 1) .v)) .g) (.mul (.rational 106367869 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 891208732 1) .g) (.mul (.rational 852662454 1) .v)) .g) (.mul
    (.rational 163619088 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 368482267 1) .g) (.mul (.rational 480653526 1) .v)) .g) (.mul (.rational 136255542
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 96950768 1) .g)
    (.mul (.rational 168349414 1) .v)) .g) (.mul (.rational 66959026 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 15631984 1) .g) (.mul (.rational 36252562 1)
    .v)) .g) (.mul (.rational 19837425 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1412718 1) .g) (.mul (.rational 4548034 1) .v)) .g) (.mul (.rational 3454394
    1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 141341336 1) .f) (.add (.mul
    (.rational 680294493 1) .g) (.mul (.rational 134430174 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1415534300 1) .g) (.mul (.rational 603841898 1) .v)) .g) (.mul (.rational 32906210
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1670400082 1) .g) (.mul
    (.rational 1159859572 1) .v)) .g) (.mul (.rational 138746952 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1232127566 1) .g) (.mul (.rational 1247296872 1) .v)) .g)
    (.mul (.rational 247724575 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 589909068 1) .g) (.mul (.rational 825807380 1) .v)) .g) (.mul (.rational 244754618
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 184004348 1) .g)
    (.mul (.rational 348558082 1) .v)) .g) (.mul (.rational 146807313 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 36416486 1) .g) (.mul (.rational 93772590 1)
    .v)) .g) (.mul (.rational 55167163 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4276330 1) .g) (.mul (.rational 15551484 1) .v)) .g) (.mul (.rational
    12903450 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 257829 1)
    .g) (.mul (.rational 1463412 1) .v)) .g) (.mul (.rational 1789659 1) (.pow .v 2))) (.pow .g
    7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 98461246 1) .f) (.add (.mul (.rational
    517661631 1) .g) (.mul (.rational 105287674 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1185017689 1) .g) (.mul (.rational 523899510 1) .v)) .g) (.mul (.rational 29183132 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1551422314 1) .g) (.mul (.rational
    1125947304 1) .v)) .g) (.mul (.rational 138412801 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1282534741 1) .g) (.mul (.rational 1371077880 1) .v)) .g) (.mul
    (.rational 281718353 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 696919441 1) .g) (.mul (.rational 1042973978 1) .v)) .g) (.mul (.rational 322483132
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 250811165 1) .g)
    (.mul (.rational 515104292 1) .v)) .g) (.mul (.rational 228637480 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 58585846 1) .g) (.mul (.rational 166082488
    1) .v)) .g) (.mul (.rational 104179651 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8398905 1) .g) (.mul (.rational 34151240 1) .v)) .g) (.mul (.rational
    30588497 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 653672 1)
    .g) (.mul (.rational 4207658 1) .v)) .g) (.mul (.rational 5617176 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 20178 1) .g) (.mul (.rational 270482 1) .v))
    .g) (.mul (.rational 596330 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 53411471 1) .f) (.add (.mul (.rational 304594938 1) .g) (.mul
    (.rational 63813994 1) .v))) .f) (.add (.mul (.add (.mul (.rational 760770281 1) .g) (.mul
    (.rational 348611854 1) .v)) .g) (.mul (.rational 19863068 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1094052748 1) .g) (.mul (.rational 829215518 1) .v)) .g) (.mul
    (.rational 104756072 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1001363081 1) .g) (.mul (.rational 1128097118 1) .v)) .g) (.mul (.rational 239569836 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 608216421 1) .g) (.mul
    (.rational 969429776 1) .v)) .g) (.mul (.rational 311935810 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 247596643 1) .g) (.mul (.rational 548176980 1) .v))
    .g) (.mul (.rational 255266556 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 66447267 1) .g) (.mul (.rational 205782556 1) .v)) .g) (.mul (.rational
    136663176 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 11183749
    1) .g) (.mul (.rational 50369218 1) .v)) .g) (.mul (.rational 48229531 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1055546 1) .g) (.mul (.rational 7626916
    1) .v)) .g) (.mul (.rational 10987357 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 41695 1) .g) (.mul (.rational 634962 1) .v)) .g) (.mul (.rational
    1522491 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 21372 1) .v) .g)
    (.mul (.rational 112157 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 22073560 1) .f) (.add (.mul (.rational 135738555 1) .g)
    (.mul (.rational 29300796 1) .v))) .f) (.add (.mul (.add (.mul (.rational 367357225 1) .g)
    (.mul (.rational 174418324 1) .v)) .g) (.mul (.rational 10165684 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 575582467 1) .g) (.mul (.rational 455049386 1) .v)) .g)
    (.mul (.rational 59042187 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    577588699 1) .g) (.mul (.rational 684122352 1) .v)) .g) (.mul (.rational 149931608 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 387461276 1) .g) (.mul
    (.rational 655314492 1) .v)) .g) (.mul (.rational 218833965 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 175749163 1) .g) (.mul (.rational 417242826 1) .v))
    .g) (.mul (.rational 202948878 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 53137365 1) .g) (.mul (.rational 178516566 1) .v)) .g) (.mul (.rational
    124733118 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 10222909
    1) .g) (.mul (.rational 50561986 1) .v)) .g) (.mul (.rational 51332368 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1125325 1) .g) (.mul (.rational 9040330
    1) .v)) .g) (.mul (.rational 13917381 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 53432 1) .g) (.mul (.rational 915456 1) .v)) .g) (.mul (.rational
    2363368 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 39374 1) .v) .g)
    (.mul (.rational 224009 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 8754 1)
    (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 6704778 1) .f) (.add (.mul (.rational 44236458 1) .g) (.mul (.rational 9837152 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 128973488 1) .g) (.mul (.rational 63400782 1)
    .v)) .g) (.mul (.rational 3777739 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 218679700 1) .g) (.mul (.rational 180063906 1) .v)) .g) (.mul (.rational 23966567
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 238667024 1) .g) (.mul
    (.rational 296480416 1) .v)) .g) (.mul (.rational 66920608 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 175128705 1) .g) (.mul (.rational 313157872 1) .v))
    .g) (.mul (.rational 108199939 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 87471706 1) .g) (.mul (.rational 221574322 1) .v)) .g) (.mul (.rational
    112092960 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 29355528
    1) .g) (.mul (.rational 106298970 1) .v)) .g) (.mul (.rational 77697007 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 6331552 1) .g) (.mul (.rational 34123944
    1) .v)) .g) (.mul (.rational 36468007 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 791625 1) .g) (.mul (.rational 7008832 1) .v)) .g) (.mul (.rational
    11432951 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 43468 1)
    .g) (.mul (.rational 830152 1) .v)) .g) (.mul (.rational 2286333 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 42884 1) .v) .g) (.mul (.rational 262144 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 12961 1) (.pow .v 2)) (.pow .g 10))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1408369 1) .f) (.add
    (.mul (.rational 9927153 1) .g) (.mul (.rational 2272950 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 31027879 1) .g) (.mul (.rational 15774888 1) .v)) .g) (.mul (.rational 959842 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 56608954 1) .g) (.mul (.rational
    48462616 1) .v)) .g) (.mul (.rational 6605641 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 66751126 1) .g) (.mul (.rational 86741784 1) .v)) .g) (.mul (.rational
    20116029 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 53157287
    1) .g) (.mul (.rational 100139508 1) .v)) .g) (.mul (.rational 35681398 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 28960685 1) .g) (.mul (.rational 77908526
    1) .v)) .g) (.mul (.rational 40817381 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10663652 1) .g) (.mul (.rational 41376702 1) .v)) .g) (.mul (.rational
    31467273 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2541151
    1) .g) (.mul (.rational 14819172 1) .v)) .g) (.mul (.rational 16561988 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 354074 1) .g) (.mul (.rational 3427378 1)
    .v)) .g) (.mul (.rational 5878732 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 21910 1) .g) (.mul (.rational 462414 1) .v)) .g) (.mul (.rational 1347015 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 27630 1) .v) .g) (.mul
    (.rational 179804 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 10593 1) (.pow .v
    2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 182268 1) .f) (.add (.mul (.rational 1367622 1) .g) (.mul (.rational 322128
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 4563660 1) .g) (.mul (.rational 2396376 1)
    .v)) .g) (.mul (.rational 148644 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8916904 1) .g) (.mul (.rational 7921144 1) .v)) .g) (.mul (.rational 1103208 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11297657 1) .g) (.mul
    (.rational 15316698 1) .v)) .g) (.mul (.rational 3639067 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9701304 1) .g) (.mul (.rational 19186400 1) .v)) .g)
    (.mul (.rational 7025051 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5721197 1) .g) (.mul (.rational 16273130 1) .v)) .g) (.mul (.rational 8790714 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2290120 1) .g) (.mul
    (.rational 9470496 1) .v)) .g) (.mul (.rational 7454267 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 596199 1) .g) (.mul (.rational 3738094 1) .v)) .g)
    (.mul (.rational 4341688 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 91282 1) .g) (.mul (.rational 959008 1) .v)) .g) (.mul (.rational 1717137 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6251 1) .g) (.mul
    (.rational 144630 1) .v)) .g) (.mul (.rational 441946 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 9752 1) .v) .g) (.mul (.rational 66929 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 4533 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10908 1) .f) (.add (.mul
    (.rational 86868 1) .g) (.mul (.rational 21024 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    308431 1) .g) (.mul (.rational 167004 1) .v)) .g) (.mul (.rational 10536 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 642895 1) .g) (.mul (.rational 591338 1) .v)) .g)
    (.mul (.rational 83916 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    871291 1) .g) (.mul (.rational 1229000 1) .v)) .g) (.mul (.rational 298138 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 802535 1) .g) (.mul (.rational
    1660556 1) .v)) .g) (.mul (.rational 622273 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 509153 1) .g) (.mul (.rational 1524808 1) .v)) .g) (.mul
    (.rational 845293 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    219941 1) .g) (.mul (.rational 964504 1) .v)) .g) (.mul (.rational 781409 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 62005 1) .g) (.mul (.rational
    415528 1) .v)) .g) (.mul (.rational 498401 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 10321 1) .g) (.mul (.rational 116900 1) .v)) .g) (.mul (.rational
    216923 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 772 1) .g)
    (.mul (.rational 19436 1) .v)) .g) (.mul (.rational 61783 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 1454 1) .v) .g) (.mul (.rational 10423 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 793 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2302

namespace FullHigh2303
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsHigh2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsHigh1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsHigh2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsHigh0.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    6*SmallGap.PolarCoefficientsHigh0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    12*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(80*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^3+60*SmallGap.ReducedLayers.high0_100_1 e g v*e^4+24*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^5+24*SmallGap.ReducedLayers.high0_010_0 e g v*e^1+36*SmallGap.ReducedLayers.high0_010_1
    e g v*e^2+24*SmallGap.ReducedLayers.high0_010_2 e g v*e^3+6*SmallGap.ReducedLayers.high0_010_3
    e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(20*SmallGap.ReducedLayers.high1_200_0 e g v*e^3+15*SmallGap.ReducedLayers.high1_200_1 e
    g v*e^4+6*SmallGap.ReducedLayers.high1_200_2 e g v*e^5+12*SmallGap.ReducedLayers.high1_110_0 e
    g v*e^1+18*SmallGap.ReducedLayers.high1_110_1 e g v*e^2+12*SmallGap.ReducedLayers.high1_110_2
    e g v*e^3+3*SmallGap.ReducedLayers.high1_110_3 e g v*e^4+3*SmallGap.ReducedLayers.high1_020_1
    e g v+6*SmallGap.ReducedLayers.high1_020_2 e g v*e^1+3*SmallGap.ReducedLayers.high1_020_3 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    77740 1) .e) (.add (.mul (.rational 708430 1) .f) (.add (.mul (.rational 877290 1) .g) (.mul
    (.rational 138500 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 3999606 1) .f) (.add (.mul
    (.rational 6742502 1) .g) (.mul (.rational 1131132 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 4094600 1) .g) (.mul (.rational 1362824 1) .v)) .g) (.mul (.rational 63200 1) (.pow
    .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 15637885 1) .f) (.add (.mul
    (.rational 33313925 1) .g) (.mul (.rational 5749872 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 27225243 1) .g) (.mul (.rational 9464888 1) .v)) .g) (.mul (.rational 470790 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 10678267 1) .g) (.mul (.rational
    5467840 1) .v)) .g) (.mul (.rational 571780 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 44867138 1) .f) (.add (.mul (.rational 115420737 1) .g)
    (.mul (.rational 20311832 1) .v))) .f) (.add (.mul (.add (.mul (.rational 118463567 1) .g)
    (.mul (.rational 42500744 1) .v)) .g) (.mul (.rational 2180956 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 62018855 1) .g) (.mul (.rational 33429332 1) .v)) .g) (.mul
    (.rational 3634996 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 17449739
    1) .g) (.mul (.rational 12290160 1) .v)) .g) (.mul (.rational 2092252 1) (.pow .v 2))) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 97688445
    1) .f) (.add (.mul (.rational 294320837 1) .g) (.mul (.rational 52765220 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 363363436 1) .g) (.mul (.rational 134274532 1) .v)) .g) (.mul
    (.rational 7014931 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 237671468 1)
    .g) (.mul (.rational 134204600 1) .v)) .g) (.mul (.rational 14947977 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 88683219 1) .g) (.mul (.rational 67078624 1) .v)) .g)
    (.mul (.rational 11845205 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18790875 1) .g) (.mul (.rational 17621548 1) .v)) .g) (.mul (.rational 4314395 1)
    (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 164641797 1) .f) (.add (.mul (.rational 568334935 1) .g) (.mul
    (.rational 104046102 1) .v))) .f) (.add (.mul (.add (.mul (.rational 819537821 1) .g) (.mul
    (.rational 312528008 1) .v)) .g) (.mul (.rational 16568638 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 642440038 1) .g) (.mul (.rational 380128940 1) .v)) .g) (.mul
    (.rational 43238479 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    298098071 1) .g) (.mul (.rational 241421948 1) .v)) .g) (.mul (.rational 44041233 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 83300883 1) .g) (.mul
    (.rational 86085486 1) .v)) .g) (.mul (.rational 22237657 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 13542707 1) .g) (.mul (.rational 17193748 1) .v)) .g)
    (.mul (.rational 5841837 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 217103835 1) .f) (.add (.mul
    (.rational 844600160 1) .g) (.mul (.rational 158450596 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1392560061 1) .g) (.mul (.rational 549743260 1) .v)) .g) (.mul (.rational 29614889
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1271493021 1) .g) (.mul
    (.rational 789858904 1) .v)) .g) (.mul (.rational 91927380 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 704525861 1) .g) (.mul (.rational 610606992 1) .v)) .g)
    (.mul (.rational 115259207 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 243734434 1) .g) (.mul (.rational 276376292 1) .v)) .g) (.mul (.rational 75247447
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 51992827 1) .g)
    (.mul (.rational 74665732 1) .v)) .g) (.mul (.rational 27540164 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6451313 1) .g) (.mul (.rational 11709888 1) .v))
    .g) (.mul (.rational 5670849 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 224785257 1) .f)
    (.add (.mul (.rational 972954353 1) .g) (.mul (.rational 187723102 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1804936233 1) .g) (.mul (.rational 739931666 1) .v)) .g) (.mul
    (.rational 40634456 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1880124781
    1) .g) (.mul (.rational 1228629550 1) .v)) .g) (.mul (.rational 146828118 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1209831674 1) .g) (.mul (.rational
    1121958496 1) .v)) .g) (.mul (.rational 219811610 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 497950325 1) .g) (.mul (.rational 617415646 1) .v)) .g)
    (.mul (.rational 177295705 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 130920971 1) .g) (.mul (.rational 211035326 1) .v)) .g) (.mul (.rational 84042099
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 21208481 1) .g)
    (.mul (.rational 44471490 1) .v)) .g) (.mul (.rational 23998393 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1939309 1) .g) (.mul (.rational 5502440 1) .v))
    .g) (.mul (.rational 4057455 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    182184319 1) .f) (.add (.mul (.rational 868385438 1) .g) (.mul (.rational 172852764 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1789865362 1) .g) (.mul (.rational 763895982 1) .v))
    .g) (.mul (.rational 42914963 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2093756678 1) .g) (.mul (.rational 1441303098 1) .v)) .g) (.mul (.rational 177462515 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1533179782 1) .g) (.mul (.rational
    1520445944 1) .v)) .g) (.mul (.rational 309948039 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 730468965 1) .g) (.mul (.rational 986846100 1) .v)) .g)
    (.mul (.rational 298900186 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 227575380 1) .g) (.mul (.rational 408690082 1) .v)) .g) (.mul (.rational 174842754
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 45222842 1) .g)
    (.mul (.rational 108274370 1) .v)) .g) (.mul (.rational 64227794 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5369715 1) .g) (.mul (.rational 17823548 1)
    .v)) .g) (.mul (.rational 14810068 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 330287 1) .g) (.mul (.rational 1686888 1) .v)) .g) (.mul (.rational 2059797
    1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 114398197 1) .f)
    (.add (.mul (.rational 595447651 1) .g) (.mul (.rational 122569822 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1349881300 1) .g) (.mul (.rational 600803724 1) .v)) .g) (.mul
    (.rational 34627678 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1751488868
    1) .g) (.mul (.rational 1270749250 1) .v)) .g) (.mul (.rational 161586817 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1437063042 1) .g) (.mul (.rational
    1521976396 1) .v)) .g) (.mul (.rational 323209387 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 776850620 1) .g) (.mul (.rational 1138982120 1) .v)) .g)
    (.mul (.rational 363436354 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 279120229 1) .g) (.mul (.rational 554326020 1) .v)) .g) (.mul (.rational 253396822
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 65422488 1) .g)
    (.mul (.rational 176850354 1) .v)) .g) (.mul (.rational 113993414 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9476357 1) .g) (.mul (.rational 36262488 1)
    .v)) .g) (.mul (.rational 33325906 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 751935 1) .g) (.mul (.rational 4510514 1) .v)) .g) (.mul (.rational 6182415
    1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 23937 1) .g) (.mul
    (.rational 297740 1) .v)) .g) (.mul (.rational 676547 1) (.pow .v 2))) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 54570342 1) .f) (.add (.mul (.rational
    308004205 1) .g) (.mul (.rational 65668652 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    761626616 1) .g) (.mul (.rational 353806008 1) .v)) .g) (.mul (.rational 20958993 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1085231709 1) .g) (.mul (.rational
    829585728 1) .v)) .g) (.mul (.rational 109064974 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 985571379 1) .g) (.mul (.rational 1112511860 1) .v)) .g) (.mul
    (.rational 246069187 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 595326889 1) .g) (.mul (.rational 943168852 1) .v)) .g) (.mul (.rational 316313776
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 241834787 1) .g)
    (.mul (.rational 527287928 1) .v)) .g) (.mul (.rational 256109982 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 65076386 1) .g) (.mul (.rational 196535408
    1) .v)) .g) (.mul (.rational 136284226 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11055254 1) .g) (.mul (.rational 48113652 1) .v)) .g) (.mul (.rational
    48189374 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1062411
    1) .g) (.mul (.rational 7368952 1) .v)) .g) (.mul (.rational 11137125 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 43222 1) .g) (.mul (.rational 630392 1)
    .v)) .g) (.mul (.rational 1592438 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 22248 1) .v) .g) (.mul (.rational 123531 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 19119829 1) .f) (.add (.mul
    (.rational 116326608 1) .g) (.mul (.rational 25709214 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 311584776 1) .g) (.mul (.rational 151079686 1) .v)) .g) (.mul (.rational 9205624 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 483555926 1) .g) (.mul (.rational
    389064382 1) .v)) .g) (.mul (.rational 52880780 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 481294943 1) .g) (.mul (.rational 577575666 1) .v)) .g) (.mul
    (.rational 132883648 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 320939933 1) .g) (.mul (.rational 546950752 1) .v)) .g) (.mul (.rational 192193256
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 145174097 1) .g)
    (.mul (.rational 345106100 1) .v)) .g) (.mul (.rational 177108452 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 43970277 1) .g) (.mul (.rational 146935272
    1) .v)) .g) (.mul (.rational 108667006 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8526315 1) .g) (.mul (.rational 41692334 1) .v)) .g) (.mul (.rational
    44974526 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 953724 1)
    .g) (.mul (.rational 7542606 1) .v)) .g) (.mul (.rational 12394935 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 46508 1) .g) (.mul (.rational 783670 1) .v))
    .g) (.mul (.rational 2170741 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 35230 1) .v) .g) (.mul (.rational 216075 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 9061 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 4640522 1) .f) (.add (.mul (.rational 30279263 1) .g) (.mul
    (.rational 6937620 1) .v))) .f) (.add (.mul (.add (.mul (.rational 87334820 1) .g) (.mul
    (.rational 44173158 1) .v)) .g) (.mul (.rational 2767956 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 146602670 1) .g) (.mul (.rational 123953538 1) .v)) .g) (.mul
    (.rational 17400268 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    158615253 1) .g) (.mul (.rational 201772798 1) .v)) .g) (.mul (.rational 48186864 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 115617636 1) .g) (.mul
    (.rational 210988010 1) .v)) .g) (.mul (.rational 77405068 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 57537346 1) .g) (.mul (.rational 148151280 1) .v))
    .g) (.mul (.rational 79902825 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19319182 1) .g) (.mul (.rational 70814520 1) .v)) .g) (.mul (.rational 55436933 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4192123 1) .g) (.mul
    (.rational 22784966 1) .v)) .g) (.mul (.rational 26218097 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 531145 1) .g) (.mul (.rational 4730910 1) .v)) .g)
    (.mul (.rational 8358850 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 29832 1) .g) (.mul (.rational 573158 1) .v)) .g) (.mul (.rational 1720787 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 30762 1) .v) .g) (.mul (.rational
    206281 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 10871 1) (.pow .v 2)) (.pow
    .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    696996 1) .f) (.add (.mul (.rational 4856016 1) .g) (.mul (.rational 1152912 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 15005905 1) .g) (.mul (.rational 7908288 1) .v)) .g) (.mul
    (.rational 509112 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 27085632 1)
    .g) (.mul (.rational 24017598 1) .v)) .g) (.mul (.rational 3476304 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 31635795 1) .g) (.mul (.rational 42527166 1) .v)) .g)
    (.mul (.rational 10515088 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25001687 1) .g) (.mul (.rational 48637264 1) .v)) .g) (.mul (.rational 18560468 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 13554560 1) .g) (.mul
    (.rational 37574758 1) .v)) .g) (.mul (.rational 21189706 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4985006 1) .g) (.mul (.rational 19887396 1) .v)) .g)
    (.mul (.rational 16372359 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1192291 1) .g) (.mul (.rational 7135210 1) .v)) .g) (.mul (.rational 8687633 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 167771 1) .g) (.mul
    (.rational 1664944 1) .v)) .g) (.mul (.rational 3133514 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10565 1) .g) (.mul (.rational 228786 1) .v)) .g)
    (.mul (.rational 737012 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    14094 1) .v) .g) (.mul (.rational 102267 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 6361 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 48792 1) .f) (.add (.mul (.rational 361584 1) .g)
    (.mul (.rational 88872 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1191854 1) .g) (.mul
    (.rational 653472 1) .v)) .g) (.mul (.rational 43152 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2301531 1) .g) (.mul (.rational 2135468 1) .v)) .g) (.mul (.rational
    318000 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2884886 1) .g) (.mul
    (.rational 4085062 1) .v)) .g) (.mul (.rational 1042716 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2454861 1) .g) (.mul (.rational 5069014 1) .v)) .g)
    (.mul (.rational 2004556 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1438084 1) .g) (.mul (.rational 4268006 1) .v)) .g) (.mul (.rational 2504735 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 573669 1) .g) (.mul
    (.rational 2473582 1) .v)) .g) (.mul (.rational 2129006 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 149446 1) .g) (.mul (.rational 976578 1) .v)) .g)
    (.mul (.rational 1249425 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23011 1) .g) (.mul (.rational 252042 1) .v)) .g) (.mul (.rational 501216 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1594 1) .g) (.mul
    (.rational 38514 1) .v)) .g) (.mul (.rational 131921 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 2654 1) .v) .g) (.mul (.rational 20630 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 1459 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2303

namespace FullHigh2304
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsHigh2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsHigh1.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    6*SmallGap.PolarCoefficientsHigh1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    12*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsHigh0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    6*SmallGap.PolarCoefficientsHigh0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(60*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^2+80*SmallGap.ReducedLayers.high0_100_1 e g v*e^3+60*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^4+6*SmallGap.ReducedLayers.high0_010_0 e g v+24*SmallGap.ReducedLayers.high0_010_1 e g
    v*e^1+36*SmallGap.ReducedLayers.high0_010_2 e g v*e^2+24*SmallGap.ReducedLayers.high0_010_3 e
    g v*e^3+6*SmallGap.ReducedLayers.high0_010_4 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.high1_200_0 e g v*e^2+20*SmallGap.ReducedLayers.high1_200_1 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_200_2 e g v*e^4+3*SmallGap.ReducedLayers.high1_110_0 e
    g v+12*SmallGap.ReducedLayers.high1_110_1 e g v*e^1+18*SmallGap.ReducedLayers.high1_110_2 e g
    v*e^2+12*SmallGap.ReducedLayers.high1_110_3 e g v*e^3+3*SmallGap.ReducedLayers.high1_110_4 e g
    v*e^4+3*SmallGap.ReducedLayers.high1_020_2 e g v+6*SmallGap.ReducedLayers.high1_020_3 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_020_4 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 99780 1)
    .e) (.add (.mul (.rational 884940 1) .f) (.add (.mul (.rational 1090050 1) .g) (.mul
    (.rational 175740 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 4844454 1) .f) (.add (.mul
    (.rational 8115248 1) .g) (.mul (.rational 1380528 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 4899390 1) .g) (.mul (.rational 1633116 1) .v)) .g) (.mul (.rational 79600 1) (.pow
    .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 18273615 1) .f) (.add (.mul
    (.rational 38648021 1) .g) (.mul (.rational 6723540 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 31364609 1) .g) (.mul (.rational 10835572 1) .v)) .g) (.mul (.rational 565440 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 12232219 1) .g) (.mul (.rational
    6075904 1) .v)) .g) (.mul (.rational 669180 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 50258242 1) .f) (.add (.mul (.rational 128241680 1) .g)
    (.mul (.rational 22645036 1) .v))) .f) (.add (.mul (.add (.mul (.rational 130576730 1) .g)
    (.mul (.rational 46309056 1) .v)) .g) (.mul (.rational 2485404 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 67886008 1) .g) (.mul (.rational 35309574 1) .v)) .g) (.mul
    (.rational 4018034 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 19010664
    1) .g) (.mul (.rational 12433464 1) .v)) .g) (.mul (.rational 2204368 1) (.pow .v 2))) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 104066957
    1) .f) (.add (.mul (.rational 310726465 1) .g) (.mul (.rational 55754816 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 380214124 1) .g) (.mul (.rational 138560198 1) .v)) .g) (.mul
    (.rational 7545421 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 246688790 1)
    .g) (.mul (.rational 134258440 1) .v)) .g) (.mul (.rational 15560809 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 91478695 1) .g) (.mul (.rational 64389926 1) .v)) .g)
    (.mul (.rational 11743777 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19325561 1) .g) (.mul (.rational 16003952 1) .v)) .g) (.mul (.rational 3959059 1)
    (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 165187309 1) .f) (.add (.mul (.rational 564632330 1) .g) (.mul
    (.rational 103430932 1) .v))) .f) (.add (.mul (.add (.mul (.rational 806265456 1) .g) (.mul
    (.rational 303422594 1) .v)) .g) (.mul (.rational 16728576 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 626306218 1) .g) (.mul (.rational 358198468 1) .v)) .g) (.mul
    (.rational 42256484 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    288448105 1) .g) (.mul (.rational 218988392 1) .v)) .g) (.mul (.rational 41111540 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 80234600 1) .g) (.mul
    (.rational 74383394 1) .v)) .g) (.mul (.rational 19411222 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 13039158 1) .g) (.mul (.rational 13984798 1) .v)) .g)
    (.mul (.rational 4608504 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 202696265 1) .f) (.add (.mul
    (.rational 780213883 1) .g) (.mul (.rational 146759438 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1272829653 1) .g) (.mul (.rational 497638590 1) .v)) .g) (.mul (.rational 27876039
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1150594959 1) .g) (.mul
    (.rational 695298806 1) .v)) .g) (.mul (.rational 83942908 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 632106137 1) .g) (.mul (.rational 519476230 1) .v)) .g)
    (.mul (.rational 101104117 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 217386889 1) .g) (.mul (.rational 225630926 1) .v)) .g) (.mul (.rational 62537735
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 46281693 1) .g)
    (.mul (.rational 58096508 1) .v)) .g) (.mul (.rational 21294082 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5761273 1) .g) (.mul (.rational 8653118 1) .v))
    .g) (.mul (.rational 4002361 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 192351289 1) .f)
    (.add (.mul (.rational 823169196 1) .g) (.mul (.rational 159904042 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1509839418 1) .g) (.mul (.rational 616702534 1) .v)) .g) (.mul
    (.rational 35307434 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1555833378
    1) .g) (.mul (.rational 998134618 1) .v)) .g) (.mul (.rational 124218191 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 991728891 1) .g) (.mul (.rational 884620464 1)
    .v)) .g) (.mul (.rational 179912060 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 405332912 1) .g) (.mul (.rational 470442658 1) .v)) .g) (.mul (.rational
    139331978 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    106231190 1) .g) (.mul (.rational 154938246 1) .v)) .g) (.mul (.rational 62946874 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 17244026 1) .g) (.mul
    (.rational 31492392 1) .v)) .g) (.mul (.rational 17083549 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1589900 1) .g) (.mul (.rational 3790284 1) .v)) .g)
    (.mul (.rational 2776876 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    140089343 1) .f) (.add (.mul (.rational 659760425 1) .g) (.mul (.rational 132996644 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1343623078 1) .g) (.mul (.rational 575895894 1) .v))
    .g) (.mul (.rational 33900693 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1553793552 1) .g) (.mul (.rational 1061740052 1) .v)) .g) (.mul (.rational 137078347 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1126236340 1) .g) (.mul (.rational
    1091434736 1) .v)) .g) (.mul (.rational 233293708 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 532393024 1) .g) (.mul (.rational 688845024 1) .v)) .g)
    (.mul (.rational 218556710 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 165185524 1) .g) (.mul (.rational 277340352 1) .v)) .g) (.mul (.rational 124077560
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 32863988 1) .g)
    (.mul (.rational 71704028 1) .v)) .g) (.mul (.rational 44438582 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3933375 1) .g) (.mul (.rational 11640094 1) .v))
    .g) (.mul (.rational 10143289 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 245729 1) .g) (.mul (.rational 1106424 1) .v)) .g) (.mul (.rational 1437261 1)
    (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 76947577 1) .f) (.add
    (.mul (.rational 395484170 1) .g) (.mul (.rational 83037376 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 885326559 1) .g) (.mul (.rational 399388410 1) .v)) .g) (.mul (.rational
    24288048 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1134928702 1) .g)
    (.mul (.rational 827370720 1) .v)) .g) (.mul (.rational 111294774 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 921178298 1) .g) (.mul (.rational 969118642 1) .v))
    .g) (.mul (.rational 218316350 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 493762742 1) .g) (.mul (.rational 708893548 1) .v)) .g) (.mul (.rational
    240718672 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    176558213 1) .g) (.mul (.rational 337742016 1) .v)) .g) (.mul (.rational 164984052 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 41406128 1) .g) (.mul
    (.rational 106040980 1) .v)) .g) (.mul (.rational 73500090 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6044053 1) .g) (.mul (.rational 21635422 1) .v)) .g)
    (.mul (.rational 21599634 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 487598 1) .g) (.mul (.rational 2726150 1) .v)) .g) (.mul (.rational 4123222 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 15940 1) .g) (.mul
    (.rational 186530 1) .v)) .g) (.mul (.rational 477264 1) (.pow .v 2))) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 30879074 1) .f) (.add (.mul (.rational
    171993930 1) .g) (.mul (.rational 37707962 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    419736336 1) .g) (.mul (.rational 199619342 1) .v)) .g) (.mul (.rational 12578849 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 590582652 1) .g) (.mul (.rational 459398524
    1) .v)) .g) (.mul (.rational 64518678 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 530311713 1) .g) (.mul (.rational 604345734 1) .v)) .g) (.mul (.rational 143506369
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 317457217 1) .g)
    (.mul (.rational 502878414 1) .v)) .g) (.mul (.rational 182159610 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 128269505 1) .g) (.mul (.rational 276650176
    1) .v)) .g) (.mul (.rational 146244592 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 34516597 1) .g) (.mul (.rational 102070426 1) .v)) .g) (.mul (.rational
    77794870 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5906888
    1) .g) (.mul (.rational 25002572 1) .v)) .g) (.mul (.rational 27874918 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 577288 1) .g) (.mul (.rational 3896176 1)
    .v)) .g) (.mul (.rational 6656295 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 24168 1) .g) (.mul (.rational 346732 1) .v)) .g) (.mul (.rational 1006362 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 13054 1) .v) .g) (.mul
    (.rational 84379 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 8553781 1) .f) (.add (.mul (.rational 51325480 1) .g) (.mul (.rational
    11766370 1) .v))) .f) (.add (.mul (.add (.mul (.rational 135600458 1) .g) (.mul (.rational
    68018406 1) .v)) .g) (.mul (.rational 4447446 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 207697218 1) .g) (.mul (.rational 172223438 1) .v)) .g) (.mul (.rational
    25259345 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 204301443 1) .g)
    (.mul (.rational 251416132 1) .v)) .g) (.mul (.rational 62830332 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 134946664 1) .g) (.mul (.rational 234423272
    1) .v)) .g) (.mul (.rational 90186649 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 60683596 1) .g) (.mul (.rational 146096258 1) .v)) .g) (.mul (.rational
    82880150 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 18368206
    1) .g) (.mul (.rational 61810256 1) .v)) .g) (.mul (.rational 51121568 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3585422 1) .g) (.mul (.rational 17603912
    1) .v)) .g) (.mul (.rational 21529480 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 407576 1) .g) (.mul (.rational 3245166 1) .v)) .g) (.mul (.rational
    6138297 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 20444 1)
    .g) (.mul (.rational 350588 1) .v)) .g) (.mul (.rational 1134620 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 16794 1) .v) .g) (.mul (.rational 121797 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 5628 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1463724 1) .f) (.add
    (.mul (.rational 9412740 1) .g) (.mul (.rational 2257572 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 26761574 1) .g) (.mul (.rational 14152620 1) .v)) .g) (.mul (.rational 960372 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 44311140 1) .g) (.mul (.rational
    39098702 1) .v)) .g) (.mul (.rational 5983128 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 47354175 1) .g) (.mul (.rational 62700090 1) .v)) .g) (.mul (.rational
    16449905 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 34172705
    1) .g) (.mul (.rational 64702064 1) .v)) .g) (.mul (.rational 26316318 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 16895502 1) .g) (.mul (.rational 44987900
    1) .v)) .g) (.mul (.rational 27191484 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5664478 1) .g) (.mul (.rational 21417200 1) .v)) .g) (.mul (.rational
    19028087 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1235775
    1) .g) (.mul (.rational 6925914 1) .v)) .g) (.mul (.rational 9174931 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 158841 1) .g) (.mul (.rational 1464396 1)
    .v)) .g) (.mul (.rational 3025028 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9154 1) .g) (.mul (.rational 183860 1) .v)) .g) (.mul (.rational 655314 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 10450 1) .v) .g) (.mul
    (.rational 84319 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 4874 1) (.pow .v
    2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    116736 1) .f) (.add (.mul (.rational 800880 1) .g) (.mul (.rational 200928 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 2437573 1) .g) (.mul (.rational 1357680 1) .v)) .g) (.mul
    (.rational 95556 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4336692 1) .g)
    (.mul (.rational 4062854 1) .v)) .g) (.mul (.rational 647712 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4999575 1) .g) (.mul (.rational 7095366 1) .v)) .g) (.mul
    (.rational 1949046 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3908830 1) .g) (.mul (.rational 8019526 1) .v)) .g) (.mul (.rational 3434069 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2103507 1) .g) (.mul (.rational
    6143790 1) .v)) .g) (.mul (.rational 3933148 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 771496 1) .g) (.mul (.rational 3241994 1) .v)) .g) (.mul
    (.rational 3070503 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    185169 1) .g) (.mul (.rational 1168850 1) .v)) .g) (.mul (.rational 1661994 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 26358 1) .g) (.mul (.rational
    277090 1) .v)) .g) (.mul (.rational 618979 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1696 1) .g) (.mul (.rational 39242 1) .v)) .g) (.mul (.rational
    152556 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2536 1) .v) .g)
    (.mul (.rational 22561 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1524 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2304

namespace FullHigh2305
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsHigh2.c230 e f g v*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsHigh2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    12*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsHigh1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsHigh1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(24*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^1+60*SmallGap.ReducedLayers.high0_100_1 e g v*e^2+80*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^3+6*SmallGap.ReducedLayers.high0_010_1 e g v+24*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^1+36*SmallGap.ReducedLayers.high0_010_3 e g v*e^2+24*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.high1_200_0 e g v*e^1+15*SmallGap.ReducedLayers.high1_200_1 e
    g v*e^2+20*SmallGap.ReducedLayers.high1_200_2 e g v*e^3+3*SmallGap.ReducedLayers.high1_110_1 e
    g v+12*SmallGap.ReducedLayers.high1_110_2 e g v*e^1+18*SmallGap.ReducedLayers.high1_110_3 e g
    v*e^2+12*SmallGap.ReducedLayers.high1_110_4 e g v*e^3+3*SmallGap.ReducedLayers.high1_020_3 e g
    v+6*SmallGap.ReducedLayers.high1_020_4 e g v*e^1+3*SmallGap.ReducedLayers.high1_020_5 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 82164 1) .e) (.add
    (.mul (.rational 712122 1) .f) (.add (.mul (.rational 873138 1) .g) (.mul (.rational 142932 1)
    .v)))) .e) (.add (.mul (.add (.mul (.rational 3791154 1) .f) (.add (.mul (.rational 6313902 1)
    .g) (.mul (.rational 1083426 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3793680 1) .g)
    (.mul (.rational 1256376 1) .v)) .g) (.mul (.rational 64320 1) (.pow .v 2))))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 13816008 1) .f) (.add (.mul (.rational 29014884 1) .g)
    (.mul (.rational 5064378 1) .v))) .f) (.add (.mul (.add (.mul (.rational 23399736 1) .g) (.mul
    (.rational 7970478 1) .v)) .g) (.mul (.rational 437388 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9087396 1) .g) (.mul (.rational 4317774 1) .v)) .g) (.mul (.rational
    503544 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    36405204 1) .f) (.add (.mul (.rational 92122410 1) .g) (.mul (.rational 16262616 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 93077130 1) .g) (.mul (.rational 32393418 1) .v)) .g) (.mul
    (.rational 1827720 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 48095550 1)
    .g) (.mul (.rational 23800146 1) .v)) .g) (.mul (.rational 2857176 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 13426914 1) .g) (.mul (.rational 7931382 1) .v)) .g)
    (.mul (.rational 1482048 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 71471328 1) .f) (.add (.mul (.rational 211351860 1)
    .g) (.mul (.rational 37870212 1) .v))) .f) (.add (.mul (.add (.mul (.rational 256242330 1) .g)
    (.mul (.rational 91535700 1) .v)) .g) (.mul (.rational 5236134 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 164940546 1) .g) (.mul (.rational 85400586 1) .v)) .g)
    (.mul (.rational 10406286 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    60832506 1) .g) (.mul (.rational 38807646 1) .v)) .g) (.mul (.rational 7405818 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 12830742 1) .g) (.mul
    (.rational 8897874 1) .v)) .g) (.mul (.rational 2247066 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 106168080
    1) .f) (.add (.mul (.rational 358934934 1) .g) (.mul (.rational 65770902 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 507073368 1) .g) (.mul (.rational 187583604 1) .v)) .g) (.mul
    (.rational 10869684 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 390080388
    1) .g) (.mul (.rational 213402636 1) .v)) .g) (.mul (.rational 26453898 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 178278276 1) .g) (.mul (.rational 124068846 1)
    .v)) .g) (.mul (.rational 24346698 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 49372938 1) .g) (.mul (.rational 39270000 1) .v)) .g) (.mul (.rational
    10503534 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8023632
    1) .g) (.mul (.rational 6668766 1) .v)) .g) (.mul (.rational 2115498 1) (.pow .v 2))) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 119918754 1) .f) (.add (.mul (.rational 455949510 1) .g) (.mul (.rational 86183562
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 734798838 1) .g) (.mul (.rational 284248422 1)
    .v)) .g) (.mul (.rational 16793508 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 656645874 1) .g) (.mul (.rational 383481336 1) .v)) .g) (.mul (.rational 48859464
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 357216756 1) .g) (.mul
    (.rational 273848952 1) .v)) .g) (.mul (.rational 56110062 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 121994280 1) .g) (.mul (.rational 112112820 1) .v))
    .g) (.mul (.rational 32395686 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25893780 1) .g) (.mul (.rational 26719908 1) .v)) .g) (.mul (.rational 9947142 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3227736 1) .g) (.mul
    (.rational 3608418 1) .v)) .g) (.mul (.rational 1601178 1) (.pow .v 2))) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 102526908 1) .f) (.add (.mul (.rational 432848640 1) .g) (.mul (.rational
    85088640 1) .v))) .f) (.add (.mul (.add (.mul (.rational 783142146 1) .g) (.mul (.rational
    319525974 1) .v)) .g) (.mul (.rational 19428900 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 796429554 1) .g) (.mul (.rational 500649432 1) .v)) .g) (.mul (.rational
    66361920 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 501689154 1) .g)
    (.mul (.rational 426433644 1) .v)) .g) (.mul (.rational 92572080 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 203132148 1) .g) (.mul (.rational 216065016
    1) .v)) .g) (.mul (.rational 68352750 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 52932558 1) .g) (.mul (.rational 67205820 1) .v)) .g) (.mul (.rational
    29130450 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8580498
    1) .g) (.mul (.rational 12834294 1) .v)) .g) (.mul (.rational 7431306 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 792990 1) .g) (.mul (.rational 1458114 1)
    .v)) .g) (.mul (.rational 1161186 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    65350374 1) .f) (.add (.mul (.rational 303245778 1) .g) (.mul (.rational 62412612 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 608334054 1) .g) (.mul (.rational 263495604 1) .v)) .g)
    (.mul (.rational 16636860 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    693165822 1) .g) (.mul (.rational 471577104 1) .v)) .g) (.mul (.rational 65674392 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 495591630 1) .g) (.mul (.rational
    468285564 1) .v)) .g) (.mul (.rational 108715392 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 231591294 1) .g) (.mul (.rational 284149632 1) .v)) .g)
    (.mul (.rational 98793456 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 71277216 1) .g) (.mul (.rational 109682760 1) .v)) .g) (.mul (.rational 54467502 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 14130120 1) .g) (.mul
    (.rational 27264318 1) .v)) .g) (.mul (.rational 19154322 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1693032 1) .g) (.mul (.rational 4312134 1) .v)) .g)
    (.mul (.rational 4415670 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 106140 1) .g) (.mul (.rational 409338 1) .v)) .g) (.mul (.rational 659742 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 30135654 1) .f) (.add (.mul
    (.rational 152426988 1) .g) (.mul (.rational 33008436 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 335674608 1) .g) (.mul (.rational 155006916 1) .v)) .g) (.mul (.rational 10228836
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 423369924 1) .g) (.mul
    (.rational 312524124 1) .v)) .g) (.mul (.rational 45999780 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 338393016 1) .g) (.mul (.rational 355190064 1) .v)) .g)
    (.mul (.rational 88492380 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 178972086 1) .g) (.mul (.rational 251576394 1) .v)) .g) (.mul (.rational 95832384
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 63357828 1) .g)
    (.mul (.rational 116145624 1) .v)) .g) (.mul (.rational 64905264 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 14780592 1) .g) (.mul (.rational 35569296 1)
    .v)) .g) (.mul (.rational 28981866 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2158548 1) .g) (.mul (.rational 7191306 1) .v)) .g) (.mul (.rational 8749770
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 175176 1) .g)
    (.mul (.rational 921042 1) .v)) .g) (.mul (.rational 1770330 1) (.pow .v 2))) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5772 1) .g) (.mul (.rational 65874 1) .v)) .g)
    (.mul (.rational 222654 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 9512868 1) .f) (.add (.mul (.rational 52084104 1) .g) (.mul (.rational
    11905656 1) .v))) .f) (.add (.mul (.add (.mul (.rational 124885602 1) .g) (.mul (.rational
    61615692 1) .v)) .g) (.mul (.rational 4265340 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 172651590 1) .g) (.mul (.rational 138321816 1) .v)) .g) (.mul (.rational
    21565992 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 152445780 1) .g)
    (.mul (.rational 177200484 1) .v)) .g) (.mul (.rational 47340468 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 89904804 1) .g) (.mul (.rational 143548626
    1) .v)) .g) (.mul (.rational 59520516 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 35907948 1) .g) (.mul (.rational 77092074 1) .v)) .g) (.mul (.rational
    47702352 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 9599892
    1) .g) (.mul (.rational 27993000 1) .v)) .g) (.mul (.rational 25686216 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1643202 1) .g) (.mul (.rational 6857052
    1) .v)) .g) (.mul (.rational 9511686 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 161898 1) .g) (.mul (.rational 1094694 1) .v)) .g) (.mul (.rational
    2406006 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6888 1)
    .g) (.mul (.rational 102666 1) .v)) .g) (.mul (.rational 393750 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 4176 1) .v) .g) (.mul (.rational 36150 1) (.pow .v 2)))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1841940 1)
    .f) (.add (.mul (.rational 10851720 1) .g) (.mul (.rational 2623080 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 28136070 1) .g) (.mul (.rational 14840196 1) .v)) .g) (.mul (.rational
    1079244 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 42292800 1) .g) (.mul
    (.rational 36722928 1) .v)) .g) (.mul (.rational 6063336 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 40856808 1) .g) (.mul (.rational 52357272 1) .v)) .g) (.mul
    (.rational 14953560 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26553384 1) .g) (.mul (.rational 47721000 1) .v)) .g) (.mul (.rational 21381204 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11788794 1) .g) (.mul
    (.rational 29182542 1) .v)) .g) (.mul (.rational 19734420 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3541782 1) .g) (.mul (.rational 12219252 1) .v)) .g)
    (.mul (.rational 12384216 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 691350 1) .g) (.mul (.rational 3497052 1) .v)) .g) (.mul (.rational 5402016 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 79338 1) .g) (.mul
    (.rational 662424 1) .v)) .g) (.mul (.rational 1629414 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4062 1) .g) (.mul (.rational 75546 1) .v)) .g) (.mul
    (.rational 325314 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3924
    1) .v) .g) (.mul (.rational 38358 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    1974 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 165240 1) .f) (.add (.mul (.rational 1042104 1) .g) (.mul (.rational 266568
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 2904396 1) .g) (.mul (.rational 1636824 1)
    .v)) .g) (.mul (.rational 125064 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4714380 1) .g) (.mul (.rational 4425948 1) .v)) .g) (.mul (.rational 772740 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4942860 1) .g) (.mul
    (.rational 6947688 1) .v)) .g) (.mul (.rational 2113572 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3506124 1) .g) (.mul (.rational 7029888 1) .v)) .g)
    (.mul (.rational 3381468 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1709784 1) .g) (.mul (.rational 4813596 1) .v)) .g) (.mul (.rational 3523104 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 568500 1) .g) (.mul
    (.rational 2275896 1) .v)) .g) (.mul (.rational 2516064 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 123972 1) .g) (.mul (.rational 741264 1) .v)) .g)
    (.mul (.rational 1258092 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16092 1) .g) (.mul (.rational 161064 1) .v)) .g) (.mul (.rational 438444 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 948 1) .g) (.mul (.rational
    21300 1) .v)) .g) (.mul (.rational 102432 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 1308 1) .v) .g) (.mul (.rational 14484 1) (.pow .v 2))) (.pow .g 9))) .f)
    (.mul (.mul (.rational 936 1) (.pow .v 2)) (.pow .g 10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2305

namespace FullHigh2306
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  12*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsHigh2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsHigh2.c410 e f g v*e*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_0 e g v+24*SmallGap.ReducedLayers.high0_100_1 e
    g v*e^1+60*SmallGap.ReducedLayers.high0_100_2 e g v*e^2+6*SmallGap.ReducedLayers.high0_010_2 e
    g v+24*SmallGap.ReducedLayers.high0_010_3 e g v*e^1+36*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_200_0 e g v+6*SmallGap.ReducedLayers.high1_200_1 e g
    v*e^1+15*SmallGap.ReducedLayers.high1_200_2 e g v*e^2+3*SmallGap.ReducedLayers.high1_110_2 e g
    v+12*SmallGap.ReducedLayers.high1_110_3 e g v*e^1+18*SmallGap.ReducedLayers.high1_110_4 e g
    v*e^2+3*SmallGap.ReducedLayers.high1_020_4 e g v+6*SmallGap.ReducedLayers.high1_020_5 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_020_6 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 42380 1) .e) (.add (.mul (.rational
    360392 1) .f) (.add (.mul (.rational 440178 1) .g) (.mul (.rational 72748 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 1871652 1) .f) (.add (.mul (.rational 3100888 1) .g) (.mul
    (.rational 533760 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1856860 1) .g) (.mul
    (.rational 605704 1) .v)) .g) (.mul (.rational 32560 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 6601442 1) .f) (.add (.mul (.rational 13770904 1) .g) (.mul
    (.rational 2399544 1) .v))) .f) (.add (.mul (.add (.mul (.rational 11049354 1) .g) (.mul
    (.rational 3677956 1) .v)) .g) (.mul (.rational 212862 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4282676 1) .g) (.mul (.rational 1914464 1) .v)) .g) (.mul (.rational
    238064 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    16664222 1) .f) (.add (.mul (.rational 41817510 1) .g) (.mul (.rational 7351192 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 41958466 1) .g) (.mul (.rational 14210524 1) .v)) .g) (.mul
    (.rational 848072 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 21589670 1)
    .g) (.mul (.rational 9991768 1) .v)) .g) (.mul (.rational 1278692 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6028000 1) .g) (.mul (.rational 3101340 1) .v)) .g)
    (.mul (.rational 622148 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 30935280 1) .f) (.add (.mul (.rational 90558344 1)
    .g) (.mul (.rational 16172004 1) .v))) .f) (.add (.mul (.add (.mul (.rational 108814640 1) .g)
    (.mul (.rational 37855160 1) .v)) .g) (.mul (.rational 2296186 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 69579856 1) .g) (.mul (.rational 33747736 1) .v)) .g) (.mul
    (.rational 4383462 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 25588720
    1) .g) (.mul (.rational 14294332 1) .v)) .g) (.mul (.rational 2914558 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5409780 1) .g) (.mul (.rational 2899364
    1) .v)) .g) (.mul (.rational 766974 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 42729480 1) .f) (.add (.mul
    (.rational 142735102 1) .g) (.mul (.rational 26192184 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 199417324 1) .g) (.mul (.rational 72292256 1) .v)) .g) (.mul (.rational 4463512 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 152000972 1) .g) (.mul (.rational
    78652416 1) .v)) .g) (.mul (.rational 10438406 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 69051000 1) .g) (.mul (.rational 42845284 1) .v)) .g) (.mul (.rational
    9024630 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 19093962
    1) .g) (.mul (.rational 12223024 1) .v)) .g) (.mul (.rational 3472390 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3114508 1) .g) (.mul (.rational 1718548
    1) .v)) .g) (.mul (.rational 530142 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 43898484 1) .f)
    (.add (.mul (.rational 164589840 1) .g) (.mul (.rational 31423176 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 261717476 1) .g) (.mul (.rational 100331904 1) .v)) .g) (.mul
    (.rational 6375694 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 231099312 1)
    .g) (.mul (.rational 129765276 1) .v)) .g) (.mul (.rational 17907880 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 124541748 1) .g) (.mul (.rational 87483536 1) .v))
    .g) (.mul (.rational 19569626 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 42293524 1) .g) (.mul (.rational 32964872 1) .v)) .g) (.mul (.rational 10476110 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8966468 1) .g) (.mul
    (.rational 6917820 1) .v)) .g) (.mul (.rational 2834492 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1120444 1) .g) (.mul (.rational 756172 1) .v)) .g)
    (.mul (.rational 360982 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 33127290 1) .f)
    (.add (.mul (.rational 137632440 1) .g) (.mul (.rational 27643644 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 245104006 1) .g) (.mul (.rational 100590480 1) .v)) .g) (.mul
    (.rational 6672832 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 245578418 1)
    .g) (.mul (.rational 151557156 1) .v)) .g) (.mul (.rational 22159130 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 152701886 1) .g) (.mul (.rational 122804216 1) .v))
    .g) (.mul (.rational 29860616 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 61215188 1) .g) (.mul (.rational 58314092 1) .v)) .g) (.mul (.rational 21147398 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 15851458 1) .g) (.mul
    (.rational 16669004 1) .v)) .g) (.mul (.rational 8612834 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2560758 1) .g) (.mul (.rational 2861876 1) .v)) .g)
    (.mul (.rational 2130348 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 235508 1) .g) (.mul (.rational 287300 1) .v)) .g) (.mul (.rational 342234 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 17850924 1) .f) (.add (.mul (.rational
    81346272 1) .g) (.mul (.rational 17335848 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    160219536 1) .g) (.mul (.rational 70998120 1) .v)) .g) (.mul (.rational 4976268 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 179313528 1) .g) (.mul (.rational 122533056
    1) .v)) .g) (.mul (.rational 19236024 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 126080104 1) .g) (.mul (.rational 116490232 1) .v)) .g) (.mul (.rational 31158020
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 58071248 1) .g)
    (.mul (.rational 67128644 1) .v)) .g) (.mul (.rational 27784144 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 17667160 1) .g) (.mul (.rational 24448032 1) .v))
    .g) (.mul (.rational 15206442 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3469984 1) .g) (.mul (.rational 5738152 1) .v)) .g) (.mul (.rational 5458986 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 411292 1) .g) (.mul
    (.rational 870924 1) .v)) .g) (.mul (.rational 1343438 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 25162 1) .g) (.mul (.rational 81760 1) .v)) .g) (.mul
    (.rational 222346 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    6506568 1) .f) (.add (.mul (.rational 32251464 1) .g) (.mul (.rational 7333992 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 69553308 1) .g) (.mul (.rational 33440760 1) .v)) .g) (.mul
    (.rational 2494992 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 85892228 1)
    .g) (.mul (.rational 65163448 1) .v)) .g) (.mul (.rational 11052036 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 67257260 1) .g) (.mul (.rational 71228728 1) .v)) .g)
    (.mul (.rational 20993164 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34900542 1) .g) (.mul (.rational 48329592 1) .v)) .g) (.mul (.rational 22602284 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 12148992 1) .g) (.mul
    (.rational 21369080 1) .v)) .g) (.mul (.rational 15443696 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2792344 1) .g) (.mul (.rational 6320856 1) .v)) .g)
    (.mul (.rational 7132950 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 401408 1) .g) (.mul (.rational 1261652 1) .v)) .g) (.mul (.rational 2298358 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 31762 1) .g) (.mul
    (.rational 164584 1) .v)) .g) (.mul (.rational 507902 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 984 1) .g) (.mul (.rational 12228 1) .v)) .g) (.mul
    (.rational 69778 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1438560 1) .f) (.add (.mul (.rational 7702452 1) .g) (.mul (.rational 1874664 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 18039672 1) .g) (.mul (.rational 9426672 1) .v))
    .g) (.mul (.rational 750816 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    24341580 1) .g) (.mul (.rational 20484000 1) .v)) .g) (.mul (.rational 3755160 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 20975616 1) .g) (.mul (.rational
    25313640 1) .v)) .g) (.mul (.rational 8185116 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12082268 1) .g) (.mul (.rational 19746352 1) .v)) .g) (.mul
    (.rational 10299936 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4721184 1) .g) (.mul (.rational 10237304 1) .v)) .g) (.mul (.rational 8378062 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1237244 1) .g) (.mul
    (.rational 3627028 1) .v)) .g) (.mul (.rational 4673904 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 207662 1) .g) (.mul (.rational 885896 1) .v)) .g)
    (.mul (.rational 1836106 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19964 1) .g) (.mul (.rational 145152 1) .v)) .g) (.mul (.rational 501738 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 814 1) .g) (.mul (.rational
    14296 1) .v)) .g) (.mul (.rational 89098 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 612 1) .v) .g) (.mul (.rational 8786 1) (.pow .v 2))) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 145800 1) .f) (.add (.mul
    (.rational 838296 1) .g) (.mul (.rational 218592 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2117700 1) .g) (.mul (.rational 1202040 1) .v)) .g) (.mul (.rational 102168 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3097380 1) .g) (.mul (.rational
    2881896 1) .v)) .g) (.mul (.rational 569376 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2909406 1) .g) (.mul (.rational 3970560 1) .v)) .g) (.mul (.rational 1398960
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1838880 1) .g)
    (.mul (.rational 3494844 1) .v)) .g) (.mul (.rational 2008548 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 794994 1) .g) (.mul (.rational 2071296 1) .v))
    .g) (.mul (.rational 1885140 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 233094 1) .g) (.mul (.rational 849852 1) .v)) .g) (.mul (.rational 1224282 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 44492 1) .g) (.mul
    (.rational 243288 1) .v)) .g) (.mul (.rational 563952 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4990 1) .g) (.mul (.rational 47380 1) .v)) .g) (.mul
    (.rational 182886 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    248 1) .g) (.mul (.rational 5696 1) .v)) .g) (.mul (.rational 39698 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 316 1) .v) .g) (.mul (.rational 5116 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 290 1) (.pow .v 2)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2306

namespace FullHigh2307
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  12*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_1 e g v+24*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^1+6*SmallGap.ReducedLayers.high0_010_3 e g v+24*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_200_1 e g v+6*SmallGap.ReducedLayers.high1_200_2 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_110_3 e g v+12*SmallGap.ReducedLayers.high1_110_4 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_020_5 e g v+6*SmallGap.ReducedLayers.high1_020_6 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 12516 1) .e) (.add (.mul (.rational 104826 1)
    .f) (.add (.mul (.rational 127638 1) .g) (.mul (.rational 21180 1) .v)))) .e) (.add (.mul
    (.add (.mul (.rational 532698 1) .f) (.add (.mul (.rational 878554 1) .g) (.mul (.rational
    150864 1) .v))) .f) (.add (.mul (.add (.mul (.rational 525168 1) .g) (.mul (.rational 167208
    1) .v)) .g) (.mul (.rational 9440 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 1821828 1) .f) (.add (.mul (.rational 3776686 1) .g) (.mul (.rational 653604 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 3019576 1) .g) (.mul (.rational 972716 1) .v))
    .g) (.mul (.rational 59598 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1171622 1) .g) (.mul (.rational 483356 1) .v)) .g) (.mul (.rational 64692 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4406022 1) .f) (.add
    (.mul (.rational 10965712 1) .g) (.mul (.rational 1912356 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 10941112 1) .g) (.mul (.rational 3573360 1) .v)) .g) (.mul (.rational 227244 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5622684 1) .g) (.mul (.rational
    2385144 1) .v)) .g) (.mul (.rational 329932 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1577922 1) .g) (.mul (.rational 674176 1) .v)) .g) (.mul (.rational 149564 1)
    (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 7713432 1) .f) (.add (.mul (.rational 22344154 1) .g) (.mul (.rational 3973680 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 26635040 1) .g) (.mul (.rational 8968940 1) .v))
    .g) (.mul (.rational 583576 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    16965108 1) .g) (.mul (.rational 7578104 1) .v)) .g) (.mul (.rational 1068956 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6252028 1) .g) (.mul (.rational 2928888 1)
    .v)) .g) (.mul (.rational 660512 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1334614 1) .g) (.mul (.rational 486272 1) .v)) .g) (.mul (.rational 144556 1)
    (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 9837240 1) .f) (.add (.mul (.rational 32436192 1) .g) (.mul (.rational
    5985384 1) .v))) .f) (.add (.mul (.add (.mul (.rational 44834634 1) .g) (.mul (.rational
    15922272 1) .v)) .g) (.mul (.rational 1066224 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 33937824 1) .g) (.mul (.rational 16455116 1) .v)) .g) (.mul (.rational
    2400568 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 15395356 1) .g)
    (.mul (.rational 8268560 1) .v)) .g) (.mul (.rational 1954948 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4281424 1) .g) (.mul (.rational 2024688 1) .v))
    .g) (.mul (.rational 667508 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 707742 1) .g) (.mul (.rational 186512 1) .v)) .g) (.mul (.rational 66804 1) (.pow
    .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 9062664 1) .f) (.add (.mul (.rational 33447036 1) .g) (.mul
    (.rational 6519672 1) .v))) .f) (.add (.mul (.add (.mul (.rational 52456356 1) .g) (.mul
    (.rational 20081400 1) .v)) .g) (.mul (.rational 1409932 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 45837846 1) .g) (.mul (.rational 24781424 1) .v)) .g) (.mul
    (.rational 3848256 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 24566840
    1) .g) (.mul (.rational 15633844 1) .v)) .g) (.mul (.rational 4056072 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8350484 1) .g) (.mul (.rational 5303032
    1) .v)) .g) (.mul (.rational 2070356 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1784116 1) .g) (.mul (.rational 911576 1) .v)) .g) (.mul (.rational
    526320 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 225722 1)
    .g) (.mul (.rational 56656 1) .v)) .g) (.mul (.rational 63516 1) (.pow .v 2))) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 5877612 1) .f) (.add (.mul (.rational 23964120 1) .g) (.mul (.rational
    5008968 1) .v))) .f) (.add (.mul (.add (.mul (.rational 41945340 1) .g) (.mul (.rational
    17604960 1) .v)) .g) (.mul (.rational 1323624 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 41420440 1) .g) (.mul (.rational 25424840 1) .v)) .g) (.mul (.rational
    4318776 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 25490958 1) .g)
    (.mul (.rational 19524736 1) .v)) .g) (.mul (.rational 5739792 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10169656 1) .g) (.mul (.rational 8638676 1) .v))
    .g) (.mul (.rational 4059840 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2635420 1) .g) (.mul (.rational 2243760 1) .v)) .g) (.mul (.rational 1708924 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 427180 1) .g) (.mul
    (.rational 337824 1) .v)) .g) (.mul (.rational 469612 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 39130 1) .g) (.mul (.rational 28160 1) .v)) .g) (.mul
    (.rational 90884 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2545848 1) .f)
    (.add (.mul (.rational 11347572 1) .g) (.mul (.rational 2569920 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 21881136 1) .g) (.mul (.rational 10174392 1) .v)) .g) (.mul (.rational 831936
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 24022604 1) .g) (.mul
    (.rational 16885648 1) .v)) .g) (.mul (.rational 3188424 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 16623024 1) .g) (.mul (.rational 15343640 1) .v)) .g) (.mul
    (.rational 5169120 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7566994 1) .g) (.mul (.rational 8404880 1) .v)) .g) (.mul (.rational 4704048 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2284064 1) .g) (.mul (.rational
    2908604 1) .v)) .g) (.mul (.rational 2720088 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 445008 1) .g) (.mul (.rational 658008 1) .v)) .g) (.mul
    (.rational 1080812 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    51658 1) .g) (.mul (.rational 99760 1) .v)) .g) (.mul (.rational 303808 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2932 1) .g) (.mul (.rational 9668 1) .v))
    .g) (.mul (.rational 56596 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 660960 1) .f) (.add (.mul (.rational 3193344 1) .g) (.mul (.rational 787968 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 6713028 1) .g) (.mul (.rational 3473280 1) .v))
    .g) (.mul (.rational 311040 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8088840 1) .g) (.mul (.rational 6516504 1) .v)) .g) (.mul (.rational 1373760 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6192540 1) .g) (.mul (.rational 6834720 1)
    .v)) .g) (.mul (.rational 2630616 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3149960 1) .g) (.mul (.rational 4446640 1) .v)) .g) (.mul (.rational 2910024
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1076658 1) .g)
    (.mul (.rational 1897760 1) .v)) .g) (.mul (.rational 2100864 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 242104 1) .g) (.mul (.rational 552668 1) .v)) .g)
    (.mul (.rational 1057352 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 33414 1) .g) (.mul (.rational 111952 1) .v)) .g) (.mul (.rational 378004 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2382 1) .g) (.mul
    (.rational 15048 1) .v)) .g) (.mul (.rational 91988 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 50 1) .g) (.mul (.rational 1096 1) .v)) .g) (.mul
    (.rational 13548 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 77760 1) .f) (.add (.mul (.rational 404352 1) .g) (.mul (.rational 108864 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 918792 1) .g) (.mul (.rational 528768 1) .v)) .g) (.mul
    (.rational 51840 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1202460 1) .g)
    (.mul (.rational 1105536 1) .v)) .g) (.mul (.rational 259200 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1005480 1) .g) (.mul (.rational 1310760 1) .v)) .g) (.mul
    (.rational 570624 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    562408 1) .g) (.mul (.rational 981176 1) .v)) .g) (.mul (.rational 737016 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 213204 1) .g) (.mul (.rational
    491344 1) .v)) .g) (.mul (.rational 628628 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 53806 1) .g) (.mul (.rational 170768 1) .v)) .g) (.mul (.rational
    375696 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8484 1) .g)
    (.mul (.rational 41668 1) .v)) .g) (.mul (.rational 159944 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 714 1) .g) (.mul (.rational 6804 1) .v)) .g) (.mul
    (.rational 47076 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    20 1) .g) (.mul (.rational 628 1) .v)) .g) (.mul (.rational 8802 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 20 1) .v) .g) (.mul (.rational 880 1) (.pow .v
    2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2307

namespace FullHigh2308
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  10*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_100_2 e g v+6*SmallGap.ReducedLayers.high0_010_4 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_200_2 e g v+3*SmallGap.ReducedLayers.high1_110_4 e g
    v+3*SmallGap.ReducedLayers.high1_020_6 e g v)

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

end FullHigh2308

end
end SPR.N6.Tail.CoreEndpoint
