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

namespace FullLow0320
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    3*SmallGap.PolarCoefficientsLow0.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow0.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    10*SmallGap.PolarCoefficientsLow0.c050 e f g v*e^3*((e+f)*(e+f+g))^5

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_010_0 e g v*e^6+4*SmallGap.ReducedLayers.low0_001_0 e
    g v*e^7)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_0 e g v*e^4+3*SmallGap.ReducedLayers.low1_011_0 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_002_0 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 40 1) .v)
    (.rational 1200 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 40 1) .v) (.rational
    904 1)) .v) (.rational 11348 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 100 1) .v)
    (.rational 1448 1)) .v) (.rational 15284 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 812 1) .v) (.rational 9404 1)) .v) (.rational 67528 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2436 1) .v) (.rational 20568 1)) .v) (.rational 125874 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2636 1) .v) (.rational 15060 1)) .v) (.rational
    82260 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 7644 1) .v) (.rational 60308 1)) .v) (.rational 283832 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 26754 1) .v) (.rational 166586 1)) .v) (.rational 677919 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 36158 1) .v) (.rational 172198 1)) .v) (.rational
    610648 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 23510 1) .v) (.rational
    82958 1)) .v) (.rational 256411 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 44492 1) .v) (.rational 268600 1)) .v)
    (.rational 896500 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 177968 1) .v) (.rational
    894534 1)) .v) (.rational 2618128 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 287008
    1) .v) (.rational 1182148 1)) .v) (.rational 3019109 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 238136 1) .v) (.rational 791992 1)) .v) (.rational 1744634 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 106900 1) .v) (.rational 283764 1)) .v)
    (.rational 527289 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 179866 1) .v) (.rational 885640 1)) .v) (.rational
    2209828 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 809397 1) .v) (.rational 3448114 1))
    .v) (.rational 7646169 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1512176 1) .v)
    (.rational 5521578 1)) .v) (.rational 10782546 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1515430 1) .v) (.rational 4703288 1)) .v) (.rational 7976081 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 876494 1) .v) (.rational 2298344 1)) .v)
    (.rational 3314724 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 291253 1)
    .v) (.rational 644502 1)) .v) (.rational 766776 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 537266 1)
    .v) (.rational 2247126 1)) .v) (.rational 4356840 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2686330 1) .v) (.rational 10005096 1)) .v) (.rational 17460708 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5694583 1) .v) (.rational 18768302 1)) .v) (.rational
    29187875 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6660352 1) .v)
    (.rational 19317086 1)) .v) (.rational 26413192 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4680476 1) .v) (.rational 11897966 1)) .v) (.rational 14049719 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2012782 1) .v) (.rational 4479584 1)) .v)
    (.rational 4462146 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 513667 1)
    .v) (.rational 1004558 1)) .v) (.rational 819672 1)) (.pow .g 6)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1230534 1) .v) (.rational 4497462 1)) .v) (.rational 6984228 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 6767937 1) .v) (.rational 22524093 1)) .v) (.rational 31869821
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16029357 1) .v) (.rational 48351747 1))
    .v) (.rational 61740846 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    21372579 1) .v) (.rational 58188948 1)) .v) (.rational 66258399 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 17594820 1) .v) (.rational 43098678 1)) .v) (.rational
    43116186 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 9218727 1) .v)
    (.rational 20287197 1)) .v) (.rational 17508660 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3050021 1) .v) (.rational 6038551 1)) .v) (.rational 4400662 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 607901 1) .v) (.rational 1088706 1)) .v)
    (.rational 654846 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2211948 1) .v)
    (.rational 7214740 1)) .v) (.rational 9201712 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    13271688 1) .v) (.rational 40122262 1)) .v) (.rational 47169928 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 34702176 1) .v) (.rational 96879948 1)) .v) (.rational 104098533 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 51853740 1) .v) (.rational
    133227636 1)) .v) (.rational 129510612 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 48781539 1) .v) (.rational 115022622 1)) .v) (.rational 99934449 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 29992284 1) .v) (.rational 64787568 1)) .v)
    (.rational 49597344 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 12100954 1)
    .v) (.rational 23946356 1)) .v) (.rational 15895334 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3127008 1) .v) (.rational 5682560 1)) .v) (.rational 3216690 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 487055 1) .v) (.rational 817398 1)) .v)
    (.rational 388986 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3166178 1) .v) (.rational 9368268 1)) .v) (.rational 10028044 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 20580157 1) .v) (.rational 57255096 1)) .v) (.rational 57124093 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 58845278 1) .v) (.rational 153460516 1)) .v)
    (.rational 141671706 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 97267302
    1) .v) (.rational 237086539 1)) .v) (.rational 200811523 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 102702165 1) .v) (.rational 233375403 1)) .v) (.rational
    179584758 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 72227568 1) .v)
    (.rational 152709516 1)) .v) (.rational 105575982 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 34208764 1) .v) (.rational 67233208 1)) .v) (.rational 41251756 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 10776350 1) .v) (.rational 19699423
    1)) .v) (.rational 10592952 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2173551 1) .v) (.rational 3705267 1)) .v) (.rational 1726914 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 260075 1) .v) (.rational 415514 1)) .v) (.rational 166764 1))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3638646 1)
    .v) (.rational 9896458 1)) .v) (.rational 9065160 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25470522 1) .v) (.rational 65907424 1)) .v) (.rational 56865224 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 79022331 1) .v) (.rational 194035974 1)) .v) (.rational
    156739979 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 143017200 1) .v)
    (.rational 332393856 1)) .v) (.rational 249649202 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 167196183 1) .v) (.rational 366935388 1)) .v) (.rational 254237103 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 132037356 1) .v) (.rational
    273068592 1)) .v) (.rational 173017344 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 71530618 1) .v) (.rational 139201916 1)) .v) (.rational 79893506 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 26434780 1) .v) (.rational 48379818 1)) .v)
    (.rational 24909258 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6490625 1)
    .v) (.rational 11179298 1)) .v) (.rational 5117746 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1003234 1) .v) (.rational 1629904 1)) .v) (.rational 659284 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 88253 1) .v) (.rational 135782 1)) .v)
    (.rational 48476 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 3367782 1) .v) (.rational 8513050 1)) .v) (.rational 6793436 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 25258365 1) .v) (.rational 61341243 1)) .v)
    (.rational 46566039 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 84478391 1) .v)
    (.rational 196671717 1)) .v) (.rational 141330846 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 166024339 1) .v) (.rational 369699767 1)) .v) (.rational 250100763 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 212621357 1) .v) (.rational
    451874227 1)) .v) (.rational 285994248 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 185937180 1) .v) (.rational 376381092 1)) .v) (.rational 221340708 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 113080424 1) .v) (.rational 217644448 1))
    .v) (.rational 118048840 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    47761554 1) .v) (.rational 87297457 1)) .v) (.rational 43339110 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 13736707 1) .v) (.rational 23831751 1)) .v) (.rational
    10750770 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2578361 1) .v)
    (.rational 4248041 1)) .v) (.rational 1731109 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 291877 1) .v) (.rational 457455 1)) .v) (.rational 167898 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 17097 1) .v) (.rational 25560 1)) .v) (.rational
    8463 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 2506632 1) .v) (.rational 5944952 1)) .v) (.rational 4203272 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 20053056 1) .v) (.rational 46068722 1)) .v)
    (.rational 31271520 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 71905136 1) .v)
    (.rational 159712444 1)) .v) (.rational 103679647 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 152407472 1) .v) (.rational 326659640 1)) .v) (.rational 201914242 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 211991590 1) .v) (.rational
    437585688 1)) .v) (.rational 256295423 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 203066452 1) .v) (.rational 402898514 1)) .v) (.rational 222410424 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 136694906 1) .v) (.rational 260213996 1))
    .v) (.rational 134604428 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    64754296 1) .v) (.rational 118080404 1)) .v) (.rational 56891238 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 21252387 1) .v) (.rational 37079046 1)) .v) (.rational
    16539732 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 4661400 1) .v)
    (.rational 7776432 1)) .v) (.rational 3194308 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 638460 1) .v) (.rational 1018588 1)) .v) (.rational 383797 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 47860 1) .v) (.rational 73088 1)) .v) (.rational
    25228 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 1425 1) .v) (.rational
    2086 1)) .v) (.rational 661 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1490894 1) .v) (.rational 3345616 1)) .v)
    (.rational 2130028 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 12672599 1) .v) (.rational
    27737466 1)) .v) (.rational 17097499 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    48487828 1) .v) (.rational 103352602 1)) .v) (.rational 61494182 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 110206730 1) .v) (.rational 228382078 1)) .v) (.rational
    130724831 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 165327472 1) .v)
    (.rational 332514246 1)) .v) (.rational 182415552 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 171964169 1) .v) (.rational 335074178 1)) .v) (.rational 175449148 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 126727204 1) .v) (.rational
    238801166 1)) .v) (.rational 118808704 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 66382778 1) .v) (.rational 120764559 1)) .v) (.rational 56815494 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 24397945 1) .v) (.rational 42783583 1)) .v)
    (.rational 18939746 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 6092482 1)
    .v) (.rational 10284926 1)) .v) (.rational 4263717 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 971790 1) .v) (.rational 1577922 1)) .v) (.rational 610030 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 87690 1) .v) (.rational 136905 1)) .v)
    (.rational 49215 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 3315 1) .v)
    (.rational 4977 1)) .v) (.rational 1662 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 700270 1) .v)
    (.rational 1498426 1)) .v) (.rational 872728 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    6302430 1) .v) (.rational 13231000 1)) .v) (.rational 7517532 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25626077 1) .v) (.rational 52713258 1)) .v) (.rational 29151105 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 62153536 1) .v) (.rational
    125098742 1)) .v) (.rational 67164164 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 99972290 1) .v) (.rational 196594454 1)) .v) (.rational 102182109 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 112111930 1) .v) (.rational 215062848 1)) .v)
    (.rational 107875146 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 89658401
    1) .v) (.rational 167499466 1)) .v) (.rational 80800972 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 51365164 1) .v) (.rational 93297328 1)) .v) (.rational 43120458
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 20844671 1) .v) (.rational
    36748992 1)) .v) (.rational 16208004 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5816420 1) .v) (.rational 9937104 1)) .v) (.rational 4165074 1)) (.pow .g 9))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1052930 1) .v) (.rational 1740732 1)) .v) (.rational
    690603 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 110136 1) .v)
    (.rational 175986 1)) .v) (.rational 65850 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4977 1) .v) (.rational 7680 1)) .v) (.rational 2703 1)) (.pow .g 12))) (.pow
    .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 254834 1) .v) (.rational 523866 1)) .v) (.rational 283536 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2420923 1) .v) (.rational 4906971 1)) .v) (.rational 2608107 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10423219 1) .v) (.rational 20809349 1)) .v)
    (.rational 10843706 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 26863825 1)
    .v) (.rational 52766978 1)) .v) (.rational 26908201 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 46100294 1) .v) (.rational 88982804 1)) .v) (.rational 44312834 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 55409851 1) .v) (.rational
    104959721 1)) .v) (.rational 50925636 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 47745845 1) .v) (.rational 88630815 1)) .v) (.rational 41788894 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 29656003 1) .v) (.rational 53865763 1)) .v)
    (.rational 24609376 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 13144265 1)
    .v) (.rational 23323243 1)) .v) (.rational 10292406 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4041774 1) .v) (.rational 6994464 1)) .v) (.rational 2971289 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 815292 1) .v) (.rational 1373720 1)) .v)
    (.rational 559760 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 96392 1) .v)
    (.rational 157879 1)) .v) (.rational 61487 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5019 1) .v) (.rational 7979 1)) .v) (.rational 2960 1)) (.pow .g 12))) (.pow
    .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 69756 1) .v) (.rational 138828 1)) .v) (.rational 70944 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 697560 1) .v) (.rational 1374570 1)) .v) (.rational 693740 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3170088 1) .v) (.rational 6180324 1)) .v)
    (.rational 3077079 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8650332 1)
    .v) (.rational 16670796 1)) .v) (.rational 8177568 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 15770631 1) .v) (.rational 30015486 1)) .v) (.rational 14485179 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 20215608 1) .v) (.rational 37957788
    1)) .v) (.rational 17991912 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    18659172 1) .v) (.rational 34524000 1)) .v) (.rational 16043118 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12476976 1) .v) (.rational 22719456 1)) .v) (.rational
    10328688 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5988342 1) .v)
    (.rational 10716336 1)) .v) (.rational 4754958 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2007696 1) .v) (.rational 3525546 1)) .v) (.rational 1522764 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 445212 1) .v) (.rational 765900 1)) .v)
    (.rational 321083 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 58452 1) .v)
    (.rational 98340 1)) .v) (.rational 39888 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3423 1) .v) (.rational 5622 1)) .v) (.rational 2199 1)) (.pow .g 12))) (.pow .f
    4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 13710 1) .v) (.rational 26644 1)) .v) (.rational 13072 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 143955 1) .v) (.rational 277972 1)) .v) (.rational 135323 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 688590 1) .v) (.rational 1320432 1)) .v) (.rational
    637386 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1983030 1) .v)
    (.rational 3774039 1)) .v) (.rational 1804905 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3826845 1) .v) (.rational 7223511 1)) .v) (.rational 3419430 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5209650 1) .v) (.rational 9745812 1)) .v)
    (.rational 4561614 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5125680 1)
    .v) (.rational 9494940 1)) .v) (.rational 4388916 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3668760 1) .v) (.rational 6723138 1)) .v) (.rational 3064722 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1893780 1) .v) (.rational 3429414 1)) .v)
    (.rational 1539180 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 686595 1)
    .v) (.rational 1227136 1)) .v) (.rational 541255 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 165690 1) .v) (.rational 291868 1)) .v) (.rational 126242 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 23850 1) .v) (.rational 41343 1)) .v) (.rational
    17493 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 1545 1) .v) (.rational
    2631 1)) .v) (.rational 1086 1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1790 1) .v) (.rational
    3434 1)) .v) (.rational 1648 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 19690 1) .v)
    (.rational 37640 1)) .v) (.rational 17990 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 98885 1) .v) (.rational 188302 1)) .v) (.rational 89597 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 299700 1) .v) (.rational 568300 1)) .v) (.rational 269080
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 610275 1) .v) (.rational
    1151880 1)) .v) (.rational 542445 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 879180 1) .v) (.rational 1651008 1)) .v) (.rational 772836 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 918330 1) .v) (.rational 1714860 1)) .v) (.rational
    797370 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 700320 1) .v) (.rational
    1299624 1)) .v) (.rational 599784 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 386700 1) .v) (.rational 712650 1)) .v) (.rational 326130 1)) (.pow .g 8))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 150650 1) .v) (.rational 275480 1)) .v) (.rational
    124870 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 39265 1) .v) (.rational
    71174 1)) .v) (.rational 31913 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6140 1) .v) (.rational 11020 1)) .v) (.rational 4880 1)) (.pow .g 11))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 435 1) .v) (.rational 772 1)) .v) (.rational 337 1)) (.pow .g 12)))
    (.pow .f 6))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 134 1) .v) (.rational 258 1)) .v) (.rational 124 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1541 1) .v) (.rational 2963 1)) .v) (.rational 1422 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8107 1) .v) (.rational 15565 1)) .v) (.rational 7458
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 25795 1) .v) (.rational 49445
    1)) .v) (.rational 23650 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 55275
    1) .v) (.rational 105765 1)) .v) (.rational 50490 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 84018 1) .v) (.rational 160446 1)) .v) (.rational 76428 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 92862 1) .v) (.rational 176946 1)) .v)
    (.rational 84084 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 75174 1) .v)
    (.rational 142890 1)) .v) (.rational 67716 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 44220 1) .v) (.rational 83820 1)) .v) (.rational 39600 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 18425 1) .v) (.rational 34815 1)) .v) (.rational 16390 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 5159 1) .v) (.rational 9713 1)) .v)
    (.rational 4554 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 871 1) .v)
    (.rational 1633 1)) .v) (.rational 762 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 67 1) .v) (.rational 125 1)) .v) (.rational 58 1)) (.pow .g 12))) (.pow .f 7))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    4 1) .v) (.rational 8 1)) .v) (.rational 4 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 48
    1) .v) (.rational 96 1)) .v) (.rational 48 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 264 1) .v) (.rational 528 1)) .v) (.rational 264 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 880 1) .v) (.rational 1760 1)) .v) (.rational 880 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1980 1) .v) (.rational 3960 1)) .v)
    (.rational 1980 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3168 1) .v)
    (.rational 6336 1)) .v) (.rational 3168 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3696 1) .v) (.rational 7392 1)) .v) (.rational 3696 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3168 1) .v) (.rational 6336 1)) .v) (.rational 3168 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1980 1) .v) (.rational 3960 1)) .v)
    (.rational 1980 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 880 1) .v)
    (.rational 1760 1)) .v) (.rational 880 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 264 1) .v) (.rational 528 1)) .v) (.rational 264 1)) (.pow .g 10))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 48 1) .v) (.rational 96 1)) .v) (.rational 48 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4 1) .v) (.rational 8 1)) .v) (.rational 4 1))
    (.pow .g 12))) (.pow .f 8)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0320

namespace FullLow0321
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow1.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    6*SmallGap.PolarCoefficientsLow0.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow1.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    24*SmallGap.PolarCoefficientsLow0.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    6*SmallGap.PolarCoefficientsLow1.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    60*SmallGap.PolarCoefficientsLow0.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsLow1.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow0.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    2*SmallGap.PolarCoefficientsLow0.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow0.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    4*SmallGap.PolarCoefficientsLow0.c140 e f g v*e^3*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(36*SmallGap.ReducedLayers.low0_010_0 e g v*e^5+6*SmallGap.ReducedLayers.low0_010_1
    e g v*e^6+28*SmallGap.ReducedLayers.low0_001_0 e g v*e^6+4*SmallGap.ReducedLayers.low0_001_1 e
    g v*e^7)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(12*SmallGap.ReducedLayers.low1_020_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^4+15*SmallGap.ReducedLayers.low1_011_0 e g v*e^4+3*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^5+6*SmallGap.ReducedLayers.low1_002_0 e g v*e^5+1*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 460 1) .v) (.rational 14360
    1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 420 1) .v) (.rational 9692 1)) .v)
    (.rational 130189 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1050 1) .v) (.rational
    15284 1)) .v) (.rational 172956 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 8134 1) .v) (.rational 95636 1)) .v) (.rational 743471 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 24402 1) .v) (.rational 205684 1)) .v) (.rational 1365470 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 26412 1) .v) (.rational 146364 1)) .v) (.rational
    875413 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 73580 1) .v) (.rational 588022 1)) .v) (.rational 3001147 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 257530 1) .v) (.rational 1600317 1)) .v) (.rational 7061752 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 348150 1) .v) (.rational 1620699 1)) .v)
    (.rational 6243868 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 226550 1)
    .v) (.rational 759303 1)) .v) (.rational 2559908 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 413268 1) .v) (.rational
    2527262 1)) .v) (.rational 9108458 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1653072 1)
    .v) (.rational 8313722 1)) .v) (.rational 26219713 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2666724 1) .v) (.rational 10823308 1)) .v) (.rational 29716867 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2214420 1) .v) (.rational 7124396 1)) .v)
    (.rational 16812823 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 995616 1)
    .v) (.rational 2503790 1)) .v) (.rational 4949663 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1615460 1) .v)
    (.rational 8069920 1)) .v) (.rational 21579648 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7269570 1) .v) (.rational 31109689 1)) .v) (.rational 73676115 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 13586248 1) .v) (.rational 49269016 1)) .v) (.rational
    102297403 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 13627208 1) .v)
    (.rational 41475030 1)) .v) (.rational 74311187 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7894296 1) .v) (.rational 20035948 1)) .v) (.rational 30235599 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2630050 1) .v) (.rational 5567905 1)) .v)
    (.rational 6827534 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4667685 1) .v) (.rational 19855746
    1)) .v) (.rational 40892100 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 23338425 1) .v)
    (.rational 87717386 1)) .v) (.rational 161937025 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 49492741 1) .v) (.rational 163208596 1)) .v) (.rational 267093307 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 57940414 1) .v) (.rational 166633530 1)) .v)
    (.rational 238104159 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 40785635
    1) .v) (.rational 101910354 1)) .v) (.rational 124581413 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 17586841 1) .v) (.rational 38190526 1)) .v) (.rational 38889160
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4506343 1) .v) (.rational
    8563304 1)) .v) (.rational 7031188 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10330810 1)
    .v) (.rational 38517822 1)) .v) (.rational 62974312 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 56819455 1) .v) (.rational 191732048 1)) .v) (.rational 284427703 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 134629357 1) .v) (.rational 409121110 1)) .v)
    (.rational 544919301 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 179686194
    1) .v) (.rational 489658571 1)) .v) (.rational 577880197 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 148189124 1) .v) (.rational 361113402 1)) .v) (.rational
    371458921 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 77862547 1) .v)
    (.rational 169623212 1)) .v) (.rational 149088710 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25869077 1) .v) (.rational 50565228 1)) .v) (.rational 37134564 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5186836 1) .v) (.rational 9179257
    1)) .v) (.rational 5513062 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    17904025 1) .v) (.rational 59763380 1)) .v) (.rational 79614863 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 107424150 1) .v) (.rational 330794000 1)) .v) (.rational 404692200 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 281013348 1) .v) (.rational 795250330 1))
    .v) (.rational 885264795 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    420345365 1) .v) (.rational 1089576906 1)) .v) (.rational 1091556181 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 396174070 1) .v) (.rational 938356814 1)) .v)
    (.rational 835089486 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 244289740
    1) .v) (.rational 528269114 1)) .v) (.rational 411476037 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 98988700 1) .v) (.rational 195741158 1)) .v) (.rational 131339628
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 25736893 1) .v) (.rational
    46763686 1)) .v) (.rational 26637022 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4042945 1) .v) (.rational 6809818 1)) .v) (.rational 3263728 1)) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 24620102 1) .v) (.rational 74782246 1))
    .v) (.rational 83080877 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 160030663 1) .v)
    (.rational 455400243 1)) .v) (.rational 470139786 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 457790806 1) .v) (.rational 1216758688 1)) .v) (.rational 1158276833 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 757512140 1) .v) (.rational 1875271377 1))
    .v) (.rational 1631447781 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    801347847 1) .v) (.rational 1843610490 1)) .v) (.rational 1451030826 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 565230201 1) .v) (.rational 1206982756 1)) .v)
    (.rational 849876981 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 268872756
    1) .v) (.rational 533018324 1)) .v) (.rational 331911726 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 85224102 1) .v) (.rational 157201945 1)) .v) (.rational 85663366
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 17337425 1) .v) (.rational
    29899836 1)) .v) (.rational 14160523 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2099016 1) .v) (.rational 3409915 1)) .v) (.rational 1404238 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 27045710 1) .v) (.rational
    75724220 1)) .v) (.rational 71664221 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    189319970 1) .v) (.rational 502933408 1)) .v) (.rational 447340302 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 587638371 1) .v) (.rational 1477359522 1)) .v) (.rational
    1227289288 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1064670616 1) .v)
    (.rational 2526986580 1)) .v) (.rational 1946812294 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1247002452 1) .v) (.rational 2788411396 1)) .v) (.rational 1976650218
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 987657565 1) .v) (.rational
    2077464990 1)) .v) (.rational 1343655861 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 537360248 1) .v) (.rational 1062550214 1)) .v) (.rational 621647021 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 199799318 1) .v) (.rational 371620026 1))
    .v) (.rational 195121807 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    49474048 1) .v) (.rational 86751120 1)) .v) (.rational 40647617 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7736241 1) .v) (.rational 12840798 1)) .v) (.rational
    5362154 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 691405 1) .v)
    (.rational 1092520 1)) .v) (.rational 408719 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 23768350 1) .v) (.rational 61992236 1))
    .v) (.rational 50971343 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 178262625 1) .v)
    (.rational 445785460 1)) .v) (.rational 348197312 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 596482147 1) .v) (.rational 1427060136 1)) .v) (.rational 1053635872 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1173484143 1) .v) (.rational 2680258510 1))
    .v) (.rational 1860259792 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1505570765 1) .v) (.rational 3276418338 1)) .v) (.rational 2124811246 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1320343222 1) .v) (.rational 2733129082 1)) .v)
    (.rational 1645544553 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 806317896
    1) .v) (.rational 1585800102 1)) .v) (.rational 880605443 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 342567039 1) .v) (.rational 639841791 1)) .v) (.rational
    325703927 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 99331359 1) .v)
    (.rational 176299300 1)) .v) (.rational 81866687 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 18853745 1) .v) (.rational 31855089 1)) .v) (.rational 13462198 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2167081 1) .v) (.rational 3496069 1)) .v)
    (.rational 1346616 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 129618 1)
    .v) (.rational 200400 1)) .v) (.rational 70782 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16649678 1) .v) (.rational
    40811926 1)) .v) (.rational 29696176 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    133197424 1) .v) (.rational 315792954 1)) .v) (.rational 220457641 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 477816668 1) .v) (.rational 1093669248 1)) .v) (.rational
    729690853 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1013761756 1) .v)
    (.rational 2235972752 1)) .v) (.rational 1419711597 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1412510023 1) .v) (.rational 2996653592 1)) .v) (.rational 1802354442
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1356640102 1) .v) (.rational
    2763696428 1)) .v) (.rational 1566839579 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 916786268 1) .v) (.rational 1790810102 1)) .v) (.rational 952174936 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 436692563 1) .v) (.rational 817076422 1))
    .v) (.rational 405449486 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    144421440 1) .v) (.rational 258717286 1)) .v) (.rational 119305763 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 32010064 1) .v) (.rational 54918038 1)) .v) (.rational
    23466566 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 4447388 1) .v)
    (.rational 7315766 1)) .v) (.rational 2894469 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 339955 1) .v) (.rational 537134 1)) .v) (.rational 197179 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10399 1) .v) (.rational 15808 1)) .v) (.rational
    5409 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 9211560 1) .v) (.rational 21383804 1)) .v) (.rational 14010230
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 78298260 1) .v) (.rational 177100799 1)) .v)
    (.rational 112325479 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 299701756 1) .v)
    (.rational 659468248 1)) .v) (.rational 403711621 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 681797970 1) .v) (.rational 1457112888 1)) .v) (.rational 858193713 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1024402260 1) .v) (.rational
    2122891162 1)) .v) (.rational 1198686788 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1068106585 1) .v) (.rational 2142832553 1)) .v) (.rational 1155618997 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 789922520 1) .v) (.rational 1531827400 1))
    .v) (.rational 785913910 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    415858784 1) .v) (.rational 778458745 1)) .v) (.rational 378464270 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 153907455 1) .v) (.rational 277813238 1)) .v) (.rational
    127514083 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 38800005 1) .v)
    (.rational 67491432 1)) .v) (.rational 29156258 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6269570 1) .v) (.rational 10508084 1)) .v) (.rational 4264087 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 575820 1) .v) (.rational 930271 1)) .v)
    (.rational 354451 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 22303 1) .v)
    (.rational 34752 1)) .v) (.rational 12449 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3961265 1) .v)
    (.rational 8768986 1)) .v) (.rational 5258490 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    35651385 1) .v) (.rational 77375290 1)) .v) (.rational 45274173 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 145010595 1) .v) (.rational 308159032 1)) .v) (.rational 175553755 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 351986700 1) .v) (.rational
    731403746 1)) .v) (.rational 404699343 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 566936056 1) .v) (.rational 1150269840 1)) .v) (.rational 616550628 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 637128352 1) .v) (.rational 1260339204 1))
    .v) (.rational 652541507 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    511108079 1) .v) (.rational 984290398 1)) .v) (.rational 490763347 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 294099968 1) .v) (.rational 550587144 1)) .v) (.rational
    263528799 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 120077180 1) .v)
    (.rational 218235996 1)) .v) (.rational 99955783 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 33785811 1) .v) (.rational 59542650 1)) .v) (.rational 26019548 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 6185782 1) .v) (.rational 10561498 1)) .v)
    (.rational 4392342 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 657064 1)
    .v) (.rational 1086238 1)) .v) (.rational 429174 1)) (.pow .g 11))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 30323 1) .v) (.rational 48522 1)) .v) (.rational 18199 1)) (.pow .g
    12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 1290750 1) .v) (.rational 2742510 1)) .v) (.rational 1528908 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 12262125 1) .v) (.rational 25678004 1)) .v)
    (.rational 14063773 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 52809323 1) .v)
    (.rational 108880306 1)) .v) (.rational 58494481 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 136195058 1) .v) (.rational 276160675 1)) .v) (.rational 145276457 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 233986406 1) .v) (.rational 466053948 1))
    .v) (.rational 239607494 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    281733635 1) .v) (.rational 550527740 1)) .v) (.rational 276028717 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 243391869 1) .v) (.rational 465974684 1)) .v) (.rational
    227324699 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 151727953 1) .v)
    (.rational 284208786 1)) .v) (.rational 134572441 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 67590013 1) .v) (.rational 123697870 1)) .v) (.rational 56700437 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 20927676 1) .v) (.rational 37369048
    1)) .v) (.rational 16538434 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4261340 1) .v) (.rational 7414610 1)) .v) (.rational 3160224 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 510289 1) .v) (.rational 864195 1)) .v) (.rational 353906
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 27035 1) .v) (.rational 44520
    1)) .v) (.rational 17485 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 306085 1) .v) (.rational
    628332 1)) .v) (.rational 330607 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3060850 1)
    .v) (.rational 6220208 1)) .v) (.rational 3233968 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13913196 1) .v) (.rational 27968602 1)) .v) (.rational 14353059 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 37984539 1) .v) (.rational 75468250 1)) .v)
    (.rational 38182175 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 69310955 1)
    .v) (.rational 135978484 1)) .v) (.rational 67734133 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 88966576 1) .v) (.rational 172173416 1)) .v) (.rational 84313148 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 82279568 1) .v) (.rational
    156900268 1)) .v) (.rational 75408970 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 55172890 1) .v) (.rational 103546028 1)) .v) (.rational 48753506 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 26583419 1) .v) (.rational 49039180 1)) .v)
    (.rational 22574485 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 8960150 1)
    .v) (.rational 16225304 1)) .v) (.rational 7286748 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2001396 1) .v) (.rational 3552714 1)) .v) (.rational 1553051 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 265363 1) .v) (.rational 461130 1)) .v)
    (.rational 195767 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 15749 1) .v)
    (.rational 26756 1)) .v) (.rational 11007 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 49402 1)
    .v) (.rational 98690 1)) .v) (.rational 49760 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    518721 1) .v) (.rational 1029665 1)) .v) (.rational 515408 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2481598 1) .v) (.rational 4892152 1)) .v) (.rational 2429490 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7149016 1) .v) (.rational 13988401 1))
    .v) (.rational 6886809 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 13804209
    1) .v) (.rational 26791944 1)) .v) (.rational 13065351 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 18809310 1) .v) (.rational 36184386 1)) .v) (.rational 17461764 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 18530736 1) .v) (.rational 35305704
    1)) .v) (.rational 16841832 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    13288572 1) .v) (.rational 25052010 1)) .v) (.rational 11798574 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6877416 1) .v) (.rational 12816426 1)) .v) (.rational
    5951034 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2502409 1) .v)
    (.rational 4604669 1)) .v) (.rational 2104676 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 606858 1) .v) (.rational 1101296 1)) .v) (.rational 494654 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 87940 1) .v) (.rational 157189 1)) .v) (.rational
    69249 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 5749 1) .v) (.rational
    10108 1)) .v) (.rational 4359 1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4790 1) .v) (.rational
    9396 1)) .v) (.rational 4614 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 52690 1) .v)
    (.rational 103016 1)) .v) (.rational 50406 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 264633 1) .v) (.rational 515542 1)) .v) (.rational 251269 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 802180 1) .v) (.rational 1556660 1)) .v) (.rational
    755440 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1633935 1) .v)
    (.rational 3157170 1)) .v) (.rational 1524915 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2354940 1) .v) (.rational 4528992 1)) .v) (.rational 2176068 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2461410 1) .v) (.rational 4709292 1)) .v)
    (.rational 2249562 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1878816 1)
    .v) (.rational 3574104 1)) .v) (.rational 1696248 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1038780 1) .v) (.rational 1963560 1)) .v) (.rational 925140 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 405410 1) .v) (.rational 760920 1)) .v)
    (.rational 355590 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 105925 1) .v)
    (.rational 197246 1)) .v) (.rational 91329 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16620 1) .v) (.rational 30676 1)) .v) (.rational 14056 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1183 1) .v) (.rational 2162 1)) .v) (.rational 979
    1)) (.pow .g 12))) (.pow .f 6))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 206 1) .v) (.rational 402 1)) .v) (.rational 196 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2369 1) .v) (.rational 4619 1)) .v) (.rational
    2250 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 12463 1) .v) (.rational 24277 1))
    .v) (.rational 11814 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 39655 1)
    .v) (.rational 77165 1)) .v) (.rational 37510 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 84975 1) .v) (.rational 165165 1)) .v) (.rational 80190 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 129162 1) .v) (.rational 250734 1)) .v) (.rational
    121572 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 142758 1) .v) (.rational
    276738 1)) .v) (.rational 133980 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 115566 1) .v) (.rational 223674 1)) .v) (.rational 108108 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 67980 1) .v) (.rational 131340 1)) .v) (.rational
    63360 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 28325 1) .v) (.rational
    54615 1)) .v) (.rational 26290 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7931 1) .v) (.rational 15257 1)) .v) (.rational 7326 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1339 1) .v) (.rational 2569 1)) .v) (.rational 1230 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 103 1) .v) (.rational 197 1)) .v) (.rational 94
    1)) (.pow .g 12))) (.pow .f 7)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0321

namespace FullLow0322
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow2.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    6*SmallGap.PolarCoefficientsLow1.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow2.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    24*SmallGap.PolarCoefficientsLow0.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsLow1.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    6*SmallGap.PolarCoefficientsLow2.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    120*SmallGap.PolarCoefficientsLow0.c050 e f g v*e*((e+f)*(e+f+g))^5+
    60*SmallGap.PolarCoefficientsLow1.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsLow2.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow1.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    5*SmallGap.PolarCoefficientsLow0.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow1.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    15*SmallGap.PolarCoefficientsLow0.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsLow1.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    30*SmallGap.PolarCoefficientsLow0.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow1.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow0.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow0.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow0.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsLow0.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(90*SmallGap.ReducedLayers.low0_010_0 e g v*e^4+36*SmallGap.ReducedLayers.low0_010_1
    e g v*e^5+6*SmallGap.ReducedLayers.low0_010_2 e g v*e^6+84*SmallGap.ReducedLayers.low0_001_0 e
    g v*e^5+28*SmallGap.ReducedLayers.low0_001_1 e g v*e^6+4*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^7)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(18*SmallGap.ReducedLayers.low1_020_0 e g v*e^2+12*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_020_2 e g v*e^4+30*SmallGap.ReducedLayers.low1_011_0 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_011_1 e g v*e^4+3*SmallGap.ReducedLayers.low1_011_2 e g
    v*e^5+15*SmallGap.ReducedLayers.low1_002_0 e g v*e^4+6*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_002_2 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2400 1) .v) (.rational 78800 1)) .e)
    (.add (.mul (.add (.mul (.add (.mul (.rational 1980 1) .v) (.rational 47328 1)) .v) (.rational
    685485 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4950 1) .v) (.rational 73416 1)) .v)
    (.rational 897300 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    36770 1) .v) (.rational 442972 1)) .v) (.rational 3755749 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 110310 1) .v) (.rational 935000 1)) .v) (.rational 6787351 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 119430 1) .v) (.rational 643528 1)) .v) (.rational 4259495
    1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    320336 1) .v) (.rational 2607706 1)) .v) (.rational 14542069 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1121176 1) .v) (.rational 6977049 1)) .v) (.rational 33659283 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1516152 1) .v) (.rational 6895487 1)) .v) (.rational
    29143419 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 987440 1) .v)
    (.rational 3119107 1)) .v) (.rational 11619965 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1736654 1) .v) (.rational 10795876
    1)) .v) (.rational 42320571 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 6946616 1) .v)
    (.rational 35011742 1)) .v) (.rational 119894246 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11209640 1) .v) (.rational 44770233 1)) .v) (.rational 133242685 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9315764 1) .v) (.rational 28829391 1)) .v)
    (.rational 73538076 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4194842 1)
    .v) (.rational 9879135 1)) .v) (.rational 20964822 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6556302 1) .v)
    (.rational 33315244 1)) .v) (.rational 96100164 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 29503359 1) .v) (.rational 126971969 1)) .v) (.rational 323263858 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 55157464 1) .v) (.rational 198466096 1)) .v)
    (.rational 441001987 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 55368782
    1) .v) (.rational 164670599 1)) .v) (.rational 313640149 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 32123622 1) .v) (.rational 78392603 1)) .v) (.rational 124388391
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10728271 1) .v) (.rational
    21520444 1)) .v) (.rational 27244889 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 18278944 1) .v)
    (.rational 79285486 1)) .v) (.rational 174410909 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 91394720 1) .v) (.rational 347149892 1)) .v) (.rational 681603996 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 193887194 1) .v) (.rational 639781523 1)) .v)
    (.rational 1107322164 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 227180456
    1) .v) (.rational 646923716 1)) .v) (.rational 970199652 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 160171524 1) .v) (.rational 392175897 1)) .v) (.rational
    497812610 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 69240800 1) .v)
    (.rational 146051443 1)) .v) (.rational 152152660 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17808034 1) .v) (.rational 32712354 1)) .v) (.rational 26961967 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 38946728 1) .v) (.rational 148564650 1)) .v)
    (.rational 256915366 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 214207004 1) .v)
    (.rational 734464285 1)) .v) (.rational 1147344614 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 507753044 1) .v) (.rational 1556472823 1)) .v) (.rational 2171009583 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 678336168 1) .v) (.rational 1850920006 1))
    .v) (.rational 2271541760 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    560387672 1) .v) (.rational 1357893498 1)) .v) (.rational 1439670967 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 295237096 1) .v) (.rational 636015876 1)) .v)
    (.rational 569976023 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 98479816
    1) .v) (.rational 189813484 1)) .v) (.rational 140452728 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 19856172 1) .v) (.rational 34698269 1)) .v) (.rational 20793755
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 64737265 1) .v) (.rational
    221894040 1)) .v) (.rational 309983097 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    388423590 1) .v) (.rational 1221815150 1)) .v) (.rational 1561244804 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1016538012 1) .v) (.rational 2922929443 1)) .v) (.rational
    3382296295 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1522140485 1) .v)
    (.rational 3987868499 1)) .v) (.rational 4129386442 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1437240944 1) .v) (.rational 3424368698 1)) .v) (.rational 3129226931
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 888780356 1) .v) (.rational
    1926310682 1)) .v) (.rational 1529607066 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 361664872 1) .v) (.rational 715521818 1)) .v) (.rational 486130922 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 94593917 1) .v) (.rational 172141696 1)) .v)
    (.rational 98876598 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 14981603 1)
    .v) (.rational 25387845 1)) .v) (.rational 12297725 1)) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 84928988 1) .v) (.rational 265811352 1)) .v) (.rational
    307578947 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 552038422 1) .v) (.rational
    1612356494 1)) .v) (.rational 1728133588 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1579935680 1) .v) (.rational 4293020050 1)) .v) (.rational 4227203557 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2617223598 1) .v) (.rational 6598684377 1)) .v)
    (.rational 5913650165 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2774019198 1) .v) (.rational 6478101637 1)) .v) (.rational 5229054398 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1962543369 1) .v) (.rational 4243222601 1)) .v)
    (.rational 3051023288 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 937682728
    1) .v) (.rational 1879937008 1)) .v) (.rational 1191424554 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 299073728 1) .v) (.rational 558314282 1)) .v) (.rational
    309379140 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 61366966 1) .v)
    (.rational 107437298 1)) .v) (.rational 51940301 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7516929 1) .v) (.rational 12464618 1)) .v) (.rational 5295447 1)) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 88371584 1) .v)
    (.rational 255688398 1)) .v) (.rational 250824063 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 618601088 1) .v) (.rational 1693184228 1)) .v) (.rational 1557442065 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1921050325 1) .v) (.rational 4961622544 1)) .v)
    (.rational 4251655132 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3484487806 1) .v) (.rational 8472945204 1)) .v) (.rational 6715255295 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4089334193 1) .v) (.rational 9345465492 1)) .v)
    (.rational 6797298673 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3248858674 1) .v) (.rational 6971599254 1)) .v) (.rational 4616217375 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1775622175 1) .v) (.rational 3578734527 1)) .v)
    (.rational 2141019040 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 664429498
    1) .v) (.rational 1260174112 1)) .v) (.rational 677210041 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 165981417 1) .v) (.rational 297378343 1)) .v) (.rational
    143218984 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 26268248 1) .v)
    (.rational 44714983 1)) .v) (.rational 19361781 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2386234 1) .v) (.rational 3886280 1)) .v) (.rational 1527854 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 72866208 1)
    .v) (.rational 196795678 1)) .v) (.rational 167218393 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 546496560 1) .v) (.rational 1412031111 1)) .v) (.rational 1138093603 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1829536084 1) .v) (.rational 4512650529 1)) .v)
    (.rational 3432739281 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3603453386 1) .v) (.rational 8467857509 1)) .v) (.rational 6046042143 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4632412984 1) .v) (.rational 10353340959 1)) .v)
    (.rational 6898097469 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4075052718 1) .v) (.rational 8651402546 1)) .v) (.rational 5346900881 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2499837272 1) .v) (.rational 5038671860 1)) .v)
    (.rational 2872488260 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1068849168 1) .v) (.rational 2046293455 1)) .v) (.rational 1071153285 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 312664392 1) .v) (.rational 569510885 1)) .v)
    (.rational 273046924 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 60062778
    1) .v) (.rational 104398273 1)) .v) (.rational 45876060 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 7017296 1) .v) (.rational 11685649 1)) .v) (.rational 4728685 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 429166 1) .v) (.rational 687378
    1)) .v) (.rational 258212 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 47286796 1) .v) (.rational 120148564 1)) .v)
    (.rational 90194845 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 378294368 1) .v)
    (.rational 928153490 1)) .v) (.rational 667950354 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1357710774 1) .v) (.rational 3210780471 1)) .v) (.rational 2206607339 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2883823978 1) .v) (.rational 6561599741 1))
    .v) (.rational 4288525350 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4025943627 1) .v) (.rational 8798900685 1)) .v) (.rational 5445026922 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3878343792 1) .v) (.rational 8130470387 1)) .v)
    (.rational 4742522188 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2632422066 1) .v) (.rational 5288007946 1)) .v) (.rational 2894856632 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1261684859 1) .v) (.rational 2427486790 1)) .v)
    (.rational 1242504448 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 420841028
    1) .v) (.rational 775734827 1)) .v) (.rational 370268046 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 94370362 1) .v) (.rational 166841649 1)) .v) (.rational 74200166
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 13320676 1) .v) (.rational
    22629849 1)) .v) (.rational 9391399 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1040393 1) .v) (.rational 1701975 1)) .v) (.rational 661582 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 32785 1) .v) (.rational 51690 1)) .v) (.rational
    18905 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 23823462 1) .v) (.rational 57319612 1)) .v) (.rational
    38707902 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 202499427 1) .v) (.rational
    474148953 1)) .v) (.rational 309865550 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    775464160 1) .v) (.rational 1764278960 1)) .v) (.rational 1112579465 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1765992660 1) .v) (.rational 3897851667 1)) .v)
    (.rational 2364485377 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2658281516 1) .v) (.rational 5683275449 1)) .v) (.rational 3305334896 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2779573082 1) .v) (.rational 5747901177 1)) .v)
    (.rational 3194032389 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2064174816 1) .v) (.rational 4123460611 1)) .v) (.rational 2181840324 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1093055260 1) .v) (.rational 2107252854 1)) .v)
    (.rational 1058354544 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 407804590
    1) .v) (.rational 758289862 1)) .v) (.rational 360548617 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 103941051 1) .v) (.rational 186399644 1)) .v) (.rational 83762891
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 17046800 1) .v) (.rational
    29496115 1)) .v) (.rational 12521997 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1597464 1) .v) (.rational 2668953 1)) .v) (.rational 1071489 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 63600 1) .v) (.rational 102639 1)) .v) (.rational
    39039 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 9106484 1) .v) (.rational 20865226 1)) .v) (.rational
    12884991 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 81958356 1) .v) (.rational 183951652
    1)) .v) (.rational 110840422 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 333502830
    1) .v) (.rational 732290387 1)) .v) (.rational 429618672 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 810299904 1) .v) (.rational 1738266096 1)) .v) (.rational
    990633964 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1307313206 1) .v)
    (.rational 2736133767 1)) .v) (.rational 1510946876 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1472973698 1) .v) (.rational 3003596611 1)) .v) (.rational 1602976903
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1186089135 1) .v) (.rational
    2353290985 1)) .v) (.rational 1210496631 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 686126800 1) .v) (.rational 1322953227 1)) .v) (.rational 654153667 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 282193489 1) .v) (.rational 528224171 1))
    .v) (.rational 250456214 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    80194166 1) .v) (.rational 145615197 1)) .v) (.rational 66070311 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 14881259 1) .v) (.rational 26199400 1)) .v) (.rational
    11359557 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1609604 1) .v)
    (.rational 2747073 1)) .v) (.rational 1137469 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 76125 1) .v) (.rational 125920 1)) .v) (.rational 49795 1)) (.pow .g 12)))
    (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 2544632 1) .v) (.rational 5581054 1)) .v) (.rational 3199274 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 24174004 1) .v) (.rational 52225659 1)) .v)
    (.rational 29416662 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 104148296 1) .v)
    (.rational 221400553 1)) .v) (.rational 122348005 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 268823414 1) .v) (.rational 561697450 1)) .v) (.rational 304018196 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 462515576 1) .v) (.rational
    948771164 1)) .v) (.rational 502045432 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 558146948 1) .v) (.rational 1122672200 1)) .v) (.rational 579646666 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 483767004 1) .v) (.rational 952943040 1))
    .v) (.rational 479070648 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    302967496 1) .v) (.rational 583728190 1)) .v) (.rational 285119822 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 135821764 1) .v) (.rational 255649180 1)) .v) (.rational
    121061936 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 42418376 1) .v)
    (.rational 77912509 1)) .v) (.rational 35696552 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8738316 1) .v) (.rational 15647351 1)) .v) (.rational 6923587 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1062850 1) .v) (.rational 1853976 1)) .v)
    (.rational 791126 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 57500 1) .v)
    (.rational 97642 1)) .v) (.rational 40142 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 488269 1)
    .v) (.rational 1030320 1)) .v) (.rational 555919 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4882690 1) .v) (.rational 10196610 1)) .v) (.rational 5437532 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 22200990 1) .v) (.rational 45847109 1)) .v) (.rational
    24138605 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 60652245 1) .v)
    (.rational 123753913 1)) .v) (.rational 64255684 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 110803065 1) .v) (.rational 223169642 1)) .v) (.rational 114126209 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 142483848 1) .v) (.rational 283001488 1))
    .v) (.rational 142339936 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    132124020 1) .v) (.rational 258514382 1)) .v) (.rational 127686734 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 88927830 1) .v) (.rational 171213046 1)) .v) (.rational
    82909792 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 43068495 1) .v)
    (.rational 81499688 1)) .v) (.rational 38625869 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 14618590 1) .v) (.rational 27157942 1)) .v) (.rational 12574724 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 3296254 1) .v) (.rational 6005093 1)) .v)
    (.rational 2711677 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 442605 1)
    .v) (.rational 789897 1)) .v) (.rational 347292 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 26715 1) .v) (.rational 46662 1)) .v) (.rational 19947 1)) (.pow .g 12)))
    (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 57188 1) .v) (.rational 116736 1)) .v) (.rational 60078 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 600474 1) .v) (.rational 1217880 1)) .v) (.rational 622416
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2873320 1) .v) (.rational 5787306 1))
    .v) (.rational 2935226 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8281530
    1) .v) (.rational 16555129 1)) .v) (.rational 8326759 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16004520 1) .v) (.rational 31733271 1)) .v) (.rational 15815691 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 21835956 1) .v) (.rational 42912756
    1)) .v) (.rational 21173820 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    21553728 1) .v) (.rational 41950776 1)) .v) (.rational 20471808 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15498180 1) .v) (.rational 29849166 1)) .v) (.rational
    14390226 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8050980 1) .v)
    (.rational 15329754 1)) .v) (.rational 7292184 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2944370 1) .v) (.rational 5537196 1)) .v) (.rational 2595516 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 718968 1) .v) (.rational 1334070 1)) .v)
    (.rational 615342 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 105154 1)
    .v) (.rational 192321 1)) .v) (.rational 87167 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6960 1) .v) (.rational 12535 1)) .v) (.rational 5575 1)) (.pow .g 12))) (.pow
    .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 3058 1) .v) (.rational 6078 1)) .v) (.rational 3024 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 33638 1) .v) (.rational 66652 1)) .v) (.rational 33054 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 168965 1) .v) (.rational 333674 1)) .v) (.rational
    164889 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 512320 1) .v) (.rational
    1008040 1)) .v) (.rational 496200 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1044015 1) .v) (.rational 2046000 1)) .v) (.rational 1002825 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1505796 1) .v) (.rational 2938056 1)) .v) (.rational
    1433268 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1575546 1) .v)
    (.rational 3059364 1)) .v) (.rational 1484658 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1204440 1) .v) (.rational 2326368 1)) .v) (.rational 1122408 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 667320 1) .v) (.rational 1281390 1)) .v)
    (.rational 614250 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 261190 1) .v)
    (.rational 498300 1)) .v) (.rational 237150 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 68513 1) .v) (.rational 129778 1)) .v) (.rational 61269 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10808 1) .v) (.rational 20312 1)) .v) (.rational
    9504 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 775 1) .v) (.rational
    1444 1)) .v) (.rational 669 1)) (.pow .g 12))) (.pow .f 6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0322

namespace FullLow0323
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow3.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    6*SmallGap.PolarCoefficientsLow2.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow3.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    24*SmallGap.PolarCoefficientsLow1.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsLow2.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    6*SmallGap.PolarCoefficientsLow3.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    80*SmallGap.PolarCoefficientsLow0.c050 e f g v*((e+f)*(e+f+g))^5+
    120*SmallGap.PolarCoefficientsLow1.c050 e f g v*e*((e+f)*(e+f+g))^5+
    60*SmallGap.PolarCoefficientsLow2.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsLow3.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow2.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    5*SmallGap.PolarCoefficientsLow1.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow2.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    18*SmallGap.PolarCoefficientsLow0.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    15*SmallGap.PolarCoefficientsLow1.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsLow2.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    72*SmallGap.PolarCoefficientsLow0.c140 e f g v*e*((e+f)*(e+f+g))^4+
    30*SmallGap.PolarCoefficientsLow1.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow2.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow1.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow1.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    8*SmallGap.PolarCoefficientsLow0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsLow1.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsLow0.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow1.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(120*SmallGap.ReducedLayers.low0_010_0 e g
    v*e^3+90*SmallGap.ReducedLayers.low0_010_1 e g v*e^4+36*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^5+6*SmallGap.ReducedLayers.low0_010_3 e g v*e^6+140*SmallGap.ReducedLayers.low0_001_0 e g
    v*e^4+84*SmallGap.ReducedLayers.low0_001_1 e g v*e^5+28*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^6+4*SmallGap.ReducedLayers.low0_001_3 e g v*e^7)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(12*SmallGap.ReducedLayers.low1_020_0 e g v*e^1+18*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_020_2 e g v*e^3+3*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^4+30*SmallGap.ReducedLayers.low1_011_0 e g v*e^2+30*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_011_2 e g v*e^4+3*SmallGap.ReducedLayers.low1_011_3 e g
    v*e^5+20*SmallGap.ReducedLayers.low1_002_0 e g v*e^3+15*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_002_2 e g v*e^5+1*SmallGap.ReducedLayers.low1_002_3 e g
    v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 7500 1) .v) (.rational 262200 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 5520 1) .v) (.rational 138972 1)) .v) (.rational 2190630
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 13800 1) .v) (.rational 211884 1)) .v)
    (.rational 2822280 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    98776 1) .v) (.rational 1234340 1)) .v) (.rational 11514008 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 296328 1) .v) (.rational 2551756 1)) .v) (.rational 20445324 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 320928 1) .v) (.rational 1689200 1)) .v) (.rational
    12529284 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 830928 1) .v) (.rational 6950114 1)) .v) (.rational 42714049 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2908248 1) .v) (.rational 18237035 1)) .v) (.rational 97093257
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3934056 1) .v) (.rational 17506309 1))
    .v) (.rational 82102124 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2564520
    1) .v) (.rational 7572617 1)) .v) (.rational 31684209 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4351710 1) .v) (.rational
    27672758 1)) .v) (.rational 118950916 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    17406840 1) .v) (.rational 88280646 1)) .v) (.rational 331080721 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 28097840 1) .v) (.rational 110490098 1)) .v) (.rational 359828572
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 23369580 1) .v) (.rational
    69218238 1)) .v) (.rational 192889413 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10539570 1) .v) (.rational 22938704 1)) .v) (.rational 52850726 1)) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 15854084 1) .v) (.rational 82364660 1)) .v) (.rational 258132086 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 71343378 1) .v) (.rational 309812538 1)) .v) (.rational
    854123648 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 133421384 1) .v) (.rational
    476791874 1)) .v) (.rational 1142147053 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 134039080 1) .v) (.rational 388651472 1)) .v) (.rational 792445364 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 77880096 1) .v) (.rational 181593636 1)) .v)
    (.rational 304663305 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 26070422
    1) .v) (.rational 49039670 1)) .v) (.rational 64180854 1)) (.pow .g 5)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    42549488 1) .v) (.rational 189084638 1)) .v) (.rational 446979305 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 212747440 1) .v) (.rational 819550276 1)) .v) (.rational 1721448878 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 451486809 1) .v) (.rational 1493740605 1))
    .v) (.rational 2749417316 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    529462596 1) .v) (.rational 1493094902 1)) .v) (.rational 2361486595 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 373862178 1) .v) (.rational 895360438 1)) .v)
    (.rational 1184066429 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 162006696
    1) .v) (.rational 330748618 1)) .v) (.rational 352723793 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 41812381 1) .v) (.rational 73915855 1)) .v) (.rational 60944656
    1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 86926186 1) .v) (.rational 340903868 1)) .v)
    (.rational 626713262 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 478094023 1) .v)
    (.rational 1672475327 1)) .v) (.rational 2764411266 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1133715899 1) .v) (.rational 3516717715 1)) .v) (.rational 5159368232 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1516016373 1) .v) (.rational 4150925613 1))
    .v) (.rational 5317327408 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1254494204 1) .v) (.rational 3026349192 1)) .v) (.rational 3316386561 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 662644801 1) .v) (.rational 1412354555 1)) .v)
    (.rational 1292531662 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 221872499
    1) .v) (.rational 421842001 1)) .v) (.rational 314634847 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 44970667 1) .v) (.rational 77668753 1)) .v) (.rational 46460842
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 137758682 1) .v) (.rational
    487357410 1)) .v) (.rational 717073136 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    826552092 1) .v) (.rational 2668216742 1)) .v) (.rational 3575809992 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2164120080 1) .v) (.rational 6348416828 1)) .v) (.rational
    7665566437 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3243872890 1) .v)
    (.rational 8620454992 1)) .v) (.rational 9258380338 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3068531312 1) .v) (.rational 7377601088 1)) .v) (.rational 6943759806
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1902960920 1) .v) (.rational
    4145924896 1)) .v) (.rational 3365464839 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 777575588 1) .v) (.rational 1543889838 1)) .v) (.rational 1065205609 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 204556670 1) .v) (.rational 374171318 1))
    .v) (.rational 217594577 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    32651714 1) .v) (.rational 55910736 1)) .v) (.rational 27541998 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 170998730 1) .v) (.rational 554381762 1)) .v)
    (.rational 670813014 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1111491745 1) .v)
    (.rational 3348450973 1)) .v) (.rational 3740298216 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3182650612 1) .v) (.rational 8881841038 1)) .v) (.rational 9079680252 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5278169171 1) .v) (.rational 13612178635 1))
    .v) (.rational 12611012616 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5605460938 1) .v) (.rational 13342913572 1)) .v) (.rational 11084200482 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3977919231 1) .v) (.rational 8744600139 1)) .v)
    (.rational 6444051336 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1909148704 1) .v) (.rational 3887904420 1)) .v) (.rational 2518201587 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 612763193 1) .v) (.rational 1163266385 1)) .v)
    (.rational 658948784 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 126816860
    1) .v) (.rational 226590850 1)) .v) (.rational 112579799 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 15713644 1) .v) (.rational 26746752 1)) .v) (.rational 11811590
    1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 166658896
    1) .v) (.rational 500871976 1)) .v) (.rational 511234950 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1166612272 1) .v) (.rational 3306242428 1)) .v) (.rational 3156666660 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3624789486 1) .v) (.rational 9663152698 1)) .v)
    (.rational 8572363066 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6582777380 1) .v) (.rational 16473360604 1)) .v) (.rational 13479617716 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7741699374 1) .v) (.rational 18162494736 1)) .v)
    (.rational 13603791085 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6170630036 1) .v) (.rational 13569042392 1)) .v) (.rational 9233934630 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3388533759 1) .v) (.rational 6993602351 1)) .v)
    (.rational 4297108638 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1276461744 1) .v) (.rational 2480882406 1)) .v) (.rational 1371478337 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 321805988 1) .v) (.rational 592208580 1)) .v)
    (.rational 294873151 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 51563300
    1) .v) (.rational 90501658 1)) .v) (.rational 40877155 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4762465 1) .v) (.rational 8033687 1)) .v) (.rational 3332912 1)) (.pow
    .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    126995196 1) .v) (.rational 356845882 1)) .v) (.rational 314469617 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 952463970 1) .v) (.rational 2554263949 1)) .v) (.rational 2131817169
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3190363566 1) .v) (.rational 8148359759
    1)) .v) (.rational 6408075238 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6291659634 1) .v) (.rational 15275937921 1)) .v) (.rational 11258423735 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8105890936 1) .v) (.rational 18682937143 1)) .v)
    (.rational 12832212480 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7154691973 1) .v) (.rational 15642836534 1)) .v) (.rational 9959187941 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4410640437 1) .v) (.rational 9149360652 1)) .v)
    (.rational 5374813654 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1898902275 1) .v) (.rational 3742493496 1)) .v) (.rational 2022675689 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 560767738 1) .v) (.rational 1052946945 1)) .v)
    (.rational 523419775 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 109118393
    1) .v) (.rational 195983540 1)) .v) (.rational 89896197 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12971939 1) .v) (.rational 22386324 1)) .v) (.rational 9537665
    1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 812211 1) .v) (.rational
    1351092 1)) .v) (.rational 538881 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 74793370 1) .v) (.rational 197776866 1))
    .v) (.rational 153656848 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 598346960 1) .v)
    (.rational 1525051402 1)) .v) (.rational 1134819525 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2148679376 1) .v) (.rational 5269112922 1)) .v) (.rational 3740935868 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4569683832 1) .v) (.rational 10763551410 1))
    .v) (.rational 7261679979 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6393532440 1) .v) (.rational 14443855610 1)) .v) (.rational 9221451178 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6180091504 1) .v) (.rational 13376413448 1)) .v)
    (.rational 8048917363 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4215513086 1) .v) (.rational 8736941212 1)) .v) (.rational 4937230715 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2034511906 1) .v) (.rational 4038325254 1)) .v)
    (.rational 2137460939 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 685125808
    1) .v) (.rational 1303685454 1)) .v) (.rational 645558508 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 155636124 1) .v) (.rational 284418386 1)) .v) (.rational
    131868064 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 22355970 1) .v)
    (.rational 39325346 1)) .v) (.rational 17120539 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1787930 1) .v) (.rational 3032596 1)) .v) (.rational 1244666 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 58206 1) .v) (.rational 95086 1)) .v)
    (.rational 36880 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 33340064 1) .v) (.rational 83390056 1)) .v)
    (.rational 58181662 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 283390544 1) .v)
    (.rational 688848152 1)) .v) (.rational 464892100 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1085825204 1) .v) (.rational 2561013514 1)) .v) (.rational 1667064303 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2475878150 1) .v) (.rational 5657609940 1))
    .v) (.rational 3541326434 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3734886880 1) .v) (.rational 8256804126 1)) .v) (.rational 4954206343 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3918305781 1) .v) (.rational 8369870879 1)) .v)
    (.rational 4799043292 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2923917490 1) .v) (.rational 6029006882 1)) .v) (.rational 3293732229 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1558853153 1) .v) (.rational 3100895251 1)) .v)
    (.rational 1610159586 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 587026050
    1) .v) (.rational 1126391910 1)) .v) (.rational 554983069 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 151519615 1) .v) (.rational 280557021 1)) .v) (.rational
    131086028 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 25275402 1) .v)
    (.rational 45196188 1)) .v) (.rational 20037420 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2423381 1) .v) (.rational 4187525 1)) .v) (.rational 1764144 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 99534 1) .v) (.rational 166092 1)) .v)
    (.rational 66558 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 10860840 1) .v) (.rational 25802694 1)) .v)
    (.rational 16430273 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 97747560 1) .v)
    (.rational 227244852 1)) .v) (.rational 141160730 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 397957097 1) .v) (.rational 904144385 1)) .v) (.rational 546735390 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 968045416 1) .v) (.rational 2146482802 1))
    .v) (.rational 1260671333 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1565003828 1) .v) (.rational 3382186658 1)) .v) (.rational 1924743696 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1768871776 1) .v) (.rational 3721106430 1)) .v)
    (.rational 2046869075 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1430877138 1) .v) (.rational 2926593096 1)) .v) (.rational 1552321276 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 833048488 1) .v) (.rational 1654940386 1)) .v)
    (.rational 844573335 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 345640616
    1) .v) (.rational 666444312 1)) .v) (.rational 326618263 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 99396648 1) .v) (.rational 185926038 1)) .v) (.rational 87389011
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 18740141 1) .v) (.rational
    34000871 1)) .v) (.rational 15316322 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2070528 1) .v) (.rational 3643364 1)) .v) (.rational 1572836 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 100756 1) .v) (.rational 171856 1)) .v) (.rational
    71100 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 2434762 1) .v) (.rational 5514376 1)) .v)
    (.rational 3250214 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 23130239 1) .v) (.rational
    51563345 1)) .v) (.rational 29860502 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    99698047 1) .v) (.rational 218525209 1)) .v) (.rational 124146278 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 257612305 1) .v) (.rational 554555417 1)) .v) (.rational
    308555512 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 444046736 1) .v)
    (.rational 937696980 1)) .v) (.rational 510077060 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 537388798 1) .v) (.rational 1111889381 1)) .v) (.rational 590210879 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 467707058 1) .v) (.rational
    947053331 1)) .v) (.rational 489617289 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 294613306 1) .v) (.rational 583164393 1)) .v) (.rational 293075743 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 133129310 1) .v) (.rational 257338117 1))
    .v) (.rational 125491807 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    42024851 1) .v) (.rational 79258550 1)) .v) (.rational 37444775 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8781751 1) .v) (.rational 16148240 1)) .v) (.rational
    7381765 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1088549 1) .v)
    (.rational 1950546 1)) .v) (.rational 861997 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 60384 1) .v) (.rational 105379 1)) .v) (.rational 44995 1)) (.pow .g 12)))
    (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 334958 1) .v) (.rational 725706 1)) .v) (.rational 400892 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3349580 1) .v) (.rational 7178622 1)) .v) (.rational
    3919356 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 15236192 1) .v) (.rational
    32273936 1)) .v) (.rational 17397129 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 41662698 1) .v) (.rational 87149504 1)) .v) (.rational 46327862 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 76231962 1) .v) (.rational 157321450 1)) .v)
    (.rational 82370236 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 98266944 1)
    .v) (.rational 199875668 1)) .v) (.rational 102933320 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 91444752 1) .v) (.rational 183131872 1)) .v) (.rational 92628214 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 61853772 1) .v) (.rational
    121833560 1)) .v) (.rational 60432668 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 30160098 1) .v) (.rational 58368334 1)) .v) (.rational 28349272 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10331012 1) .v) (.rational 19624670 1)) .v)
    (.rational 9319276 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2357936 1)
    .v) (.rational 4392592 1)) .v) (.rational 2036713 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 321722 1) .v) (.rational 587320 1)) .v) (.rational 265598 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 19830 1) .v) (.rational 35454 1)) .v)
    (.rational 15624 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21250 1) .v) (.rational 44198 1))
    .v) (.rational 23144 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 223125 1) .v) (.rational
    461021 1)) .v) (.rational 239748 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1068000
    1) .v) (.rational 2190962 1)) .v) (.rational 1130810 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3080375 1) .v) (.rational 6270429 1)) .v) (.rational 3209686 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5960250 1) .v) (.rational 12031026 1))
    .v) (.rational 6102864 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8147250
    1) .v) (.rational 16296090 1)) .v) (.rational 8184624 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8064000 1) .v) (.rational 15970668 1)) .v) (.rational 7934220 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5820750 1) .v) (.rational 11405058 1))
    .v) (.rational 5598756 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3039750
    1) .v) (.rational 5887554 1)) .v) (.rational 2852736 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1119625 1) .v) (.rational 2141801 1)) .v) (.rational 1023164 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 276000 1) .v) (.rational 521042 1)) .v)
    (.rational 245130 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 40875 1) .v)
    (.rational 76097 1)) .v) (.rational 35222 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2750 1) .v) (.rational 5046 1)) .v) (.rational 2296 1)) (.pow .g 12))) (.pow .f
    5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0323

namespace FullLow0324
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    6*SmallGap.PolarCoefficientsLow3.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow4.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    24*SmallGap.PolarCoefficientsLow2.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsLow3.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    6*SmallGap.PolarCoefficientsLow4.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    80*SmallGap.PolarCoefficientsLow1.c050 e f g v*((e+f)*(e+f+g))^5+
    120*SmallGap.PolarCoefficientsLow2.c050 e f g v*e*((e+f)*(e+f+g))^5+
    60*SmallGap.PolarCoefficientsLow3.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsLow4.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow3.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    5*SmallGap.PolarCoefficientsLow2.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow3.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    18*SmallGap.PolarCoefficientsLow1.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    15*SmallGap.PolarCoefficientsLow2.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsLow3.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    56*SmallGap.PolarCoefficientsLow0.c140 e f g v*((e+f)*(e+f+g))^4+
    72*SmallGap.PolarCoefficientsLow1.c140 e f g v*e*((e+f)*(e+f+g))^4+
    30*SmallGap.PolarCoefficientsLow2.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow3.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow2.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow2.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    13*SmallGap.PolarCoefficientsLow0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsLow2.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    39*SmallGap.PolarCoefficientsLow0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow2.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(90*SmallGap.ReducedLayers.low0_010_0 e g
    v*e^2+120*SmallGap.ReducedLayers.low0_010_1 e g v*e^3+90*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^4+36*SmallGap.ReducedLayers.low0_010_3 e g v*e^5+6*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^6+140*SmallGap.ReducedLayers.low0_001_0 e g v*e^3+140*SmallGap.ReducedLayers.low0_001_1 e
    g v*e^4+84*SmallGap.ReducedLayers.low0_001_2 e g v*e^5+28*SmallGap.ReducedLayers.low0_001_3 e
    g v*e^6+4*SmallGap.ReducedLayers.low0_001_4 e g v*e^7)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_0 e g v+12*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_020_2 e g v*e^2+12*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_020_4 e g v*e^4+15*SmallGap.ReducedLayers.low1_011_0 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_011_1 e g v*e^2+30*SmallGap.ReducedLayers.low1_011_2 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_011_3 e g v*e^4+3*SmallGap.ReducedLayers.low1_011_4 e g
    v*e^5+15*SmallGap.ReducedLayers.low1_002_0 e g v*e^2+20*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_002_2 e g v*e^4+6*SmallGap.ReducedLayers.low1_002_3 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_002_4 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 15600 1) .v) (.rational 589200 1)) .e) (.add (.mul (.add (.mul
    (.add (.mul (.rational 10080 1) .v) (.rational 272688 1)) .v) (.rational 4732770 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 25200 1) .v) (.rational 408336 1)) .v) (.rational 5994180
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 174608 1) .v)
    (.rational 2300728 1)) .v) (.rational 23864320 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 523824 1) .v) (.rational 4648688 1)) .v) (.rational 41573586 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 567504 1) .v) (.rational 2940472 1)) .v) (.rational
    24812052 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1422568 1) .v) (.rational 12384898 1)) .v) (.rational 84737287 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4978988 1) .v) (.rational 31788581 1)) .v) (.rational 188826221
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6737556 1) .v) (.rational 29473283 1))
    .v) (.rational 155472754 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4396420 1) .v) (.rational 12034315 1)) .v) (.rational 57741053 1)) (.pow .g 3)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7206852 1) .v)
    (.rational 47371100 1)) .v) (.rational 225357241 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 28827408 1) .v) (.rational 148301078 1)) .v) (.rational 615111084 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 46548096 1) .v) (.rational 180923771 1)) .v)
    (.rational 651844138 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 38748360
    1) .v) (.rational 109490029 1)) .v) (.rational 337645007 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 17504124 1) .v) (.rational 34684977 1)) .v) (.rational 88041431
    1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 25329238 1) .v) (.rational 135752504 1)) .v) (.rational 465950600 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 113981571 1) .v) (.rational 503037810 1)) .v)
    (.rational 1513965505 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 213231008 1) .v)
    (.rational 760151930 1)) .v) (.rational 1979303545 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 214394530 1) .v) (.rational 606387871 1)) .v) (.rational 1334280443 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 124756602 1) .v) (.rational
    276672501 1)) .v) (.rational 493950978 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 41862179 1) .v) (.rational 73093943 1)) .v) (.rational 98947502 1)) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 65298970 1) .v) (.rational 299796308 1)) .v) (.rational 766633890 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 326494850 1) .v) (.rational 1284687952 1)) .v)
    (.rational 2905528178 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 693126735 1) .v)
    (.rational 2311891142 1)) .v) (.rational 4553259662 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 813537840 1) .v) (.rational 2279732596 1)) .v) (.rational 3823171520
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 575340000 1) .v) (.rational
    1349233167 1)) .v) (.rational 1865997106 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 249915930 1) .v) (.rational 493359925 1)) .v) (.rational 538946291 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 64723295 1) .v) (.rational 109888159 1)) .v)
    (.rational 90261828 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 127367402 1) .v)
    (.rational 517739280 1)) .v) (.rational 1017448456 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 700520711 1) .v) (.rational 2518658901 1)) .v) (.rational 4428199349 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1661832563 1) .v) (.rational 5249915865 1)) .v)
    (.rational 8141222448 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2224341201 1) .v) (.rational 6144476510 1)) .v) (.rational 8251780667 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1843729180 1) .v) (.rational 4447779878 1)) .v)
    (.rational 5055698103 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 976438169
    1) .v) (.rational 2066819918 1)) .v) (.rational 1936519484 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 328169227 1) .v) (.rational 617734628 1)) .v) (.rational
    465358544 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 66853559 1) .v)
    (.rational 114606407 1)) .v) (.rational 68661066 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 191148457 1) .v) (.rational 703538814 1)) .v) (.rational 1095573598 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1146890742 1) .v) (.rational 3827955734 1)) .v)
    (.rational 5405577655 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3004225825 1) .v)
    (.rational 9053759289 1)) .v) (.rational 11458698353 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4507963990 1) .v) (.rational 12230447367 1)) .v) (.rational 13682111503
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4272289278 1) .v) (.rational
    10428927654 1)) .v) (.rational 10151336678 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2657171334 1) .v) (.rational 5854432378 1)) .v) (.rational 4878922729 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1090309629 1) .v) (.rational 2186278454 1))
    .v) (.rational 1539714725 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    288479814 1) .v) (.rational 534069182 1)) .v) (.rational 316737446 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 46397075 1) .v) (.rational 80890629 1)) .v) (.rational
    40943452 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 222278420
    1) .v) (.rational 752168532 1)) .v) (.rational 956109638 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1444809730 1) .v) (.rational 4522360397 1)) .v) (.rational 5288397407 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4139209646 1) .v) (.rational 11947267558 1)) .v)
    (.rational 12736087422 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6872746023 1) .v) (.rational 18253724213 1)) .v) (.rational 17560016292 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7314075529 1) .v) (.rational 17865026658 1)) .v)
    (.rational 15344088185 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5207105253 1) .v) (.rational 11717302761 1)) .v) (.rational 8894973582 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2510701180 1) .v) (.rational 5230412164 1)) .v)
    (.rational 3483776819 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 811037717
    1) .v) (.rational 1577658204 1)) .v) (.rational 920802475 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 169307281 1) .v) (.rational 311251665 1)) .v) (.rational
    160482163 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 21216597 1) .v)
    (.rational 37377537 1)) .v) (.rational 17335886 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 200076165 1) .v) (.rational 629005644 1)) .v)
    (.rational 671006824 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1400533155 1) .v)
    (.rational 4137903974 1)) .v) (.rational 4118946037 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4354075211 1) .v) (.rational 12060448457 1)) .v) (.rational 11125445013 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7917520251 1) .v) (.rational 20524019898
    1)) .v) (.rational 17417431419 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9332491953 1) .v) (.rational 22622188143 1)) .v) (.rational 17531707429 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7464564325 1) .v) (.rational 16931337952 1)) .v)
    (.rational 11903256053 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4119838502 1) .v) (.rational 8766690681 1)) .v) (.rational 5565149973 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1562907629 1) .v) (.rational 3135168010 1)) .v)
    (.rational 1795369733 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 397804880
    1) .v) (.rational 757599350 1)) .v) (.rational 393080183 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 64557692 1) .v) (.rational 117714373 1)) .v) (.rational 55894751
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 6063233 1) .v) (.rational
    10666229 1)) .v) (.rational 4695976 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 138140338 1) .v) (.rational 406395430 1)) .v)
    (.rational 373035891 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1036052535 1) .v)
    (.rational 2901381966 1)) .v) (.rational 2518215140 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3472460471 1) .v) (.rational 9237996214 1)) .v) (.rational 7542692038 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6857529614 1) .v) (.rational 17302746057 1))
    .v) (.rational 13219369552 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8856220023 1) .v) (.rational 21171714290 1)) .v) (.rational 15056398634 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7846003957 1) .v) (.rational 17768494118 1)) .v)
    (.rational 11707168807 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4862872088 1) .v) (.rational 10443066051 1)) .v) (.rational 6353123026 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2109377097 1) .v) (.rational 4305890997 1)) .v)
    (.rational 2415734669 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 629338853
    1) .v) (.rational 1225792152 1)) .v) (.rational 635350781 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 124161144 1) .v) (.rational 231851552 1)) .v) (.rational
    111587495 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 15034443 1) .v)
    (.rational 27035479 1)) .v) (.rational 12168350 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 964749 1) .v) (.rational 1672886 1)) .v) (.rational 708137 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    71790389 1) .v) (.rational 198631012 1)) .v) (.rational 160344761 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 574323112 1) .v) (.rational 1528543398 1)) .v) (.rational 1180631133
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2063717143 1) .v) (.rational 5274087133
    1)) .v) (.rational 3882875251 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4395365541 1) .v) (.rational 10769452907 1)) .v) (.rational 7527628081 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6165044087 1) .v) (.rational 14464756792 1)) .v)
    (.rational 9561991045 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5982214085 1) .v) (.rational 13430960313 1)) .v) (.rational 8367188918 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4103361323 1) .v) (.rational 8815428633 1)) .v)
    (.rational 5161023272 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1995885383 1) .v) (.rational 4106238412 1)) .v) (.rational 2255671780 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 679319969 1) .v) (.rational 1340627616 1)) .v)
    (.rational 691091917 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 156552219
    1) .v) (.rational 297042143 1)) .v) (.rational 143983489 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 22925704 1) .v) (.rational 41915520 1)) .v) (.rational 19168413
    1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1881748 1) .v) (.rational
    3316891 1)) .v) (.rational 1435143 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 63473 1) .v) (.rational 107358 1)) .v) (.rational 43885 1)) (.pow .g 12)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    27164634 1) .v) (.rational 70940996 1)) .v) (.rational 51309336 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 230899389 1) .v) (.rational 585077073 1)) .v) (.rational 409069304 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 885272020 1) .v) (.rational 2173148166 1))
    .v) (.rational 1464592219 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2021552370 1) .v) (.rational 4800466738 1)) .v) (.rational 3109332855 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3057267996 1) .v) (.rational 7013799362 1)) .v)
    (.rational 4353160361 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3219927295 1) .v) (.rational 7129125344 1)) .v) (.rational 4227984300 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2416363532 1) .v) (.rational 5159783516 1)) .v)
    (.rational 2916857829 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1298446424 1) .v) (.rational 2673514540 1)) .v) (.rational 1438050729 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 494253705 1) .v) (.rational 981586858 1)) .v)
    (.rational 501934180 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 129437286
    1) .v) (.rational 248125587 1)) .v) (.rational 120640946 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 22015166 1) .v) (.rational 40766738 1)) .v) (.rational 18866274
    1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 2166468 1) .v) (.rational
    3875198 1)) .v) (.rational 1708730 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 92179 1) .v) (.rational 158844 1)) .v) (.rational 66665 1)) (.pow .g 12))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    7060553 1) .v) (.rational 17450312 1)) .v) (.rational 11486622 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 63544977 1) .v) (.rational 153491654 1)) .v) (.rational 98522363 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 258872814 1) .v) (.rational 610298387 1)) .v)
    (.rational 381176889 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 630629700
    1) .v) (.rational 1449102778 1)) .v) (.rational 878705125 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1022059410 1) .v) (.rational 2286171971 1)) .v) (.rational
    1342803411 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1159630962 1) .v)
    (.rational 2522003931 1)) .v) (.rational 1431591818 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 943259615 1) .v) (.rational 1992553743 1)) .v) (.rational 1090750354
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 553419978 1) .v) (.rational
    1134616735 1)) .v) (.rational 597868158 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 232050570 1) .v) (.rational 461507283 1)) .v) (.rational 233761300 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 67681425 1) .v) (.rational 130548251 1)) .v)
    (.rational 63511211 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 13002939 1)
    .v) (.rational 24322594 1)) .v) (.rational 11362181 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1472958 1) .v) (.rational 2671019 1)) .v) (.rational 1198061 1)) (.pow
    .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 74099 1) .v) (.rational 130078 1)) .v)
    (.rational 55979 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1126392 1) .v) (.rational 2640200
    1)) .v) (.rational 1602524 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 10700724 1) .v)
    (.rational 24663864 1)) .v) (.rational 14704192 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 46150904 1) .v) (.rational 104480952 1)) .v) (.rational 61087148 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 119414222 1) .v) (.rational 265224528 1)) .v)
    (.rational 151820746 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 206321378
    1) .v) (.rational 449042204 1)) .v) (.rational 251213114 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 250599743 1) .v) (.rational 533825588 1)) .v) (.rational
    291341813 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 219252705 1) .v)
    (.rational 456618204 1)) .v) (.rational 242671611 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 139122607 1) .v) (.rational 282977908 1)) .v) (.rational 146195581 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 63494017 1) .v) (.rational
    126024508 1)) .v) (.rational 63196111 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20310873 1) .v) (.rational 39311204 1)) .v) (.rational 19110479 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4319291 1) .v) (.rational 8147708 1)) .v)
    (.rational 3836469 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 547831 1)
    .v) (.rational 1006700 1)) .v) (.rational 458869 1)) (.pow .g 11))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 31313 1) .v) (.rational 56016 1)) .v) (.rational 24703 1)) (.pow .g
    12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 83078 1) .v) (.rational 185010 1)) .v) (.rational 104696 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 830780 1) .v) (.rational 1828850 1)) .v) (.rational
    1022652 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3781000 1) .v) (.rational
    8220485 1)) .v) (.rational 4537194 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10351770 1) .v) (.rational 22207265 1)) .v) (.rational 12083895 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 18981460 1) .v) (.rational 40139284 1)) .v)
    (.rational 21505220 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 24548336 1)
    .v) (.rational 51118352 1)) .v) (.rational 26928892 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 22952440 1) .v) (.rational 47016382 1)) .v) (.rational 24318644 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 15627740 1) .v) (.rational 31458854
    1)) .v) (.rational 15953578 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7688470 1) .v) (.rational 15195070 1)) .v) (.rational 7544720 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2665060 1) .v) (.rational 5166854 1)) .v) (.rational
    2508720 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 617808 1) .v)
    (.rational 1174197 1)) .v) (.rational 556946 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 86010 1) .v) (.rational 160177 1)) .v) (.rational 74167 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5440 1) .v) (.rational 9924 1)) .v) (.rational
    4484 1)) (.pow .g 12))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0324

namespace FullLow0325
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  6*SmallGap.PolarCoefficientsLow4.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    24*SmallGap.PolarCoefficientsLow3.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsLow4.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    80*SmallGap.PolarCoefficientsLow2.c050 e f g v*((e+f)*(e+f+g))^5+
    120*SmallGap.PolarCoefficientsLow3.c050 e f g v*e*((e+f)*(e+f+g))^5+
    60*SmallGap.PolarCoefficientsLow4.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow4.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    5*SmallGap.PolarCoefficientsLow3.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow4.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    18*SmallGap.PolarCoefficientsLow2.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    15*SmallGap.PolarCoefficientsLow3.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsLow4.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    56*SmallGap.PolarCoefficientsLow1.c140 e f g v*((e+f)*(e+f+g))^4+
    72*SmallGap.PolarCoefficientsLow2.c140 e f g v*e*((e+f)*(e+f+g))^4+
    30*SmallGap.PolarCoefficientsLow3.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow4.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow3.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow3.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    13*SmallGap.PolarCoefficientsLow1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsLow3.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    38*SmallGap.PolarCoefficientsLow0.c230 e f g v*((e+f)*(e+f+g))^3+
    39*SmallGap.PolarCoefficientsLow1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow3.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    9*SmallGap.PolarCoefficientsLow0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    18*SmallGap.PolarCoefficientsLow0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(36*SmallGap.ReducedLayers.low0_010_0 e g v*e^1+90*SmallGap.ReducedLayers.low0_010_1
    e g v*e^2+120*SmallGap.ReducedLayers.low0_010_2 e g v*e^3+90*SmallGap.ReducedLayers.low0_010_3
    e g v*e^4+36*SmallGap.ReducedLayers.low0_010_4 e g v*e^5+6*SmallGap.ReducedLayers.low0_010_5 e
    g v*e^6+84*SmallGap.ReducedLayers.low0_001_0 e g v*e^2+140*SmallGap.ReducedLayers.low0_001_1 e
    g v*e^3+140*SmallGap.ReducedLayers.low0_001_2 e g v*e^4+84*SmallGap.ReducedLayers.low0_001_3 e
    g v*e^5+28*SmallGap.ReducedLayers.low0_001_4 e g v*e^6+4*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^7)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_1 e g v+12*SmallGap.ReducedLayers.low1_020_2 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_020_3 e g v*e^2+12*SmallGap.ReducedLayers.low1_020_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_020_5 e g v*e^4+3*SmallGap.ReducedLayers.low1_011_0 e g
    v+15*SmallGap.ReducedLayers.low1_011_1 e g v*e^1+30*SmallGap.ReducedLayers.low1_011_2 e g
    v*e^2+30*SmallGap.ReducedLayers.low1_011_3 e g v*e^3+15*SmallGap.ReducedLayers.low1_011_4 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_011_5 e g v*e^5+6*SmallGap.ReducedLayers.low1_002_0 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_002_1 e g v*e^2+20*SmallGap.ReducedLayers.low1_002_2 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_002_3 e g v*e^4+6*SmallGap.ReducedLayers.low1_002_4 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_002_5 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 22680 1) .v) (.rational 942000 1)) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 12600 1) .v) (.rational 375480 1)) .v) (.rational 7282926 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 31500 1) .v) (.rational 551880 1)) .v) (.rational 9056808 1)) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 212212 1) .v) (.rational 3014312
    1)) .v) (.rational 35236898 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 636636 1) .v)
    (.rational 5940424 1)) .v) (.rational 60126252 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 689976 1) .v) (.rational 3563336 1)) .v) (.rational 34845222 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1679944 1) .v)
    (.rational 15516074 1)) .v) (.rational 119656947 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5879804 1) .v) (.rational 38851365 1)) .v) (.rational 260899061 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7959588 1) .v) (.rational 34565923 1)) .v) (.rational
    208471148 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5199460 1) .v)
    (.rational 13084883 1)) .v) (.rational 73999721 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8248042 1) .v) (.rational 56982206
    1)) .v) (.rational 303324150 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 32992168 1) .v)
    (.rational 174628690 1)) .v) (.rational 810319661 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 53292568 1) .v) (.rational 206700564 1)) .v) (.rational 834577086 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 44405116 1) .v) (.rational 119765220 1)) .v)
    (.rational 415201079 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 20096110
    1) .v) (.rational 35661426 1)) .v) (.rational 101698254 1)) (.pow .g 4)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 27970896 1)
    .v) (.rational 157018888 1)) .v) (.rational 595723941 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 125869032 1) .v) (.rational 572147269 1)) .v) (.rational 1897381889 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 235556456 1) .v) (.rational 846507516 1)) .v)
    (.rational 2418647991 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 237058780
    1) .v) (.rational 657956028 1)) .v) (.rational 1577069250 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 138175764 1) .v) (.rational 291344926 1)) .v) (.rational
    557693928 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 46486868 1) .v)
    (.rational 74762931 1)) .v) (.rational 104618363 1)) (.pow .g 5)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    69138757 1) .v) (.rational 332646982 1)) .v) (.rational 927165787 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 345693785 1) .v) (.rational 1407678710 1)) .v) (.rational 3453297137
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 734175981 1) .v) (.rational 2497242106
    1)) .v) (.rational 5299865601 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    862541214 1) .v) (.rational 2424446134 1)) .v) (.rational 4338695409 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 611033479 1) .v) (.rational 1412957554 1)) .v)
    (.rational 2053398835 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 266120085
    1) .v) (.rational 510423770 1)) .v) (.rational 572018958 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 69174695 1) .v) (.rational 113221810 1)) .v) (.rational 92339911
    1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 128188798 1) .v) (.rational 547396638 1)) .v)
    (.rational 1157245039 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 705038389 1) .v)
    (.rational 2638757377 1)) .v) (.rational 4965173280 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1673294767 1) .v) (.rational 5448178335 1)) .v) (.rational 8982769147 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2242038534 1) .v) (.rational 6317739055 1))
    .v) (.rational 8943800001 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1861830580 1) .v) (.rational 4537535516 1)) .v) (.rational 5376999576 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 988829261 1) .v) (.rational 2098981783 1)) .v)
    (.rational 2023228678 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 333670043
    1) .v) (.rational 628030831 1)) .v) (.rational 480653404 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 68333256 1) .v) (.rational 117518941 1)) .v) (.rational 71205223
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 180775675 1) .v) (.rational
    700890756 1)) .v) (.rational 1161796955 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1084654050 1) .v) (.rational 3788510564 1)) .v) (.rational 5669009001 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2842639940 1) .v) (.rational 8904219278 1)) .v) (.rational
    11877929146 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4270537575 1) .v)
    (.rational 11963381766 1)) .v) (.rational 14018345941 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4055601798 1) .v) (.rational 10163872910 1)) .v) (.rational 10292166768
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2530376292 1) .v) (.rational
    5701580494 1)) .v) (.rational 4911542774 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1042958540 1) .v) (.rational 2136857538 1)) .v) (.rational 1549956620 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 277621863 1) .v) (.rational 526673522 1))
    .v) (.rational 322576280 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    44994199 1) .v) (.rational 80907090 1)) .v) (.rational 42778589 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 194555552 1) .v) (.rational 694942072 1)) .v)
    (.rational 933135193 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1264611088 1) .v)
    (.rational 4158219642 1)) .v) (.rational 5118751862 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3625034474 1) .v) (.rational 10939206042 1)) .v) (.rational 12228880547 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6026967639 1) .v) (.rational 16661836321
    1)) .v) (.rational 16741051002 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6428673213 1) .v) (.rational 16285469801 1)) .v) (.rational 14554221838 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4592855118 1) .v) (.rational 10695149115 1)) .v)
    (.rational 8426034397 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2225689084 1) .v) (.rational 4797252392 1)) .v) (.rational 3316117370 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 723917447 1) .v) (.rational 1460237717 1)) .v)
    (.rational 888316888 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 152484937
    1) .v) (.rational 292010339 1)) .v) (.rational 158387962 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 19325424 1) .v) (.rational 35667865 1)) .v) (.rational 17612693
    1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 158827661
    1) .v) (.rational 527533140 1)) .v) (.rational 591400667 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1111793627 1) .v) (.rational 3457858070 1)) .v) (.rational 3608413935 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3458612765 1) .v) (.rational 10049583825 1)) .v)
    (.rational 9694107026 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6298359439 1) .v) (.rational 17073006272 1)) .v) (.rational 15114327925 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7442630886 1) .v) (.rational 18818395733 1)) .v)
    (.rational 15184372461 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5975941016 1) .v) (.rational 14117561636 1)) .v) (.rational 10325512152 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3316553526 1) .v) (.rational 7349429293 1)) .v)
    (.rational 4859292653 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1267810791 1) .v) (.rational 2652385374 1)) .v) (.rational 1588208034 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 326001657 1) .v) (.rational 649433103 1)) .v)
    (.rational 354749984 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 53612239
    1) .v) (.rational 102635386 1)) .v) (.rational 51741974 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5120501 1) .v) (.rational 9483046 1)) .v) (.rational 4462747 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    96733572 1) .v) (.rational 300506822 1)) .v) (.rational 288857166 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 725501790 1) .v) (.rational 2139411545 1)) .v) (.rational 1941347079
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2433283372 1) .v) (.rational 6798252807
    1)) .v) (.rational 5793830393 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4812898103 1) .v) (.rational 12722258508 1)) .v) (.rational 10131122901 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6232522680 1) .v) (.rational 15578617959 1)) .v)
    (.rational 11536300812 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5544572000 1) .v) (.rational 13112228707 1)) .v) (.rational 8994803603 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3457095785 1) .v) (.rational 7749988450 1)) .v)
    (.rational 4914593116 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1512081747 1) .v) (.rational 3224363013 1)) .v) (.rational 1891132514 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 456217614 1) .v) (.rational 929789751 1)) .v)
    (.rational 506182176 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 91355076
    1) .v) (.rational 178871979 1)) .v) (.rational 90937195 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 11279865 1) .v) (.rational 21295502 1)) .v) (.rational 10172996
    1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 742340 1) .v) (.rational
    1348796 1)) .v) (.rational 606456 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 42599231 1) .v) (.rational 124227046 1))
    .v) (.rational 104722451 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 340793848 1) .v)
    (.rational 953832438 1)) .v) (.rational 768511878 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1225471642 1) .v) (.rational 3286341808 1)) .v) (.rational 2521140780 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2614409154 1) .v) (.rational 6708281342 1))
    .v) (.rational 4881476856 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3677574828 1) .v) (.rational 9020531017 1)) .v) (.rational 6204106495 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3584250050 1) .v) (.rational 8402134912 1)) .v)
    (.rational 5445610571 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2474183411 1) .v) (.rational 5546093061 1)) .v) (.rational 3380625552 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1214109547 1) .v) (.rational 2606229124 1)) .v)
    (.rational 1493323347 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 418212806
    1) .v) (.rational 861647689 1)) .v) (.rational 464653865 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 97936596 1) .v) (.rational 194157850 1)) .v) (.rational 98803811
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 14651171 1) .v) (.rational
    27993423 1)) .v) (.rational 13481804 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1237261 1) .v) (.rational 2274286 1)) .v) (.rational 1037025 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 43367 1) .v) (.rational 75908 1)) .v) (.rational
    32541 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 12819296 1) .v) (.rational 35171432 1)) .v) (.rational
    26490208 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 108964016 1) .v) (.rational
    289537109 1)) .v) (.rational 210642485 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    418088654 1) .v) (.rational 1074271806 1)) .v) (.rational 752762788 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 956384585 1) .v) (.rational 2373008479 1)) .v)
    (.rational 1596932208 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1450705197 1) .v) (.rational 3471930513 1)) .v) (.rational 2237622525 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1534901212 1) .v) (.rational 3540429380 1)) .v)
    (.rational 2179785778 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1159482577 1) .v) (.rational 2576797425 1)) .v) (.rational 1512609505 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 628800777 1) .v) (.rational 1346637683 1)) .v)
    (.rational 752791952 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 242357990
    1) .v) (.rational 500495654 1)) .v) (.rational 266382483 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 64540162 1) .v) (.rational 128631253 1)) .v) (.rational 65224505
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 11224571 1) .v) (.rational
    21598363 1)) .v) (.rational 10443175 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1137936 1) .v) (.rational 2110896 1)) .v) (.rational 972960 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 50403 1) .v) (.rational 89607 1)) .v) (.rational
    39204 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 2359510 1) .v) (.rational 6098686 1)) .v) (.rational
    4166228 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 21235590 1) .v) (.rational 53561352
    1)) .v) (.rational 35657756 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 86578096 1)
    .v) (.rational 212795027 1)) .v) (.rational 137756671 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 211284728 1) .v) (.rational 505360794 1)) .v) (.rational 317411670 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 343475055 1) .v) (.rational
    798484310 1)) .v) (.rational 485489067 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 391532785 1) .v) (.rational 883703766 1)) .v) (.rational 519013469 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 320628964 1) .v) (.rational 702002658 1))
    .v) (.rational 397503618 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    189882183 1) .v) (.rational 403059670 1)) .v) (.rational 219706587 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 80632898 1) .v) (.rational 165889554 1)) .v) (.rational
    86961520 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 23918865 1) .v)
    (.rational 47688610 1)) .v) (.rational 24029567 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4699200 1) .v) (.rational 9077195 1)) .v) (.rational 4395611 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 548249 1) .v) (.rational 1024976 1)) .v)
    (.rational 476727 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 28677 1) .v)
    (.rational 51738 1)) .v) (.rational 23061 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 200430 1)
    .v) (.rational 488402 1)) .v) (.rational 306296 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1904085 1) .v) (.rational 4556741 1)) .v) (.rational 2805484 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8218457 1) .v) (.rational 19292155 1)) .v) (.rational
    11641508 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 21302717 1) .v)
    (.rational 48990102 1)) .v) (.rational 28923793 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36918410 1) .v) (.rational 83073852 1)) .v) (.rational 47901130 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 45050405 1) .v) (.rational 99072980 1)) .v)
    (.rational 55690815 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 39679563 1)
    .v) (.rational 85189916 1)) .v) (.rational 46602101 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25411945 1) .v) (.rational 53212878 1)) .v) (.rational 28283693 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 11743327 1) .v) (.rational 23966152
    1)) .v) (.rational 12360813 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3819090 1) .v) (.rational 7591767 1)) .v) (.rational 3795705 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 829880 1) .v) (.rational 1606073 1)) .v) (.rational 777899 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 108238 1) .v) (.rational 203820
    1)) .v) (.rational 95582 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 6413
    1) .v) (.rational 11738 1)) .v) (.rational 5325 1)) (.pow .g 12))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0325

namespace FullLow0326
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  24*SmallGap.PolarCoefficientsLow4.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    80*SmallGap.PolarCoefficientsLow3.c050 e f g v*((e+f)*(e+f+g))^5+
    120*SmallGap.PolarCoefficientsLow4.c050 e f g v*e*((e+f)*(e+f+g))^5+
    5*SmallGap.PolarCoefficientsLow4.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    18*SmallGap.PolarCoefficientsLow3.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    15*SmallGap.PolarCoefficientsLow4.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    56*SmallGap.PolarCoefficientsLow2.c140 e f g v*((e+f)*(e+f+g))^4+
    72*SmallGap.PolarCoefficientsLow3.c140 e f g v*e*((e+f)*(e+f+g))^4+
    30*SmallGap.PolarCoefficientsLow4.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow4.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow3.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow4.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    13*SmallGap.PolarCoefficientsLow2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow3.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsLow4.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    38*SmallGap.PolarCoefficientsLow1.c230 e f g v*((e+f)*(e+f+g))^3+
    39*SmallGap.PolarCoefficientsLow2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow3.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow4.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    9*SmallGap.PolarCoefficientsLow1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    25*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2+
    18*SmallGap.PolarCoefficientsLow1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    6*SmallGap.PolarCoefficientsLow0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_010_0 e g v+36*SmallGap.ReducedLayers.low0_010_1 e g
    v*e^1+90*SmallGap.ReducedLayers.low0_010_2 e g v*e^2+120*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^3+90*SmallGap.ReducedLayers.low0_010_4 e g v*e^4+36*SmallGap.ReducedLayers.low0_010_5 e g
    v*e^5+6*SmallGap.ReducedLayers.low0_010_6 e g v*e^6+28*SmallGap.ReducedLayers.low0_001_0 e g
    v*e^1+84*SmallGap.ReducedLayers.low0_001_1 e g v*e^2+140*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^3+140*SmallGap.ReducedLayers.low0_001_3 e g v*e^4+84*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^5+28*SmallGap.ReducedLayers.low0_001_5 e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_2 e g v+12*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_020_4 e g v*e^2+12*SmallGap.ReducedLayers.low1_020_5 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_020_6 e g v*e^4+3*SmallGap.ReducedLayers.low1_011_1 e g
    v+15*SmallGap.ReducedLayers.low1_011_2 e g v*e^1+30*SmallGap.ReducedLayers.low1_011_3 e g
    v*e^2+30*SmallGap.ReducedLayers.low1_011_4 e g v*e^3+15*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_011_6 e g v*e^5+1*SmallGap.ReducedLayers.low1_002_0 e g
    v+6*SmallGap.ReducedLayers.low1_002_1 e g v*e^1+15*SmallGap.ReducedLayers.low1_002_2 e g
    v*e^2+20*SmallGap.ReducedLayers.low1_002_3 e g v*e^3+15*SmallGap.ReducedLayers.low1_002_4 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_002_5 e g v*e^5+1*SmallGap.ReducedLayers.low1_002_6 e g
    v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    23520 1) .v) (.rational 1098720 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 10920
    1) .v) (.rational 370272 1)) .v) (.rational 8185758 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27300 1) .v) (.rational 533904 1)) .v) (.rational 9982392 1)) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 179564 1) .v) (.rational 2834776 1)) .v)
    (.rational 38014438 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 538692 1) .v) (.rational
    5438384 1)) .v) (.rational 63426426 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    584052 1) .v) (.rational 3066784 1)) .v) (.rational 35577570 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1386000 1) .v) (.rational
    13968262 1)) .v) (.rational 123369365 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4851000
    1) .v) (.rational 34030927 1)) .v) (.rational 262675665 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6569640 1) .v) (.rational 28839209 1)) .v) (.rational 202949614 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4296600 1) .v) (.rational 9865513 1)) .v)
    (.rational 68283201 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 6609948 1) .v) (.rational 49271032 1)) .v) (.rational
    297564845 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 26439792 1) .v) (.rational
    147469422 1)) .v) (.rational 776473082 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    42726544 1) .v) (.rational 168521563 1)) .v) (.rational 774575606 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 35640360 1) .v) (.rational 92466261 1)) .v) (.rational
    367544517 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 16163316 1) .v)
    (.rational 25236565 1)) .v) (.rational 83105395 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21643810 1) .v)
    (.rational 130464980 1)) .v) (.rational 553428359 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 97397145 1) .v) (.rational 466735989 1)) .v) (.rational 1724923498 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 182353408 1) .v) (.rational 674293356 1)) .v)
    (.rational 2138307079 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 183716918
    1) .v) (.rational 508365425 1)) .v) (.rational 1342489595 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 107297166 1) .v) (.rational 216946233 1)) .v) (.rational
    449432019 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 36210625 1) .v)
    (.rational 53602410 1)) .v) (.rational 77384357 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 51217664 1)
    .v) (.rational 264403022 1)) .v) (.rational 810815076 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 256088320 1) .v) (.rational 1103977892 1)) .v) (.rational 2964388613 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 544136338 1) .v) (.rational 1928344387 1)) .v)
    (.rational 4448752328 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 640015432
    1) .v) (.rational 1840366864 1)) .v) (.rational 3543412264 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 454326872 1) .v) (.rational 1054414595 1)) .v) (.rational
    1621523720 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 198497548 1) .v)
    (.rational 375868161 1)) .v) (.rational 434161760 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 51824150 1) .v) (.rational 83057356 1)) .v) (.rational 67420550 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 89848420 1) .v) (.rational 411982854 1)) .v)
    (.rational 944528483 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 494166310 1) .v)
    (.rational 1967135498 1)) .v) (.rational 3992601036 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1173462662 1) .v) (.rational 4021385132 1)) .v) (.rational 7104105808 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1574334654 1) .v) (.rational 4618907456 1))
    .v) (.rational 6946254646 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1310292624 1) .v) (.rational 3291725832 1)) .v) (.rational 4099639950 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 698293302 1) .v) (.rational 1516861219 1)) .v)
    (.rational 1518717959 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 236761442
    1) .v) (.rational 455030783 1)) .v) (.rational 358738464 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 48786326 1) .v) (.rational 86037259 1)) .v) (.rational 53903237
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 117994524 1) .v) (.rational
    491500118 1)) .v) (.rational 873698472 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    707967144 1) .v) (.rational 2638688778 1)) .v) (.rational 4215245965 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1856573443 1) .v) (.rational 6162308123 1)) .v) (.rational
    8730181991 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2793168395 1) .v)
    (.rational 8235984181 1)) .v) (.rational 10190139720 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2659204121 1) .v) (.rational 6975439544 1)) .v) (.rational 7415345370
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1665444698 1) .v) (.rational
    3914498322 1)) .v) (.rational 3525227255 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 690128705 1) .v) (.rational 1474774836 1)) .v) (.rational 1118642587 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 184998347 1) .v) (.rational 367407204 1))
    .v) (.rational 237229917 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    30242191 1) .v) (.rational 57306363 1)) .v) (.rational 32445806 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 115756378 1) .v) (.rational 443994536 1)) .v)
    (.rational 634351911 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 752416457 1) .v)
    (.rational 2643480049 1)) .v) (.rational 3450903918 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2158309160 1) .v) (.rational 6925171834 1)) .v) (.rational 8180542929 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3594119353 1) .v) (.rational 10518036855 1))
    .v) (.rational 11128395352 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3844216094 1) .v) (.rational 10273272132 1)) .v) (.rational 9641403868 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2757948816 1) .v) (.rational 6762756964 1)) .v)
    (.rational 5590135684 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1344435776 1) .v) (.rational 3052656842 1)) .v) (.rational 2219682824 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 440770825 1) .v) (.rational 939278304 1)) .v)
    (.rational 605412929 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 93787744
    1) .v) (.rational 190637791 1)) .v) (.rational 110782541 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12030977 1) .v) (.rational 23683460 1)) .v) (.rational 12666827
    1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 83656774 1)
    .v) (.rational 297843320 1)) .v) (.rational 353416234 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 585597418 1) .v) (.rational 1944916708 1)) .v) (.rational 2143222921 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1823079108 1) .v) (.rational 5636319167 1)) .v)
    (.rational 5728067607 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3325708214 1) .v) (.rational 9561386022 1)) .v) (.rational 8899720535 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3941637990 1) .v) (.rational 10544695729 1)) .v)
    (.rational 8934850625 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3179269784 1) .v) (.rational 7936663098 1)) .v) (.rational 6097299430 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1775876608 1) .v) (.rational 4159591472 1)) .v)
    (.rational 2896173213 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 684840718
    1) .v) (.rational 1517260958 1)) .v) (.rational 961833633 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 178130408 1) .v) (.rational 376953410 1)) .v) (.rational
    219638291 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 29720682 1) .v)
    (.rational 60630353 1)) .v) (.rational 32845698 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2887832 1) .v) (.rational 5704606 1)) .v) (.rational 2894908 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 43252960 1)
    .v) (.rational 143616120 1)) .v) (.rational 145568788 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 324397200 1) .v) (.rational 1019375249 1)) .v) (.rational 973833511 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1088890694 1) .v) (.rational 3232537975 1)) .v)
    (.rational 2895932832 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2157765311 1) .v) (.rational 6045238012 1)) .v) (.rational 5054031165 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2803127648 1) .v) (.rational 7411403795 1)) .v)
    (.rational 5758144019 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2505836883 1) .v) (.rational 6261063650 1)) .v) (.rational 4507769359 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1573275640 1) .v) (.rational 3725800441 1)) .v)
    (.rational 2484205476 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 694691589
    1) .v) (.rational 1566350854 1)) .v) (.rational 969296305 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 212263144 1) .v) (.rational 458203813 1)) .v) (.rational
    264451267 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 43207981 1) .v)
    (.rational 89755325 1)) .v) (.rational 48606674 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5447374 1) .v) (.rational 10909744 1)) .v) (.rational 5564934 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 367740 1) .v) (.rational 705294 1)) .v)
    (.rational 337554 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 15146420 1) .v) (.rational 47030278 1)) .v)
    (.rational 41674175 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 121171360 1) .v)
    (.rational 360202248 1)) .v) (.rational 304708765 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 436100211 1) .v) (.rational 1239122162 1)) .v) (.rational 996940223 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 932202677 1) .v) (.rational 2528790988 1))
    .v) (.rational 1928015169 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1315710014 1) .v) (.rational 3405672647 1)) .v) (.rational 2452769955 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1288922163 1) .v) (.rational 3184405512 1)) .v)
    (.rational 2161281408 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 896304257
    1) .v) (.rational 2116147418 1)) .v) (.rational 1352004794 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 444311526 1) .v) (.rational 1004609125 1)) .v) (.rational
    604489555 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 155150419 1) .v)
    (.rational 336870171 1)) .v) (.rational 191288291 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 36995087 1) .v) (.rational 77319794 1)) .v) (.rational 41546533 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 5667140 1) .v) (.rational 11403542
    1)) .v) (.rational 5806895 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    493675 1) .v) (.rational 951197 1)) .v) (.rational 457522 1)) (.pow .g 11))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 18027 1) .v) (.rational 32646 1)) .v) (.rational 14619 1)) (.pow
    .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 3220680 1) .v) (.rational 9365376 1)) .v) (.rational 7390612 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 27375780 1) .v) (.rational 76931912 1)) .v) (.rational
    58587120 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 105135132 1) .v) (.rational
    285094246 1)) .v) (.rational 208915732 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 240997890 1) .v) (.rational 629789301 1)) .v) (.rational 442825693 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 366861526 1) .v) (.rational 923033195 1))
    .v) (.rational 621116545 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    390262574 1) .v) (.rational 944921129 1)) .v) (.rational 607190529 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 297111042 1) .v) (.rational 692315171 1)) .v) (.rational
    424189597 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 162869960 1) .v)
    (.rational 365444759 1)) .v) (.rational 213372117 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 63694660 1) .v) (.rational 137742201 1)) .v) (.rational 76657253 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 17294226 1) .v) (.rational 36069515
    1)) .v) (.rational 19147255 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3086134 1) .v) (.rational 6203723 1)) .v) (.rational 3141527 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 323762 1) .v) (.rational 624824 1)) .v) (.rational 301062
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 15018 1) .v) (.rational 27528
    1)) .v) (.rational 12510 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 314274 1) .v) (.rational 856334 1)) .v)
    (.rational 610616 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2828466 1) .v) (.rational
    7506576 1)) .v) (.rational 5212036 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    11542840 1) .v) (.rational 29793958 1)) .v) (.rational 20097923 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 28230824 1) .v) (.rational 70773966 1)) .v) (.rational
    46276213 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 46065665 1) .v)
    (.rational 112031880 1)) .v) (.rational 70846627 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 52811871 1) .v) (.rational 124477106 1)) .v) (.rational 75975732 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 43603964 1) .v) (.rational 99535826 1)) .v)
    (.rational 58537218 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 26117305 1)
    .v) (.rational 57717126 1)) .v) (.rational 32665046 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11261574 1) .v) (.rational 24088636 1)) .v) (.rational 13109658 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3409255 1) .v) (.rational 7056630
    1)) .v) (.rational 3691472 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    687992 1) .v) (.rational 1376832 1)) .v) (.rational 691931 1)) (.pow .g 10))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 83143 1) .v) (.rational 160500 1)) .v) (.rational 77357 1)) (.pow
    .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 4555 1) .v) (.rational 8438 1)) .v)
    (.rational 3883 1)) (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0326

namespace FullLow0327
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  80*SmallGap.PolarCoefficientsLow4.c050 e f g v*((e+f)*(e+f+g))^5+
    18*SmallGap.PolarCoefficientsLow4.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    56*SmallGap.PolarCoefficientsLow3.c140 e f g v*((e+f)*(e+f+g))^4+
    72*SmallGap.PolarCoefficientsLow4.c140 e f g v*e*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow4.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    13*SmallGap.PolarCoefficientsLow3.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow4.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    38*SmallGap.PolarCoefficientsLow2.c230 e f g v*((e+f)*(e+f+g))^3+
    39*SmallGap.PolarCoefficientsLow3.c230 e f g v*e*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow4.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow3.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    9*SmallGap.PolarCoefficientsLow2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow3.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    25*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    18*SmallGap.PolarCoefficientsLow2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow3.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    16*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsLow1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_010_1 e g v+36*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^1+90*SmallGap.ReducedLayers.low0_010_3 e g v*e^2+120*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^3+90*SmallGap.ReducedLayers.low0_010_5 e g v*e^4+36*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^5+4*SmallGap.ReducedLayers.low0_001_0 e g v+28*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^1+84*SmallGap.ReducedLayers.low0_001_2 e g v*e^2+140*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^3+140*SmallGap.ReducedLayers.low0_001_4 e g v*e^4+84*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_3 e g v+12*SmallGap.ReducedLayers.low1_020_4 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_020_5 e g v*e^2+12*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_020_7 e g v*e^4+3*SmallGap.ReducedLayers.low1_011_2 e g
    v+15*SmallGap.ReducedLayers.low1_011_3 e g v*e^1+30*SmallGap.ReducedLayers.low1_011_4 e g
    v*e^2+30*SmallGap.ReducedLayers.low1_011_5 e g v*e^3+15*SmallGap.ReducedLayers.low1_011_6 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_011_7 e g v*e^5+1*SmallGap.ReducedLayers.low1_002_1 e g
    v+6*SmallGap.ReducedLayers.low1_002_2 e g v*e^1+15*SmallGap.ReducedLayers.low1_002_3 e g
    v*e^2+20*SmallGap.ReducedLayers.low1_002_4 e g v*e^3+15*SmallGap.ReducedLayers.low1_002_5 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_002_6 e g v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 17400 1)
    .v) (.rational 942000 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 6480 1) .v)
    (.rational 261528 1)) .v) (.rational 6771360 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    16200 1) .v) (.rational 369816 1)) .v) (.rational 8087040 1)) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 104440 1) .v) (.rational 1915112 1)) .v) (.rational
    30196004 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 313320 1) .v) (.rational 3570520 1))
    .v) (.rational 49174776 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 339840 1) .v)
    (.rational 1874288 1)) .v) (.rational 26602740 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 788816 1) .v) (.rational 9051626 1)) .v)
    (.rational 93604619 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2760856 1) .v) (.rational
    21407029 1)) .v) (.rational 194213443 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    3740712 1) .v) (.rational 17140387 1)) .v) (.rational 144517964 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2449640 1) .v) (.rational 5102147 1)) .v) (.rational
    45624895 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 3663714 1) .v) (.rational 30710866 1)) .v) (.rational 214476296 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 14654856 1) .v) (.rational 89603362 1)) .v)
    (.rational 545575431 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 23694000 1) .v)
    (.rational 98387998 1)) .v) (.rational 525304880 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 19790004 1) .v) (.rational 50464826 1)) .v) (.rational 235919851 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8997102 1) .v) (.rational 12143580 1)) .v)
    (.rational 48101422 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 11596292 1) .v) (.rational 78151764 1)) .v)
    (.rational 376586064 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 52183314 1) .v)
    (.rational 274227624 1)) .v) (.rational 1146903638 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 97755064 1) .v) (.rational 386095886 1)) .v) (.rational 1379582727 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 98620592 1) .v) (.rational 281283364 1)) .v)
    (.rational 830678604 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 57740952
    1) .v) (.rational 114912708 1)) .v) (.rational 260987601 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 19561966 1) .v) (.rational 27080744 1)) .v) (.rational 40271024
    1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 26237650 1) .v) (.rational 151072770 1)) .v) (.rational
    516531215 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 131188250 1) .v) (.rational
    622185376 1)) .v) (.rational 1852296756 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    278924507 1) .v) (.rational 1069645457 1)) .v) (.rational 2716176734 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 328568528 1) .v) (.rational 1003126442 1)) .v)
    (.rational 2103609777 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 233865592
    1) .v) (.rational 564957926 1)) .v) (.rational 930780835 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 102597578 1) .v) (.rational 198912618 1)) .v) (.rational
    240066041 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 26939347 1) .v)
    (.rational 43902267 1)) .v) (.rational 36208122 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    43330054 1) .v) (.rational 221134620 1)) .v) (.rational 556318863 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 238315297 1) .v) (.rational 1045826806 1)) .v) (.rational 2316467446
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 566325289 1) .v) (.rational 2117286966
    1)) .v) (.rational 4055021541 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    761099073 1) .v) (.rational 2410312841 1)) .v) (.rational 3898753630 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 635352932 1) .v) (.rational 1706781058 1)) .v)
    (.rational 2266343302 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 340146667
    1) .v) (.rational 785359606 1)) .v) (.rational 832450450 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 116062169 1) .v) (.rational 236986580 1)) .v) (.rational
    198042720 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 24110107 1) .v)
    (.rational 45424647 1)) .v) (.rational 30693268 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 52419080 1) .v) (.rational 242181170 1)) .v) (.rational 466820044 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 314514480 1) .v) (.rational 1291372530 1)) .v)
    (.rational 2227224109 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 825476098 1) .v)
    (.rational 2997556288 1)) .v) (.rational 4563107904 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1244331090 1) .v) (.rational 3988384344 1)) .v) (.rational 5277305860
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1188643328 1) .v) (.rational
    3372472508 1)) .v) (.rational 3820093434 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 748246052 1) .v) (.rational 1897698192 1)) .v) (.rational 1820458490 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 312272926 1) .v) (.rational 720870038 1))
    .v) (.rational 586146760 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    84488894 1) .v) (.rational 182086426 1)) .v) (.rational 127887259 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 13967272 1) .v) (.rational 28893960 1)) .v) (.rational
    18128196 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 45958112 1)
    .v) (.rational 194509684 1)) .v) (.rational 298875366 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 298727728 1) .v) (.rational 1152239658 1)) .v) (.rational 1612704476 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 857701756 1) .v) (.rational 3006548328 1)) .v)
    (.rational 3796135288 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1431354650 1) .v) (.rational 4556470179 1)) .v) (.rational 5139615177 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1536603486 1) .v) (.rational 4452963665 1)) .v)
    (.rational 4450128825 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1108563324 1) .v) (.rational 2944048010 1)) .v) (.rational 2595508776 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 544639968 1) .v) (.rational 1340821100 1)) .v)
    (.rational 1045849103 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 180416910
    1) .v) (.rational 418220787 1)) .v) (.rational 292122525 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 38889602 1) .v) (.rational 86354473 1)) .v) (.rational 55032514
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 5063748 1) .v) (.rational
    10919738 1)) .v) (.rational 6456868 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 28416514 1) .v) (.rational 110919926 1)) .v) (.rational 140739619
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 198915598 1) .v) (.rational 721437684 1)) .v)
    (.rational 848309638 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 619882343 1) .v)
    (.rational 2084909841 1)) .v) (.rational 2256496581 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1133391284 1) .v) (.rational 3533353034 1)) .v) (.rational 3497442990
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1348552599 1) .v) (.rational
    3902787825 1)) .v) (.rational 3515555768 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1094164644 1) .v) (.rational 2951875164 1)) .v) (.rational 2414551510 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 616281708 1) .v) (.rational 1560876500 1))
    .v) (.rational 1161859685 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    240320088 1) .v) (.rational 576892632 1)) .v) (.rational 393537833 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 63406033 1) .v) (.rational 145775325 1)) .v) (.rational
    92087971 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 10764326 1) .v)
    (.rational 23897314 1)) .v) (.rational 14110439 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1066147 1) .v) (.rational 2287339 1)) .v) (.rational 1264310 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11748838 1)
    .v) (.rational 42468370 1)) .v) (.rational 45829560 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 88116285 1) .v) (.rational 300450409 1)) .v) (.rational 305124191 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 296083861 1) .v) (.rational 950783587 1)) .v)
    (.rational 904218990 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 588114774
    1) .v) (.rational 1777443788 1)) .v) (.rational 1575896539 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 767101501 1) .v) (.rational 2183423577 1)) .v) (.rational
    1798507277 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 689942451 1) .v)
    (.rational 1853706112 1)) .v) (.rational 1416258541 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 436928248 1) .v) (.rational 1112596593 1)) .v) (.rational 789126289 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 195188127 1) .v) (.rational
    473673809 1)) .v) (.rational 313017431 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 60551183 1) .v) (.rational 140880113 1)) .v) (.rational 87217083 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 12563472 1) .v) (.rational 28147162 1)) .v)
    (.rational 16404445 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1620797 1)
    .v) (.rational 3493227 1)) .v) (.rational 1916816 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 112179 1) .v) (.rational 229484 1)) .v) (.rational 117305 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2915946 1) .v) (.rational 9786660 1)) .v) (.rational 9197814 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 23327568 1) .v) (.rational 74743848 1)) .v) (.rational 66979590 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 84046444 1) .v) (.rational 256700624 1)) .v)
    (.rational 218524969 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 180092668
    1) .v) (.rational 523859166 1)) .v) (.rational 422196972 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 255234587 1) .v) (.rational 707016307 1)) .v) (.rational
    537972439 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 251607182 1) .v)
    (.rational 664316214 1)) .v) (.rational 476439371 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 176526247 1) .v) (.rational 445113391 1)) .v) (.rational 300823109 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 88572134 1) .v) (.rational
    213887434 1)) .v) (.rational 136401704 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31428475 1) .v) (.rational 72900843 1)) .v) (.rational 43975917 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7651570 1) .v) (.rational 17077770 1)) .v)
    (.rational 9764769 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1203753 1)
    .v) (.rational 2579601 1)) .v) (.rational 1396822 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 108462 1) .v) (.rational 220736 1)) .v) (.rational 112274 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 4132 1) .v) (.rational 7742 1)) .v)
    (.rational 3610 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 328752 1) .v) (.rational 1026312 1)) .v) (.rational
    855780 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2794392 1) .v) (.rational 8409378 1))
    .v) (.rational 6759426 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10743590 1) .v)
    (.rational 31120534 1)) .v) (.rational 24042950 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 24689085 1) .v) (.rational 68758757 1)) .v) (.rational 50916541 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 37744369 1) .v) (.rational 100996843 1)) .v)
    (.rational 71511894 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 40413724 1)
    .v) (.rational 103889380 1)) .v) (.rational 70208481 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 31054119 1) .v) (.rational 76728981 1)) .v) (.rational 49440922 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 17241752 1) .v) (.rational 40985121
    1)) .v) (.rational 25177120 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6859415 1) .v) (.rational 15701722 1)) .v) (.rational 9200171 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1905264 1) .v) (.rational 4199968 1)) .v) (.rational
    2348019 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 350347 1) .v)
    (.rational 741863 1)) .v) (.rational 395146 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 38247 1) .v) (.rational 77188 1)) .v) (.rational 38941 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1872 1) .v) (.rational 3537 1)) .v) (.rational 1665
    1)) (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0327

namespace FullLow0328
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  56*SmallGap.PolarCoefficientsLow4.c140 e f g v*((e+f)*(e+f+g))^4+
    13*SmallGap.PolarCoefficientsLow4.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    38*SmallGap.PolarCoefficientsLow3.c230 e f g v*((e+f)*(e+f+g))^3+
    39*SmallGap.PolarCoefficientsLow4.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow4.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    9*SmallGap.PolarCoefficientsLow3.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow4.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    25*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    18*SmallGap.PolarCoefficientsLow3.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow4.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    16*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsLow2.c410 e f g v*e*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_010_2 e g v+36*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^1+90*SmallGap.ReducedLayers.low0_010_4 e g v*e^2+120*SmallGap.ReducedLayers.low0_010_5 e g
    v*e^3+90*SmallGap.ReducedLayers.low0_010_6 e g v*e^4+4*SmallGap.ReducedLayers.low0_001_1 e g
    v+28*SmallGap.ReducedLayers.low0_001_2 e g v*e^1+84*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^2+140*SmallGap.ReducedLayers.low0_001_4 e g v*e^3+140*SmallGap.ReducedLayers.low0_001_5 e
    g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_4 e g v+12*SmallGap.ReducedLayers.low1_020_5 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_020_6 e g v*e^2+12*SmallGap.ReducedLayers.low1_020_7 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_020_8 e g v*e^4+3*SmallGap.ReducedLayers.low1_011_3 e g
    v+15*SmallGap.ReducedLayers.low1_011_4 e g v*e^1+30*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^2+30*SmallGap.ReducedLayers.low1_011_6 e g v*e^3+15*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^4+1*SmallGap.ReducedLayers.low1_002_2 e g v+6*SmallGap.ReducedLayers.low1_002_3 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_002_4 e g v*e^2+20*SmallGap.ReducedLayers.low1_002_5 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_002_6 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9000 1) .v) (.rational
    589200 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 2520 1) .v) (.rational 129672
    1)) .v) (.rational 4091580 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 6300 1) .v)
    (.rational 179784 1)) .v) (.rational 4779180 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 39956 1) .v) (.rational 911500 1)) .v) (.rational 17529268 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 119868 1) .v) (.rational 1649336 1)) .v) (.rational
    27809874 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 130068 1) .v) (.rational 797140
    1)) .v) (.rational 14452704 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 296348 1) .v) (.rational 4144834 1)) .v) (.rational 51883029 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1037218 1) .v) (.rational 9499005 1)) .v)
    (.rational 104673112 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1406046 1) .v)
    (.rational 7126619 1)) .v) (.rational 74698324 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 922070 1) .v) (.rational 1739947 1)) .v) (.rational 21856864 1)) (.pow .g
    3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1344200 1) .v) (.rational 13562068 1)) .v) (.rational 112766331 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5376800 1) .v) (.rational 38533676 1)) .v) (.rational 279104296 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8698400 1) .v) (.rational 40504113 1)) .v)
    (.rational 258542037 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7276400 1)
    .v) (.rational 19151403 1)) .v) (.rational 109026613 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3317720 1) .v) (.rational 3816819 1)) .v) (.rational 19424496 1)) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 4118304 1) .v) (.rational 33197640 1)) .v) (.rational 186328246 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 18532368 1) .v) (.rational 114253238 1)) .v) (.rational
    553880248 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 34741264 1) .v) (.rational
    156697184 1)) .v) (.rational 645633113 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 35110040 1) .v) (.rational 110137477 1)) .v) (.rational 372058024 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 20621496 1) .v) (.rational 42901451 1)) .v)
    (.rational 109150350 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7020832 1)
    .v) (.rational 9579485 1)) .v) (.rational 14800344 1)) (.pow .g 5)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    8898492 1) .v) (.rational 61002354 1)) .v) (.rational 237718814 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 44492460 1) .v) (.rational 247928472 1)) .v) (.rational 835968668 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 94678276 1) .v) (.rational 419877746 1)) .v)
    (.rational 1198438011 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 111758344
    1) .v) (.rational 387545726 1)) .v) (.rational 904423320 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 79834840 1) .v) (.rational 215163259 1)) .v) (.rational 389186979
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 35218648 1) .v) (.rational
    75180043 1)) .v) (.rational 98126667 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9319048 1) .v) (.rational 16680697 1)) .v) (.rational 14869256 1)) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 13753244 1) .v) (.rational 83011266 1)) .v) (.rational 233825475
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 75642842 1) .v) (.rational 389026755 1)) .v)
    (.rational 959461636 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 179943554 1) .v)
    (.rational 780777197 1)) .v) (.rational 1654901059 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 242424678 1) .v) (.rational 882685248 1)) .v) (.rational 1570338508 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 203236184 1) .v) (.rational
    623107322 1)) .v) (.rational 905967296 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 109511374 1) .v) (.rational 287684038 1)) .v) (.rational 334633450 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 37703338 1) .v) (.rational 87828954 1)) .v)
    (.rational 81903647 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 7923282 1)
    .v) (.rational 17150495 1)) .v) (.rational 13365174 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 15116128 1) .v) (.rational 81769172 1)) .v) (.rational 174188043 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 90696768 1) .v) (.rational 433134324 1)) .v)
    (.rational 822278572 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 238339538 1) .v)
    (.rational 1000070905 1)) .v) (.rational 1669217136 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 360310650 1) .v) (.rational 1326866357 1)) .v) (.rational 1919309855
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 345892378 1) .v) (.rational
    1123259298 1)) .v) (.rational 1390625698 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 219370060 1) .v) (.rational 636327518 1)) .v) (.rational 670786834 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 92508710 1) .v) (.rational 244924920 1)) .v)
    (.rational 221846861 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 25371202
    1) .v) (.rational 63033970 1)) .v) (.rational 50323054 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4264190 1) .v) (.rational 10211721 1)) .v) (.rational 7414542 1)) (.pow
    .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11522596 1) .v) (.rational
    56368388 1)) .v) (.rational 94825052 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 74896874
    1) .v) (.rational 332195892 1)) .v) (.rational 507690466 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 215345316 1) .v) (.rational 863734214 1)) .v) (.rational 1188063334 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 360533624 1) .v) (.rational 1307741508
    1)) .v) (.rational 1604906944 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    389179810 1) .v) (.rational 1281580394 1)) .v) (.rational 1394721010 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 283105386 1) .v) (.rational 853802638 1)) .v)
    (.rational 823422470 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 140709544
    1) .v) (.rational 394004486 1)) .v) (.rational 339224521 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 47329076 1) .v) (.rational 125165099 1)) .v) (.rational 97663552
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10399014 1) .v) (.rational
    26404395 1)) .v) (.rational 18993626 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1384380 1) .v) (.rational 3408047 1)) .v) (.rational 2281044 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5782116 1) .v) (.rational
    25714502 1)) .v) (.rational 35465820 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 40474812
    1) .v) (.rational 166536808 1)) .v) (.rational 212478828 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 126321154 1) .v) (.rational 480030460 1)) .v) (.rational 562877646 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 231754368 1) .v) (.rational 813416298 1))
    .v) (.rational 871670224 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    277353604 1) .v) (.rational 901406782 1)) .v) (.rational 879669278 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 227002666 1) .v) (.rational 686963826 1)) .v) (.rational
    610512736 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 129423446 1) .v)
    (.rational 367819614 1)) .v) (.rational 299051039 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 51290660 1) .v) (.rational 138330660 1)) .v) (.rational 103778624 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 13812708 1) .v) (.rational 35704807
    1)) .v) (.rational 24951537 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2403398 1) .v) (.rational 5986431 1)) .v) (.rational 3915755 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 244372 1) .v) (.rational 583523 1)) .v) (.rational 355016 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1715868 1) .v) (.rational 6964488 1)) .v) (.rational 8120730 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12869010 1) .v) (.rational 49089726 1)) .v) (.rational 53792358 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 43307042 1) .v) (.rational 155023550 1)) .v)
    (.rational 158886542 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 86315788
    1) .v) (.rational 289871790 1)) .v) (.rational 276762032 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 113238878 1) .v) (.rational 357250226 1)) .v) (.rational
    316926593 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 102736128 1) .v)
    (.rational 305469183 1)) .v) (.rational 251690682 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 65853206 1) .v) (.rational 185476839 1)) .v) (.rational 142261467 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 29894754 1) .v) (.rational 80256066
    1)) .v) (.rational 57563196 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9465314 1) .v) (.rational 24361140 1)) .v) (.rational 16421909 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2013208 1) .v) (.rational 4980177 1)) .v) (.rational
    3162538 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 267034 1) .v)
    (.rational 631693 1)) .v) (.rational 376105 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 18928 1) .v) (.rational 41906 1)) .v) (.rational 22978 1)) (.pow .g 11))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    227988 1) .v) (.rational 847692 1)) .v) (.rational 856236 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1823904 1) .v) (.rational 6452784 1)) .v) (.rational 6206862 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6580866 1) .v) (.rational 22122392 1)) .v) (.rational
    20190010 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 14147742 1) .v)
    (.rational 45161394 1)) .v) (.rational 38982562 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 20162560 1) .v) (.rational 61140714 1)) .v) (.rational 49801209 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 20042346 1) .v) (.rational 57826276 1)) .v)
    (.rational 44403946 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 14226460 1)
    .v) (.rational 39159773 1)) .v) (.rational 28365186 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7250086 1) .v) (.rational 19103503 1)) .v) (.rational 13078455 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2624726 1) .v) (.rational 6639612
    1)) .v) (.rational 4306067 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    655286 1) .v) (.rational 1592026 1)) .v) (.rational 978714 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 106302 1) .v) (.rational 246637 1)) .v) (.rational 143130 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 9932 1) .v) (.rational 21601 1))
    .v) (.rational 11669 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 394 1)
    .v) (.rational 764 1)) .v) (.rational 370 1)) (.pow .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0328

namespace FullLow0329
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  38*SmallGap.PolarCoefficientsLow4.c230 e f g v*((e+f)*(e+f+g))^3+
    9*SmallGap.PolarCoefficientsLow4.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    25*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    18*SmallGap.PolarCoefficientsLow4.c320 e f g v*e*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow3.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    16*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsLow3.c410 e f g v*e*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_010_3 e g v+36*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^1+90*SmallGap.ReducedLayers.low0_010_5 e g v*e^2+120*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^3+4*SmallGap.ReducedLayers.low0_001_2 e g v+28*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^1+84*SmallGap.ReducedLayers.low0_001_4 e g v*e^2+140*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_5 e g v+12*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_020_7 e g v*e^2+12*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_4 e g v+15*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_011_6 e g v*e^2+30*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^3+1*SmallGap.ReducedLayers.low1_002_3 e g v+6*SmallGap.ReducedLayers.low1_002_4 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_002_5 e g v*e^2+20*SmallGap.ReducedLayers.low1_002_6 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3100 1) .v) (.rational 262200 1))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 580 1) .v) (.rational 42988 1)) .v)
    (.rational 1761245 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1450 1) .v) (.rational
    58436 1)) .v) (.rational 2009180 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 9078 1) .v) (.rational 291268 1)) .v) (.rational 7252935 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 27234 1) .v) (.rational 511108 1)) .v) (.rational 11186886 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 29564 1) .v) (.rational 224732 1)) .v) (.rational
    5560557 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 66348 1) .v) (.rational 1279288 1)) .v) (.rational 20490102 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 232218 1) .v) (.rational 2838586 1)) .v) (.rational 40106031 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 314966 1) .v) (.rational 1980038 1)) .v)
    (.rational 27326184 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 206870 1)
    .v) (.rational 358090 1)) .v) (.rational 7299103 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 294722 1) .v) (.rational
    4051860 1)) .v) (.rational 42185516 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1178888
    1) .v) (.rational 11213868 1)) .v) (.rational 101421554 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1908516 1) .v) (.rational 11265636 1)) .v) (.rational 90148263 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1599440 1) .v) (.rational 4849324 1)) .v)
    (.rational 35443022 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 731794 1)
    .v) (.rational 719372 1)) .v) (.rational 5299751 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 875268 1) .v)
    (.rational 9553504 1)) .v) (.rational 65359885 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3938706 1) .v) (.rational 32288920 1)) .v) (.rational 189531470 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7390288 1) .v) (.rational 43215640 1)) .v) (.rational
    214140210 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7485380 1) .v)
    (.rational 29376206 1)) .v) (.rational 118318283 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4414172 1) .v) (.rational 10942226 1)) .v) (.rational 32587803 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1512294 1) .v) (.rational 2324038 1)) .v)
    (.rational 3938237 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1803356 1) .v) (.rational 16609392
    1)) .v) (.rational 76915681 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 9016780 1) .v)
    (.rational 66704716 1)) .v) (.rational 265377948 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19209938 1) .v) (.rational 111554436 1)) .v) (.rational 372818282 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 22739072 1) .v) (.rational 101767072 1)) .v)
    (.rational 275906860 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 16323988
    1) .v) (.rational 56083596 1)) .v) (.rational 117230876 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 7255688 1) .v) (.rational 19642000 1)) .v) (.rational 29891532
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1940138 1) .v) (.rational
    4429052 1)) .v) (.rational 4839043 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2589000 1)
    .v) (.rational 20707444 1)) .v) (.rational 67918728 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14239500 1) .v) (.rational 96238734 1)) .v) (.rational 274888697 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 33925848 1) .v) (.rational 191840998 1)) .v) (.rational
    468562271 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 45870066 1) .v)
    (.rational 216133640 1)) .v) (.rational 441752652 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 38694280 1) .v) (.rational 152951388 1)) .v) (.rational 256227948 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 21046172 1) .v) (.rational 71393492
    1)) .v) (.rational 97207156 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7340636 1) .v) (.rational 22234376 1)) .v) (.rational 25108797 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1568814 1) .v) (.rational 4451490 1)) .v) (.rational
    4380409 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2536080 1) .v)
    (.rational 17812000 1)) .v) (.rational 43501792 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15216480 1) .v) (.rational 93738620 1)) .v) (.rational 203335010 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 40064968 1) .v) (.rational 215533320 1)) .v) (.rational
    409979116 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 60840440 1) .v)
    (.rational 285888632 1)) .v) (.rational 471102696 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 58855062 1) .v) (.rational 243355764 1)) .v) (.rational 344715996 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 37758888 1) .v) (.rational
    139642784 1)) .v) (.rational 170454980 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16179636 1) .v) (.rational 54854820 1)) .v) (.rational 58689013 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4531368 1) .v) (.rational 14484468 1)) .v)
    (.rational 13955626 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 781654 1)
    .v) (.rational 2408784 1)) .v) (.rational 2135993 1)) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1610784 1) .v) (.rational 9973568 1)) .v) (.rational
    18997258 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 10470096 1) .v) (.rational 58450132
    1)) .v) (.rational 100945396 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 30174192 1)
    .v) (.rational 151520140 1)) .v) (.rational 235203084 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 50787000 1) .v) (.rational 229620460 1)) .v) (.rational 318097484 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 55318692 1) .v) (.rational
    226448536 1)) .v) (.rational 279073117 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 40788198 1) .v) (.rational 152820484 1)) .v) (.rational 168117046 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 20657680 1) .v) (.rational 71935412 1)) .v)
    (.rational 71418354 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 7123844 1)
    .v) (.rational 23446278 1)) .v) (.rational 21327441 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1615592 1) .v) (.rational 5090130 1)) .v) (.rational 4290396 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 223416 1) .v) (.rational 674902 1)) .v)
    (.rational 526287 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 595944 1) .v) (.rational 3260628 1)) .v) (.rational 5036796 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4171608 1) .v) (.rational 21011328 1)) .v) (.rational 29986416
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 13053384 1) .v) (.rational 60415316 1))
    .v) (.rational 79166780 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    24089400 1) .v) (.rational 102502564 1)) .v) (.rational 122742334 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 29116452 1) .v) (.rational 114295508 1)) .v) (.rational
    124826983 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 24186084 1) .v)
    (.rational 88172508 1)) .v) (.rational 88011564 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 14076638 1) .v) (.rational 48100272 1)) .v) (.rational 44156194 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5733464 1) .v) (.rational 18542452 1)) .v)
    (.rational 15784798 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1599182 1)
    .v) (.rational 4927448 1)) .v) (.rational 3912225 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 290558 1) .v) (.rational 851756 1)) .v) (.rational 629238 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 31026 1) .v) (.rational 85168 1)) .v)
    (.rational 57592 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 97200 1) .v) (.rational 471456 1)) .v) (.rational 609552 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 729000 1) .v) (.rational 3307932 1)) .v) (.rational 4014900
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2459736 1) .v) (.rational 10423696 1))
    .v) (.rational 11821046 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4931784
    1) .v) (.rational 19514408 1)) .v) (.rational 20602688 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6535008 1) .v) (.rational 24186480 1)) .v) (.rational 23729148 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6017220 1) .v) (.rational 20910154
    1)) .v) (.rational 19075799 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3936264 1) .v) (.rational 12913842 1)) .v) (.rational 10988567 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1834974 1) .v) (.rational 5716720 1)) .v) (.rational
    4557004 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 600516 1) .v)
    (.rational 1783632 1)) .v) (.rational 1335930 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 132786 1) .v) (.rational 375598 1)) .v) (.rational 263841 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 18342 1) .v) (.rational 48898 1)) .v) (.rational
    31879 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1332 1) .v) (.rational
    3252 1)) .v) (.rational 1920 1)) (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0329

namespace FullLow03210
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  25*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow4.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    16*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsLow4.c410 e f g v*e*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_010_4 e g v+36*SmallGap.ReducedLayers.low0_010_5 e g
    v*e^1+90*SmallGap.ReducedLayers.low0_010_6 e g v*e^2+4*SmallGap.ReducedLayers.low0_001_3 e g
    v+28*SmallGap.ReducedLayers.low0_001_4 e g v*e^1+84*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_6 e g v+12*SmallGap.ReducedLayers.low1_020_7 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_020_8 e g v*e^2+3*SmallGap.ReducedLayers.low1_011_5 e g
    v+15*SmallGap.ReducedLayers.low1_011_6 e g v*e^1+30*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^2+1*SmallGap.ReducedLayers.low1_002_4 e g v+6*SmallGap.ReducedLayers.low1_002_5 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_002_6 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 640 1) .v) (.rational 78800 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 60 1) .v) (.rational 8576 1)) .v) (.rational 512653 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 150 1) .v) (.rational 11432 1)) .v) (.rational 570324
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 930 1) .v) (.rational
    56268 1)) .v) (.rational 2030205 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2790 1) .v)
    (.rational 95736 1)) .v) (.rational 3037703 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3030 1) .v) (.rational 37816 1)) .v) (.rational 1437007 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6720 1) .v) (.rational
    239816 1)) .v) (.rational 5472530 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 23520 1)
    .v) (.rational 515324 1)) .v) (.rational 10368192 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31920 1) .v) (.rational 332180 1)) .v) (.rational 6713615 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21000 1) .v) (.rational 35920 1)) .v) (.rational
    1606630 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 29310 1) .v) (.rational 738556 1)) .v) (.rational 10656720 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 117240 1) .v) (.rational 1994476 1)) .v) (.rational
    24852148 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 189960 1) .v) (.rational
    1918236 1)) .v) (.rational 21164477 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 159540 1) .v) (.rational 746988 1)) .v) (.rational 7727475 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 73290 1) .v) (.rational 67412 1)) .v) (.rational
    928375 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 84480 1) .v) (.rational 1679288 1)) .v) (.rational 15411103
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 380160 1) .v) (.rational 5587840 1)) .v)
    (.rational 43599250 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 714120 1) .v)
    (.rational 7331008 1)) .v) (.rational 47865210 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 725340 1) .v) (.rational 4857900 1)) .v) (.rational 25571004 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 429900 1) .v) (.rational 1755172 1)) .v)
    (.rational 6789684 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 148440 1)
    .v) (.rational 363424 1)) .v) (.rational 810992 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 165600 1)
    .v) (.rational 2742232 1)) .v) (.rational 16530911 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 828000 1) .v) (.rational 10903640 1)) .v) (.rational 56020529 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1766850 1) .v) (.rational 18075940 1)) .v) (.rational
    77474416 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2099400 1) .v)
    (.rational 16410172 1)) .v) (.rational 56886652 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1517160 1) .v) (.rational 9075644 1)) .v) (.rational 24500126 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 681180 1) .v) (.rational 3232476 1)) .v)
    (.rational 6639586 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 184710 1)
    .v) (.rational 750604 1)) .v) (.rational 1217599 1)) (.pow .g 6)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 218520 1) .v) (.rational 3065400 1)) .v) (.rational 12767844 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1201860 1) .v) (.rational 14138400 1)) .v) (.rational 51025728
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2869980 1) .v) (.rational 28059760 1))
    .v) (.rational 86323128 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3900960
    1) .v) (.rational 31656512 1)) .v) (.rational 81648852 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3320640 1) .v) (.rational 22630448 1)) .v) (.rational 48453110 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1830780 1) .v) (.rational 10784980
    1)) .v) (.rational 19338856 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    650580 1) .v) (.rational 3459756 1)) .v) (.rational 5376061 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 142440 1) .v) (.rational 714992 1)) .v) (.rational 1004054 1))
    (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 185220 1) .v) (.rational 2197992
    1)) .v) (.rational 6673788 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1111320 1) .v)
    (.rational 11486448 1)) .v) (.rational 30899148 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2935440 1) .v) (.rational 26332616 1)) .v) (.rational 62060818 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4490100 1) .v) (.rational 35042200 1)) .v)
    (.rational 71746176 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4397310 1)
    .v) (.rational 30179548 1)) .v) (.rational 53611876 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2873160 1) .v) (.rational 17691412 1)) .v) (.rational 27555388 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1262520 1) .v) (.rational 7160908
    1)) .v) (.rational 9989313 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    365400 1) .v) (.rational 1957548 1)) .v) (.rational 2498313 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 65670 1) .v) (.rational 336652 1)) .v) (.rational 395577 1))
    (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 90720 1) .v) (.rational
    904176 1)) .v) (.rational 2098836 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 589680 1)
    .v) (.rational 5261760 1)) .v) (.rational 11063304 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1706760 1) .v) (.rational 13604184 1)) .v) (.rational 25703568 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2900700 1) .v) (.rational 20692800 1)) .v)
    (.rational 34950552 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3211380 1)
    .v) (.rational 20651400 1)) .v) (.rational 31183093 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2425680 1) .v) (.rational 14236224 1)) .v) (.rational 19349778 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1270200 1) .v) (.rational 6907000
    1)) .v) (.rational 8551578 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    457800 1) .v) (.rational 2336100 1)) .v) (.rational 2662884 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 109860 1) .v) (.rational 527932 1)) .v) (.rational 554755 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 16290 1) .v) (.rational 72696 1))
    .v) (.rational 69408 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 19440 1) .v) (.rational 161568 1)) .v) (.rational 298152 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 136080 1) .v) (.rational 1033776 1)) .v) (.rational 1761876 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 428220 1) .v) (.rational 2964600 1)) .v)
    (.rational 4637364 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 800280 1)
    .v) (.rational 5047776 1)) .v) (.rational 7216584 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 987840 1) .v) (.rational 5693664 1)) .v) (.rational 7433407 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 846540 1) .v) (.rational 4483968 1)) .v)
    (.rational 5362779 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 514530 1)
    .v) (.rational 2520420 1)) .v) (.rational 2777420 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 222120 1) .v) (.rational 1009332 1)) .v) (.rational 1029520 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 66870 1) .v) (.rational 280368 1)) .v)
    (.rational 264207 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 13410 1) .v)
    (.rational 50868 1)) .v) (.rational 43691 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1620 1) .v) (.rational 5340 1)) .v) (.rational 4050 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow03210

namespace FullLow03211
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  16*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_010_5 e g v+36*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_001_4 e g v+28*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_7 e g v+12*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_6 e g v+15*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^1+1*SmallGap.ReducedLayers.low1_002_5 e g v+6*SmallGap.ReducedLayers.low1_002_6 e g v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 60 1) .v) (.rational 14360 1)) .e) (.add (.mul (.add (.mul
    (.rational 780 1) .v) (.rational 90594 1)) .f) (.mul (.add (.mul (.rational 1020 1) .v)
    (.rational 98136 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 4980 1) .v)
    (.rational 345132 1)) .f) (.mul (.add (.mul (.rational 8220 1) .v) (.rational 499756 1)) .g))
    .f) (.mul (.add (.mul (.rational 2880 1) .v) (.rational 223712 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20700 1) .v) (.rational 887248 1)) .f)
    (.mul (.add (.mul (.rational 43140 1) .v) (.rational 1623128 1)) .g)) .f) (.mul (.add (.mul
    (.rational 25620 1) .v) (.rational 994136 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational
    720 1) .v) (.rational 208228 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 62280 1) .v) (.rational 1631112 1)) .f) (.mul (.add (.mul
    (.rational 164640 1) .v) (.rational 3685864 1)) .g)) .f) (.mul (.add (.mul (.rational 152460
    1) .v) (.rational 3008524 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 54060 1) .v)
    (.rational 1023284 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 1800 1) .v) (.rational
    97272 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 136560 1) .v) (.rational 2187256 1)) .f) (.mul (.add (.mul (.rational 448920
    1) .v) (.rational 6041208 1)) .g)) .f) (.mul (.add (.mul (.rational 581220 1) .v) (.rational
    6479016 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 380460 1) .v) (.rational 3405728
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 136860 1) .v) (.rational 921060 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.rational 28920 1) .v) (.rational 130788 1)) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    207000 1) .v) (.rational 2099352 1)) .f) (.mul (.add (.mul (.rational 816480 1) .v) (.rational
    6996528 1)) .g)) .f) (.mul (.add (.mul (.rational 1347840 1) .v) (.rational 9588336 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.rational 1228080 1) .v) (.rational 7104720 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.rational 690660 1) .v) (.rational 3208012 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.rational 254100 1) .v) (.rational 966676 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 61440 1) .v) (.rational 203792 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 200520 1) .v)
    (.rational 1357968 1)) .f) (.mul (.add (.mul (.rational 917640 1) .v) (.rational 5360592 1))
    .g)) .f) (.mul (.add (.mul (.rational 1817400 1) .v) (.rational 9045960 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 2064960 1) .v) (.rational 8688384 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 1505100 1) .v) (.rational 5379264 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 740580 1) .v) (.rational 2304056 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 247140 1) .v) (.rational 693424 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    53040 1) .v) (.rational 137068 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 110160 1)
    .v) (.rational 524880 1)) .f) (.mul (.add (.mul (.rational 570240 1) .v) (.rational 2404080
    1)) .g)) .f) (.mul (.add (.mul (.rational 1304280 1) .v) (.rational 4822728 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.rational 1749600 1) .v) (.rational 5653872 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 1538280 1) .v) (.rational 4369752 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 932400 1) .v) (.rational 2365496 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 393900 1) .v) (.rational 909052 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    112740 1) .v) (.rational 238604 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 20220 1)
    .v) (.rational 38784 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25920 1)
    .v) (.rational 90720 1)) .f) (.mul (.add (.mul (.rational 149040 1) .v) (.rational 473040 1))
    .g)) .f) (.mul (.add (.mul (.rational 384120 1) .v) (.rational 1096512 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 589320 1) .v) (.rational 1506768 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 601560 1) .v) (.rational 1380224 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 430200 1) .v) (.rational 892248 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 219060 1) .v) (.rational 413912 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    78300 1) .v) (.rational 134928 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 18720 1) .v)
    (.rational 29106 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 2700 1) .v) (.rational
    3700 1)) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow03211

namespace FullLow03212
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  10*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_010_6 e g v+4*SmallGap.ReducedLayers.low0_001_5 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_8 e g v+3*SmallGap.ReducedLayers.low1_011_7 e g
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

end FullLow03212

end
end SPR.N6.Tail.CoreEndpoint
