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

namespace FullLow1130
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    4*SmallGap.PolarCoefficientsLow0.c140 e f g v*e*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_0 e g v*e^5+4*SmallGap.ReducedLayers.low0_010_0 e
    g v*e^3+12*SmallGap.ReducedLayers.low0_001_0 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_110_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_101_0 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_011_0 e g v*e^2+6*SmallGap.ReducedLayers.low1_002_0 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 80 1) .v) (.rational 2280 1)) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 80 1) .v) (.rational 1760 1)) .v) (.rational 20492 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 200 1) .v) (.rational 2800 1)) .v) (.rational 26516 1))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1600 1) .v) (.rational
    17984 1)) .v) (.rational 116028 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4800 1) .v)
    (.rational 39192 1)) .v) (.rational 208524 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5200 1) .v) (.rational 28768 1)) .v) (.rational 130948 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 14760 1) .v) (.rational
    113524 1)) .v) (.rational 464897 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 51660 1) .v)
    (.rational 313778 1)) .v) (.rational 1078204 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 69940 1) .v) (.rational 327118 1)) .v) (.rational 944459 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 45700 1) .v) (.rational 161654 1)) .v) (.rational
    387718 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 83556 1) .v) (.rational 496264 1)) .v) (.rational 1402691 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 334224 1) .v) (.rational 1659634 1)) .v) (.rational 4013880
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 540144 1) .v) (.rational 2219800 1)) .v)
    (.rational 4558949 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 450648 1)
    .v) (.rational 1525228 1)) .v) (.rational 2622024 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 204460 1) .v) (.rational 572016 1)) .v) (.rational 805250 1)) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 325422 1) .v) (.rational 1594914 1)) .v) (.rational 3307490 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1464399 1) .v) (.rational 6251471 1)) .v) (.rational 11324584 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2742384 1) .v) (.rational 10152102 1)) .v)
    (.rational 15926327 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2764482 1)
    .v) (.rational 8864826 1)) .v) (.rational 11905564 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1616362 1) .v) (.rational 4507826 1)) .v) (.rational 5113015 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 546631 1) .v) (.rational 1340815 1)) .v)
    (.rational 1268370 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 925642 1) .v) (.rational 3902460
    1)) .v) (.rational 6234966 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4628210 1) .v)
    (.rational 17521708 1)) .v) (.rational 24965738 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9835893 1) .v) (.rational 33365087 1)) .v) (.rational 42086441 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11574312 1) .v) (.rational 35176642 1)) .v)
    (.rational 38961424 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8223424 1)
    .v) (.rational 22459158 1)) .v) (.rational 21667689 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3598662 1) .v) (.rational 8894932 1)) .v) (.rational 7431346 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 942441 1) .v) (.rational 2133431 1)) .v)
    (.rational 1543134 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1990592 1) .v)
    (.rational 7424454 1)) .v) (.rational 9520632 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    10948256 1) .v) (.rational 37531865 1)) .v) (.rational 43779667 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25998226 1) .v) (.rational 81807351 1)) .v) (.rational 86316743 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 34880097 1) .v) (.rational
    100745365 1)) .v) (.rational 95617862 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 29032128 1) .v) (.rational 77116994 1)) .v) (.rational 65524409 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 15476454 1) .v) (.rational 37970723 1)) .v)
    (.rational 28804263 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5252174 1)
    .v) (.rational 11987435 1)) .v) (.rational 8127036 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1084913 1) .v) (.rational 2326391 1)) .v) (.rational 1418670 1)) (.pow
    .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3302632 1) .v) (.rational 11116272 1))
    .v) (.rational 11846658 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 19815792 1) .v)
    (.rational 62424856 1)) .v) (.rational 61624524 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 51951367 1) .v) (.rational 153017501 1)) .v) (.rational 139348838 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 78112075 1) .v) (.rational 215071811 1)) .v)
    (.rational 179995952 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 74289305
    1) .v) (.rational 191401161 1)) .v) (.rational 146774855 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 46458482 1) .v) (.rational 112282496 1)) .v) (.rational 78781772
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 19216637 1) .v) (.rational
    43749147 1)) .v) (.rational 28113093 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5142227 1) .v) (.rational 11092799 1)) .v) (.rational 6555328 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 840035 1) .v) (.rational 1729351 1)) .v) (.rational
    946858 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4272776 1)
    .v) (.rational 13169324 1)) .v) (.rational 12014928 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27773044 1) .v) (.rational 81276322 1)) .v) (.rational 69801434 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 79622342 1) .v) (.rational 221030348 1)) .v) (.rational
    178149498 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 132419397 1) .v)
    (.rational 348551954 1)) .v) (.rational 262948277 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 141319405 1) .v) (.rational 352819966 1)) .v) (.rational 248624823 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 101047071 1) .v) (.rational
    239574643 1)) .v) (.rational 157539812 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 49028940 1) .v) (.rational 110641702 1)) .v) (.rational 67926029 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 15977103 1) .v) (.rational 34431492 1)) .v)
    (.rational 19780945 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3375089 1)
    .v) (.rational 6974922 1)) .v) (.rational 3765614 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 429705 1) .v) (.rational 855309 1)) .v) (.rational 436370 1)) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4324284 1) .v)
    (.rational 12340232 1)) .v) (.rational 9883364 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 30269988 1) .v) (.rational 82970744 1)) .v) (.rational 63423424 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 94155370 1) .v) (.rational 247663694 1)) .v) (.rational
    180284524 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 171422376 1) .v)
    (.rational 432444980 1)) .v) (.rational 299182404 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 202482958 1) .v) (.rational 489810424 1)) .v) (.rational 321563722 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 162477724 1) .v) (.rational
    377029946 1)) .v) (.rational 234667794 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 90089957 1) .v) (.rational 200742795 1)) .v) (.rational 118450803 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 34394396 1) .v) (.rational 73714366 1)) .v)
    (.rational 41276724 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8828744 1)
    .v) (.rational 18239538 1)) .v) (.rational 9712279 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1448636 1) .v) (.rational 2891714 1)) .v) (.rational 1468470 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 137991 1) .v) (.rational 266637 1)) .v)
    (.rational 129510 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 3410880 1) .v) (.rational 9090416 1)) .v) (.rational 6527517 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 25581600 1) .v) (.rational 66104588 1)) .v)
    (.rational 45832342 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 85771112 1) .v)
    (.rational 214706760 1)) .v) (.rational 143491519 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 169524628 1) .v) (.rational 410800392 1)) .v) (.rational 264228716 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 219247052 1) .v) (.rational
    514072222 1)) .v) (.rational 317818011 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 194660598 1) .v) (.rational 441564449 1)) .v) (.rational 262148803 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 121021892 1) .v) (.rational 265641251 1))
    .v) (.rational 151373654 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    52715991 1) .v) (.rational 112031915 1)) .v) (.rational 61283522 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15813936 1) .v) (.rational 32568306 1)) .v) (.rational
    17113502 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3141348 1) .v)
    (.rational 6275753 1)) .v) (.rational 3171269 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 383548 1) .v) (.rational 743817 1)) .v) (.rational 361869 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 24851 1) .v) (.rational 46759 1)) .v) (.rational
    21908 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 2073532 1) .v) (.rational 5197240 1)) .v) (.rational 3405539 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 16588256 1) .v) (.rational 40626378 1)) .v)
    (.rational 25950048 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 59619158 1) .v)
    (.rational 142553882 1)) .v) (.rational 88646527 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 127039626 1) .v) (.rational 296343762 1)) .v) (.rational 179182124 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 178335038 1) .v) (.rational 405589630 1))
    .v) (.rational 238185925 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    173260738 1) .v) (.rational 384009998 1)) .v) (.rational 218822618 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 119050457 1) .v) (.rational 257066379 1)) .v) (.rational
    142038491 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 58039433 1) .v)
    (.rational 122088141 1)) .v) (.rational 65381388 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 19811189 1) .v) (.rational 40600473 1)) .v) (.rational 21069700 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 4581040 1) .v) (.rational 9147674 1)) .v)
    (.rational 4600394 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 673289 1)
    .v) (.rational 1309919 1)) .v) (.rational 638390 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 55443 1) .v) (.rational 105015 1)) .v) (.rational 49572 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 1873 1) .v) (.rational 3445 1)) .v)
    (.rational 1572 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 951542 1) .v) (.rational 2256298 1)) .v) (.rational
    1369286 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 8088107 1) .v) (.rational 18860283
    1)) .v) (.rational 11243920 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 31012332 1)
    .v) (.rational 71064378 1)) .v) (.rational 41578129 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 70830350 1) .v) (.rational 159384982 1)) .v) (.rational 91427884 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 107151346 1) .v) (.rational
    236618730 1)) .v) (.rational 132949641 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 112901932 1) .v) (.rational 244520958 1)) .v) (.rational 134454288 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 84776100 1) .v) (.rational 179979990 1)) .v)
    (.rational 96772799 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 45587575 1)
    .v) (.rational 94828930 1)) .v) (.rational 49823443 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17366175 1) .v) (.rational 35381462 1)) .v) (.rational 18153764 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 4550731 1) .v) (.rational 9077435
    1)) .v) (.rational 4545766 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    774050 1) .v) (.rational 1510900 1)) .v) (.rational 738002 1)) (.pow .g 10))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 76073 1) .v) (.rational 145172 1)) .v) (.rational 69099 1)) (.pow
    .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 3223 1) .v) (.rational 6002 1)) .v)
    (.rational 2779 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 318250 1) .v) (.rational 717660 1)) .v)
    (.rational 408482 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2864250 1) .v) (.rational
    6385908 1)) .v) (.rational 3592794 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    11668193 1) .v) (.rational 25705123 1)) .v) (.rational 14284799 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 28422544 1) .v) (.rational 61833306 1)) .v) (.rational
    33915728 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 46058934 1) .v)
    (.rational 98890650 1)) .v) (.rational 53497223 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 52248518 1) .v) (.rational 110646598 1)) .v) (.rational 58990508 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 42486422 1) .v) (.rational 88691670 1)) .v)
    (.rational 46565779 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 24914550 1)
    .v) (.rational 51239526 1)) .v) (.rational 26473030 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10437934 1) .v) (.rational 21136676 1)) .v) (.rational 10738003 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3040064 1) .v) (.rational 6057750
    1)) .v) (.rational 3023758 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    582633 1) .v) (.rational 1141623 1)) .v) (.rational 559406 1)) (.pow .g 10))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 65722 1) .v) (.rational 126512 1)) .v) (.rational 60790 1)) (.pow
    .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 3282 1) .v) (.rational 6198 1)) .v)
    (.rational 2916 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 73032 1) .v) (.rational 157398 1)) .v)
    (.rational 84954 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 693804 1) .v) (.rational
    1485033 1)) .v) (.rational 796155 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2991986 1) .v) (.rational 6357547 1)) .v) (.rational 3383967 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 7739879 1) .v) (.rational 16319349 1)) .v) (.rational 8619840 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 13367412 1) .v) (.rational 27954618
    1)) .v) (.rational 14644732 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    16226018 1) .v) (.rational 33639244 1)) .v) (.rational 17468848 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 14183246 1) .v) (.rational 29135344 1)) .v) (.rational
    14989044 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8987784 1) .v)
    (.rational 18284388 1)) .v) (.rational 9313250 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4094194 1) .v) (.rational 8244044 1)) .v) (.rational 4154720 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1306162 1) .v) (.rational 2601683 1)) .v)
    (.rational 1296357 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 276696 1)
    .v) (.rational 544821 1)) .v) (.rational 268189 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 34897 1) .v) (.rational 67871 1)) .v) (.rational 32974 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1978 1) .v) (.rational 3796 1)) .v) (.rational 1818
    1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 10248 1) .v) (.rational 21216 1)) .v) (.rational
    10968 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 102480 1) .v) (.rational 211500 1)) .v)
    (.rational 109020 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 466339 1) .v)
    (.rational 959233 1)) .v) (.rational 492894 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1276371 1) .v) (.rational 2616055 1)) .v) (.rational 1339684 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2339177 1) .v) (.rational 4776049 1)) .v)
    (.rational 2436872 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3022756 1)
    .v) (.rational 6146444 1)) .v) (.rational 3123688 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2822918 1) .v) (.rational 5714842 1)) .v) (.rational 2891924 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1918882 1) .v) (.rational 3866330 1)) .v)
    (.rational 1947448 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 941906 1)
    .v) (.rational 1888210 1)) .v) (.rational 946304 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 325492 1) .v) (.rational 648944 1)) .v) (.rational 323452 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 75143 1) .v) (.rational 148933 1)) .v) (.rational
    73790 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 10403 1) .v) (.rational
    20487 1)) .v) (.rational 10084 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    653 1) .v) (.rational 1277 1)) .v) (.rational 624 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 660
    1) .v) (.rational 1320 1)) .v) (.rational 660 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    6930 1) .v) (.rational 13860 1)) .v) (.rational 6930 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 33182 1) .v) (.rational 66364 1)) .v) (.rational 33182 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 95779 1) .v) (.rational 191558 1)) .v) (.rational
    95779 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 185571 1) .v) (.rational
    371142 1)) .v) (.rational 185571 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 254184 1) .v) (.rational 508368 1)) .v) (.rational 254184 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 252336 1) .v) (.rational 504672 1)) .v) (.rational
    252336 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 182898 1) .v) (.rational
    365796 1)) .v) (.rational 182898 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 96054 1) .v) (.rational 192108 1)) .v) (.rational 96054 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 35646 1) .v) (.rational 71292 1)) .v) (.rational 35646 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 8874 1) .v) (.rational 17748 1))
    .v) (.rational 8874 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1331 1)
    .v) (.rational 2662 1)) .v) (.rational 1331 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 91 1) .v) (.rational 182 1)) .v) (.rational 91 1)) (.pow .g 12))) (.pow .f
    5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1130

namespace FullLow1131
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow1.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    8*SmallGap.PolarCoefficientsLow0.c140 e f g v*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow1.c140 e f g v*e*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    6*SmallGap.PolarCoefficientsLow0.c230 e f g v*e*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(20*SmallGap.ReducedLayers.low0_100_0 e g v*e^4+4*SmallGap.ReducedLayers.low0_100_1
    e g v*e^5+12*SmallGap.ReducedLayers.low0_010_0 e g v*e^2+4*SmallGap.ReducedLayers.low0_010_1 e
    g v*e^3+48*SmallGap.ReducedLayers.low0_001_0 e g v*e^3+12*SmallGap.ReducedLayers.low0_001_1 e
    g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_0 e g v*e^2+1*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^3+12*SmallGap.ReducedLayers.low1_101_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_011_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^2+18*SmallGap.ReducedLayers.low1_002_0 e g v*e^2+6*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 680 1) .v) (.rational 20500 1)) .e) (.add (.mul (.add (.mul (.add
    (.mul (.rational 600 1) .v) (.rational 13600 1)) .v) (.rational 174530 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1500 1) .v) (.rational 21160 1)) .v) (.rational 221580 1)) .g)))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11240 1) .v) (.rational 129456
    1)) .v) (.rational 936388 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 33720 1) .v)
    (.rational 275408 1)) .v) (.rational 1646652 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 36540 1) .v) (.rational 193952 1)) .v) (.rational 1002816 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 98200 1) .v) (.rational
    773530 1)) .v) (.rational 3555954 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 343700 1)
    .v) (.rational 2094099 1)) .v) (.rational 8063335 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 465420 1) .v) (.rational 2121541 1)) .v) (.rational 6855469 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 304300 1) .v) (.rational 1009577 1)) .v) (.rational
    2701445 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 529700 1) .v) (.rational 3230940 1)) .v) (.rational 10170824 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2118800 1) .v) (.rational 10627834 1)) .v) (.rational
    28480288 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3424932 1) .v) (.rational
    13934358 1)) .v) (.rational 31486414 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2858996 1) .v) (.rational 9360326 1)) .v) (.rational 17505112 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1298456 1) .v) (.rational 3431750 1)) .v) (.rational
    5154894 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1970504 1) .v) (.rational 9961682 1)) .v) (.rational
    22731090 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 8867268 1) .v) (.rational 38551503
    1)) .v) (.rational 76320089 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16610168 1)
    .v) (.rational 61737352 1)) .v) (.rational 104897918 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16755004 1) .v) (.rational 53144108 1)) .v) (.rational 76357482 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9808164 1) .v) (.rational 26679300
    1)) .v) (.rational 31836102 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3323192 1) .v) (.rational 7867589 1)) .v) (.rational 7666493 1)) (.pow .g 5)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 5350424 1) .v) (.rational 23374730 1)) .v) (.rational 40566908 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 26752120 1) .v) (.rational 103936444 1)) .v) (.rational 159734966
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 56874597 1) .v) (.rational 195978259 1))
    .v) (.rational 264336964 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    66985668 1) .v) (.rational 204721534 1)) .v) (.rational 239893630 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 47667202 1) .v) (.rational 129741618 1)) .v) (.rational
    130761936 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 20910672 1) .v)
    (.rational 51177910 1)) .v) (.rational 44059840 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5495377 1) .v) (.rational 12288641 1)) .v) (.rational 9048452 1)) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 10946614 1) .v) (.rational 42470202 1)) .v) (.rational
    58465936 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 60206377 1) .v) (.rational 213110649
    1)) .v) (.rational 265178322 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 143038511
    1) .v) (.rational 461278001 1)) .v) (.rational 515391616 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 192125472 1) .v) (.rational 564680861 1)) .v) (.rational
    562828041 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 160236228 1) .v)
    (.rational 430467452 1)) .v) (.rational 380676832 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 85685901 1) .v) (.rational 211692879 1)) .v) (.rational 165681788 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 29209955 1) .v) (.rational 67016341
    1)) .v) (.rational 46547732 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6071018 1) .v) (.rational 13104851 1)) .v) (.rational 8159057 1)) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 17172830 1) .v) (.rational 60272128 1)) .v) (.rational
    68273096 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 103036980 1) .v) (.rational
    336545076 1)) .v) (.rational 351285888 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    270298149 1) .v) (.rational 820837869 1)) .v) (.rational 785836394 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 406985095 1) .v) (.rational 1149333291 1)) .v) (.rational
    1004982888 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 388021367 1) .v)
    (.rational 1020810153 1)) .v) (.rational 812804304 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 243581678 1) .v) (.rational 599200492 1)) .v) (.rational 434075804 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 101306747 1) .v) (.rational
    234402829 1)) .v) (.rational 154862728 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27314987 1) .v) (.rational 59917069 1)) .v) (.rational 36334188 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4507667 1) .v) (.rational 9459445 1)) .v)
    (.rational 5318718 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    20814916 1) .v) (.rational 66945468 1)) .v) (.rational 64388222 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 135296954 1) .v) (.rational 411339028 1)) .v) (.rational 370892122 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 388160508 1) .v) (.rational 1114626152 1))
    .v) (.rational 939100458 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    646616300 1) .v) (.rational 1753600292 1)) .v) (.rational 1376691864 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 692053918 1) .v) (.rational 1774079382 1)) .v)
    (.rational 1295351534 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 497020122
    1) .v) (.rational 1206860809 1)) .v) (.rational 819195693 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 242694912 1) .v) (.rational 560101120 1)) .v) (.rational
    353973168 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 79786068 1) .v)
    (.rational 175817112 1)) .v) (.rational 103844382 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17055702 1) .v) (.rational 36080456 1)) .v) (.rational 20032778 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2205944 1) .v) (.rational 4502879
    1)) .v) (.rational 2365991 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 19482230 1) .v) (.rational 57954556 1)) .v) (.rational 48592204 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 136375610 1) .v) (.rational 388312072 1)) .v)
    (.rational 309778308 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 424541258 1) .v)
    (.rational 1156114644 1)) .v) (.rational 875447944 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 774364618 1) .v) (.rational 2016057612 1)) .v) (.rational 1446181812
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 917593100 1) .v) (.rational
    2284453260 1)) .v) (.rational 1550212284 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 739908540 1) .v) (.rational 1763180018 1)) .v) (.rational 1131303274 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 413160285 1) .v) (.rational 944017473 1))
    .v) (.rational 573082444 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    159282918 1) .v) (.rational 349826786 1)) .v) (.rational 201316658 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 41430056 1) .v) (.rational 87722088 1)) .v) (.rational
    48000788 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 6918694 1) .v)
    (.rational 14162904 1)) .v) (.rational 7395044 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 674619 1) .v) (.rational 1337083 1)) .v) (.rational 667976 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13958940 1)
    .v) (.rational 38672822 1)) .v) (.rational 28887914 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 104692050 1) .v) (.rational 280457519 1)) .v) (.rational 201809591 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 351321354 1) .v) (.rational 909272057 1)) .v)
    (.rational 629157493 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 695759376
    1) .v) (.rational 1738746517 1)) .v) (.rational 1155103239 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 902905924 1) .v) (.rational 2178267147 1)) .v) (.rational
    1387722769 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 805854181 1) .v)
    (.rational 1877169776 1)) .v) (.rational 1146074775 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 504787025 1) .v) (.rational 1136115096 1)) .v) (.rational 664719087 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 222183384 1) .v) (.rational
    483693778 1)) .v) (.rational 271383752 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 67597546 1) .v) (.rational 142538815 1)) .v) (.rational 76788747 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 13682819 1) .v) (.rational 27981934 1)) .v)
    (.rational 14496293 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1712891 1)
    .v) (.rational 3398772 1)) .v) (.rational 1694955 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 114750 1) .v) (.rational 220504 1)) .v) (.rational 105754 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    7515114 1) .v) (.rational 19494996 1)) .v) (.rational 13206008 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 60120912 1) .v) (.rational 152067046 1)) .v) (.rational 100242540 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 216273108 1) .v) (.rational 532939064 1)) .v)
    (.rational 341403210 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 461795796
    1) .v) (.rational 1107885904 1)) .v) (.rational 688833204 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 650551236 1) .v) (.rational 1518737334 1)) .v) (.rational
    915523002 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 635463564 1) .v)
    (.rational 1443225008 1)) .v) (.rational 842834832 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 440040799 1) .v) (.rational 972244339 1)) .v) (.rational 549798792 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 216845783 1) .v) (.rational
    466201095 1)) .v) (.rational 255255400 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 75100341 1) .v) (.rational 157169897 1)) .v) (.rational 83335478 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 17704686 1) .v) (.rational 36079116 1)) .v)
    (.rational 18531468 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2669525 1)
    .v) (.rational 5296105 1)) .v) (.rational 2635138 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 227427 1) .v) (.rational 438575 1)) .v) (.rational 211148 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 8045 1) .v) (.rational 15009 1)) .v)
    (.rational 6964 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 2941380 1) .v) (.rational 7175778 1)) .v) (.rational
    4472382 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 25001730 1) .v) (.rational 59886157
    1)) .v) (.rational 36620833 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 95951092 1)
    .v) (.rational 225484588 1)) .v) (.rational 135142610 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 219598590 1) .v) (.rational 505946292 1)) .v) (.rational 296901178 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 333381842 1) .v) (.rational
    752590736 1)) .v) (.rational 432005544 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 353174978 1) .v) (.rational 780783088 1)) .v) (.rational 438050350 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 267256562 1) .v) (.rational 578399436 1))
    .v) (.rational 316948520 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    145262766 1) .v) (.rational 307680220 1)) .v) (.rational 164589338 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 56141510 1) .v) (.rational 116357132 1)) .v) (.rational
    60739188 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 14996172 1) .v)
    (.rational 30405471 1)) .v) (.rational 15482829 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2615818 1) .v) (.rational 5185860 1)) .v) (.rational 2574618 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 265732 1) .v) (.rational 514484 1)) .v)
    (.rational 248752 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 11764 1) .v)
    (.rational 22182 1)) .v) (.rational 10418 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 789706 1) .v)
    (.rational 1818618 1)) .v) (.rational 1055348 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    7107354 1) .v) (.rational 16164564 1)) .v) (.rational 9264234 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 28978673 1) .v) (.rational 65048629 1)) .v) (.rational 36790564 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 70729360 1) .v) (.rational
    156599598 1)) .v) (.rational 87337322 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 115008194 1) .v) (.rational 251008596 1)) .v) (.rational 137933800 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 131143642 1) .v) (.rational 281987280 1))
    .v) (.rational 152566158 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    107439698 1) .v) (.rational 227480172 1)) .v) (.rational 121090948 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 63656410 1) .v) (.rational 132651576 1)) .v) (.rational
    69428234 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 27040850 1) .v)
    (.rational 55435848 1)) .v) (.rational 28510572 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8021084 1) .v) (.rational 16169796 1)) .v) (.rational 8166760 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1574381 1) .v) (.rational 3119127 1)) .v)
    (.rational 1546000 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 183174 1)
    .v) (.rational 356338 1)) .v) (.rational 173164 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9522 1) .v) (.rational 18162 1)) .v) (.rational 8640 1)) (.pow .g 12))) (.pow
    .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 129966 1) .v) (.rational 283494 1)) .v) (.rational 154704 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1234677 1) .v) (.rational 2673069 1)) .v) (.rational 1448244 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5328723 1) .v) (.rational 11445117 1)) .v)
    (.rational 6153206 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 13809882 1)
    .v) (.rational 29411617 1)) .v) (.rational 15682475 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 23925592 1) .v) (.rational 50502362 1)) .v) (.rational 26691822 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 29181354 1) .v) (.rational 61018651
    1)) .v) (.rational 31948541 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    25683350 1) .v) (.rational 53175101 1)) .v) (.rational 27565643 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16430180 1) .v) (.rational 33666319 1)) .v) (.rational
    17269431 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 7580142 1) .v)
    (.rational 15364937 1)) .v) (.rational 7794535 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2459017 1) .v) (.rational 4928572 1)) .v) (.rational 2471227 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 532303 1) .v) (.rational 1054442 1)) .v)
    (.rational 522267 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 69018 1) .v)
    (.rational 135052 1)) .v) (.rational 66034 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4052 1) .v) (.rational 7827 1)) .v) (.rational 3775 1)) (.pow .g 12))) (.pow
    .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 9876 1) .v) (.rational 20472 1)) .v) (.rational 10596 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 98760 1) .v) (.rational 204060 1)) .v) (.rational 105300 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 449719 1) .v) (.rational 925993 1)) .v)
    (.rational 476274 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1232811 1)
    .v) (.rational 2528935 1)) .v) (.rational 1296124 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2265433 1) .v) (.rational 4628561 1)) .v) (.rational 2363128 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2939540 1) .v) (.rational 5980012 1)) .v)
    (.rational 3040472 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2761486 1)
    .v) (.rational 5591978 1)) .v) (.rational 2830492 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1892498 1) .v) (.rational 3813562 1)) .v) (.rational 1921064 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 939166 1) .v) (.rational 1882730 1)) .v)
    (.rational 943564 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 329228 1) .v)
    (.rational 656416 1)) .v) (.rational 327188 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 77419 1) .v) (.rational 153485 1)) .v) (.rational 76066 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10971 1) .v) (.rational 21623 1)) .v) (.rational
    10652 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 709 1) .v) (.rational
    1389 1)) .v) (.rational 680 1)) (.pow .g 12))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1131

namespace FullLow1132
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow2.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    8*SmallGap.PolarCoefficientsLow1.c140 e f g v*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow2.c140 e f g v*e*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    14*SmallGap.PolarCoefficientsLow0.c230 e f g v*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    6*SmallGap.PolarCoefficientsLow0.c320 e f g v*e*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(40*SmallGap.ReducedLayers.low0_100_0 e g v*e^3+20*SmallGap.ReducedLayers.low0_100_1
    e g v*e^4+4*SmallGap.ReducedLayers.low0_100_2 e g v*e^5+12*SmallGap.ReducedLayers.low0_010_0 e
    g v*e^1+12*SmallGap.ReducedLayers.low0_010_1 e g v*e^2+4*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^3+72*SmallGap.ReducedLayers.low0_001_0 e g v*e^2+48*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^3+12*SmallGap.ReducedLayers.low0_001_2 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^2+1*SmallGap.ReducedLayers.low1_110_2 e g v*e^3+18*SmallGap.ReducedLayers.low1_101_0 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_101_1 e g v*e^3+3*SmallGap.ReducedLayers.low1_101_2 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_011_0 e g v+6*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_2 e g v*e^2+18*SmallGap.ReducedLayers.low1_002_0 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_002_1 e g v*e^2+6*SmallGap.ReducedLayers.low1_002_2 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 2520 1) .v) (.rational 82060 1)) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 1920 1) .v) (.rational 46200 1)) .v) (.rational 663288 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4800 1) .v) (.rational 70200 1)) .v) (.rational 825204 1)) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 34060 1) .v) (.rational 409800 1))
    .v) (.rational 3372362 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 102180 1) .v)
    (.rational 847960 1)) .v) (.rational 5791614 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 110760 1) .v) (.rational 567360 1)) .v) (.rational 3407274 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 283240 1) .v)
    (.rational 2312176 1)) .v) (.rational 12115056 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 991340 1) .v) (.rational 6105572 1)) .v) (.rational 26792226 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1342740 1) .v) (.rational 5965020 1)) .v) (.rational
    22006030 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 878500 1) .v)
    (.rational 2695356 1)) .v) (.rational 8246182 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1457344 1) .v) (.rational 9199424
    1)) .v) (.rational 32733662 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5829376 1) .v)
    (.rational 29658798 1)) .v) (.rational 89445268 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9424684 1) .v) (.rational 37913791 1)) .v) (.rational 95803433 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7871236 1) .v) (.rational 24708017 1)) .v)
    (.rational 51072545 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3578164 1)
    .v) (.rational 8770093 1)) .v) (.rational 14221713 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5168394 1) .v)
    (.rational 27115882 1)) .v) (.rational 69002245 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23257773 1) .v) (.rational 103335417 1)) .v) (.rational 226574686 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 43575824 1) .v) (.rational 162613536 1)) .v)
    (.rational 303123044 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 43979110
    1) .v) (.rational 137389035 1)) .v) (.rational 213564721 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 25769406 1) .v) (.rational 67764581 1)) .v) (.rational 85699224
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8743877 1) .v) (.rational
    19728840 1)) .v) (.rational 19813933 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13335628 1) .v)
    (.rational 60737600 1)) .v) (.rational 115851503 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 66678140 1) .v) (.rational 266971564 1)) .v) (.rational 447562242 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 141799158 1) .v) (.rational 497347977 1)) .v)
    (.rational 724819229 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 167127792
    1) .v) (.rational 513470404 1)) .v) (.rational 642250768 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 119079412 1) .v) (.rational 322185685 1)) .v) (.rational
    341444596 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 52339152 1) .v)
    (.rational 126311381 1)) .v) (.rational 112451465 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13791650 1) .v) (.rational 30324262 1)) .v) (.rational 22752568 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 25769822 1) .v) (.rational 104695150 1)) .v)
    (.rational 156320233 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 141734021 1) .v)
    (.rational 520821431 1)) .v) (.rational 698071549 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 336874803 1) .v) (.rational 1117900623 1)) .v) (.rational 1334548793 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 452931456 1) .v) (.rational 1358369691 1))
    .v) (.rational 1433136809 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    378410204 1) .v) (.rational 1029857474 1)) .v) (.rational 954259465 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 202893733 1) .v) (.rational 505294614 1)) .v)
    (.rational 410299254 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 69426475
    1) .v) (.rational 160298574 1)) .v) (.rational 114650340 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 14501814 1) .v) (.rational 31573108 1)) .v) (.rational 20183456
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 37829064 1) .v) (.rational
    139471874 1)) .v) (.rational 169480055 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    226974384 1) .v) (.rational 773677620 1)) .v) (.rational 861378882 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 595762111 1) .v) (.rational 1875914121 1)) .v) (.rational
    1903484678 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 898212035 1) .v)
    (.rational 2614424257 1)) .v) (.rational 2406592290 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 858311405 1) .v) (.rational 2315799059 1)) .v) (.rational 1928014677
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 540691634 1) .v) (.rational
    1359481928 1)) .v) (.rational 1023623750 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 225999209 1) .v) (.rational 533818384 1)) .v) (.rational 365069923 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 61349231 1) .v) (.rational 137547420 1)) .v)
    (.rational 86233065 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10214155 1)
    .v) (.rational 21983222 1)) .v) (.rational 12799711 1)) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 42338708 1) .v) (.rational 143236006 1)) .v) (.rational
    146479991 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 275201602 1) .v) (.rational
    875631995 1)) .v) (.rational 835720799 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    790102362 1) .v) (.rational 2362790316 1)) .v) (.rational 2097122819 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1318345369 1) .v) (.rational 3706712307 1)) .v)
    (.rational 3050669972 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1414969559 1) .v) (.rational 3746576510 1)) .v) (.rational 2854594825 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1020599181 1) .v) (.rational 2553012716 1)) .v)
    (.rational 1801359083 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 501448724
    1) .v) (.rational 1190762048 1)) .v) (.rational 780262567 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 166256695 1) .v) (.rational 377106906 1)) .v) (.rational
    230753673 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 35944911 1) .v)
    (.rational 78404297 1)) .v) (.rational 45137389 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4718217 1) .v) (.rational 9953432 1)) .v) (.rational 5430969 1)) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 35919814 1) .v)
    (.rational 112321490 1)) .v) (.rational 99393611 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 251438698 1) .v) (.rational 749566252 1)) .v) (.rational 628929362 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 783398460 1) .v) (.rational 2224921881 1)) .v)
    (.rational 1765669226 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1431687686 1) .v) (.rational 3873581356 1)) .v) (.rational 2901672986 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1702138590 1) .v) (.rational 4390541115 1)) .v)
    (.rational 3101004177 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1379511464 1) .v) (.rational 3398140386 1)) .v) (.rational 2263064588 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 775930756 1) .v) (.rational 1830159526 1)) .v)
    (.rational 1150982043 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 302151982
    1) .v) (.rational 684777904 1)) .v) (.rational 407891614 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 79656680 1) .v) (.rational 174119730 1)) .v) (.rational 98626747
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 13541850 1) .v) (.rational
    28638041 1)) .v) (.rational 15485489 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1351736 1) .v) (.rational 2767110 1)) .v) (.rational 1430792 1)) (.pow .g 10))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22725238 1) .v)
    (.rational 66008230 1)) .v) (.rational 51690915 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 170439285 1) .v) (.rational 477153559 1)) .v) (.rational 359001073 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 572503085 1) .v) (.rational 1543611123 1)) .v)
    (.rational 1113735325 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1136274230 1) .v) (.rational 2949531841 1)) .v) (.rational 2037688862 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1480111609 1) .v) (.rational 3699314903 1)) .v)
    (.rational 2444587256 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1328588129 1) .v) (.rational 3199359004 1)) .v) (.rational 2021647695 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 839067988 1) .v) (.rational 1949180924 1)) .v)
    (.rational 1178323836 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 373510896
    1) .v) (.rational 838452348 1)) .v) (.rational 485533927 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 115378847 1) .v) (.rational 250740603 1)) .v) (.rational
    139343015 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 23831388 1) .v)
    (.rational 50206748 1)) .v) (.rational 26821303 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3064301 1) .v) (.rational 6256352 1)) .v) (.rational 3214008 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 212744 1) .v) (.rational 419144 1)) .v)
    (.rational 206400 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 10393052 1) .v) (.rational 28139550 1)) .v)
    (.rational 19851731 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 83144416 1) .v)
    (.rational 218927526 1)) .v) (.rational 149993670 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 299409903 1) .v) (.rational 766085232 1)) .v) (.rational 508984289 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 640842041 1) .v) (.rational 1592386528 1))
    .v) (.rational 1024647957 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    906474616 1) .v) (.rational 2186756466 1)) .v) (.rational 1361418959 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 890972091 1) .v) (.rational 2086669206 1)) .v)
    (.rational 1256141549 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 622482899
    1) .v) (.rational 1415789511 1)) .v) (.rational 823937842 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 310529398 1) .v) (.rational 686283945 1)) .v) (.rational
    386198537 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 109331133 1) .v)
    (.rational 234937443 1)) .v) (.rational 127905270 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 26343559 1) .v) (.rational 55059126 1)) .v) (.rational 29011601 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 4088326 1) .v) (.rational 8304981
    1)) .v) (.rational 4233651 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    361911 1) .v) (.rational 712365 1)) .v) (.rational 350454 1)) (.pow .g 11))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 13487 1) .v) (.rational 25513 1)) .v) (.rational 12026 1)) (.pow
    .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 3247494 1) .v) (.rational 8217648 1)) .v) (.rational 5296704 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 27603699 1) .v) (.rational 68439728 1)) .v) (.rational
    43214351 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 106054444 1) .v) (.rational
    257432842 1)) .v) (.rational 159052333 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 243334350 1) .v) (.rational 577868430 1)) .v) (.rational 348970715 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 371010044 1) .v) (.rational 861503894 1))
    .v) (.rational 508023488 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    395618717 1) .v) (.rational 897885849 1)) .v) (.rational 516623189 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 302186568 1) .v) (.rational 670182890 1)) .v) (.rational
    376031884 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 166371106 1) .v)
    (.rational 360522117 1)) .v) (.rational 197190536 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 65415025 1) .v) (.rational 138499210 1)) .v) (.rational 73829385 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 17873994 1) .v) (.rational 36967179
    1)) .v) (.rational 19200438 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3211658 1) .v) (.rational 6483756 1)) .v) (.rational 3279005 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 339174 1) .v) (.rational 667097 1)) .v) (.rational 327923
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 15807 1) .v) (.rational 30160
    1)) .v) (.rational 14353 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 620574 1) .v) (.rational 1470702 1)) .v)
    (.rational 875784 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5585166 1) .v) (.rational
    13051632 1)) .v) (.rational 7667106 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    22798092 1) .v) (.rational 52493934 1)) .v) (.rational 30393451 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 55787640 1) .v) (.rational 126481950 1)) .v) (.rational
    72113580 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 91112165 1) .v)
    (.rational 203267608 1)) .v) (.rational 114025718 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 104591291 1) .v) (.rational 229478522 1)) .v) (.rational 126554987 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 86506242 1) .v) (.rational
    186569277 1)) .v) (.rational 101082390 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 51926041 1) .v) (.rational 110040416 1)) .v) (.rational 58536349 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 22444180 1) .v) (.rational 46719265 1)) .v)
    (.rational 24388450 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 6810375 1)
    .v) (.rational 13919658 1)) .v) (.rational 7127163 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1376462 1) .v) (.rational 2760925 1)) .v) (.rational 1385723 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 166271 1) .v) (.rational 326990 1)) .v)
    (.rational 160719 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 9069 1) .v)
    (.rational 17457 1)) .v) (.rational 8388 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 54720 1)
    .v) (.rational 121668 1)) .v) (.rational 67536 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 519840 1) .v) (.rational 1145970 1)) .v) (.rational 631056 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2246070 1) .v) (.rational 4906236 1)) .v) (.rational 2678572 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5835675 1) .v) (.rational 12623612
    1)) .v) (.rational 6828307 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10154170 1) .v) (.rational 21739724 1)) .v) (.rational 11643080 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12466455 1) .v) (.rational 26401645 1)) .v) (.rational
    13990812 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 11075225 1) .v)
    (.rational 23189999 1)) .v) (.rational 12151720 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7176065 1) .v) (.rational 14849269 1)) .v) (.rational 7689850 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3367125 1) .v) (.rational 6883247 1)) .v)
    (.rational 3520992 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1116445 1)
    .v) (.rational 2254069 1)) .v) (.rational 1138460 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 248485 1) .v) (.rational 495377 1)) .v) (.rational 246956 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 33360 1) .v) (.rational 65659 1)) .v)
    (.rational 32299 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2045 1) .v)
    (.rational 3973 1)) .v) (.rational 1928 1)) (.pow .g 12))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1132

namespace FullLow1133
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow3.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    8*SmallGap.PolarCoefficientsLow2.c140 e f g v*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow3.c140 e f g v*e*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    14*SmallGap.PolarCoefficientsLow1.c230 e f g v*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    18*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    4*SmallGap.PolarCoefficientsLow0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(40*SmallGap.ReducedLayers.low0_100_0 e g v*e^2+40*SmallGap.ReducedLayers.low0_100_1
    e g v*e^3+20*SmallGap.ReducedLayers.low0_100_2 e g v*e^4+4*SmallGap.ReducedLayers.low0_100_3 e
    g v*e^5+4*SmallGap.ReducedLayers.low0_010_0 e g v+12*SmallGap.ReducedLayers.low0_010_1 e g
    v*e^1+12*SmallGap.ReducedLayers.low0_010_2 e g v*e^2+4*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^3+48*SmallGap.ReducedLayers.low0_001_0 e g v*e^1+72*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^2+48*SmallGap.ReducedLayers.low0_001_2 e g v*e^3+12*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_110_0 e g v+3*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_110_2 e g v*e^2+1*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^3+12*SmallGap.ReducedLayers.low1_101_0 e g v*e^1+18*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_101_2 e g v*e^3+3*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_011_1 e g v+6*SmallGap.ReducedLayers.low1_011_2 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_3 e g v*e^2+6*SmallGap.ReducedLayers.low1_002_0 e g
    v+18*SmallGap.ReducedLayers.low1_002_1 e g v*e^1+18*SmallGap.ReducedLayers.low1_002_2 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_002_3 e g v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5320 1) .v) (.rational 191940 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 3400 1)
    .v) (.rational 90160 1)) .v) (.rational 1476850 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8500 1) .v) (.rational 133640 1)) .v) (.rational 1798420 1)) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 57700 1) .v) (.rational 746560 1)) .v)
    (.rational 7120750 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 173100 1) .v) (.rational
    1496840 1)) .v) (.rational 11920730 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    187700 1) .v) (.rational 940160 1)) .v) (.rational 6747570 1)) (.pow .g 2)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 459600 1) .v) (.rational 3972204
    1)) .v) (.rational 24168672 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1608600 1) .v)
    (.rational 10183258 1)) .v) (.rational 51995310 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2179400 1) .v) (.rational 9500270 1)) .v) (.rational 41048968 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1427000 1) .v) (.rational 3991294 1)) .v) (.rational
    14458486 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 2262112 1) .v) (.rational 15018688 1)) .v) (.rational 61492354 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9048448 1) .v) (.rational 47260762 1)) .v) (.rational
    163497178 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 14632200 1) .v) (.rational
    58501969 1)) .v) (.rational 168782007 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12227032 1) .v) (.rational 36589383 1)) .v) (.rational 85422777 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5563896 1) .v) (.rational 12385027 1)) .v)
    (.rational 22048195 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 7645596 1) .v) (.rational 42187058 1)) .v)
    (.rational 121658752 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 34405182 1) .v)
    (.rational 157827455 1)) .v) (.rational 389597273 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 64474928 1) .v) (.rational 242996820 1)) .v) (.rational 505100296 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 65104732 1) .v) (.rational 200353249 1)) .v)
    (.rational 341981361 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 38182508
    1) .v) (.rational 96449755 1)) .v) (.rational 130594495 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12973198 1) .v) (.rational 27556804 1)) .v) (.rational 28530846
    1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 18678678 1) .v) (.rational 89764552 1)) .v) (.rational
    190825578 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 93393390 1) .v) (.rational
    389213316 1)) .v) (.rational 721602474 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    198665753 1) .v) (.rational 714486651 1)) .v) (.rational 1139909280 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 234302672 1) .v) (.rational 726810636 1)) .v)
    (.rational 981793332 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 167129660
    1) .v) (.rational 450125307 1)) .v) (.rational 506222141 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 73581866 1) .v) (.rational 174941827 1)) .v) (.rational 161989367
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 19431469 1) .v) (.rational
    41934254 1)) .v) (.rational 32160477 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    33839622 1) .v) (.rational 145628524 1)) .v) (.rational 238734176 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 186117921 1) .v) (.rational 717208484 1)) .v) (.rational 1047782731 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 442537095 1) .v) (.rational 1524156582 1))
    .v) (.rational 1966024321 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    595532520 1) .v) (.rational 1835285323 1)) .v) (.rational 2070930027 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 498327660 1) .v) (.rational 1381765070 1)) .v)
    (.rational 1354094156 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 267820497
    1) .v) (.rational 675665137 1)) .v) (.rational 574105620 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 91938431 1) .v) (.rational 214684623 1)) .v) (.rational 159498548
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 19281110 1) .v) (.rational
    42584276 1)) .v) (.rational 28235662 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 45919334 1) .v) (.rational 179857982 1)) .v) (.rational 237054770 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 275516004 1) .v) (.rational 990223908 1)) .v) (.rational
    1188522778 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 723561515 1) .v) (.rational
    2384503235 1)) .v) (.rational 2590754624 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1092244205 1) .v) (.rational 3304755307 1)) .v) (.rational 3233800258 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1045955953 1) .v) (.rational 2917288097 1))
    .v) (.rational 2563622776 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    661034626 1) .v) (.rational 1712075984 1)) .v) (.rational 1352664976 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 277555777 1) .v) (.rational 674751460 1)) .v)
    (.rational 482560361 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 75795757
    1) .v) (.rational 175267368 1)) .v) (.rational 114908785 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12713173 1) .v) (.rational 28346262 1)) .v) (.rational 17309037
    1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 46585276 1) .v)
    (.rational 167635586 1)) .v) (.rational 184163934 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 302804294 1) .v) (.rational 1018856793 1)) .v) (.rational 1039613257 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 869960968 1) .v) (.rational 2735915300 1)) .v)
    (.rational 2582861870 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1453938090 1) .v) (.rational 4277564070 1)) .v) (.rational 3725398172 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1564823512 1) .v) (.rational 4318212935 1)) .v)
    (.rational 3465282713 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1133440980 1) .v) (.rational 2947349338 1)) .v) (.rational 2182297780 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 560217696 1) .v) (.rational 1381824270 1)) .v)
    (.rational 948306796 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 187242858
    1) .v) (.rational 441639263 1)) .v) (.rational 283041085 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 40908868 1) .v) (.rational 93028164 1)) .v) (.rational 56181366
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 5441046 1) .v) (.rational
    12001212 1)) .v) (.rational 6879742 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 34854702 1) .v) (.rational 115851928 1)) .v) (.rational 109270952
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 243982914 1) .v) (.rational 769555356 1)) .v)
    (.rational 685659688 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 760833345 1) .v)
    (.rational 2276201761 1)) .v) (.rational 1910727516 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1393222188 1) .v) (.rational 3955095440 1)) .v) (.rational 3122039728
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1662059443 1) .v) (.rational
    4483704679 1)) .v) (.rational 3325714250 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1354019942 1) .v) (.rational 3480417390 1)) .v) (.rational 2427678458 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 767227374 1) .v) (.rational 1886319388 1))
    .v) (.rational 1240521504 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    301789140 1) .v) (.rational 713021836 1)) .v) (.rational 443942064 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 80635253 1) .v) (.rational 183926962 1)) .v) (.rational
    108944885 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 13950468 1) .v)
    (.rational 30814943 1)) .v) (.rational 17429231 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1424235 1) .v) (.rational 3042902 1)) .v) (.rational 1643017 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 18682902 1)
    .v) (.rational 57538012 1)) .v) (.rational 47693768 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 140121765 1) .v) (.rational 414348300 1)) .v) (.rational 329015459 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 471156963 1) .v) (.rational 1336940400 1)) .v)
    (.rational 1014968965 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 937340157
    1) .v) (.rational 2552107092 1)) .v) (.rational 1849637497 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1225910913 1) .v) (.rational 3204551542 1)) .v) (.rational
    2215469113 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1107164520 1) .v)
    (.rational 2782212448 1)) .v) (.rational 1835080356 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 705355580 1) .v) (.rational 1707306740 1)) .v) (.rational 1075543722
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 317772603 1) .v) (.rational
    742657701 1)) .v) (.rational 447721420 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 99751031 1) .v) (.rational 225605988 1)) .v) (.rational 130454243 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 21046657 1) .v) (.rational 46118377 1)) .v)
    (.rational 25616892 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2783331 1)
    .v) (.rational 5898365 1)) .v) (.rational 3143924 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 200570 1) .v) (.rational 407702 1)) .v) (.rational 207132 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    6793738 1) .v) (.rational 19419894 1)) .v) (.rational 14404056 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 54349904 1) .v) (.rational 150609030 1)) .v) (.rational 108233876 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 195953215 1) .v) (.rational 526004788 1)) .v)
    (.rational 365671361 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 420549185
    1) .v) (.rational 1093063454 1)) .v) (.rational 734124705 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 597626087 1) .v) (.rational 1503903328 1)) .v) (.rational
    974930773 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 591537749 1) .v)
    (.rational 1441730552 1)) .v) (.rational 901758347 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 417429930 1) .v) (.rational 986073463 1)) .v) (.rational 595146125 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 211112300 1) .v) (.rational
    483805669 1)) .v) (.rational 281930805 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 75708796 1) .v) (.rational 168455931 1)) .v) (.rational 94846943 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 18692901 1) .v) (.rational 40384496 1)) .v)
    (.rational 21974245 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2996267 1)
    .v) (.rational 6273585 1)) .v) (.rational 3294514 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 276945 1) .v) (.rational 558791 1)) .v) (.rational 281846 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 10951 1) .v) (.rational 21003 1)) .v)
    (.rational 10052 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1502628 1) .v) (.rational 3990408 1)) .v) (.rational
    2685048 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 12772338 1) .v) (.rational 33145134
    1)) .v) (.rational 21807198 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 49137778 1)
    .v) (.rational 124501644 1)) .v) (.rational 79988726 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 113086575 1) .v) (.rational 279561386 1)) .v) (.rational 175180661 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 173316221 1) .v) (.rational
    417826428 1)) .v) (.rational 255108561 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 186264221 1) .v) (.rational 437782209 1)) .v) (.rational 260244430 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 143866357 1) .v) (.rational 329633440 1))
    .v) (.rational 190696905 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    80421473 1) .v) (.rational 179643484 1)) .v) (.rational 101113761 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 32270025 1) .v) (.rational 70274831 1)) .v) (.rational
    38478416 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 9056601 1) .v)
    (.rational 19219443 1)) .v) (.rational 10233006 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1685313 1) .v) (.rational 3480346 1)) .v) (.rational 1799727 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 186344 1) .v) (.rational 373256 1)) .v)
    (.rational 186912 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 9230 1) .v)
    (.rational 17815 1)) .v) (.rational 8585 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 152760 1) .v)
    (.rational 377028 1)) .v) (.rational 232560 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1374840 1) .v) (.rational 3338532 1)) .v) (.rational 2028444 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5620204 1) .v) (.rational 13415612 1)) .v) (.rational 8020278 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 13798592 1) .v) (.rational 32351194 1))
    .v) (.rational 19009754 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    22663375 1) .v) (.rational 52150602 1)) .v) (.rational 30089611 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 26238905 1) .v) (.rational 59223316 1)) .v) (.rational
    33522075 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 21965394 1) .v)
    (.rational 48605631 1)) .v) (.rational 26969649 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 13403015 1) .v) (.rational 29066034 1)) .v) (.rational 15799979 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5920342 1) .v) (.rational 12578249 1)) .v)
    (.rational 6694959 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1847775 1)
    .v) (.rational 3844452 1)) .v) (.rational 2002581 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 387190 1) .v) (.rational 788373 1)) .v) (.rational 401605 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 48969 1) .v) (.rational 97464 1)) .v)
    (.rational 48495 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2831 1) .v)
    (.rational 5497 1)) .v) (.rational 2666 1)) (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1133

namespace FullLow1134
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    8*SmallGap.PolarCoefficientsLow3.c140 e f g v*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow4.c140 e f g v*e*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow3.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    14*SmallGap.PolarCoefficientsLow2.c230 e f g v*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow3.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    18*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    20*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(20*SmallGap.ReducedLayers.low0_100_0 e g v*e^1+40*SmallGap.ReducedLayers.low0_100_1
    e g v*e^2+40*SmallGap.ReducedLayers.low0_100_2 e g v*e^3+20*SmallGap.ReducedLayers.low0_100_3
    e g v*e^4+4*SmallGap.ReducedLayers.low0_100_4 e g v*e^5+4*SmallGap.ReducedLayers.low0_010_1 e
    g v+12*SmallGap.ReducedLayers.low0_010_2 e g v*e^1+12*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^2+4*SmallGap.ReducedLayers.low0_010_4 e g v*e^3+12*SmallGap.ReducedLayers.low0_001_0 e g
    v+48*SmallGap.ReducedLayers.low0_001_1 e g v*e^1+72*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^2+48*SmallGap.ReducedLayers.low0_001_3 e g v*e^3+12*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_110_1 e g v+3*SmallGap.ReducedLayers.low1_110_2 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_110_3 e g v*e^2+1*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_101_0 e g v+12*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_101_2 e g v*e^2+12*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_101_4 e g v*e^4+3*SmallGap.ReducedLayers.low1_011_2 e g
    v+6*SmallGap.ReducedLayers.low1_011_3 e g v*e^1+3*SmallGap.ReducedLayers.low1_011_4 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_002_1 e g v+18*SmallGap.ReducedLayers.low1_002_2 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_002_3 e g v*e^2+6*SmallGap.ReducedLayers.low1_002_4 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7000 1) .v)
    (.rational 289100 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 3600 1) .v)
    (.rational 110600 1)) .v) (.rational 2123740 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    9000 1) .v) (.rational 159800 1)) .v) (.rational 2528700 1)) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 59000 1) .v) (.rational 857880 1)) .v) (.rational 9723820
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 177000 1) .v) (.rational 1660640 1)) .v)
    (.rational 15840880 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 192000 1) .v)
    (.rational 964960 1)) .v) (.rational 8592620 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 453400 1) .v) (.rational 4305716 1)) .v)
    (.rational 31165393 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1586900 1) .v) (.rational
    10663342 1)) .v) (.rational 65069140 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2150700 1) .v) (.rational 9383810 1)) .v) (.rational 49119047 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1409500 1) .v) (.rational 3546706 1)) .v) (.rational
    16034614 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 2144552 1) .v) (.rational 15454640 1)) .v) (.rational 74481005 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8578208 1) .v) (.rational 47253888 1)) .v) (.rational
    192165834 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 13875576 1) .v) (.rational
    56169141 1)) .v) (.rational 190180226 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11603000 1) .v) (.rational 33209087 1)) .v) (.rational 90312235 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5286944 1) .v) (.rational 10457223 1)) .v)
    (.rational 20987783 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 6919076 1) .v) (.rational 41274996 1)) .v)
    (.rational 137643811 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 31135842 1) .v)
    (.rational 151085908 1)) .v) (.rational 428777666 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 58363856 1) .v) (.rational 226444874 1)) .v) (.rational 536343769 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 58972900 1) .v) (.rational 180902987 1)) .v)
    (.rational 346258403 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 34627044
    1) .v) (.rational 84241489 1)) .v) (.rational 124096657 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 11785658 1) .v) (.rational 23420181 1)) .v) (.rational 25044029
    1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 15972896 1) .v) (.rational 83010512 1)) .v) (.rational
    200163101 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 79864480 1) .v) (.rational
    354270300 1)) .v) (.rational 739344508 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    169941735 1) .v) (.rational 639014572 1)) .v) (.rational 1135819848 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 200580060 1) .v) (.rational 638312858 1)) .v)
    (.rational 946887816 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 143266282
    1) .v) (.rational 388826837 1)) .v) (.rational 470936531 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 63199452 1) .v) (.rational 149407175 1)) .v) (.rational 145620735
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 16731031 1) .v) (.rational
    35720267 1)) .v) (.rational 28297922 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    26942638 1) .v) (.rational 125539480 1)) .v) (.rational 229462135 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 148184509 1) .v) (.rational 611212910 1)) .v) (.rational 988252852 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 352493825 1) .v) (.rational 1283939692 1))
    .v) (.rational 1816647092 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    474838395 1) .v) (.rational 1529584656 1)) .v) (.rational 1873343805 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 398024460 1) .v) (.rational 1142087828 1)) .v)
    (.rational 1200907332 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 214464663
    1) .v) (.rational 556203053 1)) .v) (.rational 501901949 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 73872629 1) .v) (.rational 177031281 1)) .v) (.rational 138892636
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 15553625 1) .v) (.rational
    35383737 1)) .v) (.rational 24811716 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 33334896 1) .v) (.rational 141424904 1)) .v) (.rational 204996341 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 200009376 1) .v) (.rational 772023184 1)) .v) (.rational
    1012716472 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 525570218 1) .v) (.rational
    1844533263 1)) .v) (.rational 2175114025 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 794431810 1) .v) (.rational 2540148607 1)) .v) (.rational 2678125933 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 762510034 1) .v) (.rational 2233681140 1))
    .v) (.rational 2100492138 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    483552412 1) .v) (.rational 1310591898 1)) .v) (.rational 1102471160 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 203985550 1) .v) (.rational 518736454 1)) .v)
    (.rational 394294961 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 56033674
    1) .v) (.rational 135937480 1)) .v) (.rational 94917390 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9461654 1) .v) (.rational 22250395 1)) .v) (.rational 14530765
    1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 29940964 1) .v)
    (.rational 116593708 1)) .v) (.rational 139382865 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 194616266 1) .v) (.rational 703996944 1)) .v) (.rational 777762510 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 559552940 1) .v) (.rational 1880026050 1)) .v)
    (.rational 1911595697 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 936762244
    1) .v) (.rational 2928193081 1)) .v) (.rational 2732586867 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1011147374 1) .v) (.rational 2952070735 1)) .v) (.rational
    2527124757 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 735614742 1) .v)
    (.rational 2018847062 1)) .v) (.rational 1589830560 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 365812136 1) .v) (.rational 952099434 1)) .v) (.rational 694323160 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 123251536 1) .v) (.rational
    307355222 1)) .v) (.rational 209586216 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27198802 1) .v) (.rational 65619490 1)) .v) (.rational 42265136 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3659732 1) .v) (.rational 8592607 1)) .v)
    (.rational 5259673 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 19007456 1) .v) (.rational 68223208 1)) .v) (.rational 69434991 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 133052192 1) .v) (.rational 450788620 1)) .v) (.rational
    431668780 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 415290889 1) .v) (.rational
    1327968486 1)) .v) (.rational 1193204492 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 762066838 1) .v) (.rational 2302283270 1)) .v) (.rational 1937734442 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 912361803 1) .v) (.rational 2610498774 1))
    .v) (.rational 2057741057 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    747273576 1) .v) (.rational 2033075322 1)) .v) (.rational 1503605394 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 426644818 1) .v) (.rational 1109631770 1)) .v)
    (.rational 772969562 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 169540618
    1) .v) (.rational 424094660 1)) .v) (.rational 279771954 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 45905223 1) .v) (.rational 111048265 1)) .v) (.rational 69753900
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 8076344 1) .v) (.rational
    18944547 1)) .v) (.rational 11363211 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 841443 1) .v) (.rational 1906453 1)) .v) (.rational 1088252 1)) (.pow .g 10)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8090934 1) .v)
    (.rational 26824700 1)) .v) (.rational 23822456 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 60682005 1) .v) (.rational 192317240 1)) .v) (.rational 163081844 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 204268293 1) .v) (.rational 618625386 1)) .v)
    (.rational 499886081 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 407400162
    1) .v) (.rational 1179465100 1)) .v) (.rational 906980299 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 535095725 1) .v) (.rational 1482795380 1)) .v) (.rational
    1084647168 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 486380939 1) .v)
    (.rational 1292878378 1)) .v) (.rational 900294553 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 312701176 1) .v) (.rational 799687596 1)) .v) (.rational 531120779 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 142637565 1) .v) (.rational
    352086316 1)) .v) (.rational 223632066 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 45521639 1) .v) (.rational 108746644 1)) .v) (.rational 66225032 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9815476 1) .v) (.rational 22704697 1)) .v)
    (.rational 13268070 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1335301 1)
    .v) (.rational 2977975 1)) .v) (.rational 1664345 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 99813 1) .v) (.rational 211545 1)) .v) (.rational 111732 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2074272 1) .v) (.rational 6358272 1)) .v) (.rational 5019450 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16594176 1) .v) (.rational 49121088 1)) .v) (.rational 37470726 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 59907594 1) .v) (.rational 171143610 1)) .v)
    (.rational 125938713 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 128955078
    1) .v) (.rational 355473494 1)) .v) (.rational 252011322 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 184179977 1) .v) (.rational 490061176 1)) .v) (.rational
    334467887 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 183698856 1) .v)
    (.rational 472203684 1)) .v) (.rational 310229376 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 131043377 1) .v) (.rational 325839165 1)) .v) (.rational 206175445 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 67267424 1) .v) (.rational
    162010897 1)) .v) (.rational 98823327 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 24610819 1) .v) (.rational 57460840 1)) .v) (.rational 33814365 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6240856 1) .v) (.rational 14114630 1)) .v)
    (.rational 8010324 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1036665 1)
    .v) (.rational 2262003 1)) .v) (.rational 1234174 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 100570 1) .v) (.rational 209551 1)) .v) (.rational 108981 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 4256 1) .v) (.rational 8278 1)) .v)
    (.rational 4022 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 242460 1) .v) (.rational 687216 1)) .v) (.rational
    488928 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2060910 1) .v) (.rational 5688576 1))
    .v) (.rational 3948408 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7941198 1) .v)
    (.rational 21327220 1)) .v) (.rational 14419978 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 18340785 1) .v) (.rational 47894906 1)) .v) (.rational 31503560 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 28277937 1) .v) (.rational 71777068 1)) .v)
    (.rational 45882240 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 30666558 1)
    .v) (.rational 75654506 1)) .v) (.rational 46965311 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 23992411 1) .v) (.rational 57534316 1)) .v) (.rational 34672902 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 13650142 1) .v) (.rational 31821825
    1)) .v) (.rational 18613704 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5608415 1) .v) (.rational 12707451 1)) .v) (.rational 7212535 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1624272 1) .v) (.rational 3572748 1)) .v) (.rational
    1965855 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 315103 1) .v)
    (.rational 670910 1)) .v) (.rational 357018 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36821 1) .v) (.rational 75455 1)) .v) (.rational 38634 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1964 1) .v) (.rational 3835 1)) .v) (.rational 1871
    1)) (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1134

namespace FullLow1135
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsLow4.c140 e f g v*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow4.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    14*SmallGap.PolarCoefficientsLow3.c230 e f g v*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow4.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow3.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    18*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow3.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    20*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow2.c410 e f g v*e*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_0 e g v+20*SmallGap.ReducedLayers.low0_100_1 e g
    v*e^1+40*SmallGap.ReducedLayers.low0_100_2 e g v*e^2+40*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^3+20*SmallGap.ReducedLayers.low0_100_4 e g v*e^4+4*SmallGap.ReducedLayers.low0_010_2 e g
    v+12*SmallGap.ReducedLayers.low0_010_3 e g v*e^1+12*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^2+4*SmallGap.ReducedLayers.low0_010_5 e g v*e^3+12*SmallGap.ReducedLayers.low0_001_1 e g
    v+48*SmallGap.ReducedLayers.low0_001_2 e g v*e^1+72*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^2+48*SmallGap.ReducedLayers.low0_001_4 e g v*e^3+12*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_110_2 e g v+3*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_110_4 e g v*e^2+1*SmallGap.ReducedLayers.low1_110_5 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_101_1 e g v+12*SmallGap.ReducedLayers.low1_101_2 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_101_3 e g v*e^2+12*SmallGap.ReducedLayers.low1_101_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_101_5 e g v*e^4+3*SmallGap.ReducedLayers.low1_011_3 e g
    v+6*SmallGap.ReducedLayers.low1_011_4 e g v*e^1+3*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_002_2 e g v+18*SmallGap.ReducedLayers.low1_002_3 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_002_4 e g v*e^2+6*SmallGap.ReducedLayers.low1_002_5 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5880 1) .v) (.rational
    290780 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 2280 1) .v) (.rational 87360 1))
    .v) (.rational 2045922 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5700 1) .v) (.rational
    123000 1)) .v) (.rational 2379756 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 36400 1) .v) (.rational 638064 1)) .v) (.rational 8912888 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 109200 1) .v) (.rational 1188832 1)) .v) (.rational 14108324 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 118500 1) .v) (.rational 628128 1)) .v)
    (.rational 7306468 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 271960 1) .v) (.rational 3028138 1)) .v) (.rational 26983814 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 951860 1) .v) (.rational 7210331 1)) .v) (.rational
    54563239 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1290540 1) .v) (.rational
    5897613 1)) .v) (.rational 39189497 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 846700 1) .v) (.rational 1898433 1)) .v) (.rational 11662749 1)) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1243600 1)
    .v) (.rational 10328036 1)) .v) (.rational 60474062 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4974400 1) .v) (.rational 30549156 1)) .v) (.rational 151064034 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8049412 1) .v) (.rational 34538869 1)) .v) (.rational
    142638385 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6737836 1) .v)
    (.rational 18904151 1)) .v) (.rational 62752737 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3075916 1) .v) (.rational 5302123 1)) .v) (.rational 12586689 1)) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 3843912 1) .v) (.rational 26202580 1)) .v) (.rational 103944550 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 17297604 1) .v) (.rational 93553510 1)) .v) (.rational 314361552
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 32437928 1) .v) (.rational 135785644 1))
    .v) (.rational 378077070 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    32810596 1) .v) (.rational 104240703 1)) .v) (.rational 231135705 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 19301340 1) .v) (.rational 46420413 1)) .v) (.rational
    76615553 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6587936 1) .v)
    (.rational 12409255 1)) .v) (.rational 13871243 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8385204 1)
    .v) (.rational 49565162 1)) .v) (.rational 138974096 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 41926020 1) .v) (.rational 207789956 1)) .v) (.rational 500706576 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 89258936 1) .v) (.rational 367294566 1)) .v)
    (.rational 746631994 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 105479624
    1) .v) (.rational 359124006 1)) .v) (.rational 600956166 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 75500096 1) .v) (.rational 214486451 1)) .v) (.rational 287506215
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 33410888 1) .v) (.rational
    81317999 1)) .v) (.rational 85805895 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8881436 1) .v) (.rational 19393281 1)) .v) (.rational 16388815 1)) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 13093216 1) .v) (.rational 69063078 1)) .v) (.rational 143868422
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 72012688 1) .v) (.rational 331961749 1)) .v)
    (.rational 607439393 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 171412288 1) .v)
    (.rational 688339031 1)) .v) (.rational 1092987605 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 231260136 1) .v) (.rational 810350872 1)) .v) (.rational 1103008680 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 194359624 1) .v) (.rational
    599733766 1)) .v) (.rational 693919574 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 105133532 1) .v) (.rational 291050630 1)) .v) (.rational 286892206 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 36400292 1) .v) (.rational 92960126 1)) .v)
    (.rational 79602272 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 7710444 1)
    .v) (.rational 18764449 1)) .v) (.rational 14453893 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 14550284 1) .v) (.rational 69443452 1)) .v) (.rational 112892606 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 87301704 1) .v) (.rational 375493548 1)) .v)
    (.rational 549111702 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 229595032 1) .v)
    (.rational 889394885 1)) .v) (.rational 1161560575 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 347709540 1) .v) (.rational 1216538797 1)) .v) (.rational 1411186113
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 334823984 1) .v) (.rational
    1065976126 1)) .v) (.rational 1096801122 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 213357440 1) .v) (.rational 626101494 1)) .v) (.rational 574628062 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 90591988 1) .v) (.rational 249418064 1)) .v)
    (.rational 207088854 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 25086248
    1) .v) (.rational 66110774 1)) .v) (.rational 50659360 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4273624 1) .v) (.rational 10971733 1)) .v) (.rational 7901295 1)) (.pow
    .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11226200 1) .v) (.rational
    48810496 1)) .v) (.rational 64631480 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 72970300
    1) .v) (.rational 292550160 1)) .v) (.rational 356228562 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 210009240 1) .v) (.rational 776516214 1)) .v) (.rational 865824524 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 352377520 1) .v) (.rational 1204692356
    1)) .v) (.rational 1226980936 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    381818948 1) .v) (.rational 1213538966 1)) .v) (.rational 1129663224 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 279363816 1) .v) (.rational 832635002 1)) .v)
    (.rational 711778038 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 140015048
    1) .v) (.rational 395813906 1)) .v) (.rational 313555298 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 47650900 1) .v) (.rational 129377873 1)) .v) (.rational 96083043
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10642512 1) .v) (.rational
    28053845 1)) .v) (.rational 19729331 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1450284 1) .v) (.rational 3729645 1)) .v) (.rational 2491725 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5710608 1) .v) (.rational
    22710106 1)) .v) (.rational 25351932 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 39974256
    1) .v) (.rational 149158216 1)) .v) (.rational 156023888 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 124909964 1) .v) (.rational 437423568 1)) .v) (.rational 427576044 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 229794456 1) .v) (.rational 756605878 1))
    .v) (.rational 690171964 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    276296588 1) .v) (.rational 858474510 1)) .v) (.rational 731254974 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 227753528 1) .v) (.rational 671544266 1)) .v) (.rational
    535807674 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 131189764 1) .v)
    (.rational 369722022 1)) .v) (.rational 277806990 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 52743016 1) .v) (.rational 143160280 1)) .v) (.rational 101969674 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 14491080 1) .v) (.rational 38117231
    1)) .v) (.rational 25876219 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2594068 1) .v) (.rational 6623703 1)) .v) (.rational 4289815 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 275216 1) .v) (.rational 677007 1)) .v) (.rational 415061 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1721592 1) .v) (.rational 6281340 1)) .v) (.rational 6070572 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12911940 1) .v) (.rational 44802714 1)) .v) (.rational 41199930 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 43517524 1) .v) (.rational 143607834 1)) .v)
    (.rational 125402126 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 87032816
    1) .v) (.rational 273435726 1)) .v) (.rational 226484172 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 114845860 1) .v) (.rational 344282350 1)) .v) (.rational
    270531228 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 105119652 1) .v)
    (.rational 301706769 1)) .v) (.rational 225265153 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 68243656 1) .v) (.rational 188325949 1)) .v) (.rational 133987615 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 31536816 1) .v) (.rational 84041986
    1)) .v) (.rational 57171532 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10235884 1) .v) (.rational 26421348 1)) .v) (.rational 17230098 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2254592 1) .v) (.rational 5634115 1)) .v) (.rational
    3520771 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 314828 1) .v)
    (.rational 755667 1)) .v) (.rational 449569 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 24248 1) .v) (.rational 54594 1)) .v) (.rational 30346 1)) (.pow .g 11))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    233064 1) .v) (.rational 782292 1)) .v) (.rational 667716 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1864512 1) .v) (.rational 6015876 1)) .v) (.rational 4946508 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6740316 1) .v) (.rational 20898840 1)) .v) (.rational
    16524942 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 14553252 1) .v)
    (.rational 43377402 1)) .v) (.rational 32944982 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 20892908 1) .v) (.rational 59927810 1)) .v) (.rational 43699596 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 21000468 1) .v) (.rational 58067520 1)) .v)
    (.rational 40670460 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 15146564 1)
    .v) (.rational 40458373 1)) .v) (.rational 27247421 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7893356 1) .v) (.rational 20406587 1)) .v) (.rational 13232231 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2947432 1) .v) (.rational 7379784
    1)) .v) (.rational 4610342 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    768268 1) .v) (.rational 1858618 1)) .v) (.rational 1117006 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 132504 1) .v) (.rational 307245 1)) .v) (.rational 176579 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 13552 1) .v) (.rational 29565 1))
    .v) (.rational 16013 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 620 1)
    .v) (.rational 1224 1)) .v) (.rational 604 1)) (.pow .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1135

namespace FullLow1136
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  14*SmallGap.PolarCoefficientsLow4.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow4.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    18*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow4.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow3.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    20*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow3.c410 e f g v*e*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_1 e g v+20*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^1+40*SmallGap.ReducedLayers.low0_100_3 e g v*e^2+40*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^3+4*SmallGap.ReducedLayers.low0_010_3 e g v+12*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^1+12*SmallGap.ReducedLayers.low0_010_5 e g v*e^2+4*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^3+12*SmallGap.ReducedLayers.low0_001_2 e g v+48*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^1+72*SmallGap.ReducedLayers.low0_001_4 e g v*e^2+48*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_110_3 e g v+3*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_110_5 e g v*e^2+1*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_101_2 e g v+12*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_101_4 e g v*e^2+12*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_4 e g v+6*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_6 e g v*e^2+6*SmallGap.ReducedLayers.low1_002_3 e g
    v+18*SmallGap.ReducedLayers.low1_002_4 e g v*e^1+18*SmallGap.ReducedLayers.low1_002_5 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_002_6 e g v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3080 1) .v) (.rational 195300 1))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 800 1) .v) (.rational 43400 1)) .v)
    (.rational 1320560 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2000 1) .v) (.rational
    59560 1)) .v) (.rational 1499420 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 12540 1) .v) (.rational 300536 1)) .v) (.rational 5487058 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 37620 1) .v) (.rational 537848 1)) .v) (.rational 8429102 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 40840 1) .v) (.rational 253312 1)) .v) (.rational
    4154546 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 91800 1) .v) (.rational 1354976 1)) .v) (.rational 15709882 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 321300 1) .v) (.rational 3090236 1)) .v) (.rational 30717470 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 435820 1) .v) (.rational 2310436 1)) .v)
    (.rational 20907536 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 286300 1)
    .v) (.rational 572468 1)) .v) (.rational 5570814 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 408580 1) .v) (.rational
    4406136 1)) .v) (.rational 32995202 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1634320
    1) .v) (.rational 12564552 1)) .v) (.rational 79687186 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2646060 1) .v) (.rational 13381704 1)) .v) (.rational 71558776 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2218060 1) .v) (.rational 6591968 1)) .v)
    (.rational 28841376 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1015280 1)
    .v) (.rational 1512208 1)) .v) (.rational 4705958 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1216080 1) .v)
    (.rational 10627808 1)) .v) (.rational 52548940 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5472360 1) .v) (.rational 36928592 1)) .v) (.rational 154163414 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10269200 1) .v) (.rational 51678104 1)) .v) (.rational
    178046716 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10404520 1) .v)
    (.rational 37812052 1)) .v) (.rational 102776944 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6139000 1) .v) (.rational 15887212 1)) .v) (.rational 31243282 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2105040 1) .v) (.rational 4018652 1)) .v)
    (.rational 4954886 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2511340 1) .v) (.rational 18814152
    1)) .v) (.rational 63986890 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 12556700 1) .v)
    (.rational 77364104 1)) .v) (.rational 224804334 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26756200 1) .v) (.rational 133761720 1)) .v) (.rational 325486896 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 31684600 1) .v) (.rational 127748792 1)) .v)
    (.rational 253361044 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 22762160
    1) .v) (.rational 74682096 1)) .v) (.rational 117149224 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 10128520 1) .v) (.rational 27936008 1)) .v) (.rational 34127904
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2712580 1) .v) (.rational
    6662176 1)) .v) (.rational 6536566 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3613440 1)
    .v) (.rational 23797160 1)) .v) (.rational 58693230 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19873920 1) .v) (.rational 112787796 1)) .v) (.rational 242916978 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 47361000 1) .v) (.rational 230633828 1)) .v)
    (.rational 428200738 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 64070100
    1) .v) (.rational 268238464 1)) .v) (.rational 424043000 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 54098000 1) .v) (.rational 196973112 1)) .v) (.rational 263382960
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 29466640 1) .v) (.rational
    95523016 1)) .v) (.rational 108858392 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10298560 1) .v) (.rational 30752320 1)) .v) (.rational 30700994 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2207100 1) .v) (.rational 6299700 1)) .v)
    (.rational 5728978 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3546300 1)
    .v) (.rational 20723720 1)) .v) (.rational 39091542 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 21277800 1) .v) (.rational 110860720 1)) .v) (.rational 187158522 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 56041940 1) .v) (.rational 260142264 1)) .v)
    (.rational 390165620 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 85163200
    1) .v) (.rational 353523400 1)) .v) (.rational 468764388 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 82485240 1) .v) (.rational 309191616 1)) .v) (.rational 362720368
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 53017560 1) .v) (.rational
    182410216 1)) .v) (.rational 191101436 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22778160 1) .v) (.rational 73501056 1)) .v) (.rational 70029788 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6402660 1) .v) (.rational 19819752 1)) .v)
    (.rational 17544468 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1109960 1)
    .v) (.rational 3352872 1)) .v) (.rational 2797110 1)) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 2255400 1) .v) (.rational 11738224 1)) .v) (.rational
    17735940 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 14660100 1) .v) (.rational 69753008
    1)) .v) (.rational 96502614 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 42266880 1)
    .v) (.rational 183916208 1)) .v) (.rational 231990414 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 71206740 1) .v) (.rational 284322896 1)) .v) (.rational 326384656 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 77683200 1) .v) (.rational
    286685672 1)) .v) (.rational 300112292 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 57415500 1) .v) (.rational 198013520 1)) .v) (.rational 190356348 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 29178320 1) .v) (.rational 95351320 1)) .v)
    (.rational 85126838 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 10110100 1)
    .v) (.rational 31748124 1)) .v) (.rational 26642720 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2308000 1) .v) (.rational 7035876 1)) .v) (.rational 5592490 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 322200 1) .v) (.rational 954668 1)) .v)
    (.rational 716950 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 834840 1) .v) (.rational 3882168 1)) .v) (.rational 4877064 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5843880 1) .v) (.rational 25317504 1)) .v) (.rational 29688768
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 18295740 1) .v) (.rational 73875616 1))
    .v) (.rational 80645394 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    33804000 1) .v) (.rational 127537040 1)) .v) (.rational 129483726 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 40940520 1) .v) (.rational 145035736 1)) .v) (.rational
    137163810 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 34111740 1) .v)
    (.rational 114296208 1)) .v) (.rational 101134878 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19940740 1) .v) (.rational 63752328 1)) .v) (.rational 53130598 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8172280 1) .v) (.rational 25144856
    1)) .v) (.rational 19872134 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2299480 1) .v) (.rational 6847264 1)) .v) (.rational 5151706 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 423220 1) .v) (.rational 1218328 1)) .v) (.rational 870238 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 46140 1) .v) (.rational 126752 1))
    .v) (.rational 84760 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 136080 1) .v) (.rational 568224 1)) .v) (.rational 611064 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1020600 1) .v) (.rational 4028616 1)) .v) (.rational
    4107456 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3445920 1) .v) (.rational
    12862160 1)) .v) (.rational 12408228 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6919380 1) .v) (.rational 24464104 1)) .v) (.rational 22313082 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9191880 1) .v) (.rational 30885672 1)) .v)
    (.rational 26654244 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8496180 1)
    .v) (.rational 27262148 1)) .v) (.rational 22316726 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5589120 1) .v) (.rational 17225844 1)) .v) (.rational 13426070 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2626560 1) .v) (.rational 7819304
    1)) .v) (.rational 5825398 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    869760 1) .v) (.rational 2510040 1)) .v) (.rational 1791260 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 195840 1) .v) (.rational 547196 1)) .v) (.rational 373298 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 27900 1) .v) (.rational 74660 1))
    .v) (.rational 48226 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 2160 1)
    .v) (.rational 5352 1)) .v) (.rational 3192 1)) (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1136

namespace FullLow1137
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  18*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow4.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    20*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow4.c410 e f g v*e*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_2 e g v+20*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^1+40*SmallGap.ReducedLayers.low0_100_4 e g v*e^2+4*SmallGap.ReducedLayers.low0_010_4 e g
    v+12*SmallGap.ReducedLayers.low0_010_5 e g v*e^1+12*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^2+12*SmallGap.ReducedLayers.low0_001_3 e g v+48*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^1+72*SmallGap.ReducedLayers.low0_001_5 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_110_4 e g v+3*SmallGap.ReducedLayers.low1_110_5 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_110_6 e g v*e^2+3*SmallGap.ReducedLayers.low1_101_3 e g
    v+12*SmallGap.ReducedLayers.low1_101_4 e g v*e^1+18*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^2+3*SmallGap.ReducedLayers.low1_011_5 e g v+6*SmallGap.ReducedLayers.low1_011_6 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_7 e g v*e^2+6*SmallGap.ReducedLayers.low1_002_4 e g
    v+18*SmallGap.ReducedLayers.low1_002_5 e g v*e^1+18*SmallGap.ReducedLayers.low1_002_6 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 920 1) .v) (.rational 84460 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 120 1) .v) (.rational 12400 1)) .v) (.rational 550718 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 300 1) .v) (.rational 16600 1)) .v) (.rational
    610044 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1860 1) .v)
    (.rational 82080 1)) .v) (.rational 2188542 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    5580 1) .v) (.rational 141000 1)) .v) (.rational 3259714 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6060 1) .v) (.rational 57920 1)) .v) (.rational 1525514 1)) (.pow .g 2))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13440 1) .v)
    (.rational 353920 1)) .v) (.rational 5936368 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    47040 1) .v) (.rational 771520 1)) .v) (.rational 11213436 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 63840 1) .v) (.rational 518200 1)) .v) (.rational 7215598 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 42000 1) .v) (.rational 78320 1)) .v)
    (.rational 1692008 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 58620 1) .v) (.rational 1103360 1)) .v) (.rational 11686680
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 234480 1) .v) (.rational 3028400 1)) .v)
    (.rational 27280268 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 379920 1) .v)
    (.rational 3014160 1)) .v) (.rational 23292838 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 319080 1) .v) (.rational 1288560 1)) .v) (.rational 8561574 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 146580 1) .v) (.rational 196240 1)) .v)
    (.rational 1060586 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 168960 1) .v) (.rational 2535400 1)) .v)
    (.rational 17182634 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 760320 1) .v) (.rational
    8566760 1)) .v) (.rational 48929516 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1428240 1) .v) (.rational 11531240 1)) .v) (.rational 54401112 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1450680 1) .v) (.rational 7991760 1)) .v) (.rational
    29830284 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 859800 1) .v)
    (.rational 3125360 1)) .v) (.rational 8427108 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 296880 1) .v) (.rational 732680 1)) .v) (.rational 1206916 1)) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 331200 1) .v) (.rational 4174280 1)) .v) (.rational 18830398 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1656000 1) .v) (.rational 16820920 1)) .v) (.rational
    64576366 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3533700 1) .v) (.rational
    28425560 1)) .v) (.rational 91109216 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4198800 1) .v) (.rational 26508680 1)) .v) (.rational 69180644 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3034320 1) .v) (.rational 15181720 1)) .v)
    (.rational 31483048 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1362360 1)
    .v) (.rational 5619960 1)) .v) (.rational 9249008 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 369420 1) .v) (.rational 1346840 1)) .v) (.rational 1848986 1)) (.pow
    .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 437040 1) .v) (.rational 4695480 1)) .v) (.rational
    14900376 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2403720 1) .v) (.rational 21908400
    1)) .v) (.rational 60485400 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5739960 1)
    .v) (.rational 44142680 1)) .v) (.rational 104757744 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7801920 1) .v) (.rational 50751040 1)) .v) (.rational 102511128 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6641280 1) .v) (.rational 37079320
    1)) .v) (.rational 63679744 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3661560 1) .v) (.rational 18063920 1)) .v) (.rational 26809484 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1301160 1) .v) (.rational 5902800 1)) .v) (.rational
    7832474 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 284880 1) .v)
    (.rational 1235440 1)) .v) (.rational 1517008 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 370440 1) .v) (.rational 3383520 1)) .v) (.rational 7984680 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2222640 1) .v) (.rational 17864280 1)) .v) (.rational
    37619208 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5870880 1) .v) (.rational
    41479600 1)) .v) (.rational 77411468 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8980200 1) .v) (.rational 56039720 1)) .v) (.rational 92396544 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8794620 1) .v) (.rational 49075040 1)) .v)
    (.rational 71778416 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5746320 1)
    .v) (.rational 29253320 1)) .v) (.rational 38477012 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2525040 1) .v) (.rational 12020480 1)) .v) (.rational 14510238 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 730800 1) .v) (.rational 3327720
    1)) .v) (.rational 3752898 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    131340 1) .v) (.rational 578840 1)) .v) (.rational 612714 1)) (.pow .g 8)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 181440 1) .v) (.rational 1397520 1)) .v) (.rational
    2572632 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1179360 1) .v) (.rational 8210160 1))
    .v) (.rational 13804992 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3413520 1) .v)
    (.rational 21472920 1)) .v) (.rational 32839008 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5801400 1) .v) (.rational 33101280 1)) .v) (.rational 45990600 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6422760 1) .v) (.rational 33523920 1)) .v)
    (.rational 42469166 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4851360 1)
    .v) (.rational 23462760 1)) .v) (.rational 27339516 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2540400 1) .v) (.rational 11553200 1)) .v) (.rational 12526368 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 915600 1) .v) (.rational 3964080
    1)) .v) (.rational 4036236 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    219720 1) .v) (.rational 909560 1)) .v) (.rational 870614 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 32580 1) .v) (.rational 127680 1)) .v) (.rational 113544 1))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 38880 1)
    .v) (.rational 250560 1)) .v) (.rational 373968 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 272160 1) .v) (.rational 1617840 1)) .v) (.rational 2248632 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 856440 1) .v) (.rational 4690800 1)) .v) (.rational 6052680
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1600560 1) .v) (.rational
    8089560 1)) .v) (.rational 9680976 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1975680 1) .v) (.rational 9255480 1)) .v) (.rational 10292198 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1693080 1) .v) (.rational 7401360 1)) .v) (.rational
    7683834 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1029060 1) .v)
    (.rational 4227960 1)) .v) (.rational 4122280 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 444240 1) .v) (.rational 1722960 1)) .v) (.rational 1584068 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 133740 1) .v) (.rational 488520 1)) .v)
    (.rational 422742 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 26820 1) .v)
    (.rational 91080 1)) .v) (.rational 73318 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3240 1) .v) (.rational 9960 1)) .v) (.rational 7260 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1137

namespace FullLow1138
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  20*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_3 e g v+20*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_010_5 e g v+12*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^1+12*SmallGap.ReducedLayers.low0_001_4 e g v+48*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_110_5 e g v+3*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_101_4 e g v+12*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_6 e g v+6*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^1+6*SmallGap.ReducedLayers.low1_002_5 e g v+18*SmallGap.ReducedLayers.low1_002_6 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 120 1) .v) (.rational 21340 1)) .e) (.add (.mul (.add (.mul
    (.rational 1560 1) .v) (.rational 134640 1)) .f) (.mul (.add (.mul (.rational 2040 1) .v)
    (.rational 145440 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 9960 1) .v)
    (.rational 513180 1)) .f) (.mul (.add (.mul (.rational 16440 1) .v) (.rational 740600 1)) .g))
    .f) (.mul (.add (.mul (.rational 5760 1) .v) (.rational 328660 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 41400 1) .v) (.rational 1321580 1)) .f)
    (.mul (.add (.mul (.rational 86280 1) .v) (.rational 2410840 1)) .g)) .f) (.mul (.add (.mul
    (.rational 51240 1) .v) (.rational 1466560 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational
    1440 1) .v) (.rational 299240 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 124560 1) .v) (.rational 2439840 1)) .f) (.mul (.add (.mul
    (.rational 329280 1) .v) (.rational 5509520 1)) .g)) .f) (.mul (.add (.mul (.rational 304920
    1) .v) (.rational 4490540 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 108120 1) .v)
    (.rational 1520320 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 3600 1) .v) (.rational
    140220 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 273120 1) .v) (.rational 3295700 1)) .f) (.mul (.add (.mul (.rational
    897840 1) .v) (.rational 9126960 1)) .g)) .f) (.mul (.add (.mul (.rational 1162440 1) .v)
    (.rational 9838380 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 760920 1) .v) (.rational
    5225440 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 273720 1) .v) (.rational 1447380
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 57840 1) .v) (.rational 218160 1)) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 414000 1) .v) (.rational 3194520 1)) .f) (.mul (.add (.mul (.rational 1632960 1)
    .v) (.rational 10710720 1)) .g)) .f) (.mul (.add (.mul (.rational 2695680 1) .v) (.rational
    14825280 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 2456160 1) .v) (.rational 11164560
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 1381320 1) .v) (.rational 5167580 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.rational 508200 1) .v) (.rational 1606760 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.rational 122880 1) .v) (.rational 348220 1)) (.pow .g 6)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 401040 1) .v) (.rational 2089320 1)) .f) (.mul (.add (.mul (.rational 1835280 1)
    .v) (.rational 8318400 1)) .g)) .f) (.mul (.add (.mul (.rational 3634800 1) .v) (.rational
    14215080 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 4129920 1) .v) (.rational 13895280
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 3010200 1) .v) (.rational 8796060 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.rational 1481160 1) .v) (.rational 3857800 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.rational 494280 1) .v) (.rational 1185320 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.rational 106080 1) .v) (.rational 238280 1)) (.pow .g 7)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 220320 1) .v) (.rational 816480 1)) .f) (.mul (.add (.mul (.rational 1140480
    1) .v) (.rational 3777840 1)) .g)) .f) (.mul (.add (.mul (.rational 2608560 1) .v) (.rational
    7683960 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 3499200 1) .v) (.rational 9168480
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 3076560 1) .v) (.rational 7233120 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.rational 1864800 1) .v) (.rational 3999760 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.rational 787800 1) .v) (.rational 1568300 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.rational 225480 1) .v) (.rational 419680 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.rational 40440 1) .v) (.rational 69720 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 51840 1) .v) (.rational 142560 1)) .f) (.mul (.add (.mul (.rational 298080 1) .v)
    (.rational 751680 1)) .g)) .f) (.mul (.add (.mul (.rational 768240 1) .v) (.rational 1767720
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 1178640 1) .v) (.rational 2472240 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.rational 1203120 1) .v) (.rational 2310340 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.rational 860400 1) .v) (.rational 1525440 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.rational 438120 1) .v) (.rational 723100 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.rational 156600 1) .v) (.rational 241200 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational
    37440 1) .v) (.rational 53460 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 5400 1) .v)
    (.rational 7040 1)) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1138

namespace FullLow1139
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  20*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_4 e g v+4*SmallGap.ReducedLayers.low0_010_6 e g
    v+12*SmallGap.ReducedLayers.low0_001_5 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_110_6 e g v+3*SmallGap.ReducedLayers.low1_101_5 e g
    v+3*SmallGap.ReducedLayers.low1_011_7 e g v+6*SmallGap.ReducedLayers.low1_002_6 e g v)

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

end FullLow1139

end
end SPR.N6.Tail.CoreEndpoint
