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

namespace FullLow0500
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c014 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^4+
    1*SmallGap.PolarCoefficientsLow0.c023 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow0.c032 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow0.c041 e f g v*e^4*((e+f)*(e+f+g))^5*(f+g)+
    1*SmallGap.PolarCoefficientsLow0.c050 e f g v*e^5*((e+f)*(e+f+g))^5

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_010_0 e g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_0 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4 1) .v)
    (.rational 124 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 4 1) .v) (.rational 92
    1)) .v) (.rational 1211 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 10 1) .v) (.rational
    148 1)) .v) (.rational 1670 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 82 1) .v) (.rational 970 1)) .v) (.rational 7436 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 246 1) .v) (.rational 2128 1)) .v) (.rational 14170 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 266 1) .v) (.rational 1558 1)) .v) (.rational 9488 1)) (.pow .g
    2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 782 1) .v)
    (.rational 6294 1)) .v) (.rational 32216 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2737
    1) .v) (.rational 17402 1)) .v) (.rational 78425 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3695 1) .v) (.rational 17930 1)) .v) (.rational 72031 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2395 1) .v) (.rational 8526 1)) .v) (.rational 30819 1))
    (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 4627 1) .v) (.rational 28356 1)) .v) (.rational 104737 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 18508 1) .v) (.rational 94336 1)) .v) (.rational 310564 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 29810 1) .v) (.rational 124000 1)) .v) (.rational
    363254 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 24652 1) .v) (.rational
    81984 1)) .v) (.rational 212316 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10995 1) .v) (.rational 28596 1)) .v) (.rational 64473 1)) (.pow .g 4)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 19088 1)
    .v) (.rational 94656 1)) .v) (.rational 265268 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 85896 1) .v) (.rational 367520 1)) .v) (.rational 927920 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 160264 1) .v) (.rational 584504 1)) .v) (.rational 1320016 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 160076 1) .v) (.rational 491256 1))
    .v) (.rational 980724 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 92012 1)
    .v) (.rational 234480 1)) .v) (.rational 405906 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 30264 1) .v) (.rational 63264 1)) .v) (.rational 91968 1)) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 58432 1) .v) (.rational 243576 1)) .v) (.rational 536248 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 292160 1) .v) (.rational 1080064 1)) .v) (.rational 2162680 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 618508 1) .v) (.rational 2010160 1)) .v)
    (.rational 3626612 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 721072 1)
    .v) (.rational 2041296 1)) .v) (.rational 3274176 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 503756 1) .v) (.rational 1230564 1)) .v) (.rational 1720920 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 214588 1) .v) (.rational 448368 1)) .v)
    (.rational 530916 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 53984 1) .v)
    (.rational 95844 1)) .v) (.rational 91812 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    137816 1) .v) (.rational 495720 1)) .v) (.rational 879308 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 757988 1) .v) (.rational 2469944 1)) .v) (.rational 4018520 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1792924 1) .v) (.rational 5256944 1)) .v) (.rational
    7766344 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2383248 1) .v)
    (.rational 6242544 1)) .v) (.rational 8262240 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1951236 1) .v) (.rational 4532220 1)) .v) (.rational 5275284 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1013418 1) .v) (.rational 2072532 1)) .v)
    (.rational 2066358 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 330918 1)
    .v) (.rational 592284 1)) .v) (.rational 486654 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 64722 1) .v) (.rational 101028 1)) .v) (.rational 64482 1)) (.pow .g 7))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 256516 1) .v) (.rational 811512 1)) .v) (.rational
    1181908 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1539096 1) .v) (.rational 4486456 1))
    .v) (.rational 6039020 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4019444 1) .v)
    (.rational 10736440 1)) .v) (.rational 13224068 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5988840 1) .v) (.rational 14572272 1)) .v) (.rational 16212768 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5605446 1) .v) (.rational 12348336 1)) .v)
    (.rational 12198186 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3418800 1)
    .v) (.rational 6776616 1)) .v) (.rational 5805492 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1362984 1) .v) (.rational 2417184 1)) .v) (.rational 1737120 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 346224 1) .v) (.rational 546960 1)) .v)
    (.rational 313992 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 52650 1) .v)
    (.rational 73956 1)) .v) (.rational 31434 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 382616 1) .v) (.rational 1080248 1)) .v) (.rational 1310530 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2487004 1) .v) (.rational 6560008 1)) .v) (.rational
    7406620 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7103096 1) .v) (.rational
    17423120 1)) .v) (.rational 18134402 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11709984 1) .v) (.rational 26577408 1)) .v) (.rational 25194312 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 12307020 1) .v) (.rational 25709112 1)) .v)
    (.rational 21850686 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8592276 1)
    .v) (.rational 16430568 1)) .v) (.rational 12260556 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4025784 1) .v) (.rational 7009464 1)) .v) (.rational 4461534 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1248756 1) .v) (.rational 1970280 1)) .v)
    (.rational 1026468 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 246492 1)
    .v) (.rational 351204 1)) .v) (.rational 140751 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 28630 1) .v) (.rational 36796 1)) .v) (.rational 10258 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 461604 1) .v) (.rational
    1176604 1)) .v) (.rational 1202240 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3231228 1)
    .v) (.rational 7783776 1)) .v) (.rational 7449884 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10014576 1) .v) (.rational 22708972 1)) .v) (.rational 20179588 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 18081492 1) .v) (.rational 38430392 1)) .v)
    (.rational 31356468 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 21050304 1)
    .v) (.rational 41741700 1)) .v) (.rational 30831372 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16515444 1) .v) (.rational 30405936 1)) .v) (.rational 19955628 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8861244 1) .v) (.rational 15071364
    1)) .v) (.rational 8571024 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3229980 1) .v) (.rational 5050536 1)) .v) (.rational 2402892 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 777966 1) .v) (.rational 1113546 1)) .v) (.rational 420984 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 117102 1) .v) (.rational 152960 1))
    .v) (.rational 42386 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 9934 1)
    .v) (.rational 11830 1)) .v) (.rational 2084 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 452452 1) .v) (.rational 1051076 1)) .v)
    (.rational 912288 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3393390 1) .v) (.rational
    7522684 1)) .v) (.rational 6153550 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    11339042 1) .v) (.rational 23906740 1)) .v) (.rational 18281822 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 22237358 1) .v) (.rational 44424380 1)) .v) (.rational
    31441982 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 28373642 1) .v)
    (.rational 53492868 1)) .v) (.rational 34598850 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 24670206 1) .v) (.rational 43702956 1)) .v) (.rational 25411122 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 14876778 1) .v) (.rational 24649548 1)) .v)
    (.rational 12606594 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 6207978 1)
    .v) (.rational 9575460 1)) .v) (.rational 4180410 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1755600 1) .v) (.rational 2509182 1)) .v) (.rational 895806 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 321941 1) .v) (.rational 424594 1)) .v)
    (.rational 116105 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 35299 1) .v)
    (.rational 42826 1)) .v) (.rational 8035 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1979 1) .v) (.rational 2206 1)) .v) (.rational 227 1)) (.pow .g 11)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 360386 1)
    .v) (.rational 769080 1)) .v) (.rational 570758 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2883088 1) .v) (.rational 5920304 1)) .v) (.rational 4165280 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10329800 1) .v) (.rational 20351864 1)) .v) (.rational
    13476424 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 21854560 1) .v)
    (.rational 41180880 1)) .v) (.rational 25436424 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 30301832 1) .v) (.rational 54417792 1)) .v) (.rational 31004688 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 28882216 1) .v) (.rational 49244184 1)) .v)
    (.rational 25512036 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 19300596 1)
    .v) (.rational 31112928 1)) .v) (.rational 14383908 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9048360 1) .v) (.rational 13729536 1)) .v) (.rational 5522184 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2926881 1) .v) (.rational 4160988 1)) .v)
    (.rational 1404963 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 629236 1)
    .v) (.rational 834264 1)) .v) (.rational 224264 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 83846 1) .v) (.rational 103232 1)) .v) (.rational 20282 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6052 1) .v) (.rational 6896 1)) .v) (.rational
    844 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 171 1) .v) (.rational 180
    1)) .v) (.rational 9 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 232336 1) .v) (.rational 458592 1)) .v)
    (.rational 292468 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1974856 1) .v) (.rational
    3777856 1)) .v) (.rational 2297440 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    7551128 1) .v) (.rational 13965640 1)) .v) (.rational 8046968 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 17136340 1) .v) (.rational 30558216 1)) .v) (.rational
    16553004 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 25638468 1) .v)
    (.rational 43949568 1)) .v) (.rational 22164558 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 26556816 1) .v) (.rational 43615440 1)) .v) (.rational 20227944 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 19451348 1) .v) (.rational 30493848 1)) .v)
    (.rational 12799710 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 10100772 1)
    .v) (.rational 15054120 1)) .v) (.rational 5598684 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3667560 1) .v) (.rational 5173776 1)) .v) (.rational 1655514 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 900608 1) .v) (.rational 1196928 1)) .v)
    (.rational 315808 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 140380 1) .v)
    (.rational 174928 1)) .v) (.rational 35626 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12272 1) .v) (.rational 14272 1)) .v) (.rational 2000 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 444 1) .v) (.rational 480 1)) .v) (.rational 36 1))
    (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 120176 1) .v) (.rational 220728 1)) .v) (.rational 121448 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1081584 1) .v) (.rational 1937408 1)) .v) (.rational
    1022456 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4395412 1) .v) (.rational
    7663040 1)) .v) (.rational 3857692 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10647392 1) .v) (.rational 18026064 1)) .v) (.rational 8598576 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 17089100 1) .v) (.rational 28023996 1)) .v)
    (.rational 12562368 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19100004 1)
    .v) (.rational 30252432 1)) .v) (.rational 12613020 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 15199576 1) .v) (.rational 23178540 1)) .v) (.rational 8869476 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8646988 1) .v) (.rational 12650040
    1)) .v) (.rational 4365996 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3474912 1) .v) (.rational 4857444 1)) .v) (.rational 1476756 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 956620 1) .v) (.rational 1272096 1)) .v) (.rational 329468 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 169988 1) .v) (.rational 214004 1))
    .v) (.rational 44912 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 17332 1)
    .v) (.rational 20552 1)) .v) (.rational 3220 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 756 1) .v) (.rational 840 1)) .v) (.rational 84 1)) (.pow .g 12))) (.pow .f
    2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 49144 1) .v) (.rational 84456 1)) .v) (.rational 40222 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 466868 1) .v) (.rational 786808 1)) .v) (.rational 361582 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2009260 1) .v) (.rational 3315232 1)) .v) (.rational
    1463408 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5173576 1) .v)
    (.rational 8342016 1)) .v) (.rational 3517464 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8863652 1) .v) (.rational 13937700 1)) .v) (.rational 5575836 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10626406 1) .v) (.rational 16256940 1)) .v)
    (.rational 6118602 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9122330 1)
    .v) (.rational 13541556 1)) .v) (.rational 4743858 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5635942 1) .v) (.rational 8093100 1)) .v) (.rational 2602614 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2479466 1) .v) (.rational 3432276 1)) .v)
    (.rational 994704 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 754622 1) .v)
    (.rational 1003020 1)) .v) (.rational 255376 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 150082 1) .v) (.rational 190684 1)) .v) (.rational 41110 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 17402 1) .v) (.rational 21028 1)) .v) (.rational
    3626 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 882 1) .v) (.rational
    1008 1)) .v) (.rational 126 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15524 1) .v) (.rational 25092
    1)) .v) (.rational 10376 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 155240 1) .v)
    (.rational 247268 1)) .v) (.rational 99290 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 705292 1) .v) (.rational 1105640 1)) .v) (.rational 429544 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1923288 1) .v) (.rational 2963088 1)) .v) (.rational
    1108896 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3502386 1) .v)
    (.rational 5294304 1)) .v) (.rational 1898430 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4481568 1) .v) (.rational 6634488 1)) .v) (.rational 2264556 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4125744 1) .v) (.rational 5968704 1)) .v)
    (.rational 1923432 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2748576 1)
    .v) (.rational 3876240 1)) .v) (.rational 1167000 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1312368 1) .v) (.rational 1799028 1)) .v) (.rational 499116 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 436856 1) .v) (.rational 580164 1)) .v)
    (.rational 145610 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 95924 1) .v)
    (.rational 122936 1)) .v) (.rational 27200 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12424 1) .v) (.rational 15296 1)) .v) (.rational 2872 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 714 1) .v) (.rational 840 1)) .v) (.rational 126 1))
    (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 3652 1) .v) (.rational 5580 1)) .v) (.rational 2011 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 38346 1) .v) (.rational 57988 1)) .v) (.rational
    20430 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 183392 1) .v) (.rational 274228
    1)) .v) (.rational 94193 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 527934
    1) .v) (.rational 779772 1)) .v) (.rational 260286 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1018116 1) .v) (.rational 1483608 1)) .v) (.rational 479394 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1384548 1) .v) (.rational 1987752 1)) .v)
    (.rational 618828 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1360128 1)
    .v) (.rational 1920744 1)) .v) (.rational 572754 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 971388 1) .v) (.rational 1346808 1)) .v) (.rational 381852 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 499884 1) .v) (.rational 678972 1)) .v)
    (.rational 181311 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 180466 1) .v)
    (.rational 239508 1)) .v) (.rational 59494 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 43296 1) .v) (.rational 55972 1)) .v) (.rational 12717 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6182 1) .v) (.rational 7756 1)) .v) (.rational 1574 1))
    (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 396 1) .v) (.rational 480 1)) .v)
    (.rational 84 1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 602 1) .v) (.rational 874 1)) .v)
    (.rational 276 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 6622 1) .v) (.rational 9552
    1)) .v) (.rational 2970 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 33254 1) .v)
    (.rational 47630 1)) .v) (.rational 14556 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 100770 1) .v) (.rational 143220 1)) .v) (.rational 42930 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 205140 1) .v) (.rational 289080 1)) .v) (.rational
    84780 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 295404 1) .v) (.rational
    412368 1)) .v) (.rational 117972 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 308364 1) .v) (.rational 425964 1)) .v) (.rational 118440 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 234948 1) .v) (.rational 320760 1)) .v) (.rational
    86292 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 129570 1) .v) (.rational
    174570 1)) .v) (.rational 45180 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    50390 1) .v) (.rational 66880 1)) .v) (.rational 16530 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13102 1) .v) (.rational 17094 1)) .v) (.rational 3996 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 2042 1) .v) (.rational 2612 1)) .v)
    (.rational 570 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 144 1) .v)
    (.rational 180 1)) .v) (.rational 36 1)) (.pow .g 12))) (.pow .f 6))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 62 1) .v)
    (.rational 86 1)) .v) (.rational 24 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 713 1)
    .v) (.rational 986 1)) .v) (.rational 273 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3751 1) .v) (.rational 5170 1)) .v) (.rational 1419 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11935 1) .v) (.rational 16390 1)) .v) (.rational 4455 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 25575 1) .v) (.rational 34980 1))
    .v) (.rational 9405 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 38874 1)
    .v) (.rational 52932 1)) .v) (.rational 14058 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 42966 1) .v) (.rational 58212 1)) .v) (.rational 15246 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 34782 1) .v) (.rational 46860 1)) .v) (.rational
    12078 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 20460 1) .v) (.rational
    27390 1)) .v) (.rational 6930 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8525 1) .v) (.rational 11330 1)) .v) (.rational 2805 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2387 1) .v) (.rational 3146 1)) .v) (.rational 759 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 403 1) .v) (.rational 526 1)) .v) (.rational 123
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 31 1) .v) (.rational 40 1))
    .v) (.rational 9 1)) (.pow .g 12))) (.pow .f 7))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3 1) .v) (.rational 4 1)) .v)
    (.rational 1 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 36 1) .v) (.rational 48 1)) .v)
    (.rational 12 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 198 1) .v) (.rational 264
    1)) .v) (.rational 66 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 660 1)
    .v) (.rational 880 1)) .v) (.rational 220 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1485 1) .v) (.rational 1980 1)) .v) (.rational 495 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2376 1) .v) (.rational 3168 1)) .v) (.rational 792 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2772 1) .v) (.rational 3696 1)) .v)
    (.rational 924 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2376 1) .v)
    (.rational 3168 1)) .v) (.rational 792 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1485 1) .v) (.rational 1980 1)) .v) (.rational 495 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 660 1) .v) (.rational 880 1)) .v) (.rational 220 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 198 1) .v) (.rational 264 1)) .v)
    (.rational 66 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 36 1) .v)
    (.rational 48 1)) .v) (.rational 12 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3 1) .v) (.rational 4 1)) .v) (.rational 1 1)) (.pow .g 12))) (.pow .f 8))) (.pow
    .e 2))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0500

namespace FullLow0501
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsLow0.c014 e f g v*((e+f)*(e+f+g))^5*(f+g)^4+
    1*SmallGap.PolarCoefficientsLow1.c014 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^4+
    4*SmallGap.PolarCoefficientsLow0.c023 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow1.c023 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^3+
    6*SmallGap.PolarCoefficientsLow0.c032 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow1.c032 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)^2+
    8*SmallGap.PolarCoefficientsLow0.c041 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)+
    1*SmallGap.PolarCoefficientsLow1.c041 e f g v*e^4*((e+f)*(e+f+g))^5*(f+g)+
    10*SmallGap.PolarCoefficientsLow0.c050 e f g v*e^4*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow1.c050 e f g v*e^5*((e+f)*(e+f+g))^5

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(8*SmallGap.ReducedLayers.low0_010_0 e g v*e^7+1*SmallGap.ReducedLayers.low0_010_1 e
    g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.low1_020_0 e g v*e^5+1*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 54 1) .v)
    (.rational 1730 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 50 1) .v) (.rational
    1170 1)) .v) (.rational 16282 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 125 1) .v)
    (.rational 1858 1)) .v) (.rational 22197 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 985 1) .v) (.rational 11786 1)) .v) (.rational 96465 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2955 1) .v) (.rational 25498 1)) .v) (.rational 181619 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3196 1) .v) (.rational 18234 1)) .v)
    (.rational 119810 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 9078 1) .v) (.rational 73698 1)) .v) (.rational 403626 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 31773 1) .v) (.rational 201224 1)) .v) (.rational 970835 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 42907 1) .v) (.rational 203772 1)) .v) (.rational
    878915 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 27835 1) .v) (.rational
    94592 1)) .v) (.rational 369413 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 52092 1) .v) (.rational 321710 1)) .v)
    (.rational 1268262 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 208368 1) .v) (.rational
    1058916 1)) .v) (.rational 3717330 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    335720 1) .v) (.rational 1373764 1)) .v) (.rational 4289336 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 277872 1) .v) (.rational 894008 1)) .v) (.rational 2466666 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 124144 1) .v) (.rational 306130 1))
    .v) (.rational 734314 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 208836 1) .v) (.rational 1044104 1)) .v)
    (.rational 3106418 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 939762 1) .v) (.rational
    4018198 1)) .v) (.rational 10748910 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1754016 1) .v) (.rational 6326572 1)) .v) (.rational 15100948 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1753500 1) .v) (.rational 5258564 1)) .v) (.rational
    11057518 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1009576 1) .v)
    (.rational 2481132 1)) .v) (.rational 4498874 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 332968 1) .v) (.rational 662434 1)) .v) (.rational 998778 1)) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 621838 1) .v) (.rational 2617560 1)) .v) (.rational 6076266 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3109190 1) .v) (.rational 11523272 1)) .v) (.rational
    24263162 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6584606 1) .v) (.rational
    21281158 1)) .v) (.rational 40233476 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7683284 1) .v) (.rational 21439092 1)) .v) (.rational 35864790 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5376364 1) .v) (.rational 12826336 1)) .v)
    (.rational 18580280 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2296196 1)
    .v) (.rational 4645236 1)) .v) (.rational 5639194 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 579950 1) .v) (.rational 990626 1)) .v) (.rational 957740 1)) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1426712 1) .v) (.rational 5195368 1)) .v) (.rational
    9645540 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7846916 1) .v) (.rational 25736546
    1)) .v) (.rational 43694396 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 18567696 1)
    .v) (.rational 54453434 1)) .v) (.rational 83626928 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 24702762 1) .v) (.rational 64291962 1)) .v) (.rational 88015158 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 20256684 1) .v) (.rational 46442508
    1)) .v) (.rational 55537944 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10547250 1) .v) (.rational 21165102 1)) .v) (.rational 21481656 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3457118 1) .v) (.rational 6046698 1)) .v) (.rational
    4995186 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 679868 1) .v)
    (.rational 1036670 1)) .v) (.rational 654914 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 2581462 1) .v) (.rational 8296444 1)) .v) (.rational 12557818 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15488772 1) .v) (.rational 45658080 1)) .v) (.rational
    63685076 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 40464512 1) .v) (.rational
    108776668 1)) .v) (.rational 138329906 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 60342150 1) .v) (.rational 147037264 1)) .v) (.rational 168129346 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 56564592 1) .v) (.rational 124191606 1)) .v)
    (.rational 125354922 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 34581960
    1) .v) (.rational 68037900 1)) .v) (.rational 59123022 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13836424 1) .v) (.rational 24291456 1)) .v) (.rational 17550666 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3532950 1) .v) (.rational 5525416
    1)) .v) (.rational 3159016 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    541190 1) .v) (.rational 755912 1)) .v) (.rational 318318 1)) (.pow .g 8)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 3737968 1) .v) (.rational 10767900 1)) .v) (.rational
    13495534 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 24296792 1) .v) (.rational 65160810
    1)) .v) (.rational 75812360 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 69417832 1)
    .v) (.rational 172496896 1)) .v) (.rational 184449408 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 114533364 1) .v) (.rational 262388896 1)) .v) (.rational 254605252 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 120545088 1) .v) (.rational
    253316910 1)) .v) (.rational 219424458 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 84349734 1) .v) (.rational 161803404 1)) .v) (.rational 122437434 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 39653600 1) .v) (.rational 69144768 1)) .v)
    (.rational 44397276 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 12359632 1)
    .v) (.rational 19536872 1)) .v) (.rational 10227782 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2456322 1) .v) (.rational 3518708 1)) .v) (.rational 1420346 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 288019 1) .v) (.rational 375220 1)) .v)
    (.rational 107889 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 4368936 1) .v) (.rational 11422268 1)) .v) (.rational 12008204 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 30582552 1) .v) (.rational 75366148 1)) .v) (.rational 74081696
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 94815666 1) .v) (.rational 219368006 1))
    .v) (.rational 199782440 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    171320820 1) .v) (.rational 370558848 1)) .v) (.rational 309143076 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 199714632 1) .v) (.rational 402077874 1)) .v) (.rational
    302892678 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 157016466 1) .v)
    (.rational 292957452 1)) .v) (.rational 195622902 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 84506296 1) .v) (.rational 145525884 1)) .v) (.rational 84071316 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 30939712 1) .v) (.rational 49013092
    1)) .v) (.rational 23715334 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7498645 1) .v) (.rational 10906464 1)) .v) (.rational 4229363 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1138561 1) .v) (.rational 1520962 1)) .v) (.rational 444859
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 97758 1) .v) (.rational 120380
    1)) .v) (.rational 24418 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 4137276 1) .v) (.rational 9919260 1)) .v) (.rational
    8846786 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 31029570 1) .v) (.rational 70861570
    1)) .v) (.rational 59511608 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 103716382 1)
    .v) (.rational 224846622 1)) .v) (.rational 176380334 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 203541338 1) .v) (.rational 417376014 1)) .v) (.rational 302795680 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 260019478 1) .v) (.rational
    502417102 1)) .v) (.rational 332942610 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 226505730 1) .v) (.rational 410792232 1)) .v) (.rational 244799388 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 136968650 1) .v) (.rational 232257480 1))
    .v) (.rational 121983666 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    57383772 1) .v) (.rational 90656024 1)) .v) (.rational 40874738 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16318924 1) .v) (.rational 23950792 1)) .v) (.rational
    8952630 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3015929 1) .v)
    (.rational 4105766 1)) .v) (.rational 1214005 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 334271 1) .v) (.rational 422306 1)) .v) (.rational 92707 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 19025 1) .v) (.rational 22378 1)) .v) (.rational
    3353 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 3172494 1) .v) (.rational 7037628 1)) .v) (.rational 5380410 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 25379952 1) .v) (.rational 54108548 1)) .v)
    (.rational 39229310 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 90957604 1) .v)
    (.rational 185834376 1)) .v) (.rational 126878336 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 192554068 1) .v) (.rational 375849536 1)) .v) (.rational 239607038 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 267262970 1) .v) (.rational
    496754544 1)) .v) (.rational 292623958 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 255162752 1) .v) (.rational 450039344 1)) .v) (.rational 241791222 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 170928772 1) .v) (.rational 285049968 1))
    .v) (.rational 137397246 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    80412974 1) .v) (.rational 126345952 1)) .v) (.rational 53494336 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 26138670 1) .v) (.rational 38567356 1)) .v) (.rational
    13954462 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 5657748 1) .v)
    (.rational 7818524 1)) .v) (.rational 2331464 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 761040 1) .v) (.rational 983496 1)) .v) (.rational 230366 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 55658 1) .v) (.rational 67280 1)) .v) (.rational
    11622 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 1602 1) .v) (.rational
    1816 1)) .v) (.rational 214 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1960140 1) .v) (.rational 4055144 1)) .v)
    (.rational 2684358 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 16661190 1) .v) (.rational
    33382338 1)) .v) (.rational 21105522 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    63720608 1) .v) (.rational 123352060 1)) .v) (.rational 74047532 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 144680760 1) .v) (.rational 269899412 1)) .v) (.rational
    152745858 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 216658456 1) .v)
    (.rational 388384888 1)) .v) (.rational 205439566 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 224733964 1) .v) (.rational 385945674 1)) .v) (.rational 188793614 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 164945256 1) .v) (.rational
    270494980 1)) .v) (.rational 120755628 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 85906436 1) .v) (.rational 134072744 1)) .v) (.rational 53716898 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 31321640 1) .v) (.rational 46364022 1)) .v)
    (.rational 16318378 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 7735686 1)
    .v) (.rational 10825888 1)) .v) (.rational 3255696 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1215424 1) .v) (.rational 1603780 1)) .v) (.rational 397456 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 107436 1) .v) (.rational 133432 1)) .v)
    (.rational 25996 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 3948 1) .v)
    (.rational 4614 1)) .v) (.rational 666 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 966210 1) .v)
    (.rational 1877720 1)) .v) (.rational 1087430 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    8695890 1) .v) (.rational 16476472 1)) .v) (.rational 9179046 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 35345394 1) .v) (.rational 65166010 1)) .v) (.rational 34755868 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 85656312 1) .v) (.rational
    153336428 1)) .v) (.rational 77845306 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 137579344 1) .v) (.rational 238562100 1)) .v) (.rational 114488864 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 153943888 1) .v) (.rational 257891452 1))
    .v) (.rational 116014710 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    122712534 1) .v) (.rational 198039282 1)) .v) (.rational 82648132 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 69977936 1) .v) (.rational 108461568 1)) .v) (.rational
    41451754 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 28215992 1) .v)
    (.rational 41864618 1)) .v) (.rational 14414766 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7803894 1) .v) (.rational 11046980 1)) .v) (.rational 3356164 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1395688 1) .v) (.rational 1878772 1)) .v)
    (.rational 490280 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 143584 1)
    .v) (.rational 183260 1)) .v) (.rational 39676 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6342 1) .v) (.rational 7658 1)) .v) (.rational 1316 1)) (.pow .g 12))) (.pow
    .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 373864 1) .v) (.rational 687240 1)) .v) (.rational 352149 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3551708 1) .v) (.rational 6402518 1)) .v) (.rational 3178847 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 15287624 1) .v) (.rational 26982886 1)) .v)
    (.rational 12932168 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 39376250 1)
    .v) (.rational 67929174 1)) .v) (.rational 31287018 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 67499236 1) .v) (.rational 113591632 1)) .v) (.rational 50010464 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 80993486 1) .v) (.rational
    132671742 1)) .v) (.rational 55475560 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 69618514 1) .v) (.rational 110734610 1)) .v) (.rational 43631798 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 43090034 1) .v) (.rational 66374582 1)) .v)
    (.rational 24406774 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 19005370 1)
    .v) (.rational 28267494 1)) .v) (.rational 9583763 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5804766 1) .v) (.rational 8309812 1)) .v) (.rational 2558329 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1160142 1) .v) (.rational 1593072 1)) .v)
    (.rational 436786 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 135436 1)
    .v) (.rational 177772 1)) .v) (.rational 42336 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6930 1) .v) (.rational 8666 1)) .v) (.rational 1736 1)) (.pow .g 12))) (.pow
    .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 110738 1) .v) (.rational 193870 1)) .v) (.rational 89052 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1107380 1) .v) (.rational 1910906 1)) .v) (.rational 856643 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5031576 1) .v) (.rational 8547692 1)) .v)
    (.rational 3729269 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 13723854 1)
    .v) (.rational 22920912 1)) .v) (.rational 9700470 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25001364 1) .v) (.rational 40988766 1)) .v) (.rational 16761630 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 32010384 1) .v) (.rational 51426396
    1)) .v) (.rational 20225394 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    29494920 1) .v) (.rational 46343304 1)) .v) (.rational 17430126 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 19674324 1) .v) (.rational 30166344 1)) .v) (.rational
    10775448 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 9410514 1) .v)
    (.rational 14045322 1)) .v) (.rational 4724220 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3140204 1) .v) (.rational 4549306 1)) .v) (.rational 1425555 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 691856 1) .v) (.rational 969836 1)) .v)
    (.rational 279317 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 90030 1) .v)
    (.rational 121688 1)) .v) (.rational 31658 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5208 1) .v) (.rational 6762 1)) .v) (.rational 1554 1)) (.pow .g 12))) (.pow
    .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 24142 1) .v) (.rational 40546 1)) .v) (.rational 16960 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 253491 1) .v) (.rational 421500 1)) .v) (.rational 173283 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1212404 1) .v) (.rational 1994176 1)) .v)
    (.rational 804218 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3490623 1)
    .v) (.rational 5673760 1)) .v) (.rational 2239561 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6733152 1) .v) (.rational 10803150 1)) .v) (.rational 4162734 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 9159702 1) .v) (.rational 14488392 1))
    .v) (.rational 5432766 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9002784
    1) .v) (.rational 14017920 1)) .v) (.rational 5095860 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6434406 1) .v) (.rational 9845712 1)) .v) (.rational 3454002 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3314598 1) .v) (.rational 4974510 1)) .v)
    (.rational 1674636 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1198327 1)
    .v) (.rational 1759900 1)) .v) (.rational 564559 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 288060 1) .v) (.rational 412896 1)) .v) (.rational 125106 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 41243 1) .v) (.rational 57520 1)) .v) (.rational
    16277 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2652 1) .v) (.rational
    3586 1)) .v) (.rational 934 1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3631 1) .v) (.rational 5898
    1)) .v) (.rational 2291 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 39941 1) .v)
    (.rational 64482 1)) .v) (.rational 24781 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 200578 1) .v) (.rational 321664 1)) .v) (.rational 122166 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 607845 1) .v) (.rational 967690 1)) .v) (.rational
    362725 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1237515 1) .v)
    (.rational 1954350 1)) .v) (.rational 721875 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1782282 1) .v) (.rational 2789796 1)) .v) (.rational 1013562 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1860852 1) .v) (.rational 2884224 1)) .v)
    (.rational 1028412 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1418226 1)
    .v) (.rational 2174148 1)) .v) (.rational 758802 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 782445 1) .v) (.rational 1184790 1)) .v) (.rational 403425 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 304465 1) .v) (.rational 454650 1)) .v)
    (.rational 150425 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 79226 1) .v)
    (.rational 116448 1)) .v) (.rational 37246 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12361 1) .v) (.rational 17842 1)) .v) (.rational 5481 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 873 1) .v) (.rational 1234 1)) .v) (.rational 361 1))
    (.pow .g 12))) (.pow .f 6))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 334 1) .v) (.rational 530 1)) .v) (.rational 196 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3841 1) .v) (.rational 6078 1)) .v) (.rational 2237
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 20207 1) .v) (.rational 31878 1)) .v)
    (.rational 11671 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 64295 1) .v)
    (.rational 101090 1)) .v) (.rational 36795 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 137775 1) .v) (.rational 215820 1)) .v) (.rational 78045 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 209418 1) .v) (.rational 326700 1)) .v) (.rational
    117282 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 231462 1) .v) (.rational
    359436 1)) .v) (.rational 127974 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 187374 1) .v) (.rational 289476 1)) .v) (.rational 102102 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 110220 1) .v) (.rational 169290 1)) .v) (.rational
    59070 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 45925 1) .v) (.rational
    70070 1)) .v) (.rational 24145 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    12859 1) .v) (.rational 19470 1)) .v) (.rational 6611 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2171 1) .v) (.rational 3258 1)) .v) (.rational 1087 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 167 1) .v) (.rational 248 1)) .v) (.rational 81
    1)) (.pow .g 12))) (.pow .f 7))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 14 1) .v) (.rational 22 1)) .v) (.rational 8 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 168 1) .v) (.rational 264 1)) .v) (.rational 96 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 924 1) .v) (.rational 1452 1)) .v)
    (.rational 528 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3080 1) .v)
    (.rational 4840 1)) .v) (.rational 1760 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6930 1) .v) (.rational 10890 1)) .v) (.rational 3960 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11088 1) .v) (.rational 17424 1)) .v) (.rational 6336 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 12936 1) .v) (.rational 20328 1))
    .v) (.rational 7392 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 11088 1)
    .v) (.rational 17424 1)) .v) (.rational 6336 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6930 1) .v) (.rational 10890 1)) .v) (.rational 3960 1)) (.pow .g 8))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3080 1) .v) (.rational 4840 1)) .v) (.rational 1760
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 924 1) .v) (.rational 1452 1))
    .v) (.rational 528 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 168 1) .v)
    (.rational 264 1)) .v) (.rational 96 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14 1) .v) (.rational 22 1)) .v) (.rational 8 1)) (.pow .g 12))) (.pow .f 8))) .e)

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0501

namespace FullLow0502
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsLow1.c014 e f g v*((e+f)*(e+f+g))^5*(f+g)^4+
    1*SmallGap.PolarCoefficientsLow2.c014 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^4+
    4*SmallGap.PolarCoefficientsLow0.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow1.c023 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow2.c023 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^3+
    12*SmallGap.PolarCoefficientsLow0.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow1.c032 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow2.c032 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)^2+
    24*SmallGap.PolarCoefficientsLow0.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    8*SmallGap.PolarCoefficientsLow1.c041 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)+
    1*SmallGap.PolarCoefficientsLow2.c041 e f g v*e^4*((e+f)*(e+f+g))^5*(f+g)+
    40*SmallGap.PolarCoefficientsLow0.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsLow1.c050 e f g v*e^4*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow2.c050 e f g v*e^5*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow0.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    1*SmallGap.PolarCoefficientsLow0.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow0.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow0.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsLow0.c140 e f g v*e^4*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(28*SmallGap.ReducedLayers.low0_010_0 e g v*e^6+8*SmallGap.ReducedLayers.low0_010_1
    e g v*e^7+1*SmallGap.ReducedLayers.low0_010_2 e g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.low1_020_0 e g v*e^4+6*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_020_2 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 336 1) .v)
    (.rational 11208 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 286 1) .v) (.rational
    6876 1)) .v) (.rational 101702 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 715 1) .v)
    (.rational 10772 1)) .v) (.rational 136941 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 5433 1) .v) (.rational 66172 1)) .v) (.rational 581201 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16299 1) .v) (.rational 140976 1)) .v) (.rational 1079985
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 17633 1) .v) (.rational 98142 1)) .v)
    (.rational 700781 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 48462 1) .v) (.rational 398334 1)) .v) (.rational 2346348 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 169617 1) .v) (.rational 1072342 1)) .v) (.rational 5569909 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 229127 1) .v) (.rational 1064274 1)) .v)
    (.rational 4962057 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 148775 1)
    .v) (.rational 479778 1)) .v) (.rational 2043533 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 269735 1) .v) (.rational
    1682474 1)) .v) (.rational 7114553 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1078940 1)
    .v) (.rational 5471126 1)) .v) (.rational 20589365 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1738948 1) .v) (.rational 6989932 1)) .v) (.rational 23398907 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1440554 1) .v) (.rational 4462508 1)) .v) (.rational
    13207763 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 644677 1) .v)
    (.rational 1492874 1)) .v) (.rational 3840590 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1049934 1) .v)
    (.rational 5300416 1)) .v) (.rational 16817177 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4724703 1) .v) (.rational 20194510 1)) .v) (.rational 57499299 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8821416 1) .v) (.rational 31426200 1)) .v) (.rational
    79657336 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8826342 1) .v)
    (.rational 25776566 1)) .v) (.rational 57366534 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5089850 1) .v) (.rational 11989522 1)) .v) (.rational 22875487 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1683077 1) .v) (.rational 3157884 1)) .v)
    (.rational 4954119 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3035524 1) .v) (.rational 12921008
    1)) .v) (.rational 31745402 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 15177620 1) .v)
    (.rational 56421798 1)) .v) (.rational 125386694 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32154308 1) .v) (.rational 103278248 1)) .v) (.rational 205336628 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 37551512 1) .v) (.rational 103074622 1)) .v)
    (.rational 180420277 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 26317500
    1) .v) (.rational 61102124 1)) .v) (.rational 91916489 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11268212 1) .v) (.rational 21960542 1)) .v) (.rational 27358855 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2856792 1) .v) (.rational 4666592
    1)) .v) (.rational 4544239 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6756530 1) .v)
    (.rational 24949706 1)) .v) (.rational 48627500 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 37160915 1) .v) (.rational 122801844 1)) .v) (.rational 218173585 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 87963379 1) .v) (.rational 258096474 1)) .v)
    (.rational 413095724 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 117128343
    1) .v) (.rational 302725546 1)) .v) (.rational 429572569 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 96194912 1) .v) (.rational 217387798 1)) .v) (.rational 267458510
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 50209663 1) .v) (.rational
    98653730 1)) .v) (.rational 101952409 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16517925 1) .v) (.rational 28162952 1)) .v) (.rational 23354520 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3265547 1) .v) (.rational 4853608 1)) .v)
    (.rational 3023623 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11840077 1)
    .v) (.rational 38736802 1)) .v) (.rational 61078719 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 71040462 1) .v) (.rational 212120326 1)) .v) (.rational 307244907 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 185661025 1) .v) (.rational 502876242 1)) .v)
    (.rational 661494482 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 277100890
    1) .v) (.rational 676662316 1)) .v) (.rational 796381416 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 260146899 1) .v) (.rational 569419278 1)) .v) (.rational
    587847669 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 159427338 1) .v)
    (.rational 311323272 1)) .v) (.rational 274487046 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 64015465 1) .v) (.rational 111248774 1)) .v) (.rational 80770823 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 16429368 1) .v) (.rational 25445468
    1)) .v) (.rational 14476335 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2534830 1) .v) (.rational 3524568 1)) .v) (.rational 1471113 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 16562518 1) .v) (.rational 48798932 1)) .v)
    (.rational 63300887 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 107656367 1) .v)
    (.rational 294187658 1)) .v) (.rational 353305789 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 307692990 1) .v) (.rational 776031146 1)) .v) (.rational 853774427 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 508091408 1) .v) (.rational 1176849476 1))
    .v) (.rational 1170365916 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    535548009 1) .v) (.rational 1133744028 1)) .v) (.rational 1001870115 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 375610536 1) .v) (.rational 723742116 1)) .v)
    (.rational 555790038 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 177185348
    1) .v) (.rational 309863218 1)) .v) (.rational 200853079 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 55499332 1) .v) (.rational 88045514 1)) .v) (.rational 46375740
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 11106209 1) .v) (.rational
    16033318 1)) .v) (.rational 6538438 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1314792 1) .v) (.rational 1741264 1)) .v) (.rational 519320 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 18636464 1) .v) (.rational
    50102052 1)) .v) (.rational 54277522 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    130455248 1) .v) (.rational 329664038 1)) .v) (.rational 333278954 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 404593123 1) .v) (.rational 957191158 1)) .v) (.rational
    894596615 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 731640514 1) .v)
    (.rational 1613805842 1)) .v) (.rational 1378256248 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 854100045 1) .v) (.rational 1749280734 1)) .v) (.rational 1345507659
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 672978924 1) .v) (.rational
    1275001584 1)) .v) (.rational 867230988 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 363380069 1) .v) (.rational 634909058 1)) .v) (.rational 373123541 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 133663682 1) .v) (.rational 215020984 1))
    .v) (.rational 106025091 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    32607682 1) .v) (.rational 48321446 1)) .v) (.rational 19281299 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4996125 1) .v) (.rational 6845782 1)) .v) (.rational
    2119812 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 434387 1) .v)
    (.rational 554578 1)) .v) (.rational 127976 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16913050 1) .v) (.rational 41940938 1))
    .v) (.rational 38484368 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 126847875 1) .v)
    (.rational 299028780 1)) .v) (.rational 258125925 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 424127825 1) .v) (.rational 947290608 1)) .v) (.rational 763058759 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 832971425 1) .v) (.rational 1756528664 1))
    .v) (.rational 1307423309 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1065505475 1) .v) (.rational 2113879818 1)) .v) (.rational 1436474473 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 930085200 1) .v) (.rational 1730034264 1)) .v)
    (.rational 1057498956 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 564135044
    1) .v) (.rational 980815066 1)) .v) (.rational 529470949 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 237374148 1) .v) (.rational 384855190 1)) .v) (.rational
    179372310 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 67916159 1) .v)
    (.rational 102575262 1)) .v) (.rational 40163577 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12657870 1) .v) (.rational 17825304 1)) .v) (.rational 5682544 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1419376 1) .v) (.rational 1870426 1)) .v)
    (.rational 470423 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 82102 1) .v)
    (.rational 101910 1)) .v) (.rational 19808 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12355761 1) .v) (.rational
    28525146 1)) .v) (.rational 22475427 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 98846088
    1) .v) (.rational 219023170 1)) .v) (.rational 163675195 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 354354374 1) .v) (.rational 751487832 1)) .v) (.rational 529034175 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 750674078 1) .v) (.rational 1519151892
    1)) .v) (.rational 999327227 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1043180767 1) .v) (.rational 2008343410 1)) .v) (.rational 1222480160 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 997818592 1) .v) (.rational 1821837390 1)) .v)
    (.rational 1014063650 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 670266193
    1) .v) (.rational 1157140310 1)) .v) (.rational 580559525 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 316567244 1) .v) (.rational 515388124 1)) .v) (.rational
    229058577 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 103469677 1) .v)
    (.rational 158545346 1)) .v) (.rational 61139852 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 22567588 1) .v) (.rational 32518636 1)) .v) (.rational 10626045 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 3067795 1) .v) (.rational 4160518 1)) .v)
    (.rational 1123928 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 227666 1)
    .v) (.rational 291476 1)) .v) (.rational 63810 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6689 1) .v) (.rational 8126 1)) .v) (.rational 1437 1)) (.pow .g 12)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    7217858 1) .v) (.rational 15639752 1)) .v) (.rational 10728239 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 61351793 1) .v) (.rational 128641106 1)) .v) (.rational 84379817 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 234701764 1) .v) (.rational 475100692 1)) .v)
    (.rational 296355998 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 533227370
    1) .v) (.rational 1039468598 1)) .v) (.rational 612602378 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 799352332 1) .v) (.rational 1496629154 1)) .v) (.rational
    826899497 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 830517155 1) .v)
    (.rational 1489362268 1)) .v) (.rational 764336787 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 611046756 1) .v) (.rational 1046606428 1)) .v) (.rational 493394321 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 319346500 1) .v) (.rational
    521009126 1)) .v) (.rational 222652716 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 116998505 1) .v) (.rational 181373578 1)) .v) (.rational 69172873 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 29089822 1) .v) (.rational 42768614 1)) .v)
    (.rational 14297822 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 4612982 1)
    .v) (.rational 6426116 1)) .v) (.rational 1847043 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 413008 1) .v) (.rational 545392 1)) .v) (.rational 132384 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 15451 1) .v) (.rational 19384 1)) .v)
    (.rational 3933 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 3330576 1) .v) (.rational 6823192 1)) .v)
    (.rational 4133210 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 29975184 1) .v) (.rational
    59844418 1)) .v) (.rational 34945398 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    121864806 1) .v) (.rational 236647116 1)) .v) (.rational 132634558 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 295480944 1) .v) (.rational 556940738 1)) .v) (.rational
    298092633 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 475021682 1) .v)
    (.rational 867106504 1)) .v) (.rational 440560075 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 532266518 1) .v) (.rational 938689710 1)) .v) (.rational 449544003 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 425154359 1) .v) (.rational
    722554902 1)) .v) (.rational 323439732 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 243156820 1) .v) (.rational 397196918 1)) .v) (.rational 164543831 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 98444389 1) .v) (.rational 154162158 1)) .v)
    (.rational 58414998 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 27381382 1)
    .v) (.rational 41007064 1)) .v) (.rational 14021735 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4935227 1) .v) (.rational 7054358 1)) .v) (.rational 2144218 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 513200 1) .v) (.rational 699264 1)) .v)
    (.rational 186064 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 23009 1) .v)
    (.rational 29882 1)) .v) (.rational 6873 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1190446 1)
    .v) (.rational 2321750 1)) .v) (.rational 1260815 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11309237 1) .v) (.rational 21626100 1)) .v) (.rational 11409920 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 48687113 1) .v) (.rational 91144706 1)) .v) (.rational
    46568174 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 125454917 1) .v)
    (.rational 229532386 1)) .v) (.rational 113137279 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 215210490 1) .v) (.rational 384107522 1)) .v) (.rational 181838912 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 258522509 1) .v) (.rational
    449199626 1)) .v) (.rational 203176513 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 222578531 1) .v) (.rational 375680130 1)) .v) (.rational 161350931 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 138084609 1) .v) (.rational 225862942 1))
    .v) (.rational 91443019 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    61101847 1) .v) (.rational 96612256 1)) .v) (.rational 36556034 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 18746090 1) .v) (.rational 28579322 1)) .v) (.rational
    10005627 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 3769808 1) .v)
    (.rational 5527556 1)) .v) (.rational 1770163 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 443854 1) .v) (.rational 624520 1)) .v) (.rational 180666 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 22981 1) .v) (.rational 30976 1)) .v) (.rational
    7995 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 319787 1) .v) (.rational 597806 1)) .v)
    (.rational 295793 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3197870 1) .v) (.rational
    5892354 1)) .v) (.rational 2853697 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    14531989 1) .v) (.rational 26361426 1)) .v) (.rational 12467180 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 39648606 1) .v) (.rational 70715812 1)) .v) (.rational
    32570362 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 72267425 1) .v)
    (.rational 126543394 1)) .v) (.rational 56582609 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 92602468 1) .v) (.rational 158934572 1)) .v) (.rational 68737486 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 85427342 1) .v) (.rational 143450524 1)) .v)
    (.rational 59747240 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 57080260 1)
    .v) (.rational 93589040 1)) .v) (.rational 37346128 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 27367001 1) .v) (.rational 43715482 1)) .v) (.rational 16611707 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 9162030 1) .v) (.rational 14223874
    1)) .v) (.rational 5110089 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2027701 1) .v) (.rational 3051586 1)) .v) (.rational 1027788 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 265502 1) .v) (.rational 386300 1)) .v) (.rational 120798
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 15491 1) .v) (.rational 21734
    1)) .v) (.rational 6243 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 61564 1) .v) (.rational
    111112 1)) .v) (.rational 51003 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 646422 1) .v)
    (.rational 1155202 1)) .v) (.rational 522570 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3091978 1) .v) (.rational 5466600 1)) .v) (.rational 2433257 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8903761 1) .v) (.rational 15558886 1)) .v) (.rational
    6802365 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 17180289 1) .v)
    (.rational 29640864 1)) .v) (.rational 12702285 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 23383704 1) .v) (.rational 39783060 1)) .v) (.rational 16670256 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 23000208 1) .v) (.rational 38533488 1)) .v)
    (.rational 15743070 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 16455942 1)
    .v) (.rational 27105996 1)) .v) (.rational 10760814 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8489586 1) .v) (.rational 13724136 1)) .v) (.rational 5272665 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3075514 1) .v) (.rational 4869514 1)) .v)
    (.rational 1801710 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 741390 1)
    .v) (.rational 1147048 1)) .v) (.rational 406353 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 106561 1) .v) (.rational 160686 1)) .v) (.rational 54125 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 6889 1) .v) (.rational 10096 1)) .v)
    (.rational 3207 1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7843 1) .v) (.rational 13784 1)) .v)
    (.rational 5993 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 86273 1) .v) (.rational
    150722 1)) .v) (.rational 64969 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 433266
    1) .v) (.rational 752024 1)) .v) (.rational 321098 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1313105 1) .v) (.rational 2263010 1)) .v) (.rational 956145 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2673735 1) .v) (.rational 4572060 1)) .v)
    (.rational 1909245 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3851586 1)
    .v) (.rational 6529668 1)) .v) (.rational 2691186 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4022676 1) .v) (.rational 6754944 1)) .v) (.rational 2743188 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3067242 1) .v) (.rational 5096148 1)) .v)
    (.rational 2035146 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1693305 1)
    .v) (.rational 2780160 1)) .v) (.rational 1089195 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 659485 1) .v) (.rational 1068410 1)) .v) (.rational 409445 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 171818 1) .v) (.rational 274184 1)) .v)
    (.rational 102418 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 26853 1) .v)
    (.rational 42122 1)) .v) (.rational 15269 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1901 1) .v) (.rational 2924 1)) .v) (.rational 1023 1)) (.pow .g 12))) (.pow .f
    6))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 568 1) .v) (.rational 984 1)) .v) (.rational 416 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6532 1) .v) (.rational 11286 1)) .v) (.rational 4754 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 34364 1) .v) (.rational 59202 1)) .v) (.rational 24838 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 109340 1) .v) (.rational 187770 1)) .v)
    (.rational 78430 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 234300 1) .v)
    (.rational 400950 1)) .v) (.rational 166650 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 356136 1) .v) (.rational 607068 1)) .v) (.rational 250932 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 393624 1) .v) (.rational 668052 1)) .v)
    (.rational 274428 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 318648 1) .v)
    (.rational 538164 1)) .v) (.rational 219516 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 187440 1) .v) (.rational 314820 1)) .v) (.rational 127380 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 78100 1) .v) (.rational 130350 1)) .v) (.rational
    52250 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 21868 1) .v) (.rational
    36234 1)) .v) (.rational 14366 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3692 1) .v) (.rational 6066 1)) .v) (.rational 2374 1)) (.pow .g 11))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 284 1) .v) (.rational 462 1)) .v) (.rational 178 1)) (.pow .g 12)))
    (.pow .f 7))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 16 1) .v) (.rational 28 1)) .v) (.rational 12 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 192 1) .v) (.rational 336 1)) .v) (.rational 144 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1056 1) .v) (.rational 1848 1)) .v) (.rational 792 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3520 1) .v) (.rational 6160 1)) .v)
    (.rational 2640 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7920 1) .v)
    (.rational 13860 1)) .v) (.rational 5940 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12672 1) .v) (.rational 22176 1)) .v) (.rational 9504 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 14784 1) .v) (.rational 25872 1)) .v) (.rational 11088 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 12672 1) .v) (.rational 22176 1))
    .v) (.rational 9504 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 7920 1) .v)
    (.rational 13860 1)) .v) (.rational 5940 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3520 1) .v) (.rational 6160 1)) .v) (.rational 2640 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1056 1) .v) (.rational 1848 1)) .v) (.rational 792 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 192 1) .v) (.rational 336 1)) .v)
    (.rational 144 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 16 1) .v)
    (.rational 28 1)) .v) (.rational 12 1)) (.pow .g 12))) (.pow .f 8)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0502

namespace FullLow0503
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsLow2.c014 e f g v*((e+f)*(e+f+g))^5*(f+g)^4+
    1*SmallGap.PolarCoefficientsLow3.c014 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^4+
    4*SmallGap.PolarCoefficientsLow1.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow2.c023 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow3.c023 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^3+
    8*SmallGap.PolarCoefficientsLow0.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow1.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow2.c032 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow3.c032 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)^2+
    32*SmallGap.PolarCoefficientsLow0.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsLow1.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    8*SmallGap.PolarCoefficientsLow2.c041 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)+
    1*SmallGap.PolarCoefficientsLow3.c041 e f g v*e^4*((e+f)*(e+f+g))^5*(f+g)+
    80*SmallGap.PolarCoefficientsLow0.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsLow1.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsLow2.c050 e f g v*e^4*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow3.c050 e f g v*e^5*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow1.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    2*SmallGap.PolarCoefficientsLow0.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow1.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow0.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow1.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow0.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsLow1.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    8*SmallGap.PolarCoefficientsLow0.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow1.c140 e f g v*e^4*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(56*SmallGap.ReducedLayers.low0_010_0 e g v*e^5+28*SmallGap.ReducedLayers.low0_010_1
    e g v*e^6+8*SmallGap.ReducedLayers.low0_010_2 e g v*e^7+1*SmallGap.ReducedLayers.low0_010_3 e
    g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(20*SmallGap.ReducedLayers.low1_020_0 e g v*e^3+15*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_020_2 e g v*e^5+1*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1276 1) .v) (.rational 44692
    1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 990 1) .v) (.rational 24728 1)) .v)
    (.rational 391191 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2475 1) .v) (.rational
    38192 1)) .v) (.rational 519743 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 18195 1) .v) (.rational 227388 1)) .v) (.rational 2155831 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 54585 1) .v) (.rational 476352 1)) .v) (.rational 3949161 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 59070 1) .v) (.rational 321598 1)) .v) (.rational
    2516110 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 157350 1) .v) (.rational 1316648 1)) .v) (.rational 8389343 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 550725 1) .v) (.rational 3488672 1)) .v) (.rational 19630362 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 744195 1) .v) (.rational 3382208 1)) .v)
    (.rational 17176572 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 483675 1)
    .v) (.rational 1470880 1)) .v) (.rational 6910442 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 849861 1) .v) (.rational
    5374308 1)) .v) (.rational 24508473 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3399444
    1) .v) (.rational 17237594 1)) .v) (.rational 69941029 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5480780 1) .v) (.rational 21631934 1)) .v) (.rational 78140591 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4544286 1) .v) (.rational 13492382 1)) .v)
    (.rational 43172539 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2037123 1)
    .v) (.rational 4381398 1)) .v) (.rational 12207312 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3209704 1) .v)
    (.rational 16409502 1)) .v) (.rational 55784759 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14443668 1) .v) (.rational 61812876 1)) .v) (.rational 188237186 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 26976624 1) .v) (.rational 94894964 1)) .v) (.rational
    256720415 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 27014400 1) .v)
    (.rational 76609204 1)) .v) (.rational 181392019 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 15602676 1) .v) (.rational 35007810 1)) .v) (.rational 70634728 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5172582 1) .v) (.rational 9059792 1)) .v)
    (.rational 14838257 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8994359 1) .v) (.rational 38820160
    1)) .v) (.rational 101335513 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 44971795 1) .v)
    (.rational 167978344 1)) .v) (.rational 395485135 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 95307214 1) .v) (.rational 304372352 1)) .v) (.rational 638709400 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 111398086 1) .v) (.rational 300461234 1)) .v)
    (.rational 552103373 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 78190647
    1) .v) (.rational 176154126 1)) .v) (.rational 275858370 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 33560179 1) .v) (.rational 62709934 1)) .v) (.rational 80221238
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8539418 1) .v) (.rational
    13259942 1)) .v) (.rational 12962575 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    19365926 1) .v) (.rational 72729364 1)) .v) (.rational 149257101 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 106512593 1) .v) (.rational 355439144 1)) .v) (.rational 662679488 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 252215255 1) .v) (.rational 741477166 1))
    .v) (.rational 1239964896 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    336124200 1) .v) (.rational 863185800 1)) .v) (.rational 1272246816 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 276469880 1) .v) (.rational 615605688 1)) .v)
    (.rational 780226910 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 144653131
    1) .v) (.rational 277964908 1)) .v) (.rational 292476161 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 47758333 1) .v) (.rational 79254570 1)) .v) (.rational 65841571
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 9489840 1) .v) (.rational
    13733380 1)) .v) (.rational 8401047 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    32732281 1) .v) (.rational 109374032 1)) .v) (.rational 180066519 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 196393686 1) .v) (.rational 595695002 1)) .v) (.rational 897903751 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 513454002 1) .v) (.rational 1404638880 1))
    .v) (.rational 1914783251 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    766994555 1) .v) (.rational 1880579690 1)) .v) (.rational 2281501849 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 721163045 1) .v) (.rational 1576035540 1)) .v)
    (.rational 1665774007 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 443015396
    1) .v) (.rational 859707052 1)) .v) (.rational 769374376 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 178518706 1) .v) (.rational 307485530 1)) .v) (.rational
    224309044 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 46048817 1) .v)
    (.rational 70750392 1)) .v) (.rational 40057064 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7154810 1) .v) (.rational 9929790 1)) .v) (.rational 4119007 1)) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 43986672 1) .v) (.rational
    133028654 1)) .v) (.rational 178944755 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    285913368 1) .v) (.rational 798751034 1)) .v) (.rational 991930226 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 817473230 1) .v) (.rational 2099055726 1)) .v) (.rational
    2379876055 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1351055717 1) .v)
    (.rational 3172914364 1)) .v) (.rational 3238607733 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1426228271 1) .v) (.rational 3049858326 1)) .v) (.rational 2752977929
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1002679914 1) .v) (.rational
    1945853934 1)) .v) (.rational 1518343886 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 474657164 1) .v) (.rational 834878490 1)) .v) (.rational 547157804 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 149423065 1) .v) (.rational 238686852 1))
    .v) (.rational 126837154 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    30111301 1) .v) (.rational 43978072 1)) .v) (.rational 18216604 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3599043 1) .v) (.rational 4866648 1)) .v) (.rational
    1518252 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    47298753 1) .v) (.rational 131223796 1)) .v) (.rational 146748017 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 331091271 1) .v) (.rational 860912004 1)) .v) (.rational 896642859 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1027223708 1) .v) (.rational 2493267928 1))
    .v) (.rational 2395166654 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1859155725 1) .v) (.rational 4195356928 1)) .v) (.rational 3673695143 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2173581337 1) .v) (.rational 4543092120 1)) .v)
    (.rational 3573764311 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1716654498 1) .v) (.rational 3313122968 1)) .v) (.rational 2299669102 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 930117070 1) .v) (.rational 1654467824 1)) .v)
    (.rational 991440742 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 343810909
    1) .v) (.rational 563720358 1)) .v) (.rational 284254792 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 84449545 1) .v) (.rational 128027474 1)) .v) (.rational 52830734
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 13061896 1) .v) (.rational
    18436310 1)) .v) (.rational 6074453 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1150452 1) .v) (.rational 1528476 1)) .v) (.rational 398375 1)) (.pow .g 10)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 40741518 1) .v)
    (.rational 104825556 1)) .v) (.rational 99113233 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 305561385 1) .v) (.rational 745835622 1)) .v) (.rational 662740086 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1022040223 1) .v) (.rational 2358764350 1)) .v)
    (.rational 1953911512 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2008913777 1) .v) (.rational 4369098226 1)) .v) (.rational 3341331910 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2573438929 1) .v) (.rational 5257128722 1)) .v)
    (.rational 3668805275 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2251427442 1) .v) (.rational 4307604194 1)) .v) (.rational 2705221436 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1370110626 1) .v) (.rational 2449707512 1)) .v)
    (.rational 1361794476 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 579230295
    1) .v) (.rational 966803582 1)) .v) (.rational 466831266 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 166818601 1) .v) (.rational 260128230 1)) .v) (.rational
    106919326 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 31374032 1) .v)
    (.rational 45852996 1)) .v) (.rational 15750415 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3562244 1) .v) (.rational 4909506 1)) .v) (.rational 1395337 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 209633 1) .v) (.rational 274820 1)) .v)
    (.rational 65187 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 28000287 1) .v) (.rational 67416404 1)) .v) (.rational
    54797279 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 224002296 1) .v) (.rational
    516904142 1)) .v) (.rational 398489523 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    803301200 1) .v) (.rational 1771708838 1)) .v) (.rational 1286934357 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1703068220 1) .v) (.rational 3579879018 1)) .v)
    (.rational 2431220077 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2369906185 1) .v) (.rational 4734299566 1)) .v) (.rational 2978771996 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2271654718 1) .v) (.rational 4301094896 1)) .v)
    (.rational 2480453050 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1530692934 1) .v) (.rational 2740359098 1)) .v) (.rational 1430647062 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 726148725 1) .v) (.rational 1227081952 1)) .v)
    (.rational 571846470 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 238807505
    1) .v) (.rational 380644166 1)) .v) (.rational 155991306 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 52530500 1) .v) (.rational 79041938 1)) .v) (.rational 28083247
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 7224866 1) .v) (.rational
    10290920 1)) .v) (.rational 3138895 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 544893 1) .v) (.rational 738278 1)) .v) (.rational 193385 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 16375 1) .v) (.rational 21232 1)) .v) (.rational 4857
    1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 15209232 1) .v) (.rational 34529370 1)) .v) (.rational 24529809
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 129278472 1) .v) (.rational 283745408 1)) .v)
    (.rational 192917986 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 494709924 1) .v)
    (.rational 1047320096 1)) .v) (.rational 677967521 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1124754990 1) .v) (.rational 2291226780 1)) .v) (.rational 1403660177
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1688200250 1) .v) (.rational
    3300947910 1)) .v) (.rational 1900414436 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1757411578 1) .v) (.rational 3290142750 1)) .v) (.rational 1765665087 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1296672828 1) .v) (.rational 2318825706 1))
    .v) (.rational 1149201318 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    680402701 1) .v) (.rational 1159824800 1)) .v) (.rational 525302548 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 250679435 1) .v) (.rational 406681570 1)) .v)
    (.rational 166443312 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 62810940
    1) .v) (.rational 96910190 1)) .v) (.rational 35442441 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10066646 1) .v) (.rational 14778610 1)) .v) (.rational 4785543 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 914551 1) .v) (.rational 1280088
    1)) .v) (.rational 365537 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    34917 1) .v) (.rational 46754 1)) .v) (.rational 11837 1)) (.pow .g 12))) .f)) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6423661 1)
    .v) (.rational 13842744 1)) .v) (.rational 8737823 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 57812949 1) .v) (.rational 121338576 1)) .v) (.rational 73942289 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 235104350 1) .v) (.rational 479678720 1)) .v) (.rational
    281083292 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 570407956 1) .v)
    (.rational 1129058442 1)) .v) (.rational 633292479 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 918003473 1) .v) (.rational 1759100838 1)) .v) (.rational 939483602 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1030379035 1) .v) (.rational
    1907199306 1)) .v) (.rational 963978540 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 825077644 1) .v) (.rational 1471871042 1)) .v) (.rational 699200415 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 473551435 1) .v) (.rational 812392638 1))
    .v) (.rational 359890390 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    192665561 1) .v) (.rational 317218902 1)) .v) (.rational 129936504 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 53951568 1) .v) (.rational 85117198 1)) .v) (.rational
    31953407 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 9814754 1) .v)
    (.rational 14822982 1)) .v) (.rational 5058037 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1033665 1) .v) (.rational 1494416 1)) .v) (.rational 460751 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 47165 1) .v) (.rational 65348 1)) .v)
    (.rational 18183 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2055674 1) .v) (.rational 4230220
    1)) .v) (.rational 2412025 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 19528903 1) .v)
    (.rational 39388804 1)) .v) (.rational 21859414 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 84092609 1) .v) (.rational 165989714 1)) .v) (.rational 89397136 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 216800150 1) .v) (.rational 418115124 1)) .v)
    (.rational 217799124 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 372246686
    1) .v) (.rational 700174260 1)) .v) (.rational 351404258 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 447795251 1) .v) (.rational 819905086 1)) .v) (.rational
    394710595 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 386334669 1) .v)
    (.rational 687190966 1)) .v) (.rational 315720965 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 240381349 1) .v) (.rational 414506646 1)) .v) (.rational 180704923 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 106802845 1) .v) (.rational
    178160654 1)) .v) (.rational 73228214 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32951666 1) .v) (.rational 53067030 1)) .v) (.rational 20422643 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6677622 1) .v) (.rational 10363696 1)) .v)
    (.rational 3708135 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 794521 1)
    .v) (.rational 1186782 1)) .v) (.rational 392261 1)) (.pow .g 11))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 41735 1) .v) (.rational 59962 1)) .v) (.rational 18227 1)) (.pow .g
    12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 478499 1) .v) (.rational 945724 1)) .v) (.rational 495261 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4784990 1) .v) (.rational 9319970 1)) .v) (.rational
    4785719 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 21748114 1) .v) (.rational
    41696236 1)) .v) (.rational 20950743 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 59360811 1) .v) (.rational 111880766 1)) .v) (.rational 54878639 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 108272607 1) .v) (.rational 200325096 1)) .v)
    (.rational 95664405 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 138889848
    1) .v) (.rational 251864820 1)) .v) (.rational 116732838 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 128332428 1) .v) (.rational 227703000 1)) .v) (.rational
    102057186 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 85942122 1) .v)
    (.rational 148924380 1)) .v) (.rational 64283454 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 41334321 1) .v) (.rational 69812556 1)) .v) (.rational 28886019 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 13897922 1) .v) (.rational 22831306 1)) .v)
    (.rational 9007875 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 3094034 1)
    .v) (.rational 4933436 1)) .v) (.rational 1845407 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 408403 1) .v) (.rational 630790 1)) .v) (.rational 222387 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 24093 1) .v) (.rational 35984 1)) .v)
    (.rational 11891 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 75706 1) .v) (.rational 144578 1))
    .v) (.rational 70734 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 794913 1) .v) (.rational
    1503050 1)) .v) (.rational 725771 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    3802690 1) .v) (.rational 7113120 1)) .v) (.rational 3385346 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 10953310 1) .v) (.rational 20249742 1)) .v) (.rational 9484376
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 21144915 1) .v) (.rational
    38594418 1)) .v) (.rational 17757699 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 28800822 1) .v) (.rational 51838308 1)) .v) (.rational 23382474 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 28358736 1) .v) (.rational 50266608 1)) .v)
    (.rational 22174656 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 20320560 1)
    .v) (.rational 35418012 1)) .v) (.rational 15238068 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10505460 1) .v) (.rational 17975142 1)) .v) (.rational 7517976 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3816865 1) .v) (.rational 6399218
    1)) .v) (.rational 2592099 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    923766 1) .v) (.rational 1514480 1)) .v) (.rational 591590 1)) (.pow .g 10))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 133498 1) .v) (.rational 213558 1)) .v) (.rational 80060 1))
    (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 8695 1) .v) (.rational 13542 1))
    .v) (.rational 4847 1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7176 1) .v) (.rational 13336 1))
    .v) (.rational 6208 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 78936 1) .v) (.rational
    145828 1)) .v) (.rational 67372 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 396442
    1) .v) (.rational 727674 1)) .v) (.rational 333392 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1201660 1) .v) (.rational 2190120 1)) .v) (.rational 994220 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2447370 1) .v) (.rational 4426050 1)) .v)
    (.rational 1988760 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3526752 1)
    .v) (.rational 6323832 1)) .v) (.rational 2809176 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3685332 1) .v) (.rational 6546036 1)) .v) (.rational 2870784 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2812104 1) .v) (.rational 4942848 1)) .v)
    (.rational 2136504 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1554060 1)
    .v) (.rational 2699820 1)) .v) (.rational 1147920 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 606120 1) .v) (.rational 1039300 1)) .v) (.rational 433660 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 158226 1) .v) (.rational 267346 1)) .v)
    (.rational 109168 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 24796 1) .v)
    (.rational 41208 1)) .v) (.rational 16412 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1762 1) .v) (.rational 2874 1)) .v) (.rational 1112 1)) (.pow .g 12))) (.pow .f
    6))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 300 1) .v) (.rational 548 1)) .v) (.rational 248 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3450 1) .v) (.rational 6286 1)) .v) (.rational 2836 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 18150 1) .v) (.rational 32978 1)) .v) (.rational 14828 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 57750 1) .v) (.rational 104610 1)) .v)
    (.rational 46860 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 123750 1) .v)
    (.rational 223410 1)) .v) (.rational 99660 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 188100 1) .v) (.rational 338316 1)) .v) (.rational 150216 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 207900 1) .v) (.rational 372372 1)) .v) (.rational
    164472 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 168300 1) .v) (.rational
    300036 1)) .v) (.rational 131736 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 99000 1) .v) (.rational 175560 1)) .v) (.rational 76560 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 41250 1) .v) (.rational 72710 1)) .v) (.rational 31460 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 11550 1) .v) (.rational 20218 1))
    .v) (.rational 8668 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1950 1)
    .v) (.rational 3386 1)) .v) (.rational 1436 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 150 1) .v) (.rational 258 1)) .v) (.rational 108 1)) (.pow .g 12))) (.pow .f
    7)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0503

namespace FullLow0504
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsLow3.c014 e f g v*((e+f)*(e+f+g))^5*(f+g)^4+
    1*SmallGap.PolarCoefficientsLow4.c014 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^4+
    4*SmallGap.PolarCoefficientsLow2.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow3.c023 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow4.c023 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^3+
    8*SmallGap.PolarCoefficientsLow1.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow2.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow3.c032 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow4.c032 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)^2+
    16*SmallGap.PolarCoefficientsLow0.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    32*SmallGap.PolarCoefficientsLow1.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsLow2.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    8*SmallGap.PolarCoefficientsLow3.c041 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)+
    1*SmallGap.PolarCoefficientsLow4.c041 e f g v*e^4*((e+f)*(e+f+g))^5*(f+g)+
    80*SmallGap.PolarCoefficientsLow0.c050 e f g v*e*((e+f)*(e+f+g))^5+
    80*SmallGap.PolarCoefficientsLow1.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsLow2.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsLow3.c050 e f g v*e^4*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow4.c050 e f g v*e^5*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow2.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    2*SmallGap.PolarCoefficientsLow1.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow2.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow0.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow1.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow2.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow0.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    6*SmallGap.PolarCoefficientsLow1.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsLow2.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsLow0.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    8*SmallGap.PolarCoefficientsLow1.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow2.c140 e f g v*e^4*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow0.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow0.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow0.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsLow0.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(70*SmallGap.ReducedLayers.low0_010_0 e g v*e^4+56*SmallGap.ReducedLayers.low0_010_1
    e g v*e^5+28*SmallGap.ReducedLayers.low0_010_2 e g v*e^6+8*SmallGap.ReducedLayers.low0_010_3 e
    g v*e^7+1*SmallGap.ReducedLayers.low0_010_4 e g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.low1_020_0 e g v*e^2+20*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_020_2 e g v*e^4+6*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_020_4 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3300 1) .v) (.rational 122540 1)) .e)
    (.add (.mul (.add (.mul (.add (.mul (.rational 2310 1) .v) (.rational 60720 1)) .v) (.rational
    1035210 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5775 1) .v) (.rational 92400 1)) .v)
    (.rational 1355739 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    41205 1) .v) (.rational 533790 1)) .v) (.rational 5500509 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 123615 1) .v) (.rational 1097880 1)) .v) (.rational 9920830 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 133815 1) .v) (.rational 715680 1)) .v) (.rational
    6194009 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 346140 1) .v) (.rational 2971512 1)) .v) (.rational 20614219 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1211490 1) .v) (.rational 7734942 1)) .v) (.rational 47480261 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1637670 1) .v) (.rational 7297134 1)) .v)
    (.rational 40718672 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1065450 1)
    .v) (.rational 3035292 1)) .v) (.rational 15946717 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1815489 1) .v) (.rational
    11709610 1)) .v) (.rational 57927469 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7261956
    1) .v) (.rational 36979010 1)) .v) (.rational 162783729 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11712208 1) .v) (.rational 45446866 1)) .v) (.rational 178419361 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9719778 1) .v) (.rational 27553306 1)) .v)
    (.rational 96170012 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4364871 1)
    .v) (.rational 8609894 1)) .v) (.rational 26293728 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6649726 1) .v)
    (.rational 34603128 1)) .v) (.rational 126669474 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 29923767 1) .v) (.rational 128689282 1)) .v) (.rational 421277961 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 55908148 1) .v) (.rational 194491078 1)) .v)
    (.rational 564545153 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 56034272
    1) .v) (.rational 154069138 1)) .v) (.rational 390270045 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 32414928 1) .v) (.rational 68875894 1)) .v) (.rational 147756004
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10773763 1) .v) (.rational
    17422462 1)) .v) (.rational 29887246 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 18030435 1) .v)
    (.rational 79284356 1)) .v) (.rational 220756471 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 90152175 1) .v) (.rational 339616672 1)) .v) (.rational 850328915 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 191123025 1) .v) (.rational 608334346 1)) .v)
    (.rational 1352231163 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 223579050
    1) .v) (.rational 592935110 1)) .v) (.rational 1147458975 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 157170223 1) .v) (.rational 343084294 1)) .v) (.rational
    560571472 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 67623129 1) .v)
    (.rational 120714778 1)) .v) (.rational 158557519 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17268549 1) .v) (.rational 25359834 1)) .v) (.rational 24761320 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 37439182 1) .v) (.rational 143694940 1)) .v)
    (.rational 311430871 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 205915501 1) .v)
    (.rational 696836918 1)) .v) (.rational 1367096748 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 487771269 1) .v) (.rational 1441702906 1)) .v) (.rational 2525120989 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 650604453 1) .v) (.rational 1664279058 1))
    .v) (.rational 2552749585 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    535954892 1) .v) (.rational 1177673542 1)) .v) (.rational 1539261294 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 281096515 1) .v) (.rational 528659948 1)) .v)
    (.rational 566196293 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 93136313
    1) .v) (.rational 150501440 1)) .v) (.rational 124972531 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 18599047 1) .v) (.rational 26233754 1)) .v) (.rational 15695980
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 60752971 1) .v) (.rational
    208393240 1)) .v) (.rational 359050541 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    364517826 1) .v) (.rational 1128449070 1)) .v) (.rational 1773788499 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 953358172 1) .v) (.rational 2645502428 1)) .v) (.rational
    3744138469 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1425377455 1) .v)
    (.rational 3522711250 1)) .v) (.rational 4412079481 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1342290490 1) .v) (.rational 2939165238 1)) .v) (.rational 3184021798
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 826593316 1) .v) (.rational
    1599393344 1)) .v) (.rational 1453903912 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 334284546 1) .v) (.rational 572674186 1)) .v) (.rational 420045518 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 86666257 1) .v) (.rational 132638556 1)) .v)
    (.rational 74886539 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 13559205 1)
    .v) (.rational 18878046 1)) .v) (.rational 7833992 1)) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 77923698 1) .v) (.rational 243154576 1)) .v) (.rational
    339864126 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 506504037 1) .v) (.rational
    1453834150 1)) .v) (.rational 1870467389 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1448741670 1) .v) (.rational 3805477280 1)) .v) (.rational 4454279300 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2396534778 1) .v) (.rational 5733038490 1)) .v)
    (.rational 6016143102 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2533891637 1) .v) (.rational 5498315156 1)) .v) (.rational 5078295811 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1785818142 1) .v) (.rational 3506674952 1)) .v)
    (.rational 2785753284 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 848469216
    1) .v) (.rational 1508395962 1)) .v) (.rational 1002337501 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 268478892 1) .v) (.rational 434188492 1)) .v) (.rational
    233910607 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 54488415 1) .v)
    (.rational 81003126 1)) .v) (.rational 34375057 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6575526 1) .v) (.rational 9136450 1)) .v) (.rational 3016443 1)) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 79371841 1) .v)
    (.rational 228375390 1)) .v) (.rational 264160053 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 555602887 1) .v) (.rational 1493755780 1)) .v) (.rational 1605875010 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1724463824 1) .v) (.rational 4314662798 1)) .v)
    (.rational 4268724602 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3123945413 1) .v) (.rational 7246038188 1)) .v) (.rational 6518795062 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3658126189 1) .v) (.rational 7839943730 1)) .v)
    (.rational 6321269973 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2896333466 1) .v) (.rational 5722117072 1)) .v) (.rational 4064104447 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1575044275 1) .v) (.rational 2866838496 1)) .v)
    (.rational 1758166207 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 585229321
    1) .v) (.rational 983397718 1)) .v) (.rational 509742671 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 144784011 1) .v) (.rational 225870248 1)) .v) (.rational 97078810
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 22614276 1) .v) (.rational
    33075418 1)) .v) (.rational 11676799 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2018368 1) .v) (.rational 2804886 1)) .v) (.rational 822571 1)) (.pow .g 10)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 64130432 1) .v)
    (.rational 171935328 1)) .v) (.rational 167839977 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 480978240 1) .v) (.rational 1220700362 1)) .v) (.rational 1118745073 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1609411612 1) .v) (.rational 3854000554 1)) .v)
    (.rational 3289455602 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3166338838 1) .v) (.rational 7131449368 1)) .v) (.rational 5614980617 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4062562754 1) .v) (.rational 8580961546 1)) .v)
    (.rational 6163334719 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3563008537 1) .v) (.rational 7041499278 1)) .v) (.rational 4554600833 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2176141883 1) .v) (.rational 4018730816 1)) .v)
    (.rational 2307349173 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 924721113
    1) .v) (.rational 1596225046 1)) .v) (.rational 801332234 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 268222208 1) .v) (.rational 433860940 1)) .v) (.rational
    187877148 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 50939681 1) .v)
    (.rational 77618560 1)) .v) (.rational 28763792 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5861161 1) .v) (.rational 8480390 1)) .v) (.rational 2699249 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 351239 1) .v) (.rational 487130 1)) .v)
    (.rational 135891 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 40814311 1) .v) (.rational 102803274 1)) .v)
    (.rational 86332975 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 326514488 1) .v)
    (.rational 787039534 1)) .v) (.rational 626818331 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1171375868 1) .v) (.rational 2694731282 1)) .v) (.rational 2022390143 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2485627536 1) .v) (.rational 5442599934 1))
    .v) (.rational 3820787352 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3464217803 1) .v) (.rational 7201207416 1)) .v) (.rational 4688806834 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3328558054 1) .v) (.rational 6553834724 1)) .v)
    (.rational 3920039361 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2250736356 1) .v) (.rational 4190401016 1)) .v) (.rational 2278266020 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1073046073 1) .v) (.rational 1887498020 1)) .v)
    (.rational 922641831 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 355331048
    1) .v) (.rational 590825174 1)) .v) (.rational 257043555 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 78904696 1) .v) (.rational 124297326 1)) .v) (.rational 47790856
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 10993390 1) .v) (.rational
    16475670 1)) .v) (.rational 5594569 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 843921 1) .v) (.rational 1210142 1)) .v) (.rational 366221 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 25992 1) .v) (.rational 35848 1)) .v) (.rational 9856
    1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 20177426 1) .v) (.rational 48063880 1)) .v) (.rational 35372590
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 171508121 1) .v) (.rational 394548430 1)) .v)
    (.rational 278072595 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 656550236 1) .v)
    (.rational 1455354086 1)) .v) (.rational 977460865 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1493964350 1) .v) (.rational 3183636038 1)) .v) (.rational 2026212319
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2245632996 1) .v) (.rational
    4589917738 1)) .v) (.rational 2750588664 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2342981173 1) .v) (.rational 4583162294 1)) .v) (.rational 2567683036 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1734444024 1) .v) (.rational 3240752930 1))
    .v) (.rational 1684170162 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    914377970 1) .v) (.rational 1629524722 1)) .v) (.rational 779146117 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 339073425 1) .v) (.rational 575912318 1)) .v)
    (.rational 251372779 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 85717876
    1) .v) (.rational 138799468 1)) .v) (.rational 54952739 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 13905682 1) .v) (.rational 21500344 1)) .v) (.rational 7697791
    1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1284478 1) .v) (.rational
    1901720 1)) .v) (.rational 617242 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 50179 1) .v) (.rational 71376 1)) .v) (.rational 21197 1)) (.pow .g 12))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    7570889 1) .v) (.rational 17148216 1)) .v) (.rational 11256621 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 68138001 1) .v) (.rational 150201560 1)) .v) (.rational 95286723 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 277185057 1) .v) (.rational 593551854 1)) .v)
    (.rational 362558639 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 673019100
    1) .v) (.rational 1397235774 1)) .v) (.rational 818326965 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1084581835 1) .v) (.rational 2178609932 1)) .v) (.rational
    1217629208 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1219853341 1) .v)
    (.rational 2365998590 1)) .v) (.rational 1255242380 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 979739208 1) .v) (.rational 1831257782 1)) .v) (.rational 916885733 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 564713237 1) .v) (.rational
    1015358530 1)) .v) (.rational 476817310 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 231111455 1) .v) (.rational 399147394 1)) .v) (.rational 174713890 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 65241290 1) .v) (.rational 108133042 1)) .v)
    (.rational 43868413 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 11999587 1)
    .v) (.rational 19083604 1)) .v) (.rational 7145924 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1282807 1) .v) (.rational 1959032 1)) .v) (.rational 676225 1)) (.pow
    .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 59745 1) .v) (.rational 87746 1)) .v)
    (.rational 28001 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2076710 1) .v) (.rational 4493612
    1)) .v) (.rational 2675269 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 19728745 1) .v)
    (.rational 41819778 1)) .v) (.rational 24261398 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 84977761 1) .v) (.rational 176194910 1)) .v) (.rational 99338001 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 219227971 1) .v) (.rational 443899370 1)) .v)
    (.rational 242473417 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 376849192
    1) .v) (.rational 743885426 1)) .v) (.rational 392320094 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 454141510 1) .v) (.rational 872351548 1)) .v) (.rational
    442481026 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 392833098 1) .v)
    (.rational 732924836 1)) .v) (.rational 356008688 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 245327186 1) .v) (.rational 443750332 1)) .v) (.rational 205448728 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 109557806 1) .v) (.rational
    191781800 1)) .v) (.rational 84216167 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34038257 1) .v) (.rational 57573666 1)) .v) (.rational 23862104 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6963485 1) .v) (.rational 11367326 1)) .v)
    (.rational 4427287 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 839243 1)
    .v) (.rational 1321338 1)) .v) (.rational 482095 1)) (.pow .g 11))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 44860 1) .v) (.rational 68122 1)) .v) (.rational 23262 1)) (.pow .g
    12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 391037 1) .v) (.rational 811792 1)) .v) (.rational 445291 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3910370 1) .v) (.rational 7997310 1)) .v) (.rational
    4306047 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 17777072 1) .v) (.rational
    35774448 1)) .v) (.rational 18872083 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 48548103 1) .v) (.rational 96008678 1)) .v) (.rational 49514699 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 88633120 1) .v) (.rational 172007692 1)) .v)
    (.rational 86514072 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 113861096
    1) .v) (.rational 216509852 1)) .v) (.rational 105908334 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 105428596 1) .v) (.rational 196109872 1)) .v) (.rational 93006438
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 70814810 1) .v) (.rational
    128632604 1)) .v) (.rational 58941246 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34199713 1) .v) (.rational 60555928 1)) .v) (.rational 26707419 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11564110 1) .v) (.rational 19923942 1)) .v)
    (.rational 8423827 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2594244 1)
    .v) (.rational 4341760 1)) .v) (.rational 1752663 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 345991 1) .v) (.rational 561662 1)) .v) (.rational 215671 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 20698 1) .v) (.rational 32556 1)) .v)
    (.rational 11858 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 44904 1) .v) (.rational 89824 1))
    .v) (.rational 46088 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 471492 1) .v) (.rational
    933626 1)) .v) (.rational 473188 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2255894
    1) .v) (.rational 4418106 1)) .v) (.rational 2209138 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6500413 1) .v) (.rational 12579476 1)) .v) (.rational 6196687 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 12557187 1) .v) (.rational 23985924 1))
    .v) (.rational 11621433 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    17121516 1) .v) (.rational 32243004 1)) .v) (.rational 15336948 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16884336 1) .v) (.rational 31306716 1)) .v) (.rational
    14588784 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 12124566 1) .v)
    (.rational 22103088 1)) .v) (.rational 10066098 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6286938 1) .v) (.rational 11250576 1)) .v) (.rational 4993662 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2293512 1) .v) (.rational 4022074 1)) .v)
    (.rational 1734608 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 558162 1)
    .v) (.rational 957530 1)) .v) (.rational 399910 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 81269 1) .v) (.rational 136140 1)) .v) (.rational 54871 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5347 1) .v) (.rational 8732 1)) .v) (.rational
    3385 1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 2350 1) .v) (.rational 4552 1)) .v) (.rational
    2218 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 25850 1) .v) (.rational 49772 1)) .v)
    (.rational 24082 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 129839 1) .v)
    (.rational 248362 1)) .v) (.rational 119243 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 393640 1) .v) (.rational 747600 1)) .v) (.rational 355880 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 802005 1) .v) (.rational 1511250 1)) .v)
    (.rational 712605 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1156380 1)
    .v) (.rational 2160264 1)) .v) (.rational 1007916 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1209390 1) .v) (.rational 2237844 1)) .v) (.rational 1031814 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 923928 1) .v) (.rational 1691664 1)) .v)
    (.rational 769656 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 511440 1) .v)
    (.rational 925500 1)) .v) (.rational 414780 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 199930 1) .v) (.rational 357100 1)) .v) (.rational 157330 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 52355 1) .v) (.rational 92162 1)) .v) (.rational
    39823 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 8240 1) .v) (.rational
    14272 1)) .v) (.rational 6032 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    589 1) .v) (.rational 1002 1)) .v) (.rational 413 1)) (.pow .g 12))) (.pow .f 6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0504

namespace FullLow0505
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsLow4.c014 e f g v*((e+f)*(e+f+g))^5*(f+g)^4+
    4*SmallGap.PolarCoefficientsLow3.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow4.c023 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^3+
    8*SmallGap.PolarCoefficientsLow2.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow3.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow4.c032 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)^2+
    16*SmallGap.PolarCoefficientsLow1.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    32*SmallGap.PolarCoefficientsLow2.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsLow3.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    8*SmallGap.PolarCoefficientsLow4.c041 e f g v*e^3*((e+f)*(e+f+g))^5*(f+g)+
    32*SmallGap.PolarCoefficientsLow0.c050 e f g v*((e+f)*(e+f+g))^5+
    80*SmallGap.PolarCoefficientsLow1.c050 e f g v*e*((e+f)*(e+f+g))^5+
    80*SmallGap.PolarCoefficientsLow2.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsLow3.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsLow4.c050 e f g v*e^4*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow3.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    2*SmallGap.PolarCoefficientsLow2.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow3.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow1.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow2.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow3.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    8*SmallGap.PolarCoefficientsLow0.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    12*SmallGap.PolarCoefficientsLow1.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    6*SmallGap.PolarCoefficientsLow2.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsLow3.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    32*SmallGap.PolarCoefficientsLow0.c140 e f g v*e*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsLow1.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    8*SmallGap.PolarCoefficientsLow2.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow3.c140 e f g v*e^4*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow1.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsLow0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow1.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsLow1.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    6*SmallGap.PolarCoefficientsLow0.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow1.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(56*SmallGap.ReducedLayers.low0_010_0 e g v*e^3+70*SmallGap.ReducedLayers.low0_010_1
    e g v*e^4+56*SmallGap.ReducedLayers.low0_010_2 e g v*e^5+28*SmallGap.ReducedLayers.low0_010_3
    e g v*e^6+8*SmallGap.ReducedLayers.low0_010_4 e g v*e^7+1*SmallGap.ReducedLayers.low0_010_5 e
    g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.low1_020_0 e g v*e^1+15*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^2+20*SmallGap.ReducedLayers.low1_020_2 e g v*e^3+15*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_020_4 e g v*e^5+1*SmallGap.ReducedLayers.low1_020_5 e g
    v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 6138 1) .v) (.rational 244398 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 3828 1) .v) (.rational 107514 1)) .v) (.rational 1993827
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 9570 1) .v) (.rational 161106 1)) .v)
    (.rational 2571030 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    66474 1) .v) (.rational 904350 1)) .v) (.rational 10213002 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 199422 1) .v) (.rational 1823346 1)) .v) (.rational 18111900 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 215952 1) .v) (.rational 1141956 1)) .v) (.rational
    11056686 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 543564 1) .v) (.rational 4839426 1)) .v) (.rational 36828678 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1902474 1) .v) (.rational 12351162 1)) .v) (.rational 83372322
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2572710 1) .v) (.rational 11288826 1))
    .v) (.rational 69909390 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1675590
    1) .v) (.rational 4441320 1)) .v) (.rational 26539320 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2771340 1) .v) (.rational
    18398552 1)) .v) (.rational 99385460 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 11085360
    1) .v) (.rational 57102112 1)) .v) (.rational 274595068 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 17885264 1) .v) (.rational 68498270 1)) .v) (.rational 294573564 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 14857032 1) .v) (.rational 40115750 1)) .v)
    (.rational 154304094 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6684300 1)
    .v) (.rational 11919016 1)) .v) (.rational 40503702 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9842370 1) .v)
    (.rational 52559792 1)) .v) (.rational 208282311 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 44290665 1) .v) (.rational 192707450 1)) .v) (.rational 681772567 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 82780528 1) .v) (.rational 286070688 1)) .v)
    (.rational 895878036 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 83042078
    1) .v) (.rational 221596566 1)) .v) (.rational 604007532 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 48118542 1) .v) (.rational 96417014 1)) .v) (.rational 221160291
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 16036045 1) .v) (.rational
    23678046 1)) .v) (.rational 42661915 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25781179 1) .v)
    (.rational 116408240 1)) .v) (.rational 347112267 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 128905895 1) .v) (.rational 493141824 1)) .v) (.rational 1318072351 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 273381237 1) .v) (.rational 872060244 1)) .v)
    (.rational 2060622145 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 320089578
    1) .v) (.rational 837761112 1)) .v) (.rational 1712643968 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 225374029 1) .v) (.rational 477366298 1)) .v) (.rational
    815332207 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 97213323 1) .v)
    (.rational 165630894 1)) .v) (.rational 223163947 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 24916247 1) .v) (.rational 34519864 1)) .v) (.rational 33417191 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 51460194 1) .v) (.rational 203427154 1)) .v)
    (.rational 466985689 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 283031067 1) .v)
    (.rational 978340992 1)) .v) (.rational 2025097630 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 670697355 1) .v) (.rational 2006084642 1)) .v) (.rational 3688510584 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 895405095 1) .v) (.rational 2294580606 1))
    .v) (.rational 3669200899 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    738799708 1) .v) (.rational 1609772950 1)) .v) (.rational 2171854987 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 388459337 1) .v) (.rational 718031454 1)) .v)
    (.rational 782491206 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 129180963
    1) .v) (.rational 204105740 1)) .v) (.rational 169091100 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 25927285 1) .v) (.rational 35819818 1)) .v) (.rational 20921799
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 79755384 1) .v) (.rational
    283012108 1)) .v) (.rational 511503944 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    478532304 1) .v) (.rational 1523252178 1)) .v) (.rational 2502259111 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1252051771 1) .v) (.rational 3549451062 1)) .v) (.rational
    5225395736 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1873712735 1) .v)
    (.rational 4699681884 1)) .v) (.rational 6086828563 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1767400297 1) .v) (.rational 3903383616 1)) .v) (.rational 4340377817
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1091180122 1) .v) (.rational
    2119265594 1)) .v) (.rational 1959816457 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 442942865 1) .v) (.rational 760070944 1)) .v) (.rational 561911310 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 115436311 1) .v) (.rational 177372690 1))
    .v) (.rational 100427315 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    18186435 1) .v) (.rational 25624718 1)) .v) (.rational 10775413 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 96896772 1) .v) (.rational 314291650 1)) .v)
    (.rational 457474341 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 629829018 1) .v)
    (.rational 1871027932 1)) .v) (.rational 2499229774 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1802241326 1) .v) (.rational 4877821860 1)) .v) (.rational 5906618299 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2984208095 1) .v) (.rational 7324068664 1))
    .v) (.rational 7918621621 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3160624901 1) .v) (.rational 7009653020 1)) .v) (.rational 6640459495 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2233430139 1) .v) (.rational 4470660714 1)) .v)
    (.rational 3627197341 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1065244412 1) .v) (.rational 1929270956 1)) .v) (.rational 1306112583 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 338899729 1) .v) (.rational 559639178 1)) .v)
    (.rational 308101713 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 69286681
    1) .v) (.rational 105806466 1)) .v) (.rational 46585977 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 8442693 1) .v) (.rational 12164672 1)) .v) (.rational 4314563 1))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 92495952 1)
    .v) (.rational 277882742 1)) .v) (.rational 333244236 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 647471664 1) .v) (.rational 1811975886 1)) .v) (.rational 2015517386 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2010478694 1) .v) (.rational 5220136818 1)) .v)
    (.rational 5331908988 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3645740532 1) .v) (.rational 8750613366 1)) .v) (.rational 8109429550 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4276623987 1) .v) (.rational 9462206006 1)) .v)
    (.rational 7843969055 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3395239717 1) .v) (.rational 6914934498 1)) .v) (.rational 5044945279 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1853685985 1) .v) (.rational 3478139394 1)) .v)
    (.rational 2194458615 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 692609218
    1) .v) (.rational 1202135450 1)) .v) (.rational 645231926 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 172661003 1) .v) (.rational 279461372 1)) .v) (.rational
    126281713 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 27246091 1) .v)
    (.rational 41628008 1)) .v) (.rational 15883957 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2464909 1) .v) (.rational 3607620 1)) .v) (.rational 1188927 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 69072876 1)
    .v) (.rational 194069278 1)) .v) (.rational 196073520 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 518046570 1) .v) (.rational 1374821102 1)) .v) (.rational 1302766366 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1734216922 1) .v) (.rational 4333288998 1)) .v)
    (.rational 3820581434 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3415370348 1) .v) (.rational 8011104136 1)) .v) (.rational 6511479462 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4389862844 1) .v) (.rational 9641813104 1)) .v)
    (.rational 7148895603 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3860659033 1) .v) (.rational 7926983068 1)) .v) (.rational 5299206420 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2367413387 1) .v) (.rational 4542912576 1)) .v)
    (.rational 2705077826 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1011698481 1) .v) (.rational 1817385234 1)) .v) (.rational 953193043 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 295741022 1) .v) (.rational 499408344 1)) .v)
    (.rational 228990919 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 56761231
    1) .v) (.rational 90730126 1)) .v) (.rational 36371720 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6624199 1) .v) (.rational 10113778 1)) .v) (.rational 3584534 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 404561 1) .v) (.rational 595166 1)) .v)
    (.rational 190605 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 39884172 1) .v) (.rational 105546656 1)) .v)
    (.rational 91774920 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 319073376 1) .v)
    (.rational 806759672 1)) .v) (.rational 665174174 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1145188468 1) .v) (.rational 2759267244 1)) .v) (.rational 2143944212 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2432535196 1) .v) (.rational 5571006156 1))
    .v) (.rational 4050776006 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3396208570 1) .v) (.rational 7376161778 1)) .v) (.rational 4979910426 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3272132480 1) .v) (.rational 6727274070 1)) .v)
    (.rational 4181488479 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2221412855 1) .v) (.rational 4318745244 1)) .v) (.rational 2449955644 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1065028073 1) .v) (.rational 1958189208 1)) .v)
    (.rational 1005627999 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 355417697
    1) .v) (.rational 619023018 1)) .v) (.rational 286054749 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 79760774 1) .v) (.rational 132042606 1)) .v) (.rational 54803603
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 11272489 1) .v) (.rational
    17827116 1)) .v) (.rational 6675302 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 882253 1) .v) (.rational 1340160 1)) .v) (.rational 457907 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 27901 1) .v) (.rational 40816 1)) .v) (.rational
    12915 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 17436150 1) .v) (.rational 43689972 1)) .v) (.rational
    33349241 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 148207275 1) .v) (.rational
    358222606 1)) .v) (.rational 261970079 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    567597036 1) .v) (.rational 1320430196 1)) .v) (.rational 920812026 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1292832270 1) .v) (.rational 2888354884 1)) .v)
    (.rational 1910641178 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1946633658 1) .v) (.rational 4167801578 1)) .v) (.rational 2600071233 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2036404032 1) .v) (.rational 4170410690 1)) .v)
    (.rational 2438293098 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1513324976 1) .v) (.rational 2959987720 1)) .v) (.rational 1611434627 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 802159325 1) .v) (.rational 1497211306 1)) .v)
    (.rational 754259577 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 299702005
    1) .v) (.rational 533802484 1)) .v) (.rational 247565343 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 76544283 1) .v) (.rational 130242608 1)) .v) (.rational 55442913
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 12591002 1) .v) (.rational
    20512668 1)) .v) (.rational 8019257 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1185151 1) .v) (.rational 1854034 1)) .v) (.rational 668883 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 47509 1) .v) (.rational 71510 1)) .v) (.rational
    24001 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 5571267 1) .v) (.rational 13271308 1)) .v) (.rational
    9054663 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 50141403 1) .v) (.rational 116140080
    1)) .v) (.rational 76633035 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 204057897 1)
    .v) (.rational 458733030 1)) .v) (.rational 291707485 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 495924708 1) .v) (.rational 1079975124 1)) .v) (.rational 659260002 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 800480110 1) .v) (.rational
    1685409066 1)) .v) (.rational 983398348 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 902563018 1) .v) (.rational 1833915182 1)) .v) (.rational 1018014558 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 727540502 1) .v) (.rational 1424175888 1))
    .v) (.rational 748435834 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    421497908 1) .v) (.rational 793761114 1)) .v) (.rational 392973668 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 173720603 1) .v) (.rational 314422264 1)) .v) (.rational
    145987767 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 49513315 1) .v)
    (.rational 86099746 1)) .v) (.rational 37362143 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9225841 1) .v) (.rational 15419634 1)) .v) (.rational 6243385 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1003744 1) .v) (.rational 1614098 1)) .v)
    (.rational 610354 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 47876 1) .v)
    (.rational 74154 1)) .v) (.rational 26278 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1224982 1)
    .v) (.rational 2782878 1)) .v) (.rational 1724748 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11637329 1) .v) (.rational 25881064 1)) .v) (.rational 15642251 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 50143961 1) .v) (.rational 109005510 1)) .v) (.rational
    64082312 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 129471779 1) .v)
    (.rational 274664870 1)) .v) (.rational 156610503 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 222884160 1) .v) (.rational 460649650 1)) .v) (.rational 253942434 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 269203178 1) .v) (.rational
    541105758 1)) .v) (.rational 287395008 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 233626022 1) .v) (.rational 455914382 1)) .v) (.rational 232426446 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 146576118 1) .v) (.rational 277248482 1))
    .v) (.rational 135139512 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    65875114 1) .v) (.rational 120595740 1)) .v) (.rational 55986198 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 20644085 1) .v) (.rational 36534370 1)) .v) (.rational
    16097949 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 4272761 1) .v)
    (.rational 7304420 1)) .v) (.rational 3046610 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 523063 1) .v) (.rational 863568 1)) .v) (.rational 340505 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 28552 1) .v) (.rational 45532 1)) .v) (.rational
    16980 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 165240 1) .v) (.rational 358962 1)) .v)
    (.rational 205030 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1652400 1) .v) (.rational
    3534444 1)) .v) (.rational 1982880 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    7514381 1) .v) (.rational 15806864 1)) .v) (.rational 8694417 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 20536029 1) .v) (.rational 42427262 1)) .v) (.rational
    22833569 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 37538641 1) .v)
    (.rational 76062138 1)) .v) (.rational 39961241 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 48315884 1) .v) (.rational 95870736 1)) .v) (.rational 49044844 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 44862706 1) .v) (.rational 87036096 1)) .v)
    (.rational 43234226 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 30252206 1)
    .v) (.rational 57290340 1)) .v) (.rational 27549718 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14689354 1) .v) (.rational 27110262 1)) .v) (.rational 12580544 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 5003516 1) .v) (.rational 8985588
    1)) .v) (.rational 4011116 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1133569 1) .v) (.rational 1978224 1)) .v) (.rational 846989 1)) (.pow .g 10))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 153181 1) .v) (.rational 259502 1)) .v) (.rational 106321 1))
    (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 9325 1) .v) (.rational 15326 1))
    .v) (.rational 6001 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10272 1) .v) (.rational 21392 1))
    .v) (.rational 11408 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 107856 1) .v) (.rational
    222266 1)) .v) (.rational 117134 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 516170
    1) .v) (.rational 1051638 1)) .v) (.rational 547024 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1488175 1) .v) (.rational 2994632 1)) .v) (.rational 1535401 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2877525 1) .v) (.rational 5712828 1)) .v)
    (.rational 2882679 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3929244 1)
    .v) (.rational 7687116 1)) .v) (.rational 3810792 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3883152 1) .v) (.rational 7476420 1)) .v) (.rational 3634092 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2796930 1) .v) (.rational 5292168 1)) .v)
    (.rational 2516694 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1456350 1)
    .v) (.rational 2704032 1)) .v) (.rational 1255026 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 534300 1) .v) (.rational 971978 1)) .v) (.rational 439154 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 131022 1) .v) (.rational 233174 1)) .v)
    (.rational 102284 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 19271 1) .v)
    (.rational 33504 1)) .v) (.rational 14233 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1285 1) .v) (.rational 2180 1)) .v) (.rational 895 1)) (.pow .g 12))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0505

namespace FullLow0506
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsLow4.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    8*SmallGap.PolarCoefficientsLow3.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow4.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    16*SmallGap.PolarCoefficientsLow2.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    32*SmallGap.PolarCoefficientsLow3.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsLow4.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    32*SmallGap.PolarCoefficientsLow1.c050 e f g v*((e+f)*(e+f+g))^5+
    80*SmallGap.PolarCoefficientsLow2.c050 e f g v*e*((e+f)*(e+f+g))^5+
    80*SmallGap.PolarCoefficientsLow3.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsLow4.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow4.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    2*SmallGap.PolarCoefficientsLow3.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow4.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow2.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow3.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow4.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    8*SmallGap.PolarCoefficientsLow1.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    12*SmallGap.PolarCoefficientsLow2.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    6*SmallGap.PolarCoefficientsLow3.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsLow4.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    16*SmallGap.PolarCoefficientsLow0.c140 e f g v*((e+f)*(e+f+g))^4+
    32*SmallGap.PolarCoefficientsLow1.c140 e f g v*e*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsLow2.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    8*SmallGap.PolarCoefficientsLow3.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow4.c140 e f g v*e^4*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow2.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsLow1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow2.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsLow1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsLow2.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsLow0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow2.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsLow0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(28*SmallGap.ReducedLayers.low0_010_0 e g v*e^2+56*SmallGap.ReducedLayers.low0_010_1
    e g v*e^3+70*SmallGap.ReducedLayers.low0_010_2 e g v*e^4+56*SmallGap.ReducedLayers.low0_010_3
    e g v*e^5+28*SmallGap.ReducedLayers.low0_010_4 e g v*e^6+8*SmallGap.ReducedLayers.low0_010_5 e
    g v*e^7+1*SmallGap.ReducedLayers.low0_010_6 e g v*e^8)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_0 e g v+6*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_020_2 e g v*e^2+20*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_020_4 e g v*e^4+6*SmallGap.ReducedLayers.low1_020_5 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_020_6 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 8448 1) .v) (.rational 365640 1)) .e) (.add (.mul (.add (.mul
    (.add (.mul (.rational 4620 1) .v) (.rational 141240 1)) .v) (.rational 2882319 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11550 1) .v) (.rational 208296 1)) .v) (.rational 3655344
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 78330 1) .v)
    (.rational 1138152 1)) .v) (.rational 14231880 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 234990 1) .v) (.rational 2246016 1)) .v) (.rational 24779883 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 254562 1) .v) (.rational 1343868 1)) .v) (.rational
    14754330 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 624876 1) .v) (.rational 5856828 1)) .v) (.rational 49339596 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2187066 1) .v) (.rational 14626740 1)) .v) (.rational 109598298
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2958774 1) .v) (.rational 12887868 1))
    .v) (.rational 89614947 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1929270
    1) .v) (.rational 4725156 1)) .v) (.rational 32810784 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3100818 1) .v) (.rational
    21478420 1)) .v) (.rational 127655302 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    12403272 1) .v) (.rational 65393132 1)) .v) (.rational 346201862 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 20019664 1) .v) (.rational 76290592 1)) .v) (.rational 362552988
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 16647540 1) .v) (.rational
    42834976 1)) .v) (.rational 183726741 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7505022 1) .v) (.rational 11899508 1)) .v) (.rational 45879696 1)) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 10678178 1) .v) (.rational 59269328 1)) .v) (.rational 255757255 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 48051801 1) .v) (.rational 213950626 1)) .v) (.rational
    822731263 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 89846064 1) .v) (.rational
    311272298 1)) .v) (.rational 1057770706 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 90219486 1) .v) (.rational 234908444 1)) .v) (.rational 693077516 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 52373118 1) .v) (.rational 98887636 1)) .v)
    (.rational 243902510 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 17504949
    1) .v) (.rational 23375738 1)) .v) (.rational 44302287 1)) (.pow .g 5)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    26980171 1) .v) (.rational 126646620 1)) .v) (.rational 406156549 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 134900855 1) .v) (.rational 530183212 1)) .v) (.rational 1518647270 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 286211774 1) .v) (.rational 924546992 1))
    .v) (.rational 2330392408 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    335441966 1) .v) (.rational 874043084 1)) .v) (.rational 1892806836 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 236600895 1) .v) (.rational 489499304 1)) .v)
    (.rational 875148763 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 102339395
    1) .v) (.rational 167155448 1)) .v) (.rational 230563333 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 26334832 1) .v) (.rational 34529996 1)) .v) (.rational 32822342
    1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 51589694 1) .v) (.rational 212594748 1)) .v)
    (.rational 518531423 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 283743317 1) .v)
    (.rational 1013601222 1)) .v) (.rational 2219753166 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 672671409 1) .v) (.rational 2058984022 1)) .v) (.rational 3983436895 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 898946463 1) .v) (.rational 2332473486 1))
    .v) (.rational 3895319955 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    743045204 1) .v) (.rational 1621808098 1)) .v) (.rational 2261035637 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 391777939 1) .v) (.rational 718841530 1)) .v)
    (.rational 797317190 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 130805977
    1) .v) (.rational 204192426 1)) .v) (.rational 168806734 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 26395257 1) .v) (.rational 36136810 1)) .v) (.rational 20690639
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 75914508 1) .v) (.rational
    281896028 1)) .v) (.rational 535849566 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    455487048 1) .v) (.rational 1507911238 1)) .v) (.rational 2594906923 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1192291517 1) .v) (.rational 3492233130 1)) .v) (.rational
    5359692378 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1786159645 1) .v)
    (.rational 4598087148 1)) .v) (.rational 6171335159 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1687923666 1) .v) (.rational 3802815752 1)) .v) (.rational 4350300134
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1045094322 1) .v) (.rational
    2061363370 1)) .v) (.rational 1945350455 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 425987149 1) .v) (.rational 741376058 1)) .v) (.rational 555580738 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 111644301 1) .v) (.rational 174576424 1))
    .v) (.rational 100288548 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    17718232 1) .v) (.rational 25628848 1)) .v) (.rational 11160174 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 86568158 1) .v) (.rational 294968644 1)) .v)
    (.rational 448317681 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 562693027 1) .v)
    (.rational 1748383242 1)) .v) (.rational 2431105145 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1610898326 1) .v) (.rational 4540177062 1)) .v) (.rational 5703060955 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2670317496 1) .v) (.rational 6796027976 1))
    .v) (.rational 7592844276 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2833609745 1) .v) (.rational 6493854328 1)) .v) (.rational 6332608021 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2008297578 1) .v) (.rational 4144983288 1)) .v)
    (.rational 3451723714 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 961984300
    1) .v) (.rational 1796487964 1)) .v) (.rational 1248581813 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 307865564 1) .v) (.rational 525838904 1)) .v) (.rational
    299425222 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 63438739 1) .v)
    (.rational 100851756 1)) .v) (.rational 46872228 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7808085 1) .v) (.rational 11817534 1)) .v) (.rational 4584233 1)) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 76416992 1) .v)
    (.rational 241930820 1)) .v) (.rational 301699998 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 534918944 1) .v) (.rational 1572701126 1)) .v) (.rational 1815571000 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1661813941 1) .v) (.rational 4519441470 1)) .v)
    (.rational 4781257257 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3016937374 1) .v) (.rational 7564044402 1)) .v) (.rational 7246903442 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3546048310 1) .v) (.rational 8177965618 1)) .v)
    (.rational 6999872880 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2823883787 1) .v) (.rational 5988181158 1)) .v) (.rational 4512039618 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1548615461 1) .v) (.rational 3026763954 1)) .v)
    (.rational 1978897067 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 582210524
    1) .v) (.rational 1055231450 1)) .v) (.rational 592158482 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 146354050 1) .v) (.rational 248532254 1)) .v) (.rational
    119448826 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 23348805 1) .v)
    (.rational 37669544 1)) .v) (.rational 15691072 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2141946 1) .v) (.rational 3331800 1)) .v) (.rational 1234556 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 51741738 1)
    .v) (.rational 153509872 1)) .v) (.rational 161030826 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 388063035 1) .v) (.rational 1085072414 1)) .v) (.rational 1066554929 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1299747813 1) .v) (.rational 3414502634 1)) .v)
    (.rational 3120330663 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2562738087 1) .v) (.rational 6308064042 1)) .v) (.rational 5312079507 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3300661699 1) .v) (.rational 7596793010 1)) .v)
    (.rational 5837791028 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2911890322 1) .v) (.rational 6261085288 1)) .v) (.rational 4345862603 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1793767520 1) .v) (.rational 3605991360 1)) .v)
    (.rational 2239024758 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 771447858
    1) .v) (.rational 1454338752 1)) .v) (.rational 801939070 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 227472029 1) .v) (.rational 404436756 1)) .v) (.rational
    197604038 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 44166241 1) .v)
    (.rational 74662382 1)) .v) (.rational 32502866 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5233283 1) .v) (.rational 8488698 1)) .v) (.rational 3338575 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 325945 1) .v) (.rational 510610 1)) .v)
    (.rational 184665 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 26367454 1) .v) (.rational 73735136 1)) .v)
    (.rational 66578958 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 210939632 1) .v)
    (.rational 562663446 1)) .v) (.rational 481662913 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 757477036 1) .v) (.rational 1922345434 1)) .v) (.rational 1550846945 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1610895692 1) .v) (.rational 3880381058 1))
    .v) (.rational 2930799913 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2253687340 1) .v) (.rational 5142689754 1)) .v) (.rational 3610617997 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2178233300 1) .v) (.rational 4702415548 1)) .v)
    (.rational 3046528688 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1485588617 1) .v) (.rational 3033145416 1)) .v) (.rational 1800763509 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 716845681 1) .v) (.rational 1385602890 1)) .v)
    (.rational 749689600 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 241339774
    1) .v) (.rational 442797518 1)) .v) (.rational 217751627 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 54806958 1) .v) (.rational 95856074 1)) .v) (.rational 42915263
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 7869653 1) .v) (.rational
    13188282 1)) .v) (.rational 5411254 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 629073 1) .v) (.rational 1014200 1)) .v) (.rational 385127 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 20462 1) .v) (.rational 31676 1)) .v) (.rational
    11214 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 9781492 1) .v) (.rational 25883300 1)) .v) (.rational
    20535505 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 83142682 1) .v) (.rational 211944948
    1)) .v) (.rational 161143900 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 318579424
    1) .v) (.rational 780653292 1)) .v) (.rational 566243436 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 726492040 1) .v) (.rational 1707658268 1)) .v) (.rational
    1175871540 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1096112338 1) .v)
    (.rational 2466739692 1)) .v) (.rational 1603989685 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1150256965 1) .v) (.rational 2474440334 1)) .v) (.rational 1511144553
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 858695254 1) .v) (.rational
    1763936078 1)) .v) (.rational 1006397453 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 458076982 1) .v) (.rational 898297536 1)) .v) (.rational 476638122 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 172650735 1) .v) (.rational 323429548 1))
    .v) (.rational 159114725 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    44620583 1) .v) (.rational 79985562 1)) .v) (.rational 36460305 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7457548 1) .v) (.rational 12823074 1)) .v) (.rational
    5428413 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 717132 1) .v)
    (.rational 1185320 1)) .v) (.rational 468188 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 29593 1) .v) (.rational 46984 1)) .v) (.rational 17391 1)) (.pow .g 12)))
    .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2491835 1) .v) (.rational 6255784 1)) .v) (.rational 4439773 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 22426515 1) .v) (.rational 54687590 1)) .v) (.rational 37551371
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 91313461 1) .v) (.rational 215884390 1))
    .v) (.rational 142940917 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    222173348 1) .v) (.rational 508307114 1)) .v) (.rational 323339745 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 359319324 1) .v) (.rational 794091934 1)) .v) (.rational
    483366635 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 406371868 1) .v)
    (.rational 866034380 1)) .v) (.rational 502350783 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 329014503 1) .v) (.rational 675179916 1)) .v) (.rational 371660754 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 191793648 1) .v) (.rational
    378590084 1)) .v) (.rational 196999669 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 79720058 1) .v) (.rational 151285684 1)) .v) (.rational 74180085 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 22983389 1) .v) (.rational 41934574 1)) .v)
    (.rational 19338190 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 4348908 1)
    .v) (.rational 7633806 1)) .v) (.rational 3310045 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 483008 1) .v) (.rational 816306 1)) .v) (.rational 333298 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 23687 1) .v) (.rational 38534 1)) .v)
    (.rational 14847 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 389484 1) .v) (.rational 929320 1))
    .v) (.rational 599068 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3700098 1) .v)
    (.rational 8635168 1)) .v) (.rational 5430502 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15950758 1) .v) (.rational 36353172 1)) .v) (.rational 22247987 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 41228944 1) .v) (.rational 91613264 1)) .v)
    (.rational 54412036 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 71106234 1)
    .v) (.rational 153791788 1)) .v) (.rational 88381090 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 86127871 1) .v) (.rational 181014738 1)) .v) (.rational 100332167 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 75054721 1) .v) (.rational
    153037094 1)) .v) (.rational 81541495 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 47362263 1) .v) (.rational 93555098 1)) .v) (.rational 47760623 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 21455129 1) .v) (.rational 41006934 1)) .v)
    (.rational 19996501 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 6795899 1)
    .v) (.rational 12557078 1)) .v) (.rational 5834415 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1426797 1) .v) (.rational 2547518 1)) .v) (.rational 1126034 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 178013 1) .v) (.rational 307086 1)) .v)
    (.rational 129073 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 9965 1) .v)
    (.rational 16606 1)) .v) (.rational 6641 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 28132 1)
    .v) (.rational 63872 1)) .v) (.rational 37886 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    281320 1) .v) (.rational 628448 1)) .v) (.rational 366238 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1279853 1) .v) (.rational 2809548 1)) .v) (.rational 1605757 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3501057 1) .v) (.rational 7542082 1)) .v)
    (.rational 4219081 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6410311 1)
    .v) (.rational 13531870 1)) .v) (.rational 7392795 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8271740 1) .v) (.rational 17084552 1)) .v) (.rational 9093456 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7709002 1) .v) (.rational 15554560 1))
    .v) (.rational 8045058 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5225366
    1) .v) (.rational 10283900 1)) .v) (.rational 5154606 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2555242 1) .v) (.rational 4897972 1)) .v) (.rational 2372676 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 878676 1) .v) (.rational 1638280 1)) .v)
    (.rational 765050 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 201593 1) .v)
    (.rational 365220 1)) .v) (.rational 164065 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 27697 1) .v) (.rational 48722 1)) .v) (.rational 21025 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1723 1) .v) (.rational 2942 1)) .v) (.rational 1219
    1)) (.pow .g 12))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0506

namespace FullLow0507
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsLow4.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    16*SmallGap.PolarCoefficientsLow3.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    32*SmallGap.PolarCoefficientsLow4.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    32*SmallGap.PolarCoefficientsLow2.c050 e f g v*((e+f)*(e+f+g))^5+
    80*SmallGap.PolarCoefficientsLow3.c050 e f g v*e*((e+f)*(e+f+g))^5+
    80*SmallGap.PolarCoefficientsLow4.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    2*SmallGap.PolarCoefficientsLow4.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow3.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow4.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    8*SmallGap.PolarCoefficientsLow2.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    12*SmallGap.PolarCoefficientsLow3.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    6*SmallGap.PolarCoefficientsLow4.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    16*SmallGap.PolarCoefficientsLow1.c140 e f g v*((e+f)*(e+f+g))^4+
    32*SmallGap.PolarCoefficientsLow2.c140 e f g v*e*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsLow3.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    8*SmallGap.PolarCoefficientsLow4.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow3.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsLow2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow3.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsLow2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsLow3.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow0.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow3.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsLow1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsLow0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(8*SmallGap.ReducedLayers.low0_010_0 e g v*e^1+28*SmallGap.ReducedLayers.low0_010_1
    e g v*e^2+56*SmallGap.ReducedLayers.low0_010_2 e g v*e^3+70*SmallGap.ReducedLayers.low0_010_3
    e g v*e^4+56*SmallGap.ReducedLayers.low0_010_4 e g v*e^5+28*SmallGap.ReducedLayers.low0_010_5
    e g v*e^6+8*SmallGap.ReducedLayers.low0_010_6 e g v*e^7)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_1 e g v+6*SmallGap.ReducedLayers.low1_020_2 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_020_3 e g v*e^2+20*SmallGap.ReducedLayers.low1_020_4 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_020_5 e g v*e^4+6*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_020_7 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 8712 1) .v) (.rational 416856 1)) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 4092 1) .v) (.rational 139392 1)) .v) (.rational 3177174 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10230 1) .v) (.rational 202224 1)) .v) (.rational 3957822 1)) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 67926 1) .v) (.rational 1077864 1))
    .v) (.rational 15121422 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 203778 1) .v)
    (.rational 2078832 1)) .v) (.rational 25808490 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 220836 1) .v) (.rational 1180764 1)) .v) (.rational 14946132 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 529884 1) .v)
    (.rational 5338656 1)) .v) (.rational 50358162 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1854594 1) .v) (.rational 13021512 1)) .v) (.rational 109564320 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2510094 1) .v) (.rational 11000664 1)) .v) (.rational
    87094812 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1638750 1) .v)
    (.rational 3683904 1)) .v) (.rational 30567168 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2562966 1) .v) (.rational 18893888
    1)) .v) (.rational 124711814 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 10251864 1) .v)
    (.rational 56337292 1)) .v) (.rational 331394806 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16554584 1) .v) (.rational 63687836 1)) .v) (.rational 337825386 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 13782228 1) .v) (.rational 33981164 1)) .v)
    (.rational 164748066 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6227226 1)
    .v) (.rational 8616028 1)) .v) (.rational 38674488 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8560082 1) .v)
    (.rational 50348244 1)) .v) (.rational 238251991 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 38520369 1) .v) (.rational 178754498 1)) .v) (.rational 752058591 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 72057488 1) .v) (.rational 254395670 1)) .v)
    (.rational 943916464 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 72439486
    1) .v) (.rational 186385664 1)) .v) (.rational 598827278 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 42139710 1) .v) (.rational 75432932 1)) .v) (.rational 201097307
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 14131421 1) .v) (.rational
    16989782 1)) .v) (.rational 33827471 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20832429 1) .v)
    (.rational 103604644 1)) .v) (.rational 359157461 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 104162145 1) .v) (.rational 428417024 1)) .v) (.rational 1320943999 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 221101083 1) .v) (.rational 736228856 1)) .v)
    (.rational 1986879987 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 259431462
    1) .v) (.rational 684299308 1)) .v) (.rational 1574090922 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 183366311 1) .v) (.rational 376247924 1)) .v) (.rational
    704843283 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 79569825 1) .v)
    (.rational 126350216 1)) .v) (.rational 177958815 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 20569893 1) .v) (.rational 25887408 1)) .v) (.rational 23922817 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 38016502 1) .v) (.rational 166311250 1)) .v)
    (.rational 432647289 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 209090761 1) .v)
    (.rational 786049784 1)) .v) (.rational 1827351664 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 495944797 1) .v) (.rational 1581873178 1)) .v) (.rational 3229327690 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 663570879 1) .v) (.rational 1775117570 1))
    .v) (.rational 3103314791 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    549655236 1) .v) (.rational 1223973732 1)) .v) (.rational 1766793775 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 290764551 1) .v) (.rational 539749656 1)) .v)
    (.rational 610807178 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 97534853
    1) .v) (.rational 153541918 1)) .v) (.rational 127397648 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 19804001 1) .v) (.rational 27476182 1)) .v) (.rational 15691743
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 52747583 1) .v) (.rational
    208460928 1)) .v) (.rational 418212503 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    316485498 1) .v) (.rational 1108369446 1)) .v) (.rational 2004639349 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 828888654 1) .v) (.rational 2551948608 1)) .v) (.rational
    4096042541 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1243326205 1) .v)
    (.rational 3343096802 1)) .v) (.rational 4665255187 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1177549800 1) .v) (.rational 2755787768 1)) .v) (.rational 3256584988
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 731582448 1) .v) (.rational
    1493670198 1)) .v) (.rational 1447476133 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 299652986 1) .v) (.rational 539831884 1)) .v) (.rational 414678411 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 79049973 1) .v) (.rational 128561162 1)) .v)
    (.rational 76487875 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 12649857 1)
    .v) (.rational 19206012 1)) .v) (.rational 8942749 1)) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 55827964 1) .v) (.rational 202852350 1)) .v) (.rational
    323133413 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 362881766 1) .v) (.rational
    1197326802 1)) .v) (.rational 1739613840 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1039468898 1) .v) (.rational 3097928086 1)) .v) (.rational 4052732123 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1725379513 1) .v) (.rational 4625414780 1)) .v)
    (.rational 5364089465 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1835122527 1) .v) (.rational 4416652764 1)) .v) (.rational 4458402085 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1305254163 1) .v) (.rational 2825109304 1)) .v)
    (.rational 2433500919 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 628410084
    1) .v) (.rational 1231883944 1)) .v) (.rational 889156087 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 202506939 1) .v) (.rational 364526568 1)) .v) (.rational
    218355999 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 42104995 1) .v)
    (.rational 71021178 1)) .v) (.rational 35603308 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5239761 1) .v) (.rational 8480234 1)) .v) (.rational 3669271 1)) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 44796481 1) .v)
    (.rational 151365932 1)) .v) (.rational 197099967 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 313575367 1) .v) (.rational 981020544 1)) .v) (.rational 1180400039 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 974758174 1) .v) (.rational 2812698200 1)) .v)
    (.rational 3096062272 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1772069273 1) .v) (.rational 4702146964 1)) .v) (.rational 4681022819 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2087833469 1) .v) (.rational 5086735032 1)) .v)
    (.rational 4522549243 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1668745256 1) .v) (.rational 3735968644 1)) .v) (.rational 2929140110 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 919969983 1) .v) (.rational 1900262064 1)) .v)
    (.rational 1299929705 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 348376833
    1) .v) (.rational 669302616 1)) .v) (.rational 397487427 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 88415380 1) .v) (.rational 159921548 1)) .v) (.rational 82857752
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 14278541 1) .v) (.rational
    24674284 1)) .v) (.rational 11340419 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1329299 1) .v) (.rational 2223876 1)) .v) (.rational 927959 1)) (.pow .g 10)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 26799242 1) .v)
    (.rational 84824862 1)) .v) (.rational 92783617 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 200994315 1) .v) (.rational 598235320 1)) .v) (.rational 612643982 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 673609201 1) .v) (.rational 1879705124 1)) .v)
    (.rational 1788583634 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1330046029 1) .v) (.rational 3471232856 1)) .v) (.rational 3043348372 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1717202231 1) .v) (.rational 4185240050 1)) .v)
    (.rational 3351272159 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1520616262 1) .v) (.rational 3460721628 1)) .v) (.rational 2509374010 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 941781274 1) .v) (.rational 2005268086 1)) .v)
    (.rational 1307491136 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 408059724
    1) .v) (.rational 816422606 1)) .v) (.rational 476985125 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 121529413 1) .v) (.rational 230060714 1)) .v) (.rational
    120677270 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 23906361 1) .v)
    (.rational 43193276 1)) .v) (.rational 20516290 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2880121 1) .v) (.rational 5007046 1)) .v) (.rational 2181368 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 183037 1) .v) (.rational 306970 1)) .v)
    (.rational 123933 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 11583691 1) .v) (.rational 34502256 1)) .v)
    (.rational 32481727 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 92669528 1) .v)
    (.rational 262818002 1)) .v) (.rational 234525129 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 332980474 1) .v) (.rational 896977684 1)) .v) (.rational 754348443 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 709146578 1) .v) (.rational 1810540972 1))
    .v) (.rational 1426184207 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    994555199 1) .v) (.rational 2402782344 1)) .v) (.rational 1761518318 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 964889204 1) .v) (.rational 2204180134 1)) .v)
    (.rational 1494702122 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 661661338
    1) .v) (.rational 1429789652 1)) .v) (.rational 892202184 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 321697009 1) .v) (.rational 658829966 1)) .v) (.rational
    377105990 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 109419757 1) .v)
    (.rational 213117456 1)) .v) (.rational 111886742 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25188930 1) .v) (.rational 46876200 1)) .v) (.rational 22655713 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 3681892 1) .v) (.rational 6576352
    1)) .v) (.rational 2945115 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    301191 1) .v) (.rational 516966 1)) .v) (.rational 215775 1)) (.pow .g 11))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 10089 1) .v) (.rational 16496 1)) .v) (.rational 6407 1)) (.pow
    .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 3418554 1) .v) (.rational 9608382 1)) .v) (.rational 7949666 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 29057709 1) .v) (.rational 78562904 1)) .v) (.rational
    62296679 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 111410312 1) .v) (.rational
    289137804 1)) .v) (.rational 218789589 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 254423160 1) .v) (.rational 632556586 1)) .v) (.rational 454661529 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 384808720 1) .v) (.rational 914987708 1))
    .v) (.rational 621716664 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    405339766 1) .v) (.rational 920622840 1)) .v) (.rational 588585829 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 304247186 1) .v) (.rational 659679588 1)) .v) (.rational
    395178856 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 163538353 1) .v)
    (.rational 338603118 1)) .v) (.rational 189466282 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 62277765 1) .v) (.rational 123281836 1)) .v) (.rational 64344469 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 16319655 1) .v) (.rational 30948308
    1)) .v) (.rational 15078074 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2778192 1) .v) (.rational 5057508 1)) .v) (.rational 2306133 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 273757 1) .v) (.rational 478564 1)) .v) (.rational 204807
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 11671 1) .v) (.rational 19494
    1)) .v) (.rational 7823 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 616508 1) .v) (.rational 1637712 1)) .v)
    (.rational 1211754 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5548572 1) .v) (.rational
    14298660 1)) .v) (.rational 10237744 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    22605867 1) .v) (.rational 56408020 1)) .v) (.rational 38955067 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 55079304 1) .v) (.rational 132836678 1)) .v) (.rational
    88171709 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 89295021 1) .v)
    (.rational 207786988 1)) .v) (.rational 132073638 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 101364039 1) .v) (.rational 227237084 1)) .v) (.rational 137799164 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 82510632 1) .v) (.rational
    177989836 1)) .v) (.rational 102611635 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 48460401 1) .v) (.rational 100518176 1)) .v) (.rational 54924084 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 20349954 1) .v) (.rational 40579708 1)) .v)
    (.rational 20970529 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 5948141 1)
    .v) (.rational 11406368 1)) .v) (.rational 5569568 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1146321 1) .v) (.rational 2114992 1)) .v) (.rational 976090 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 130455 1) .v) (.rational 231546 1)) .v)
    (.rational 101091 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 6609 1) .v)
    (.rational 11256 1)) .v) (.rational 4647 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 51264 1)
    .v) (.rational 128800 1)) .v) (.rational 86452 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 487008 1) .v) (.rational 1195468 1)) .v) (.rational 782890 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2100698 1) .v) (.rational 5029910 1)) .v) (.rational 3205954 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5437229 1) .v) (.rational 12677868
    1)) .v) (.rational 7843551 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9399486 1) .v) (.rational 21306894 1)) .v) (.rational 12758776 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11426381 1) .v) (.rational 25140266 1)) .v) (.rational
    14527145 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 10009475 1) .v)
    (.rational 21343658 1)) .v) (.rational 11865763 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6362499 1) .v) (.rational 13131762 1)) .v) (.rational 7003775 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2910919 1) .v) (.rational 5809378 1)) .v)
    (.rational 2965231 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 934351 1)
    .v) (.rational 1801874 1)) .v) (.rational 878601 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 199647 1) .v) (.rational 371896 1)) .v) (.rational 173063 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 25492 1) .v) (.rational 45850 1)) .v) (.rational
    20358 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 1471 1) .v) (.rational
    2552 1)) .v) (.rational 1081 1)) (.pow .g 12))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0507

namespace FullLow0508
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  16*SmallGap.PolarCoefficientsLow4.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    32*SmallGap.PolarCoefficientsLow3.c050 e f g v*((e+f)*(e+f+g))^5+
    80*SmallGap.PolarCoefficientsLow4.c050 e f g v*e*((e+f)*(e+f+g))^5+
    4*SmallGap.PolarCoefficientsLow4.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    8*SmallGap.PolarCoefficientsLow3.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    12*SmallGap.PolarCoefficientsLow4.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    16*SmallGap.PolarCoefficientsLow2.c140 e f g v*((e+f)*(e+f+g))^4+
    32*SmallGap.PolarCoefficientsLow3.c140 e f g v*e*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsLow4.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow4.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsLow3.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow4.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsLow3.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsLow4.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow1.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow3.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow4.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsLow2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    1*SmallGap.PolarCoefficientsLow0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_010_0 e g v+8*SmallGap.ReducedLayers.low0_010_1 e g
    v*e^1+28*SmallGap.ReducedLayers.low0_010_2 e g v*e^2+56*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^3+70*SmallGap.ReducedLayers.low0_010_4 e g v*e^4+56*SmallGap.ReducedLayers.low0_010_5 e g
    v*e^5+28*SmallGap.ReducedLayers.low0_010_6 e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_2 e g v+6*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_020_4 e g v*e^2+20*SmallGap.ReducedLayers.low1_020_5 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_020_6 e g v*e^4+6*SmallGap.ReducedLayers.low1_020_7 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_020_8 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    6732 1) .v) (.rational 363924 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 2640 1)
    .v) (.rational 103356 1)) .v) (.rational 2683527 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6600 1) .v) (.rational 147444 1)) .v) (.rational 3279276 1)) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 43020 1) .v) (.rational 768486 1)) .v)
    (.rational 12310422 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 129060 1) .v) (.rational
    1446624 1)) .v) (.rational 20559942 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    139920 1) .v) (.rational 774486 1)) .v) (.rational 11544090 1)) (.pow .g 2)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 328950 1) .v) (.rational 3669318
    1)) .v) (.rational 39349890 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1151325 1) .v)
    (.rational 8726286 1)) .v) (.rational 83692047 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1558995 1) .v) (.rational 7027470 1)) .v) (.rational 64457451 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1019175 1) .v) (.rational 2090502 1)) .v) (.rational
    21523497 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1553361 1) .v) (.rational 12547336 1)) .v) (.rational 93124327 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6213444 1) .v) (.rational 36595508 1)) .v) (.rational
    242010854 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10038490 1) .v) (.rational
    39954460 1)) .v) (.rational 239419392 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8368416 1) .v) (.rational 20060428 1)) .v) (.rational 111683004 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3790653 1) .v) (.rational 4481168 1)) .v)
    (.rational 24261405 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 5033754 1) .v) (.rational 32298208 1)) .v)
    (.rational 169185975 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 22651893 1) .v)
    (.rational 112727218 1)) .v) (.rational 523272047 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 42396464 1) .v) (.rational 156753366 1)) .v) (.rational 639780360 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 42678790 1) .v) (.rational 111215100 1)) .v)
    (.rational 391565814 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 24888606
    1) .v) (.rational 43037116 1)) .v) (.rational 124540887 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 8378957 1) .v) (.rational 9140694 1)) .v) (.rational 18999383 1))
    (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 11782289 1) .v) (.rational 63881260 1)) .v) (.rational
    241065591 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 58911445 1) .v) (.rational
    260957232 1)) .v) (.rational 871374584 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    125123154 1) .v) (.rational 442015716 1)) .v) (.rational 1283515460 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 147023946 1) .v) (.rational 404058012 1)) .v)
    (.rational 990804616 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 104180957
    1) .v) (.rational 218274512 1)) .v) (.rational 429202451 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 45387129 1) .v) (.rational 72215184 1)) .v) (.rational 103776962
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 11798968 1) .v) (.rational
    14732276 1)) .v) (.rational 13204198 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    20432566 1) .v) (.rational 97511316 1)) .v) (.rational 272121235 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 112379113 1) .v) (.rational 457055618 1)) .v) (.rational 1133754190 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 266726285 1) .v) (.rational 911855666 1))
    .v) (.rational 1973349085 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    357424935 1) .v) (.rational 1014813526 1)) .v) (.rational 1865182979 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 296862720 1) .v) (.rational 695260858 1)) .v)
    (.rational 1044106147 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 157690281
    1) .v) (.rational 305979346 1)) .v) (.rational 356016682 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 53206643 1) .v) (.rational 87533674 1)) .v) (.rational 74162191
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 10886855 1) .v) (.rational
    15905354 1)) .v) (.rational 9428649 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    26509037 1) .v) (.rational 114299900 1)) .v) (.rational 243358859 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 159054222 1) .v) (.rational 604299438 1)) .v) (.rational 1154914759 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 416863582 1) .v) (.rational 1384244308 1))
    .v) (.rational 2336277787 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    626320875 1) .v) (.rational 1806407090 1)) .v) (.rational 2636750545 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 594884515 1) .v) (.rational 1486949488 1)) .v)
    (.rational 1829087255 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 371209252
    1) .v) (.rational 808038854 1)) .v) (.rational 813424331 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 152991892 1) .v) (.rational 294456592 1)) .v) (.rational
    236388427 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 40694527 1) .v)
    (.rational 71159146 1)) .v) (.rational 45240507 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6579390 1) .v) (.rational 10838272 1)) .v) (.rational 5620952 1)) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25671998 1) .v) (.rational
    101640960 1)) .v) (.rational 170692014 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    166867987 1) .v) (.rational 597572362 1)) .v) (.rational 912665043 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 478349798 1) .v) (.rational 1541389188 1)) .v) (.rational
    2113487650 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 795376032 1) .v)
    (.rational 2297758786 1)) .v) (.rational 2785970968 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 848507201 1) .v) (.rational 2195775152 1)) .v) (.rational 2314894070
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 606283950 1) .v) (.rational
    1410461148 1)) .v) (.rational 1271722892 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 293799628 1) .v) (.rational 620390750 1)) .v) (.rational 472791764 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 95510108 1) .v) (.rational 186098442 1)) .v)
    (.rational 119875964 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 20081431
    1) .v) (.rational 36906864 1)) .v) (.rational 20453953 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2532483 1) .v) (.rational 4491238 1)) .v) (.rational 2210149 1)) (.pow
    .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 18297397 1) .v)
    (.rational 67182986 1)) .v) (.rational 91913501 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 128081779 1) .v) (.rational 434162344 1)) .v) (.rational 547980330 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 398456176 1) .v) (.rational 1242380970 1)) .v)
    (.rational 1432564414 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 725673929
    1) .v) (.rational 2075989980 1)) .v) (.rational 2163483696 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 857619177 1) .v) (.rational 2249554830 1)) .v) (.rational
    2095423421 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 688700602 1) .v)
    (.rational 1659823668 1)) .v) (.rational 1368202456 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 382227178 1) .v) (.rational 851296554 1)) .v) (.rational 617077478 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 146062777 1) .v) (.rational
    303605600 1)) .v) (.rational 193653852 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 37509624 1) .v) (.rational 73740526 1)) .v) (.rational 41802042 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6146781 1) .v) (.rational 11592380 1)) .v)
    (.rational 5941538 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 581852 1)
    .v) (.rational 1063206 1)) .v) (.rational 500580 1)) (.pow .g 10)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9319316 1) .v) (.rational 31925774
    1)) .v) (.rational 36638329 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 69894870 1) .v)
    (.rational 224649080 1)) .v) (.rational 241200583 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 234429302 1) .v) (.rational 704928884 1)) .v) (.rational 702958420 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 463718268 1) .v) (.rational 1301836038 1))
    .v) (.rational 1196448811 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    600557928 1) .v) (.rational 1572668920 1)) .v) (.rational 1321916959 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 534326485 1) .v) (.rational 1306255692 1)) .v)
    (.rational 997548167 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 333172371
    1) .v) (.rational 762708410 1)) .v) (.rational 526935013 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 145695249 1) .v) (.rational 314067436 1)) .v) (.rational
    196260174 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 43921692 1) .v)
    (.rational 89848142 1)) .v) (.rational 51036292 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8774746 1) .v) (.rational 17178354 1)) .v) (.rational 8950999 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1077264 1) .v) (.rational 2030096 1)) .v)
    (.rational 979092 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 69898 1) .v)
    (.rational 126400 1)) .v) (.rational 56502 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3210534 1) .v) (.rational
    10299800 1)) .v) (.rational 10167558 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 25684272
    1) .v) (.rational 78309262 1)) .v) (.rational 73256743 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 92361254 1) .v) (.rational 266993448 1)) .v) (.rational 235399163 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 197054018 1) .v) (.rational 539048880 1))
    .v) (.rational 445376304 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    277212891 1) .v) (.rational 716752978 1)) .v) (.rational 551867476 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 270209488 1) .v) (.rational 660240618 1)) .v) (.rational
    471402667 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 186542620 1) .v)
    (.rational 431262958 1)) .v) (.rational 284538152 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 91537809 1) .v) (.rational 200772962 1)) .v) (.rational 122266401 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 31520998 1) .v) (.rational 65857978
    1)) .v) (.rational 37083493 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7373686 1) .v) (.rational 14742200 1)) .v) (.rational 7708502 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1100094 1) .v) (.rational 2110706 1)) .v) (.rational
    1029603 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 92303 1) .v)
    (.rational 169438 1)) .v) (.rational 77135 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3185 1) .v) (.rational 5492 1)) .v) (.rational 2307 1)) (.pow .g 12)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    670584 1) .v) (.rational 2019132 1)) .v) (.rational 1750664 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5699964 1) .v) (.rational 16481944 1)) .v) (.rational 13695412 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21871224 1) .v) (.rational 60607538 1)) .v)
    (.rational 48063333 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 50034900 1)
    .v) (.rational 132629560 1)) .v) (.rational 99945799 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 75906690 1) .v) (.rational 192190336 1)) .v) (.rational 137031528 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 80328651 1) .v) (.rational
    194103024 1)) .v) (.rational 130425640 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 60697986 1) .v) (.rational 139961620 1)) .v) (.rational 88348346 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 32928456 1) .v) (.rational 72515032 1)) .v)
    (.rational 42919225 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 12696375 1)
    .v) (.rational 26745940 1)) .v) (.rational 14839399 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3382215 1) .v) (.rational 6828616 1)) .v) (.rational 3556378 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 588312 1) .v) (.rational 1139482 1)) .v)
    (.rational 558071 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 59622 1) .v)
    (.rational 110496 1)) .v) (.rational 50874 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2637 1) .v) (.rational 4624 1)) .v) (.rational 1987 1)) (.pow .g 12))) .f))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    64170 1) .v) (.rational 181564 1)) .v) (.rational 140618 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 577530 1) .v) (.rational 1582812 1)) .v) (.rational 1186166 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2354772 1) .v) (.rational 6239380 1)) .v) (.rational
    4509906 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5747496 1) .v)
    (.rational 14696982 1)) .v) (.rational 10211577 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9346007 1) .v) (.rational 23026626 1)) .v) (.rational 15326166 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10658249 1) .v) (.rational 25267912 1)) .v)
    (.rational 16056786 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8733666 1)
    .v) (.rational 19904908 1)) .v) (.rational 12040321 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5176987 1) .v) (.rational 11337924 1)) .v) (.rational 6513090 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2201296 1) .v) (.rational 4632812 1)) .v)
    (.rational 2523837 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 654237 1)
    .v) (.rational 1323516 1)) .v) (.rational 683476 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 128894 1) .v) (.rational 250608 1)) .v) (.rational 122693 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 15101 1) .v) (.rational 28166 1)) .v) (.rational
    13065 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 795 1) .v) (.rational
    1414 1)) .v) (.rational 619 1)) (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0508

namespace FullLow0509
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  32*SmallGap.PolarCoefficientsLow4.c050 e f g v*((e+f)*(e+f+g))^5+
    8*SmallGap.PolarCoefficientsLow4.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    16*SmallGap.PolarCoefficientsLow3.c140 e f g v*((e+f)*(e+f+g))^4+
    32*SmallGap.PolarCoefficientsLow4.c140 e f g v*e*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow4.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow3.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    4*SmallGap.PolarCoefficientsLow4.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow2.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow3.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow4.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow3.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsLow3.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow3.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    2*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_010_1 e g v+8*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^1+28*SmallGap.ReducedLayers.low0_010_3 e g v*e^2+56*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^3+70*SmallGap.ReducedLayers.low0_010_5 e g v*e^4+56*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_3 e g v+6*SmallGap.ReducedLayers.low1_020_4 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_020_5 e g v*e^2+20*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_020_7 e g v*e^4+6*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3850 1) .v)
    (.rational 242110 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1210 1) .v)
    (.rational 56870 1)) .v) (.rational 1728320 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    3025 1) .v) (.rational 79750 1)) .v) (.rational 2068913 1)) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 19405 1) .v) (.rational 407590 1)) .v) (.rational 7641653
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 58215 1) .v) (.rational 748030 1)) .v)
    (.rational 12464995 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 63140 1) .v)
    (.rational 374530 1)) .v) (.rational 6761318 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 145790 1) .v) (.rational 1880262 1)) .v)
    (.rational 23425994 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 510265 1) .v) (.rational
    4354292 1)) .v) (.rational 48602339 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    691295 1) .v) (.rational 3323384 1)) .v) (.rational 36128227 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 452575 1) .v) (.rational 843792 1)) .v) (.rational 11371761 1))
    (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 673264 1) .v) (.rational 6225110 1)) .v) (.rational 52890738 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2693056 1) .v) (.rational 17748860 1)) .v) (.rational 134166710
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4353448 1) .v) (.rational 18669936 1))
    .v) (.rational 128400860 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3634648 1) .v) (.rational 8734916 1)) .v) (.rational 56906082 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1651116 1) .v) (.rational 1630354 1)) .v) (.rational
    11202126 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 2117826 1) .v) (.rational 15491968 1)) .v) (.rational
    91118677 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 9530217 1) .v) (.rational 53171692
    1)) .v) (.rational 275768875 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 17849008 1)
    .v) (.rational 72260658 1)) .v) (.rational 327872310 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17997182 1) .v) (.rational 49630648 1)) .v) (.rational 193031182 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10526498 1) .v) (.rational 18325544
    1)) .v) (.rational 57773119 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3560463 1) .v) (.rational 3648892 1)) .v) (.rational 7812345 1)) (.pow .g 5)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 4759875 1) .v) (.rational 29384076 1)) .v) (.rational 122104191 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 23799375 1) .v) (.rational 118683432 1)) .v) (.rational 433566143
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 50586125 1) .v) (.rational 198420086 1))
    .v) (.rational 625310875 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    59548250 1) .v) (.rational 178796620 1)) .v) (.rational 470639562 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 42332003 1) .v) (.rational 95260924 1)) .v) (.rational
    197743181 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 18534509 1) .v)
    (.rational 31246828 1)) .v) (.rational 46163129 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4852339 1) .v) (.rational 6404854 1)) .v) (.rational 5707639 1)) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 7804382 1) .v) (.rational 42334850 1)) .v) (.rational
    128040703 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 42924101 1) .v) (.rational
    196964298 1)) .v) (.rational 526341978 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    101966489 1) .v) (.rational 390159336 1)) .v) (.rational 903230852 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 136918443 1) .v) (.rational 431704928 1)) .v) (.rational
    841928979 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 114125352 1) .v)
    (.rational 295016232 1)) .v) (.rational 466173335 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 60954705 1) .v) (.rational 130292218 1)) .v) (.rational 158764926 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 20725923 1) .v) (.rational 37736160
    1)) .v) (.rational 33849826 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4283907 1) .v) (.rational 7002344 1)) .v) (.rational 4605709 1)) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 9368340 1) .v) (.rational 45736488 1)) .v) (.rational
    104387536 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 56210040 1) .v) (.rational
    240602838 1)) .v) (.rational 490763105 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    147463807 1) .v) (.rational 548982678 1)) .v) (.rational 984342884 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 222060335 1) .v) (.rational 715077560 1)) .v) (.rational
    1104266659 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 211742965 1) .v)
    (.rational 589562838 1)) .v) (.rational 765682887 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 132920290 1) .v) (.rational 322547842 1)) .v) (.rational 344130241 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 55246005 1) .v) (.rational
    119098054 1)) .v) (.rational 102971546 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14859967 1) .v) (.rational 29340496 1)) .v) (.rational 20774659 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2436095 1) .v) (.rational 4568036 1)) .v)
    (.rational 2757537 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    8144092 1) .v) (.rational 36280282 1)) .v) (.rational 64887545 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 52936598 1) .v) (.rational 212536166 1)) .v) (.rational 344782846 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 151910162 1) .v) (.rational 546973220 1)) .v)
    (.rational 794731373 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 253203313
    1) .v) (.rational 815250460 1)) .v) (.rational 1046042847 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 271249767 1) .v) (.rational 781411186 1)) .v) (.rational
    872735081 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 195052971 1) .v)
    (.rational 505619418 1)) .v) (.rational 485795333 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 95373812 1) .v) (.rational 225183518 1)) .v) (.rational 185347863 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 31379179 1) .v) (.rational 68742152
    1)) .v) (.rational 48903585 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6698865 1) .v) (.rational 13919586 1)) .v) (.rational 8750312 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 860116 1) .v) (.rational 1728310 1)) .v) (.rational 984338
    1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4988270 1)
    .v) (.rational 20440946 1)) .v) (.rational 29677362 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34917890 1) .v) (.rational 131726762 1)) .v) (.rational 176202000 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 108746924 1) .v) (.rational 376385532 1)) .v)
    (.rational 459545000 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 198548974
    1) .v) (.rational 629245006 1)) .v) (.rational 694438104 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 235661229 1) .v) (.rational 684095380 1)) .v) (.rational
    676187623 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 190483595 1) .v)
    (.rational 508267438 1)) .v) (.rational 446938841 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 106697323 1) .v) (.rational 263640718 1)) .v) (.rational 205871057 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 41281216 1) .v) (.rational 95522462
    1)) .v) (.rational 66597474 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10771362 1) .v) (.rational 23656836 1)) .v) (.rational 14906382 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1799696 1) .v) (.rational 3796958 1)) .v) (.rational
    2192224 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 174013 1) .v)
    (.rational 354256 1)) .v) (.rational 188511 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2040544 1) .v) (.rational 7730268 1)) .v)
    (.rational 9395456 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 15304080 1) .v) (.rational
    54266166 1)) .v) (.rational 61671972 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    51386428 1) .v) (.rational 170091710 1)) .v) (.rational 179504386 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 101899902 1) .v) (.rational 314327932 1)) .v) (.rational
    305901352 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 132533450 1) .v)
    (.rational 380899848 1)) .v) (.rational 339675885 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 118681189 1) .v) (.rational 318357218 1)) .v) (.rational 258949122 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 74681003 1) .v) (.rational
    187759390 1)) .v) (.rational 139077582 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 33062259 1) .v) (.rational 78417412 1)) .v) (.rational 53028793 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10127242 1) .v) (.rational 22840644 1)) .v)
    (.rational 14190583 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2063692 1)
    .v) (.rational 4457352 1)) .v) (.rational 2563263 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 259246 1) .v) (.rational 537340 1)) .v) (.rational 286939 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 17194 1) .v) (.rational 33840 1)) .v)
    (.rational 16646 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 500310 1) .v) (.rational 1758228 1)) .v) (.rational 1835370
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4002480 1) .v) (.rational 13339620 1)) .v)
    (.rational 13192776 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 14408254 1) .v)
    (.rational 45437098 1)) .v) (.rational 42352692 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 30814378 1) .v) (.rational 91792886 1)) .v) (.rational 80221896 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 43527944 1) .v) (.rational 122390888 1)) .v)
    (.rational 99809426 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 42693590 1)
    .v) (.rational 113363612 1)) .v) (.rational 85944703 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 29735573 1) .v) (.rational 74706862 1)) .v) (.rational 52552320 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 14767099 1) .v) (.rational 35222786
    1)) .v) (.rational 23000365 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5165285 1) .v) (.rational 11746896 1)) .v) (.rational 7139999 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1232552 1) .v) (.rational 2682468 1)) .v) (.rational
    1523133 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 188417 1) .v)
    (.rational 392484 1)) .v) (.rational 208466 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16261 1) .v) (.rational 32132 1)) .v) (.rational 15871 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 577 1) .v) (.rational 1048 1)) .v) (.rational 471 1))
    (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 55620 1) .v) (.rational 181788 1)) .v) (.rational 166392 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 472770 1) .v) (.rational 1481028 1)) .v) (.rational 1298898
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1815896 1) .v) (.rational 5441092 1))
    .v) (.rational 4553932 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4163820
    1) .v) (.rational 11913018 1)) .v) (.rational 9476298 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6341740 1) .v) (.rational 17304404 1)) .v) (.rational 13032033 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6751420 1) .v) (.rational 17561406
    1)) .v) (.rational 12480332 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5145122 1) .v) (.rational 12762910 1)) .v) (.rational 8539563 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2823865 1) .v) (.rational 6688568 1)) .v) (.rational
    4209559 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1105755 1) .v)
    (.rational 2505248 1)) .v) (.rational 1483788 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 300540 1) .v) (.rational 652194 1)) .v) (.rational 363928 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 53640 1) .v) (.rational 111378 1)) .v) (.rational
    58555 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 5617 1) .v) (.rational
    11082 1)) .v) (.rational 5465 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    259 1) .v) (.rational 476 1)) .v) (.rational 217 1)) (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0509

namespace FullLow05010
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  16*SmallGap.PolarCoefficientsLow4.c140 e f g v*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow4.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow3.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow4.c230 e f g v*e*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow4.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow3.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsLow4.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow3.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow4.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    2*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow2.c410 e f g v*e*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_010_2 e g v+8*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^1+28*SmallGap.ReducedLayers.low0_010_4 e g v*e^2+56*SmallGap.ReducedLayers.low0_010_5 e g
    v*e^3+70*SmallGap.ReducedLayers.low0_010_6 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_4 e g v+6*SmallGap.ReducedLayers.low1_020_5 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_020_6 e g v*e^2+20*SmallGap.ReducedLayers.low1_020_7 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_020_8 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1584 1) .v) (.rational
    120824 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 374 1) .v) (.rational 22572 1))
    .v) (.rational 835516 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 935 1) .v) (.rational
    31108 1)) .v) (.rational 978285 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 5917 1) .v) (.rational 156380 1)) .v) (.rational 3560241 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17751 1) .v) (.rational 279568 1)) .v) (.rational 5660255 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 19261 1) .v) (.rational 129798 1)) .v) (.rational
    2953673 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 43782 1) .v) (.rational 698982 1)) .v) (.rational 10458312 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 153237 1) .v) (.rational 1575110 1)) .v) (.rational 21117197 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 207715 1) .v) (.rational 1133346 1)) .v)
    (.rational 15085259 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 136195 1)
    .v) (.rational 231194 1)) .v) (.rational 4423601 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 198063 1) .v) (.rational
    2246946 1)) .v) (.rational 22488553 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 792252 1)
    .v) (.rational 6264926 1)) .v) (.rational 55574369 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1281564 1) .v) (.rational 6344900 1)) .v) (.rational 51290075 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1071810 1) .v) (.rational 2745156 1)) .v) (.rational
    21442173 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 488485 1) .v)
    (.rational 395010 1)) .v) (.rational 3719434 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 605032 1) .v)
    (.rational 5412656 1)) .v) (.rational 36620698 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2722644 1) .v) (.rational 18293960 1)) .v) (.rational 108338682 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5103304 1) .v) (.rational 24350294 1)) .v) (.rational
    125130810 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5155892 1) .v)
    (.rational 16245390 1)) .v) (.rational 70789478 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3026560 1) .v) (.rational 5753914 1)) .v) (.rational 19895340 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1029506 1) .v) (.rational 1083362 1)) .v)
    (.rational 2354212 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1303117 1) .v) (.rational 9813764
    1)) .v) (.rational 45867769 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 6515585 1) .v)
    (.rational 39257310 1)) .v) (.rational 159986266 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13862594 1) .v) (.rational 64964504 1)) .v) (.rational 226167368 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 16356866 1) .v) (.rational 57982646 1)) .v)
    (.rational 166538187 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11676233
    1) .v) (.rational 30710684 1)) .v) (.rational 68488922 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5145125 1) .v) (.rational 10109146 1)) .v) (.rational 15816871 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1359188 1) .v) (.rational 2112980
    1)) .v) (.rational 2030479 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2007128 1) .v)
    (.rational 13207954 1)) .v) (.rational 44159021 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11039204 1) .v) (.rational 61077518 1)) .v) (.rational 179229045 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 26254936 1) .v) (.rational 120410528 1)) .v) (.rational
    303905855 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 35353182 1) .v)
    (.rational 132981872 1)) .v) (.rational 280784824 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 29611612 1) .v) (.rational 91187960 1)) .v) (.rational 155407153 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 15933554 1) .v) (.rational 40742572
    1)) .v) (.rational 53943113 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5474510 1) .v) (.rational 12053486 1)) .v) (.rational 12158021 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1147128 1) .v) (.rational 2299270 1)) .v) (.rational
    1825112 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2197889 1) .v)
    (.rational 12887178 1)) .v) (.rational 32141437 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13187334 1) .v) (.rational 67510284 1)) .v) (.rational 149829102 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 34644892 1) .v) (.rational 153686552 1)) .v) (.rational
    298649238 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 52340565 1) .v)
    (.rational 200374652 1)) .v) (.rational 334564255 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 50189621 1) .v) (.rational 166176170 1)) .v) (.rational 233809311 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 31775768 1) .v) (.rational 92053390
    1)) .v) (.rational 107590631 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    13366032 1) .v) (.rational 34664772 1)) .v) (.rational 33686531 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3652607 1) .v) (.rational 8756640 1)) .v) (.rational
    7247198 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 610790 1) .v)
    (.rational 1398632 1)) .v) (.rational 1024469 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 1668692 1) .v) (.rational 8805776 1)) .v) (.rational 17086122 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10846498 1) .v) (.rational 51415628 1)) .v)
    (.rational 90282162 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 31175028 1) .v)
    (.rational 132151020 1)) .v) (.rational 207498504 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 52151176 1) .v) (.rational 197321016 1)) .v) (.rational 273625584 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 56216146 1) .v) (.rational
    190291708 1)) .v) (.rational 230511254 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 40806054 1) .v) (.rational 124570580 1)) .v) (.rational 131042556 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 20218112 1) .v) (.rational 56469526 1)) .v)
    (.rational 51767102 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 6770416 1)
    .v) (.rational 17638738 1)) .v) (.rational 14300422 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1478224 1) .v) (.rational 3663902 1)) .v) (.rational 2681366 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 194983 1) .v) (.rational 465626 1)) .v)
    (.rational 311675 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 833646 1) .v) (.rational 3981796 1)) .v) (.rational 6241754 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5835522 1) .v) (.rational 25585896 1)) .v) (.rational 36915166
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 18204410 1) .v) (.rational 73037036 1))
    .v) (.rational 96145534 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    33364674 1) .v) (.rational 122327456 1)) .v) (.rational 145683790 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 39859903 1) .v) (.rational 133739056 1)) .v) (.rational
    143109763 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 32536611 1) .v)
    (.rational 100399470 1)) .v) (.rational 96216334 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 18478392 1) .v) (.rational 52901196 1)) .v) (.rational 45508630 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 7282560 1) .v) (.rational 19569834 1)) .v)
    (.rational 15237923 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1945796 1)
    .v) (.rational 4966368 1)) .v) (.rational 3539307 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 334674 1) .v) (.rational 817258 1)) .v) (.rational 536816 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 33415 1) .v) (.rational 77750 1)) .v)
    (.rational 46808 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 246132 1) .v) (.rational 1068444 1)) .v) (.rational 1396788 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1845990 1) .v) (.rational 7480512 1)) .v) (.rational
    9140556 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6208654 1) .v) (.rational
    23425612 1)) .v) (.rational 26580686 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12358736 1) .v) (.rational 43357996 1)) .v) (.rational 45405174 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 16178206 1) .v) (.rational 52796774 1)) .v)
    (.rational 50775667 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 14628570 1)
    .v) (.rational 44525874 1)) .v) (.rational 39221879 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9331084 1) .v) (.rational 26623112 1)) .v) (.rational 21495017 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4206462 1) .v) (.rational 11327388
    1)) .v) (.rational 8417042 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1318608 1) .v) (.rational 3374822 1)) .v) (.rational 2321507 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 276369 1) .v) (.rational 675030 1)) .v) (.rational 431454 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 35825 1) .v) (.rational 83212 1))
    .v) (.rational 49234 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 2437 1)
    .v) (.rational 5280 1)) .v) (.rational 2843 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 32508 1) .v) (.rational
    128736 1)) .v) (.rational 144030 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 260064 1)
    .v) (.rational 974268 1)) .v) (.rational 1032450 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 937668 1) .v) (.rational 3315380 1)) .v) (.rational 3311190 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2012556 1) .v) (.rational 6705924 1)) .v) (.rational
    6282004 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2860235 1) .v)
    (.rational 8977770 1)) .v) (.rational 7856969 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2831094 1) .v) (.rational 8379592 1)) .v) (.rational 6833174 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1997090 1) .v) (.rational 5588196 1)) .v)
    (.rational 4243342 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1008713 1)
    .v) (.rational 2678332 1)) .v) (.rational 1896567 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 360536 1) .v) (.rational 911888 1)) .v) (.rational 603768 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 88340 1) .v) (.rational 213236 1)) .v)
    (.rational 132230 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 13926 1) .v)
    (.rational 31960 1)) .v) (.rational 18508 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1241 1) .v) (.rational 2664 1)) .v) (.rational 1423 1)) (.pow .g 11))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 45 1) .v) (.rational 86 1)) .v) (.rational 41 1)) (.pow .g
    12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow05010

namespace FullLow05011
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsLow4.c230 e f g v*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsLow4.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow4.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow3.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    2*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow3.c410 e f g v*e*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_010_3 e g v+8*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^1+28*SmallGap.ReducedLayers.low0_010_5 e g v*e^2+56*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_5 e g v+6*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_020_7 e g v*e^2+20*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 444 1) .v) (.rational 43860 1)) .e)
    (.add (.mul (.add (.mul (.add (.mul (.rational 70 1) .v) (.rational 6120 1)) .v) (.rational
    293987 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 175 1) .v) (.rational 8288 1)) .v)
    (.rational 336147 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1095 1) .v) (.rational 41116 1)) .v) (.rational 1207115 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3285 1) .v) (.rational 71568 1)) .v) (.rational 1866189 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3566 1) .v) (.rational 30534 1)) .v) (.rational 932270 1)) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7998 1)
    .v) (.rational 178680 1)) .v) (.rational 3394695 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27993 1) .v) (.rational 391816 1)) .v) (.rational 6654238 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 37967 1) .v) (.rational 264696 1)) .v) (.rational 4546032 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 24935 1) .v) (.rational 39264 1))
    .v) (.rational 1223246 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 35501 1) .v) (.rational 559660 1)) .v) (.rational 6939385
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 142004 1) .v) (.rational 1528266 1)) .v)
    (.rational 16674717 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 229884 1) .v)
    (.rational 1492998 1)) .v) (.rational 14798687 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 192638 1) .v) (.rational 596278 1)) .v) (.rational 5796155 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 88123 1) .v) (.rational 58638 1)) .v) (.rational
    854552 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 105342 1) .v) (.rational 1306494 1)) .v) (.rational
    10640582 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 474039 1) .v) (.rational 4359258 1))
    .v) (.rational 30751363 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 889408 1) .v)
    (.rational 5708526 1)) .v) (.rational 34514113 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 900746 1) .v) (.rational 3730460 1)) .v) (.rational 18808983 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 531062 1) .v) (.rational 1288794 1)) .v)
    (.rational 5007601 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 181881 1)
    .v) (.rational 237714 1)) .v) (.rational 535924 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 216848 1)
    .v) (.rational 2253100 1)) .v) (.rational 12353678 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1084240 1) .v) (.rational 8947320 1)) .v) (.rational 42351378 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2309783 1) .v) (.rational 14717624 1)) .v) (.rational
    58844397 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2733692 1) .v)
    (.rational 13106002 1)) .v) (.rational 42708201 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1961926 1) .v) (.rational 6983358 1)) .v) (.rational 17511303 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 871664 1) .v) (.rational 2346362 1)) .v)
    (.rational 4182059 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 232937 1)
    .v) (.rational 508890 1)) .v) (.rational 610032 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    311052 1) .v) (.rational 2790730 1)) .v) (.rational 10736978 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1710786 1) .v) (.rational 12846656 1)) .v) (.rational 43075300 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4075608 1) .v) (.rational 25282248 1)) .v) (.rational
    72422442 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5509341 1) .v)
    (.rational 28013054 1)) .v) (.rational 66844277 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4645780 1) .v) (.rational 19424620 1)) .v) (.rational 37551563 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2525474 1) .v) (.rational 8867628 1)) .v)
    (.rational 13626209 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 880154 1)
    .v) (.rational 2706328 1)) .v) (.rational 3342433 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 187899 1) .v) (.rational 534110 1)) .v) (.rational 557950 1)) (.pow .g
    7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 304470 1) .v) (.rational 2387192 1)) .v)
    (.rational 6760392 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1826820 1) .v) (.rational
    12461176 1)) .v) (.rational 31277736 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    4809430 1) .v) (.rational 28356892 1)) .v) (.rational 62139802 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7301300 1) .v) (.rational 37138944 1)) .v) (.rational
    69938148 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7059669 1) .v)
    (.rational 31153156 1)) .v) (.rational 49773567 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4525896 1) .v) (.rational 17600478 1)) .v) (.rational 23787487 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1937334 1) .v) (.rational 6813110 1)) .v)
    (.rational 7898271 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 541806 1)
    .v) (.rational 1777098 1)) .v) (.rational 1818277 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 93277 1) .v) (.rational 292646 1)) .v) (.rational 271156 1)) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 193284 1) .v) (.rational 1329820
    1)) .v) (.rational 2901236 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1256346 1) .v)
    (.rational 7738688 1)) .v) (.rational 15251442 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3620136 1) .v) (.rational 19886216 1)) .v) (.rational 35017850 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6090942 1) .v) (.rational 29822480 1)) .v)
    (.rational 46450554 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6630342 1)
    .v) (.rational 29061558 1)) .v) (.rational 39773278 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4884183 1) .v) (.rational 19363470 1)) .v) (.rational 23291419 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2470336 1) .v) (.rational 8999362
    1)) .v) (.rational 9603849 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    850304 1) .v) (.rational 2898132 1)) .v) (.rational 2787623 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 192332 1) .v) (.rational 621958 1)) .v) (.rational 546272 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 26496 1) .v) (.rational 81414 1))
    .v) (.rational 65209 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 71496 1) .v) (.rational 432540 1)) .v) (.rational 756054 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 500472 1) .v) (.rational 2769984 1)) .v) (.rational 4453596 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1565706 1) .v) (.rational 7903660 1)) .v)
    (.rational 11594286 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2888100 1)
    .v) (.rational 13286792 1)) .v) (.rational 17658228 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3488058 1) .v) (.rational 14659684 1)) .v) (.rational 17572602 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2893956 1) .v) (.rational 11178504
    1)) .v) (.rational 12085326 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1681415 1) .v) (.rational 6023876 1)) .v) (.rational 5903773 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 683168 1) .v) (.rational 2292934 1)) .v) (.rational 2054287 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 189881 1) .v) (.rational 601138 1))
    .v) (.rational 495520 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 34319 1)
    .v) (.rational 102262 1)) .v) (.rational 77368 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3633 1) .v) (.rational 10000 1)) .v) (.rational 6818 1)) (.pow .g 10)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11664 1) .v)
    (.rational 62208 1)) .v) (.rational 89964 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    87480 1) .v) (.rational 434052 1)) .v) (.rational 586602 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 295092 1) .v) (.rational 1358228 1)) .v) (.rational 1704652 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 591318 1) .v) (.rational 2521324 1)) .v)
    (.rational 2922624 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 782772 1)
    .v) (.rational 3094110 1)) .v) (.rational 3300164 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 719664 1) .v) (.rational 2645012 1)) .v) (.rational 2593184 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 469740 1) .v) (.rational 1613268 1)) .v)
    (.rational 1456818 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 218277 1)
    .v) (.rational 704414 1)) .v) (.rational 588275 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 71094 1) .v) (.rational 216380 1)) .v) (.rational 167640 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 15603 1) .v) (.rational 44708 1)) .v) (.rational
    32067 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2127 1) .v) (.rational
    5672 1)) .v) (.rational 3723 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    150 1) .v) (.rational 362 1)) .v) (.rational 212 1)) (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow05011

namespace FullLow05012
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow4.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    2*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow4.c410 e f g v*e*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_010_4 e g v+8*SmallGap.ReducedLayers.low0_010_5 e g
    v*e^1+28*SmallGap.ReducedLayers.low0_010_6 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_6 e g v+6*SmallGap.ReducedLayers.low1_020_7 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_020_8 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 76 1) .v) (.rational 10948 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 6 1) .v) (.rational 1016 1)) .v) (.rational 71172 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 15 1) .v) (.rational 1352 1)) .v) (.rational 79331
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 93 1) .v) (.rational
    6642 1)) .v) (.rational 281521 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 279 1) .v)
    (.rational 11256 1)) .v) (.rational 422130 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 303 1) .v) (.rational 4372 1)) .v) (.rational 200701 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 672 1) .v) (.rational 28172
    1)) .v) (.rational 757139 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2352 1) .v)
    (.rational 60170 1)) .v) (.rational 1436811 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3192 1) .v) (.rational 38090 1)) .v) (.rational 933630 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2100 1) .v) (.rational 3376 1)) .v) (.rational 225935 1))
    (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2931 1) .v) (.rational 86314 1)) .v) (.rational 1468291 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11724 1) .v) (.rational 231466 1)) .v) (.rational 3424581 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 18996 1) .v) (.rational 219234 1)) .v) (.rational
    2916569 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 15954 1) .v) (.rational
    81546 1)) .v) (.rational 1065148 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7329 1) .v) (.rational 4694 1)) .v) (.rational 128178 1)) (.pow .g 4)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8448
    1) .v) (.rational 195368 1)) .v) (.rational 2109519 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 38016 1) .v) (.rational 645748 1)) .v) (.rational 5955012 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 71412 1) .v) (.rational 837460 1)) .v) (.rational 6509703 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 72534 1) .v) (.rational 543258 1))
    .v) (.rational 3446529 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 42990 1)
    .v) (.rational 188350 1)) .v) (.rational 894735 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 14844 1) .v) (.rational 36148 1)) .v) (.rational 98807 1)) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 16560 1) .v) (.rational 317896 1)) .v) (.rational 2243054 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 82800 1) .v) (.rational 1256576 1)) .v) (.rational 7566465 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 176685 1) .v) (.rational 2065138 1)) .v)
    (.rational 10382009 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 209940 1)
    .v) (.rational 1851406 1)) .v) (.rational 7519625 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 151716 1) .v) (.rational 1006550 1)) .v) (.rational 3162409 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 68118 1) .v) (.rational 351414 1)) .v)
    (.rational 824775 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 18471 1) .v)
    (.rational 80206 1)) .v) (.rational 144378 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    21852 1) .v) (.rational 354384 1)) .v) (.rational 1714794 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 120186 1) .v) (.rational 1626120 1)) .v) (.rational 6808674 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 286998 1) .v) (.rational 3205204 1)) .v) (.rational
    11403966 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 390096 1) .v)
    (.rational 3584384 1)) .v) (.rational 10625712 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 332064 1) .v) (.rational 2535764 1)) .v) (.rational 6172835 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 183078 1) .v) (.rational 1195366 1)) .v)
    (.rational 2399079 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 65058 1) .v)
    (.rational 379866 1)) .v) (.rational 649408 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 14244 1) .v) (.rational 77984 1)) .v) (.rational 118805 1)) (.pow .g 7))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 18522 1) .v) (.rational 253548 1)) .v) (.rational
    886650 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 111132 1) .v) (.rational 1318932 1))
    .v) (.rational 4073838 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 293544 1) .v)
    (.rational 3006116 1)) .v) (.rational 8093654 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 449010 1) .v) (.rational 3972376 1)) .v) (.rational 9218766 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 439731 1) .v) (.rational 3394090 1)) .v)
    (.rational 6759599 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 287316 1)
    .v) (.rational 1973458 1)) .v) (.rational 3400173 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 126252 1) .v) (.rational 792802 1)) .v) (.rational 1206629 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 36540 1) .v) (.rational 215334 1)) .v)
    (.rational 296130 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6567 1) .v)
    (.rational 36814 1)) .v) (.rational 46066 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 9072 1) .v) (.rational 104112 1)) .v) (.rational 275832 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 58968 1) .v) (.rational 603288 1)) .v) (.rational 1442124
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 170676 1) .v) (.rational 1551600 1)) .v)
    (.rational 3313698 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 290070 1)
    .v) (.rational 2345424 1)) .v) (.rational 4442034 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 321138 1) .v) (.rational 2324436 1)) .v) (.rational 3895395 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 242568 1) .v) (.rational 1590612 1)) .v)
    (.rational 2371152 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 127020 1)
    .v) (.rational 766060 1)) .v) (.rational 1027551 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 45780 1) .v) (.rational 257214 1)) .v) (.rational 313881 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10986 1) .v) (.rational 57670 1)) .v) (.rational
    64095 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1629 1) .v) (.rational
    7860 1)) .v) (.rational 7826 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1944 1) .v) (.rational 18576 1)) .v) (.rational 38772 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 13608 1) .v) (.rational 118368 1)) .v) (.rational 227232
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 42822 1) .v) (.rational 337740 1)) .v)
    (.rational 591630 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 80028 1) .v)
    (.rational 571644 1)) .v) (.rational 908214 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 98784 1) .v) (.rational 640428 1)) .v) (.rational 920444 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 84654 1) .v) (.rational 500616 1)) .v) (.rational
    652089 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 51453 1) .v) (.rational
    279138 1)) .v) (.rational 331261 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22212 1) .v) (.rational 110790 1)) .v) (.rational 120329 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6687 1) .v) (.rational 30444 1)) .v) (.rational 30196
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1341 1) .v) (.rational 5442 1))
    .v) (.rational 4857 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 162 1) .v)
    (.rational 558 1)) .v) (.rational 433 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow05012

namespace FullLow05013
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  2*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_010_5 e g v+8*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_7 e g v+6*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 6 1) .v) (.rational 1682 1)) .e) (.add (.mul (.add (.mul
    (.rational 78 1) .v) (.rational 10611 1)) .f) (.mul (.add (.mul (.rational 102 1) .v)
    (.rational 11508 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 498 1) .v)
    (.rational 40416 1)) .f) (.mul (.add (.mul (.rational 822 1) .v) (.rational 58606 1)) .g)) .f)
    (.mul (.add (.mul (.rational 288 1) .v) (.rational 26330 1)) (.pow .g 2)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 2070 1) .v) (.rational 103822 1)) .f) (.mul
    (.add (.mul (.rational 4314 1) .v) (.rational 190160 1)) .g)) .f) (.mul (.add (.mul (.rational
    2562 1) .v) (.rational 116804 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 72 1) .v)
    (.rational 24730 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 6228 1) .v) (.rational 190524 1)) .f) (.mul (.add (.mul (.rational 16464 1)
    .v) (.rational 430660 1)) .g)) .f) (.mul (.add (.mul (.rational 15246 1) .v) (.rational 351736
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 5406 1) .v) (.rational 119870 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.rational 180 1) .v) (.rational 11538 1)) (.pow .g 4)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13656 1) .v)
    (.rational 254686 1)) .f) (.mul (.add (.mul (.rational 44892 1) .v) (.rational 702636 1)) .g))
    .f) (.mul (.add (.mul (.rational 58122 1) .v) (.rational 751890 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.rational 38046 1) .v) (.rational 393440 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.rational 13686 1) .v) (.rational 105264 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational
    2892 1) .v) (.rational 14526 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20700 1) .v) (.rational 243408 1)) .f)
    (.mul (.add (.mul (.rational 81648 1) .v) (.rational 809064 1)) .g)) .f) (.mul (.add (.mul
    (.rational 134784 1) .v) (.rational 1103880 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational
    122808 1) .v) (.rational 811968 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 69066 1)
    .v) (.rational 362416 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 25410 1) .v)
    (.rational 107554 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational 6144 1) .v) (.rational
    22358 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 20052 1) .v) (.rational 156684 1)) .f) (.mul (.add
    (.mul (.rational 91764 1) .v) (.rational 616152 1)) .g)) .f) (.mul (.add (.mul (.rational
    181740 1) .v) (.rational 1033824 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 206496 1)
    .v) (.rational 984888 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 150510 1) .v)
    (.rational 603342 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 74058 1) .v) (.rational
    255416 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational 24714 1) .v) (.rational 76060 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.rational 5304 1) .v) (.rational 14902 1)) (.pow .g 7))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 11016 1) .v) (.rational 60264 1)) .f) (.mul (.add (.mul
    (.rational 57024 1) .v) (.rational 274752 1)) .g)) .f) (.mul (.add (.mul (.rational 130428 1)
    .v) (.rational 547656 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 174960 1) .v)
    (.rational 636696 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 153828 1) .v) (.rational
    487188 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 93240 1) .v) (.rational 260924 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.rational 39390 1) .v) (.rational 99232 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.rational 11274 1) .v) (.rational 25778 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.rational 2022 1) .v) (.rational 4140 1)) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 2592 1) .v) (.rational 10368 1)) .f) (.mul (.add (.mul (.rational 14904
    1) .v) (.rational 53784 1)) .g)) .f) (.mul (.add (.mul (.rational 38412 1) .v) (.rational
    123828 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 58932 1) .v) (.rational 168720 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.rational 60156 1) .v) (.rational 153026 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.rational 43020 1) .v) (.rational 97860 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.rational 21906 1) .v) (.rational 44882 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.rational 7830 1) .v) (.rational 14448 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.rational 1872 1) .v) (.rational 3069 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 270
    1) .v) (.rational 382 1)) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow05013

namespace FullLow05014
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_010_6 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_8 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 120 1) .e) (.add (.mul (.rational 735 1) .f) (.mul (.rational 774 1) .g))) .e)
    (.add (.mul (.add (.mul (.rational 2694 1) .f) (.mul (.rational 3765 1) .g)) .f) (.mul
    (.rational 1584 1) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 6600 1)
    .f) (.mul (.rational 11628 1) .g)) .f) (.mul (.rational 6705 1) (.pow .g 2))) .f) (.mul
    (.rational 1194 1) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 11424 1) .f) (.mul (.rational 24996 1) .g)) .f) (.mul (.rational 19614 1) (.pow .g
    2))) .f) (.mul (.rational 6315 1) (.pow .g 3))) .f) (.mul (.rational 528 1) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 14058 1) .f) (.mul
    (.rational 37944 1) .g)) .f) (.mul (.rational 40092 1) (.pow .g 2))) .f) (.mul (.rational
    21312 1) (.pow .g 3))) .f) (.mul (.rational 6315 1) (.pow .g 4))) .f) (.mul (.rational 1194 1)
    (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 11700 1) .f) (.mul (.rational 38358 1) .g)) .f) (.mul (.rational 52512 1) (.pow .g
    2))) .f) (.mul (.rational 40092 1) (.pow .g 3))) .f) (.mul (.rational 19614 1) (.pow .g 4)))
    .f) (.mul (.rational 6705 1) (.pow .g 5))) .f) (.mul (.rational 1584 1) (.pow .g 6)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5832 1) .f) (.mul (.rational 22680 1) .g)) .f) (.mul (.rational 38358 1) (.pow .g 2))) .f)
    (.mul (.rational 37944 1) (.pow .g 3))) .f) (.mul (.rational 24996 1) (.pow .g 4))) .f) (.mul
    (.rational 11628 1) (.pow .g 5))) .f) (.mul (.rational 3765 1) (.pow .g 6))) .f) (.mul
    (.rational 774 1) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1296 1) .f) (.mul (.rational 5832 1) .g))
    .f) (.mul (.rational 11700 1) (.pow .g 2))) .f) (.mul (.rational 14058 1) (.pow .g 3))) .f)
    (.mul (.rational 11424 1) (.pow .g 4))) .f) (.mul (.rational 6600 1) (.pow .g 5))) .f) (.mul
    (.rational 2694 1) (.pow .g 6))) .f) (.mul (.rational 735 1) (.pow .g 7))) .f) (.mul
    (.rational 120 1) (.pow .g 8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow05014

end
end SPR.N6.Tail.CoreEndpoint
