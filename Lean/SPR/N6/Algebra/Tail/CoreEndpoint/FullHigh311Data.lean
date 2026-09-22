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

namespace FullHigh3110
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    2*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^3+4*SmallGap.ReducedLayers.high0_010_0 e g v*e^1+4*SmallGap.ReducedLayers.high0_001_0 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.high1_200_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_110_0 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_101_0 e g v*e^2+1*SmallGap.ReducedLayers.high1_011_0 e g
    v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2584 1) .e) (.add (.mul (.rational 25688 1) .f) (.add (.mul (.rational 32292 1) .g) (.mul
    (.rational 4608 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 156702 1) .f) (.add (.mul
    (.rational 267932 1) .g) (.mul (.rational 41230 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 166782 1) .g) (.mul (.rational 50260 1) .v)) .g) (.mul (.rational 2120 1) (.pow .v
    2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 657274 1) .f) (.add (.mul (.rational
    1418483 1) .g) (.mul (.rational 227934 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1185740
    1) .g) (.mul (.rational 380222 1) .v)) .g) (.mul (.rational 17464 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 480883 1) .g) (.mul (.rational 226090 1) .v)) .g) (.mul
    (.rational 21500 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2011887 1) .f) (.add (.mul (.rational 5236861 1) .g) (.mul (.rational 870571 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 5486238 1) .g) (.mul (.rational 1847637 1) .v))
    .g) (.mul (.rational 88908 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2960953 1) .g) (.mul (.rational 1495543 1) .v)) .g) (.mul (.rational 150848 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 867889 1) .g) (.mul (.rational 577147 1)
    .v)) .g) (.mul (.rational 90396 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 4652363 1) .f) (.add (.mul (.rational 14166849
    1) .g) (.mul (.rational 2432811 1) .v))) .f) (.add (.mul (.add (.mul (.rational 17817096 1)
    .g) (.mul (.rational 6281734 1) .v)) .g) (.mul (.rational 312563 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11980086 1) .g) (.mul (.rational 6454346 1) .v)) .g) (.mul
    (.rational 680058 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4640417
    1) .g) (.mul (.rational 3374620 1) .v)) .g) (.mul (.rational 561891 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1030725 1) .g) (.mul (.rational 947835 1)
    .v)) .g) (.mul (.rational 220356 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8295319 1) .f) (.add (.mul
    (.rational 28910582 1) .g) (.mul (.rational 5136055 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 42390119 1) .g) (.mul (.rational 15651895 1) .v)) .g) (.mul (.rational 802453 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 34069440 1) .g) (.mul (.rational
    19539632 1) .v)) .g) (.mul (.rational 2141670 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16355679 1) .g) (.mul (.rational 12930586 1) .v)) .g) (.mul (.rational
    2272827 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4772862 1)
    .g) (.mul (.rational 4893787 1) .v)) .g) (.mul (.rational 1228052 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 817631 1) .g) (.mul (.rational 1058799 1)
    .v)) .g) (.mul (.rational 357974 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11530274 1) .f) (.add
    (.mul (.rational 45242078 1) .g) (.mul (.rational 8334433 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 75717400 1) .g) (.mul (.rational 29321083 1) .v)) .g) (.mul (.rational 1549521 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 70704621 1) .g) (.mul (.rational
    43153213 1) .v)) .g) (.mul (.rational 4920182 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 40403338 1) .g) (.mul (.rational 34617080 1) .v)) .g) (.mul (.rational
    6411599 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 14542432
    1) .g) (.mul (.rational 16513739 1) .v)) .g) (.mul (.rational 4445238 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3255660 1) .g) (.mul (.rational 4782343
    1) .v)) .g) (.mul (.rational 1775374 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 427493 1) .g) (.mul (.rational 816583 1) .v)) .g) (.mul (.rational
    410822 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12537898 1) .f) (.add (.mul
    (.rational 54682378 1) .g) (.mul (.rational 10469577 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 102799799 1) .g) (.mul (.rational 41808044 1) .v)) .g) (.mul (.rational 2281225 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 109253575 1) .g) (.mul (.rational
    70950916 1) .v)) .g) (.mul (.rational 8424246 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 72280197 1) .g) (.mul (.rational 66953615 1) .v)) .g) (.mul (.rational
    13060475 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 30837938
    1) .g) (.mul (.rational 38575697 1) .v)) .g) (.mul (.rational 11096986 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8474579 1) .g) (.mul (.rational 14001868
    1) .v)) .g) (.mul (.rational 5655186 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1446557 1) .g) (.mul (.rational 3175144 1) .v)) .g) (.mul (.rational
    1772714 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 140487 1)
    .g) (.mul (.rational 426737 1) .v)) .g) (.mul (.rational 333988 1) (.pow .v 2))) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 10630326 1) .f) (.add (.mul (.rational 51008956 1) .g)
    (.mul (.rational 10168037 1) .v))) .f) (.add (.mul (.add (.mul (.rational 106377572 1) .g)
    (.mul (.rational 45475588 1) .v)) .g) (.mul (.rational 2566073 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 126673447 1) .g) (.mul (.rational 87487791 1) .v)) .g)
    (.mul (.rational 10826235 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    95082111 1) .g) (.mul (.rational 94988810 1) .v)) .g) (.mul (.rational 19500507 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 46788415 1) .g) (.mul
    (.rational 64156432 1) .v)) .g) (.mul (.rational 19655972 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 15173506 1) .g) (.mul (.rational 27981110 1) .v)) .g)
    (.mul (.rational 12204778 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3162991 1) .g) (.mul (.rational 7896819 1) .v)) .g) (.mul (.rational 4833147 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 396969 1) .g) (.mul
    (.rational 1397130 1) .v)) .g) (.mul (.rational 1215508 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 26015 1) .g) (.mul (.rational 142761 1) .v)) .g)
    (.mul (.rational 185016 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 6952248 1) .f) (.add (.mul (.rational 36398164 1) .g) (.mul (.rational 7562207 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 83366045 1) .g) (.mul (.rational 37469181 1) .v))
    .g) (.mul (.rational 2188461 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    109872823 1) .g) (.mul (.rational 80620894 1) .v)) .g) (.mul (.rational 10397702 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 92140888 1) .g) (.mul (.rational
    99007504 1) .v)) .g) (.mul (.rational 21359818 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 51262570 1) .g) (.mul (.rational 76679270 1) .v)) .g) (.mul
    (.rational 24929132 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 19093680 1) .g) (.mul (.rational 39015626 1) .v)) .g) (.mul (.rational 18256820 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4673299 1) .g) (.mul
    (.rational 13144564 1) .v)) .g) (.mul (.rational 8730700 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 711920 1) .g) (.mul (.rational 2870308 1) .v)) .g)
    (.mul (.rational 2739905 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 59840 1) .g) (.mul (.rational 382297 1) .v)) .g) (.mul (.rational 548392 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2035 1) .g) (.mul
    (.rational 27089 1) .v)) .g) (.mul (.rational 64734 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 3436646 1) .f) (.add (.mul (.rational 19495985
    1) .g) (.mul (.rational 4223527 1) .v))) .f) (.add (.mul (.add (.mul (.rational 48641650 1)
    .g) (.mul (.rational 22976297 1) .v)) .g) (.mul (.rational 1389103 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 70258964 1) .g) (.mul (.rational 54689157 1) .v)) .g) (.mul
    (.rational 7344670 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 65038684
    1) .g) (.mul (.rational 74945589 1) .v)) .g) (.mul (.rational 16954445 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 40293266 1) .g) (.mul (.rational 65437804
    1) .v)) .g) (.mul (.rational 22485930 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16899364 1) .g) (.mul (.rational 38006314 1) .v)) .g) (.mul (.rational
    18961572 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4727059
    1) .g) (.mul (.rational 14847770 1) .v)) .g) (.mul (.rational 10610516 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 840316 1) .g) (.mul (.rational 3840347 1)
    .v)) .g) (.mul (.rational 3979112 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 85056 1) .g) (.mul (.rational 625195 1) .v)) .g) (.mul (.rational 981124 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3670 1) .g) (.mul
    (.rational 57061 1) .v)) .g) (.mul (.rational 150090 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 2155 1) .v) .g) (.mul (.rational 12482 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1240367 1) .f) (.add
    (.mul (.rational 7580761 1) .g) (.mul (.rational 1712128 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 20464123 1) .g) (.mul (.rational 10149873 1) .v)) .g) (.mul (.rational 634691 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 32136080 1) .g) (.mul (.rational
    26486177 1) .v)) .g) (.mul (.rational 3697934 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 32521188 1) .g) (.mul (.rational 40063561 1) .v)) .g) (.mul (.rational
    9477487 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22170018
    1) .g) (.mul (.rational 38912584 1) .v)) .g) (.mul (.rational 14073666 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10313747 1) .g) (.mul (.rational 25370357
    1) .v)) .g) (.mul (.rational 13416398 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3232763 1) .g) (.mul (.rational 11249613 1) .v)) .g) (.mul (.rational
    8583792 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 652751 1)
    .g) (.mul (.rational 3349444 1) .v)) .g) (.mul (.rational 3732634 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 76484 1) .g) (.mul (.rational 639891 1) .v))
    .g) (.mul (.rational 1087588 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3930 1) .g) (.mul (.rational 70533 1) .v)) .g) (.mul (.rational 202256 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3375 1) .v) .g) (.mul (.rational
    21450 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 964 1) (.pow .v 2)) (.pow .g
    10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 307919 1) .f)
    (.add (.mul (.rational 2017695 1) .g) (.mul (.rational 474788 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 5860204 1) .g) (.mul (.rational 3047992 1) .v)) .g) (.mul (.rational 196836
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9939111 1) .g) (.mul (.rational
    8655111 1) .v)) .g) (.mul (.rational 1253401 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10909450 1) .g) (.mul (.rational 14322519 1) .v)) .g) (.mul (.rational
    3531554 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8105862 1)
    .g) (.mul (.rational 15309148 1) .v)) .g) (.mul (.rational 5802443 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4133782 1) .g) (.mul (.rational 11058555 1)
    .v)) .g) (.mul (.rational 6163931 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1430417 1) .g) (.mul (.rational 5475570 1) .v)) .g) (.mul (.rational 4430254
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 321713 1) .g)
    (.mul (.rational 1837913 1) .v)) .g) (.mul (.rational 2185067 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 42483 1) .g) (.mul (.rational 400692 1) .v)) .g)
    (.mul (.rational 730973 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2500 1) .g) (.mul (.rational 51245 1) .v)) .g) (.mul (.rational 158699 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2915 1) .v) .g) (.mul (.rational
    20145 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1129 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 46899 1)
    .f) (.add (.mul (.rational 328170 1) .g) (.mul (.rational 80376 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 1020734 1) .g) (.mul (.rational 555846 1) .v)) .g) (.mul (.rational 36990 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1859585 1) .g) (.mul (.rational
    1707008 1) .v)) .g) (.mul (.rational 255672 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2199647 1) .g) (.mul (.rational 3067815 1) .v)) .g) (.mul (.rational 785565
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1767636 1) .g)
    (.mul (.rational 3577460 1) .v)) .g) (.mul (.rational 1414442 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 978963 1) .g) (.mul (.rational 2833306 1) .v))
    .g) (.mul (.rational 1655312 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 369661 1) .g) (.mul (.rational 1546757 1) .v)) .g) (.mul (.rational 1318288 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 91258 1) .g) (.mul
    (.rational 576147 1) .v)) .g) (.mul (.rational 725215 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 13324 1) .g) (.mul (.rational 140486 1) .v)) .g) (.mul
    (.rational 272742 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    875 1) .g) (.mul (.rational 20294 1) .v)) .g) (.mul (.rational 67240 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 1321 1) .v) .g) (.mul (.rational 9824 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 646 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3294 1) .f) (.add (.mul
    (.rational 24534 1) .g) (.mul (.rational 6246 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    81414 1) .g) (.mul (.rational 46332 1) .v)) .g) (.mul (.rational 3168 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 158616 1) .g) (.mul (.rational 153108 1) .v)) .g)
    (.mul (.rational 23634 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    201136 1) .g) (.mul (.rational 297072 1) .v)) .g) (.mul (.rational 78664 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 173724 1) .g) (.mul (.rational
    375294 1) .v)) .g) (.mul (.rational 154011 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 103704 1) .g) (.mul (.rational 323172 1) .v)) .g) (.mul
    (.rational 196747 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    42344 1) .g) (.mul (.rational 192582 1) .v)) .g) (.mul (.rational 171743 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 11346 1) .g) (.mul (.rational 78648
    1) .v)) .g) (.mul (.rational 104019 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1806 1) .g) (.mul (.rational 21132 1) .v)) .g) (.mul (.rational 43289 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 130 1) .g) (.mul
    (.rational 3384 1) .v)) .g) (.mul (.rational 11881 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 246 1) .v) .g) (.mul (.rational 1947 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 145 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh3110

namespace FullHigh3111
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2+
    2*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    4*SmallGap.PolarCoefficientsHigh0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(36*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^2+12*SmallGap.ReducedLayers.high0_100_1 e g v*e^3+4*SmallGap.ReducedLayers.high0_010_0 e g
    v+4*SmallGap.ReducedLayers.high0_010_1 e g v*e^1+8*SmallGap.ReducedLayers.high0_001_0 e g
    v*e^1+4*SmallGap.ReducedLayers.high0_001_1 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(18*SmallGap.ReducedLayers.high1_200_0 e g v*e^2+6*SmallGap.ReducedLayers.high1_200_1 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_110_0 e g v+3*SmallGap.ReducedLayers.high1_110_1 e g
    v*e^1+6*SmallGap.ReducedLayers.high1_101_0 e g v*e^1+3*SmallGap.ReducedLayers.high1_101_1 e g
    v*e^2+1*SmallGap.ReducedLayers.high1_011_1 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13308 1)
    .e) (.add (.mul (.rational 124712 1) .f) (.add (.mul (.rational 155088 1) .g) (.mul (.rational
    23408 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 719395 1) .f) (.add (.mul (.rational
    1216690 1) .g) (.mul (.rational 194667 1) .v))) .f) (.add (.mul (.add (.mul (.rational 747763
    1) .g) (.mul (.rational 231582 1) .v)) .g) (.mul (.rational 10660 1) (.pow .v 2))))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.rational 2854489 1) .f) (.add (.mul (.rational 6093782 1) .g)
    (.mul (.rational 1003853 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5032009 1) .g) (.mul
    (.rational 1630584 1) .v)) .g) (.mul (.rational 80744 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2015520 1) .g) (.mul (.rational 933089 1) .v)) .g) (.mul (.rational
    96308 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    8250630 1) .f) (.add (.mul (.rational 21244019 1) .g) (.mul (.rational 3582132 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 21996353 1) .g) (.mul (.rational 7398810 1) .v)) .g) (.mul
    (.rational 379302 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 11734485 1)
    .g) (.mul (.rational 5771476 1) .v)) .g) (.mul (.rational 621176 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3405277 1) .g) (.mul (.rational 2119898 1) .v)) .g)
    (.mul (.rational 352310 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 17947713 1) .f) (.add (.mul (.rational 54058643 1)
    .g) (.mul (.rational 9350620 1) .v))) .f) (.add (.mul (.add (.mul (.rational 67222343 1) .g)
    (.mul (.rational 23511634 1) .v)) .g) (.mul (.rational 1233456 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 44711735 1) .g) (.mul (.rational 23343986 1) .v)) .g) (.mul
    (.rational 2589114 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 17162180
    1) .g) (.mul (.rational 11685880 1) .v)) .g) (.mul (.rational 2031732 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3790646 1) .g) (.mul (.rational 3112646
    1) .v)) .g) (.mul (.rational 740002 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 29929070 1) .f) (.add (.mul
    (.rational 103162979 1) .g) (.mul (.rational 18398051 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 149603762 1) .g) (.mul (.rational 54674956 1) .v)) .g) (.mul (.rational 2932962 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 119015485 1) .g) (.mul (.rational
    66183130 1) .v)) .g) (.mul (.rational 7567818 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 56666723 1) .g) (.mul (.rational 42200906 1) .v)) .g) (.mul (.rational
    7677646 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 16458360
    1) .g) (.mul (.rational 15300021 1) .v)) .g) (.mul (.rational 3910030 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2820945 1) .g) (.mul (.rational 3161546
    1) .v)) .g) (.mul (.rational 1058608 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 38590173 1) .f)
    (.add (.mul (.rational 149732063 1) .g) (.mul (.rational 27686103 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 247889646 1) .g) (.mul (.rational 95158496 1) .v)) .g) (.mul (.rational
    5240036 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 229239491 1) .g) (.mul
    (.rational 136295626 1) .v)) .g) (.mul (.rational 16147394 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 130016468 1) .g) (.mul (.rational 105998090 1) .v)) .g)
    (.mul (.rational 20275898 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 46615774 1) .g) (.mul (.rational 48884667 1) .v)) .g) (.mul (.rational 13443640 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10450761 1) .g) (.mul
    (.rational 13686164 1) .v)) .g) (.mul (.rational 5106290 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1383908 1) .g) (.mul (.rational 2270860 1) .v)) .g)
    (.mul (.rational 1125730 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 38490894 1) .f)
    (.add (.mul (.rational 165965155 1) .g) (.mul (.rational 31973786 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 308661068 1) .g) (.mul (.rational 124986900 1) .v)) .g) (.mul
    (.rational 7101440 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 324981044 1)
    .g) (.mul (.rational 207150109 1) .v)) .g) (.mul (.rational 25565528 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 213517982 1) .g) (.mul (.rational 190553128 1) .v))
    .g) (.mul (.rational 38494944 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 90808896 1) .g) (.mul (.rational 106963884 1) .v)) .g) (.mul (.rational 31675676 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 25010117 1) .g) (.mul
    (.rational 37906682 1) .v)) .g) (.mul (.rational 15632464 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4309085 1) .g) (.mul (.rational 8447173 1) .v)) .g)
    (.mul (.rational 4773840 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 426223 1) .g) (.mul (.rational 1129030 1) .v)) .g) (.mul (.rational 889624 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 29469787 1) .f) (.add (.mul (.rational
    139757427 1) .g) (.mul (.rational 28157134 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    288314569 1) .g) (.mul (.rational 123500538 1) .v)) .g) (.mul (.rational 7272120 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 340180634 1) .g) (.mul (.rational 232748823
    1) .v)) .g) (.mul (.rational 30041382 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 253677170 1) .g) (.mul (.rational 247456600 1) .v)) .g) (.mul (.rational 52916916
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 124501672 1) .g)
    (.mul (.rational 163839764 1) .v)) .g) (.mul (.rational 52171232 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 40488540 1) .g) (.mul (.rational 70296492 1)
    .v)) .g) (.mul (.rational 31780836 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8524589 1) .g) (.mul (.rational 19658425 1) .v)) .g) (.mul (.rational
    12442232 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1090546
    1) .g) (.mul (.rational 3487408 1) .v)) .g) (.mul (.rational 3136580 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 73686 1) .g) (.mul (.rational 363106 1) .v))
    .g) (.mul (.rational 487894 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 17015735 1) .f) (.add (.mul (.rational 88004715 1) .g) (.mul (.rational 18586040 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 199337817 1) .g) (.mul (.rational 90449882 1)
    .v)) .g) (.mul (.rational 5535590 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 260297671 1) .g) (.mul (.rational 191111006 1) .v)) .g) (.mul (.rational 25848274
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 216889757 1) .g) (.mul
    (.rational 230627344 1) .v)) .g) (.mul (.rational 52209638 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 120376104 1) .g) (.mul (.rational 175898769 1) .v))
    .g) (.mul (.rational 60035148 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 44973237 1) .g) (.mul (.rational 88526662 1) .v)) .g) (.mul (.rational 43517292 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 11120440 1) .g) (.mul
    (.rational 29723780 1) .v)) .g) (.mul (.rational 20767620 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1727200 1) .g) (.mul (.rational 6543130 1) .v)) .g)
    (.mul (.rational 6586096 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 149748 1) .g) (.mul (.rational 892344 1) .v)) .g) (.mul (.rational 1354350 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5332 1) .g) (.mul
    (.rational 65976 1) .v)) .g) (.mul (.rational 167316 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 7174918 1) .f) (.add (.mul (.rational 40183271
    1) .g) (.mul (.rational 8906338 1) .v))) .f) (.add (.mul (.add (.mul (.rational 99096227 1)
    .g) (.mul (.rational 47637884 1) .v)) .g) (.mul (.rational 3034188 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 141764163 1) .g) (.mul (.rational 111535978 1) .v)) .g)
    (.mul (.rational 15811606 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    130357040 1) .g) (.mul (.rational 150562508 1) .v)) .g) (.mul (.rational 36028106 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 80551294 1) .g) (.mul
    (.rational 129865403 1) .v)) .g) (.mul (.rational 47312008 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 33880741 1) .g) (.mul (.rational 74872812 1) .v)) .g)
    (.mul (.rational 39715196 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9571286 1) .g) (.mul (.rational 29255380 1) .v)) .g) (.mul (.rational 22305568 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1733784 1) .g) (.mul
    (.rational 7650842 1) .v)) .g) (.mul (.rational 8493196 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 180856 1) .g) (.mul (.rational 1277940 1) .v)) .g)
    (.mul (.rational 2157920 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8160 1) .g) (.mul (.rational 121916 1) .v)) .g) (.mul (.rational 346082 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 4923 1) .v) .g) (.mul (.rational
    30738 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 2086428 1) .f) (.add (.mul (.rational 12577058 1) .g) (.mul (.rational
    2926036 1) .v))) .f) (.add (.mul (.add (.mul (.rational 33529907 1) .g) (.mul (.rational
    17063082 1) .v)) .g) (.mul (.rational 1131110 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 52108141 1) .g) (.mul (.rational 43837660 1) .v)) .g) (.mul (.rational
    6507392 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 52343567 1) .g)
    (.mul (.rational 65406534 1) .v)) .g) (.mul (.rational 16503836 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 35565948 1) .g) (.mul (.rational 62865518 1) .v))
    .g) (.mul (.rational 24341122 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16580055 1) .g) (.mul (.rational 40765230 1) .v)) .g) (.mul (.rational 23177542 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5243173 1) .g) (.mul
    (.rational 18110159 1) .v)) .g) (.mul (.rational 14931612 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1077195 1) .g) (.mul (.rational 5457122 1) .v)) .g)
    (.mul (.rational 6608460 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 129780 1) .g) (.mul (.rational 1069284 1) .v)) .g) (.mul (.rational 1986354 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6948 1) .g) (.mul
    (.rational 122960 1) .v)) .g) (.mul (.rational 387246 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 6271 1) .v) .g) (.mul (.rational 43868 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 2154 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 374220 1) .f) (.add (.mul (.rational
    2415378 1) .g) (.mul (.rational 589488 1) .v))) .f) (.add (.mul (.add (.mul (.rational 6918910
    1) .g) (.mul (.rational 3721848 1) .v)) .g) (.mul (.rational 256572 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11597625 1) .g) (.mul (.rational 10405502 1) .v)) .g)
    (.mul (.rational 1614744 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    12619138 1) .g) (.mul (.rational 16988948 1) .v)) .g) (.mul (.rational 4507900 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9332494 1) .g) (.mul
    (.rational 17977616 1) .v)) .g) (.mul (.rational 7367594 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4761898 1) .g) (.mul (.rational 12920922 1) .v)) .g)
    (.mul (.rational 7830062 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1659305 1) .g) (.mul (.rational 6409967 1) .v)) .g) (.mul (.rational 5674274 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 378750 1) .g) (.mul
    (.rational 2175548 1) .v)) .g) (.mul (.rational 2850148 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 51238 1) .g) (.mul (.rational 485242 1) .v)) .g)
    (.mul (.rational 983006 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3124 1) .g) (.mul (.rational 64422 1) .v)) .g) (.mul (.rational 223258 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3873 1) .v) .g) (.mul (.rational
    30158 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1836 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 31212 1)
    .f) (.add (.mul (.rational 214728 1) .g) (.mul (.rational 54912 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 657430 1) .g) (.mul (.rational 373116 1) .v)) .g) (.mul (.rational 26712 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1181314 1) .g) (.mul (.rational
    1127116 1) .v)) .g) (.mul (.rational 182484 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1382254 1) .g) (.mul (.rational 1996782 1) .v)) .g) (.mul (.rational 555618
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1103136 1) .g)
    (.mul (.rational 2303076 1) .v)) .g) (.mul (.rational 995312 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 609774 1) .g) (.mul (.rational 1812824 1) .v))
    .g) (.mul (.rational 1165390 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 231194 1) .g) (.mul (.rational 989938 1) .v)) .g) (.mul (.rational 935492 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 57710 1) .g) (.mul
    (.rational 371854 1) .v)) .g) (.mul (.rational 523540 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8588 1) .g) (.mul (.rational 92344 1) .v)) .g) (.mul
    (.rational 202512 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    580 1) .g) (.mul (.rational 13744 1) .v)) .g) (.mul (.rational 51998 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 934 1) .v) .g) (.mul (.rational 8024 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 566 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh3111

namespace FullHigh3112
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    4*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    2*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsHigh1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(36*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^1+36*SmallGap.ReducedLayers.high0_100_1 e g v*e^2+12*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^3+4*SmallGap.ReducedLayers.high0_010_1 e g v+4*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^1+4*SmallGap.ReducedLayers.high0_001_0 e g v+8*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^1+4*SmallGap.ReducedLayers.high0_001_2 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(18*SmallGap.ReducedLayers.high1_200_0 e g v*e^1+18*SmallGap.ReducedLayers.high1_200_1 e
    g v*e^2+6*SmallGap.ReducedLayers.high1_200_2 e g v*e^3+3*SmallGap.ReducedLayers.high1_110_1 e
    g v+3*SmallGap.ReducedLayers.high1_110_2 e g v*e^1+3*SmallGap.ReducedLayers.high1_101_0 e g
    v+6*SmallGap.ReducedLayers.high1_101_1 e g v*e^1+3*SmallGap.ReducedLayers.high1_101_2 e g
    v*e^2+1*SmallGap.ReducedLayers.high1_011_2 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 27660 1) .e) (.add
    (.mul (.rational 246976 1) .f) (.add (.mul (.rational 304308 1) .g) (.mul (.rational 47992 1)
    .v)))) .e) (.add (.mul (.add (.mul (.rational 1354597 1) .f) (.add (.mul (.rational 2267678 1)
    .g) (.mul (.rational 374597 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1377117 1) .g)
    (.mul (.rational 434530 1) .v)) .g) (.mul (.rational 21660 1) (.pow .v 2))))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 5089015 1) .f) (.add (.mul (.rational 10744437 1) .g) (.mul
    (.rational 1807601 1) .v))) .f) (.add (.mul (.add (.mul (.rational 8760561 1) .g) (.mul
    (.rational 2850251 1) .v)) .g) (.mul (.rational 152344 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3463019 1) .g) (.mul (.rational 1558411 1) .v)) .g) (.mul (.rational
    175708 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    13839678 1) .f) (.add (.mul (.rational 35212858 1) .g) (.mul (.rational 6010702 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 35979134 1) .g) (.mul (.rational 12019523 1) .v)) .g) (.mul
    (.rational 661582 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 18932570 1)
    .g) (.mul (.rational 8943027 1) .v)) .g) (.mul (.rational 1040348 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5425060 1) .g) (.mul (.rational 3063109 1) .v)) .g)
    (.mul (.rational 550646 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 28086923 1) .f) (.add (.mul (.rational 83525023 1)
    .g) (.mul (.rational 14542884 1) .v))) .f) (.add (.mul (.add (.mul (.rational 102436091 1) .g)
    (.mul (.rational 35365644 1) .v)) .g) (.mul (.rational 1980454 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 67179239 1) .g) (.mul (.rational 33520563 1) .v)) .g) (.mul
    (.rational 3978872 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 25452474
    1) .g) (.mul (.rational 15723421 1) .v)) .g) (.mul (.rational 2913362 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5564586 1) .g) (.mul (.rational 3824429
    1) .v)) .g) (.mul (.rational 945796 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 43217370 1) .f) (.add (.mul
    (.rational 146953610 1) .g) (.mul (.rational 26329755 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 210062487 1) .g) (.mul (.rational 75705698 1) .v)) .g) (.mul (.rational 4317772 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 164721224 1) .g) (.mul (.rational
    87731156 1) .v)) .g) (.mul (.rational 10673202 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 77400230 1) .g) (.mul (.rational 52806065 1) .v)) .g) (.mul (.rational
    10171276 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22249158
    1) .g) (.mul (.rational 17757450 1) .v)) .g) (.mul (.rational 4719578 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3791757 1) .g) (.mul (.rational 3339657
    1) .v)) .g) (.mul (.rational 1113052 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 50687051 1) .f)
    (.add (.mul (.rational 193852959 1) .g) (.mul (.rational 36077601 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 316186108 1) .g) (.mul (.rational 120153377 1) .v)) .g) (.mul
    (.rational 7032770 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 288148274 1)
    .g) (.mul (.rational 165426750 1) .v)) .g) (.mul (.rational 20853328 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 161284888 1) .g) (.mul (.rational 122476418 1) .v))
    .g) (.mul (.rational 24871696 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 57242152 1) .g) (.mul (.rational 53212936 1) .v)) .g) (.mul (.rational 15406338 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 12765041 1) .g) (.mul
    (.rational 13917010 1) .v)) .g) (.mul (.rational 5373118 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1692319 1) .g) (.mul (.rational 2154701 1) .v)) .g)
    (.mul (.rational 1080346 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 45123362 1) .f)
    (.add (.mul (.rational 191626486 1) .g) (.mul (.rational 37351232 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 350947441 1) .g) (.mul (.rational 141778497 1) .v)) .g) (.mul
    (.rational 8596754 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 364081188 1)
    .g) (.mul (.rational 226906414 1) .v)) .g) (.mul (.rational 29969364 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 236109432 1) .g) (.mul (.rational 200365914 1) .v))
    .g) (.mul (.rational 43396868 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 99444960 1) .g) (.mul (.rational 107428762 1) .v)) .g) (.mul (.rational 34121552 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 27263771 1) .g) (.mul
    (.rational 36312198 1) .v)) .g) (.mul (.rational 16055820 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4708858 1) .g) (.mul (.rational 7765503 1) .v)) .g)
    (.mul (.rational 4718400 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 470886 1) .g) (.mul (.rational 1012911 1) .v)) .g) (.mul (.rational 870362 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 30040013 1) .f) (.add (.mul (.rational
    140201939 1) .g) (.mul (.rational 28804414 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    284690481 1) .g) (.mul (.rational 122966514 1) .v)) .g) (.mul (.rational 7786074 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 330948909 1) .g) (.mul (.rational 224777714
    1) .v)) .g) (.mul (.rational 31356272 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 243666430 1) .g) (.mul (.rational 231121898 1) .v)) .g) (.mul (.rational 53719344
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 118506144 1) .g)
    (.mul (.rational 147825710 1) .v)) .g) (.mul (.rational 51506828 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 38402008 1) .g) (.mul (.rational 61447098 1)
    .v)) .g) (.mul (.rational 30666588 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8117812 1) .g) (.mul (.rational 16810251 1) .v)) .g) (.mul (.rational
    11896944 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1052652
    1) .g) (.mul (.rational 2971633 1) .v)) .g) (.mul (.rational 3045122 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 72904 1) .g) (.mul (.rational 316091 1) .v))
    .g) (.mul (.rational 495608 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 14515653 1) .f) (.add (.mul (.rational 73823072 1) .g) (.mul (.rational 16056642 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 164513352 1) .g) (.mul (.rational 76221654 1)
    .v)) .g) (.mul (.rational 5067028 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 211640472 1) .g) (.mul (.rational 156826514 1) .v)) .g) (.mul (.rational 23204822
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 174173442 1) .g) (.mul
    (.rational 184171780 1) .v)) .g) (.mul (.rational 46003770 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 95864726 1) .g) (.mul (.rational 136903185 1) .v))
    .g) (.mul (.rational 52104048 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 35729427 1) .g) (.mul (.rational 67515704 1) .v)) .g) (.mul (.rational 37501252 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8884876 1) .g) (.mul
    (.rational 22464622 1) .v)) .g) (.mul (.rational 18026008 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1402200 1) .g) (.mul (.rational 4991231 1) .v)) .g)
    (.mul (.rational 5878242 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 125104 1) .g) (.mul (.rational 703903 1) .v)) .g) (.mul (.rational 1272790 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4656 1) .g) (.mul
    (.rational 55217 1) .v)) .g) (.mul (.rational 168956 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 4817254 1) .f) (.add (.mul (.rational 26504888
    1) .g) (.mul (.rational 6119080 1) .v))) .f) (.add (.mul (.add (.mul (.rational 64272221 1)
    .g) (.mul (.rational 31984054 1) .v)) .g) (.mul (.rational 2238862 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 90572349 1) .g) (.mul (.rational 73158620 1) .v)) .g) (.mul
    (.rational 11498032 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    82284264 1) .g) (.mul (.rational 96580822 1) .v)) .g) (.mul (.rational 25892676 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 50460288 1) .g) (.mul
    (.rational 81738645 1) .v)) .g) (.mul (.rational 33790134 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21196425 1) .g) (.mul (.rational 46557059 1) .v)) .g)
    (.mul (.rational 28450668 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6030763 1) .g) (.mul (.rational 18184210 1) .v)) .g) (.mul (.rational 16250980 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1112148 1) .g) (.mul
    (.rational 4837740 1) .v)) .g) (.mul (.rational 6408284 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 119688 1) .g) (.mul (.rational 841037 1) .v)) .g)
    (.mul (.rational 1721024 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5664 1) .g) (.mul (.rational 85717 1) .v)) .g) (.mul (.rational 297502 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3800 1) .v) .g) (.mul (.rational
    28942 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 983664 1) .f) (.add (.mul (.rational 5818800 1) .g) (.mul (.rational 1427712
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 15242433 1) .g) (.mul (.rational 8146434 1)
    .v)) .g) (.mul (.rational 601236 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23327430 1) .g) (.mul (.rational 20496328 1) .v)) .g) (.mul (.rational 3421224 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 23155452 1) .g) (.mul
    (.rational 30017952 1) .v)) .g) (.mul (.rational 8618192 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 15623232 1) .g) (.mul (.rational 28449504 1) .v)) .g)
    (.mul (.rational 12710002 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7280053 1) .g) (.mul (.rational 18330605 1) .v)) .g) (.mul (.rational 12221872 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2321046 1) .g) (.mul
    (.rational 8186884 1) .v)) .g) (.mul (.rational 8058612 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 485970 1) .g) (.mul (.rational 2521134 1) .v)) .g)
    (.mul (.rational 3711608 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 60460 1) .g) (.mul (.rational 515548 1) .v)) .g) (.mul (.rational 1183038 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3396 1) .g) (.mul
    (.rational 63403 1) .v)) .g) (.mul (.rational 249400 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 3552 1) .v) .g) (.mul (.rational 31156 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 1724 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 93312 1) .f) (.add (.mul (.rational
    590190 1) .g) (.mul (.rational 153948 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1659470
    1) .g) (.mul (.rational 951648 1) .v)) .g) (.mul (.rational 74088 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2737770 1) .g) (.mul (.rational 2609562 1) .v)) .g) (.mul
    (.rational 462348 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2943360
    1) .g) (.mul (.rational 4192788 1) .v)) .g) (.mul (.rational 1286546 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2162110 1) .g) (.mul (.rational 4389876 1)
    .v)) .g) (.mul (.rational 2111804 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1103254 1) .g) (.mul (.rational 3147114 1) .v)) .g) (.mul (.rational 2277474
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 387738 1) .g)
    (.mul (.rational 1575082 1) .v)) .g) (.mul (.rational 1696990 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 90200 1) .g) (.mul (.rational 547472 1) .v)) .g)
    (.mul (.rational 890338 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12592 1) .g) (.mul (.rational 127404 1) .v)) .g) (.mul (.rational 326468 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 804 1) .g) (.mul (.rational
    18034 1) .v)) .g) (.mul (.rational 80330 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 1184 1) .v) .g) (.mul (.rational 11990 1) (.pow .v 2))) (.pow .g 9))) .f)
    (.mul (.mul (.rational 824 1) (.pow .v 2)) (.pow .g 10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh3112

namespace FullHigh3113
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsHigh2.c410 e f g v*e*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.high0_100_0 e g v+36*SmallGap.ReducedLayers.high0_100_1 e
    g v*e^1+36*SmallGap.ReducedLayers.high0_100_2 e g v*e^2+4*SmallGap.ReducedLayers.high0_010_2 e
    g v+4*SmallGap.ReducedLayers.high0_010_3 e g v*e^1+4*SmallGap.ReducedLayers.high0_001_1 e g
    v+8*SmallGap.ReducedLayers.high0_001_2 e g v*e^1+4*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.high1_200_0 e g v+18*SmallGap.ReducedLayers.high1_200_1 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_200_2 e g v*e^2+3*SmallGap.ReducedLayers.high1_110_2 e g
    v+3*SmallGap.ReducedLayers.high1_110_3 e g v*e^1+3*SmallGap.ReducedLayers.high1_101_1 e g
    v+6*SmallGap.ReducedLayers.high1_101_2 e g v*e^1+3*SmallGap.ReducedLayers.high1_101_3 e g
    v*e^2+1*SmallGap.ReducedLayers.high1_011_3 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 28972 1) .e) (.add (.mul (.rational
    249388 1) .f) (.add (.mul (.rational 305100 1) .g) (.mul (.rational 49592 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 1311612 1) .f) (.add (.mul (.rational 2176844 1) .g) (.mul
    (.rational 367584 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1309484 1) .g) (.mul
    (.rational 415856 1) .v)) .g) (.mul (.rational 22220 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 4688560 1) .f) (.add (.mul (.rational 9798644 1) .g) (.mul
    (.rational 1672392 1) .v))) .f) (.add (.mul (.add (.mul (.rational 7900272 1) .g) (.mul
    (.rational 2556080 1) .v)) .g) (.mul (.rational 147012 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3088480 1) .g) (.mul (.rational 1328800 1) .v)) .g) (.mul (.rational
    163972 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    12007588 1) .f) (.add (.mul (.rational 30191184 1) .g) (.mul (.rational 5197400 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 30450032 1) .g) (.mul (.rational 10026104 1) .v)) .g) (.mul
    (.rational 594712 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 15813052 1)
    .g) (.mul (.rational 7053320 1) .v)) .g) (.mul (.rational 895672 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4477244 1) .g) (.mul (.rational 2200728 1) .v)) .g)
    (.mul (.rational 437416 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 22643676 1) .f) (.add (.mul (.rational 66424708 1)
    .g) (.mul (.rational 11630160 1) .v))) .f) (.add (.mul (.add (.mul (.rational 80262064 1) .g)
    (.mul (.rational 27200056 1) .v)) .g) (.mul (.rational 1641800 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 51837548 1) .g) (.mul (.rational 24320744 1) .v)) .g) (.mul
    (.rational 3139752 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 19357304
    1) .g) (.mul (.rational 10404176 1) .v)) .g) (.mul (.rational 2108720 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4180680 1) .g) (.mul (.rational 2163256
    1) .v)) .g) (.mul (.rational 574152 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 31820580 1) .f) (.add (.mul
    (.rational 106532852 1) .g) (.mul (.rational 19214616 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 149742176 1) .g) (.mul (.rational 53066224 1) .v)) .g) (.mul (.rational 3268760 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 115388680 1) .g) (.mul (.rational
    58064064 1) .v)) .g) (.mul (.rational 7685632 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 53307312 1) .g) (.mul (.rational 32095976 1) .v)) .g) (.mul (.rational
    6756780 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 15094656
    1) .g) (.mul (.rational 9456248 1) .v)) .g) (.mul (.rational 2719400 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2541932 1) .g) (.mul (.rational 1431560 1)
    .v)) .g) (.mul (.rational 480876 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 33321072 1) .f) (.add
    (.mul (.rational 125230524 1) .g) (.mul (.rational 23582976 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 200447944 1) .g) (.mul (.rational 75458832 1) .v)) .g) (.mul (.rational
    4801508 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 179125836 1) .g) (.mul
    (.rational 98407296 1) .v)) .g) (.mul (.rational 13604936 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 98340120 1) .g) (.mul (.rational 67588600 1) .v)) .g) (.mul
    (.rational 15191176 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34290080 1) .g) (.mul (.rational 26426584 1) .v)) .g) (.mul (.rational 8529328 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7535068 1) .g) (.mul
    (.rational 5960544 1) .v)) .g) (.mul (.rational 2569948 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 987776 1) .g) (.mul (.rational 754040 1) .v)) .g)
    (.mul (.rational 424112 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25686768 1) .f)
    (.add (.mul (.rational 106988856 1) .g) (.mul (.rational 21285504 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 191902280 1) .g) (.mul (.rational 77722056 1) .v)) .g) (.mul (.rational
    5183804 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 194811232 1) .g) (.mul
    (.rational 118334736 1) .v)) .g) (.mul (.rational 17404924 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 123640624 1) .g) (.mul (.rational 97975408 1) .v)) .g)
    (.mul (.rational 24013096 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 51042520 1) .g) (.mul (.rational 48394624 1) .v)) .g) (.mul (.rational 17781712 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 13758188 1) .g) (.mul
    (.rational 14808352 1) .v)) .g) (.mul (.rational 7831720 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2345484 1) .g) (.mul (.rational 2842240 1) .v)) .g)
    (.mul (.rational 2186340 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 232264 1) .g) (.mul (.rational 336904 1) .v)) .g) (.mul (.rational 403500 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 14177280 1) .f) (.add (.mul (.rational
    64773000 1) .g) (.mul (.rational 13736784 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    128568528 1) .g) (.mul (.rational 56509296 1) .v)) .g) (.mul (.rational 3997584 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 145969104 1) .g) (.mul (.rational 98718480
    1) .v)) .g) (.mul (.rational 15638088 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 104974508 1) .g) (.mul (.rational 96095408 1) .v)) .g) (.mul (.rational 25929328 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 49946836 1) .g) (.mul
    (.rational 57672352 1) .v)) .g) (.mul (.rational 24058208 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 15887120 1) .g) (.mul (.rational 22404408 1) .v)) .g)
    (.mul (.rational 13981560 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3312260 1) .g) (.mul (.rational 5776616 1) .v)) .g) (.mul (.rational 5422320 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 425780 1) .g) (.mul
    (.rational 988992 1) .v)) .g) (.mul (.rational 1441696 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 29324 1) .g) (.mul (.rational 105968 1) .v)) .g)
    (.mul (.rational 252536 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 5309472 1) .f) (.add (.mul (.rational 26384592 1) .g) (.mul (.rational 6000480 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 57372984 1) .g) (.mul (.rational 27498672 1) .v))
    .g) (.mul (.rational 2078112 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    71963152 1) .g) (.mul (.rational 54301424 1) .v)) .g) (.mul (.rational 9314304 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 57757084 1) .g) (.mul (.rational
    60862400 1) .v)) .g) (.mul (.rational 18088856 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 31058724 1) .g) (.mul (.rational 43039368 1) .v)) .g) (.mul
    (.rational 20177296 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11352984 1) .g) (.mul (.rational 20253376 1) .v)) .g) (.mul (.rational 14488936 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2785016 1) .g) (.mul
    (.rational 6524784 1) .v)) .g) (.mul (.rational 7106544 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 436756 1) .g) (.mul (.rational 1444888 1) .v)) .g)
    (.mul (.rational 2433596 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 39020 1) .g) (.mul (.rational 210824 1) .v)) .g) (.mul (.rational 567208 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1464 1) .g) (.mul
    (.rational 17640 1) .v)) .g) (.mul (.rational 81896 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1210464 1) .f) (.add (.mul (.rational 6495984
    1) .g) (.mul (.rational 1589760 1) .v))) .f) (.add (.mul (.add (.mul (.rational 15346128 1)
    .g) (.mul (.rational 8035488 1) .v)) .g) (.mul (.rational 650736 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 21056520 1) .g) (.mul (.rational 17706384 1) .v)) .g) (.mul
    (.rational 3290544 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 18636048
    1) .g) (.mul (.rational 22458480 1) .v)) .g) (.mul (.rational 7323024 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 11158180 1) .g) (.mul (.rational 18269840
    1) .v)) .g) (.mul (.rational 9519912 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4596768 1) .g) (.mul (.rational 10070560 1) .v)) .g) (.mul (.rational
    8096828 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1291660 1)
    .g) (.mul (.rational 3870896 1) .v)) .g) (.mul (.rational 4767144 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 237448 1) .g) (.mul (.rational 1042360 1)
    .v)) .g) (.mul (.rational 1983992 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 25756 1) .g) (.mul (.rational 189936 1) .v)) .g) (.mul (.rational 574344 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1244 1) .g) (.mul
    (.rational 20960 1) .v)) .g) (.mul (.rational 108464 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 1032 1) .v) .g) (.mul (.rational 11596 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 127008 1) .f) (.add
    (.mul (.rational 731520 1) .g) (.mul (.rational 192960 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1864272 1) .g) (.mul (.rational 1066176 1) .v)) .g) (.mul (.rational 92592 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2775360 1) .g) (.mul (.rational 2592576
    1) .v)) .g) (.mul (.rational 521136 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2682408 1) .g) (.mul (.rational 3668400 1) .v)) .g) (.mul (.rational 1305888 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1767048 1) .g) (.mul
    (.rational 3369072 1) .v)) .g) (.mul (.rational 1934304 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 808104 1) .g) (.mul (.rational 2122392 1) .v)) .g)
    (.mul (.rational 1895340 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 254904 1) .g) (.mul (.rational 943152 1) .v)) .g) (.mul (.rational 1298244 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 53380 1) .g) (.mul
    (.rational 296832 1) .v)) .g) (.mul (.rational 635160 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6728 1) .g) (.mul (.rational 64088 1) .v)) .g) (.mul
    (.rational 219840 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    388 1) .g) (.mul (.rational 8584 1) .v)) .g) (.mul (.rational 51304 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 536 1) .v) .g) (.mul (.rational 7220 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 460 1) (.pow .v 2)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh3113

namespace FullHigh3114
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  12*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.high0_100_1 e g v+36*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^1+4*SmallGap.ReducedLayers.high0_010_3 e g v+4*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^1+4*SmallGap.ReducedLayers.high0_001_2 e g v+8*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.high1_200_1 e g v+18*SmallGap.ReducedLayers.high1_200_2 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_110_3 e g v+3*SmallGap.ReducedLayers.high1_110_4 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_101_2 e g v+6*SmallGap.ReducedLayers.high1_101_3 e g
    v*e^1+1*SmallGap.ReducedLayers.high1_011_4 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 15276 1) .e) (.add (.mul (.rational 128256 1)
    .f) (.add (.mul (.rational 156168 1) .g) (.mul (.rational 25800 1) .v)))) .e) (.add (.mul
    (.add (.mul (.rational 653448 1) .f) (.add (.mul (.rational 1077644 1) .g) (.mul (.rational
    183864 1) .v))) .f) (.add (.mul (.add (.mul (.rational 644688 1) .g) (.mul (.rational 203088
    1) .v)) .g) (.mul (.rational 11500 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 2240988 1) .f) (.add (.mul (.rational 4645076 1) .g) (.mul (.rational 797304 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 3716756 1) .g) (.mul (.rational 1181656 1) .v))
    .g) (.mul (.rational 72648 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1444972 1) .g) (.mul (.rational 583456 1) .v)) .g) (.mul (.rational 78552 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5435532 1) .f) (.add
    (.mul (.rational 13525352 1) .g) (.mul (.rational 2336256 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 13505492 1) .g) (.mul (.rational 4345200 1) .v)) .g) (.mul (.rational 277404 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6954924 1) .g) (.mul (.rational
    2880144 1) .v)) .g) (.mul (.rational 400952 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1958952 1) .g) (.mul (.rational 803096 1) .v)) .g) (.mul (.rational 180364 1)
    (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 9543852 1) .f) (.add (.mul (.rational 27638384 1) .g) (.mul (.rational 4864680 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 32971840 1) .g) (.mul (.rational 10926520 1) .v))
    .g) (.mul (.rational 714236 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    21048048 1) .g) (.mul (.rational 9167824 1) .v)) .g) (.mul (.rational 1302496 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7787948 1) .g) (.mul (.rational 3498408 1)
    .v)) .g) (.mul (.rational 799312 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1672784 1) .g) (.mul (.rational 560992 1) .v)) .g) (.mul (.rational 171896 1)
    (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 12206460 1) .f) (.add (.mul (.rational 40231212 1) .g) (.mul (.rational
    7346784 1) .v))) .f) (.add (.mul (.add (.mul (.rational 55653264 1) .g) (.mul (.rational
    19448952 1) .v)) .g) (.mul (.rational 1310064 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 42228384 1) .g) (.mul (.rational 19971256 1) .v)) .g) (.mul (.rational
    2938928 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 19241696 1) .g)
    (.mul (.rational 9931120 1) .v)) .g) (.mul (.rational 2383388 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5388584 1) .g) (.mul (.rational 2375088 1) .v))
    .g) (.mul (.rational 808768 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 899892 1) .g) (.mul (.rational 197632 1) .v)) .g) (.mul (.rational 79284 1) (.pow
    .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 11274744 1) .f) (.add (.mul (.rational 41586936 1) .g) (.mul
    (.rational 8025912 1) .v))) .f) (.add (.mul (.add (.mul (.rational 65274156 1) .g) (.mul
    (.rational 24605040 1) .v)) .g) (.mul (.rational 1741052 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 57187116 1) .g) (.mul (.rational 30196864 1) .v)) .g) (.mul
    (.rational 4741056 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 30801040
    1) .g) (.mul (.rational 18906224 1) .v)) .g) (.mul (.rational 4992492 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10552384 1) .g) (.mul (.rational 6327752
    1) .v)) .g) (.mul (.rational 2554696 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2281196 1) .g) (.mul (.rational 1051816 1) .v)) .g) (.mul (.rational
    657900 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 293692 1)
    .g) (.mul (.rational 54776 1) .v)) .g) (.mul (.rational 83616 1) (.pow .v 2))) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 7328412 1) .f) (.add (.mul (.rational 29856600 1) .g) (.mul (.rational
    6183288 1) .v))) .f) (.add (.mul (.add (.mul (.rational 52300500 1) .g) (.mul (.rational
    21635040 1) .v)) .g) (.mul (.rational 1643064 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 51792320 1) .g) (.mul (.rational 31102600 1) .v)) .g) (.mul (.rational
    5355216 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 32048688 1) .g)
    (.mul (.rational 23766176 1) .v)) .g) (.mul (.rational 7128192 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 12899696 1) .g) (.mul (.rational 10450456 1) .v))
    .g) (.mul (.rational 5074800 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3388040 1) .g) (.mul (.rational 2689680 1) .v)) .g) (.mul (.rational 2169404 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 560420 1) .g) (.mul
    (.rational 398664 1) .v)) .g) (.mul (.rational 612632 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 53060 1) .g) (.mul (.rational 32200 1) .v)) .g) (.mul
    (.rational 122404 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3179448 1)
    .f) (.add (.mul (.rational 14158212 1) .g) (.mul (.rational 3179280 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 27322656 1) .g) (.mul (.rational 12532392 1) .v)) .g) (.mul (.rational
    1037256 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 30089524 1) .g) (.mul
    (.rational 20721008 1) .v)) .g) (.mul (.rational 3974064 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 20947764 1) .g) (.mul (.rational 18773800 1) .v)) .g) (.mul
    (.rational 6461400 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9630884 1) .g) (.mul (.rational 10268200 1) .v)) .g) (.mul (.rational 5926608 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2951584 1) .g) (.mul (.rational
    3558064 1) .v)) .g) (.mul (.rational 3477708 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 588588 1) .g) (.mul (.rational 811008 1) .v)) .g) (.mul
    (.rational 1411312 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    70988 1) .g) (.mul (.rational 125360 1) .v)) .g) (.mul (.rational 406088 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4352 1) .g) (.mul (.rational 12568
    1) .v)) .g) (.mul (.rational 77336 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 826200 1) .f) (.add (.mul (.rational 3987144 1) .g) (.mul (.rational 975888
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 8388828 1) .g) (.mul (.rational 4283280 1)
    .v)) .g) (.mul (.rational 388800 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10142640 1) .g) (.mul (.rational 8011224 1) .v)) .g) (.mul (.rational 1717200 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7817400 1) .g) (.mul
    (.rational 8391120 1) .v)) .g) (.mul (.rational 3299736 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4020940 1) .g) (.mul (.rational 5467880 1) .v)) .g)
    (.mul (.rational 3680784 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1398108 1) .g) (.mul (.rational 2349400 1) .v)) .g) (.mul (.rational 2695344 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 322784 1) .g) (.mul
    (.rational 695008 1) .v)) .g) (.mul (.rational 1383472 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 46524 1) .g) (.mul (.rational 144992 1) .v)) .g)
    (.mul (.rational 506204 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3612 1) .g) (.mul (.rational 20448 1) .v)) .g) (.mul (.rational 126448 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 100 1) .g) (.mul (.rational
    1616 1) .v)) .g) (.mul (.rational 19248 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 97200 1) .f) (.add (.mul (.rational 504792 1) .g) (.mul
    (.rational 134784 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1148112 1) .g) (.mul
    (.rational 651888 1) .v)) .g) (.mul (.rational 64800 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1508340 1) .g) (.mul (.rational 1359456 1) .v)) .g) (.mul (.rational
    324000 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1270800 1) .g) (.mul
    (.rational 1611720 1) .v)) .g) (.mul (.rational 715944 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 719708 1) .g) (.mul (.rational 1211176 1) .v)) .g)
    (.mul (.rational 932736 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 278124 1) .g) (.mul (.rational 612824 1) .v)) .g) (.mul (.rational 807148 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 72296 1) .g) (.mul
    (.rational 217408 1) .v)) .g) (.mul (.rational 492336 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11964 1) .g) (.mul (.rational 54968 1) .v)) .g) (.mul
    (.rational 215164 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1104 1) .g) (.mul (.rational 9504 1) .v)) .g) (.mul (.rational 65496 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 40 1) .g) (.mul (.rational 968 1) .v)) .g)
    (.mul (.rational 12852 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    40 1) .v) .g) (.mul (.rational 1400 1) (.pow .v 2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh3114

namespace FullHigh3115
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  20*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.high0_100_2 e g v+4*SmallGap.ReducedLayers.high0_010_4 e
    g v+4*SmallGap.ReducedLayers.high0_001_3 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.high1_200_2 e g v+3*SmallGap.ReducedLayers.high1_110_4 e g
    v+3*SmallGap.ReducedLayers.high1_101_3 e g v+1*SmallGap.ReducedLayers.high1_011_5 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 3240 1) .e) (.add (.mul (.rational 26820 1) .f) (.add (.mul
    (.rational 32580 1) .g) (.mul (.rational 5400 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    133740 1) .f) (.add (.mul (.rational 219720 1) .g) (.mul (.rational 37440 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 131340 1) .g) (.mul (.rational 40440 1) .v)) .g) (.mul (.rational
    2400 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 444240 1) .f) (.add
    (.mul (.rational 915600 1) .g) (.mul (.rational 156600 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 730800 1) .g) (.mul (.rational 225480 1) .v)) .g) (.mul (.rational 14700 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 284880 1) .g) (.mul (.rational 106080 1)
    .v)) .g) (.mul (.rational 15480 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1029060 1) .f) (.add (.mul (.rational 2540400 1) .g) (.mul (.rational
    438120 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2525040 1) .g) (.mul (.rational 787800
    1) .v)) .g) (.mul (.rational 53880 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1301160 1) .g) (.mul (.rational 494280 1) .v)) .g) (.mul (.rational 75300 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 369420 1) .g) (.mul (.rational
    122880 1) .v)) .g) (.mul (.rational 31680 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1693080 1) .f) (.add (.mul
    (.rational 4851360 1) .g) (.mul (.rational 860400 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 5746320 1) .g) (.mul (.rational 1864800 1) .v)) .g) (.mul (.rational 132000 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3661560 1) .g) (.mul (.rational
    1481160 1) .v)) .g) (.mul (.rational 232560 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1362360 1) .g) (.mul (.rational 508200 1) .v)) .g) (.mul (.rational 134100 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 296880 1) .g) (.mul
    (.rational 57840 1) .v)) .g) (.mul (.rational 23880 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1975680 1) .f)
    (.add (.mul (.rational 6422760 1) .g) (.mul (.rational 1203120 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 8794620 1) .g) (.mul (.rational 3076560 1) .v)) .g) (.mul (.rational 228480
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6641280 1) .g) (.mul (.rational
    3010200 1) .v)) .g) (.mul (.rational 499920 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3034320 1) .g) (.mul (.rational 1381320 1) .v)) .g) (.mul (.rational 392280
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 859800 1) .g)
    (.mul (.rational 273720 1) .v)) .g) (.mul (.rational 126300 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 146580 1) .g) (.mul (.rational 3600 1) .v)) .g) (.mul
    (.rational 10560 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1600560 1) .f) (.add (.mul (.rational
    5801400 1) .g) (.mul (.rational 1178640 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    8980200 1) .g) (.mul (.rational 3499200 1) .v)) .g) (.mul (.rational 281160 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7801920 1) .g) (.mul (.rational 4129920 1) .v))
    .g) (.mul (.rational 758880 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    4198800 1) .g) (.mul (.rational 2456160 1) .v)) .g) (.mul (.rational 801840 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1450680 1) .g) (.mul (.rational
    760920 1) .v)) .g) (.mul (.rational 426240 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 319080 1) .g) (.mul (.rational 108120 1) .v)) .g) (.mul
    (.rational 126300 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    42000 1) .g) (.mul (.rational 1440 1) .v)) .g) (.mul (.rational 23880 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 856440 1) .f) (.add (.mul (.rational 3413520 1) .g) (.mul
    (.rational 768240 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5870880 1) .g) (.mul
    (.rational 2608560 1) .v)) .g) (.mul (.rational 234000 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5739960 1) .g) (.mul (.rational 3634800 1) .v)) .g) (.mul (.rational
    767160 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3533700 1) .g) (.mul
    (.rational 2695680 1) .v)) .g) (.mul (.rational 1050240 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1428240 1) .g) (.mul (.rational 1162440 1) .v)) .g)
    (.mul (.rational 801840 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 379920 1) .g) (.mul (.rational 304920 1) .v)) .g) (.mul (.rational 392280 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 63840 1) .g) (.mul
    (.rational 51240 1) .v)) .g) (.mul (.rational 134100 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6060 1) .g) (.mul (.rational 5760 1) .v)) .g) (.mul
    (.rational 31680 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 272160 1) .f)
    (.add (.mul (.rational 1179360 1) .g) (.mul (.rational 298080 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 2222640 1) .g) (.mul (.rational 1140480 1) .v)) .g) (.mul (.rational 116640
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2403720 1) .g) (.mul (.rational
    1835280 1) .v)) .g) (.mul (.rational 453600 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1656000 1) .g) (.mul (.rational 1632960 1) .v)) .g) (.mul (.rational 767160
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 760320 1) .g)
    (.mul (.rational 897840 1) .v)) .g) (.mul (.rational 758880 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 234480 1) .g) (.mul (.rational 329280 1) .v)) .g)
    (.mul (.rational 499920 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 47040 1) .g) (.mul (.rational 86280 1) .v)) .g) (.mul (.rational 232560 1) (.pow .v
    2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5580 1) .g) (.mul (.rational
    16440 1) .v)) .g) (.mul (.rational 75300 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 300 1) .g) (.mul (.rational 2040 1) .v)) .g) (.mul (.rational 15480 1)
    (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 38880 1) .f) (.add
    (.mul (.rational 181440 1) .g) (.mul (.rational 51840 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 370440 1) .g) (.mul (.rational 220320 1) .v)) .g) (.mul (.rational 25920 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 437040 1) .g) (.mul (.rational 401040 1)
    .v)) .g) (.mul (.rational 116640 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 331200 1) .g) (.mul (.rational 414000 1) .v)) .g) (.mul (.rational 234000 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 168960 1) .g) (.mul
    (.rational 273120 1) .v)) .g) (.mul (.rational 281160 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 58620 1) .g) (.mul (.rational 124560 1) .v)) .g) (.mul
    (.rational 228480 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    13440 1) .g) (.mul (.rational 41400 1) .v)) .g) (.mul (.rational 132000 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1860 1) .g) (.mul (.rational 9960 1) .v))
    .g) (.mul (.rational 53880 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 120 1) .g) (.mul (.rational 1560 1) .v)) .g) (.mul (.rational 14700 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.mul (.rational 120 1) .v) .g) (.mul (.rational 2400
    1) (.pow .v 2))) (.pow .g 8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh3115

end
end SPR.N6.Tail.CoreEndpoint
