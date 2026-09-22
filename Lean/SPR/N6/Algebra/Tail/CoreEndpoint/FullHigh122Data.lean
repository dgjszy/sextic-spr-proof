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

namespace FullHigh1220
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    3*SmallGap.PolarCoefficientsHigh0.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    6*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e^2*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^6+12*SmallGap.ReducedLayers.high0_010_0 e g v*e^4+12*SmallGap.ReducedLayers.high0_001_0 e
    g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_110_0 e g v*e^4+3*SmallGap.ReducedLayers.high1_101_0 e g
    v*e^5+3*SmallGap.ReducedLayers.high1_020_0 e g v*e^2+6*SmallGap.ReducedLayers.high1_011_0 e g
    v*e^3+3*SmallGap.ReducedLayers.high1_002_0 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 3912 1) .e) (.add (.mul (.rational 39654 1) .f) (.add
    (.mul (.rational 50076 1) .g) (.mul (.rational 7224 1) .v)))) .e) (.add (.mul (.add (.mul
    (.rational 249570 1) .f) (.add (.mul (.rational 429564 1) .g) (.mul (.rational 67800 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 266190 1) .g) (.mul (.rational 86040 1) .v)) .g) (.mul
    (.rational 3360 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1094610
    1) .f) (.add (.mul (.rational 2382654 1) .g) (.mul (.rational 395556 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1987746 1) .g) (.mul (.rational 687672 1) .v)) .g) (.mul (.rational
    29316 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 792858 1) .g) (.mul
    (.rational 426420 1) .v)) .g) (.mul (.rational 37908 1) (.pow .v 2))) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 3557801 1) .f) (.add (.mul (.rational 9357087
    1) .g) (.mul (.rational 1607920 1) .v))) .f) (.add (.mul (.add (.mul (.rational 9805395 1) .g)
    (.mul (.rational 3552144 1) .v)) .g) (.mul (.rational 158772 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5221589 1) .g) (.mul (.rational 2988168 1) .v)) .g) (.mul
    (.rational 282654 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1483680
    1) .g) (.mul (.rational 1192768 1) .v)) .g) (.mul (.rational 178284 1) (.pow .v 2))) (.pow .g
    2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8892123 1)
    .f) (.add (.mul (.rational 27402693 1) .g) (.mul (.rational 4836710 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 34544619 1) .g) (.mul (.rational 12967632 1) .v)) .g) (.mul (.rational
    597787 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 22983675 1) .g) (.mul
    (.rational 13789188 1) .v)) .g) (.mul (.rational 1358199 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 8663946 1) .g) (.mul (.rational 7411988 1) .v)) .g) (.mul
    (.rational 1170195 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1834872 1) .g) (.mul (.rational 2114766 1) .v)) .g) (.mul (.rational 475729 1) (.pow .v 2)))
    (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 17494287 1) .f) (.add (.mul (.rational 61792447 1) .g) (.mul (.rational 11157635 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 90991131 1) .g) (.mul (.rational 35195118 1) .v))
    .g) (.mul (.rational 1660254 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    72551229 1) .g) (.mul (.rational 45266594 1) .v)) .g) (.mul (.rational 4596035 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 34014460 1) .g) (.mul (.rational
    30613712 1) .v)) .g) (.mul (.rational 5033625 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9506796 1) .g) (.mul (.rational 11687583 1) .v)) .g) (.mul
    (.rational 2777787 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1523946 1) .g) (.mul (.rational 2500466 1) .v)) .g) (.mul (.rational 810797 1) (.pow .v 2)))
    (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 27497351 1) .f) (.add (.mul (.rational 109489132 1) .g) (.mul
    (.rational 20180021 1) .v))) .f) (.add (.mul (.add (.mul (.rational 184354000 1) .g) (.mul
    (.rational 73233578 1) .v)) .g) (.mul (.rational 3521175 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 171200975 1) .g) (.mul (.rational 110549010 1) .v)) .g) (.mul
    (.rational 11509695 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    95851684 1) .g) (.mul (.rational 90132024 1) .v)) .g) (.mul (.rational 15320708 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 33180715 1) .g) (.mul
    (.rational 43101305 1) .v)) .g) (.mul (.rational 10706208 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6986121 1) .g) (.mul (.rational 12265638 1) .v)) .g)
    (.mul (.rational 4216479 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 840330 1) .g) (.mul (.rational 2002384 1) .v)) .g) (.mul (.rational 929849 1) (.pow
    .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 34831302 1) .f) (.add (.mul (.rational 154337196 1)
    .g) (.mul (.rational 28999200 1) .v))) .f) (.add (.mul (.add (.mul (.rational 292392401 1) .g)
    (.mul (.rational 119045266 1) .v)) .g) (.mul (.rational 5822199 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 309754702 1) .g) (.mul (.rational 206360117 1) .v)) .g)
    (.mul (.rational 21967738 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    201407489 1) .g) (.mul (.rational 196971568 1) .v)) .g) (.mul (.rational 34466743 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 82973897 1) .g) (.mul
    (.rational 113168230 1) .v)) .g) (.mul (.rational 29194234 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21549820 1) .g) (.mul (.rational 40157210 1) .v)) .g)
    (.mul (.rational 14498953 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3388709 1) .g) (.mul (.rational 8669269 1) .v)) .g) (.mul (.rational 4286818 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 294228 1) .g) (.mul
    (.rational 1072356 1) .v)) .g) (.mul (.rational 728797 1) (.pow .v 2))) (.pow .g 6)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 35693922 1) .f) (.add (.mul (.rational 174187209 1) .g) (.mul
    (.rational 33340716 1) .v))) .f) (.add (.mul (.add (.mul (.rational 366648707 1) .g) (.mul
    (.rational 152791838 1) .v)) .g) (.mul (.rational 7593100 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 436183834 1) .g) (.mul (.rational 299155275 1) .v)) .g) (.mul
    (.rational 32507378 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    322762491 1) .g) (.mul (.rational 327235108 1) .v)) .g) (.mul (.rational 58791261 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 153971780 1) .g) (.mul
    (.rational 219506476 1) .v)) .g) (.mul (.rational 58571802 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 47422828 1) .g) (.mul (.rational 93243050 1) .v)) .g)
    (.mul (.rational 35146005 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9159981 1) .g) (.mul (.rational 24980911 1) .v)) .g) (.mul (.rational 13041273 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1034526 1) .g) (.mul
    (.rational 4061600 1) .v)) .g) (.mul (.rational 2951900 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 58920 1) .g) (.mul (.rational 366662 1) .v)) .g)
    (.mul (.rational 384955 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 29575110 1) .f) (.add (.mul (.rational 157612440 1) .g) (.mul (.rational 30718014
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 364898571 1) .g) (.mul (.rational 155493088 1)
    .v)) .g) (.mul (.rational 7847704 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 481519122 1) .g) (.mul (.rational 339438232 1) .v)) .g) (.mul (.rational 37611380
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 399303805 1) .g) (.mul
    (.rational 418668280 1) .v)) .g) (.mul (.rational 77090837 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 216229651 1) .g) (.mul (.rational 321109883 1) .v))
    .g) (.mul (.rational 88374144 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 76877476 1) .g) (.mul (.rational 158770942 1) .v)) .g) (.mul (.rational 62208278 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 17542537 1) .g) (.mul
    (.rational 50717266 1) .v)) .g) (.mul (.rational 27781975 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2422282 1) .g) (.mul (.rational 10180384 1) .v)) .g)
    (.mul (.rational 7848386 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 178414 1) .g) (.mul (.rational 1200057 1) .v)) .g) (.mul (.rational 1352223 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5100 1) .g) (.mul
    (.rational 71922 1) .v)) .g) (.mul (.rational 130463 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 19715472 1) .f) (.add (.mul (.rational
    113934486 1) .g) (.mul (.rational 22602834 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    287735538 1) .g) (.mul (.rational 125284796 1) .v)) .g) (.mul (.rational 6419642 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 417033048 1) .g) (.mul (.rational 301771298
    1) .v)) .g) (.mul (.rational 34071110 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 382924215 1) .g) (.mul (.rational 414394804 1) .v)) .g) (.mul (.rational 78096916
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 231866174 1) .g)
    (.mul (.rational 357685981 1) .v)) .g) (.mul (.rational 101307280 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 93319516 1) .g) (.mul (.rational 201692830
    1) .v)) .g) (.mul (.rational 81871283 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 24496541 1) .g) (.mul (.rational 74736456 1) .v)) .g) (.mul (.rational
    42753257 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3978764
    1) .g) (.mul (.rational 17806364 1) .v)) .g) (.mul (.rational 14469410 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 356335 1) .g) (.mul (.rational 2576207 1)
    .v)) .g) (.mul (.rational 3091470 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 13079 1) .g) (.mul (.rational 200078 1) .v)) .g) (.mul (.rational 390655 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 6096 1) .v) .g) (.mul
    (.rational 25383 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 10468677 1) .f) (.add (.mul (.rational 65215167 1) .g) (.mul (.rational
    13165716 1) .v))) .f) (.add (.mul (.add (.mul (.rational 178427253 1) .g) (.mul (.rational
    79332868 1) .v)) .g) (.mul (.rational 4126102 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 281755545 1) .g) (.mul (.rational 209053264 1) .v)) .g) (.mul (.rational
    24034482 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 283717403 1) .g)
    (.mul (.rational 316364944 1) .v)) .g) (.mul (.rational 60950768 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 189854159 1) .g) (.mul (.rational 303515300
    1) .v)) .g) (.mul (.rational 88299600 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 85231750 1) .g) (.mul (.rational 192178082 1) .v)) .g) (.mul (.rational
    80589551 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 25248523
    1) .g) (.mul (.rational 80970219 1) .v)) .g) (.mul (.rational 48179828 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4698992 1) .g) (.mul (.rational 22290180
    1) .v)) .g) (.mul (.rational 18991375 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 492514 1) .g) (.mul (.rational 3807946 1) .v)) .g) (.mul (.rational
    4834624 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 21833 1)
    .g) (.mul (.rational 360470 1) .v)) .g) (.mul (.rational 751965 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 14099 1) .v) .g) (.mul (.rational 63350 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 2123 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4355639 1) .f) (.add (.mul
    (.rational 29102415 1) .g) (.mul (.rational 5977138 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 85765281 1) .g) (.mul (.rational 38915660 1) .v)) .g) (.mul (.rational 2053787 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 146574479 1) .g) (.mul (.rational
    111396644 1) .v)) .g) (.mul (.rational 13032463 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 160597847 1) .g) (.mul (.rational 184236408 1) .v)) .g) (.mul
    (.rational 36243637 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 117656438 1) .g) (.mul (.rational 194512232 1) .v)) .g) (.mul (.rational 58020949
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 58246538 1) .g)
    (.mul (.rational 136628982 1) .v)) .g) (.mul (.rational 59037441 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19193315 1) .g) (.mul (.rational 64473725 1)
    .v)) .g) (.mul (.rational 39763435 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4016768 1) .g) (.mul (.rational 20112248 1) .v)) .g) (.mul (.rational
    17883310 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 480185 1)
    .g) (.mul (.rational 3951820 1) .v)) .g) (.mul (.rational 5277527 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 24759 1) .g) (.mul (.rational 439014 1) .v))
    .g) (.mul (.rational 971802 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 20753 1) .v) .g) (.mul (.rational 99890 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 4287 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1384251 1) .f) (.add (.mul (.rational 9877407 1) .g)
    (.mul (.rational 2063171 1) .v))) .f) (.add (.mul (.add (.mul (.rational 31201737 1) .g) (.mul
    (.rational 14438974 1) .v)) .g) (.mul (.rational 772898 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 57390705 1) .g) (.mul (.rational 44631592 1) .v)) .g) (.mul
    (.rational 5309179 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 67981611
    1) .g) (.mul (.rational 80116120 1) .v)) .g) (.mul (.rational 16072997 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 54115525 1) .g) (.mul (.rational 92332024
    1) .v)) .g) (.mul (.rational 28187477 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 29276288 1) .g) (.mul (.rational 71257192 1) .v)) .g) (.mul (.rational
    31646343 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10612651
    1) .g) (.mul (.rational 37221516 1) .v)) .g) (.mul (.rational 23713241 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2462836 1) .g) (.mul (.rational 12966280
    1) .v)) .g) (.mul (.rational 11980110 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 329720 1) .g) (.mul (.rational 2875617 1) .v)) .g) (.mul (.rational
    4017751 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 19285 1)
    .g) (.mul (.rational 365482 1) .v)) .g) (.mul (.rational 852993 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 20128 1) .v) .g) (.mul (.rational 103032 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 5339 1) (.pow .v 2)) (.pow .g 10))) (.pow .f
    2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 322899 1) .f)
    (.add (.mul (.rational 2451604 1) .g) (.mul (.rational 520589 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 8267052 1) .g) (.mul (.rational 3898946 1) .v)) .g) (.mul (.rational 211547
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 16289487 1) .g) (.mul
    (.rational 12948904 1) .v)) .g) (.mul (.rational 1564631 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 20749949 1) .g) (.mul (.rational 25083652 1) .v)) .g) (.mul
    (.rational 5124592 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    17837419 1) .g) (.mul (.rational 31347332 1) .v)) .g) (.mul (.rational 9774760 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10469579 1) .g) (.mul
    (.rational 26374348 1) .v)) .g) (.mul (.rational 12007134 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4139117 1) .g) (.mul (.rational 15109806 1) .v)) .g)
    (.mul (.rational 9909930 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1053892 1) .g) (.mul (.rational 5812404 1) .v)) .g) (.mul (.rational 5556436 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 155909 1) .g) (.mul
    (.rational 1434807 1) .v)) .g) (.mul (.rational 2086312 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10165 1) .g) (.mul (.rational 204922 1) .v)) .g)
    (.mul (.rational 501095 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    12834 1) .v) .g) (.mul (.rational 69359 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 4188 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 51764 1) .f) (.add (.mul (.rational 416890 1) .g)
    (.mul (.rational 89948 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1495519 1) .g) (.mul
    (.rational 718242 1) .v)) .g) (.mul (.rational 39463 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3144644 1) .g) (.mul (.rational 2552179 1) .v)) .g) (.mul (.rational
    312830 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4289000 1) .g) (.mul
    (.rational 5309872 1) .v)) .g) (.mul (.rational 1102741 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3961928 1) .g) (.mul (.rational 7156748 1) .v)) .g)
    (.mul (.rational 2274148 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2508550 1) .g) (.mul (.rational 6523604 1) .v)) .g) (.mul (.rational 3035482 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1074364 1) .g) (.mul
    (.rational 4069202 1) .v)) .g) (.mul (.rational 2737376 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 297724 1) .g) (.mul (.rational 1713664 1) .v)) .g)
    (.mul (.rational 1687310 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 48190 1) .g) (.mul (.rational 465952 1) .v)) .g) (.mul (.rational 701276 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3459 1) .g) (.mul
    (.rational 73818 1) .v)) .g) (.mul (.rational 187903 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 5171 1) .v) .g) (.mul (.rational 29282 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 2013 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5046 1) .f) (.add (.mul
    (.rational 42999 1) .g) (.mul (.rational 9420 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    163643 1) .g) (.mul (.rational 79950 1) .v)) .g) (.mul (.rational 4442 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 366076 1) .g) (.mul (.rational 302917 1) .v)) .g)
    (.mul (.rational 37596 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    532784 1) .g) (.mul (.rational 674288 1) .v)) .g) (.mul (.rational 142019 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 526834 1) .g) (.mul (.rational
    975940 1) .v)) .g) (.mul (.rational 315112 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 358274 1) .g) (.mul (.rational 959084 1) .v)) .g) (.mul
    (.rational 454496 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    165388 1) .g) (.mul (.rational 647710 1) .v)) .g) (.mul (.rational 444976 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 49586 1) .g) (.mul (.rational
    296672 1) .v)) .g) (.mul (.rational 299306 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 8719 1) .g) (.mul (.rational 88168 1) .v)) .g) (.mul (.rational
    136504 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 683 1) .g)
    (.mul (.rational 15350 1) .v)) .g) (.mul (.rational 40382 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 1189 1) .v) .g) (.mul (.rational 6996 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 539 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 5))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 222 1) .f) (.add (.mul
    (.rational 1998 1) .g) (.mul (.rational 444 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    8051 1) .g) (.mul (.rational 3996 1) .v)) .g) (.mul (.rational 224 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 19120 1) .g) (.mul (.rational 16102 1) .v)) .g) (.mul
    (.rational 2018 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 29624 1)
    .g) (.mul (.rational 38240 1) .v)) .g) (.mul (.rational 8141 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 31276 1) .g) (.mul (.rational 59248 1) .v)) .g)
    (.mul (.rational 19360 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22778 1) .g) (.mul (.rational 62552 1) .v)) .g) (.mul (.rational 30044 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 11296 1) .g) (.mul (.rational
    45556 1) .v)) .g) (.mul (.rational 31780 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3650 1) .g) (.mul (.rational 22592 1) .v)) .g) (.mul (.rational 23198
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 694 1) .g) (.mul
    (.rational 7300 1) .v)) .g) (.mul (.rational 11536 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 59 1) .g) (.mul (.rational 1388 1) .v)) .g) (.mul
    (.rational 3740 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 118 1)
    .v) .g) (.mul (.rational 714 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 61 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1220

namespace FullHigh1221
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh1.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    6*SmallGap.PolarCoefficientsHigh0.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsHigh1.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e*((e+f)*(e+f+g))^4+
    6*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsHigh0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    6*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e^2*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(36*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^5+6*SmallGap.ReducedLayers.high0_100_1 e g v*e^6+48*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^3+12*SmallGap.ReducedLayers.high0_010_1 e g v*e^4+60*SmallGap.ReducedLayers.high0_001_0 e
    g v*e^4+12*SmallGap.ReducedLayers.high0_001_1 e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(12*SmallGap.ReducedLayers.high1_110_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_110_1 e
    g v*e^4+15*SmallGap.ReducedLayers.high1_101_0 e g v*e^4+3*SmallGap.ReducedLayers.high1_101_1 e
    g v*e^5+6*SmallGap.ReducedLayers.high1_020_0 e g v*e^1+3*SmallGap.ReducedLayers.high1_020_1 e
    g v*e^2+18*SmallGap.ReducedLayers.high1_011_0 e g v*e^2+6*SmallGap.ReducedLayers.high1_011_1 e
    g v*e^3+12*SmallGap.ReducedLayers.high1_002_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_002_1 e
    g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 31860 1) .e) (.add (.mul (.rational 310578 1) .f) (.add (.mul
    (.rational 389502 1) .g) (.mul (.rational 58236 1) .v)))) .e) (.add (.mul (.add (.mul
    (.rational 1882992 1) .f) (.add (.mul (.rational 3218706 1) .g) (.mul (.rational 520794 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 1980786 1) .g) (.mul (.rational 651132 1) .v))
    .g) (.mul (.rational 26880 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 7957227 1) .f) (.add (.mul (.rational 17203377 1) .g) (.mul (.rational 2903082 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 14257413 1) .g) (.mul (.rational 4970712 1) .v))
    .g) (.mul (.rational 221829 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5655243 1) .g) (.mul (.rational 3024090 1) .v)) .g) (.mul (.rational 281346 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 24892466 1) .f) (.add
    (.mul (.rational 65032053 1) .g) (.mul (.rational 11288886 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 67718187 1) .g) (.mul (.rational 24570990 1) .v)) .g) (.mul (.rational
    1139985 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 35872475 1) .g) (.mul
    (.rational 20305734 1) .v)) .g) (.mul (.rational 1989012 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 10161423 1) .g) (.mul (.rational 7938978 1) .v)) .g) (.mul
    (.rational 1220877 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 59750423 1) .f) (.add (.mul (.rational 182921837 1) .g)
    (.mul (.rational 32479214 1) .v))) .f) (.add (.mul (.add (.mul (.rational 229192908 1) .g)
    (.mul (.rational 85854284 1) .v)) .g) (.mul (.rational 4079895 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 151730942 1) .g) (.mul (.rational 89817444 1) .v)) .g)
    (.mul (.rational 9089076 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    57028937 1) .g) (.mul (.rational 47401940 1) .v)) .g) (.mul (.rational 7636323 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 12082509 1) .g) (.mul
    (.rational 13261766 1) .v)) .g) (.mul (.rational 3006270 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 112535300
    1) .f) (.add (.mul (.rational 394899961 1) .g) (.mul (.rational 71559546 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 578045445 1) .g) (.mul (.rational 222737798 1) .v)) .g) (.mul
    (.rational 10775462 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 458688884
    1) .g) (.mul (.rational 282264720 1) .v)) .g) (.mul (.rational 29281929 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 214439374 1) .g) (.mul (.rational 187847052 1)
    .v)) .g) (.mul (.rational 31352838 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 59950215 1) .g) (.mul (.rational 70529330 1) .v)) .g) (.mul (.rational
    16833191 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9656505
    1) .g) (.mul (.rational 14854518 1) .v)) .g) (.mul (.rational 4756170 1) (.pow .v 2))) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 168601350 1) .f) (.add (.mul (.rational 666977408 1) .g) (.mul (.rational
    123264790 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1116447431 1) .g) (.mul (.rational
    441819270 1) .v)) .g) (.mul (.rational 21710140 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1031906753 1) .g) (.mul (.rational 658080046 1) .v)) .g) (.mul (.rational
    69770736 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 576112322 1) .g)
    (.mul (.rational 529040624 1) .v)) .g) (.mul (.rational 91046287 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 199448438 1) .g) (.mul (.rational 249446778
    1) .v)) .g) (.mul (.rational 62174140 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 42175097 1) .g) (.mul (.rational 70086358 1) .v)) .g) (.mul (.rational
    23858349 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5124933
    1) .g) (.mul (.rational 11338330 1) .v)) .g) (.mul (.rational 5119666 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 202429686 1) .f) (.add (.mul (.rational 891140380 1) .g) (.mul
    (.rational 167973836 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1678406510 1) .g) (.mul
    (.rational 681696106 1) .v)) .g) (.mul (.rational 34009310 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1769700217 1) .g) (.mul (.rational 1167544076 1) .v)) .g) (.mul
    (.rational 126386530 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1147351485 1) .g) (.mul (.rational 1100807270 1) .v)) .g) (.mul (.rational 194931674 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 472593086 1) .g) (.mul
    (.rational 624985656 1) .v)) .g) (.mul (.rational 162003921 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 123203434 1) .g) (.mul (.rational 219502394 1) .v))
    .g) (.mul (.rational 78834454 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19553093 1) .g) (.mul (.rational 47069100 1) .v)) .g) (.mul (.rational 22842233 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1725981 1) .g) (.mul
    (.rational 5821094 1) .v)) .g) (.mul (.rational 3819412 1) (.pow .v 2))) (.pow .g 6)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 195204120 1) .f) (.add (.mul (.rational 946399688 1) .g) (.mul
    (.rational 182004856 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1980397486 1) .g) (.mul
    (.rational 825324058 1) .v)) .g) (.mul (.rational 41820532 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2344722616 1) .g) (.mul (.rational 1598506282 1) .v)) .g) (.mul
    (.rational 176665492 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1729693831 1) .g) (.mul (.rational 1729838576 1) .v)) .g) (.mul (.rational 314904566 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 824703757 1) .g) (.mul
    (.rational 1148765546 1) .v)) .g) (.mul (.rational 308926230 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 254798908 1) .g) (.mul (.rational 483959338 1)
    .v)) .g) (.mul (.rational 182487871 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 49619456 1) .g) (.mul (.rational 129035362 1) .v)) .g) (.mul (.rational
    66740738 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5688609
    1) .g) (.mul (.rational 21003604 1) .v)) .g) (.mul (.rational 14949293 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 331845 1) .g) (.mul (.rational 1916142 1)
    .v)) .g) (.mul (.rational 1946178 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 150779928 1) .f) (.add (.mul (.rational 798280684 1) .g) (.mul (.rational
    156691478 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1837170080 1) .g) (.mul (.rational
    785501418 1) .v)) .g) (.mul (.rational 40453556 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2412390608 1) .g) (.mul (.rational 1698054304 1) .v)) .g) (.mul (.rational
    191647104 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1993818266 1) .g)
    (.mul (.rational 2074668408 1) .v)) .g) (.mul (.rational 388066268 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1078614451 1) .g) (.mul (.rational
    1577666652 1) .v)) .g) (.mul (.rational 439397644 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 384391007 1) .g) (.mul (.rational 774860588 1) .v)) .g)
    (.mul (.rational 305656326 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 88329172 1) .g) (.mul (.rational 246682316 1) .v)) .g) (.mul (.rational 135146451
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 12359576 1) .g)
    (.mul (.rational 49618248 1) .v)) .g) (.mul (.rational 37956878 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 930279 1) .g) (.mul (.rational 5910580 1) .v))
    .g) (.mul (.rational 6553449 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27477 1) .g) (.mul (.rational 362374 1) .v)) .g) (.mul (.rational 642142 1) (.pow
    .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 92553759 1) .f)
    (.add (.mul (.rational 531331649 1) .g) (.mul (.rational 106480990 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1333719511 1) .g) (.mul (.rational 584956298 1) .v)) .g) (.mul
    (.rational 30637033 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1923109905
    1) .g) (.mul (.rational 1396534638 1) .v)) .g) (.mul (.rational 160990652 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1759282397 1) .g) (.mul (.rational
    1901640222 1) .v)) .g) (.mul (.rational 365308653 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1063591581 1) .g) (.mul (.rational 1629269600 1) .v)) .g)
    (.mul (.rational 469238518 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 428689550 1) .g) (.mul (.rational 913619672 1) .v)) .g) (.mul (.rational 375873027
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 113170734 1) .g)
    (.mul (.rational 337711332 1) .v)) .g) (.mul (.rational 194979548 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 18591521 1) .g) (.mul (.rational 80662266 1)
    .v)) .g) (.mul (.rational 65823208 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1697003 1) .g) (.mul (.rational 11787128 1) .v)) .g) (.mul (.rational
    14128750 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 64134 1)
    .g) (.mul (.rational 934762 1) .v)) .g) (.mul (.rational 1814426 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 29532 1) .v) .g) (.mul (.rational 121900 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    44504766 1) .f) (.add (.mul (.rational 275392957 1) .g) (.mul (.rational 56356886 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 748779731 1) .g) (.mul (.rational 336792524 1) .v)) .g)
    (.mul (.rational 17946293 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1175984633 1) .g) (.mul (.rational 880315928 1) .v)) .g) (.mul (.rational 103651544 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1179235963 1) .g) (.mul (.rational
    1322079872 1) .v)) .g) (.mul (.rational 260662777 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 787296939 1) .g) (.mul (.rational 1260019880 1) .v)) .g)
    (.mul (.rational 374676496 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 353585017 1) .g) (.mul (.rational 793956654 1) .v)) .g) (.mul (.rational 339711999
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 105178594 1) .g)
    (.mul (.rational 333853948 1) .v)) .g) (.mul (.rational 202223706 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 19756174 1) .g) (.mul (.rational 92128706 1)
    .v)) .g) (.mul (.rational 79682789 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2104181 1) .g) (.mul (.rational 15880576 1) .v)) .g) (.mul (.rational
    20406451 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 95653 1)
    .g) (.mul (.rational 1531300 1) .v)) .g) (.mul (.rational 3224495 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 61838 1) .v) .g) (.mul (.rational 280035 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 9879 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16379159 1) .f) (.add
    (.mul (.rational 108695813 1) .g) (.mul (.rational 22713574 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 318266212 1) .g) (.mul (.rational 146746974 1) .v)) .g) (.mul (.rational
    7956331 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 540771354 1) .g) (.mul
    (.rational 416909756 1) .v)) .g) (.mul (.rational 50121594 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 589698260 1) .g) (.mul (.rational 684666704 1) .v)) .g)
    (.mul (.rational 138417271 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 430662046 1) .g) (.mul (.rational 718443780 1) .v)) .g) (.mul (.rational 220191100
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 213024284 1) .g)
    (.mul (.rational 502373186 1) .v)) .g) (.mul (.rational 222927867 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 70364768 1) .g) (.mul (.rational 236594838
    1) .v)) .g) (.mul (.rational 149730176 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14826771 1) .g) (.mul (.rational 73941096 1) .v)) .g) (.mul (.rational
    67393087 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1795195
    1) .g) (.mul (.rational 14637270 1) .v)) .g) (.mul (.rational 20014050 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 94490 1) .g) (.mul (.rational 1651448 1)
    .v)) .g) (.mul (.rational 3739384 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 80190 1) .v) .g) (.mul (.rational 394720 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 17700 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 4445684 1) .f) (.add (.mul (.rational 31502985 1) .g)
    (.mul (.rational 6720550 1) .v))) .f) (.add (.mul (.add (.mul (.rational 98847449 1) .g) (.mul
    (.rational 46693548 1) .v)) .g) (.mul (.rational 2575262 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 180679256 1) .g) (.mul (.rational 143308158 1) .v)) .g) (.mul
    (.rational 17579485 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    212858648 1) .g) (.mul (.rational 255523608 1) .v)) .g) (.mul (.rational 52905084 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 168737614 1) .g) (.mul
    (.rational 292746722 1) .v)) .g) (.mul (.rational 92295129 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 91079868 1) .g) (.mul (.rational 224898850 1) .v))
    .g) (.mul (.rational 103205228 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 33030816 1) .g) (.mul (.rational 117193224 1) .v)) .g) (.mul (.rational
    77178463 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7697144
    1) .g) (.mul (.rational 40857372 1) .v)) .g) (.mul (.rational 39034138 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1039905 1) .g) (.mul (.rational 9110764
    1) .v)) .g) (.mul (.rational 13166371 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 61783 1) .g) (.mul (.rational 1171966 1) .v)) .g) (.mul (.rational
    2830522 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 65926 1) .v) .g)
    (.mul (.rational 349560 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 18774 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 836390 1) .f) (.add (.mul (.rational 6305232 1) .g) (.mul (.rational
    1372594 1) .v))) .f) (.add (.mul (.add (.mul (.rational 21112237 1) .g) (.mul (.rational
    10209264 1) .v)) .g) (.mul (.rational 572406 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 41317491 1) .g) (.mul (.rational 33674530 1) .v)) .g) (.mul (.rational
    4210498 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 52301989 1) .g)
    (.mul (.rational 64803258 1) .v)) .g) (.mul (.rational 13719395 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 44720537 1) .g) (.mul (.rational 80500706 1) .v))
    .g) (.mul (.rational 26049414 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26145777 1) .g) (.mul (.rational 67395110 1) .v)) .g) (.mul (.rational 31886114 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10317917 1) .g) (.mul
    (.rational 38484414 1) .v)) .g) (.mul (.rational 26268268 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2630101 1) .g) (.mul (.rational 14793430 1) .v)) .g)
    (.mul (.rational 14738958 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 391079 1) .g) (.mul (.rational 3662668 1) .v)) .g) (.mul (.rational 5558950 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 25762 1) .g) (.mul
    (.rational 527386 1) .v)) .g) (.mul (.rational 1348364 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 33536 1) .v) .g) (.mul (.rational 189894 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 11787 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 97062 1) .f) (.add
    (.mul (.rational 775980 1) .g) (.mul (.rational 172260 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2762950 1) .g) (.mul (.rational 1366344 1) .v)) .g) (.mul (.rational 77796 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5766451 1) .g) (.mul (.rational 4822406
    1) .v)) .g) (.mul (.rational 613698 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7808033 1) .g) (.mul (.rational 9966340 1) .v)) .g) (.mul (.rational 2153220 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7164071 1) .g) (.mul
    (.rational 13347660 1) .v)) .g) (.mul (.rational 4421737 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4509605 1) .g) (.mul (.rational 12097732 1) .v)) .g)
    (.mul (.rational 5881647 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1922905 1) .g) (.mul (.rational 7511984 1) .v)) .g) (.mul (.rational 5292369 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 531661 1) .g) (.mul
    (.rational 3154956 1) .v)) .g) (.mul (.rational 3261323 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 86113 1) .g) (.mul (.rational 857840 1) .v)) .g)
    (.mul (.rational 1358955 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6209 1) .g) (.mul (.rational 136420 1) .v)) .g) (.mul (.rational 366537 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 9642 1) .v) .g) (.mul (.rational
    57817 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 4053 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5208 1) .f) (.add (.mul (.rational 44040 1) .g) (.mul (.rational 9960 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 166266 1) .g) (.mul (.rational 83976 1) .v)) .g) (.mul (.rational 4848
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 368872 1) .g) (.mul (.rational
    315998 1) .v)) .g) (.mul (.rational 40848 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 532336 1) .g) (.mul (.rational 698496 1) .v)) .g) (.mul (.rational 153620 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 521976 1) .g) (.mul
    (.rational 1003912 1) .v)) .g) (.mul (.rational 339416 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 352100 1) .g) (.mul (.rational 979888 1) .v)) .g)
    (.mul (.rational 487704 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 161336 1) .g) (.mul (.rational 657636 1) .v)) .g) (.mul (.rational 476056 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 48072 1) .g) (.mul
    (.rational 299648 1) .v)) .g) (.mul (.rational 319648 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8416 1) .g) (.mul (.rational 88736 1) .v)) .g) (.mul
    (.rational 145800 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    658 1) .g) (.mul (.rational 15432 1) .v)) .g) (.mul (.rational 43256 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 1198 1) .v) .g) (.mul (.rational 7544 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 588 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1221

namespace FullHigh1222
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    6*SmallGap.PolarCoefficientsHigh1.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsHigh2.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsHigh0.c140 e f g v*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e*((e+f)*(e+f+g))^4+
    6*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    10*SmallGap.PolarCoefficientsHigh0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsHigh1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    30*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    3*SmallGap.PolarCoefficientsHigh0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(90*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^4+36*SmallGap.ReducedLayers.high0_100_1 e g v*e^5+6*SmallGap.ReducedLayers.high0_100_2 e g
    v*e^6+72*SmallGap.ReducedLayers.high0_010_0 e g v*e^2+48*SmallGap.ReducedLayers.high0_010_1 e
    g v*e^3+12*SmallGap.ReducedLayers.high0_010_2 e g v*e^4+120*SmallGap.ReducedLayers.high0_001_0
    e g v*e^3+60*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^4+12*SmallGap.ReducedLayers.high0_001_2 e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(18*SmallGap.ReducedLayers.high1_110_0 e g v*e^2+12*SmallGap.ReducedLayers.high1_110_1 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_110_2 e g v*e^4+30*SmallGap.ReducedLayers.high1_101_0 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_101_1 e g v*e^4+3*SmallGap.ReducedLayers.high1_101_2 e
    g v*e^5+3*SmallGap.ReducedLayers.high1_020_0 e g v+6*SmallGap.ReducedLayers.high1_020_1 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_020_2 e g v*e^2+18*SmallGap.ReducedLayers.high1_011_0 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_011_1 e g v*e^2+6*SmallGap.ReducedLayers.high1_011_2 e g
    v*e^3+18*SmallGap.ReducedLayers.high1_002_0 e g v*e^2+12*SmallGap.ReducedLayers.high1_002_1 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_002_2 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 113868 1) .e) (.add (.mul (.rational 1071408 1) .f) (.add (.mul (.rational
    1334934 1) .g) (.mul (.rational 205860 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    6266352 1) .f) (.add (.mul (.rational 10637628 1) .g) (.mul (.rational 1758678 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 6501384 1) .g) (.mul (.rational 2163216 1) .v)) .g) (.mul
    (.rational 94320 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    25500369 1) .f) (.add (.mul (.rational 54739521 1) .g) (.mul (.rational 9367674 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 45047583 1) .g) (.mul (.rational 15763902 1) .v)) .g) (.mul
    (.rational 737949 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 17760615 1)
    .g) (.mul (.rational 9377130 1) .v)) .g) (.mul (.rational 916086 1) (.pow .v 2))) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 76602346 1) .f) (.add (.mul
    (.rational 198669798 1) .g) (.mul (.rational 34779294 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 205415622 1) .g) (.mul (.rational 74392440 1) .v)) .g) (.mul (.rational 3596385 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 108151438 1) .g) (.mul (.rational
    60161568 1) .v)) .g) (.mul (.rational 6131409 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 30512544 1) .g) (.mul (.rational 22905084 1) .v)) .g) (.mul (.rational
    3642243 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 175882098 1) .f) (.add (.mul (.rational 534457359 1) .g) (.mul
    (.rational 95357578 1) .v))) .f) (.add (.mul (.add (.mul (.rational 664904244 1) .g) (.mul
    (.rational 247824946 1) .v)) .g) (.mul (.rational 12200397 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 437492826 1) .g) (.mul (.rational 254052576 1) .v)) .g) (.mul
    (.rational 26556567 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    163751598 1) .g) (.mul (.rational 130899124 1) .v)) .g) (.mul (.rational 21628752 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 34663323 1) .g) (.mul
    (.rational 35633074 1) .v)) .g) (.mul (.rational 8162475 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 315288199
    1) .f) (.add (.mul (.rational 1098032982 1) .g) (.mul (.rational 199600842 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 1595822338 1) .g) (.mul (.rational 611319328 1) .v)) .g) (.mul
    (.rational 30503302 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1258572220
    1) .g) (.mul (.rational 760345008 1) .v)) .g) (.mul (.rational 81076530 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 585901827 1) .g) (.mul (.rational 495336882 1)
    .v)) .g) (.mul (.rational 84391521 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 163611526 1) .g) (.mul (.rational 181665520 1) .v)) .g) (.mul (.rational
    43694233 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 26444340
    1) .g) (.mul (.rational 37354266 1) .v)) .g) (.mul (.rational 11789781 1) (.pow .v 2))) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 446770688 1) .f) (.add (.mul (.rational 1753846593 1) .g) (.mul (.rational
    325173848 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2914685748 1) .g) (.mul (.rational
    1147992066 1) .v)) .g) (.mul (.rational 58029718 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2677458059 1) .g) (.mul (.rational 1681132292 1) .v)) .g) (.mul (.rational
    182743256 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1488401196 1) .g)
    (.mul (.rational 1326478474 1) .v)) .g) (.mul (.rational 232641437 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 514576935 1) .g) (.mul (.rational 613185012
    1) .v)) .g) (.mul (.rational 154159747 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 109135272 1) .g) (.mul (.rational 168973358 1) .v)) .g) (.mul
    (.rational 57075218 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13380645 1) .g) (.mul (.rational 26901212 1) .v)) .g) (.mul (.rational 11767223 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 503338990 1) .f) (.add (.mul (.rational
    2198571843 1) .g) (.mul (.rational 416425676 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    4110900232 1) .g) (.mul (.rational 1666440452 1) .v)) .g) (.mul (.rational 85458784 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4307721006 1) .g) (.mul (.rational
    2810933128 1) .v)) .g) (.mul (.rational 311918431 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2780581210 1) .g) (.mul (.rational 2607673638 1) .v)) .g) (.mul
    (.rational 471120372 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1143506023 1) .g) (.mul (.rational 1456317384 1) .v)) .g) (.mul (.rational
    382227846 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    298865336 1) .g) (.mul (.rational 503690566 1) .v)) .g) (.mul (.rational 181088059 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 47824804 1) .g) (.mul
    (.rational 106760950 1) .v)) .g) (.mul (.rational 51052458 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4288692 1) .g) (.mul (.rational 13152052 1) .v)) .g)
    (.mul (.rational 8345453 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    450872864 1) .f) (.add (.mul (.rational 2168706513 1) .g) (.mul (.rational 420322824 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 4504923446 1) .g) (.mul (.rational 1881584354 1) .v))
    .g) (.mul (.rational 98101442 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5300262340 1) .g) (.mul (.rational 3595038874 1) .v)) .g) (.mul (.rational 408042330 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3892309742 1) .g) (.mul (.rational
    3836460456 1) .v)) .g) (.mul (.rational 714939445 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1852406988 1) .g) (.mul (.rational 2513347478 1) .v)) .g)
    (.mul (.rational 688431962 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 573504860 1) .g) (.mul (.rational 1046320924 1) .v)) .g) (.mul (.rational 398957157
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 112528226 1) .g)
    (.mul (.rational 276769830 1) .v)) .g) (.mul (.rational 143383753 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 13093348 1) .g) (.mul (.rational 45027180 1)
    .v)) .g) (.mul (.rational 31757559 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 782499 1) .g) (.mul (.rational 4154946 1) .v)) .g) (.mul (.rational 4145697
    1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 319288066 1) .f)
    (.add (.mul (.rational 1676899683 1) .g) (.mul (.rational 333037762 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 3830549851 1) .g) (.mul (.rational 1649954040 1) .v)) .g) (.mul
    (.rational 87646574 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4997710246
    1) .g) (.mul (.rational 3523810692 1) .v)) .g) (.mul (.rational 409845889 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4111053397 1) .g) (.mul (.rational
    4253894910 1) .v)) .g) (.mul (.rational 818568551 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2219163247 1) .g) (.mul (.rational 3198839480 1) .v)) .g)
    (.mul (.rational 914018116 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 792064337 1) .g) (.mul (.rational 1556833412 1) .v)) .g) (.mul (.rational 627588934
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 183230368 1) .g)
    (.mul (.rational 493132072 1) .v)) .g) (.mul (.rational 274735567 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 25991121 1) .g) (.mul (.rational 99386516 1)
    .v)) .g) (.mul (.rational 76918982 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2001356 1) .g) (.mul (.rational 11994290 1) .v)) .g) (.mul (.rational
    13408929 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 61188 1)
    .g) (.mul (.rational 756806 1) .v)) .g) (.mul (.rational 1354067 1) (.pow .v 2))) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 176542949 1) .f) (.add (.mul
    (.rational 1005262788 1) .g) (.mul (.rational 204804730 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2504223845 1) .g) (.mul (.rational 1113025588 1) .v)) .g) (.mul (.rational 60343475
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3587044348 1) .g) (.mul
    (.rational 2628633776 1) .v)) .g) (.mul (.rational 313697474 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3265011821 1) .g) (.mul (.rational 3542259284 1) .v)) .g)
    (.mul (.rational 704196693 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1968728847 1) .g) (.mul (.rational 3006847976 1) .v)) .g) (.mul (.rational
    895428766 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    794186893 1) .g) (.mul (.rational 1674331242 1) .v)) .g) (.mul (.rational 711313113 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 210853293 1) .g) (.mul
    (.rational 617061772 1) .v)) .g) (.mul (.rational 367294542 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 35064277 1) .g) (.mul (.rational 147916234 1) .v))
    .g) (.mul (.rational 124276918 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3268052 1) .g) (.mul (.rational 21912064 1) .v)) .g) (.mul (.rational
    27045619 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 127543 1)
    .g) (.mul (.rational 1787172 1) .v)) .g) (.mul (.rational 3583815 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 59202 1) .v) .g) (.mul (.rational 254471 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    74602906 1) .f) (.add (.mul (.rational 457819035 1) .g) (.mul (.rational 95747310 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 1235097079 1) .g) (.mul (.rational 566547700 1) .v)) .g)
    (.mul (.rational 31384603 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1926408571 1) .g) (.mul (.rational 1466463806 1) .v)) .g) (.mul (.rational 179680350 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1921258489 1) .g) (.mul (.rational
    2182271850 1) .v)) .g) (.mul (.rational 448112603 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1278576932 1) .g) (.mul (.rational 2063514894 1) .v)) .g)
    (.mul (.rational 639510192 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 574216129 1) .g) (.mul (.rational 1293062034 1) .v)) .g) (.mul (.rational 576982635
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 171567321 1) .g)
    (.mul (.rational 542810010 1) .v)) .g) (.mul (.rational 343136541 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 32564839 1) .g) (.mul (.rational 150443440
    1) .v)) .g) (.mul (.rational 135963241 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3532885 1) .g) (.mul (.rational 26280514 1) .v)) .g) (.mul (.rational
    35373210 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 165302 1)
    .g) (.mul (.rational 2601240 1) .v)) .g) (.mul (.rational 5764078 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 109730 1) .v) .g) (.mul (.rational 526955 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 20088 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 23259126 1) .f) (.add
    (.mul (.rational 153046422 1) .g) (.mul (.rational 32866442 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 444515984 1) .g) (.mul (.rational 210399060 1) .v)) .g) (.mul (.rational
    11914915 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 749790016 1) .g) (.mul
    (.rational 592421898 1) .v)) .g) (.mul (.rational 74522825 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 812741078 1) .g) (.mul (.rational 964887832 1) .v)) .g)
    (.mul (.rational 204483553 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 591182031 1) .g) (.mul (.rational 1005475864 1) .v)) .g) (.mul (.rational 323652355
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 292098274 1) .g)
    (.mul (.rational 699783706 1) .v)) .g) (.mul (.rational 326811735 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 96763968 1) .g) (.mul (.rational 329194422
    1) .v)) .g) (.mul (.rational 219776575 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 20559706 1) .g) (.mul (.rational 103320888 1) .v)) .g) (.mul (.rational
    99638320 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2528139
    1) .g) (.mul (.rational 20702830 1) .v)) .g) (.mul (.rational 30070679 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 136408 1) .g) (.mul (.rational 2390578 1)
    .v)) .g) (.mul (.rational 5782338 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 120608 1) .v) .g) (.mul (.rational 639118 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 30691 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 5038783 1) .f) (.add (.mul (.rational 35394735 1) .g)
    (.mul (.rational 7804110 1) .v))) .f) (.add (.mul (.add (.mul (.rational 110123179 1) .g)
    (.mul (.rational 53755104 1) .v)) .g) (.mul (.rational 3111532 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 199719892 1) .g) (.mul (.rational 163603126 1) .v)) .g)
    (.mul (.rational 21114901 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    233710996 1) .g) (.mul (.rational 289463916 1) .v)) .g) (.mul (.rational 63222774 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 184339469 1) .g) (.mul
    (.rational 329482620 1) .v)) .g) (.mul (.rational 109894513 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 99251867 1) .g) (.mul (.rational 251995874 1) .v))
    .g) (.mul (.rational 122724332 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36030722 1) .g) (.mul (.rational 131145498 1) .v)) .g) (.mul (.rational
    91983324 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8444659
    1) .g) (.mul (.rational 45878112 1) .v)) .g) (.mul (.rational 46874813 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1154654 1) .g) (.mul (.rational 10334290
    1) .v)) .g) (.mul (.rational 16052197 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 69988 1) .g) (.mul (.rational 1355346 1) .v)) .g) (.mul (.rational
    3540570 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 78708 1) .v) .g)
    (.mul (.rational 454985 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 25899 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 676716 1) .f) (.add (.mul (.rational 5055372 1) .g) (.mul (.rational
    1143924 1) .v))) .f) (.add (.mul (.add (.mul (.rational 16776372 1) .g) (.mul (.rational
    8438124 1) .v)) .g) (.mul (.rational 498882 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 32553100 1) .g) (.mul (.rational 27608026 1) .v)) .g) (.mul (.rational
    3651252 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 40891121 1) .g)
    (.mul (.rational 52728732 1) .v)) .g) (.mul (.rational 11847007 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 34742712 1) .g) (.mul (.rational 65075240 1) .v))
    .g) (.mul (.rational 22429343 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20225717 1) .g) (.mul (.rational 54220136 1) .v)) .g) (.mul (.rational 27432672 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7971172 1) .g) (.mul
    (.rational 30895464 1) .v)) .g) (.mul (.rational 22651427 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2037375 1) .g) (.mul (.rational 11897596 1) .v)) .g)
    (.mul (.rational 12796102 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 305356 1) .g) (.mul (.rational 2967292 1) .v)) .g) (.mul (.rational 4889637 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 20411 1) .g) (.mul
    (.rational 433620 1) .v)) .g) (.mul (.rational 1211878 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 28262 1) .v) .g) (.mul (.rational 176357 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 11475 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 42378 1) .f) (.add
    (.mul (.rational 335580 1) .g) (.mul (.rational 77868 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1183423 1) .g) (.mul (.rational 612612 1) .v)) .g) (.mul (.rational 36948 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2446603 1) .g) (.mul (.rational 2144690
    1) .v)) .g) (.mul (.rational 290154 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3283177 1) .g) (.mul (.rational 4397996 1) .v)) .g) (.mul (.rational 1014124 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2988263 1) .g) (.mul
    (.rational 5848700 1) .v)) .g) (.mul (.rational 2076817 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1868855 1) .g) (.mul (.rational 5270548 1) .v)) .g)
    (.mul (.rational 2759563 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 793553 1) .g) (.mul (.rational 3260632 1) .v)) .g) (.mul (.rational 2486657 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 219193 1) .g) (.mul
    (.rational 1368580 1) .v)) .g) (.mul (.rational 1540079 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 35617 1) .g) (.mul (.rational 373496 1) .v)) .g)
    (.mul (.rational 648179 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2590 1) .g) (.mul (.rational 59960 1) .v)) .g) (.mul (.rational 177757 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 4310 1) .v) .g) (.mul (.rational
    28753 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 2089 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1222

namespace FullHigh1223
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  6*SmallGap.PolarCoefficientsHigh2.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsHigh1.c140 e f g v*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsHigh2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    10*SmallGap.PolarCoefficientsHigh1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsHigh2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    36*SmallGap.PolarCoefficientsHigh0.c230 e f g v*((e+f)*(e+f+g))^3+
    30*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    12*SmallGap.PolarCoefficientsHigh0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    24*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(120*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^3+90*SmallGap.ReducedLayers.high0_100_1 e g v*e^4+36*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^5+48*SmallGap.ReducedLayers.high0_010_0 e g v*e^1+72*SmallGap.ReducedLayers.high0_010_1
    e g v*e^2+48*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^3+12*SmallGap.ReducedLayers.high0_010_3 e g v*e^4+120*SmallGap.ReducedLayers.high0_001_0 e
    g v*e^2+120*SmallGap.ReducedLayers.high0_001_1 e g v*e^3+60*SmallGap.ReducedLayers.high0_001_2
    e g v*e^4+12*SmallGap.ReducedLayers.high0_001_3 e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(12*SmallGap.ReducedLayers.high1_110_0 e g v*e^1+18*SmallGap.ReducedLayers.high1_110_1 e
    g v*e^2+12*SmallGap.ReducedLayers.high1_110_2 e g v*e^3+3*SmallGap.ReducedLayers.high1_110_3 e
    g v*e^4+30*SmallGap.ReducedLayers.high1_101_0 e g v*e^2+30*SmallGap.ReducedLayers.high1_101_1
    e g v*e^3+15*SmallGap.ReducedLayers.high1_101_2 e g v*e^4+3*SmallGap.ReducedLayers.high1_101_3
    e g v*e^5+3*SmallGap.ReducedLayers.high1_020_1 e g v+6*SmallGap.ReducedLayers.high1_020_2 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_020_3 e g v*e^2+6*SmallGap.ReducedLayers.high1_011_0 e g
    v+18*SmallGap.ReducedLayers.high1_011_1 e g v*e^1+18*SmallGap.ReducedLayers.high1_011_2 e g
    v*e^2+6*SmallGap.ReducedLayers.high1_011_3 e g v*e^3+12*SmallGap.ReducedLayers.high1_002_0 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_002_1 e g v*e^2+12*SmallGap.ReducedLayers.high1_002_2 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_002_3 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    233220 1) .e) (.add (.mul (.rational 2126490 1) .f) (.add (.mul (.rational 2633670 1) .g)
    (.mul (.rational 416700 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 12022542 1) .f) (.add
    (.mul (.rational 20272074 1) .g) (.mul (.rational 3410724 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 12308940 1) .g) (.mul (.rational 4121328 1) .v)) .g) (.mul (.rational 189600 1)
    (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 47121597 1) .f) (.add (.mul
    (.rational 100414221 1) .g) (.mul (.rational 17372292 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 82045347 1) .g) (.mul (.rational 28667406 1) .v)) .g) (.mul (.rational 1410420 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 32152851 1) .g) (.mul (.rational
    16609776 1) .v)) .g) (.mul (.rational 1710240 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 135686596 1) .f) (.add (.mul (.rational 349161441 1)
    .g) (.mul (.rational 61496566 1) .v))) .f) (.add (.mul (.add (.mul (.rational 358268277 1) .g)
    (.mul (.rational 128900340 1) .v)) .g) (.mul (.rational 6519582 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 187376875 1) .g) (.mul (.rational 101546472 1) .v)) .g)
    (.mul (.rational 10826592 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    52627287 1) .g) (.mul (.rational 37373068 1) .v)) .g) (.mul (.rational 6184494 1) (.pow .v
    2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    296862985 1) .f) (.add (.mul (.rational 894637585 1) .g) (.mul (.rational 160139050 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1104069174 1) .g) (.mul (.rational 407853050 1) .v))
    .g) (.mul (.rational 20917063 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    721299178 1) .g) (.mul (.rational 407697636 1) .v)) .g) (.mul (.rational 44310753 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 268589125 1) .g) (.mul (.rational
    203572024 1) .v)) .g) (.mul (.rational 34732197 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 56749521 1) .g) (.mul (.rational 53326754 1) .v)) .g) (.mul
    (.rational 12391891 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 503404277 1) .f) (.add (.mul (.rational
    1737979815 1) .g) (.mul (.rational 316721080 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    2504730247 1) .g) (.mul (.rational 951184312 1) .v)) .g) (.mul (.rational 49289114 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1960647386 1) .g) (.mul (.rational
    1155464102 1) .v)) .g) (.mul (.rational 127599971 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 907589883 1) .g) (.mul (.rational 731729512 1) .v)) .g) (.mul
    (.rational 128205957 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 252788431 1) .g) (.mul (.rational 259573264 1) .v)) .g) (.mul (.rational 63233981
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 40936965 1) .g)
    (.mul (.rational 51423176 1) .v)) .g) (.mul (.rational 15946397 1) (.pow .v 2))) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 668780551 1) .f) (.add (.mul (.rational 2601665764 1) .g) (.mul (.rational
    484191670 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4286090947 1) .g) (.mul (.rational
    1677884488 1) .v)) .g) (.mul (.rational 87968481 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3906631715 1) .g) (.mul (.rational 2404512602 1) .v)) .g) (.mul (.rational
    270380876 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2158631875 1) .g)
    (.mul (.rational 1850455710 1) .v)) .g) (.mul (.rational 333746499 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 743973196 1) .g) (.mul (.rational 831681070
    1) .v)) .g) (.mul (.rational 212557683 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 157981195 1) .g) (.mul (.rational 222431192 1) .v)) .g) (.mul
    (.rational 74810408 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19506981 1) .g) (.mul (.rational 34429730 1) .v)) .g) (.mul (.rational 14502189 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 698574341 1) .f) (.add (.mul (.rational
    3022825661 1) .g) (.mul (.rational 576506180 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    5601417377 1) .g) (.mul (.rational 2267386296 1) .v)) .g) (.mul (.rational 120709268 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5822429505 1) .g) (.mul (.rational
    3750706892 1) .v)) .g) (.mul (.rational 431289582 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3734569086 1) .g) (.mul (.rational 3404984424 1) .v)) .g) (.mul
    (.rational 634937242 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1530443489 1) .g) (.mul (.rational 1857900602 1) .v)) .g) (.mul (.rational
    499590337 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    400271875 1) .g) (.mul (.rational 627798908 1) .v)) .g) (.mul (.rational 228421599 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 64468645 1) .g) (.mul
    (.rational 130434904 1) .v)) .g) (.mul (.rational 62006785 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5861829 1) .g) (.mul (.rational 15891452 1) .v)) .g)
    (.mul (.rational 9823367 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    571992043 1) .f) (.add (.mul (.rational 2724779518 1) .g) (.mul (.rational 534234010 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 5607857200 1) .g) (.mul (.rational 2353626056 1) .v))
    .g) (.mul (.rational 127775767 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6543354456 1) .g) (.mul (.rational 4419438312 1) .v)) .g) (.mul (.rational 522017569 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4773617086 1) .g) (.mul (.rational
    4629647524 1) .v)) .g) (.mul (.rational 896258379 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2263122545 1) .g) (.mul (.rational 2976179160 1) .v)) .g)
    (.mul (.rational 843919294 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 700840928 1) .g) (.mul (.rational 1217350670 1) .v)) .g) (.mul (.rational 477851954
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 138337086 1) .g)
    (.mul (.rational 317767296 1) .v)) .g) (.mul (.rational 168258624 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 16314769 1) .g) (.mul (.rational 51490732 1)
    .v)) .g) (.mul (.rational 36889464 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 997425 1) .g) (.mul (.rational 4806026 1) .v)) .g) (.mul (.rational 4876357
    1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 363379469 1) .f)
    (.add (.mul (.rational 1889568383 1) .g) (.mul (.rational 381873884 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 4275534104 1) .g) (.mul (.rational 1864476584 1) .v)) .g) (.mul
    (.rational 103620690 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5530874816
    1) .g) (.mul (.rational 3921122164 1) .v)) .g) (.mul (.rational 477530101 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4518612852 1) .g) (.mul (.rational
    4659516472 1) .v)) .g) (.mul (.rational 939174993 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2429057544 1) .g) (.mul (.rational 3450904776 1) .v)) .g)
    (.mul (.rational 1032637506 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 866839095 1) .g) (.mul (.rational 1657738416 1) .v)) .g) (.mul (.rational 699407274
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 201623704 1) .g)
    (.mul (.rational 520876830 1) .v)) .g) (.mul (.rational 303608262 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 28973083 1) .g) (.mul (.rational 105102616
    1) .v)) .g) (.mul (.rational 85254252 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2281863 1) .g) (.mul (.rational 12887792 1) .v)) .g) (.mul (.rational
    15209795 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 72207 1)
    .g) (.mul (.rational 843040 1) .v)) .g) (.mul (.rational 1617915 1) (.pow .v 2))) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 175639222 1) .f) (.add (.mul
    (.rational 989948065 1) .g) (.mul (.rational 206625550 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2442131002 1) .g) (.mul (.rational 1108048842 1) .v)) .g) (.mul (.rational 63228979
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3467487851 1) .g) (.mul
    (.rational 2581419970 1) .v)) .g) (.mul (.rational 324937086 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3133784681 1) .g) (.mul (.rational 3432258314 1) .v)) .g)
    (.mul (.rational 721283417 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1881105891 1) .g) (.mul (.rational 2877972772 1) .v)) .g) (.mul (.rational
    908113600 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    758354023 1) .g) (.mul (.rational 1587384666 1) .v)) .g) (.mul (.rational 716553036 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 202309186 1) .g) (.mul
    (.rational 582521908 1) .v)) .g) (.mul (.rational 369847674 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 34054790 1) .g) (.mul (.rational 140285944 1) .v))
    .g) (.mul (.rational 126492796 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3243687 1) .g) (.mul (.rational 21166430 1) .v)) .g) (.mul (.rational
    28319697 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 130962 1)
    .g) (.mul (.rational 1791942 1) .v)) .g) (.mul (.rational 3954940 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 63078 1) .v) .g) (.mul (.rational 304219 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    62457359 1) .f) (.add (.mul (.rational 379278200 1) .g) (.mul (.rational 81865946 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 1012976582 1) .g) (.mul (.rational 478522720 1) .v)) .g)
    (.mul (.rational 28089746 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1565636062 1) .g) (.mul (.rational 1223619636 1) .v)) .g) (.mul (.rational 159392336 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1549796907 1) .g) (.mul (.rational
    1799963052 1) .v)) .g) (.mul (.rational 394390698 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1026262241 1) .g) (.mul (.rational 1685075660 1) .v)) .g)
    (.mul (.rational 559597104 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 460319237 1) .g) (.mul (.rational 1048581424 1) .v)) .g) (.mul (.rational 503916158
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 138079945 1) .g)
    (.mul (.rational 439411956 1) .v)) .g) (.mul (.rational 301075002 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 26497983 1) .g) (.mul (.rational 122593108
    1) .v)) .g) (.mul (.rational 121101716 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2933328 1) .g) (.mul (.rational 21826990 1) .v)) .g) (.mul (.rational
    32475671 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 141708 1)
    .g) (.mul (.rational 2240024 1) .v)) .g) (.mul (.rational 5567247 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 100140 1) .v) .g) (.mul (.rational 548575 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 23123 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15412934 1) .f) (.add
    (.mul (.rational 100323895 1) .g) (.mul (.rational 22408208 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 288363940 1) .g) (.mul (.rational 141832330 1) .v)) .g) (.mul (.rational
    8572008 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 481784254 1) .g) (.mul
    (.rational 394966904 1) .v)) .g) (.mul (.rational 53250182 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 518073191 1) .g) (.mul (.rational 636766988 1) .v)) .g)
    (.mul (.rational 145328964 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 374735414 1) .g) (.mul (.rational 657983354 1) .v)) .g) (.mul (.rational 229361082
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 184763558 1) .g)
    (.mul (.rational 455501824 1) .v)) .g) (.mul (.rational 231876913 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 61377106 1) .g) (.mul (.rational 214207528
    1) .v)) .g) (.mul (.rational 157113213 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13163449 1) .g) (.mul (.rational 67723324 1) .v)) .g) (.mul (.rational
    72444897 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1647915
    1) .g) (.mul (.rational 13820690 1) .v)) .g) (.mul (.rational 22532048 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 91512 1) .g) (.mul (.rational 1649950 1)
    .v)) .g) (.mul (.rational 4543119 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 87732 1) .v) .g) (.mul (.rational 537675 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 28299 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 2358612 1) .f) (.add (.mul (.rational 16382352 1) .g)
    (.mul (.rational 3786864 1) .v))) .f) (.add (.mul (.add (.mul (.rational 50416823 1) .g) (.mul
    (.rational 25806776 1) .v)) .g) (.mul (.rational 1605840 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 90515616 1) .g) (.mul (.rational 77738522 1) .v)) .g) (.mul
    (.rational 10840092 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    105002001 1) .g) (.mul (.rational 136266528 1) .v)) .g) (.mul (.rational 32339902 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 82283431 1) .g) (.mul
    (.rational 153942520 1) .v)) .g) (.mul (.rational 56155756 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 44158200 1) .g) (.mul (.rational 117205300 1) .v))
    .g) (.mul (.rational 62897796 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16049910 1) .g) (.mul (.rational 61001532 1) .v)) .g) (.mul (.rational 47561183 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3788849 1) .g) (.mul
    (.rational 21486776 1) .v)) .g) (.mul (.rational 24656765 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 525843 1) .g) (.mul (.rational 4919864 1) .v)) .g)
    (.mul (.rational 8687274 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32667 1) .g) (.mul (.rational 664284 1) .v)) .g) (.mul (.rational 2000254 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 40362 1) .v) .g) (.mul (.rational
    273103 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 16851 1) (.pow .v 2)) (.pow
    .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    168624 1) .f) (.add (.mul (.rational 1244908 1) .g) (.mul (.rational 297704 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 4083710 1) .g) (.mul (.rational 2173464 1) .v)) .g) (.mul
    (.rational 139152 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7837983 1)
    .g) (.mul (.rational 7041056 1) .v)) .g) (.mul (.rational 1014168 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9750470 1) .g) (.mul (.rational 13327578 1) .v)) .g)
    (.mul (.rational 3282180 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8220493 1) .g) (.mul (.rational 16328778 1) .v)) .g) (.mul (.rational 6213610 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4762488 1) .g) (.mul
    (.rational 13543042 1) .v)) .g) (.mul (.rational 7627349 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1875385 1) .g) (.mul (.rational 7713474 1) .v)) .g)
    (.mul (.rational 6354216 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 481478 1) .g) (.mul (.rational 2986446 1) .v)) .g) (.mul (.rational 3647843 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 72975 1) .g) (.mul
    (.rational 754838 1) .v)) .g) (.mul (.rational 1430050 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4974 1) .g) (.mul (.rational 112958 1) .v)) .g) (.mul
    (.rational 367995 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 7638
    1) .v) .g) (.mul (.rational 56404 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    3929 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1223

namespace FullHigh1224
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  24*SmallGap.PolarCoefficientsHigh2.c140 e f g v*((e+f)*(e+f+g))^4+
    10*SmallGap.PolarCoefficientsHigh2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    36*SmallGap.PolarCoefficientsHigh1.c230 e f g v*((e+f)*(e+f+g))^3+
    30*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    12*SmallGap.PolarCoefficientsHigh1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    39*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2+
    24*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsHigh0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsHigh0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(90*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^2+120*SmallGap.ReducedLayers.high0_100_1 e g v*e^3+90*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^4+12*SmallGap.ReducedLayers.high0_010_0 e g v+48*SmallGap.ReducedLayers.high0_010_1 e g
    v*e^1+72*SmallGap.ReducedLayers.high0_010_2 e g v*e^2+48*SmallGap.ReducedLayers.high0_010_3 e
    g v*e^3+12*SmallGap.ReducedLayers.high0_010_4 e g v*e^4+60*SmallGap.ReducedLayers.high0_001_0
    e g v*e^1+120*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^2+120*SmallGap.ReducedLayers.high0_001_2 e g v*e^3+60*SmallGap.ReducedLayers.high0_001_3 e
    g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_110_0 e g v+12*SmallGap.ReducedLayers.high1_110_1 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_110_2 e g v*e^2+12*SmallGap.ReducedLayers.high1_110_3 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_110_4 e g v*e^4+15*SmallGap.ReducedLayers.high1_101_0 e
    g v*e^1+30*SmallGap.ReducedLayers.high1_101_1 e g v*e^2+30*SmallGap.ReducedLayers.high1_101_2
    e g v*e^3+15*SmallGap.ReducedLayers.high1_101_3 e g v*e^4+3*SmallGap.ReducedLayers.high1_020_2
    e g v+6*SmallGap.ReducedLayers.high1_020_3 e g v*e^1+3*SmallGap.ReducedLayers.high1_020_4 e g
    v*e^2+6*SmallGap.ReducedLayers.high1_011_1 e g v+18*SmallGap.ReducedLayers.high1_011_2 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_011_3 e g v*e^2+6*SmallGap.ReducedLayers.high1_011_4 e g
    v*e^3+3*SmallGap.ReducedLayers.high1_002_0 e g v+12*SmallGap.ReducedLayers.high1_002_1 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_002_2 e g v*e^2+12*SmallGap.ReducedLayers.high1_002_3 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_002_4 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 299340 1)
    .e) (.add (.mul (.rational 2655780 1) .f) (.add (.mul (.rational 3271590 1) .g) (.mul
    (.rational 528180 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 14552148 1) .f) (.add (.mul
    (.rational 24380976 1) .g) (.mul (.rational 4155156 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 14718000 1) .g) (.mul (.rational 4925052 1) .v)) .g) (.mul (.rational 238800 1)
    (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 54982101 1) .f) (.add (.mul
    (.rational 116309355 1) .g) (.mul (.rational 20264424 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 94378611 1) .g) (.mul (.rational 32714334 1) .v)) .g) (.mul (.rational 1694760 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 36787329 1) .g) (.mul (.rational
    18383856 1) .v)) .g) (.mul (.rational 2003460 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 151590639 1) .f) (.add (.mul (.rational 386895057 1)
    .g) (.mul (.rational 68349534 1) .v))) .f) (.add (.mul (.add (.mul (.rational 393872667 1) .g)
    (.mul (.rational 139949136 1) .v)) .g) (.mul (.rational 7437978 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 204635739 1) .g) (.mul (.rational 106836042 1) .v)) .g)
    (.mul (.rational 11992578 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    57237006 1) .g) (.mul (.rational 37656552 1) .v)) .g) (.mul (.rational 6540666 1) (.pow .v
    2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    314939949 1) .f) (.add (.mul (.rational 940547088 1) .g) (.mul (.rational 168562140 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1150587501 1) .g) (.mul (.rational 419152116 1) .v))
    .g) (.mul (.rational 22537680 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    745912659 1) .g) (.mul (.rational 406182012 1) .v)) .g) (.mul (.rational 46270980 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 276213366 1) .g) (.mul (.rational
    194660106 1) .v)) .g) (.mul (.rational 34612470 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 58238529 1) .g) (.mul (.rational 48276456 1) .v)) .g) (.mul
    (.rational 11453796 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 502041267 1) .f) (.add (.mul (.rational
    1716251895 1) .g) (.mul (.rational 313328946 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    2449759287 1) .g) (.mul (.rational 919001664 1) .v)) .g) (.mul (.rational 49868742 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1901047911 1) .g) (.mul (.rational
    1083776982 1) .v)) .g) (.mul (.rational 125171181 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 874064412 1) .g) (.mul (.rational 661012716 1) .v)) .g) (.mul
    (.rational 120391833 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 242571318 1) .g) (.mul (.rational 223545588 1) .v)) .g) (.mul (.rational 55635513
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 39314358 1) .g)
    (.mul (.rational 41725116 1) .v)) .g) (.mul (.rational 12653049 1) (.pow .v 2))) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 619243053 1) .f) (.add (.mul (.rational 2383532832 1) .g) (.mul (.rational
    445727148 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3886183596 1) .g) (.mul (.rational
    1509857106 1) .v)) .g) (.mul (.rational 82975302 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3508521378 1) .g) (.mul (.rational 2105019096 1) .v)) .g) (.mul (.rational
    247874277 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1923605868 1) .g)
    (.mul (.rational 1566730692 1) .v)) .g) (.mul (.rational 294602433 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 659747823 1) .g) (.mul (.rational 676349460
    1) .v)) .g) (.mul (.rational 178155429 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 140007279 1) .g) (.mul (.rational 172577196 1) .v)) .g) (.mul
    (.rational 58326555 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17369655 1) .g) (.mul (.rational 25392672 1) .v)) .g) (.mul (.rational 10235082 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 591242439 1) .f) (.add (.mul (.rational
    2529673485 1) .g) (.mul (.rational 487262778 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    4635962778 1) .g) (.mul (.rational 1875780138 1) .v)) .g) (.mul (.rational 105054900 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4769582658 1) .g) (.mul (.rational
    3026316540 1) .v)) .g) (.mul (.rational 366221250 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3032913396 1) .g) (.mul (.rational 2668714152 1) .v)) .g) (.mul
    (.rational 522919245 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1235611986 1) .g) (.mul (.rational 1408752912 1) .v)) .g) (.mul (.rational
    396123300 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    322594617 1) .g) (.mul (.rational 459264930 1) .v)) .g) (.mul (.rational 172970610 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 52151175 1) .g) (.mul
    (.rational 92172858 1) .v)) .g) (.mul (.rational 44634108 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4789866 1) .g) (.mul (.rational 10946172 1) .v)) .g)
    (.mul (.rational 6789741 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    433632051 1) .f) (.add (.mul (.rational 2041237212 1) .g) (.mul (.rational 406995180 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 4152209001 1) .g) (.mul (.rational 1757762472 1) .v))
    .g) (.mul (.rational 101002740 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4792192278 1) .g) (.mul (.rational 3227499528 1) .v)) .g) (.mul (.rational 404396046 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3463508238 1) .g) (.mul (.rational
    3297980604 1) .v)) .g) (.mul (.rational 678446874 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1631086356 1) .g) (.mul (.rational 2064251004 1) .v)) .g)
    (.mul (.rational 622652550 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 503801346 1) .g) (.mul (.rational 822175668 1) .v)) .g) (.mul (.rational 343490130
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 99744255 1) .g)
    (.mul (.rational 209883996 1) .v)) .g) (.mul (.rational 118488876 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 11881656 1) .g) (.mul (.rational 33644250 1)
    .v)) .g) (.mul (.rational 25915698 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 739377 1) .g) (.mul (.rational 3169536 1) .v)) .g) (.mul (.rational 3542592
    1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 240063399 1) .f)
    (.add (.mul (.rational 1232853663 1) .g) (.mul (.rational 255460590 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 2755590891 1) .g) (.mul (.rational 1224645180 1) .v)) .g) (.mul
    (.rational 72611994 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3523895559
    1) .g) (.mul (.rational 2524752246 1) .v)) .g) (.mul (.rational 329394435 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2850445590 1) .g) (.mul (.rational
    2937470352 1) .v)) .g) (.mul (.rational 637265409 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1521154908 1) .g) (.mul (.rational 2129609736 1) .v)) .g)
    (.mul (.rational 689718348 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 541089318 1) .g) (.mul (.rational 1003409904 1) .v)) .g) (.mul (.rational 461517912
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 126172530 1) .g)
    (.mul (.rational 311110476 1) .v)) .g) (.mul (.rational 199797660 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 18313692 1) .g) (.mul (.rational 62715036 1)
    .v)) .g) (.mul (.rational 57005250 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1470240 1) .g) (.mul (.rational 7836888 1) .v)) .g) (.mul (.rational 10638735
    1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 47910 1) .g) (.mul
    (.rational 535716 1) .v)) .g) (.mul (.rational 1223379 1) (.pow .v 2))) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 97173252 1) .f) (.add (.mul (.rational
    540610095 1) .g) (.mul (.rational 116752116 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1316700207 1) .g) (.mul (.rational 615645660 1) .v)) .g) (.mul (.rational 37820898 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1847202033 1) .g) (.mul (.rational
    1409118960 1) .v)) .g) (.mul (.rational 192074589 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1652057400 1) .g) (.mul (.rational 1840218780 1) .v)) .g) (.mul
    (.rational 421706721 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 983947035 1) .g) (.mul (.rational 1516986528 1) .v)) .g) (.mul (.rational 526494780
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 395184915 1) .g)
    (.mul (.rational 825179310 1) .v)) .g) (.mul (.rational 414253788 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 105644985 1) .g) (.mul (.rational 300691980
    1) .v)) .g) (.mul (.rational 215436090 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17960730 1) .g) (.mul (.rational 72794232 1) .v)) .g) (.mul (.rational
    75518790 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1745112
    1) .g) (.mul (.rational 11249964 1) .v)) .g) (.mul (.rational 17747919 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 72756 1) .g) (.mul (.rational 999474 1)
    .v)) .g) (.mul (.rational 2672073 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 37908 1) .v) .g) (.mul (.rational 226446 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 27169770 1) .f) (.add (.mul
    (.rational 162767106 1) .g) (.mul (.rational 36705132 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 428968101 1) .g) (.mul (.rational 211238718 1) .v)) .g) (.mul (.rational 13478166
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 654755697 1) .g) (.mul
    (.rational 531668454 1) .v)) .g) (.mul (.rational 75823206 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 641074458 1) .g) (.mul (.rational 770137122 1) .v)) .g)
    (.mul (.rational 186346455 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 421001130 1) .g) (.mul (.rational 711162324 1) .v)) .g) (.mul (.rational 263566251
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 188033637 1) .g)
    (.mul (.rational 438173196 1) .v)) .g) (.mul (.rational 238082394 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 56492655 1) .g) (.mul (.rational 183097686
    1) .v)) .g) (.mul (.rational 144156564 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10944690 1) .g) (.mul (.rational 51537018 1) .v)) .g) (.mul (.rational
    59662020 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1235736
    1) .g) (.mul (.rational 9418080 1) .v)) .g) (.mul (.rational 16797213 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 61668 1) .g) (.mul (.rational 1014450 1)
    .v)) .g) (.mul (.rational 3092868 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 48828 1) .v) .g) (.mul (.rational 334410 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 15741 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 4695408 1) .f) (.add (.mul (.rational 30132690 1) .g) (.mul
    (.rational 7102524 1) .v))) .f) (.add (.mul (.add (.mul (.rational 85416342 1) .g) (.mul
    (.rational 44306640 1) .v)) .g) (.mul (.rational 2939286 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 140856435 1) .g) (.mul (.rational 121620096 1) .v)) .g) (.mul
    (.rational 18147174 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    149737056 1) .g) (.mul (.rational 193452780 1) .v)) .g) (.mul (.rational 49343646 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 107354205 1) .g) (.mul
    (.rational 197651580 1) .v)) .g) (.mul (.rational 77904849 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 52674744 1) .g) (.mul (.rational 135846420 1) .v))
    .g) (.mul (.rational 79299135 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17513265 1) .g) (.mul (.rational 63867780 1) .v)) .g) (.mul (.rational 54622716 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3788580 1) .g) (.mul
    (.rational 20406300 1) .v)) .g) (.mul (.rational 25952100 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 483213 1) .g) (.mul (.rational 4273872 1) .v)) .g)
    (.mul (.rational 8462397 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27678 1) .g) (.mul (.rational 534132 1) .v)) .g) (.mul (.rational 1824861 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 30420 1) .v) .g) (.mul (.rational
    235680 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 13788 1) (.pow .v 2)) (.pow
    .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    378342 1) .f) (.add (.mul (.rational 2589090 1) .g) (.mul (.rational 638076 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 7852644 1) .g) (.mul (.rational 4288620 1) .v)) .g) (.mul
    (.rational 295836 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 13905876 1)
    .g) (.mul (.rational 12746892 1) .v)) .g) (.mul (.rational 1988346 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 15936738 1) .g) (.mul (.rational 22073838 1) .v)) .g)
    (.mul (.rational 5922516 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12369990 1) .g) (.mul (.rational 24695772 1) .v)) .g) (.mul (.rational 10311558 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6601014 1) .g) (.mul
    (.rational 18698010 1) .v)) .g) (.mul (.rational 11653929 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2398800 1) .g) (.mul (.rational 9741588 1) .v)) .g)
    (.mul (.rational 8971770 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 570360 1) .g) (.mul (.rational 3468354 1) .v)) .g) (.mul (.rational 4792395 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 80484 1) .g) (.mul
    (.rational 813576 1) .v)) .g) (.mul (.rational 1766082 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5142 1) .g) (.mul (.rational 114474 1) .v)) .g) (.mul
    (.rational 432747 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 7392
    1) .v) .g) (.mul (.rational 64020 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    4353 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1224

namespace FullHigh1225
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  36*SmallGap.PolarCoefficientsHigh2.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsHigh2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    39*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    24*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsHigh1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    36*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsHigh1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(36*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^1+90*SmallGap.ReducedLayers.high0_100_1 e g v*e^2+120*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^3+12*SmallGap.ReducedLayers.high0_010_1 e g v+48*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^1+72*SmallGap.ReducedLayers.high0_010_3 e g v*e^2+48*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^3+12*SmallGap.ReducedLayers.high0_001_0 e g v+60*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^1+120*SmallGap.ReducedLayers.high0_001_2 e g v*e^2+120*SmallGap.ReducedLayers.high0_001_3
    e g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_110_1 e g v+12*SmallGap.ReducedLayers.high1_110_2 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_110_3 e g v*e^2+12*SmallGap.ReducedLayers.high1_110_4 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_101_0 e g v+15*SmallGap.ReducedLayers.high1_101_1 e g
    v*e^1+30*SmallGap.ReducedLayers.high1_101_2 e g v*e^2+30*SmallGap.ReducedLayers.high1_101_3 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_020_3 e g v+6*SmallGap.ReducedLayers.high1_020_4 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_020_5 e g v*e^2+6*SmallGap.ReducedLayers.high1_011_2 e g
    v+18*SmallGap.ReducedLayers.high1_011_3 e g v*e^1+18*SmallGap.ReducedLayers.high1_011_4 e g
    v*e^2+6*SmallGap.ReducedLayers.high1_011_5 e g v*e^3+3*SmallGap.ReducedLayers.high1_002_1 e g
    v+12*SmallGap.ReducedLayers.high1_002_2 e g v*e^1+18*SmallGap.ReducedLayers.high1_002_3 e g
    v*e^2+12*SmallGap.ReducedLayers.high1_002_4 e g v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 246492 1) .e) (.add
    (.mul (.rational 2136774 1) .f) (.add (.mul (.rational 2620026 1) .g) (.mul (.rational 429204
    1) .v)))) .e) (.add (.mul (.add (.mul (.rational 11381412 1) .f) (.add (.mul (.rational
    18956598 1) .g) (.mul (.rational 3255954 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    11389410 1) .g) (.mul (.rational 3779868 1) .v)) .g) (.mul (.rational 192960 1) (.pow .v
    2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 41515176 1) .f) (.add (.mul
    (.rational 87196428 1) .g) (.mul (.rational 15231606 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 70317252 1) .g) (.mul (.rational 23996238 1) .v)) .g) (.mul (.rational 1311501 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 27299724 1) .g) (.mul (.rational
    13016802 1) .v)) .g) (.mul (.rational 1508898 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 109546236 1) .f) (.add (.mul (.rational 277243176 1)
    .g) (.mul (.rational 48952344 1) .v))) .f) (.add (.mul (.add (.mul (.rational 280092642 1) .g)
    (.mul (.rational 97581606 1) .v)) .g) (.mul (.rational 5475549 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 144678336 1) .g) (.mul (.rational 71751870 1) .v)) .g)
    (.mul (.rational 8545776 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    40362798 1) .g) (.mul (.rational 23929842 1) .v)) .g) (.mul (.rational 4415793 1) (.pow .v
    2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    215481012 1) .f) (.add (.mul (.rational 637296204 1) .g) (.mul (.rational 114101460 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 772553778 1) .g) (.mul (.rational 275891616 1) .v)) .g)
    (.mul (.rational 15667734 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    497057064 1) .g) (.mul (.rational 257420106 1) .v)) .g) (.mul (.rational 31048971 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 183173742 1) .g) (.mul (.rational
    116924898 1) .v)) .g) (.mul (.rational 21962148 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 38591676 1) .g) (.mul (.rational 26770002 1) .v)) .g) (.mul
    (.rational 6566871 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 320896350 1) .f) (.add (.mul (.rational
    1084991244 1) .g) (.mul (.rational 198392850 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1532456478 1) .g) (.mul (.rational 565746396 1) .v)) .g) (.mul (.rational 32480796 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1178194902 1) .g) (.mul (.rational
    643152156 1) .v)) .g) (.mul (.rational 78717078 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 537939402 1) .g) (.mul (.rational 373292970 1) .v)) .g) (.mul
    (.rational 71857443 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 148778010 1) .g) (.mul (.rational 117765144 1) .v)) .g) (.mul (.rational 30470406
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 24139818 1) .g)
    (.mul (.rational 19876698 1) .v)) .g) (.mul (.rational 5878695 1) (.pow .v 2))) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 363590466 1) .f) (.add (.mul (.rational 1382437656 1) .g) (.mul (.rational
    260353962 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2227149642 1) .g) (.mul (.rational
    858080850 1) .v)) .g) (.mul (.rational 50126739 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1988757060 1) .g) (.mul (.rational 1155878208 1) .v)) .g) (.mul (.rational
    145051734 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1080572268 1) .g)
    (.mul (.rational 823130556 1) .v)) .g) (.mul (.rational 164986896 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 368425020 1) .g) (.mul (.rational 335396172
    1) .v)) .g) (.mul (.rational 93575907 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 78048384 1) .g) (.mul (.rational 79326660 1) .v)) .g) (.mul (.rational
    27730029 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 9709428
    1) .g) (.mul (.rational 10589298 1) .v)) .g) (.mul (.rational 4132173 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 312019098 1) .f) (.add (.mul (.rational 1317122850 1) .g) (.mul
    (.rational 257557668 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2381804814 1) .g) (.mul
    (.rational 965942586 1) .v)) .g) (.mul (.rational 57972885 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2419813962 1) .g) (.mul (.rational 1510054320 1) .v)) .g) (.mul
    (.rational 196777224 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1521994356 1) .g) (.mul (.rational 1281449412 1) .v)) .g) (.mul (.rational 271721148 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 615016584 1) .g) (.mul
    (.rational 645583476 1) .v)) .g) (.mul (.rational 197308914 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 159882630 1) .g) (.mul (.rational 199143324 1) .v))
    .g) (.mul (.rational 81801198 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25852404 1) .g) (.mul (.rational 37614690 1) .v)) .g) (.mul (.rational 19974294 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2383686 1) .g) (.mul
    (.rational 4222062 1) .v)) .g) (.mul (.rational 2944563 1) (.pow .v 2))) (.pow .g 6)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 199740066 1) .f) (.add (.mul (.rational 926574504 1) .g) (.mul
    (.rational 189413220 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1857384342 1) .g) (.mul
    (.rational 798207588 1) .v)) .g) (.mul (.rational 49686138 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2113673778 1) .g) (.mul (.rational 1424373324 1) .v)) .g) (.mul
    (.rational 194832033 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1508379078 1) .g) (.mul (.rational 1408191828 1) .v)) .g) (.mul (.rational 319311855 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 703150128 1) .g) (.mul
    (.rational 849075504 1) .v)) .g) (.mul (.rational 285916470 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 215786424 1) .g) (.mul (.rational 324978732 1) .v))
    .g) (.mul (.rational 154354914 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 42646098 1) .g) (.mul (.rational 79968618 1) .v)) .g) (.mul (.rational
    52827678 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5094720
    1) .g) (.mul (.rational 12526554 1) .v)) .g) (.mul (.rational 11844195 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 318666 1) .g) (.mul (.rational 1182930 1)
    .v)) .g) (.mul (.rational 1741137 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 92556630 1) .f) (.add (.mul (.rational 467903454 1) .g) (.mul (.rational
    100508184 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1029342312 1) .g) (.mul (.rational
    470881692 1) .v)) .g) (.mul (.rational 30622458 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1296120798 1) .g) (.mul (.rational 946078548 1) .v)) .g) (.mul (.rational
    136789332 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1033576326 1) .g)
    (.mul (.rational 1069899924 1) .v)) .g) (.mul (.rational 260692668 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 545031402 1) .g) (.mul (.rational 752714802
    1) .v)) .g) (.mul (.rational 278754660 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 192277458 1) .g) (.mul (.rational 344586120 1) .v)) .g) (.mul
    (.rational 185769498 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 44689116 1) .g) (.mul (.rational 104547648 1) .v)) .g) (.mul (.rational 81457374 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 6502896 1) .g) (.mul
    (.rational 20966370 1) .v)) .g) (.mul (.rational 24205257 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 526188 1) .g) (.mul (.rational 2675658 1) .v)) .g)
    (.mul (.rational 4862406 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17316 1) .g) (.mul (.rational 192138 1) .v)) .g) (.mul (.rational 614841 1) (.pow
    .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 29373096 1) .f)
    (.add (.mul (.rational 160689786 1) .g) (.mul (.rational 36397452 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 384759798 1) .g) (.mul (.rational 187841748 1) .v)) .g) (.mul
    (.rational 12820314 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 530818092
    1) .g) (.mul (.rational 420011340 1) .v)) .g) (.mul (.rational 64400106 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 467373564 1) .g) (.mul (.rational 535153944 1)
    .v)) .g) (.mul (.rational 140158566 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 274656384 1) .g) (.mul (.rational 430496226 1) .v)) .g) (.mul (.rational
    174317112 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    109245492 1) .g) (.mul (.rational 229267302 1) .v)) .g) (.mul (.rational 137938203 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 29077752 1) .g) (.mul
    (.rational 82519500 1) .v)) .g) (.mul (.rational 73312464 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4955958 1) .g) (.mul (.rational 20067228 1) .v)) .g)
    (.mul (.rational 26870226 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 486558 1) .g) (.mul (.rational 3193926 1) .v)) .g) (.mul (.rational 6771381 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 20664 1) .g) (.mul
    (.rational 300594 1) .v)) .g) (.mul (.rational 1113582 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 12372 1) .v) .g) (.mul (.rational 103593 1) (.pow .v 2)))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5719734 1)
    .f) (.add (.mul (.rational 33659100 1) .g) (.mul (.rational 8056332 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 87113574 1) .g) (.mul (.rational 45432504 1) .v)) .g) (.mul (.rational
    3261384 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 130609062 1) .g) (.mul
    (.rational 111929520 1) .v)) .g) (.mul (.rational 18210096 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 125745750 1) .g) (.mul (.rational 158656428 1) .v)) .g)
    (.mul (.rational 44561310 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 81380556 1) .g) (.mul (.rational 143561160 1) .v)) .g) (.mul (.rational 63121044 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 35955570 1) .g) (.mul
    (.rational 87058122 1) .v)) .g) (.mul (.rational 57656847 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10746972 1) .g) (.mul (.rational 36142788 1) .v)) .g)
    (.mul (.rational 35820180 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2087442 1) .g) (.mul (.rational 10272528 1) .v)) .g) (.mul (.rational 15508230 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 238566 1) .g) (.mul
    (.rational 1939980 1) .v)) .g) (.mul (.rational 4666050 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 12186 1) .g) (.mul (.rational 221826 1) .v)) .g)
    (.mul (.rational 935121 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    11628 1) .v) .g) (.mul (.rational 111342 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 5820 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 516132 1) .f) (.add (.mul (.rational 3250170 1) .g) (.mul
    (.rational 822888 1) .v))) .f) (.add (.mul (.add (.mul (.rational 9038076 1) .g) (.mul
    (.rational 5034708 1) .v)) .g) (.mul (.rational 380376 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14624946 1) .g) (.mul (.rational 13548420 1) .v)) .g) (.mul (.rational
    2336688 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 15271956 1) .g)
    (.mul (.rational 21136716 1) .v)) .g) (.mul (.rational 6346014 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10779708 1) .g) (.mul (.rational 21226320 1) .v))
    .g) (.mul (.rational 10069350 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5227464 1) .g) (.mul (.rational 14411340 1) .v)) .g) (.mul (.rational 10398528 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1727946 1) .g) (.mul
    (.rational 6756024 1) .v)) .g) (.mul (.rational 7364559 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 374712 1) .g) (.mul (.rational 2185332 1) .v)) .g)
    (.mul (.rational 3659835 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 48414 1) .g) (.mul (.rational 473256 1) .v)) .g) (.mul (.rational 1272516 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2844 1) .g) (.mul
    (.rational 62688 1) .v)) .g) (.mul (.rational 298014 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 3876 1) .v) .g) (.mul (.rational 42423 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 2769 1) (.pow .v 2)) (.pow .g 10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1225

namespace FullHigh1226
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  39*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsHigh2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    36*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsHigh2.c410 e f g v*e*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_100_0 e g v+36*SmallGap.ReducedLayers.high0_100_1 e
    g v*e^1+90*SmallGap.ReducedLayers.high0_100_2 e g v*e^2+12*SmallGap.ReducedLayers.high0_010_2
    e g v+48*SmallGap.ReducedLayers.high0_010_3 e g v*e^1+72*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^2+12*SmallGap.ReducedLayers.high0_001_1 e g v+60*SmallGap.ReducedLayers.high0_001_2 e g
    v*e^1+120*SmallGap.ReducedLayers.high0_001_3 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_110_2 e g v+12*SmallGap.ReducedLayers.high1_110_3 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_110_4 e g v*e^2+3*SmallGap.ReducedLayers.high1_101_1 e g
    v+15*SmallGap.ReducedLayers.high1_101_2 e g v*e^1+30*SmallGap.ReducedLayers.high1_101_3 e g
    v*e^2+3*SmallGap.ReducedLayers.high1_020_4 e g v+6*SmallGap.ReducedLayers.high1_020_5 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_020_6 e g v*e^2+6*SmallGap.ReducedLayers.high1_011_3 e g
    v+18*SmallGap.ReducedLayers.high1_011_4 e g v*e^1+18*SmallGap.ReducedLayers.high1_011_5 e g
    v*e^2+3*SmallGap.ReducedLayers.high1_002_2 e g v+12*SmallGap.ReducedLayers.high1_002_3 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_002_4 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 127140 1) .e) (.add (.mul
    (.rational 1081248 1) .f) (.add (.mul (.rational 1320642 1) .g) (.mul (.rational 218316 1)
    .v)))) .e) (.add (.mul (.add (.mul (.rational 5616360 1) .f) (.add (.mul (.rational 9305292 1)
    .g) (.mul (.rational 1602270 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5572056 1) .g)
    (.mul (.rational 1818984 1) .v)) .g) (.mul (.rational 97680 1) (.pow .v 2))))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 19816044 1) .f) (.add (.mul (.rational 41339154 1) .g)
    (.mul (.rational 7205238 1) .v))) .f) (.add (.mul (.add (.mul (.rational 33168600 1) .g) (.mul
    (.rational 11048376 1) .v)) .g) (.mul (.rational 638469 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12854562 1) .g) (.mul (.rational 5754210 1) .v)) .g) (.mul
    (.rational 713886 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 50048988 1) .f) (.add (.mul (.rational 125601264 1) .g) (.mul (.rational 22080936
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 126021198 1) .g) (.mul (.rational 42697596 1)
    .v)) .g) (.mul (.rational 2542893 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 64835232 1) .g) (.mul (.rational 30032310 1) .v)) .g) (.mul (.rational 3831585 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 18097914 1) .g) (.mul
    (.rational 9325692 1) .v)) .g) (.mul (.rational 1861143 1) (.pow .v 2))) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 92980926 1) .f) (.add
    (.mul (.rational 272203908 1) .g) (.mul (.rational 48593736 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 327065136 1) .g) (.mul (.rational 113763876 1) .v)) .g) (.mul (.rational
    6881556 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 209101008 1) .g) (.mul
    (.rational 101423982 1) .v)) .g) (.mul (.rational 13121082 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 76875438 1) .g) (.mul (.rational 42952008 1) .v)) .g) (.mul
    (.rational 8699637 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    16245504 1) .g) (.mul (.rational 8706282 1) .v)) .g) (.mul (.rational 2270880 1) (.pow .v 2)))
    (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 128560374 1) .f) (.add (.mul (.rational 429468132 1) .g) (.mul (.rational 78737526
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 599971386 1) .g) (.mul (.rational 217304376 1)
    .v)) .g) (.mul (.rational 13369026 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 457211364 1) .g) (.mul (.rational 236342448 1) .v)) .g) (.mul (.rational 31207056
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 207622548 1) .g) (.mul
    (.rational 128639928 1) .v)) .g) (.mul (.rational 26875683 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 57381588 1) .g) (.mul (.rational 36632532 1) .v)) .g)
    (.mul (.rational 10243119 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9354000 1) .g) (.mul (.rational 5128680 1) .v)) .g) (.mul (.rational 1512207 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 132248430 1) .f) (.add (.mul (.rational 495851292 1) .g)
    (.mul (.rational 94520466 1) .v))) .f) (.add (.mul (.add (.mul (.rational 788363466 1) .g)
    (.mul (.rational 301697280 1) .v)) .g) (.mul (.rational 19087221 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 695925792 1) .g) (.mul (.rational 389919888 1) .v)) .g)
    (.mul (.rational 53482566 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    374860044 1) .g) (.mul (.rational 262503024 1) .v)) .g) (.mul (.rational 58180560 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 127216614 1) .g) (.mul
    (.rational 98655972 1) .v)) .g) (.mul (.rational 30858054 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 26949732 1) .g) (.mul (.rational 20600568 1) .v)) .g)
    (.mul (.rational 8170044 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3364878 1) .g) (.mul (.rational 2228898 1) .v)) .g) (.mul (.rational 976602 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 99958608 1) .f) (.add (.mul (.rational
    415278630 1) .g) (.mul (.rational 83224584 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    739403346 1) .g) (.mul (.rational 302661216 1) .v)) .g) (.mul (.rational 19975449 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 740537052 1) .g) (.mul (.rational 455517900
    1) .v)) .g) (.mul (.rational 66151491 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 460185342 1) .g) (.mul (.rational 368412504 1) .v)) .g) (.mul (.rational 88727694
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 184327908 1) .g)
    (.mul (.rational 174403608 1) .v)) .g) (.mul (.rational 62334528 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 47684550 1) .g) (.mul (.rational 49605828 1)
    .v)) .g) (.mul (.rational 25037970 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7695234 1) .g) (.mul (.rational 8452230 1) .v)) .g) (.mul (.rational 6057612
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 707010 1) .g)
    (.mul (.rational 839868 1) .v)) .g) (.mul (.rational 948483 1) (.pow .v 2))) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 53966934 1) .f) (.add (.mul (.rational 245897712 1) .g) (.mul
    (.rational 52256088 1) .v))) .f) (.add (.mul (.add (.mul (.rational 484170084 1) .g) (.mul
    (.rational 213831900 1) .v)) .g) (.mul (.rational 14905980 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 541577844 1) .g) (.mul (.rational 368529084 1) .v)) .g) (.mul
    (.rational 57454092 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    380496702 1) .g) (.mul (.rational 349584096 1) .v)) .g) (.mul (.rational 92653584 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 175072560 1) .g) (.mul
    (.rational 200783616 1) .v)) .g) (.mul (.rational 82079220 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 53197824 1) .g) (.mul (.rational 72781128 1) .v)) .g)
    (.mul (.rational 44511660 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10434648 1) .g) (.mul (.rational 16981158 1) .v)) .g) (.mul (.rational 15806682 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1235172 1) .g) (.mul
    (.rational 2562480 1) .v)) .g) (.mul (.rational 3856263 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 75486 1) .g) (.mul (.rational 239898 1) .v)) .g)
    (.mul (.rational 636996 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 19714950 1) .f) (.add (.mul (.rational 97699986 1) .g) (.mul (.rational 22143816 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 210603618 1) .g) (.mul (.rational 100859436 1)
    .v)) .g) (.mul (.rational 7484616 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 259889424 1) .g) (.mul (.rational 196207932 1) .v)) .g) (.mul (.rational 33060816
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 203298792 1) .g) (.mul
    (.rational 213941928 1) .v)) .g) (.mul (.rational 62549130 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 105358104 1) .g) (.mul (.rational 144662634 1) .v))
    .g) (.mul (.rational 66986376 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 36619992 1) .g) (.mul (.rational 63679380 1) .v)) .g) (.mul (.rational 45476934 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8402880 1) .g) (.mul
    (.rational 18743292 1) .v)) .g) (.mul (.rational 20870532 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1205916 1) .g) (.mul (.rational 3726240 1) .v)) .g)
    (.mul (.rational 6696867 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 95286 1) .g) (.mul (.rational 485598 1) .v)) .g) (.mul (.rational 1479669 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2952 1) .g) (.mul
    (.rational 36216 1) .v)) .g) (.mul (.rational 204033 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 4370112 1) .f) (.add (.mul (.rational 23390046
    1) .g) (.mul (.rational 5672268 1) .v))) .f) (.add (.mul (.add (.mul (.rational 54745992 1)
    .g) (.mul (.rational 28485000 1) .v)) .g) (.mul (.rational 2257740 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 73800450 1) .g) (.mul (.rational 61777548 1) .v)) .g) (.mul
    (.rational 11261592 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    63513612 1) .g) (.mul (.rational 76136940 1) .v)) .g) (.mul (.rational 24460056 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 36526182 1) .g) (.mul
    (.rational 59180862 1) .v)) .g) (.mul (.rational 30645828 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 14246172 1) .g) (.mul (.rational 30550776 1) .v)) .g)
    (.mul (.rational 24808287 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3725826 1) .g) (.mul (.rational 10776756 1) .v)) .g) (.mul (.rational 13780638 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 624066 1) .g) (.mul
    (.rational 2623740 1) .v)) .g) (.mul (.rational 5400156 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 59892 1) .g) (.mul (.rational 429642 1) .v)) .g)
    (.mul (.rational 1475910 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2442 1) .g) (.mul (.rational 42456 1) .v)) .g) (.mul (.rational 262803 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1836 1) .v) .g) (.mul (.rational
    26052 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 444204 1) .f) (.add (.mul (.rational 2552580 1) .g) (.mul (.rational 663120
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 6442668 1) .g) (.mul (.rational 3640788 1)
    .v)) .g) (.mul (.rational 308232 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9411480 1) .g) (.mul (.rational 8709552 1) .v)) .g) (.mul (.rational 1713420 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8826012 1) .g) (.mul
    (.rational 11964240 1) .v)) .g) (.mul (.rational 4196520 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5567436 1) .g) (.mul (.rational 10491732 1) .v)) .g)
    (.mul (.rational 6002820 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2401506 1) .g) (.mul (.rational 6191820 1) .v)) .g) (.mul (.rational 5612373 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 702414 1) .g) (.mul
    (.rational 2530044 1) .v)) .g) (.mul (.rational 3632985 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 133746 1) .g) (.mul (.rational 722160 1) .v)) .g)
    (.mul (.rational 1670346 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14970 1) .g) (.mul (.rational 140556 1) .v)) .g) (.mul (.rational 541656 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 744 1) .g) (.mul (.rational
    16944 1) .v)) .g) (.mul (.rational 117771 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 948 1) .v) .g) (.mul (.rational 15231 1) (.pow .v 2))) (.pow .g 9))) .f)
    (.mul (.mul (.rational 870 1) (.pow .v 2)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1226

namespace FullHigh1227
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  36*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_100_1 e g v+36*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^1+12*SmallGap.ReducedLayers.high0_010_3 e g v+48*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^1+12*SmallGap.ReducedLayers.high0_001_2 e g v+60*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_110_3 e g v+12*SmallGap.ReducedLayers.high1_110_4 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_101_2 e g v+15*SmallGap.ReducedLayers.high1_101_3 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_020_5 e g v+6*SmallGap.ReducedLayers.high1_020_6 e g
    v*e^1+6*SmallGap.ReducedLayers.high1_011_4 e g v+18*SmallGap.ReducedLayers.high1_011_5 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_002_3 e g v+12*SmallGap.ReducedLayers.high1_002_4 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 37548 1) .e) (.add (.mul (.rational 314478 1)
    .f) (.add (.mul (.rational 382914 1) .g) (.mul (.rational 63540 1) .v)))) .e) (.add (.mul
    (.add (.mul (.rational 1598094 1) .f) (.add (.mul (.rational 2635662 1) .g) (.mul (.rational
    452592 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1575504 1) .g) (.mul (.rational 501624
    1) .v)) .g) (.mul (.rational 28320 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 5465484 1) .f) (.add (.mul (.rational 11330058 1) .g) (.mul (.rational 1960812 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 9058728 1) .g) (.mul (.rational 2918148 1) .v))
    .g) (.mul (.rational 178794 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3514866 1) .g) (.mul (.rational 1450068 1) .v)) .g) (.mul (.rational 194076 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13218066 1) .f) (.add
    (.mul (.rational 32897136 1) .g) (.mul (.rational 5737068 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 32823336 1) .g) (.mul (.rational 10720080 1) .v)) .g) (.mul (.rational 681732 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 16868052 1) .g) (.mul (.rational
    7155432 1) .v)) .g) (.mul (.rational 989796 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4733766 1) .g) (.mul (.rational 2022528 1) .v)) .g) (.mul (.rational 448692
    1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 23140296 1) .f) (.add (.mul (.rational 67032462 1) .g) (.mul (.rational
    11921040 1) .v))) .f) (.add (.mul (.add (.mul (.rational 79905120 1) .g) (.mul (.rational
    26906820 1) .v)) .g) (.mul (.rational 1750728 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 50895324 1) .g) (.mul (.rational 22734312 1) .v)) .g) (.mul (.rational
    3206868 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 18756084 1) .g)
    (.mul (.rational 8786664 1) .v)) .g) (.mul (.rational 1981536 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4003842 1) .g) (.mul (.rational 1458816 1) .v))
    .g) (.mul (.rational 433668 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 29511720 1) .f) (.add (.mul (.rational
    97308576 1) .g) (.mul (.rational 17956152 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    134503902 1) .g) (.mul (.rational 47766816 1) .v)) .g) (.mul (.rational 3198672 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 101813472 1) .g) (.mul (.rational 49365348
    1) .v)) .g) (.mul (.rational 7201704 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 46186068 1) .g) (.mul (.rational 24805680 1) .v)) .g) (.mul (.rational 5864844 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 12844272 1) .g) (.mul
    (.rational 6074064 1) .v)) .g) (.mul (.rational 2002524 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2123226 1) .g) (.mul (.rational 559536 1) .v)) .g)
    (.mul (.rational 200412 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 27187992 1) .f) (.add (.mul
    (.rational 100341108 1) .g) (.mul (.rational 19559016 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 157369068 1) .g) (.mul (.rational 60244200 1) .v)) .g) (.mul (.rational 4229796 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 137513538 1) .g) (.mul (.rational
    74344272 1) .v)) .g) (.mul (.rational 11544768 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 73700520 1) .g) (.mul (.rational 46901532 1) .v)) .g) (.mul (.rational
    12168216 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 25051452
    1) .g) (.mul (.rational 15909096 1) .v)) .g) (.mul (.rational 6211068 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5352348 1) .g) (.mul (.rational 2734728
    1) .v)) .g) (.mul (.rational 1578960 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 677166 1) .g) (.mul (.rational 169968 1) .v)) .g) (.mul (.rational
    190548 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 17632836 1) .f) (.add (.mul
    (.rational 71892360 1) .g) (.mul (.rational 15026904 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 125836020 1) .g) (.mul (.rational 52814880 1) .v)) .g) (.mul (.rational 3970872 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 124261320 1) .g) (.mul (.rational
    76274520 1) .v)) .g) (.mul (.rational 12956328 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 76472874 1) .g) (.mul (.rational 58574208 1) .v)) .g) (.mul (.rational
    17219376 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 30508968
    1) .g) (.mul (.rational 25916028 1) .v)) .g) (.mul (.rational 12179520 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7906260 1) .g) (.mul (.rational 6731280
    1) .v)) .g) (.mul (.rational 5126772 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1281540 1) .g) (.mul (.rational 1013472 1) .v)) .g) (.mul (.rational
    1408836 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 117390 1)
    .g) (.mul (.rational 84480 1) .v)) .g) (.mul (.rational 272652 1) (.pow .v 2))) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 7637544 1) .f) (.add (.mul (.rational 34042716 1) .g) (.mul
    (.rational 7709760 1) .v))) .f) (.add (.mul (.add (.mul (.rational 65643408 1) .g) (.mul
    (.rational 30523176 1) .v)) .g) (.mul (.rational 2495808 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 72067812 1) .g) (.mul (.rational 50656944 1) .v)) .g) (.mul
    (.rational 9565272 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 49869072
    1) .g) (.mul (.rational 46030920 1) .v)) .g) (.mul (.rational 15507360 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22700982 1) .g) (.mul (.rational 25214640
    1) .v)) .g) (.mul (.rational 14112144 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6852192 1) .g) (.mul (.rational 8725812 1) .v)) .g) (.mul (.rational
    8160264 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1335024 1)
    .g) (.mul (.rational 1974024 1) .v)) .g) (.mul (.rational 3242436 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 154974 1) .g) (.mul (.rational 299280 1)
    .v)) .g) (.mul (.rational 911424 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8796 1) .g) (.mul (.rational 29004 1) .v)) .g) (.mul (.rational 169788 1)
    (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1982880 1) .f) (.add
    (.mul (.rational 9580032 1) .g) (.mul (.rational 2363904 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 20139084 1) .g) (.mul (.rational 10419840 1) .v)) .g) (.mul (.rational 933120 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 24266520 1) .g) (.mul (.rational
    19549512 1) .v)) .g) (.mul (.rational 4121280 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 18577620 1) .g) (.mul (.rational 20504160 1) .v)) .g) (.mul (.rational
    7891848 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9449880 1)
    .g) (.mul (.rational 13339920 1) .v)) .g) (.mul (.rational 8730072 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3229974 1) .g) (.mul (.rational 5693280 1)
    .v)) .g) (.mul (.rational 6302592 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 726312 1) .g) (.mul (.rational 1658004 1) .v)) .g) (.mul (.rational 3172056
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 100242 1) .g)
    (.mul (.rational 335856 1) .v)) .g) (.mul (.rational 1134012 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7146 1) .g) (.mul (.rational 45144 1) .v)) .g)
    (.mul (.rational 275964 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 150 1) .g) (.mul (.rational 3288 1) .v)) .g) (.mul (.rational 40644 1) (.pow .v
    2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 233280 1) .f)
    (.add (.mul (.rational 1213056 1) .g) (.mul (.rational 326592 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 2756376 1) .g) (.mul (.rational 1586304 1) .v)) .g) (.mul (.rational 155520
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3607380 1) .g) (.mul (.rational
    3316608 1) .v)) .g) (.mul (.rational 777600 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3016440 1) .g) (.mul (.rational 3932280 1) .v)) .g) (.mul (.rational 1711872
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1687224 1) .g)
    (.mul (.rational 2943528 1) .v)) .g) (.mul (.rational 2211048 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 639612 1) .g) (.mul (.rational 1474032 1) .v))
    .g) (.mul (.rational 1885884 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 161418 1) .g) (.mul (.rational 512304 1) .v)) .g) (.mul (.rational 1127088 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 25452 1) .g) (.mul
    (.rational 125004 1) .v)) .g) (.mul (.rational 479832 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2142 1) .g) (.mul (.rational 20412 1) .v)) .g) (.mul
    (.rational 141228 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    60 1) .g) (.mul (.rational 1884 1) .v)) .g) (.mul (.rational 26406 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 60 1) .v) .g) (.mul (.rational 2640 1) (.pow .v
    2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1227

namespace FullHigh1228
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  30*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_100_2 e g v+12*SmallGap.ReducedLayers.high0_010_4 e
    g v+12*SmallGap.ReducedLayers.high0_001_3 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_110_4 e g v+3*SmallGap.ReducedLayers.high1_101_3 e g
    v+3*SmallGap.ReducedLayers.high1_020_6 e g v+6*SmallGap.ReducedLayers.high1_011_5 e g
    v+3*SmallGap.ReducedLayers.high1_002_4 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 4860 1) .e) (.add (.mul (.rational 40230 1) .f) (.add (.mul
    (.rational 48870 1) .g) (.mul (.rational 8100 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    200610 1) .f) (.add (.mul (.rational 329580 1) .g) (.mul (.rational 56160 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 197010 1) .g) (.mul (.rational 60660 1) .v)) .g) (.mul (.rational
    3600 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 666360 1) .f) (.add
    (.mul (.rational 1373400 1) .g) (.mul (.rational 234900 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1096200 1) .g) (.mul (.rational 338220 1) .v)) .g) (.mul (.rational 22050 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 427320 1) .g) (.mul (.rational 159120 1)
    .v)) .g) (.mul (.rational 23220 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1543590 1) .f) (.add (.mul (.rational 3810600 1) .g) (.mul (.rational
    657180 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3787560 1) .g) (.mul (.rational 1181700
    1) .v)) .g) (.mul (.rational 80820 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1951740 1) .g) (.mul (.rational 741420 1) .v)) .g) (.mul (.rational 112950 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 554130 1) .g) (.mul (.rational
    184320 1) .v)) .g) (.mul (.rational 47520 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2539620 1) .f) (.add (.mul
    (.rational 7277040 1) .g) (.mul (.rational 1290600 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 8619480 1) .g) (.mul (.rational 2797200 1) .v)) .g) (.mul (.rational 198000 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5492340 1) .g) (.mul (.rational
    2221740 1) .v)) .g) (.mul (.rational 348840 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2043540 1) .g) (.mul (.rational 762300 1) .v)) .g) (.mul (.rational 201150 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 445320 1) .g) (.mul
    (.rational 86760 1) .v)) .g) (.mul (.rational 35820 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2963520 1) .f)
    (.add (.mul (.rational 9634140 1) .g) (.mul (.rational 1804680 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 13191930 1) .g) (.mul (.rational 4614840 1) .v)) .g) (.mul (.rational 342720
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9961920 1) .g) (.mul (.rational
    4515300 1) .v)) .g) (.mul (.rational 749880 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4551480 1) .g) (.mul (.rational 2071980 1) .v)) .g) (.mul (.rational 588420
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1289700 1) .g)
    (.mul (.rational 410580 1) .v)) .g) (.mul (.rational 189450 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 219870 1) .g) (.mul (.rational 5400 1) .v)) .g) (.mul
    (.rational 15840 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2400840 1) .f) (.add (.mul (.rational
    8702100 1) .g) (.mul (.rational 1767960 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    13470300 1) .g) (.mul (.rational 5248800 1) .v)) .g) (.mul (.rational 421740 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11702880 1) .g) (.mul (.rational 6194880 1) .v))
    .g) (.mul (.rational 1138320 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6298200 1) .g) (.mul (.rational 3684240 1) .v)) .g) (.mul (.rational 1202760 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2176020 1) .g) (.mul
    (.rational 1141380 1) .v)) .g) (.mul (.rational 639360 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 478620 1) .g) (.mul (.rational 162180 1) .v)) .g)
    (.mul (.rational 189450 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 63000 1) .g) (.mul (.rational 2160 1) .v)) .g) (.mul (.rational 35820 1) (.pow .v
    2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1284660 1) .f) (.add (.mul (.rational 5120280 1) .g)
    (.mul (.rational 1152360 1) .v))) .f) (.add (.mul (.add (.mul (.rational 8806320 1) .g) (.mul
    (.rational 3912840 1) .v)) .g) (.mul (.rational 351000 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8609940 1) .g) (.mul (.rational 5452200 1) .v)) .g) (.mul (.rational
    1150740 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5300550 1) .g)
    (.mul (.rational 4043520 1) .v)) .g) (.mul (.rational 1575360 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2142360 1) .g) (.mul (.rational 1743660 1) .v))
    .g) (.mul (.rational 1202760 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 569880 1) .g) (.mul (.rational 457380 1) .v)) .g) (.mul (.rational 588420 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 95760 1) .g) (.mul
    (.rational 76860 1) .v)) .g) (.mul (.rational 201150 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9090 1) .g) (.mul (.rational 8640 1) .v)) .g) (.mul
    (.rational 47520 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 408240 1) .f)
    (.add (.mul (.rational 1769040 1) .g) (.mul (.rational 447120 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 3333960 1) .g) (.mul (.rational 1710720 1) .v)) .g) (.mul (.rational 174960
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3605580 1) .g) (.mul (.rational
    2752920 1) .v)) .g) (.mul (.rational 680400 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2484000 1) .g) (.mul (.rational 2449440 1) .v)) .g) (.mul (.rational 1150740
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1140480 1) .g)
    (.mul (.rational 1346760 1) .v)) .g) (.mul (.rational 1138320 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 351720 1) .g) (.mul (.rational 493920 1) .v)) .g)
    (.mul (.rational 749880 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 70560 1) .g) (.mul (.rational 129420 1) .v)) .g) (.mul (.rational 348840 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8370 1) .g) (.mul
    (.rational 24660 1) .v)) .g) (.mul (.rational 112950 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 450 1) .g) (.mul (.rational 3060 1) .v)) .g) (.mul
    (.rational 23220 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 58320
    1) .f) (.add (.mul (.rational 272160 1) .g) (.mul (.rational 77760 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 555660 1) .g) (.mul (.rational 330480 1) .v)) .g) (.mul (.rational
    38880 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 655560 1) .g) (.mul
    (.rational 601560 1) .v)) .g) (.mul (.rational 174960 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 496800 1) .g) (.mul (.rational 621000 1) .v)) .g) (.mul
    (.rational 351000 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    253440 1) .g) (.mul (.rational 409680 1) .v)) .g) (.mul (.rational 421740 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 87930 1) .g) (.mul (.rational
    186840 1) .v)) .g) (.mul (.rational 342720 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 20160 1) .g) (.mul (.rational 62100 1) .v)) .g) (.mul (.rational
    198000 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2790 1) .g)
    (.mul (.rational 14940 1) .v)) .g) (.mul (.rational 80820 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 180 1) .g) (.mul (.rational 2340 1) .v)) .g) (.mul
    (.rational 22050 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.mul (.rational 180 1)
    .v) .g) (.mul (.rational 3600 1) (.pow .v 2))) (.pow .g 8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh1228

end
end SPR.N6.Tail.CoreEndpoint
