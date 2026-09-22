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

namespace FullLow2120
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    3*SmallGap.PolarCoefficientsLow0.c230 e f g v*e*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_0 e g v*e^4+6*SmallGap.ReducedLayers.low0_010_0
    e g v*e^2+12*SmallGap.ReducedLayers.low0_001_0 e g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_0 e g v*e^4+3*SmallGap.ReducedLayers.low1_110_0 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_101_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_011_0 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_002_0 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 120 1) .v) (.rational 3360 1)) .e) (.add (.mul (.add (.mul (.add
    (.mul (.rational 120 1) .v) (.rational 2616 1)) .v) (.rational 29700 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 300 1) .v) (.rational 4152 1)) .v) (.rational 37908 1)) .g))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2388 1) .v) (.rational 26628 1)) .v)
    (.rational 165576 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7164 1) .v) (.rational
    58008 1)) .v) (.rational 294390 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7764 1)
    .v) (.rational 42684 1)) .v) (.rational 183108 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 21876 1) .v) (.rational 167532 1)) .v)
    (.rational 653890 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 76566 1) .v) (.rational
    463854 1)) .v) (.rational 1507167 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 103722
    1) .v) (.rational 486066 1)) .v) (.rational 1317006 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 67890 1) .v) (.rational 243018 1)) .v) (.rational 543319 1)) (.pow .g
    3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    122508 1) .v) (.rational 727764 1)) .v) (.rational 1945122 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 490032 1) .v) (.rational 2441622 1)) .v) (.rational 5559904 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 792576 1) .v) (.rational 3286812 1)) .v) (.rational
    6341199 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 662616 1) .v)
    (.rational 2284008 1)) .v) (.rational 3693594 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 301812 1) .v) (.rational 871872 1)) .v) (.rational 1164493 1)) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 469434 1) .v) (.rational 2310700 1)) .v) (.rational 4515406 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2112453 1) .v) (.rational 9093724 1)) .v) (.rational 15516019 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3959808 1) .v) (.rational 14870574 1)) .v)
    (.rational 22026426 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4001214 1)
    .v) (.rational 13125628 1)) .v) (.rational 16758505 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2349654 1) .v) (.rational 6777892 1)) .v) (.rational 7408234 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 800157 1) .v) (.rational 2057112 1)) .v)
    (.rational 1918206 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1304426 1) .v) (.rational 5539084
    1)) .v) (.rational 8345401 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 6522130 1) .v)
    (.rational 24979652 1)) .v) (.rational 33660275 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13876349 1) .v) (.rational 47899732 1)) .v) (.rational 57476399 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 16372616 1) .v) (.rational 51017362 1)) .v)
    (.rational 54287550 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11688184 1)
    .v) (.rational 33028496 1)) .v) (.rational 31078094 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5153342 1) .v) (.rational 13315444 1)) .v) (.rational 11079929 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1364409 1) .v) (.rational 3262512
    1)) .v) (.rational 2412584 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2715768 1) .v)
    (.rational 10214138 1)) .v) (.rational 12399374 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14936724 1) .v) (.rational 51864422 1)) .v) (.rational 57570845 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 35513826 1) .v) (.rational 113816072 1)) .v) (.rational
    115174753 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 47786787 1) .v)
    (.rational 141513458 1)) .v) (.rational 130237565 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 39980664 1) .v) (.rational 109719516 1)) .v) (.rational 91730336 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 21484386 1) .v) (.rational 54909746
    1)) .v) (.rational 41739388 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7376154 1) .v) (.rational 17680320 1)) .v) (.rational 12263211 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1548303 1) .v) (.rational 3510550 1)) .v) (.rational
    2236140 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4313337 1) .v)
    (.rational 14630040 1)) .v) (.rational 14841712 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25880022 1) .v) (.rational 82512786 1)) .v) (.rational 78042810 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 67942441 1) .v) (.rational 203566982 1)) .v) (.rational
    179132338 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 102478670 1) .v)
    (.rational 288709168 1)) .v) (.rational 236007844 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 97999654 1) .v) (.rational 260024606 1)) .v) (.rational 197343097 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 61806838 1) .v) (.rational
    154880516 1)) .v) (.rational 109201102 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25878749 1) .v) (.rational 61485862 1)) .v) (.rational 40359225 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7042486 1) .v) (.rational 15940268 1)) .v)
    (.rational 9774850 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1176723 1)
    .v) (.rational 2549766 1)) .v) (.rational 1466814 1)) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 5267454 1) .v) (.rational 16320736 1)) .v) (.rational
    14256848 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 34238451 1) .v) (.rational 101141225
    1)) .v) (.rational 83739196 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 98299524 1)
    .v) (.rational 276735060 1)) .v) (.rational 216819144 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 164024421 1) .v) (.rational 440109425 1)) .v) (.rational 325935204 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 176053848 1) .v) (.rational
    450544600 1)) .v) (.rational 315212572 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 126993600 1) .v) (.rational 310383131 1)) .v) (.rational 205175165 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 62400936 1) .v) (.rational 145942134 1)) .v)
    (.rational 91234294 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 20691501 1)
    .v) (.rational 46417463 1)) .v) (.rational 27482775 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4474182 1) .v) (.rational 9649544 1)) .v) (.rational 5420024 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 587439 1) .v) (.rational 1219724 1)) .v)
    (.rational 650478 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 4943559 1) .v) (.rational 14126596 1)) .v) (.rational 10887862 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 34604913 1) .v) (.rational 95352064 1)) .v) (.rational 70606498
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 107799582 1) .v) (.rational 286263703
    1)) .v) (.rational 203395436 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    196933623 1) .v) (.rational 503860548 1)) .v) (.rational 343170156 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 233983780 1) .v) (.rational 576825463 1)) .v) (.rational
    376334413 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 189444449 1) .v)
    (.rational 450178852 1)) .v) (.rational 281261189 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 106400209 1) .v) (.rational 243891421 1)) .v) (.rational 145924701 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 41346121 1) .v) (.rational 91497994
    1)) .v) (.rational 52438526 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10867907 1) .v) (.rational 23235225 1)) .v) (.rational 12756654 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1839898 1) .v) (.rational 3800108 1)) .v) (.rational
    1997359 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 182595 1) .v)
    (.rational 363640 1)) .v) (.rational 182516 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3534108 1) .v) (.rational 9383712 1)) .v)
    (.rational 6508478 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 26505810 1) .v) (.rational
    68489565 1)) .v) (.rational 46143867 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    89003348 1) .v) (.rational 223667671 1)) .v) (.rational 146223332 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 176516977 1) .v) (.rational 431204216 1)) .v) (.rational
    273284031 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 229635770 1) .v)
    (.rational 545118769 1)) .v) (.rational 334657148 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 205720515 1) .v) (.rational 474469080 1)) .v) (.rational 281982054 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 129550002 1) .v) (.rational
    290281613 1)) .v) (.rational 166921761 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 57435852 1) .v) (.rational 125023346 1)) .v) (.rational 69524360 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 17642218 1) .v) (.rational 37296377 1)) .v)
    (.rational 20041594 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3615479 1)
    .v) (.rational 7416453 1)) .v) (.rational 3845555 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 459808 1) .v) (.rational 913174 1)) .v) (.rational 455589 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 31431 1) .v) (.rational 60132 1)) .v)
    (.rational 28701 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1888275 1) .v) (.rational 4687340 1)) .v) (.rational
    2973278 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 15106200 1) .v) (.rational 36769684
    1)) .v) (.rational 22856450 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 54372843 1)
    .v) (.rational 129690948 1)) .v) (.rational 78931905 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 116251401 1) .v) (.rational 271557008 1)) .v) (.rational 161680764 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 164134743 1) .v) (.rational
    375288661 1)) .v) (.rational 218406819 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 160872345 1) .v) (.rational 359861506 1)) .v) (.rational 204551350 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 111936481 1) .v) (.rational 244852963 1))
    .v) (.rational 135830435 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    55522133 1) .v) (.rational 118696488 1)) .v) (.rational 64205018 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 19395103 1) .v) (.rational 40491197 1)) .v) (.rational
    21331828 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 4623211 1) .v)
    (.rational 9413502 1)) .v) (.rational 4821780 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 706922 1) .v) (.rational 1400685 1)) .v) (.rational 695626 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 61294 1) .v) (.rational 117700 1)) .v) (.rational
    56406 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2217 1) .v) (.rational
    4094 1)) .v) (.rational 1877 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 729036 1) .v) (.rational 1701068 1)) .v)
    (.rational 1000142 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 6196806 1) .v) (.rational
    14267387 1)) .v) (.rational 8278173 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    23794188 1) .v) (.rational 54025376 1)) .v) (.rational 30912322 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 54520290 1) .v) (.rational 122006389 1)) .v) (.rational
    68793655 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 82934786 1) .v)
    (.rational 182812263 1)) .v) (.rational 101504290 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 88124608 1) .v) (.rational 191227707 1)) .v) (.rational 104474757 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 66972494 1) .v) (.rational
    142974039 1)) .v) (.rational 76796212 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 36614028 1) .v) (.rational 76841035 1)) .v) (.rational 40539871 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 14259210 1) .v) (.rational 29391029 1)) .v)
    (.rational 15212080 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3846306 1)
    .v) (.rational 7776078 1)) .v) (.rational 3941910 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 679222 1) .v) (.rational 1344189 1)) .v) (.rational 665790 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 70058 1) .v) (.rational 135292 1)) .v)
    (.rational 65234 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 3160 1) .v)
    (.rational 5924 1)) .v) (.rational 2764 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 191691 1) .v)
    (.rational 422572 1)) .v) (.rational 232961 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1725219 1) .v) (.rational 3772528 1)) .v) (.rational 2063797 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7037359 1) .v) (.rational 15257783 1)) .v) (.rational 8278705 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17193908 1) .v) (.rational 36944078 1))
    .v) (.rational 19871160 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    28006642 1) .v) (.rational 59607864 1)) .v) (.rational 31764659 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 32020478 1) .v) (.rational 67469992 1)) .v) (.rational
    35599754 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 26331424 1) .v)
    (.rational 54896038 1)) .v) (.rational 28659927 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 15680612 1) .v) (.rational 32323356 1)) .v) (.rational 16684030 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6705733 1) .v) (.rational 13655948 1)) .v)
    (.rational 6961930 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2006207 1)
    .v) (.rational 4031784 1)) .v) (.rational 2027549 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 398017 1) .v) (.rational 788155 1)) .v) (.rational 390288 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 46920 1) .v) (.rational 91350 1)) .v)
    (.rational 44430 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2478 1) .v)
    (.rational 4728 1)) .v) (.rational 2250 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 30620 1) .v)
    (.rational 64106 1)) .v) (.rational 33486 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    290890 1) .v) (.rational 606775 1)) .v) (.rational 315885 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1255928 1) .v) (.rational 2609509 1)) .v) (.rational 1353581 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3257693 1) .v) (.rational 6740314 1)) .v)
    (.rational 3482621 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5652364 1)
    .v) (.rational 11642498 1)) .v) (.rational 5990134 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6909650 1) .v) (.rational 14163648 1)) .v) (.rational 7253998 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 6100990 1) .v) (.rational 12441184 1))
    .v) (.rational 6340194 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3920072
    1) .v) (.rational 7948990 1)) .v) (.rational 4028918 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1819018 1) .v) (.rational 3665964 1)) .v) (.rational 1846946 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 594484 1) .v) (.rational 1189993 1)) .v)
    (.rational 595509 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 129890 1) .v)
    (.rational 258027 1)) .v) (.rational 128137 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 17035 1) .v) (.rational 33544 1)) .v) (.rational 16509 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1014 1) .v) (.rational 1976 1)) .v) (.rational 962
    1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 2232 1) .v) (.rational 4464 1)) .v) (.rational 2232
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 22320 1) .v) (.rational 44640 1)) .v)
    (.rational 22320 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 101670 1) .v)
    (.rational 203340 1)) .v) (.rational 101670 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 278910 1) .v) (.rational 557820 1)) .v) (.rational 278910 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 513169 1) .v) (.rational 1026338 1)) .v)
    (.rational 513169 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 667136 1) .v)
    (.rational 1334272 1)) .v) (.rational 667136 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 628432 1) .v) (.rational 1256864 1)) .v) (.rational 628432 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 432284 1) .v) (.rational 864568 1)) .v)
    (.rational 432284 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 215590 1) .v)
    (.rational 431180 1)) .v) (.rational 215590 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 76064 1) .v) (.rational 152128 1)) .v) (.rational 76064 1)) (.pow .g 9))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 18034 1) .v) (.rational 36068 1)) .v) (.rational
    18034 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 2582 1) .v) (.rational
    5164 1)) .v) (.rational 2582 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    169 1) .v) (.rational 338 1)) .v) (.rational 169 1)) (.pow .g 12))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2120

namespace FullLow2121
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    6*SmallGap.PolarCoefficientsLow0.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    6*SmallGap.PolarCoefficientsLow0.c320 e f g v*e*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(48*SmallGap.ReducedLayers.low0_100_0 e g v*e^3+12*SmallGap.ReducedLayers.low0_100_1
    e g v*e^4+12*SmallGap.ReducedLayers.low0_010_0 e g v*e^1+6*SmallGap.ReducedLayers.low0_010_1 e
    g v*e^2+36*SmallGap.ReducedLayers.low0_001_0 e g v*e^2+12*SmallGap.ReducedLayers.low0_001_1 e
    g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(12*SmallGap.ReducedLayers.low1_200_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_110_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^2+18*SmallGap.ReducedLayers.low1_101_0 e g v*e^2+6*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_0 e g v+3*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^1+6*SmallGap.ReducedLayers.low1_002_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 900 1) .v) (.rational 26880 1)) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 780 1) .v) (.rational 17604 1)) .v) (.rational 223695 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1950 1) .v) (.rational 27228 1)) .v) (.rational 279348 1)) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 14394 1) .v) (.rational 165276 1))
    .v) (.rational 1173825 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 43182 1) .v)
    (.rational 350076 1)) .v) (.rational 2034162 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 46812 1) .v) (.rational 245388 1)) .v) (.rational 1218843 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 123876 1) .v)
    (.rational 977370 1)) .v) (.rational 4363122 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    433566 1) .v) (.rational 2641791 1)) .v) (.rational 9789813 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 587442 1) .v) (.rational 2678073 1)) .v) (.rational 8249775 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 384690 1) .v) (.rational 1282365 1)) .v)
    (.rational 3236511 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 656496 1) .v) (.rational 4035672 1)) .v) (.rational
    12219200 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2625984 1) .v) (.rational 13285416
    1)) .v) (.rational 34036450 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4247796 1)
    .v) (.rational 17481588 1)) .v) (.rational 37583814 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3552444 1) .v) (.rational 11841684 1)) .v) (.rational 21024752 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1619076 1) .v) (.rational 4408572
    1)) .v) (.rational 6313918 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2387838 1) .v) (.rational 12236738 1))
    .v) (.rational 26704718 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 10745271 1) .v)
    (.rational 47466469 1)) .v) (.rational 89668998 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20145672 1) .v) (.rational 76403918 1)) .v) (.rational 123913082 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 20365254 1) .v) (.rational 66365846 1)) .v)
    (.rational 91430798 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11968590 1)
    .v) (.rational 33785122 1)) .v) (.rational 39108672 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4080639 1) .v) (.rational 10156277 1)) .v) (.rational 9817832 1)) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 6294426 1) .v) (.rational 27989548 1)) .v) (.rational 46400776
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 31472130 1) .v) (.rational 124849684 1)) .v)
    (.rational 183536904 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 66979356 1) .v)
    (.rational 236768086 1)) .v) (.rational 306804728 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 79084644 1) .v) (.rational 249582668 1)) .v) (.rational 283392488 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 56528106 1) .v) (.rational
    160235296 1)) .v) (.rational 158753736 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 24971010 1) .v) (.rational 64291084 1)) .v) (.rational 55582598 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6628836 1) .v) (.rational 15757390 1)) .v)
    (.rational 11976544 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12382288 1) .v)
    (.rational 48979084 1)) .v) (.rational 64555600 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 68102584 1) .v) (.rational 246628829 1)) .v) (.rational 295025306 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 161995670 1) .v) (.rational 536975963 1)) .v)
    (.rational 580721743 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 218211135
    1) .v) (.rational 663167683 1)) .v) (.rational 646391918 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 182905168 1) .v) (.rational 511747324 1)) .v) (.rational
    448965048 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 98567546 1) .v)
    (.rational 255664721 1)) .v) (.rational 202220296 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 33977090 1) .v) (.rational 82503501 1)) .v) (.rational 59167693 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 7170255 1) .v) (.rational 16492031
    1)) .v) (.rational 10828696 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    18442796 1) .v) (.rational 65934064 1)) .v) (.rational 71807470 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 110656776 1) .v) (.rational 369458286 1)) .v) (.rational 372876700 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 290688152 1) .v) (.rational 906324564 1))
    .v) (.rational 845530471 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    439086980 1) .v) (.rational 1279829662 1)) .v) (.rational 1101823494 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 420951224 1) .v) (.rational 1149972714 1)) .v)
    (.rational 913284802 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 266507552
    1) .v) (.rational 685228258 1)) .v) (.rational 502753286 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 112198548 1) .v) (.rational 273069540 1)) .v) (.rational
    185768849 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 30759992 1) .v)
    (.rational 71348166 1)) .v) (.rational 45256662 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5189688 1) .v) (.rational 11549842 1)) .v) (.rational 6874276 1)) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20878644 1) .v) (.rational 68174886
    1)) .v) (.rational 63325341 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 135711186 1) .v)
    (.rational 420329356 1)) .v) (.rational 368302214 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 389941348 1) .v) (.rational 1145337436 1)) .v) (.rational 945041321 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 651854368 1) .v) (.rational 1816630347 1))
    .v) (.rational 1409939423 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    701862284 1) .v) (.rational 1858430105 1)) .v) (.rational 1356398064 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 508707087 1) .v) (.rational 1282748897 1)) .v)
    (.rational 881139086 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 251676448
    1) .v) (.rational 606272604 1)) .v) (.rational 392715143 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 84235646 1) .v) (.rational 194569633 1)) .v) (.rational 119185573
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 18441500 1) .v) (.rational
    40988227 1)) .v) (.rational 23815044 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2460567 1) .v) (.rational 5273355 1)) .v) (.rational 2911248 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 17863844 1) .v) (.rational
    53664476 1)) .v) (.rational 43609175 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    125046908 1) .v) (.rational 360752278 1)) .v) (.rational 280631920 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 389910337 1) .v) (.rational 1079819119 1)) .v) (.rational
    803028761 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 713852218 1) .v)
    (.rational 1897826952 1)) .v) (.rational 1347961886 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 851302329 1) .v) (.rational 2173812409 1)) .v) (.rational 1473993323
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 693150954 1) .v) (.rational
    1701802062 1)) .v) (.rational 1101794016 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 392444755 1) .v) (.rational 927790411 1)) .v) (.rational 573942239 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 154188310 1) .v) (.rational 351606584 1))
    .v) (.rational 208051042 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    41128589 1) .v) (.rational 90599267 1)) .v) (.rational 51328153 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7098644 1) .v) (.rational 15111444 1)) .v) (.rational
    8196944 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 722424 1) .v)
    (.rational 1482902 1)) .v) (.rational 768177 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11364946 1) .v) (.rational 31576364 1))
    .v) (.rational 22905596 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 85237095 1) .v)
    (.rational 229723071 1)) .v) (.rational 161428991 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 286524055 1) .v) (.rational 748648041 1)) .v) (.rational 509053520 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 569643750 1) .v) (.rational 1442522970 1))
    .v) (.rational 948251653 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    744164389 1) .v) (.rational 1826290947 1)) .v) (.rational 1159870044 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 670900626 1) .v) (.rational 1596012989 1)) .v)
    (.rational 978956483 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 426320975
    1) .v) (.rational 983508512 1)) .v) (.rational 582571433 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 191359275 1) .v) (.rational 428314307 1)) .v) (.rational
    245006749 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 59757245 1) .v)
    (.rational 129799207 1)) .v) (.rational 71687318 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12515499 1) .v) (.rational 26365939 1)) .v) (.rational 14045787 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1637720 1) .v) (.rational 3338174 1)) .v)
    (.rational 1710636 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 116235 1)
    .v) (.rational 227816 1)) .v) (.rational 111581 1)) (.pow .g 11)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5211384 1) .v)
    (.rational 13446348 1)) .v) (.rational 8846850 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 41691072 1) .v) (.rational 105213998 1)) .v) (.rational 67700104 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 150237146 1) .v) (.rational 370605746 1)) .v) (.rational
    232992595 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 322066262 1) .v)
    (.rational 776173224 1)) .v) (.rational 476349670 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 456783127 1) .v) (.rational 1075056407 1)) .v) (.rational 643588973 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 450781132 1) .v) (.rational
    1035799196 1)) .v) (.rational 604485972 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 316728657 1) .v) (.rational 710393225 1)) .v) (.rational 403924250 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 159209406 1) .v) (.rational 348482346 1))
    .v) (.rational 192938756 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    56612437 1) .v) (.rational 120871107 1)) .v) (.rational 65110257 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 13813432 1) .v) (.rational 28737994 1)) .v) (.rational
    15040896 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2177573 1) .v)
    (.rational 4404561 1)) .v) (.rational 2234089 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 196520 1) .v) (.rational 384714 1)) .v) (.rational 188194 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7500 1) .v) (.rational 14078 1)) .v) (.rational
    6578 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 1627750 1) .v) (.rational 3913444 1)) .v) (.rational 2365158 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 13835875 1) .v) (.rational 32762675 1)) .v)
    (.rational 19512432 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 53191250 1) .v)
    (.rational 123977630 1)) .v) (.rational 72704776 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 122216875 1) .v) (.rational 280226789 1)) .v) (.rational 161689043 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 186792515 1) .v) (.rational 421091361 1))
    .v) (.rational 238876263 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    199905160 1) .v) (.rational 442850812 1)) .v) (.rational 246810311 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 153472985 1) .v) (.rational 333935737 1)) .v) (.rational
    182708779 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 85074220 1) .v)
    (.rational 181711527 1)) .v) (.rational 97526418 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 33747125 1) .v) (.rational 70705814 1)) .v) (.rational 37188688 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 9324365 1) .v) (.rational 19142151 1)) .v)
    (.rational 9852983 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1698585 1)
    .v) (.rational 3410603 1)) .v) (.rational 1714443 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 182385 1) .v) (.rational 357102 1)) .v) (.rational 174717 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 8670 1) .v) (.rational 16467 1)) .v)
    (.rational 7797 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 309908 1) .v) (.rational 696324 1)) .v)
    (.rational 390576 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2789172 1) .v) (.rational
    6209170 1)) .v) (.rational 3452974 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    11391329 1) .v) (.rational 25112189 1)) .v) (.rational 13837422 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 27909400 1) .v) (.rational 60895126 1)) .v) (.rational
    33227706 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 45677216 1) .v)
    (.rational 98587600 1)) .v) (.rational 53237258 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 52600324 1) .v) (.rational 112245348 1)) .v) (.rational 59945504 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 43698092 1) .v) (.rational 92142290 1)) .v)
    (.rational 48634824 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 26386024 1)
    .v) (.rational 54944852 1)) .v) (.rational 28641400 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11492570 1) .v) (.rational 23616996 1)) .v) (.rational 12147856 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3520896 1) .v) (.rational 7134010
    1)) .v) (.rational 3617058 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    720011 1) .v) (.rational 1436729 1)) .v) (.rational 717018 1)) (.pow .g 10))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 88200 1) .v) (.rational 173030 1)) .v) (.rational 84830 1)) (.pow
    .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 4890 1) .v) (.rational 9408 1)) .v)
    (.rational 4518 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 27126 1) .v) (.rational 57118 1)) .v)
    (.rational 29992 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 257697 1) .v) (.rational
    540389 1)) .v) (.rational 282692 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1113931
    1) .v) (.rational 2325515 1)) .v) (.rational 1211584 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2897140 1) .v) (.rational 6019208 1)) .v) (.rational 3122068 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5049824 1) .v) (.rational 10437418 1))
    .v) (.rational 5387594 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6215974
    1) .v) (.rational 12776296 1)) .v) (.rational 6560322 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5542586 1) .v) (.rational 11324376 1)) .v) (.rational 5781790 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3608956 1) .v) (.rational 7326758 1)) .v)
    (.rational 3717802 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1704170 1)
    .v) (.rational 3436268 1)) .v) (.rational 1732098 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 569569 1) .v) (.rational 1140163 1)) .v) (.rational 570594 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 128003 1) .v) (.rational 254253 1)) .v)
    (.rational 126250 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 17384 1) .v)
    (.rational 34242 1)) .v) (.rational 16858 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1080 1) .v) (.rational 2108 1)) .v) (.rational 1028 1)) (.pow .g 12))) (.pow .f
    3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2121

namespace FullLow2122
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    6*SmallGap.PolarCoefficientsLow1.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    15*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    6*SmallGap.PolarCoefficientsLow0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(72*SmallGap.ReducedLayers.low0_100_0 e g v*e^2+48*SmallGap.ReducedLayers.low0_100_1
    e g v*e^3+12*SmallGap.ReducedLayers.low0_100_2 e g v*e^4+6*SmallGap.ReducedLayers.low0_010_0 e
    g v+12*SmallGap.ReducedLayers.low0_010_1 e g v*e^1+6*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^2+36*SmallGap.ReducedLayers.low0_001_0 e g v*e^1+36*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^2+12*SmallGap.ReducedLayers.low0_001_2 e g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(18*SmallGap.ReducedLayers.low1_200_0 e g v*e^2+12*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_200_2 e g v*e^4+3*SmallGap.ReducedLayers.low1_110_0 e g
    v+6*SmallGap.ReducedLayers.low1_110_1 e g v*e^1+3*SmallGap.ReducedLayers.low1_110_2 e g
    v*e^2+18*SmallGap.ReducedLayers.low1_101_0 e g v*e^1+18*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_101_2 e g v*e^3+3*SmallGap.ReducedLayers.low1_011_1 e g
    v+3*SmallGap.ReducedLayers.low1_011_2 e g v*e^1+3*SmallGap.ReducedLayers.low1_002_0 e g
    v+6*SmallGap.ReducedLayers.low1_002_1 e g v*e^1+3*SmallGap.ReducedLayers.low1_002_2 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2880 1) .v) (.rational 94320 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 2100 1)
    .v) (.rational 51120 1)) .v) (.rational 741411 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5250 1) .v) (.rational 76920 1)) .v) (.rational 904764 1)) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 36486 1) .v) (.rational 442956 1)) .v)
    (.rational 3663495 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 109458 1) .v) (.rational
    907848 1)) .v) (.rational 6174033 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 118698
    1) .v) (.rational 598176 1)) .v) (.rational 3545805 1)) (.pow .g 2)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 297144 1) .v) (.rational 2454318 1)) .v)
    (.rational 12788394 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1040004 1) .v) (.rational
    6440547 1)) .v) (.rational 27843966 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1409388 1) .v) (.rational 6250869 1)) .v) (.rational 22483806 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 923460 1) .v) (.rational 2812761 1)) .v) (.rational 8275062
    1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1493070 1) .v) (.rational 9595092 1)) .v) (.rational 33569917 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5972280 1) .v) (.rational 30849030 1)) .v) (.rational 90789182
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 9661776 1) .v) (.rational 39396387 1))
    .v) (.rational 96438957 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8082348
    1) .v) (.rational 25751757 1)) .v) (.rational 51230872 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3685458 1) .v) (.rational 9235269 1)) .v) (.rational 14375876 1)) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 5143500 1) .v) (.rational 27661732 1)) .v) (.rational 68639788 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 23145750 1) .v) (.rational 105396423 1)) .v) (.rational
    224412535 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 43399176 1) .v) (.rational
    166228574 1)) .v) (.rational 300235880 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 43883616 1) .v) (.rational 141295969 1)) .v) (.rational 213112774 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 25801872 1) .v) (.rational 70486569 1)) .v)
    (.rational 87228616 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8802390 1)
    .v) (.rational 20881676 1)) .v) (.rational 20957243 1)) (.pow .g 5)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    12786945 1) .v) (.rational 60014884 1)) .v) (.rational 111212071 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 63934725 1) .v) (.rational 264156388 1)) .v) (.rational 430081556 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 136092990 1) .v) (.rational 494013529 1))
    .v) (.rational 700930164 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    160763610 1) .v) (.rational 513745820 1)) .v) (.rational 629865074 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 115002621 1) .v) (.rational 326060737 1)) .v) (.rational
    343202234 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 50861073 1) .v)
    (.rational 129869125 1)) .v) (.rational 117328938 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13521108 1) .v) (.rational 31791454 1)) .v) (.rational 24924997 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 23535744 1) .v) (.rational 98775786 1)) .v)
    (.rational 143332340 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 129446592 1) .v)
    (.rational 492424852 1)) .v) (.rational 643193973 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 308021826 1) .v) (.rational 1061789174 1)) .v) (.rational 1242090931 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 415248777 1) .v) (.rational 1300075412 1))
    .v) (.rational 1356558937 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    348552120 1) .v) (.rational 996781262 1)) .v) (.rational 926243750 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 188230938 1) .v) (.rational 496455977 1)) .v) (.rational
    411945037 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 65070954 1) .v)
    (.rational 160423889 1)) .v) (.rational 119893229 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13780893 1) .v) (.rational 32264611 1)) .v) (.rational 22027169 1))
    (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 32399175 1) .v) (.rational
    123308088 1)) .v) (.rational 146013073 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    194395050 1) .v) (.rational 685669596 1)) .v) (.rational 747333752 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 510940749 1) .v) (.rational 1670473109 1)) .v) (.rational
    1670799662 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 772749120 1) .v)
    (.rational 2345977161 1)) .v) (.rational 2149186955 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 742430916 1) .v) (.rational 2100959942 1)) .v) (.rational 1762921607
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 471574494 1) .v) (.rational
    1251489564 1)) .v) (.rational 964406052 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 199439553 1) .v) (.rational 500430690 1)) .v) (.rational 356186089 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 55008684 1) .v) (.rational 131735228 1)) .v)
    (.rational 87318843 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 9351327 1)
    .v) (.rational 21565423 1)) .v) (.rational 13427707 1)) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 33300288 1) .v) (.rational 115875620 1)) .v) (.rational
    115836755 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 216451872 1) .v) (.rational
    710114339 1)) .v) (.rational 666078421 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    622406952 1) .v) (.rational 1925295056 1)) .v) (.rational 1691196483 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1042267644 1) .v) (.rational 3043251629 1)) .v)
    (.rational 2500789391 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1125562908 1) .v) (.rational 3109392402 1)) .v) (.rational 2390800377 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 819481644 1) .v) (.rational 2149652388 1)) .v)
    (.rational 1549250748 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 408016488
    1) .v) (.rational 1021179250 1)) .v) (.rational 692131897 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 137742360 1) .v) (.rational 330691234 1)) .v) (.rational
    211731167 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 30496812 1) .v)
    (.rational 70578493 1)) .v) (.rational 42877137 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4127634 1) .v) (.rational 9232126 1)) .v) (.rational 5333413 1)) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25213347 1) .v)
    (.rational 80605962 1)) .v) (.rational 69879418 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 176493429 1) .v) (.rational 539212940 1)) .v) (.rational 445628841 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 550864461 1) .v) (.rational 1608047419 1)) .v)
    (.rational 1265087321 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1010772189 1) .v) (.rational 2820535882 1)) .v) (.rational 2110548091 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1209966882 1) .v) (.rational 3231420743 1)) .v)
    (.rational 2299653454 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 990849402
    1) .v) (.rational 2537514006 1)) .v) (.rational 1718783295 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 565576971 1) .v) (.rational 1392440106 1)) .v) (.rational
    899132791 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 224688309 1) .v)
    (.rational 533283598 1)) .v) (.rational 328959115 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 60823119 1) .v) (.rational 139490906 1)) .v) (.rational 82349620 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 10701789 1) .v) (.rational 23730089
    1)) .v) (.rational 13411393 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1116516 1) .v) (.rational 2385832 1)) .v) (.rational 1286406 1)) (.pow .g 10)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13663848 1) .v)
    (.rational 40251804 1)) .v) (.rational 30896480 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 102478860 1) .v) (.rational 291657771 1)) .v) (.rational 216166087 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 344892162 1) .v) (.rational 947909329 1)) .v)
    (.rational 677560201 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 687536343
    1) .v) (.rational 1824742860 1)) .v) (.rational 1256826557 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 902297604 1) .v) (.rational 2313325405 1)) .v) (.rational
    1534661907 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 819115011 1) .v)
    (.rational 2030237516 1)) .v) (.rational 1297278854 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 525638670 1) .v) (.rational 1260866525 1)) .v) (.rational 776327544 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 239122602 1) .v) (.rational
    555736158 1)) .v) (.rational 329903638 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 76018980 1) .v) (.rational 171292845 1)) .v) (.rational 98068521 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 16300371 1) .v) (.rational 35591693 1)) .v)
    (.rational 19636683 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2199912 1)
    .v) (.rational 4639706 1)) .v) (.rational 2458793 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 162645 1) .v) (.rational 328418 1)) .v) (.rational 165773 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5019375 1) .v) (.rational 13650160 1)) .v) (.rational 9424930 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 40155000 1) .v) (.rational 106452826 1)) .v) (.rational 71702450 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 144902775 1) .v) (.rational 374245828 1)) .v)
    (.rational 245641821 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 311606925
    1) .v) (.rational 783734922 1)) .v) (.rational 500827059 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 444306651 1) .v) (.rational 1088029721 1)) .v) (.rational
    676437070 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 442002381 1) .v)
    (.rational 1053856256 1)) .v) (.rational 637125921 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 314110239 1) .v) (.rational 729286476 1)) .v) (.rational 428609823 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 160356915 1) .v) (.rational
    362585167 1)) .v) (.rational 207094958 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 58207095 1) .v) (.rational 128147071 1)) .v) (.rational 71093775 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 14591931 1) .v) (.rational 31246372 1)) .v)
    (.rational 16816579 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2383236 1)
    .v) (.rational 4950210 1)) .v) (.rational 2577252 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 225384 1) .v) (.rational 451401 1)) .v) (.rational 226017 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 9165 1) .v) (.rational 17478 1)) .v)
    (.rational 8313 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1120704 1) .v) (.rational 2816820 1)) .v) (.rational
    1770714 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 9525984 1) .v) (.rational 23518132
    1)) .v) (.rational 14540636 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 36679464 1)
    .v) (.rational 88885130 1)) .v) (.rational 53999056 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 84576300 1) .v) (.rational 201045011 1)) .v) (.rational 119904301 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 130039854 1) .v) (.rational
    303059361 1)) .v) (.rational 177293902 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 140428197 1) .v) (.rational 320716111 1)) .v) (.rational 183902258 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 109190700 1) .v) (.rational 244286827 1))
    .v) (.rational 137204180 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    61580277 1) .v) (.rational 134903397 1)) .v) (.rational 74162750 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 24990600 1) .v) (.rational 53574941 1)) .v) (.rational
    28803556 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 7112559 1) .v)
    (.rational 14905961 1)) .v) (.rational 7827382 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1346148 1) .v) (.rational 2752711 1)) .v) (.rational 1408944 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 151851 1) .v) (.rational 301980 1)) .v)
    (.rational 150129 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 7698 1) .v)
    (.rational 14802 1)) .v) (.rational 7104 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 114930 1) .v)
    (.rational 267178 1)) .v) (.rational 154328 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1034370 1) .v) (.rational 2377476 1)) .v) (.rational 1359594 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4231719 1) .v) (.rational 9609904 1)) .v) (.rational 5436466 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10408032 1) .v) (.rational 23336128 1))
    .v) (.rational 13049086 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    17145642 1) .v) (.rational 37929872 1)) .v) (.rational 20947667 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 19938954 1) .v) (.rational 43493572 1)) .v) (.rational
    23704858 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 16794369 1) .v)
    (.rational 36101654 1)) .v) (.rational 19402598 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10330908 1) .v) (.rational 21872488 1)) .v) (.rational 11582866 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4610247 1) .v) (.rational 9607868 1)) .v)
    (.rational 5009336 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1456992 1)
    .v) (.rational 2986832 1)) .v) (.rational 1531812 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 309864 1) .v) (.rational 624314 1)) .v) (.rational 314600 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 39864 1) .v) (.rational 78848 1)) .v)
    (.rational 38984 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2349 1) .v)
    (.rational 4554 1)) .v) (.rational 2205 1)) (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2122

namespace FullLow2123
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow3.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    6*SmallGap.PolarCoefficientsLow2.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow3.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    15*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    24*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsLow1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(48*SmallGap.ReducedLayers.low0_100_0 e g v*e^1+72*SmallGap.ReducedLayers.low0_100_1
    e g v*e^2+48*SmallGap.ReducedLayers.low0_100_2 e g v*e^3+12*SmallGap.ReducedLayers.low0_100_3
    e g v*e^4+6*SmallGap.ReducedLayers.low0_010_1 e g v+12*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_010_3 e g v*e^2+12*SmallGap.ReducedLayers.low0_001_0 e g
    v+36*SmallGap.ReducedLayers.low0_001_1 e g v*e^1+36*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^2+12*SmallGap.ReducedLayers.low0_001_3 e g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(12*SmallGap.ReducedLayers.low1_200_0 e g v*e^1+18*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_200_2 e g v*e^3+3*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_110_1 e g v+6*SmallGap.ReducedLayers.low1_110_2 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_110_3 e g v*e^2+6*SmallGap.ReducedLayers.low1_101_0 e g
    v+18*SmallGap.ReducedLayers.low1_101_1 e g v*e^1+18*SmallGap.ReducedLayers.low1_101_2 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_101_3 e g v*e^3+3*SmallGap.ReducedLayers.low1_011_2 e g
    v+3*SmallGap.ReducedLayers.low1_011_3 e g v*e^1+3*SmallGap.ReducedLayers.low1_002_1 e g
    v+6*SmallGap.ReducedLayers.low1_002_2 e g v*e^1+3*SmallGap.ReducedLayers.low1_002_3 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5100 1) .v)
    (.rational 189600 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 3000 1) .v)
    (.rational 83100 1)) .v) (.rational 1413180 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    7500 1) .v) (.rational 121500 1)) .v) (.rational 1683600 1)) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 49764 1) .v) (.rational 666564 1)) .v) (.rational 6585198
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 149292 1) .v) (.rational 1315452 1)) .v)
    (.rational 10771956 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 161952 1) .v)
    (.rational 801144 1)) .v) (.rational 5900478 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 387096 1) .v) (.rational 3455778 1)) .v)
    (.rational 21563776 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1354836 1) .v) (.rational
    8748891 1)) .v) (.rational 45423198 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1836492 1) .v) (.rational 8018469 1)) .v) (.rational 34910541 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1204140 1) .v) (.rational 3288513 1)) .v) (.rational
    11847640 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1853262 1) .v) (.rational 12756564 1)) .v) (.rational 52862378 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7413048 1) .v) (.rational 39831504 1)) .v) (.rational
    138302144 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11994312 1) .v) (.rational
    48905874 1)) .v) (.rational 140326395 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10037268 1) .v) (.rational 30388974 1)) .v) (.rational 69781460 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4579962 1) .v) (.rational 10282026 1)) .v)
    (.rational 17764301 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 6051252 1) .v) (.rational 34834062 1)) .v)
    (.rational 100498113 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 27230634 1) .v)
    (.rational 129832104 1)) .v) (.rational 318764162 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 51064104 1) .v) (.rational 199466562 1)) .v) (.rational 410409276 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 51648072 1) .v) (.rational 164649204 1)) .v)
    (.rational 277503231 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 30381072
    1) .v) (.rational 79791606 1)) .v) (.rational 107057003 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 10370646 1) .v) (.rational 23120460 1)) .v) (.rational 24136845
    1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 14134230 1) .v) (.rational 71239932 1)) .v) (.rational
    150455861 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 70671150 1) .v) (.rational
    308547810 1)) .v) (.rational 567099930 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    150456621 1) .v) (.rational 567052593 1)) .v) (.rational 897142264 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 177799584 1) .v) (.rational 579447996 1)) .v) (.rational
    779694364 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 127272288 1) .v)
    (.rational 362119008 1)) .v) (.rational 410332482 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 56337150 1) .v) (.rational 142737360 1)) .v) (.rational 136064314 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 14990157 1) .v) (.rational 34847211
    1)) .v) (.rational 28397591 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 24116106 1) .v)
    (.rational 109104198 1)) .v) (.rational 177288040 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 132638583 1) .v) (.rational 537497142 1)) .v) (.rational 779271919 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 315709215 1) .v) (.rational 1145374038 1)) .v)
    (.rational 1472018970 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 425902095
    1) .v) (.rational 1387411959 1)) .v) (.rational 1572251944 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 357908748 1) .v) (.rational 1054915404 1)) .v) (.rational
    1052045816 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 193607589 1) .v)
    (.rational 523133010 1)) .v) (.rational 461098218 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 67070199 1) .v) (.rational 169187568 1)) .v) (.rational 133488336 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 14235165 1) .v) (.rational 34232097
    1)) .v) (.rational 24660565 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    30176772 1) .v) (.rational 124130556 1)) .v) (.rational 162287562 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 181060632 1) .v) (.rational 684069360 1)) .v) (.rational 817161700 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 476120838 1) .v) (.rational 1652904102 1))
    .v) (.rational 1797567219 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    720881730 1) .v) (.rational 2305752606 1)) .v) (.rational 2278124988 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 693900984 1) .v) (.rational 2056153944 1)) .v)
    (.rational 1846715676 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 441980508
    1) .v) (.rational 1223792652 1)) .v) (.rational 1003514880 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 187629954 1) .v) (.rational 490992588 1)) .v) (.rational
    370744200 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 51994398 1) .v)
    (.rational 130228008 1)) .v) (.rational 91595156 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8885148 1) .v) (.rational 21544734 1)) .v) (.rational 14269605 1)) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 27413688 1) .v) (.rational
    103195446 1)) .v) (.rational 112644373 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    178188972 1) .v) (.rational 627949050 1)) .v) (.rational 639372402 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 512741580 1) .v) (.rational 1692400566 1)) .v) (.rational
    1603940249 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 859999998 1) .v)
    (.rational 2663829717 1)) .v) (.rational 2347805611 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 931261182 1) .v) (.rational 2716898775 1)) .v) (.rational 2228873499
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 680793372 1) .v) (.rational
    1880962746 1)) .v) (.rational 1440711006 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 340898448 1) .v) (.rational 898186518 1)) .v) (.rational 645649789 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 115951434 1) .v) (.rational 293541549 1))
    .v) (.rational 199308024 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    25915914 1) .v) (.rational 63450405 1)) .v) (.rational 40926166 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3547116 1) .v) (.rational 8422278 1)) .v) (.rational
    5170735 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    17608002 1) .v) (.rational 60852360 1)) .v) (.rational 57088643 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 123256014 1) .v) (.rational 404713758 1)) .v) (.rational 360254894 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 385067157 1) .v) (.rational 1201546317 1))
    .v) (.rational 1013317437 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    708074760 1) .v) (.rational 2102033580 1)) .v) (.rational 1678453218 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 850715973 1) .v) (.rational 2407949571 1)) .v)
    (.rational 1821285974 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 700496232
    1) .v) (.rational 1896551496 1)) .v) (.rational 1361078904 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 402952632 1) .v) (.rational 1047713724 1)) .v) (.rational
    715394339 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 161766924 1) .v)
    (.rational 405619596 1)) .v) (.rational 264376202 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 44396787 1) .v) (.rational 107703321 1)) .v) (.rational 67184142 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 7950942 1) .v) (.rational 18670344
    1)) .v) (.rational 11147002 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    848085 1) .v) (.rational 1917135 1)) .v) (.rational 1089575 1)) (.pow .g 10)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7588914 1) .v)
    (.rational 24112344 1)) .v) (.rational 19871856 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 56916855 1) .v) (.rational 173851251 1)) .v) (.rational 137824343 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 191788071 1) .v) (.rational 563076165 1)) .v)
    (.rational 428858298 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 383383494
    1) .v) (.rational 1082342556 1)) .v) (.rational 791378055 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 505496607 1) .v) (.rational 1373662113 1)) .v) (.rational
    964098064 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 462138633 1) .v)
    (.rational 1210760160 1)) .v) (.rational 816132456 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 299532180 1) .v) (.rational 758073891 1)) .v) (.rational 491302968 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 138127581 1) .v) (.rational
    338351343 1)) .v) (.rational 211099793 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 44715813 1) .v) (.rational 106134423 1)) .v) (.rational 63792144 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9820716 1) .v) (.rational 22565238 1)) .v)
    (.rational 13052646 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1367967 1)
    .v) (.rational 3027129 1)) .v) (.rational 1677207 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 105465 1) .v) (.rational 221664 1)) .v) (.rational 116199 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1971954 1) .v) (.rational 5762172 1)) .v) (.rational 4239702 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 15775632 1) .v) (.rational 44742744 1)) .v) (.rational 32016690 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 57015384 1) .v) (.rational 156872946 1)) .v)
    (.rational 109038313 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 123034128
    1) .v) (.rational 328334196 1)) .v) (.rational 221470696 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 176457645 1) .v) (.rational 456802593 1)) .v) (.rational
    298837473 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 177093462 1) .v)
    (.rational 444918894 1)) .v) (.rational 282214556 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 127428405 1) .v) (.rational 310881393 1)) .v) (.rational 191196926 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 66169194 1) .v) (.rational
    156832518 1)) .v) (.rational 93521940 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 24571461 1) .v) (.rational 56570841 1)) .v) (.rational 32695153 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6348882 1) .v) (.rational 14176098 1)) .v)
    (.rational 7928446 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1079511 1)
    .v) (.rational 2327757 1)) .v) (.rational 1254951 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 107790 1) .v) (.rational 222414 1)) .v) (.rational 114624 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 4728 1) .v) (.rational 9162 1)) .v)
    (.rational 4434 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 233928 1) .v) (.rational 628320 1)) .v) (.rational
    417636 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1988388 1) .v) (.rational 5225790 1))
    .v) (.rational 3407850 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7670802 1) .v)
    (.rational 19709676 1)) .v) (.rational 12595002 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 17763255 1) .v) (.rational 44591691 1)) .v) (.rational 27892453 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 27509235 1) .v) (.rational 67434483 1)) .v)
    (.rational 41249039 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 30029532 1)
    .v) (.rational 71856780 1)) .v) (.rational 42948591 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 23707917 1) .v) (.rational 55360545 1)) .v) (.rational 32309321 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 13649988 1) .v) (.rational 31092711
    1)) .v) (.rational 17706106 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5693745 1) .v) (.rational 12642276 1)) .v) (.rational 7018008 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1679940 1) .v) (.rational 3630768 1)) .v) (.rational
    1961749 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 333249 1) .v)
    (.rational 699225 1)) .v) (.rational 366755 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 39969 1) .v) (.rational 81060 1)) .v) (.rational 41091 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2196 1) .v) (.rational 4275 1)) .v) (.rational 2079
    1)) (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2123

namespace FullLow2124
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    6*SmallGap.PolarCoefficientsLow3.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow4.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow3.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    15*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow3.c320 e f g v*e*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    24*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsLow2.c410 e f g v*e*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_0 e g v+48*SmallGap.ReducedLayers.low0_100_1 e g
    v*e^1+72*SmallGap.ReducedLayers.low0_100_2 e g v*e^2+48*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^3+12*SmallGap.ReducedLayers.low0_100_4 e g v*e^4+6*SmallGap.ReducedLayers.low0_010_2 e g
    v+12*SmallGap.ReducedLayers.low0_010_3 e g v*e^1+6*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^2+12*SmallGap.ReducedLayers.low0_001_1 e g v+36*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^1+36*SmallGap.ReducedLayers.low0_001_3 e g v*e^2+12*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_0 e g v+12*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_200_2 e g v*e^2+12*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_200_4 e g v*e^4+3*SmallGap.ReducedLayers.low1_110_2 e g
    v+6*SmallGap.ReducedLayers.low1_110_3 e g v*e^1+3*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_101_1 e g v+18*SmallGap.ReducedLayers.low1_101_2 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_101_3 e g v*e^2+6*SmallGap.ReducedLayers.low1_101_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_3 e g v+3*SmallGap.ReducedLayers.low1_011_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_002_2 e g v+6*SmallGap.ReducedLayers.low1_002_3 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_002_4 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5400 1) .v) (.rational
    238800 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 2400 1) .v) (.rational 81720 1))
    .v) (.rational 1695060 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 6000 1) .v) (.rational
    116040 1)) .v) (.rational 1970160 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 38496 1) .v) (.rational 610236 1)) .v) (.rational 7468002 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 115488 1) .v) (.rational 1154568 1)) .v) (.rational 11840034 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 125328 1) .v) (.rational 636636 1)) .v)
    (.rational 6159462 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 289044 1) .v) (.rational 2964246 1)) .v) (.rational 22945746 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1011654 1) .v) (.rational 7192911 1)) .v) (.rational
    46648455 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1371738 1) .v) (.rational
    6116793 1)) .v) (.rational 33906981 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 900210 1) .v) (.rational 2169513 1)) .v) (.rational 10390665 1)) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1328688 1)
    .v) (.rational 10326204 1)) .v) (.rational 52403187 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5314752 1) .v) (.rational 31123956 1)) .v) (.rational 132220746 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8601480 1) .v) (.rational 36310203 1)) .v) (.rational
    127272819 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7202808 1) .v)
    (.rational 20975145 1)) .v) (.rational 58251729 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3290664 1) .v) (.rational 6447441 1)) .v) (.rational 12845070 1)) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 4129608 1) .v) (.rational 26648496 1)) .v) (.rational 92110803 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 18583236 1) .v) (.rational 96724194 1)) .v) (.rational 282565734
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 34856544 1) .v) (.rational 143754072 1))
    .v) (.rational 348138564 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    35276136 1) .v) (.rational 114088359 1)) .v) (.rational 221892591 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 20772264 1) .v) (.rational 53048817 1)) .v) (.rational
    79168776 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7101204 1) .v)
    (.rational 14863839 1)) .v) (.rational 16270491 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9059808 1)
    .v) (.rational 51061998 1)) .v) (.rational 126159198 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 45299040 1) .v) (.rational 216964680 1)) .v) (.rational 462252843 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 96468540 1) .v) (.rational 390323190 1)) .v)
    (.rational 707095953 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 114079920
    1) .v) (.rational 390137610 1)) .v) (.rational 591135966 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 81758436 1) .v) (.rational 238996257 1)) .v) (.rational 298520931
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 36251556 1) .v) (.rational
    92936649 1)) .v) (.rational 95491596 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9664368 1) .v) (.rational 22611411 1)) .v) (.rational 19569270 1)) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 14229204 1) .v) (.rational 71846094 1)) .v) (.rational 133730772
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 78260622 1) .v) (.rational 349068897 1)) .v)
    (.rational 574583625 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 186355470 1) .v)
    (.rational 733487031 1)) .v) (.rational 1059069915 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 251644950 1) .v) (.rational 877109112 1)) .v) (.rational 1103494086 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 211820952 1) .v) (.rational
    660341310 1)) .v) (.rational 722366400 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 114854586 1) .v) (.rational 325892658 1)) .v) (.rational 312105660 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 39904926 1) .v) (.rational 105575430 1)) .v)
    (.rational 90166884 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8494290 1)
    .v) (.rational 21523053 1)) .v) (.rational 16830573 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 15907848 1) .v) (.rational 72813996 1)) .v) (.rational 107230851 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 95447088 1) .v) (.rational 397118628 1)) .v)
    (.rational 530298192 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 251137362 1) .v)
    (.rational 950394651 1)) .v) (.rational 1145929638 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 380755170 1) .v) (.rational 1315516911 1)) .v) (.rational 1429126005
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 367344006 1) .v) (.rational
    1167614694 1)) .v) (.rational 1144656582 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 234762972 1) .v) (.rational 694672722 1)) .v) (.rational 618752148 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 100099206 1) .v) (.rational 280000752 1))
    .v) (.rational 229384425 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    27880962 1) .v) (.rational 74952558 1)) .v) (.rational 57328980 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4788042 1) .v) (.rational 12542643 1)) .v) (.rational
    9066924 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12351660 1)
    .v) (.rational 51542628 1)) .v) (.rational 62564187 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 80285790 1) .v) (.rational 311092044 1)) .v) (.rational 350030298 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 231201468 1) .v) (.rational 832676082 1)) .v)
    (.rational 866485791 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 388464384
    1) .v) (.rational 1304323980 1)) .v) (.rational 1254582558 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 421899078 1) .v) (.rational 1327857846 1)) .v) (.rational
    1182847770 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 309778506 1) .v)
    (.rational 921135498 1)) .v) (.rational 763628616 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 156041448 1) .v) (.rational 442661946 1)) .v) (.rational 344090409 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 53475348 1) .v) (.rational
    146205609 1)) .v) (.rational 107474283 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12057186 1) .v) (.rational 32031849 1)) .v) (.rational 22412832 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1664724 1) .v) (.rational 4308357 1)) .v)
    (.rational 2870853 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 6327036 1) .v) (.rational 24150018 1)) .v) (.rational 24947598 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 44289252 1) .v) (.rational 159538488 1)) .v) (.rational
    155567103 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 138495894 1) .v) (.rational
    471179916 1)) .v) (.rational 433052532 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 255215088 1) .v) (.rational 821772774 1)) .v) (.rational 711687525 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 307733304 1) .v) (.rational 941187210 1))
    .v) (.rational 769039026 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    254755386 1) .v) (.rational 743805294 1)) .v) (.rational 575093562 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 147638034 1) .v) (.rational 413970498 1)) .v) (.rational
    304161915 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 59853492 1) .v)
    (.rational 162140052 1)) .v) (.rational 113729673 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16631700 1) .v) (.rational 43714485 1)) .v) (.rational 29364501 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3023442 1) .v) (.rational 7710141
    1)) .v) (.rational 4955610 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    327792 1) .v) (.rational 803937 1)) .v) (.rational 490116 1)) (.pow .g 10)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1922724 1) .v) (.rational
    6729840 1)) .v) (.rational 6060738 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 14420430
    1) .v) (.rational 48239082 1)) .v) (.rational 41608518 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 48646542 1) .v) (.rational 155582946 1)) .v) (.rational 128370801 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 97492668 1) .v) (.rational 298469082 1))
    .v) (.rational 235460052 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    129099378 1) .v) (.rational 379132926 1)) .v) (.rational 286099545 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 118788912 1) .v) (.rational 335625093 1)) .v) (.rational
    242598027 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 77693034 1) .v)
    (.rational 211902741 1)) .v) (.rational 147017988 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 36270090 1) .v) (.rational 95791278 1)) .v) (.rational 63925542 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 11933982 1) .v) (.rational 30569460
    1)) .v) (.rational 19642827 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2677248 1) .v) (.rational 6639339 1)) .v) (.rational 4100739 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 383334 1) .v) (.rational 912399 1)) .v) (.rational 537771 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 30612 1) .v) (.rational 68334 1))
    .v) (.rational 37722 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 262764 1) .v) (.rational 845172 1)) .v) (.rational
    675420 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2102112 1) .v) (.rational 6527448 1))
    .v) (.rational 5054502 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7608078 1) .v)
    (.rational 22804248 1)) .v) (.rational 17088348 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16469586 1) .v) (.rational 47670534 1)) .v) (.rational 34540065 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 23747424 1) .v) (.rational 66436710 1)) .v)
    (.rational 46530603 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 24026022 1)
    .v) (.rational 65052636 1)) .v) (.rational 44049411 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17488680 1) .v) (.rational 45891855 1)) .v) (.rational 30059256 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 9228318 1) .v) (.rational 23490741
    1)) .v) (.rational 14889486 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3503562 1) .v) (.rational 8647404 1)) .v) (.rational 5301669 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 933378 1) .v) (.rational 2226630 1)) .v) (.rational 1317189 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 165654 1) .v) (.rational 378879 1))
    .v) (.rational 214890 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 17592 1)
    .v) (.rational 37947 1)) .v) (.rational 20355 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 846 1) .v) (.rational 1668 1)) .v) (.rational 822 1)) (.pow .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2124

namespace FullLow2125
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  6*SmallGap.PolarCoefficientsLow4.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow4.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    15*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow4.c320 e f g v*e*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow3.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    24*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsLow3.c410 e f g v*e*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_1 e g v+48*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^1+72*SmallGap.ReducedLayers.low0_100_3 e g v*e^2+48*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^3+6*SmallGap.ReducedLayers.low0_010_3 e g v+12*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_010_5 e g v*e^2+12*SmallGap.ReducedLayers.low0_001_2 e g
    v+36*SmallGap.ReducedLayers.low0_001_3 e g v*e^1+36*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^2+12*SmallGap.ReducedLayers.low0_001_5 e g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_1 e g v+12*SmallGap.ReducedLayers.low1_200_2 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_200_3 e g v*e^2+12*SmallGap.ReducedLayers.low1_200_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_110_3 e g v+6*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_110_5 e g v*e^2+6*SmallGap.ReducedLayers.low1_101_2 e g
    v+18*SmallGap.ReducedLayers.low1_101_3 e g v*e^1+18*SmallGap.ReducedLayers.low1_101_4 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_101_5 e g v*e^3+3*SmallGap.ReducedLayers.low1_011_4 e g
    v+3*SmallGap.ReducedLayers.low1_011_5 e g v*e^1+3*SmallGap.ReducedLayers.low1_002_3 e g
    v+6*SmallGap.ReducedLayers.low1_002_4 e g v*e^1+3*SmallGap.ReducedLayers.low1_002_5 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3420 1) .v) (.rational 192960 1))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1020 1) .v) (.rational 48636 1)) .v)
    (.rational 1310535 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2550 1) .v) (.rational
    67092 1)) .v) (.rational 1485588 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 16002 1) .v) (.rational 340932 1)) .v) (.rational 5478309 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 48006 1) .v) (.rational 616500 1)) .v) (.rational 8411406 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 52116 1) .v) (.rational 300348 1)) .v) (.rational
    4143711 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 117252 1) .v) (.rational 1558872 1)) .v) (.rational 15821382 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 410382 1) .v) (.rational 3604926 1)) .v) (.rational 30997989 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 556674 1) .v) (.rational 2784546 1)) .v)
    (.rational 21207408 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 365730 1)
    .v) (.rational 772974 1)) .v) (.rational 5734629 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 522438 1) .v) (.rational
    5138148 1)) .v) (.rational 33636768 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2089752
    1) .v) (.rational 14866092 1)) .v) (.rational 81702378 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3383604 1) .v) (.rational 16258644 1)) .v) (.rational 74246121 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2836680 1) .v) (.rational 8448204 1)) .v)
    (.rational 30758826 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1298766 1)
    .v) (.rational 2183652 1)) .v) (.rational 5469597 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1556892 1) .v)
    (.rational 12531960 1)) .v) (.rational 54415947 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7006014 1) .v) (.rational 44114688 1)) .v) (.rational 161176398 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 13148112 1) .v) (.rational 62970552 1)) .v) (.rational
    189378330 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 13323660 1) .v)
    (.rational 47479146 1)) .v) (.rational 112890177 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7863828 1) .v) (.rational 20821518 1)) .v) (.rational 36581901 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2697786 1) .v) (.rational 5541066 1)) .v)
    (.rational 6613395 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3219324 1) .v) (.rational 22371816
    1)) .v) (.rational 67455435 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 16096620 1) .v)
    (.rational 92991996 1)) .v) (.rational 239933304 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34302462 1) .v) (.rational 163147452 1)) .v) (.rational 354233310 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 40630128 1) .v) (.rational 158793096 1)) .v)
    (.rational 284232264 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 29200332
    1) .v) (.rational 94947012 1)) .v) (.rational 137504376 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 13001352 1) .v) (.rational 36337920 1)) .v) (.rational 42517392
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3485022 1) .v) (.rational
    8819532 1)) .v) (.rational 8636181 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4637880 1)
    .v) (.rational 28476732 1)) .v) (.rational 63017160 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25508340 1) .v) (.rational 136157658 1)) .v) (.rational 264348855 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 60796152 1) .v) (.rational 281515626 1)) .v)
    (.rational 474986385 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 82270134
    1) .v) (.rational 331768968 1)) .v) (.rational 482780820 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 69501720 1) .v) (.rational 247192212 1)) .v) (.rational 309855768
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 37887108 1) .v) (.rational
    121581756 1)) .v) (.rational 132752112 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13256484 1) .v) (.rational 39592992 1)) .v) (.rational 38635299 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2845386 1) .v) (.rational 8170854 1)) .v)
    (.rational 7354683 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4556520 1)
    .v) (.rational 24926208 1)) .v) (.rational 42703284 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27339120 1) .v) (.rational 134305572 1)) .v) (.rational 207172950 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 72018912 1) .v) (.rational 317921880 1)) .v)
    (.rational 439471848 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 109485960
    1) .v) (.rational 436412232 1)) .v) (.rational 539578944 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 106115418 1) .v) (.rational 385830516 1)) .v) (.rational
    428057580 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 68276232 1) .v)
    (.rational 230040936 1)) .v) (.rational 231347688 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 29376684 1) .v) (.rational 93553764 1)) .v) (.rational 86685543 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8273952 1) .v) (.rational 25411572
    1)) .v) (.rational 22075350 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1438266 1) .v) (.rational 4323624 1)) .v) (.rational 3559203 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 2900016 1) .v) (.rational 14183328 1)) .v)
    (.rational 19680138 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 18850104 1) .v)
    (.rational 84790860 1)) .v) (.rational 108397200 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 54359568 1) .v) (.rational 225186036 1)) .v) (.rational 264600600 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 91626480 1) .v) (.rational 351011364 1)) .v)
    (.rational 379078488 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 100047708
    1) .v) (.rational 357100128 1)) .v) (.rational 355621719 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 74042802 1) .v) (.rational 248883012 1)) .v) (.rational 230174034
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 37698960 1) .v) (.rational
    120875196 1)) .v) (.rational 104846190 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13096356 1) .v) (.rational 40561938 1)) .v) (.rational 33324591 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3000408 1) .v) (.rational 9056406 1)) .v)
    (.rational 7087176 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 420984 1)
    .v) (.rational 1239138 1)) .v) (.rational 920697 1)) (.pow .g 9)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1073736 1) .v) (.rational 4711932 1)) .v)
    (.rational 5488020 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7516152 1) .v) (.rational
    30885840 1)) .v) (.rational 33774624 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    23538096 1) .v) (.rational 90684588 1)) .v) (.rational 92974128 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 43518600 1) .v) (.rational 157687692 1)) .v) (.rational
    151606794 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 52764588 1) .v)
    (.rational 180759540 1)) .v) (.rational 163346601 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 44037396 1) .v) (.rational 143654796 1)) .v) (.rational 122554728 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 25804842 1) .v) (.rational 80820240
    1)) .v) (.rational 65471202 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10611096 1) .v) (.rational 32156148 1)) .v) (.rational 24872070 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2999778 1) .v) (.rational 8838336 1)) .v) (.rational
    6545139 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 555882 1) .v)
    (.rational 1590060 1)) .v) (.rational 1123746 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 61254 1) .v) (.rational 167952 1)) .v) (.rational 111756 1)) (.pow .g 10))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 174960 1) .v)
    (.rational 692928 1)) .v) (.rational 696384 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1312200 1) .v) (.rational 4934196 1)) .v) (.rational 4726188 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4432104 1) .v) (.rational 15840096 1)) .v) (.rational 14444694 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8906976 1) .v) (.rational 30327096
    1)) .v) (.rational 26329164 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11848752 1) .v) (.rational 38578032 1)) .v) (.rational 31927488 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10975140 1) .v) (.rational 34338462 1)) .v) (.rational
    27159957 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7241976 1) .v)
    (.rational 21895326 1)) .v) (.rational 16606317 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3418146 1) .v) (.rational 10038048 1)) .v) (.rational 7323456 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1139004 1) .v) (.rational 3258816 1)) .v)
    (.rational 2290362 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 258894 1)
    .v) (.rational 720330 1)) .v) (.rational 486555 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 37458 1) .v) (.rational 100158 1)) .v) (.rational 64401 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2988 1) .v) (.rational 7404 1)) .v) (.rational
    4416 1)) (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2125

namespace FullLow2126
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  15*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow4.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    24*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsLow4.c410 e f g v*e*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_2 e g v+48*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^1+72*SmallGap.ReducedLayers.low0_100_4 e g v*e^2+6*SmallGap.ReducedLayers.low0_010_4 e g
    v+12*SmallGap.ReducedLayers.low0_010_5 e g v*e^1+6*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^2+12*SmallGap.ReducedLayers.low0_001_3 e g v+36*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^1+36*SmallGap.ReducedLayers.low0_001_5 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_2 e g v+12*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_200_4 e g v*e^2+3*SmallGap.ReducedLayers.low1_110_4 e g
    v+6*SmallGap.ReducedLayers.low1_110_5 e g v*e^1+3*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_101_3 e g v+18*SmallGap.ReducedLayers.low1_101_4 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_101_5 e g v*e^2+3*SmallGap.ReducedLayers.low1_011_5 e g
    v+3*SmallGap.ReducedLayers.low1_011_6 e g v*e^1+3*SmallGap.ReducedLayers.low1_002_4 e g
    v+6*SmallGap.ReducedLayers.low1_002_5 e g v*e^1+3*SmallGap.ReducedLayers.low1_002_6 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1200 1) .v) (.rational 97680 1)) .e) (.add
    (.mul (.add (.mul (.add (.mul (.rational 180 1) .v) (.rational 16224 1)) .v) (.rational 637875
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 450 1) .v) (.rational 21768 1)) .v)
    (.rational 705228 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2790 1) .v) (.rational 107892 1)) .v) (.rational 2540667 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8370 1) .v) (.rational 186264 1)) .v) (.rational 3777561 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9090 1) .v) (.rational 78024 1)) .v) (.rational 1760745 1)) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20160 1)
    .v) (.rational 468024 1)) .v) (.rational 6918162 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 70560 1) .v) (.rational 1027716 1)) .v) (.rational 13061124 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 95760 1) .v) (.rational 704220 1)) .v) (.rational 8397765
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 63000 1) .v) (.rational 120720
    1)) .v) (.rational 1964166 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 87930 1) .v) (.rational 1468164 1)) .v) (.rational
    13705968 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 351720 1) .v) (.rational 4062324 1))
    .v) (.rational 32054436 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 569880 1) .v)
    (.rational 4110084 1)) .v) (.rational 27487491 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 478620 1) .v) (.rational 1830132 1)) .v) (.rational 10216749 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 219870 1) .v) (.rational 325068 1)) .v)
    (.rational 1329705 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 253440 1) .v) (.rational 3391512 1)) .v)
    (.rational 20335185 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1140480 1) .v) (.rational
    11545680 1)) .v) (.rational 58189662 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2142360 1) .v) (.rational 15731472 1)) .v) (.rational 65294802 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2176020 1) .v) (.rational 11125620 1)) .v) (.rational
    36466128 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1289700 1) .v)
    (.rational 4495548 1)) .v) (.rational 10726200 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 445320 1) .v) (.rational 1101936 1)) .v) (.rational 1691844 1)) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 496800 1) .v) (.rational 5606328 1)) .v) (.rational 22534089 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2484000 1) .v) (.rational 22738200 1)) .v) (.rational
    77849631 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5300550 1) .v) (.rational
    38775180 1)) .v) (.rational 111164640 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6298200 1) .v) (.rational 36607188 1)) .v) (.rational 86052156 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4551480 1) .v) (.rational 21287796 1)) .v)
    (.rational 40328058 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2043540 1)
    .v) (.rational 8007444 1)) .v) (.rational 12309534 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 554130 1) .v) (.rational 1943076 1)) .v) (.rational 2548593 1)) (.pow
    .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 655560 1) .v) (.rational 6325560 1)) .v) (.rational
    18044028 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3605580 1) .v) (.rational 29678400
    1)) .v) (.rational 73893456 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8609940 1)
    .v) (.rational 60225600 1)) .v) (.rational 129624984 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11702880 1) .v) (.rational 69845568 1)) .v) (.rational 129097980 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9961920 1) .v) (.rational 51528192
    1)) .v) (.rational 81989142 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5492340 1) .v) (.rational 25342860 1)) .v) (.rational 35343252 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1951740 1) .v) (.rational 8345844 1)) .v) (.rational
    10532271 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 427320 1) .v)
    (.rational 1755888 1)) .v) (.rational 2066334 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 555660 1) .v) (.rational 4569048 1)) .v) (.rational 9781812 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3333960 1) .v) (.rational 24242112 1)) .v) (.rational
    46512828 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8806320 1) .v) (.rational
    56626584 1)) .v) (.rational 96901062 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13470300 1) .v) (.rational 77037240 1)) .v) (.rational 117466560 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 13191930 1) .v) (.rational 67970532 1)) .v)
    (.rational 92889420 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8619480 1)
    .v) (.rational 40815228 1)) .v) (.rational 50692068 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3787560 1) .v) (.rational 16880052 1)) .v) (.rational 19415463 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1096200 1) .v) (.rational 4697892
    1)) .v) (.rational 5083191 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    197010 1) .v) (.rational 821028 1)) .v) (.rational 838695 1)) (.pow .g 8)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 272160 1) .v) (.rational 1890864 1)) .v) (.rational
    3185676 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1769040 1) .v) (.rational 11158560
    1)) .v) (.rational 17249112 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5120280 1)
    .v) (.rational 29341656 1)) .v) (.rational 41505408 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8702100 1) .v) (.rational 45509760 1)) .v) (.rational 58931784 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9634140 1) .v) (.rational 46396440
    1)) .v) (.rational 55251819 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7277040 1) .v) (.rational 32689296 1)) .v) (.rational 36115758 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3810600 1) .v) (.rational 16199400 1)) .v) (.rational
    16782426 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1373400 1) .v)
    (.rational 5592060 1)) .v) (.rational 5476608 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 329580 1) .v) (.rational 1291188 1)) .v) (.rational 1196145 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 48870 1) .v) (.rational 182664 1)) .v) (.rational
    158316 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    58320 1) .v) (.rational 339552 1)) .v) (.rational 467640 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 408240 1) .v) (.rational 2201904 1)) .v) (.rational 2835756 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1284660 1) .v) (.rational 6417000 1)) .v) (.rational
    7714044 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2400840 1) .v)
    (.rational 11131344 1)) .v) (.rational 12492288 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2963520 1) .v) (.rational 12817296 1)) .v) (.rational 13463601 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2539620 1) .v) (.rational 10318752 1)) .v)
    (.rational 10193877 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1543590 1)
    .v) (.rational 5935500 1)) .v) (.rational 5544948 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 666360 1) .v) (.rational 2436588 1)) .v) (.rational 2159952 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 200610 1) .v) (.rational 696672 1)) .v)
    (.rational 584841 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 40230 1) .v)
    (.rational 131292 1)) .v) (.rational 103221 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4860 1) .v) (.rational 14580 1)) .v) (.rational 10470 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2126

namespace FullLow2127
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  24*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_3 e g v+48*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_010_5 e g v+12*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^1+12*SmallGap.ReducedLayers.low0_001_4 e g v+36*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_3 e g v+12*SmallGap.ReducedLayers.low1_200_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_110_5 e g v+6*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^1+6*SmallGap.ReducedLayers.low1_101_4 e g v+18*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_6 e g v+3*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_002_5 e g v+6*SmallGap.ReducedLayers.low1_002_6 e g v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 180 1) .v) (.rational 28320 1)) .e) (.add (.mul (.add (.mul
    (.rational 2340 1) .v) (.rational 178686 1)) .f) (.mul (.add (.mul (.rational 3060 1) .v)
    (.rational 192744 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 14940 1) .v)
    (.rational 681228 1)) .f) (.mul (.add (.mul (.rational 24660 1) .v) (.rational 981444 1)) .g))
    .f) (.mul (.add (.mul (.rational 8640 1) .v) (.rational 433608 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 62100 1) .v) (.rational 1755912 1)) .f)
    (.mul (.add (.mul (.rational 129420 1) .v) (.rational 3198552 1)) .g)) .f) (.mul (.add (.mul
    (.rational 76860 1) .v) (.rational 1938984 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational
    2160 1) .v) (.rational 390252 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 186840 1) .v) (.rational 3248568 1)) .f) (.mul (.add (.mul
    (.rational 493920 1) .v) (.rational 7333176 1)) .g)) .f) (.mul (.add (.mul (.rational 457380
    1) .v) (.rational 5972556 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 162180 1) .v)
    (.rational 2017356 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 5400 1) .v) (.rational
    183168 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 409680 1) .v) (.rational 4404144 1)) .f) (.mul (.add (.mul (.rational
    1346760 1) .v) (.rational 12212712 1)) .g)) .f) (.mul (.add (.mul (.rational 1743660 1) .v)
    (.rational 13197744 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 1141380 1) .v)
    (.rational 7045152 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 410580 1) .v) (.rational
    1973700 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 86760 1) .v) (.rational 305532 1))
    (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 621000 1) .v) (.rational 4289688 1)) .f) (.mul (.add (.mul (.rational
    2449440 1) .v) (.rational 14424912 1)) .g)) .f) (.mul (.add (.mul (.rational 4043520 1) .v)
    (.rational 20062224 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 3684240 1) .v)
    (.rational 15224400 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 2071980 1) .v)
    (.rational 7127148 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 762300 1) .v) (.rational
    2246844 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational 184320 1) .v) (.rational 492648 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 601560 1) .v) (.rational 2820672 1)) .f) (.mul (.add (.mul
    (.rational 2752920 1) .v) (.rational 11276208 1)) .g)) .f) (.mul (.add (.mul (.rational
    5452200 1) .v) (.rational 19384200 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 6194880
    1) .v) (.rational 19102176 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 4515300 1) .v)
    (.rational 12212856 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 2221740 1) .v)
    (.rational 5411544 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational 741420 1) .v) (.rational
    1677216 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational 159120 1) .v) (.rational 339492 1))
    (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 330480 1) .v) (.rational 1108080 1)) .f) (.mul
    (.add (.mul (.rational 1710720 1) .v) (.rational 5151600 1)) .g)) .f) (.mul (.add (.mul
    (.rational 3912840 1) .v) (.rational 10545192 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.rational 5248800 1) .v) (.rational 12683088 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.rational 4614840 1) .v) (.rational 10096488 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.rational 2797200 1) .v) (.rational 5634024 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 1181700 1) .v) (.rational 2227548 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.rational 338220 1) .v) (.rational 600756 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational
    60660 1) .v) (.rational 100656 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    77760 1) .v) (.rational 194400 1)) .f) (.mul (.add (.mul (.rational 447120 1) .v) (.rational
    1030320 1)) .g)) .f) (.mul (.add (.mul (.rational 1152360 1) .v) (.rational 2438928 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.rational 1767960 1) .v) (.rational 3437712 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.rational 1804680 1) .v) (.rational 3240456 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.rational 1290600 1) .v) (.rational 2158632 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.rational 657180 1) .v) (.rational 1032288 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.rational 234900 1) .v) (.rational 347472 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational
    56160 1) .v) (.rational 77814 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 8100 1) .v)
    (.rational 10380 1)) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2127

namespace FullLow2128
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  30*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_4 e g v+6*SmallGap.ReducedLayers.low0_010_6 e g
    v+12*SmallGap.ReducedLayers.low0_001_5 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_4 e g v+3*SmallGap.ReducedLayers.low1_110_6 e g
    v+6*SmallGap.ReducedLayers.low1_101_5 e g v+3*SmallGap.ReducedLayers.low1_011_7 e g
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

end FullLow2128

end
end SPR.N6.Tail.CoreEndpoint
