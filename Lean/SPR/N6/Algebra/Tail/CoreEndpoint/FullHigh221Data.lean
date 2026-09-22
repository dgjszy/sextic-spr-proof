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

namespace FullHigh2210
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    3*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e^2*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^5+12*SmallGap.ReducedLayers.high0_010_0 e g v*e^3+6*SmallGap.ReducedLayers.high0_001_0 e g
    v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_0 e g v*e^5+6*SmallGap.ReducedLayers.high1_110_0 e g
    v*e^3+3*SmallGap.ReducedLayers.high1_101_0 e g v*e^4+3*SmallGap.ReducedLayers.high1_020_0 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_011_0 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 3900 1) .e) (.add (.mul (.rational 39264 1) .f) (.add (.mul
    (.rational 49506 1) .g) (.mul (.rational 7104 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    244374 1) .f) (.add (.mul (.rational 419664 1) .g) (.mul (.rational 65550 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 260466 1) .g) (.mul (.rational 81984 1) .v)) .g) (.mul (.rational
    3300 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1054728 1) .f)
    (.add (.mul (.rational 2289219 1) .g) (.mul (.rational 375414 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 1911312 1) .g) (.mul (.rational 643422 1) .v)) .g) (.mul (.rational 28296 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 766881 1) .g) (.mul (.rational
    393366 1) .v)) .g) (.mul (.rational 36078 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 3354905 1) .f) (.add (.mul (.rational 8793531 1) .g) (.mul
    (.rational 1494113 1) .v))) .f) (.add (.mul (.add (.mul (.rational 9215964 1) .g) (.mul
    (.rational 3257475 1) .v)) .g) (.mul (.rational 150492 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4931807 1) .g) (.mul (.rational 2707113 1) .v)) .g) (.mul (.rational
    264636 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1416945 1) .g) (.mul
    (.rational 1070045 1) .v)) .g) (.mul (.rational 165120 1) (.pow .v 2))) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8154887 1) .f) (.add
    (.mul (.rational 25035291 1) .g) (.mul (.rational 4383801 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 31546044 1) .g) (.mul (.rational 11615634 1) .v)) .g) (.mul (.rational 555277 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 21073916 1) .g) (.mul (.rational
    12227226 1) .v)) .g) (.mul (.rational 1249500 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8022633 1) .g) (.mul (.rational 6525912 1) .v)) .g) (.mul (.rational
    1069389 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1728117 1)
    .g) (.mul (.rational 1858173 1) .v)) .g) (.mul (.rational 434350 1) (.pow .v 2))) (.pow .g
    3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    15493618 1) .f) (.add (.mul (.rational 54500985 1) .g) (.mul (.rational 9814629 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 80179842 1) .g) (.mul (.rational 30643785 1) .v)) .g) (.mul
    (.rational 1505997 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 64144027 1)
    .g) (.mul (.rational 39095156 1) .v)) .g) (.mul (.rational 4141284 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 30338379 1) .g) (.mul (.rational 26317386 1) .v)) .g)
    (.mul (.rational 4523397 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8612088 1) .g) (.mul (.rational 10053717 1) .v)) .g) (.mul (.rational 2506170 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1413393 1) .g) (.mul
    (.rational 2169029 1) .v)) .g) (.mul (.rational 742440 1) (.pow .v 2))) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    23327142 1) .f) (.add (.mul (.rational 92482621 1) .g) (.mul (.rational 17116175 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 155513592 1) .g) (.mul (.rational 61581372 1) .v)) .g)
    (.mul (.rational 3102528 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    144807951 1) .g) (.mul (.rational 92387049 1) .v)) .g) (.mul (.rational 10103844 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 81714262 1) .g) (.mul (.rational
    75139144 1) .v)) .g) (.mul (.rational 13461583 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 28693113 1) .g) (.mul (.rational 36037443 1) .v)) .g) (.mul
    (.rational 9482814 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6175272 1) .g) (.mul (.rational 10363650 1) .v)) .g) (.mul (.rational 3805239 1) (.pow .v 2)))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 766059 1) .g) (.mul (.rational
    1727189 1) .v)) .g) (.mul (.rational 868396 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    28036842 1) .f) (.add (.mul (.rational 123678203 1) .g) (.mul (.rational 23521804 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 233926768 1) .g) (.mul (.rational 95881646 1) .v)) .g)
    (.mul (.rational 4945993 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    248348792 1) .g) (.mul (.rational 165475761 1) .v)) .g) (.mul (.rational 18644682 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 162616528 1) .g) (.mul (.rational
    157859927 1) .v)) .g) (.mul (.rational 29370604 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 67876060 1) .g) (.mul (.rational 91139632 1) .v)) .g) (.mul
    (.rational 25158775 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17992919 1) .g) (.mul (.rational 32738592 1) .v)) .g) (.mul (.rational 12767019 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2912945 1) .g) (.mul
    (.rational 7224169 1) .v)) .g) (.mul (.rational 3912409 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 262983 1) .g) (.mul (.rational 924563 1) .v)) .g)
    (.mul (.rational 702498 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    26954214 1) .f) (.add (.mul (.rational 130946446 1) .g) (.mul (.rational 25593218 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 275116610 1) .g) (.mul (.rational 116639123 1) .v)) .g)
    (.mul (.rational 6156762 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    327836273 1) .g) (.mul (.rational 227730316 1) .v)) .g) (.mul (.rational 26399342 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 244105335 1) .g) (.mul (.rational
    249374288 1) .v)) .g) (.mul (.rational 48059555 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 117852989 1) .g) (.mul (.rational 168356193 1) .v)) .g) (.mul
    (.rational 48538568 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 36995222 1) .g) (.mul (.rational 72491313 1) .v)) .g) (.mul (.rational 29815763 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7344209 1) .g) (.mul
    (.rational 19868646 1) .v)) .g) (.mul (.rational 11474606 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 860823 1) .g) (.mul (.rational 3343090 1) .v)) .g)
    (.mul (.rational 2739518 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 51453 1) .g) (.mul (.rational 316691 1) .v)) .g) (.mul (.rational 384642 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20665110 1) .f) (.add (.mul
    (.rational 109639094 1) .g) (.mul (.rational 22021792 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 253318396 1) .g) (.mul (.rational 111014919 1) .v)) .g) (.mul (.rational 5993388 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 334693542 1) .g) (.mul (.rational
    242008323 1) .v)) .g) (.mul (.rational 28830010 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 279079831 1) .g) (.mul (.rational 299225802 1) .v)) .g) (.mul
    (.rational 59602104 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 152784709 1) .g) (.mul (.rational 231256563 1) .v)) .g) (.mul (.rational 69383112
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 55284268 1) .g)
    (.mul (.rational 116009262 1) .v)) .g) (.mul (.rational 50048865 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 12942587 1) .g) (.mul (.rational 37928411 1)
    .v)) .g) (.mul (.rational 23179132 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1850946 1) .g) (.mul (.rational 7877646 1) .v)) .g) (.mul (.rational 6893745
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 142768 1) .g)
    (.mul (.rational 973611 1) .v)) .g) (.mul (.rational 1273604 1) (.pow .v 2))) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4329 1) .g) (.mul (.rational 62139 1) .v)) .g)
    (.mul (.rational 134596 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 12528048 1) .f) (.add (.mul (.rational 72086089 1) .g) (.mul (.rational
    14877644 1) .v))) .f) (.add (.mul (.add (.mul (.rational 181665794 1) .g) (.mul (.rational
    82234933 1) .v)) .g) (.mul (.rational 4538022 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 263533091 1) .g) (.mul (.rational 198053618 1) .v)) .g) (.mul (.rational
    24215633 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 243148883 1) .g)
    (.mul (.rational 272938349 1) .v)) .g) (.mul (.rational 56070691 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 148688805 1) .g) (.mul (.rational 237599153
    1) .v)) .g) (.mul (.rational 73939741 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 60816368 1) .g) (.mul (.rational 136000061 1) .v)) .g) (.mul (.rational
    61252786 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 16348476
    1) .g) (.mul (.rational 51579613 1) .v)) .g) (.mul (.rational 33143303 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2744119 1) .g) (.mul (.rational 12708207
    1) .v)) .g) (.mul (.rational 11780964 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 256719 1) .g) (.mul (.rational 1925187 1) .v)) .g) (.mul (.rational
    2687417 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 9968 1)
    .g) (.mul (.rational 158902 1) .v)) .g) (.mul (.rational 369643 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 5237 1) .v) .g) (.mul (.rational 26726 1) (.pow .v 2)))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5915433 1)
    .f) (.add (.mul (.rational 36699629 1) .g) (.mul (.rational 7780369 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 100197802 1) .g) (.mul (.rational 46809688 1) .v)) .g) (.mul (.rational
    2638092 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 158317795 1) .g) (.mul
    (.rational 123473042 1) .v)) .g) (.mul (.rational 15472072 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 160088527 1) .g) (.mul (.rational 187691142 1) .v)) .g)
    (.mul (.rational 39678391 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 108073842 1) .g) (.mul (.rational 181713836 1) .v)) .g) (.mul (.rational 58466449
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 49233329 1) .g)
    (.mul (.rational 116812594 1) .v)) .g) (.mul (.rational 54685788 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 14906185 1) .g) (.mul (.rational 50354795 1)
    .v)) .g) (.mul (.rational 33829656 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2860001 1) .g) (.mul (.rational 14319755 1) .v)) .g) (.mul (.rational
    13965687 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 312235 1)
    .g) (.mul (.rational 2556878 1) .v)) .g) (.mul (.rational 3778508 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 14594 1) .g) (.mul (.rational 256557 1) .v))
    .g) (.mul (.rational 635582 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 10816 1) .v) .g) (.mul (.rational 59093 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 2238 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 2123039 1) .f) (.add (.mul (.rational 14131939 1) .g) (.mul
    (.rational 3075925 1) .v))) .f) (.add (.mul (.add (.mul (.rational 41563586 1) .g) (.mul
    (.rational 20019339 1) .v)) .g) (.mul (.rational 1150887 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 71060906 1) .g) (.mul (.rational 57420810 1) .v)) .g) (.mul
    (.rational 7361249 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 78139963
    1) .g) (.mul (.rational 95463096 1) .v)) .g) (.mul (.rational 20717151 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 57692895 1) .g) (.mul (.rational
    101745984 1) .v)) .g) (.mul (.rational 33737409 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 28937329 1) .g) (.mul (.rational 72549183 1) .v)) .g) (.mul
    (.rational 35155735 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9725140 1) .g) (.mul (.rational 35000278 1) .v)) .g) (.mul (.rational 24456866 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2092618 1) .g) (.mul
    (.rational 11261694 1) .v)) .g) (.mul (.rational 11482668 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 259720 1) .g) (.mul (.rational 2307399 1) .v)) .g)
    (.mul (.rational 3583981 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14065 1) .g) (.mul (.rational 270824 1) .v)) .g) (.mul (.rational 708980 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 13740 1) .v) .g) (.mul (.rational
    79743 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 3827 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 557114 1)
    .f) (.add (.mul (.rational 3962345 1) .g) (.mul (.rational 884845 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 12494536 1) .g) (.mul (.rational 6197588 1) .v)) .g) (.mul (.rational
    362875 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 22988571 1) .g) (.mul
    (.rational 19213903 1) .v)) .g) (.mul (.rational 2514766 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 27314780 1) .g) (.mul (.rational 34692078 1) .v)) .g) (.mul
    (.rational 7707845 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    21890393 1) .g) (.mul (.rational 40369586 1) .v)) .g) (.mul (.rational 13747920 1) (.pow .v
    2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11979077 1) .g) (.mul
    (.rational 31614009 1) .v)) .g) (.mul (.rational 15790168 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4418709 1) .g) (.mul (.rational 16864047 1) .v)) .g)
    (.mul (.rational 12194273 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1051168 1) .g) (.mul (.rational 6047664 1) .v)) .g) (.mul (.rational 6408478 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 145558 1) .g) (.mul
    (.rational 1394507 1) .v)) .g) (.mul (.rational 2261318 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8901 1) .g) (.mul (.rational 186517 1) .v)) .g) (.mul
    (.rational 512157 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 10968
    1) .v) .g) (.mul (.rational 67091 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    3845 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 100198 1) .f) (.add (.mul (.rational 758803 1) .g) (.mul
    (.rational 173711 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2555342 1) .g) (.mul
    (.rational 1303685 1) .v)) .g) (.mul (.rational 77586 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5036901 1) .g) (.mul (.rational 4346787 1) .v)) .g) (.mul (.rational
    579365 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6433273 1) .g) (.mul
    (.rational 8474635 1) .v)) .g) (.mul (.rational 1921670 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5562112 1) .g) (.mul (.rational 10694360 1) .v)) .g)
    (.mul (.rational 3726377 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3296658 1) .g) (.mul (.rational 9124809 1) .v)) .g) (.mul (.rational 4676530 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1322897 1) .g) (.mul
    (.rational 5330780 1) .v)) .g) (.mul (.rational 3967990 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 344111 1) .g) (.mul (.rational 2105857 1) .v)) .g)
    (.mul (.rational 2305225 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 52423 1) .g) (.mul (.rational 538545 1) .v)) .g) (.mul (.rational 905585 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3554 1) .g) (.mul
    (.rational 80550 1) .v)) .g) (.mul (.rational 230282 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 5353 1) .v) .g) (.mul (.rational 34235 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 2259 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10944 1) .f) (.add (.mul
    (.rational 88005 1) .g) (.mul (.rational 20634 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    315514 1) .g) (.mul (.rational 165339 1) .v)) .g) (.mul (.rational 9975 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 663894 1) .g) (.mul (.rational 590484 1) .v)) .g)
    (.mul (.rational 79894 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    907714 1) .g) (.mul (.rational 1237268 1) .v)) .g) (.mul (.rational 285259 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 842552 1) .g) (.mul (.rational
    1683996 1) .v)) .g) (.mul (.rational 597726 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 537750 1) .g) (.mul (.rational 1555506 1) .v)) .g) (.mul
    (.rational 813844 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    233114 1) .g) (.mul (.rational 987664 1) .v)) .g) (.mul (.rational 752378 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 65734 1) .g) (.mul (.rational
    425844 1) .v)) .g) (.mul (.rational 478404 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 10899 1) .g) (.mul (.rational 119418 1) .v)) .g) (.mul (.rational
    206714 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 808 1) .g)
    (.mul (.rational 19691 1) .v)) .g) (.mul (.rational 58141 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 1452 1) .v) .g) (.mul (.rational 9624 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 713 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 540 1) .f) (.add (.mul
    (.rational 4602 1) .g) (.mul (.rational 1104 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    17526 1) .g) (.mul (.rational 9420 1) .v)) .g) (.mul (.rational 574 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 39265 1) .g) (.mul (.rational 35924 1) .v)) .g) (.mul
    (.rational 4913 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 57295 1)
    .g) (.mul (.rational 80610 1) .v)) .g) (.mul (.rational 18803 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 56889 1) .g) (.mul (.rational 117838 1) .v)) .g)
    (.mul (.rational 42365 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 38927 1) .g) (.mul (.rational 117250 1) .v)) .g) (.mul (.rational 62223 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 18131 1) .g) (.mul (.rational
    80430 1) .v)) .g) (.mul (.rational 62251 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5505 1) .g) (.mul (.rational 37574 1) .v)) .g) (.mul (.rational 42973
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 985 1) .g) (.mul
    (.rational 11450 1) .v)) .g) (.mul (.rational 20223 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 79 1) .g) (.mul (.rational 2058 1) .v)) .g) (.mul
    (.rational 6215 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 166 1)
    .v) .g) (.mul (.rational 1128 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 92 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2210

namespace FullHigh2211
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsHigh0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsHigh1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    3*SmallGap.PolarCoefficientsHigh0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(60*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^4+12*SmallGap.ReducedLayers.high0_100_1 e g v*e^5+36*SmallGap.ReducedLayers.high0_010_0 e
    g v*e^2+12*SmallGap.ReducedLayers.high0_010_1 e g v*e^3+24*SmallGap.ReducedLayers.high0_001_0
    e g v*e^3+6*SmallGap.ReducedLayers.high0_001_1 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.high1_200_0 e g v*e^4+3*SmallGap.ReducedLayers.high1_200_1 e
    g v*e^5+18*SmallGap.ReducedLayers.high1_110_0 e g v*e^2+6*SmallGap.ReducedLayers.high1_110_1 e
    g v*e^3+12*SmallGap.ReducedLayers.high1_101_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_101_1 e
    g v*e^4+3*SmallGap.ReducedLayers.high1_020_0 e g v+3*SmallGap.ReducedLayers.high1_020_1 e g
    v*e^1+6*SmallGap.ReducedLayers.high1_011_0 e g v*e^1+3*SmallGap.ReducedLayers.high1_011_1 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 27870 1) .e) (.add (.mul (.rational 268572 1) .f) (.add (.mul (.rational
    335988 1) .g) (.mul (.rational 50232 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 1603473
    1) .f) (.add (.mul (.rational 2732160 1) .g) (.mul (.rational 439167 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1681725 1) .g) (.mul (.rational 540126 1) .v)) .g) (.mul (.rational
    23130 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 6641304 1) .f)
    (.add (.mul (.rational 14303703 1) .g) (.mul (.rational 2390193 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 11848266 1) .g) (.mul (.rational 4025166 1) .v)) .g) (.mul (.rational 186288
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4719765 1) .g) (.mul (.rational
    2404749 1) .v)) .g) (.mul (.rational 232254 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 20250612 1) .f) (.add (.mul (.rational 52675926 1) .g)
    (.mul (.rational 9052371 1) .v))) .f) (.add (.mul (.add (.mul (.rational 54790386 1) .g) (.mul
    (.rational 19394757 1) .v)) .g) (.mul (.rational 933732 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 29123088 1) .g) (.mul (.rational 15770967 1) .v)) .g) (.mul
    (.rational 1603170 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8327394
    1) .g) (.mul (.rational 6070491 1) .v)) .g) (.mul (.rational 967272 1) (.pow .v 2))) (.pow .g
    2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 47077031 1)
    .f) (.add (.mul (.rational 143436255 1) .g) (.mul (.rational 25273213 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 179424540 1) .g) (.mul (.rational 65849750 1) .v)) .g) (.mul (.rational
    3253517 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 119101682 1) .g) (.mul
    (.rational 67940058 1) .v)) .g) (.mul (.rational 7150029 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 45140187 1) .g) (.mul (.rational 35419822 1) .v)) .g) (.mul
    (.rational 5931609 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9712191 1) .g) (.mul (.rational 9824165 1) .v)) .g) (.mul (.rational 2313023 1) (.pow .v 2)))
    (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 85236694 1) .f) (.add (.mul (.rational 297577253 1) .g) (.mul (.rational 53760779
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 434679299 1) .g) (.mul (.rational 165210725 1)
    .v)) .g) (.mul (.rational 8339243 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 345635731 1) .g) (.mul (.rational 206969134 1) .v)) .g) (.mul (.rational 22425602
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 162796985 1) .g) (.mul
    (.rational 136499378 1) .v)) .g) (.mul (.rational 23822724 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 46164290 1) .g) (.mul (.rational 51008315 1) .v)) .g)
    (.mul (.rational 12754508 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7603362 1) .g) (.mul (.rational 10767697 1) .v)) .g) (.mul (.rational 3628529 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 121696886 1) .f) (.add (.mul (.rational 478840037 1) .g)
    (.mul (.rational 88804413 1) .v))) .f) (.add (.mul (.add (.mul (.rational 799557860 1) .g)
    (.mul (.rational 314808724 1) .v)) .g) (.mul (.rational 16222148 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 740132168 1) .g) (.mul (.rational 464613455 1) .v)) .g)
    (.mul (.rational 51766609 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    415987487 1) .g) (.mul (.rational 371236624 1) .v)) .g) (.mul (.rational 67327876 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 145922468 1) .g) (.mul
    (.rational 174816631 1) .v)) .g) (.mul (.rational 46116014 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 31510389 1) .g) (.mul (.rational 49409372 1) .v)) .g)
    (.mul (.rational 17935762 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3945627 1) .g) (.mul (.rational 8123197 1) .v)) .g) (.mul (.rational 3965689 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 137799166 1) .f) (.add (.mul (.rational
    603252313 1) .g) (.mul (.rational 115014651 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1133045670 1) .g) (.mul (.rational 462454181 1) .v)) .g) (.mul (.rational 24347487 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1195903179 1) .g) (.mul (.rational
    786500011 1) .v)) .g) (.mul (.rational 90141295 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 779988859 1) .g) (.mul (.rational 738928069 1) .v)) .g) (.mul
    (.rational 139132677 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 325220184 1) .g) (.mul (.rational 420209211 1) .v)) .g) (.mul (.rational 116530022
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 86475203 1) .g)
    (.mul (.rational 148905793 1) .v)) .g) (.mul (.rational 57755305 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 14122626 1) .g) (.mul (.rational 32537593 1)
    .v)) .g) (.mul (.rational 17308953 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1295892 1) .g) (.mul (.rational 4152745 1) .v)) .g) (.mul (.rational 3057143
    1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 123732038 1) .f) (.add (.mul
    (.rational 596482763 1) .g) (.mul (.rational 117064413 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1244403687 1) .g) (.mul (.rational 526812808 1) .v)) .g) (.mul (.rational 28371322
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1474189191 1) .g) (.mul
    (.rational 1015154414 1) .v)) .g) (.mul (.rational 119757192 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1093284010 1) .g) (.mul (.rational 1097065558 1) .v)) .g)
    (.mul (.rational 214349379 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 527172791 1) .g) (.mul (.rational 731435634 1) .v)) .g) (.mul (.rational 212679637
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 165924676 1) .g)
    (.mul (.rational 311627484 1) .v)) .g) (.mul (.rational 128384566 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 33203594 1) .g) (.mul (.rational 84838096 1)
    .v)) .g) (.mul (.rational 48668922 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3951143 1) .g) (.mul (.rational 14272082 1) .v)) .g) (.mul (.rational
    11511003 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 242013 1)
    .g) (.mul (.rational 1365151 1) .v)) .g) (.mul (.rational 1617745 1) (.pow .v 2))) (.pow .g
    7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 87578881 1) .f) (.add (.mul (.rational
    461018629 1) .g) (.mul (.rational 93223614 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1057561539 1) .g) (.mul (.rational 464497355 1) .v)) .g) (.mul (.rational 25613085 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1388914482 1) .g) (.mul (.rational
    1000691533 1) .v)) .g) (.mul (.rational 121551920 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1153257993 1) .g) (.mul (.rational 1223135396 1) .v)) .g) (.mul
    (.rational 247801864 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 630358922 1) .g) (.mul (.rational 935470297 1) .v)) .g) (.mul (.rational 284498454
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 228568886 1) .g)
    (.mul (.rational 465404730 1) .v)) .g) (.mul (.rational 202637606 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 53890985 1) .g) (.mul (.rational 151481967
    1) .v)) .g) (.mul (.rational 92937662 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7813766 1) .g) (.mul (.rational 31513556 1) .v)) .g) (.mul (.rational
    27524454 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 616428 1)
    .g) (.mul (.rational 3936506 1) .v)) .g) (.mul (.rational 5109558 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 19341 1) .g) (.mul (.rational 257101 1) .v))
    .g) (.mul (.rational 549661 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 48244760 1) .f) (.add (.mul (.rational 275379470 1) .g) (.mul
    (.rational 57404010 1) .v))) .f) (.add (.mul (.add (.mul (.rational 688888827 1) .g) (.mul
    (.rational 313869124 1) .v)) .g) (.mul (.rational 17729052 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 993086449 1) .g) (.mul (.rational 747829946 1) .v)) .g) (.mul
    (.rational 93513365 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    912094050 1) .g) (.mul (.rational 1020136514 1) .v)) .g) (.mul (.rational 214046889 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 556587363 1) .g) (.mul
    (.rational 880159127 1) .v)) .g) (.mul (.rational 279226372 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 227957645 1) .g) (.mul (.rational 500456700 1) .v))
    .g) (.mul (.rational 229218948 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 61645549 1) .g) (.mul (.rational 189244223 1) .v)) .g) (.mul (.rational
    123296028 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 10473267
    1) .g) (.mul (.rational 46750890 1) .v)) .g) (.mul (.rational 43797457 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 999753 1) .g) (.mul (.rational 7159390 1)
    .v)) .g) (.mul (.rational 10064404 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 40035 1) .g) (.mul (.rational 604134 1) .v)) .g) (.mul (.rational 1410276 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 20666 1) .v) .g) (.mul
    (.rational 105417 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 20235748 1) .f) (.add (.mul (.rational 124510327 1) .g) (.mul
    (.rational 26758326 1) .v))) .f) (.add (.mul (.add (.mul (.rational 337340700 1) .g) (.mul
    (.rational 159354548 1) .v)) .g) (.mul (.rational 9219593 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 529478225 1) .g) (.mul (.rational 416175904 1) .v)) .g) (.mul
    (.rational 53533509 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    532683700 1) .g) (.mul (.rational 626800082 1) .v)) .g) (.mul (.rational 135979665 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 358600990 1) .g) (.mul
    (.rational 602064481 1) .v)) .g) (.mul (.rational 198667419 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 163420006 1) .g) (.mul (.rational 384857873 1) .v))
    .g) (.mul (.rational 184605974 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 49706118 1) .g) (.mul (.rational 165550369 1) .v)) .g) (.mul (.rational
    113821266 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9634399
    1) .g) (.mul (.rational 47220965 1) .v)) .g) (.mul (.rational 47063690 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1070280 1) .g) (.mul (.rational 8518552
    1) .v)) .g) (.mul (.rational 12844939 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 51387 1) .g) (.mul (.rational 872192 1) .v)) .g) (.mul (.rational
    2200989 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 38028 1) .v) .g)
    (.mul (.rational 211171 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 8393 1)
    (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 6234527 1) .f) (.add (.mul (.rational 41145950 1) .g) (.mul (.rational 9113778 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 120041889 1) .g) (.mul (.rational 58742830 1)
    .v)) .g) (.mul (.rational 3478719 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 203765629 1) .g) (.mul (.rational 166912802 1) .v)) .g) (.mul (.rational 22057411
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 222773683 1) .g) (.mul
    (.rational 275101144 1) .v)) .g) (.mul (.rational 61577264 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 163869442 1) .g) (.mul (.rational 291069019 1) .v))
    .g) (.mul (.rational 99589977 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 82122716 1) .g) (.mul (.rational 206478988 1) .v)) .g) (.mul (.rational 103275174
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 27681800 1) .g)
    (.mul (.rational 99424106 1) .v)) .g) (.mul (.rational 71722799 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6004081 1) .g) (.mul (.rational 32078410 1) .v))
    .g) (.mul (.rational 33770311 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 755943 1) .g) (.mul (.rational 6632627 1) .v)) .g) (.mul (.rational 10637566 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 41868 1) .g) (.mul
    (.rational 792340 1) .v)) .g) (.mul (.rational 2141778 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 41380 1) .v) .g) (.mul (.rational 247915 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 12422 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1327536 1) .f) (.add (.mul
    (.rational 9357682 1) .g) (.mul (.rational 2134972 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 29255601 1) .g) (.mul (.rational 14813866 1) .v)) .g) (.mul (.rational 896870 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 53405823 1) .g) (.mul (.rational
    45510472 1) .v)) .g) (.mul (.rational 6167692 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 63035144 1) .g) (.mul (.rational 81485432 1) .v)) .g) (.mul (.rational
    18772176 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 50272440
    1) .g) (.mul (.rational 94146292 1) .v)) .g) (.mul (.rational 33289993 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 27447048 1) .g) (.mul (.rational 73349195
    1) .v)) .g) (.mul (.rational 38090453 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10135555 1) .g) (.mul (.rational 39041473 1) .v)) .g) (.mul (.rational
    29390961 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2424504
    1) .g) (.mul (.rational 14027990 1) .v)) .g) (.mul (.rational 15496838 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 339468 1) .g) (.mul (.rational 3258994 1)
    .v)) .g) (.mul (.rational 5517175 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 21135 1) .g) (.mul (.rational 442365 1) .v)) .g) (.mul (.rational 1269999 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 26645 1) .v) .g) (.mul
    (.rational 170667 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 10152 1) (.pow .v
    2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 174060 1) .f) (.add (.mul (.rational 1305784 1) .g) (.mul (.rational 306596
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 4356959 1) .g) (.mul (.rational 2279790 1)
    .v)) .g) (.mul (.rational 140868 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8513700 1) .g) (.mul (.rational 7533120 1) .v)) .g) (.mul (.rational 1044626 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10790033 1) .g) (.mul
    (.rational 14563674 1) .v)) .g) (.mul (.rational 3443241 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9270949 1) .g) (.mul (.rational 18244248 1) .v)) .g)
    (.mul (.rational 6643045 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5472804 1) .g) (.mul (.rational 15480528 1) .v)) .g) (.mul (.rational 8309832 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2193934 1) .g) (.mul
    (.rational 9017490 1) .v)) .g) (.mul (.rational 7046814 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 572345 1) .g) (.mul (.rational 3564930 1) .v)) .g)
    (.mul (.rational 4106891 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 87873 1) .g) (.mul (.rational 916824 1) .v)) .g) (.mul (.rational 1626561 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6039 1) .g) (.mul
    (.rational 138758 1) .v)) .g) (.mul (.rational 419670 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 9402 1) .v) .g) (.mul (.rational 63802 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 4346 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10548 1) .f) (.add (.mul
    (.rational 83970 1) .g) (.mul (.rational 20268 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    298034 1) .g) (.mul (.rational 160902 1) .v)) .g) (.mul (.rational 10124 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 621018 1) .g) (.mul (.rational 569388 1) .v)) .g)
    (.mul (.rational 80568 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    841413 1) .g) (.mul (.rational 1182696 1) .v)) .g) (.mul (.rational 286004 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 774880 1) .g) (.mul (.rational
    1597174 1) .v)) .g) (.mul (.rational 596462 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 491595 1) .g) (.mul (.rational 1466040 1) .v)) .g) (.mul
    (.rational 809633 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    212394 1) .g) (.mul (.rational 927162 1) .v)) .g) (.mul (.rational 748000 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 59903 1) .g) (.mul (.rational
    399488 1) .v)) .g) (.mul (.rational 476923 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9978 1) .g) (.mul (.rational 112446 1) .v)) .g) (.mul (.rational
    207574 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 747 1) .g)
    (.mul (.rational 18714 1) .v)) .g) (.mul (.rational 59147 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 1402 1) .v) .g) (.mul (.rational 9988 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 761 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2211

namespace FullHigh2212
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsHigh1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsHigh2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsHigh0.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    9*SmallGap.PolarCoefficientsHigh0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    18*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(120*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^3+60*SmallGap.ReducedLayers.high0_100_1 e g v*e^4+12*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^5+36*SmallGap.ReducedLayers.high0_010_0 e g v*e^1+36*SmallGap.ReducedLayers.high0_010_1
    e g v*e^2+12*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^3+36*SmallGap.ReducedLayers.high0_001_0 e g v*e^2+24*SmallGap.ReducedLayers.high0_001_1 e
    g v*e^3+6*SmallGap.ReducedLayers.high0_001_2 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(30*SmallGap.ReducedLayers.high1_200_0 e g v*e^3+15*SmallGap.ReducedLayers.high1_200_1 e
    g v*e^4+3*SmallGap.ReducedLayers.high1_200_2 e g v*e^5+18*SmallGap.ReducedLayers.high1_110_0 e
    g v*e^1+18*SmallGap.ReducedLayers.high1_110_1 e g v*e^2+6*SmallGap.ReducedLayers.high1_110_2 e
    g v*e^3+18*SmallGap.ReducedLayers.high1_101_0 e g v*e^2+12*SmallGap.ReducedLayers.high1_101_1
    e g v*e^3+3*SmallGap.ReducedLayers.high1_101_2 e g v*e^4+3*SmallGap.ReducedLayers.high1_020_1
    e g v+3*SmallGap.ReducedLayers.high1_020_2 e g v*e^1+3*SmallGap.ReducedLayers.high1_011_0 e g
    v+6*SmallGap.ReducedLayers.high1_011_1 e g v*e^1+3*SmallGap.ReducedLayers.high1_011_2 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    85710 1) .e) (.add (.mul (.rational 794508 1) .f) (.add (.mul (.rational 986772 1) .g) (.mul
    (.rational 152748 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 4559697 1) .f) (.add (.mul
    (.rational 7709340 1) .g) (.mul (.rational 1270101 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 4706697 1) .g) (.mul (.rational 1533810 1) .v)) .g) (.mul (.rational 69750 1) (.pow
    .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 18115437 1) .f) (.add (.mul
    (.rational 38702082 1) .g) (.mul (.rational 6571917 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 31789905 1) .g) (.mul (.rational 10847565 1) .v)) .g) (.mul (.rational 529512 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 12565284 1) .g) (.mul (.rational
    6305343 1) .v)) .g) (.mul (.rational 644016 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 52806109 1) .f) (.add (.mul (.rational 136213704 1) .g)
    (.mul (.rational 23630476 1) .v))) .f) (.add (.mul (.add (.mul (.rational 140477565 1) .g)
    (.mul (.rational 49592397 1) .v)) .g) (.mul (.rational 2500200 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 74081068 1) .g) (.mul (.rational 39252405 1) .v)) .g) (.mul
    (.rational 4175676 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 21054516
    1) .g) (.mul (.rational 14590159 1) .v)) .g) (.mul (.rational 2417928 1) (.pow .v 2))) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 116811604
    1) .f) (.add (.mul (.rational 352840249 1) .g) (.mul (.rational 62484250 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 437571930 1) .g) (.mul (.rational 159501029 1) .v)) .g) (.mul
    (.rational 8198395 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 288164530 1)
    .g) (.mul (.rational 160398858 1) .v)) .g) (.mul (.rational 17514378 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 108544282 1) .g) (.mul (.rational 81006226 1) .v))
    .g) (.mul (.rational 13967025 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23284137 1) .g) (.mul (.rational 21624980 1) .v)) .g) (.mul (.rational 5150548 1)
    (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 200039513 1) .f) (.add (.mul (.rational 692177610 1) .g) (.mul
    (.rational 125417380 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1002282454 1) .g) (.mul
    (.rational 377883409 1) .v)) .g) (.mul (.rational 19743830 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 790665371 1) .g) (.mul (.rational 462302237 1) .v)) .g) (.mul
    (.rational 51669512 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    370113498 1) .g) (.mul (.rational 296424766 1) .v)) .g) (.mul (.rational 52958469 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 104623741 1) .g) (.mul
    (.rational 107232148 1) .v)) .g) (.mul (.rational 27047090 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 17256711 1) .g) (.mul (.rational 21857249 1) .v)) .g)
    (.mul (.rational 7241507 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 268067737 1) .f) (.add (.mul
    (.rational 1045147135 1) .g) (.mul (.rational 194413252 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1729790821 1) .g) (.mul (.rational 676485364 1) .v)) .g) (.mul (.rational 35981184
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1588559612 1) .g) (.mul
    (.rational 977161292 1) .v)) .g) (.mul (.rational 112002026 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 887355211 1) .g) (.mul (.rational 761895759 1) .v)) .g)
    (.mul (.rational 141243537 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 310277755 1) .g) (.mul (.rational 349250320 1) .v)) .g) (.mul (.rational 93140754
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 67084783 1) .g)
    (.mul (.rational 96024668 1) .v)) .g) (.mul (.rational 34631483 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8462034 1) .g) (.mul (.rational 15404912 1) .v))
    .g) (.mul (.rational 7295166 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 282110285 1) .f)
    (.add (.mul (.rational 1223464925 1) .g) (.mul (.rational 234430028 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 2277433907 1) .g) (.mul (.rational 926465004 1) .v)) .g) (.mul
    (.rational 50323874 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2384707017
    1) .g) (.mul (.rational 1545653186 1) .v)) .g) (.mul (.rational 182301894 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1545815808 1) .g) (.mul (.rational
    1422045999 1) .v)) .g) (.mul (.rational 274295092 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 642462176 1) .g) (.mul (.rational 791141795 1) .v)) .g)
    (.mul (.rational 223111684 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 171018802 1) .g) (.mul (.rational 274488284 1) .v)) .g) (.mul (.rational 107118093
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 28128736 1) .g)
    (.mul (.rational 58963126 1) .v)) .g) (.mul (.rational 31134208 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2619756 1) .g) (.mul (.rational 7464005 1) .v))
    .g) (.mul (.rational 5381171 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    232432699 1) .f) (.add (.mul (.rational 1109766850 1) .g) (.mul (.rational 219669148 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 2294247949 1) .g) (.mul (.rational 972972305 1) .v))
    .g) (.mul (.rational 54153580 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2696165553 1) .g) (.mul (.rational 1843188705 1) .v)) .g) (.mul (.rational 224403781 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1987224571 1) .g) (.mul (.rational
    1956748228 1) .v)) .g) (.mul (.rational 393545520 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 955093091 1) .g) (.mul (.rational 1281753336 1) .v)) .g)
    (.mul (.rational 382093432 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 300898271 1) .g) (.mul (.rational 537512840 1) .v)) .g) (.mul (.rational 225766007
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 60625029 1) .g)
    (.mul (.rational 144710271 1) .v)) .g) (.mul (.rational 84080685 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7319890 1) .g) (.mul (.rational 24286204 1)
    .v)) .g) (.mul (.rational 19722201 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 459405 1) .g) (.mul (.rational 2349032 1) .v)) .g) (.mul (.rational 2796040
    1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 148380404 1) .f)
    (.add (.mul (.rational 773402663 1) .g) (.mul (.rational 158481473 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1757756603 1) .g) (.mul (.rational 778219001 1) .v)) .g) (.mul
    (.rational 44500710 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2289749054
    1) .g) (.mul (.rational 1651381276 1) .v)) .g) (.mul (.rational 207973618 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1889359668 1) .g) (.mul (.rational
    1988116744 1) .v)) .g) (.mul (.rational 417290841 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1029188433 1) .g) (.mul (.rational 1499068119 1) .v)) .g)
    (.mul (.rational 471666720 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 373449285 1) .g) (.mul (.rational 737122356 1) .v)) .g) (.mul (.rational 331407558
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 88613977 1) .g)
    (.mul (.rational 238314729 1) .v)) .g) (.mul (.rational 150673602 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 13028500 1) .g) (.mul (.rational 49663744 1)
    .v)) .g) (.mul (.rational 44644188 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1052475 1) .g) (.mul (.rational 6293945 1) .v)) .g) (.mul (.rational 8413610
    1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 34242 1) .g) (.mul
    (.rational 424153 1) .v)) .g) (.mul (.rational 936963 1) (.pow .v 2))) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 71958970 1) .f) (.add (.mul (.rational
    406583518 1) .g) (.mul (.rational 86364097 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1007448355 1) .g) (.mul (.rational 465905787 1) .v)) .g) (.mul (.rational 27416680 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1440192569 1) .g) (.mul (.rational
    1095149911 1) .v)) .g) (.mul (.rational 142799562 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1314158426 1) .g) (.mul (.rational 1474581239 1) .v)) .g) (.mul
    (.rational 322874000 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 798976014 1) .g) (.mul (.rational 1257595243 1) .v)) .g) (.mul (.rational 416606140
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 327321640 1) .g)
    (.mul (.rational 708887199 1) .v)) .g) (.mul (.rational 339257076 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 89022985 1) .g) (.mul (.rational 267085933
    1) .v)) .g) (.mul (.rational 181988988 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 15321227 1) .g) (.mul (.rational 66266434 1) .v)) .g) (.mul (.rational
    65031031 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1495524
    1) .g) (.mul (.rational 10311323 1) .v)) .g) (.mul (.rational 15225342 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 61992 1) .g) (.mul (.rational 898209 1)
    .v)) .g) (.mul (.rational 2210593 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 32361 1) .v) .g) (.mul (.rational 174646 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25629380 1) .f) (.add (.mul
    (.rational 156044915 1) .g) (.mul (.rational 34379216 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 418610924 1) .g) (.mul (.rational 202185589 1) .v)) .g) (.mul (.rational 12251234
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 651307165 1) .g) (.mul
    (.rational 521567931 1) .v)) .g) (.mul (.rational 70399826 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 650727288 1) .g) (.mul (.rational 776560845 1) .v)) .g)
    (.mul (.rational 177132438 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 436223192 1) .g) (.mul (.rational 738689747 1) .v)) .g) (.mul (.rational 256834536
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 198709484 1) .g)
    (.mul (.rational 469054873 1) .v)) .g) (.mul (.rational 237641852 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 60724678 1) .g) (.mul (.rational 201411645
    1) .v)) .g) (.mul (.rational 146680020 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11905512 1) .g) (.mul (.rational 57770776 1) .v)) .g) (.mul (.rational
    61202510 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1349496
    1) .g) (.mul (.rational 10589842 1) .v)) .g) (.mul (.rational 17045132 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 66858 1) .g) (.mul (.rational 1117445 1)
    .v)) .g) (.mul (.rational 3024303 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 51147 1) .v) .g) (.mul (.rational 305920 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 13097 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 6321953 1) .f) (.add (.mul (.rational 41266093 1) .g) (.mul
    (.rational 9429206 1) .v))) .f) (.add (.mul (.add (.mul (.rational 119143507 1) .g) (.mul
    (.rational 60054604 1) .v)) .g) (.mul (.rational 3745917 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 200359861 1) .g) (.mul (.rational 168684131 1) .v)) .g) (.mul
    (.rational 23544083 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    217390637 1) .g) (.mul (.rational 275112305 1) .v)) .g) (.mul (.rational 65234343 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 159105014 1) .g) (.mul
    (.rational 288575105 1) .v)) .g) (.mul (.rational 104939961 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 79616711 1) .g) (.mul (.rational 203567404 1) .v))
    .g) (.mul (.rational 108613981 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 26924827 1) .g) (.mul (.rational 97926040 1) .v)) .g) (.mul (.rational
    75673056 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5895148
    1) .g) (.mul (.rational 31774021 1) .v)) .g) (.mul (.rational 36005361 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 755133 1) .g) (.mul (.rational 6667499 1)
    .v)) .g) (.mul (.rational 11573723 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 42972 1) .g) (.mul (.rational 818242 1) .v)) .g) (.mul (.rational 2408148 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 44595 1) .v) .g) (.mul
    (.rational 292617 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 15690 1) (.pow .v
    2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    964710 1) .f) (.add (.mul (.rational 6721371 1) .g) (.mul (.rational 1591902 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 20780084 1) .g) (.mul (.rational 10917638 1) .v)) .g) (.mul
    (.rational 700290 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 37548507 1)
    .g) (.mul (.rational 33167372 1) .v)) .g) (.mul (.rational 4778910 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 43937862 1) .g) (.mul (.rational 58785735 1) .v)) .g)
    (.mul (.rational 14453422 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34822420 1) .g) (.mul (.rational 67357276 1) .v)) .g) (.mul (.rational 25525828 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 18954642 1) .g) (.mul
    (.rational 52193854 1) .v)) .g) (.mul (.rational 29183868 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7008603 1) .g) (.mul (.rational 27747705 1) .v)) .g)
    (.mul (.rational 22608740 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1687928 1) .g) (.mul (.rational 10016555 1) .v)) .g) (.mul (.rational 12046841 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 239571 1) .g) (.mul
    (.rational 2356232 1) .v)) .g) (.mul (.rational 4371336 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 15246 1) .g) (.mul (.rational 327114 1) .v)) .g)
    (.mul (.rational 1036624 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    20409 1) .v) .g) (.mul (.rational 145402 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 9171 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 68580 1) .f) (.add (.mul (.rational 508069 1) .g)
    (.mul (.rational 124598 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1674653 1) .g) (.mul
    (.rational 915642 1) .v)) .g) (.mul (.rational 60300 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3235047 1) .g) (.mul (.rational 2991356 1) .v)) .g) (.mul (.rational
    443970 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4058729 1) .g) (.mul
    (.rational 5723124 1) .v)) .g) (.mul (.rational 1454859 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3459349 1) .g) (.mul (.rational 7106856 1) .v)) .g)
    (.mul (.rational 2796307 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2031639 1) .g) (.mul (.rational 5993128 1) .v)) .g) (.mul (.rational 3495497 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 813373 1) .g) (.mul
    (.rational 3482532 1) .v)) .g) (.mul (.rational 2974947 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 212927 1) .g) (.mul (.rational 1380396 1) .v)) .g)
    (.mul (.rational 1750115 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32994 1) .g) (.mul (.rational 358274 1) .v)) .g) (.mul (.rational 704809 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2304 1) .g) (.mul
    (.rational 55166 1) .v)) .g) (.mul (.rational 186567 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 3840 1) .v) .g) (.mul (.rational 29407 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 2102 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2212

namespace FullHigh2213
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsHigh2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsHigh1.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    9*SmallGap.PolarCoefficientsHigh1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    24*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2+
    18*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsHigh0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsHigh0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(120*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^2+120*SmallGap.ReducedLayers.high0_100_1 e g v*e^3+60*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^4+12*SmallGap.ReducedLayers.high0_010_0 e g v+36*SmallGap.ReducedLayers.high0_010_1 e g
    v*e^1+36*SmallGap.ReducedLayers.high0_010_2 e g v*e^2+12*SmallGap.ReducedLayers.high0_010_3 e
    g v*e^3+24*SmallGap.ReducedLayers.high0_001_0 e g v*e^1+36*SmallGap.ReducedLayers.high0_001_1
    e g v*e^2+24*SmallGap.ReducedLayers.high0_001_2 e g v*e^3+6*SmallGap.ReducedLayers.high0_001_3
    e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(30*SmallGap.ReducedLayers.high1_200_0 e g v*e^2+30*SmallGap.ReducedLayers.high1_200_1 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_200_2 e g v*e^4+6*SmallGap.ReducedLayers.high1_110_0 e
    g v+18*SmallGap.ReducedLayers.high1_110_1 e g v*e^1+18*SmallGap.ReducedLayers.high1_110_2 e g
    v*e^2+6*SmallGap.ReducedLayers.high1_110_3 e g v*e^3+12*SmallGap.ReducedLayers.high1_101_0 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_101_1 e g v*e^2+12*SmallGap.ReducedLayers.high1_101_2 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_101_3 e g v*e^4+3*SmallGap.ReducedLayers.high1_020_2 e
    g v+3*SmallGap.ReducedLayers.high1_020_3 e g v*e^1+3*SmallGap.ReducedLayers.high1_011_1 e g
    v+6*SmallGap.ReducedLayers.high1_011_2 e g v*e^1+3*SmallGap.ReducedLayers.high1_011_3 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 147000 1)
    .e) (.add (.mul (.rational 1317822 1) .f) (.add (.mul (.rational 1626198 1) .g) (.mul
    (.rational 258852 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 7292283 1) .f) (.add (.mul
    (.rational 12238890 1) .g) (.mul (.rational 2055981 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 7416051 1) .g) (.mul (.rational 2434494 1) .v)) .g) (.mul (.rational 117300 1)
    (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 27810948 1) .f) (.add (.mul
    (.rational 58932207 1) .g) (.mul (.rational 10129959 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 48002394 1) .g) (.mul (.rational 16347684 1) .v)) .g) (.mul (.rational 843138 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 18829899 1) .g) (.mul (.rational
    9202407 1) .v)) .g) (.mul (.rational 998304 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 77364420 1) .f) (.add (.mul (.rational 197788089 1) .g)
    (.mul (.rational 34540812 1) .v))) .f) (.add (.mul (.add (.mul (.rational 202127505 1) .g)
    (.mul (.rational 70761018 1) .v)) .g) (.mul (.rational 3753858 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 105692679 1) .g) (.mul (.rational 54192126 1) .v)) .g)
    (.mul (.rational 6075858 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    29841939 1) .g) (.mul (.rational 19246410 1) .v)) .g) (.mul (.rational 3348102 1) (.pow .v
    2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    162113166 1) .f) (.add (.mul (.rational 484971606 1) .g) (.mul (.rational 86166240 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 595576353 1) .g) (.mul (.rational 214592364 1) .v)) .g)
    (.mul (.rational 11557101 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    388630131 1) .g) (.mul (.rational 208929846 1) .v)) .g) (.mul (.rational 23880447 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 145294257 1) .g) (.mul (.rational
    101094030 1) .v)) .g) (.mul (.rational 18122253 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 31031079 1) .g) (.mul (.rational 25508526 1) .v)) .g) (.mul
    (.rational 6184401 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 260572593 1) .f) (.add (.mul (.rational
    892354059 1) .g) (.mul (.rational 162086781 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1278771102 1) .g) (.mul (.rational 476625930 1) .v)) .g) (.mul (.rational 26013942 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 998938653 1) .g) (.mul (.rational 565495854
    1) .v)) .g) (.mul (.rational 65882694 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 463785960 1) .g) (.mul (.rational 348805242 1) .v)) .g) (.mul (.rational 64499346
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 130412316 1) .g)
    (.mul (.rational 120211365 1) .v)) .g) (.mul (.rational 30839100 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 21491169 1) .g) (.mul (.rational 23115204 1)
    .v)) .g) (.mul (.rational 7500564 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 324006906 1) .f) (.add
    (.mul (.rational 1249441572 1) .g) (.mul (.rational 233386071 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 2045374725 1) .g) (.mul (.rational 793361670 1) .v)) .g) (.mul (.rational
    44052411 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1859097792 1) .g)
    (.mul (.rational 1114068348 1) .v)) .g) (.mul (.rational 133054974 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1029428091 1) .g) (.mul (.rational 839549532 1) .v))
    .g) (.mul (.rational 161299179 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 357829119 1) .g) (.mul (.rational 369650451 1) .v)) .g) (.mul (.rational
    100976979 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 77241162
    1) .g) (.mul (.rational 97128960 1) .v)) .g) (.mul (.rational 35105796 1) (.pow .v 2))) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 9783645 1) .g) (.mul (.rational 14881746
    1) .v)) .g) (.mul (.rational 6826407 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    311811633 1) .f) (.add (.mul (.rational 1336712085 1) .g) (.mul (.rational 258227040 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 2459890134 1) .g) (.mul (.rational 998385318 1) .v))
    .g) (.mul (.rational 56740026 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2548222458 1) .g) (.mul (.rational 1623732777 1) .v)) .g) (.mul (.rational 200241561 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1636755651 1) .g) (.mul (.rational
    1450765368 1) .v)) .g) (.mul (.rational 291828420 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 675949260 1) .g) (.mul (.rational 781186530 1) .v)) .g)
    (.mul (.rational 228457062 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 179563245 1) .g) (.mul (.rational 261949500 1) .v)) .g) (.mul (.rational 105008262
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 29648001 1) .g)
    (.mul (.rational 54552219 1) .v)) .g) (.mul (.rational 29232243 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2792205 1) .g) (.mul (.rational 6766146 1) .v))
    .g) (.mul (.rational 4909920 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    230479200 1) .f) (.add (.mul (.rational 1087180374 1) .g) (.mul (.rational 218236482 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 2220944127 1) .g) (.mul (.rational 947193612 1) .v))
    .g) (.mul (.rational 55425345 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2581184850 1) .g) (.mul (.rational 1754103861 1) .v)) .g) (.mul (.rational 224758797 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1884579024 1) .g) (.mul (.rational
    1816499832 1) .v)) .g) (.mul (.rational 384645114 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 899783136 1) .g) (.mul (.rational 1159298388 1) .v)) .g)
    (.mul (.rational 363688638 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 282823950 1) .g) (.mul (.rational 474161916 1) .v)) .g) (.mul (.rational 209380524
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 57198063 1) .g)
    (.mul (.rational 125171715 1) .v)) .g) (.mul (.rational 76458222 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 6986469 1) .g) (.mul (.rational 20843982 1)
    .v)) .g) (.mul (.rational 17873271 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 447723 1) .g) (.mul (.rational 2038482 1) .v)) .g) (.mul (.rational 2596503
    1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 128583156 1) .f)
    (.add (.mul (.rational 661789731 1) .g) (.mul (.rational 138530100 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1485646320 1) .g) (.mul (.rational 667642620 1) .v)) .g) (.mul
    (.rational 40410894 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1913284527
    1) .g) (.mul (.rational 1388552946 1) .v)) .g) (.mul (.rational 185621892 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1563506553 1) .g) (.mul (.rational
    1637037810 1) .v)) .g) (.mul (.rational 365813808 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 845921286 1) .g) (.mul (.rational 1209176283 1) .v)) .g)
    (.mul (.rational 406426152 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 306207654 1) .g) (.mul (.rational 583993290 1) .v)) .g) (.mul (.rational 281697444
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 72930552 1) .g)
    (.mul (.rational 186658260 1) .v)) .g) (.mul (.rational 127409442 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 10850787 1) .g) (.mul (.rational 38921952 1)
    .v)) .g) (.mul (.rational 38140422 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 896154 1) .g) (.mul (.rational 5026542 1) .v)) .g) (.mul (.rational 7428792
    1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 30180 1) .g) (.mul
    (.rational 353106 1) .v)) .g) (.mul (.rational 877320 1) (.pow .v 2))) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 52447236 1) .f) (.add (.mul (.rational
    292455711 1) .g) (.mul (.rational 63987024 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    715458849 1) .g) (.mul (.rational 339282546 1) .v)) .g) (.mul (.rational 21303819 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1010818989 1) .g) (.mul (.rational
    783393906 1) .v)) .g) (.mul (.rational 109469100 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 913256811 1) .g) (.mul (.rational 1036255458 1) .v)) .g) (.mul
    (.rational 244380933 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 551389155 1) .g) (.mul (.rational 869445891 1) .v)) .g) (.mul (.rational 312082830
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 225315570 1) .g)
    (.mul (.rational 483886812 1) .v)) .g) (.mul (.rational 252792018 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 61502439 1) .g) (.mul (.rational 181264110
    1) .v)) .g) (.mul (.rational 136098702 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10711140 1) .g) (.mul (.rational 45237450 1) .v)) .g) (.mul (.rational
    49498140 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1069248
    1) .g) (.mul (.rational 7202100 1) .v)) .g) (.mul (.rational 12022479 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 45936 1) .g) (.mul (.rational 656112 1)
    .v)) .g) (.mul (.rational 1851342 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 25347 1) .v) .g) (.mul (.rational 158433 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 14775603 1) .f) (.add (.mul
    (.rational 88729722 1) .g) (.mul (.rational 20316570 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 234888171 1) .g) (.mul (.rational 117576492 1) .v)) .g) (.mul (.rational 7668924 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 361036485 1) .g) (.mul (.rational
    298467594 1) .v)) .g) (.mul (.rational 43606827 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 357043338 1) .g) (.mul (.rational 437650710 1) .v)) .g) (.mul
    (.rational 108758856 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 237628884 1) .g) (.mul (.rational 410860866 1) .v)) .g) (.mul (.rational 156834741
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 107940921 1) .g)
    (.mul (.rational 258535368 1) .v)) .g) (.mul (.rational 145136460 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 33094077 1) .g) (.mul (.rational 110785965
    1) .v)) .g) (.mul (.rational 90385476 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6562287 1) .g) (.mul (.rational 32057334 1) .v)) .g) (.mul (.rational
    38533956 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 760140 1)
    .g) (.mul (.rational 6020358 1) .v)) .g) (.mul (.rational 11147865 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 38988 1) .g) (.mul (.rational 663984 1) .v))
    .g) (.mul (.rational 2095062 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 32535 1) .v) .g) (.mul (.rational 229191 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 10842 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 2572560 1) .f) (.add (.mul (.rational 16550358 1) .g) (.mul
    (.rational 3967356 1) .v))) .f) (.add (.mul (.add (.mul (.rational 47123148 1) .g) (.mul
    (.rational 24885468 1) .v)) .g) (.mul (.rational 1686360 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 78242739 1) .g) (.mul (.rational 68871024 1) .v)) .g) (.mul
    (.rational 10511700 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    83988057 1) .g) (.mul (.rational 110812950 1) .v)) .g) (.mul (.rational 28951359 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 60999771 1) .g) (.mul
    (.rational 114962556 1) .v)) .g) (.mul (.rational 46470780 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 30422526 1) .g) (.mul (.rational 80555850 1) .v)) .g)
    (.mul (.rational 48271380 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10314189 1) .g) (.mul (.rational 38753313 1) .v)) .g) (.mul (.rational 34036293 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2281329 1) .g) (.mul
    (.rational 12699582 1) .v)) .g) (.mul (.rational 16576647 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 298071 1) .g) (.mul (.rational 2728134 1) .v)) .g)
    (.mul (.rational 5533566 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17508 1) .g) (.mul (.rational 348750 1) .v)) .g) (.mul (.rational 1216374 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 20217 1) .v) .g) (.mul (.rational
    159165 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 9384 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 208800 1)
    .f) (.add (.mul (.rational 1432500 1) .g) (.mul (.rational 359400 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 4363689 1) .g) (.mul (.rational 2428500 1) .v)) .g) (.mul (.rational
    170880 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7778754 1) .g) (.mul
    (.rational 7274118 1) .v)) .g) (.mul (.rational 1158240 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 8998263 1) .g) (.mul (.rational 12731568 1) .v)) .g) (.mul
    (.rational 3488460 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7071318 1) .g) (.mul (.rational 14445342 1) .v)) .g) (.mul (.rational 6159831 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3832659 1) .g) (.mul (.rational
    11131914 1) .v)) .g) (.mul (.rational 7081974 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1418910 1) .g) (.mul (.rational 5922768 1) .v)) .g) (.mul
    (.rational 5560665 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    344553 1) .g) (.mul (.rational 2158500 1) .v)) .g) (.mul (.rational 3033894 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 49734 1) .g) (.mul (.rational
    518526 1) .v)) .g) (.mul (.rational 1141521 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3252 1) .g) (.mul (.rational 74574 1) .v)) .g) (.mul (.rational
    284850 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 4902 1) .v) .g)
    (.mul (.rational 42735 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 2934 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2213

namespace FullHigh2214
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  12*SmallGap.PolarCoefficientsHigh2.c230 e f g v*((e+f)*(e+f+g))^3+
    9*SmallGap.PolarCoefficientsHigh2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    24*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    18*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsHigh1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    30*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsHigh1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(60*SmallGap.ReducedLayers.high0_100_0 e g
    v*e^1+120*SmallGap.ReducedLayers.high0_100_1 e g v*e^2+120*SmallGap.ReducedLayers.high0_100_2
    e g v*e^3+12*SmallGap.ReducedLayers.high0_010_1 e g v+36*SmallGap.ReducedLayers.high0_010_2 e
    g v*e^1+36*SmallGap.ReducedLayers.high0_010_3 e g v*e^2+12*SmallGap.ReducedLayers.high0_010_4
    e g v*e^3+6*SmallGap.ReducedLayers.high0_001_0 e g v+24*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^1+36*SmallGap.ReducedLayers.high0_001_2 e g v*e^2+24*SmallGap.ReducedLayers.high0_001_3 e
    g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.high1_200_0 e g v*e^1+30*SmallGap.ReducedLayers.high1_200_1 e
    g v*e^2+30*SmallGap.ReducedLayers.high1_200_2 e g v*e^3+6*SmallGap.ReducedLayers.high1_110_1 e
    g v+18*SmallGap.ReducedLayers.high1_110_2 e g v*e^1+18*SmallGap.ReducedLayers.high1_110_3 e g
    v*e^2+6*SmallGap.ReducedLayers.high1_110_4 e g v*e^3+3*SmallGap.ReducedLayers.high1_101_0 e g
    v+12*SmallGap.ReducedLayers.high1_101_1 e g v*e^1+18*SmallGap.ReducedLayers.high1_101_2 e g
    v*e^2+12*SmallGap.ReducedLayers.high1_101_3 e g v*e^3+3*SmallGap.ReducedLayers.high1_020_3 e g
    v+3*SmallGap.ReducedLayers.high1_020_4 e g v*e^1+3*SmallGap.ReducedLayers.high1_011_2 e g
    v+6*SmallGap.ReducedLayers.high1_011_3 e g v*e^1+3*SmallGap.ReducedLayers.high1_011_4 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 151800 1) .e) (.add
    (.mul (.rational 1323408 1) .f) (.add (.mul (.rational 1624122 1) .g) (.mul (.rational 263928
    1) .v)))) .e) (.add (.mul (.add (.mul (.rational 7088397 1) .f) (.add (.mul (.rational
    11816850 1) .g) (.mul (.rational 2011917 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    7115241 1) .g) (.mul (.rational 2332782 1) .v)) .g) (.mul (.rational 118800 1) (.pow .v 2)))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 25998591 1) .f) (.add (.mul (.rational
    54655995 1) .g) (.mul (.rational 9463929 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    44176707 1) .g) (.mul (.rational 14896047 1) .v)) .g) (.mul (.rational 812832 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 17219691 1) .g) (.mul (.rational 8081151 1)
    .v)) .g) (.mul (.rational 935406 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 68981064 1) .f) (.add (.mul (.rational 174744012 1) .g) (.mul
    (.rational 30607614 1) .v))) .f) (.add (.mul (.add (.mul (.rational 176963892 1) .g) (.mul
    (.rational 60992475 1) .v)) .g) (.mul (.rational 3421134 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 91794828 1) .g) (.mul (.rational 44902923 1) .v)) .g) (.mul
    (.rational 5348628 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 25772244
    1) .g) (.mul (.rational 15035373 1) .v)) .g) (.mul (.rational 2780178 1) (.pow .v 2))) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 136444725
    1) .f) (.add (.mul (.rational 403944333 1) .g) (.mul (.rational 71852040 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 490921773 1) .g) (.mul (.rational 173809080 1) .v)) .g) (.mul
    (.rational 9884970 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 317273361 1)
    .g) (.mul (.rational 162583719 1) .v)) .g) (.mul (.rational 19661856 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 117714234 1) .g) (.mul (.rational 74301465 1) .v))
    .g) (.mul (.rational 14041302 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25032918 1) .g) (.mul (.rational 17227461 1) .v)) .g) (.mul (.rational 4300920 1)
    (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 204355554 1) .f) (.add (.mul (.rational 691697268 1) .g) (.mul
    (.rational 125925435 1) .v))) .f) (.add (.mul (.add (.mul (.rational 979622205 1) .g) (.mul
    (.rational 359561970 1) .v)) .g) (.mul (.rational 20725338 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 756768366 1) .g) (.mul (.rational 410346564 1) .v)) .g) (.mul
    (.rational 50523384 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    348035832 1) .g) (.mul (.rational 240102393 1) .v)) .g) (.mul (.rational 46721538 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 97227978 1) .g) (.mul
    (.rational 76905762 1) .v)) .g) (.mul (.rational 20384340 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 15984405 1) .g) (.mul (.rational 13345257 1) .v)) .g)
    (.mul (.rational 4220004 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 232919967 1) .f) (.add (.mul
    (.rational 886656849 1) .g) (.mul (.rational 166682985 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1432623702 1) .g) (.mul (.rational 550552161 1) .v)) .g) (.mul (.rational 32383812
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1285848006 1) .g) (.mul
    (.rational 745424922 1) .v)) .g) (.mul (.rational 94440210 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 704099052 1) .g) (.mul (.rational 536000190 1) .v)) .g)
    (.mul (.rational 109072134 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 242673630 1) .g) (.mul (.rational 222110364 1) .v)) .g) (.mul (.rational 63719232
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 52144983 1) .g)
    (.mul (.rational 54026694 1) .v)) .g) (.mul (.rational 20035782 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6605727 1) .g) (.mul (.rational 7541901 1) .v))
    .g) (.mul (.rational 3385026 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 201138336 1) .f)
    (.add (.mul (.rational 850184172 1) .g) (.mul (.rational 166411368 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1542301773 1) .g) (.mul (.rational 625954629 1) .v)) .g) (.mul
    (.rational 37935216 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1575555492
    1) .g) (.mul (.rational 984569394 1) .v)) .g) (.mul (.rational 129933324 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 999257844 1) .g) (.mul (.rational 844604070 1)
    .v)) .g) (.mul (.rational 182343492 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 408493584 1) .g) (.mul (.rational 433081446 1) .v)) .g) (.mul (.rational
    136158132 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    107829021 1) .g) (.mul (.rational 137278230 1) .v)) .g) (.mul (.rational 59174226 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 17778744 1) .g) (.mul
    (.rational 26965695 1) .v)) .g) (.mul (.rational 15578340 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1680426 1) .g) (.mul (.rational 3183567 1) .v)) .g)
    (.mul (.rational 2540034 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    129628719 1) .f) (.add (.mul (.rational 602215719 1) .g) (.mul (.rational 123565818 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1211322435 1) .g) (.mul (.rational 522591126 1) .v))
    .g) (.mul (.rational 32924274 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1386607911 1) .g) (.mul (.rational 938978886 1) .v)) .g) (.mul (.rational 130344726 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 998348748 1) .g) (.mul (.rational
    939054546 1) .v)) .g) (.mul (.rational 217031976 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 471179568 1) .g) (.mul (.rational 576391074 1) .v)) .g)
    (.mul (.rational 199233750 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 146970210 1) .g) (.mul (.rational 226394022 1) .v)) .g) (.mul (.rational 111613170
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 29652534 1) .g)
    (.mul (.rational 57674151 1) .v)) .g) (.mul (.rational 40149624 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3635628 1) .g) (.mul (.rational 9413697 1) .v))
    .g) (.mul (.rational 9510588 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 235158 1) .g) (.mul (.rational 926331 1) .v)) .g) (.mul (.rational 1457676 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 60510465 1) .f) (.add (.mul
    (.rational 306391386 1) .g) (.mul (.rational 66229866 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 676509564 1) .g) (.mul (.rational 311544690 1) .v)) .g) (.mul (.rational 20537706
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 857198706 1) .g) (.mul
    (.rational 630562662 1) .v)) .g) (.mul (.rational 92610168 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 690026778 1) .g) (.mul (.rational 721570680 1) .v)) .g)
    (.mul (.rational 179114700 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 368652330 1) .g) (.mul (.rational 516665109 1) .v)) .g) (.mul (.rational 195705420
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 132301425 1) .g)
    (.mul (.rational 242374812 1) .v)) .g) (.mul (.rational 134318820 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 31420740 1) .g) (.mul (.rational 75865362 1)
    .v)) .g) (.mul (.rational 61051368 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4695690 1) .g) (.mul (.rational 15762363 1) .v)) .g) (.mul (.rational
    18817758 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 392760 1)
    .g) (.mul (.rational 2082027 1) .v)) .g) (.mul (.rational 3887160 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 13500 1) .g) (.mul (.rational 153885 1) .v))
    .g) (.mul (.rational 498360 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 19359186 1) .f) (.add (.mul (.rational 106090188 1) .g) (.mul
    (.rational 24237696 1) .v))) .f) (.add (.mul (.add (.mul (.rational 255014571 1) .g) (.mul
    (.rational 125628042 1) .v)) .g) (.mul (.rational 8698176 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 354150813 1) .g) (.mul (.rational 283040328 1) .v)) .g) (.mul
    (.rational 44082156 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    314916750 1) .g) (.mul (.rational 364933182 1) .v)) .g) (.mul (.rational 97222830 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 187607166 1) .g) (.mul
    (.rational 298637289 1) .v)) .g) (.mul (.rational 123186180 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 75961545 1) .g) (.mul (.rational 162751779 1) .v))
    .g) (.mul (.rational 99848964 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20672415 1) .g) (.mul (.rational 60273018 1) .v)) .g) (.mul (.rational 54571818 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3619242 1) .g) (.mul
    (.rational 15128448 1) .v)) .g) (.mul (.rational 20566836 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 366912 1) .g) (.mul (.rational 2482917 1) .v)) .g)
    (.mul (.rational 5301192 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16200 1) .g) (.mul (.rational 239889 1) .v)) .g) (.mul (.rational 884538 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 10092 1) .v) .g) (.mul (.rational
    83052 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 3803760 1) .f) (.add (.mul (.rational 22424472 1) .g) (.mul (.rational
    5424624 1) .v))) .f) (.add (.mul (.add (.mul (.rational 58272345 1) .g) (.mul (.rational
    30726486 1) .v)) .g) (.mul (.rational 2238030 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 87968544 1) .g) (.mul (.rational 76276260 1) .v)) .g) (.mul (.rational
    12597120 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 85563582 1) .g)
    (.mul (.rational 109386624 1) .v)) .g) (.mul (.rational 31192044 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 56160132 1) .g) (.mul (.rational 100627080
    1) .v)) .g) (.mul (.rational 44899392 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25268853 1) .g) (.mul (.rational 62363769 1) .v)) .g) (.mul (.rational
    41850534 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7724100
    1) .g) (.mul (.rational 26583144 1) .v)) .g) (.mul (.rational 26607816 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1540644 1) .g) (.mul (.rational 7777410
    1) .v)) .g) (.mul (.rational 11791200 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 181536 1) .g) (.mul (.rational 1510728 1) .v)) .g) (.mul (.rational
    3620196 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 9600 1)
    .g) (.mul (.rational 177015 1) .v)) .g) (.mul (.rational 736824 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 9468 1) .v) .g) (.mul (.rational 88812 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 4704 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 346680 1) .f) (.add (.mul
    (.rational 2187054 1) .g) (.mul (.rational 560628 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 6106818 1) .g) (.mul (.rational 3444984 1) .v)) .g) (.mul (.rational 264060 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9951042 1) .g) (.mul (.rational
    9339414 1) .v)) .g) (.mul (.rational 1633770 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10500108 1) .g) (.mul (.rational 14735364 1) .v)) .g) (.mul (.rational
    4483404 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7518102 1)
    .g) (.mul (.rational 15033048 1) .v)) .g) (.mul (.rational 7214334 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3713286 1) .g) (.mul (.rational 10417842 1)
    .v)) .g) (.mul (.rational 7581636 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1255092 1) .g) (.mul (.rational 5005374 1) .v)) .g) (.mul (.rational 5477964
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 279282 1) .g)
    (.mul (.rational 1662996 1) .v)) .g) (.mul (.rational 2778948 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 37134 1) .g) (.mul (.rational 369660 1) .v)) .g)
    (.mul (.rational 984732 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2250 1) .g) (.mul (.rational 50094 1) .v)) .g) (.mul (.rational 234330 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3156 1) .v) .g) (.mul (.rational
    33816 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 2238 1) (.pow .v 2)) (.pow .g
    10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2214

namespace FullHigh2215
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  24*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsHigh2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    30*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsHigh2.c410 e f g v*e*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.high0_100_0 e g v+60*SmallGap.ReducedLayers.high0_100_1 e
    g v*e^1+120*SmallGap.ReducedLayers.high0_100_2 e g v*e^2+12*SmallGap.ReducedLayers.high0_010_2
    e g v+36*SmallGap.ReducedLayers.high0_010_3 e g v*e^1+36*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^2+6*SmallGap.ReducedLayers.high0_001_1 e g v+24*SmallGap.ReducedLayers.high0_001_2 e g
    v*e^1+36*SmallGap.ReducedLayers.high0_001_3 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_0 e g v+15*SmallGap.ReducedLayers.high1_200_1 e g
    v*e^1+30*SmallGap.ReducedLayers.high1_200_2 e g v*e^2+6*SmallGap.ReducedLayers.high1_110_2 e g
    v+18*SmallGap.ReducedLayers.high1_110_3 e g v*e^1+18*SmallGap.ReducedLayers.high1_110_4 e g
    v*e^2+3*SmallGap.ReducedLayers.high1_101_1 e g v+12*SmallGap.ReducedLayers.high1_101_2 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_101_3 e g v*e^2+3*SmallGap.ReducedLayers.high1_020_4 e g
    v+3*SmallGap.ReducedLayers.high1_020_5 e g v*e^1+3*SmallGap.ReducedLayers.high1_011_3 e g
    v+6*SmallGap.ReducedLayers.high1_011_4 e g v*e^1+3*SmallGap.ReducedLayers.high1_011_5 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 94350 1) .e) (.add (.mul (.rational
    804336 1) .f) (.add (.mul (.rational 982704 1) .g) (.mul (.rational 161856 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 4188222 1) .f) (.add (.mul (.rational 6941154 1) .g) (.mul
    (.rational 1189920 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4160298 1) .g) (.mul
    (.rational 1349256 1) .v)) .g) (.mul (.rational 72450 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 14814294 1) .f) (.add (.mul (.rational 30913896 1) .g) (.mul
    (.rational 5362068 1) .v))) .f) (.add (.mul (.add (.mul (.rational 24828594 1) .g) (.mul
    (.rational 8212224 1) .v)) .g) (.mul (.rational 474684 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9640602 1) .g) (.mul (.rational 4272024 1) .v)) .g) (.mul (.rational
    530382 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    37513266 1) .f) (.add (.mul (.rational 94170732 1) .g) (.mul (.rational 16474680 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 94586940 1) .g) (.mul (.rational 31824192 1) .v)) .g) (.mul
    (.rational 1896606 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 48763026 1)
    .g) (.mul (.rational 22368288 1) .v)) .g) (.mul (.rational 2857302 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 13655562 1) .g) (.mul (.rational 6944256 1) .v)) .g)
    (.mul (.rational 1389642 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 69880188 1) .f) (.add (.mul (.rational 204642468 1)
    .g) (.mul (.rational 36369732 1) .v))) .f) (.add (.mul (.add (.mul (.rational 246175368 1) .g)
    (.mul (.rational 85087548 1) .v)) .g) (.mul (.rational 5154294 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 157741890 1) .g) (.mul (.rational 75858252 1) .v)) .g)
    (.mul (.rational 9835578 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    58201194 1) .g) (.mul (.rational 32164416 1) .v)) .g) (.mul (.rational 6543384 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 12362202 1) .g) (.mul
    (.rational 6544200 1) .v)) .g) (.mul (.rational 1727634 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 96893562 1)
    .f) (.add (.mul (.rational 323798298 1) .g) (.mul (.rational 59149332 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 452937912 1) .g) (.mul (.rational 163206564 1) .v)) .g) (.mul
    (.rational 10066740 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 346031184
    1) .g) (.mul (.rational 177659340 1) .v)) .g) (.mul (.rational 23546604 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 157764804 1) .g) (.mul (.rational 96970488 1)
    .v)) .g) (.mul (.rational 20394504 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 43854636 1) .g) (.mul (.rational 27798240 1) .v)) .g) (.mul (.rational
    7893942 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7205538 1)
    .g) (.mul (.rational 3955068 1) .v)) .g) (.mul (.rational 1232268 1) (.pow .v 2))) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 99972684 1) .f) (.add (.mul (.rational 374989446 1) .g) (.mul (.rational 71306184
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 597073314 1) .g) (.mul (.rational 227664684 1)
    .v)) .g) (.mul (.rational 14461632 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 528550488 1) .g) (.mul (.rational 294757320 1) .v)) .g) (.mul (.rational 40653288
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 285988260 1) .g) (.mul
    (.rational 199285068 1) .v)) .g) (.mul (.rational 44555946 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 97693896 1) .g) (.mul (.rational 75559428 1) .v)) .g)
    (.mul (.rational 24028602 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20883684 1) .g) (.mul (.rational 16063524 1) .v)) .g) (.mul (.rational 6623124 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2639838 1) .g) (.mul
    (.rational 1807596 1) .v)) .g) (.mul (.rational 889518 1) (.pow .v 2))) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 75808344 1) .f) (.add (.mul (.rational 315094020 1) .g) (.mul (.rational
    63078336 1) .v))) .f) (.add (.mul (.add (.mul (.rational 561951264 1) .g) (.mul (.rational
    229574688 1) .v)) .g) (.mul (.rational 15235464 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 564602484 1) .g) (.mul (.rational 346411416 1) .v)) .g) (.mul (.rational
    50662008 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 352645392 1) .g)
    (.mul (.rational 281703048 1) .v)) .g) (.mul (.rational 68517468 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 142307232 1) .g) (.mul (.rational 134724876
    1) .v)) .g) (.mul (.rational 48896892 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 37196958 1) .g) (.mul (.rational 39024528 1) .v)) .g) (.mul (.rational
    20210484 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6088590
    1) .g) (.mul (.rational 6861276 1) .v)) .g) (.mul (.rational 5128314 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 570768 1) .g) (.mul (.rational 717024 1)
    .v)) .g) (.mul (.rational 852108 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    41074416 1) .f) (.add (.mul (.rational 187254948 1) .g) (.mul (.rational 39808032 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 369394128 1) .g) (.mul (.rational 163092720 1) .v)) .g)
    (.mul (.rational 11445768 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    414679380 1) .g) (.mul (.rational 282003528 1) .v)) .g) (.mul (.rational 44316900 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 293023260 1) .g) (.mul (.rational
    269220960 1) .v)) .g) (.mul (.rational 72064392 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 135966888 1) .g) (.mul (.rational 156354732 1) .v)) .g) (.mul
    (.rational 64735104 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 41804472 1) .g) (.mul (.rational 57708276 1) .v)) .g) (.mul (.rational 35862282 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8333538 1) .g) (.mul
    (.rational 13834956 1) .v)) .g) (.mul (.rational 13097562 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1009158 1) .g) (.mul (.rational 2164464 1) .v)) .g)
    (.mul (.rational 3286032 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 63870 1) .g) (.mul (.rational 210984 1) .v)) .g) (.mul (.rational 552774 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15065208 1) .f) (.add (.mul
    (.rational 74703552 1) .g) (.mul (.rational 16962240 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 161373972 1) .g) (.mul (.rational 77380008 1) .v)) .g) (.mul (.rational 5785920 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 199949040 1) .g) (.mul (.rational
    151111344 1) .v)) .g) (.mul (.rational 25674444 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 157430706 1) .g) (.mul (.rational 165947712 1) .v)) .g) (.mul
    (.rational 48961284 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 82368654 1) .g) (.mul (.rational 113538924 1) .v)) .g) (.mul (.rational 53083392 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 29012628 1) .g) (.mul
    (.rational 50885220 1) .v)) .g) (.mul (.rational 36659628 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6779424 1) .g) (.mul (.rational 15358692 1) .v)) .g)
    (.mul (.rational 17172456 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 997746 1) .g) (.mul (.rational 3150072 1) .v)) .g) (.mul (.rational 5621364 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 81810 1) .g) (.mul
    (.rational 424608 1) .v)) .g) (.mul (.rational 1261554 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2700 1) .g) (.mul (.rational 32796 1) .v)) .g) (.mul
    (.rational 176082 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 3354696 1) .f) (.add (.mul (.rational 17967420 1) .g) (.mul (.rational
    4371408 1) .v))) .f) (.add (.mul (.add (.mul (.rational 42154308 1) .g) (.mul (.rational
    21992472 1) .v)) .g) (.mul (.rational 1757376 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 57086520 1) .g) (.mul (.rational 47902584 1) .v)) .g) (.mul (.rational
    8804376 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 49489992 1) .g)
    (.mul (.rational 59496360 1) .v)) .g) (.mul (.rational 19266264 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 28767354 1) .g) (.mul (.rational 46822248 1) .v))
    .g) (.mul (.rational 24409260 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11387970 1) .g) (.mul (.rational 24614172 1) .v)) .g) (.mul (.rational 20056248 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3038832 1) .g) (.mul
    (.rational 8897616 1) .v)) .g) (.mul (.rational 11338128 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 523050 1) .g) (.mul (.rational 2231436 1) .v)) .g)
    (.mul (.rational 4523574 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 52140 1) .g) (.mul (.rational 377448 1) .v)) .g) (.mul (.rational 1257138 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2250 1) .g) (.mul
    (.rational 38604 1) .v)) .g) (.mul (.rational 227592 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 1740 1) .v) .g) (.mul (.rational 23052 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 342792 1) .f) (.add
    (.mul (.rational 1971216 1) .g) (.mul (.rational 514512 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 4988484 1) .g) (.mul (.rational 2830464 1) .v)) .g) (.mul (.rational 241704 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7324500 1) .g) (.mul (.rational
    6802872 1) .v)) .g) (.mul (.rational 1349136 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6925152 1) .g) (.mul (.rational 9423120 1) .v)) .g) (.mul (.rational 3327840
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4420608 1) .g)
    (.mul (.rational 8371560 1) .v)) .g) (.mul (.rational 4810788 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1938312 1) .g) (.mul (.rational 5033496 1) .v))
    .g) (.mul (.rational 4561644 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 579456 1) .g) (.mul (.rational 2107824 1) .v)) .g) (.mul (.rational 3003192 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 113550 1) .g) (.mul
    (.rational 619608 1) .v)) .g) (.mul (.rational 1406580 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 13200 1) .g) (.mul (.rational 124548 1) .v)) .g)
    (.mul (.rational 465024 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 690 1) .g) (.mul (.rational 15528 1) .v)) .g) (.mul (.rational 103266 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 900 1) .v) .g) (.mul (.rational
    13704 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 810 1) (.pow .v 2)) (.pow .g
    10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2215

namespace FullHigh2216
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  30*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.high0_100_1 e g v+60*SmallGap.ReducedLayers.high0_100_2 e
    g v*e^1+12*SmallGap.ReducedLayers.high0_010_3 e g v+36*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^1+6*SmallGap.ReducedLayers.high0_001_2 e g v+24*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_1 e g v+15*SmallGap.ReducedLayers.high1_200_2 e g
    v*e^1+6*SmallGap.ReducedLayers.high1_110_3 e g v+18*SmallGap.ReducedLayers.high1_110_4 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_101_2 e g v+12*SmallGap.ReducedLayers.high1_101_3 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_020_5 e g v+3*SmallGap.ReducedLayers.high1_020_6 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_011_4 e g v+6*SmallGap.ReducedLayers.high1_011_5 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 32670 1) .e) (.add (.mul (.rational 273780 1)
    .f) (.add (.mul (.rational 333360 1) .g) (.mul (.rational 55260 1) .v)))) .e) (.add (.mul
    (.add (.mul (.rational 1392120 1) .f) (.add (.mul (.rational 2295930 1) .g) (.mul (.rational
    393660 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1372680 1) .g) (.mul (.rational 435960
    1) .v)) .g) (.mul (.rational 24630 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 4764150 1) .f) (.add (.mul (.rational 9875910 1) .g) (.mul (.rational 1705860 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 7897530 1) .g) (.mul (.rational 2536260 1) .v))
    .g) (.mul (.rational 155520 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3065730 1) .g) (.mul (.rational 1258440 1) .v)) .g) (.mul (.rational 168660 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11529810 1) .f) (.add
    (.mul (.rational 28694100 1) .g) (.mul (.rational 4992840 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 28634970 1) .g) (.mul (.rational 9319320 1) .v)) .g) (.mul (.rational 593190 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 14722830 1) .g) (.mul (.rational
    6210360 1) .v)) .g) (.mul (.rational 860340 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4135320 1) .g) (.mul (.rational 1749900 1) .v)) .g) (.mul (.rational 389310
    1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 20198790 1) .f) (.add (.mul (.rational 58507500 1) .g) (.mul (.rational
    10379700 1) .v))) .f) (.add (.mul (.add (.mul (.rational 69756000 1) .g) (.mul (.rational
    23401140 1) .v)) .g) (.mul (.rational 1524270 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 44454240 1) .g) (.mul (.rational 19740120 1) .v)) .g) (.mul (.rational
    2789160 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16398030 1) .g)
    (.mul (.rational 7606980 1) .v)) .g) (.mul (.rational 1720680 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3505620 1) .g) (.mul (.rational 1253040 1) .v))
    .g) (.mul (.rational 375060 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25777710 1) .f) (.add (.mul (.rational
    84987990 1) .g) (.mul (.rational 15644160 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    117495900 1) .g) (.mul (.rational 41569020 1) .v)) .g) (.mul (.rational 2787480 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 88989840 1) .g) (.mul (.rational 42895860
    1) .v)) .g) (.mul (.rational 6270600 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 40411560 1) .g) (.mul (.rational 21502680 1) .v)) .g) (.mul (.rational 5101590 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 11257140 1) .g) (.mul
    (.rational 5236920 1) .v)) .g) (.mul (.rational 1739400 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1865430 1) .g) (.mul (.rational 471840 1) .v)) .g)
    (.mul (.rational 173250 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 23762700 1) .f) (.add (.mul
    (.rational 87687540 1) .g) (.mul (.rational 17052300 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 137549790 1) .g) (.mul (.rational 52465320 1) .v)) .g) (.mul (.rational 3690390 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 120269250 1) .g) (.mul (.rational
    64661280 1) .v)) .g) (.mul (.rational 10067040 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 64534200 1) .g) (.mul (.rational 40720800 1) .v)) .g) (.mul (.rational
    10608390 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 21977160
    1) .g) (.mul (.rational 13769940 1) .v)) .g) (.mul (.rational 5418060 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4708830 1) .g) (.mul (.rational 2349060
    1) .v)) .g) (.mul (.rational 1381590 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 598290 1) .g) (.mul (.rational 140700 1) .v)) .g) (.mul (.rational
    168840 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15419430 1) .f) (.add (.mul
    (.rational 62856540 1) .g) (.mul (.rational 13109580 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 110040930 1) .g) (.mul (.rational 46027440 1) .v)) .g) (.mul (.rational 3468780 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 108737040 1) .g) (.mul (.rational
    66400980 1) .v)) .g) (.mul (.rational 11315160 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 67006260 1) .g) (.mul (.rational 50932560 1) .v)) .g) (.mul (.rational
    15043680 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 26789160
    1) .g) (.mul (.rational 22502580 1) .v)) .g) (.mul (.rational 10657080 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6964860 1) .g) (.mul (.rational 5832360
    1) .v)) .g) (.mul (.rational 4502550 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1134570 1) .g) (.mul (.rational 874980 1) .v)) .g) (.mul (.rational
    1245540 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 104790 1)
    .g) (.mul (.rational 72420 1) .v)) .g) (.mul (.rational 242970 1) (.pow .v 2))) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 6681420 1) .f) (.add (.mul (.rational 29774250 1) .g) (.mul
    (.rational 6729480 1) .v))) .f) (.add (.mul (.add (.mul (.rational 57423600 1) .g) (.mul
    (.rational 26614980 1) .v)) .g) (.mul (.rational 2182500 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 63089970 1) .g) (.mul (.rational 44131800 1) .v)) .g) (.mul
    (.rational 8363880 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 43719930
    1) .g) (.mul (.rational 40074180 1) .v)) .g) (.mul (.rational 13568940 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 19949430 1) .g) (.mul (.rational 21943860
    1) .v)) .g) (.mul (.rational 12371400 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6043920 1) .g) (.mul (.rational 7596240 1) .v)) .g) (.mul (.rational
    7179030 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1184310 1)
    .g) (.mul (.rational 1721520 1) .v)) .g) (.mul (.rational 2867280 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 138810 1) .g) (.mul (.rational 262200 1)
    .v)) .g) (.mul (.rational 810660 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8040 1) .g) (.mul (.rational 25620 1) .v)) .g) (.mul (.rational 151860 1)
    (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1735020 1) .f) (.add
    (.mul (.rational 8380260 1) .g) (.mul (.rational 2063880 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 17620470 1) .g) (.mul (.rational 9088200 1) .v)) .g) (.mul (.rational 816480 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 21249000 1) .g) (.mul (.rational
    17038620 1) .v)) .g) (.mul (.rational 3606120 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16293780 1) .g) (.mul (.rational 17865000 1) .v)) .g) (.mul (.rational
    6911100 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8310390 1)
    .g) (.mul (.rational 11627220 1) .v)) .g) (.mul (.rational 7660440 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2852370 1) .g) (.mul (.rational 4970220 1)
    .v)) .g) (.mul (.rational 5549400 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 645600 1) .g) (.mul (.rational 1452840 1) .v)) .g) (.mul (.rational 2806440
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 90090 1) .g) (.mul
    (.rational 296400 1) .v)) .g) (.mul (.rational 1009110 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6570 1) .g) (.mul (.rational 40320 1) .v)) .g) (.mul
    (.rational 247200 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    150 1) .g) (.mul (.rational 3000 1) .v)) .g) (.mul (.rational 36720 1) (.pow .v 2))) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 204120 1) .f) (.add (.mul
    (.rational 1061100 1) .g) (.mul (.rational 285120 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2411640 1) .g) (.mul (.rational 1383480 1) .v)) .g) (.mul (.rational 136080 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3159090 1) .g) (.mul (.rational
    2890800 1) .v)) .g) (.mul (.rational 680400 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2646360 1) .g) (.mul (.rational 3427380 1) .v)) .g) (.mul (.rational 1499220
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1484670 1) .g)
    (.mul (.rational 2567940 1) .v)) .g) (.mul (.rational 1940400 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 565470 1) .g) (.mul (.rational 1289100 1) .v))
    .g) (.mul (.rational 1660830 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 143760 1) .g) (.mul (.rational 450240 1) .v)) .g) (.mul (.rational 997560 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 22950 1) .g) (.mul
    (.rational 110820 1) .v)) .g) (.mul (.rational 427470 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1980 1) .g) (.mul (.rational 18360 1) .v)) .g) (.mul
    (.rational 126900 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    60 1) .g) (.mul (.rational 1740 1) .v)) .g) (.mul (.rational 24030 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 60 1) .v) .g) (.mul (.rational 2460 1) (.pow .v
    2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh2216

namespace FullHigh2217
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  30*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.high0_100_2 e g v+12*SmallGap.ReducedLayers.high0_010_4 e
    g v+6*SmallGap.ReducedLayers.high0_001_3 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_200_2 e g v+6*SmallGap.ReducedLayers.high1_110_4 e g
    v+3*SmallGap.ReducedLayers.high1_101_3 e g v+3*SmallGap.ReducedLayers.high1_020_6 e g
    v+3*SmallGap.ReducedLayers.high1_011_5 e g v)

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

end FullHigh2217

end
end SPR.N6.Tail.CoreEndpoint
