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

namespace FullLow0230
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow0.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    10*SmallGap.PolarCoefficientsLow0.c050 e f g v*e^2*((e+f)*(e+f+g))^5

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_0 e g v*e^5+6*SmallGap.ReducedLayers.low0_001_0 e
    g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_011_0 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_002_0 e g v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 40 1) .v) (.rational 1180 1))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 40 1) .v) (.rational 896 1)) .v) (.rational
    10970 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 100 1) .v) (.rational 1432 1)) .v)
    (.rational 14582 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 808
    1) .v) (.rational 9256 1)) .v) (.rational 64184 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2424 1) .v) (.rational 20212 1)) .v) (.rational 118138 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2624 1) .v) (.rational 14800 1)) .v) (.rational 76088 1)) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7556 1)
    .v) (.rational 58992 1)) .v) (.rational 265403 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26446 1) .v) (.rational 162866 1)) .v) (.rational 626900 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 35762 1) .v) (.rational 168638 1)) .v) (.rational 558049 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 23290 1) .v) (.rational 81798 1))
    .v) (.rational 231486 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 43606 1) .v) (.rational 261096 1)) .v) (.rational 825454
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 174424 1) .v) (.rational 869974 1)) .v)
    (.rational 2389199 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 281480 1) .v)
    (.rational 1152892 1)) .v) (.rational 2731442 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 233956 1) .v) (.rational 777720 1)) .v) (.rational 1566867 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 105378 1) .v) (.rational 282492 1)) .v)
    (.rational 471778 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 174410 1) .v) (.rational 854816 1)) .v) (.rational
    2005830 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 784845 1) .v) (.rational 3332527 1))
    .v) (.rational 6896318 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1467352 1) .v)
    (.rational 5355206 1)) .v) (.rational 9674737 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1473122 1) .v) (.rational 4593206 1)) .v) (.rational 7137148 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 854834 1) .v) (.rational 2271644 1)) .v)
    (.rational 2972751 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 285585 1)
    .v) (.rational 649299 1)) .v) (.rational 696012 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 514145 1)
    .v) (.rational 2150260 1)) .v) (.rational 3903111 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2570725 1) .v) (.rational 9592562 1)) .v) (.rational 15586415 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5453489 1) .v) (.rational 18065811 1)) .v) (.rational
    26009466 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6389606 1) .v)
    (.rational 18722022 1)) .v) (.rational 23572657 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4504531 1) .v) (.rational 11658058 1)) .v) (.rational 12629401 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1947017 1) .v) (.rational 4461566 1)) .v)
    (.rational 4079998 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 500675 1)
    .v) (.rational 1023863 1)) .v) (.rational 775208 1)) (.pow .g 6)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1158738 1) .v) (.rational 4256668 1)) .v) (.rational 6181175 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 6373059 1) .v) (.rational 21369318 1)) .v) (.rational 28182993
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 15105027 1) .v) (.rational 46066378 1))
    .v) (.rational 54681391 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    20174679 1) .v) (.rational 55811907 1)) .v) (.rational 58989564 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16659412 1) .v) (.rational 41756782 1)) .v) (.rational
    38815272 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8770853 1) .v)
    (.rational 19941848 1)) .v) (.rational 16087653 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2922647 1) .v) (.rational 6055010 1)) .v) (.rational 4187148 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 588441 1) .v) (.rational 1120599 1)) .v)
    (.rational 659180 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2042356 1) .v)
    (.rational 6732544 1)) .v) (.rational 8048092 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    12254136 1) .v) (.rational 37540962 1)) .v) (.rational 41330711 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 32064029 1) .v) (.rational 91037848 1)) .v) (.rational 91612895 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 47990565 1) .v) (.rational
    126006856 1)) .v) (.rational 114919957 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 45278301 1) .v) (.rational 109808187 1)) .v) (.rational 89924094 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 27965310 1) .v) (.rational 62659416 1)) .v)
    (.rational 45643170 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 11358975 1)
    .v) (.rational 23569686 1)) .v) (.rational 15145921 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2963217 1) .v) (.rational 5722960 1)) .v) (.rational 3228576 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 467595 1) .v) (.rational 847383 1)) .v)
    (.rational 420456 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2854302 1) .v) (.rational 8583432 1)) .v) (.rational 8662368 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 18552963 1) .v) (.rational 52606433 1)) .v) (.rational 49544528 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 53084430 1) .v) (.rational 141603484 1)) .v)
    (.rational 123700104 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 87881772
    1) .v) (.rational 220120145 1)) .v) (.rational 177182909 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 93045501 1) .v) (.rational 218548644 1)) .v) (.rational 160976301
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 65715354 1) .v) (.rational
    144695592 1)) .v) (.rational 96864804 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31319444 1) .v) (.rational 64708238 1)) .v) (.rational 39142033 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9953620 1) .v) (.rational 19349117 1)) .v)
    (.rational 10539677 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2032151 1)
    .v) (.rational 3734560 1)) .v) (.rational 1833362 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 247183 1) .v) (.rational 432377 1)) .v) (.rational 192638 1)) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3185875 1) .v)
    (.rational 8855132 1)) .v) (.rational 7717385 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    22301125 1) .v) (.rational 59140774 1)) .v) (.rational 48691883 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 69232754 1) .v) (.rational 174835287 1)) .v) (.rational 135339061 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 125481899 1) .v) (.rational
    301239232 1)) .v) (.rational 218136081 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 147068193 1) .v) (.rational 335180433 1)) .v) (.rational 225867972 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 116600370 1) .v) (.rational 252090744 1))
    .v) (.rational 157293834 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    63533237 1) .v) (.rational 130312322 1)) .v) (.rational 74964645 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 23671367 1) .v) (.rational 46116134 1)) .v) (.rational
    24392674 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5877772 1) .v)
    (.rational 10904461 1)) .v) (.rational 5303103 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 922459 1) .v) (.rational 1636314 1)) .v) (.rational 734456 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 82825 1) .v) (.rational 141229 1)) .v) (.rational
    58992 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 2845150 1) .v) (.rational 7388212 1)) .v) (.rational 5676047 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 21338625 1) .v) (.rational 53385328 1)) .v) (.rational
    39178939 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 71409803 1) .v) (.rational
    171836104 1)) .v) (.rational 120026522 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 140527907 1) .v) (.rational 324748834 1)) .v) (.rational 215063785 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 180386117 1) .v) (.rational 399792036 1))
    .v) (.rational 250036917 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    158315454 1) .v) (.rational 336174984 1)) .v) (.rational 197805792 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 96789450 1) .v) (.rational 196818762 1)) .v) (.rational
    108593555 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 41185398 1) .v)
    (.rational 80217527 1)) .v) (.rational 41405259 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11967351 1) .v) (.rational 22350942 1)) .v) (.rational 10785174 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2277791 1) .v) (.rational 4088128 1)) .v)
    (.rational 1847251 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 262747 1)
    .v) (.rational 454620 1)) .v) (.rational 193243 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 15785 1) .v) (.rational 26431 1)) .v) (.rational 10646 1)) (.pow .g 11))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2026262 1) .v) (.rational 4960488 1)) .v) (.rational 3423038 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16210096 1) .v) (.rational 38543210 1)) .v) (.rational 25660037 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 58155482 1) .v) (.rational 134112356 1)) .v)
    (.rational 85900168 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 123411694
    1) .v) (.rational 275644560 1)) .v) (.rational 169365165 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 172016264 1) .v) (.rational 371637282 1)) .v) (.rational
    218398338 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 165304930 1) .v)
    (.rational 345073626 1)) .v) (.rational 193388604 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 111800071 1) .v) (.rational 225313942 1)) .v) (.rational 120100505 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 53314097 1) .v) (.rational
    103689196 1)) .v) (.rational 52458862 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17658991 1) .v) (.rational 33149279 1)) .v) (.rational 15899788 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3921992 1) .v) (.rational 7112268 1)) .v)
    (.rational 3234975 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 546355 1)
    .v) (.rational 958692 1)) .v) (.rational 414369 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 41903 1) .v) (.rational 71308 1)) .v) (.rational 29405 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1287 1) .v) (.rational 2129 1)) .v) (.rational 842
    1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 1140694 1) .v) (.rational 2653392 1)) .v) (.rational 1673110 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9695899 1) .v) (.rational 22054081 1)) .v)
    (.rational 13532462 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 37115252 1) .v)
    (.rational 82451902 1)) .v) (.rational 49130753 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 84446410 1) .v) (.rational 183000528 1)) .v) (.rational 105662406 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 126912348 1) .v) (.rational 267969036 1))
    .v) (.rational 149584597 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    132377583 1) .v) (.rational 272034039 1)) .v) (.rational 146479584 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 97954908 1) .v) (.rational 195722836 1)) .v) (.rational
    101440563 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 51609052 1) .v)
    (.rational 100189609 1)) .v) (.rational 49887605 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 19120565 1) .v) (.rational 36049148 1)) .v) (.rational 17221266 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 4827128 1) .v) (.rational 8838636 1)) .v)
    (.rational 4048492 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 781454 1)
    .v) (.rational 1390382 1)) .v) (.rational 610914 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 71944 1) .v) (.rational 124515 1)) .v) (.rational 52571 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2795 1) .v) (.rational 4712 1)) .v)
    (.rational 1917 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 499751 1) .v) (.rational 1112396 1)) .v)
    (.rational 651129 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4497759 1) .v) (.rational
    9845374 1)) .v) (.rational 5649269 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    18295165 1) .v) (.rational 39343697 1)) .v) (.rational 22096852 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 44412116 1) .v) (.rational 93734750 1)) .v) (.rational
    51445867 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 71544473 1) .v)
    (.rational 148042052 1)) .v) (.rational 79267173 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 80421495 1) .v) (.rational 162983334 1)) .v) (.rational 84986994 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 64536904 1) .v) (.rational 127971021 1)) .v)
    (.rational 64873501 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 37153615 1)
    .v) (.rational 72019012 1)) .v) (.rational 35435172 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 15179421 1) .v) (.rational 28742325 1)) .v) (.rational 13706262 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 4274818 1) .v) (.rational 7902872
    1)) .v) (.rational 3648653 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    783599 1) .v) (.rational 1414098 1)) .v) (.rational 631775 1)) (.pow .g 10))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 83365 1) .v) (.rational 146882 1)) .v) (.rational 63517 1)) (.pow
    .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 3855 1) .v) (.rational 6635 1)) .v)
    (.rational 2780 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 166190 1) .v) (.rational 356356 1)) .v)
    (.rational 196485 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1578805 1) .v) (.rational
    3345062 1)) .v) (.rational 1819091 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    6799577 1) .v) (.rational 14223906 1)) .v) (.rational 7620975 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 17536877 1) .v) (.rational 36190551 1)) .v) (.rational
    19082158 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 30131134 1) .v)
    (.rational 61290214 1)) .v) (.rational 31763446 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36284075 1) .v) (.rational 72683780 1)) .v) (.rational 36975217 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 31351621 1) .v) (.rational 61792192 1)) .v)
    (.rational 30814455 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 19549127 1)
    .v) (.rational 37875950 1)) .v) (.rational 18490019 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8711497 1) .v) (.rational 16577596 1)) .v) (.rational 7911758 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2698564 1) .v) (.rational 5039934 1)) .v)
    (.rational 2348736 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 549830 1)
    .v) (.rational 1007214 1)) .v) (.rational 457902 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 65896 1) .v) (.rational 118355 1)) .v) (.rational 52459 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 3495 1) .v) (.rational 6154 1)) .v)
    (.rational 2659 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 40320 1) .v) (.rational 83848 1)) .v)
    (.rational 44156 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 403200 1) .v) (.rational
    831798 1)) .v) (.rational 434181 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1832769
    1) .v) (.rational 3748744 1)) .v) (.rational 1938151 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5003721 1) .v) (.rational 10141152 1)) .v) (.rational 5189211 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9130561 1) .v) (.rational 18324103 1))
    .v) (.rational 9272166 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 11720252
    1) .v) (.rational 23274908 1)) .v) (.rational 11635674 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10839850 1) .v) (.rational 21285124 1)) .v) (.rational 10502562 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 7269206 1) .v) (.rational 14102720
    1)) .v) (.rational 6860910 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3502786 1) .v) (.rational 6708802 1)) .v) (.rational 3214476 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1180796 1) .v) (.rational 2230878 1)) .v) (.rational 1051601 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 263797 1) .v) (.rational 491260 1))
    .v) (.rational 227583 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 34985 1)
    .v) (.rational 64176 1)) .v) (.rational 29191 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2077 1) .v) (.rational 3751 1)) .v) (.rational 1674 1)) (.pow .g 12))) (.pow
    .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 6682 1) .v) (.rational 13576 1)) .v) (.rational 6922 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 70161 1) .v) (.rational 141879 1)) .v) (.rational 71982 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 335654 1) .v) (.rational 675328 1)) .v)
    (.rational 340790 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 966948 1) .v)
    (.rational 1934881 1)) .v) (.rational 970717 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1867077 1) .v) (.rational 3714084 1)) .v) (.rational 1851543 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2543982 1) .v) (.rational 5028438 1)) .v)
    (.rational 2489496 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2506224 1)
    .v) (.rational 4919712 1)) .v) (.rational 2417352 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1797156 1) .v) (.rational 3501522 1)) .v) (.rational 1706382 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 930048 1) .v) (.rational 1797456 1)) .v)
    (.rational 868092 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 338377 1) .v)
    (.rational 648259 1)) .v) (.rational 310018 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 82050 1) .v) (.rational 155712 1)) .v) (.rational 73674 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11888 1) .v) (.rational 22333 1)) .v) (.rational
    10445 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 777 1) .v) (.rational
    1444 1)) .v) (.rational 667 1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 669 1) .v) (.rational 1340
    1)) .v) (.rational 671 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7359 1) .v) (.rational
    14710 1)) .v) (.rational 7351 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 36960 1)
    .v) (.rational 73717 1)) .v) (.rational 36757 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 112035 1) .v) (.rational 222920 1)) .v) (.rational 110885 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 228195 1) .v) (.rational 452865 1)) .v)
    (.rational 224670 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 328878 1) .v)
    (.rational 650820 1)) .v) (.rational 321942 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 343728 1) .v) (.rational 678090 1)) .v) (.rational 334362 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 262350 1) .v) (.rational 515784 1)) .v)
    (.rational 253434 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 145035 1) .v)
    (.rational 284070 1)) .v) (.rational 139035 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 56595 1) .v) (.rational 110390 1)) .v) (.rational 53795 1)) (.pow .g 9))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 14784 1) .v) (.rational 28705 1)) .v) (.rational
    13921 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 2319 1) .v) (.rational
    4480 1)) .v) (.rational 2161 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    165 1) .v) (.rational 317 1)) .v) (.rational 152 1)) (.pow .g 12))) (.pow .f 6))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 30 1)
    .v) (.rational 60 1)) .v) (.rational 30 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 345
    1) .v) (.rational 690 1)) .v) (.rational 345 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1815 1) .v) (.rational 3630 1)) .v) (.rational 1815 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5775 1) .v) (.rational 11550 1)) .v) (.rational 5775 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 12375 1) .v) (.rational 24750 1))
    .v) (.rational 12375 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 18810 1)
    .v) (.rational 37620 1)) .v) (.rational 18810 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 20790 1) .v) (.rational 41580 1)) .v) (.rational 20790 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 16830 1) .v) (.rational 33660 1)) .v) (.rational
    16830 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 9900 1) .v) (.rational
    19800 1)) .v) (.rational 9900 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4125 1) .v) (.rational 8250 1)) .v) (.rational 4125 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1155 1) .v) (.rational 2310 1)) .v) (.rational 1155 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 195 1) .v) (.rational 390 1)) .v) (.rational 195
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 15 1) .v) (.rational 30 1))
    .v) (.rational 15 1)) (.pow .g 12))) (.pow .f 7)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0230

namespace FullLow0231
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow1.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    8*SmallGap.PolarCoefficientsLow0.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    4*SmallGap.PolarCoefficientsLow1.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    40*SmallGap.PolarCoefficientsLow0.c050 e f g v*e*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsLow1.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow0.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow0.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    6*SmallGap.PolarCoefficientsLow0.c140 e f g v*e^2*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(20*SmallGap.ReducedLayers.low0_010_0 e g v*e^4+4*SmallGap.ReducedLayers.low0_010_1
    e g v*e^5+36*SmallGap.ReducedLayers.low0_001_0 e g v*e^5+6*SmallGap.ReducedLayers.low0_001_1 e
    g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_0 e g v*e^2+1*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^3+12*SmallGap.ReducedLayers.low1_011_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^4+15*SmallGap.ReducedLayers.low1_002_0 e g v*e^4+3*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 420 1) .v) (.rational 12950 1)) .e) (.add
    (.mul (.add (.mul (.add (.mul (.rational 380 1) .v) (.rational 8712 1)) .v) (.rational 115045
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 950 1) .v) (.rational 13684 1)) .v)
    (.rational 150630 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    7288 1) .v) (.rational 84968 1)) .v) (.rational 643785 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 21864 1) .v) (.rational 182104 1)) .v) (.rational 1165460 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 23674 1) .v) (.rational 129156 1)) .v) (.rational 734255 1))
    (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    65244 1) .v) (.rational 517470 1)) .v) (.rational 2547572 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 228354 1) .v) (.rational 1405415 1)) .v) (.rational 5916860 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 308878 1) .v) (.rational 1422693 1)) .v) (.rational
    5155331 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 201310 1) .v)
    (.rational 669341 1)) .v) (.rational 2078914 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 362124 1) .v) (.rational 2204258
    1)) .v) (.rational 7585318 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1448496 1) .v)
    (.rational 7246812 1)) .v) (.rational 21600751 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2338214 1) .v) (.rational 9448480 1)) .v) (.rational 24210500 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1944906 1) .v) (.rational 6254336 1)) .v) (.rational
    13550719 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 877294 1) .v)
    (.rational 2226574 1)) .v) (.rational 3956012 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1395810 1) .v)
    (.rational 6970466 1)) .v) (.rational 17646587 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6281145 1) .v) (.rational 26887634 1)) .v) (.rational 59769491 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11747220 1) .v) (.rational 42701174 1)) .v) (.rational
    82394416 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 11803260 1) .v)
    (.rational 36174788 1)) .v) (.rational 59547007 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6859840 1) .v) (.rational 17683234 1)) .v) (.rational 24217393 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2297455 1) .v) (.rational 5011322 1)) .v)
    (.rational 5521728 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3965318 1) .v) (.rational 16948970
    1)) .v) (.rational 32860690 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 19826590 1) .v)
    (.rational 74989210 1)) .v) (.rational 129502641 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 42076380 1) .v) (.rational 140028720 1)) .v) (.rational 212928551 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 49345980 1) .v) (.rational 143924644 1)) .v)
    (.rational 189833034 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 34847604
    1) .v) (.rational 88999086 1)) .v) (.rational 99919767 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 15103560 1) .v) (.rational 33919202 1)) .v) (.rational 31712947 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3899582 1) .v) (.rational 7789672
    1)) .v) (.rational 5938930 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8596902 1) .v)
    (.rational 32381264 1)) .v) (.rational 49739624 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 47282961 1) .v) (.rational 161528451 1)) .v) (.rational 224272168 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 112118009 1) .v) (.rational 346070901 1)) .v)
    (.rational 429956578 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 149908833
    1) .v) (.rational 416992956 1)) .v) (.rational 458040596 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 124024888 1) .v) (.rational 310720532 1)) .v) (.rational
    297643067 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 65493281 1) .v)
    (.rational 148158673 1)) .v) (.rational 121999742 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 21920755 1) .v) (.rational 45087395 1)) .v) (.rational 31526931 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4441157 1) .v) (.rational 8407152
    1)) .v) (.rational 4968104 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    14526145 1) .v) (.rational 49244170 1)) .v) (.rational 61749207 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 87156870 1) .v) (.rational 273250122 1)) .v) (.rational 314258482 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 228168707 1) .v) (.rational 659704128 1))
    .v) (.rational 690147325 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    341905560 1) .v) (.rational 909834376 1)) .v) (.rational 857844918 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 323251869 1) .v) (.rational 791156458 1)) .v) (.rational
    665694729 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 200299686 1) .v)
    (.rational 451469198 1)) .v) (.rational 335769685 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 81746851 1) .v) (.rational 170365704 1)) .v) (.rational 111160509 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 21469434 1) .v) (.rational 41674268
    1)) .v) (.rational 23799533 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3419420 1) .v) (.rational 6248672 1)) .v) (.rational 3143474 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 19360596 1) .v) (.rational 60015160 1)) .v)
    (.rational 63108251 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 125843874 1) .v)
    (.rational 366451927 1)) .v) (.rational 358418473 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 360264118 1) .v) (.rational 983267652 1)) .v) (.rational 888748673 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 597170035 1) .v) (.rational 1524987984 1))
    .v) (.rational 1264992233 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    633646433 1) .v) (.rational 1512702055 1)) .v) (.rational 1143425330 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 449057607 1) .v) (.rational 1002562285 1)) .v)
    (.rational 686034054 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 215091448
    1) .v) (.rational 450031736 1)) .v) (.rational 277418273 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 68842919 1) .v) (.rational 135556334 1)) .v) (.rational 75166094
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 14192739 1) .v) (.rational
    26472571 1)) .v) (.rational 13255704 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1749379 1) .v) (.rational 3117098 1)) .v) (.rational 1424522 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20460738 1) .v) (.rational
    58711818 1)) .v) (.rational 53046169 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    143225166 1) .v) (.rational 391002584 1)) .v) (.rational 332928012 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 444885315 1) .v) (.rational 1153298691 1)) .v) (.rational
    920869845 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 807384732 1) .v)
    (.rational 1984393174 1)) .v) (.rational 1478148364 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 948412187 1) .v) (.rational 2207740311 1)) .v) (.rational 1526283045
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 754567348 1) .v) (.rational
    1663196470 1)) .v) (.rational 1062184065 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 413257701 1) .v) (.rational 863218189 1)) .v) (.rational 507499326 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 155087700 1) .v) (.rational 307668802 1))
    .v) (.rational 166300016 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    38894657 1) .v) (.rational 73557423 1)) .v) (.rational 36626902 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6187452 1) .v) (.rational 11213210 1)) .v) (.rational
    5175293 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 565860 1) .v)
    (.rational 988548 1)) .v) (.rational 427143 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 17134992 1) .v) (.rational 45959678 1))
    .v) (.rational 36468300 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 128512440 1) .v)
    (.rational 331374153 1)) .v) (.rational 250763348 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 430310192 1) .v) (.rational 1064941427 1)) .v) (.rational 765684015 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 847910908 1) .v) (.rational 2011113955 1))
    .v) (.rational 1368551858 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1090858474 1) .v) (.rational 2476880539 1)) .v) (.rational 1589200515 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 960733367 1) .v) (.rational 2086908302 1)) .v)
    (.rational 1258124302 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 590361219
    1) .v) (.rational 1226829764 1)) .v) (.rational 693077725 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 253015755 1) .v) (.rational 503450853 1)) .v) (.rational
    266161132 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 74250068 1) .v)
    (.rational 141732489 1)) .v) (.rational 70165784 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 14323885 1) .v) (.rational 26306690 1)) .v) (.rational 12234002 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1682723 1) .v) (.rational 2984288 1)) .v)
    (.rational 1311222 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 103637 1)
    .v) (.rational 178107 1)) .v) (.rational 74470 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11297170 1) .v) (.rational
    28549590 1)) .v) (.rational 20288828 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 90377360
    1) .v) (.rational 221470344 1)) .v) (.rational 151684475 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 324416646 1) .v) (.rational 769786624 1)) .v) (.rational 506694418 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 689312722 1) .v) (.rational 1581682688
    1)) .v) (.rational 997682583 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    962891197 1) .v) (.rational 2134090816 1)) .v) (.rational 1286300429 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 928451676 1) .v) (.rational 1985820318 1)) .v)
    (.rational 1140698935 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 631033791
    1) .v) (.rational 1301844738 1)) .v) (.rational 711099271 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 303013066 1) .v) (.rational 602979236 1)) .v) (.rational
    312743497 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 101328355 1) .v)
    (.rational 194624068 1)) .v) (.rational 95824483 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 22798824 1) .v) (.rational 42325366 1)) .v) (.rational 19806654 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 3232319 1) .v) (.rational 5811478 1)) .v)
    (.rational 2592247 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 253888 1)
    .v) (.rational 443024 1)) .v) (.rational 189136 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8058 1) .v) (.rational 13662 1)) .v) (.rational 5604 1)) (.pow .g 12)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5785682 1) .v) (.rational 13868354 1)) .v) (.rational 8982013 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 49178297 1) .v) (.rational 115131116 1)) .v) (.rational 72517525 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 188348388 1) .v) (.rational 430135530 1)) .v)
    (.rational 262938630 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 429046970
    1) .v) (.rational 954680990 1)) .v) (.rational 565159209 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 646125306 1) .v) (.rational 1399251890 1)) .v) (.rational
    800442509 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 676085462 1) .v)
    (.rational 1423566993 1)) .v) (.rational 785284372 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 502592116 1) .v) (.rational 1028133054 1)) .v) (.rational 545885069 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 266521827 1) .v) (.rational
    529433716 1)) .v) (.rational 270165832 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 99629305 1) .v) (.rational 192161715 1)) .v) (.rational 94165364 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 25459351 1) .v) (.rational 47696045 1)) .v)
    (.rational 22445279 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 4189670 1)
    .v) (.rational 7629934 1)) .v) (.rational 3451689 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 394349 1) .v) (.rational 698868 1)) .v) (.rational 304519 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 15789 1) .v) (.rational 27251 1)) .v)
    (.rational 11462 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 2250142 1) .v) (.rational 5145902 1)) .v)
    (.rational 3084848 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 20251278 1) .v) (.rational
    45506370 1)) .v) (.rational 26733977 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    82412864 1) .v) (.rational 181780782 1)) .v) (.rational 104496273 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 200273944 1) .v) (.rational 433180308 1)) .v) (.rational
    243272014 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 323222740 1) .v)
    (.rational 684855186 1)) .v) (.rational 375129718 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 364366548 1) .v) (.rational 755556140 1)) .v) (.rational 402993120 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 293617315 1) .v) (.rational
    595328795 1)) .v) (.rational 308713970 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 170026634 1) .v) (.rational 336833946 1)) .v) (.rational 169581782 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 70027779 1) .v) (.rational 135474883 1)) .v)
    (.rational 66147384 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 19938090 1)
    .v) (.rational 37656846 1)) .v) (.rational 17820063 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3709021 1) .v) (.rational 6839223 1)) .v) (.rational 3136557 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 402482 1) .v) (.rational 724790 1)) .v)
    (.rational 322308 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 19115 1) .v)
    (.rational 33629 1)) .v) (.rational 14514 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 640558 1)
    .v) (.rational 1405172 1)) .v) (.rational 790582 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6085301 1) .v) (.rational 13183365 1)) .v) (.rational 7314834 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 26218585 1) .v) (.rational 56051027 1)) .v) (.rational
    30637932 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 67682797 1) .v)
    (.rational 142667116 1)) .v) (.rational 76736632 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 116474556 1) .v) (.rational 241867512 1)) .v) (.rational 127860827 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 140603932 1) .v) (.rational 287388695 1))
    .v) (.rational 149131772 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    121925524 1) .v) (.rational 245088305 1)) .v) (.rational 124686156 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 76409580 1) .v) (.rational 150931689 1)) .v) (.rational
    75186904 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 34286432 1) .v)
    (.rational 66503611 1)) .v) (.rational 32403352 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10721271 1) .v) (.rational 20408112 1)) .v) (.rational 9716962 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2212259 1) .v) (.rational 4130928 1)) .v)
    (.rational 1920800 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 269663 1)
    .v) (.rational 493855 1)) .v) (.rational 224192 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 14630 1) .v) (.rational 26277 1)) .v) (.rational 11647 1)) (.pow .g 12)))
    (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 125449 1) .v) (.rational 265370 1)) .v) (.rational 141905 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1254490 1) .v) (.rational 2631982 1)) .v) (.rational
    1395112 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5704177 1) .v) (.rational
    11862904 1)) .v) (.rational 6228639 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15584628 1) .v) (.rational 32107776 1)) .v) (.rational 16686204 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 28474186 1) .v) (.rational 58076088 1)) .v)
    (.rational 29849198 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 36622028 1)
    .v) (.rational 73896228 1)) .v) (.rational 37528720 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 33968074 1) .v) (.rational 67760280 1)) .v) (.rational 33971966 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 22870976 1) .v) (.rational 45071208
    1)) .v) (.rational 22286104 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11082133 1) .v) (.rational 21559506 1)) .v) (.rational 10503869 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3764106 1) .v) (.rational 7224158 1)) .v) (.rational
    3464808 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 849509 1) .v)
    (.rational 1607488 1)) .v) (.rational 758355 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 114204 1) .v) (.rational 212968 1)) .v) (.rational 98764 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6904 1) .v) (.rational 12684 1)) .v) (.rational
    5780 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 15036 1) .v) (.rational 30844 1)) .v)
    (.rational 15864 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 157878 1) .v) (.rational
    322367 1)) .v) (.rational 165017 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 755466
    1) .v) (.rational 1534904 1)) .v) (.rational 781670 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2177457 1) .v) (.rational 4400334 1)) .v) (.rational 2228445 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4208193 1) .v) (.rational 8455101 1)) .v)
    (.rational 4255980 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5741784 1)
    .v) (.rational 11464602 1)) .v) (.rational 5732898 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5667984 1) .v) (.rational 11241300 1)) .v) (.rational 5581044 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4075974 1) .v) (.rational 8025432 1)) .v)
    (.rational 3953490 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2117682 1)
    .v) (.rational 4137234 1)) .v) (.rational 2020920 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 774618 1) .v) (.rational 1500751 1)) .v) (.rational 726405 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 189198 1) .v) (.rational 363308 1)) .v)
    (.rational 174134 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 27681 1) .v)
    (.rational 52658 1)) .v) (.rational 24977 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1833 1) .v) (.rational 3453 1)) .v) (.rational 1620 1)) (.pow .g 12))) (.pow .f
    5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 826 1) .v) (.rational 1654 1)) .v) (.rational 828 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9086 1) .v) (.rational 18164 1)) .v) (.rational 9078 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 45639 1) .v) (.rational 91075 1)) .v) (.rational 45436 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 138380 1) .v) (.rational 275610 1)) .v)
    (.rational 137230 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 281985 1) .v)
    (.rational 560445 1)) .v) (.rational 278460 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 406692 1) .v) (.rational 806448 1)) .v) (.rational 399756 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 425502 1) .v) (.rational 841638 1)) .v)
    (.rational 416136 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 325248 1) .v)
    (.rational 641580 1)) .v) (.rational 316332 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 180180 1) .v) (.rational 354360 1)) .v) (.rational 174180 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 70510 1) .v) (.rational 138220 1)) .v) (.rational
    67710 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 18491 1) .v) (.rational
    36119 1)) .v) (.rational 17628 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2916 1) .v) (.rational 5674 1)) .v) (.rational 2758 1)) (.pow .g 11))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 209 1) .v) (.rational 405 1)) .v) (.rational 196 1)) (.pow .g 12)))
    (.pow .f 6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0231

namespace FullLow0232
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow2.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    8*SmallGap.PolarCoefficientsLow1.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    4*SmallGap.PolarCoefficientsLow2.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    40*SmallGap.PolarCoefficientsLow0.c050 e f g v*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsLow1.c050 e f g v*e*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsLow2.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow1.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    7*SmallGap.PolarCoefficientsLow0.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsLow1.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    28*SmallGap.PolarCoefficientsLow0.c140 e f g v*e*((e+f)*(e+f+g))^4+
    6*SmallGap.PolarCoefficientsLow1.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    3*SmallGap.PolarCoefficientsLow0.c230 e f g v*e^2*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(40*SmallGap.ReducedLayers.low0_010_0 e g v*e^3+20*SmallGap.ReducedLayers.low0_010_1
    e g v*e^4+4*SmallGap.ReducedLayers.low0_010_2 e g v*e^5+90*SmallGap.ReducedLayers.low0_001_0 e
    g v*e^4+36*SmallGap.ReducedLayers.low0_001_1 e g v*e^5+6*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_020_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^2+1*SmallGap.ReducedLayers.low1_020_2 e g v*e^3+18*SmallGap.ReducedLayers.low1_011_0 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_011_1 e g v*e^3+3*SmallGap.ReducedLayers.low1_011_2 e g
    v*e^4+30*SmallGap.ReducedLayers.low1_002_0 e g v*e^3+15*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_002_2 e g v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1980 1) .v) (.rational 64650 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 1600 1) .v) (.rational 38220 1)) .v) (.rational 549476 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4000 1) .v) (.rational 58940 1)) .v) (.rational
    707832 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 29322 1) .v)
    (.rational 351940 1)) .v) (.rational 2940266 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    87966 1) .v) (.rational 738576 1)) .v) (.rational 5227443 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 95276 1) .v) (.rational 504396 1)) .v) (.rational 3213218 1)) (.pow .g 2))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 252000 1) .v)
    (.rational 2044824 1)) .v) (.rational 11119041 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 882000 1) .v) (.rational 5449018 1)) .v) (.rational 25348219 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1193360 1) .v) (.rational 5367006 1)) .v) (.rational
    21555144 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 778400 1) .v)
    (.rational 2427858 1)) .v) (.rational 8406851 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1345742 1) .v) (.rational 8365490
    1)) .v) (.rational 31617100 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5382968 1) .v)
    (.rational 27074198 1)) .v) (.rational 88420783 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8691826 1) .v) (.rational 34608817 1)) .v) (.rational 96882119 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7235090 1) .v) (.rational 22365431 1)) .v)
    (.rational 52664077 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3268144 1)
    .v) (.rational 7750925 1)) .v) (.rational 14792533 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4991952 1) .v)
    (.rational 25489992 1)) .v) (.rational 70187934 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22463784 1) .v) (.rational 97113612 1)) .v) (.rational 233784669 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 42025608 1) .v) (.rational 152059890 1)) .v) (.rational
    315884157 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 42258636 1) .v)
    (.rational 126847861 1)) .v) (.rational 222814042 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 24594740 1) .v) (.rational 61071507 1)) .v) (.rational 87993523 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8255756 1) .v) (.rational 17102175
    1)) .v) (.rational 19386263 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13626034 1) .v) (.rational
    59730792 1)) .v) (.rational 124559080 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    68130170 1) .v) (.rational 261768064 1)) .v) (.rational 483712127 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 144639878 1) .v) (.rational 483899305 1)) .v) (.rational
    782042145 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 169778492 1) .v)
    (.rational 492393652 1)) .v) (.rational 683988340 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 120084804 1) .v) (.rational 301798563 1)) .v) (.rational 352450142 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 52176404 1) .v) (.rational
    114354439 1)) .v) (.rational 109431395 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13520256 1) .v) (.rational 26254732 1)) .v) (.rational 20114225 1)) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 28288994 1) .v) (.rational 109678020 1)) .v) (.rational 179275993
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 155589467 1) .v) (.rational 543169539 1)) .v)
    (.rational 798426939 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 369094459 1) .v)
    (.rational 1155447073 1)) .v) (.rational 1510233427 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 494004063 1) .v) (.rational 1383194724 1)) .v) (.rational 1585989887
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 409442276 1) .v) (.rational
    1025494506 1)) .v) (.rational 1015747408 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 216821941 1) .v) (.rational 487826796 1)) .v) (.rational 410917371 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 72869607 1) .v) (.rational 148727328 1)) .v)
    (.rational 105282848 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 14847977
    1) .v) (.rational 27940941 1)) .v) (.rational 16606465 1)) (.pow .g 7)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 45533426 1) .v) (.rational 159440270 1)) .v) (.rational 210814212
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 273200556 1) .v) (.rational 879896570 1)) .v)
    (.rational 1062319365 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 715568275 1) .v)
    (.rational 2113644213 1)) .v) (.rational 2309198086 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1073502945 1) .v) (.rational 2902922517 1)) .v) (.rational 2841266360
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1016993439 1) .v) (.rational
    2517588581 1)) .v) (.rational 2184454626 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 632162202 1) .v) (.rational 1436255526 1)) .v) (.rational 1094137492 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 259191335 1) .v) (.rational 543684354 1))
    .v) (.rational 361346413 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    68512551 1) .v) (.rational 134006526 1)) .v) (.rational 77763915 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11007949 1) .v) (.rational 20351154 1)) .v) (.rational
    10431845 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 57384454 1)
    .v) (.rational 184241652 1)) .v) (.rational 202824960 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 372998951 1) .v) (.rational 1120335996 1)) .v) (.rational 1143159926 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1068406230 1) .v) (.rational 2995444776 1)) .v)
    (.rational 2813509225 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1773245804 1) .v) (.rational 4633744468 1)) .v) (.rational 3977237105 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1885755975 1) .v) (.rational 4591288264 1)) .v)
    (.rational 3575367461 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1341041049 1) .v) (.rational 3046014984 1)) .v) (.rational 2138786643 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 645583364 1) .v) (.rational 1372671634 1)) .v)
    (.rational 865864134 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 208093918
    1) .v) (.rational 416649011 1)) .v) (.rational 236293891 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 43317845 1) .v) (.rational 82359321 1)) .v) (.rational 42297242
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 5409270 1) .v) (.rational
    9863769 1)) .v) (.rational 4651269 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 56774004 1) .v) (.rational 169009188 1)) .v) (.rational 159006578
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 397418028 1) .v) (.rational 1122011822 1))
    .v) (.rational 992267065 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1235193305 1)
    .v) (.rational 3301225055 1)) .v) (.rational 2730168127 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2244725466 1) .v) (.rational 5671509262 1)) .v) (.rational
    4363193448 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2643097589 1) .v)
    (.rational 6309013479 1)) .v) (.rational 4492342483 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2110634174 1) .v) (.rational 4761412142 1)) .v) (.rational 3124841880
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1162154475 1) .v) (.rational
    2482023188 1)) .v) (.rational 1497588918 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 439427838 1) .v) (.rational 891430266 1)) .v) (.rational 494643600 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 111347699 1) .v) (.rational 215619918 1))
    .v) (.rational 110479017 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    17962470 1) .v) (.rational 33408761 1)) .v) (.rational 15935142 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1673870 1) .v) (.rational 3008676 1)) .v) (.rational
    1350297 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 43917502 1) .v) (.rational 122242624 1)) .v) (.rational 100595387 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 329381265 1) .v) (.rational 879260190 1)) .v)
    (.rational 688823957 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1103583245 1) .v)
    (.rational 2820752194 1)) .v) (.rational 2095685695 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2177675240 1) .v) (.rational 5322609040 1)) .v) (.rational 3735788770
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2808552869 1) .v) (.rational
    6558522280 1)) .v) (.rational 4332907910 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2482968015 1) .v) (.rational 5538326135 1)) .v) (.rational 3433494522 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1534232294 1) .v) (.rational 3270657069 1))
    .v) (.rational 1898946746 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    662666223 1) .v) (.rational 1352276440 1)) .v) (.rational 735069185 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 196550219 1) .v) (.rational 384971650 1)) .v)
    (.rational 196297753 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 38468844
    1) .v) (.rational 72576074 1)) .v) (.rational 34866378 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4608079 1) .v) (.rational 8405658 1)) .v) (.rational 3828296 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 291397 1) .v) (.rational 515181 1)) .v)
    (.rational 223784 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 26262320 1) .v) (.rational 68799006 1)) .v)
    (.rational 50535588 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 210098560 1) .v)
    (.rational 532714960 1)) .v) (.rational 376674353 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 754638320 1) .v) (.rational 1849374618 1)) .v) (.rational 1255213394 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1605743440 1) .v) (.rational 3798685868 1))
    .v) (.rational 2467784718 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2248613097 1) .v) (.rational 5129876802 1)) .v) (.rational 3181107314 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2176498342 1) .v) (.rational 4785274440 1)) .v)
    (.rational 2825794482 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1487526866 1) .v) (.rational 3151413129 1)) .v) (.rational 1769045878 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 719873115 1) .v) (.rational 1470253583 1)) .v)
    (.rational 783944682 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 243311710
    1) .v) (.rational 479620679 1)) .v) (.rational 243038746 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 55541912 1) .v) (.rational 105859146 1)) .v) (.rational 51080521
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 8029222 1) .v) (.rational
    14826885 1)) .v) (.rational 6834792 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 647471 1) .v) (.rational 1160123 1)) .v) (.rational 512652 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21305 1) .v) (.rational 37001 1)) .v) (.rational
    15696 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 11891406 1) .v) (.rational 29473376 1)) .v) (.rational
    19665646 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 101076951 1) .v) (.rational
    244336202 1)) .v) (.rational 158429061 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    387352510 1) .v) (.rational 912117882 1)) .v) (.rational 573525452 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 883604805 1) .v) (.rational 2024455884 1)) .v) (.rational
    1231788589 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1333890631 1) .v)
    (.rational 2970463328 1)) .v) (.rational 1745301310 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1400951253 1) .v) (.rational 3029779194 1)) .v) (.rational 1715695620
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1047092609 1) .v) (.rational
    2197887710 1)) .v) (.rational 1197635651 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 559487236 1) .v) (.rational 1139584848 1)) .v) (.rational 596883992 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 211322920 1) .v) (.rational 417759124 1))
    .v) (.rational 210252849 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    54762966 1) .v) (.rational 105137768 1)) .v) (.rational 50870975 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9182787 1) .v) (.rational 17136708 1)) .v) (.rational
    7981909 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 886373 1) .v)
    (.rational 1609048 1)) .v) (.rational 722675 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36721 1) .v) (.rational 64816 1)) .v) (.rational 28095 1)) (.pow .g 12)))
    .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 3937352 1) .v) (.rational 9274032 1)) .v) (.rational 5706060 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 35436168 1) .v) (.rational 81927738 1)) .v) (.rational 49374853
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 144291039 1) .v) (.rational 327111044
    1)) .v) (.rational 192800266 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    351108504 1) .v) (.rational 779691712 1)) .v) (.rational 448724993 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 567945152 1) .v) (.rational 1234194722 1)) .v) (.rational
    692449613 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 642486572 1) .v)
    (.rational 1365025946 1)) .v) (.rational 745446865 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 520371766 1) .v) (.rational 1080065365 1)) .v) (.rational 573298472 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 303484588 1) .v) (.rational
    614997520 1)) .v) (.rational 316920343 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 126215344 1) .v) (.rational 249628867 1)) .v) (.rational 124787048 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 36409372 1) .v) (.rational 70275632 1)) .v)
    (.rational 34067218 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 6892595 1)
    .v) (.rational 12985199 1)) .v) (.rational 6105450 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 765548 1) .v) (.rational 1408012 1)) .v) (.rational 642464 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 37504 1) .v) (.rational 67331 1)) .v)
    (.rational 29827 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 897992 1) .v) (.rational 2017956
    1)) .v) (.rational 1159819 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 8530924 1) .v)
    (.rational 18919285 1)) .v) (.rational 10720573 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 36774602 1) .v) (.rational 80420515 1)) .v) (.rational 44878642 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 95045555 1) .v) (.rational 204781436 1)) .v)
    (.rational 112414176 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 163897700
    1) .v) (.rational 347613574 1)) .v) (.rational 187483785 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 198475898 1) .v) (.rational 414025396 1)) .v) (.rational
    219130341 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 172898166 1) .v)
    (.rational 354448500 1)) .v) (.rational 183874341 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 109048888 1) .v) (.rational 219538154 1)) .v) (.rational 111504375 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 49361770 1) .v) (.rational 97530566
    1)) .v) (.rational 48453786 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    15617690 1) .v) (.rational 30271479 1)) .v) (.rational 14700130 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3273336 1) .v) (.rational 6222425 1)) .v) (.rational
    2952397 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 407317 1) .v)
    (.rational 759290 1)) .v) (.rational 351973 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 22706 1) .v) (.rational 41504 1)) .v) (.rational 18798 1)) (.pow .g 12)))
    (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 125848 1) .v) (.rational 270822 1)) .v) (.rational 147058 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1258480 1) .v) (.rational 2685036 1)) .v) (.rational
    1445047 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5724817 1) .v) (.rational
    12102344 1)) .v) (.rational 6450823 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15656673 1) .v) (.rational 32774318 1)) .v) (.rational 17288417 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 28655277 1) .v) (.rational 59357280 1)) .v)
    (.rational 30960723 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 36953244 1)
    .v) (.rational 75693216 1)) .v) (.rational 39005958 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 34408122 1) .v) (.rational 69646248 1)) .v) (.rational 35425782 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 23293062 1) .v) (.rational 46558644
    1)) .v) (.rational 23355138 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11370498 1) .v) (.rational 22429278 1)) .v) (.rational 11086392 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3900652 1) .v) (.rational 7589220 1)) .v) (.rational
    3693523 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 892021 1) .v)
    (.rational 1711104 1)) .v) (.rational 819475 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 122017 1) .v) (.rational 230702 1)) .v) (.rational 108685 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7545 1) .v) (.rational 14060 1)) .v) (.rational
    6515 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 8148 1) .v) (.rational 16856 1)) .v) (.rational
    8736 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 85554 1) .v) (.rational 176162 1)) .v)
    (.rational 90872 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 409522 1) .v)
    (.rational 838996 1)) .v) (.rational 430590 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1181249 1) .v) (.rational 2406933 1)) .v) (.rational 1228468 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2285901 1) .v) (.rational 4630587 1)) .v)
    (.rational 2349222 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3125280 1)
    .v) (.rational 6291120 1)) .v) (.rational 3170880 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3094224 1) .v) (.rational 6186516 1)) .v) (.rational 3096156 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2234358 1) .v) (.rational 4434990 1)) .v)
    (.rational 2202648 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1167474 1)
    .v) (.rational 2299458 1)) .v) (.rational 1132668 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 430326 1) .v) (.rational 840662 1)) .v) (.rational 410472 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 106182 1) .v) (.rational 205664 1)) .v)
    (.rational 99494 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 15745 1) .v)
    (.rational 30229 1)) .v) (.rational 14484 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1061 1) .v) (.rational 2019 1)) .v) (.rational 958 1)) (.pow .g 12))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0232

namespace FullLow0233
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow3.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    8*SmallGap.PolarCoefficientsLow2.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    4*SmallGap.PolarCoefficientsLow3.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    40*SmallGap.PolarCoefficientsLow1.c050 e f g v*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsLow2.c050 e f g v*e*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsLow3.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow2.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    7*SmallGap.PolarCoefficientsLow1.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsLow2.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    32*SmallGap.PolarCoefficientsLow0.c140 e f g v*((e+f)*(e+f+g))^4+
    28*SmallGap.PolarCoefficientsLow1.c140 e f g v*e*((e+f)*(e+f+g))^4+
    6*SmallGap.PolarCoefficientsLow2.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    18*SmallGap.PolarCoefficientsLow0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsLow0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(40*SmallGap.ReducedLayers.low0_010_0 e g v*e^2+40*SmallGap.ReducedLayers.low0_010_1
    e g v*e^3+20*SmallGap.ReducedLayers.low0_010_2 e g v*e^4+4*SmallGap.ReducedLayers.low0_010_3 e
    g v*e^5+120*SmallGap.ReducedLayers.low0_001_0 e g v*e^3+90*SmallGap.ReducedLayers.low0_001_1 e
    g v*e^4+36*SmallGap.ReducedLayers.low0_001_2 e g v*e^5+6*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_0 e g v+3*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_2 e g v*e^2+1*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^3+12*SmallGap.ReducedLayers.low1_011_0 e g v*e^1+18*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_011_2 e g v*e^3+3*SmallGap.ReducedLayers.low1_011_3 e g
    v*e^4+30*SmallGap.ReducedLayers.low1_002_0 e g v*e^2+30*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_002_2 e g v*e^4+3*SmallGap.ReducedLayers.low1_002_3 e g
    v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 5520 1) .v) (.rational 193800 1)) .e) (.add (.mul (.add (.mul
    (.add (.mul (.rational 3920 1) .v) (.rational 99648 1)) .v) (.rational 1577938 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9800 1) .v) (.rational 150736 1)) .v) (.rational 1997556
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 69062 1) .v)
    (.rational 866960 1)) .v) (.rational 8074376 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    207186 1) .v) (.rational 1777148 1)) .v) (.rational 14075867 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 224476 1) .v) (.rational 1160484 1)) .v) (.rational 8417816 1)) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 571732 1)
    .v) (.rational 4800290 1)) .v) (.rational 29144652 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2001062 1) .v) (.rational 12514185 1)) .v) (.rational 65094142 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2708314 1) .v) (.rational 11923311 1)) .v) (.rational
    53849582 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1768130 1) .v)
    (.rational 5124355 1)) .v) (.rational 20187674 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2941088 1) .v) (.rational 18827460
    1)) .v) (.rational 78958503 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 11764352 1) .v)
    (.rational 59827108 1)) .v) (.rational 216424131 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19001274 1) .v) (.rational 74662981 1)) .v) (.rational 231074700 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 15828590 1) .v) (.rational 46792067 1)) .v)
    (.rational 121318289 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7160166 1)
    .v) (.rational 15633843 1)) .v) (.rational 32452911 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10490780 1) .v)
    (.rational 55151538 1)) .v) (.rational 166690141 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 47208510 1) .v) (.rational 207117318 1)) .v) (.rational 544981307 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 88345076 1) .v) (.rational 318838616 1)) .v)
    (.rational 719715589 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 88901386
    1) .v) (.rational 260915203 1)) .v) (.rational 493320203 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 51811822 1) .v) (.rational 123159095 1)) .v) (.rational 187881546
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 17429280 1) .v) (.rational
    33926203 1)) .v) (.rational 39573566 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 27438569 1) .v)
    (.rational 124147538 1)) .v) (.rational 280640922 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 137192845 1) .v) (.rational 538163060 1)) .v) (.rational 1072218793 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 291360631 1) .v) (.rational 983114925 1)) .v)
    (.rational 1700850792 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 342285454
    1) .v) (.rational 988294642 1)) .v) (.rational 1454977802 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 242461101 1) .v) (.rational 599055017 1)) .v) (.rational
    730986385 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 105594163 1) .v)
    (.rational 225225579 1)) .v) (.rational 220911879 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 27453231 1) .v) (.rational 51636804 1)) .v) (.rational 39655567 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 54285636 1) .v) (.rational 218041624 1)) .v)
    (.rational 381800966 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 298570998 1) .v)
    (.rational 1071068769 1)) .v) (.rational 1677524801 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 708573634 1) .v) (.rational 2259805463 1)) .v) (.rational 3126004724 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 949298868 1) .v) (.rational 2684607774 1))
    .v) (.rational 3230280344 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    788159036 1) .v) (.rational 1978200648 1)) .v) (.rational 2034881780 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 418492228 1) .v) (.rational 938036434 1)) .v)
    (.rational 810931319 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 141189868
    1) .v) (.rational 286405134 1)) .v) (.rational 205786538 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 28919802 1) .v) (.rational 54215323 1)) .v) (.rational 32515408
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 82626737 1) .v) (.rational
    300830390 1)) .v) (.rational 421909978 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    495760422 1) .v) (.rational 1650151070 1)) .v) (.rational 2103352534 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1299136027 1) .v) (.rational 3941537653 1)) .v) (.rational
    4521396226 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1951209600 1) .v)
    (.rational 5387711601 1)) .v) (.rational 5501803381 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1852196462 1) .v) (.rational 4657992637 1)) .v) (.rational 4187554799
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1154892890 1) .v) (.rational
    2655935268 1)) .v) (.rational 2082072803 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 475637805 1) .v) (.rational 1008574866 1)) .v) (.rational 686255612 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 126503978 1) .v) (.rational 250547958 1))
    .v) (.rational 148667086 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    20492705 1) .v) (.rational 38544258 1)) .v) (.rational 20292847 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 97446816 1) .v) (.rational 326212984 1)) .v)
    (.rational 378030104 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 633404304 1) .v)
    (.rational 1974643819 1)) .v) (.rational 2113230616 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1815330894 1) .v) (.rational 5258942858 1)) .v) (.rational 5159536649 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3016872573 1) .v) (.rational 8111836955 1))
    .v) (.rational 7240847584 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3215590795 1) .v) (.rational 8027336712 1)) .v) (.rational 6472582708 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2294785296 1) .v) (.rational 5331233591 1)) .v)
    (.rational 3861429987 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1110350296 1) .v) (.rational 2412573602 1)) .v) (.rational 1566368092 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 360441311 1) .v) (.rational 738238770 1)) .v)
    (.rational 431145987 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 75750097
    1) .v) (.rational 147762971 1)) .v) (.rational 78447881 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9579140 1) .v) (.rational 17997325 1)) .v) (.rational 8828818 1))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 88966573 1)
    .v) (.rational 276541760 1)) .v) (.rational 272338232 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 622766011 1) .v) (.rational 1829559376 1)) .v) (.rational 1689103851 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1936809606 1) .v) (.rational 5368276490 1)) .v)
    (.rational 4621510791 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3524899493 1) .v) (.rational 9207407054 1)) .v) (.rational 7352170599 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4160913833 1) .v) (.rational 10241166458 1)) .v)
    (.rational 7548566671 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3335580408 1) .v) (.rational 7744479248 1)) .v) (.rational 5250395948 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1846970479 1) .v) (.rational 4056355193 1)) .v)
    (.rational 2526086891 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 703854013
    1) .v) (.rational 1468899968 1)) .v) (.rational 841980033 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 180260274 1) .v) (.rational 359687667 1)) .v) (.rational
    190927204 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 29496939 1) .v)
    (.rational 56667437 1)) .v) (.rational 28121396 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2801237 1) .v) (.rational 5211264 1)) .v) (.rational 2442649 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 62315442 1)
    .v) (.rational 181101558 1)) .v) (.rational 155325052 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 467365815 1) .v) (.rational 1299136176 1)) .v) (.rational 1058743798 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1566967433 1) .v) (.rational 4159729060 1)) .v)
    (.rational 3208636855 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3096906787 1) .v) (.rational 7842399668 1)) .v) (.rational 5703833038 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4004890413 1) .v) (.rational 9669177198 1)) .v)
    (.rational 6608223935 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3555361975 1) .v) (.rational 8185952877 1)) .v) (.rational 5243475915 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2210123401 1) .v) (.rational 4858830645 1)) .v)
    (.rational 2913528525 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 962646705
    1) .v) (.rational 2025557142 1)) .v) (.rational 1137916432 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 288815465 1) .v) (.rational 583644882 1)) .v) (.rational
    308141121 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 57405430 1) .v)
    (.rational 111858791 1)) .v) (.rational 55790895 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7019946 1) .v) (.rational 13234899 1)) .v) (.rational 6272790 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 456408 1) .v) (.rational 832906 1)) .v)
    (.rational 376498 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 32863189 1) .v) (.rational 89738524 1)) .v)
    (.rational 68442775 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 262905512 1) .v)
    (.rational 693393146 1)) .v) (.rational 508409709 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 944987902 1) .v) (.rational 2403915644 1)) .v) (.rational 1689608043 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2014068854 1) .v) (.rational 4936063314 1))
    .v) (.rational 3316306417 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2828373035 1) .v) (.rational 6672743382 1)) .v) (.rational 4274323687 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2749543904 1) .v) (.rational 6242262306 1)) .v)
    (.rational 3804457441 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1890980627 1) .v) (.rational 4132328573 1)) .v) (.rational 2393230881 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 923151522 1) .v) (.rational 1943654769 1)) .v)
    (.rational 1069528258 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 315759729
    1) .v) (.rational 641568319 1)) .v) (.rational 335838872 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 73246160 1) .v) (.rational 143910822 1)) .v) (.rational 71841212
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 10818765 1) .v) (.rational
    20591147 1)) .v) (.rational 9832716 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 898040 1) .v) (.rational 1655907 1)) .v) (.rational 757867 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 30745 1) .v) (.rational 54675 1)) .v) (.rational
    23930 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 12623640 1) .v) (.rational 32508550 1)) .v) (.rational
    22435841 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 107300940 1) .v) (.rational
    269052775 1)) .v) (.rational 180279537 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    411503084 1) .v) (.rational 1003439592 1)) .v) (.rational 651374204 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 940254330 1) .v) (.rational 2227191602 1)) .v)
    (.rational 1397652137 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1423465974 1) .v) (.rational 3272200486 1)) .v) (.rational 1981099124 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1501595186 1) .v) (.rational 3347528221 1)) .v)
    (.rational 1951868095 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1129444616 1) .v) (.rational 2440959258 1)) .v) (.rational 1368897259 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 608838593 1) .v) (.rational 1275686225 1)) .v)
    (.rational 687595193 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 232743395
    1) .v) (.rational 473007002 1)) .v) (.rational 245054062 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 61295064 1) .v) (.rational 120919996 1)) .v) (.rational 60263504
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 10501706 1) .v) (.rational
    20124746 1)) .v) (.rational 9660489 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1043231 1) .v) (.rational 1941853 1)) .v) (.rational 898622 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 44929 1) .v) (.rational 81038 1)) .v) (.rational
    36109 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 3332548 1) .v) (.rational 8116814 1)) .v) (.rational
    5142686 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 29992932 1) .v) (.rational 71612996
    1)) .v) (.rational 44412945 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 122213999 1)
    .v) (.rational 285751727 1)) .v) (.rational 173191109 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 297872200 1) .v) (.rational 681298582 1)) .v) (.rational 402889740 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 483182391 1) .v) (.rational
    1080024380 1)) .v) (.rational 622154736 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 548952509 1) .v) (.rational 1198117954 1)) .v) (.rational 671319579 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 447382224 1) .v) (.rational 952772200 1))
    .v) (.rational 518585107 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    263178531 1) .v) (.rational 546647854 1)) .v) (.rational 288743649 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 110743450 1) .v) (.rational 224302472 1)) .v) (.rational
    114912015 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 32450911 1) .v)
    (.rational 64093330 1)) .v) (.rational 31843576 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6272061 1) .v) (.rational 12081385 1)) .v) (.rational 5822508 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 715957 1) .v) (.rational 1344804 1)) .v)
    (.rational 628847 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 36367 1) .v)
    (.rational 66542 1)) .v) (.rational 30175 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 540338 1)
    .v) (.rational 1247712 1)) .v) (.rational 734456 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5133211 1) .v) (.rational 11686878 1)) .v) (.rational 6779117 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 22142821 1) .v) (.rational 49661004 1)) .v) (.rational
    28353755 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 57317098 1) .v)
    (.rational 126516307 1)) .v) (.rational 71012796 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 99099982 1) .v) (.rational 215092750 1)) .v) (.rational 118542441 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 120495427 1) .v) (.rational 256944314 1))
    .v) (.rational 138871594 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    105583485 1) .v) (.rational 221023894 1)) .v) (.rational 117013834 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 67136693 1) .v) (.rational 137875364 1)) .v) (.rational
    71427288 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 30726653 1) .v)
    (.rational 61873042 1)) .v) (.rational 31340486 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9865262 1) .v) (.rational 19471880 1)) .v) (.rational 9638401 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2107874 1) .v) (.rational 4077382 1)) .v)
    (.rational 1971803 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 268949 1)
    .v) (.rational 509801 1)) .v) (.rational 240852 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 15487 1) .v) (.rational 28760 1)) .v) (.rational 13273 1)) (.pow .g 12)))
    (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 40538 1) .v) (.rational 88938 1)) .v) (.rational 49128 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 405380 1) .v) (.rational 881232 1)) .v) (.rational 482306
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1845181 1) .v) (.rational 3971728 1))
    .v) (.rational 2152107 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5053299
    1) .v) (.rational 10762760 1)) .v) (.rational 5768957 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9270650 1) .v) (.rational 19523291 1)) .v) (.rational 10342689 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 11998852 1) .v) (.rational 24966664
    1)) .v) (.rational 13060296 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11231318 1) .v) (.rational 23073932 1)) .v) (.rational 11907798 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7658890 1) .v) (.rational 15525352 1)) .v) (.rational
    7897542 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3775754 1) .v)
    (.rational 7547780 1)) .v) (.rational 3781602 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1312320 1) .v) (.rational 2585896 1)) .v) (.rational 1275294 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 305269 1) .v) (.rational 592796 1)) .v)
    (.rational 287663 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 42683 1) .v)
    (.rational 81680 1)) .v) (.rational 38997 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2714 1) .v) (.rational 5119 1)) .v) (.rational 2405 1)) (.pow .g 12))) (.pow .f
    4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0233

namespace FullLow0234
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    8*SmallGap.PolarCoefficientsLow3.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    4*SmallGap.PolarCoefficientsLow4.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    40*SmallGap.PolarCoefficientsLow2.c050 e f g v*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsLow3.c050 e f g v*e*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsLow4.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow3.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    7*SmallGap.PolarCoefficientsLow2.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsLow3.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    32*SmallGap.PolarCoefficientsLow1.c140 e f g v*((e+f)*(e+f+g))^4+
    28*SmallGap.PolarCoefficientsLow2.c140 e f g v*e*((e+f)*(e+f+g))^4+
    6*SmallGap.PolarCoefficientsLow3.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    25*SmallGap.PolarCoefficientsLow0.c230 e f g v*((e+f)*(e+f+g))^3+
    18*SmallGap.PolarCoefficientsLow1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    5*SmallGap.PolarCoefficientsLow0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsLow1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    10*SmallGap.PolarCoefficientsLow0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(20*SmallGap.ReducedLayers.low0_010_0 e g v*e^1+40*SmallGap.ReducedLayers.low0_010_1
    e g v*e^2+40*SmallGap.ReducedLayers.low0_010_2 e g v*e^3+20*SmallGap.ReducedLayers.low0_010_3
    e g v*e^4+4*SmallGap.ReducedLayers.low0_010_4 e g v*e^5+90*SmallGap.ReducedLayers.low0_001_0 e
    g v*e^2+120*SmallGap.ReducedLayers.low0_001_1 e g v*e^3+90*SmallGap.ReducedLayers.low0_001_2 e
    g v*e^4+36*SmallGap.ReducedLayers.low0_001_3 e g v*e^5+6*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_1 e g v+3*SmallGap.ReducedLayers.low1_020_2 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_3 e g v*e^2+1*SmallGap.ReducedLayers.low1_020_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_0 e g v+12*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_011_2 e g v*e^2+12*SmallGap.ReducedLayers.low1_011_3 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_4 e g v*e^4+15*SmallGap.ReducedLayers.low1_002_0 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_002_1 e g v*e^2+30*SmallGap.ReducedLayers.low1_002_2 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_002_3 e g v*e^4+3*SmallGap.ReducedLayers.low1_002_4 e g
    v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 10080 1) .v) (.rational 387600 1)) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 6160 1) .v) (.rational 171024 1)) .v) (.rational 3027668 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 15400 1) .v) (.rational 253568 1)) .v) (.rational 3762036 1)) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 104930 1) .v) (.rational 1407952
    1)) .v) (.rational 14819424 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 314790 1) .v)
    (.rational 2812124 1)) .v) (.rational 25289975 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 341180 1) .v) (.rational 1741404 1)) .v) (.rational 14669388 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 840000 1) .v)
    (.rational 7426464 1)) .v) (.rational 51007067 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2940000 1) .v) (.rational 18880996 1)) .v) (.rational 111393225 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3980480 1) .v) (.rational 17280780 1)) .v) (.rational
    89328714 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2601200 1) .v)
    (.rational 6938380 1)) .v) (.rational 31951173 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4170540 1) .v) (.rational 27892124
    1)) .v) (.rational 131371097 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 16682160 1) .v)
    (.rational 86773994 1)) .v) (.rational 352186987 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26952830 1) .v) (.rational 105195894 1)) .v) (.rational 365127254 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 22470930 1) .v) (.rational 63382682 1)) .v)
    (.rational 183935868 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10180790
    1) .v) (.rational 20129638 1)) .v) (.rational 46223493 1)) (.pow .g 4)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 14303722 1)
    .v) (.rational 78396220 1)) .v) (.rational 262833173 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 64366749 1) .v) (.rational 289580815 1)) .v) (.rational 841840683 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 120493216 1) .v) (.rational 436873966 1)) .v)
    (.rational 1083357203 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 121348094
    1) .v) (.rational 349119050 1)) .v) (.rational 718047669 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 70823846 1) .v) (.rational 160627484 1)) .v) (.rational 261512501
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 23878461 1) .v) (.rational
    43263487 1)) .v) (.rational 51901814 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 35763606 1) .v)
    (.rational 168960160 1)) .v) (.rational 417744745 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 178818030 1) .v) (.rational 723426178 1)) .v) (.rational 1567784931 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 379897730 1) .v) (.rational 1303529672 1)) .v)
    (.rational 2434783398 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 446682740
    1) .v) (.rational 1291604106 1)) .v) (.rational 2030852573 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 316897520 1) .v) (.rational 772326014 1)) .v) (.rational
    990525731 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 138338696 1) .v)
    (.rational 287494212 1)) .v) (.rational 289778795 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 36085060 1) .v) (.rational 65748714 1)) .v) (.rational 50539042 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 67088986 1) .v) (.rational 282234924 1)) .v)
    (.rational 533502191 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 368989423 1) .v)
    (.rational 1373911647 1)) .v) (.rational 2309971060 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 876065143 1) .v) (.rational 2872084285 1)) .v) (.rational 4234981553 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1174872471 1) .v) (.rational 3382216371 1))
    .v) (.rational 4299402540 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    977161804 1) .v) (.rational 2474528264 1)) .v) (.rational 2659514794 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 520254077 1) .v) (.rational 1168884445 1)) .v)
    (.rational 1042779677 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 176193727
    1) .v) (.rational 357374477 1)) .v) (.rational 262145687 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 36271109 1) .v) (.rational 68187865 1)) .v) (.rational 41597781
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 95753698 1) .v) (.rational
    366261512 1)) .v) (.rational 548637325 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    574522188 1) .v) (.rational 1995785996 1)) .v) (.rational 2703982800 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1506298232 1) .v) (.rational 4737488246 1)) .v) (.rational
    5743865125 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2265037770 1) .v)
    (.rational 6441731408 1)) .v) (.rational 6907960732 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2154538588 1) .v) (.rational 5550084400 1)) .v) (.rational 5203631546
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1347671800 1) .v) (.rational
    3162821970 1)) .v) (.rational 2569415453 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 557543226 1) .v) (.rational 1205246632 1)) .v) (.rational 846523329 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 149192944 1) .v) (.rational 301914094 1))
    .v) (.rational 185096520 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    24357328 1) .v) (.rational 47059330 1)) .v) (.rational 25770703 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 104336260 1) .v) (.rational 367719188 1)) .v)
    (.rational 451504463 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 678185690 1) .v)
    (.rational 2214933607 1)) .v) (.rational 2502152368 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1944837276 1) .v) (.rational 5873848616 1)) .v) (.rational 6058153005 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3236562428 1) .v) (.rational 9032352198 1))
    .v) (.rational 8439167575 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3457997412 1) .v) (.rational 8926742543 1)) .v) (.rational 7503136929 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2476834029 1) .v) (.rational 5936200080 1)) .v)
    (.rational 4467925357 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1204746856 1) .v) (.rational 2698952944 1)) .v) (.rational 1818880798 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 393907010 1) .v) (.rational 833113838 1)) .v)
    (.rational 506033538 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 83573564
    1) .v) (.rational 168926863 1)) .v) (.rational 93751964 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 10697531 1) .v) (.rational 20916685 1)) .v) (.rational 10794712
    1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 86274542 1)
    .v) (.rational 282530184 1)) .v) (.rational 293078673 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 603921794 1) .v) (.rational 1862146900 1)) .v) (.rational 1805950175 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1879487127 1) .v) (.rational 5447746824 1)) .v)
    (.rational 4912442686 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3425939440 1) .v) (.rational 9327447802 1)) .v) (.rational 7779307710 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4055032531 1) .v) (.rational 10374628670 1)) .v)
    (.rational 7967360878 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3264187212 1) .v) (.rational 7863853914 1)) .v) (.rational 5545702614 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1818233195 1) .v) (.rational 4141054752 1)) .v)
    (.rational 2682005648 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 698624336
    1) .v) (.rational 1513124448 1)) .v) (.rational 903556599 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 180907991 1) .v) (.rational 375366976 1)) .v) (.rational
    208293891 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 30036210 1) .v)
    (.rational 60148188 1)) .v) (.rational 31330732 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2906476 1) .v) (.rational 5643350 1)) .v) (.rational 2782688 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 53248946 1)
    .v) (.rational 162896396 1)) .v) (.rational 146493302 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 399367095 1) .v) (.rational 1165083535 1)) .v) (.rational 993630935 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1339998619 1) .v) (.rational 3722655585 1)) .v)
    (.rational 2998903764 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2652923416 1) .v) (.rational 7012128017 1)) .v) (.rational 5315972754 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3440965215 1) .v) (.rational 8652164947 1)) .v)
    (.rational 6153591704 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3068699843 1) .v) (.rational 7346682278 1)) .v) (.rational 4892179229 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1920170288 1) .v) (.rational 4385825242 1)) .v)
    (.rational 2733689887 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 844006545
    1) .v) (.rational 1845168632 1)) .v) (.rational 1078581594 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 256361965 1) .v) (.rational 538665821 1)) .v) (.rational
    296520488 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 51799626 1) .v)
    (.rational 105046619 1)) .v) (.rational 54754708 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6473811 1) .v) (.rational 12701519 1)) .v) (.rational 6298185 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 433179 1) .v) (.rational 819951 1)) .v)
    (.rational 386772 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 23776246 1) .v) (.rational 68176972 1)) .v)
    (.rational 54299862 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 190209968 1) .v)
    (.rational 525533498 1)) .v) (.rational 401809205 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 684250676 1) .v) (.rational 1819187124 1)) .v) (.rational 1331323355 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1461080292 1) .v) (.rational 3734147622 1))
    .v) (.rational 2608440078 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2058391929 1) .v) (.rational 5054256230 1)) .v) (.rational 3361956257 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2010861322 1) .v) (.rational 4743909304 1)) .v)
    (.rational 2999647307 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1392759145 1) .v) (.rational 3159175722 1)) .v) (.rational 1897538558 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 686626046 1) .v) (.rational 1499666650 1)) .v)
    (.rational 856094630 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 238002843
    1) .v) (.rational 501542626 1)) .v) (.rational 272601377 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 56201558 1) .v) (.rational 114502986 1)) .v) (.rational 59411878
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 8500747 1) .v) (.rational
    16760866 1)) .v) (.rational 8320769 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 728446 1) .v) (.rational 1386900 1)) .v) (.rational 658454 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 26046 1) .v) (.rational 47420 1)) .v) (.rational
    21374 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 7258638 1) .v) (.rational 19551968 1)) .v) (.rational
    14031268 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 61698423 1) .v) (.rational 161503030
    1)) .v) (.rational 112401305 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 236819762
    1) .v) (.rational 601662388 1)) .v) (.rational 405196446 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 542179755 1) .v) (.rational 1335472942 1)) .v) (.rational
    868434396 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 823584199 1) .v)
    (.rational 1965133430 1)) .v) (.rational 1231502010 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 873275338 1) .v) (.rational 2017469157 1)) .v) (.rational 1216463479
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 661732813 1) .v) (.rational
    1480010776 1)) .v) (.rational 857726461 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 360400260 1) .v) (.rational 780610716 1)) .v) (.rational 434664961 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 139704895 1) .v) (.rational 293237287 1))
    .v) (.rational 156942181 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    37484139 1) .v) (.rational 76301535 1)) .v) (.rational 39287020 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6583025 1) .v) (.rational 12997874 1)) .v) (.rational
    6443721 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 675845 1) .v)
    (.rational 1292396 1)) .v) (.rational 616551 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 30428 1) .v) (.rational 56053 1)) .v) (.rational 25625 1)) (.pow .g 12)))
    .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1356150 1) .v) (.rational 3436344 1)) .v) (.rational 2252826 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12205350 1) .v) (.rational 30269758 1)) .v) (.rational 19407591
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 49777873 1) .v) (.rational 120688700 1))
    .v) (.rational 75548626 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    121568384 1) .v) (.rational 287840128 1)) .v) (.rational 175619540 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 197880144 1) .v) (.rational 457099406 1)) .v) (.rational
    271385745 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 226005388 1) .v)
    (.rational 508926000 1)) .v) (.rational 293594744 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 185591118 1) .v) (.rational 407159964 1)) .v) (.rational 227957529 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 110328336 1) .v) (.rational
    235733044 1)) .v) (.rational 127980132 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 47087714 1) .v) (.rational 97976328 1)) .v) (.rational 51558355 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 14060094 1) .v) (.rational 28489746 1)) .v)
    (.rational 14531325 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2785593 1)
    .v) (.rational 5495976 1)) .v) (.rational 2717253 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 328448 1) .v) (.rational 630476 1)) .v) (.rational 302028 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 17408 1) .v) (.rational 32434 1)) .v)
    (.rational 15026 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 117000 1) .v) (.rational 279144 1))
    .v) (.rational 169020 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1111500 1) .v)
    (.rational 2611330 1)) .v) (.rational 1557004 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4798832 1) .v) (.rational 11090820 1)) .v) (.rational 6503675 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 12446822 1) .v) (.rational 28270154 1)) .v)
    (.rational 16282453 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 21594456 1)
    .v) (.rational 48153978 1)) .v) (.rational 27204789 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 26394980 1) .v) (.rational 57735021 1)) .v) (.rational 31953402 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 23303420 1) .v) (.rational 49959903
    1)) .v) (.rational 27055392 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    14972568 1) .v) (.rational 31441569 1)) .v) (.rational 16644108 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6948772 1) .v) (.rational 14286399 1)) .v) (.rational
    7387248 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2272336 1) .v)
    (.rational 4572693 1)) .v) (.rational 2308554 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 497220 1) .v) (.rational 979177 1)) .v) (.rational 482557 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 65410 1) .v) (.rational 126033 1)) .v) (.rational
    60623 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 3916 1) .v) (.rational
    7379 1)) .v) (.rational 3463 1)) (.pow .g 12))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0234

namespace FullLow0235
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsLow4.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    40*SmallGap.PolarCoefficientsLow3.c050 e f g v*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsLow4.c050 e f g v*e*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow4.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    7*SmallGap.PolarCoefficientsLow3.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsLow4.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    32*SmallGap.PolarCoefficientsLow2.c140 e f g v*((e+f)*(e+f+g))^4+
    28*SmallGap.PolarCoefficientsLow3.c140 e f g v*e*((e+f)*(e+f+g))^4+
    6*SmallGap.PolarCoefficientsLow4.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow3.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow3.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    25*SmallGap.PolarCoefficientsLow1.c230 e f g v*((e+f)*(e+f+g))^3+
    18*SmallGap.PolarCoefficientsLow2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow3.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    5*SmallGap.PolarCoefficientsLow1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsLow2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    19*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2+
    10*SmallGap.PolarCoefficientsLow1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    4*SmallGap.PolarCoefficientsLow0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_0 e g v+20*SmallGap.ReducedLayers.low0_010_1 e g
    v*e^1+40*SmallGap.ReducedLayers.low0_010_2 e g v*e^2+40*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^3+20*SmallGap.ReducedLayers.low0_010_4 e g v*e^4+4*SmallGap.ReducedLayers.low0_010_5 e g
    v*e^5+36*SmallGap.ReducedLayers.low0_001_0 e g v*e^1+90*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^2+120*SmallGap.ReducedLayers.low0_001_2 e g v*e^3+90*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^4+36*SmallGap.ReducedLayers.low0_001_4 e g v*e^5+6*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_2 e g v+3*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_4 e g v*e^2+1*SmallGap.ReducedLayers.low1_020_5 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_1 e g v+12*SmallGap.ReducedLayers.low1_011_2 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_011_3 e g v*e^2+12*SmallGap.ReducedLayers.low1_011_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_5 e g v*e^4+3*SmallGap.ReducedLayers.low1_002_0 e g
    v+15*SmallGap.ReducedLayers.low1_002_1 e g v*e^1+30*SmallGap.ReducedLayers.low1_002_2 e g
    v*e^2+30*SmallGap.ReducedLayers.low1_002_3 e g v*e^3+15*SmallGap.ReducedLayers.low1_002_4 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_002_5 e g v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    12600 1) .v) (.rational 543060 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 6440 1)
    .v) (.rational 201936 1)) .v) (.rational 4076086 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16100 1) .v) (.rational 293272 1)) .v) (.rational 4965156 1)) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 106638 1) .v) (.rational 1576736 1)) .v)
    (.rational 19093942 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 319914 1) .v) (.rational
    3061212 1)) .v) (.rational 31843917 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    346864 1) .v) (.rational 1780380 1)) .v) (.rational 17856286 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 828996 1) .v) (.rational
    7927602 1)) .v) (.rational 62624490 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2901486
    1) .v) (.rational 19593041 1)) .v) (.rational 133453352 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3929842 1) .v) (.rational 17084943 1)) .v) (.rational 103342818 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2570890 1) .v) (.rational 6255003 1)) .v)
    (.rational 34952788 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 3983026 1) .v) (.rational 28503186 1)) .v) (.rational
    153034232 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 15932104 1) .v) (.rational 86564804
    1)) .v) (.rational 400412575 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 25750450 1)
    .v) (.rational 101366602 1)) .v) (.rational 401590033 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 21488986 1) .v) (.rational 58065750 1)) .v) (.rational 192642438 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9753548 1) .v) (.rational 17158532
    1)) .v) (.rational 44647461 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13144218 1) .v) (.rational 76768578 1))
    .v) (.rational 289169552 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 59148981 1) .v)
    (.rational 278333982 1)) .v) (.rational 905670643 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 110767396 1) .v) (.rational 410142282 1)) .v) (.rational 1132360372 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 111657308 1) .v) (.rational 318432066 1))
    .v) (.rational 721993117 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    65278168 1) .v) (.rational 141791568 1)) .v) (.rational 249001421 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 22066439 1) .v) (.rational 37048608 1)) .v) (.rational
    45665220 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 31361013 1) .v) (.rational 157877614 1)) .v)
    (.rational 431568477 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 156805065 1) .v)
    (.rational 666803350 1)) .v) (.rational 1588802705 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 333271195 1) .v) (.rational 1183032963 1)) .v) (.rational 2411062827 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 392254390 1) .v) (.rational 1152860000 1))
    .v) (.rational 1955623822 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    278779957 1) .v) (.rational 678426654 1)) .v) (.rational 922528571 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 122030779 1) .v) (.rational 249560760 1)) .v) (.rational
    260065306 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 31950191 1) .v)
    (.rational 56898385 1)) .v) (.rational 43925435 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    55495734 1) .v) (.rational 249137068 1)) .v) (.rational 513173744 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 305226537 1) .v) (.rational 1200941857 1)) .v) (.rational 2187764099
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 725034489 1) .v) (.rational 2485253057
    1)) .v) (.rational 3942397770 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    973456173 1) .v) (.rational 2898698026 1)) .v) (.rational 3928524576 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 811278928 1) .v) (.rational 2104404108 1)) .v)
    (.rational 2385029893 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 433266533
    1) .v) (.rational 990137629 1)) .v) (.rational 920701045 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 147360751 1) .v) (.rational 303316641 1)) .v) (.rational
    229998120 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 30500597 1) .v)
    (.rational 58390688 1)) .v) (.rational 36865964 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 73558319 1) .v) (.rational 300612446 1)) .v) (.rational 485088727 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 441349914 1) .v) (.rational 1626457258 1)) .v)
    (.rational 2362424341 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1157818911 1) .v)
    (.rational 3835184812 1)) .v) (.rational 4957392595 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1743387010 1) .v) (.rational 5186141468 1)) .v) (.rational 5892784706
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1662229636 1) .v) (.rational
    4453109453 1)) .v) (.rational 4396380535 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1043445538 1) .v) (.rational 2537490426 1)) .v) (.rational 2160012988 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 433847113 1) .v) (.rational 971229060 1))
    .v) (.rational 713832258 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    116858344 1) .v) (.rational 245602270 1)) .v) (.rational 158245888 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 19232525 1) .v) (.rational 38807765 1)) .v) (.rational
    22541643 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 72881158 1)
    .v) (.rational 274460694 1)) .v) (.rational 359990424 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 473727527 1) .v) (.rational 1644485754 1)) .v) (.rational 1977164055 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1359435580 1) .v) (.rational 4341531708 1)) .v)
    (.rational 4746736242 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2265892893 1) .v) (.rational 6655236719 1)) .v) (.rational 6565517110 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2427451580 1) .v) (.rational 6570661427 1)) .v)
    (.rational 5811332045 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1745839608 1) .v) (.rational 4377827634 1)) .v) (.rational 3460346218 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 854132020 1) .v) (.rational 2001749252 1)) .v)
    (.rational 1417610410 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 281455223
    1) .v) (.rational 624037493 1)) .v) (.rational 399879337 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 60314784 1) .v) (.rational 128288427 1)) .v) (.rational 75592672
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 7814385 1) .v) (.rational
    16142472 1)) .v) (.rational 8896024 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 53234215 1) .v) (.rational 186048928 1)) .v) (.rational 204899837
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 372639505 1) .v) (.rational 1221252864 1))
    .v) (.rational 1254041588 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1160602450 1)
    .v) (.rational 3561626693 1)) .v) (.rational 3391053412 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2119301135 1) .v) (.rational 6087678872 1)) .v) (.rational
    5346922335 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2516092003 1) .v)
    (.rational 6773187783 1)) .v) (.rational 5466733512 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2034774480 1) .v) (.rational 5149359258 1)) .v) (.rational 3813068445
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1140911607 1) .v) (.rational
    2728838372 1)) .v) (.rational 1857238861 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 442326543 1) .v) (.rational 1007283128 1)) .v) (.rational 633796391 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 115901118 1) .v) (.rational 253415121 1))
    .v) (.rational 148770625 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    19535549 1) .v) (.rational 41314716 1)) .v) (.rational 22847779 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1925645 1) .v) (.rational 3949123 1)) .v) (.rational
    2067647 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 27840686 1) .v) (.rational 90668758 1)) .v) (.rational 86149326 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 208805145 1) .v) (.rational 646369156 1)) .v) (.rational
    581245729 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 701208475 1) .v) (.rational
    2060581610 1)) .v) (.rational 1746739724 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1390977055 1) .v) (.rational 3878078810 1)) .v) (.rational 3087924384 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1810235725 1) .v) (.rational 4790242816 1))
    .v) (.rational 3573136303 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1622680554 1) .v) (.rational 4082041535 1)) .v) (.rational 2848845750 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1022815534 1) .v) (.rational 2453242581 1)) .v)
    (.rational 1603098596 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 454119288
    1) .v) (.rational 1042827264 1)) .v) (.rational 639998708 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 139803051 1) .v) (.rational 308829236 1)) .v) (.rational
    178874732 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 28751017 1) .v)
    (.rational 61339114 1)) .v) (.rational 33702005 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3676253 1) .v) (.rational 7579500 1)) .v) (.rational 3959852 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 253237 1) .v) (.rational 500741 1)) .v)
    (.rational 247504 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 9870283 1) .v) (.rational 30021572 1)) .v) (.rational
    25152117 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 78962264 1) .v) (.rational 230787202
    1)) .v) (.rational 185322972 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 284322529
    1) .v) (.rational 797531100 1)) .v) (.rational 612004374 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 608418083 1) .v) (.rational 1636542560 1)) .v) (.rational
    1196889964 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 860299956 1) .v)
    (.rational 2218522436 1)) .v) (.rational 1543035308 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 845147669 1) .v) (.rational 2090501532 1)) .v) (.rational 1380973130
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 590072658 1) .v) (.rational
    1401806048 1)) .v) (.rational 879396753 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 294137509 1) .v) (.rational 672455848 1)) .v) (.rational 401073108 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 103486448 1) .v) (.rational 228208111 1))
    .v) (.rational 129690749 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    24926191 1) .v) (.rational 53112190 1)) .v) (.rational 28827938 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3870411 1) .v) (.rational 7964646 1)) .v) (.rational
    4131823 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 343444 1) .v)
    (.rational 678580 1)) .v) (.rational 335136 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12875 1) .v) (.rational 23999 1)) .v) (.rational 11124 1)) (.pow .g 12))))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2126736 1) .v) (.rational 6048324 1)) .v) (.rational 4545142 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 18077256 1) .v) (.rational 49844130 1)) .v) (.rational 36278554 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 69457738 1) .v) (.rational 185446040 1)) .v)
    (.rational 130430352 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 159387915
    1) .v) (.rational 411648778 1)) .v) (.rational 279172509 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 243077603 1) .v) (.rational 606867374 1)) .v) (.rational
    396103774 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 259307906 1) .v)
    (.rational 625640286 1)) .v) (.rational 392461799 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 198204061 1) .v) (.rational 462234394 1)) .v) (.rational 278456833 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 109248656 1) .v) (.rational
    246412243 1)) .v) (.rational 142548007 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 43039335 1) .v) (.rational 93959283 1)) .v) (.rational 52226069 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11799438 1) .v) (.rational 24942794 1)) .v)
    (.rational 13330559 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2132325 1)
    .v) (.rational 4360712 1)) .v) (.rational 2240527 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 227405 1) .v) (.rational 448169 1)) .v) (.rational 220764 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 10778 1) .v) (.rational 20273 1)) .v)
    (.rational 9495 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 210474 1) .v) (.rational 559878 1)) .v)
    (.rational 382392 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1894266 1) .v) (.rational
    4921902 1)) .v) (.rational 3283990 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    7734001 1) .v) (.rational 19604506 1)) .v) (.rational 12755149 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 18935312 1) .v) (.rational 46772604 1)) .v) (.rational
    29621098 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 30953172 1) .v)
    (.rational 74433682 1)) .v) (.rational 45806611 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 35582680 1) .v) (.rational 83237750 1)) .v) (.rational 49704186 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 29492143 1) .v) (.rational 67079143 1)) .v)
    (.rational 38822319 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 17757666 1)
    .v) (.rational 39260360 1)) .v) (.rational 22006508 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7710197 1) .v) (.rational 16568059 1)) .v) (.rational 8991213 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2355122 1) .v) (.rational 4917752 1)) .v)
    (.rational 2583396 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 480696 1)
    .v) (.rational 974647 1)) .v) (.rational 495404 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 58922 1) .v) (.rational 115776 1)) .v) (.rational 56854 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3285 1) .v) (.rational 6229 1)) .v) (.rational
    2944 1)) (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0235

namespace FullLow0236
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  40*SmallGap.PolarCoefficientsLow4.c050 e f g v*((e+f)*(e+f+g))^5+
    7*SmallGap.PolarCoefficientsLow4.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    32*SmallGap.PolarCoefficientsLow3.c140 e f g v*((e+f)*(e+f+g))^4+
    28*SmallGap.PolarCoefficientsLow4.c140 e f g v*e*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow4.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow3.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow4.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    25*SmallGap.PolarCoefficientsLow2.c230 e f g v*((e+f)*(e+f+g))^3+
    18*SmallGap.PolarCoefficientsLow3.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow4.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow3.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    5*SmallGap.PolarCoefficientsLow2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsLow3.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    19*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    10*SmallGap.PolarCoefficientsLow2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow3.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    14*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_1 e g v+20*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^1+40*SmallGap.ReducedLayers.low0_010_3 e g v*e^2+40*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^3+20*SmallGap.ReducedLayers.low0_010_5 e g v*e^4+4*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^5+6*SmallGap.ReducedLayers.low0_001_0 e g v+36*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^1+90*SmallGap.ReducedLayers.low0_001_2 e g v*e^2+120*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^3+90*SmallGap.ReducedLayers.low0_001_4 e g v*e^4+36*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_3 e g v+3*SmallGap.ReducedLayers.low1_020_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_5 e g v*e^2+1*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_2 e g v+12*SmallGap.ReducedLayers.low1_011_3 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_011_4 e g v*e^2+12*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_6 e g v*e^4+3*SmallGap.ReducedLayers.low1_002_1 e g
    v+15*SmallGap.ReducedLayers.low1_002_2 e g v*e^1+30*SmallGap.ReducedLayers.low1_002_3 e g
    v*e^2+30*SmallGap.ReducedLayers.low1_002_4 e g v*e^3+15*SmallGap.ReducedLayers.low1_002_5 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_002_6 e g v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10920 1)
    .v) (.rational 543900 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 4480 1) .v)
    (.rational 166152 1)) .v) (.rational 3929240 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    11200 1) .v) (.rational 236264 1)) .v) (.rational 4686360 1)) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 72478 1) .v) (.rational 1234408 1)) .v) (.rational
    17628100 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 217434 1) .v) (.rational 2324644 1))
    .v) (.rational 28680925 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 235844 1) .v)
    (.rational 1255716 1)) .v) (.rational 15492400 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 549584 1) .v) (.rational 5926420 1)) .v)
    (.rational 55071837 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1923544 1) .v) (.rational
    14195910 1)) .v) (.rational 114279665 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2606408 1) .v) (.rational 11683818 1)) .v) (.rational 85107136 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1707160 1) .v) (.rational 3761066 1)) .v) (.rational
    26928409 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 2563534 1) .v) (.rational 20417218 1)) .v) (.rational 127474278 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10254136 1) .v) (.rational 60372802 1)) .v)
    (.rational 324860641 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16580734 1) .v)
    (.rational 67882905 1)) .v) (.rational 314023845 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 13852726 1) .v) (.rational 36455831 1)) .v) (.rational 142240569 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6301284 1) .v) (.rational 9692849 1)) .v)
    (.rational 29648897 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 8151852 1) .v) (.rational 52671264 1)) .v)
    (.rational 226735894 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 36683334 1) .v)
    (.rational 187121874 1)) .v) (.rational 693270123 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 68729416 1) .v) (.rational 268515298 1)) .v) (.rational 840000525 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 69364064 1) .v) (.rational 201505973 1)) .v)
    (.rational 512809240 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 40639736
    1) .v) (.rational 86150455 1)) .v) (.rational 165803883 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 13783626 1) .v) (.rational 21629333 1)) .v) (.rational 27422407
    1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 18537801 1) .v) (.rational 103009340 1)) .v) (.rational
    315878372 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 92689005 1) .v) (.rational
    428767436 1)) .v) (.rational 1139616968 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    197108483 1) .v) (.rational 748085644 1)) .v) (.rational 1687924145 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 232299902 1) .v) (.rational 715871900 1)) .v)
    (.rational 1329473688 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 165483677
    1) .v) (.rational 413959521 1)) .v) (.rational 605682196 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 72695195 1) .v) (.rational 150364951 1)) .v) (.rational 164461232
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 19125715 1) .v) (.rational
    34205435 1)) .v) (.rational 27017927 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    30783530 1) .v) (.rational 152292048 1)) .v) (.rational 346253143 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 169309415 1) .v) (.rational 726580876 1)) .v) (.rational 1452821947 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 402439427 1) .v) (.rational 1487843608 1))
    .v) (.rational 2572897214 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    541156809 1) .v) (.rational 1718439210 1)) .v) (.rational 2517774129 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 452201892 1) .v) (.rational 1238324348 1)) .v)
    (.rational 1503029088 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 242474085
    1) .v) (.rational 581007869 1)) .v) (.rational 573862269 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 82926783 1) .v) (.rational 178688375 1)) .v) (.rational 143663583
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 17283891 1) .v) (.rational
    34780857 1)) .v) (.rational 23510761 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 37467069 1) .v) (.rational 168283252 1)) .v) (.rational 296034301 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 224802414 1) .v) (.rational 903748048 1)) .v) (.rational
    1424439226 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 590189305 1) .v) (.rational
    2116621199 1)) .v) (.rational 2953711412 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 890257730 1) .v) (.rational 2847097359 1)) .v) (.rational 3474057859 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 851414881 1) .v) (.rational 2438260458 1))
    .v) (.rational 2573338653 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    536939698 1) .v) (.rational 1391321536 1)) .v) (.rational 1263599193 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 224685117 1) .v) (.rational 536014978 1)) .v)
    (.rational 421574871 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 61022320
    1) .v) (.rational 137142112 1)) .v) (.rational 95396200 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 10142252 1) .v) (.rational 21998221 1)) .v) (.rational 13950827
    1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 33070306 1) .v)
    (.rational 136312792 1)) .v) (.rational 193150478 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 214956989 1) .v) (.rational 812196968 1)) .v) (.rational 1051265730 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 617392508 1) .v) (.rational 2134489548 1)) .v)
    (.rational 2503420271 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1031131915 1) .v) (.rational 3262742687 1)) .v) (.rational 3441587711 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1108457838 1) .v) (.rational 3220517731 1)) .v)
    (.rational 3038794503 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 801361227
    1) .v) (.rational 2152843532 1)) .v) (.rational 1815269541 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 394914848 1) .v) (.rational 991902924 1)) .v) (.rational
    751625952 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 131385889 1) .v)
    (.rational 312973298 1)) .v) (.rational 215911835 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 28493424 1) .v) (.rational 65347716 1)) .v) (.rational 41750454 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3742444 1) .v) (.rational 8358167
    1)) .v) (.rational 5014213 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 20601965 1) .v) (.rational 78400580 1)) .v) (.rational 92652714 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 144213755 1) .v) (.rational 512373056 1)) .v)
    (.rational 563109171 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 449593769 1) .v)
    (.rational 1489454970 1)) .v) (.rational 1513936598 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 822783799 1) .v) (.rational 2542094432 1)) .v) (.rational 2378420865
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 980509374 1) .v) (.rational
    2831131338 1)) .v) (.rational 2430849409 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 797456540 1) .v) (.rational 2161404196 1)) .v) (.rational 1702800443 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 450725794 1) .v) (.rational 1154627090 1))
    .v) (.rational 837726909 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    176623735 1) .v) (.rational 431405624 1)) .v) (.rational 290450253 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 46920033 1) .v) (.rational 110271345 1)) .v) (.rational
    69559685 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 8042795 1) .v)
    (.rational 18307721 1)) .v) (.rational 10903479 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 807979 1) .v) (.rational 1780085 1)) .v) (.rational 1000985 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8590318 1)
    .v) (.rational 30286652 1)) .v) (.rational 30712642 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 64427385 1) .v) (.rational 215127062 1)) .v) (.rational 206048162 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 216584815 1) .v) (.rational 684157274 1)) .v)
    (.rational 616493667 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 430652625
    1) .v) (.rational 1286716408 1)) .v) (.rational 1087222801 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 562717565 1) .v) (.rational 1591948526 1)) .v) (.rational
    1258638001 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 507494812 1) .v)
    (.rational 1362816388 1)) .v) (.rational 1007838934 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 322652018 1) .v) (.rational 825719994 1)) .v) (.rational 572249515 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 144933276 1) .v) (.rational
    355274006 1)) .v) (.rational 231670210 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 45305347 1) .v) (.rational 106924562 1)) .v) (.rational 65943555 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9500599 1) .v) (.rational 21657763 1)) .v)
    (.rational 12682263 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1244449 1)
    .v) (.rational 2734223 1)) .v) (.rational 1518779 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 88159 1) .v) (.rational 184041 1)) .v) (.rational 95882 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2152545 1) .v) (.rational 7046106 1)) .v) (.rational 6269823 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 17220360 1) .v) (.rational 53996790 1)) .v) (.rational 45974493 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 62075149 1) .v) (.rational 186243022 1)) .v)
    (.rational 151278064 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 133169743
    1) .v) (.rational 382090306 1)) .v) (.rational 295319280 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 189112658 1) .v) (.rational 519002048 1)) .v) (.rational
    380998113 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 186995669 1) .v)
    (.rational 491404430 1)) .v) (.rational 342355958 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 131772698 1) .v) (.rational 332230993 1)) .v) (.rational 219776249 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 66522499 1) .v) (.rational
    161323967 1)) .v) (.rational 101505523 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23803139 1) .v) (.rational 55659958 1)) .v) (.rational 33388572 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5861927 1) .v) (.rational 13229566 1)) .v)
    (.rational 7577711 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 936965 1)
    .v) (.rational 2034891 1)) .v) (.rational 1111147 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 86362 1) .v) (.rational 178461 1)) .v) (.rational 92099 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 3406 1) .v) (.rational 6502 1)) .v)
    (.rational 3096 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 245322 1) .v) (.rational 746496 1)) .v) (.rational
    592974 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2085237 1) .v) (.rational 6134742 1))
    .v) (.rational 4712805 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8021750 1) .v)
    (.rational 22789118 1)) .v) (.rational 16890599 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 18458385 1) .v) (.rational 50592296 1)) .v) (.rational 36098604 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 28281901 1) .v) (.rational 74754348 1)) .v)
    (.rational 51257686 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 30384562 1)
    .v) (.rational 77453474 1)) .v) (.rational 50975765 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 23460575 1) .v) (.rational 57705608 1)) .v) (.rational 36436598 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 13112572 1) .v) (.rational 31147099
    1)) .v) (.rational 18872518 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5263665 1) .v) (.rational 12082461 1)) .v) (.rational 7029209 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1479621 1) .v) (.rational 3280898 1)) .v) (.rational
    1832856 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 276435 1) .v)
    (.rational 590428 1)) .v) (.rational 316161 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 30823 1) .v) (.rational 62931 1)) .v) (.rational 32108 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1552 1) .v) (.rational 2981 1)) .v) (.rational 1429
    1)) (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0236

namespace FullLow0237
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  32*SmallGap.PolarCoefficientsLow4.c140 e f g v*((e+f)*(e+f+g))^4+
    6*SmallGap.PolarCoefficientsLow4.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    25*SmallGap.PolarCoefficientsLow3.c230 e f g v*((e+f)*(e+f+g))^3+
    18*SmallGap.PolarCoefficientsLow4.c230 e f g v*e*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow4.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    5*SmallGap.PolarCoefficientsLow3.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsLow4.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    19*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    10*SmallGap.PolarCoefficientsLow3.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow4.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    14*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow2.c410 e f g v*e*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_2 e g v+20*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^1+40*SmallGap.ReducedLayers.low0_010_4 e g v*e^2+40*SmallGap.ReducedLayers.low0_010_5 e g
    v*e^3+20*SmallGap.ReducedLayers.low0_010_6 e g v*e^4+6*SmallGap.ReducedLayers.low0_001_1 e g
    v+36*SmallGap.ReducedLayers.low0_001_2 e g v*e^1+90*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^2+120*SmallGap.ReducedLayers.low0_001_4 e g v*e^3+90*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_4 e g v+3*SmallGap.ReducedLayers.low1_020_5 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_6 e g v*e^2+1*SmallGap.ReducedLayers.low1_020_7 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_3 e g v+12*SmallGap.ReducedLayers.low1_011_4 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_011_5 e g v*e^2+12*SmallGap.ReducedLayers.low1_011_6 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_7 e g v*e^4+3*SmallGap.ReducedLayers.low1_002_2 e g
    v+15*SmallGap.ReducedLayers.low1_002_3 e g v*e^1+30*SmallGap.ReducedLayers.low1_002_4 e g
    v*e^2+30*SmallGap.ReducedLayers.low1_002_5 e g v*e^3+15*SmallGap.ReducedLayers.low1_002_6 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6480 1) .v) (.rational
    389400 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 2000 1) .v) (.rational 94080 1))
    .v) (.rational 2712256 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5000 1) .v) (.rational
    130960 1)) .v) (.rational 3163392 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 31762 1) .v) (.rational 667760 1)) .v) (.rational 11664276 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 95286 1) .v) (.rational 1217716 1)) .v) (.rational 18481063
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 103396 1) .v) (.rational 603276 1)) .v)
    (.rational 9580128 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 235980 1) .v) (.rational 3070494 1)) .v) (.rational 34705576 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 825930 1) .v) (.rational 7110743 1)) .v) (.rational
    69982974 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1119670 1) .v) (.rational
    5468241 1)) .v) (.rational 49912464 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 734350 1) .v) (.rational 1460573 1)) .v) (.rational 14585766 1)) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1072452 1)
    .v) (.rational 10159680 1)) .v) (.rational 75988735 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4289808 1) .v) (.rational 29194028 1)) .v) (.rational 188266573 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6940326 1) .v) (.rational 31347617 1)) .v) (.rational
    174811474 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5806650 1) .v)
    (.rational 15523431 1)) .v) (.rational 74130247 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2648374 1) .v) (.rational 3512955 1)) .v) (.rational 13434433 1)) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 3292840 1) .v) (.rational 25118174 1)) .v) (.rational 126807757 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 14817780 1) .v) (.rational 87362102 1)) .v) (.rational 378083797
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 27780172 1) .v) (.rational 121846076 1))
    .v) (.rational 443248033 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    28080962 1) .v) (.rational 88034871 1)) .v) (.rational 258360709 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16499374 1) .v) (.rational 35877511 1)) .v) (.rational
    77766778 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5620850 1) .v)
    (.rational 8570519 1)) .v) (.rational 11337854 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7131880 1)
    .v) (.rational 46542698 1)) .v) (.rational 163792218 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 35659400 1) .v) (.rational 190878264 1)) .v) (.rational 578892480 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 75890516 1) .v) (.rational 327430280 1)) .v)
    (.rational 836981710 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 89605664
    1) .v) (.rational 307674662 1)) .v) (.rational 640977152 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 64041062 1) .v) (.rational 174929687 1)) .v) (.rational 283106157
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 28272842 1) .v) (.rational
    62864767 1)) .v) (.rational 74789426 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7489514 1) .v) (.rational 14320139 1)) .v) (.rational 12220637 1)) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 11051696 1) .v) (.rational 63782224 1)) .v) (.rational 163411646
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 60784328 1) .v) (.rational 301153265 1)) .v)
    (.rational 674932366 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 144618676 1) .v)
    (.rational 610383845 1)) .v) (.rational 1175946726 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 194901582 1) .v) (.rational 698756792 1)) .v) (.rational 1133240340 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 163494412 1) .v) (.rational
    500780408 1)) .v) (.rational 669171006 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 88180022 1) .v) (.rational 235062790 1)) .v) (.rational 255465232 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 30400994 1) .v) (.rational 72887372 1)) .v)
    (.rational 65130786 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 6401148 1)
    .v) (.rational 14401357 1)) .v) (.rational 11050394 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 12181898 1) .v) (.rational 63224976 1)) .v) (.rational 123593203 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 73091388 1) .v) (.rational 336963762 1)) .v)
    (.rational 587743749 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 192111058 1) .v)
    (.rational 784051661 1)) .v) (.rational 1205730167 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 290550900 1) .v) (.rational 1050089519 1)) .v) (.rational 1406951717
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 279134180 1) .v) (.rational
    898691090 1)) .v) (.rational 1039864230 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 177236588 1) .v) (.rational 515112472 1)) .v) (.rational 514318016 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 74867148 1) .v) (.rational 200548212 1)) .v)
    (.rational 174950357 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 20581898
    1) .v) (.rational 52131132 1)) .v) (.rational 40763178 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3470900 1) .v) (.rational 8514929 1)) .v) (.rational 6138713 1)) (.pow
    .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9315788 1) .v) (.rational
    43850450 1)) .v) (.rational 68324273 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 60552622
    1) .v) (.rational 259734104 1)) .v) (.rational 368560185 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 174143700 1) .v) (.rational 679567218 1)) .v) (.rational 871278562 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 291711508 1) .v) (.rational 1036644864
    1)) .v) (.rational 1192812306 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    315182866 1) .v) (.rational 1024694044 1)) .v) (.rational 1054272042 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 229604850 1) .v) (.rational 689096102 1)) .v)
    (.rational 635079070 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 114355388
    1) .v) (.rational 321067510 1)) .v) (.rational 267445557 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 38577430 1) .v) (.rational 102949765 1)) .v) (.rational 78684469
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8511232 1) .v) (.rational
    21913265 1)) .v) (.rational 15608462 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1139878 1) .v) (.rational 2855321 1)) .v) (.rational 1909986 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4691856 1) .v) (.rational
    20129182 1)) .v) (.rational 25942904 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 32842992
    1) .v) (.rational 130915680 1)) .v) (.rational 156548811 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 102532910 1) .v) (.rational 379333430 1)) .v) (.rational 418620799 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 188238564 1) .v) (.rational 646836704 1))
    .v) (.rational 656029022 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    225536212 1) .v) (.rational 722060044 1)) .v) (.rational 671743572 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 184918866 1) .v) (.rational 554795040 1)) .v) (.rational
    474163401 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 105700266 1) .v)
    (.rational 299676918 1)) .v) (.rational 236606195 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 42041256 1) .v) (.rational 113748822 1)) .v) (.rational 83687198 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 11379944 1) .v) (.rational 29648457
    1)) .v) (.rational 20503649 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1994826 1) .v) (.rational 5026561 1)) .v) (.rational 3280319 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 205162 1) .v) (.rational 497153 1)) .v) (.rational 304163 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1398276 1) .v) (.rational 5488242 1)) .v) (.rational 6027720 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10487070 1) .v) (.rational 38822538 1)) .v) (.rational 40194714 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 35304526 1) .v) (.rational 123151972 1)) .v)
    (.rational 119733931 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 70425524
    1) .v) (.rational 231544606 1)) .v) (.rational 210772065 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 92525806 1) .v) (.rational 287233640 1)) .v) (.rational 244446244
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 84129738 1) .v) (.rational
    247460145 1)) .v) (.rational 197015866 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 54099592 1) .v) (.rational 151538699 1)) .v) (.rational 113202375 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 24670770 1) .v) (.rational 66196350 1)) .v)
    (.rational 46617007 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 7861602 1)
    .v) (.rational 20310068 1)) .v) (.rational 13546568 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1687692 1) .v) (.rational 4205331 1)) .v) (.rational 2661124 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 227042 1) .v) (.rational 542419 1)) .v)
    (.rational 323958 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 16486 1) .v)
    (.rational 36918 1)) .v) (.rational 20432 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 186732 1) .v) (.rational
    672888 1)) .v) (.rational 644592 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1493856 1)
    .v) (.rational 5137782 1)) .v) (.rational 4700940 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5392578 1) .v) (.rational 17683808 1)) .v) (.rational 15408174 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11605566 1) .v) (.rational 36279906 1)) .v)
    (.rational 30030333 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 16569830 1)
    .v) (.rational 49415868 1)) .v) (.rational 38800668 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16517070 1) .v) (.rational 47077756 1)) .v) (.rational 35056901 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 11771732 1) .v) (.rational 32154483
    1)) .v) (.rational 22734313 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6033668 1) .v) (.rational 15843559 1)) .v) (.rational 10658842 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2202152 1) .v) (.rational 5572046 1)) .v) (.rational
    3574380 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 556214 1) .v)
    (.rational 1355588 1)) .v) (.rational 829281 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 91794 1) .v) (.rational 214063 1)) .v) (.rational 124291 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8810 1) .v) (.rational 19281 1)) .v) (.rational
    10471 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 366 1) .v) (.rational
    716 1)) .v) (.rational 350 1)) (.pow .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0237

namespace FullLow0238
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  25*SmallGap.PolarCoefficientsLow4.c230 e f g v*((e+f)*(e+f+g))^3+
    5*SmallGap.PolarCoefficientsLow4.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    19*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    10*SmallGap.PolarCoefficientsLow4.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow3.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    14*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow3.c410 e f g v*e*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_3 e g v+20*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^1+40*SmallGap.ReducedLayers.low0_010_5 e g v*e^2+40*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^3+6*SmallGap.ReducedLayers.low0_001_2 e g v+36*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^1+90*SmallGap.ReducedLayers.low0_001_4 e g v*e^2+120*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_5 e g v+3*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_7 e g v*e^2+1*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_4 e g v+12*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_011_6 e g v*e^2+12*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_002_3 e g v+15*SmallGap.ReducedLayers.low1_002_4 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_002_5 e g v*e^2+30*SmallGap.ReducedLayers.low1_002_6 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2520 1) .v) (.rational 195300 1))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 520 1) .v) (.rational 35088 1)) .v)
    (.rational 1313858 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1300 1) .v) (.rational
    47816 1)) .v) (.rational 1496646 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 8142 1) .v) (.rational 239080 1)) .v) (.rational 5421656 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 24426 1) .v) (.rational 421728 1)) .v) (.rational 8349987 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 26516 1) .v) (.rational 188964 1)) .v) (.rational
    4137116 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 59532 1) .v) (.rational 1057320 1)) .v) (.rational 15364602 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 208362 1) .v) (.rational 2363590 1)) .v) (.rational 30045667 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 282614 1) .v) (.rational 1681146 1)) .v)
    (.rational 20435997 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 185630 1)
    .v) (.rational 336450 1)) .v) (.rational 5432429 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 264578 1) .v) (.rational
    3372640 1)) .v) (.rational 31786423 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1058312
    1) .v) (.rational 9411528 1)) .v) (.rational 76444686 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1713354 1) .v) (.rational 9613896 1)) .v) (.rational 68011490 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1435970 1) .v) (.rational 4312612 1)) .v)
    (.rational 26803619 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 657076 1)
    .v) (.rational 751848 1)) .v) (.rational 4044041 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 786192 1) .v)
    (.rational 8001996 1)) .v) (.rational 49592003 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3537864 1) .v) (.rational 27256308 1)) .v) (.rational 144110359 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6638392 1) .v) (.rational 36951780 1)) .v) (.rational
    163494328 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6724340 1) .v)
    (.rational 25680938 1)) .v) (.rational 91107621 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3965948 1) .v) (.rational 9944466 1)) .v) (.rational 25613056 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1359036 1) .v) (.rational 2247834 1)) .v)
    (.rational 3307240 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1620794 1) .v) (.rational 13983136
    1)) .v) (.rational 58886984 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 8103970 1) .v)
    (.rational 56535744 1)) .v) (.rational 203973795 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17265992 1) .v) (.rational 95466836 1)) .v) (.rational 288491118 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 20440148 1) .v) (.rational 88292416 1)) .v)
    (.rational 216019854 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 14676352
    1) .v) (.rational 49558344 1)) .v) (.rational 93719856 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6525212 1) .v) (.rational 17732684 1)) .v) (.rational 24775652 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1745522 1) .v) (.rational 4075692
    1)) .v) (.rational 4224636 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2328240 1) .v)
    (.rational 17506180 1)) .v) (.rational 52545038 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12805320 1) .v) (.rational 81820322 1)) .v) (.rational 213797155 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 30510732 1) .v) (.rational 164318142 1)) .v) (.rational
    367432245 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 41258394 1) .v)
    (.rational 186891224 1)) .v) (.rational 350764700 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 34812520 1) .v) (.rational 133763548 1)) .v) (.rational 207218528 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 18941888 1) .v) (.rational 63194628
    1)) .v) (.rational 80571272 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6610184 1) .v) (.rational 19894516 1)) .v) (.rational 21389812 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1413726 1) .v) (.rational 4013786 1)) .v) (.rational
    3818473 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2281770 1) .v)
    (.rational 15113492 1)) .v) (.rational 34033077 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13690620 1) .v) (.rational 79915408 1)) .v) (.rational 160040004 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 36050302 1) .v) (.rational 184850812 1)) .v) (.rational
    325485949 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 54754160 1) .v)
    (.rational 246970644 1)) .v) (.rational 378516666 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 52984248 1) .v) (.rational 211968604 1)) .v) (.rational 281354502 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 34008852 1) .v) (.rational
    122686344 1)) .v) (.rational 141768082 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14582784 1) .v) (.rational 48585644 1)) .v) (.rational 49781589 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4088022 1) .v) (.rational 12916848 1)) .v)
    (.rational 12047215 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 706096 1)
    .v) (.rational 2160224 1)) .v) (.rational 1870933 1)) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1449756 1) .v) (.rational 8492008 1)) .v) (.rational
    15031331 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 9423414 1) .v) (.rational 49969760
    1)) .v) (.rational 80369433 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 27160608 1)
    .v) (.rational 130187168 1)) .v) (.rational 188845613 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 45725790 1) .v) (.rational 198469784 1)) .v) (.rational 258225993 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 49826328 1) .v) (.rational
    197050416 1)) .v) (.rational 229649218 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 36761382 1) .v) (.rational 133936500 1)) .v) (.rational 140519266 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 18634840 1) .v) (.rational 63497500 1)) .v)
    (.rational 60674859 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 6434246 1)
    .v) (.rational 20836878 1)) .v) (.rational 18403586 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1461728 1) .v) (.rational 4553602 1)) .v) (.rational 3756710 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 202644 1) .v) (.rational 608262 1)) .v)
    (.rational 467968 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 536436 1) .v) (.rational 2786076 1)) .v) (.rational 4029912 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3755052 1) .v) (.rational 18016776 1)) .v) (.rational 24136596
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11751546 1) .v) (.rational 52031368 1))
    .v) (.rational 64227723 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    21693600 1) .v) (.rational 88738520 1)) .v) (.rational 100578948 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 26234388 1) .v) (.rational 99539032 1)) .v) (.rational
    103524927 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 21809346 1) .v)
    (.rational 77291892 1)) .v) (.rational 73997415 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12707882 1) .v) (.rational 42456260 1)) .v) (.rational 37670845 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5184356 1) .v) (.rational 16484296 1)) .v)
    (.rational 13667314 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1449368 1)
    .v) (.rational 4414300 1)) .v) (.rational 3438685 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 264242 1) .v) (.rational 770032 1)) .v) (.rational 562279 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 28374 1) .v) (.rational 77968 1)) .v)
    (.rational 52550 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 87480 1) .v) (.rational 404352 1)) .v) (.rational 493020 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 656100 1) .v) (.rational 2845908 1)) .v) (.rational 3265596
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2214144 1) .v) (.rational 9002912 1))
    .v) (.rational 9684877 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4441086
    1) .v) (.rational 16934740 1)) .v) (.rational 17033235 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5888652 1) .v) (.rational 21106404 1)) .v) (.rational 19832465 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5427510 1) .v) (.rational 18363074
    1)) .v) (.rational 16143356 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3555696 1) .v) (.rational 11420622 1)) .v) (.rational 9427518 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1661076 1) .v) (.rational 5095004 1)) .v) (.rational
    3967031 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 545304 1) .v)
    (.rational 1603700 1)) .v) (.rational 1181235 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 121164 1) .v) (.rational 341342 1)) .v) (.rational 237426 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 16878 1) .v) (.rational 45086 1)) .v) (.rational
    29319 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1248 1) .v) (.rational
    3068 1)) .v) (.rational 1820 1)) (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0238

namespace FullLow0239
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  19*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow4.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    14*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow4.c410 e f g v*e*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_4 e g v+20*SmallGap.ReducedLayers.low0_010_5 e g
    v*e^1+40*SmallGap.ReducedLayers.low0_010_6 e g v*e^2+6*SmallGap.ReducedLayers.low0_001_3 e g
    v+36*SmallGap.ReducedLayers.low0_001_4 e g v*e^1+90*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_6 e g v+3*SmallGap.ReducedLayers.low1_020_7 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_8 e g v*e^2+3*SmallGap.ReducedLayers.low1_011_5 e g
    v+12*SmallGap.ReducedLayers.low1_011_6 e g v*e^1+18*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^2+3*SmallGap.ReducedLayers.low1_002_4 e g v+15*SmallGap.ReducedLayers.low1_002_5 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_002_6 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 580 1) .v) (.rational 65350 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 60 1) .v) (.rational 7784 1)) .v) (.rational 425373 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 150 1) .v) (.rational 10388 1)) .v) (.rational 472646
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 930 1) .v) (.rational
    51192 1)) .v) (.rational 1685929 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2790 1) .v)
    (.rational 87324 1)) .v) (.rational 2519115 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3030 1) .v) (.rational 34864 1)) .v) (.rational 1187803 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6720 1) .v) (.rational
    218864 1)) .v) (.rational 4551422 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 23520 1)
    .v) (.rational 472136 1)) .v) (.rational 8613960 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31920 1) .v) (.rational 307820 1)) .v) (.rational 5564979 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21000 1) .v) (.rational 37000 1)) .v) (.rational
    1321958 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 29310 1) .v) (.rational 676264 1)) .v) (.rational 8887372 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 117240 1) .v) (.rational 1834384 1)) .v) (.rational
    20723802 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 189960 1) .v) (.rational
    1781184 1)) .v) (.rational 17647409 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 159540 1) .v) (.rational 712752 1)) .v) (.rational 6441733 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 73290 1) .v) (.rational 77648 1)) .v) (.rational
    772863 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 84480 1) .v) (.rational 1542092 1)) .v) (.rational 12907671
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 380160 1) .v) (.rational 5153020 1)) .v)
    (.rational 36566106 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 714120 1) .v)
    (.rational 6809212 1)) .v) (.rational 40250694 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 725340 1) .v) (.rational 4570560 1)) .v) (.rational 21622956 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 429900 1) .v) (.rational 1691008 1)) .v)
    (.rational 5820696 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 148440 1)
    .v) (.rational 364396 1)) .v) (.rational 726980 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 165600 1)
    .v) (.rational 2523868 1)) .v) (.rational 13924973 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 828000 1) .v) (.rational 10072580 1)) .v) (.rational 47323509 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1766850 1) .v) (.rational 16788220 1)) .v) (.rational
    65764376 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2099400 1) .v)
    (.rational 15358228 1)) .v) (.rational 48691622 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1517160 1) .v) (.rational 8580716 1)) .v) (.rational 21270244 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 681180 1) .v) (.rational 3091644 1)) .v)
    (.rational 5892708 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 184710 1)
    .v) (.rational 724876 1)) .v) (.rational 1108527 1)) (.pow .g 6)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 218520 1) .v) (.rational 2826180 1)) .v) (.rational 10826772 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1201860 1) .v) (.rational 13077000 1)) .v) (.rational 43439988
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2869980 1) .v) (.rational 26063620 1))
    .v) (.rational 73936272 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3900960
    1) .v) (.rational 29562848 1)) .v) (.rational 70563660 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3320640 1) .v) (.rational 21266852 1)) .v) (.rational 42401570 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1830780 1) .v) (.rational 10200640
    1)) .v) (.rational 17183628 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    650580 1) .v) (.rational 3290304 1)) .v) (.rational 4848889 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 142440 1) .v) (.rational 682568 1)) .v) (.rational 916142 1))
    (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 185220 1) .v) (.rational 2029248
    1)) .v) (.rational 5698932 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1111320 1) .v)
    (.rational 10635012 1)) .v) (.rational 26507040 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2935440 1) .v) (.rational 24468344 1)) .v) (.rational 53585966 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4490100 1) .v) (.rational 32701420 1)) .v)
    (.rational 62493600 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4397310 1)
    .v) (.rational 28298872 1)) .v) (.rational 47213576 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2873160 1) .v) (.rational 16669828 1)) .v) (.rational 24567522 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1262520 1) .v) (.rational 6777352
    1)) .v) (.rational 9013865 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    365400 1) .v) (.rational 1859652 1)) .v) (.rational 2278407 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 65670 1) .v) (.rational 320908 1)) .v) (.rational 364363 1))
    (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 90720 1) .v) (.rational
    835704 1)) .v) (.rational 1804788 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 589680 1)
    .v) (.rational 4876200 1)) .v) (.rational 9559296 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1706760 1) .v) (.rational 12648276 1)) .v) (.rational 22353720 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2900700 1) .v) (.rational 19312080 1)) .v)
    (.rational 30648612 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3211380 1)
    .v) (.rational 19354920 1)) .v) (.rational 27617493 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2425680 1) .v) (.rational 13401276 1)) .v) (.rational 17325354 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1270200 1) .v) (.rational 6530200
    1)) .v) (.rational 7741902 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    457800 1) .v) (.rational 2218080 1)) .v) (.rational 2436792 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 109860 1) .v) (.rational 503548 1)) .v) (.rational 513327 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 16290 1) .v) (.rational 69744 1))
    .v) (.rational 65090 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 19440 1) .v) (.rational 149472 1)) .v) (.rational 258120 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 136080 1) .v) (.rational 958824 1)) .v) (.rational 1532628 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 428220 1) .v) (.rational 2758200 1)) .v)
    (.rational 4059348 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 800280 1)
    .v) (.rational 4713444 1)) .v) (.rational 6366732 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 987840 1) .v) (.rational 5338356 1)) .v) (.rational 6618869 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 846540 1) .v) (.rational 4222872 1)) .v)
    (.rational 4824327 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 514530 1)
    .v) (.rational 2384940 1)) .v) (.rational 2525692 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 222120 1) .v) (.rational 960048 1)) .v) (.rational 946802 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 66870 1) .v) (.rational 268332 1)) .v)
    (.rational 246001 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 13410 1) .v)
    (.rational 49092 1)) .v) (.rational 41301 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1620 1) .v) (.rational 5220 1)) .v) (.rational 3910 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0239

namespace FullLow02310
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  14*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_5 e g v+20*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_001_4 e g v+36*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_7 e g v+3*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_6 e g v+12*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_002_5 e g v+15*SmallGap.ReducedLayers.low1_002_6 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 60 1) .v) (.rational 13130 1)) .e) (.add (.mul (.add (.mul
    (.rational 780 1) .v) (.rational 82836 1)) .f) (.mul (.add (.mul (.rational 1020 1) .v)
    (.rational 89664 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 4980 1) .v)
    (.rational 315618 1)) .f) (.mul (.add (.mul (.rational 8220 1) .v) (.rational 456604 1)) .g))
    .f) (.mul (.add (.mul (.rational 2880 1) .v) (.rational 203918 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20700 1) .v) (.rational 811762 1)) .f)
    (.mul (.add (.mul (.rational 43140 1) .v) (.rational 1483892 1)) .g)) .f) (.mul (.add (.mul
    (.rational 25620 1) .v) (.rational 907184 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational
    720 1) .v) (.rational 188692 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 62280 1) .v) (.rational 1494048 1)) .f) (.mul (.add (.mul
    (.rational 164640 1) .v) (.rational 3375496 1)) .g)) .f) (.mul (.add (.mul (.rational 152460
    1) .v) (.rational 2754106 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 54060 1) .v)
    (.rational 935576 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 1800 1) .v) (.rational
    88218 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 136560 1) .v) (.rational 2007454 1)) .f) (.mul (.add (.mul (.rational 448920
    1) .v) (.rational 5548632 1)) .g)) .f) (.mul (.add (.mul (.rational 581220 1) .v) (.rational
    5959074 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 380460 1) .v) (.rational 3141392
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 136860 1) .v) (.rational 855270 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.rational 28920 1) .v) (.rational 123552 1)) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    207000 1) .v) (.rational 1931988 1)) .f) (.mul (.add (.mul (.rational 816480 1) .v) (.rational
    6449472 1)) .g)) .f) (.mul (.add (.mul (.rational 1347840 1) .v) (.rational 8863104 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.rational 1228080 1) .v) (.rational 6597240 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.rational 690660 1) .v) (.rational 2999938 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.rational 254100 1) .v) (.rational 912244 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 61440 1) .v) (.rational 193898 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 200520 1) .v)
    (.rational 1253532 1)) .f) (.mul (.add (.mul (.rational 917640 1) .v) (.rational 4960128 1))
    .g)) .f) (.mul (.add (.mul (.rational 1817400 1) .v) (.rational 8399820 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 2064960 1) .v) (.rational 8108136 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 1505100 1) .v) (.rational 5052186 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 740580 1) .v) (.rational 2179004 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 247140 1) .v) (.rational 659836 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    53040 1) .v) (.rational 131092 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 110160 1)
    .v) (.rational 486000 1)) .f) (.mul (.add (.mul (.rational 570240 1) .v) (.rational 2232360
    1)) .g)) .f) (.mul (.add (.mul (.rational 1304280 1) .v) (.rational 4495812 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.rational 1749600 1) .v) (.rational 5297328 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 1538280 1) .v) (.rational 4118688 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 932400 1) .v) (.rational 2243624 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 393900 1) .v) (.rational 867418 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    112740 1) .v) (.rational 229016 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 20220 1)
    .v) (.rational 37476 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25920 1)
    .v) (.rational 84240 1)) .f) (.mul (.add (.mul (.rational 149040 1) .v) (.rational 440640 1))
    .g)) .f) (.mul (.add (.mul (.rational 384120 1) .v) (.rational 1025628 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 589320 1) .v) (.rational 1416552 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 601560 1) .v) (.rational 1305206 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 430200 1) .v) (.rational 849072 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 219060 1) .v) (.rational 396458 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    78300 1) .v) (.rational 130152 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 18720 1) .v)
    (.rational 28314 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 2700 1) .v) (.rational
    3640 1)) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow02310

namespace FullLow02311
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  10*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_6 e g v+6*SmallGap.ReducedLayers.low0_001_5 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_020_8 e g v+3*SmallGap.ReducedLayers.low1_011_7 e g
    v+3*SmallGap.ReducedLayers.low1_002_6 e g v)

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

end FullLow02311

end
end SPR.N6.Tail.CoreEndpoint
