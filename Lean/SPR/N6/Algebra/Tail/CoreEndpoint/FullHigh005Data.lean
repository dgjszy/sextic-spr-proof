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

namespace FullHigh0050
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c050 e f g v*((e+f)*(e+f+g))^5

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_001_0 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_002_0 e g v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 130 1) .e) (.add (.mul (.rational 1312 1) .f) (.add (.mul
    (.rational 1655 1) .g) (.mul (.rational 240 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    8214 1) .f) (.add (.mul (.rational 14118 1) .g) (.mul (.rational 2236 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 8756 1) .g) (.mul (.rational 2830 1) .v)) .g) (.mul (.rational 110 1)
    (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 35812 1) .f) (.add (.mul
    (.rational 77813 1) .g) (.mul (.rational 12912 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    64909 1) .g) (.mul (.rational 22346 1) .v)) .g) (.mul (.rational 938 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 25954 1) .g) (.mul (.rational 13806 1) .v)) .g) (.mul
    (.rational 1189 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 115626 1) .f) (.add (.mul (.rational 303420 1) .g) (.mul (.rational 51836 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 317638 1) .g) (.mul (.rational 113792 1) .v)) .g) (.mul
    (.rational 4948 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 169310 1) .g)
    (.mul (.rational 95112 1) .v)) .g) (.mul (.rational 8592 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 48300 1) .g) (.mul (.rational 37720 1) .v)) .g) (.mul (.rational
    5234 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 286832 1) .f) (.add (.mul (.rational 881491 1) .g) (.mul (.rational 153712 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 1109125 1) .g) (.mul (.rational 408820 1) .v))
    .g) (.mul (.rational 18102 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    737611 1) .g) (.mul (.rational 430896 1) .v)) .g) (.mul (.rational 39952 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 278585 1) .g) (.mul (.rational 229376 1) .v)) .g)
    (.mul (.rational 33074 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 59332 1) .g) (.mul (.rational 64760 1) .v)) .g) (.mul (.rational 12694 1) (.pow .v
    2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 559494 1) .f) (.add (.mul (.rational 1969578 1) .g) (.mul (.rational 348972
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 2892080 1) .g) (.mul (.rational 1090210 1)
    .v)) .g) (.mul (.rational 48770 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2301842 1) .g) (.mul (.rational 1386858 1) .v)) .g) (.mul (.rational 130696 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1079170 1) .g) (.mul (.rational 926278 1)
    .v)) .g) (.mul (.rational 136988 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 302506 1) .g) (.mul (.rational 348702 1) .v)) .g) (.mul (.rational 71088 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 48860 1) .g) (.mul
    (.rational 73476 1) .v)) .g) (.mul (.rational 18980 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    870584 1) .f) (.add (.mul (.rational 3452449 1) .g) (.mul (.rational 620048 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 5791049 1) .g) (.mul (.rational 2225102 1) .v)) .g) (.mul
    (.rational 100210 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5360916 1)
    .g) (.mul (.rational 3315642 1) .v)) .g) (.mul (.rational 316195 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2995792 1) .g) (.mul (.rational 2663150 1) .v)) .g)
    (.mul (.rational 401579 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1037419 1) .g) (.mul (.rational 1251950 1) .v)) .g) (.mul (.rational 263173 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 219323 1) .g) (.mul
    (.rational 349572 1) .v)) .g) (.mul (.rational 94691 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 26646 1) .g) (.mul (.rational 55940 1) .v)) .g) (.mul
    (.rational 18316 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1089374 1) .f) (.add (.mul
    (.rational 4803656 1) .g) (.mul (.rational 873444 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 9056498 1) .g) (.mul (.rational 3540372 1) .v)) .g) (.mul (.rational 160336 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9550618 1) .g) (.mul (.rational
    6047052 1) .v)) .g) (.mul (.rational 582648 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6186590 1) .g) (.mul (.rational 5673618 1) .v)) .g) (.mul (.rational 870274
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2543170 1) .g)
    (.mul (.rational 3195822 1) .v)) .g) (.mul (.rational 690152 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 660978 1) .g) (.mul (.rational 1108962 1) .v))
    .g) (.mul (.rational 313120 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 104514 1) .g) (.mul (.rational 233686 1) .v)) .g) (.mul (.rational 81488 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9194 1) .g) (.mul
    (.rational 28216 1) .v)) .g) (.mul (.rational 11504 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1099384 1) .f) (.add (.mul (.rational 5334329 1) .g) (.mul (.rational
    981552 1) .v))) .f) (.add (.mul (.add (.mul (.rational 11161271 1) .g) (.mul (.rational
    4435024 1) .v)) .g) (.mul (.rational 202026 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 13198185 1) .g) (.mul (.rational 8541324 1) .v)) .g) (.mul (.rational 831534
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 9710775 1) .g) (.mul
    (.rational 9165030 1) .v)) .g) (.mul (.rational 1429518 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4610679 1) .g) (.mul (.rational 6012378 1) .v)) .g)
    (.mul (.rational 1332375 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1416293 1) .g) (.mul (.rational 2489934 1) .v)) .g) (.mul (.rational 731049 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 273853 1) .g) (.mul
    (.rational 648642 1) .v)) .g) (.mul (.rational 239823 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 31155 1) .g) (.mul (.rational 102432 1) .v)) .g) (.mul
    (.rational 45587 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1805 1) .g) (.mul (.rational 9000 1) .v)) .g) (.mul (.rational 4594 1) (.pow .v 2))) (.pow .g
    7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 893074 1) .f) (.add (.mul (.rational 4727450 1)
    .g) (.mul (.rational 880308 1) .v))) .f) (.add (.mul (.add (.mul (.rational 10866020 1) .g)
    (.mul (.rational 4387218 1) .v)) .g) (.mul (.rational 201234 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 14230282 1) .g) (.mul (.rational 9404802 1) .v)) .g) (.mul
    (.rational 926024 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11710020
    1) .g) (.mul (.rational 11356812 1) .v)) .g) (.mul (.rational 1802568 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6294876 1) .g) (.mul (.rational 8498700
    1) .v)) .g) (.mul (.rational 1933128 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2224432 1) .g) (.mul (.rational 4085088 1) .v)) .g) (.mul (.rational
    1246392 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 505820 1)
    .g) (.mul (.rational 1264256 1) .v)) .g) (.mul (.rational 494592 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 69936 1) .g) (.mul (.rational 245306 1) .v))
    .g) (.mul (.rational 118672 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5200 1) .g) (.mul (.rational 27966 1) .v)) .g) (.mul (.rational 16184 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 152 1) .g) (.mul (.rational
    1630 1) .v)) .g) (.mul (.rational 1094 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 579852 1) .f) (.add (.mul (.rational 3324711 1) .g) (.mul
    (.rational 626704 1) .v))) .f) (.add (.mul (.add (.mul (.rational 8324567 1) .g) (.mul
    (.rational 3415174 1) .v)) .g) (.mul (.rational 157982 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11953810 1) .g) (.mul (.rational 8064738 1) .v)) .g) (.mul (.rational
    804331 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10868690 1) .g)
    (.mul (.rational 10821696 1) .v)) .g) (.mul (.rational 1750201 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6515250 1) .g) (.mul (.rational 9093084 1) .v))
    .g) (.mul (.rational 2125026 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2596958 1) .g) (.mul (.rational 4970784 1) .v)) .g) (.mul (.rational 1576470 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 676144 1) .g) (.mul
    (.rational 1778168 1) .v)) .g) (.mul (.rational 735336 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 109284 1) .g) (.mul (.rational 407582 1) .v)) .g)
    (.mul (.rational 213674 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9800 1) .g) (.mul (.rational 56658 1) .v)) .g) (.mul (.rational 36923 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 364 1) .g) (.mul (.rational
    4242 1) .v)) .g) (.mul (.rational 3423 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 126 1) .v) .g) (.mul (.rational 135 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 296926 1) .f) (.add (.mul
    (.rational 1832924 1) .g) (.mul (.rational 349908 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 4964410 1) .g) (.mul (.rational 2069864 1) .v)) .g) (.mul (.rational 96740 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7752514 1) .g) (.mul (.rational 5338512
    1) .v)) .g) (.mul (.rational 540256 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7712312 1) .g) (.mul (.rational 7879228 1) .v)) .g) (.mul (.rational 1300550 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5094250 1) .g) (.mul
    (.rational 7341960 1) .v)) .g) (.mul (.rational 1765046 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2256436 1) .g) (.mul (.rational 4494084 1) .v)) .g)
    (.mul (.rational 1482432 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 659708 1) .g) (.mul (.rational 1821372 1) .v)) .g) (.mul (.rational 795732 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 121380 1) .g) (.mul
    (.rational 480018 1) .v)) .g) (.mul (.rational 271972 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12628 1) .g) (.mul (.rational 78246 1) .v)) .g) (.mul
    (.rational 57038 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    560 1) .g) (.mul (.rational 7070 1) .v)) .g) (.mul (.rational 6748 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 266 1) .v) .g) (.mul (.rational 376 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 6 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 117312 1) .f) (.add (.mul
    (.rational 775593 1) .g) (.mul (.rational 150032 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2258839 1) .g) (.mul (.rational 957476 1) .v)) .g) (.mul (.rational 45298 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3809789 1) .g) (.mul (.rational 2677896
    1) .v)) .g) (.mul (.rational 275484 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4113495 1) .g) (.mul (.rational 4310764 1) .v)) .g) (.mul (.rational 727382 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2965306 1) .g) (.mul
    (.rational 4409836 1) .v)) .g) (.mul (.rational 1091996 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1442518 1) .g) (.mul (.rational 2985672 1) .v)) .g)
    (.mul (.rational 1025020 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 466654 1) .g) (.mul (.rational 1350076 1) .v)) .g) (.mul (.rational 622818 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 95874 1) .g) (.mul
    (.rational 401086 1) .v)) .g) (.mul (.rational 244964 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11270 1) .g) (.mul (.rational 74634 1) .v)) .g) (.mul
    (.rational 60457 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    574 1) .g) (.mul (.rational 7826 1) .v)) .g) (.mul (.rational 8701 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 350 1) .v) .g) (.mul (.rational 625 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 15 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 34514 1) .f) (.add (.mul
    (.rational 243286 1) .g) (.mul (.rational 47716 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 758008 1) .g) (.mul (.rational 326782 1) .v)) .g) (.mul (.rational 15678 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1372750 1) .g) (.mul (.rational 985062
    1) .v)) .g) (.mul (.rational 103192 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1597850 1) .g) (.mul (.rational 1717310 1) .v)) .g) (.mul (.rational 296684 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1247146 1) .g) (.mul
    (.rational 1912694 1) .v)) .g) (.mul (.rational 488440 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 660036 1) .g) (.mul (.rational 1418220 1) .v)) .g)
    (.mul (.rational 507012 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 233538 1) .g) (.mul (.rational 706912 1) .v)) .g) (.mul (.rational 344138 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 52800 1) .g) (.mul
    (.rational 233182 1) .v)) .g) (.mul (.rational 153112 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6880 1) .g) (.mul (.rational 48570 1) .v)) .g) (.mul
    (.rational 43444 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    392 1) .g) (.mul (.rational 5754 1) .v)) .g) (.mul (.rational 7350 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 294 1) .v) .g) (.mul (.rational 642 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 20 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7122 1) .f) (.add (.mul
    (.rational 53313 1) .g) (.mul (.rational 10608 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    176915 1) .g) (.mul (.rational 77602 1) .v)) .g) (.mul (.rational 3782 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 342296 1) .g) (.mul (.rational 250806 1) .v)) .g)
    (.mul (.rational 26797 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    427060 1) .g) (.mul (.rational 470686 1) .v)) .g) (.mul (.rational 83369 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 358519 1) .g) (.mul (.rational
    566790 1) .v)) .g) (.mul (.rational 149409 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 204823 1) .g) (.mul (.rational 456492 1) .v)) .g) (.mul
    (.rational 169991 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    78530 1) .g) (.mul (.rational 248372 1) .v)) .g) (.mul (.rational 127492 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 19316 1) .g) (.mul (.rational 89886
    1) .v)) .g) (.mul (.rational 63282 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2750 1) .g) (.mul (.rational 20646 1) .v)) .g) (.mul (.rational 20269 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 172 1) .g) (.mul
    (.rational 2710 1) .v)) .g) (.mul (.rational 3929 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 154 1) .v) .g) (.mul (.rational 401 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 15 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 920 1) .f) (.add (.mul
    (.rational 7288 1) .g) (.mul (.rational 1472 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    25658 1) .g) (.mul (.rational 11456 1) .v)) .g) (.mul (.rational 568 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 52806 1) .g) (.mul (.rational 39516 1) .v)) .g) (.mul
    (.rational 4312 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 70270 1)
    .g) (.mul (.rational 79418 1) .v)) .g) (.mul (.rational 14438 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 63094 1) .g) (.mul (.rational 102782 1) .v)) .g)
    (.mul (.rational 27988 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 38658 1) .g) (.mul (.rational 89298 1) .v)) .g) (.mul (.rational 34640 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 15938 1) .g) (.mul (.rational
    52606 1) .v)) .g) (.mul (.rational 28444 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4226 1) .g) (.mul (.rational 20686 1) .v)) .g) (.mul (.rational 15572
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 650 1) .g) (.mul
    (.rational 5178 1) .v)) .g) (.mul (.rational 5548 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 44 1) .g) (.mul (.rational 742 1) .v)) .g) (.mul (.rational
    1208 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 46 1) .v) .g) (.mul
    (.rational 140 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 6 1) (.pow .v 2))
    (.pow .g 10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 56 1) .f) (.add (.mul (.rational 468 1) .g) (.mul (.rational 96 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 1742 1) .g) (.mul (.rational 792 1) .v)) .g) (.mul (.rational 40
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3799 1) .g) (.mul (.rational
    2904 1) .v)) .g) (.mul (.rational 324 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5369 1) .g) (.mul (.rational 6222 1) .v)) .g) (.mul (.rational 1162 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5131 1) .g) (.mul (.rational
    8610 1) .v)) .g) (.mul (.rational 2423 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3353 1) .g) (.mul (.rational 8022 1) .v)) .g) (.mul (.rational 3241 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1477 1) .g) (.mul
    (.rational 5082 1) .v)) .g) (.mul (.rational 2891 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 419 1) .g) (.mul (.rational 2154 1) .v)) .g) (.mul
    (.rational 1729 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 69
    1) .g) (.mul (.rational 582 1) .v)) .g) (.mul (.rational 677 1) (.pow .v 2))) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5 1) .g) (.mul (.rational 90 1) .v)) .g) (.mul
    (.rational 163 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 6 1) .v)
    .g) (.mul (.rational 21 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0050

namespace FullHigh0051
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh1.c050 e f g v*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh0.c140 e f g v*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_001_0 e g v*e^3+1*SmallGap.ReducedLayers.high0_001_1
    e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_002_0 e g v*e^2+1*SmallGap.ReducedLayers.high1_002_1 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 929 1) .e) (.add (.mul (.rational 8970 1) .f) (.add (.mul (.rational 11226 1)
    .g) (.mul (.rational 1692 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 53809 1) .f) (.add
    (.mul (.rational 91751 1) .g) (.mul (.rational 14906 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 56443 1) .g) (.mul (.rational 18512 1) .v)) .g) (.mul (.rational 771 1) (.pow .v
    2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 224679 1) .f) (.add (.mul (.rational
    484342 1) .g) (.mul (.rational 81660 1) .v))) .f) (.add (.mul (.add (.mul (.rational 400905 1)
    .g) (.mul (.rational 138626 1) .v)) .g) (.mul (.rational 6181 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 159253 1) .g) (.mul (.rational 83566 1) .v)) .g) (.mul
    (.rational 7667 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 693259 1) .f) (.add (.mul (.rational 1805004 1) .g) (.mul (.rational 311370 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 1875678 1) .g) (.mul (.rational 670860 1) .v))
    .g) (.mul (.rational 30764 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    993745 1) .g) (.mul (.rational 548132 1) .v)) .g) (.mul (.rational 52231 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 282511 1) .g) (.mul (.rational 211596 1) .v)) .g)
    (.mul (.rational 30822 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1637530 1) .f) (.add (.mul (.rational 4993316 1) .g) (.mul
    (.rational 876332 1) .v))) .f) (.add (.mul (.add (.mul (.rational 6238206 1) .g) (.mul
    (.rational 2289834 1) .v)) .g) (.mul (.rational 106378 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4125279 1) .g) (.mul (.rational 2364260 1) .v)) .g) (.mul (.rational
    229719 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1553321 1) .g) (.mul
    (.rational 1229342 1) .v)) .g) (.mul (.rational 184731 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 331165 1) .g) (.mul (.rational 338348 1) .v)) .g)
    (.mul (.rational 68149 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 3025759 1) .f) (.add (.mul (.rational 10568793
    1) .g) (.mul (.rational 1883446 1) .v))) .f) (.add (.mul (.add (.mul (.rational 15411622 1)
    .g) (.mul (.rational 5787944 1) .v)) .g) (.mul (.rational 270891 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12200838 1) .g) (.mul (.rational 7228464 1) .v)) .g) (.mul
    (.rational 711545 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5704536
    1) .g) (.mul (.rational 4731568 1) .v)) .g) (.mul (.rational 727202 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1601086 1) .g) (.mul (.rational 1744308 1)
    .v)) .g) (.mul (.rational 365340 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 260391 1) .g) (.mul (.rational 360460 1) .v)) .g) (.mul (.rational 93529 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 4429513 1) .f) (.add (.mul (.rational 17429342 1) .g) (.mul
    (.rational 3153656 1) .v))) .f) (.add (.mul (.add (.mul (.rational 29036375 1) .g) (.mul
    (.rational 11147778 1) .v)) .g) (.mul (.rational 525100 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 26741250 1) .g) (.mul (.rational 16343488 1) .v)) .g) (.mul
    (.rational 1628081 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 14905925
    1) .g) (.mul (.rational 12905546 1) .v)) .g) (.mul (.rational 2025107 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5169027 1) .g) (.mul (.rational 5965876
    1) .v)) .g) (.mul (.rational 1294558 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1100348 1) .g) (.mul (.rational 1641884 1) .v)) .g) (.mul (.rational
    452328 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 135583 1)
    .g) (.mul (.rational 260556 1) .v)) .g) (.mul (.rational 84683 1) (.pow .v 2))) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 5168823 1) .f) (.add (.mul (.rational 22614354 1) .g) (.mul (.rational
    4157886 1) .v))) .f) (.add (.mul (.add (.mul (.rational 42347091 1) .g) (.mul (.rational
    16624894 1) .v)) .g) (.mul (.rational 789208 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 44431560 1) .g) (.mul (.rational 27996060 1) .v)) .g) (.mul (.rational
    2826638 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 28711383 1) .g)
    (.mul (.rational 25897712 1) .v)) .g) (.mul (.rational 4154850 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11819354 1) .g) (.mul (.rational 14398102 1) .v))
    .g) (.mul (.rational 3238320 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3092792 1) .g) (.mul (.rational 4946546 1) .v)) .g) (.mul (.rational 1443791 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 495873 1) .g) (.mul
    (.rational 1038734 1) .v)) .g) (.mul (.rational 370549 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 44628 1) .g) (.mul (.rational 126452 1) .v)) .g)
    (.mul (.rational 52331 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4809398 1)
    .f) (.add (.mul (.rational 23152818 1) .g) (.mul (.rational 4330884 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 48115710 1) .g) (.mul (.rational 19331072 1) .v)) .g) (.mul (.rational
    927233 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 56609130 1) .g) (.mul
    (.rational 36777324 1) .v)) .g) (.mul (.rational 3773981 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 41548844 1) .g) (.mul (.rational 39008552 1) .v)) .g) (.mul
    (.rational 6415834 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    19753360 1) .g) (.mul (.rational 25340244 1) .v)) .g) (.mul (.rational 5919374 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6107646 1) .g) (.mul
    (.rational 10430330 1) .v)) .g) (.mul (.rational 3225627 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1197045 1) .g) (.mul (.rational 2719156 1) .v)) .g)
    (.mul (.rational 1059962 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 139267 1) .g) (.mul (.rational 434718 1) .v)) .g) (.mul (.rational 206113 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8341 1) .g) (.mul
    (.rational 39360 1) .v)) .g) (.mul (.rational 22383 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 3549063 1) .f) (.add (.mul (.rational 18638793 1) .g) (.mul
    (.rational 3551910 1) .v))) .f) (.add (.mul (.add (.mul (.rational 42549095 1) .g) (.mul
    (.rational 17511352 1) .v)) .g) (.mul (.rational 851305 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 55437189 1) .g) (.mul (.rational 37150078 1) .v)) .g) (.mul
    (.rational 3886920 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 45501110
    1) .g) (.mul (.rational 44445724 1) .v)) .g) (.mul (.rational 7516927 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 24486268 1) .g) (.mul (.rational 33027672
    1) .v)) .g) (.mul (.rational 8031660 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8706343 1) .g) (.mul (.rational 15829968 1) .v)) .g) (.mul (.rational
    5189414 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2005621 1)
    .g) (.mul (.rational 4919698 1) .v)) .g) (.mul (.rational 2088153 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 283395 1) .g) (.mul (.rational 969588 1)
    .v)) .g) (.mul (.rational 520665 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 21769 1) .g) (.mul (.rational 114222 1) .v)) .g) (.mul (.rational 77778 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 666 1) .g) (.mul
    (.rational 7044 1) .v)) .g) (.mul (.rational 6488 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 2052253 1) .f) (.add (.mul (.rational 11673758
    1) .g) (.mul (.rational 2269340 1) .v))) .f) (.add (.mul (.add (.mul (.rational 29027551 1)
    .g) (.mul (.rational 12249742 1) .v)) .g) (.mul (.rational 605429 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 41462985 1) .g) (.mul (.rational 28674174 1) .v)) .g) (.mul
    (.rational 3068293 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 37592973
    1) .g) (.mul (.rational 38195848 1) .v)) .g) (.mul (.rational 6661268 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22551418 1) .g) (.mul (.rational 31944240
    1) .v)) .g) (.mul (.rational 8102956 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9039742 1) .g) (.mul (.rational 17457808 1) .v)) .g) (.mul (.rational
    6067593 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2382567 1)
    .g) (.mul (.rational 6288222 1) .v)) .g) (.mul (.rational 2895902 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 393183 1) .g) (.mul (.rational 1467538 1)
    .v)) .g) (.mul (.rational 883329 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36387 1) .g) (.mul (.rational 211160 1) .v)) .g) (.mul (.rational 168414 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1413 1) .g) (.mul
    (.rational 16742 1) .v)) .g) (.mul (.rational 19069 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 542 1) .v) .g) (.mul (.rational 1150 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 910629 1) .f) (.add
    (.mul (.rational 5576416 1) .g) (.mul (.rational 1107150 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 14997432 1) .g) (.mul (.rational 6495336 1) .v)) .g) (.mul (.rational 327284 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 23291881 1) .g) (.mul (.rational
    16629868 1) .v)) .g) (.mul (.rational 1824795 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 23098047 1) .g) (.mul (.rational 24405728 1) .v)) .g) (.mul (.rational
    4398930 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 15260417
    1) .g) (.mul (.rational 22677166 1) .v)) .g) (.mul (.rational 6008363 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6792813 1) .g) (.mul (.rational 13904734
    1) .v)) .g) (.mul (.rational 5121482 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2008533 1) .g) (.mul (.rational 5685156 1) .v)) .g) (.mul (.rational
    2830199 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 376859 1)
    .g) (.mul (.rational 1527840 1) .v)) .g) (.mul (.rational 1021130 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 40403 1) .g) (.mul (.rational 257958 1) .v))
    .g) (.mul (.rational 236559 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1870 1) .g) (.mul (.rational 24670 1) .v)) .g) (.mul (.rational 33677 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1010 1) .v) .g) (.mul (.rational
    2678 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 91 1) (.pow .v 2)) (.pow .g
    10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 299494 1) .f)
    (.add (.mul (.rational 1964112 1) .g) (.mul (.rational 398676 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 5679186 1) .g) (.mul (.rational 2526098 1) .v)) .g) (.mul (.rational 130072
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9523387 1) .g) (.mul (.rational
    7021964 1) .v)) .g) (.mul (.rational 791821 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10245611 1) .g) (.mul (.rational 11254922 1) .v)) .g) (.mul (.rational
    2100011 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7382643 1)
    .g) (.mul (.rational 11497288 1) .v)) .g) (.mul (.rational 3184053 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3605927 1) .g) (.mul (.rational 7808486 1)
    .v)) .g) (.mul (.rational 3044932 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1178363 1) .g) (.mul (.rational 3566344 1) .v)) .g) (.mul (.rational 1911808
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 246513 1) .g)
    (.mul (.rational 1081122 1) .v)) .g) (.mul (.rational 795547 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 29807 1) .g) (.mul (.rational 208320 1) .v)) .g)
    (.mul (.rational 216307 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1581 1) .g) (.mul (.rational 23084 1) .v)) .g) (.mul (.rational 36860 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1120 1) .v) .g) (.mul (.rational
    3587 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 154 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 68809 1)
    .f) (.add (.mul (.rational 481079 1) .g) (.mul (.rational 99914 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 1487832 1) .g) (.mul (.rational 680032 1) .v)) .g) (.mul (.rational 35849 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2677980 1) .g) (.mul (.rational
    2039492 1) .v)) .g) (.mul (.rational 236705 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3104198 1) .g) (.mul (.rational 3543916 1) .v)) .g) (.mul (.rational 685212
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2419926 1) .g)
    (.mul (.rational 3945484 1) .v)) .g) (.mul (.rational 1142192 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1284506 1) .g) (.mul (.rational 2937120 1) .v))
    .g) (.mul (.rational 1210833 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 458460 1) .g) (.mul (.rational 1479496 1) .v)) .g) (.mul (.rational 850748 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 105357 1) .g) (.mul
    (.rational 497948 1) .v)) .g) (.mul (.rational 400387 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 14091 1) .g) (.mul (.rational 107290 1) .v)) .g) (.mul
    (.rational 124540 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    834 1) .g) (.mul (.rational 13400 1) .v)) .g) (.mul (.rational 24554 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 740 1) .v) .g) (.mul (.rational 2791 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 141 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9862 1) .f) (.add (.mul
    (.rational 73215 1) .g) (.mul (.rational 15568 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    241105 1) .g) (.mul (.rational 113278 1) .v)) .g) (.mul (.rational 6122 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 463440 1) .g) (.mul (.rational 364548 1) .v)) .g)
    (.mul (.rational 43591 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    575429 1) .g) (.mul (.rational 682422 1) .v)) .g) (.mul (.rational 136791 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 482033 1) .g) (.mul (.rational
    821924 1) .v)) .g) (.mul (.rational 248626 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 275850 1) .g) (.mul (.rational 664848 1) .v)) .g) (.mul
    (.rational 289251 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    106510 1) .g) (.mul (.rational 365538 1) .v)) .g) (.mul (.rational 224619 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 26575 1) .g) (.mul (.rational
    134878 1) .v)) .g) (.mul (.rational 117716 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3874 1) .g) (.mul (.rational 31992 1) .v)) .g) (.mul (.rational
    41076 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 251 1) .g)
    (.mul (.rational 4414 1) .v)) .g) (.mul (.rational 9141 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 270 1) .v) .g) (.mul (.rational 1176 1) (.pow .v 2))) (.pow
    .g 9))) .f) (.mul (.mul (.rational 67 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 664 1) .f) (.add (.mul
    (.rational 5216 1) .g) (.mul (.rational 1136 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    18218 1) .g) (.mul (.rational 8800 1) .v)) .g) (.mul (.rational 488 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 37230 1) .g) (.mul (.rational 30244 1) .v)) .g) (.mul
    (.rational 3728 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 49267 1)
    .g) (.mul (.rational 60660 1) .v)) .g) (.mul (.rational 12606 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 44092 1) .g) (.mul (.rational 78542 1) .v)) .g)
    (.mul (.rational 24806 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27021 1) .g) (.mul (.rational 68528 1) .v)) .g) (.mul (.rational 31403 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 11198 1) .g) (.mul (.rational
    40770 1) .v)) .g) (.mul (.rational 26676 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3005 1) .g) (.mul (.rational 16324 1) .v)) .g) (.mul (.rational 15373
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 472 1) .g) (.mul
    (.rational 4210 1) .v)) .g) (.mul (.rational 5926 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 33 1) .g) (.mul (.rational 632 1) .v)) .g) (.mul (.rational
    1461 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 42 1) .v) .g) (.mul
    (.rational 208 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 13 1) (.pow .v 2))
    (.pow .g 10))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0051

namespace FullHigh0052
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c050 e f g v*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh1.c140 e f g v*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh0.c230 e f g v*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_001_0 e g v*e^2+4*SmallGap.ReducedLayers.high0_001_1
    e g v*e^3+1*SmallGap.ReducedLayers.high0_001_2 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_002_0 e g v*e^1+3*SmallGap.ReducedLayers.high1_002_1 e g
    v*e^2+1*SmallGap.ReducedLayers.high1_002_2 e g v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2857 1) .e) (.add (.mul (.rational 26522 1) .f) (.add (.mul (.rational 32950 1) .g) (.mul
    (.rational 5130 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 152754 1) .f) (.add (.mul
    (.rational 258415 1) .g) (.mul (.rational 42898 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 157702 1) .g) (.mul (.rational 52192 1) .v)) .g) (.mul (.rational 2325 1) (.pow .v
    2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 610613 1) .f) (.add (.mul (.rational
    1305463 1) .g) (.mul (.rational 223078 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1071737
    1) .g) (.mul (.rational 370528 1) .v)) .g) (.mul (.rational 17588 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 422715 1) .g) (.mul (.rational 216964 1) .v)) .g) (.mul
    (.rational 21304 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1795959 1) .f) (.add (.mul (.rational 4636154 1) .g) (.mul (.rational 806228 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 4777851 1) .g) (.mul (.rational 1699450 1) .v))
    .g) (.mul (.rational 82581 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2513293 1) .g) (.mul (.rational 1350388 1) .v)) .g) (.mul (.rational 136641 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 711140 1) .g) (.mul (.rational 503264 1)
    .v)) .g) (.mul (.rational 77603 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 4020718 1) .f) (.add (.mul (.rational 12152552
    1) .g) (.mul (.rational 2144438 1) .v))) .f) (.add (.mul (.add (.mul (.rational 15055700 1)
    .g) (.mul (.rational 5485584 1) .v)) .g) (.mul (.rational 269039 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9885524 1) .g) (.mul (.rational 5518646 1) .v)) .g) (.mul
    (.rational 566199 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3704712
    1) .g) (.mul (.rational 2780410 1) .v)) .g) (.mul (.rational 439091 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 789156 1) .g) (.mul (.rational 737242 1)
    .v)) .g) (.mul (.rational 153527 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6990323 1) .f) (.add (.mul
    (.rational 24196335 1) .g) (.mul (.rational 4335852 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 34986642 1) .g) (.mul (.rational 13059080 1) .v)) .g) (.mul (.rational 644000 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 27501884 1) .g) (.mul (.rational
    15927896 1) .v)) .g) (.mul (.rational 1651143 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 12798564 1) .g) (.mul (.rational 10142216 1) .v)) .g) (.mul (.rational
    1633920 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3589004 1)
    .g) (.mul (.rational 3623890 1) .v)) .g) (.mul (.rational 785030 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 586327 1) .g) (.mul (.rational 724530 1)
    .v)) .g) (.mul (.rational 188422 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9540748 1) .f) (.add
    (.mul (.rational 37194341 1) .g) (.mul (.rational 6784650 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 61437313 1) .g) (.mul (.rational 23539944 1) .v)) .g) (.mul (.rational 1168917 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 56182071 1) .g) (.mul (.rational
    33790344 1) .v)) .g) (.mul (.rational 3547717 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 31172250 1) .g) (.mul (.rational 26060704 1) .v)) .g) (.mul (.rational
    4296473 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10800697
    1) .g) (.mul (.rational 11745246 1) .v)) .g) (.mul (.rational 2654279 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2309577 1) .g) (.mul (.rational 3152180
    1) .v)) .g) (.mul (.rational 887316 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 287875 1) .g) (.mul (.rational 490102 1) .v)) .g) (.mul (.rational 157018 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 10259747 1) .f) (.add (.mul (.rational 44464816
    1) .g) (.mul (.rational 8281546 1) .v))) .f) (.add (.mul (.add (.mul (.rational 82548827 1)
    .g) (.mul (.rational 32555380 1) .v)) .g) (.mul (.rational 1634533 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 86000744 1) .g) (.mul (.rational 53818154 1) .v)) .g) (.mul
    (.rational 5752212 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 55319078
    1) .g) (.mul (.rational 48814252 1) .v)) .g) (.mul (.rational 8284680 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22754418 1) .g) (.mul (.rational 26604118
    1) .v)) .g) (.mul (.rational 6308210 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5981308 1) .g) (.mul (.rational 8977590 1) .v)) .g) (.mul (.rational
    2741716 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 970211 1)
    .g) (.mul (.rational 1863178 1) .v)) .g) (.mul (.rational 687353 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 89117 1) .g) (.mul (.rational 227056 1) .v))
    .g) (.mul (.rational 96379 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    8666714 1) .f) (.add (.mul (.rational 41321906 1) .g) (.mul (.rational 7882492 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 85128460 1) .g) (.mul (.rational 34651402 1) .v)) .g) (.mul
    (.rational 1768249 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 99444540 1)
    .g) (.mul (.rational 64881548 1) .v)) .g) (.mul (.rational 7101414 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 72654634 1) .g) (.mul (.rational 67720878 1) .v)) .g)
    (.mul (.rational 11906556 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34514282 1) .g) (.mul (.rational 43336762 1) .v)) .g) (.mul (.rational 10841324 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10720254 1) .g) (.mul
    (.rational 17630898 1) .v)) .g) (.mul (.rational 5850820 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2125778 1) .g) (.mul (.rational 4576238 1) .v)) .g)
    (.mul (.rational 1923993 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 252498 1) .g) (.mul (.rational 738184 1) .v)) .g) (.mul (.rational 384341 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 15608 1) .g) (.mul
    (.rational 68840 1) .v)) .g) (.mul (.rational 45455 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 5692228 1) .f) (.add (.mul (.rational 29602529 1) .g) (.mul
    (.rational 5800020 1) .v))) .f) (.add (.mul (.add (.mul (.rational 66982514 1) .g) (.mul
    (.rational 28210212 1) .v)) .g) (.mul (.rational 1470768 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 86645029 1) .g) (.mul (.rational 59041148 1) .v)) .g) (.mul
    (.rational 6654176 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 70786055
    1) .g) (.mul (.rational 69733802 1) .v)) .g) (.mul (.rational 12769153 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 38060364 1) .g) (.mul (.rational 51261906
    1) .v)) .g) (.mul (.rational 13582948 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13593194 1) .g) (.mul (.rational 24410452 1) .v)) .g) (.mul (.rational
    8799334 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3167947 1)
    .g) (.mul (.rational 7597936 1) .v)) .g) (.mul (.rational 3601999 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 457040 1) .g) (.mul (.rational 1520006 1)
    .v)) .g) (.mul (.rational 940187 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36253 1) .g) (.mul (.rational 185458 1) .v)) .g) (.mul (.rational 154900 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1161 1) .g) (.mul
    (.rational 12158 1) .v)) .g) (.mul (.rational 15443 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 2850481 1) .f) (.add (.mul (.rational 16053525
    1) .g) (.mul (.rational 3238392 1) .v))) .f) (.add (.mul (.add (.mul (.rational 39560975 1)
    .g) (.mul (.rational 17273178 1) .v)) .g) (.mul (.rational 924281 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 56095605 1) .g) (.mul (.rational 39973076 1) .v)) .g) (.mul
    (.rational 4659840 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 50616899
    1) .g) (.mul (.rational 52711696 1) .v)) .g) (.mul (.rational 10091428 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 30332744 1) .g) (.mul (.rational 43760682
    1) .v)) .g) (.mul (.rational 12306620 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 12210432 1) .g) (.mul (.rational 23858108 1) .v)) .g) (.mul (.rational
    9322322 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3254942 1)
    .g) (.mul (.rational 8645060 1) .v)) .g) (.mul (.rational 4573333 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 548289 1) .g) (.mul (.rational 2056696 1)
    .v)) .g) (.mul (.rational 1473881 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 52390 1) .g) (.mul (.rational 307524 1) .v)) .g) (.mul (.rational 310409 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2130 1) .g) (.mul
    (.rational 25978 1) .v)) .g) (.mul (.rational 41322 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 922 1) .v) .g) (.mul (.rational 3128 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1052389 1) .f) (.add
    (.mul (.rational 6379526 1) .g) (.mul (.rational 1327482 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 17000701 1) .g) (.mul (.rational 7706682 1) .v)) .g) (.mul (.rational 424762 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 26204467 1) .g) (.mul (.rational
    19542470 1) .v)) .g) (.mul (.rational 2363983 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25855792 1) .g) (.mul (.rational 28456356 1) .v)) .g) (.mul (.rational
    5708893 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17059277
    1) .g) (.mul (.rational 26318014 1) .v)) .g) (.mul (.rational 7858235 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7622582 1) .g) (.mul (.rational 16147652
    1) .v)) .g) (.mul (.rational 6816695 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2278365 1) .g) (.mul (.rational 6662498 1) .v)) .g) (.mul (.rational
    3894837 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 436069 1)
    .g) (.mul (.rational 1830044 1) .v)) .g) (.mul (.rational 1489857 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 48233 1) .g) (.mul (.rational 321564 1) .v))
    .g) (.mul (.rational 379929 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2335 1) .g) (.mul (.rational 32762 1) .v)) .g) (.mul (.rational 62585 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1468 1) .v) .g) (.mul (.rational
    6068 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 260 1) (.pow .v 2)) (.pow .g
    10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 270214 1) .f)
    (.add (.mul (.rational 1753888 1) .g) (.mul (.rational 376988 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 5023840 1) .g) (.mul (.rational 2366722 1) .v)) .g) (.mul (.rational 134700
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 8358584 1) .g) (.mul (.rational
    6525820 1) .v)) .g) (.mul (.rational 820783 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8943880 1) .g) (.mul (.rational 10396452 1) .v)) .g) (.mul (.rational 2187805
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6432778 1) .g)
    (.mul (.rational 10592176 1) .v)) .g) (.mul (.rational 3355099 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3151988 1) .g) (.mul (.rational 7213668 1) .v))
    .g) (.mul (.rational 3277133 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1040346 1) .g) (.mul (.rational 3331212 1) .v)) .g) (.mul (.rational 2133303 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 221772 1) .g) (.mul
    (.rational 1033472 1) .v)) .g) (.mul (.rational 941183 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 27628 1) .g) (.mul (.rational 207248 1) .v)) .g)
    (.mul (.rational 280091 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1530 1) .g) (.mul (.rational 24422 1) .v)) .g) (.mul (.rational 54437 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1292 1) .v) .g) (.mul (.rational
    6316 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 334 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 43119 1)
    .f) (.add (.mul (.rational 298305 1) .g) (.mul (.rational 66294 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 913654 1) .g) (.mul (.rational 447532 1) .v)) .g) (.mul (.rational 26343 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1630992 1) .g) (.mul (.rational
    1332940 1) .v)) .g) (.mul (.rational 174483 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1879359 1) .g) (.mul (.rational 2305164 1) .v)) .g) (.mul (.rational 508820
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1461368 1) .g)
    (.mul (.rational 2563020 1) .v)) .g) (.mul (.rational 859832 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 777471 1) .g) (.mul (.rational 1915670 1) .v))
    .g) (.mul (.rational 932739 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 279948 1) .g) (.mul (.rational 976554 1) .v)) .g) (.mul (.rational 679894 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 65458 1) .g) (.mul
    (.rational 336408 1) .v)) .g) (.mul (.rational 338569 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9003 1) .g) (.mul (.rational 75346 1) .v)) .g) (.mul
    (.rational 114504 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    555 1) .g) (.mul (.rational 9978 1) .v)) .g) (.mul (.rational 25418 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 598 1) .v) .g) (.mul (.rational 3383 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 207 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3222 1) .f) (.add (.mul
    (.rational 23663 1) .g) (.mul (.rational 5440 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    77143 1) .g) (.mul (.rational 39294 1) .v)) .g) (.mul (.rational 2394 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 146985 1) .g) (.mul (.rational 125692 1) .v)) .g)
    (.mul (.rational 17127 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    181293 1) .g) (.mul (.rational 234372 1) .v)) .g) (.mul (.rational 54225 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 151343 1) .g) (.mul (.rational
    282126 1) .v)) .g) (.mul (.rational 100037 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 86703 1) .g) (.mul (.rational 229244 1) .v)) .g) (.mul (.rational
    119159 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 33723 1)
    .g) (.mul (.rational 127554 1) .v)) .g) (.mul (.rational 95919 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8545 1) .g) (.mul (.rational 48132 1) .v)) .g)
    (.mul (.rational 53017 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1278 1) .g) (.mul (.rational 11842 1) .v)) .g) (.mul (.rational 19975 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 86 1) .g) (.mul (.rational
    1726 1) .v)) .g) (.mul (.rational 4947 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 114 1) .v) .g) (.mul (.rational 734 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 50 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0052

namespace FullHigh0053
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c140 e f g v*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh1.c230 e f g v*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_001_0 e g v*e^1+6*SmallGap.ReducedLayers.high0_001_1
    e g v*e^2+4*SmallGap.ReducedLayers.high0_001_2 e g v*e^3+1*SmallGap.ReducedLayers.high0_001_3
    e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_002_0 e g v+3*SmallGap.ReducedLayers.high1_002_1 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_002_2 e g v*e^2+1*SmallGap.ReducedLayers.high1_002_3 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4900 1) .e)
    (.add (.mul (.rational 43969 1) .f) (.add (.mul (.rational 54269 1) .g) (.mul (.rational 8670
    1) .v)))) .e) (.add (.mul (.add (.mul (.rational 243891 1) .f) (.add (.mul (.rational 409492
    1) .g) (.mul (.rational 69124 1) .v))) .f) (.add (.mul (.add (.mul (.rational 248063 1) .g)
    (.mul (.rational 82270 1) .v)) .g) (.mul (.rational 3910 1) (.pow .v 2))))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 934054 1) .f) (.add (.mul (.rational 1980324 1) .g) (.mul
    (.rational 341766 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1612502 1) .g) (.mul
    (.rational 554008 1) .v)) .g) (.mul (.rational 28037 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 631626 1) .g) (.mul (.rational 313592 1) .v)) .g) (.mul (.rational
    33100 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2614547 1) .f) (.add (.mul (.rational 6688036 1) .g) (.mul (.rational 1169532 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 6831596 1) .g) (.mul (.rational 2403578 1) .v)) .g) (.mul
    (.rational 124330 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3566092 1)
    .g) (.mul (.rational 1846356 1) .v)) .g) (.mul (.rational 199840 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1003785 1) .g) (.mul (.rational 657312 1) .v)) .g)
    (.mul (.rational 108442 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 5524562 1) .f) (.add (.mul (.rational 16534998 1) .g)
    (.mul (.rational 2929314 1) .v))) .f) (.add (.mul (.add (.mul (.rational 20292090 1) .g) (.mul
    (.rational 7306068 1) .v)) .g) (.mul (.rational 380877 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13213432 1) .g) (.mul (.rational 7114922 1) .v)) .g) (.mul (.rational
    777888 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4922278 1) .g) (.mul
    (.rational 3436144 1) .v)) .g) (.mul (.rational 576865 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1046120 1) .g) (.mul (.rational 862306 1) .v)) .g)
    (.mul (.rational 187546 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8973764 1) .f) (.add (.mul (.rational
    30739616 1) .g) (.mul (.rational 5537150 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    44005429 1) .g) (.mul (.rational 16274094 1) .v)) .g) (.mul (.rational 852971 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 34287094 1) .g) (.mul (.rational 19257272
    1) .v)) .g) (.mul (.rational 2125059 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15851374 1) .g) (.mul (.rational 11807798 1) .v)) .g) (.mul (.rational 2019525 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4431736 1) .g) (.mul
    (.rational 4025762 1) .v)) .g) (.mul (.rational 912905 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 725429 1) .g) (.mul (.rational 760706 1) .v)) .g)
    (.mul (.rational 198072 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11300479 1) .f) (.add (.mul
    (.rational 43573233 1) .g) (.mul (.rational 8022070 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 71223210 1) .g) (.mul (.rational 27199606 1) .v)) .g) (.mul (.rational 1438917 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 64529898 1) .g) (.mul (.rational
    37988128 1) .v)) .g) (.mul (.rational 4257697 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 35552681 1) .g) (.mul (.rational 28357192 1) .v)) .g) (.mul (.rational
    4986956 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 12275311
    1) .g) (.mul (.rational 12299456 1) .v)) .g) (.mul (.rational 2943235 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2628820 1) .g) (.mul (.rational 3161854
    1) .v)) .g) (.mul (.rational 921791 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 330230 1) .g) (.mul (.rational 470744 1) .v)) .g) (.mul (.rational 148138 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 11036344 1) .f) (.add (.mul (.rational 47284314
    1) .g) (.mul (.rational 8946536 1) .v))) .f) (.add (.mul (.add (.mul (.rational 86830708 1)
    .g) (.mul (.rational 34431554 1) .v)) .g) (.mul (.rational 1851601 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 89593978 1) .g) (.mul (.rational 55557108 1) .v)) .g) (.mul
    (.rational 6382786 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 57206461
    1) .g) (.mul (.rational 49027572 1) .v)) .g) (.mul (.rational 8967410 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 23440714 1) .g) (.mul (.rational 25925668
    1) .v)) .g) (.mul (.rational 6627846 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6169384 1) .g) (.mul (.rational 8482192 1) .v)) .g) (.mul (.rational
    2783493 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1008614 1)
    .g) (.mul (.rational 1714048 1) .v)) .g) (.mul (.rational 674800 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 94107 1) .g) (.mul (.rational 206088 1) .v))
    .g) (.mul (.rational 93524 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    8294477 1) .f) (.add (.mul (.rational 39078033 1) .g) (.mul (.rational 7637696 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 79602128 1) .g) (.mul (.rational 32936464 1) .v)) .g) (.mul
    (.rational 1814872 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 92068142 1)
    .g) (.mul (.rational 60386932 1) .v)) .g) (.mul (.rational 7177623 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 66753495 1) .g) (.mul (.rational 61625680 1) .v)) .g)
    (.mul (.rational 11841339 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31583325 1) .g) (.mul (.rational 38542170 1) .v)) .g) (.mul (.rational 10615798 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9821298 1) .g) (.mul
    (.rational 15358304 1) .v)) .g) (.mul (.rational 5666777 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1963350 1) .g) (.mul (.rational 3933126 1) .v)) .g)
    (.mul (.rational 1869659 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 237123 1) .g) (.mul (.rational 635708 1) .v)) .g) (.mul (.rational 387870 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 15051 1) .g) (.mul
    (.rational 60872 1) .v)) .g) (.mul (.rational 50758 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 4713237 1) .f) (.add (.mul (.rational 24210568 1) .g) (.mul
    (.rational 4909174 1) .v))) .f) (.add (.mul (.add (.mul (.rational 54148217 1) .g) (.mul
    (.rational 23469656 1) .v)) .g) (.mul (.rational 1334759 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 69330420 1) .g) (.mul (.rational 48241870 1) .v)) .g) (.mul
    (.rational 5977783 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 56197849
    1) .g) (.mul (.rational 55953740 1) .v)) .g) (.mul (.rational 11374622 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 30091038 1) .g) (.mul (.rational 40446536
    1) .v)) .g) (.mul (.rational 12048778 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10759458 1) .g) (.mul (.rational 19018490 1) .v)) .g) (.mul (.rational
    7844906 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2528630 1)
    .g) (.mul (.rational 5898570 1) .v)) .g) (.mul (.rational 3287710 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 371269 1) .g) (.mul (.rational 1195070 1)
    .v)) .g) (.mul (.rational 908041 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 30306 1) .g) (.mul (.rational 151262 1) .v)) .g) (.mul (.rational 166045 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1012 1) .g) (.mul
    (.rational 10584 1) .v)) .g) (.mul (.rational 19226 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1961060 1) .f) (.add (.mul (.rational 10904622
    1) .g) (.mul (.rational 2301780 1) .v))) .f) (.add (.mul (.add (.mul (.rational 26552552 1)
    .g) (.mul (.rational 12090126 1) .v)) .g) (.mul (.rational 713714 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 37256876 1) .g) (.mul (.rational 27551808 1) .v)) .g) (.mul
    (.rational 3578133 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 33348563
    1) .g) (.mul (.rational 35810754 1) .v)) .g) (.mul (.rational 7731719 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 19899083 1) .g) (.mul (.rational 29378978
    1) .v)) .g) (.mul (.rational 9467200 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8019616 1) .g) (.mul (.rational 15914520 1) .v)) .g) (.mul (.rational
    7280963 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2156210 1)
    .g) (.mul (.rational 5786880 1) .v)) .g) (.mul (.rational 3694802 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 369871 1) .g) (.mul (.rational 1404022 1)
    .v)) .g) (.mul (.rational 1267501 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36419 1) .g) (.mul (.rational 219038 1) .v)) .g) (.mul (.rational 294789 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1548 1) .g) (.mul
    (.rational 19838 1) .v)) .g) (.mul (.rational 44818 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 776 1) .v) .g) (.mul (.rational 3930 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 564273 1) .f) (.add
    (.mul (.rational 3375936 1) .g) (.mul (.rational 743646 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 8886194 1) .g) (.mul (.rational 4258254 1) .v)) .g) (.mul (.rational 261949 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 13549714 1) .g) (.mul (.rational
    10657096 1) .v)) .g) (.mul (.rational 1455064 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13259002 1) .g) (.mul (.rational 15341258 1) .v)) .g) (.mul (.rational
    3522558 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8709154 1)
    .g) (.mul (.rational 14074644 1) .v)) .g) (.mul (.rational 4895807 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3895588 1) .g) (.mul (.rational 8619216 1)
    .v)) .g) (.mul (.rational 4337562 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1174410 1) .g) (.mul (.rational 3585952 1) .v)) .g) (.mul (.rational 2575792
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 228941 1) .g)
    (.mul (.rational 1008778 1) .v)) .g) (.mul (.rational 1049396 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 26106 1) .g) (.mul (.rational 185438 1) .v)) .g)
    (.mul (.rational 293583 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1322 1) .g) (.mul (.rational 20270 1) .v)) .g) (.mul (.rational 54541 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1000 1) .v) .g) (.mul (.rational
    6058 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 298 1) (.pow .v 2)) (.pow .g
    10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 100440 1) .f)
    (.add (.mul (.rational 643140 1) .g) (.mul (.rational 148080 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 1818884 1) .g) (.mul (.rational 918168 1) .v)) .g) (.mul (.rational 58992 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2992574 1) .g) (.mul (.rational
    2503100 1) .v)) .g) (.mul (.rational 359778 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3174611 1) .g) (.mul (.rational 3951346 1) .v)) .g) (.mul (.rational 964514
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2272451 1) .g)
    (.mul (.rational 4004620 1) .v)) .g) (.mul (.rational 1498785 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1114326 1) .g) (.mul (.rational 2730654 1) .v))
    .g) (.mul (.rational 1500005 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 370854 1) .g) (.mul (.rational 1275376 1) .v)) .g) (.mul (.rational 1016511 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 80493 1) .g) (.mul
    (.rational 406114 1) .v)) .g) (.mul (.rational 476825 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10333 1) .g) (.mul (.rational 85240 1) .v)) .g) (.mul
    (.rational 154673 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    598 1) .g) (.mul (.rational 10758 1) .v)) .g) (.mul (.rational 33565 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 624 1) .v) .g) (.mul (.rational 4421 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 267 1) (.pow .v 2)) (.pow .g 10))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8340 1) .f) (.add (.mul
    (.rational 56892 1) .g) (.mul (.rational 13704 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    171959 1) .g) (.mul (.rational 91464 1) .v)) .g) (.mul (.rational 6144 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 303408 1) .g) (.mul (.rational 269698 1) .v)) .g)
    (.mul (.rational 40812 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    346441 1) .g) (.mul (.rational 462906 1) .v)) .g) (.mul (.rational 119957 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 267978 1) .g) (.mul (.rational
    512954 1) .v)) .g) (.mul (.rational 205824 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 142601 1) .g) (.mul (.rational 384618 1) .v)) .g) (.mul
    (.rational 229097 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    51740 1) .g) (.mul (.rational 198622 1) .v)) .g) (.mul (.rational 173826 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 12307 1) .g) (.mul (.rational 70270
    1) .v)) .g) (.mul (.rational 91781 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1742 1) .g) (.mul (.rational 16454 1) .v)) .g) (.mul (.rational 33628 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 112 1) .g) (.mul
    (.rational 2326 1) .v)) .g) (.mul (.rational 8263 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 152 1) .v) .g) (.mul (.rational 1238 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 86 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0053

namespace FullHigh0054
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c230 e f g v*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_001_0 e g v+4*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^1+6*SmallGap.ReducedLayers.high0_001_2 e g v*e^2+4*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_002_1 e g v+3*SmallGap.ReducedLayers.high1_002_2 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_002_3 e g v*e^2+1*SmallGap.ReducedLayers.high1_002_4 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5060 1) .e) (.add (.mul
    (.rational 44136 1) .f) (.add (.mul (.rational 54171 1) .g) (.mul (.rational 8820 1) .v))))
    .e) (.add (.mul (.add (.mul (.rational 236716 1) .f) (.add (.mul (.rational 394712 1) .g)
    (.mul (.rational 67376 1) .v))) .f) (.add (.mul (.add (.mul (.rational 237634 1) .g) (.mul
    (.rational 78350 1) .v)) .g) (.mul (.rational 3960 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 870306 1) .f) (.add (.mul (.rational 1830199 1) .g) (.mul
    (.rational 317580 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1479039 1) .g) (.mul
    (.rational 501200 1) .v)) .g) (.mul (.rational 27058 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 576052 1) .g) (.mul (.rational 272866 1) .v)) .g) (.mul (.rational
    31085 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2317544 1) .f) (.add (.mul (.rational 5872956 1) .g) (.mul (.rational 1029296 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 5946156 1) .g) (.mul (.rational 2055150 1) .v)) .g) (.mul
    (.rational 113618 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3081380 1)
    .g) (.mul (.rational 1516100 1) .v)) .g) (.mul (.rational 176869 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 863596 1) .g) (.mul (.rational 508658 1) .v)) .g)
    (.mul (.rational 91002 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 4606915 1) .f) (.add (.mul (.rational 13643263 1) .g) (.mul
    (.rational 2422032 1) .v))) .f) (.add (.mul (.add (.mul (.rational 16574847 1) .g) (.mul
    (.rational 5864178 1) .v)) .g) (.mul (.rational 327248 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10699005 1) .g) (.mul (.rational 5486354 1) .v)) .g) (.mul (.rational
    646011 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3961144 1) .g) (.mul
    (.rational 2504292 1) .v)) .g) (.mul (.rational 453957 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 839938 1) .g) (.mul (.rational 578462 1) .v)) .g)
    (.mul (.rational 133751 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6943814 1) .f) (.add (.mul (.rational
    23508166 1) .g) (.mul (.rational 4256832 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    33274088 1) .g) (.mul (.rational 12149668 1) .v)) .g) (.mul (.rational 683724 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 25664878 1) .g) (.mul (.rational 13839288
    1) .v)) .g) (.mul (.rational 1648417 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11772970 1) .g) (.mul (.rational 8062470 1) .v)) .g) (.mul (.rational 1491983 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3277532 1) .g) (.mul
    (.rational 2560772 1) .v)) .g) (.mul (.rational 621990 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 536664 1) .g) (.mul (.rational 437650 1) .v)) .g)
    (.mul (.rational 114813 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7975886 1) .f) (.add (.mul
    (.rational 30361370 1) .g) (.mul (.rational 5655152 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 49011753 1) .g) (.mul (.rational 18644048 1) .v)) .g) (.mul (.rational 1065332 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 43902822 1) .g) (.mul (.rational
    25143598 1) .v)) .g) (.mul (.rational 3063280 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 23964626 1) .g) (.mul (.rational 17950662 1) .v)) .g) (.mul (.rational
    3450467 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8225050 1)
    .g) (.mul (.rational 7349922 1) .v)) .g) (.mul (.rational 1923986 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1758739 1) .g) (.mul (.rational 1754348 1)
    .v)) .g) (.mul (.rational 550916 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 221680 1) .g) (.mul (.rational 238252 1) .v)) .g) (.mul (.rational 75614 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 6950281 1) .f) (.add (.mul (.rational 29367542
    1) .g) (.mul (.rational 5673046 1) .v))) .f) (.add (.mul (.add (.mul (.rational 53202451 1)
    .g) (.mul (.rational 21268684 1) .v)) .g) (.mul (.rational 1246993 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 54210142 1) .g) (.mul (.rational 33259812 1) .v)) .g) (.mul
    (.rational 4202757 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 34248811
    1) .g) (.mul (.rational 28264538 1) .v)) .g) (.mul (.rational 5745334 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 13929984 1) .g) (.mul (.rational 14286784
    1) .v)) .g) (.mul (.rational 4108712 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3655301 1) .g) (.mul (.rational 4437092 1) .v)) .g) (.mul (.rational
    1662291 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 598952 1)
    .g) (.mul (.rational 849130 1) .v)) .g) (.mul (.rational 390410 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 56292 1) .g) (.mul (.rational 97574 1) .v)) .g)
    (.mul (.rational 54646 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4525429 1)
    .f) (.add (.mul (.rational 21006867 1) .g) (.mul (.rational 4238628 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 42172355 1) .g) (.mul (.rational 17843228 1) .v)) .g) (.mul (.rational
    1084916 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 48116864 1) .g) (.mul
    (.rational 31824200 1) .v)) .g) (.mul (.rational 4222838 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 34480267 1) .g) (.mul (.rational 31475758 1) .v)) .g) (.mul
    (.rational 6854607 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    16174243 1) .g) (.mul (.rational 19018374 1) .v)) .g) (.mul (.rational 6059993 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5009229 1) .g) (.mul
    (.rational 7317136 1) .v)) .g) (.mul (.rational 3217795 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1003070 1) .g) (.mul (.rational 1819944 1) .v)) .g)
    (.mul (.rational 1080424 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 122114 1) .g) (.mul (.rational 290688 1) .v)) .g) (.mul (.rational 238729 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 7855 1) .g) (.mul
    (.rational 28314 1) .v)) .g) (.mul (.rational 35227 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 2136300 1) .f) (.add (.mul (.rational 10802282 1) .g) (.mul
    (.rational 2289420 1) .v))) .f) (.add (.mul (.add (.mul (.rational 23788693 1) .g) (.mul
    (.rational 10706822 1) .v)) .g) (.mul (.rational 680982 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 30018374 1) .g) (.mul (.rational 21483040 1) .v)) .g) (.mul
    (.rational 3019593 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 24025839
    1) .g) (.mul (.rational 24282770 1) .v)) .g) (.mul (.rational 5704510 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 12742900 1) .g) (.mul (.rational 17102632
    1) .v)) .g) (.mul (.rational 6037820 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4534651 1) .g) (.mul (.rational 7861146 1) .v)) .g) (.mul (.rational
    3980082 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1067340 1)
    .g) (.mul (.rational 2407060 1) .v)) .g) (.mul (.rational 1729518 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 158149 1) .g) (.mul (.rational 491052 1)
    .v)) .g) (.mul (.rational 513069 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 13136 1) .g) (.mul (.rational 64404 1) .v)) .g) (.mul (.rational 104350 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 450 1) .g) (.mul
    (.rational 4808 1) .v)) .g) (.mul (.rational 13589 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 691648 1) .f) (.add (.mul (.rational 3782661 1)
    .g) (.mul (.rational 845484 1) .v))) .f) (.add (.mul (.add (.mul (.rational 9061457 1) .g)
    (.mul (.rational 4352352 1) .v)) .g) (.mul (.rational 291278 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12520246 1) .g) (.mul (.rational 9710816 1) .v)) .g) (.mul
    (.rational 1452807 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11056959
    1) .g) (.mul (.rational 12356064 1) .v)) .g) (.mul (.rational 3137270 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6530780 1) .g) (.mul (.rational 9941436
    1) .v)) .g) (.mul (.rational 3870580 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2618288 1) .g) (.mul (.rational 5310568 1) .v)) .g) (.mul (.rational
    3041248 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 705140 1)
    .g) (.mul (.rational 1926602 1) .v)) .g) (.mul (.rational 1610661 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 122223 1) .g) (.mul (.rational 475718 1)
    .v)) .g) (.mul (.rational 592603 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12288 1) .g) (.mul (.rational 77598 1) .v)) .g) (.mul (.rational 151592 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 540 1) .g) (.mul
    (.rational 7560 1) .v)) .g) (.mul (.rational 25628 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 326 1) .v) .g) (.mul (.rational 2483 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 137565 1) .f) (.add
    (.mul (.rational 808782 1) .g) (.mul (.rational 191154 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2092680 1) .g) (.mul (.rational 1074426 1) .v)) .g) (.mul (.rational 75915 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3139814 1) .g) (.mul (.rational 2639078
    1) .v)) .g) (.mul (.rational 421020 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3029348 1) .g) (.mul (.rational 3732352 1) .v)) .g) (.mul (.rational 1023153 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1968632 1) .g) (.mul
    (.rational 3374648 1) .v)) .g) (.mul (.rational 1440027 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 875760 1) .g) (.mul (.rational 2050524 1) .v)) .g)
    (.mul (.rational 1309362 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 264520 1) .g) (.mul (.rational 856930 1) .v)) .g) (.mul (.rational 813003 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 52163 1) .g) (.mul
    (.rational 246842 1) .v)) .g) (.mul (.rational 354185 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6088 1) .g) (.mul (.rational 47644 1) .v)) .g) (.mul
    (.rational 108213 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    320 1) .g) (.mul (.rational 5616 1) .v)) .g) (.mul (.rational 22239 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 306 1) .v) .g) (.mul (.rational 2741 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 150 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12690 1) .f) (.add (.mul
    (.rational 79779 1) .g) (.mul (.rational 19968 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    221606 1) .g) (.mul (.rational 121674 1) .v)) .g) (.mul (.rational 9090 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 358507 1) .g) (.mul (.rational 326162 1) .v)) .g)
    (.mul (.rational 55485 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    374762 1) .g) (.mul (.rational 507206 1) .v)) .g) (.mul (.rational 149752 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 265297 1) .g) (.mul (.rational
    508430 1) .v)) .g) (.mul (.rational 236358 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 129360 1) .g) (.mul (.rational 345462 1) .v)) .g) (.mul
    (.rational 243324 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    43142 1) .g) (.mul (.rational 162778 1) .v)) .g) (.mul (.rational 172477 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9479 1) .g) (.mul (.rational 53252
    1) .v)) .g) (.mul (.rational 86303 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1247 1) .g) (.mul (.rational 11752 1) .v)) .g) (.mul (.rational 30441 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 75 1) .g) (.mul
    (.rational 1598 1) .v)) .g) (.mul (.rational 7287 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 102 1) .v) .g) (.mul (.rational 1067 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 72 1) (.pow .v 2)) (.pow .g 10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0054

namespace FullHigh0055
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_001_1 e g v+4*SmallGap.ReducedLayers.high0_001_2 e g
    v*e^1+6*SmallGap.ReducedLayers.high0_001_3 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_002_2 e g v+3*SmallGap.ReducedLayers.high1_002_3 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_002_4 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3145 1) .e) (.add (.mul (.rational
    26816 1) .f) (.add (.mul (.rational 32764 1) .g) (.mul (.rational 5400 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 139701 1) .f) (.add (.mul (.rational 231547 1) .g) (.mul
    (.rational 39730 1) .v))) .f) (.add (.mul (.add (.mul (.rational 138775 1) .g) (.mul
    (.rational 45100 1) .v)) .g) (.mul (.rational 2415 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 494591 1) .f) (.add (.mul (.rational 1032226 1) .g) (.mul
    (.rational 179176 1) .v))) .f) (.add (.mul (.add (.mul (.rational 828989 1) .g) (.mul
    (.rational 274708 1) .v)) .g) (.mul (.rational 15815 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 321789 1) .g) (.mul (.rational 143122 1) .v)) .g) (.mul (.rational
    17659 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1254197 1) .f) (.add (.mul (.rational 3148940 1) .g) (.mul (.rational 550980 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 3162618 1) .g) (.mul (.rational 1065208 1) .v)) .g) (.mul
    (.rational 63132 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1629849 1) .g)
    (.mul (.rational 749410 1) .v)) .g) (.mul (.rational 94944 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 456113 1) .g) (.mul (.rational 232920 1) .v)) .g) (.mul
    (.rational 45968 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 2341012 1) .f) (.add (.mul (.rational 6856674 1) .g) (.mul
    (.rational 1217506 1) .v))) .f) (.add (.mul (.add (.mul (.rational 8247260 1) .g) (.mul
    (.rational 2849478 1) .v)) .g) (.mul (.rational 171343 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5282159 1) .g) (.mul (.rational 2540660 1) .v)) .g) (.mul (.rational
    325899 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1947325 1) .g) (.mul
    (.rational 1076748 1) .v)) .g) (.mul (.rational 215177 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 413151 1) .g) (.mul (.rational 218686 1) .v)) .g)
    (.mul (.rational 55585 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 3254581 1) .f) (.add (.mul (.rational 10877465
    1) .g) (.mul (.rational 1982376 1) .v))) .f) (.add (.mul (.add (.mul (.rational 15212558 1)
    .g) (.mul (.rational 5468726 1) .v)) .g) (.mul (.rational 334124 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11614936 1) .g) (.mul (.rational 5947658 1) .v)) .g) (.mul
    (.rational 777676 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5290130
    1) .g) (.mul (.rational 3239288 1) .v)) .g) (.mul (.rational 666603 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1468468 1) .g) (.mul (.rational 924172 1)
    .v)) .g) (.mul (.rational 251528 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 240883 1) .g) (.mul (.rational 130038 1) .v)) .g) (.mul (.rational 35861 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 3369288 1) .f) (.add (.mul (.rational 12638433 1) .g) (.mul
    (.rational 2393602 1) .v))) .f) (.add (.mul (.add (.mul (.rational 20116513 1) .g) (.mul
    (.rational 7635594 1) .v)) .g) (.mul (.rational 479397 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17793540 1) .g) (.mul (.rational 9866848 1) .v)) .g) (.mul (.rational
    1339038 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 9615262 1) .g)
    (.mul (.rational 6646330 1) .v)) .g) (.mul (.rational 1449977 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3278866 1) .g) (.mul (.rational 2502738 1) .v))
    .g) (.mul (.rational 762935 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 699478 1) .g) (.mul (.rational 525258 1) .v)) .g) (.mul (.rational 198542 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 88231 1) .g) (.mul
    (.rational 57612 1) .v)) .g) (.mul (.rational 22561 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2565394 1) .f) (.add (.mul (.rational 10661888 1) .g) (.mul (.rational 2122188 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 19004464 1) .g) (.mul (.rational 7711808 1) .v))
    .g) (.mul (.rational 504979 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    19073536 1) .g) (.mul (.rational 11603476 1) .v)) .g) (.mul (.rational 1667007 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11893492 1) .g) (.mul (.rational
    9390092 1) .v)) .g) (.mul (.rational 2226972 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4789064 1) .g) (.mul (.rational 4454918 1) .v)) .g) (.mul
    (.rational 1556052 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1248577 1) .g) (.mul (.rational 1274072 1) .v)) .g) (.mul (.rational 620314 1) (.pow .v 2)))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 203817 1) .g) (.mul (.rational
    219816 1) .v)) .g) (.mul (.rational 148715 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 19058 1) .g) (.mul (.rational 22432 1) .v)) .g) (.mul (.rational
    23189 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1396758 1) .f) (.add
    (.mul (.rational 6365758 1) .g) (.mul (.rational 1343504 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 12547236 1) .g) (.mul (.rational 5492260 1) .v)) .g) (.mul (.rational 380004 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 14065130 1) .g) (.mul (.rational
    9462112 1) .v)) .g) (.mul (.rational 1460298 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9917868 1) .g) (.mul (.rational 8981592 1) .v)) .g) (.mul (.rational 2347448
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4589484 1) .g)
    (.mul (.rational 5171670 1) .v)) .g) (.mul (.rational 2072956 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1406572 1) .g) (.mul (.rational 1886078 1) .v))
    .g) (.mul (.rational 1121565 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 279431 1) .g) (.mul (.rational 445612 1) .v)) .g) (.mul (.rational 398567 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 33725 1) .g) (.mul
    (.rational 68796 1) .v)) .g) (.mul (.rational 97931 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2129 1) .g) (.mul (.rational 6674 1) .v)) .g) (.mul
    (.rational 16423 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    515190 1) .f) (.add (.mul (.rational 2553158 1) .g) (.mul (.rational 574864 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 5508712 1) .g) (.mul (.rational 2615144 1) .v)) .g) (.mul
    (.rational 192840 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6812484 1)
    .g) (.mul (.rational 5084884 1) .v)) .g) (.mul (.rational 849462 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5349491 1) .g) (.mul (.rational 5548640 1) .v)) .g)
    (.mul (.rational 1603352 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2789387 1) .g) (.mul (.rational 3762888 1) .v)) .g) (.mul (.rational 1714748 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 978622 1) .g) (.mul
    (.rational 1667650 1) .v)) .g) (.mul (.rational 1165044 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 227704 1) .g) (.mul (.rational 497338 1) .v)) .g)
    (.mul (.rational 537194 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 33371 1) .g) (.mul (.rational 101088 1) .v)) .g) (.mul (.rational 174165 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2727 1) .g) (.mul
    (.rational 13610 1) .v)) .g) (.mul (.rational 39116 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 90 1) .g) (.mul (.rational 1062 1) .v)) .g) (.mul
    (.rational 5516 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 115452 1) .f) (.add (.mul (.rational 617760 1) .g) (.mul (.rational 148932 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1446942 1) .g) (.mul (.rational 746748 1) .v)) .g)
    (.mul (.rational 58932 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1954598
    1) .g) (.mul (.rational 1618456 1) .v)) .g) (.mul (.rational 293220 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1688784 1) .g) (.mul (.rational 1996280 1) .v)) .g)
    (.mul (.rational 635856 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 977537 1) .g) (.mul (.rational 1556862 1) .v)) .g) (.mul (.rational 796710 1) (.pow
    .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 385107 1) .g) (.mul
    (.rational 809730 1) .v)) .g) (.mul (.rational 646815 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 102234 1) .g) (.mul (.rational 289632 1) .v)) .g) (.mul
    (.rational 361866 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    17507 1) .g) (.mul (.rational 72118 1) .v)) .g) (.mul (.rational 143575 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1738 1) .g) (.mul (.rational 12194 1)
    .v)) .g) (.mul (.rational 39951 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 75 1) .g) (.mul (.rational 1258 1) .v)) .g) (.mul (.rational 7287 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 58 1) .v) .g) (.mul (.rational 748
    1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 11880 1) .f) (.add (.mul (.rational 68220 1) .g) (.mul (.rational 17640 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 172254 1) .g) (.mul (.rational 96660 1) .v)) .g) (.mul
    (.rational 8172 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 252106 1) .g)
    (.mul (.rational 231020 1) .v)) .g) (.mul (.rational 45324 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 237358 1) .g) (.mul (.rational 317608 1) .v)) .g) (.mul
    (.rational 110904 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    150740 1) .g) (.mul (.rational 279532 1) .v)) .g) (.mul (.rational 158838 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 65712 1) .g) (.mul (.rational
    166312 1) .v)) .g) (.mul (.rational 149185 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 19524 1) .g) (.mul (.rational 68960 1) .v)) .g) (.mul (.rational
    97449 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3803 1) .g)
    (.mul (.rational 20140 1) .v)) .g) (.mul (.rational 45452 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 440 1) .g) (.mul (.rational 4046 1) .v)) .g) (.mul
    (.rational 15034 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    23 1) .g) (.mul (.rational 508 1) .v)) .g) (.mul (.rational 3354 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 30 1) .v) .g) (.mul (.rational 449 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 27 1) (.pow .v 2)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0055

namespace FullHigh0056
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_001_2 e g v+4*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_002_3 e g v+3*SmallGap.ReducedLayers.high1_002_4 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1089 1) .e) (.add (.mul (.rational 9126 1) .f)
    (.add (.mul (.rational 11112 1) .g) (.mul (.rational 1842 1) .v)))) .e) (.add (.mul (.add
    (.mul (.rational 46404 1) .f) (.add (.mul (.rational 76531 1) .g) (.mul (.rational 13122 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 45756 1) .g) (.mul (.rational 14532 1) .v)) .g)
    (.mul (.rational 821 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    158805 1) .f) (.add (.mul (.rational 329197 1) .g) (.mul (.rational 56862 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 263251 1) .g) (.mul (.rational 84542 1) .v)) .g) (.mul (.rational
    5184 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 102191 1) .g) (.mul
    (.rational 41948 1) .v)) .g) (.mul (.rational 5622 1) (.pow .v 2))) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 384327 1) .f) (.add (.mul (.rational 956470 1)
    .g) (.mul (.rational 166428 1) .v))) .f) (.add (.mul (.add (.mul (.rational 954499 1) .g)
    (.mul (.rational 310644 1) .v)) .g) (.mul (.rational 19773 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 490761 1) .g) (.mul (.rational 207012 1) .v)) .g) (.mul
    (.rational 28678 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 137844 1)
    .g) (.mul (.rational 58330 1) .v)) .g) (.mul (.rational 12977 1) (.pow .v 2))) (.pow .g 2))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 673293 1) .f) (.add
    (.mul (.rational 1950250 1) .g) (.mul (.rational 345990 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2325200 1) .g) (.mul (.rational 780038 1) .v)) .g) (.mul (.rational 50809 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1481808 1) .g) (.mul (.rational 658004
    1) .v)) .g) (.mul (.rational 92972 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 546601 1) .g) (.mul (.rational 253566 1) .v)) .g) (.mul (.rational 57356 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 116854 1) .g) (.mul
    (.rational 41768 1) .v)) .g) (.mul (.rational 12502 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 859257 1) .f)
    (.add (.mul (.rational 2832933 1) .g) (.mul (.rational 521472 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 3916530 1) .g) (.mul (.rational 1385634 1) .v)) .g) (.mul (.rational 92916 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2966328 1) .g) (.mul (.rational
    1429862 1) .v)) .g) (.mul (.rational 209020 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1347052 1) .g) (.mul (.rational 716756 1) .v)) .g) (.mul (.rational 170053 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 375238 1) .g) (.mul
    (.rational 174564 1) .v)) .g) (.mul (.rational 57980 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 62181 1) .g) (.mul (.rational 15728 1) .v)) .g) (.mul
    (.rational 5775 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 792090 1) .f) (.add (.mul (.rational
    2922918 1) .g) (.mul (.rational 568410 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4584993
    1) .g) (.mul (.rational 1748844 1) .v)) .g) (.mul (.rational 123013 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4008975 1) .g) (.mul (.rational 2155376 1) .v)) .g)
    (.mul (.rational 335568 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2151140 1) .g) (.mul (.rational 1357360 1) .v)) .g) (.mul (.rational 353613 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 732572 1) .g) (.mul (.rational
    458998 1) .v)) .g) (.mul (.rational 180602 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 156961 1) .g) (.mul (.rational 78302 1) .v)) .g) (.mul (.rational
    46053 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19943 1) .g)
    (.mul (.rational 4690 1) .v)) .g) (.mul (.rational 5628 1) (.pow .v 2))) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 513981 1) .f) (.add (.mul (.rational 2095218 1) .g) (.mul (.rational 436986
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 3668031 1) .g) (.mul (.rational 1534248 1)
    .v)) .g) (.mul (.rational 115626 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3624568 1) .g) (.mul (.rational 2213366 1) .v)) .g) (.mul (.rational 377172 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2233542 1) .g) (.mul
    (.rational 1697752 1) .v)) .g) (.mul (.rational 501456 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 892972 1) .g) (.mul (.rational 750086 1) .v)) .g)
    (.mul (.rational 355236 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 232162 1) .g) (.mul (.rational 194412 1) .v)) .g) (.mul (.rational 150085 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 37819 1) .g) (.mul
    (.rational 29166 1) .v)) .g) (.mul (.rational 41518 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3493 1) .g) (.mul (.rational 2414 1) .v)) .g) (.mul
    (.rational 8099 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 222714 1) .f)
    (.add (.mul (.rational 992475 1) .g) (.mul (.rational 224316 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 1914120 1) .g) (.mul (.rational 887166 1) .v)) .g) (.mul (.rational 72750 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2102999 1) .g) (.mul (.rational
    1471060 1) .v)) .g) (.mul (.rational 278796 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1457331 1) .g) (.mul (.rational 1335806 1) .v)) .g) (.mul (.rational 452298
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 664981 1) .g)
    (.mul (.rational 731462 1) .v)) .g) (.mul (.rational 412380 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 201464 1) .g) (.mul (.rational 253208 1) .v)) .g)
    (.mul (.rational 239301 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 39477 1) .g) (.mul (.rational 57384 1) .v)) .g) (.mul (.rational 95576 1) (.pow .v
    2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4627 1) .g) (.mul (.rational
    8740 1) .v)) .g) (.mul (.rational 27022 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 268 1) .g) (.mul (.rational 854 1) .v)) .g) (.mul (.rational 5062 1)
    (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 57834 1) .f) (.add
    (.mul (.rational 279342 1) .g) (.mul (.rational 68796 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 587349 1) .g) (.mul (.rational 302940 1) .v)) .g) (.mul (.rational 27216 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 708300 1) .g) (.mul (.rational 567954 1)
    .v)) .g) (.mul (.rational 120204 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 543126 1) .g) (.mul (.rational 595500 1) .v)) .g) (.mul (.rational 230370 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 277013 1) .g) (.mul
    (.rational 387574 1) .v)) .g) (.mul (.rational 255348 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 95079 1) .g) (.mul (.rational 165674 1) .v)) .g) (.mul
    (.rational 184980 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    21520 1) .g) (.mul (.rational 48428 1) .v)) .g) (.mul (.rational 93548 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3003 1) .g) (.mul (.rational 9880 1) .v))
    .g) (.mul (.rational 33637 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 219 1) .g) (.mul (.rational 1344 1) .v)) .g) (.mul (.rational 8240 1) (.pow .v 2)))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5 1) .g) (.mul (.rational 100 1)
    .v)) .g) (.mul (.rational 1224 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 6804 1) .f) (.add (.mul (.rational 35370 1) .g) (.mul (.rational
    9504 1) .v))) .f) (.add (.mul (.add (.mul (.rational 80388 1) .g) (.mul (.rational 46116 1)
    .v)) .g) (.mul (.rational 4536 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    105303 1) .g) (.mul (.rational 96360 1) .v)) .g) (.mul (.rational 22680 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 88212 1) .g) (.mul (.rational 114246 1) .v)) .g)
    (.mul (.rational 49974 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 49489 1) .g) (.mul (.rational 85598 1) .v)) .g) (.mul (.rational 64680 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 18849 1) .g) (.mul (.rational
    42970 1) .v)) .g) (.mul (.rational 55361 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4792 1) .g) (.mul (.rational 15008 1) .v)) .g) (.mul (.rational 33252
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 765 1) .g) (.mul
    (.rational 3694 1) .v)) .g) (.mul (.rational 14249 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 66 1) .g) (.mul (.rational 612 1) .v)) .g) (.mul (.rational
    4230 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2 1) .g)
    (.mul (.rational 58 1) .v)) .g) (.mul (.rational 801 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 2 1) .v) .g) (.mul (.rational 82 1) (.pow .v 2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0056

namespace FullHigh0057
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.high0_001_3 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_002_4 e g v)

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

end FullHigh0057

end
end SPR.N6.Tail.CoreEndpoint
