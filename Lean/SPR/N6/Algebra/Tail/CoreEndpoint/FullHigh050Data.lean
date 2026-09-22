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

namespace FullHigh0500
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c014 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^4+
    1*SmallGap.PolarCoefficientsHigh0.c023 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^3+
    1*SmallGap.PolarCoefficientsHigh0.c032 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh0.c041 e f g v*e^4*((e+f)*(e+f+g))^5*(f+g)+
    1*SmallGap.PolarCoefficientsHigh0.c050 e f g v*e^5*((e+f)*(e+f+g))^5

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_010_0 e g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_020_0 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 132 1) .e) (.add (.mul
    (.rational 1369 1) .f) (.add (.mul (.rational 1738 1) .g) (.mul (.rational 252 1) .v)))) .e)
    (.add (.mul (.add (.mul (.rational 8914 1) .f) (.add (.mul (.rational 15454 1) .g) (.mul
    (.rational 2486 1) .v))) .f) (.add (.mul (.add (.mul (.rational 9530 1) .g) (.mul (.rational
    3268 1) .v)) .g) (.mul (.rational 120 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.rational 40923 1) .f) (.add (.mul (.rational 89868 1) .g) (.mul (.rational 15342 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 74845 1) .g) (.mul (.rational 27640 1) .v)) .g)
    (.mul (.rational 1123 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 29352 1)
    .g) (.mul (.rational 17706 1) .v)) .g) (.mul (.rational 1532 1) (.pow .v 2))) .g))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 140964 1) .f) (.add (.mul (.rational
    374544 1) .g) (.mul (.rational 66504 1) .v))) .f) (.add (.mul (.add (.mul (.rational 392852 1)
    .g) (.mul (.rational 152096 1) .v)) .g) (.mul (.rational 6548 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 206648 1) .g) (.mul (.rational 131984 1) .v)) .g) (.mul
    (.rational 12288 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 56952 1)
    .g) (.mul (.rational 53952 1) .v)) .g) (.mul (.rational 8196 1) (.pow .v 2))) (.pow .g 2))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 378420 1) .f) (.add
    (.mul (.rational 1179528 1) .g) (.mul (.rational 215424 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1491700 1) .g) (.mul (.rational 596992 1) .v)) .g) (.mul (.rational 26704 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 984200 1) .g) (.mul (.rational 653720 1)
    .v)) .g) (.mul (.rational 63760 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 362110 1) .g) (.mul (.rational 359344 1) .v)) .g) (.mul (.rational 57796 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 73276 1) .g) (.mul
    (.rational 103600 1) .v)) .g) (.mul (.rational 24688 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 811512 1) .f)
    (.add (.mul (.rational 2902104 1) .g) (.mul (.rational 541416 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 4295576 1) .g) (.mul (.rational 1762064 1) .v)) .g) (.mul (.rational 81008 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3408024 1) .g) (.mul (.rational
    2329680 1) .v)) .g) (.mul (.rational 234736 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1567860 1) .g) (.mul (.rational 1609056 1) .v)) .g) (.mul (.rational 269064
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 422044 1) .g)
    (.mul (.rational 620620 1) .v)) .g) (.mul (.rational 154984 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 63588 1) .g) (.mul (.rational 131880 1) .v)) .g)
    (.mul (.rational 46872 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1413312 1) .f) (.add (.mul
    (.rational 5702412 1) .g) (.mul (.rational 1081608 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 9668020 1) .g) (.mul (.rational 4042144 1) .v)) .g) (.mul (.rational 189700 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 8960392 1) .g) (.mul (.rational
    6261472 1) .v)) .g) (.mul (.rational 646296 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4945962 1) .g) (.mul (.rational 5206992 1) .v)) .g) (.mul (.rational 895776
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1660484 1) .g)
    (.mul (.rational 2515100 1) .v)) .g) (.mul (.rational 649544 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 331814 1) .g) (.mul (.rational 712208 1) .v)) .g)
    (.mul (.rational 263438 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 36840 1) .g) (.mul (.rational 113148 1) .v)) .g) (.mul (.rational 58968 1) (.pow .v
    2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 2020824 1) .f) (.add (.mul (.rational 9079564 1) .g)
    (.mul (.rational 1745016 1) .v))) .f) (.add (.mul (.add (.mul (.rational 17346680 1) .g) (.mul
    (.rational 7362680 1) .v)) .g) (.mul (.rational 351104 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 18389176 1) .g) (.mul (.rational 13074568 1) .v)) .g) (.mul (.rational
    1374776 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11838008 1) .g)
    (.mul (.rational 12713792 1) .v)) .g) (.mul (.rational 2234960 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4759300 1) .g) (.mul (.rational 7376824 1) .v))
    .g) (.mul (.rational 1953952 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1183448 1) .g) (.mul (.rational 2608760 1) .v)) .g) (.mul (.rational 994112 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 173800 1) .g) (.mul
    (.rational 550480 1) .v)) .g) (.mul (.rational 297136 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 13652 1) .g) (.mul (.rational 64736 1) .v)) .g) (.mul
    (.rational 49952 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2388126 1) .f)
    (.add (.mul (.rational 11823500 1) .g) (.mul (.rational 2296632 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 25130846 1) .g) (.mul (.rational 10796448 1) .v)) .g) (.mul (.rational 521404
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 29988504 1) .g) (.mul
    (.rational 21618792 1) .v)) .g) (.mul (.rational 2306564 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 22053486 1) .g) (.mul (.rational 24064560 1) .v)) .g) (.mul
    (.rational 4302324 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10324860 1) .g) (.mul (.rational 16299192 1) .v)) .g) (.mul (.rational 4402944 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3068982 1) .g) (.mul
    (.rational 6909840 1) .v)) .g) (.mul (.rational 2694300 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 559632 1) .g) (.mul (.rational 1816416 1) .v)) .g)
    (.mul (.rational 1007244 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 57993 1) .g) (.mul (.rational 282864 1) .v)) .g) (.mul (.rational 225288 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2922 1) .g) (.mul
    (.rational 23652 1) .v)) .g) (.mul (.rational 28176 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 2339948 1) .f) (.add (.mul (.rational 12656228 1) .g) (.mul
    (.rational 2479620 1) .v))) .f) (.add (.mul (.add (.mul (.rational 29621020 1) .g) (.mul
    (.rational 12850552 1) .v)) .g) (.mul (.rational 626912 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 39290680 1) .g) (.mul (.rational 28642900 1) .v)) .g) (.mul
    (.rational 3091660 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 32492460
    1) .g) (.mul (.rational 35912448 1) .v)) .g) (.mul (.rational 6507072 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17357340 1) .g) (.mul (.rational 27807780
    1) .v)) .g) (.mul (.rational 7629336 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5999532 1) .g) (.mul (.rational 13739880 1) .v)) .g) (.mul (.rational
    5455296 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1305480 1)
    .g) (.mul (.rational 4321548 1) .v)) .g) (.mul (.rational 2447676 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 167610 1) .g) (.mul (.rational 836400 1)
    .v)) .g) (.mul (.rational 682920 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11110 1) .g) (.mul (.rational 92334 1) .v)) .g) (.mul (.rational 113256 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 274 1) .g) (.mul
    (.rational 4980 1) .v)) .g) (.mul (.rational 10128 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1901042 1) .f) (.add (.mul (.rational 11152544
    1) .g) (.mul (.rational 2200276 1) .v))) .f) (.add (.mul (.add (.mul (.rational 28498886 1)
    .g) (.mul (.rational 12461904 1) .v)) .g) (.mul (.rational 612898 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 41596984 1) .g) (.mul (.rational 30599140 1) .v)) .g) (.mul
    (.rational 3333616 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 38208170
    1) .g) (.mul (.rational 42668912 1) .v)) .g) (.mul (.rational 7814378 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22930908 1) .g) (.mul (.rational 37177140
    1) .v)) .g) (.mul (.rational 10326888 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9033486 1) .g) (.mul (.rational 20974800 1) .v)) .g) (.mul (.rational
    8448594 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2282544 1)
    .g) (.mul (.rational 7677516 1) .v)) .g) (.mul (.rational 4422264 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 349071 1) .g) (.mul (.rational 1774560 1)
    .v)) .g) (.mul (.rational 1477854 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 28600 1) .g) (.mul (.rational 242886 1) .v)) .g) (.mul (.rational 304944 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 925 1) .g) (.mul
    (.rational 17240 1) .v)) .g) (.mul (.rational 36039 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 458 1) .v) .g) (.mul (.rational 2092 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1276632 1) .f) (.add
    (.mul (.rational 8073912 1) .g) (.mul (.rational 1601808 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 22367800 1) .g) (.mul (.rational 9843184 1) .v)) .g) (.mul (.rational 487240 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 35627592 1) .g) (.mul (.rational
    26398632 1) .v)) .g) (.mul (.rational 2897336 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 35987952 1) .g) (.mul (.rational 40525056 1) .v)) .g) (.mul (.rational
    7485192 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 23971948
    1) .g) (.mul (.rational 39239200 1) .v)) .g) (.mul (.rational 11007568 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10600128 1) .g) (.mul (.rational 24887016
    1) .v)) .g) (.mul (.rational 10139976 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3049200 1) .g) (.mul (.rational 10389456 1) .v)) .g) (.mul (.rational
    6065136 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 540708 1)
    .g) (.mul (.rational 2790528 1) .v)) .g) (.mul (.rational 2360904 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 52668 1) .g) (.mul (.rational 455256 1) .v))
    .g) (.mul (.rational 582336 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2100 1) .g) (.mul (.rational 39960 1) .v)) .g) (.mul (.rational 85404 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1392 1) .v) .g) (.mul (.rational
    6528 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 188 1) (.pow .v 2)) (.pow .g
    10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 704004 1) .f)
    (.add (.mul (.rational 4774824 1) .g) (.mul (.rational 951456 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 14255300 1) .g) (.mul (.rational 6304640 1) .v)) .g) (.mul (.rational 313664
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 24606296 1) .g) (.mul
    (.rational 18336968 1) .v)) .g) (.mul (.rational 2024256 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 27110538 1) .g) (.mul (.rational 30730128 1) .v)) .g) (.mul
    (.rational 5714124 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    19847828 1) .g) (.mul (.rational 32736704 1) .v)) .g) (.mul (.rational 9254960 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9734186 1) .g) (.mul
    (.rational 23056880 1) .v)) .g) (.mul (.rational 9479624 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3140280 1) .g) (.mul (.rational 10810800 1) .v)) .g)
    (.mul (.rational 6378372 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 633234 1) .g) (.mul (.rational 3307872 1) .v)) .g) (.mul (.rational 2833824 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 71412 1) .g) (.mul
    (.rational 626160 1) .v)) .g) (.mul (.rational 812928 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3378 1) .g) (.mul (.rational 65376 1) .v)) .g) (.mul
    (.rational 142224 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2808
    1) .v) .g) (.mul (.rational 13452 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    508 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 315384 1) .f) (.add (.mul (.rational 2283576 1) .g) (.mul (.rational
    456552 1) .v))) .f) (.add (.mul (.add (.mul (.rational 7309336 1) .g) (.mul (.rational 3245008
    1) .v)) .g) (.mul (.rational 162064 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13592264 1) .g) (.mul (.rational 10173632 1) .v)) .g) (.mul (.rational 1128064 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16223116 1) .g) (.mul
    (.rational 18482464 1) .v)) .g) (.mul (.rational 3454360 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 12949300 1) .g) (.mul (.rational 21484372 1) .v)) .g)
    (.mul (.rational 6110104 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6976508 1) .g) (.mul (.rational 16638776 1) .v)) .g) (.mul (.rational 6888728 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2494624 1) .g) (.mul
    (.rational 8657572 1) .v)) .g) (.mul (.rational 5150068 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 563676 1) .g) (.mul (.rational 2972688 1) .v)) .g)
    (.mul (.rational 2571576 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 72204 1) .g) (.mul (.rational 640308 1) .v)) .g) (.mul (.rational 841008 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3948 1) .g) (.mul
    (.rational 77448 1) .v)) .g) (.mul (.rational 170856 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 3948 1) .v) .g) (.mul (.rational 19236 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 896 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 112914 1) .f) (.add (.mul
    (.rational 869346 1) .g) (.mul (.rational 174216 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2970020 1) .g) (.mul (.rational 1322144 1) .v)) .g) (.mul (.rational 66212 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5919960 1) .g) (.mul (.rational 4445040
    1) .v)) .g) (.mul (.rational 494440 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7610190 1) .g) (.mul (.rational 8702064 1) .v)) .g) (.mul (.rational 1632456 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6578572 1) .g) (.mul
    (.rational 10961860 1) .v)) .g) (.mul (.rational 3131128 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3862866 1) .g) (.mul (.rational 9259824 1) .v)) .g)
    (.mul (.rational 3853458 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1516680 1) .g) (.mul (.rational 5295444 1) .v)) .g) (.mul (.rational 3169320 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 379640 1) .g) (.mul
    (.rational 2016560 1) .v)) .g) (.mul (.rational 1757210 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 54450 1) .g) (.mul (.rational 487044 1) .v)) .g)
    (.mul (.rational 645336 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3378 1) .g) (.mul (.rational 66960 1) .v)) .g) (.mul (.rational 149298 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3948 1) .v) .g) (.mul (.rational
    19488 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1078 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    31524 1) .f) (.add (.mul (.rational 257178 1) .g) (.mul (.rational 51612 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 934132 1) .g) (.mul (.rational 416548 1) .v)) .g) (.mul
    (.rational 20896 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1987048 1) .g)
    (.mul (.rational 1495000 1) .v)) .g) (.mul (.rational 166632 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2737560 1) .g) (.mul (.rational 3137856 1) .v)) .g) (.mul
    (.rational 590064 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2548364 1) .g) (.mul (.rational 4258520 1) .v)) .g) (.mul (.rational 1219904 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1620248 1) .g) (.mul (.rational
    3897320 1) .v)) .g) (.mul (.rational 1627472 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 693192 1) .g) (.mul (.rational 2430288 1) .v)) .g) (.mul
    (.rational 1460592 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    190468 1) .g) (.mul (.rational 1016800 1) .v)) .g) (.mul (.rational 890512 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 30250 1) .g) (.mul (.rational
    272236 1) .v)) .g) (.mul (.rational 362944 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2100 1) .g) (.mul (.rational 41940 1) .v)) .g) (.mul (.rational
    94224 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2808 1) .v) .g)
    (.mul (.rational 13992 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 896 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 6609 1) .f) (.add (.mul (.rational 56954 1) .g) (.mul (.rational 11436 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 219185 1) .g) (.mul (.rational 97808 1) .v)) .g)
    (.mul (.rational 4910 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 495664 1)
    .g) (.mul (.rational 373264 1) .v)) .g) (.mul (.rational 41642 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 728714 1) .g) (.mul (.rational 836240 1) .v)) .g) (.mul
    (.rational 157436 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    726964 1) .g) (.mul (.rational 1216600 1) .v)) .g) (.mul (.rational 349024 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 497714 1) .g) (.mul (.rational
    1199408 1) .v)) .g) (.mul (.rational 501788 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 230560 1) .g) (.mul (.rational 810208 1) .v)) .g) (.mul
    (.rational 488068 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    69029 1) .g) (.mul (.rational 369584 1) .v)) .g) (.mul (.rational 324632 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 12034 1) .g) (.mul (.rational
    108700 1) .v)) .g) (.mul (.rational 145456 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 925 1) .g) (.mul (.rational 18560 1) .v)) .g) (.mul (.rational
    41894 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1392 1) .v) .g)
    (.mul (.rational 6978 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 508 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 978 1) .f) (.add (.mul (.rational 8878 1) .g) (.mul (.rational 1782 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 36090 1) .g) (.mul (.rational 16100 1) .v)) .g) (.mul
    (.rational 808 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 86472 1) .g)
    (.mul (.rational 65106 1) .v)) .g) (.mul (.rational 7262 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 135156 1) .g) (.mul (.rational 155088 1) .v)) .g) (.mul
    (.rational 29196 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    143892 1) .g) (.mul (.rational 240828 1) .v)) .g) (.mul (.rational 69096 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 105588 1) .g) (.mul (.rational
    254520 1) .v)) .g) (.mul (.rational 106512 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 52680 1) .g) (.mul (.rational 185220 1) .v)) .g) (.mul (.rational
    111636 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 17082 1)
    .g) (.mul (.rational 91536 1) .v)) .g) (.mul (.rational 80472 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3246 1) .g) (.mul (.rational 29358 1) .v)) .g)
    (.mul (.rational 39336 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 274 1) .g) (.mul (.rational 5508 1) .v)) .g) (.mul (.rational 12456 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 458 1) .v) .g) (.mul (.rational 2302
    1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 188 1) (.pow .v 2)) (.pow .g 10)))
    (.pow .f 6))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 91 1)
    .f) (.add (.mul (.rational 868 1) .g) (.mul (.rational 174 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 3717 1) .g) (.mul (.rational 1656 1) .v)) .g) (.mul (.rational 83 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9408 1) .g) (.mul (.rational 7074 1) .v))
    .g) (.mul (.rational 788 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    15582 1) .g) (.mul (.rational 17856 1) .v)) .g) (.mul (.rational 3357 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17640 1) .g) (.mul (.rational 29484 1)
    .v)) .g) (.mul (.rational 8448 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 13818 1) .g) (.mul (.rational 33264 1) .v)) .g) (.mul (.rational 13902 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7392 1) .g) (.mul
    (.rational 25956 1) .v)) .g) (.mul (.rational 15624 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2583 1) .g) (.mul (.rational 13824 1) .v)) .g) (.mul
    (.rational 12138 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    532 1) .g) (.mul (.rational 4806 1) .v)) .g) (.mul (.rational 6432 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 49 1) .g) (.mul (.rational 984 1) .v)) .g)
    (.mul (.rational 2223 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 90
    1) .v) .g) (.mul (.rational 452 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 41
    1) (.pow .v 2)) (.pow .g 10))) (.pow .f 7))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 4 1) .f) (.add (.mul (.rational 40 1) .g) (.mul (.rational 8 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 180 1) .g) (.mul (.rational 80 1) .v)) .g) (.mul
    (.rational 4 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 480 1) .g) (.mul
    (.rational 360 1) .v)) .g) (.mul (.rational 40 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 840 1) .g) (.mul (.rational 960 1) .v)) .g) (.mul (.rational 180 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1008 1) .g) (.mul
    (.rational 1680 1) .v)) .g) (.mul (.rational 480 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 840 1) .g) (.mul (.rational 2016 1) .v)) .g) (.mul
    (.rational 840 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 480
    1) .g) (.mul (.rational 1680 1) .v)) .g) (.mul (.rational 1008 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 180 1) .g) (.mul (.rational 960 1) .v)) .g) (.mul
    (.rational 840 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 40
    1) .g) (.mul (.rational 360 1) .v)) .g) (.mul (.rational 480 1) (.pow .v 2))) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4 1) .g) (.mul (.rational 80 1) .v)) .g) (.mul
    (.rational 180 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 8 1) .v)
    .g) (.mul (.rational 40 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 4 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 8))) (.pow .e 2))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0500

namespace FullHigh0501
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsHigh0.c014 e f g v*((e+f)*(e+f+g))^5*(f+g)^4+
    1*SmallGap.PolarCoefficientsHigh1.c014 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^4+
    4*SmallGap.PolarCoefficientsHigh0.c023 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^3+
    1*SmallGap.PolarCoefficientsHigh1.c023 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^3+
    6*SmallGap.PolarCoefficientsHigh0.c032 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh1.c032 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)^2+
    8*SmallGap.PolarCoefficientsHigh0.c041 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)+
    1*SmallGap.PolarCoefficientsHigh1.c041 e f g v*e^4*((e+f)*(e+f+g))^5*(f+g)+
    10*SmallGap.PolarCoefficientsHigh0.c050 e f g v*e^4*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh1.c050 e f g v*e^5*((e+f)*(e+f+g))^5

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(8*SmallGap.ReducedLayers.high0_010_0 e g v*e^7+1*SmallGap.ReducedLayers.high0_010_1
    e g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.high1_020_0 e g v*e^5+1*SmallGap.ReducedLayers.high1_020_1 e g
    v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1602 1) .e) (.add (.mul
    (.rational 16163 1) .f) (.add (.mul (.rational 20423 1) .g) (.mul (.rational 3038 1) .v))))
    .e) (.add (.mul (.add (.mul (.rational 102492 1) .f) (.add (.mul (.rational 176863 1) .g)
    (.mul (.rational 28988 1) .v))) .f) (.add (.mul (.add (.mul (.rational 108629 1) .g) (.mul
    (.rational 37774 1) .v)) .g) (.mul (.rational 1436 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 458408 1) .f) (.add (.mul (.rational 1002166 1) .g) (.mul
    (.rational 173340 1) .v))) .f) (.add (.mul (.add (.mul (.rational 831392 1) .g) (.mul
    (.rational 309596 1) .v)) .g) (.mul (.rational 12916 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 325190 1) .g) (.mul (.rational 196436 1) .v)) .g) (.mul (.rational
    17400 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1538088 1) .f) (.add (.mul (.rational 4069088 1) .g) (.mul (.rational 728718 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 4251938 1) .g) (.mul (.rational 1652834 1) .v)) .g) (.mul
    (.rational 72568 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2230636 1) .g)
    (.mul (.rational 1421518 1) .v)) .g) (.mul (.rational 134500 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 614306 1) .g) (.mul (.rational 575718 1) .v)) .g) (.mul
    (.rational 88380 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 4019212 1) .f) (.add (.mul (.rational 12475488 1) .g) (.mul
    (.rational 2289762 1) .v))) .f) (.add (.mul (.add (.mul (.rational 15719422 1) .g) (.mul
    (.rational 6295792 1) .v)) .g) (.mul (.rational 285598 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10343342 1) .g) (.mul (.rational 6836880 1) .v)) .g) (.mul (.rational
    673864 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3801476 1) .g) (.mul
    (.rational 3726276 1) .v)) .g) (.mul (.rational 602458 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 770476 1) .g) (.mul (.rational 1065554 1) .v)) .g)
    (.mul (.rational 253280 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8380384 1) .f) (.add (.mul (.rational
    29847944 1) .g) (.mul (.rational 5580054 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    44020570 1) .g) (.mul (.rational 18026062 1) .v)) .g) (.mul (.rational 836628 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 34828292 1) .g) (.mul (.rational 23648168
    1) .v)) .g) (.mul (.rational 2397310 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16000684 1) .g) (.mul (.rational 16204836 1) .v)) .g) (.mul (.rational 2713164 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4310810 1) .g) (.mul
    (.rational 6203190 1) .v)) .g) (.mul (.rational 1540562 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 652288 1) .g) (.mul (.rational 1309714 1) .v)) .g)
    (.mul (.rational 458584 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 14168586 1) .f) (.add (.mul
    (.rational 56940394 1) .g) (.mul (.rational 10798794 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 96193726 1) .g) (.mul (.rational 40074484 1) .v)) .g) (.mul (.rational 1891750 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 88898390 1) .g) (.mul (.rational
    61626250 1) .v)) .g) (.mul (.rational 6377882 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 48987890 1) .g) (.mul (.rational 50871828 1) .v)) .g) (.mul (.rational
    8736840 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 16449650
    1) .g) (.mul (.rational 24399046 1) .v)) .g) (.mul (.rational 6253366 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3297238 1) .g) (.mul (.rational 6866804
    1) .v)) .g) (.mul (.rational 2500442 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 368794 1) .g) (.mul (.rational 1086414 1) .v)) .g) (.mul (.rational
    551376 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 19627244 1) .f) (.add (.mul
    (.rational 87842378 1) .g) (.mul (.rational 16852290 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 167227892 1) .g) (.mul (.rational 70634486 1) .v)) .g) (.mul (.rational 3378336 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 176753148 1) .g) (.mul (.rational
    124574866 1) .v)) .g) (.mul (.rational 13099528 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 113559670 1) .g) (.mul (.rational 120302154 1) .v)) .g) (.mul
    (.rational 21067004 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 45635758 1) .g) (.mul (.rational 69336974 1) .v)) .g) (.mul (.rational 18201078 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11370156 1) .g) (.mul
    (.rational 24375302 1) .v)) .g) (.mul (.rational 9142084 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1679132 1) .g) (.mul (.rational 5121186 1) .v)) .g)
    (.mul (.rational 2695882 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 133340 1) .g) (.mul (.rational 601426 1) .v)) .g) (.mul (.rational 447160 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22415354 1) .f) (.add (.mul (.rational
    110554054 1) .g) (.mul (.rational 21410454 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    234148018 1) .g) (.mul (.rational 100023144 1) .v)) .g) (.mul (.rational 4834076 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 278549310 1) .g) (.mul (.rational 198996720
    1) .v)) .g) (.mul (.rational 21191638 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 204379224 1) .g) (.mul (.rational 220067772 1) .v)) .g) (.mul (.rational 39136542
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 95589060 1) .g)
    (.mul (.rational 148109136 1) .v)) .g) (.mul (.rational 39620070 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 28440258 1) .g) (.mul (.rational 62426700 1)
    .v)) .g) (.mul (.rational 23963520 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5206458 1) .g) (.mul (.rational 16335984 1) .v)) .g) (.mul (.rational 8849316
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 544041 1) .g)
    (.mul (.rational 2538348 1) .v)) .g) (.mul (.rational 1955030 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 27821 1) .g) (.mul (.rational 212648 1) .v)) .g)
    (.mul (.rational 241760 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 21160984 1) .f) (.add (.mul (.rational 114026718 1) .g) (.mul (.rational 22256806
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 265924516 1) .g) (.mul (.rational 114668554 1)
    .v)) .g) (.mul (.rational 5589012 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 351612404 1) .g) (.mul (.rational 254036640 1) .v)) .g) (.mul (.rational 27332448
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 290032512 1) .g) (.mul
    (.rational 316548672 1) .v)) .g) (.mul (.rational 57003606 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 154694694 1) .g) (.mul (.rational 243623688 1) .v))
    .g) (.mul (.rational 66175560 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 53471082 1) .g) (.mul (.rational 119694372 1) .v)) .g) (.mul (.rational 46817316 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 11663196 1) .g) (.mul
    (.rational 37469292 1) .v)) .g) (.mul (.rational 20771730 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1506432 1) .g) (.mul (.rational 7230600 1) .v)) .g)
    (.mul (.rational 5729794 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 100991 1) .g) (.mul (.rational 798406 1) .v)) .g) (.mul (.rational 940038 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2539 1) .g) (.mul
    (.rational 43304 1) .v)) .g) (.mul (.rational 83340 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 16503604 1) .f) (.add (.mul (.rational 96465044
    1) .g) (.mul (.rational 18953194 1) .v))) .f) (.add (.mul (.add (.mul (.rational 245632166 1)
    .g) (.mul (.rational 106756260 1) .v)) .g) (.mul (.rational 5239806 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 357349850 1) .g) (.mul (.rational 260634374 1) .v))
    .g) (.mul (.rational 28281110 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 327314218 1) .g) (.mul (.rational 361321092 1) .v)) .g) (.mul (.rational 65741588
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 196038150 1) .g)
    (.mul (.rational 312986520 1) .v)) .g) (.mul (.rational 86095944 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 77163576 1) .g) (.mul (.rational 175602168
    1) .v)) .g) (.mul (.rational 69755448 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19517532 1) .g) (.mul (.rational 63962304 1) .v)) .g) (.mul (.rational
    36139236 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2996394
    1) .g) (.mul (.rational 14731224 1) .v)) .g) (.mul (.rational 11950400 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 247504 1) .g) (.mul (.rational 2013866 1)
    .v)) .g) (.mul (.rational 2440654 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8122 1) .g) (.mul (.rational 143360 1) .v)) .g) (.mul (.rational 285882 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3846 1) .v) .g) (.mul
    (.rational 16504 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 10592696 1) .f) (.add (.mul (.rational 66754024 1) .g) (.mul (.rational
    13188474 1) .v))) .f) (.add (.mul (.add (.mul (.rational 184285790 1) .g) (.mul (.rational
    80627846 1) .v)) .g) (.mul (.rational 3980392 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 292548932 1) .g) (.mul (.rational 215080658 1) .v)) .g) (.mul (.rational
    23503428 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 294611086 1) .g)
    (.mul (.rational 328355610 1) .v)) .g) (.mul (.rational 60259716 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 195754790 1) .g) (.mul (.rational 316167852
    1) .v)) .g) (.mul (.rational 87889912 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 86421846 1) .g) (.mul (.rational 199434648 1) .v)) .g) (.mul (.rational
    80249484 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 24854712
    1) .g) (.mul (.rational 82838700 1) .v)) .g) (.mul (.rational 47551644 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4416024 1) .g) (.mul (.rational 22158156
    1) .v)) .g) (.mul (.rational 18329920 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 432402 1) .g) (.mul (.rational 3606196 1) .v)) .g) (.mul (.rational
    4477282 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 17418 1)
    .g) (.mul (.rational 316716 1) .v)) .g) (.mul (.rational 650736 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 11096 1) .v) .g) (.mul (.rational 49402 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1420 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5553564 1) .f) (.add (.mul
    (.rational 37537208 1) .g) (.mul (.rational 7450710 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 111682058 1) .g) (.mul (.rational 49136384 1) .v)) .g) (.mul (.rational 2437474 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 192124426 1) .g) (.mul (.rational
    142201384 1) .v)) .g) (.mul (.rational 15631096 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 210998564 1) .g) (.mul (.rational 237076764 1) .v)) .g) (.mul
    (.rational 43821846 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 154031108 1) .g) (.mul (.rational 251219122 1) .v)) .g) (.mul (.rational 70451084
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 75371632 1) .g)
    (.mul (.rational 175998564 1) .v)) .g) (.mul (.rational 71585738 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 24283560 1) .g) (.mul (.rational 82100340 1)
    .v)) .g) (.mul (.rational 47756142 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4897938 1) .g) (.mul (.rational 25006440 1) .v)) .g) (.mul (.rational
    21027188 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 553818 1)
    .g) (.mul (.rational 4717256 1) .v)) .g) (.mul (.rational 5976630 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 26364 1) .g) (.mul (.rational 491832 1) .v))
    .g) (.mul (.rational 1036314 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 21172 1) .v) .g) (.mul (.rational 97264 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 3656 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 2350144 1) .f) (.add (.mul (.rational 16960944 1) .g)
    (.mul (.rational 3379554 1) .v))) .f) (.add (.mul (.add (.mul (.rational 54108022 1) .g) (.mul
    (.rational 23916586 1) .v)) .g) (.mul (.rational 1191148 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 100280012 1) .g) (.mul (.rational 74639376 1) .v)) .g) (.mul
    (.rational 8244586 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    119293580 1) .g) (.mul (.rational 134946420 1) .v)) .g) (.mul (.rational 25092844 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 94920406 1) .g) (.mul
    (.rational 156081254 1) .v)) .g) (.mul (.rational 44091362 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 50994916 1) .g) (.mul (.rational 120260938 1) .v))
    .g) (.mul (.rational 49354928 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18194000 1) .g) (.mul (.rational 62255760 1) .v)) .g) (.mul (.rational 36614494 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4106004 1) .g) (.mul
    (.rational 21272352 1) .v)) .g) (.mul (.rational 18132898 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 526158 1) .g) (.mul (.rational 4562524 1) .v)) .g)
    (.mul (.rational 5879342 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 28854 1) .g) (.mul (.rational 550200 1) .v)) .g) (.mul (.rational 1184064 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 28028 1) .v) .g) (.mul (.rational
    132216 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 6118 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    788515 1) .f) (.add (.mul (.rational 6052421 1) .g) (.mul (.rational 1209726 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 20611930 1) .g) (.mul (.rational 9145132 1) .v)) .g) (.mul
    (.rational 456930 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 40950482 1)
    .g) (.mul (.rational 30618950 1) .v)) .g) (.mul (.rational 3395494 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 52467646 1) .g) (.mul (.rational 59680236 1) .v)) .g)
    (.mul (.rational 11151168 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 45204950 1) .g) (.mul (.rational 74830854 1) .v)) .g) (.mul (.rational 21264950 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 26458726 1) .g) (.mul
    (.rational 62906452 1) .v)) .g) (.mul (.rational 26006218 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10357970 1) .g) (.mul (.rational 35795382 1) .v)) .g)
    (.mul (.rational 21243264 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2586427 1) .g) (.mul (.rational 13563060 1) .v)) .g) (.mul (.rational 11691484 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 370401 1) .g) (.mul
    (.rational 3260036 1) .v)) .g) (.mul (.rational 4259918 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 22980 1) .g) (.mul (.rational 446304 1) .v)) .g)
    (.mul (.rational 977400 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    26236 1) .v) .g) (.mul (.rational 126518 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 6944 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 204258 1) .f) (.add (.mul (.rational 1661773 1) .g)
    (.mul (.rational 332928 1) .v))) .f) (.add (.mul (.add (.mul (.rational 6018379 1) .g) (.mul
    (.rational 2677936 1) .v)) .g) (.mul (.rational 134128 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 12762836 1) .g) (.mul (.rational 9576430 1) .v)) .g) (.mul (.rational
    1065200 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 17527034 1) .g)
    (.mul (.rational 20022006 1) .v)) .g) (.mul (.rational 3755124 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 16261490 1) .g) (.mul (.rational 27059830 1) .v))
    .g) (.mul (.rational 7725382 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10303888 1) .g) (.mul (.rational 24654854 1) .v)) .g) (.mul (.rational 10251164 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4393324 1) .g) (.mul
    (.rational 15301986 1) .v)) .g) (.mul (.rational 9145962 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1203196 1) .g) (.mul (.rational 6370610 1) .v)) .g)
    (.mul (.rational 5540360 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 190529 1) .g) (.mul (.rational 1697026 1) .v)) .g) (.mul (.rational 2242234 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 13197 1) .g) (.mul
    (.rational 260130 1) .v)) .g) (.mul (.rational 577692 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 17336 1) .v) .g) (.mul (.rational 85094 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 5404 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 39227 1) .f) (.add (.mul
    (.rational 337243 1) .g) (.mul (.rational 67668 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1294568 1) .g) (.mul (.rational 577136 1) .v)) .g) (.mul (.rational 28953 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2919558 1) .g) (.mul (.rational 2195902
    1) .v)) .g) (.mul (.rational 244753 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4279744 1) .g) (.mul (.rational 4903524 1) .v)) .g) (.mul (.rational 922034 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4256140 1) .g) (.mul
    (.rational 7108556 1) .v)) .g) (.mul (.rational 2036046 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2904258 1) .g) (.mul (.rational 6981044 1) .v)) .g)
    (.mul (.rational 2914492 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1340618 1) .g) (.mul (.rational 4695936 1) .v)) .g) (.mul (.rational 2821168 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 399893 1) .g) (.mul
    (.rational 2132332 1) .v)) .g) (.mul (.rational 1866438 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 69449 1) .g) (.mul (.rational 624064 1) .v)) .g)
    (.mul (.rational 831314 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5318 1) .g) (.mul (.rational 105996 1) .v)) .g) (.mul (.rational 237851 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 7906 1) .v) .g) (.mul (.rational
    39327 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 2840 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5228 1) .f) (.add (.mul (.rational 47371 1) .g) (.mul (.rational 9510 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 192183 1) .g) (.mul (.rational 85744 1) .v)) .g) (.mul (.rational 4304
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 459468 1) .g) (.mul (.rational
    345954 1) .v)) .g) (.mul (.rational 38593 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 716436 1) .g) (.mul (.rational 822048 1) .v)) .g) (.mul (.rational 154761 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 760746 1) .g) (.mul
    (.rational 1273020 1) .v)) .g) (.mul (.rational 365220 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 556626 1) .g) (.mul (.rational 1341312 1) .v)) .g)
    (.mul (.rational 561204 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 276828 1) .g) (.mul (.rational 972804 1) .v)) .g) (.mul (.rational 586110 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 89448 1) .g) (.mul
    (.rational 478944 1) .v)) .g) (.mul (.rational 420798 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16931 1) .g) (.mul (.rational 152958 1) .v)) .g) (.mul
    (.rational 204756 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1423 1) .g) (.mul (.rational 28560 1) .v)) .g) (.mul (.rational 64500 1) (.pow .v 2))) (.pow
    .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2362 1) .v) .g) (.mul (.rational 11849 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 961 1) (.pow .v 2)) (.pow .g 10))) (.pow .f
    6))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 428 1) .f) (.add
    (.mul (.rational 4078 1) .g) (.mul (.rational 818 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 17442 1) .g) (.mul (.rational 7776 1) .v)) .g) (.mul (.rational 390 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 44088 1) .g) (.mul (.rational 33174 1) .v))
    .g) (.mul (.rational 3698 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    72912 1) .g) (.mul (.rational 83616 1) .v)) .g) (.mul (.rational 15732 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 82404 1) .g) (.mul (.rational 137844 1)
    .v)) .g) (.mul (.rational 39528 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 64428 1) .g) (.mul (.rational 155232 1) .v)) .g) (.mul (.rational 64932 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 34392 1) .g) (.mul
    (.rational 120876 1) .v)) .g) (.mul (.rational 72828 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11988 1) .g) (.mul (.rational 64224 1) .v)) .g) (.mul
    (.rational 56448 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2462 1) .g) (.mul (.rational 22266 1) .v)) .g) (.mul (.rational 29832 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 226 1) .g) (.mul (.rational 4544 1) .v))
    .g) (.mul (.rational 10278 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 414 1) .v) .g) (.mul (.rational 2082 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 188 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 7))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 16 1) .f) (.add (.mul (.rational 160 1) .g) (.mul
    (.rational 32 1) .v))) .f) (.add (.mul (.add (.mul (.rational 720 1) .g) (.mul (.rational 320
    1) .v)) .g) (.mul (.rational 16 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1920 1) .g) (.mul (.rational 1440 1) .v)) .g) (.mul (.rational 160 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3360 1) .g) (.mul (.rational 3840 1) .v)) .g) (.mul
    (.rational 720 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4032 1) .g) (.mul (.rational 6720 1) .v)) .g) (.mul (.rational 1920 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3360 1) .g) (.mul (.rational 8064 1) .v))
    .g) (.mul (.rational 3360 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1920 1) .g) (.mul (.rational 6720 1) .v)) .g) (.mul (.rational 4032 1) (.pow .v
    2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 720 1) .g) (.mul (.rational
    3840 1) .v)) .g) (.mul (.rational 3360 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 160 1) .g) (.mul (.rational 1440 1) .v)) .g) (.mul (.rational 1920 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 16 1) .g) (.mul
    (.rational 320 1) .v)) .g) (.mul (.rational 720 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add
    (.mul (.mul (.rational 32 1) .v) .g) (.mul (.rational 160 1) (.pow .v 2))) (.pow .g 9))) .f)
    (.mul (.mul (.rational 16 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 8))) .e)

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0501

namespace FullHigh0502
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsHigh1.c014 e f g v*((e+f)*(e+f+g))^5*(f+g)^4+
    1*SmallGap.PolarCoefficientsHigh2.c014 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^4+
    4*SmallGap.PolarCoefficientsHigh0.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    4*SmallGap.PolarCoefficientsHigh1.c023 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^3+
    1*SmallGap.PolarCoefficientsHigh2.c023 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^3+
    12*SmallGap.PolarCoefficientsHigh0.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    6*SmallGap.PolarCoefficientsHigh1.c032 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh2.c032 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)^2+
    24*SmallGap.PolarCoefficientsHigh0.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    8*SmallGap.PolarCoefficientsHigh1.c041 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)+
    1*SmallGap.PolarCoefficientsHigh2.c041 e f g v*e^4*((e+f)*(e+f+g))^5*(f+g)+
    40*SmallGap.PolarCoefficientsHigh0.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsHigh1.c050 e f g v*e^4*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh2.c050 e f g v*e^5*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh0.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    1*SmallGap.PolarCoefficientsHigh0.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsHigh0.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh0.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e^4*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(28*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^6+8*SmallGap.ReducedLayers.high0_010_1 e g v*e^7+1*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.high1_020_0 e g v*e^4+6*SmallGap.ReducedLayers.high1_020_1 e
    g v*e^5+1*SmallGap.ReducedLayers.high1_020_2 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8922 1) .e) (.add (.mul
    (.rational 87702 1) .f) (.add (.mul (.rational 110307 1) .g) (.mul (.rational 16794 1) .v))))
    .e) (.add (.mul (.add (.mul (.rational 541842 1) .f) (.add (.mul (.rational 930604 1) .g)
    (.mul (.rational 155112 1) .v))) .f) (.add (.mul (.add (.mul (.rational 569258 1) .g) (.mul
    (.rational 200172 1) .v)) .g) (.mul (.rational 7880 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 2359946 1) .f) (.add (.mul (.rational 5135035 1) .g) (.mul
    (.rational 898516 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4242432 1) .g) (.mul
    (.rational 1589202 1) .v)) .g) (.mul (.rational 68157 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1654659 1) .g) (.mul (.rational 997216 1) .v)) .g) (.mul (.rational
    90552 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    7702997 1) .f) (.add (.mul (.rational 20284015 1) .g) (.mul (.rational 3659526 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 21108181 1) .g) (.mul (.rational 8222068 1) .v)) .g) (.mul
    (.rational 368778 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 11040099 1)
    .g) (.mul (.rational 6997660 1) .v)) .g) (.mul (.rational 674020 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3037118 1) .g) (.mul (.rational 2802388 1) .v)) .g)
    (.mul (.rational 435316 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 19552874 1) .f) (.add (.mul (.rational 60413271 1)
    .g) (.mul (.rational 11134296 1) .v))) .f) (.add (.mul (.add (.mul (.rational 75809838 1) .g)
    (.mul (.rational 30338460 1) .v)) .g) (.mul (.rational 1398576 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 49725108 1) .g) (.mul (.rational 32623946 1) .v)) .g) (.mul
    (.rational 3255696 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 18247968
    1) .g) (.mul (.rational 17597538 1) .v)) .g) (.mul (.rational 2864198 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3702943 1) .g) (.mul (.rational 4980298
    1) .v)) .g) (.mul (.rational 1181282 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 39526479 1) .f) (.add (.mul
    (.rational 140142245 1) .g) (.mul (.rational 26244100 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 205839658 1) .g) (.mul (.rational 84055746 1) .v)) .g) (.mul (.rational 3947550 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 162324308 1) .g) (.mul (.rational
    109264168 1) .v)) .g) (.mul (.rational 11167823 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 74436435 1) .g) (.mul (.rational 74159798 1) .v)) .g) (.mul (.rational
    12452531 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 20063201
    1) .g) (.mul (.rational 28119766 1) .v)) .g) (.mul (.rational 6949701 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3048012 1) .g) (.mul (.rational 5886608
    1) .v)) .g) (.mul (.rational 2028353 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 64633598 1) .f)
    (.add (.mul (.rational 258586631 1) .g) (.mul (.rational 49039750 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 435062296 1) .g) (.mul (.rational 180518038 1) .v)) .g) (.mul
    (.rational 8593495 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 400708377 1)
    .g) (.mul (.rational 275228652 1) .v)) .g) (.mul (.rational 28627432 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 220333946 1) .g) (.mul (.rational 225193868 1) .v))
    .g) (.mul (.rational 38683096 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 73970099 1) .g) (.mul (.rational 107064596 1) .v)) .g) (.mul (.rational 27260034 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 14868484 1) .g) (.mul
    (.rational 29893560 1) .v)) .g) (.mul (.rational 10711493 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1675213 1) .g) (.mul (.rational 4701962 1) .v)) .g)
    (.mul (.rational 2317592 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 86341281 1) .f)
    (.add (.mul (.rational 384715123 1) .g) (.mul (.rational 73722662 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 729390271 1) .g) (.mul (.rational 306650132 1) .v)) .g) (.mul
    (.rational 14752142 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 768242321
    1) .g) (.mul (.rational 536507514 1) .v)) .g) (.mul (.rational 56568684 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 492359659 1) .g) (.mul (.rational 513859014 1)
    .v)) .g) (.mul (.rational 89843720 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 197700713 1) .g) (.mul (.rational 293769414 1) .v)) .g) (.mul (.rational
    76541059 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 49342635
    1) .g) (.mul (.rational 102509394 1) .v)) .g) (.mul (.rational 37853585 1) (.pow .v 2))) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7327517 1) .g) (.mul (.rational 21414152
    1) .v)) .g) (.mul (.rational 10977625 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 588404 1) .g) (.mul (.rational 2509076 1) .v)) .g) (.mul (.rational
    1790167 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 94750474 1) .f) (.add
    (.mul (.rational 465274277 1) .g) (.mul (.rational 89955216 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 981377996 1) .g) (.mul (.rational 417240308 1) .v)) .g) (.mul (.rational
    20244768 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1163259774 1) .g)
    (.mul (.rational 823907688 1) .v)) .g) (.mul (.rational 87842816 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 851161410 1) .g) (.mul (.rational 904190208 1) .v))
    .g) (.mul (.rational 160387221 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 397541304 1) .g) (.mul (.rational 603944028 1) .v)) .g) (.mul (.rational
    160332282 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    118367992 1) .g) (.mul (.rational 252781548 1) .v)) .g) (.mul (.rational 95644284 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 21755586 1) .g) (.mul
    (.rational 65778778 1) .v)) .g) (.mul (.rational 34802466 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2293274 1) .g) (.mul (.rational 10191930 1) .v)) .g)
    (.mul (.rational 7574145 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 119118 1) .g) (.mul (.rational 855628 1) .v)) .g) (.mul (.rational 923866 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 85579923 1) .f) (.add (.mul
    (.rational 459161989 1) .g) (.mul (.rational 89466520 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1066412424 1) .g) (.mul (.rational 457851702 1) .v)) .g) (.mul (.rational 22377058
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1404784546 1) .g) (.mul
    (.rational 1007253082 1) .v)) .g) (.mul (.rational 108408487 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1155235416 1) .g) (.mul (.rational 1246167156 1) .v)) .g)
    (.mul (.rational 223764981 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 614986260 1) .g) (.mul (.rational 952307916 1) .v)) .g) (.mul (.rational 256839534
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 212538620 1) .g)
    (.mul (.rational 464783676 1) .v)) .g) (.mul (.rational 179485362 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 46475724 1) .g) (.mul (.rational 144695474
    1) .v)) .g) (.mul (.rational 78599976 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6041983 1) .g) (.mul (.rational 27830026 1) .v)) .g) (.mul (.rational
    21395006 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 410083 1)
    .g) (.mul (.rational 3075038 1) .v)) .g) (.mul (.rational 3466903 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10526 1) .g) (.mul (.rational 168028 1) .v))
    .g) (.mul (.rational 304567 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 63523252 1) .f) (.add (.mul (.rational 369722639 1) .g) (.mul
    (.rational 72541898 1) .v))) .f) (.add (.mul (.add (.mul (.rational 937558064 1) .g) (.mul
    (.rational 406048478 1) .v)) .g) (.mul (.rational 19971963 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1358747709 1) .g) (.mul (.rational 984879830 1) .v)) .g) (.mul
    (.rational 106878662 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1240430450 1) .g) (.mul (.rational 1356263906 1) .v)) .g) (.mul (.rational 246138717 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 741130020 1) .g) (.mul
    (.rational 1167041772 1) .v)) .g) (.mul (.rational 319089072 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 291421648 1) .g) (.mul (.rational 650647704 1)
    .v)) .g) (.mul (.rational 255714606 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 73795254 1) .g) (.mul (.rational 235704238 1) .v)) .g) (.mul (.rational
    130957722 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 11379224
    1) .g) (.mul (.rational 54082426 1) .v)) .g) (.mul (.rational 42796555 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 948660 1) .g) (.mul (.rational 7388908 1)
    .v)) .g) (.mul (.rational 8643306 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 31644 1) .g) (.mul (.rational 528506 1) .v)) .g) (.mul (.rational 1003526 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 14374 1) .v) .g) (.mul
    (.rational 57748 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 38554295 1) .f) (.add (.mul (.rational 241953205 1) .g) (.mul
    (.rational 47772634 1) .v))) .f) (.add (.mul (.add (.mul (.rational 665209323 1) .g) (.mul
    (.rational 290363940 1) .v)) .g) (.mul (.rational 14363910 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1051859877 1) .g) (.mul (.rational 769884256 1) .v)) .g) (.mul
    (.rational 84165972 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1055514828 1) .g) (.mul (.rational 1168052064 1) .v)) .g) (.mul (.rational 213993956 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 699308560 1) .g) (.mul
    (.rational 1117679662 1) .v)) .g) (.mul (.rational 309303528 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 308167502 1) .g) (.mul (.rational 700769544 1)
    .v)) .g) (.mul (.rational 279688026 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 88615518 1) .g) (.mul (.rational 289502066 1) .v)) .g) (.mul (.rational
    164039904 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 15783028
    1) .g) (.mul (.rational 77117826 1) .v)) .g) (.mul (.rational 62573808 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1555228 1) .g) (.mul (.rational 12528734
    1) .v)) .g) (.mul (.rational 15130889 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 63412 1) .g) (.mul (.rational 1102986 1) .v)) .g) (.mul (.rational
    2180659 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 39008 1) .v) .g)
    (.mul (.rational 164823 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 4757 1)
    (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 18960374 1) .f) (.add (.mul (.rational 127635061 1) .g) (.mul (.rational 25346256
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 378198466 1) .g) (.mul (.rational 166260748 1)
    .v)) .g) (.mul (.rational 8267868 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 648013080 1) .g) (.mul (.rational 478470010 1) .v)) .g) (.mul (.rational 52658572
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 708996620 1) .g) (.mul
    (.rational 793089874 1) .v)) .g) (.mul (.rational 146538160 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 515855799 1) .g) (.mul (.rational 835471290 1) .v))
    .g) (.mul (.rational 233708942 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 251775498 1) .g) (.mul (.rational 581934542 1) .v)) .g) (.mul (.rational
    235449030 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 81010284
    1) .g) (.mul (.rational 270002650 1) .v)) .g) (.mul (.rational 155659236 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 16349552 1) .g) (.mul (.rational
    81869498 1) .v)) .g) (.mul (.rational 67902727 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1855328 1) .g) (.mul (.rational 15401146 1) .v)) .g) (.mul
    (.rational 19125080 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 89042 1) .g) (.mul (.rational 1606218 1) .v)) .g) (.mul (.rational 3289622 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 69528 1) .v) .g) (.mul (.rational
    307130 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 11553 1) (.pow .v 2)) (.pow
    .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    7449173 1) .f) (.add (.mul (.rational 53549511 1) .g) (.mul (.rational 10689924 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 170147754 1) .g) (.mul (.rational 75281502 1) .v)) .g)
    (.mul (.rational 3761682 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    314074536 1) .g) (.mul (.rational 233734556 1) .v)) .g) (.mul (.rational 25880877 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 372157611 1) .g) (.mul (.rational
    420328542 1) .v)) .g) (.mul (.rational 78260669 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 295028881 1) .g) (.mul (.rational 483489526 1) .v)) .g) (.mul
    (.rational 136556585 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 157990400 1) .g) (.mul (.rational 370475200 1) .v)) .g) (.mul (.rational 151718933
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 56232310 1) .g)
    (.mul (.rational 190762620 1) .v)) .g) (.mul (.rational 111665796 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 12676930 1) .g) (.mul (.rational 64869878 1)
    .v)) .g) (.mul (.rational 54848036 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1626202 1) .g) (.mul (.rational 13862330 1) .v)) .g) (.mul (.rational
    17638005 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 89572 1)
    .g) (.mul (.rational 1669038 1) .v)) .g) (.mul (.rational 3525199 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 85204 1) .v) .g) (.mul (.rational 391329 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 18073 1) (.pow .v 2)) (.pow .g 10))) (.pow .f
    2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2289237 1) .f)
    (.add (.mul (.rational 17505734 1) .g) (.mul (.rational 3511114 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 59385640 1) .g) (.mul (.rational 26426298 1) .v)) .g) (.mul (.rational
    1326273 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 117513983 1) .g) (.mul
    (.rational 88067176 1) .v)) .g) (.mul (.rational 9805076 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 149958558 1) .g) (.mul (.rational 170815208 1) .v)) .g) (.mul
    (.rational 32022278 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 128687699 1) .g) (.mul (.rational 213087988 1) .v)) .g) (.mul (.rational 60700122
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 75037444 1) .g)
    (.mul (.rational 178195424 1) .v)) .g) (.mul (.rational 73756781 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 29277165 1) .g) (.mul (.rational 100866868
    1) .v)) .g) (.mul (.rational 59835826 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7291933 1) .g) (.mul (.rational 38027216 1) .v)) .g) (.mul (.rational
    32694471 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1043003
    1) .g) (.mul (.rational 9099898 1) .v)) .g) (.mul (.rational 11824918 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 64772 1) .g) (.mul (.rational 1241838 1)
    .v)) .g) (.mul (.rational 2693702 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 72940 1) .v) .g) (.mul (.rational 346506 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 18943 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 533225 1) .f) (.add (.mul (.rational
    4322951 1) .g) (.mul (.rational 870592 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    15598555 1) .g) (.mul (.rational 6975670 1) .v)) .g) (.mul (.rational 351442 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 32951175 1) .g) (.mul (.rational 24842634 1) .v))
    .g) (.mul (.rational 2779132 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 45069515 1) .g) (.mul (.rational 51712358 1) .v)) .g) (.mul (.rational 9751936 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 41642369 1) .g) (.mul
    (.rational 69565106 1) .v)) .g) (.mul (.rational 19962171 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 26275971 1) .g) (.mul (.rational 63073386 1) .v)) .g)
    (.mul (.rational 26345453 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11157565 1) .g) (.mul (.rational 38948590 1) .v)) .g) (.mul (.rational 23368295 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3044080 1) .g) (.mul
    (.rational 16132354 1) .v)) .g) (.mul (.rational 14067957 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 480500 1) .g) (.mul (.rational 4276038 1) .v)) .g)
    (.mul (.rational 5656321 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 33214 1) .g) (.mul (.rational 652536 1) .v)) .g) (.mul (.rational 1447621 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 43344 1) .v) .g) (.mul (.rational
    211873 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 13383 1) (.pow .v 2)) (.pow
    .g 10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    89664 1) .f) (.add (.mul (.rational 768428 1) .g) (.mul (.rational 155246 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 2939785 1) .g) (.mul (.rational 1319774 1) .v)) .g) (.mul
    (.rational 66695 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6605954 1) .g)
    (.mul (.rational 5003880 1) .v)) .g) (.mul (.rational 561909 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9646210 1) .g) (.mul (.rational 11131500 1) .v)) .g) (.mul
    (.rational 2109077 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9553586 1) .g) (.mul (.rational 16071216 1) .v)) .g) (.mul (.rational 4638694 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6490708 1) .g) (.mul (.rational
    15713544 1) .v)) .g) (.mul (.rational 6611108 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2982470 1) .g) (.mul (.rational 10520244 1) .v)) .g) (.mul
    (.rational 6368992 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    885454 1) .g) (.mul (.rational 4753140 1) .v)) .g) (.mul (.rational 4191824 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 153050 1) .g) (.mul (.rational
    1383810 1) .v)) .g) (.mul (.rational 1856602 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 11667 1) .g) (.mul (.rational 233786 1) .v)) .g) (.mul (.rational
    528029 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 17348 1) .v) .g)
    (.mul (.rational 86763 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 6227 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 10039 1) .f) (.add (.mul (.rational 90723 1) .g) (.mul (.rational 18360 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 367002 1) .g) (.mul (.rational 165118 1) .v)) .g)
    (.mul (.rational 8358 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 874668 1)
    .g) (.mul (.rational 664362 1) .v)) .g) (.mul (.rational 74765 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1359162 1) .g) (.mul (.rational 1573848 1) .v)) .g) (.mul
    (.rational 299025 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1437786 1) .g) (.mul (.rational 2429112 1) .v)) .g) (.mul (.rational 703620 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1047648 1) .g) (.mul (.rational
    2549988 1) .v)) .g) (.mul (.rational 1077720 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 518652 1) .g) (.mul (.rational 1841868 1) .v)) .g) (.mul
    (.rational 1121526 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    166743 1) .g) (.mul (.rational 902712 1) .v)) .g) (.mul (.rational 801990 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 31387 1) .g) (.mul (.rational
    286848 1) .v)) .g) (.mul (.rational 388500 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2622 1) .g) (.mul (.rational 53262 1) .v)) .g) (.mul (.rational
    121770 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 4378 1) .v) .g)
    (.mul (.rational 22245 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1793 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 6))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 642 1) .f) (.add (.mul (.rational 6106 1) .g) (.mul (.rational 1234 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 26064 1) .g) (.mul (.rational 11712 1) .v)) .g) (.mul
    (.rational 592 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 65736 1) .g)
    (.mul (.rational 49878 1) .v)) .g) (.mul (.rational 5606 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 108444 1) .g) (.mul (.rational 125472 1) .v)) .g) (.mul
    (.rational 23814 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    122220 1) .g) (.mul (.rational 206388 1) .v)) .g) (.mul (.rational 59736 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 95256 1) .g) (.mul (.rational
    231840 1) .v)) .g) (.mul (.rational 97944 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 50664 1) .g) (.mul (.rational 180012 1) .v)) .g) (.mul (.rational
    109620 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 17586 1)
    .g) (.mul (.rational 95328 1) .v)) .g) (.mul (.rational 84756 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3594 1) .g) (.mul (.rational 32922 1) .v)) .g)
    (.mul (.rational 44664 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 328 1) .g) (.mul (.rational 6688 1) .v)) .g) (.mul (.rational 15336 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 606 1) .v) .g) (.mul (.rational 3094
    1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 278 1) (.pow .v 2)) (.pow .g 10)))
    (.pow .f 7))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16 1)
    .f) (.add (.mul (.rational 160 1) .g) (.mul (.rational 32 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 720 1) .g) (.mul (.rational 320 1) .v)) .g) (.mul (.rational 16 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1920 1) .g) (.mul (.rational 1440 1) .v)) .g)
    (.mul (.rational 160 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3360
    1) .g) (.mul (.rational 3840 1) .v)) .g) (.mul (.rational 720 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4032 1) .g) (.mul (.rational 6720 1) .v)) .g)
    (.mul (.rational 1920 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3360 1) .g) (.mul (.rational 8064 1) .v)) .g) (.mul (.rational 3360 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1920 1) .g) (.mul (.rational
    6720 1) .v)) .g) (.mul (.rational 4032 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 720 1) .g) (.mul (.rational 3840 1) .v)) .g) (.mul (.rational 3360 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 160 1) .g) (.mul
    (.rational 1440 1) .v)) .g) (.mul (.rational 1920 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16 1) .g) (.mul (.rational 320 1) .v)) .g) (.mul (.rational
    720 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 32 1) .v) .g) (.mul
    (.rational 160 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 16 1) (.pow .v 2))
    (.pow .g 10))) (.pow .f 8)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0502

namespace FullHigh0503
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsHigh2.c014 e f g v*((e+f)*(e+f+g))^5*(f+g)^4+
    4*SmallGap.PolarCoefficientsHigh1.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    4*SmallGap.PolarCoefficientsHigh2.c023 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^3+
    8*SmallGap.PolarCoefficientsHigh0.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    12*SmallGap.PolarCoefficientsHigh1.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    6*SmallGap.PolarCoefficientsHigh2.c032 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^2+
    32*SmallGap.PolarCoefficientsHigh0.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsHigh1.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    8*SmallGap.PolarCoefficientsHigh2.c041 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)+
    80*SmallGap.PolarCoefficientsHigh0.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsHigh1.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsHigh2.c050 e f g v*e^4*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh1.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    2*SmallGap.PolarCoefficientsHigh0.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsHigh1.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    4*SmallGap.PolarCoefficientsHigh0.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh1.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    6*SmallGap.PolarCoefficientsHigh0.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsHigh1.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    8*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e^4*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(56*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^5+28*SmallGap.ReducedLayers.high0_010_1 e g v*e^6+8*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^7+1*SmallGap.ReducedLayers.high0_010_3 e g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(20*SmallGap.ReducedLayers.high1_020_0 e g v*e^3+15*SmallGap.ReducedLayers.high1_020_1 e
    g v*e^4+6*SmallGap.ReducedLayers.high1_020_2 e g v*e^5+1*SmallGap.ReducedLayers.high1_020_3 e
    g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 30150 1) .e) (.add (.mul (.rational
    289209 1) .f) (.add (.mul (.rational 362127 1) .g) (.mul (.rational 56286 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 1741941 1) .f) (.add (.mul (.rational 2977509 1) .g) (.mul
    (.rational 503616 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1814044 1) .g) (.mul
    (.rational 642972 1) .v)) .g) (.mul (.rational 26220 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 7385663 1) .f) (.add (.mul (.rational 15991842 1) .g) (.mul
    (.rational 2825658 1) .v))) .f) (.add (.mul (.add (.mul (.rational 13155259 1) .g) (.mul
    (.rational 4942998 1) .v)) .g) (.mul (.rational 218223 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5115780 1) .g) (.mul (.rational 3062238 1) .v)) .g) (.mul (.rational
    285522 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    23422939 1) .f) (.add (.mul (.rational 61372141 1) .g) (.mul (.rational 11138322 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 63581619 1) .g) (.mul (.rational 24755784 1) .v)) .g) (.mul
    (.rational 1136514 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 33144009 1)
    .g) (.mul (.rational 20812304 1) .v)) .g) (.mul (.rational 2044854 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9106070 1) .g) (.mul (.rational 8222448 1) .v)) .g)
    (.mul (.rational 1294570 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 57630557 1) .f) (.add (.mul (.rational 177170732 1)
    .g) (.mul (.rational 32753856 1) .v))) .f) (.add (.mul (.add (.mul (.rational 221312172 1) .g)
    (.mul (.rational 88320758 1) .v)) .g) (.mul (.rational 4147295 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 144641626 1) .g) (.mul (.rational 93879824 1) .v)) .g)
    (.mul (.rational 9507159 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    52980353 1) .g) (.mul (.rational 50005392 1) .v)) .g) (.mul (.rational 8207705 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10760884 1) .g) (.mul
    (.rational 13968172 1) .v)) .g) (.mul (.rational 3307393 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 112601011
    1) .f) (.add (.mul (.rational 397219539 1) .g) (.mul (.rational 74469446 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 580735024 1) .g) (.mul (.rational 236152948 1) .v)) .g) (.mul
    (.rational 11252298 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 456228082
    1) .g) (.mul (.rational 303655998 1) .v)) .g) (.mul (.rational 31369923 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 208723075 1) .g) (.mul (.rational 203711968 1)
    .v)) .g) (.mul (.rational 34371211 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 56261223 1) .g) (.mul (.rational 76324230 1) .v)) .g) (.mul (.rational
    18784479 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8579112
    1) .g) (.mul (.rational 15798044 1) .v)) .g) (.mul (.rational 5347747 1) (.pow .v 2))) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 177350821 1) .f) (.add (.mul (.rational 705966890 1) .g) (.mul (.rational
    133875640 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1182198583 1) .g) (.mul (.rational
    488184240 1) .v)) .g) (.mul (.rational 23506221 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1084529674 1) .g) (.mul (.rational 736794292 1) .v)) .g) (.mul (.rational
    77235232 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 594724347 1) .g)
    (.mul (.rational 596410494 1) .v)) .g) (.mul (.rational 102699043 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 199526788 1) .g) (.mul (.rational 280468916
    1) .v)) .g) (.mul (.rational 71023781 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 40206389 1) .g) (.mul (.rational 77504940 1) .v)) .g) (.mul (.rational
    27306166 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4562504
    1) .g) (.mul (.rational 12090992 1) .v)) .g) (.mul (.rational 5764487 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 227266691 1) .f) (.add (.mul (.rational 1007537581 1) .g) (.mul
    (.rational 192974600 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1901166657 1) .g) (.mul
    (.rational 795595144 1) .v)) .g) (.mul (.rational 38627092 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1994180665 1) .g) (.mul (.rational 1378853410 1) .v)) .g) (.mul
    (.rational 146241690 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1274156771 1) .g) (.mul (.rational 1307640608 1) .v)) .g) (.mul (.rational 228889818 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 510956741 1) .g) (.mul
    (.rational 740131186 1) .v)) .g) (.mul (.rational 191757029 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 127706907 1) .g) (.mul (.rational 255840712 1) .v))
    .g) (.mul (.rational 93045637 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19068859 1) .g) (.mul (.rational 53038378 1) .v)) .g) (.mul (.rational 26420351 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1548600 1) .g) (.mul
    (.rational 6191288 1) .v)) .g) (.mul (.rational 4214557 1) (.pow .v 2))) (.pow .g 6)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 238072703 1) .f) (.add (.mul (.rational 1163183956 1) .g) (.mul
    (.rational 224815602 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2441716224 1) .g) (.mul
    (.rational 1034141316 1) .v)) .g) (.mul (.rational 50570051 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2881899192 1) .g) (.mul (.rational 2024225130 1) .v)) .g) (.mul
    (.rational 216875667 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2101610486 1) .g) (.mul (.rational 2201313344 1) .v)) .g) (.mul (.rational 390792001 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 979731204 1) .g) (.mul
    (.rational 1456950214 1) .v)) .g) (.mul (.rational 384900582 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 291844486 1) .g) (.mul (.rational 604571838 1)
    .v)) .g) (.mul (.rational 225839014 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 53851574 1) .g) (.mul (.rational 156210294 1) .v)) .g) (.mul (.rational
    80710136 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5728034
    1) .g) (.mul (.rational 24111104 1) .v)) .g) (.mul (.rational 17242014 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 302385 1) .g) (.mul (.rational 2028638 1)
    .v)) .g) (.mul (.rational 2068015 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 204046689 1) .f) (.add (.mul (.rational 1089297759 1) .g) (.mul (.rational
    212343252 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2517738804 1) .g) (.mul (.rational
    1078301676 1) .v)) .g) (.mul (.rational 53081640 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3302021322 1) .g) (.mul (.rational 2353001568 1) .v)) .g) (.mul (.rational
    254453013 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2705520166 1) .g)
    (.mul (.rational 2886796384 1) .v)) .g) (.mul (.rational 519064805 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1436795500 1) .g) (.mul (.rational
    2187631374 1) .v)) .g) (.mul (.rational 588062086 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 496324542 1) .g) (.mul (.rational 1059280640 1) .v)) .g)
    (.mul (.rational 405113472 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 108803802 1) .g) (.mul (.rational 327601698 1) .v)) .g) (.mul (.rational 174711038
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 14242856 1) .g)
    (.mul (.rational 62764744 1) .v)) .g) (.mul (.rational 46822414 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 979568 1) .g) (.mul (.rational 6942922 1) .v))
    .g) (.mul (.rational 7481645 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25704 1) .g) (.mul (.rational 383072 1) .v)) .g) (.mul (.rational 651553 1) (.pow
    .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 142674465 1) .f)
    (.add (.mul (.rational 826286142 1) .g) (.mul (.rational 162406134 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 2085198169 1) .g) (.mul (.rational 902550054 1) .v)) .g) (.mul
    (.rational 44719041 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3008282104
    1) .g) (.mul (.rational 2172773402 1) .v)) .g) (.mul (.rational 237054126 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2735523680 1) .g) (.mul (.rational
    2969084086 1) .v)) .g) (.mul (.rational 540274537 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1629626380 1) .g) (.mul (.rational 2535233030 1) .v)) .g)
    (.mul (.rational 692474998 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 639941372 1) .g) (.mul (.rational 1403165026 1) .v)) .g) (.mul (.rational 548163214
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 162236566 1) .g)
    (.mul (.rational 505168114 1) .v)) .g) (.mul (.rational 277115186 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 25139112 1) .g) (.mul (.rational 115452220
    1) .v)) .g) (.mul (.rational 89392968 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2117530 1) .g) (.mul (.rational 15775798 1) .v)) .g) (.mul (.rational
    17846101 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 71924 1)
    .g) (.mul (.rational 1136590 1) .v)) .g) (.mul (.rational 2056899 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 31498 1) .v) .g) (.mul (.rational 118647 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    80828129 1) .f) (.add (.mul (.rational 504762243 1) .g) (.mul (.rational 100012362 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1381033609 1) .g) (.mul (.rational 603861024 1) .v))
    .g) (.mul (.rational 30114762 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2173629675 1) .g) (.mul (.rational 1590068580 1) .v)) .g) (.mul (.rational 174986754 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2172024364 1) .g) (.mul (.rational
    2395350992 1) .v)) .g) (.mul (.rational 440874806 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1434103224 1) .g) (.mul (.rational 2275843032 1) .v)) .g)
    (.mul (.rational 630996972 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 630615986 1) .g) (.mul (.rational 1417297152 1) .v)) .g) (.mul (.rational 564627992
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 181311724 1) .g)
    (.mul (.rational 582076938 1) .v)) .g) (.mul (.rational 327569180 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 32387098 1) .g) (.mul (.rational 154421464
    1) .v)) .g) (.mul (.rational 123612452 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3215282 1) .g) (.mul (.rational 25067962 1) .v)) .g) (.mul (.rational
    29606283 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 132962 1)
    .g) (.mul (.rational 2217816 1) .v)) .g) (.mul (.rational 4240751 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 79574 1) .v) .g) (.mul (.rational 320991 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 9417 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 36668503 1) .f) (.add
    (.mul (.rational 245649136 1) .g) (.mul (.rational 49057836 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 724366932 1) .g) (.mul (.rational 319846614 1) .v)) .g) (.mul (.rational
    16055985 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1235271690 1) .g)
    (.mul (.rational 914642276 1) .v)) .g) (.mul (.rational 101517609 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1345511077 1) .g) (.mul (.rational 1506212720 1) .v))
    .g) (.mul (.rational 280289219 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 975163774 1) .g) (.mul (.rational 1576342750 1) .v)) .g) (.mul (.rational
    443278493 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    474552774 1) .g) (.mul (.rational 1091060080 1) .v)) .g) (.mul (.rational 442631684 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 152477238 1) .g) (.mul
    (.rational 503369526 1) .v)) .g) (.mul (.rational 289970070 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 30804310 1) .g) (.mul (.rational 151980032 1) .v))
    .g) (.mul (.rational 125364948 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3512026 1) .g) (.mul (.rational 28541366 1) .v)) .g) (.mul (.rational
    35031189 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 170268 1)
    .g) (.mul (.rational 2984842 1) .v)) .g) (.mul (.rational 5994139 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 130534 1) .v) .g) (.mul (.rational 559927 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 21313 1) (.pow .v 2)) (.pow .g 10))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13082849 1) .f) (.add
    (.mul (.rational 93603629 1) .g) (.mul (.rational 18837918 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 295985376 1) .g) (.mul (.rational 131929100 1) .v)) .g) (.mul (.rational
    6666650 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 543731542 1) .g) (.mul
    (.rational 407249678 1) .v)) .g) (.mul (.rational 45581337 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 641275887 1) .g) (.mul (.rational 727997824 1) .v)) .g)
    (.mul (.rational 136912537 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 506168445 1) .g) (.mul (.rational 832335140 1) .v)) .g) (.mul (.rational 237204747
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 270055330 1) .g)
    (.mul (.rational 634003132 1) .v)) .g) (.mul (.rational 261585821 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 95868740 1) .g) (.mul (.rational 324668352
    1) .v)) .g) (.mul (.rational 191066786 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 21594678 1) .g) (.mul (.rational 109908776 1) .v)) .g) (.mul (.rational
    93151928 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2775596
    1) .g) (.mul (.rational 23425046 1) .v)) .g) (.mul (.rational 29757891 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 153832 1) .g) (.mul (.rational 2822288 1)
    .v)) .g) (.mul (.rational 5920183 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 144986 1) .v) .g) (.mul (.rational 656935 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 30577 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3572482 1) .f) (.add (.mul (.rational
    27193227 1) .g) (.mul (.rational 5513516 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    91811317 1) .g) (.mul (.rational 41290708 1) .v)) .g) (.mul (.rational 2100195 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 180798346 1) .g) (.mul (.rational 136884144
    1) .v)) .g) (.mul (.rational 15445404 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 229593363 1) .g) (.mul (.rational 264055842 1) .v)) .g) (.mul (.rational 50161625
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 196092366 1) .g)
    (.mul (.rational 327565102 1) .v)) .g) (.mul (.rational 94523193 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 113836687 1) .g) (.mul (.rational 272396498
    1) .v)) .g) (.mul (.rational 114146996 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 44248762 1) .g) (.mul (.rational 153361198 1) .v)) .g) (.mul (.rational
    92018999 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 10992251
    1) .g) (.mul (.rational 57541894 1) .v)) .g) (.mul (.rational 49968014 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1571203 1) .g) (.mul (.rational 13720862
    1) .v)) .g) (.mul (.rational 17970695 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 97804 1) .g) (.mul (.rational 1870002 1) .v)) .g) (.mul (.rational
    4076373 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 110122 1) .v)
    .g) (.mul (.rational 523661 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 28749 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 715963 1) .f) (.add (.mul (.rational 5778830 1) .g) (.mul (.rational
    1179874 1) .v))) .f) (.add (.mul (.add (.mul (.rational 20755198 1) .g) (.mul (.rational
    9412050 1) .v)) .g) (.mul (.rational 481728 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 43632307 1) .g) (.mul (.rational 33362602 1) .v)) .g) (.mul (.rational
    3793198 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 59380555 1) .g)
    (.mul (.rational 69105568 1) .v)) .g) (.mul (.rational 13249926 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 54586067 1) .g) (.mul (.rational 92485700 1) .v))
    .g) (.mul (.rational 26992269 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34269245 1) .g) (.mul (.rational 83412932 1) .v)) .g) (.mul (.rational 35444167 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 14481593 1) .g) (.mul
    (.rational 51236660 1) .v)) .g) (.mul (.rational 31275717 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3934102 1) .g) (.mul (.rational 21114832 1) .v)) .g)
    (.mul (.rational 18730743 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 618995 1) .g) (.mul (.rational 5571898 1) .v)) .g) (.mul (.rational 7494311 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 42729 1) .g) (.mul
    (.rational 847610 1) .v)) .g) (.mul (.rational 1910229 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 56258 1) .v) .g) (.mul (.rational 278937 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 17639 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 98324 1) .f) (.add
    (.mul (.rational 839137 1) .g) (.mul (.rational 172388 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 3196020 1) .g) (.mul (.rational 1459906 1) .v)) .g) (.mul (.rational 75136 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7147672 1) .g) (.mul (.rational 5512546
    1) .v)) .g) (.mul (.rational 630942 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10384612 1) .g) (.mul (.rational 12209440 1) .v)) .g) (.mul (.rational 2359843 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10230066 1) .g) (.mul
    (.rational 17545416 1) .v)) .g) (.mul (.rational 5170716 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6911492 1) .g) (.mul (.rational 17070452 1) .v)) .g)
    (.mul (.rational 7339976 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3157520 1) .g) (.mul (.rational 11369876 1) .v)) .g) (.mul (.rational 7041608 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 931992 1) .g) (.mul
    (.rational 5109936 1) .v)) .g) (.mul (.rational 4614582 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 160197 1) .g) (.mul (.rational 1479940 1) .v)) .g)
    (.mul (.rational 2035108 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12152 1) .g) (.mul (.rational 248826 1) .v)) .g) (.mul (.rational 576496 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 18394 1) .v) .g) (.mul (.rational
    94426 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 6767 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    8150 1) .f) (.add (.mul (.rational 73372 1) .g) (.mul (.rational 15144 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 295584 1) .g) (.mul (.rational 135768 1) .v)) .g) (.mul
    (.rational 7016 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 701280 1) .g)
    (.mul (.rational 544404 1) .v)) .g) (.mul (.rational 62616 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1084356 1) .g) (.mul (.rational 1284864 1) .v)) .g) (.mul
    (.rational 249810 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1140888 1) .g) (.mul (.rational 1975008 1) .v)) .g) (.mul (.rational 586224 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 826392 1) .g) (.mul (.rational
    2064048 1) .v)) .g) (.mul (.rational 895272 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 406464 1) .g) (.mul (.rational 1483608 1) .v)) .g) (.mul
    (.rational 928704 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    129750 1) .g) (.mul (.rational 723264 1) .v)) .g) (.mul (.rational 661836 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 24236 1) .g) (.mul (.rational
    228504 1) .v)) .g) (.mul (.rational 319440 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2008 1) .g) (.mul (.rational 42168 1) .v)) .g) (.mul (.rational
    99744 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3444 1) .v) .g)
    (.mul (.rational 18152 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1458 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 6))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 300 1) .f) (.add (.mul (.rational 2844 1) .g) (.mul (.rational 588 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 12096 1) .g) (.mul (.rational 5568 1) .v)) .g) (.mul
    (.rational 288 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 30384 1) .g)
    (.mul (.rational 23652 1) .v)) .g) (.mul (.rational 2724 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 49896 1) .g) (.mul (.rational 59328 1) .v)) .g) (.mul (.rational
    11556 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 55944 1) .g)
    (.mul (.rational 97272 1) .v)) .g) (.mul (.rational 28944 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 43344 1) .g) (.mul (.rational 108864 1) .v)) .g)
    (.mul (.rational 47376 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22896 1) .g) (.mul (.rational 84168 1) .v)) .g) (.mul (.rational 52920 1) (.pow .v
    2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7884 1) .g) (.mul (.rational
    44352 1) .v)) .g) (.mul (.rational 40824 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1596 1) .g) (.mul (.rational 15228 1) .v)) .g) (.mul (.rational 21456
    1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 144 1) .g) (.mul
    (.rational 3072 1) .v)) .g) (.mul (.rational 7344 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 276 1) .v) .g) (.mul (.rational 1476 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 132 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 7)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0503

namespace FullHigh0504
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsHigh2.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    8*SmallGap.PolarCoefficientsHigh1.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    12*SmallGap.PolarCoefficientsHigh2.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    16*SmallGap.PolarCoefficientsHigh0.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    32*SmallGap.PolarCoefficientsHigh1.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsHigh2.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    80*SmallGap.PolarCoefficientsHigh0.c050 e f g v*e*((e+f)*(e+f+g))^5+
    80*SmallGap.PolarCoefficientsHigh1.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsHigh2.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh2.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    2*SmallGap.PolarCoefficientsHigh1.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsHigh2.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    4*SmallGap.PolarCoefficientsHigh0.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    4*SmallGap.PolarCoefficientsHigh1.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh2.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    12*SmallGap.PolarCoefficientsHigh0.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    6*SmallGap.PolarCoefficientsHigh1.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsHigh2.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    8*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e^4*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh0.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    1*SmallGap.PolarCoefficientsHigh0.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh0.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(70*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^4+56*SmallGap.ReducedLayers.high0_010_1 e g v*e^5+28*SmallGap.ReducedLayers.high0_010_2 e
    g v*e^6+8*SmallGap.ReducedLayers.high0_010_3 e g v*e^7+1*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.high1_020_0 e g v*e^2+20*SmallGap.ReducedLayers.high1_020_1 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_020_2 e g v*e^4+6*SmallGap.ReducedLayers.high1_020_3 e
    g v*e^5+1*SmallGap.ReducedLayers.high1_020_4 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 68850 1) .e) (.add (.mul (.rational 645531 1) .f)
    (.add (.mul (.rational 804813 1) .g) (.mul (.rational 127374 1) .v)))) .e) (.add (.mul (.add
    (.mul (.rational 3793323 1) .f) (.add (.mul (.rational 6453054 1) .g) (.mul (.rational 1104948
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 3916211 1) .g) (.mul (.rational 1394046 1)
    .v)) .g) (.mul (.rational 58920 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 15653805 1) .f) (.add (.mul (.rational 33722673 1) .g) (.mul (.rational 6004442 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 27619199 1) .g) (.mul (.rational 10374266 1) .v))
    .g) (.mul (.rational 472197 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10709387 1) .g) (.mul (.rational 6332740 1) .v)) .g) (.mul (.rational 607518 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 48179135 1) .f) (.add
    (.mul (.rational 125569538 1) .g) (.mul (.rational 22885124 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 129474918 1) .g) (.mul (.rational 50238860 1) .v)) .g) (.mul (.rational
    2366118 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 67255524 1) .g) (.mul
    (.rational 41634054 1) .v)) .g) (.mul (.rational 4182837 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 18453259 1) .g) (.mul (.rational 16181430 1) .v)) .g) (.mul
    (.rational 2587688 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 114649890 1) .f) (.add (.mul (.rational 350536365 1) .g)
    (.mul (.rational 64919294 1) .v))) .f) (.add (.mul (.add (.mul (.rational 435689218 1) .g)
    (.mul (.rational 172957866 1) .v)) .g) (.mul (.rational 8295681 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 283620618 1) .g) (.mul (.rational 181343130 1) .v)) .g)
    (.mul (.rational 18686795 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    103663000 1) .g) (.mul (.rational 95123684 1) .v)) .g) (.mul (.rational 15779600 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 21071795 1) .g) (.mul
    (.rational 26135182 1) .v)) .g) (.mul (.rational 6180807 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 215789580
    1) .f) (.add (.mul (.rational 756974166 1) .g) (.mul (.rational 141963268 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 1100959391 1) .g) (.mul (.rational 445003712 1) .v)) .g) (.mul
    (.rational 21581202 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 861182874
    1) .g) (.mul (.rational 564857832 1) .v)) .g) (.mul (.rational 59159006 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 392894516 1) .g) (.mul (.rational 373594000 1)
    .v)) .g) (.mul (.rational 63489750 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 105876468 1) .g) (.mul (.rational 137871014 1) .v)) .g) (.mul (.rational
    33817825 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 16202013
    1) .g) (.mul (.rational 28111406 1) .v)) .g) (.mul (.rational 9324858 1) (.pow .v 2))) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 325878846 1) .f) (.add (.mul (.rational 1289810685 1) .g) (.mul (.rational
    244548524 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2148346164 1) .g) (.mul (.rational
    882000962 1) .v)) .g) (.mul (.rational 43110135 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1961779605 1) .g) (.mul (.rational 1315160474 1) .v)) .g) (.mul (.rational
    139414550 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1072247740 1) .g)
    (.mul (.rational 1050724902 1) .v)) .g) (.mul (.rational 181881041 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 359328561 1) .g) (.mul (.rational 487366398
    1) .v)) .g) (.mul (.rational 122927583 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 72566662 1) .g) (.mul (.rational 132866426 1) .v)) .g) (.mul (.rational
    45971213 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8292261
    1) .g) (.mul (.rational 20488682 1) .v)) .g) (.mul (.rational 9391981 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 398193620 1) .f) (.add (.mul (.rational 1755122790 1) .g) (.mul
    (.rational 336209408 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3293682134 1) .g) (.mul
    (.rational 1371829478 1) .v)) .g) (.mul (.rational 67496224 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3438077162 1) .g) (.mul (.rational 2350951002 1) .v)) .g) (.mul
    (.rational 251812354 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2188552637 1) .g) (.mul (.rational 2202925560 1) .v)) .g) (.mul (.rational 387396486 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 876017242 1) .g) (.mul
    (.rational 1231455832 1) .v)) .g) (.mul (.rational 318047798 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 219176428 1) .g) (.mul (.rational 420546470 1)
    .v)) .g) (.mul (.rational 150712542 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 32900496 1) .g) (.mul (.rational 86286084 1) .v)) .g) (.mul (.rational
    41647543 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2702007
    1) .g) (.mul (.rational 10012554 1) .v)) .g) (.mul (.rational 6450754 1) (.pow .v 2))) (.pow
    .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 395123905 1) .f) (.add (.mul (.rational 1919288621 1)
    .g) (.mul (.rational 371414832 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4006424133 1)
    .g) (.mul (.rational 1692011492 1) .v)) .g) (.mul (.rational 83790243 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4704784892 1) .g) (.mul (.rational 3277709334 1) .v))
    .g) (.mul (.rational 354581181 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3416898937 1) .g) (.mul (.rational 3525620348 1) .v)) .g) (.mul (.rational
    629218129 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1588923816 1) .g) (.mul (.rational 2307445726 1) .v)) .g) (.mul (.rational 608941534 1) (.pow
    .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 473320937 1) .g) (.mul
    (.rational 947202554 1) .v)) .g) (.mul (.rational 350220332 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 87668296 1) .g) (.mul (.rational 242508260 1) .v))
    .g) (.mul (.rational 122410122 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9410677 1) .g) (.mul (.rational 37232352 1) .v)) .g) (.mul (.rational
    25549231 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 505024 1)
    .g) (.mul (.rational 3139036 1) .v)) .g) (.mul (.rational 3001377 1) (.pow .v 2))) (.pow .g
    7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 318215865 1) .f) (.add (.mul (.rational
    1688875950 1) .g) (.mul (.rational 330225444 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    3881469009 1) .g) (.mul (.rational 1661891656 1) .v)) .g) (.mul (.rational 82869934 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5063906560 1) .g) (.mul (.rational
    3592003302 1) .v)) .g) (.mul (.rational 392542742 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4130740087 1) .g) (.mul (.rational 4363190754 1) .v)) .g) (.mul
    (.rational 790099622 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2186935260 1) .g) (.mul (.rational 3273303368 1) .v)) .g) (.mul (.rational
    881781980 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    754762840 1) .g) (.mul (.rational 1569815492 1) .v)) .g) (.mul (.rational 597434744 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 165851206 1) .g) (.mul
    (.rational 481581070 1) .v)) .g) (.mul (.rational 253081832 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21866657 1) .g) (.mul (.rational 91829642 1) .v)) .g)
    (.mul (.rational 66616044 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1524922 1) .g) (.mul (.rational 10174610 1) .v)) .g) (.mul (.rational 10484047 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 40940 1) .g) (.mul
    (.rational 568436 1) .v)) .g) (.mul (.rational 907478 1) (.pow .v 2))) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 206990037 1) .f) (.add (.mul (.rational
    1191769983 1) .g) (.mul (.rational 235522578 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    2990311583 1) .g) (.mul (.rational 1298052566 1) .v)) .g) (.mul (.rational 65223203 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4290795541 1) .g) (.mul (.rational
    3097695592 1) .v)) .g) (.mul (.rational 342150362 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3883241991 1) .g) (.mul (.rational 4194907882 1) .v)) .g) (.mul
    (.rational 770855899 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2304994146 1) .g) (.mul (.rational 3549644568 1) .v)) .g) (.mul (.rational
    975600322 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    903535753 1) .g) (.mul (.rational 1947845188 1) .v)) .g) (.mul (.rational 761831258 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 229299586 1) .g) (.mul
    (.rational 696244686 1) .v)) .g) (.mul (.rational 379708380 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 35717117 1) .g) (.mul (.rational 158444384 1) .v))
    .g) (.mul (.rational 120828264 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3042620 1) .g) (.mul (.rational 21675922 1) .v)) .g) (.mul (.rational
    23865499 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 105395 1)
    .g) (.mul (.rational 1578184 1) .v)) .g) (.mul (.rational 2743022 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 44858 1) .v) .g) (.mul (.rational 160477 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    107693703 1) .f) (.add (.mul (.rational 668623638 1) .g) (.mul (.rational 133596140 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1818804938 1) .g) (.mul (.rational 800505192 1) .v))
    .g) (.mul (.rational 40563070 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2846778600 1) .g) (.mul (.rational 2091126922 1) .v)) .g) (.mul (.rational 233582637 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2830334108 1) .g) (.mul (.rational
    3124484650 1) .v)) .g) (.mul (.rational 582782060 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1861032462 1) .g) (.mul (.rational 2944492734 1) .v)) .g)
    (.mul (.rational 825404815 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 816194704 1) .g) (.mul (.rational 1819669732 1) .v)) .g) (.mul (.rational 730508422
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 234605546 1) .g)
    (.mul (.rational 742519408 1) .v)) .g) (.mul (.rational 419142577 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 42046025 1) .g) (.mul (.rational 196206766
    1) .v)) .g) (.mul (.rational 156573274 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4210158 1) .g) (.mul (.rational 31870490 1) .v)) .g) (.mul (.rational
    37230819 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 176926 1)
    .g) (.mul (.rational 2843556 1) .v)) .g) (.mul (.rational 5330412 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 104202 1) .v) .g) (.mul (.rational 408852 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 12462 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 44108840 1) .f) (.add
    (.mul (.rational 293785811 1) .g) (.mul (.rational 59366054 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 861285348 1) .g) (.mul (.rational 384367066 1) .v)) .g) (.mul (.rational
    19655243 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1460419610 1) .g)
    (.mul (.rational 1091205822 1) .v)) .g) (.mul (.rational 123329161 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1582270263 1) .g) (.mul (.rational 1783692744 1) .v))
    .g) (.mul (.rational 337750062 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1141423933 1) .g) (.mul (.rational 1853030144 1) .v)) .g) (.mul (.rational
    529604159 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    553533767 1) .g) (.mul (.rational 1273674304 1) .v)) .g) (.mul (.rational 524223529 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 177576224 1) .g) (.mul
    (.rational 584149598 1) .v)) .g) (.mul (.rational 340510716 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 35924917 1) .g) (.mul (.rational 175689984 1) .v))
    .g) (.mul (.rational 146127617 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4119758 1) .g) (.mul (.rational 32989798 1) .v)) .g) (.mul (.rational
    40640843 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 202201 1)
    .g) (.mul (.rational 3471694 1) .v)) .g) (.mul (.rational 6960516 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 154376 1) .v) .g) (.mul (.rational 657929 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 25841 1) (.pow .v 2)) (.pow .g 10))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13874610 1) .f) (.add
    (.mul (.rational 98700138 1) .g) (.mul (.rational 20174108 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 310283965 1) .g) (.mul (.rational 140395552 1) .v)) .g) (.mul (.rational
    7249030 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 566687578 1) .g) (.mul
    (.rational 430542180 1) .v)) .g) (.mul (.rational 49249734 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 664593493 1) .g) (.mul (.rational 764470208 1) .v)) .g)
    (.mul (.rational 146948986 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 521862176 1) .g) (.mul (.rational 868186842 1) .v)) .g) (.mul (.rational 252848875
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 277226207 1) .g)
    (.mul (.rational 657095942 1) .v)) .g) (.mul (.rational 276926646 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 98131346 1) .g) (.mul (.rational 334620140
    1) .v)) .g) (.mul (.rational 200963323 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 22091797 1) .g) (.mul (.rational 112829372 1) .v)) .g) (.mul (.rational
    97449468 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2847994
    1) .g) (.mul (.rational 24022406 1) .v)) .g) (.mul (.rational 31036097 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 159160 1) .g) (.mul (.rational 2905694 1)
    .v)) .g) (.mul (.rational 6183864 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 151092 1) .v) .g) (.mul (.rational 693027 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 33062 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3224775 1) .f) (.add (.mul (.rational
    24407760 1) .g) (.mul (.rational 5046280 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    81926366 1) .g) (.mul (.rational 37576030 1) .v)) .g) (.mul (.rational 1959473 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 160375307 1) .g) (.mul (.rational 123829002
    1) .v)) .g) (.mul (.rational 14336402 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 202454187 1) .g) (.mul (.rational 237411630 1) .v)) .g) (.mul (.rational 46311487
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 171927675 1) .g)
    (.mul (.rational 292700756 1) .v)) .g) (.mul (.rational 86794123 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 99290705 1) .g) (.mul (.rational 241951126
    1) .v)) .g) (.mul (.rational 104253149 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 38431721 1) .g) (.mul (.rational 135482180 1) .v)) .g) (.mul (.rational
    83628091 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9522562
    1) .g) (.mul (.rational 50616722 1) .v)) .g) (.mul (.rational 45230757 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1361217 1) .g) (.mul (.rational 12043660
    1) .v)) .g) (.mul (.rational 16233057 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 85085 1) .g) (.mul (.rational 1643916 1) .v)) .g) (.mul (.rational
    3687438 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 97546 1) .v) .g)
    (.mul (.rational 477319 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 26688 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 519588 1) .f) (.add (.mul (.rational 4170480 1) .g) (.mul (.rational
    871934 1) .v))) .f) (.add (.mul (.add (.mul (.rational 14891394 1) .g) (.mul (.rational
    6919920 1) .v)) .g) (.mul (.rational 364396 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 31115722 1) .g) (.mul (.rational 24396902 1) .v)) .g) (.mul (.rational
    2857636 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 42083360 1) .g)
    (.mul (.rational 50251992 1) .v)) .g) (.mul (.rational 9940054 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 38443758 1) .g) (.mul (.rational 66868824 1) .v))
    .g) (.mul (.rational 20163582 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23988080 1) .g) (.mul (.rational 59965072 1) .v)) .g) (.mul (.rational 26367324 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10079974 1) .g) (.mul
    (.rational 36633360 1) .v)) .g) (.mul (.rational 23177402 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2725572 1) .g) (.mul (.rational 15024792 1) .v)) .g)
    (.mul (.rational 13837716 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 427570 1) .g) (.mul (.rational 3951242 1) .v)) .g) (.mul (.rational 5527074 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 29510 1) .g) (.mul
    (.rational 600464 1) .v)) .g) (.mul (.rational 1409872 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 39978 1) .v) .g) (.mul (.rational 206914 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 13246 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 51530 1) .f) (.add
    (.mul (.rational 437382 1) .g) (.mul (.rational 92414 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1656185 1) .g) (.mul (.rational 779056 1) .v)) .g) (.mul (.rational 41400 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3681100 1) .g) (.mul (.rational 2927412
    1) .v)) .g) (.mul (.rational 346572 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5313308 1) .g) (.mul (.rational 6450504 1) .v)) .g) (.mul (.rational 1292089 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5198536 1) .g) (.mul
    (.rational 9219756 1) .v)) .g) (.mul (.rational 2821892 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3487442 1) .g) (.mul (.rational 8920296 1) .v)) .g)
    (.mul (.rational 3992800 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1581940 1) .g) (.mul (.rational 5908056 1) .v)) .g) (.mul (.rational 3818780 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 463730 1) .g) (.mul
    (.rational 2640792 1) .v)) .g) (.mul (.rational 2495962 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 79218 1) .g) (.mul (.rational 761094 1) .v)) .g)
    (.mul (.rational 1098764 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5981 1) .g) (.mul (.rational 127496 1) .v)) .g) (.mul (.rational 311152 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 9412 1) .v) .g) (.mul (.rational
    51080 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 3685 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2350 1) .f) (.add (.mul (.rational 21044 1) .g) (.mul (.rational 4488 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 84288 1) .g) (.mul (.rational 40074 1) .v)) .g) (.mul (.rational 2146
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 198720 1) .g) (.mul (.rational
    159990 1) .v)) .g) (.mul (.rational 19110 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 305172 1) .g) (.mul (.rational 375816 1) .v)) .g) (.mul (.rational 76062 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 318696 1) .g) (.mul
    (.rational 574728 1) .v)) .g) (.mul (.rational 178056 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 228984 1) .g) (.mul (.rational 597324 1) .v)) .g) (.mul
    (.rational 271236 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    111648 1) .g) (.mul (.rational 426804 1) .v)) .g) (.mul (.rational 280644 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 35310 1) .g) (.mul (.rational
    206760 1) .v)) .g) (.mul (.rational 199500 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 6532 1) .g) (.mul (.rational 64896 1) .v)) .g) (.mul (.rational
    96072 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 536 1) .g)
    (.mul (.rational 11898 1) .v)) .g) (.mul (.rational 29946 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 966 1) .v) .g) (.mul (.rational 5446 1) (.pow .v 2))) (.pow
    .g 9))) .f) (.mul (.mul (.rational 438 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0504

namespace FullHigh0505
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsHigh2.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    16*SmallGap.PolarCoefficientsHigh1.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    32*SmallGap.PolarCoefficientsHigh2.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    32*SmallGap.PolarCoefficientsHigh0.c050 e f g v*((e+f)*(e+f+g))^5+
    80*SmallGap.PolarCoefficientsHigh1.c050 e f g v*e*((e+f)*(e+f+g))^5+
    80*SmallGap.PolarCoefficientsHigh2.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    2*SmallGap.PolarCoefficientsHigh2.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    4*SmallGap.PolarCoefficientsHigh1.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    4*SmallGap.PolarCoefficientsHigh2.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    8*SmallGap.PolarCoefficientsHigh0.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    12*SmallGap.PolarCoefficientsHigh1.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    6*SmallGap.PolarCoefficientsHigh2.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    32*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    8*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh1.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsHigh0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh1.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsHigh0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsHigh1.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    6*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(56*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^3+70*SmallGap.ReducedLayers.high0_010_1 e g v*e^4+56*SmallGap.ReducedLayers.high0_010_2 e
    g v*e^5+28*SmallGap.ReducedLayers.high0_010_3 e g v*e^6+8*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^7)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.high1_020_0 e g v*e^1+15*SmallGap.ReducedLayers.high1_020_1 e
    g v*e^2+20*SmallGap.ReducedLayers.high1_020_2 e g v*e^3+15*SmallGap.ReducedLayers.high1_020_3
    e g v*e^4+6*SmallGap.ReducedLayers.high1_020_4 e g v*e^5+1*SmallGap.ReducedLayers.high1_020_5
    e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 111924 1) .e) (.add (.mul (.rational 1027422 1) .f) (.add (.mul
    (.rational 1275678 1) .g) (.mul (.rational 205020 1) .v)))) .e) (.add (.mul (.add (.mul
    (.rational 5895276 1) .f) (.add (.mul (.rational 9981366 1) .g) (.mul (.rational 1725720 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 6035254 1) .g) (.mul (.rational 2148852 1) .v))
    .g) (.mul (.rational 94200 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 23676493 1) .f) (.add (.mul (.rational 50740011 1) .g) (.mul (.rational 9082448 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 41374039 1) .g) (.mul (.rational 15474680 1) .v))
    .g) (.mul (.rational 727524 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    16000193 1) .g) (.mul (.rational 9286576 1) .v)) .g) (.mul (.rational 918936 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 70641748 1) .f) (.add
    (.mul (.rational 183081963 1) .g) (.mul (.rational 33439008 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 187843209 1) .g) (.mul (.rational 72376376 1) .v)) .g) (.mul (.rational
    3506376 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 97227609 1) .g) (.mul
    (.rational 58979840 1) .v)) .g) (.mul (.rational 6077448 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 26646799 1) .g) (.mul (.rational 22473240 1) .v)) .g) (.mul
    (.rational 3660736 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 162215333 1) .f) (.add (.mul (.rational 493021223 1) .g)
    (.mul (.rational 91326948 1) .v))) .f) (.add (.mul (.add (.mul (.rational 609484664 1) .g)
    (.mul (.rational 239942066 1) .v)) .g) (.mul (.rational 11794159 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 395069764 1) .g) (.mul (.rational 247526646 1) .v)) .g)
    (.mul (.rational 26042885 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    144073439 1) .g) (.mul (.rational 127432602 1) .v)) .g) (.mul (.rational 21426369 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 29313417 1) .g) (.mul
    (.rational 34282270 1) .v)) .g) (.mul (.rational 8104583 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 293060548
    1) .f) (.add (.mul (.rational 1021648985 1) .g) (.mul (.rational 191486682 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 1477347503 1) .g) (.mul (.rational 592183870 1) .v)) .g) (.mul
    (.rational 29343546 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1150036994
    1) .g) (.mul (.rational 740179350 1) .v)) .g) (.mul (.rational 78890381 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 523036502 1) .g) (.mul (.rational 481086742 1)
    .v)) .g) (.mul (.rational 82609847 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 140887217 1) .g) (.mul (.rational 174150324 1) .v)) .g) (.mul (.rational
    42625247 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 21636459
    1) .g) (.mul (.rational 34798604 1) .v)) .g) (.mul (.rational 11271523 1) (.pow .v 2))) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 422182482 1) .f) (.add (.mul (.rational 1660218506 1) .g) (.mul (.rational
    314678518 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2748517837 1) .g) (.mul (.rational
    1120377970 1) .v)) .g) (.mul (.rational 55838398 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2496584889 1) .g) (.mul (.rational 1646601436 1) .v)) .g) (.mul (.rational
    177291450 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1359302338 1) .g)
    (.mul (.rational 1294548466 1) .v)) .g) (.mul (.rational 226126751 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 454829882 1) .g) (.mul (.rational 590081404
    1) .v)) .g) (.mul (.rational 148574097 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 92034511 1) .g) (.mul (.rational 158003452 1) .v)) .g) (.mul (.rational
    53613227 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10589035
    1) .g) (.mul (.rational 23965394 1) .v)) .g) (.mul (.rational 10471465 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 488512008 1) .f) (.add (.mul (.rational 2138973688 1) .g) (.mul
    (.rational 410140508 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3988620278 1) .g) (.mul
    (.rational 1653219846 1) .v)) .g) (.mul (.rational 82865666 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4139888053 1) .g) (.mul (.rational 2795333716 1) .v)) .g) (.mul
    (.rational 303970024 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2623565603 1) .g) (.mul (.rational 2581175210 1) .v)) .g) (.mul (.rational 458260348 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1047571160 1) .g) (.mul
    (.rational 1420540734 1) .v)) .g) (.mul (.rational 367119809 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 262264866 1) .g) (.mul (.rational 477523040 1)
    .v)) .g) (.mul (.rational 168869217 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 39567987 1) .g) (.mul (.rational 96591634 1) .v)) .g) (.mul (.rational
    45030939 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3285305
    1) .g) (.mul (.rational 11103032 1) .v)) .g) (.mul (.rational 6697509 1) (.pow .v 2))) (.pow
    .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 455012088 1) .f) (.add (.mul (.rational 2195265476 1)
    .g) (.mul (.rational 426183340 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4552560354 1)
    .g) (.mul (.rational 1919532050 1) .v)) .g) (.mul (.rational 96868192 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5314080368 1) .g) (.mul (.rational 3672692590 1) .v))
    .g) (.mul (.rational 403749676 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3840250381 1) .g) (.mul (.rational 3898337740 1) .v)) .g) (.mul (.rational
    703895038 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1780020491 1) .g) (.mul (.rational 2516223416 1) .v)) .g) (.mul (.rational 667241738 1) (.pow
    .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 529971084 1) .g) (.mul
    (.rational 1018826900 1) .v)) .g) (.mul (.rational 374602067 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 98503002 1) .g) (.mul (.rational 257720748 1)
    .v)) .g) (.mul (.rational 127388709 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10669387 1) .g) (.mul (.rational 39268890 1) .v)) .g) (.mul (.rational
    25825847 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 581869 1)
    .g) (.mul (.rational 3315454 1) .v)) .g) (.mul (.rational 2958497 1) (.pow .v 2))) (.pow .g
    7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 340251636 1) .f) (.add (.mul (.rational
    1793451400 1) .g) (.mul (.rational 352871924 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    4094179128 1) .g) (.mul (.rational 1757230154 1) .v)) .g) (.mul (.rational 89425712 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5307935988 1) .g) (.mul (.rational
    3755329578 1) .v)) .g) (.mul (.rational 418000740 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4306399350 1) .g) (.mul (.rational 4507385120 1) .v)) .g) (.mul
    (.rational 828732396 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2271005595 1) .g) (.mul (.rational 3340290298 1) .v)) .g) (.mul (.rational
    909233368 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    782570161 1) .g) (.mul (.rational 1583058364 1) .v)) .g) (.mul (.rational 604411538 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 172313594 1) .g) (.mul
    (.rational 480759076 1) .v)) .g) (.mul (.rational 250856283 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 22882164 1) .g) (.mul (.rational 91129846 1) .v)) .g)
    (.mul (.rational 64728729 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1618381 1) .g) (.mul (.rational 10119200 1) .v)) .g) (.mul (.rational 10041197 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 44451 1) .g) (.mul
    (.rational 574448 1) .v)) .g) (.mul (.rational 870621 1) (.pow .v 2))) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 202684953 1) .f) (.add (.mul (.rational
    1158905399 1) .g) (.mul (.rational 231331780 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    2887966117 1) .g) (.mul (.rational 1262649642 1) .v)) .g) (.mul (.rational 64914016 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4116984211 1) .g) (.mul (.rational
    2982392452 1) .v)) .g) (.mul (.rational 336676010 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3704341591 1) .g) (.mul (.rational 3995763374 1) .v)) .g) (.mul
    (.rational 749051430 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2188830581 1) .g) (.mul (.rational 3344839782 1) .v)) .g) (.mul (.rational
    935085410 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    855875286 1) .g) (.mul (.rational 1816783184 1) .v)) .g) (.mul (.rational 719605646 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 217355888 1) .g) (.mul
    (.rational 643920616 1) .v)) .g) (.mul (.rational 353434820 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 34038719 1) .g) (.mul (.rational 145859744 1) .v))
    .g) (.mul (.rational 111036543 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2934349 1) .g) (.mul (.rational 20006340 1) .v)) .g) (.mul (.rational
    21785165 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 103762 1)
    .g) (.mul (.rational 1478488 1) .v)) .g) (.mul (.rational 2523249 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 43462 1) .v) .g) (.mul (.rational 152983 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    94831828 1) .f) (.add (.mul (.rational 584668723 1) .g) (.mul (.rational 118510384 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1579378225 1) .g) (.mul (.rational 703842342 1) .v))
    .g) (.mul (.rational 36616544 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2455426131 1) .g) (.mul (.rational 1821596142 1) .v)) .g) (.mul (.rational 208861136 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2426204479 1) .g) (.mul (.rational
    2695842770 1) .v)) .g) (.mul (.rational 515811938 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1587137665 1) .g) (.mul (.rational 2516494030 1) .v)) .g)
    (.mul (.rational 722750114 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 693724739 1) .g) (.mul (.rational 1541449472 1) .v)) .g) (.mul (.rational 632742200
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 199279832 1) .g)
    (.mul (.rational 624495810 1) .v)) .g) (.mul (.rational 359396164 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 35841246 1) .g) (.mul (.rational 164406972
    1) .v)) .g) (.mul (.rational 133246206 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3623157 1) .g) (.mul (.rational 26774552 1) .v)) .g) (.mul (.rational
    31637773 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 154991 1)
    .g) (.mul (.rational 2420756 1) .v)) .g) (.mul (.rational 4579769 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 91394 1) .v) .g) (.mul (.rational 363345 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 11875 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 34061365 1) .f) (.add
    (.mul (.rational 225278687 1) .g) (.mul (.rational 46403380 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 655792104 1) .g) (.mul (.rational 298023276 1) .v)) .g) (.mul (.rational
    15710647 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1104287340 1) .g)
    (.mul (.rational 838998890 1) .v)) .g) (.mul (.rational 97815903 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1188629288 1) .g) (.mul (.rational 1359734814 1) .v))
    .g) (.mul (.rational 265720015 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 852572192 1) .g) (.mul (.rational 1400729854 1) .v)) .g) (.mul (.rational
    413258863 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    411690456 1) .g) (.mul (.rational 955328720 1) .v)) .g) (.mul (.rational 405866601 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 131814662 1) .g) (.mul
    (.rational 435422232 1) .v)) .g) (.mul (.rational 261890883 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 26710385 1) .g) (.mul (.rational 130536538 1) .v))
    .g) (.mul (.rational 111958455 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3084295 1) .g) (.mul (.rational 24563622 1) .v)) .g) (.mul (.rational
    31193415 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 153578 1)
    .g) (.mul (.rational 2613820 1) .v)) .g) (.mul (.rational 5408426 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 119190 1) .v) .g) (.mul (.rational 527040 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 21960 1) (.pow .v 2)) (.pow .g 10))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9054332 1) .f) (.add
    (.mul (.rational 63958617 1) .g) (.mul (.rational 13394762 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 199631795 1) .g) (.mul (.rational 92534924 1) .v)) .g) (.mul (.rational
    4947726 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 362000674 1) .g) (.mul
    (.rational 281621980 1) .v)) .g) (.mul (.rational 33407073 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 421620492 1) .g) (.mul (.rational 496204510 1) .v)) .g)
    (.mul (.rational 99054927 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 328985104 1) .g) (.mul (.rational 559276114 1) .v)) .g) (.mul (.rational 169402549
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 173855720 1) .g)
    (.mul (.rational 420349008 1) .v)) .g) (.mul (.rational 184518105 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 61334622 1) .g) (.mul (.rational 212850220
    1) .v)) .g) (.mul (.rational 133353457 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13802372 1) .g) (.mul (.rational 71543934 1) .v)) .g) (.mul (.rational
    64572391 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1786599
    1) .g) (.mul (.rational 15251096 1) .v)) .g) (.mul (.rational 20636779 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 100905 1) .g) (.mul (.rational 1860488 1)
    .v)) .g) (.mul (.rational 4161517 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 98692 1) .v) .g) (.mul (.rational 478782 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 23974 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1675402 1) .f) (.add (.mul (.rational
    12591754 1) .g) (.mul (.rational 2681830 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    41959079 1) .g) (.mul (.rational 19836756 1) .v)) .g) (.mul (.rational 1076278 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 81533299 1) .g) (.mul (.rational 64920232
    1) .v)) .g) (.mul (.rational 7836540 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 102175271 1) .g) (.mul (.rational 123597108 1) .v)) .g) (.mul (.rational 25194267
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 86164873 1) .g)
    (.mul (.rational 151328578 1) .v)) .g) (.mul (.rational 47007125 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 49451819 1) .g) (.mul (.rational 124282700
    1) .v)) .g) (.mul (.rational 56250019 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19047829 1) .g) (.mul (.rational 69214326 1) .v)) .g) (.mul (.rational
    45011259 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4707359
    1) .g) (.mul (.rational 25768172 1) .v)) .g) (.mul (.rational 24342355 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 673541 1) .g) (.mul (.rational 6130528 1)
    .v)) .g) (.mul (.rational 8770787 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 42366 1) .g) (.mul (.rational 841408 1) .v)) .g) (.mul (.rational 2013615 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 50650 1) .v) .g) (.mul
    (.rational 266289 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 15466 1) (.pow .v
    2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 192252 1) .f) (.add (.mul (.rational 1532232 1) .g) (.mul (.rational 331848
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 5430766 1) .g) (.mul (.rational 2617632 1)
    .v)) .g) (.mul (.rational 144102 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11261103 1) .g) (.mul (.rational 9170350 1) .v)) .g) (.mul (.rational 1125888 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 15112079 1) .g) (.mul
    (.rational 18766232 1) .v)) .g) (.mul (.rational 3902318 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 13698479 1) .g) (.mul (.rational 24809308 1) .v)) .g)
    (.mul (.rational 7890153 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8484507 1) .g) (.mul (.rational 22108640 1) .v)) .g) (.mul (.rational 10290577 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3541861 1) .g) (.mul
    (.rational 13430752 1) .v)) .g) (.mul (.rational 9031873 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 952873 1) .g) (.mul (.rational 5484920 1) .v)) .g)
    (.mul (.rational 5394273 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 149109 1) .g) (.mul (.rational 1439692 1) .v)) .g) (.mul (.rational 2162003 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10307 1) .g) (.mul
    (.rational 219248 1) .v)) .g) (.mul (.rational 556133 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 14722 1) .v) .g) (.mul (.rational 82947 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 5461 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10272 1) .f) (.add (.mul
    (.rational 86568 1) .g) (.mul (.rational 19056 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    325322 1) .g) (.mul (.rational 159744 1) .v)) .g) (.mul (.rational 8916 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 717304 1) .g) (.mul (.rational 596718 1) .v)) .g)
    (.mul (.rational 74430 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1026704 1) .g) (.mul (.rational 1306752 1) .v)) .g) (.mul (.rational 276742 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 995848 1) .g) (.mul (.rational
    1855896 1) .v)) .g) (.mul (.rational 602912 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 662228 1) .g) (.mul (.rational 1784160 1) .v)) .g) (.mul
    (.rational 851368 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    297832 1) .g) (.mul (.rational 1174404 1) .v)) .g) (.mul (.rational 813260 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 86624 1) .g) (.mul (.rational
    522048 1) .v)) .g) (.mul (.rational 531580 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 14704 1) .g) (.mul (.rational 149832 1) .v)) .g) (.mul (.rational
    234512 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1106 1) .g)
    (.mul (.rational 25056 1) .v)) .g) (.mul (.rational 66772 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 1854 1) .v) .g) (.mul (.rational 11078 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 814 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0505

namespace FullHigh0506
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  16*SmallGap.PolarCoefficientsHigh2.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    32*SmallGap.PolarCoefficientsHigh1.c050 e f g v*((e+f)*(e+f+g))^5+
    80*SmallGap.PolarCoefficientsHigh2.c050 e f g v*e*((e+f)*(e+f+g))^5+
    4*SmallGap.PolarCoefficientsHigh2.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    8*SmallGap.PolarCoefficientsHigh1.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    12*SmallGap.PolarCoefficientsHigh2.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    16*SmallGap.PolarCoefficientsHigh0.c140 e f g v*((e+f)*(e+f+g))^4+
    32*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh2.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsHigh1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh2.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsHigh0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsHigh1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsHigh2.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsHigh0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(28*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^2+56*SmallGap.ReducedLayers.high0_010_1 e g v*e^3+70*SmallGap.ReducedLayers.high0_010_2 e
    g v*e^4+56*SmallGap.ReducedLayers.high0_010_3 e g v*e^5+28*SmallGap.ReducedLayers.high0_010_4
    e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_020_0 e g v+6*SmallGap.ReducedLayers.high1_020_1 e g
    v*e^1+15*SmallGap.ReducedLayers.high1_020_2 e g v*e^2+20*SmallGap.ReducedLayers.high1_020_3 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_020_4 e g v*e^4+6*SmallGap.ReducedLayers.high1_020_5 e
    g v*e^5+1*SmallGap.ReducedLayers.high1_020_6 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 132804 1) .e) (.add (.mul (.rational 1195572 1) .f) (.add (.mul (.rational
    1478694 1) .g) (.mul (.rational 240660 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    6704880 1) .f) (.add (.mul (.rational 11299176 1) .g) (.mul (.rational 1967112 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 6809264 1) .g) (.mul (.rational 2414160 1) .v)) .g) (.mul
    (.rational 109872 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    26207587 1) .f) (.add (.mul (.rational 55865271 1) .g) (.mul (.rational 10026744 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 45358061 1) .g) (.mul (.rational 16816716 1) .v)) .g) (.mul
    (.rational 818454 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 17502177 1)
    .g) (.mul (.rational 9895032 1) .v)) .g) (.mul (.rational 1013208 1) (.pow .v 2))) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 75719876 1) .f) (.add (.mul
    (.rational 195083354 1) .g) (.mul (.rational 35626194 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 199142838 1) .g) (.mul (.rational 75870738 1) .v)) .g) (.mul (.rational 3793188 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 102725634 1) .g) (.mul (.rational
    60618412 1) .v)) .g) (.mul (.rational 6431124 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 28137166 1) .g) (.mul (.rational 22546866 1) .v)) .g) (.mul (.rational
    3755864 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 167389416 1) .f) (.add (.mul (.rational 505476135 1) .g) (.mul
    (.rational 93488322 1) .v))) .f) (.add (.mul (.add (.mul (.rational 621292722 1) .g) (.mul
    (.rational 241676260 1) .v)) .g) (.mul (.rational 12223645 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 400957924 1) .g) (.mul (.rational 244556326 1) .v)) .g) (.mul
    (.rational 26386059 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    145918686 1) .g) (.mul (.rational 123040476 1) .v)) .g) (.mul (.rational 21053515 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 29732777 1) .g) (.mul
    (.rational 32214188 1) .v)) .g) (.mul (.rational 7624925 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 289139431
    1) .f) (.add (.mul (.rational 1001038928 1) .g) (.mul (.rational 187323472 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 1438369832 1) .g) (.mul (.rational 570214478 1) .v)) .g) (.mul
    (.rational 29009406 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1113846202
    1) .g) (.mul (.rational 699689392 1) .v)) .g) (.mul (.rational 76272234 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 504908419 1) .g) (.mul (.rational 445086248 1)
    .v)) .g) (.mul (.rational 77572616 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 135965430 1) .g) (.mul (.rational 157168242 1) .v)) .g) (.mul (.rational
    38470986 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 20963490
    1) .g) (.mul (.rational 30549518 1) .v)) .g) (.mul (.rational 9617306 1) (.pow .v 2))) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 395065756 1) .f) (.add (.mul (.rational 1542273913 1) .g) (.mul (.rational
    292231570 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2535754944 1) .g) (.mul (.rational
    1024766606 1) .v)) .g) (.mul (.rational 52379174 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2289630021 1) .g) (.mul (.rational 1480130070 1) .v)) .g) (.mul (.rational
    162834988 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1241222832 1) .g)
    (.mul (.rational 1140821048 1) .v)) .g) (.mul (.rational 202209929 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 414588195 1) .g) (.mul (.rational 508535592
    1) .v)) .g) (.mul (.rational 128312781 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 84057852 1) .g) (.mul (.rational 132913762 1) .v)) .g) (.mul (.rational
    44190325 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 9738223
    1) .g) (.mul (.rational 19680412 1) .v)) .g) (.mul (.rational 8096587 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 429428892 1) .f) (.add (.mul (.rational 1865963081 1) .g) (.mul
    (.rational 358585794 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3454129306 1) .g) (.mul
    (.rational 1424773882 1) .v)) .g) (.mul (.rational 73262544 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3561591738 1) .g) (.mul (.rational 2370471428 1) .v)) .g) (.mul
    (.rational 263612511 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2245314684 1) .g) (.mul (.rational 2149755838 1) .v)) .g) (.mul (.rational 388140008 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 893841761 1) .g) (.mul
    (.rational 1159952954 1) .v)) .g) (.mul (.rational 301918302 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 223844876 1) .g) (.mul (.rational 381901982 1)
    .v)) .g) (.mul (.rational 133799378 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 33935356 1) .g) (.mul (.rational 75727578 1) .v)) .g) (.mul (.rational
    34037859 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2847138
    1) .g) (.mul (.rational 8574710 1) .v)) .g) (.mul (.rational 4781406 1) (.pow .v 2))) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 371356320 1) .f) (.add (.mul (.rational 1777526447 1) .g)
    (.mul (.rational 347112830 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3657958504 1) .g)
    (.mul (.rational 1542527646 1) .v)) .g) (.mul (.rational 79999742 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4239552442 1) .g) (.mul (.rational 2907903540 1) .v)) .g)
    (.mul (.rational 327814728 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    3045461376 1) .g) (.mul (.rational 3036936152 1) .v)) .g) (.mul (.rational 560116077 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1405882862 1) .g) (.mul
    (.rational 1926577864 1) .v)) .g) (.mul (.rational 518367922 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 418103140 1) .g) (.mul (.rational 766458174 1)
    .v)) .g) (.mul (.rational 282848277 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 77948478 1) .g) (.mul (.rational 190789958 1) .v)) .g) (.mul (.rational
    93066059 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8515352
    1) .g) (.mul (.rational 28753908 1) .v)) .g) (.mul (.rational 18219360 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 471345 1) .g) (.mul (.rational 2427736 1)
    .v)) .g) (.mul (.rational 2030715 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 254046786 1) .f) (.add (.mul (.rational 1328208189 1) .g) (.mul (.rational
    264079634 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3007875471 1) .g) (.mul (.rational
    1298812606 1) .v)) .g) (.mul (.rational 68146688 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3870180038 1) .g) (.mul (.rational 2738442912 1) .v)) .g) (.mul (.rational
    313938511 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3119180003 1) .g)
    (.mul (.rational 3239700056 1) .v)) .g) (.mul (.rational 612186351 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1636734735 1) .g) (.mul (.rational
    2365008194 1) .v)) .g) (.mul (.rational 659158940 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 562665867 1) .g) (.mul (.rational 1104397832 1) .v)) .g)
    (.mul (.rational 429150228 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 124076250 1) .g) (.mul (.rational 331133708 1) .v)) .g) (.mul (.rational 174287009
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 16588691 1) .g)
    (.mul (.rational 62294340 1) .v)) .g) (.mul (.rational 44118327 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1189196 1) .g) (.mul (.rational 6937230 1) .v))
    .g) (.mul (.rational 6789984 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 33354 1) .g) (.mul (.rational 401882 1) .v)) .g) (.mul (.rational 600838 1) (.pow
    .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 135806511 1) .f)
    (.add (.mul (.rational 770070928 1) .g) (.mul (.rational 156168042 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1903162513 1) .g) (.mul (.rational 842717210 1) .v)) .g) (.mul
    (.rational 44865960 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2691577970
    1) .g) (.mul (.rational 1966364902 1) .v)) .g) (.mul (.rational 229912548 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2404445853 1) .g) (.mul (.rational
    2600959786 1) .v)) .g) (.mul (.rational 504823460 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1412542521 1) .g) (.mul (.rational 2149102740 1) .v)) .g)
    (.mul (.rational 621362654 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 550409465 1) .g) (.mul (.rational 1152959800 1) .v)) .g) (.mul (.rational 471320888
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 139785205 1) .g)
    (.mul (.rational 404531308 1) .v)) .g) (.mul (.rational 228459984 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 22002413 1) .g) (.mul (.rational 91175750 1)
    .v)) .g) (.mul (.rational 71176799 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1919400 1) .g) (.mul (.rational 12564400 1) .v)) .g) (.mul (.rational
    14016053 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 69269 1)
    .g) (.mul (.rational 947954 1) .v)) .g) (.mul (.rational 1669691 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 29108 1) .v) .g) (.mul (.rational 108341 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    55538656 1) .f) (.add (.mul (.rational 339523117 1) .g) (.mul (.rational 70336648 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 909384175 1) .g) (.mul (.rational 413400456 1) .v)) .g)
    (.mul (.rational 22390012 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1402113677 1) .g) (.mul (.rational 1058211214 1) .v)) .g) (.mul (.rational 126483909 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1374801997 1) .g) (.mul (.rational
    1548406772 1) .v)) .g) (.mul (.rational 309223792 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 893500404 1) .g) (.mul (.rational 1429183928 1) .v)) .g)
    (.mul (.rational 428891371 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 388782121 1) .g) (.mul (.rational 866374114 1) .v)) .g) (.mul (.rational 371962750
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 111530875 1) .g)
    (.mul (.rational 348177454 1) .v)) .g) (.mul (.rational 209807342 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 20126451 1) .g) (.mul (.rational 91362758 1)
    .v)) .g) (.mul (.rational 77682888 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2054891 1) .g) (.mul (.rational 14960162 1) .v)) .g) (.mul (.rational
    18631191 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 89564 1)
    .g) (.mul (.rational 1379548 1) .v)) .g) (.mul (.rational 2780672 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 54242 1) .v) .g) (.mul (.rational 234791 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 8490 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16778300 1) .f) (.add
    (.mul (.rational 110018840 1) .g) (.mul (.rational 23309860 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 317485740 1) .g) (.mul (.rational 148288946 1) .v)) .g) (.mul (.rational
    8186155 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 530024356 1) .g) (.mul
    (.rational 413346666 1) .v)) .g) (.mul (.rational 50584583 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 565857936 1) .g) (.mul (.rational 663168056 1) .v)) .g)
    (.mul (.rational 136385750 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 402951535 1) .g) (.mul (.rational 676459752 1) .v)) .g) (.mul (.rational 210631667
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 193505182 1) .g)
    (.mul (.rational 457278662 1) .v)) .g) (.mul (.rational 205702986 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 61786004 1) .g) (.mul (.rational 207038666
    1) .v)) .g) (.mul (.rational 132375155 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 12538726 1) .g) (.mul (.rational 61925128 1) .v)) .g) (.mul (.rational
    56756391 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1458977
    1) .g) (.mul (.rational 11714612 1) .v)) .g) (.mul (.rational 16020503 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 73828 1) .g) (.mul (.rational 1268728 1)
    .v)) .g) (.mul (.rational 2861943 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 59964 1) .v) .g) (.mul (.rational 294716 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 13399 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 3527679 1) .f) (.add (.mul (.rational 24702263 1) .g)
    (.mul (.rational 5356926 1) .v))) .f) (.add (.mul (.add (.mul (.rational 76416481 1) .g) (.mul
    (.rational 36686828 1) .v)) .g) (.mul (.rational 2066794 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 137334598 1) .g) (.mul (.rational 110654108 1) .v)) .g) (.mul
    (.rational 13875219 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    158571246 1) .g) (.mul (.rational 193207076 1) .v)) .g) (.mul (.rational 40919707 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 122750229 1) .g) (.mul
    (.rational 215863248 1) .v)) .g) (.mul (.rational 69660574 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 64443159 1) .g) (.mul (.rational 160976178 1) .v))
    .g) (.mul (.rational 75652727 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22638660 1) .g) (.mul (.rational 81039930 1) .v)) .g) (.mul (.rational 54676203 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5091629 1) .g) (.mul
    (.rational 27182856 1) .v)) .g) (.mul (.rational 26612460 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 662330 1) .g) (.mul (.rational 5819758 1) .v)) .g)
    (.mul (.rational 8622736 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 37886 1) .g) (.mul (.rational 720406 1) .v)) .g) (.mul (.rational 1786985 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 39374 1) .v) .g) (.mul (.rational
    215556 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 11615 1) (.pow .v 2)) (.pow
    .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    460744 1) .f) (.add (.mul (.rational 3432166 1) .g) (.mul (.rational 762132 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 11332446 1) .g) (.mul (.rational 5592356 1) .v)) .g) (.mul
    (.rational 321668 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 21816494 1)
    .g) (.mul (.rational 18151976 1) .v)) .g) (.mul (.rational 2332152 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 27088601 1) .g) (.mul (.rational 34272630 1) .v)) .g)
    (.mul (.rational 7469547 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22644394 1) .g) (.mul (.rational 41626592 1) .v)) .g) (.mul (.rational 13896939 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 12895701 1) .g) (.mul
    (.rational 33940614 1) .v)) .g) (.mul (.rational 16609144 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4937906 1) .g) (.mul (.rational 18797056 1) .v)) .g)
    (.mul (.rational 13310575 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1216819 1) .g) (.mul (.rational 6980466 1) .v)) .g) (.mul (.rational 7241162 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 174416 1) .g) (.mul
    (.rational 1665100 1) .v)) .g) (.mul (.rational 2642937 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11065 1) .g) (.mul (.rational 231022 1) .v)) .g)
    (.mul (.rational 621244 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    14232 1) .v) .g) (.mul (.rational 85429 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 5267 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 28132 1) .f) (.add (.mul (.rational 222184 1) .g)
    (.mul (.rational 50520 1) .v))) .f) (.add (.mul (.add (.mul (.rational 780069 1) .g) (.mul
    (.rational 395544 1) .v)) .g) (.mul (.rational 23224 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1601789 1) .g) (.mul (.rational 1375070 1) .v)) .g) (.mul (.rational
    180884 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2128365 1) .g) (.mul
    (.rational 2792048 1) .v)) .g) (.mul (.rational 625298 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1910565 1) .g) (.mul (.rational 3662948 1) .v)) .g)
    (.mul (.rational 1262091 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1172599 1) .g) (.mul (.rational 3241096 1) .v)) .g) (.mul (.rational 1645547 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 485679 1) .g) (.mul
    (.rational 1957384 1) .v)) .g) (.mul (.rational 1447123 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 129939 1) .g) (.mul (.rational 796480 1) .v)) .g)
    (.mul (.rational 869079 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20295 1) .g) (.mul (.rational 209108 1) .v)) .g) (.mul (.rational 352153 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1408 1) .g) (.mul
    (.rational 32048 1) .v)) .g) (.mul (.rational 92321 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 2186 1) .v) .g) (.mul (.rational 14197 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 979 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0506

namespace FullHigh0507
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  32*SmallGap.PolarCoefficientsHigh2.c050 e f g v*((e+f)*(e+f+g))^5+
    8*SmallGap.PolarCoefficientsHigh2.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    16*SmallGap.PolarCoefficientsHigh1.c140 e f g v*((e+f)*(e+f+g))^4+
    32*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsHigh1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsHigh2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsHigh0.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsHigh1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsHigh1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(8*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^1+28*SmallGap.ReducedLayers.high0_010_1 e g v*e^2+56*SmallGap.ReducedLayers.high0_010_2 e
    g v*e^3+70*SmallGap.ReducedLayers.high0_010_3 e g v*e^4+56*SmallGap.ReducedLayers.high0_010_4
    e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_020_1 e g v+6*SmallGap.ReducedLayers.high1_020_2 e g
    v*e^1+15*SmallGap.ReducedLayers.high1_020_3 e g v*e^2+20*SmallGap.ReducedLayers.high1_020_4 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_020_5 e g v*e^4+6*SmallGap.ReducedLayers.high1_020_6 e
    g v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    115884 1) .e) (.add (.mul (.rational 1024818 1) .f) (.add (.mul (.rational 1262886 1) .g)
    (.mul (.rational 207564 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 5622774 1) .f) (.add
    (.mul (.rational 9432330 1) .g) (.mul (.rational 1648704 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 5667700 1) .g) (.mul (.rational 1991184 1) .v)) .g) (.mul (.rational 94200 1) (.pow
    .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 21391623 1) .f) (.add (.mul
    (.rational 45352575 1) .g) (.mul (.rational 8138716 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 36673057 1) .g) (.mul (.rational 13409596 1) .v)) .g) (.mul (.rational 677442 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 14129473 1) .g) (.mul (.rational
    7711700 1) .v)) .g) (.mul (.rational 820476 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 59785870 1) .f) (.add (.mul (.rational 153075235 1) .g)
    (.mul (.rational 27880372 1) .v))) .f) (.add (.mul (.add (.mul (.rational 155466093 1) .g)
    (.mul (.rational 58279768 1) .v)) .g) (.mul (.rational 3018732 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 79954557 1) .g) (.mul (.rational 45490884 1) .v)) .g) (.mul
    (.rational 4993740 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 21908249
    1) .g) (.mul (.rational 16424832 1) .v)) .g) (.mul (.rational 2813740 1) (.pow .v 2))) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 126915103
    1) .f) (.add (.mul (.rational 380590339 1) .g) (.mul (.rational 70146976 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 464973524 1) .g) (.mul (.rational 177952800 1) .v)) .g) (.mul
    (.rational 9307941 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 298781836 1)
    .g) (.mul (.rational 175977864 1) .v)) .g) (.mul (.rational 19582399 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 108570561 1) .g) (.mul (.rational 86045608 1) .v))
    .g) (.mul (.rational 15070843 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22180357 1) .g) (.mul (.rational 21738320 1) .v)) .g) (.mul (.rational 5167581 1)
    (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 208706923 1) .f) (.add (.mul (.rational 717058033 1) .g) (.mul
    (.rational 133842982 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1023220639 1) .g) (.mul
    (.rational 399923808 1) .v)) .g) (.mul (.rational 21018534 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 788012422 1) .g) (.mul (.rational 479975744 1) .v)) .g) (.mul
    (.rational 53874529 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    356080061 1) .g) (.mul (.rational 297258868 1) .v)) .g) (.mul (.rational 52937055 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 95920401 1) .g) (.mul
    (.rational 101614638 1) .v)) .g) (.mul (.rational 24981911 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 14863581 1) .g) (.mul (.rational 18997908 1) .v)) .g)
    (.mul (.rational 5779551 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 268696953 1) .f) (.add (.mul
    (.rational 1040302388 1) .g) (.mul (.rational 197134912 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1697284439 1) .g) (.mul (.rational 679013800 1) .v)) .g) (.mul (.rational 35867083
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1522498735 1) .g) (.mul
    (.rational 960434556 1) .v)) .g) (.mul (.rational 108863036 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 821543359 1) .g) (.mul (.rational 722288628 1) .v)) .g)
    (.mul (.rational 131031673 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 273955442 1) .g) (.mul (.rational 312817080 1) .v)) .g) (.mul (.rational 79681441
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 55681113 1) .g)
    (.mul (.rational 79089888 1) .v)) .g) (.mul (.rational 25810208 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6498843 1) .g) (.mul (.rational 11294764 1) .v))
    .g) (.mul (.rational 4304471 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 271767419 1) .f)
    (.add (.mul (.rational 1170509219 1) .g) (.mul (.rational 225896774 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 2148564367 1) .g) (.mul (.rational 882432502 1) .v)) .g) (.mul
    (.rational 46994492 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2198777027
    1) .g) (.mul (.rational 1439911378 1) .v)) .g) (.mul (.rational 165494074 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1377962626 1) .g) (.mul (.rational
    1277172224 1) .v)) .g) (.mul (.rational 237211850 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 546693899 1) .g) (.mul (.rational 672016330 1) .v)) .g)
    (.mul (.rational 178266663 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 136938953 1) .g) (.mul (.rational 215217146 1) .v)) .g) (.mul (.rational 75493697
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 20860819 1) .g)
    (.mul (.rational 41484910 1) .v)) .g) (.mul (.rational 18071767 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1767327 1) .g) (.mul (.rational 4584584 1) .v))
    .g) (.mul (.rational 2344981 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    215277485 1) .f) (.add (.mul (.rational 1020892122 1) .g) (.mul (.rational 201306376 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 2081920970 1) .g) (.mul (.rational 880471246 1) .v))
    .g) (.mul (.rational 47484865 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2392776954 1) .g) (.mul (.rational 1630548086 1) .v)) .g) (.mul (.rational 191013509 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1706707146 1) .g) (.mul (.rational
    1669515232 1) .v)) .g) (.mul (.rational 319272117 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 783997507 1) .g) (.mul (.rational 1036432604 1) .v)) .g)
    (.mul (.rational 287790518 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 232756464 1) .g) (.mul (.rational 403080774 1) .v)) .g) (.mul (.rational 152176658
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 43506094 1) .g)
    (.mul (.rational 98198310 1) .v)) .g) (.mul (.rational 48301246 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4789153 1) .g) (.mul (.rational 14567292 1) .v))
    .g) (.mul (.rational 9126016 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 268313 1) .g) (.mul (.rational 1226780 1) .v)) .g) (.mul (.rational 999635 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 132192243 1) .f) (.add (.mul
    (.rational 684434305 1) .g) (.mul (.rational 138310754 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1535126116 1) .g) (.mul (.rational 670308052 1) .v)) .g) (.mul (.rational 36780070
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1957245464 1) .g) (.mul
    (.rational 1390638238 1) .v)) .g) (.mul (.rational 166877639 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1564729206 1) .g) (.mul (.rational 1616612132 1) .v)) .g)
    (.mul (.rational 319877489 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 815936704 1) .g) (.mul (.rational 1158506780 1) .v)) .g) (.mul (.rational 337933342
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 279541855 1) .g)
    (.mul (.rational 531101588 1) .v)) .g) (.mul (.rational 215635026 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 61682096 1) .g) (.mul (.rational 156692386
    1) .v)) .g) (.mul (.rational 85958082 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8294587 1) .g) (.mul (.rational 29199240 1) .v)) .g) (.mul (.rational
    21534130 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 601429 1)
    .g) (.mul (.rational 3264790 1) .v)) .g) (.mul (.rational 3355521 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 17131 1) .g) (.mul (.rational 194004 1) .v))
    .g) (.mul (.rational 314297 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 61707370 1) .f) (.add (.mul (.rational 346386367 1) .g) (.mul
    (.rational 71919028 1) .v))) .f) (.add (.mul (.add (.mul (.rational 847443348 1) .g) (.mul
    (.rational 382870728 1) .v)) .g) (.mul (.rational 21463091 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1186816471 1) .g) (.mul (.rational 880428928 1) .v)) .g) (.mul
    (.rational 108667698 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1050725957 1) .g) (.mul (.rational 1146700188 1) .v)) .g) (.mul (.rational 235574585 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 612696023 1) .g) (.mul
    (.rational 932629288 1) .v)) .g) (.mul (.rational 286243480 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 237574581 1) .g) (.mul (.rational 492876356 1) .v))
    .g) (.mul (.rational 214624426 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 60268598 1) .g) (.mul (.rational 170860396 1) .v)) .g) (.mul (.rational
    103290990 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9525046
    1) .g) (.mul (.rational 38311896 1) .v)) .g) (.mul (.rational 32292086 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 839677 1) .g) (.mul (.rational 5321088 1)
    .v)) .g) (.mul (.rational 6519099 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 30834 1) .g) (.mul (.rational 412944 1) .v)) .g) (.mul (.rational 824494 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 13384 1) .v) .g) (.mul
    (.rational 59133 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 21176239 1) .f) (.add (.mul (.rational 128113128 1) .g) (.mul
    (.rational 27385218 1) .v))) .f) (.add (.mul (.add (.mul (.rational 339535604 1) .g) (.mul
    (.rational 158967506 1) .v)) .g) (.mul (.rational 9133948 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 518090478 1) .g) (.mul (.rational 401591618 1) .v)) .g) (.mul
    (.rational 51125908 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    503054297 1) .g) (.mul (.rational 579641606 1) .v)) .g) (.mul (.rational 123862724 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 324176355 1) .g) (.mul
    (.rational 527789212 1) .v)) .g) (.mul (.rational 170412272 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 140177323 1) .g) (.mul (.rational 316006876 1) .v))
    .g) (.mul (.rational 146979980 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 40103151 1) .g) (.mul (.rational 125839608 1) .v)) .g) (.mul (.rational
    82905874 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7253937
    1) .g) (.mul (.rational 32939962 1) .v)) .g) (.mul (.rational 31025642 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 747444 1) .g) (.mul (.rational 5445342 1)
    .v)) .g) (.mul (.rational 7661489 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 33156 1) .g) (.mul (.rational 516450 1) .v)) .g) (.mul (.rational 1210471 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 21402 1) .v) .g) (.mul
    (.rational 111749 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 4527 1) (.pow .v
    2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5040286 1) .f) (.add (.mul (.rational 32697249 1) .g) (.mul (.rational 7206308 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 93326360 1) .g) (.mul (.rational 45323146 1) .v)) .g) (.mul
    (.rational 2675040 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 154106986 1)
    .g) (.mul (.rational 124834054 1) .v)) .g) (.mul (.rational 16417908 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 162804679 1) .g) (.mul (.rational 197855042 1) .v))
    .g) (.mul (.rational 43996196 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 114841636 1) .g) (.mul (.rational 199442330 1) .v)) .g) (.mul (.rational 67639348
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 54735778 1) .g)
    (.mul (.rational 133416692 1) .v)) .g) (.mul (.rational 65961767 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 17401706 1) .g) (.mul (.rational 59968944 1)
    .v)) .g) (.mul (.rational 42627451 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3533345 1) .g) (.mul (.rational 17917346 1) .v)) .g) (.mul (.rational
    18533087 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 414175 1)
    .g) (.mul (.rational 3422110 1) .v)) .g) (.mul (.rational 5387822 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 21304 1) .g) (.mul (.rational 380382 1) .v))
    .g) (.mul (.rational 1013657 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 18862 1) .v) .g) (.mul (.rational 112903 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 5685 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 743688 1) .f) (.add (.mul (.rational 5150388 1) .g)
    (.mul (.rational 1171464 1) .v))) .f) (.add (.mul (.add (.mul (.rational 15752487 1) .g) (.mul
    (.rational 7938368 1) .v)) .g) (.mul (.rational 481848 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 27986840 1) .g) (.mul (.rational 23682706 1) .v)) .g) (.mul (.rational
    3219144 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 31953481 1) .g)
    (.mul (.rational 40897098 1) .v)) .g) (.mul (.rational 9456892 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 24478513 1) .g) (.mul (.rational 45211664 1) .v))
    .g) (.mul (.rational 16066116 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12738508 1) .g) (.mul (.rational 33407106 1) .v)) .g) (.mul (.rational 17467614 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4448362 1) .g) (.mul
    (.rational 16713388 1) .v)) .g) (.mul (.rational 12705329 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 998965 1) .g) (.mul (.rational 5601646 1) .v)) .g)
    (.mul (.rational 6276559 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 130601 1) .g) (.mul (.rational 1209368 1) .v)) .g) (.mul (.rational 2090782 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 7575 1) .g) (.mul
    (.rational 153094 1) .v)) .g) (.mul (.rational 453556 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 8722 1) .v) .g) (.mul (.rational 58549 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 3451 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 51264 1) .f) (.add (.mul
    (.rational 377548 1) .g) (.mul (.rational 88664 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1231950 1) .g) (.mul (.rational 644184 1) .v)) .g) (.mul (.rational 40224 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2343225 1) .g) (.mul (.rational 2069700
    1) .v)) .g) (.mul (.rational 290640 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2874766 1) .g) (.mul (.rational 3868010 1) .v)) .g) (.mul (.rational 928736 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2375759 1) .g) (.mul
    (.rational 4652242 1) .v)) .g) (.mul (.rational 1727100 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1339288 1) .g) (.mul (.rational 3761002 1) .v)) .g)
    (.mul (.rational 2069369 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 508855 1) .g) (.mul (.rational 2070474 1) .v)) .g) (.mul (.rational 1670346 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 124910 1) .g) (.mul
    (.rational 767790 1) .v)) .g) (.mul (.rational 921775 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 17941 1) .g) (.mul (.rational 184270 1) .v)) .g) (.mul
    (.rational 344856 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1150 1) .g) (.mul (.rational 26022 1) .v)) .g) (.mul (.rational 84295 1) (.pow .v 2))) (.pow
    .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1658 1) .v) .g) (.mul (.rational 12274 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 817 1) (.pow .v 2)) (.pow .g 10))) (.pow .f
    3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0507

namespace FullHigh0508
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  16*SmallGap.PolarCoefficientsHigh2.c140 e f g v*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsHigh2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsHigh1.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsHigh2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsHigh2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsHigh0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    1*SmallGap.PolarCoefficientsHigh0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_010_0 e g v+8*SmallGap.ReducedLayers.high0_010_1 e g
    v*e^1+28*SmallGap.ReducedLayers.high0_010_2 e g v*e^2+56*SmallGap.ReducedLayers.high0_010_3 e
    g v*e^3+70*SmallGap.ReducedLayers.high0_010_4 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_020_2 e g v+6*SmallGap.ReducedLayers.high1_020_3 e g
    v*e^1+15*SmallGap.ReducedLayers.high1_020_4 e g v*e^2+20*SmallGap.ReducedLayers.high1_020_5 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_020_6 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 73800 1)
    .e) (.add (.mul (.rational 642159 1) .f) (.add (.mul (.rational 788652 1) .g) (.mul (.rational
    130536 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 3450396 1) .f) (.add (.mul (.rational
    5762394 1) .g) (.mul (.rational 1008246 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    3454244 1) .g) (.mul (.rational 1196232 1) .v)) .g) (.mul (.rational 58920 1) (.pow .v 2)))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 12777848 1) .f) (.add (.mul (.rational
    26941947 1) .g) (.mul (.rational 4819618 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    21704804 1) .g) (.mul (.rational 7782628 1) .v)) .g) (.mul (.rational 409473 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8357725 1) .g) (.mul (.rational 4357418 1) .v))
    .g) (.mul (.rational 484272 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 34505744 1) .f) (.add (.mul (.rational 87773286 1) .g) (.mul (.rational
    15901122 1) .v))) .f) (.add (.mul (.add (.mul (.rational 88699734 1) .g) (.mul (.rational
    32532934 1) .v)) .g) (.mul (.rational 1754304 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 45511374 1) .g) (.mul (.rational 24699424 1) .v)) .g) (.mul (.rational
    2823774 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 12493370 1) .g)
    (.mul (.rational 8592138 1) .v)) .g) (.mul (.rational 1526180 1) (.pow .v 2))) (.pow .g 2))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 70147332 1) .f)
    (.add (.mul (.rational 208776927 1) .g) (.mul (.rational 38272926 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 253480222 1) .g) (.mul (.rational 94981018 1) .v)) .g) (.mul (.rational
    5169995 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 162234856 1) .g) (.mul
    (.rational 91366104 1) .v)) .g) (.mul (.rational 10566229 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 58926708 1) .g) (.mul (.rational 43096302 1) .v)) .g) (.mul
    (.rational 7793775 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    12092889 1) .g) (.mul (.rational 10373402 1) .v)) .g) (.mul (.rational 2492083 1) (.pow .v
    2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 109286806 1) .f) (.add (.mul (.rational 372299604 1) .g) (.mul (.rational
    69274040 1) .v))) .f) (.add (.mul (.add (.mul (.rational 527323774 1) .g) (.mul (.rational
    202521064 1) .v)) .g) (.mul (.rational 11083878 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 403860822 1) .g) (.mul (.rational 236651182 1) .v)) .g) (.mul (.rational
    27607498 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 182026590 1) .g)
    (.mul (.rational 141720154 1) .v)) .g) (.mul (.rational 26056696 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 49117798 1) .g) (.mul (.rational 46387844 1)
    .v)) .g) (.mul (.rational 11556184 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7665282 1) .g) (.mul (.rational 8190374 1) .v)) .g) (.mul (.rational 2394482
    1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 131557894 1) .f) (.add (.mul (.rational 504574773 1)
    .g) (.mul (.rational 95741700 1) .v))) .f) (.add (.mul (.add (.mul (.rational 816189930 1) .g)
    (.mul (.rational 322876398 1) .v)) .g) (.mul (.rational 17808181 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 726996627 1) .g) (.mul (.rational 445336854 1) .v)) .g)
    (.mul (.rational 52635662 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    390505954 1) .g) (.mul (.rational 324833022 1) .v)) .g) (.mul (.rational 61150183 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 130100309 1) .g) (.mul
    (.rational 135481848 1) .v)) .g) (.mul (.rational 35353841 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 26543314 1) .g) (.mul (.rational 32691228 1) .v)) .g)
    (.mul (.rational 10581636 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3125819 1) .g) (.mul (.rational 4410022 1) .v)) .g) (.mul (.rational 1532117 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 122387448 1) .f) (.add (.mul (.rational
    521744346 1) .g) (.mul (.rational 101469606 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    948483670 1) .g) (.mul (.rational 388499932 1) .v)) .g) (.mul (.rational 21715092 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 962464092 1) .g) (.mul (.rational 619342266
    1) .v)) .g) (.mul (.rational 74728138 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 599307004 1) .g) (.mul (.rational 534574632 1) .v)) .g) (.mul (.rational 104059190
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 236973190 1) .g)
    (.mul (.rational 272431052 1) .v)) .g) (.mul (.rational 75318922 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 59403640 1) .g) (.mul (.rational 84079982 1)
    .v)) .g) (.mul (.rational 30322124 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9098804 1) .g) (.mul (.rational 15559682 1) .v)) .g) (.mul (.rational 6767514
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 777970 1) .g)
    (.mul (.rational 1652198 1) .v)) .g) (.mul (.rational 799522 1) (.pow .v 2))) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 87298649 1) .f) (.add (.mul (.rational 409441875 1) .g) (.mul
    (.rational 82005550 1) .v))) .f) (.add (.mul (.add (.mul (.rational 826101517 1) .g) (.mul
    (.rational 351995478 1) .v)) .g) (.mul (.rational 20073013 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 940187098 1) .g) (.mul (.rational 638140946 1) .v)) .g) (.mul
    (.rational 79235939 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    665152645 1) .g) (.mul (.rational 637873608 1) .v)) .g) (.mul (.rational 129559393 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 303838776 1) .g) (.mul
    (.rational 385507780 1) .v)) .g) (.mul (.rational 113845430 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 90023869 1) .g) (.mul (.rational 145659700 1) .v))
    .g) (.mul (.rational 58506416 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16866228 1) .g) (.mul (.rational 34492382 1) .v)) .g) (.mul (.rational 18059066 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1868379 1) .g) (.mul
    (.rational 5005294 1) .v)) .g) (.mul (.rational 3363768 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 105395 1) .g) (.mul (.rational 418838 1) .v)) .g)
    (.mul (.rational 380165 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 46908092 1) .f) (.add (.mul (.rational 240029412 1) .g) (.mul (.rational 49710906
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 532136802 1) .g) (.mul (.rational 236747672 1)
    .v)) .g) (.mul (.rational 13861168 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 671009586 1) .g) (.mul (.rational 481764884 1) .v)) .g) (.mul (.rational 61975754
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 531215346 1) .g) (.mul
    (.rational 548334858 1) .v)) .g) (.mul (.rational 116955732 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 274889198 1) .g) (.mul (.rational 384195506 1) .v))
    .g) (.mul (.rational 121638706 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 93752620 1) .g) (.mul (.rational 172189812 1) .v)) .g) (.mul (.rational
    76602002 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 20677620
    1) .g) (.mul (.rational 49813266 1) .v)) .g) (.mul (.rational 30391556 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2791370 1) .g) (.mul (.rational 9182968
    1) .v)) .g) (.mul (.rational 7737140 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 203718 1) .g) (.mul (.rational 1033638 1) .v)) .g) (.mul (.rational
    1274862 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5814 1)
    .g) (.mul (.rational 63362 1) .v)) .g) (.mul (.rational 132638 1) (.pow .v 2))) (.pow .g 8))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 18389202 1) .f) (.add (.mul (.rational
    101950392 1) .g) (.mul (.rational 21902574 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    246323366 1) .g) (.mul (.rational 114729966 1) .v)) .g) (.mul (.rational 6930910 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 340788198 1) .g) (.mul (.rational 259237076
    1) .v)) .g) (.mul (.rational 34712724 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 298326668 1) .g) (.mul (.rational 331389554 1) .v)) .g) (.mul (.rational 74475630
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 172305327 1) .g)
    (.mul (.rational 264415584 1) .v)) .g) (.mul (.rational 89738600 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 66359142 1) .g) (.mul (.rational 137239584
    1) .v)) .g) (.mul (.rational 67056379 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16784823 1) .g) (.mul (.rational 46920918 1) .v)) .g) (.mul (.rational
    32503730 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2657346
    1) .g) (.mul (.rational 10476472 1) .v)) .g) (.mul (.rational 10439671 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 235708 1) .g) (.mul (.rational 1474028 1)
    .v)) .g) (.mul (.rational 2233379 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8724 1) .g) (.mul (.rational 118692 1) .v)) .g) (.mul (.rational 309841 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 4088 1) .v) .g) (.mul
    (.rational 24787 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 4968408 1) .f) (.add (.mul (.rational 29668374 1) .g) (.mul (.rational
    6626964 1) .v))) .f) (.add (.mul (.add (.mul (.rational 77588816 1) .g) (.mul (.rational
    37895070 1) .v)) .g) (.mul (.rational 2370004 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 116832914 1) .g) (.mul (.rational 94209762 1) .v)) .g) (.mul (.rational
    13164040 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 112016650 1) .g)
    (.mul (.rational 133727144 1) .v)) .g) (.mul (.rational 31690380 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 71376092 1) .g) (.mul (.rational 119762976
    1) .v)) .g) (.mul (.rational 43451730 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 30591334 1) .g) (.mul (.rational 70648096 1) .v)) .g) (.mul (.rational
    37565058 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8706464
    1) .g) (.mul (.rational 27846268 1) .v)) .g) (.mul (.rational 21460300 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1574454 1) .g) (.mul (.rational 7282992
    1) .v)) .g) (.mul (.rational 8273930 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 163136 1) .g) (.mul (.rational 1222408 1) .v)) .g) (.mul (.rational
    2156860 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 7318 1)
    .g) (.mul (.rational 120386 1) .v)) .g) (.mul (.rational 369526 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 5310 1) .v) .g) (.mul (.rational 37650 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 1682 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 827820 1) .f) (.add (.mul
    (.rational 5297394 1) .g) (.mul (.rational 1232088 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 14908536 1) .g) (.mul (.rational 7641000 1) .v)) .g) (.mul (.rational 495636 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 24270000 1) .g) (.mul (.rational
    20736534 1) .v)) .g) (.mul (.rational 3025974 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25285669 1) .g) (.mul (.rational 32371642 1) .v)) .g) (.mul (.rational
    8080696 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17608555
    1) .g) (.mul (.rational 32154210 1) .v)) .g) (.mul (.rational 12420678 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8302665 1) .g) (.mul (.rational 21236008
    1) .v)) .g) (.mul (.rational 12179447 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2620354 1) .g) (.mul (.rational 9466926 1) .v)) .g) (.mul (.rational
    7988903 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 530863 1)
    .g) (.mul (.rational 2829906 1) .v)) .g) (.mul (.rational 3576409 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 62505 1) .g) (.mul (.rational 548662 1) .v))
    .g) (.mul (.rational 1091840 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3255 1) .g) (.mul (.rational 63188 1) .v)) .g) (.mul (.rational 220585 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3324 1) .v) .g) (.mul (.rational
    26869 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1491 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 64170 1)
    .f) (.add (.mul (.rational 438114 1) .g) (.mul (.rational 106188 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1320228 1) .g) (.mul (.rational 710088 1) .v)) .g) (.mul (.rational
    47802 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2310260 1) .g) (.mul
    (.rational 2089264 1) .v)) .g) (.mul (.rational 318246 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2598184 1) .g) (.mul (.rational 3557562 1) .v)) .g) (.mul
    (.rational 933478 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1962050 1) .g) (.mul (.rational 3880184 1) .v)) .g) (.mul (.rational 1588636 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1008284 1) .g) (.mul (.rational
    2834088 1) .v)) .g) (.mul (.rational 1739434 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 348808 1) .g) (.mul (.rational 1407458 1) .v)) .g) (.mul
    (.rational 1284676 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    77990 1) .g) (.mul (.rational 471914 1) .v)) .g) (.mul (.rational 652236 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 10224 1) .g) (.mul (.rational
    103232 1) .v)) .g) (.mul (.rational 226948 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 600 1) .g) (.mul (.rational 13484 1) .v)) .g) (.mul (.rational
    52416 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 810 1) .v) .g)
    (.mul (.rational 7334 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 474 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0508

namespace FullHigh0509
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsHigh2.c230 e f g v*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsHigh2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsHigh1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    2*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsHigh1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_010_1 e g v+8*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^1+28*SmallGap.ReducedLayers.high0_010_3 e g v*e^2+56*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_020_3 e g v+6*SmallGap.ReducedLayers.high1_020_4 e g
    v*e^1+15*SmallGap.ReducedLayers.high1_020_5 e g v*e^2+20*SmallGap.ReducedLayers.high1_020_6 e
    g v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 33450 1) .e) (.add
    (.mul (.rational 286831 1) .f) (.add (.mul (.rational 351163 1) .g) (.mul (.rational 58374 1)
    .v)))) .e) (.add (.mul (.add (.mul (.rational 1510768 1) .f) (.add (.mul (.rational 2512219 1)
    .g) (.mul (.rational 438668 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1503261 1) .g)
    (.mul (.rational 510286 1) .v)) .g) (.mul (.rational 26220 1) (.pow .v 2))))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 5446295 1) .f) (.add (.mul (.rational 11419803 1) .g) (.mul
    (.rational 2030052 1) .v))) .f) (.add (.mul (.add (.mul (.rational 9169949 1) .g) (.mul
    (.rational 3203836 1) .v)) .g) (.mul (.rational 176272 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3533277 1) .g) (.mul (.rational 1737900 1) .v)) .g) (.mul (.rational
    203168 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    14192500 1) .f) (.add (.mul (.rational 35855413 1) .g) (.mul (.rational 6442794 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 36061253 1) .g) (.mul (.rational 12857630 1) .v)) .g) (.mul
    (.rational 726128 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 18478379 1)
    .g) (.mul (.rational 9441394 1) .v)) .g) (.mul (.rational 1133892 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5092079 1) .g) (.mul (.rational 3131130 1) .v)) .g)
    (.mul (.rational 583828 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 27544315 1) .f) (.add (.mul (.rational 81312325 1)
    .g) (.mul (.rational 14799834 1) .v))) .f) (.add (.mul (.add (.mul (.rational 98100538 1) .g)
    (.mul (.rational 35793546 1) .v)) .g) (.mul (.rational 2043591 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 62581358 1) .g) (.mul (.rational 33296470 1) .v)) .g) (.mul
    (.rational 4043455 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 22759745
    1) .g) (.mul (.rational 14995654 1) .v)) .g) (.mul (.rational 2837745 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4705535 1) .g) (.mul (.rational 3369812
    1) .v)) .g) (.mul (.rational 828797 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 40425750 1) .f) (.add (.mul
    (.rational 136415711 1) .g) (.mul (.rational 25306064 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 191698251 1) .g) (.mul (.rational 72103896 1) .v)) .g) (.mul (.rational 4152602 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 146044434 1) .g) (.mul (.rational
    81574678 1) .v)) .g) (.mul (.rational 10021381 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 65739696 1) .g) (.mul (.rational 46809754 1) .v)) .g) (.mul (.rational
    9033925 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17812813
    1) .g) (.mul (.rational 14431930 1) .v)) .g) (.mul (.rational 3711535 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2809653 1) .g) (.mul (.rational 2328426
    1) .v)) .g) (.mul (.rational 654373 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 45080418 1) .f)
    (.add (.mul (.rational 171046712 1) .g) (.mul (.rational 32587284 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 274069257 1) .g) (.mul (.rational 107194854 1) .v)) .g) (.mul
    (.rational 6261090 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 242350857 1)
    .g) (.mul (.rational 143449842 1) .v)) .g) (.mul (.rational 17993040 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 129676638 1) .g) (.mul (.rational 100734254 1) .v))
    .g) (.mul (.rational 20128621 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 43240180 1) .g) (.mul (.rational 39979566 1) .v)) .g) (.mul (.rational 11008593 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8880567 1) .g) (.mul
    (.rational 9015648 1) .v)) .g) (.mul (.rational 3000593 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1058711 1) .g) (.mul (.rational 1104452 1) .v)) .g)
    (.mul (.rational 355211 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 38013580 1) .f)
    (.add (.mul (.rational 160113650 1) .g) (.mul (.rational 31564336 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 287867676 1) .g) (.mul (.rational 118031630 1) .v)) .g) (.mul
    (.rational 7055314 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 289412055 1)
    .g) (.mul (.rational 183027146 1) .v)) .g) (.mul (.rational 23731736 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 179053539 1) .g) (.mul (.rational 152841436 1) .v))
    .g) (.mul (.rational 32146684 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 70629190 1) .g) (.mul (.rational 74831486 1) .v)) .g) (.mul (.rational 22486685 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 17751040 1) .g) (.mul
    (.rational 21993864 1) .v)) .g) (.mul (.rational 8676315 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2739481 1) .g) (.mul (.rational 3839100 1) .v)) .g)
    (.mul (.rational 1844015 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 236507 1) .g) (.mul (.rational 381614 1) .v)) .g) (.mul (.rational 211099 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 23865910 1) .f) (.add (.mul (.rational
    110458506 1) .g) (.mul (.rational 22678220 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    220065690 1) .g) (.mul (.rational 95210424 1) .v)) .g) (.mul (.rational 5879344 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 247644646 1) .g) (.mul (.rational 168322938
    1) .v)) .g) (.mul (.rational 22816394 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 173627383 1) .g) (.mul (.rational 163508724 1) .v)) .g) (.mul (.rational 36647102
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 78863525 1) .g)
    (.mul (.rational 95683710 1) .v)) .g) (.mul (.rational 31661116 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 23333868 1) .g) (.mul (.rational 34906758 1) .v))
    .g) (.mul (.rational 16092965 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4384612 1) .g) (.mul (.rational 7984796 1) .v)) .g) (.mul (.rational 5008035 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 488112 1) .g) (.mul
    (.rational 1128502 1) .v)) .g) (.mul (.rational 986037 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 27474 1) .g) (.mul (.rational 93686 1) .v)) .g) (.mul
    (.rational 127307 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    10822050 1) .f) (.add (.mul (.rational 54581942 1) .g) (.mul (.rational 11729088 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 119302948 1) .g) (.mul (.rational 54714044 1) .v)) .g)
    (.mul (.rational 3516982 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    148452146 1) .g) (.mul (.rational 108817876 1) .v)) .g) (.mul (.rational 15541160 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 116171662 1) .g) (.mul (.rational
    120795420 1) .v)) .g) (.mul (.rational 29035060 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 59583575 1) .g) (.mul (.rational 82426196 1) .v)) .g) (.mul
    (.rational 30038680 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20214277 1) .g) (.mul (.rational 35995428 1) .v)) .g) (.mul (.rational 19023984 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4452060 1) .g) (.mul
    (.rational 10197486 1) .v)) .g) (.mul (.rational 7761495 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 601458 1) .g) (.mul (.rational 1865258 1) .v)) .g)
    (.mul (.rational 2111087 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 43732 1) .g) (.mul (.rational 213014 1) .v)) .g) (.mul (.rational 388885 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1210 1) .g) (.mul
    (.rational 13536 1) .v)) .g) (.mul (.rational 46023 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 3352204 1) .f) (.add (.mul (.rational 18297156
    1) .g) (.mul (.rational 4129476 1) .v))) .f) (.add (.mul (.add (.mul (.rational 43520192 1)
    .g) (.mul (.rational 21213840 1) .v)) .g) (.mul (.rational 1426444 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 59299206 1) .g) (.mul (.rational 46932456 1) .v)) .g) (.mul
    (.rational 7090132 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 51184338
    1) .g) (.mul (.rational 58668444 1) .v)) .g) (.mul (.rational 15142470 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 29209118 1) .g) (.mul (.rational 45766644
    1) .v)) .g) (.mul (.rational 18275020 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11147951 1) .g) (.mul (.rational 23273238 1) .v)) .g) (.mul (.rational
    13836478 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2804205
    1) .g) (.mul (.rational 7847798 1) .v)) .g) (.mul (.rational 6930436 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 442667 1) .g) (.mul (.rational 1752350 1)
    .v)) .g) (.mul (.rational 2366729 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 39087 1) .g) (.mul (.rational 251922 1) .v)) .g) (.mul (.rational 554755 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1420 1) .g) (.mul
    (.rational 21192 1) .v)) .g) (.mul (.rational 85415 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 768 1) .v) .g) (.mul (.rational 7437 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 635310 1) .f) (.add
    (.mul (.rational 3730860 1) .g) (.mul (.rational 886140 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 9591150 1) .g) (.mul (.rational 4974480 1) .v)) .g) (.mul (.rational 350730 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 14196730 1) .g) (.mul (.rational
    12124776 1) .v)) .g) (.mul (.rational 1939140 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13388332 1) .g) (.mul (.rational 16860316 1) .v)) .g) (.mul (.rational
    4662908 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8403380 1)
    .g) (.mul (.rational 14797756 1) .v)) .g) (.mul (.rational 6426340 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3556464 1) .g) (.mul (.rational 8577710 1)
    .v)) .g) (.mul (.rational 5643376 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1002755 1) .g) (.mul (.rational 3345162 1) .v)) .g) (.mul (.rational 3328524
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 180223 1) .g)
    (.mul (.rational 877104 1) .v)) .g) (.mul (.rational 1354160 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 18579 1) .g) (.mul (.rational 150552 1) .v)) .g)
    (.mul (.rational 381019 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 825 1) .g) (.mul (.rational 15502 1) .v)) .g) (.mul (.rational 71385 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 726 1) .v) .g) (.mul (.rational 7913
    1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 377 1) (.pow .v 2)) (.pow .g 10))))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 55620 1) .f) (.add
    (.mul (.rational 349650 1) .g) (.mul (.rational 87480 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 965936 1) .g) (.mul (.rational 532980 1) .v)) .g) (.mul (.rational 39420 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1542900 1) .g) (.mul (.rational 1419396
    1) .v)) .g) (.mul (.rational 240030 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1577418 1) .g) (.mul (.rational 2173104 1) .v)) .g) (.mul (.rational 641516 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1078940 1) .g) (.mul
    (.rational 2118044 1) .v)) .g) (.mul (.rational 992618 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 500658 1) .g) (.mul (.rational 1376340 1) .v)) .g)
    (.mul (.rational 988826 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 155980 1) .g) (.mul (.rational 607598 1) .v)) .g) (.mul (.rational 667836 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 31314 1) .g) (.mul
    (.rational 182032 1) .v)) .g) (.mul (.rational 313290 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3666 1) .g) (.mul (.rational 36024 1) .v)) .g) (.mul
    (.rational 102138 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    190 1) .g) (.mul (.rational 4328 1) .v)) .g) (.mul (.rational 22354 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 242 1) .v) .g) (.mul (.rational 2962 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 178 1) (.pow .v 2)) (.pow .g 10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0509

namespace FullHigh05010
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsHigh2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    2*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsHigh2.c410 e f g v*e*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_010_2 e g v+8*SmallGap.ReducedLayers.high0_010_3 e g
    v*e^1+28*SmallGap.ReducedLayers.high0_010_4 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_020_4 e g v+6*SmallGap.ReducedLayers.high1_020_5 e g
    v*e^1+15*SmallGap.ReducedLayers.high1_020_6 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10242 1) .e) (.add (.mul (.rational
    86678 1) .f) (.add (.mul (.rational 105815 1) .g) (.mul (.rational 17618 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 447942 1) .f) (.add (.mul (.rational 741772 1) .g) (.mul
    (.rational 128864 1) .v))) .f) (.add (.mul (.add (.mul (.rational 443374 1) .g) (.mul
    (.rational 146644 1) .v)) .g) (.mul (.rational 7880 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 1571855 1) .f) (.add (.mul (.rational 3277378 1) .g) (.mul
    (.rational 577076 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2624599 1) .g) (.mul
    (.rational 887170 1) .v)) .g) (.mul (.rational 51301 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1013416 1) .g) (.mul (.rational 463320 1) .v)) .g) (.mul (.rational
    57504 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3946679 1) .f) (.add (.mul (.rational 9899059 1) .g) (.mul (.rational 1759304 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 9911897 1) .g) (.mul (.rational 3410410 1) .v)) .g) (.mul
    (.rational 203218 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5079151 1)
    .g) (.mul (.rational 2404216 1) .v)) .g) (.mul (.rational 306880 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1408752 1) .g) (.mul (.rational 748218 1) .v)) .g)
    (.mul (.rational 149300 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 7285478 1) .f) (.add (.mul (.rational 21316390 1) .g)
    (.mul (.rational 3846974 1) .v))) .f) (.add (.mul (.add (.mul (.rational 25556024 1) .g) (.mul
    (.rational 9025444 1) .v)) .g) (.mul (.rational 545935 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16267464 1) .g) (.mul (.rational 8057436 1) .v)) .g) (.mul (.rational
    1042185 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5938594 1) .g)
    (.mul (.rational 3412958 1) .v)) .g) (.mul (.rational 690363 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1242036 1) .g) (.mul (.rational 690630 1) .v))
    .g) (.mul (.rational 178925 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10003616 1) .f) (.add (.mul (.rational
    33398391 1) .g) (.mul (.rational 6185580 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    46545222 1) .g) (.mul (.rational 17098292 1) .v)) .g) (.mul (.rational 1050588 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 35299530 1) .g) (.mul (.rational 18599284
    1) .v)) .g) (.mul (.rational 2451435 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15903952 1) .g) (.mul (.rational 10101102 1) .v)) .g) (.mul (.rational 2102193 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4344293 1) .g) (.mul
    (.rational 2857228 1) .v)) .g) (.mul (.rational 789573 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 696526 1) .g) (.mul (.rational 393074 1) .v)) .g)
    (.mul (.rational 109681 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10212798 1) .f) (.add (.mul
    (.rational 38268252 1) .g) (.mul (.rational 7359260 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 60681684 1) .g) (.mul (.rational 23511564 1) .v)) .g) (.mul (.rational 1482713 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 53280450 1) .g) (.mul (.rational
    30351566 1) .v)) .g) (.mul (.rational 4145624 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 28447058 1) .g) (.mul (.rational 20338512 1) .v)) .g) (.mul (.rational
    4476395 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9526714 1)
    .g) (.mul (.rational 7559956 1) .v)) .g) (.mul (.rational 2328953 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1979952 1) .g) (.mul (.rational 1540722 1)
    .v)) .g) (.mul (.rational 585164 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 240520 1) .g) (.mul (.rational 157286 1) .v)) .g) (.mul (.rational 57817 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 7654937 1) .f) (.add (.mul (.rational 31782124
    1) .g) (.mul (.rational 6414150 1) .v))) .f) (.add (.mul (.add (.mul (.rational 56421811 1)
    .g) (.mul (.rational 23332564 1) .v)) .g) (.mul (.rational 1531402 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 56171409 1) .g) (.mul (.rational 35030954 1) .v)) .g) (.mul
    (.rational 5052931 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 34560843
    1) .g) (.mul (.rational 28139372 1) .v)) .g) (.mul (.rational 6712900 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 13636070 1) .g) (.mul (.rational 13131506
    1) .v)) .g) (.mul (.rational 4620115 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3450961 1) .g) (.mul (.rational 3632462 1) .v)) .g) (.mul (.rational
    1779717 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 539427 1)
    .g) (.mul (.rational 586918 1) .v)) .g) (.mul (.rational 397306 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 47198 1) .g) (.mul (.rational 52806 1) .v)) .g)
    (.mul (.rational 54967 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4094526 1)
    .f) (.add (.mul (.rational 18644312 1) .g) (.mul (.rational 3981724 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 36591216 1) .g) (.mul (.rational 16288316 1) .v)) .g) (.mul (.rational
    1126494 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 40656880 1) .g) (.mul
    (.rational 27971984 1) .v)) .g) (.mul (.rational 4322004 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 28246154 1) .g) (.mul (.rational 26304884 1) .v)) .g) (.mul
    (.rational 6896666 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    12775726 1) .g) (.mul (.rational 14856190 1) .v)) .g) (.mul (.rational 5988472 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3785692 1) .g) (.mul
    (.rational 5226160 1) .v)) .g) (.mul (.rational 3138459 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 715764 1) .g) (.mul (.rational 1159492 1) .v)) .g)
    (.mul (.rational 1058959 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 80094 1) .g) (.mul (.rational 161886 1) .v)) .g) (.mul (.rational 243203 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4437 1) .g) (.mul
    (.rational 13632 1) .v)) .g) (.mul (.rational 38191 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1480188 1) .f) (.add (.mul (.rational 7330588 1) .g) (.mul
    (.rational 1665908 1) .v))) .f) (.add (.mul (.add (.mul (.rational 15745382 1) .g) (.mul
    (.rational 7582156 1) .v)) .g) (.mul (.rational 557016 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19285282 1) .g) (.mul (.rational 14683204 1) .v)) .g) (.mul (.rational
    2448078 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 14896790 1) .g)
    (.mul (.rational 15847116 1) .v)) .g) (.mul (.rational 4581726 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7571755 1) .g) (.mul (.rational 10514940 1) .v))
    .g) (.mul (.rational 4814102 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2557520 1) .g) (.mul (.rational 4483656 1) .v)) .g) (.mul (.rational 3172792 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 562768 1) .g) (.mul
    (.rational 1255424 1) .v)) .g) (.mul (.rational 1398463 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 75788 1) .g) (.mul (.rational 232270 1) .v)) .g)
    (.mul (.rational 428477 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5381 1) .g) (.mul (.rational 27552 1) .v)) .g) (.mul (.rational 90533 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 132 1) .g) (.mul (.rational
    1818 1) .v)) .g) (.mul (.rational 11943 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 324216 1) .f) (.add (.mul (.rational 1734318 1) .g) (.mul
    (.rational 420660 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4043424 1) .g) (.mul
    (.rational 2110320 1) .v)) .g) (.mul (.rational 165240 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5405458 1) .g) (.mul (.rational 4552400 1) .v)) .g) (.mul (.rational
    820044 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4586544 1) .g) (.mul
    (.rational 5545540 1) .v)) .g) (.mul (.rational 1761942 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2580578 1) .g) (.mul (.rational 4221656 1) .v)) .g)
    (.mul (.rational 2167104 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 974478 1) .g) (.mul (.rational 2106688 1) .v)) .g) (.mul (.rational 1706357 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 243112 1) .g) (.mul
    (.rational 705914 1) .v)) .g) (.mul (.rational 913428 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 37949 1) .g) (.mul (.rational 159900 1) .v)) .g) (.mul
    (.rational 342559 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3252 1) .g) (.mul (.rational 23824 1) .v)) .g) (.mul (.rational 89211 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 107 1) .g) (.mul (.rational 2080 1) .v))
    .g) (.mul (.rational 15017 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 74 1) .v) .g) (.mul (.rational 1371 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 32508 1) .f) (.add (.mul (.rational
    186732 1) .g) (.mul (.rational 48384 1) .v))) .f) (.add (.mul (.add (.mul (.rational 469326 1)
    .g) (.mul (.rational 265356 1) .v)) .g) (.mul (.rational 22140 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 679286 1) .g) (.mul (.rational 630988 1) .v)) .g) (.mul
    (.rational 122472 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 627023 1)
    .g) (.mul (.rational 855608 1) .v)) .g) (.mul (.rational 296712 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 385948 1) .g) (.mul (.rational 733382 1) .v)) .g)
    (.mul (.rational 416598 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 160569 1) .g) (.mul (.rational 417356 1) .v)) .g) (.mul (.rational 378800 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 44571 1) .g) (.mul
    (.rational 161566 1) .v)) .g) (.mul (.rational 236127 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7862 1) .g) (.mul (.rational 42788 1) .v)) .g) (.mul
    (.rational 103576 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    783 1) .g) (.mul (.rational 7554 1) .v)) .g) (.mul (.rational 31751 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 32 1) .g) (.mul (.rational 804 1) .v)) .g)
    (.mul (.rational 6439 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 38
    1) .v) .g) (.mul (.rational 756 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 37
    1) (.pow .v 2)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh05010

namespace FullHigh05011
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_010_3 e g v+8*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_020_5 e g v+6*SmallGap.ReducedLayers.high1_020_6 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1902 1) .e) (.add (.mul (.rational 15909 1) .f)
    (.add (.mul (.rational 19371 1) .g) (.mul (.rational 3222 1) .v)))) .e) (.add (.mul (.add
    (.mul (.rational 80733 1) .f) (.add (.mul (.rational 133153 1) .g) (.mul (.rational 22944 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 79560 1) .g) (.mul (.rational 25476 1) .v)) .g)
    (.mul (.rational 1436 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    275694 1) .f) (.add (.mul (.rational 571555 1) .g) (.mul (.rational 99354 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 456784 1) .g) (.mul (.rational 148190 1) .v)) .g) (.mul
    (.rational 9063 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 177047 1) .g)
    (.mul (.rational 73886 1) .v)) .g) (.mul (.rational 9858 1) (.pow .v 2))) .g))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 665703 1) .f) (.add (.mul (.rational
    1656976 1) .g) (.mul (.rational 290466 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1652560
    1) .g) (.mul (.rational 544104 1) .v)) .g) (.mul (.rational 34530 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 848298 1) .g) (.mul (.rational 364524 1) .v)) .g) (.mul
    (.rational 50254 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 237585 1)
    .g) (.mul (.rational 103768 1) .v)) .g) (.mul (.rational 22874 1) (.pow .v 2))) (.pow .g 2))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1163544 1) .f)
    (.add (.mul (.rational 3371077 1) .g) (.mul (.rational 602880 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 4016720 1) .g) (.mul (.rational 1364318 1) .v)) .g) (.mul (.rational 88552 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2555322 1) .g) (.mul (.rational
    1157036 1) .v)) .g) (.mul (.rational 162590 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 939610 1) .g) (.mul (.rational 450180 1) .v)) .g) (.mul (.rational 100832 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 199891 1) .g) (.mul
    (.rational 76064 1) .v)) .g) (.mul (.rational 22270 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1481592 1) .f)
    (.add (.mul (.rational 4886364 1) .g) (.mul (.rational 906804 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 6751197 1) .g) (.mul (.rational 2418600 1) .v)) .g) (.mul (.rational 161448
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5103600 1) .g) (.mul (.rational
    2508110 1) .v)) .g) (.mul (.rational 364204 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2309470 1) .g) (.mul (.rational 1267256 1) .v)) .g) (.mul (.rational 297262
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 639760 1) .g)
    (.mul (.rational 314088 1) .v)) .g) (.mul (.rational 101834 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 105147 1) .g) (.mul (.rational 30344 1) .v)) .g)
    (.mul (.rational 10302 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1362972 1) .f) (.add (.mul
    (.rational 5031846 1) .g) (.mul (.rational 986196 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 7888206 1) .g) (.mul (.rational 3045324 1) .v)) .g) (.mul (.rational 212914 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6883023 1) .g) (.mul (.rational
    3769208 1) .v)) .g) (.mul (.rational 581856 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3678860 1) .g) (.mul (.rational 2387482 1) .v)) .g) (.mul (.rational 613584
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1244954 1) .g)
    (.mul (.rational 815524 1) .v)) .g) (.mul (.rational 312770 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 264214 1) .g) (.mul (.rational 142580 1) .v)) .g)
    (.mul (.rational 78948 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 33089 1) .g) (.mul (.rational 9568 1) .v)) .g) (.mul (.rational 9246 1) (.pow .v
    2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 882882 1) .f) (.add (.mul (.rational 3601188 1) .g)
    (.mul (.rational 756540 1) .v))) .f) (.add (.mul (.add (.mul (.rational 6300546 1) .g) (.mul
    (.rational 2665488 1) .v)) .g) (.mul (.rational 199308 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6211948 1) .g) (.mul (.rational 3858956 1) .v)) .g) (.mul (.rational
    650700 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3811311 1) .g) (.mul
    (.rational 2971360 1) .v)) .g) (.mul (.rational 864072 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1512940 1) .g) (.mul (.rational 1318994 1) .v)) .g)
    (.mul (.rational 608976 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 389062 1) .g) (.mul (.rational 344232 1) .v)) .g) (.mul (.rational 254122 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 62314 1) .g) (.mul
    (.rational 52248 1) .v)) .g) (.mul (.rational 68734 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5593 1) .g) (.mul (.rational 4424 1) .v)) .g) (.mul
    (.rational 13046 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 382068 1) .f)
    (.add (.mul (.rational 1703886 1) .g) (.mul (.rational 387696 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 3284088 1) .g) (.mul (.rational 1538532 1) .v)) .g) (.mul (.rational 124968
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3599306 1) .g) (.mul (.rational
    2558584 1) .v)) .g) (.mul (.rational 479028 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2482188 1) .g) (.mul (.rational 2328596 1) .v)) .g) (.mul (.rational 775368
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1123573 1) .g)
    (.mul (.rational 1276592 1) .v)) .g) (.mul (.rational 702504 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 336176 1) .g) (.mul (.rational 441470 1) .v)) .g)
    (.mul (.rational 402840 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 64596 1) .g) (.mul (.rational 99468 1) .v)) .g) (.mul (.rational 158102 1) (.pow .v
    2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7321 1) .g) (.mul (.rational
    14920 1) .v)) .g) (.mul (.rational 43816 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 394 1) .g) (.mul (.rational 1418 1) .v)) .g) (.mul (.rational 8050 1)
    (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 99144 1) .f) (.add
    (.mul (.rational 479304 1) .g) (.mul (.rational 118800 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1007118 1) .g) (.mul (.rational 524880 1) .v)) .g) (.mul (.rational 46656 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1211220 1) .g) (.mul (.rational 986436
    1) .v)) .g) (.mul (.rational 206064 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 923766 1) .g) (.mul (.rational 1035360 1) .v)) .g) (.mul (.rational 393828 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 466928 1) .g) (.mul
    (.rational 673024 1) .v)) .g) (.mul (.rational 433620 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 158013 1) .g) (.mul (.rational 286184 1) .v)) .g) (.mul
    (.rational 310512 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    34972 1) .g) (.mul (.rational 82622 1) .v)) .g) (.mul (.rational 154484 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4695 1) .g) (.mul (.rational 16456 1)
    .v)) .g) (.mul (.rational 54454 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 315 1) .g) (.mul (.rational 2148 1) .v)) .g) (.mul (.rational 13034 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5 1) .g) (.mul (.rational
    148 1) .v)) .g) (.mul (.rational 1878 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 11664 1) .f) (.add (.mul (.rational 60696 1) .g) (.mul
    (.rational 16416 1) .v))) .f) (.add (.mul (.add (.mul (.rational 137844 1) .g) (.mul
    (.rational 79920 1) .v)) .g) (.mul (.rational 7776 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 180018 1) .g) (.mul (.rational 167328 1) .v)) .g) (.mul (.rational
    38880 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 149892 1) .g) (.mul
    (.rational 198396 1) .v)) .g) (.mul (.rational 85416 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 83248 1) .g) (.mul (.rational 148196 1) .v)) .g) (.mul
    (.rational 109788 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    31206 1) .g) (.mul (.rational 73792 1) .v)) .g) (.mul (.rational 92870 1) (.pow .v 2))) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7735 1) .g) (.mul (.rational 25352 1)
    .v)) .g) (.mul (.rational 54840 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1182 1) .g) (.mul (.rational 6058 1) .v)) .g) (.mul (.rational 22976 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 93 1) .g) (.mul (.rational
    954 1) .v)) .g) (.mul (.rational 6618 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2 1) .g) (.mul (.rational 82 1) .v)) .g) (.mul (.rational 1197 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2 1) .v) .g) (.mul (.rational 112
    1) (.pow .v 2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh05011

namespace FullHigh05012
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_010_4 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_020_6 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 162 1) .e) (.add (.mul (.rational 1341 1) .f) (.add (.mul
    (.rational 1629 1) .g) (.mul (.rational 270 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    6687 1) .f) (.add (.mul (.rational 10986 1) .g) (.mul (.rational 1872 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 6567 1) .g) (.mul (.rational 2022 1) .v)) .g) (.mul (.rational 120 1)
    (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 22212 1) .f) (.add (.mul
    (.rational 45780 1) .g) (.mul (.rational 7830 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    36540 1) .g) (.mul (.rational 11274 1) .v)) .g) (.mul (.rational 735 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 14244 1) .g) (.mul (.rational 5304 1) .v)) .g) (.mul
    (.rational 774 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 51453 1) .f) (.add (.mul (.rational 127020 1) .g) (.mul (.rational 21906 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 126252 1) .g) (.mul (.rational 39390 1) .v)) .g) (.mul
    (.rational 2694 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 65058 1) .g)
    (.mul (.rational 24714 1) .v)) .g) (.mul (.rational 3765 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 18471 1) .g) (.mul (.rational 6144 1) .v)) .g) (.mul (.rational
    1584 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 84654 1) .f) (.add (.mul (.rational 242568 1) .g) (.mul (.rational 43020 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 287316 1) .g) (.mul (.rational 93240 1) .v)) .g)
    (.mul (.rational 6600 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 183078 1)
    .g) (.mul (.rational 74058 1) .v)) .g) (.mul (.rational 11628 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 68118 1) .g) (.mul (.rational 25410 1) .v)) .g) (.mul
    (.rational 6705 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    14844 1) .g) (.mul (.rational 2892 1) .v)) .g) (.mul (.rational 1194 1) (.pow .v 2))) (.pow .g
    3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    98784 1) .f) (.add (.mul (.rational 321138 1) .g) (.mul (.rational 60156 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 439731 1) .g) (.mul (.rational 153828 1) .v)) .g) (.mul
    (.rational 11424 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 332064 1) .g)
    (.mul (.rational 150510 1) .v)) .g) (.mul (.rational 24996 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 151716 1) .g) (.mul (.rational 69066 1) .v)) .g) (.mul
    (.rational 19614 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    42990 1) .g) (.mul (.rational 13686 1) .v)) .g) (.mul (.rational 6315 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7329 1) .g) (.mul (.rational 180 1) .v))
    .g) (.mul (.rational 528 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 80028 1) .f) (.add (.mul
    (.rational 290070 1) .g) (.mul (.rational 58932 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 449010 1) .g) (.mul (.rational 174960 1) .v)) .g) (.mul (.rational 14058 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 390096 1) .g) (.mul (.rational 206496 1)
    .v)) .g) (.mul (.rational 37944 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 209940 1) .g) (.mul (.rational 122808 1) .v)) .g) (.mul (.rational 40092 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 72534 1) .g) (.mul
    (.rational 38046 1) .v)) .g) (.mul (.rational 21312 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15954 1) .g) (.mul (.rational 5406 1) .v)) .g) (.mul
    (.rational 6315 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2100 1) .g) (.mul (.rational 72 1) .v)) .g) (.mul (.rational 1194 1) (.pow .v 2))) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 42822 1) .f) (.add (.mul (.rational 170676 1) .g) (.mul (.rational
    38412 1) .v))) .f) (.add (.mul (.add (.mul (.rational 293544 1) .g) (.mul (.rational 130428 1)
    .v)) .g) (.mul (.rational 11700 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    286998 1) .g) (.mul (.rational 181740 1) .v)) .g) (.mul (.rational 38358 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 176685 1) .g) (.mul (.rational 134784 1) .v)) .g)
    (.mul (.rational 52512 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 71412 1) .g) (.mul (.rational 58122 1) .v)) .g) (.mul (.rational 40092 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 18996 1) .g) (.mul (.rational
    15246 1) .v)) .g) (.mul (.rational 19614 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3192 1) .g) (.mul (.rational 2562 1) .v)) .g) (.mul (.rational 6705 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 303 1) .g) (.mul
    (.rational 288 1) .v)) .g) (.mul (.rational 1584 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 13608 1) .f) (.add (.mul (.rational 58968 1) .g) (.mul (.rational 14904
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 111132 1) .g) (.mul (.rational 57024 1) .v))
    .g) (.mul (.rational 5832 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    120186 1) .g) (.mul (.rational 91764 1) .v)) .g) (.mul (.rational 22680 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 82800 1) .g) (.mul (.rational 81648 1) .v)) .g)
    (.mul (.rational 38358 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 38016 1) .g) (.mul (.rational 44892 1) .v)) .g) (.mul (.rational 37944 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11724 1) .g) (.mul (.rational
    16464 1) .v)) .g) (.mul (.rational 24996 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2352 1) .g) (.mul (.rational 4314 1) .v)) .g) (.mul (.rational 11628 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 279 1) .g) (.mul
    (.rational 822 1) .v)) .g) (.mul (.rational 3765 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15 1) .g) (.mul (.rational 102 1) .v)) .g) (.mul (.rational
    774 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1944 1) .f) (.add
    (.mul (.rational 9072 1) .g) (.mul (.rational 2592 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 18522 1) .g) (.mul (.rational 11016 1) .v)) .g) (.mul (.rational 1296 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 21852 1) .g) (.mul (.rational 20052 1) .v))
    .g) (.mul (.rational 5832 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    16560 1) .g) (.mul (.rational 20700 1) .v)) .g) (.mul (.rational 11700 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8448 1) .g) (.mul (.rational 13656 1)
    .v)) .g) (.mul (.rational 14058 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2931 1) .g) (.mul (.rational 6228 1) .v)) .g) (.mul (.rational 11424 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 672 1) .g) (.mul (.rational
    2070 1) .v)) .g) (.mul (.rational 6600 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 93 1) .g) (.mul (.rational 498 1) .v)) .g) (.mul (.rational 2694 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 6 1) .g) (.mul
    (.rational 78 1) .v)) .g) (.mul (.rational 735 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.mul (.rational 6 1) .v) .g) (.mul (.rational 120 1) (.pow .v 2))) (.pow .g 8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh05012

end
end SPR.N6.Tail.CoreEndpoint
