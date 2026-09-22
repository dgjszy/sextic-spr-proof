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

namespace FullHigh0140
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    5*SmallGap.PolarCoefficientsHigh0.c050 e f g v*e*((e+f)*(e+f+g))^5

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_010_0 e g v*e^4+4*SmallGap.ReducedLayers.high0_001_0
    e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_011_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_002_0 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 652 1) .e) (.add (.mul (.rational 6617 1) .f) (.add
    (.mul (.rational 8358 1) .g) (.mul (.rational 1212 1) .v)))) .e) (.add (.mul (.add (.mul
    (.rational 41766 1) .f) (.add (.mul (.rational 71918 1) .g) (.mul (.rational 11428 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 44550 1) .g) (.mul (.rational 14584 1) .v)) .g) (.mul
    (.rational 560 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 184087 1)
    .f) (.add (.mul (.rational 400913 1) .g) (.mul (.rational 66936 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 334319 1) .g) (.mul (.rational 116894 1) .v)) .g) (.mul (.rational 4873 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 133129 1) .g) (.mul (.rational
    72832 1) .v)) .g) (.mul (.rational 6284 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 602660 1) .f) (.add (.mul (.rational 1585864 1) .g) (.mul
    (.rational 273234 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1660947 1) .g) (.mul
    (.rational 605526 1) .v)) .g) (.mul (.rational 26292 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 882822 1) .g) (.mul (.rational 510700 1) .v)) .g) (.mul (.rational
    46538 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 249991 1) .g) (.mul
    (.rational 204126 1) .v)) .g) (.mul (.rational 29040 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1520981 1) .f) (.add (.mul
    (.rational 4689417 1) .g) (.mul (.rational 826178 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 5907546 1) .g) (.mul (.rational 2218922 1) .v)) .g) (.mul (.rational 98626 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3922122 1) .g) (.mul (.rational 2360876
    1) .v)) .g) (.mul (.rational 222147 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1472903 1) .g) (.mul (.rational 1267428 1) .v)) .g) (.mul (.rational 188610 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 310233 1) .g) (.mul
    (.rational 360154 1) .v)) .g) (.mul (.rational 74819 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3030066 1) .f)
    (.add (.mul (.rational 10706228 1) .g) (.mul (.rational 1918956 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 15751219 1) .g) (.mul (.rational 6055110 1) .v)) .g) (.mul (.rational 273208
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 12529004 1) .g) (.mul
    (.rational 7778254 1) .v)) .g) (.mul (.rational 747752 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5849628 1) .g) (.mul (.rational 5242068 1) .v)) .g) (.mul
    (.rational 804369 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1625108 1) .g) (.mul (.rational 1988016 1) .v)) .g) (.mul (.rational 431588 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 258503 1) .g) (.mul (.rational
    420710 1) .v)) .g) (.mul (.rational 120565 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4837443 1)
    .f) (.add (.mul (.rational 19263985 1) .g) (.mul (.rational 3502356 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 32398857 1) .g) (.mul (.rational 12696974 1) .v)) .g) (.mul (.rational
    579111 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 30005739 1) .g) (.mul
    (.rational 19111170 1) .v)) .g) (.mul (.rational 1866964 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 16723071 1) .g) (.mul (.rational 15496782 1) .v)) .g) (.mul
    (.rational 2434236 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5750973 1) .g) (.mul (.rational 7345008 1) .v)) .g) (.mul (.rational 1649379 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1200533 1) .g) (.mul (.rational
    2062566 1) .v)) .g) (.mul (.rational 620403 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 142955 1) .g) (.mul (.rational 330474 1) .v)) .g) (.mul
    (.rational 127767 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6245096 1) .f) (.add
    (.mul (.rational 27667068 1) .g) (.mul (.rational 5093374 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 52338627 1) .g) (.mul (.rational 20859718 1) .v)) .g) (.mul (.rational 959816 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 55276298 1) .g) (.mul (.rational
    35999766 1) .v)) .g) (.mul (.rational 3564176 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 35762333 1) .g) (.mul (.rational 34115458 1) .v)) .g) (.mul (.rational
    5465364 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 14627832
    1) .g) (.mul (.rational 19389700 1) .v)) .g) (.mul (.rational 4479500 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3763583 1) .g) (.mul (.rational 6775110
    1) .v)) .g) (.mul (.rational 2122025 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 585134 1) .g) (.mul (.rational 1432334 1) .v)) .g) (.mul (.rational
    586212 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 50169 1)
    .g) (.mul (.rational 172442 1) .v)) .g) (.mul (.rational 90409 1) (.pow .v 2))) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 6547255 1) .f) (.add (.mul (.rational 31933473 1) .g) (.mul
    (.rational 5946798 1) .v))) .f) (.add (.mul (.add (.mul (.rational 67093114 1) .g) (.mul
    (.rational 27153962 1) .v)) .g) (.mul (.rational 1259544 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 79539504 1) .g) (.mul (.rational 52855770 1) .v)) .g) (.mul
    (.rational 5297391 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 58535442
    1) .g) (.mul (.rational 57312912 1) .v)) .g) (.mul (.rational 9347115 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 27707904 1) .g) (.mul (.rational 37966824
    1) .v)) .g) (.mul (.rational 8998122 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8447054 1) .g) (.mul (.rational 15852312 1) .v)) .g) (.mul (.rational
    5147184 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1611152 1)
    .g) (.mul (.rational 4150986 1) .v)) .g) (.mul (.rational 1786512 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 179352 1) .g) (.mul (.rational 655480 1)
    .v)) .g) (.mul (.rational 368353 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10061 1) .g) (.mul (.rational 57106 1) .v)) .g) (.mul (.rational 42185 1)
    (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5573906 1) .f) (.add
    (.mul (.rational 29675568 1) .g) (.mul (.rational 5587296 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 68546247 1) .g) (.mul (.rational 28145854 1) .v)) .g) (.mul (.rational 1316172 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 90095984 1) .g) (.mul (.rational
    61003492 1) .v)) .g) (.mul (.rational 6187654 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 74265996 1) .g) (.mul (.rational 74481696 1) .v)) .g) (.mul (.rational
    12357315 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 39879756
    1) .g) (.mul (.rational 56331408 1) .v)) .g) (.mul (.rational 13676328 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 14022400 1) .g) (.mul (.rational 27334104
    1) .v)) .g) (.mul (.rational 9177798 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3155776 1) .g) (.mul (.rational 8519742 1) .v)) .g) (.mul (.rational
    3840354 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 428712 1)
    .g) (.mul (.rational 1657816 1) .v)) .g) (.mul (.rational 992622 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 31018 1) .g) (.mul (.rational 188168 1) .v))
    .g) (.mul (.rational 151500 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 871 1) .g) (.mul (.rational 10794 1) .v)) .g) (.mul (.rational 12399 1) (.pow .v
    2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3836781 1) .f)
    (.add (.mul (.rational 22139507 1) .g) (.mul (.rational 4213456 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 55754865 1) .g) (.mul (.rational 23214442 1) .v)) .g) (.mul (.rational
    1094951 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 80446223 1) .g) (.mul
    (.rational 55448756 1) .v)) .g) (.mul (.rational 5693644 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 73381966 1) .g) (.mul (.rational 75275846 1) .v)) .g) (.mul
    (.rational 12704403 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 44032086 1) .g) (.mul (.rational 63985992 1) .v)) .g) (.mul (.rational 15904326 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 17510990 1) .g) (.mul
    (.rational 35360220 1) .v)) .g) (.mul (.rational 12260010 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4527938 1) .g) (.mul (.rational 12766194 1) .v)) .g)
    (.mul (.rational 6011292 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 722244 1) .g) (.mul (.rational 2943660 1) .v)) .g) (.mul (.rational 1870077 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 63368 1) .g) (.mul
    (.rational 409228 1) .v)) .g) (.mul (.rational 356959 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2276 1) .g) (.mul (.rational 30336 1) .v)) .g) (.mul
    (.rational 38808 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 878 1)
    .v) .g) (.mul (.rational 2065 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 2115988 1) .f) (.add (.mul (.rational 13154216 1) .g)
    (.mul (.rational 2530398 1) .v))) .f) (.add (.mul (.add (.mul (.rational 35866769 1) .g) (.mul
    (.rational 15138626 1) .v)) .g) (.mul (.rational 720772 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 56348314 1) .g) (.mul (.rational 39512536 1) .v)) .g) (.mul
    (.rational 4109786 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 56331497
    1) .g) (.mul (.rational 59044098 1) .v)) .g) (.mul (.rational 10139880 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 37326716 1) .g) (.mul (.rational 55717246
    1) .v)) .g) (.mul (.rational 14176578 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16542862 1) .g) (.mul (.rational 34532484 1) .v)) .g) (.mul (.rational
    12353586 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4821292
    1) .g) (.mul (.rational 14157990 1) .v)) .g) (.mul (.rational 6951630 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 879606 1) .g) (.mul (.rational 3766532 1)
    .v)) .g) (.mul (.rational 2530760 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 90076 1) .g) (.mul (.rational 617120 1) .v)) .g) (.mul (.rational 580282 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3892 1) .g) (.mul
    (.rational 55608 1) .v)) .g) (.mul (.rational 78669 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 2058 1) .v) .g) (.mul (.rational 5538 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 147 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 920831 1) .f) (.add (.mul (.rational
    6135547 1) .g) (.mul (.rational 1193070 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    18007242 1) .g) (.mul (.rational 7703694 1) .v)) .g) (.mul (.rational 370578 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 30595794 1) .g) (.mul (.rational 21817216 1) .v))
    .g) (.mul (.rational 2300345 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 33256483 1) .g) (.mul (.rational 35589588 1) .v)) .g) (.mul (.rational 6222264 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 24106329 1) .g) (.mul
    (.rational 36917554 1) .v)) .g) (.mul (.rational 9616239 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11769870 1) .g) (.mul (.rational 25355186 1) .v)) .g)
    (.mul (.rational 9354090 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3810788 1) .g) (.mul (.rational 11629674 1) .v)) .g) (.mul (.rational 5946066 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 780384 1) .g) (.mul
    (.rational 3501344 1) .v)) .g) (.mul (.rational 2481597 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 90902 1) .g) (.mul (.rational 658672 1) .v)) .g)
    (.mul (.rational 664731 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4550 1) .g) (.mul (.rational 69468 1) .v)) .g) (.mul (.rational 107958 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3094 1) .v) .g) (.mul (.rational
    9435 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 329 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 308750 1)
    .f) (.add (.mul (.rational 2195244 1) .g) (.mul (.rational 431564 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 6900417 1) .g) (.mul (.rational 2991986 1) .v)) .g) (.mul (.rational
    145552 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 12607932 1) .g) (.mul
    (.rational 9139670 1) .v)) .g) (.mul (.rational 977628 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 14803076 1) .g) (.mul (.rational 16164036 1) .v)) .g) (.mul
    (.rational 2878575 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11648172 1) .g) (.mul (.rational 18283432 1) .v)) .g) (.mul (.rational 4876316 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6208319 1) .g) (.mul
    (.rational 13782358 1) .v)) .g) (.mul (.rational 5241537 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2208312 1) .g) (.mul (.rational 6990316 1) .v)) .g)
    (.mul (.rational 3717192 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 500532 1) .g) (.mul (.rational 2347440 1) .v)) .g) (.mul (.rational 1750848 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 65116 1) .g) (.mul
    (.rational 497636 1) .v)) .g) (.mul (.rational 536840 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3682 1) .g) (.mul (.rational 59892 1) .v)) .g) (.mul
    (.rational 101601 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3094
    1) .v) .g) (.mul (.rational 10592 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    455 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 76827 1) .f) (.add (.mul (.rational 580673 1) .g) (.mul
    (.rational 115428 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1946551 1) .g) (.mul
    (.rational 855402 1) .v)) .g) (.mul (.rational 42121 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3806237 1) .g) (.mul (.rational 2804266 1) .v)) .g) (.mul (.rational
    304532 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4800843 1) .g) (.mul
    (.rational 5346018 1) .v)) .g) (.mul (.rational 970230 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4075073 1) .g) (.mul (.rational 6550104 1) .v)) .g)
    (.mul (.rational 1788959 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2353573 1) .g) (.mul (.rational 5377406 1) .v)) .g) (.mul (.rational 2107339 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 911691 1) .g) (.mul
    (.rational 2988252 1) .v)) .g) (.mul (.rational 1650765 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 226282 1) .g) (.mul (.rational 1106886 1) .v)) .g)
    (.mul (.rational 866827 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32438 1) .g) (.mul (.rational 260788 1) .v)) .g) (.mul (.rational 299585 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2036 1) .g) (.mul
    (.rational 35184 1) .v)) .g) (.mul (.rational 64764 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 2058 1) .v) .g) (.mul (.rational 7839 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 399 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13332 1) .f) (.add (.mul
    (.rational 106762 1) .g) (.mul (.rational 21462 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 380277 1) .g) (.mul (.rational 169358 1) .v)) .g) (.mul (.rational 8448 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 792534 1) .g) (.mul (.rational 593286 1)
    .v)) .g) (.mul (.rational 65452 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1068963 1) .g) (.mul (.rational 1213278 1) .v)) .g) (.mul (.rational 224484 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 973728 1) .g) (.mul
    (.rational 1601376 1) .v)) .g) (.mul (.rational 447888 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 605787 1) .g) (.mul (.rational 1422750 1) .v)) .g)
    (.mul (.rational 574245 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 253782 1) .g) (.mul (.rational 859908 1) .v)) .g) (.mul (.rational 492870 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 68409 1) .g) (.mul
    (.rational 348306 1) .v)) .g) (.mul (.rational 285747 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10698 1) .g) (.mul (.rational 90258 1) .v)) .g) (.mul
    (.rational 110004 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    736 1) .g) (.mul (.rational 13476 1) .v)) .g) (.mul (.rational 26763 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 878 1) .v) .g) (.mul (.rational 3690 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 217 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1436 1) .f) (.add (.mul
    (.rational 12149 1) .g) (.mul (.rational 2470 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    45837 1) .g) (.mul (.rational 20686 1) .v)) .g) (.mul (.rational 1046 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 101468 1) .g) (.mul (.rational 77154 1) .v)) .g)
    (.mul (.rational 8651 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    145796 1) .g) (.mul (.rational 168568 1) .v)) .g) (.mul (.rational 31803 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 141918 1) .g) (.mul (.rational
    238588 1) .v)) .g) (.mul (.rational 68324 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 94654 1) .g) (.mul (.rational 228228 1) .v)) .g) (.mul (.rational 94808
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 42652 1) .g) (.mul
    (.rational 149156 1) .v)) .g) (.mul (.rational 88578 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12408 1) .g) (.mul (.rational 65624 1) .v)) .g) (.mul
    (.rational 56266 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2101 1) .g) (.mul (.rational 18558 1) .v)) .g) (.mul (.rational 23908 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 157 1) .g) (.mul (.rational 3038 1) .v))
    .g) (.mul (.rational 6474 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 218 1) .v) .g) (.mul (.rational 1003 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 67 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 72 1) .f) (.add (.mul (.rational 642 1) .g) (.mul
    (.rational 132 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2559 1) .g) (.mul (.rational
    1170 1) .v)) .g) (.mul (.rational 60 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6000 1) .g) (.mul (.rational 4632 1) .v)) .g) (.mul (.rational 528 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 9156 1) .g) (.mul (.rational 10776 1) .v))
    .g) (.mul (.rational 2073 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9492 1) .g) (.mul (.rational 16296 1) .v)) .g) (.mul (.rational 4776 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6762 1) .g) (.mul (.rational
    16716 1) .v)) .g) (.mul (.rational 7140 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3264 1) .g) (.mul (.rational 11760 1) .v)) .g) (.mul (.rational 7224 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1020 1) .g) (.mul
    (.rational 5592 1) .v)) .g) (.mul (.rational 4998 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 186 1) .g) (.mul (.rational 1716 1) .v)) .g) (.mul
    (.rational 2328 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 15
    1) .g) (.mul (.rational 306 1) .v)) .g) (.mul (.rational 696 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 24 1) .v) .g) (.mul (.rational 120 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 9 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0140

namespace FullHigh0141
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh1.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    10*SmallGap.PolarCoefficientsHigh0.c050 e f g v*((e+f)*(e+f+g))^5+
    5*SmallGap.PolarCoefficientsHigh1.c050 e f g v*e*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh0.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    4*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_010_0 e g v*e^3+1*SmallGap.ReducedLayers.high0_010_1
    e g v*e^4+20*SmallGap.ReducedLayers.high0_001_0 e g v*e^4+4*SmallGap.ReducedLayers.high0_001_1
    e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_011_0 e g v*e^2+1*SmallGap.ReducedLayers.high1_011_1 e g
    v*e^3+12*SmallGap.ReducedLayers.high1_002_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_002_1 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 5310 1) .e) (.add (.mul (.rational 51815 1) .f) (.add (.mul
    (.rational 64995 1) .g) (.mul (.rational 9758 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    314905 1) .f) (.add (.mul (.rational 538477 1) .g) (.mul (.rational 87597 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 331282 1) .g) (.mul (.rational 110040 1) .v)) .g) (.mul
    (.rational 4480 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1336180
    1) .f) (.add (.mul (.rational 2890082 1) .g) (.mul (.rational 489887 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 2394304 1) .g) (.mul (.rational 842022 1) .v)) .g) (.mul (.rational
    36887 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 948378 1) .g) (.mul
    (.rational 514415 1) .v)) .g) (.mul (.rational 46670 1) (.pow .v 2))) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 4204869 1) .f) (.add (.mul (.rational 10990307
    1) .g) (.mul (.rational 1911497 1) .v))) .f) (.add (.mul (.add (.mul (.rational 11438930 1)
    .g) (.mul (.rational 4171617 1) .v)) .g) (.mul (.rational 188931 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6049827 1) .g) (.mul (.rational 3455101 1) .v)) .g) (.mul
    (.rational 327920 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1708771
    1) .g) (.mul (.rational 1352467 1) .v)) .g) (.mul (.rational 199259 1) (.pow .v 2))) (.pow .g
    2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10173830 1)
    .f) (.add (.mul (.rational 31158584 1) .g) (.mul (.rational 5522475 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 39016406 1) .g) (.mul (.rational 14618389 1) .v)) .g) (.mul (.rational
    673853 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 25782244 1) .g) (.mul
    (.rational 15299087 1) .v)) .g) (.mul (.rational 1489203 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9659234 1) .g) (.mul (.rational 8064255 1) .v)) .g) (.mul
    (.rational 1233867 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2037122 1) .g) (.mul (.rational 2247794 1) .v)) .g) (.mul (.rational 474165 1) (.pow .v 2)))
    (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 19356844 1) .f) (.add (.mul (.rational 67942257 1) .g) (.mul (.rational 12233018 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 99371583 1) .g) (.mul (.rational 38081304 1) .v))
    .g) (.mul (.rational 1774976 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    78686862 1) .g) (.mul (.rational 48195841 1) .v)) .g) (.mul (.rational 4772497 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 36654798 1) .g) (.mul (.rational
    31967123 1) .v)) .g) (.mul (.rational 5023183 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 10195411 1) .g) (.mul (.rational 11928317 1) .v)) .g) (.mul
    (.rational 2623521 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1631805 1) .g) (.mul (.rational 2487437 1) .v)) .g) (.mul (.rational 708941 1) (.pow .v 2)))
    (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 29364643 1) .f) (.add (.mul (.rational 116168805 1) .g) (.mul
    (.rational 21221310 1) .v))) .f) (.add (.mul (.add (.mul (.rational 194246514 1) .g) (.mul
    (.rational 75977064 1) .v)) .g) (.mul (.rational 3572176 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 179103500 1) .g) (.mul (.rational 112844145 1) .v)) .g) (.mul
    (.rational 11332590 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    99595713 1) .g) (.mul (.rational 90247201 1) .v)) .g) (.mul (.rational 14499333 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 34286029 1) .g) (.mul
    (.rational 42200551 1) .v)) .g) (.mul (.rational 9608061 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7198466 1) .g) (.mul (.rational 11713171 1) .v)) .g)
    (.mul (.rational 3521553 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 867602 1) .g) (.mul (.rational 1863558 1) .v)) .g) (.mul (.rational 704621 1) (.pow
    .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 35789710 1) .f) (.add (.mul (.rational 157515419 1)
    .g) (.mul (.rational 29185460 1) .v))) .f) (.add (.mul (.add (.mul (.rational 296261427 1) .g)
    (.mul (.rational 118166352 1) .v)) .g) (.mul (.rational 5602658 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 311509321 1) .g) (.mul (.rational 201522668 1) .v)) .g)
    (.mul (.rational 20513128 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    201071099 1) .g) (.mul (.rational 188713930 1) .v)) .g) (.mul (.rational 30958524 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 82309171 1) .g) (.mul
    (.rational 106066959 1) .v)) .g) (.mul (.rational 24926843 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21288183 1) .g) (.mul (.rational 36729945 1) .v)) .g)
    (.mul (.rational 11582175 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3347245 1) .g) (.mul (.rational 7730647 1) .v)) .g) (.mul (.rational 3137751 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 292543 1) .g) (.mul
    (.rational 934237 1) .v)) .g) (.mul (.rational 476383 1) (.pow .v 2))) (.pow .g 6)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 35132163 1) .f) (.add (.mul (.rational 170228899 1) .g) (.mul
    (.rational 31998348 1) .v))) .f) (.add (.mul (.add (.mul (.rational 355591456 1) .g) (.mul
    (.rational 144592750 1) .v)) .g) (.mul (.rational 6919289 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 419669100 1) .g) (.mul (.rational 278499046 1) .v)) .g) (.mul
    (.rational 28752349 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    308078405 1) .g) (.mul (.rational 298910396 1) .v)) .g) (.mul (.rational 50078726 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 145894923 1) .g) (.mul
    (.rational 196210389 1) .v)) .g) (.mul (.rational 47556098 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 44683400 1) .g) (.mul (.rational 81371901 1) .v)) .g)
    (.mul (.rational 26837176 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8611198 1) .g) (.mul (.rational 21259299 1) .v)) .g) (.mul (.rational 9206626 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 975891 1) .g) (.mul
    (.rational 3375469 1) .v)) .g) (.mul (.rational 1887513 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 56271 1) .g) (.mul (.rational 299340 1) .v)) .g)
    (.mul (.rational 218191 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 27710465 1) .f) (.add (.mul (.rational 146561583 1) .g) (.mul (.rational 27961361
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 336563656 1) .g) (.mul (.rational 139528828 1)
    .v)) .g) (.mul (.rational 6748228 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 440333696 1) .g) (.mul (.rational 299602229 1) .v)) .g) (.mul (.rational 31409729
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 361969099 1) .g) (.mul
    (.rational 362598304 1) .v)) .g) (.mul (.rational 62091221 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 194370494 1) .g) (.mul (.rational 272195765 1) .v))
    .g) (.mul (.rational 68039978 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 68609939 1) .g) (.mul (.rational 131425720 1) .v)) .g) (.mul (.rational 45266582 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 15584220 1) .g) (.mul
    (.rational 40940994 1) .v)) .g) (.mul (.rational 18840252 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2152127 1) .g) (.mul (.rational 8020177 1) .v)) .g)
    (.mul (.rational 4879390 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 159760 1) .g) (.mul (.rational 926934 1) .v)) .g) (.mul (.rational 757807 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4657 1) .g) (.mul
    (.rational 55051 1) .v)) .g) (.mul (.rational 65103 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 17430718 1) .f) (.add (.mul (.rational 99917824
    1) .g) (.mul (.rational 19357611 1) .v))) .f) (.add (.mul (.add (.mul (.rational 250138132 1)
    .g) (.mul (.rational 105744746 1) .v)) .g) (.mul (.rational 5176851 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 359177882 1) .g) (.mul (.rational 250492325 1) .v))
    .g) (.mul (.rational 26704130 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 326621457 1) .g) (.mul (.rational 337498352 1) .v)) .g) (.mul (.rational 59128707
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 195871685 1) .g)
    (.mul (.rational 285124863 1) .v)) .g) (.mul (.rational 73523934 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 78130382 1) .g) (.mul (.rational 157000610
    1) .v)) .g) (.mul (.rational 56413201 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 20364574 1) .g) (.mul (.rational 56718346 1) .v)) .g) (.mul (.rational
    27646380 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3296345
    1) .g) (.mul (.rational 13175567 1) .v)) .g) (.mul (.rational 8664944 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 296079 1) .g) (.mul (.rational 1864654 1)
    .v)) .g) (.mul (.rational 1691541 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11010 1) .g) (.mul (.rational 142891 1) .v)) .g) (.mul (.rational 193428 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 4367 1) .v) .g) (.mul
    (.rational 11393 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 8624401 1) .f) (.add (.mul (.rational 53258669 1) .g) (.mul (.rational
    10483025 1) .v))) .f) (.add (.mul (.add (.mul (.rational 144338476 1) .g) (.mul (.rational
    62234125 1) .v)) .g) (.mul (.rational 3088587 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 225612021 1) .g) (.mul (.rational 161240449 1) .v)) .g) (.mul (.rational
    17501584 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 224743992 1) .g)
    (.mul (.rational 239361393 1) .v)) .g) (.mul (.rational 42942453 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 148729706 1) .g) (.mul (.rational 224717427
    1) .v)) .g) (.mul (.rational 59789152 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 66045547 1) .g) (.mul (.rational 138903895 1) .v)) .g) (.mul (.rational
    52017345 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19374146
    1) .g) (.mul (.rational 57023819 1) .v)) .g) (.mul (.rational 29357200 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3579741 1) .g) (.mul (.rational 15284997
    1) .v)) .g) (.mul (.rational 10804643 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 374304 1) .g) (.mul (.rational 2547184 1) .v)) .g) (.mul (.rational
    2539813 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 16689 1)
    .g) (.mul (.rational 236706 1) .v)) .g) (.mul (.rational 361776 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 9212 1) .v) .g) (.mul (.rational 27929 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 874 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3281880 1) .f) (.add (.mul
    (.rational 21720962 1) .g) (.mul (.rational 4345523 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 63351998 1) .g) (.mul (.rational 27863285 1) .v)) .g) (.mul (.rational 1403591 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 107057988 1) .g) (.mul (.rational
    78388703 1) .v)) .g) (.mul (.rational 8672113 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 115890213 1) .g) (.mul (.rational 127126605 1) .v)) .g) (.mul
    (.rational 23369277 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 83824971 1) .g) (.mul (.rational 131282709 1) .v)) .g) (.mul (.rational 36038089 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 40957568 1) .g) (.mul
    (.rational 89969905 1) .v)) .g) (.mul (.rational 35074836 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 13324710 1) .g) (.mul (.rational 41326567 1) .v)) .g)
    (.mul (.rational 22409132 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2757073 1) .g) (.mul (.rational 12529987 1) .v)) .g) (.mul (.rational 9470829 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 326921 1) .g) (.mul
    (.rational 2393720 1) .v)) .g) (.mul (.rational 2601329 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 16820 1) .g) (.mul (.rational 259530 1) .v)) .g)
    (.mul (.rational 442379 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    12090 1) .v) .g) (.mul (.rational 41929 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 1680 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 926474 1) .f) (.add (.mul (.rational 6542627 1) .g) (.mul
    (.rational 1330776 1) .v))) .f) (.add (.mul (.add (.mul (.rational 20432951 1) .g) (.mul
    (.rational 9167228 1) .v)) .g) (.mul (.rational 469188 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 37115878 1) .g) (.mul (.rational 27834115 1) .v)) .g) (.mul (.rational
    3140679 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 43369599 1) .g)
    (.mul (.rational 48963149 1) .v)) .g) (.mul (.rational 9225207 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 34018947 1) .g) (.mul (.rational 55155010 1) .v))
    .g) (.mul (.rational 15615125 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18118640 1) .g) (.mul (.rational 41489233 1) .v)) .g) (.mul (.rational 16815427 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6462808 1) .g) (.mul
    (.rational 21065484 1) .v)) .g) (.mul (.rational 11997300 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1476121 1) .g) (.mul (.rational 7115999 1) .v)) .g)
    (.mul (.rational 5723322 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 194796 1) .g) (.mul (.rational 1528470 1) .v)) .g) (.mul (.rational 1796569 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 11271 1) .g) (.mul
    (.rational 188359 1) .v)) .g) (.mul (.rational 354183 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 10113 1) .v) .g) (.mul (.rational 39559 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 1905 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 182620 1) .f) (.add (.mul
    (.rational 1370724 1) .g) (.mul (.rational 283496 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 4563930 1) .g) (.mul (.rational 2088464 1) .v)) .g) (.mul (.rational 108670 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 8867472 1) .g) (.mul (.rational
    6807827 1) .v)) .g) (.mul (.rational 783746 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11121920 1) .g) (.mul (.rational 12911959 1) .v)) .g) (.mul (.rational
    2493189 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9399352 1)
    .g) (.mul (.rational 15754846 1) .v)) .g) (.mul (.rational 4596913 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5415404 1) .g) (.mul (.rational 12902073 1)
    .v)) .g) (.mul (.rational 5427496 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2098640 1) .g) (.mul (.rational 7170654 1) .v)) .g) (.mul (.rational 4276879
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 523252 1) .g)
    (.mul (.rational 2667097 1) .v)) .g) (.mul (.rational 2271976 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 75780 1) .g) (.mul (.rational 634774 1) .v)) .g)
    (.mul (.rational 801399 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4842 1) .g) (.mul (.rational 87271 1) .v)) .g) (.mul (.rational 179278 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 5267 1) .v) .g) (.mul (.rational
    22951 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1279 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    22414 1) .f) (.add (.mul (.rational 178212 1) .g) (.mul (.rational 37476 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 630234 1) .g) (.mul (.rational 294064 1) .v)) .g) (.mul
    (.rational 15560 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1304255 1) .g)
    (.mul (.rational 1024478 1) .v)) .g) (.mul (.rational 120328 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1747534 1) .g) (.mul (.rational 2084234 1) .v)) .g) (.mul
    (.rational 412244 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1582569 1) .g) (.mul (.rational 2738536 1) .v)) .g) (.mul (.rational 822603 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 980152 1) .g) (.mul (.rational
    2424958 1) .v)) .g) (.mul (.rational 1056774 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 409649 1) .g) (.mul (.rational 1463584 1) .v)) .g) (.mul
    (.rational 911437 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    110520 1) .g) (.mul (.rational 593798 1) .v)) .g) (.mul (.rational 533328 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 17379 1) .g) (.mul (.rational
    154844 1) .v)) .g) (.mul (.rational 208629 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1210 1) .g) (.mul (.rational 23426 1) .v)) .g) (.mul (.rational
    52118 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1562 1) .v) .g)
    (.mul (.rational 7499 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 472 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 1288 1) .f) (.add (.mul (.rational 10816 1) .g) (.mul (.rational 2312 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 40494 1) .g) (.mul (.rational 19256 1) .v)) .g)
    (.mul (.rational 1036 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 88936 1)
    .g) (.mul (.rational 71418 1) .v)) .g) (.mul (.rational 8554 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 126784 1) .g) (.mul (.rational 155168 1) .v)) .g) (.mul
    (.rational 31410 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    122472 1) .g) (.mul (.rational 218456 1) .v)) .g) (.mul (.rational 67456 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 81116 1) .g) (.mul (.rational
    207984 1) .v)) .g) (.mul (.rational 93688 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 36344 1) .g) (.mul (.rational 135436 1) .v)) .g) (.mul (.rational 87780
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 10536 1) .g) (.mul
    (.rational 59488 1) .v)) .g) (.mul (.rational 56084 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1784 1) .g) (.mul (.rational 16848 1) .v)) .g) (.mul
    (.rational 24080 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    134 1) .g) (.mul (.rational 2776 1) .v)) .g) (.mul (.rational 6636 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 202 1) .v) .g) (.mul (.rational 1058 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 74 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0141

namespace FullHigh0142
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    10*SmallGap.PolarCoefficientsHigh1.c050 e f g v*((e+f)*(e+f+g))^5+
    5*SmallGap.PolarCoefficientsHigh2.c050 e f g v*e*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh1.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    9*SmallGap.PolarCoefficientsHigh0.c140 e f g v*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    3*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_010_0 e g v*e^2+4*SmallGap.ReducedLayers.high0_010_1
    e g v*e^3+1*SmallGap.ReducedLayers.high0_010_2 e g v*e^4+40*SmallGap.ReducedLayers.high0_001_0
    e g v*e^3+20*SmallGap.ReducedLayers.high0_001_1 e g v*e^4+4*SmallGap.ReducedLayers.high0_001_2
    e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_011_0 e g v*e^1+3*SmallGap.ReducedLayers.high1_011_1 e g
    v*e^2+1*SmallGap.ReducedLayers.high1_011_2 e g v*e^3+18*SmallGap.ReducedLayers.high1_002_0 e g
    v*e^2+12*SmallGap.ReducedLayers.high1_002_1 e g v*e^3+3*SmallGap.ReducedLayers.high1_002_2 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 18978 1) .e) (.add (.mul (.rational 178708 1) .f) (.add (.mul (.rational
    222699 1) .g) (.mul (.rational 34450 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 1047208
    1) .f) (.add (.mul (.rational 1778240 1) .g) (.mul (.rational 295190 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1086564 1) .g) (.mul (.rational 364480 1) .v)) .g) (.mul (.rational
    15720 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 4275409 1) .f)
    (.add (.mul (.rational 9181062 1) .g) (.mul (.rational 1576448 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 7553373 1) .g) (.mul (.rational 2661215 1) .v)) .g) (.mul (.rational 122764
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2974688 1) .g) (.mul (.rational
    1588654 1) .v)) .g) (.mul (.rational 152086 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 12904216 1) .f) (.add (.mul (.rational 33480055 1) .g)
    (.mul (.rational 5868846 1) .v))) .f) (.add (.mul (.add (.mul (.rational 34603988 1) .g) (.mul
    (.rational 12580955 1) .v)) .g) (.mul (.rational 596611 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 18195309 1) .g) (.mul (.rational 10193391 1) .v)) .g) (.mul
    (.rational 1012535 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5121478
    1) .g) (.mul (.rational 3885213 1) .v)) .g) (.mul (.rational 596015 1) (.pow .v 2))) (.pow .g
    2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 29816501 1)
    .f) (.add (.mul (.rational 90632943 1) .g) (.mul (.rational 16143342 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 112696700 1) .g) (.mul (.rational 42001207 1) .v)) .g) (.mul (.rational
    2017765 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 74039534 1) .g) (.mul
    (.rational 43067280 1) .v)) .g) (.mul (.rational 4360820 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 27639755 1) .g) (.mul (.rational 22164904 1) .v)) .g) (.mul
    (.rational 3506234 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5829297 1) .g) (.mul (.rational 6013818 1) .v)) .g) (.mul (.rational 1292554 1) (.pow .v 2)))
    (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 53877617 1) .f) (.add (.mul (.rational 187670733 1) .g) (.mul (.rational 33929697
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 272559803 1) .g) (.mul (.rational 103912165 1)
    .v)) .g) (.mul (.rational 5031479 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 214577128 1) .g) (.mul (.rational 129075524 1) .v)) .g) (.mul (.rational 13245497
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 99594423 1) .g) (.mul
    (.rational 83825033 1) .v)) .g) (.mul (.rational 13567855 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 27695861 1) .g) (.mul (.rational 30568370 1) .v)) .g)
    (.mul (.rational 6838302 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4453725 1) .g) (.mul (.rational 6228870 1) .v)) .g) (.mul (.rational 1762266 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 77090937 1) .f) (.add (.mul (.rational 302624211 1) .g)
    (.mul (.rational 55568733 1) .v))) .f) (.add (.mul (.add (.mul (.rational 502449154 1) .g)
    (.mul (.rational 195946308 1) .v)) .g) (.mul (.rational 9557274 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 460593224 1) .g) (.mul (.rational 286160985 1) .v)) .g)
    (.mul (.rational 29743830 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    255182149 1) .g) (.mul (.rational 224693523 1) .v)) .g) (.mul (.rational 37171003 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 87810715 1) .g) (.mul
    (.rational 103070669 1) .v)) .g) (.mul (.rational 23923900 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 18515956 1) .g) (.mul (.rational 28086640 1) .v)) .g)
    (.mul (.rational 8457036 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2255638 1) .g) (.mul (.rational 4405077 1) .v)) .g) (.mul (.rational 1619800 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 87859240 1) .f) (.add (.mul (.rational
    383659370 1) .g) (.mul (.rational 71649307 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    716469980 1) .g) (.mul (.rational 286067123 1) .v)) .g) (.mul (.rational 14078963 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 748942089 1) .g) (.mul (.rational 480585484
    1) .v)) .g) (.mul (.rational 50693271 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 481596956 1) .g) (.mul (.rational 442997082 1) .v)) .g) (.mul (.rational 75031869
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 197021524 1) .g)
    (.mul (.rational 245095733 1) .v)) .g) (.mul (.rational 59062259 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 51158112 1) .g) (.mul (.rational 83682462 1)
    .v)) .g) (.mul (.rational 26745804 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8125871 1) .g) (.mul (.rational 17444779 1) .v)) .g) (.mul (.rational 7050553
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 723174 1) .g)
    (.mul (.rational 2107505 1) .v)) .g) (.mul (.rational 1046012 1) (.pow .v 2))) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 79767962 1) .f) (.add (.mul (.rational 383452711 1) .g) (.mul
    (.rational 72950037 1) .v))) .f) (.add (.mul (.add (.mul (.rational 795239722 1) .g) (.mul
    (.rational 325476024 1) .v)) .g) (.mul (.rational 16207695 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 932978711 1) .g) (.mul (.rational 618632469 1) .v)) .g) (.mul
    (.rational 66415828 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    682218395 1) .g) (.mul (.rational 655134184 1) .v)) .g) (.mul (.rational 113918571 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 322793832 1) .g) (.mul
    (.rational 424616947 1) .v)) .g) (.mul (.rational 106416772 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 99210726 1) .g) (.mul (.rational 174266197 1) .v))
    .g) (.mul (.rational 59067144 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19302699 1) .g) (.mul (.rational 45278127 1) .v)) .g) (.mul (.rational 19980960 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2225987 1) .g) (.mul
    (.rational 7214940 1) .v)) .g) (.mul (.rational 4075879 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 131902 1) .g) (.mul (.rational 651674 1) .v)) .g)
    (.mul (.rational 479682 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 57373286 1) .f) (.add (.mul (.rational 301025720 1) .g) (.mul (.rational 58433493
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 686242483 1) .g) (.mul (.rational 288254515 1)
    .v)) .g) (.mul (.rational 14567779 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 892389878 1) .g) (.mul (.rational 611788471 1) .v)) .g) (.mul (.rational 67054088
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 730558506 1) .g) (.mul
    (.rational 732108293 1) .v)) .g) (.mul (.rational 131052259 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 391828515 1) .g) (.mul (.rational 544066480 1) .v))
    .g) (.mul (.rational 142047726 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 138726568 1) .g) (.mul (.rational 260763154 1) .v)) .g) (.mul (.rational
    93661622 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 31789438
    1) .g) (.mul (.rational 81049705 1) .v)) .g) (.mul (.rational 38832983 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4463064 1) .g) (.mul (.rational 15982934
    1) .v)) .g) (.mul (.rational 10133214 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 340151 1) .g) (.mul (.rational 1885726 1) .v)) .g) (.mul (.rational
    1622708 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10305 1)
    .g) (.mul (.rational 116620 1) .v)) .g) (.mul (.rational 149894 1) (.pow .v 2))) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 32294139 1) .f) (.add (.mul
    (.rational 183624126 1) .g) (.mul (.rational 36420661 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 456288838 1) .g) (.mul (.rational 196909121 1) .v)) .g) (.mul (.rational 10128010
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 651107259 1) .g) (.mul
    (.rational 461719602 1) .v)) .g) (.mul (.rational 51802896 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 589491183 1) .g) (.mul (.rational 616211355 1) .v)) .g)
    (.mul (.rational 113804688 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 352940284 1) .g) (.mul (.rational 516470571 1) .v)) .g) (.mul (.rational 140624598
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 141117302 1) .g)
    (.mul (.rational 282980371 1) .v)) .g) (.mul (.rational 107578470 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 37073927 1) .g) (.mul (.rational 102252955
    1) .v)) .g) (.mul (.rational 52906442 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6093611 1) .g) (.mul (.rational 23961174 1) .v)) .g) (.mul (.rational
    16843181 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 561130 1)
    .g) (.mul (.rational 3465750 1) .v)) .g) (.mul (.rational 3413106 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 21653 1) .g) (.mul (.rational 276533 1) .v))
    .g) (.mul (.rational 420014 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 9015 1) .v) .g) (.mul (.rational 28054 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13927964 1) .f) (.add (.mul
    (.rational 85306601 1) .g) (.mul (.rational 17308373 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 229444325 1) .g) (.mul (.rational 101803928 1) .v)) .g) (.mul (.rational 5341684 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 356313347 1) .g) (.mul (.rational
    261415765 1) .v)) .g) (.mul (.rational 30085284 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 353251404 1) .g) (.mul (.rational 384968933 1) .v)) .g) (.mul
    (.rational 73459688 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 233264365 1) .g) (.mul (.rational 359157790 1) .v)) .g) (.mul (.rational 102013570
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 103747006 1) .g)
    (.mul (.rational 221297324 1) .v)) .g) (.mul (.rational 88881979 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 30640688 1) .g) (.mul (.rational 91019289 1)
    .v)) .g) (.mul (.rational 50588139 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5740082 1) .g) (.mul (.rational 24639071 1) .v)) .g) (.mul (.rational
    19000403 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 614125 1)
    .g) (.mul (.rational 4196707 1) .v)) .g) (.mul (.rational 4647983 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 28345 1) .g) (.mul (.rational 405444 1) .v))
    .g) (.mul (.rational 710407 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 16776 1) .v) .g) (.mul (.rational 61454 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 2269 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 4444821 1) .f) (.add (.mul (.rational 29173583 1) .g) (.mul
    (.rational 6060079 1) .v))) .f) (.add (.mul (.add (.mul (.rational 84427137 1) .g) (.mul
    (.rational 38532943 1) .v)) .g) (.mul (.rational 2066079 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 141700571 1) .g) (.mul (.rational 107553325 1) .v)) .g) (.mul
    (.rational 12713835 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    152584338 1) .g) (.mul (.rational 173226720 1) .v)) .g) (.mul (.rational 34176181 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 110047379 1) .g) (.mul
    (.rational 177984567 1) .v)) .g) (.mul (.rational 52711911 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 53799952 1) .g) (.mul (.rational 121725638 1) .v))
    .g) (.mul (.rational 51532282 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17597181 1) .g) (.mul (.rational 56067297 1) .v)) .g) (.mul (.rational 33300791 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3684749 1) .g) (.mul
    (.rational 17171752 1) .v)) .g) (.mul (.rational 14392810 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 445958 1) .g) (.mul (.rational 3349762 1) .v)) .g)
    (.mul (.rational 4112729 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23675 1) .g) (.mul (.rational 376531 1) .v)) .g) (.mul (.rational 746575 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 18554 1) .v) .g) (.mul (.rational
    78286 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 3625 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 989001 1)
    .f) (.add (.mul (.rational 6925091 1) .g) (.mul (.rational 1473496 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 21453394 1) .g) (.mul (.rational 10073424 1) .v)) .g) (.mul (.rational
    552534 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 38687292 1) .g) (.mul
    (.rational 30369253 1) .v)) .g) (.mul (.rational 3689753 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 44939427 1) .g) (.mul (.rational 53098436 1) .v)) .g) (.mul
    (.rational 10830752 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 35116464 1) .g) (.mul (.rational 59554180 1) .v)) .g) (.mul (.rational 18370229 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 18689971 1) .g) (.mul
    (.rational 44730924 1) .v)) .g) (.mul (.rational 19906407 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6691104 1) .g) (.mul (.rational 22777054 1) .v)) .g)
    (.mul (.rational 14384515 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1543052 1) .g) (.mul (.rational 7767388 1) .v)) .g) (.mul (.rational 7018743 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 207217 1) .g) (.mul
    (.rational 1700396 1) .v)) .g) (.mul (.rational 2286887 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 12323 1) .g) (.mul (.rational 216420 1) .v)) .g)
    (.mul (.rational 478079 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    12213 1) .v) .g) (.mul (.rational 58312 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 3181 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 136978 1) .f) (.add (.mul (.rational 1019230 1) .g)
    (.mul (.rational 222186 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3365103 1) .g) (.mul
    (.rational 1625368 1) .v)) .g) (.mul (.rational 91244 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6487289 1) .g) (.mul (.rational 5263721 1) .v)) .g) (.mul (.rational
    657318 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8082126 1) .g) (.mul
    (.rational 9927339 1) .v)) .g) (.mul (.rational 2092189 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6796683 1) .g) (.mul (.rational 12063996 1) .v)) .g)
    (.mul (.rational 3869713 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3907030 1) .g) (.mul (.rational 9864241 1) .v)) .g) (.mul (.rational 4601083 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1516503 1) .g) (.mul
    (.rational 5494968 1) .v)) .g) (.mul (.rational 3672281 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 380724 1) .g) (.mul (.rational 2060301 1) .v)) .g)
    (.mul (.rational 1992713 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 55911 1) .g) (.mul (.rational 498374 1) .v)) .g) (.mul (.rational 726899 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3655 1) .g) (.mul
    (.rational 70431 1) .v)) .g) (.mul (.rational 171133 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 4435 1) .v) .g) (.mul (.rational 23613 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 1462 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8890 1) .f) (.add (.mul
    (.rational 70052 1) .g) (.mul (.rational 15644 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    245541 1) .g) (.mul (.rational 121948 1) .v)) .g) (.mul (.rational 7006 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 503831 1) .g) (.mul (.rational 422210 1) .v)) .g)
    (.mul (.rational 54164 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    669870 1) .g) (.mul (.rational 854242 1) .v)) .g) (.mul (.rational 185804 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 602793 1) .g) (.mul (.rational
    1117672 1) .v)) .g) (.mul (.rational 372083 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 371782 1) .g) (.mul (.rational 987550 1) .v)) .g) (.mul
    (.rational 481318 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    155241 1) .g) (.mul (.rational 596648 1) .v)) .g) (.mul (.rational 420037 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 42036 1) .g) (.mul (.rational
    243470 1) .v)) .g) (.mul (.rational 250444 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 6675 1) .g) (.mul (.rational 64292 1) .v)) .g) (.mul (.rational
    100829 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 473 1) .g)
    (.mul (.rational 9942 1) .v)) .g) (.mul (.rational 26288 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 686 1) .v) .g) (.mul (.rational 4023 1) (.pow .v 2))) (.pow
    .g 9))) .f) (.mul (.mul (.rational 276 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0142

namespace FullHigh0143
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  10*SmallGap.PolarCoefficientsHigh2.c050 e f g v*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh2.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    9*SmallGap.PolarCoefficientsHigh1.c140 e f g v*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsHigh0.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsHigh0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    2*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_010_0 e g v*e^1+6*SmallGap.ReducedLayers.high0_010_1
    e g v*e^2+4*SmallGap.ReducedLayers.high0_010_2 e g v*e^3+1*SmallGap.ReducedLayers.high0_010_3
    e g v*e^4+40*SmallGap.ReducedLayers.high0_001_0 e g
    v*e^2+40*SmallGap.ReducedLayers.high0_001_1 e g v*e^3+20*SmallGap.ReducedLayers.high0_001_2 e
    g v*e^4+4*SmallGap.ReducedLayers.high0_001_3 e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_011_0 e g v+3*SmallGap.ReducedLayers.high1_011_1 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_011_2 e g v*e^2+1*SmallGap.ReducedLayers.high1_011_3 e g
    v*e^3+12*SmallGap.ReducedLayers.high1_002_0 e g v*e^1+18*SmallGap.ReducedLayers.high1_002_1 e
    g v*e^2+12*SmallGap.ReducedLayers.high1_002_2 e g v*e^3+3*SmallGap.ReducedLayers.high1_002_3 e
    g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    38870 1) .e) (.add (.mul (.rational 354615 1) .f) (.add (.mul (.rational 439245 1) .g) (.mul
    (.rational 69650 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 2007711 1) .f) (.add (.mul
    (.rational 3386107 1) .g) (.mul (.rational 571342 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2055680 1) .g) (.mul (.rational 692364 1) .v)) .g) (.mul (.rational 31600 1) (.pow
    .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 7888262 1) .f) (.add (.mul
    (.rational 16814461 1) .g) (.mul (.rational 2915850 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 13735844 1) .g) (.mul (.rational 4823413 1) .v)) .g) (.mul (.rational 234745 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5378489 1) .g) (.mul (.rational
    2802716 1) .v)) .g) (.mul (.rational 284190 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 22795478 1) .f) (.add (.mul (.rational 58677334 1) .g)
    (.mul (.rational 10343259 1) .v))) .f) (.add (.mul (.add (.mul (.rational 60191585 1) .g)
    (.mul (.rational 21717356 1) .v)) .g) (.mul (.rational 1082716 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 31449810 1) .g) (.mul (.rational 17135160 1) .v)) .g) (.mul
    (.rational 1791366 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8817603
    1) .g) (.mul (.rational 6313048 1) .v)) .g) (.mul (.rational 1015372 1) (.pow .v 2))) (.pow .g
    2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 50111840 1)
    .f) (.add (.mul (.rational 151057883 1) .g) (.mul (.rational 26998985 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 186348583 1) .g) (.mul (.rational 68820143 1) .v)) .g) (.mul (.rational
    3464832 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 121601525 1) .g) (.mul
    (.rational 68804956 1) .v)) .g) (.mul (.rational 7296081 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 45189191 1) .g) (.mul (.rational 34322690 1) .v)) .g) (.mul
    (.rational 5654582 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9521166 1) .g) (.mul (.rational 8966011 1) .v)) .g) (.mul (.rational 1973321 1) (.pow .v 2)))
    (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 85489120 1) .f) (.add (.mul (.rational 295190430 1) .g) (.mul (.rational 53557123
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 425185606 1) .g) (.mul (.rational 160820724 1)
    .v)) .g) (.mul (.rational 8144636 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 332359978 1) .g) (.mul (.rational 195122557 1) .v)) .g) (.mul (.rational 20911222
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 153491642 1) .g) (.mul
    (.rational 123220404 1) .v)) .g) (.mul (.rational 20710419 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 42614028 1) .g) (.mul (.rational 43488553 1) .v)) .g)
    (.mul (.rational 9956034 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6874378 1) .g) (.mul (.rational 8545048 1) .v)) .g) (.mul (.rational 2393435 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 114401471 1) .f) (.add (.mul (.rational 445027249 1) .g)
    (.mul (.rational 82186259 1) .v))) .f) (.add (.mul (.add (.mul (.rational 732584221 1) .g)
    (.mul (.rational 284475458 1) .v)) .g) (.mul (.rational 14511242 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 666598674 1) .g) (.mul (.rational 406647383 1) .v)) .g)
    (.mul (.rational 44144936 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    367338354 1) .g) (.mul (.rational 311561243 1) .v)) .g) (.mul (.rational 53586412 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 126135932 1) .g) (.mul
    (.rational 139049953 1) .v)) .g) (.mul (.rational 33198631 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 26664958 1) .g) (.mul (.rational 36809660 1) .v)) .g)
    (.mul (.rational 11151774 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3276673 1) .g) (.mul (.rational 5620717 1) .v)) .g) (.mul (.rational 1994915 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 120520954 1) .f) (.add (.mul (.rational
    521370603 1) .g) (.mul (.rational 98329843 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    965090669 1) .g) (.mul (.rational 385907515 1) .v)) .g) (.mul (.rational 19906362 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1001130074 1) .g) (.mul (.rational
    636010457 1) .v)) .g) (.mul (.rational 70284444 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 640131767 1) .g) (.mul (.rational 574035168 1) .v)) .g) (.mul
    (.rational 101605552 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 261222619 1) .g) (.mul (.rational 310552326 1) .v)) .g) (.mul (.rational 77734202
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 67968919 1) .g)
    (.mul (.rational 103712997 1) .v)) .g) (.mul (.rational 34026975 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10885294 1) .g) (.mul (.rational 21230599 1)
    .v)) .g) (.mul (.rational 8637402 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 984265 1) .g) (.mul (.rational 2544232 1) .v)) .g) (.mul (.rational 1239997
    1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 99653539 1) .f) (.add (.mul
    (.rational 474447885 1) .g) (.mul (.rational 91679231 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 975084873 1) .g) (.mul (.rational 402677269 1) .v)) .g) (.mul (.rational 21109489
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1134983943 1) .g) (.mul
    (.rational 752536929 1) .v)) .g) (.mul (.rational 85133114 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 825040639 1) .g) (.mul (.rational 782863570 1) .v)) .g)
    (.mul (.rational 143444040 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 389270770 1) .g) (.mul (.rational 498404920 1) .v)) .g) (.mul (.rational 131427828
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 119843608 1) .g)
    (.mul (.rational 201272418 1) .v)) .g) (.mul (.rational 71541265 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 23500764 1) .g) (.mul (.rational 51724571 1)
    .v)) .g) (.mul (.rational 23829905 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2753184 1) .g) (.mul (.rational 8240654 1) .v)) .g) (.mul (.rational 4855856
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 167323 1) .g)
    (.mul (.rational 757683 1) .v)) .g) (.mul (.rational 591135 1) (.pow .v 2))) (.pow .g 7))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 64013527 1) .f) (.add (.mul (.rational 332564387 1)
    .g) (.mul (.rational 66033627 1) .v))) .f) (.add (.mul (.add (.mul (.rational 751140534 1) .g)
    (.mul (.rational 321161850 1) .v)) .g) (.mul (.rational 17194432 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 968892648 1) .g) (.mul (.rational 671631989 1) .v)) .g)
    (.mul (.rational 78181089 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    788320780 1) .g) (.mul (.rational 791848406 1) .v)) .g) (.mul (.rational 150915626 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 421489989 1) .g) (.mul
    (.rational 580289086 1) .v)) .g) (.mul (.rational 161709222 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 149422786 1) .g) (.mul (.rational 275019806 1) .v))
    .g) (.mul (.rational 105751932 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 34496056 1) .g) (.mul (.rational 85034386 1) .v)) .g) (.mul (.rational
    43840563 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4918696
    1) .g) (.mul (.rational 16865338 1) .v)) .g) (.mul (.rational 11638971 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 384593 1) .g) (.mul (.rational 2036553 1)
    .v)) .g) (.mul (.rational 1958350 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12100 1) .g) (.mul (.rational 131980 1) .v)) .g) (.mul (.rational 199373 1)
    (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 31326140 1)
    .f) (.add (.mul (.rational 176329545 1) .g) (.mul (.rational 36062643 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 434018691 1) .g) (.mul (.rational 192502379 1) .v)) .g) (.mul
    (.rational 10569481 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 614178212
    1) .g) (.mul (.rational 445618707 1) .v)) .g) (.mul (.rational 53587712 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 552492682 1) .g) (.mul (.rational 587420969 1)
    .v)) .g) (.mul (.rational 116822955 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 329644287 1) .g) (.mul (.rational 487067300 1) .v)) .g) (.mul (.rational
    143611234 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    131917266 1) .g) (.mul (.rational 264916743 1) .v)) .g) (.mul (.rational 109862949 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 34897200 1) .g) (.mul
    (.rational 95633770 1) .v)) .g) (.mul (.rational 54560268 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5822271 1) .g) (.mul (.rational 22631432 1) .v)) .g)
    (.mul (.rational 17847337 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 549846 1) .g) (.mul (.rational 3360743 1) .v)) .g) (.mul (.rational 3821707 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 22040 1) .g) (.mul
    (.rational 281535 1) .v)) .g) (.mul (.rational 516377 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 9895 1) .v) .g) (.mul (.rational 39383 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11293410 1) .f) (.add
    (.mul (.rational 68459152 1) .g) (.mul (.rational 14447392 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 182343451 1) .g) (.mul (.rational 84006229 1) .v)) .g) (.mul (.rational
    4745022 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 280733476 1) .g) (.mul
    (.rational 213308259 1) .v)) .g) (.mul (.rational 26570266 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 276442424 1) .g) (.mul (.rational 310911661 1) .v)) .g)
    (.mul (.rational 64626110 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 181834673 1) .g) (.mul (.rational 287683718 1) .v)) .g) (.mul (.rational 89710928
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 80897845 1) .g)
    (.mul (.rational 176468494 1) .v)) .g) (.mul (.rational 78604366 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 24040598 1) .g) (.mul (.rational 72726144 1)
    .v)) .g) (.mul (.rational 45446806 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4567433 1) .g) (.mul (.rational 19930719 1) .v)) .g) (.mul (.rational
    17621430 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 500639 1)
    .g) (.mul (.rational 3489594 1) .v)) .g) (.mul (.rational 4558066 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 23975 1) .g) (.mul (.rational 353749 1) .v))
    .g) (.mul (.rational 760131 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 15745 1) .v) .g) (.mul (.rational 74160 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 3167 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 2829382 1) .f) (.add (.mul (.rational 18374987 1) .g) (.mul
    (.rational 4006298 1) .v))) .f) (.add (.mul (.add (.mul (.rational 52644480 1) .g) (.mul
    (.rational 25210612 1) .v)) .g) (.mul (.rational 1467912 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 87565784 1) .g) (.mul (.rational 69676251 1) .v)) .g) (.mul
    (.rational 9002714 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 93612988
    1) .g) (.mul (.rational 111252055 1) .v)) .g) (.mul (.rational 24177230 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 67214538 1) .g) (.mul (.rational
    113578224 1) .v)) .g) (.mul (.rational 37400694 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 32845112 1) .g) (.mul (.rational 77483184 1) .v)) .g) (.mul
    (.rational 36901703 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10799004 1) .g) (.mul (.rational 35824278 1) .v)) .g) (.mul (.rational 24300690 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2290266 1) .g) (.mul
    (.rational 11119843 1) .v)) .g) (.mul (.rational 10859110 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 283495 1) .g) (.mul (.rational 2229090 1) .v)) .g)
    (.mul (.rational 3274458 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15580 1) .g) (.mul (.rational 262282 1) .v)) .g) (.mul (.rational 643867 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 13835 1) .v) .g) (.mul (.rational
    75244 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 3978 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 440226 1)
    .f) (.add (.mul (.rational 3049116 1) .g) (.mul (.rational 687312 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 9347928 1) .g) (.mul (.rational 4654248 1) .v)) .g) (.mul (.rational
    279648 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 16698404 1) .g) (.mul
    (.rational 13907744 1) .v)) .g) (.mul (.rational 1864728 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 19245836 1) .g) (.mul (.rational 24134037 1) .v)) .g) (.mul
    (.rational 5479894 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    14960339 1) .g) (.mul (.rational 26927796 1) .v)) .g) (.mul (.rational 9342478 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7950710 1) .g) (.mul
    (.rational 20197367 1) .v)) .g) (.mul (.rational 10237590 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2857374 1) .g) (.mul (.rational 10331276 1) .v)) .g)
    (.mul (.rational 7547959 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 666218 1) .g) (.mul (.rational 3570331 1) .v)) .g) (.mul (.rational 3805962 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 91287 1) .g) (.mul
    (.rational 801900 1) .v)) .g) (.mul (.rational 1304000 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5602 1) .g) (.mul (.rational 106433 1) .v)) .g) (.mul
    (.rational 293022 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 6388
    1) .v) .g) (.mul (.rational 39371 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    2420 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 32052 1) .f) (.add (.mul (.rational 235824 1) .g) (.mul
    (.rational 54972 1) .v))) .f) (.add (.mul (.add (.mul (.rational 770156 1) .g) (.mul
    (.rational 398592 1) .v)) .g) (.mul (.rational 24720 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1469817 1) .g) (.mul (.rational 1280318 1) .v)) .g) (.mul (.rational
    178068 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1815444 1) .g) (.mul
    (.rational 2398156 1) .v)) .g) (.mul (.rational 568204 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1517157 1) .g) (.mul (.rational 2900884 1) .v)) .g)
    (.mul (.rational 1057654 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 869704 1) .g) (.mul (.rational 2369456 1) .v)) .g) (.mul (.rational 1272669 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 338291 1) .g) (.mul
    (.rational 1325692 1) .v)) .g) (.mul (.rational 1036210 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 85672 1) .g) (.mul (.rational 503148 1) .v)) .g)
    (.mul (.rational 579993 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12799 1) .g) (.mul (.rational 124536 1) .v)) .g) (.mul (.rational 221474 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 860 1) .g) (.mul (.rational
    18264 1) .v)) .g) (.mul (.rational 55599 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 1214 1) .v) .g) (.mul (.rational 8354 1) (.pow .v 2))) (.pow .g 9))) .f)
    (.mul (.mul (.rational 575 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0143

namespace FullHigh0144
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  9*SmallGap.PolarCoefficientsHigh2.c140 e f g v*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsHigh1.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsHigh1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    7*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2+
    2*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsHigh0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    1*SmallGap.PolarCoefficientsHigh0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_010_0 e g v+4*SmallGap.ReducedLayers.high0_010_1 e g
    v*e^1+6*SmallGap.ReducedLayers.high0_010_2 e g v*e^2+4*SmallGap.ReducedLayers.high0_010_3 e g
    v*e^3+1*SmallGap.ReducedLayers.high0_010_4 e g v*e^4+20*SmallGap.ReducedLayers.high0_001_0 e g
    v*e^1+40*SmallGap.ReducedLayers.high0_001_1 e g v*e^2+40*SmallGap.ReducedLayers.high0_001_2 e
    g v*e^3+20*SmallGap.ReducedLayers.high0_001_3 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_011_1 e g v+3*SmallGap.ReducedLayers.high1_011_2 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_011_3 e g v*e^2+1*SmallGap.ReducedLayers.high1_011_4 e g
    v*e^3+3*SmallGap.ReducedLayers.high1_002_0 e g v+12*SmallGap.ReducedLayers.high1_002_1 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_002_2 e g v*e^2+12*SmallGap.ReducedLayers.high1_002_3 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_002_4 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 49890 1)
    .e) (.add (.mul (.rational 442790 1) .f) (.add (.mul (.rational 545505 1) .g) (.mul (.rational
    88190 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 2428489 1) .f) (.add (.mul (.rational
    4069368 1) .g) (.mul (.rational 694788 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2456305
    1) .g) (.mul (.rational 825126 1) .v)) .g) (.mul (.rational 39800 1) (.pow .v 2))))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.rational 9190561 1) .f) (.add (.mul (.rational 19445779 1) .g)
    (.mul (.rational 3393044 1) .v))) .f) (.add (.mul (.add (.mul (.rational 15777237 1) .g) (.mul
    (.rational 5487007 1) .v)) .g) (.mul (.rational 282200 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6146335 1) .g) (.mul (.rational 3090012 1) .v)) .g) (.mul (.rational
    333230 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    25401142 1) .f) (.add (.mul (.rational 64844332 1) .g) (.mul (.rational 11460748 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 66002692 1) .g) (.mul (.rational 23495445 1) .v)) .g) (.mul
    (.rational 1236624 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 34268986 1)
    .g) (.mul (.rational 17957503 1) .v)) .g) (.mul (.rational 1988509 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9573682 1) .g) (.mul (.rational 6335573 1) .v)) .g)
    (.mul (.rational 1078038 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 52946972 1) .f) (.add (.mul (.rational 158154018 1)
    .g) (.mul (.rational 28310484 1) .v))) .f) (.add (.mul (.add (.mul (.rational 193424052 1) .g)
    (.mul (.rational 70438983 1) .v)) .g) (.mul (.rational 3739834 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 125294284 1) .g) (.mul (.rational 68266932 1) .v)) .g)
    (.mul (.rational 7643206 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    46332066 1) .g) (.mul (.rational 32692980 1) .v)) .g) (.mul (.rational 5665543 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9750088 1) .g) (.mul
    (.rational 8090494 1) .v)) .g) (.mul (.rational 1838372 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 84755673 1)
    .f) (.add (.mul (.rational 289775920 1) .g) (.mul (.rational 52729149 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 413465171 1) .g) (.mul (.rational 154628415 1) .v)) .g) (.mul
    (.rational 8258421 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 320537438 1)
    .g) (.mul (.rational 182167754 1) .v)) .g) (.mul (.rational 20594702 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 147133467 1) .g) (.mul (.rational 110848609 1) .v))
    .g) (.mul (.rational 19573668 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 40740218 1) .g) (.mul (.rational 37325114 1) .v)) .g) (.mul (.rational 8838701 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6585225 1) .g) (.mul
    (.rational 6916158 1) .v)) .g) (.mul (.rational 1913125 1) (.pow .v 2))) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    105072803 1) .f) (.add (.mul (.rational 404429979 1) .g) (.mul (.rational 75199295 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 659020563 1) .g) (.mul (.rational 254478071 1) .v)) .g)
    (.mul (.rational 13719308 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    594242129 1) .g) (.mul (.rational 354039015 1) .v)) .g) (.mul (.rational 40648404 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 325162471 1) .g) (.mul (.rational
    262514157 1) .v)) .g) (.mul (.rational 47639976 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 111225269 1) .g) (.mul (.rational 112635539 1) .v)) .g) (.mul
    (.rational 28108194 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23528451 1) .g) (.mul (.rational 28476703 1) .v)) .g) (.mul (.rational 8791143 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2909247 1) .g) (.mul
    (.rational 4137369 1) .v)) .g) (.mul (.rational 1409516 1) (.pow .v 2))) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 100918045 1) .f) (.add (.mul (.rational 431694904 1) .g) (.mul (.rational
    82473576 1) .v))) .f) (.add (.mul (.add (.mul (.rational 790496525 1) .g) (.mul (.rational
    316923409 1) .v)) .g) (.mul (.rational 17361331 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 812029640 1) .g) (.mul (.rational 509717597 1) .v)) .g) (.mul (.rational
    59948239 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 515148335 1) .g)
    (.mul (.rational 447255928 1) .v)) .g) (.mul (.rational 84316265 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 209214614 1) .g) (.mul (.rational 234347074
    1) .v)) .g) (.mul (.rational 62337532 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 54416947 1) .g) (.mul (.rational 75608444 1) .v)) .g) (.mul (.rational
    26159981 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8761684
    1) .g) (.mul (.rational 14974846 1) .v)) .g) (.mul (.rational 6328084 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 801666 1) .g) (.mul (.rational 1753153 1)
    .v)) .g) (.mul (.rational 873365 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    74516688 1) .f) (.add (.mul (.rational 350612057 1) .g) (.mul (.rational 69171846 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 712409228 1) .g) (.mul (.rational 297985263 1) .v)) .g)
    (.mul (.rational 16711437 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    820651031 1) .g) (.mul (.rational 544957796 1) .v)) .g) (.mul (.rational 66226519 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 591467748 1) .g) (.mul (.rational
    553562028 1) .v)) .g) (.mul (.rational 109423921 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 277523207 1) .g) (.mul (.rational 343596320 1) .v)) .g)
    (.mul (.rational 98172430 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 85343812 1) .g) (.mul (.rational 135346296 1) .v)) .g) (.mul (.rational 52383065 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 16815937 1) .g) (.mul
    (.rational 34094928 1) .v)) .g) (.mul (.rational 17243989 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1993816 1) .g) (.mul (.rational 5392226 1) .v)) .g)
    (.mul (.rational 3558744 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 123593 1) .g) (.mul (.rational 503122 1) .v)) .g) (.mul (.rational 461236 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 41563572 1) .f) (.add (.mul
    (.rational 213289358 1) .g) (.mul (.rational 43639449 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 476031537 1) .g) (.mul (.rational 208529495 1) .v)) .g) (.mul (.rational 12053441
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 607347152 1) .g) (.mul
    (.rational 427876661 1) .v)) .g) (.mul (.rational 54109096 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 489670072 1) .g) (.mul (.rational 494509085 1) .v)) .g)
    (.mul (.rational 103152319 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 260206916 1) .g) (.mul (.rational 355302538 1) .v)) .g) (.mul (.rational 109384246
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 92088830 1) .g)
    (.mul (.rational 165513268 1) .v)) .g) (.mul (.rational 71205810 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 21354042 1) .g) (.mul (.rational 50649141 1)
    .v)) .g) (.mul (.rational 29774310 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3082379 1) .g) (.mul (.rational 10080134 1) .v)) .g) (.mul (.rational 8178481
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 246272 1) .g)
    (.mul (.rational 1248518 1) .v)) .g) (.mul (.rational 1480633 1) (.pow .v 2))) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8000 1) .g) (.mul (.rational 85286 1) .v)) .g)
    (.mul (.rational 168855 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 16961943 1) .f) (.add (.mul (.rational 94261355 1) .g) (.mul (.rational
    20066739 1) .v))) .f) (.add (.mul (.add (.mul (.rational 229153316 1) .g) (.mul (.rational
    105411958 1) .v)) .g) (.mul (.rational 6312884 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 320586816 1) .g) (.mul (.rational 239986736 1) .v)) .g) (.mul (.rational
    31732306 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 285627557 1) .g)
    (.mul (.rational 311148176 1) .v)) .g) (.mul (.rational 68716332 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 169289723 1) .g) (.mul (.rational 254095469
    1) .v)) .g) (.mul (.rational 84254830 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 67598865 1) .g) (.mul (.rational 136633189 1) .v)) .g) (.mul (.rational
    64799766 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 17956113
    1) .g) (.mul (.rational 49149419 1) .v)) .g) (.mul (.rational 32814530 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3033197 1) .g) (.mul (.rational 11751895
    1) .v)) .g) (.mul (.rational 11197892 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 293039 1) .g) (.mul (.rational 1800478 1) .v)) .g) (.mul (.rational
    2579744 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 12168 1)
    .g) (.mul (.rational 159732 1) .v)) .g) (.mul (.rational 386651 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 6109 1) .v) .g) (.mul (.rational 33262 1) (.pow .v 2)))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4784059 1)
    .f) (.add (.mul (.rational 28617516 1) .g) (.mul (.rational 6353612 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 75247273 1) .g) (.mul (.rational 36408012 1) .v)) .g) (.mul (.rational
    2266985 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 114477754 1) .g) (.mul
    (.rational 91102911 1) .v)) .g) (.mul (.rational 12628606 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 111595625 1) .g) (.mul (.rational 130958305 1) .v)) .g)
    (.mul (.rational 30646403 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 72882586 1) .g) (.mul (.rational 119763967 1) .v)) .g) (.mul (.rational 42662702 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 32339701 1) .g) (.mul
    (.rational 72939098 1) .v)) .g) (.mul (.rational 37809414 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9646304 1) .g) (.mul (.rational 30091060 1) .v)) .g)
    (.mul (.rational 22413221 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1855268 1) .g) (.mul (.rational 8366461 1) .v)) .g) (.mul (.rational 9088480 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 208100 1) .g) (.mul
    (.rational 1515219 1) .v)) .g) (.mul (.rational 2521146 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10334 1) .g) (.mul (.rational 162772 1) .v)) .g)
    (.mul (.rational 462473 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    7879 1) .v) .g) (.mul (.rational 50513 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 2433 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 834354 1) .f) (.add (.mul (.rational 5344320 1) .g) (.mul
    (.rational 1239282 1) .v))) .f) (.add (.mul (.add (.mul (.rational 15107643 1) .g) (.mul
    (.rational 7694370 1) .v)) .g) (.mul (.rational 499104 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 24818985 1) .g) (.mul (.rational 20989699 1) .v)) .g) (.mul (.rational
    3053196 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 26253076 1) .g)
    (.mul (.rational 33121280 1) .v)) .g) (.mul (.rational 8206806 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 18706215 1) .g) (.mul (.rational 33506656 1) .v))
    .g) (.mul (.rational 12776906 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9111892 1) .g) (.mul (.rational 22761515 1) .v)) .g) (.mul (.rational 12795641 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3005307 1) .g) (.mul
    (.rational 10565110 1) .v)) .g) (.mul (.rational 8660539 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 644850 1) .g) (.mul (.rational 3333986 1) .v)) .g)
    (.mul (.rational 4046819 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 81637 1) .g) (.mul (.rational 691546 1) .v)) .g) (.mul (.rational 1303384 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4649 1) .g) (.mul
    (.rational 86057 1) .v)) .g) (.mul (.rational 279847 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 4915 1) .v) .g) (.mul (.rational 36351 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 2159 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 67866 1) .f) (.add (.mul (.rational
    463350 1) .g) (.mul (.rational 112308 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1400801
    1) .g) (.mul (.rational 751020 1) .v)) .g) (.mul (.rational 50790 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2469934 1) .g) (.mul (.rational 2217678 1) .v)) .g) (.mul
    (.rational 338454 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2815003
    1) .g) (.mul (.rational 3808842 1) .v)) .g) (.mul (.rational 997635 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2170120 1) .g) (.mul (.rational 4218526 1)
    .v)) .g) (.mul (.rational 1715494 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1148817 1) .g) (.mul (.rational 3156530 1) .v)) .g) (.mul (.rational 1911536
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 413814 1) .g)
    (.mul (.rational 1623414 1) .v)) .g) (.mul (.rational 1449542 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 97511 1) .g) (.mul (.rational 570654 1) .v)) .g)
    (.mul (.rational 763216 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13646 1) .g) (.mul (.rational 132446 1) .v)) .g) (.mul (.rational 278098 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 866 1) .g) (.mul (.rational
    18522 1) .v)) .g) (.mul (.rational 67766 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 1196 1) .v) .g) (.mul (.rational 10044 1) (.pow .v 2))) (.pow .g 9))) .f)
    (.mul (.mul (.rational 689 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0144

namespace FullHigh0145
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsHigh2.c230 e f g v*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsHigh2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    7*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    2*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsHigh1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    6*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsHigh1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_010_1 e g v+4*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^1+6*SmallGap.ReducedLayers.high0_010_3 e g v*e^2+4*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^3+4*SmallGap.ReducedLayers.high0_001_0 e g v+20*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^1+40*SmallGap.ReducedLayers.high0_001_2 e g v*e^2+40*SmallGap.ReducedLayers.high0_001_3 e
    g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_011_2 e g v+3*SmallGap.ReducedLayers.high1_011_3 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_011_4 e g v*e^2+1*SmallGap.ReducedLayers.high1_011_5 e g
    v*e^3+3*SmallGap.ReducedLayers.high1_002_1 e g v+12*SmallGap.ReducedLayers.high1_002_2 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_002_3 e g v*e^2+12*SmallGap.ReducedLayers.high1_002_4 e
    g v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 41082 1) .e) (.add
    (.mul (.rational 356197 1) .f) (.add (.mul (.rational 436773 1) .g) (.mul (.rational 71602 1)
    .v)))) .e) (.add (.mul (.add (.mul (.rational 1898227 1) .f) (.add (.mul (.rational 3161915 1)
    .g) (.mul (.rational 543605 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1899630 1) .g)
    (.mul (.rational 631768 1) .v)) .g) (.mul (.rational 32160 1) (.pow .v 2))))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 6930388 1) .f) (.add (.mul (.rational 14558034 1) .g) (.mul
    (.rational 2545013 1) .v))) .f) (.add (.mul (.add (.mul (.rational 11739216 1) .g) (.mul
    (.rational 4013507 1) .v)) .g) (.mul (.rational 218473 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4556210 1) .g) (.mul (.rational 2180047 1) .v)) .g) (.mul (.rational
    251194 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    18312810 1) .f) (.add (.mul (.rational 46353187 1) .g) (.mul (.rational 8186140 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 46825649 1) .g) (.mul (.rational 16330493 1) .v)) .g) (.mul
    (.rational 911323 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 24178337 1)
    .g) (.mul (.rational 12017217 1) .v)) .g) (.mul (.rational 1420004 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6740809 1) .g) (.mul (.rational 4010923 1) .v)) .g)
    (.mul (.rational 730907 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 36091340 1) .f) (.add (.mul (.rational 106756138 1)
    .g) (.mul (.rational 19098714 1) .v))) .f) (.add (.mul (.add (.mul (.rational 129396761 1) .g)
    (.mul (.rational 46196022 1) .v)) .g) (.mul (.rational 2604511 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 83215415 1) .g) (.mul (.rational 43106409 1) .v)) .g) (.mul
    (.rational 5146514 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 30641661
    1) .g) (.mul (.rational 19571143 1) .v)) .g) (.mul (.rational 3617807 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6448521 1) .g) (.mul (.rational 4474397
    1) .v)) .g) (.mul (.rational 1065424 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 53881410 1) .f) (.add (.mul
    (.rational 182196281 1) .g) (.mul (.rational 33245499 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 257282142 1) .g) (.mul (.rational 94790330 1) .v)) .g) (.mul (.rational 5392090 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 197691440 1) .g) (.mul (.rational
    107682734 1) .v)) .g) (.mul (.rational 13012077 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 90173996 1) .g) (.mul (.rational 62396567 1) .v)) .g) (.mul (.rational
    11779132 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 24906201
    1) .g) (.mul (.rational 19620048 1) .v)) .g) (.mul (.rational 4905035 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4034790 1) .g) (.mul (.rational 3291183
    1) .v)) .g) (.mul (.rational 901816 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 61237445 1) .f)
    (.add (.mul (.rational 232837797 1) .g) (.mul (.rational 43692873 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 374983795 1) .g) (.mul (.rational 143902739 1) .v)) .g) (.mul
    (.rational 8312159 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 334596083 1)
    .g) (.mul (.rational 193552068 1) .v)) .g) (.mul (.rational 23920846 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 181582378 1) .g) (.mul (.rational 137452376 1) .v))
    .g) (.mul (.rational 26940601 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 61811200 1) .g) (.mul (.rational 55742314 1) .v)) .g) (.mul (.rational 14994126 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 13069238 1) .g) (.mul
    (.rational 13082266 1) .v)) .g) (.mul (.rational 4269772 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1622608 1) .g) (.mul (.rational 1725557 1) .v)) .g)
    (.mul (.rational 576802 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 52742912 1) .f)
    (.add (.mul (.rational 222616630 1) .g) (.mul (.rational 43308236 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 402363865 1) .g) (.mul (.rational 162217875 1) .v)) .g) (.mul
    (.rational 9609845 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 408389877 1)
    .g) (.mul (.rational 253026724 1) .v)) .g) (.mul (.rational 32411448 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 256486875 1) .g) (.mul (.rational 213932982 1) .v))
    .g) (.mul (.rational 44287676 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 103439454 1) .g) (.mul (.rational 107161984 1) .v)) .g) (.mul (.rational 31593263
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 26827931 1) .g)
    (.mul (.rational 32778198 1) .v)) .g) (.mul (.rational 12701841 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4327219 1) .g) (.mul (.rational 6121083 1) .v))
    .g) (.mul (.rational 2942445 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 398067 1) .g) (.mul (.rational 678297 1) .v)) .g) (.mul (.rational 400928 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 33904835 1) .f) (.add (.mul (.rational
    157235279 1) .g) (.mul (.rational 31931434 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    314961087 1) .g) (.mul (.rational 134321394 1) .v)) .g) (.mul (.rational 8243616 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 357975015 1) .g) (.mul (.rational 239002556
    1) .v)) .g) (.mul (.rational 32106815 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 254997211 1) .g) (.mul (.rational 235254494 1) .v)) .g) (.mul (.rational 52079589
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 118587729 1) .g)
    (.mul (.rational 140950352 1) .v)) .g) (.mul (.rational 45908762 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 36290200 1) .g) (.mul (.rational 53484864 1)
    .v)) .g) (.mul (.rational 24217887 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7150306 1) .g) (.mul (.rational 13024047 1) .v)) .g) (.mul (.rational 8032065
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 851724 1) .g)
    (.mul (.rational 2019451 1) .v)) .g) (.mul (.rational 1740230 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 53152 1) .g) (.mul (.rational 189641 1) .v)) .g)
    (.mul (.rational 250508 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 15784383 1) .f) (.add (.mul (.rational 79754324 1) .g) (.mul (.rational 16998510 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 175276800 1) .g) (.mul (.rational 79457106 1)
    .v)) .g) (.mul (.rational 5093068 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 220355304 1) .g) (.mul (.rational 159097454 1) .v)) .g) (.mul (.rational 22596554
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 175328934 1) .g) (.mul
    (.rational 179038276 1) .v)) .g) (.mul (.rational 42651366 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 92191091 1) .g) (.mul (.rational 125116737 1) .v))
    .g) (.mul (.rational 45002028 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32413572 1) .g) (.mul (.rational 56789228 1) .v)) .g) (.mul (.rational 29470534 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7506076 1) .g) (.mul
    (.rational 17064568 1) .v)) .g) (.mul (.rational 12661525 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1088358 1) .g) (.mul (.rational 3393137 1) .v)) .g)
    (.mul (.rational 3693534 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 87808 1) .g) (.mul (.rational 431365 1) .v)) .g) (.mul (.rational 735637 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2886 1) .g) (.mul
    (.rational 31109 1) .v)) .g) (.mul (.rational 93620 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 5034598 1) .f) (.add (.mul (.rational 27521210
    1) .g) (.mul (.rational 6179656 1) .v))) .f) (.add (.mul (.add (.mul (.rational 65810465 1)
    .g) (.mul (.rational 31806070 1) .v)) .g) (.mul (.rational 2140768 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 90613569 1) .g) (.mul (.rational 70842872 1) .v)) .g) (.mul
    (.rational 10683706 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    79568298 1) .g) (.mul (.rational 89784406 1) .v)) .g) (.mul (.rational 23049288 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 46599726 1) .g) (.mul
    (.rational 71724429 1) .v)) .g) (.mul (.rational 28345446 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 18461190 1) .g) (.mul (.rational 37876397 1) .v)) .g)
    (.mul (.rational 22128225 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4892638 1) .g) (.mul (.rational 13510000 1) .v)) .g) (.mul (.rational 11594380 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 830385 1) .g) (.mul
    (.rational 3260550 1) .v)) .g) (.mul (.rational 4200899 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 81237 1) .g) (.mul (.rational 517295 1) .v)) .g)
    (.mul (.rational 1054124 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3444 1) .g) (.mul (.rational 48865 1) .v)) .g) (.mul (.rational 174319 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2036 1) .v) .g) (.mul (.rational
    16456 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 985608 1) .f) (.add (.mul (.rational 5793840 1) .g) (.mul (.rational 1373904
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 14969823 1) .g) (.mul (.rational 7724070 1)
    .v)) .g) (.mul (.rational 547506 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22389954 1) .g) (.mul (.rational 18948376 1) .v)) .g) (.mul (.rational 3038364 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 21486846 1) .g) (.mul
    (.rational 26706840 1) .v)) .g) (.mul (.rational 7376990 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 13850160 1) .g) (.mul (.rational 23993220 1) .v)) .g)
    (.mul (.rational 10349746 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6090793 1) .g) (.mul (.rational 14428103 1) .v)) .g) (.mul (.rational 9351739 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1811433 1) .g) (.mul
    (.rational 5937970 1) .v)) .g) (.mul (.rational 5747952 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 350139 1) .g) (.mul (.rational 1675650 1) .v)) .g)
    (.mul (.rational 2468402 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 39853 1) .g) (.mul (.rational 315448 1) .v)) .g) (.mul (.rational 740643 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2031 1) .g) (.mul
    (.rational 36169 1) .v)) .g) (.mul (.rational 149050 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 1914 1) .v) .g) (.mul (.rational 17935 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 953 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 89424 1) .f) (.add (.mul (.rational
    562338 1) .g) (.mul (.rational 141012 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1560494
    1) .g) (.mul (.rational 859824 1) .v)) .g) (.mul (.rational 64260 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2517792 1) .g) (.mul (.rational 2303166 1) .v)) .g) (.mul
    (.rational 392526 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2619222
    1) .g) (.mul (.rational 3571728 1) .v)) .g) (.mul (.rational 1058552 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1840174 1) .g) (.mul (.rational 3560496 1)
    .v)) .g) (.mul (.rational 1665716 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 887596 1) .g) (.mul (.rational 2396982 1) .v)) .g) (.mul (.rational 1704624
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 291732 1) .g)
    (.mul (.rational 1114060 1) .v)) .g) (.mul (.rational 1196821 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 62918 1) .g) (.mul (.rational 357812 1) .v)) .g)
    (.mul (.rational 590899 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8092 1) .g) (.mul (.rational 77220 1) .v)) .g) (.mul (.rational 204950 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 474 1) .g) (.mul (.rational
    10246 1) .v)) .g) (.mul (.rational 48122 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 638 1) .v) .g) (.mul (.rational 6899 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 455 1) (.pow .v 2)) (.pow .g 10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0145

namespace FullHigh0146
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  7*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsHigh2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    6*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsHigh2.c410 e f g v*e*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_010_2 e g v+4*SmallGap.ReducedLayers.high0_010_3 e g
    v*e^1+6*SmallGap.ReducedLayers.high0_010_4 e g v*e^2+4*SmallGap.ReducedLayers.high0_001_1 e g
    v+20*SmallGap.ReducedLayers.high0_001_2 e g v*e^1+40*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_011_3 e g v+3*SmallGap.ReducedLayers.high1_011_4 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_011_5 e g v*e^2+3*SmallGap.ReducedLayers.high1_002_2 e g
    v+12*SmallGap.ReducedLayers.high1_002_3 e g v*e^1+18*SmallGap.ReducedLayers.high1_002_4 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21190 1) .e) (.add (.mul (.rational
    180220 1) .f) (.add (.mul (.rational 220125 1) .g) (.mul (.rational 36398 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 936294 1) .f) (.add (.mul (.rational 1551320 1) .g) (.mul
    (.rational 267210 1) .v))) .f) (.add (.mul (.add (.mul (.rational 928922 1) .g) (.mul
    (.rational 303476 1) .v)) .g) (.mul (.rational 16280 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 3304627 1) .f) (.add (.mul (.rational 6894266 1) .g) (.mul
    (.rational 1201974 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5531523 1) .g) (.mul
    (.rational 1843814 1) .v)) .g) (.mul (.rational 106392 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2143516 1) .g) (.mul (.rational 960838 1) .v)) .g) (.mul (.rational
    118930 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    8350885 1) .f) (.add (.mul (.rational 20958333 1) .g) (.mul (.rational 3684716 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 21027833 1) .g) (.mul (.rational 7127270 1) .v)) .g) (.mul
    (.rational 423595 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 10816909 1)
    .g) (.mul (.rational 5014886 1) .v)) .g) (.mul (.rational 637849 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3018638 1) .g) (.mul (.rational 1557894 1) .v)) .g)
    (.mul (.rational 309307 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 15526002 1) .f) (.add (.mul (.rational 45455464 1)
    .g) (.mul (.rational 8111910 1) .v))) .f) (.add (.mul (.add (.mul (.rational 54614392 1) .g)
    (.mul (.rational 18993712 1) .v)) .g) (.mul (.rational 1145759 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 34910408 1) .g) (.mul (.rational 16934126 1) .v)) .g) (.mul
    (.rational 2181963 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 12830786
    1) .g) (.mul (.rational 7170170 1) .v)) .g) (.mul (.rational 1442600 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2710278 1) .g) (.mul (.rational 1452412 1)
    .v)) .g) (.mul (.rational 373473 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21488718 1) .f) (.add (.mul
    (.rational 71788493 1) .g) (.mul (.rational 13149750 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 100281800 1) .g) (.mul (.rational 36288664 1) .v)) .g) (.mul (.rational 2224586 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 76403302 1) .g) (.mul (.rational
    39454608 1) .v)) .g) (.mul (.rational 5183149 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 34682016 1) .g) (.mul (.rational 21457334 1) .v)) .g) (.mul (.rational
    4446246 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9580215 1)
    .g) (.mul (.rational 6099332 1) .v)) .g) (.mul (.rational 1678178 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1560746 1) .g) (.mul (.rational 850286 1)
    .v)) .g) (.mul (.rational 238998 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22133568 1) .f) (.add
    (.mul (.rational 82988844 1) .g) (.mul (.rational 15795234 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 131929084 1) .g) (.mul (.rational 50399808 1) .v)) .g) (.mul (.rational
    3174560 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 116425608 1) .g) (.mul
    (.rational 65090658 1) .v)) .g) (.mul (.rational 8873582 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 62682474 1) .g) (.mul (.rational 43759240 1) .v)) .g) (.mul
    (.rational 9608707 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    21258776 1) .g) (.mul (.rational 16402888 1) .v)) .g) (.mul (.rational 5047963 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4500010 1) .g) (.mul
    (.rational 3407946 1) .v)) .g) (.mul (.rational 1306102 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 561404 1) .g) (.mul (.rational 364880 1) .v)) .g)
    (.mul (.rational 145043 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16755891 1) .f)
    (.add (.mul (.rational 69609990 1) .g) (.mul (.rational 13919706 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 123915779 1) .g) (.mul (.rational 50591832 1) .v)) .g) (.mul (.rational
    3322067 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 124056475 1) .g) (.mul
    (.rational 76060722 1) .v)) .g) (.mul (.rational 10970932 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 77044171 1) .g) (.mul (.rational 61402060 1) .v)) .g) (.mul
    (.rational 14645590 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 30835042 1) .g) (.mul (.rational 28977490 1) .v)) .g) (.mul (.rational 10204477 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7969121 1) .g) (.mul
    (.rational 8200774 1) .v)) .g) (.mul (.rational 4039573 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1284699 1) .g) (.mul (.rational 1386472 1) .v)) .g)
    (.mul (.rational 954030 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 117916 1) .g) (.mul (.rational 136306 1) .v)) .g) (.mul (.rational 145044 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9063516 1) .f) (.add (.mul (.rational
    41292768 1) .g) (.mul (.rational 8750772 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    81280260 1) .g) (.mul (.rational 35778240 1) .v)) .g) (.mul (.rational 2480526 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 90869184 1) .g) (.mul (.rational 61576500
    1) .v)) .g) (.mul (.rational 9533352 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 63792182 1) .g) (.mul (.rational 58282916 1) .v)) .g) (.mul (.rational 15305518 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 29321896 1) .g) (.mul
    (.rational 33363550 1) .v)) .g) (.mul (.rational 13467668 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8899028 1) .g) (.mul (.rational 12036360 1) .v)) .g)
    (.mul (.rational 7233999 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1743224 1) .g) (.mul (.rational 2791310 1) .v)) .g) (.mul (.rational 2539401 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 206078 1) .g) (.mul
    (.rational 418698 1) .v)) .g) (.mul (.rational 613702 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12581 1) .g) (.mul (.rational 39086 1) .v)) .g) (.mul
    (.rational 101159 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3318366 1) .f) (.add (.mul (.rational 16440930 1) .g) (.mul (.rational 3714276 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 35424552 1) .g) (.mul (.rational 16899432 1) .v)) .g) (.mul
    (.rational 1247376 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 43683694 1)
    .g) (.mul (.rational 32820920 1) .v)) .g) (.mul (.rational 5494254 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 34137634 1) .g) (.mul (.rational 35699612 1) .v)) .g)
    (.mul (.rational 10353128 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17669097 1) .g) (.mul (.rational 24056082 1) .v)) .g) (.mul (.rational 11027650 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6132168 1) .g) (.mul
    (.rational 10541920 1) .v)) .g) (.mul (.rational 7437130 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1404788 1) .g) (.mul (.rational 3087336 1) .v)) .g)
    (.mul (.rational 3390369 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 201268 1) .g) (.mul (.rational 611254 1) .v)) .g) (.mul (.rational 1083110 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 15881 1) .g) (.mul
    (.rational 79574 1) .v)) .g) (.mul (.rational 239272 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 492 1) .g) (.mul (.rational 5958 1) .v)) .g) (.mul
    (.rational 33122 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 737424 1) .f) (.add (.mul (.rational 3945456 1) .g) (.mul (.rational 953424 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 9228828 1) .g) (.mul (.rational 4781664 1) .v))
    .g) (.mul (.rational 377172 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    12429360 1) .g) (.mul (.rational 10350516 1) .v)) .g) (.mul (.rational 1876284 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10683396 1) .g) (.mul (.rational
    12722160 1) .v)) .g) (.mul (.rational 4060794 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 6134260 1) .g) (.mul (.rational 9853778 1) .v)) .g) (.mul
    (.rational 5065308 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2388132 1) .g) (.mul (.rational 5064940 1) .v)) .g) (.mul (.rational 4080398 1) (.pow .v 2)))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 623320 1) .g) (.mul (.rational
    1778738 1) .v)) .g) (.mul (.rational 2256594 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 104191 1) .g) (.mul (.rational 431632 1) .v)) .g) (.mul
    (.rational 881999 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9982 1) .g) (.mul (.rational 70638 1) .v)) .g) (.mul (.rational 241101 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 407 1) .g) (.mul (.rational 7004 1) .v))
    .g) (.mul (.rational 43052 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 306 1) .v) .g) (.mul (.rational 4291 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 75168 1) .f) (.add (.mul (.rational
    431712 1) .g) (.mul (.rational 111744 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1088706
    1) .g) (.mul (.rational 612576 1) .v)) .g) (.mul (.rational 51660 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1588470 1) .g) (.mul (.rational 1462236 1) .v)) .g) (.mul
    (.rational 286452 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1487301
    1) .g) (.mul (.rational 2002800 1) .v)) .g) (.mul (.rational 699360 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 936372 1) .g) (.mul (.rational 1749822 1)
    .v)) .g) (.mul (.rational 996666 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 403005 1) .g) (.mul (.rational 1028292 1) .v)) .g) (.mul (.rational 928221 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 117591 1) .g) (.mul
    (.rational 418422 1) .v)) .g) (.mul (.rational 598854 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 22336 1) .g) (.mul (.rational 119076 1) .v)) .g) (.mul
    (.rational 274806 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2495 1) .g) (.mul (.rational 23162 1) .v)) .g) (.mul (.rational 89109 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 124 1) .g) (.mul (.rational 2800 1) .v))
    .g) (.mul (.rational 19408 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 158 1) .v) .g) (.mul (.rational 2519 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 145 1) (.pow .v 2)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0146

namespace FullHigh0147
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  6*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_010_3 e g v+4*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^1+4*SmallGap.ReducedLayers.high0_001_2 e g v+20*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_011_4 e g v+3*SmallGap.ReducedLayers.high1_011_5 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_002_3 e g v+12*SmallGap.ReducedLayers.high1_002_4 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 6258 1) .e) (.add (.mul (.rational 52413 1) .f)
    (.add (.mul (.rational 63819 1) .g) (.mul (.rational 10590 1) .v)))) .e) (.add (.mul (.add
    (.mul (.rational 266349 1) .f) (.add (.mul (.rational 439277 1) .g) (.mul (.rational 75432 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 262584 1) .g) (.mul (.rational 83604 1) .v)) .g)
    (.mul (.rational 4720 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    910914 1) .f) (.add (.mul (.rational 1888343 1) .g) (.mul (.rational 326802 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 1509788 1) .g) (.mul (.rational 486358 1) .v)) .g) (.mul
    (.rational 29799 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 585811 1) .g)
    (.mul (.rational 241678 1) .v)) .g) (.mul (.rational 32346 1) (.pow .v 2))) .g))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2203011 1) .f) (.add (.mul (.rational
    5482856 1) .g) (.mul (.rational 956178 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5470556
    1) .g) (.mul (.rational 1786680 1) .v)) .g) (.mul (.rational 113622 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2811342 1) .g) (.mul (.rational 1192572 1) .v)) .g)
    (.mul (.rational 164966 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    788961 1) .g) (.mul (.rational 337088 1) .v)) .g) (.mul (.rational 74782 1) (.pow .v 2)))
    (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3856716 1) .f) (.add (.mul (.rational 11172077 1) .g) (.mul (.rational 1986840 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 13317520 1) .g) (.mul (.rational 4484470 1) .v)) .g) (.mul
    (.rational 291788 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 8482554 1)
    .g) (.mul (.rational 3789052 1) .v)) .g) (.mul (.rational 534478 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3126014 1) .g) (.mul (.rational 1464444 1) .v)) .g)
    (.mul (.rational 330256 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 667307 1) .g) (.mul (.rational 243136 1) .v)) .g) (.mul (.rational 72278 1) (.pow
    .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 4918620 1) .f) (.add (.mul (.rational 16218096 1) .g) (.mul (.rational
    2992692 1) .v))) .f) (.add (.mul (.add (.mul (.rational 22417317 1) .g) (.mul (.rational
    7961136 1) .v)) .g) (.mul (.rational 533112 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16968912 1) .g) (.mul (.rational 8227558 1) .v)) .g) (.mul (.rational 1200284
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7697678 1) .g) (.mul
    (.rational 4134280 1) .v)) .g) (.mul (.rational 977474 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2140712 1) .g) (.mul (.rational 1012344 1) .v)) .g)
    (.mul (.rational 333754 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 353871 1) .g) (.mul (.rational 93256 1) .v)) .g) (.mul (.rational 33402 1) (.pow .v
    2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 4531332 1) .f) (.add (.mul (.rational 16723518 1) .g) (.mul
    (.rational 3259836 1) .v))) .f) (.add (.mul (.add (.mul (.rational 26228178 1) .g) (.mul
    (.rational 10040700 1) .v)) .g) (.mul (.rational 704966 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 22918923 1) .g) (.mul (.rational 12390712 1) .v)) .g) (.mul
    (.rational 1924128 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 12283420
    1) .g) (.mul (.rational 7816922 1) .v)) .g) (.mul (.rational 2028036 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4175242 1) .g) (.mul (.rational 2651516 1)
    .v)) .g) (.mul (.rational 1035178 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 892058 1) .g) (.mul (.rational 455788 1) .v)) .g) (.mul (.rational 263160 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 112861 1) .g) (.mul
    (.rational 28328 1) .v)) .g) (.mul (.rational 31758 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2938806 1) .f) (.add (.mul (.rational 11982060 1) .g) (.mul (.rational 2504484 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 20972670 1) .g) (.mul (.rational 8802480 1) .v))
    .g) (.mul (.rational 661812 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    20710220 1) .g) (.mul (.rational 12712420 1) .v)) .g) (.mul (.rational 2159388 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 12745479 1) .g) (.mul (.rational
    9762368 1) .v)) .g) (.mul (.rational 2869896 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5084828 1) .g) (.mul (.rational 4319338 1) .v)) .g) (.mul
    (.rational 2029920 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1317710 1) .g) (.mul (.rational 1121880 1) .v)) .g) (.mul (.rational 854462 1) (.pow .v 2)))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 213590 1) .g) (.mul (.rational
    168912 1) .v)) .g) (.mul (.rational 234806 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 19565 1) .g) (.mul (.rational 14080 1) .v)) .g) (.mul (.rational
    45442 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1272924 1) .f) (.add
    (.mul (.rational 5673786 1) .g) (.mul (.rational 1284960 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 10940568 1) .g) (.mul (.rational 5087196 1) .v)) .g) (.mul (.rational 415968 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 12011302 1) .g) (.mul (.rational
    8442824 1) .v)) .g) (.mul (.rational 1594212 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8311512 1) .g) (.mul (.rational 7671820 1) .v)) .g) (.mul (.rational 2584560
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3783497 1) .g)
    (.mul (.rational 4202440 1) .v)) .g) (.mul (.rational 2352024 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1142032 1) .g) (.mul (.rational 1454302 1) .v))
    .g) (.mul (.rational 1360044 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 222504 1) .g) (.mul (.rational 329004 1) .v)) .g) (.mul (.rational 540406 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 25829 1) .g) (.mul
    (.rational 49880 1) .v)) .g) (.mul (.rational 151904 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1466 1) .g) (.mul (.rational 4834 1) .v)) .g) (.mul
    (.rational 28298 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    330480 1) .f) (.add (.mul (.rational 1596672 1) .g) (.mul (.rational 393984 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 3356514 1) .g) (.mul (.rational 1736640 1) .v)) .g) (.mul
    (.rational 155520 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4044420 1)
    .g) (.mul (.rational 3258252 1) .v)) .g) (.mul (.rational 686880 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3096270 1) .g) (.mul (.rational 3417360 1) .v)) .g)
    (.mul (.rational 1315308 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1574980 1) .g) (.mul (.rational 2223320 1) .v)) .g) (.mul (.rational 1455012 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 538329 1) .g) (.mul
    (.rational 948880 1) .v)) .g) (.mul (.rational 1050432 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 121052 1) .g) (.mul (.rational 276334 1) .v)) .g)
    (.mul (.rational 528676 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16707 1) .g) (.mul (.rational 55976 1) .v)) .g) (.mul (.rational 189002 1) (.pow .v
    2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1191 1) .g) (.mul (.rational
    7524 1) .v)) .g) (.mul (.rational 45994 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25 1) .g) (.mul (.rational 548 1) .v)) .g) (.mul (.rational 6774 1)
    (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 38880 1)
    .f) (.add (.mul (.rational 202176 1) .g) (.mul (.rational 54432 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 459396 1) .g) (.mul (.rational 264384 1) .v)) .g) (.mul (.rational 25920 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 601230 1) .g) (.mul (.rational
    552768 1) .v)) .g) (.mul (.rational 129600 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 502740 1) .g) (.mul (.rational 655380 1) .v)) .g) (.mul (.rational 285312 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 281204 1) .g) (.mul
    (.rational 490588 1) .v)) .g) (.mul (.rational 368508 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 106602 1) .g) (.mul (.rational 245672 1) .v)) .g) (.mul
    (.rational 314314 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    26903 1) .g) (.mul (.rational 85384 1) .v)) .g) (.mul (.rational 187848 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4242 1) .g) (.mul (.rational 20834 1)
    .v)) .g) (.mul (.rational 79972 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 357 1) .g) (.mul (.rational 3402 1) .v)) .g) (.mul (.rational 23538 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10 1) .g) (.mul (.rational
    314 1) .v)) .g) (.mul (.rational 4401 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 10 1) .v) .g) (.mul (.rational 440 1) (.pow .v 2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0147

namespace FullHigh0148
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  5*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_010_4 e g v+4*SmallGap.ReducedLayers.high0_001_3 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_011_5 e g v+3*SmallGap.ReducedLayers.high1_002_4 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 810 1) .e) (.add (.mul (.rational 6705 1) .f) (.add (.mul
    (.rational 8145 1) .g) (.mul (.rational 1350 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    33435 1) .f) (.add (.mul (.rational 54930 1) .g) (.mul (.rational 9360 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 32835 1) .g) (.mul (.rational 10110 1) .v)) .g) (.mul (.rational
    600 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 111060 1) .f) (.add
    (.mul (.rational 228900 1) .g) (.mul (.rational 39150 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 182700 1) .g) (.mul (.rational 56370 1) .v)) .g) (.mul (.rational 3675 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 71220 1) .g) (.mul (.rational 26520 1) .v))
    .g) (.mul (.rational 3870 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 257265 1) .f) (.add (.mul (.rational 635100 1) .g) (.mul (.rational 109530 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 631260 1) .g) (.mul (.rational 196950 1) .v)) .g)
    (.mul (.rational 13470 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 325290
    1) .g) (.mul (.rational 123570 1) .v)) .g) (.mul (.rational 18825 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 92355 1) .g) (.mul (.rational 30720 1) .v)) .g) (.mul
    (.rational 7920 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 423270 1) .f) (.add (.mul (.rational 1212840 1) .g) (.mul
    (.rational 215100 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1436580 1) .g) (.mul
    (.rational 466200 1) .v)) .g) (.mul (.rational 33000 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 915390 1) .g) (.mul (.rational 370290 1) .v)) .g) (.mul (.rational
    58140 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 340590 1) .g) (.mul
    (.rational 127050 1) .v)) .g) (.mul (.rational 33525 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 74220 1) .g) (.mul (.rational 14460 1) .v)) .g) (.mul
    (.rational 5970 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 493920 1) .f) (.add (.mul (.rational 1605690 1) .g)
    (.mul (.rational 300780 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2198655 1) .g) (.mul
    (.rational 769140 1) .v)) .g) (.mul (.rational 57120 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1660320 1) .g) (.mul (.rational 752550 1) .v)) .g) (.mul (.rational
    124980 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 758580 1) .g) (.mul
    (.rational 345330 1) .v)) .g) (.mul (.rational 98070 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 214950 1) .g) (.mul (.rational 68430 1) .v)) .g) (.mul
    (.rational 31575 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    36645 1) .g) (.mul (.rational 900 1) .v)) .g) (.mul (.rational 2640 1) (.pow .v 2))) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 400140 1) .f) (.add (.mul (.rational 1450350 1) .g) (.mul (.rational 294660 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 2245050 1) .g) (.mul (.rational 874800 1) .v))
    .g) (.mul (.rational 70290 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1950480 1) .g) (.mul (.rational 1032480 1) .v)) .g) (.mul (.rational 189720 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1049700 1) .g) (.mul (.rational 614040 1)
    .v)) .g) (.mul (.rational 200460 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 362670 1) .g) (.mul (.rational 190230 1) .v)) .g) (.mul (.rational 106560 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 79770 1) .g) (.mul
    (.rational 27030 1) .v)) .g) (.mul (.rational 31575 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10500 1) .g) (.mul (.rational 360 1) .v)) .g) (.mul
    (.rational 5970 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 214110 1) .f) (.add (.mul
    (.rational 853380 1) .g) (.mul (.rational 192060 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1467720 1) .g) (.mul (.rational 652140 1) .v)) .g) (.mul (.rational 58500 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1434990 1) .g) (.mul (.rational 908700
    1) .v)) .g) (.mul (.rational 191790 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 883425 1) .g) (.mul (.rational 673920 1) .v)) .g) (.mul (.rational 262560 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 357060 1) .g) (.mul
    (.rational 290610 1) .v)) .g) (.mul (.rational 200460 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 94980 1) .g) (.mul (.rational 76230 1) .v)) .g) (.mul
    (.rational 98070 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    15960 1) .g) (.mul (.rational 12810 1) .v)) .g) (.mul (.rational 33525 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1515 1) .g) (.mul (.rational 1440 1) .v))
    .g) (.mul (.rational 7920 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 68040
    1) .f) (.add (.mul (.rational 294840 1) .g) (.mul (.rational 74520 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 555660 1) .g) (.mul (.rational 285120 1) .v)) .g) (.mul (.rational
    29160 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 600930 1) .g) (.mul
    (.rational 458820 1) .v)) .g) (.mul (.rational 113400 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 414000 1) .g) (.mul (.rational 408240 1) .v)) .g) (.mul
    (.rational 191790 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    190080 1) .g) (.mul (.rational 224460 1) .v)) .g) (.mul (.rational 189720 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 58620 1) .g) (.mul (.rational 82320
    1) .v)) .g) (.mul (.rational 124980 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11760 1) .g) (.mul (.rational 21570 1) .v)) .g) (.mul (.rational 58140 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1395 1) .g) (.mul
    (.rational 4110 1) .v)) .g) (.mul (.rational 18825 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 75 1) .g) (.mul (.rational 510 1) .v)) .g) (.mul (.rational
    3870 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9720 1) .f) (.add
    (.mul (.rational 45360 1) .g) (.mul (.rational 12960 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 92610 1) .g) (.mul (.rational 55080 1) .v)) .g) (.mul (.rational 6480 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 109260 1) .g) (.mul (.rational 100260 1)
    .v)) .g) (.mul (.rational 29160 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 82800 1) .g) (.mul (.rational 103500 1) .v)) .g) (.mul (.rational 58500 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 42240 1) .g) (.mul (.rational
    68280 1) .v)) .g) (.mul (.rational 70290 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14655 1) .g) (.mul (.rational 31140 1) .v)) .g) (.mul (.rational 57120
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3360 1) .g) (.mul
    (.rational 10350 1) .v)) .g) (.mul (.rational 33000 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 465 1) .g) (.mul (.rational 2490 1) .v)) .g) (.mul
    (.rational 13470 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    30 1) .g) (.mul (.rational 390 1) .v)) .g) (.mul (.rational 3675 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.mul (.rational 30 1) .v) .g) (.mul (.rational 600 1) (.pow .v
    2))) (.pow .g 8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0148

end
end SPR.N6.Tail.CoreEndpoint
