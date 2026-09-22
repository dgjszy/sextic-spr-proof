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

namespace FullLow1220
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow0.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    6*SmallGap.PolarCoefficientsLow0.c140 e f g v*e^2*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_0 e g v*e^6+12*SmallGap.ReducedLayers.low0_010_0
    e g v*e^4+12*SmallGap.ReducedLayers.low0_001_0 e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_0 e g v*e^4+3*SmallGap.ReducedLayers.low1_101_0 e g
    v*e^5+3*SmallGap.ReducedLayers.low1_020_0 e g v*e^2+6*SmallGap.ReducedLayers.low1_011_0 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_002_0 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 120 1) .v) (.rational 3480 1)) .e) (.add
    (.mul (.add (.mul (.add (.mul (.rational 120 1) .v) (.rational 2664 1)) .v) (.rational 31860
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 300 1) .v) (.rational 4248 1)) .v) (.rational
    41856 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2412 1) .v)
    (.rational 27420 1)) .v) (.rational 183780 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    7236 1) .v) (.rational 59856 1)) .v) (.rational 335274 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7836 1) .v) (.rational 43932 1)) .v) (.rational 214380 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22404 1) .v) (.rational
    174240 1)) .v) (.rational 749623 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 78414 1) .v)
    (.rational 481860 1)) .v) (.rational 1761645 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 106098 1) .v) (.rational 501420 1)) .v) (.rational 1565517 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 69210 1) .v) (.rational 246012 1)) .v) (.rational
    652531 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 127980 1) .v) (.rational 767100 1)) .v) (.rational 2299374 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 511920 1) .v) (.rational 2564124 1)) .v) (.rational
    6648239 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 826728 1) .v) (.rational 3419460
    1)) .v) (.rational 7626357 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    688464 1) .v) (.rational 2332596 1)) .v) (.rational 4421919 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 311244 1) .v) (.rational 862752 1)) .v) (.rational 1362305 1))
    (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 504276 1) .v) (.rational 2486862 1)) .v) (.rational 5503761 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2269242 1) .v) (.rational 9735020 1)) .v) (.rational
    18975473 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4246248 1) .v) (.rational
    15751820 1)) .v) (.rational 26826280 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4272072 1) .v) (.rational 13655736 1)) .v) (.rational 20089872 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2488848 1) .v) (.rational 6859526 1)) .v)
    (.rational 8587157 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 836838 1)
    .v) (.rational 2002508 1)) .v) (.rational 2095519 1)) (.pow .g 5)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1455859 1) .v) (.rational 6155252 1)) .v) (.rational 10521592 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7279295 1) .v) (.rational 27585664 1)) .v) (.rational 42274107 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 15456994 1) .v) (.rational 52318166 1)) .v)
    (.rational 71327915 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 18152206 1)
    .v) (.rational 54768800 1)) .v) (.rational 65810828 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 12850391 1) .v) (.rational 34578268 1)) .v) (.rational 36226830 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5591491 1) .v) (.rational 13472372
    1)) .v) (.rational 12167699 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1452180 1) .v) (.rational 3160170 1)) .v) (.rational 2436787 1)) (.pow .g 6)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 3190596 1) .v) (.rational 11894402 1)) .v) (.rational 16296906 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 17548278 1) .v) (.rational 59996705 1)) .v)
    (.rational 74955805 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 41634714 1) .v)
    (.rational 130226147 1)) .v) (.rational 147382694 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 55744128 1) .v) (.rational 159270272 1)) .v) (.rational 162097946 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 46230696 1) .v) (.rational
    120652020 1)) .v) (.rational 109567329 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 24506118 1) .v) (.rational 58533977 1)) .v) (.rational 47069132 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8248698 1) .v) (.rational 18114819 1)) .v)
    (.rational 12818021 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1684692 1)
    .v) (.rational 3427030 1)) .v) (.rational 2127293 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 5422506 1) .v) (.rational 18189080 1)) .v) (.rational 20614278 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 32535036 1) .v) (.rational 101900542 1)) .v)
    (.rational 106976886 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 85222222 1) .v)
    (.rational 248730120 1)) .v) (.rational 240598735 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 127873280 1) .v) (.rational 347287368 1)) .v) (.rational 307788232 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 121178884 1) .v) (.rational
    306071520 1)) .v) (.rational 247100914 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 75361252 1) .v) (.rational 177130322 1)) .v) (.rational 129551045 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 30921542 1) .v) (.rational 67773124 1)) .v)
    (.rational 44699968 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8182624 1)
    .v) (.rational 16786448 1)) .v) (.rational 9956047 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1316910 1) .v) (.rational 2541908 1)) .v) (.rational 1355461 1)) (.pow
    .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7233938 1) .v) (.rational
    22168164 1)) .v) (.rational 21353868 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 47020597
    1) .v) (.rational 136478486 1)) .v) (.rational 123528999 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 134683786 1) .v) (.rational 369618192 1)) .v) (.rational 313031322 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 223534256 1) .v) (.rational 579192299 1))
    .v) (.rational 456965323 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    237713713 1) .v) (.rational 580976391 1)) .v) (.rational 425133961 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 169044639 1) .v) (.rational 389582028 1)) .v) (.rational
    263290646 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 81376572 1) .v)
    (.rational 176934758 1)) .v) (.rational 110027596 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 26229678 1) .v) (.rational 53882059 1)) .v) (.rational 30743851 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5459987 1) .v) (.rational 10621071
    1)) .v) (.rational 5551739 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    681834 1) .v) (.rational 1259376 1)) .v) (.rational 602925 1)) (.pow .g 9)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7614580 1) .v) (.rational 21571440 1))
    .v) (.rational 18082962 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 53302060 1) .v)
    (.rational 144681316 1)) .v) (.rational 115413738 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 165652651 1) .v) (.rational 430141438 1)) .v) (.rational 325439555 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 300989126 1) .v) (.rational 746591540 1))
    .v) (.rational 533902014 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    354298048 1) .v) (.rational 838489830 1)) .v) (.rational 564781333 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 282789015 1) .v) (.rational 637982708 1)) .v) (.rational
    403373521 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 155599683 1) .v)
    (.rational 334482904 1)) .v) (.rational 197874596 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 58775148 1) .v) (.rational 120387540 1)) .v) (.rational 66447016 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 14871794 1) .v) (.rational 29037526
    1)) .v) (.rational 14917697 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2394215 1) .v) (.rational 4458932 1)) .v) (.rational 2128067 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 222468 1) .v) (.rational 395254 1)) .v) (.rational 174909 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    6318764 1) .v) (.rational 16705956 1)) .v) (.rational 12440979 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 47390730 1) .v) (.rational 121189874 1)) .v) (.rational 86831607 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 158759810 1) .v) (.rational 392118578 1)) .v)
    (.rational 269602405 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 313179360
    1) .v) (.rational 746041362 1)) .v) (.rational 490882951 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 403689758 1) .v) (.rational 926266948 1)) .v) (.rational
    581614631 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 356591400 1) .v)
    (.rational 787154153 1)) .v) (.rational 470326188 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 220065550 1) .v) (.rational 466870447 1)) .v) (.rational 264688207 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 94881720 1) .v) (.rational
    193293434 1)) .v) (.rational 103689241 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 28071394 1) .v) (.rational 54876450 1)) .v) (.rational 27776858 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5474472 1) .v) (.rational 10262287 1)) .v)
    (.rational 4887705 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 652414 1)
    .v) (.rational 1171461 1)) .v) (.rational 523334 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 40950 1) .v) (.rational 70266 1)) .v) (.rational 29316 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    4104796 1) .v) (.rational 10208940 1)) .v) (.rational 6877042 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 32838368 1) .v) (.rational 79613416 1)) .v) (.rational 52084227 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 117928690 1) .v) (.rational 278340328 1)) .v)
    (.rational 176484635 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 250829390
    1) .v) (.rational 575589548 1)) .v) (.rational 352947635 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 351001038 1) .v) (.rational 782064728 1)) .v) (.rational
    462710033 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 339369902 1) .v)
    (.rational 733216658 1)) .v) (.rational 417559997 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 231566948 1) .v) (.rational 484498584 1)) .v) (.rational 264911746 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 111805580 1) .v) (.rational
    226242220 1)) .v) (.rational 118454391 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 37666436 1) .v) (.rational 73617980 1)) .v) (.rational 36804537 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8558902 1) .v) (.rational 16133626 1)) .v)
    (.rational 7677756 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1229242 1)
    .v) (.rational 2230680 1)) .v) (.rational 1006777 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 98194 1) .v) (.rational 171076 1)) .v) (.rational 72882 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 3186 1) .v) (.rational 5304 1)) .v)
    (.rational 2118 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 2058104 1) .v) (.rational 4848534 1)) .v) (.rational
    3001977 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 17493884 1) .v) (.rational 40434836
    1)) .v) (.rational 24505583 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 67027388 1)
    .v) (.rational 151830908 1)) .v) (.rational 89928112 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 152827730 1) .v) (.rational 338870416 1)) .v) (.rational 195817446 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 230523696 1) .v) (.rational
    499722556 1)) .v) (.rational 281205994 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 241812415 1) .v) (.rational 511805210 1)) .v) (.rational 279902725 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 180405704 1) .v) (.rational 372297224 1))
    .v) (.rational 197447956 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    96146182 1) .v) (.rational 193173697 1)) .v) (.rational 99113827 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 36183895 1) .v) (.rational 70666841 1)) .v) (.rational
    34984041 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 9329551 1) .v)
    (.rational 17679216 1)) .v) (.rational 8419024 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1553346 1) .v) (.rational 2849906 1)) .v) (.rational 1300748 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 148430 1) .v) (.rational 262913 1)) .v)
    (.rational 114483 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 6059 1) .v)
    (.rational 10319 1)) .v) (.rational 4260 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 777703 1) .v)
    (.rational 1746564 1)) .v) (.rational 1008324 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    6999327 1) .v) (.rational 15505992 1)) .v) (.rational 8819495 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 28494418 1) .v) (.rational 62211942 1)) .v) (.rational 34820265 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 69303932 1) .v) (.rational
    148972788 1)) .v) (.rational 81943004 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 112013620 1) .v) (.rational 236800344 1)) .v) (.rational 127822206 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 126556472 1) .v) (.rational 262811360 1))
    .v) (.rational 138992264 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    102315029 1) .v) (.rational 208442142 1)) .v) (.rational 107814423 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 59516588 1) .v) (.rational 118782036 1)) .v) (.rational
    59966724 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 24663202 1) .v)
    (.rational 48143218 1)) .v) (.rational 23667919 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7079285 1) .v) (.rational 13491264 1)) .v) (.rational 6441261 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1330969 1) .v) (.rational 2470956 1)) .v)
    (.rational 1142000 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 146412 1)
    .v) (.rational 264080 1)) .v) (.rational 117668 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7075 1) .v) (.rational 12354 1)) .v) (.rational 5279 1)) (.pow .g 12))) (.pow
    .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 213084 1) .v) (.rational 459098 1)) .v) (.rational 250456 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2024298 1) .v) (.rational 4321761 1)) .v) (.rational 2335059 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8724618 1) .v) (.rational 18444103 1)) .v)
    (.rational 9861504 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22539654 1)
    .v) (.rational 47145834 1)) .v) (.rational 24921292 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 38839384 1) .v) (.rational 80311164 1)) .v) (.rational 41926276 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 46980696 1) .v) (.rational 95942212
    1)) .v) (.rational 49406492 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    40859336 1) .v) (.rational 82318348 1)) .v) (.rational 41758318 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 25711088 1) .v) (.rational 51039726 1)) .v) (.rational
    25465142 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 11601264 1) .v)
    (.rational 22660424 1)) .v) (.rational 11099542 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3654574 1) .v) (.rational 7012459 1)) .v) (.rational 3364881 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 761422 1) .v) (.rational 1432509 1)) .v)
    (.rational 671626 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 93978 1) .v)
    (.rational 172952 1)) .v) (.rational 78974 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5180 1) .v) (.rational 9298 1)) .v) (.rational 4118 1)) (.pow .g 12))) (.pow
    .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 39670 1) .v) (.rational 82568 1)) .v) (.rational 43122 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 396700 1) .v) (.rational 821238 1)) .v) (.rational 426556 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1804336 1) .v) (.rational 3713436 1)) .v)
    (.rational 1917241 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4933074 1)
    .v) (.rational 10087792 1)) .v) (.rational 5174078 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9023708 1) .v) (.rational 18324040 1)) .v) (.rational 9330376 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 11626960 1) .v) (.rational 23429444 1))
    .v) (.rational 11834264 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10812872 1) .v) (.rational 21605080 1)) .v) (.rational 10815406 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7307308 1) .v) (.rational 14464376 1)) .v) (.rational
    7168604 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3558614 1) .v)
    (.rational 6971032 1)) .v) (.rational 3416158 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1216868 1) .v) (.rational 2356150 1)) .v) (.rational 1139996 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 277080 1) .v) (.rational 529516 1)) .v)
    (.rational 252497 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 37682 1) .v)
    (.rational 70952 1)) .v) (.rational 33270 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2312 1) .v) (.rational 4280 1)) .v) (.rational 1968 1)) (.pow .g 12))) (.pow .f
    4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 4442 1) .v) (.rational 9008 1)) .v) (.rational 4566 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 46641 1) .v) (.rational 94362 1)) .v) (.rational 47721 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 223242 1) .v) (.rational 450488 1)) .v) (.rational 227246
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 643834 1) .v) (.rational
    1295517 1)) .v) (.rational 651683 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1245591 1) .v) (.rational 2498463 1)) .v) (.rational 1252872 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1702278 1) .v) (.rational 3402528 1)) .v) (.rational
    1700250 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1684368 1) .v)
    (.rational 3353532 1)) .v) (.rational 1669164 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1215288 1) .v) (.rational 2408958 1)) .v) (.rational 1193670 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 634284 1) .v) (.rational 1251042 1)) .v)
    (.rational 616758 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 233441 1) .v)
    (.rational 457838 1)) .v) (.rational 224397 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 57486 1) .v) (.rational 112020 1)) .v) (.rational 54534 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8502 1) .v) (.rational 16445 1)) .v) (.rational
    7943 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 571 1) .v) (.rational
    1095 1)) .v) (.rational 524 1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 222 1) .v) (.rational 444 1))
    .v) (.rational 222 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2442 1) .v) (.rational
    4884 1)) .v) (.rational 2442 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 12269 1)
    .v) (.rational 24538 1)) .v) (.rational 12269 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 37220 1) .v) (.rational 74440 1)) .v) (.rational 37220 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 75915 1) .v) (.rational 151830 1)) .v) (.rational
    75915 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 109644 1) .v) (.rational
    219288 1)) .v) (.rational 109644 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 114954 1) .v) (.rational 229908 1)) .v) (.rational 114954 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 88128 1) .v) (.rational 176256 1)) .v) (.rational
    88128 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 49020 1) .v) (.rational
    98040 1)) .v) (.rational 49020 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    19290 1) .v) (.rational 38580 1)) .v) (.rational 19290 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5097 1) .v) (.rational 10194 1)) .v) (.rational 5097 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 812 1) .v) (.rational 1624 1)) .v) (.rational 812
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 59 1) .v) (.rational 118 1))
    .v) (.rational 59 1)) (.pow .g 12))) (.pow .f 6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1220

namespace FullLow1221
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow1.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow0.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsLow1.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsLow0.c140 e f g v*e*((e+f)*(e+f+g))^4+
    6*SmallGap.PolarCoefficientsLow1.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    6*SmallGap.PolarCoefficientsLow0.c230 e f g v*e^2*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(36*SmallGap.ReducedLayers.low0_100_0 e g v*e^5+6*SmallGap.ReducedLayers.low0_100_1
    e g v*e^6+48*SmallGap.ReducedLayers.low0_010_0 e g v*e^3+12*SmallGap.ReducedLayers.low0_010_1
    e g v*e^4+60*SmallGap.ReducedLayers.low0_001_0 e g v*e^4+12*SmallGap.ReducedLayers.low0_001_1
    e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(12*SmallGap.ReducedLayers.low1_110_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^4+15*SmallGap.ReducedLayers.low1_101_0 e g v*e^4+3*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^5+6*SmallGap.ReducedLayers.low1_020_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^2+18*SmallGap.ReducedLayers.low1_011_0 e g v*e^2+6*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^3+12*SmallGap.ReducedLayers.low1_002_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1140 1) .v) (.rational 34740 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 1020 1) .v) (.rational 23244 1)) .v) (.rational 302685 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2550 1) .v) (.rational 36348 1)) .v) (.rational
    390960 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 19350 1) .v)
    (.rational 224508 1)) .v) (.rational 1662687 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    58050 1) .v) (.rational 479868 1)) .v) (.rational 2976138 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 62880 1) .v) (.rational 339744 1)) .v) (.rational 1854309 1)) (.pow .g 2))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 171252 1) .v)
    (.rational 1357488 1)) .v) (.rational 6461705 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    599382 1) .v) (.rational 3686094 1)) .v) (.rational 14892186 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 811194 1) .v) (.rational 3740466 1)) .v) (.rational 12905985 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 529530 1) .v) (.rational 1774866 1)) .v)
    (.rational 5203064 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 937134 1) .v) (.rational 5734158 1)) .v) (.rational
    18892994 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3748536 1) .v) (.rational 18886494
    1)) .v) (.rational 53611957 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6055248 1)
    .v) (.rational 24742410 1)) .v) (.rational 60107250 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5045868 1) .v) (.rational 16537878 1)) .v) (.rational 33880775 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2284026 1) .v) (.rational 5989920
    1)) .v) (.rational 10083658 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3545862 1) .v) (.rational 17907700 1))
    .v) (.rational 43114328 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 15956379 1) .v)
    (.rational 69298314 1)) .v) (.rational 146132061 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 29866824 1) .v) (.rational 110716190 1)) .v) (.rational 202537069 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 30070782 1) .v) (.rational 94732066 1)) .v)
    (.rational 148247840 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 17542662
    1) .v) (.rational 47014218 1)) .v) (.rational 61762863 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5911251 1) .v) (.rational 13608524 1)) .v) (.rational 14676637 1))
    (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 9830477 1) .v) (.rational 42722138 1)) .v) (.rational
    78545369 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 49152385 1) .v) (.rational 189774700
    1)) .v) (.rational 310944321 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 104409953
    1) .v) (.rational 356671548 1)) .v) (.rational 516126755 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 122725502 1) .v) (.rational 370169214 1)) .v) (.rational
    467836101 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 87019675 1) .v)
    (.rational 232041592 1)) .v) (.rational 252854277 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 37959785 1) .v) (.rational 90034026 1)) .v) (.rational 83490110 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9894819 1) .v) (.rational 21134266
    1)) .v) (.rational 16516453 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20645394 1) .v)
    (.rational 79389874 1)) .v) (.rational 115751212 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 113549667 1) .v) (.rational 397736599 1)) .v) (.rational 525867180 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 269527899 1) .v) (.rational 857708199 1)) .v)
    (.rational 1020667388 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 361253043
    1) .v) (.rational 1043048462 1)) .v) (.rational 1107865253 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 300166452 1) .v) (.rational 786898046 1)) .v) (.rational
    739511475 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 159582717 1) .v)
    (.rational 381182061 1)) .v) (.rational 314422628 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 53945919 1) .v) (.rational 118234969 1)) .v) (.rational 85142143 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 11083437 1) .v) (.rational 22530334
    1)) .v) (.rational 14162985 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    33485202 1) .v) (.rational 116178312 1)) .v) (.rational 138842074 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 200911212 1) .v) (.rational 647473330 1)) .v) (.rational 713431982 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 526545879 1) .v) (.rational 1573046890 1))
    .v) (.rational 1588748953 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    791043285 1) .v) (.rational 2188238072 1)) .v) (.rational 2013340719 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 751253109 1) .v) (.rational 1924418074 1)) .v)
    (.rational 1603237847 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 468776058
    1) .v) (.rational 1113892892 1)) .v) (.rational 835827235 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 193284897 1) .v) (.rational 427627688 1)) .v) (.rational
    287996441 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 51496953 1) .v)
    (.rational 106709190 1)) .v) (.rational 64470132 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8364417 1) .v) (.rational 16358272 1)) .v) (.rational 8896923 1)) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 42362604 1) .v) (.rational
    134498776 1)) .v) (.rational 135612489 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    275356926 1) .v) (.rational 824714848 1)) .v) (.rational 778490794 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 789191318 1) .v) (.rational 2226044544 1)) .v) (.rational
    1958355711 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1311626063 1) .v)
    (.rational 3480106703 1)) .v) (.rational 2840333718 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1398172093 1) .v) (.rational 3487971467 1)) .v) (.rational 2629414967
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 997968225 1) .v) (.rational
    2341924072 1)) .v) (.rational 1624441909 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 483003188 1) .v) (.rational 1067994296 1)) .v) (.rational 679753136 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 156856177 1) .v) (.rational 327749785 1))
    .v) (.rational 191205298 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    32985853 1) .v) (.rational 65388637 1)) .v) (.rational 34998520 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4175679 1) .v) (.rational 7886572 1)) .v) (.rational
    3883559 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    41912616 1) .v) (.rational 123064064 1)) .v) (.rational 107349945 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 293388312 1) .v) (.rational 822835392 1)) .v) (.rational 681167588 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 912383798 1) .v) (.rational 2440460350 1))
    .v) (.rational 1910640865 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1660254732 1) .v) (.rational 4230120828 1)) .v) (.rational 3121141792 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1959331605 1) .v) (.rational 4751193088 1)) .v)
    (.rational 3292752584 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1570077751 1) .v) (.rational 3622391648 1)) .v) (.rational 2350897259 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 868878753 1) .v) (.rational 1907894754 1)) .v)
    (.rational 1156681540 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 330842382
    1) .v) (.rational 692111054 1)) .v) (.rational 391344371 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 84630197 1) .v) (.rational 168937042 1)) .v) (.rational 89035270
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 13825341 1) .v) (.rational
    26379878 1)) .v) (.rational 12961272 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1309893 1) .v) (.rational 2391274 1)) .v) (.rational 1095506 1)) (.pow .g 10))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 32294292 1) .v)
    (.rational 88412236 1)) .v) (.rational 68181849 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 242207190 1) .v) (.rational 639831812 1)) .v) (.rational 473811142 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 811945686 1) .v) (.rational 2066760424 1)) .v)
    (.rational 1465719283 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1604171244 1) .v) (.rational 3929577388 1)) .v) (.rational 2661639142 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2073305160 1) .v) (.rational 4882272558 1)) .v)
    (.rational 3149970147 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1838941269 1) .v) (.rational 4159452009 1)) .v) (.rational 2549767786 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1141635219 1) .v) (.rational 2479075049 1)) .v)
    (.rational 1440599537 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 496310409
    1) .v) (.rational 1034523058 1)) .v) (.rational 568781753 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 148501890 1) .v) (.rational 297157822 1)) .v) (.rational
    154338920 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 29402607 1) .v)
    (.rational 56488265 1)) .v) (.rational 27680158 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3575547 1) .v) (.rational 6592245 1)) .v) (.rational 3042972 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 230577 1) .v) (.rational 407036 1)) .v)
    (.rational 176459 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 19155162 1) .v) (.rational 49218686 1)) .v)
    (.rational 34184582 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 153241296 1) .v)
    (.rational 383128334 1)) .v) (.rational 258084881 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 550692628 1) .v) (.rational 1337978232 1)) .v) (.rational 872336682 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1173125716 1) .v) (.rational 2766410816 1))
    .v) (.rational 1741955183 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1646036792 1) .v) (.rational 3762988052 1)) .v) (.rational 2283449174 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1598065412 1) .v) (.rational 3537853778 1)) .v)
    (.rational 2064393311 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1096947451 1) .v) (.rational 2349452590 1)) .v) (.rational 1315499497 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 534046103 1) .v) (.rational 1105685028 1)) .v)
    (.rational 592840798 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 181960545
    1) .v) (.rational 363888114 1)) .v) (.rational 186464077 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 41978118 1) .v) (.rational 81017764 1)) .v) (.rational 39595270
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 6151929 1) .v) (.rational
    11443950 1)) .v) (.rational 5321473 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 504851 1) .v) (.rational 902968 1)) .v) (.rational 398117 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 16989 1) .v) (.rational 29064 1)) .v) (.rational
    12075 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 8563050 1) .v) (.rational 20765644 1)) .v) (.rational
    13198094 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 72785925 1) .v) (.rational 172945986
    1)) .v) (.rational 107499821 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 279062620
    1) .v) (.rational 648969674 1)) .v) (.rational 393875633 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 637251150 1) .v) (.rational 1448756276 1)) .v) (.rational
    857104060 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 963737034 1) .v)
    (.rational 2139447056 1)) .v) (.rational 1231610404 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1014994396 1) .v) (.rational 2197658768 1)) .v) (.rational 1228752500
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 761644248 1) .v) (.rational
    1606569140 1)) .v) (.rational 870776722 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 409202013 1) .v) (.rational 839906233 1)) .v) (.rational 440435794 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 155698025 1) .v) (.rational 310597861 1))
    .v) (.rational 157250390 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    40738149 1) .v) (.rational 78877856 1)) .v) (.rational 38468319 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6916146 1) .v) (.rational 12975524 1)) .v) (.rational
    6079541 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 678143 1) .v)
    (.rational 1229809 1)) .v) (.rational 551666 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 28653 1) .v) (.rational 50029 1)) .v) (.rational 21376 1)) (.pow .g 12)))
    .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2784285 1) .v) (.rational 6404298 1)) .v) (.rational 3776735 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 25058565 1) .v) (.rational 56806024 1)) .v) (.rational 32986817
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 102077565 1) .v) (.rational 227846854
    1)) .v) (.rational 130127991 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    248626380 1) .v) (.rational 545889430 1)) .v) (.rational 306233083 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 402833262 1) .v) (.rational 869108660 1)) .v) (.rational
    478228009 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 456850674 1) .v)
    (.rational 967469136 1)) .v) (.rational 521385583 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 371356854 1) .v) (.rational 771020694 1)) .v) (.rational 406299783 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 217658832 1) .v) (.rational
    442517224 1)) .v) (.rational 227619899 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 91127205 1) .v) (.rational 181178520 1)) .v) (.rational 90793658 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 26518017 1) .v) (.rational 51482880 1)) .v)
    (.rational 25081244 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 5076669 1)
    .v) (.rational 9607428 1)) .v) (.rational 4538838 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 571884 1) .v) (.rational 1052650 1)) .v) (.rational 480766 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 28512 1) .v) (.rational 50890 1)) .v)
    (.rational 22378 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 619574 1) .v) (.rational 1358274
    1)) .v) (.rational 752432 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5885953 1) .v)
    (.rational 12779903 1)) .v) (.rational 7009990 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25382329 1) .v) (.rational 54544095 1)) .v) (.rational 29599424 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 65657995 1) .v) (.rational 139531152 1)) .v)
    (.rational 74842797 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 113388512
    1) .v) (.rational 238096222 1)) .v) (.rational 126104406 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 137621146 1) .v) (.rational 285278818 1)) .v) (.rational
    149023680 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 120276086 1) .v)
    (.rational 245884338 1)) .v) (.rational 126526512 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 76200982 1) .v) (.rational 153463892 1)) .v) (.rational 77681718 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 34701530 1) .v) (.rational 68765042
    1)) .v) (.rational 34187532 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11066517 1) .v) (.rational 21548727 1)) .v) (.rational 10503746 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2343177 1) .v) (.rational 4476519 1)) .v) (.rational
    2135008 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 295343 1) .v)
    (.rational 552580 1)) .v) (.rational 257237 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16728 1) .v) (.rational 30582 1)) .v) (.rational 13854 1)) (.pow .g 12)))
    (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 84030 1) .v) (.rational 176472 1)) .v) (.rational 92890 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 840300 1) .v) (.rational 1755070 1)) .v) (.rational 918806
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3823793 1) .v) (.rational 7939060 1))
    .v) (.rational 4131549 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10465587
    1) .v) (.rational 21588694 1)) .v) (.rational 11161827 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19179597 1) .v) (.rational 39286074 1)) .v) (.rational 20166565 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 24783564 1) .v) (.rational 50375532
    1)) .v) (.rational 25655528 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    23143890 1) .v) (.rational 46648560 1)) .v) (.rational 23551066 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15730962 1) .v) (.rational 31416492 1)) .v) (.rational
    15708602 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 7720992 1) .v)
    (.rational 15264804 1)) .v) (.rational 7551292 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2667792 1) .v) (.rational 5216214 1)) .v) (.rational 2549850 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 615789 1) .v) (.rational 1189420 1)) .v)
    (.rational 573753 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 85235 1) .v)
    (.rational 162430 1)) .v) (.rational 77195 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5349 1) .v) (.rational 10042 1)) .v) (.rational 4693 1)) (.pow .g 12))) (.pow
    .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 5208 1) .v) (.rational 10540 1)) .v) (.rational 5332 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 54684 1) .v) (.rational 110448 1)) .v) (.rational 55764 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 261834 1) .v) (.rational 527672 1)) .v)
    (.rational 265838 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 755763 1) .v)
    (.rational 1519375 1)) .v) (.rational 763612 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1464237 1) .v) (.rational 2935755 1)) .v) (.rational 1471518 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2005524 1) .v) (.rational 4009020 1)) .v)
    (.rational 2003496 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1990800 1)
    .v) (.rational 3966396 1)) .v) (.rational 1975596 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1442826 1) .v) (.rational 2864034 1)) .v) (.rational 1421208 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 757638 1) .v) (.rational 1497750 1)) .v)
    (.rational 740112 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 281112 1) .v)
    (.rational 553180 1)) .v) (.rational 272068 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 69966 1) .v) (.rational 136980 1)) .v) (.rational 67014 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10491 1) .v) (.rational 20423 1)) .v) (.rational
    9932 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 717 1) .v) (.rational
    1387 1)) .v) (.rational 670 1)) (.pow .g 12))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1221

namespace FullLow1222
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow2.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow1.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsLow2.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsLow0.c140 e f g v*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsLow1.c140 e f g v*e*((e+f)*(e+f+g))^4+
    6*SmallGap.PolarCoefficientsLow2.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    10*SmallGap.PolarCoefficientsLow0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsLow1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    30*SmallGap.PolarCoefficientsLow0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(90*SmallGap.ReducedLayers.low0_100_0 e g v*e^4+36*SmallGap.ReducedLayers.low0_100_1
    e g v*e^5+6*SmallGap.ReducedLayers.low0_100_2 e g v*e^6+72*SmallGap.ReducedLayers.low0_010_0 e
    g v*e^2+48*SmallGap.ReducedLayers.low0_010_1 e g v*e^3+12*SmallGap.ReducedLayers.low0_010_2 e
    g v*e^4+120*SmallGap.ReducedLayers.low0_001_0 e g v*e^3+60*SmallGap.ReducedLayers.low0_001_1 e
    g v*e^4+12*SmallGap.ReducedLayers.low0_001_2 e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(18*SmallGap.ReducedLayers.low1_110_0 e g v*e^2+12*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_110_2 e g v*e^4+30*SmallGap.ReducedLayers.low1_101_0 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_101_1 e g v*e^4+3*SmallGap.ReducedLayers.low1_101_2 e g
    v*e^5+3*SmallGap.ReducedLayers.low1_020_0 e g v+6*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_2 e g v*e^2+18*SmallGap.ReducedLayers.low1_011_0 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_011_1 e g v*e^2+6*SmallGap.ReducedLayers.low1_011_2 e g
    v*e^3+18*SmallGap.ReducedLayers.low1_002_0 e g v*e^2+12*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_002_2 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 4800 1) .v) (.rational 156240 1)) .e) (.add (.mul (.add (.mul
    (.add (.mul (.rational 3780 1) .v) (.rational 90456 1)) .v) (.rational 1297599 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9450 1) .v) (.rational 138552 1)) .v) (.rational 1645788
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 68238 1) .v)
    (.rational 819936 1)) .v) (.rational 6786825 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    204714 1) .v) (.rational 1711008 1)) .v) (.rational 11898381 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 221814 1) .v) (.rational 1159788 1)) .v) (.rational 7200255 1)) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 577548 1)
    .v) (.rational 4707876 1)) .v) (.rational 25088302 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2021418 1) .v) (.rational 12510828 1)) .v) (.rational 56582328 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2736486 1) .v) (.rational 12306084 1)) .v) (.rational
    47641191 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1787670 1) .v)
    (.rational 5586432 1)) .v) (.rational 18449506 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3029604 1) .v) (.rational 19031568
    1)) .v) (.rational 69716444 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 12118416 1) .v)
    (.rational 61590696 1)) .v) (.rational 193708703 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19580364 1) .v) (.rational 78925074 1)) .v) (.rational 211475532 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 16326636 1) .v) (.rational 51373590 1)) .v)
    (.rational 115185356 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7399104 1)
    .v) (.rational 18078066 1)) .v) (.rational 32791880 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10989714 1) .v)
    (.rational 57088440 1)) .v) (.rational 151069899 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 49453713 1) .v) (.rational 217916964 1)) .v) (.rational 502257674 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 92590920 1) .v) (.rational 342788406 1)) .v)
    (.rational 680252205 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 93284226
    1) .v) (.rational 288439788 1)) .v) (.rational 484369797 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 54484938 1) .v) (.rational 140864496 1)) .v) (.rational 195387953
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 18393777 1) .v) (.rational
    40282092 1)) .v) (.rational 44824719 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 29150539 1) .v)
    (.rational 130783328 1)) .v) (.rational 260932392 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 145752695 1) .v) (.rational 574941876 1)) .v) (.rational 1015848410 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 309710728 1) .v) (.rational 1068840970 1)) .v)
    (.rational 1654580705 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 364326742
    1) .v) (.rational 1097455820 1)) .v) (.rational 1468559000 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 258691775 1) .v) (.rational 681592206 1)) .v) (.rational
    776156351 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 113093047 1) .v)
    (.rational 262899010 1)) .v) (.rational 250829705 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 29570934 1) .v) (.rational 61693332 1)) .v) (.rational 48835472 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 58329370 1) .v) (.rational 232478100 1)) .v)
    (.rational 363484336 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 320811535 1) .v)
    (.rational 1155595052 1)) .v) (.rational 1628664209 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 761812511 1) .v) (.rational 2472964728 1)) .v) (.rational 3114692055 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1022069787 1) .v) (.rational 2986663474 1))
    .v) (.rational 3329449911 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    850702204 1) .v) (.rational 2241438518 1)) .v) (.rational 2189815218 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 453479453 1) .v) (.rational 1083200364 1)) .v)
    (.rational 919627413 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 153882815
    1) .v) (.rational 336604816 1)) .v) (.rational 247330046 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 31780233 1) .v) (.rational 64604826 1)) .v) (.rational 41247601
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 89549296 1) .v) (.rational
    323094880 1)) .v) (.rational 409946974 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    537295776 1) .v) (.rational 1789968478 1)) .v) (.rational 2083424179 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1408858993 1) .v) (.rational 4325276546 1)) .v) (.rational
    4588209477 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2119083685 1) .v)
    (.rational 5990445308 1)) .v) (.rational 5752549171 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2016666508 1) .v) (.rational 5254001928 1)) .v) (.rational 4538445284
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1262417458 1) .v) (.rational
    3040599110 1)) .v) (.rational 2350992096 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 522924453 1) .v) (.rational 1171149592 1)) .v) (.rational 808906263 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 140210197 1) .v) (.rational 294480530 1))
    .v) (.rational 182138383 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    22966590 1) .v) (.rational 45706938 1)) .v) (.rational 25509162 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 106238198 1) .v) (.rational 351496252 1)) .v)
    (.rational 373295237 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 690548287 1) .v)
    (.rational 2145505716 1)) .v) (.rational 2124707317 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1980354170 1) .v) (.rational 5768879234 1)) .v) (.rational 5301435979 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3295916778 1) .v) (.rational 8994338994 1))
    .v) (.rational 7633635298 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3521889099 1) .v) (.rational 9005091092 1)) .v) (.rational 7028132443 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2523171846 1) .v) (.rational 6053826020 1)) .v)
    (.rational 4330661069 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1227753484 1) .v) (.rational 2772633428 1)) .v) (.rational 1815272688 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 401690378 1) .v) (.rational 857784182 1)) .v)
    (.rational 514488393 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 85322665
    1) .v) (.rational 173282100 1)) .v) (.rational 95562757 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 10944537 1) .v) (.rational 21259932 1)) .v) (.rational 10839049
    1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 97307306 1)
    .v) (.rational 297910380 1)) .v) (.rational 272006365 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 681151142 1) .v) (.rational 1984885546 1)) .v) (.rational 1714752324 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2119707935 1) .v) (.rational 5870933152 1)) .v)
    (.rational 4781614142 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3863282764 1) .v) (.rational 10160178998 1)) .v) (.rational 7774059018 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4571600476 1) .v) (.rational 11411998820 1)) .v)
    (.rational 8177394528 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3678679261 1) .v) (.rational 8719708398 1)) .v) (.rational 5836792918 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2048057981 1) .v) (.rational 4615548446 1)) .v)
    (.rational 2881810659 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 786377246
    1) .v) (.rational 1688583982 1)) .v) (.rational 983227472 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 203444582 1) .v) (.rational 417409538 1)) .v) (.rational
    226929989 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 33739869 1) .v)
    (.rational 66323442 1)) .v) (.rational 33733948 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3261036 1) .v) (.rational 6148872 1)) .v) (.rational 2929805 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 68192822 1)
    .v) (.rational 194457392 1)) .v) (.rational 156145934 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 511446165 1) .v) (.rational 1403395196 1)) .v) (.rational 1079747507 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1715793335 1) .v) (.rational 4524434092 1)) .v)
    (.rational 3326202489 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3395723175 1) .v) (.rational 8595618866 1)) .v) (.rational 6021951195 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4401734141 1) .v) (.rational 10687657084 1)) .v)
    (.rational 7117627853 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3921836556 1) .v) (.rational 9130861098 1)) .v) (.rational 5768024904 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2450619916 1) .v) (.rational 5471675968 1)) .v)
    (.rational 3273363856 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1075047042 1) .v) (.rational 2303335084 1)) .v) (.rational 1303664348 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 325633867 1) .v) (.rational 670105622 1)) .v)
    (.rational 358704663 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 65539497
    1) .v) (.rational 129643318 1)) .v) (.rational 65632269 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 8145745 1) .v) (.rational 15485192 1)) .v) (.rational 7409825 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 540813 1) .v) (.rational 984966
    1)) .v) (.rational 444153 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 35880082 1) .v) (.rational 95771084 1)) .v)
    (.rational 68925956 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 287040656 1) .v)
    (.rational 743896074 1)) .v) (.rational 518438468 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1032332074 1) .v) (.rational 2594403340 1)) .v) (.rational 1747177205 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2203113038 1) .v) (.rational 5363023360 1))
    .v) (.rational 3482582570 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3100807900 1) .v) (.rational 7304224282 1)) .v) (.rational 4564197513 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3024727754 1) .v) (.rational 6889217130 1)) .v)
    (.rational 4134542867 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2090444113 1) .v) (.rational 4601127644 1)) .v) (.rational 2647606730 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1027398719 1) .v) (.rational 2184535056 1)) .v)
    (.rational 1203539027 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 354570430
    1) .v) (.rational 728149138 1)) .v) (.rational 383633315 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 83211288 1) .v) (.rational 164983944 1)) .v) (.rational 83029793
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 12475119 1) .v) (.rational
    23855924 1)) .v) (.rational 11449591 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1055265 1) .v) (.rational 1940852 1)) .v) (.rational 885587 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 37002 1) .v) (.rational 65004 1)) .v) (.rational
    28002 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 13709548 1) .v) (.rational 34388484 1)) .v) (.rational
    22534177 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 116531158 1) .v) (.rational
    285929720 1)) .v) (.rational 183035441 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    447141520 1) .v) (.rational 1072014032 1)) .v) (.rational 669282901 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1022938240 1) .v) (.rational 2393657134 1)) .v)
    (.rational 1455021825 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1551895054 1) .v) (.rational 3540538322 1)) .v) (.rational 2091855302 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1642311463 1) .v) (.rational 3649411432 1)) .v)
    (.rational 2092197862 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1240929802 1) .v) (.rational 2683337544 1)) .v) (.rational 1490238196 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 673119634 1) .v) (.rational 1415179970 1)) .v)
    (.rational 760154185 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 259453485
    1) .v) (.rational 529914454 1)) .v) (.rational 274870670 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 69065189 1) .v) (.rational 136902172 1)) .v) (.rational 68462487
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 11994940 1) .v) (.rational
    23043428 1)) .v) (.rational 11087725 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1211964 1) .v) (.rational 2251124 1)) .v) (.rational 1039160 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 53299 1) .v) (.rational 95288 1)) .v) (.rational
    41989 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 3588109 1) .v) (.rational 8486404 1)) .v) (.rational
    5130298 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 32292981 1) .v) (.rational 75183490
    1)) .v) (.rational 44720889 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 131651053 1)
    .v) (.rational 301421750 1)) .v) (.rational 176194002 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 321234188 1) .v) (.rational 722561286 1)) .v) (.rational 414521537 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 522082480 1) .v) (.rational
    1152532036 1)) .v) (.rational 648007895 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 594888896 1) .v) (.rational 1287552154 1)) .v) (.rational 708472029 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 486850405 1) .v) (.rational 1032029730 1))
    .v) (.rational 554929360 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    288037268 1) .v) (.rational 597395714 1)) .v) (.rational 313425811 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 122124358 1) .v) (.rational 247551746 1)) .v) (.rational
    126526122 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 36137055 1) .v)
    (.rational 71508076 1)) .v) (.rational 35544690 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7071142 1) .v) (.rational 13640000 1)) .v) (.rational 6581066 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 819564 1) .v) (.rational 1538160 1)) .v)
    (.rational 718596 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 42405 1) .v)
    (.rational 77214 1)) .v) (.rational 34809 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 574572 1)
    .v) (.rational 1285320 1)) .v) (.rational 724886 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5458434 1) .v) (.rational 12084132 1)) .v) (.rational 6744990 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 23556138 1) .v) (.rational 51570516 1)) .v) (.rational
    28463637 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 61037106 1) .v)
    (.rational 132035028 1)) .v) (.rational 71991866 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 105714582 1) .v) (.rational 225764336 1)) .v) (.rational 121479658 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 128877513 1) .v) (.rational 271475882 1))
    .v) (.rational 143995457 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    113354199 1) .v) (.rational 235297062 1)) .v) (.rational 122881465 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 72449949 1) .v) (.rational 148052626 1)) .v) (.rational
    76030781 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 33385431 1) .v)
    (.rational 67094878 1)) .v) (.rational 33836341 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10813737 1) .v) (.rational 21349626 1)) .v) (.rational 10557973 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2336331 1) .v) (.rational 4525982 1)) .v)
    (.rational 2191366 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 302205 1)
    .v) (.rational 573650 1)) .v) (.rational 271445 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 17691 1) .v) (.rational 32850 1)) .v) (.rational 15159 1)) (.pow .g 12)))
    (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 42378 1) .v) (.rational 89940 1)) .v) (.rational 47786 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 423780 1) .v) (.rational 894192 1)) .v) (.rational 472430
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1929679 1) .v) (.rational 4046068 1))
    .v) (.rational 2124530 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5289381
    1) .v) (.rational 11014638 1)) .v) (.rational 5744617 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9718489 1) .v) (.rational 20087234 1)) .v) (.rational 10398789 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 12607652 1) .v) (.rational 25848184
    1)) .v) (.rational 13272312 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11840374 1) .v) (.rational 24062192 1)) .v) (.rational 12245016 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8111054 1) .v) (.rational 16326916 1)) .v) (.rational
    8227398 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4022956 1) .v)
    (.rational 8014928 1)) .v) (.rational 3995712 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1409264 1) .v) (.rational 2776744 1)) .v) (.rational 1368194 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 331099 1) .v) (.rational 644684 1)) .v)
    (.rational 313646 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 46869 1) .v)
    (.rational 90110 1)) .v) (.rational 43241 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3025 1) .v) (.rational 5738 1)) .v) (.rational 2713 1)) (.pow .g 12))) (.pow .f
    4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1222

namespace FullLow1223
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow3.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow2.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsLow3.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsLow1.c140 e f g v*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsLow2.c140 e f g v*e*((e+f)*(e+f+g))^4+
    6*SmallGap.PolarCoefficientsLow3.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    10*SmallGap.PolarCoefficientsLow1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsLow2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    36*SmallGap.PolarCoefficientsLow0.c230 e f g v*((e+f)*(e+f+g))^3+
    30*SmallGap.PolarCoefficientsLow1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    24*SmallGap.PolarCoefficientsLow0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(120*SmallGap.ReducedLayers.low0_100_0 e g
    v*e^3+90*SmallGap.ReducedLayers.low0_100_1 e g v*e^4+36*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^5+6*SmallGap.ReducedLayers.low0_100_3 e g v*e^6+48*SmallGap.ReducedLayers.low0_010_0 e g
    v*e^1+72*SmallGap.ReducedLayers.low0_010_1 e g v*e^2+48*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^3+12*SmallGap.ReducedLayers.low0_010_3 e g v*e^4+120*SmallGap.ReducedLayers.low0_001_0 e g
    v*e^2+120*SmallGap.ReducedLayers.low0_001_1 e g v*e^3+60*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^4+12*SmallGap.ReducedLayers.low0_001_3 e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(12*SmallGap.ReducedLayers.low1_110_0 e g v*e^1+18*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_110_2 e g v*e^3+3*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^4+30*SmallGap.ReducedLayers.low1_101_0 e g v*e^2+30*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_101_2 e g v*e^4+3*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^5+3*SmallGap.ReducedLayers.low1_020_1 e g v+6*SmallGap.ReducedLayers.low1_020_2 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_3 e g v*e^2+6*SmallGap.ReducedLayers.low1_011_0 e g
    v+18*SmallGap.ReducedLayers.low1_011_1 e g v*e^1+18*SmallGap.ReducedLayers.low1_011_2 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_011_3 e g v*e^3+12*SmallGap.ReducedLayers.low1_002_0 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_002_1 e g v*e^2+12*SmallGap.ReducedLayers.low1_002_2 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_002_3 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 11760 1) .v) (.rational 416880 1)) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 7980 1) .v) (.rational 206136 1)) .v) (.rational 3306303 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19950 1) .v) (.rational 308952 1)) .v) (.rational 4112760 1)) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 138150 1) .v) (.rational 1755408
    1)) .v) (.rational 16469595 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 414450 1) .v)
    (.rational 3565416 1)) .v) (.rational 28229388 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 449220 1) .v) (.rational 2292936 1)) .v) (.rational 16533573 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1123260 1) .v)
    (.rational 9558696 1)) .v) (.rational 57833188 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3931410 1) .v) (.rational 24767574 1)) .v) (.rational 127349127 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5323710 1) .v) (.rational 23439210 1)) .v) (.rational
    103741524 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3480750 1) .v)
    (.rational 10023030 1)) .v) (.rational 38265391 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5658258 1) .v) (.rational 36901692
    1)) .v) (.rational 152314614 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 22633032 1) .v)
    (.rational 116953644 1)) .v) (.rational 413355572 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 36578592 1) .v) (.rational 145815660 1)) .v) (.rational 437578905 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 30520164 1) .v) (.rational 91665132 1)) .v)
    (.rational 228600606 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 13848630
    1) .v) (.rational 30974460 1)) .v) (.rational 61407959 1)) (.pow .g 4)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 19663410 1)
    .v) (.rational 106031628 1)) .v) (.rational 312106275 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 88485345 1) .v) (.rational 398248976 1)) .v) (.rational 1015401755 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 165710976 1) .v) (.rational 614642078 1)) .v)
    (.rational 1339006762 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 167056806
    1) .v) (.rational 506297766 1)) .v) (.rational 922292277 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 97684662 1) .v) (.rational 242014250 1)) .v) (.rational 357148781
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 33035445 1) .v) (.rational
    68031782 1)) .v) (.rational 78152638 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 49742811 1) .v)
    (.rational 232323684 1)) .v) (.rational 508217019 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 248714055 1) .v) (.rational 1009026748 1)) .v) (.rational 1941825667 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 528654891 1) .v) (.rational 1851463102 1)) .v)
    (.rational 3094917871 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 622335234
    1) .v) (.rational 1876045056 1)) .v) (.rational 2679759772 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 442463349 1) .v) (.rational 1151415400 1)) .v) (.rational
    1378384222 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 193815759 1) .v)
    (.rational 440544772 1)) .v) (.rational 433682947 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 50815545 1) .v) (.rational 103234938 1)) .v) (.rational 82753078 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 94262302 1) .v) (.rational 392588950 1)) .v)
    (.rational 664125831 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 518442661 1) .v)
    (.rational 1934001568 1)) .v) (.rational 2930326628 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1231596941 1) .v) (.rational 4101789178 1)) .v) (.rational 5511234072 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1653866277 1) .v) (.rational 4913115126 1))
    .v) (.rational 5788958297 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1378781188 1) .v) (.rational 3663430004 1)) .v) (.rational 3742902955 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 736790159 1) .v) (.rational 1764642922 1)) .v)
    (.rational 1549619631 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 250886069
    1) .v) (.rational 549191084 1)) .v) (.rational 413658890 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 52047783 1) .v) (.rational 106181428 1)) .v) (.rational 69247574
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 135688361 1) .v) (.rational
    513283448 1)) .v) (.rational 696962481 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    814130166 1) .v) (.rational 2824584622 1)) .v) (.rational 3499323439 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2135818562 1) .v) (.rational 6783104208 1)) .v) (.rational
    7611664009 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3216232955 1) .v)
    (.rational 9346518322 1)) .v) (.rational 9430356749 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3066939476 1) .v) (.rational 8170819792 1)) .v) (.rational 7364121784
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1925792000 1) .v) (.rational
    4726539086 1)) .v) (.rational 3788972933 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 801206742 1) .v) (.rational 1826680196 1)) .v) (.rational 1302522548 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 216094811 1) .v) (.rational 462969834 1))
    .v) (.rational 295456125 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    35665611 1) .v) (.rational 72764672 1)) .v) (.rational 42067252 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 148877868 1) .v) (.rational 517499598 1)) .v)
    (.rational 583174692 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 967706142 1) .v)
    (.rational 3142671002 1)) .v) (.rational 3288287546 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2776889086 1) .v) (.rational 8413400914 1)) .v) (.rational 8131497284 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4628122411 1) .v) (.rational 13076660122 1))
    .v) (.rational 11616747361 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4957490741 1) .v) (.rational 13075649854 1)) .v) (.rational 10633211402 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3564941595 1) .v) (.rational 8801683414 1)) .v)
    (.rational 6536158125 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1743952588 1) .v) (.rational 4049788720 1)) .v) (.rational 2746705972 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 574761701 1) .v) (.rational 1263714296 1)) .v)
    (.rational 785492280 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 123271265
    1) .v) (.rational 258593814 1)) .v) (.rational 148259545 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 16010253 1) .v) (.rational 32265114 1)) .v) (.rational 17189922
    1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 123769079
    1) .v) (.rational 398276876 1)) .v) (.rational 383313042 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 866383553 1) .v) (.rational 2643057644 1)) .v) (.rational 2399078671 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2698094728 1) .v) (.rational 7793524970 1)) .v)
    (.rational 6646708923 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4925582179 1) .v) (.rational 13463101420 1)) .v) (.rational 10750813225 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5845302021 1) .v) (.rational 15121840598 1)) .v)
    (.rational 11274132004 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4724148144 1) .v) (.rational 11582089956 1)) .v) (.rational 8047513602 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2646610297 1) .v) (.rational 6164225080 1)) .v)
    (.rational 3990325770 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1024999699 1) .v) (.rational 2275911796 1)) .v) (.rational 1374540639 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 268266986 1) .v) (.rational 570170482 1)) .v)
    (.rational 322223394 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 45174671
    1) .v) (.rational 92226008 1)) .v) (.rational 48933857 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4453803 1) .v) (.rational 8740318 1)) .v) (.rational 4359693 1)) (.pow
    .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    76687666 1) .v) (.rational 229557718 1)) .v) (.rational 193228221 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 575157495 1) .v) (.rational 1651477766 1)) .v) (.rational 1328737697
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1931121553 1) .v) (.rational 5312396670
    1)) .v) (.rational 4073988458 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3829068087 1) .v) (.rational 10083338068 1)) .v) (.rational 7351126873 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4979481235 1) .v) (.rational 12547997844 1)) .v)
    (.rational 8676944859 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4458486252 1) .v) (.rational 10753895056 1)) .v) (.rational 7041805343 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2805706742 1) .v) (.rational 6483354356 1)) .v)
    (.rational 4016762238 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1242895992 1) .v) (.rational 2755568894 1)) .v) (.rational 1615360358 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 381470489 1) .v) (.rational 812848996 1)) .v)
    (.rational 451225686 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 78136515
    1) .v) (.rational 160226570 1)) .v) (.rational 84300686 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9939629 1) .v) (.rational 19603918 1)) .v) (.rational 9771670 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 680571 1) .v) (.rational 1284414
    1)) .v) (.rational 603843 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 34325037 1) .v) (.rational 95890452 1)) .v)
    (.rational 71969581 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 274600296 1) .v)
    (.rational 742924762 1)) .v) (.rational 538973845 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 988486538 1) .v) (.rational 2586891248 1)) .v) (.rational 1810095244 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2113900586 1) .v) (.rational 5345921780 1))
    .v) (.rational 3600261105 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2985775291 1) .v) (.rational 7291305502 1)) .v) (.rational 4717081899 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2928257596 1) .v) (.rational 6902152074 1)) .v)
    (.rational 4282600772 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2039475300 1) .v) (.rational 4639645350 1)) .v) (.rational 2757610579 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1013110563 1) .v) (.rational 2224856158 1)) .v)
    (.rational 1265703634 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 354715969
    1) .v) (.rational 752197386 1)) .v) (.rational 409393333 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 84859318 1) .v) (.rational 173754436 1)) .v) (.rational 90427751
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 13050362 1) .v) (.rational
    25769818 1)) .v) (.rational 12806879 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1142081 1) .v) (.rational 2166182 1)) .v) (.rational 1024101 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 41943 1) .v) (.rational 75636 1)) .v) (.rational
    33693 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 10489306 1) .v) (.rational 27408382 1)) .v) (.rational
    18628398 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 89159101 1) .v) (.rational 227424418
    1)) .v) (.rational 150792487 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 342443396
    1) .v) (.rational 851727232 1)) .v) (.rational 549979425 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 785143450 1) .v) (.rational 1902123430 1)) .v) (.rational
    1194101690 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1195628882 1) .v)
    (.rational 2818706352 1)) .v) (.rational 1717456277 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1272564202 1) .v) (.rational 2917054358 1)) .v) (.rational 1722415494
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 969475316 1) .v) (.rational
    2159372240 1)) .v) (.rational 1233875929 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 531859207 1) .v) (.rational 1150486494 1)) .v) (.rational 635395561 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 208150025 1) .v) (.rational 437049070 1))
    .v) (.rational 233039160 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    56538047 1) .v) (.rational 115144112 1)) .v) (.rational 59205077 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10083606 1) .v) (.rational 19890736 1)) .v) (.rational
    9845796 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1055145 1) .v)
    (.rational 2010132 1)) .v) (.rational 954987 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 48621 1) .v) (.rational 88932 1)) .v) (.rational 40311 1)) (.pow .g 12)))
    .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1958720 1) .v) (.rational 4795016 1)) .v) (.rational 2987988 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 17628480 1) .v) (.rational 42411948 1)) .v) (.rational 25977474
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 71939189 1) .v) (.rational 169920260 1))
    .v) (.rational 102162539 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    175934632 1) .v) (.rational 407557074 1)) .v) (.rational 240197813 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 287050403 1) .v) (.rational 651498484 1)) .v) (.rational
    375848854 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 329022841 1) .v)
    (.rational 730933828 1)) .v) (.rational 412176670 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 271556036 1) .v) (.rational 589942812 1)) .v) (.rational 324728257 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 162539599 1) .v) (.rational
    345008480 1)) .v) (.rational 185124194 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 69994622 1) .v) (.rational 145036964 1)) .v) (.rational 75764393 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 21139143 1) .v) (.rational 42719504 1)) .v)
    (.rational 21695684 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 4247651 1)
    .v) (.rational 8361232 1)) .v) (.rational 4121812 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 509481 1) .v) (.rational 975054 1)) .v) (.rational 465573 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 27555 1) .v) (.rational 51120 1)) .v)
    (.rational 23565 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 168624 1) .v) (.rational 387228 1))
    .v) (.rational 223452 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1601928 1) .v)
    (.rational 3636288 1)) .v) (.rational 2075208 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6920098 1) .v) (.rational 15513866 1)) .v) (.rational 8747388 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 17971669 1) .v) (.rational 39755518 1)) .v)
    (.rational 22123265 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 31247522 1)
    .v) (.rational 68143414 1)) .v) (.rational 37383596 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 38319691 1) .v) (.rational 82304532 1)) .v) (.rational 44460897 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 33988997 1) .v) (.rational 71834168
    1)) .v) (.rational 38164819 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    21975577 1) .v) (.rational 45659504 1)) .v) (.rational 23829727 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10282649 1) .v) (.rational 20985228 1)) .v) (.rational
    10745835 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3397537 1) .v)
    (.rational 6804844 1)) .v) (.rational 3414851 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 752957 1) .v) (.rational 1478734 1)) .v) (.rational 726365 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 100574 1) .v) (.rational 193490 1)) .v)
    (.rational 92916 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 6129 1) .v)
    (.rational 11538 1)) .v) (.rational 5409 1)) (.pow .g 12))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1223

namespace FullLow1224
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow3.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsLow4.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsLow2.c140 e f g v*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsLow3.c140 e f g v*e*((e+f)*(e+f+g))^4+
    6*SmallGap.PolarCoefficientsLow4.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow3.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    10*SmallGap.PolarCoefficientsLow2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsLow3.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    36*SmallGap.PolarCoefficientsLow1.c230 e f g v*((e+f)*(e+f+g))^3+
    30*SmallGap.PolarCoefficientsLow2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow3.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    39*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2+
    24*SmallGap.PolarCoefficientsLow1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsLow0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(90*SmallGap.ReducedLayers.low0_100_0 e g
    v*e^2+120*SmallGap.ReducedLayers.low0_100_1 e g v*e^3+90*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^4+36*SmallGap.ReducedLayers.low0_100_3 e g v*e^5+6*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^6+12*SmallGap.ReducedLayers.low0_010_0 e g v+48*SmallGap.ReducedLayers.low0_010_1 e g
    v*e^1+72*SmallGap.ReducedLayers.low0_010_2 e g v*e^2+48*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^3+12*SmallGap.ReducedLayers.low0_010_4 e g v*e^4+60*SmallGap.ReducedLayers.low0_001_0 e g
    v*e^1+120*SmallGap.ReducedLayers.low0_001_1 e g v*e^2+120*SmallGap.ReducedLayers.low0_001_2 e
    g v*e^3+60*SmallGap.ReducedLayers.low0_001_3 e g v*e^4+12*SmallGap.ReducedLayers.low0_001_4 e
    g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_0 e g v+12*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_110_2 e g v*e^2+12*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_110_4 e g v*e^4+15*SmallGap.ReducedLayers.low1_101_0 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_101_1 e g v*e^2+30*SmallGap.ReducedLayers.low1_101_2 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_101_3 e g v*e^4+3*SmallGap.ReducedLayers.low1_101_4 e g
    v*e^5+3*SmallGap.ReducedLayers.low1_020_2 e g v+6*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_4 e g v*e^2+6*SmallGap.ReducedLayers.low1_011_1 e g
    v+18*SmallGap.ReducedLayers.low1_011_2 e g v*e^1+18*SmallGap.ReducedLayers.low1_011_3 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_011_4 e g v*e^3+3*SmallGap.ReducedLayers.low1_002_0 e g
    v+12*SmallGap.ReducedLayers.low1_002_1 e g v*e^1+18*SmallGap.ReducedLayers.low1_002_2 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_002_3 e g v*e^3+3*SmallGap.ReducedLayers.low1_002_4 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    18480 1) .v) (.rational 730800 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 10500 1)
    .v) (.rational 303240 1)) .v) (.rational 5546289 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26250 1) .v) (.rational 444360 1)) .v) (.rational 6758136 1)) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 175590 1) .v) (.rational 2431320 1)) .v)
    (.rational 26329257 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 526770 1) .v) (.rational
    4792080 1)) .v) (.rational 44042481 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    571170 1) .v) (.rational 2892300 1)) .v) (.rational 24873027 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1378620 1) .v) (.rational
    12552720 1)) .v) (.rational 87746303 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4825170
    1) .v) (.rational 31587960 1)) .v) (.rational 188211843 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6536190 1) .v) (.rational 28498560 1)) .v) (.rational 147667986 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4277550 1) .v) (.rational 11220300 1)) .v)
    (.rational 51342803 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 6688302 1) .v) (.rational 46220304 1)) .v) (.rational
    218482274 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 26753208 1) .v) (.rational
    142940352 1)) .v) (.rational 577634797 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    43250088 1) .v) (.rational 172281876 1)) .v) (.rational 590227056 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 36114036 1) .v) (.rational 103428156 1)) .v) (.rational
    293111828 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 16410330 1) .v)
    (.rational 32961312 1)) .v) (.rational 72886606 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22277454 1) .v)
    (.rational 126931726 1)) .v) (.rational 421596254 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 100248543 1) .v) (.rational 467833596 1)) .v) (.rational 1338964338 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 187794336 1) .v) (.rational 705580550 1)) .v)
    (.rational 1712523082 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 189453642
    1) .v) (.rational 565766656 1)) .v) (.rational 1133743556 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 110922330 1) .v) (.rational 262850658 1)) .v) (.rational
    416950917 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 37584987 1) .v)
    (.rational 72137864 1)) .v) (.rational 85559560 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 53616360 1)
    .v) (.rational 264901876 1)) .v) (.rational 643217736 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 268081800 1) .v) (.rational 1134605608 1)) .v) (.rational 2407242653 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 570009210 1) .v) (.rational 2050054528 1)) .v)
    (.rational 3743959419 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 671546040
    1) .v) (.rational 2044268396 1)) .v) (.rational 3150254176 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 478111872 1) .v) (.rational 1236294172 1)) .v) (.rational
    1569084167 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 209868036 1) .v)
    (.rational 468137296 1)) .v) (.rational 477969396 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 55176846 1) .v) (.rational 109445596 1)) .v) (.rational 89050678 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 95641470 1) .v) (.rational 422412570 1)) .v)
    (.rational 781426816 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 526028085 1) .v)
    (.rational 2059881910 1)) .v) (.rational 3390327339 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1250131365 1) .v) (.rational 4324022648 1)) .v) (.rational 6259794360 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1680380505 1) .v) (.rational 5129802392 1))
    .v) (.rational 6448344987 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1403241180 1) .v) (.rational 3796006208 1)) .v) (.rational 4090916223 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 751765035 1) .v) (.rational 1821432038 1)) .v)
    (.rational 1668056880 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 256874025
    1) .v) (.rational 567782216 1)) .v) (.rational 442360376 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 53519895 1) .v) (.rational 110650888 1)) .v) (.rational 74571996
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 127698864 1) .v) (.rational
    513321936 1)) .v) (.rational 753123020 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    766193184 1) .v) (.rational 2803689078 1)) .v) (.rational 3731796420 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2011111137 1) .v) (.rational 6686133620 1)) .v) (.rational
    8009206429 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3032118165 1) .v)
    (.rational 9159913428 1)) .v) (.rational 9796806739 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2897428608 1) .v) (.rational 7978630292 1)) .v) (.rational 7569123078
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1825130466 1) .v) (.rational
    4613534550 1)) .v) (.rational 3870153835 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 762694797 1) .v) (.rational 1789953624 1)) .v) (.rational 1331691563 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 206899029 1) .v) (.rational 457625324 1))
    .v) (.rational 305193549 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    34388418 1) .v) (.rational 72857884 1)) .v) (.rational 44282742 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 127364670 1) .v) (.rational 470866718 1)) .v)
    (.rational 568124379 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 827870355 1) .v)
    (.rational 2843267300 1)) .v) (.rational 3171043180 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2377162860 1) .v) (.rational 7575111620 1)) .v) (.rational 7766419008 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3967821825 1) .v) (.rational 11733384620 1))
    .v) (.rational 11003713541 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4261086408 1) .v) (.rational 11716973886 1)) .v) (.rational 10014560451 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3076086006 1) .v) (.rational 7899671964 1)) .v)
    (.rational 6146011938 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1513094856 1) .v) (.rational 3653975014 1)) .v) (.rational 2593661458 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 502368933 1) .v) (.rational 1151024332 1)) .v)
    (.rational 750088331 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 108771378
    1) .v) (.rational 238734292 1)) .v) (.rational 144128682 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 14291859 1) .v) (.rational 30278380 1)) .v) (.rational 17075876
    1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 93597288 1)
    .v) (.rational 320159136 1)) .v) (.rational 327604109 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 655181016 1) .v) (.rational 2115197240 1)) .v) (.rational 2034304452 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2041952538 1) .v) (.rational 6215520388 1)) .v)
    (.rational 5596808304 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3734362020 1) .v) (.rational 10715939968 1)) .v) (.rational 9003848599 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4445134620 1) .v) (.rational 12037195664 1)) .v)
    (.rational 9414958389 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3609168798 1) .v) (.rational 9245312460 1)) .v) (.rational 6725586771 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2035299636 1) .v) (.rational 4950993216 1)) .v)
    (.rational 3353522273 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 795343608
    1) .v) (.rational 1846496092 1)) .v) (.rational 1168274249 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 210642642 1) .v) (.rational 469225256 1)) .v) (.rational
    278574054 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 36017616 1) .v)
    (.rational 77283284 1)) .v) (.rational 43224183 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3619716 1) .v) (.rational 7476676 1)) .v) (.rational 3939035 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 49229046 1)
    .v) (.rational 156336366 1)) .v) (.rational 139105537 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 369217845 1) .v) (.rational 1120648854 1)) .v) (.rational 950601372 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1240789827 1) .v) (.rational 3595719364 1)) .v)
    (.rational 2899414664 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2465329893 1) .v) (.rational 6817917282 1)) .v) (.rational 5212866757 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3217305249 1) .v) (.rational 8492767822 1)) .v)
    (.rational 6145327269 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2896118808 1) .v) (.rational 7304617028 1)) .v) (.rational 4997123937 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1836473778 1) .v) (.rational 4433940596 1)) .v)
    (.rational 2867947032 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 822108258
    1) .v) (.rational 1904699898 1)) .v) (.rational 1166188812 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 255891531 1) .v) (.rational 570347874 1)) .v) (.rational
    331149780 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 53395449 1) .v)
    (.rational 114658154 1)) .v) (.rational 63212853 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6959439 1) .v) (.rational 14373416 1)) .v) (.rational 7515054 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 491859 1) .v) (.rational 968432 1)) .v)
    (.rational 476573 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 17548854 1) .v) (.rational 51835840 1)) .v)
    (.rational 40906034 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 140390832 1) .v)
    (.rational 400395574 1)) .v) (.rational 304788173 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 505889691 1) .v) (.rational 1391553388 1)) .v) (.rational 1019488791 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1084388277 1) .v) (.rational 2874619974 1))
    .v) (.rational 2022749280 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1537761441 1) .v) (.rational 3927035756 1)) .v) (.rational 2649448168 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1517303901 1) .v) (.rational 3732957944 1)) .v)
    (.rational 2411731503 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1065961068 1) .v) (.rational 2527796676 1)) .v) (.rational 1562816346 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 535866036 1) .v) (.rational 1225810474 1)) .v)
    (.rational 725137265 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 190655367
    1) .v) (.rational 421019764 1)) .v) (.rational 238338222 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 46594881 1) .v) (.rational 99325966 1)) .v) (.rational 53796296
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 7371627 1) .v) (.rational
    15137304 1)) .v) (.rational 7829631 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 670041 1) .v) (.rational 1316772 1)) .v) (.rational 646731 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 25920 1) .v) (.rational 47976 1)) .v) (.rational
    22056 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 3801840 1) .v) (.rational 10454196 1)) .v) (.rational
    7429542 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 32315640 1) .v) (.rational 86523604
    1)) .v) (.rational 59887552 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 124261506 1)
    .v) (.rational 323583374 1)) .v) (.rational 217733235 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 285648495 1) .v) (.rational 722729762 1)) .v) (.rational 471937830 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 436931283 1) .v) (.rational
    1073255454 1)) .v) (.rational 679011541 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 468199992 1) .v) (.rational 1115879878 1)) .v) (.rational 683039745 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 360143505 1) .v) (.rational 832535284 1))
    .v) (.rational 492483567 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    200212122 1) .v) (.rational 448809294 1)) .v) (.rational 256346909 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 79762455 1) .v) (.rational 173334932 1)) .v) (.rational
    95520345 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 22182168 1) .v)
    (.rational 46695494 1)) .v) (.rational 24802491 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4081137 1) .v) (.rational 8306182 1)) .v) (.rational 4244378 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 444975 1) .v) (.rational 871920 1)) .v)
    (.rational 426945 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 21666 1) .v)
    (.rational 40530 1)) .v) (.rational 18864 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 378342 1) .v)
    (.rational 968644 1)) .v) (.rational 627250 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    3405078 1) .v) (.rational 8549172 1)) .v) (.rational 5434248 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13913250 1) .v) (.rational 34217356 1)) .v) (.rational 21318230 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 34124232 1) .v) (.rational 82115110
    1)) .v) (.rational 50067695 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    55949289 1) .v) (.rational 131598212 1)) .v) (.rational 78408486 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 64607151 1) .v) (.rational 148397458 1)) .v) (.rational
    86276964 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 53887569 1) .v)
    (.rational 120771860 1)) .v) (.rational 68424370 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 32722023 1) .v) (.rational 71502850 1)) .v) (.rational 39429006 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 14363817 1) .v) (.rational 30579620 1)) .v)
    (.rational 16393560 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 4448199 1)
    .v) (.rational 9217802 1)) .v) (.rational 4798356 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 923289 1) .v) (.rational 1859864 1)) .v) (.rational 938664 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 115461 1) .v) (.rational 225608 1)) .v)
    (.rational 110147 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 6588 1) .v)
    (.rational 12444 1)) .v) (.rational 5856 1)) (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1224

namespace FullLow1225
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  6*SmallGap.PolarCoefficientsLow4.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsLow3.c140 e f g v*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsLow4.c140 e f g v*e*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow4.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    10*SmallGap.PolarCoefficientsLow3.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsLow4.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    36*SmallGap.PolarCoefficientsLow2.c230 e f g v*((e+f)*(e+f+g))^3+
    30*SmallGap.PolarCoefficientsLow3.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow4.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow3.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow3.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    39*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    24*SmallGap.PolarCoefficientsLow2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow3.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    36*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsLow1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(36*SmallGap.ReducedLayers.low0_100_0 e g v*e^1+90*SmallGap.ReducedLayers.low0_100_1
    e g v*e^2+120*SmallGap.ReducedLayers.low0_100_2 e g v*e^3+90*SmallGap.ReducedLayers.low0_100_3
    e g v*e^4+36*SmallGap.ReducedLayers.low0_100_4 e g v*e^5+12*SmallGap.ReducedLayers.low0_010_1
    e g v+48*SmallGap.ReducedLayers.low0_010_2 e g v*e^1+72*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^2+48*SmallGap.ReducedLayers.low0_010_4 e g v*e^3+12*SmallGap.ReducedLayers.low0_010_5 e g
    v*e^4+12*SmallGap.ReducedLayers.low0_001_0 e g v+60*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^1+120*SmallGap.ReducedLayers.low0_001_2 e g v*e^2+120*SmallGap.ReducedLayers.low0_001_3 e
    g v*e^3+60*SmallGap.ReducedLayers.low0_001_4 e g v*e^4+12*SmallGap.ReducedLayers.low0_001_5 e
    g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_1 e g v+12*SmallGap.ReducedLayers.low1_110_2 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_110_3 e g v*e^2+12*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_110_5 e g v*e^4+3*SmallGap.ReducedLayers.low1_101_0 e g
    v+15*SmallGap.ReducedLayers.low1_101_1 e g v*e^1+30*SmallGap.ReducedLayers.low1_101_2 e g
    v*e^2+30*SmallGap.ReducedLayers.low1_101_3 e g v*e^3+15*SmallGap.ReducedLayers.low1_101_4 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_101_5 e g v*e^5+3*SmallGap.ReducedLayers.low1_020_3 e g
    v+6*SmallGap.ReducedLayers.low1_020_4 e g v*e^1+3*SmallGap.ReducedLayers.low1_020_5 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_011_2 e g v+18*SmallGap.ReducedLayers.low1_011_3 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_011_4 e g v*e^2+6*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_002_1 e g v+12*SmallGap.ReducedLayers.low1_002_2 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_002_3 e g v*e^2+12*SmallGap.ReducedLayers.low1_002_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_002_5 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 19320 1)
    .v) (.rational 879480 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 8820 1) .v)
    (.rational 298704 1)) .v) (.rational 6401325 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    22050 1) .v) (.rational 427728 1)) .v) (.rational 7631736 1)) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 143442 1) .v) (.rational 2262600 1)) .v) (.rational
    28990245 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 430326 1) .v) (.rational 4315536 1))
    .v) (.rational 47242734 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 466776 1) .v)
    (.rational 2413392 1)) .v) (.rational 25628235 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1093644 1) .v) (.rational 11088900 1)) .v)
    (.rational 91655413 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3827754 1) .v) (.rational
    26992950 1)) .v) (.rational 191066880 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    5187078 1) .v) (.rational 22963890 1)) .v) (.rational 143696097 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3398310 1) .v) (.rational 8038062 1)) .v) (.rational
    46506106 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 5129898 1) .v) (.rational 38944566 1)) .v) (.rational 215322062 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 20519592 1) .v) (.rational 117096462 1)) .v)
    (.rational 553236281 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 33184800 1) .v)
    (.rational 135435174 1)) .v) (.rational 543097440 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 27735828 1) .v) (.rational 76494930 1)) .v) (.rational 253734515 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 12625854 1) .v) (.rational 22334280
    1)) .v) (.rational 56839616 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16404348 1) .v) (.rational 102084060 1))
    .v) (.rational 389725536 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 73819566 1) .v)
    (.rational 368251602 1)) .v) (.rational 1205613200 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 138337560 1) .v) (.rational 540449880 1)) .v) (.rational 1490050581 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 139690152 1) .v) (.rational 419126238 1))
    .v) (.rational 941880534 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    81923976 1) .v) (.rational 187597002 1)) .v) (.rational 324866573 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 27830214 1) .v) (.rational 49804452 1)) .v) (.rational
    61078764 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 37510308 1) .v) (.rational 202078614 1)) .v)
    (.rational 553360259 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 187551540 1) .v)
    (.rational 852130152 1)) .v) (.rational 2025087918 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 398953896 1) .v) (.rational 1512774618 1)) .v) (.rational 3066317602 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 470506344 1) .v) (.rational 1480566534 1))
    .v) (.rational 2499206041 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    335587956 1) .v) (.rational 879873768 1)) .v) (.rational 1200449829 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 147708132 1) .v) (.rational 329108430 1)) .v)
    (.rational 352649593 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 38974236
    1) .v) (.rational 76754556 1)) .v) (.rational 64127732 1)) (.pow .g 6)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 62621448 1) .v) (.rational 301375548 1)) .v) (.rational 618221485 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 344417964 1) .v) (.rational 1453256754 1)) .v)
    (.rational 2634480484 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 818957808 1) .v)
    (.rational 3015952296 1)) .v) (.rational 4769458470 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1102175406 1) .v) (.rational 3540123258 1)) .v) (.rational 4813088716
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 922368048 1) .v) (.rational
    2598209844 1)) .v) (.rational 2995028924 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 495728688 1) .v) (.rational 1242108804 1)) .v) (.rational 1204444170 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 170119416 1) .v) (.rational 388273362 1))
    .v) (.rational 318719001 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    35629614 1) .v) (.rational 76398060 1)) .v) (.rational 54471124 1)) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 76609896 1) .v) (.rational 335099658 1)) .v) (.rational
    537956898 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 459659376 1) .v) (.rational
    1815272658 1)) .v) (.rational 2628721585 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1207300482 1) .v) (.rational 4296240576 1)) .v) (.rational 5563338573 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1822958130 1) .v) (.rational 5849878500 1)) .v)
    (.rational 6717749232 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1746468756 1) .v) (.rational 5077628676 1)) .v) (.rational 5139372516 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1104379380 1) .v) (.rational 2937254220 1)) .v)
    (.rational 2617535796 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 463954614
    1) .v) (.rational 1145730918 1)) .v) (.rational 905246313 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 126707022 1) .v) (.rational 296010078 1)) .v) (.rational
    210652727 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 21223332 1) .v)
    (.rational 47794464 1)) .v) (.rational 31250646 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 67960620 1) .v) (.rational 272692848 1)) .v) (.rational 356423317
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 441744030 1) .v) (.rational 1636352190 1))
    .v) (.rational 1968094530 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1269414900 1)
    .v) (.rational 4336833732 1)) .v) (.rational 4772274257 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2122597620 1) .v) (.rational 6693789546 1)) .v) (.rational
    6706612198 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2286402414 1) .v)
    (.rational 6677888064 1)) .v) (.rational 6074484465 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1658105208 1) .v) (.rational 4513511676 1)) .v) (.rational 3729438786
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 820802256 1) .v) (.rational
    2101777932 1)) .v) (.rational 1585376278 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 274798272 1) .v) (.rational 669507528 1)) .v) (.rational 465296172 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 60114690 1) .v) (.rational 140942850 1)) .v)
    (.rational 91240828 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 7991592 1)
    .v) (.rational 18168096 1)) .v) (.rational 11037208 1)) (.pow .g 9)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 42554034 1) .v) (.rational 157426458 1)) .v)
    (.rational 173179886 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 297878238 1) .v)
    (.rational 1034916276 1)) .v) (.rational 1066286882 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 929206368 1) .v) (.rational 3029643786 1)) .v) (.rational 2912082336 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1702821114 1) .v) (.rational 5212799940 1))
    .v) (.rational 4659829476 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2033980920 1) .v) (.rational 5858093556 1)) .v) (.rational 4861850429 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1660142394 1) .v) (.rational 4515674124 1)) .v)
    (.rational 3480740040 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 943120200
    1) .v) (.rational 2436261744 1)) .v) (.rational 1749075530 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 372204966 1) .v) (.rational 919240422 1)) .v) (.rational
    617771603 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 99839244 1) .v)
    (.rational 237273204 1)) .v) (.rational 150122064 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17342562 1) .v) (.rational 39810378 1)) .v) (.rational 23796553 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1774956 1) .v) (.rational 3923304
    1)) .v) (.rational 2208773 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 17839884 1) .v) (.rational 61022232 1)) .v) (.rational
    58013304 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 133799130 1) .v) (.rational
    435620568 1)) .v) (.rational 393702656 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    450101586 1) .v) (.rational 1393761282 1)) .v) (.rational 1194021966 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 896373504 1) .v) (.rational 2639907480 1)) .v)
    (.rational 2138774106 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1174382334 1) .v) (.rational 3292654890 1)) .v) (.rational 2519146267 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1063425264 1) .v) (.rational 2844183690 1)) .v)
    (.rational 2054481630 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 680014698
    1) .v) (.rational 1740151722 1)) .v) (.rational 1188145956 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 307901682 1) .v) (.rational 756575370 1)) .v) (.rational
    489403046 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 97292298 1) .v)
    (.rational 230297322 1)) .v) (.rational 141495879 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 20701200 1) .v) (.rational 47258778 1)) .v) (.rational 27609036 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2765934 1) .v) (.rational 6066360
    1)) .v) (.rational 3359070 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    201564 1) .v) (.rational 418482 1)) .v) (.rational 216918 1)) (.pow .g 11)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4497318 1) .v)
    (.rational 14246256 1)) .v) (.rational 11946450 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 35978544 1) .v) (.rational 109652076 1)) .v) (.rational 88490316 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 129796302 1) .v) (.rational 380241294 1)) .v) (.rational
    294629926 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 278949594 1) .v)
    (.rational 785137980 1)) .v) (.rational 582967258 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 397335396 1) .v) (.rational 1074596520 1)) .v) (.rational 763466778 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 394691406 1) .v) (.rational
    1026410658 1)) .v) (.rational 697223975 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 279947538 1) .v) (.rational 700890594 1)) .v) (.rational 455184611 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 142588632 1) .v) (.rational 344193432 1))
    .v) (.rational 213824238 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    51632304 1) .v) (.rational 120293376 1)) .v) (.rational 71526820 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12917166 1) .v) (.rational 29031894 1)) .v) (.rational
    16515871 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2108088 1) .v)
    (.rational 4552428 1)) .v) (.rational 2469897 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 199794 1) .v) (.rational 409992 1)) .v) (.rational 210198 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8190 1) .v) (.rational 15564 1)) .v) (.rational
    7374 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 516132 1) .v) (.rational 1515180 1)) .v) (.rational 1138200 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4387122 1) .v) (.rational 12500688 1)) .v)
    (.rational 9127734 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16892052 1) .v)
    (.rational 46666716 1)) .v) (.rational 33056844 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 38947950 1) .v) (.rational 104233776 1)) .v) (.rational 71499436 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 59880378 1) .v) (.rational 155155446 1)) .v)
    (.rational 102902417 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 64663950
    1) .v) (.rational 162180750 1)) .v) (.rational 103871016 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 50291670 1) .v) (.rational 122093118 1)) .v) (.rational 75449291
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 28386072 1) .v) (.rational
    66708942 1)) .v) (.rational 39752920 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11542800 1) .v) (.rational 26251326 1)) .v) (.rational 15076521 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3299148 1) .v) (.rational 7251786 1)) .v)
    (.rational 4009042 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 629538 1)
    .v) (.rational 1332990 1)) .v) (.rational 707381 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 72078 1) .v) (.rational 146010 1)) .v) (.rational 73932 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 3750 1) .v) (.rational 7176 1)) .v)
    (.rational 3426 1)) (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1225

namespace FullLow1226
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  24*SmallGap.PolarCoefficientsLow4.c140 e f g v*((e+f)*(e+f+g))^4+
    10*SmallGap.PolarCoefficientsLow4.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    36*SmallGap.PolarCoefficientsLow3.c230 e f g v*((e+f)*(e+f+g))^3+
    30*SmallGap.PolarCoefficientsLow4.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow4.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow3.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow4.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    39*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    24*SmallGap.PolarCoefficientsLow3.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow4.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    36*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsLow2.c410 e f g v*e*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_0 e g v+36*SmallGap.ReducedLayers.low0_100_1 e g
    v*e^1+90*SmallGap.ReducedLayers.low0_100_2 e g v*e^2+120*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^3+90*SmallGap.ReducedLayers.low0_100_4 e g v*e^4+12*SmallGap.ReducedLayers.low0_010_2 e g
    v+48*SmallGap.ReducedLayers.low0_010_3 e g v*e^1+72*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^2+48*SmallGap.ReducedLayers.low0_010_5 e g v*e^3+12*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^4+12*SmallGap.ReducedLayers.low0_001_1 e g v+60*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^1+120*SmallGap.ReducedLayers.low0_001_3 e g v*e^2+120*SmallGap.ReducedLayers.low0_001_4 e
    g v*e^3+60*SmallGap.ReducedLayers.low0_001_5 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_2 e g v+12*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_110_4 e g v*e^2+12*SmallGap.ReducedLayers.low1_110_5 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_110_6 e g v*e^4+3*SmallGap.ReducedLayers.low1_101_1 e g
    v+15*SmallGap.ReducedLayers.low1_101_2 e g v*e^1+30*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^2+30*SmallGap.ReducedLayers.low1_101_4 e g v*e^3+15*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_020_4 e g v+6*SmallGap.ReducedLayers.low1_020_5 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_6 e g v*e^2+6*SmallGap.ReducedLayers.low1_011_3 e g
    v+18*SmallGap.ReducedLayers.low1_011_4 e g v*e^1+18*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_011_6 e g v*e^3+3*SmallGap.ReducedLayers.low1_002_2 e g
    v+12*SmallGap.ReducedLayers.low1_002_3 e g v*e^1+18*SmallGap.ReducedLayers.low1_002_4 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_002_5 e g v*e^3+3*SmallGap.ReducedLayers.low1_002_6 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13440 1) .v) (.rational
    735840 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 4620 1) .v) (.rational 197064
    1)) .v) (.rational 5148675 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 11550 1) .v)
    (.rational 275688 1)) .v) (.rational 5999280 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 73530 1) .v) (.rational 1416768 1)) .v) (.rational 22275207 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 220590 1) .v) (.rational 2609088 1)) .v) (.rational
    35304213 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 239370 1) .v) (.rational
    1332084 1)) .v) (.rational 18326109 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 547572 1) .v) (.rational 6609828 1)) .v) (.rational
    66816960 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1916502 1) .v) (.rational 15509724
    1)) .v) (.rational 135083226 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2598234 1)
    .v) (.rational 12288036 1)) .v) (.rational 96926205 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1704330 1) .v) (.rational 3612216 1)) .v) (.rational 28766304 1)) (.pow
    .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2494776 1) .v) (.rational 22180632 1)) .v) (.rational 147885216 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9979104 1) .v) (.rational 64638096 1)) .v) (.rational 368471385
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16146156 1) .v) (.rational 71197866 1))
    .v) (.rational 346034112 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    13511604 1) .v) (.rational 37108254 1)) .v) (.rational 150416094 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6165036 1) .v) (.rational 9445242 1)) .v) (.rational
    29202852 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 7680084 1) .v) (.rational 55490748 1)) .v) (.rational
    250126665 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 34560378 1) .v) (.rational
    195519324 1)) .v) (.rational 752419257 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    64800984 1) .v) (.rational 278193720 1)) .v) (.rational 896149521 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 65521680 1) .v) (.rational 207313776 1)) .v) (.rational
    537957393 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 38518656 1) .v)
    (.rational 88504548 1)) .v) (.rational 171942549 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 13133322 1) .v) (.rational 22468152 1)) .v) (.rational 28810860 1)) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 16678734 1) .v) (.rational 103750272 1)) .v) (.rational 328047657 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 83393670 1) .v) (.rational 430215324 1)) .v)
    (.rational 1172748843 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 177507396 1) .v)
    (.rational 749249796 1)) .v) (.rational 1726831635 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 209667564 1) .v) (.rational 718413060 1)) .v) (.rational 1361821152 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 149951610 1) .v) (.rational
    418880670 1)) .v) (.rational 630540036 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 66271770 1) .v) (.rational 154714398 1)) .v) (.rational 179082936 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 17583228 1) .v) (.rational 36058626 1)) .v)
    (.rational 32102748 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25914588 1) .v)
    (.rational 143114856 1)) .v) (.rational 332481264 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 142530234 1) .v) (.rational 681882300 1)) .v) (.rational 1390866270 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 339180966 1) .v) (.rational 1398133680 1)) .v)
    (.rational 2468676882 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 457337592
    1) .v) (.rational 1623398844 1)) .v) (.rational 2442625962 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 383971968 1) .v) (.rational 1182431604 1)) .v) (.rational
    1495171254 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 207371430 1) .v)
    (.rational 564251244 1)) .v) (.rational 596830728 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 71633322 1) .v) (.rational 177426120 1)) .v) (.rational 159253149 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 15124608 1) .v) (.rational 35370024
    1)) .v) (.rational 27907278 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    28639512 1) .v) (.rational 142559784 1)) .v) (.rational 255261798 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 171837072 1) .v) (.rational 765439776 1)) .v) (.rational 1229636619 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 451773144 1) .v) (.rational 1797271734 1))
    .v) (.rational 2566698465 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    683692560 1) .v) (.rational 2432865030 1)) .v) (.rational 3063386514 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 657535698 1) .v) (.rational 2106668976 1)) .v)
    (.rational 2327667120 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 418195224
    1) .v) (.rational 1221861084 1)) .v) (.rational 1187248800 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 177075696 1) .v) (.rational 480746028 1)) .v) (.rational
    415782963 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 48844764 1) .v)
    (.rational 125979696 1)) .v) (.rational 98978148 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8276046 1) .v) (.rational 20689722 1)) .v) (.rational 15070770 1)) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21958308 1) .v) (.rational 99265140
    1)) .v) (.rational 143026098 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 142729002 1) .v)
    (.rational 591580332 1)) .v) (.rational 780987723 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 410615244 1) .v) (.rational 1559266404 1)) .v) (.rational 1875135069 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 688364820 1) .v) (.rational 2398944624 1))
    .v) (.rational 2616354636 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    744743730 1) .v) (.rational 2393578536 1)) .v) (.rational 2363773287 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 543639168 1) .v) (.rational 1625210448 1)) .v)
    (.rational 1457412936 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 271558512
    1) .v) (.rational 764190660 1)) .v) (.rational 627291546 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 91987704 1) .v) (.rational 247033656 1)) .v) (.rational 187812543
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 20411790 1) .v) (.rational
    52957116 1)) .v) (.rational 37707366 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2756040 1) .v) (.rational 6949824 1)) .v) (.rational 4653468 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11089044 1) .v) (.rational
    45729936 1)) .v) (.rational 54950058 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 77623308
    1) .v) (.rational 298955040 1)) .v) (.rational 335288550 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 242436762 1) .v) (.rational 871638276 1)) .v) (.rational 908867109 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 445517568 1) .v) (.rational 1497099288
    1)) .v) (.rational 1447392879 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    534675774 1) .v) (.rational 1684741896 1)) .v) (.rational 1509074583 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 439490004 1) .v) (.rational 1305651564 1)) .v)
    (.rational 1085591469 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 252125958
    1) .v) (.rational 711468672 1)) .v) (.rational 551691540 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 100790472 1) .v) (.rational 272414052 1)) .v) (.rational
    198294549 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 27475464 1) .v)
    (.rational 71634594 1)) .v) (.rational 49240011 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4864422 1) .v) (.rational 12266490 1)) .v) (.rational 7974393 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 507738 1) .v) (.rational 1229658 1)) .v)
    (.rational 750171 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 3314628 1) .v) (.rational 12513564 1)) .v) (.rational 12898974
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 24859710 1) .v) (.rational 88910208 1)) .v)
    (.rational 86871048 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 83734902 1) .v)
    (.rational 283574688 1)) .v) (.rational 261875460 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 167237928 1) .v) (.rational 536614308 1)) .v) (.rational 467419929 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 220173930 1) .v) (.rational
    670628160 1)) .v) (.rational 550550421 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 200825064 1) .v) (.rational 582552612 1)) .v) (.rational 451079382 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 129725514 1) .v) (.rational 359953176 1))
    .v) (.rational 263499432 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    59533380 1) .v) (.rational 158766600 1)) .v) (.rational 110240649 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 19138278 1) .v) (.rational 49238676 1)) .v) (.rational
    32521287 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 4159536 1) .v)
    (.rational 10327488 1)) .v) (.rational 6488478 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 569754 1) .v) (.rational 1355484 1)) .v) (.rational 805056 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 42582 1) .v) (.rational 94848 1)) .v) (.rational
    52266 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 444204 1) .v) (.rational 1540368 1)) .v) (.rational 1392000 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3553632 1) .v) (.rational 11806812 1)) .v)
    (.rational 10241526 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 12836862 1) .v)
    (.rational 40837416 1)) .v) (.rational 33923070 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 27669474 1) .v) (.rational 84286260 1)) .v) (.rational 66928344 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 39608892 1) .v) (.rational 115628892 1)) .v)
    (.rational 87673929 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 39640446 1)
    .v) (.rational 111079956 1)) .v) (.rational 80411280 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 28414062 1) .v) (.rational 76597434 1)) .v) (.rational 52975767 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 14680872 1) .v) (.rational 38158686
    1)) .v) (.rational 25243896 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5417898 1) .v) (.rational 13594620 1)) .v) (.rational 8609469 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1389678 1) .v) (.rational 3360852 1)) .v) (.rational
    2035194 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 234396 1) .v)
    (.rational 542298 1)) .v) (.rational 312255 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 23226 1) .v) (.rational 50442 1)) .v) (.rational 27216 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1014 1) .v) (.rational 1980 1)) .v) (.rational 966
    1)) (.pow .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1226

namespace FullLow1227
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  36*SmallGap.PolarCoefficientsLow4.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow4.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    39*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    24*SmallGap.PolarCoefficientsLow4.c320 e f g v*e*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow3.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    36*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsLow3.c410 e f g v*e*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_1 e g v+36*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^1+90*SmallGap.ReducedLayers.low0_100_3 e g v*e^2+120*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^3+12*SmallGap.ReducedLayers.low0_010_3 e g v+48*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^1+72*SmallGap.ReducedLayers.low0_010_5 e g v*e^2+48*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^3+12*SmallGap.ReducedLayers.low0_001_2 e g v+60*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^1+120*SmallGap.ReducedLayers.low0_001_4 e g v*e^2+120*SmallGap.ReducedLayers.low0_001_5 e
    g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_3 e g v+12*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_110_5 e g v*e^2+12*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_101_2 e g v+15*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_101_4 e g v*e^2+30*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_020_5 e g v+6*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_7 e g v*e^2+6*SmallGap.ReducedLayers.low1_011_4 e g
    v+18*SmallGap.ReducedLayers.low1_011_5 e g v*e^1+18*SmallGap.ReducedLayers.low1_011_6 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_011_7 e g v*e^3+3*SmallGap.ReducedLayers.low1_002_3 e g
    v+12*SmallGap.ReducedLayers.low1_002_4 e g v*e^1+18*SmallGap.ReducedLayers.low1_002_5 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_002_6 e g v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6000 1) .v) (.rational 422640 1))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1380 1) .v) (.rational 83976 1)) .v)
    (.rational 2849829 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3450 1) .v) (.rational
    114792 1)) .v) (.rational 3242088 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 21618 1) .v) (.rational 576336 1)) .v) (.rational 11797785 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 64854 1) .v) (.rational 1023288 1)) .v) (.rational 18157176
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 70404 1) .v) (.rational 469128 1)) .v)
    (.rational 8985495 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 158148 1) .v) (.rational 2571216 1)) .v) (.rational 33594642 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 553518 1) .v) (.rational 5801178 1)) .v) (.rational
    65745663 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 750786 1) .v) (.rational
    4224054 1)) .v) (.rational 44816226 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 493170 1) .v) (.rational 941082 1)) .v) (.rational 11990211 1)) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 703302 1)
    .v) (.rational 8274264 1)) .v) (.rational 69988482 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2813208 1) .v) (.rational 23325624 1)) .v) (.rational 168845310 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4554576 1) .v) (.rational 24306048 1)) .v) (.rational
    151225125 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3817500 1) .v)
    (.rational 11418024 1)) .v) (.rational 60559692 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1747074 1) .v) (.rational 2306964 1)) .v) (.rational 9663411 1)) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2091348 1) .v) (.rational 19779396 1)) .v) (.rational 110219025 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9411066 1) .v) (.rational 68013852 1)) .v) (.rational 322164420
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 17659488 1) .v) (.rational 93624936 1))
    .v) (.rational 369481680 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    17889900 1) .v) (.rational 66728166 1)) .v) (.rational 210341349 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10553172 1) .v) (.rational 26923710 1)) .v) (.rational
    62019615 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3617334 1) .v)
    (.rational 6455202 1)) .v) (.rational 9113793 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4314696 1)
    .v) (.rational 34761804 1)) .v) (.rational 132341763 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 21573480 1) .v) (.rational 141691992 1)) .v) (.rational 462155046 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 45966138 1) .v) (.rational 242012172 1)) .v)
    (.rational 662441946 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 54423672
    1) .v) (.rational 227359884 1)) .v) (.rational 507093702 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 39086148 1) .v) (.rational 130199940 1)) .v) (.rational 228117702
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 17384208 1) .v) (.rational
    47625984 1)) .v) (.rational 63740130 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4652718 1) .v) (.rational 11147088 1)) .v) (.rational 11608551 1)) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 6202440 1) .v) (.rational 43704876 1)) .v) (.rational 119496342
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 34113420 1) .v) (.rational 205654926 1)) .v)
    (.rational 490846995 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 81286848 1) .v)
    (.rational 416647770 1)) .v) (.rational 855487305 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 109940166 1) .v) (.rational 479060808 1)) .v) (.rational 833307696 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 92792280 1) .v) (.rational
    347184924 1)) .v) (.rational 505931142 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 50512812 1) .v) (.rational 166110996 1)) .v) (.rational 203281662 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 17639196 1) .v) (.rational 52849692 1)) .v)
    (.rational 55678641 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3775914 1)
    .v) (.rational 10734258 1)) .v) (.rational 10143261 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 6082380 1) .v) (.rational 37855296 1)) .v) (.rational 78297726 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 36494280 1) .v) (.rational 201307284 1)) .v)
    (.rational 371845248 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 96106908 1) .v)
    (.rational 468919752 1)) .v) (.rational 766495620 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 146003640 1) .v) (.rational 631709400 1)) .v) (.rational 907163244 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 141340302 1) .v) (.rational
    547145952 1)) .v) (.rational 688831608 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 90776448 1) .v) (.rational 319586412 1)) .v) (.rational 355180458 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 38957796 1) .v) (.rational 127583256 1)) .v)
    (.rational 127358463 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 10934028
    1) .v) (.rational 34129944 1)) .v) (.rational 31293624 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1891614 1) .v) (.rational 5733876 1)) .v) (.rational 4905813 1)) (.pow
    .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3866184 1) .v) (.rational
    21328992 1)) .v) (.rational 34954122 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 25130196
    1) .v) (.rational 126118620 1)) .v) (.rational 188689314 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 72441072 1) .v) (.rational 330521076 1)) .v) (.rational 448870554 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 121993740 1) .v) (.rational 507330396 1))
    .v) (.rational 623156472 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    133001892 1) .v) (.rational 507481260 1)) .v) (.rational 563920029 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 98203698 1) .v) (.rational 347579736 1)) .v) (.rational
    351376866 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 49836000 1) .v)
    (.rational 165975948 1)) .v) (.rational 154290318 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17233944 1) .v) (.rational 54817902 1)) .v) (.rational 47448387 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3923592 1) .v) (.rational 12050610
    1)) .v) (.rational 9792612 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    545616 1) .v) (.rational 1620006 1)) .v) (.rational 1232727 1)) (.pow .g 9)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1430784 1) .v) (.rational 7015572 1)) .v)
    (.rational 9462636 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 10015488 1) .v) (.rational
    45561096 1)) .v) (.rational 57182544 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    31349124 1) .v) (.rational 132258492 1)) .v) (.rational 153863718 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 57893400 1) .v) (.rational 226923156 1)) .v) (.rational
    244156440 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 70056972 1) .v)
    (.rational 256246272 1)) .v) (.rational 255070893 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 58297824 1) .v) (.rational 200383560 1)) .v) (.rational 185171886 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 34017378 1) .v) (.rational
    110859600 1)) .v) (.rational 95691144 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13905744 1) .v) (.rational 43350600 1)) .v) (.rational 35194218 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3898662 1) .v) (.rational 11695068 1)) .v)
    (.rational 8967069 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 713778 1)
    .v) (.rational 2057832 1)) .v) (.rational 1485858 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 77166 1) .v) (.rational 210864 1)) .v) (.rational 141258 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 233280 1)
    .v) (.rational 1020816 1)) .v) (.rational 1167912 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1749600 1) .v) (.rational 7211916 1)) .v) (.rational 7799004 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5905656 1) .v) (.rational 22921560 1)) .v) (.rational
    23361918 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 11851164 1) .v)
    (.rational 43356168 1)) .v) (.rational 41574354 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 15726888 1) .v) (.rational 54379800 1)) .v) (.rational 49051440 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 14513400 1) .v) (.rational 47642850 1)) .v)
    (.rational 40494009 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9525384 1)
    .v) (.rational 29853630 1)) .v) (.rational 23988081 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4461534 1) .v) (.rational 13426128 1)) .v) (.rational 10237110 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1470276 1) .v) (.rational 4264248
    1)) .v) (.rational 3091986 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    328626 1) .v) (.rational 917622 1)) .v) (.rational 631419 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 46242 1) .v) (.rational 123030 1)) .v) (.rational 79557 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 3492 1) .v) (.rational 8580 1)) .v)
    (.rational 5088 1)) (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1227

namespace FullLow1228
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  39*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow4.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    36*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsLow4.c410 e f g v*e*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_2 e g v+36*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^1+90*SmallGap.ReducedLayers.low0_100_4 e g v*e^2+12*SmallGap.ReducedLayers.low0_010_4 e g
    v+48*SmallGap.ReducedLayers.low0_010_5 e g v*e^1+72*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^2+12*SmallGap.ReducedLayers.low0_001_3 e g v+60*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^1+120*SmallGap.ReducedLayers.low0_001_5 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_4 e g v+12*SmallGap.ReducedLayers.low1_110_5 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_110_6 e g v*e^2+3*SmallGap.ReducedLayers.low1_101_3 e g
    v+15*SmallGap.ReducedLayers.low1_101_4 e g v*e^1+30*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^2+3*SmallGap.ReducedLayers.low1_020_6 e g v+6*SmallGap.ReducedLayers.low1_020_7 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_8 e g v*e^2+6*SmallGap.ReducedLayers.low1_011_5 e g
    v+18*SmallGap.ReducedLayers.low1_011_6 e g v*e^1+18*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^2+3*SmallGap.ReducedLayers.low1_002_4 e g v+12*SmallGap.ReducedLayers.low1_002_5 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_002_6 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1560 1) .v) (.rational 159480 1)) .e) (.add
    (.mul (.add (.mul (.add (.mul (.rational 180 1) .v) (.rational 20976 1)) .v) (.rational
    1038903 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 450 1) .v) (.rational 28032 1)) .v)
    (.rational 1152840 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2790 1) .v) (.rational 138348 1)) .v) (.rational 4122735 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8370 1) .v) (.rational 236736 1)) .v) (.rational 6152493 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9090 1) .v) (.rational 95736 1)) .v) (.rational 2892693 1)) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20160 1)
    .v) (.rational 593736 1)) .v) (.rational 11154588 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 70560 1) .v) (.rational 1286844 1)) .v) (.rational 21099942 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 95760 1) .v) (.rational 850380 1)) .v) (.rational 13618479
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 63000 1) .v) (.rational 114240
    1)) .v) (.rational 3225276 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 87930 1) .v) (.rational 1841916 1)) .v) (.rational
    21863076 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 351720 1) .v) (.rational 5022876 1))
    .v) (.rational 51031500 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 569880 1) .v)
    (.rational 4932396 1)) .v) (.rational 43556307 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 478620 1) .v) (.rational 2035548 1)) .v) (.rational 15994545 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 219870 1) .v) (.rational 263652 1)) .v)
    (.rational 1972653 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 253440 1) .v) (.rational 4214688 1)) .v)
    (.rational 31929801 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1140480 1) .v) (.rational
    14154600 1)) .v) (.rational 90724542 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2142360 1) .v) (.rational 18862248 1)) .v) (.rational 100439640 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2176020 1) .v) (.rational 12849660 1)) .v) (.rational
    54593190 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1289700 1) .v)
    (.rational 4880532 1)) .v) (.rational 15108246 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 445320 1) .v) (.rational 1096104 1)) .v) (.rational 2044302 1)) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 496800 1) .v) (.rational 6916512 1)) .v) (.rational 34687905 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2484000 1) .v) (.rational 27724560 1)) .v) (.rational
    118455447 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5300550 1) .v) (.rational
    46501500 1)) .v) (.rational 165942756 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6298200 1) .v) (.rational 42918852 1)) .v) (.rational 124516980 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4551480 1) .v) (.rational 24257364 1)) .v)
    (.rational 55585818 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2043540 1)
    .v) (.rational 8852436 1)) .v) (.rational 15885330 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 554130 1) .v) (.rational 2097444 1)) .v) (.rational 3084621 1)) (.pow
    .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 655560 1) .v) (.rational 7760880 1)) .v) (.rational
    27177876 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3605580 1) .v) (.rational 36046800
    1)) .v) (.rational 109706256 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8609940 1)
    .v) (.rational 72202440 1)) .v) (.rational 188411544 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11702880 1) .v) (.rational 82407552 1)) .v) (.rational 182146500 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9961920 1) .v) (.rational 59709768
    1)) .v) (.rational 111329916 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5492340 1) .v) (.rational 28848900 1)) .v) (.rational 45996954 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1951740 1) .v) (.rational 9362556 1)) .v) (.rational
    13202877 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 427320 1) .v)
    (.rational 1950432 1)) .v) (.rational 2522904 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 555660 1) .v) (.rational 5581512 1)) .v) (.rational 14415588 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3333960 1) .v) (.rational 29350728 1)) .v) (.rational
    67495104 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8806320 1) .v) (.rational
    67812216 1)) .v) (.rational 137689722 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13470300 1) .v) (.rational 91081920 1)) .v) (.rational 162479880 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 13191930 1) .v) (.rational 79254588 1)) .v)
    (.rational 124487496 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8619480 1)
    .v) (.rational 46944732 1)) .v) (.rational 65737896 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3787560 1) .v) (.rational 19181388 1)) .v) (.rational 24439539 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1096200 1) .v) (.rational 5285268
    1)) .v) (.rational 6242715 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    197010 1) .v) (.rational 915492 1)) .v) (.rational 1007403 1)) (.pow .g 8)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 272160 1) .v) (.rational 2301696 1)) .v) (.rational
    4598316 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1769040 1) .v) (.rational 13471920
    1)) .v) (.rational 24519672 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5120280 1)
    .v) (.rational 35077104 1)) .v) (.rational 57840624 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8702100 1) .v) (.rational 53794080 1)) .v) (.rational 80159904 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9634140 1) .v) (.rational 54175320
    1)) .v) (.rational 73121235 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7277040 1) .v) (.rational 37698984 1)) .v) (.rational 46456758 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3810600 1) .v) (.rational 18460200 1)) .v) (.rational
    21009420 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1373400 1) .v)
    (.rational 6300180 1)) .v) (.rational 6685146 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 329580 1) .v) (.rational 1437492 1)) .v) (.rational 1423527 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 48870 1) .v) (.rational 200376 1)) .v) (.rational
    182838 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    58320 1) .v) (.rational 412128 1)) .v) (.rational 662040 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 408240 1) .v) (.rational 2651616 1)) .v) (.rational 3956796 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1284660 1) .v) (.rational 7655400 1)) .v) (.rational
    10567260 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2400840 1) .v)
    (.rational 13137336 1)) .v) (.rational 16739316 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2963520 1) .v) (.rational 14949144 1)) .v) (.rational 17597997 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2539620 1) .v) (.rational 11885328 1)) .v)
    (.rational 12978693 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1543590 1)
    .v) (.rational 6748380 1)) .v) (.rational 6875136 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 666360 1) .v) (.rational 2732292 1)) .v) (.rational 2607588 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 200610 1) .v) (.rational 768888 1)) .v)
    (.rational 686049 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 40230 1) .v)
    (.rational 141948 1)) .v) (.rational 116949 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4860 1) .v) (.rational 15300 1)) .v) (.rational 11310 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1228

namespace FullLow1229
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  36*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_3 e g v+36*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^1+12*SmallGap.ReducedLayers.low0_010_5 e g v+48*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^1+12*SmallGap.ReducedLayers.low0_001_4 e g v+60*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_5 e g v+12*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_101_4 e g v+15*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_7 e g v+6*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^1+6*SmallGap.ReducedLayers.low1_011_6 e g v+18*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_002_5 e g v+12*SmallGap.ReducedLayers.low1_002_6 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 180 1) .v) (.rational 35700 1)) .e) (.add (.mul (.add (.mul
    (.rational 2340 1) .v) (.rational 225234 1)) .f) (.mul (.add (.mul (.rational 3060 1) .v)
    (.rational 243576 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 14940 1) .v)
    (.rational 858312 1)) .f) (.mul (.add (.mul (.rational 24660 1) .v) (.rational 1240356 1))
    .g)) .f) (.mul (.add (.mul (.rational 8640 1) .v) (.rational 552372 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 62100 1) .v) (.rational 2208828 1))
    .f) (.mul (.add (.mul (.rational 129420 1) .v) (.rational 4033968 1)) .g)) .f) (.mul (.add
    (.mul (.rational 76860 1) .v) (.rational 2460696 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.rational 2160 1) .v) (.rational 507468 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 186840 1) .v) (.rational 4070952 1)) .f) (.mul (.add
    (.mul (.rational 493920 1) .v) (.rational 9195384 1)) .g)) .f) (.mul (.add (.mul (.rational
    457380 1) .v) (.rational 7499064 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 162180 1)
    .v) (.rational 2543604 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 5400 1) .v)
    (.rational 237492 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 409680 1) .v) (.rational 5482956 1)) .f) (.mul (.add (.mul
    (.rational 1346760 1) .v) (.rational 15168168 1)) .g)) .f) (.mul (.add (.mul (.rational
    1743660 1) .v) (.rational 16317396 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 1141380
    1) .v) (.rational 8631168 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 410580 1) .v)
    (.rational 2368440 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 86760 1) .v) (.rational
    348948 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 621000 1) .v) (.rational 5293872 1)) .f) (.mul (.add (.mul
    (.rational 2449440 1) .v) (.rational 17707248 1)) .g)) .f) (.mul (.add (.mul (.rational
    4043520 1) .v) (.rational 24413616 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 3684240
    1) .v) (.rational 18269280 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 2071980 1) .v)
    (.rational 8375592 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 762300 1) .v) (.rational
    2573436 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational 184320 1) .v) (.rational 552012 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 601560 1) .v) (.rational 3447288 1)) .f) (.mul (.add (.mul
    (.rational 2752920 1) .v) (.rational 13678992 1)) .g)) .f) (.mul (.add (.mul (.rational
    5452200 1) .v) (.rational 23261040 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 6194880
    1) .v) (.rational 22583664 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 4515300 1) .v)
    (.rational 14175324 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 2221740 1) .v)
    (.rational 6161856 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational 741420 1) .v) (.rational
    1878744 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational 159120 1) .v) (.rational 375348 1))
    (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 330480 1) .v) (.rational 1341360 1)) .f) (.mul
    (.add (.mul (.rational 1710720 1) .v) (.rational 6181920 1)) .g)) .f) (.mul (.add (.mul
    (.rational 3912840 1) .v) (.rational 12506688 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.rational 5248800 1) .v) (.rational 14822352 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.rational 4614840 1) .v) (.rational 11602872 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.rational 2797200 1) .v) (.rational 6365256 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 1181700 1) .v) (.rational 2477352 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.rational 338220 1) .v) (.rational 658284 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational
    60660 1) .v) (.rational 108504 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    77760 1) .v) (.rational 233280 1)) .f) (.mul (.add (.mul (.rational 447120 1) .v) (.rational
    1224720 1)) .g)) .f) (.mul (.add (.mul (.rational 1152360 1) .v) (.rational 2864232 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.rational 1767960 1) .v) (.rational 3979008 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.rational 1804680 1) .v) (.rational 3690564 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.rational 1290600 1) .v) (.rational 2417688 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.rational 657180 1) .v) (.rational 1137012 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.rational 234900 1) .v) (.rational 376128 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational
    56160 1) .v) (.rational 82566 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 8100 1) .v)
    (.rational 10740 1)) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1229

namespace FullLow12210
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  30*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_100_4 e g v+12*SmallGap.ReducedLayers.low0_010_6 e g
    v+12*SmallGap.ReducedLayers.low0_001_5 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_6 e g v+3*SmallGap.ReducedLayers.low1_101_5 e g
    v+3*SmallGap.ReducedLayers.low1_020_8 e g v+6*SmallGap.ReducedLayers.low1_011_7 e g
    v+3*SmallGap.ReducedLayers.low1_002_6 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 3600 1) .e) (.add (.mul (.rational 22050 1) .f) (.mul (.rational 23220 1) .g))) .e)
    (.add (.mul (.add (.mul (.rational 80820 1) .f) (.mul (.rational 112950 1) .g)) .f) (.mul
    (.rational 47520 1) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 198000
    1) .f) (.mul (.rational 348840 1) .g)) .f) (.mul (.rational 201150 1) (.pow .g 2))) .f) (.mul
    (.rational 35820 1) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 342720 1) .f) (.mul (.rational 749880 1) .g)) .f) (.mul (.rational 588420 1) (.pow
    .g 2))) .f) (.mul (.rational 189450 1) (.pow .g 3))) .f) (.mul (.rational 15840 1) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 421740 1) .f)
    (.mul (.rational 1138320 1) .g)) .f) (.mul (.rational 1202760 1) (.pow .g 2))) .f) (.mul
    (.rational 639360 1) (.pow .g 3))) .f) (.mul (.rational 189450 1) (.pow .g 4))) .f) (.mul
    (.rational 35820 1) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 351000 1) .f) (.mul (.rational 1150740 1) .g)) .f) (.mul
    (.rational 1575360 1) (.pow .g 2))) .f) (.mul (.rational 1202760 1) (.pow .g 3))) .f) (.mul
    (.rational 588420 1) (.pow .g 4))) .f) (.mul (.rational 201150 1) (.pow .g 5))) .f) (.mul
    (.rational 47520 1) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 174960 1) .f) (.mul (.rational 680400 1) .g)) .f)
    (.mul (.rational 1150740 1) (.pow .g 2))) .f) (.mul (.rational 1138320 1) (.pow .g 3))) .f)
    (.mul (.rational 749880 1) (.pow .g 4))) .f) (.mul (.rational 348840 1) (.pow .g 5))) .f)
    (.mul (.rational 112950 1) (.pow .g 6))) .f) (.mul (.rational 23220 1) (.pow .g 7)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 38880 1) .f) (.mul (.rational 174960 1) .g)) .f) (.mul (.rational 351000 1)
    (.pow .g 2))) .f) (.mul (.rational 421740 1) (.pow .g 3))) .f) (.mul (.rational 342720 1)
    (.pow .g 4))) .f) (.mul (.rational 198000 1) (.pow .g 5))) .f) (.mul (.rational 80820 1) (.pow
    .g 6))) .f) (.mul (.rational 22050 1) (.pow .g 7))) .f) (.mul (.rational 3600 1) (.pow .g
    8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow12210

end
end SPR.N6.Tail.CoreEndpoint
