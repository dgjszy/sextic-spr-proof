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

namespace FullLow0140
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    5*SmallGap.PolarCoefficientsLow0.c050 e f g v*e*((e+f)*(e+f+g))^5

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_010_0 e g v*e^4+4*SmallGap.ReducedLayers.low0_001_0 e
    g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_011_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_002_0 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20 1) .v) (.rational 580 1)) .e) (.add
    (.mul (.add (.mul (.add (.mul (.rational 20 1) .v) (.rational 444 1)) .v) (.rational 5297 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 50 1) .v) (.rational 708 1)) .v) (.rational 6942
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 402 1) .v) (.rational
    4554 1)) .v) (.rational 30444 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1206 1) .v)
    (.rational 9928 1)) .v) (.rational 55260 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1306 1) .v) (.rational 7270 1)) .v) (.rational 35004 1)) (.pow .g 2)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3734 1) .v) (.rational 28838 1)) .v)
    (.rational 123730 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 13069 1) .v) (.rational
    79572 1)) .v) (.rational 288650 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 17683 1)
    .v) (.rational 82536 1)) .v) (.rational 253463 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11535 1) .v) (.rational 40316 1)) .v) (.rational 103600 1)) (.pow .g 3))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21361
    1) .v) (.rational 126788 1)) .v) (.rational 378635 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 85444 1) .v) (.rational 422658 1)) .v) (.rational 1084966 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 137982 1) .v) (.rational 561708 1)) .v) (.rational 1228095 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 114892 1) .v) (.rational 381608 1))
    .v) (.rational 698304 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 51929 1)
    .v) (.rational 140552 1)) .v) (.rational 209188 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 84494 1) .v) (.rational
    411880 1)) .v) (.rational 906497 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 380223 1)
    .v) (.rational 1607812 1)) .v) (.rational 3094553 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 711400 1) .v) (.rational 2592910 1)) .v) (.rational 4315746 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 715526 1) .v) (.rational 2239780 1)) .v) (.rational
    3173633 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 416638 1) .v)
    (.rational 1121328 1)) .v) (.rational 1325093 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 139967 1) .v) (.rational 326672 1)) .v) (.rational 314472 1)) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 245648 1) .v) (.rational 1025934 1)) .v) (.rational 1740102 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1228240 1) .v) (.rational 4585516 1)) .v) (.rational
    6921452 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2607589 1) .v) (.rational
    8670552 1)) .v) (.rational 11528327 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3060916 1) .v) (.rational 9048634 1)) .v) (.rational 10467218 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2165162 1) .v) (.rational 5697534 1)) .v) (.rational
    5654397 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 940888 1) .v)
    (.rational 2216588 1)) .v) (.rational 1861912 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 243873 1) .v) (.rational 520348 1)) .v) (.rational 366884 1)) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 544154 1) .v) (.rational 2004938 1)) .v) (.rational 2720328 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2992847 1) .v) (.rational 10088364 1)) .v)
    (.rational 12392908 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7099019 1) .v)
    (.rational 21839458 1)) .v) (.rational 24087554 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9499233 1) .v) (.rational 26640652 1)) .v) (.rational 26139541 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7869896 1) .v) (.rational 20137424 1)) .v)
    (.rational 17414712 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4164811 1)
    .v) (.rational 9758872 1)) .v) (.rational 7380573 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1398377 1) .v) (.rational 3022518 1)) .v) (.rational 1992494 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 284557 1) .v) (.rational 573856 1)) .v)
    (.rational 331484 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 938795 1) .v)
    (.rational 3117400 1)) .v) (.rational 3494777 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    5632770 1) .v) (.rational 17426838 1)) .v) (.rational 17981722 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14750079 1) .v) (.rational 42440838 1)) .v) (.rational 40048074 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22116670 1) .v) (.rational 59128622
    1)) .v) (.rational 50688280 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    20933244 1) .v) (.rational 52019544 1)) .v) (.rational 40264098 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12993426 1) .v) (.rational 30079008 1)) .v) (.rational
    20925936 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5316151 1) .v)
    (.rational 11516666 1)) .v) (.rational 7193137 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1401006 1) .v) (.rational 2861002 1)) .v) (.rational 1611496 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 224155 1) .v) (.rational 435796 1)) .v)
    (.rational 224040 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1277562 1) .v) (.rational 3885596 1)) .v) (.rational 3702985 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8304153 1) .v) (.rational 23876996 1)) .v) (.rational 21266487 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 23778114 1) .v) (.rational 64540476 1)) .v)
    (.rational 53466765 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 39433944 1)
    .v) (.rational 100951056 1)) .v) (.rational 77421438 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 41878803 1) .v) (.rational 101114304 1)) .v) (.rational 71495511 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 29718558 1) .v) (.rational 67754448
    1)) .v) (.rational 44047182 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    14262044 1) .v) (.rational 30787414 1)) .v) (.rational 18395447 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4576792 1) .v) (.rational 9397748 1)) .v) (.rational
    5177915 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 946837 1) .v)
    (.rational 1861368 1)) .v) (.rational 953339 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 117219 1) .v) (.rational 222412 1)) .v) (.rational 107258 1)) (.pow .g 9))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1379378 1) .v) (.rational
    3891030 1)) .v) (.rational 3232424 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 9655646 1)
    .v) (.rational 26055744 1)) .v) (.rational 20509884 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 29997190 1) .v) (.rational 77338250 1)) .v) (.rational 57480940 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 54459742 1) .v) (.rational 134028920 1)) .v)
    (.rational 93745756 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 64013766 1)
    .v) (.rational 150338316 1)) .v) (.rational 98678136 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 50980758 1) .v) (.rational 114309744 1)) .v) (.rational 70280616 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 27960801 1) .v) (.rational 59946446
    1)) .v) (.rational 34516405 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10513710 1) .v) (.rational 21612702 1)) .v) (.rational 11679274 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2643556 1) .v) (.rational 5232200 1)) .v) (.rational
    2667313 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 421918 1) .v)
    (.rational 808408 1)) .v) (.rational 392028 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 38737 1) .v) (.rational 72302 1)) .v) (.rational 33712 1)) (.pow .g 10))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1181466 1) .v)
    (.rational 3122106 1)) .v) (.rational 2311218 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    8860995 1) .v) (.rational 22617868 1)) .v) (.rational 16057218 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 29673553 1) .v) (.rational 73080172 1)) .v) (.rational 49628883 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 58486337 1) .v) (.rational
    138857188 1)) .v) (.rational 89987090 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 75278899 1) .v) (.rational 172207258 1)) .v) (.rational 106282449 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 66346104 1) .v) (.rational 146237808 1)) .v)
    (.rational 85837770 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 40810496 1)
    .v) (.rational 86731918 1)) .v) (.rational 48403019 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17514870 1) .v) (.rational 35945360 1)) .v) (.rational 19095221 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5149391 1) .v) (.rational 10230884
    1)) .v) (.rational 5189451 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    995722 1) .v) (.rational 1921964 1)) .v) (.rational 935677 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 117308 1) .v) (.rational 220934 1)) .v) (.rational 103955 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 7248 1) .v) (.rational 13380 1))
    .v) (.rational 6132 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 797927 1) .v) (.rational 1991444 1)) .v) (.rational
    1339069 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 6383416 1) .v) (.rational 15512094
    1)) .v) (.rational 10106306 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 22915540 1)
    .v) (.rational 54167496 1)) .v) (.rational 34130531 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 48699000 1) .v) (.rational 111882068 1)) .v) (.rational 68059384 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 68047677 1) .v) (.rational
    151852160 1)) .v) (.rational 89046020 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 65644490 1) .v) (.rational 142247990 1)) .v) (.rational 80320692 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 44646043 1) .v) (.rational 93957626 1)) .v)
    (.rational 51062431 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 21458150 1)
    .v) (.rational 43888090 1)) .v) (.rational 22966780 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7184456 1) .v) (.rational 14300520 1)) .v) (.rational 7217665 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1619046 1) .v) (.rational 3142988 1)) .v)
    (.rational 1534534 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 229989 1)
    .v) (.rational 436658 1)) .v) (.rational 207124 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 18106 1) .v) (.rational 33730 1)) .v) (.rational 15624 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 576 1) .v) (.rational 1056 1)) .v) (.rational 480 1))
    (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 419458 1) .v) (.rational 995456 1)) .v) (.rational 618119 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3565393 1) .v) (.rational 8293500 1)) .v) (.rational
    5032639 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 13655724 1) .v) (.rational
    31108758 1)) .v) (.rational 18423264 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31110070 1) .v) (.rational 69355076 1)) .v) (.rational 40033965 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 46858412 1) .v) (.rational 102164072 1)) .v)
    (.rational 57412999 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 49044125 1)
    .v) (.rational 104528448 1)) .v) (.rational 57135088 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 36472540 1) .v) (.rational 75974384 1)) .v) (.rational 40368671 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 19351332 1) .v) (.rational 39403524
    1)) .v) (.rational 20351777 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7238855 1) .v) (.rational 14417176 1)) .v) (.rational 7243085 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1851512 1) .v) (.rational 3610892 1)) .v) (.rational
    1767219 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 305042 1) .v)
    (.rational 583522 1)) .v) (.rational 278879 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 28752 1) .v) (.rational 54064 1)) .v) (.rational 25312 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1153 1) .v) (.rational 2136 1)) .v) (.rational 983
    1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 167876 1) .v) (.rational 381058 1)) .v) (.rational 221630 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1510884 1) .v) (.rational 3380188 1)) .v) (.rational
    1934756 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6148657 1) .v) (.rational
    13548868 1)) .v) (.rational 7624695 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14942552 1) .v) (.rational 32409898 1)) .v) (.rational 17915234 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 24117274 1) .v) (.rational 51457902 1)) .v)
    (.rational 27914873 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 27189722 1)
    .v) (.rational 57040148 1)) .v) (.rational 30343296 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 21913194 1) .v) (.rational 45183126 1)) .v) (.rational 23555679 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 12691742 1) .v) (.rational 25716828
    1)) .v) (.rational 13135090 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5228572 1) .v) (.rational 10412488 1)) .v) (.rational 5210679 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1489154 1) .v) (.rational 2915992 1)) .v) (.rational
    1430528 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 277141 1) .v)
    (.rational 534070 1)) .v) (.rational 257146 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 30090 1) .v) (.rational 57138 1)) .v) (.rational 27048 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1430 1) .v) (.rational 2680 1)) .v) (.rational 1250
    1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 49334 1) .v) (.rational 107670 1)) .v) (.rational
    59382 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 468673 1) .v) (.rational 1012852 1))
    .v) (.rational 552830 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2019265 1) .v)
    (.rational 4318890 1)) .v) (.rational 2331428 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5212591 1) .v) (.rational 11028340 1)) .v) (.rational 5884073 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8969978 1) .v) (.rational 18763188 1)) .v)
    (.rational 9888018 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10827661 1)
    .v) (.rational 22382312 1)) .v) (.rational 11643229 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 9388547 1) .v) (.rational 19171124 1)) .v) (.rational 9838843 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5883085 1) .v) (.rational 11863176 1))
    .v) (.rational 6003999 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2639471
    1) .v) (.rational 5255230 1)) .v) (.rational 2622233 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 825198 1) .v) (.rational 1622308 1)) .v) (.rational 798113 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 170232 1) .v) (.rational 330562 1)) .v)
    (.rational 160397 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 20744 1) .v)
    (.rational 39812 1)) .v) (.rational 19068 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1125 1) .v) (.rational 2136 1)) .v) (.rational 1011 1)) (.pow .g 12))) (.pow .f
    3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 10013 1) .v) (.rational 21116 1)) .v) (.rational 11163 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 100130 1) .v) (.rational 209910 1)) .v) (.rational 110308 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 455279 1) .v) (.rational 948454 1)) .v) (.rational
    495248 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1243806 1) .v)
    (.rational 2573974 1)) .v) (.rational 1334944 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2272262 1) .v) (.rational 4669424 1)) .v) (.rational 2404302 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2921956 1) .v) (.rational 5960380 1)) .v)
    (.rational 3045648 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2709518 1)
    .v) (.rational 5484500 1)) .v) (.rational 2779980 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1823692 1) .v) (.rational 3661900 1)) .v) (.rational 1840536 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 883241 1) .v) (.rational 1758884 1)) .v)
    (.rational 876339 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 299802 1) .v)
    (.rational 592014 1)) .v) (.rational 292332 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 67603 1) .v) (.rational 132374 1)) .v) (.rational 64780 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9078 1) .v) (.rational 17630 1)) .v) (.rational
    8552 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 548 1) .v) (.rational
    1056 1)) .v) (.rational 508 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1250 1) .v) (.rational 2560
    1)) .v) (.rational 1310 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 13125 1) .v)
    (.rational 26808 1)) .v) (.rational 13683 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 62802 1) .v) (.rational 127908 1)) .v) (.rational 65106 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 180994 1) .v) (.rational 367508 1)) .v) (.rational 186514
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 349731 1) .v) (.rational 707832
    1)) .v) (.rational 358101 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    477054 1) .v) (.rational 962208 1)) .v) (.rational 485154 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 470736 1) .v) (.rational 946008 1)) .v) (.rational 475272 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 338328 1) .v) (.rational 677304 1))
    .v) (.rational 338976 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 175644 1)
    .v) (.rational 350208 1)) .v) (.rational 174564 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 64181 1) .v) (.rational 127432 1)) .v) (.rational 63251 1)) (.pow .g 9))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 15654 1) .v) (.rational 30948 1)) .v) (.rational
    15294 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 2286 1) .v) (.rational
    4500 1)) .v) (.rational 2214 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    151 1) .v) (.rational 296 1)) .v) (.rational 145 1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 72 1)
    .v) (.rational 144 1)) .v) (.rational 72 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 792
    1) .v) (.rational 1584 1)) .v) (.rational 792 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3978 1) .v) (.rational 7956 1)) .v) (.rational 3978 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12060 1) .v) (.rational 24120 1)) .v) (.rational 12060 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 24570 1) .v) (.rational 49140 1))
    .v) (.rational 24570 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 35424 1)
    .v) (.rational 70848 1)) .v) (.rational 35424 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 37044 1) .v) (.rational 74088 1)) .v) (.rational 37044 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 28296 1) .v) (.rational 56592 1)) .v) (.rational
    28296 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 15660 1) .v) (.rational
    31320 1)) .v) (.rational 15660 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6120 1) .v) (.rational 12240 1)) .v) (.rational 6120 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1602 1) .v) (.rational 3204 1)) .v) (.rational 1602 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 252 1) .v) (.rational 504 1)) .v) (.rational 252
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 18 1) .v) (.rational 36 1))
    .v) (.rational 18 1)) (.pow .g 12))) (.pow .f 6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0140

namespace FullLow0141
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow1.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    10*SmallGap.PolarCoefficientsLow0.c050 e f g v*((e+f)*(e+f+g))^5+
    5*SmallGap.PolarCoefficientsLow1.c050 e f g v*e*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow0.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    4*SmallGap.PolarCoefficientsLow0.c140 e f g v*e*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_0 e g v*e^3+1*SmallGap.ReducedLayers.low0_010_1 e
    g v*e^4+20*SmallGap.ReducedLayers.low0_001_0 e g v*e^4+4*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_011_0 e g v*e^2+1*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^3+12*SmallGap.ReducedLayers.low1_002_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 190 1) .v) (.rational 5790 1)) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 170 1) .v) (.rational 3874 1)) .v) (.rational 50337 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 425 1) .v) (.rational 6058 1)) .v) (.rational 64871 1))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3225 1) .v) (.rational
    37298 1)) .v) (.rational 275588 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 9675 1) .v)
    (.rational 79618 1)) .v) (.rational 490939 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10480 1) .v) (.rational 56234 1)) .v) (.rational 303093 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 28542 1) .v) (.rational
    224768 1)) .v) (.rational 1067331 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 99897 1)
    .v) (.rational 608947 1)) .v) (.rational 2442547 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 135199 1) .v) (.rational 615857 1)) .v) (.rational 2091745 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 88255 1) .v) (.rational 290817 1)) .v) (.rational
    826365 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 156380 1) .v) (.rational 947964 1)) .v) (.rational 3112976 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 625520 1) .v) (.rational 3113750 1)) .v) (.rational
    8756231 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1010404 1) .v) (.rational
    4064712 1)) .v) (.rational 9686229 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 841892 1) .v) (.rational 2705196 1)) .v) (.rational 5350001 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 381012 1) .v) (.rational 975424 1)) .v) (.rational
    1544483 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 593612 1) .v) (.rational 2964732 1)) .v) (.rational 7101518
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2671254 1) .v) (.rational 11440381 1)) .v)
    (.rational 23835645 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4999528 1) .v)
    (.rational 18216648 1)) .v) (.rational 32584925 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5032496 1) .v) (.rational 15529798 1)) .v) (.rational 23404121 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2934580 1) .v) (.rational 7681644 1)) .v)
    (.rational 9509423 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 988136 1)
    .v) (.rational 2219441 1)) .v) (.rational 2191460 1)) (.pow .g 5)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1655265 1) .v) (.rational 7109506 1)) .v) (.rational 12976531 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8276325 1) .v) (.rational 31496426 1)) .v) (.rational 50861581 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 17577943 1) .v) (.rational 59018848 1)) .v)
    (.rational 83330157 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 20653822 1)
    .v) (.rational 61066950 1)) .v) (.rational 74298971 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14635001 1) .v) (.rational 38183950 1)) .v) (.rational 39375174 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6377191 1) .v) (.rational 14799442
    1)) .v) (.rational 12732426 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1659557 1) .v) (.rational 3479088 1)) .v) (.rational 2476732 1)) (.pow .g 6)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 3506950 1) .v) (.rational 13335238 1)) .v) (.rational 19266665 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 19288225 1) .v) (.rational 66647388 1)) .v)
    (.rational 86706294 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 45774083 1) .v)
    (.rational 143353166 1)) .v) (.rational 166352039 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 61321686 1) .v) (.rational 173898023 1)) .v) (.rational 178128679 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 50907984 1) .v) (.rational
    130939718 1)) .v) (.rational 117163278 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27027651 1) .v) (.rational 63384916 1)) .v) (.rational 49136915 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9117549 1) .v) (.rational 19688584 1)) .v)
    (.rational 13195254 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1867554 1)
    .v) (.rational 3768193 1)) .v) (.rational 2203200 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 5757626 1) .v) (.rational 19785020 1)) .v) (.rational 23407966 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 34545756 1) .v) (.rational 110031484 1)) .v)
    (.rational 119270765 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 90514155 1) .v)
    (.rational 266740384 1)) .v) (.rational 263032080 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 135901345 1) .v) (.rational 370304732 1)) .v) (.rational 329796021 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 128931627 1) .v) (.rational
    325165266 1)) .v) (.rational 259855817 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 80321754 1) .v) (.rational 188121062 1)) .v) (.rational 134320268 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 33038689 1) .v) (.rational 72307996 1)) .v)
    (.rational 46133941 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8772261 1)
    .v) (.rational 18108768 1)) .v) (.rational 10397314 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1417915 1) .v) (.rational 2794164 1)) .v) (.rational 1466150 1)) (.pow
    .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7401074 1) .v) (.rational
    23330134 1)) .v) (.rational 23295813 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 48106981
    1) .v) (.rational 142795194 1)) .v) (.rational 132779631 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 137837962 1) .v) (.rational 384719072 1)) .v) (.rational 331418623 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 228932000 1) .v) (.rational 600440050 1))
    .v) (.rational 476840636 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    243754489 1) .v) (.rational 601042392 1)) .v) (.rational 438221124 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 173670387 1) .v) (.rational 403384793 1)) .v) (.rational
    269383370 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 83832876 1) .v)
    (.rational 184123936 1)) .v) (.rational 112696158 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 27123678 1) .v) (.rational 56663784 1)) .v) (.rational 31945565 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5674533 1) .v) (.rational 11364080
    1)) .v) (.rational 5960591 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    713227 1) .v) (.rational 1381477 1)) .v) (.rational 683773 1)) (.pow .g 9)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7471299 1) .v) (.rational 21848038 1))
    .v) (.rational 18906870 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 52299093 1) .v)
    (.rational 145853534 1)) .v) (.rational 119275597 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 162589478 1) .v) (.rational 431911306 1)) .v) (.rational 332544041 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 295648659 1) .v) (.rational 747566014 1))
    .v) (.rational 540059663 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    348471029 1) .v) (.rational 838722720 1)) .v) (.rational 566976208 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 278704154 1) .v) (.rational 639149476 1)) .v) (.rational
    403705782 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 153804191 1) .v)
    (.rational 336815490 1)) .v) (.rational 198877462 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 58335575 1) .v) (.rational 122428060 1)) .v) (.rational 67792862 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 14842833 1) .v) (.rational 30000960
    1)) .v) (.rational 15677241 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2407274 1) .v) (.rational 4713872 1)) .v) (.rational 2345603 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 225851 1) .v) (.rational 430978 1)) .v) (.rational 206295 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5901266 1) .v) (.rational 16146476 1)) .v) (.rational 12389957 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 44259495 1) .v) (.rational 116693475 1)) .v) (.rational 85706783 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 148321117 1) .v) (.rational 376425505 1)) .v)
    (.rational 263918193 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 292818253
    1) .v) (.rational 714788523 1)) .v) (.rational 477240837 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 377958811 1) .v) (.rational 887145431 1)) .v) (.rational
    562969636 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 334564494 1) .v)
    (.rational 755334473 1)) .v) (.rational 455071243 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 207102504 1) .v) (.rational 450230629 1)) .v) (.rational 257562148 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 89674845 1) .v) (.rational
    188101434 1)) .v) (.rational 102357380 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26686571 1) .v) (.rational 54172789 1)) .v) (.rational 28144513 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5245730 1) .v) (.rational 10344085 1)) .v)
    (.rational 5159154 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 631832 1)
    .v) (.rational 1215103 1)) .v) (.rational 585609 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 40227 1) .v) (.rational 75678 1)) .v) (.rational 35451 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3607168 1) .v) (.rational 9296876 1)) .v) (.rational 6450000 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 28857344 1) .v) (.rational 72283646 1)) .v) (.rational 48522237 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 103667562 1) .v) (.rational 252125064 1)) .v)
    (.rational 163439859 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 220669414
    1) .v) (.rational 520671368 1)) .v) (.rational 325369711 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 309214130 1) .v) (.rational 707473020 1)) .v) (.rational
    425557391 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 299591550 1) .v)
    (.rational 664595536 1)) .v) (.rational 384435670 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 205044821 1) .v) (.rational 441183852 1)) .v) (.rational 245364049 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 99422437 1) .v) (.rational
    207694792 1)) .v) (.rational 111142604 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 33691533 1) .v) (.rational 68445466 1)) .v) (.rational 35311318 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7717076 1) .v) (.rational 15280242 1)) .v)
    (.rational 7623909 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1120441 1)
    .v) (.rational 2167848 1)) .v) (.rational 1050222 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 90843 1) .v) (.rational 172128 1)) .v) (.rational 81285 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 3009 1) .v) (.rational 5586 1)) .v)
    (.rational 2577 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1671904 1) .v) (.rational 4081152 1)) .v) (.rational
    2602160 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 14211184 1) .v) (.rational 33954217
    1)) .v) (.rational 21135843 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 54467436 1)
    .v) (.rational 127268372 1)) .v) (.rational 77234585 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 124282090 1) .v) (.rational 283781390 1)) .v) (.rational 167674131 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 187705472 1) .v) (.rational
    418585220 1)) .v) (.rational 240521922 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 197285699 1) .v) (.rational 429508538 1)) .v) (.rational 239801248 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 147608652 1) .v) (.rational 313708634 1))
    .v) (.rational 170105612 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    78984884 1) .v) (.rational 163919844 1)) .v) (.rational 86335529 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 29891085 1) .v) (.rational 60621530 1)) .v) (.rational
    31039251 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 7765787 1) .v)
    (.rational 15409365 1)) .v) (.rational 7682207 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1306450 1) .v) (.rational 2540186 1)) .v) (.rational 1235813 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 126628 1) .v) (.rational 241622 1)) .v)
    (.rational 114994 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 5273 1) .v)
    (.rational 9882 1)) .v) (.rational 4609 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 567699 1) .v)
    (.rational 1318470 1)) .v) (.rational 783227 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    5109291 1) .v) (.rational 11683814 1)) .v) (.rational 6825755 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 20806003 1) .v) (.rational 46813660 1)) .v) (.rational 26868869 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 50637428 1) .v) (.rational
    112026734 1)) .v) (.rational 63107685 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 81936241 1) .v) (.rational 178127518 1)) .v) (.rational 98396541 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 92735783 1) .v) (.rational 198014678 1)) .v)
    (.rational 107176072 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 75163108
    1) .v) (.rational 157584510 1)) .v) (.rational 83526224 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 43878695 1) .v) (.rational 90319838 1)) .v) (.rational 46869780
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 18272713 1) .v) (.rational
    36934864 1)) .v) (.rational 18767795 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5280326 1) .v) (.rational 10486188 1)) .v) (.rational 5220741 1)) (.pow .g 9))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1001869 1) .v) (.rational 1956318 1)) .v) (.rational
    955355 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 111597 1) .v)
    (.rational 214476 1)) .v) (.rational 102879 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5487 1) .v) (.rational 10388 1)) .v) (.rational 4901 1)) (.pow .g 12))) (.pow
    .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 133082 1) .v) (.rational 295246 1)) .v) (.rational 165292 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1264279 1) .v) (.rational 2775598 1)) .v) (.rational 1537175 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5450225 1) .v) (.rational 11834088 1)) .v)
    (.rational 6478879 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 14087798 1)
    .v) (.rational 30236461 1)) .v) (.rational 16352767 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 24297490 1) .v) (.rational 51521496 1)) .v) (.rational 27507310 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 29431673 1) .v) (.rational 61627523
    1)) .v) (.rational 32460786 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    25648903 1) .v) (.rational 53013989 1)) .v) (.rational 27533702 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16185923 1) .v) (.rational 33014373 1)) .v) (.rational
    16900346 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 7332103 1) .v)
    (.rational 14756791 1)) .v) (.rational 7444272 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2322100 1) .v) (.rational 4611971 1)) .v) (.rational 2292935 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 487316 1) .v) (.rational 955447 1)) .v)
    (.rational 468339 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 60739 1) .v)
    (.rational 117626 1)) .v) (.rational 56887 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3393 1) .v) (.rational 6495 1)) .v) (.rational 3102 1)) (.pow .g 12))) (.pow
    .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 19226 1) .v) (.rational 40894 1)) .v) (.rational 21788 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 192260 1) .v) (.rational 406402 1)) .v) (.rational 215198 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 874599 1) .v) (.rational 1836576 1)) .v)
    (.rational 966123 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2391981 1)
    .v) (.rational 4987968 1)) .v) (.rational 2605539 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4378059 1) .v) (.rational 9062466 1)) .v) (.rational 4698687 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5646228 1) .v) (.rational 11597388 1))
    .v) (.rational 5965608 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5257854
    1) .v) (.rational 10712688 1)) .v) (.rational 5464830 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3559854 1) .v) (.rational 7192584 1)) .v) (.rational 3637386 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1738056 1) .v) (.rational 3481698 1)) .v)
    (.rational 1745034 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 596384 1)
    .v) (.rational 1184386 1)) .v) (.rational 588242 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 136427 1) .v) (.rational 268624 1)) .v) (.rational 132215 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 18669 1) .v) (.rational 36456 1)) .v) (.rational
    17787 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 1155 1) .v) (.rational
    2238 1)) .v) (.rational 1083 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1288 1) .v) (.rational
    2636 1)) .v) (.rational 1348 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 13524 1) .v)
    (.rational 27606 1)) .v) (.rational 14082 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 64734 1) .v) (.rational 131772 1)) .v) (.rational 67038 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 186713 1) .v) (.rational 378946 1)) .v) (.rational 192233
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 361287 1) .v) (.rational 730944
    1)) .v) (.rational 369657 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    493884 1) .v) (.rational 995868 1)) .v) (.rational 501984 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 488880 1) .v) (.rational 982296 1)) .v) (.rational 493416 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 352926 1) .v) (.rational 706500 1))
    .v) (.rational 353574 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 184338 1)
    .v) (.rational 367596 1)) .v) (.rational 183258 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 67912 1) .v) (.rational 134894 1)) .v) (.rational 66982 1)) (.pow .g 9))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 16746 1) .v) (.rational 33132 1)) .v) (.rational
    16386 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 2481 1) .v) (.rational
    4890 1)) .v) (.rational 2409 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    167 1) .v) (.rational 328 1)) .v) (.rational 161 1)) (.pow .g 12))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0141

namespace FullLow0142
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow2.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    10*SmallGap.PolarCoefficientsLow1.c050 e f g v*((e+f)*(e+f+g))^5+
    5*SmallGap.PolarCoefficientsLow2.c050 e f g v*e*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow1.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    9*SmallGap.PolarCoefficientsLow0.c140 e f g v*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow1.c140 e f g v*e*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    3*SmallGap.PolarCoefficientsLow0.c230 e f g v*e*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.low0_010_0 e g v*e^2+4*SmallGap.ReducedLayers.low0_010_1 e
    g v*e^3+1*SmallGap.ReducedLayers.low0_010_2 e g v*e^4+40*SmallGap.ReducedLayers.low0_001_0 e g
    v*e^3+20*SmallGap.ReducedLayers.low0_001_1 e g v*e^4+4*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_011_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^2+1*SmallGap.ReducedLayers.low1_011_2 e g v*e^3+18*SmallGap.ReducedLayers.low1_002_0 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_002_1 e g v*e^3+3*SmallGap.ReducedLayers.low1_002_2 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 800 1) .v) (.rational 26040 1)) .e) (.add (.mul (.add (.mul (.add
    (.mul (.rational 630 1) .v) (.rational 15076 1)) .v) (.rational 215857 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1575 1) .v) (.rational 23092 1)) .v) (.rational 273227 1)) .g)))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11373 1) .v) (.rational 136272
    1)) .v) (.rational 1125664 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 34119 1) .v)
    (.rational 284016 1)) .v) (.rational 1964810 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 36969 1) .v) (.rational 192050 1)) .v) (.rational 1178654 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 96258 1) .v) (.rational
    780012 1)) .v) (.rational 4147851 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 336903 1)
    .v) (.rational 2068229 1)) .v) (.rational 9292699 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 456081 1) .v) (.rational 2027395 1)) .v) (.rational 7733892 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 297945 1) .v) (.rational 915495 1)) .v) (.rational
    2933253 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 505433 1) .v) (.rational 3147942 1)) .v) (.rational 11497148 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2021732 1) .v) (.rational 10159950 1)) .v) (.rational
    31676461 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3266520 1) .v) (.rational
    12972371 1)) .v) (.rational 34124441 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2723498 1) .v) (.rational 8405705 1)) .v) (.rational 18199139 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1234079 1) .v) (.rational 2943467 1)) .v) (.rational
    5010101 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1838206 1) .v) (.rational 9451184 1)) .v) (.rational
    24893715 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 8271927 1) .v) (.rational 35976457
    1)) .v) (.rational 81980504 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 15486144 1)
    .v) (.rational 56401578 1)) .v) (.rational 109519339 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 15599178 1) .v) (.rational 47283499 1)) .v) (.rational 76473722 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9107910 1) .v) (.rational 23014107
    1)) .v) (.rational 30026742 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3072993 1) .v) (.rational 6570088 1)) .v) (.rational 6653904 1)) (.pow .g 5)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 4898606 1) .v) (.rational 21740248 1)) .v) (.rational 43085737 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 24493030 1) .v) (.rational 95323338 1)) .v) (.rational 166114011
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 52038895 1) .v) (.rational 176690473 1))
    .v) (.rational 267065859 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    61197400 1) .v) (.rational 180885304 1)) .v) (.rational 233083349 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 43430016 1) .v) (.rational 112076145 1)) .v) (.rational
    120678308 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 18969874 1) .v)
    (.rational 43195263 1)) .v) (.rational 38137656 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4953503 1) .v) (.rational 10157054 1)) .v) (.rational 7292738 1)) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 9870952 1) .v) (.rational 38939528 1)) .v) (.rational
    60374393 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 54290236 1) .v) (.rational 193108797
    1)) .v) (.rational 268036478 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 128897860
    1) .v) (.rational 412229149 1)) .v) (.rational 506754427 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 172863600 1) .v) (.rational 496697174 1)) .v) (.rational
    534360664 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 143777596 1) .v)
    (.rational 372127978 1)) .v) (.rational 346239062 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 76556438 1) .v) (.rational 179774940 1)) .v) (.rational 143399226 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 25934738 1) .v) (.rational 55972998
    1)) .v) (.rational 38257518 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5342970 1) .v) (.rational 10796501 1)) .v) (.rational 6411780 1)) (.pow .g 7)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 15300981 1) .v) (.rational 54727240 1)) .v) (.rational
    68806666 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 91805886 1) .v) (.rational 302581786
    1)) .v) (.rational 346837100 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 240676004
    1) .v) (.rational 729650700 1)) .v) (.rational 756566712 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 361826065 1) .v) (.rational 1008669284 1)) .v) (.rational
    938647229 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 344042747 1) .v)
    (.rational 883530150 1)) .v) (.rational 732859987 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 215079344 1) .v) (.rational 511237256 1)) .v) (.rational 376511753 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 88915612 1) .v) (.rational
    197236581 1)) .v) (.rational 129205585 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23773859 1) .v) (.rational 49796587 1)) .v) (.rational 29312550 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3878904 1) .v) (.rational 7782221 1)) .v)
    (.rational 4195816 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    18380580 1) .v) (.rational 60426860 1)) .v) (.rational 63622943 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 119473770 1) .v) (.rational 368204155 1)) .v) (.rational 359635185 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 342542636 1) .v) (.rational 988324374 1))
    .v) (.rational 890548243 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    569773028 1) .v) (.rational 1538541427 1)) .v) (.rational 1272345191 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 608239620 1) .v) (.rational 1538757622 1)) .v)
    (.rational 1163182884 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 435097785
    1) .v) (.rational 1034286818 1)) .v) (.rational 713399527 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 211248664 1) .v) (.rational 474281444 1)) .v) (.rational
    299075926 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 68902250 1) .v)
    (.rational 147191198 1)) .v) (.rational 85442095 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 14573626 1) .v) (.rational 29895923 1)) .v) (.rational 16167975 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1858670 1) .v) (.rational 3696578 1)) .v)
    (.rational 1890813 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 17099136 1) .v) (.rational 52166928 1)) .v) (.rational 47307422 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 119693952 1) .v) (.rational 347056324 1)) .v) (.rational
    296560610 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 372379627 1) .v) (.rational
    1025012455 1)) .v) (.rational 822117302 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 678256386 1) .v) (.rational 1771520156 1)) .v) (.rational 1329032222 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 801744797 1) .v) (.rational 1987869619 1))
    .v) (.rational 1391395077 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    644079636 1) .v) (.rational 1518438358 1)) .v) (.rational 990612891 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 357727680 1) .v) (.rational 804334402 1)) .v)
    (.rational 489747171 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 136900254
    1) .v) (.rational 294904040 1)) .v) (.rational 168311677 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 35259672 1) .v) (.rational 73189528 1)) .v) (.rational 39442484
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 5812893 1) .v) (.rational
    11699017 1)) .v) (.rational 6008974 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 557422 1) .v) (.rational 1093210 1)) .v) (.rational 539952 1)) (.pow .g 10)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12210906 1) .v)
    (.rational 34810244 1)) .v) (.rational 27843177 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 91581795 1) .v) (.rational 250899158 1)) .v) (.rational 191675769 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 307146835 1) .v) (.rational 807821186 1)) .v)
    (.rational 587811350 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 607463870
    1) .v) (.rational 1532846555 1)) .v) (.rational 1059787013 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 786519073 1) .v) (.rational 1904051114 1)) .v) (.rational
    1248568085 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 699531558 1) .v)
    (.rational 1625837656 1)) .v) (.rational 1010371219 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 436008113 1) .v) (.rational 974466423 1)) .v) (.rational 574274375 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 190605336 1) .v) (.rational
    410707405 1)) .v) (.rational 230082187 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 57466871 1) .v) (.rational 119793068 1)) .v) (.rational 64065488 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11495926 1) .v) (.rational 23272276 1)) .v)
    (.rational 11947929 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1417565 1)
    .v) (.rational 2795905 1)) .v) (.rational 1385654 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 93159 1) .v) (.rational 179142 1)) .v) (.rational 85983 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    6570504 1) .v) (.rational 17591526 1)) .v) (.rational 12657484 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 52564032 1) .v) (.rational 136482636 1)) .v) (.rational 94867343 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 188986117 1) .v) (.rational 475422199 1)) .v)
    (.rational 318595823 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 403032259
    1) .v) (.rational 981603965 1)) .v) (.rational 633048501 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 566567109 1) .v) (.rational 1335471698 1)) .v) (.rational
    827683387 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 551646743 1) .v)
    (.rational 1258558171 1)) .v) (.rational 749007735 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 380250236 1) .v) (.rational 840231980 1)) .v) (.rational 480197979 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 186211062 1) .v) (.rational
    399036719 1)) .v) (.rational 219242522 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 63957724 1) .v) (.rational 133165014 1)) .v) (.rational 70495336 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 14916979 1) .v) (.rational 30243169 1)) .v)
    (.rational 15474212 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2218779 1)
    .v) (.rational 4389009 1)) .v) (.rational 2177676 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 185829 1) .v) (.rational 358860 1)) .v) (.rational 173031 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 6435 1) .v) (.rational 12094 1)) .v)
    (.rational 5659 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 2577668 1) .v) (.rational 6506848 1)) .v) (.rational
    4279885 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 21910178 1) .v) (.rational 54044712
    1)) .v) (.rational 34663876 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 84044672 1)
    .v) (.rational 202391840 1)) .v) (.rational 126395965 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 192131480 1) .v) (.rational 451365138 1)) .v) (.rational 274086156 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 291119094 1) .v) (.rational
    666814918 1)) .v) (.rational 393259238 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 307497463 1) .v) (.rational 686528422 1)) .v) (.rational 392907763 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 231719296 1) .v) (.rational 504299484 1))
    .v) (.rational 279983680 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    125230479 1) .v) (.rational 265793764 1)) .v) (.rational 143192567 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 48036020 1) .v) (.rational 99513258 1)) .v) (.rational
    52071691 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 12707179 1) .v)
    (.rational 25723998 1)) .v) (.rational 13094173 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2189600 1) .v) (.rational 4336344 1)) .v) (.rational 2151163 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 219093 1) .v) (.rational 424702 1)) .v)
    (.rational 205609 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 9522 1) .v)
    (.rational 18044 1)) .v) (.rational 8522 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 695797 1) .v)
    (.rational 1661208 1)) .v) (.rational 1011985 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    6262173 1) .v) (.rational 14702270 1)) .v) (.rational 8800369 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25521227 1) .v) (.rational 58876188 1)) .v) (.rational 34589737 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 62227228 1) .v) (.rational
    140956348 1)) .v) (.rational 81194297 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 101007311 1) .v) (.rational 224519413 1)) .v) (.rational 126681213 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 114873745 1) .v) (.rational 250445787 1))
    .v) (.rational 138307823 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    93756303 1) .v) (.rational 200431731 1)) .v) (.rational 108278275 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 55264363 1) .v) (.rational 115843511 1)) .v) (.rational
    61207239 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 23317208 1) .v)
    (.rational 47936733 1)) .v) (.rational 24776812 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6856486 1) .v) (.rational 13831563 1)) .v) (.rational 6997788 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1331138 1) .v) (.rational 2636589 1)) .v)
    (.rational 1306888 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 152805 1)
    .v) (.rational 297321 1)) .v) (.rational 144516 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7816 1) .v) (.rational 14938 1)) .v) (.rational 7122 1)) (.pow .g 12))) (.pow
    .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 115520 1) .v) (.rational 261544 1)) .v) (.rational 149142 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1097440 1) .v) (.rational 2456552 1)) .v) (.rational 1384871 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4734552 1) .v) (.rational 10471492 1)) .v)
    (.rational 5831563 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 12258972 1)
    .v) (.rational 26773286 1)) .v) (.rational 14717550 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 21205866 1) .v) (.rational 45705852 1)) .v) (.rational 24782170 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 25803435 1) .v) (.rational 54858212
    1)) .v) (.rational 29318915 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    22634325 1) .v) (.rational 47446700 1)) .v) (.rational 24980809 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 14413503 1) .v) (.rational 29783232 1)) .v) (.rational
    15441797 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6609597 1) .v)
    (.rational 13462036 1)) .v) (.rational 6872185 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2127521 1) .v) (.rational 4271732 1)) .v) (.rational 2147330 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 456055 1) .v) (.rational 903008 1)) .v)
    (.rational 447168 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 58425 1) .v)
    (.rational 114138 1)) .v) (.rational 55713 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3381 1) .v) (.rational 6520 1)) .v) (.rational 3139 1)) (.pow .g 12))) (.pow
    .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 8890 1) .v) (.rational 19132 1)) .v) (.rational 10302 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 88900 1) .v) (.rational 190032 1)) .v) (.rational 101660 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 404681 1) .v) (.rational 858844 1)) .v)
    (.rational 456236 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1108479 1)
    .v) (.rational 2334602 1)) .v) (.rational 1230899 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2034219 1) .v) (.rational 4249886 1)) .v) (.rational 2222807 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2634108 1) .v) (.rational 5456680 1)) .v)
    (.rational 2829796 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2467290 1)
    .v) (.rational 5066096 1)) .v) (.rational 2603804 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1684074 1) .v) (.rational 3426508 1)) .v) (.rational 1744762 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 831264 1) .v) (.rational 1675712 1)) .v)
    (.rational 845144 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 289384 1) .v)
    (.rational 577976 1)) .v) (.rational 288712 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 67453 1) .v) (.rational 133508 1)) .v) (.rational 66064 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9455 1) .v) (.rational 18554 1)) .v) (.rational
    9099 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 603 1) .v) (.rational
    1174 1)) .v) (.rational 571 1)) (.pow .g 12))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0142

namespace FullLow0143
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow3.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    10*SmallGap.PolarCoefficientsLow2.c050 e f g v*((e+f)*(e+f+g))^5+
    5*SmallGap.PolarCoefficientsLow3.c050 e f g v*e*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow2.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    9*SmallGap.PolarCoefficientsLow1.c140 e f g v*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow2.c140 e f g v*e*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow0.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    2*SmallGap.PolarCoefficientsLow0.c320 e f g v*e*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_010_0 e g v*e^1+6*SmallGap.ReducedLayers.low0_010_1 e
    g v*e^2+4*SmallGap.ReducedLayers.low0_010_2 e g v*e^3+1*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^4+40*SmallGap.ReducedLayers.low0_001_0 e g v*e^2+40*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^3+20*SmallGap.ReducedLayers.low0_001_2 e g v*e^4+4*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_011_0 e g v+3*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_2 e g v*e^2+1*SmallGap.ReducedLayers.low1_011_3 e g
    v*e^3+12*SmallGap.ReducedLayers.low1_002_0 e g v*e^1+18*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_002_2 e g v*e^3+3*SmallGap.ReducedLayers.low1_002_3 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 1960 1) .v) (.rational 69480 1)) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 1330 1) .v) (.rational 34356 1)) .v) (.rational 550186 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3325 1) .v) (.rational 51492 1)) .v) (.rational 683199 1)) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 23025 1) .v) (.rational 291888 1))
    .v) (.rational 2733732 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 69075 1) .v)
    (.rational 592196 1)) .v) (.rational 4667477 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 74870 1) .v) (.rational 379946 1)) .v) (.rational 2711737 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 187210 1) .v)
    (.rational 1585076 1)) .v) (.rational 9572081 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    655235 1) .v) (.rational 4098584 1)) .v) (.rational 20950273 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 887285 1) .v) (.rational 3865560 1)) .v) (.rational 16879192 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 580125 1) .v) (.rational 1643520 1)) .v)
    (.rational 6095989 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 943749 1) .v) (.rational 6109104 1)) .v) (.rational
    25147925 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3774996 1) .v) (.rational 19312022
    1)) .v) (.rational 67711739 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6100856 1)
    .v) (.rational 23991782 1)) .v) (.rational 70760238 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5090082 1) .v) (.rational 15010910 1)) .v) (.rational 36176987 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2309375 1) .v) (.rational 5044722
    1)) .v) (.rational 9362255 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3286188 1) .v) (.rational 17561350 1))
    .v) (.rational 51473128 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 14787846 1) .v)
    (.rational 65784765 1)) .v) (.rational 165962105 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27692352 1) .v) (.rational 101197002 1)) .v) (.rational 215932401 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 27913284 1) .v) (.rational 83050032 1)) .v)
    (.rational 145791240 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 16317680
    1) .v) (.rational 39562244 1)) .v) (.rational 54831963 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5515964 1) .v) (.rational 11102515 1)) .v) (.rational 11525687 1))
    (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 8342704 1) .v) (.rational 38598600 1)) .v) (.rational
    83922842 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 41713520 1) .v) (.rational 167227450
    1)) .v) (.rational 317698044 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 88655810 1)
    .v) (.rational 305987129 1)) .v) (.rational 499959133 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 104342120 1) .v) (.rational 309172194 1)) .v) (.rational 425615637 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 74153704 1) .v) (.rational
    189330920 1)) .v) (.rational 214277974 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32460476 1) .v) (.rational 72399560 1)) .v) (.rational 65815343 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8501952 1) .v) (.rational 17006571 1)) .v)
    (.rational 12313023 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15894598 1) .v)
    (.rational 65619406 1)) .v) (.rational 110168976 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 87420289 1) .v) (.rational 322556494 1)) .v) (.rational 481853324 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 207645337 1) .v) (.rational 682523858 1)) .v)
    (.rational 896238429 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 278751849
    1) .v) (.rational 815764158 1)) .v) (.rational 928829779 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 232258656 1) .v) (.rational 607365888 1)) .v) (.rational
    591619961 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 124005357 1) .v)
    (.rational 292547568 1)) .v) (.rational 241540662 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 42170335 1) .v) (.rational 91253556 1)) .v) (.rational 63978348 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8731981 1) .v) (.rational 17736596
    1)) .v) (.rational 10773305 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    23049258 1) .v) (.rational 86560800 1)) .v) (.rational 116589760 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 138295548 1) .v) (.rational 475453606 1)) .v) (.rational 580857052 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 362748274 1) .v) (.rational 1139616250 1))
    .v) (.rational 1251979341 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    546032180 1) .v) (.rational 1567659812 1)) .v) (.rational 1535472284 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 520330195 1) .v) (.rational 1369012282 1)) .v)
    (.rational 1187023845 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 326378728
    1) .v) (.rational 792013840 1)) .v) (.rational 605981893 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 135575898 1) .v) (.rational 306680960 1)) .v) (.rational
    207889851 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 36486274 1) .v)
    (.rational 78061954 1)) .v) (.rational 47537253 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6003635 1) .v) (.rational 12353436 1)) .v) (.rational 6914065 1)) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 25530614 1) .v) (.rational 88295442
    1)) .v) (.rational 98767180 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 165948991 1) .v)
    (.rational 535348062 1)) .v) (.rational 553296705 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 476104204 1) .v) (.rational 1430947786 1)) .v) (.rational 1358404620 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 793134221 1) .v) (.rational 2221034971 1))
    .v) (.rational 1926285114 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    848897838 1) .v) (.rational 2218957889 1)) .v) (.rational 1751493141 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 609691965 1) .v) (.rational 1493738021 1)) .v)
    (.rational 1072065588 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 297728264
    1) .v) (.rational 688278894 1)) .v) (.rational 450749273 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 97881499 1) .v) (.rational 215475119 1)) .v) (.rational 129933080
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 20922898 1) .v) (.rational
    44328957 1)) .v) (.rational 24955892 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2705329 1) .v) (.rational 5571855 1)) .v) (.rational 2973410 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21473175 1) .v) (.rational
    68928308 1)) .v) (.rational 65972110 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    150312225 1) .v) (.rational 456797426 1)) .v) (.rational 410727619 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 467994251 1) .v) (.rational 1345122261 1)) .v) (.rational
    1131615949 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 853906581 1) .v)
    (.rational 2320886156 1)) .v) (.rational 1820506795 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1012427717 1) .v) (.rational 2604702879 1)) .v) (.rational 1900660831
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 817102955 1) .v) (.rational
    1994687724 1)) .v) (.rational 1353565053 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 456856609 1) .v) (.rational 1062527864 1)) .v) (.rational 672098134 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 176453047 1) .v) (.rational 393170382 1))
    .v) (.rational 233111180 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    46014339 1) .v) (.rational 98876361 1)) .v) (.rational 55404743 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7711825 1) .v) (.rational 16081328 1)) .v) (.rational
    8594500 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 755676 1) .v)
    (.rational 1534633 1)) .v) (.rational 787536 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13489824 1) .v) (.rational 40396254 1))
    .v) (.rational 33910091 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 101173680 1) .v)
    (.rational 290266108 1)) .v) (.rational 232194925 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 339607762 1) .v) (.rational 932574864 1)) .v) (.rational 708865971 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 672982973 1) .v) (.rational 1768098005 1))
    .v) (.rational 1273977637 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    874290522 1) .v) (.rational 2198310552 1)) .v) (.rational 1499061133 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 781613624 1) .v) (.rational 1883146363 1)) .v)
    (.rational 1214844143 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 490793883
    1) .v) (.rational 1135584420 1)) .v) (.rational 693906096 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 216771228 1) .v) (.rational 483218387 1)) .v) (.rational
    280548404 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 66271350 1) .v)
    (.rational 142876488 1)) .v) (.rational 79184534 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 13505991 1) .v) (.rational 28265171 1)) .v) (.rational 15032925 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1707150 1) .v) (.rational 3474798 1)) .v)
    (.rational 1780556 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 115964 1)
    .v) (.rational 228950 1)) .v) (.rational 112986 1)) (.pow .g 11)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6135293 1) .v)
    (.rational 17197488 1)) .v) (.rational 12916099 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 49082344 1) .v) (.rational 133092948 1)) .v) (.rational 96395517 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 176632944 1) .v) (.rational 462898866 1)) .v) (.rational
    322632527 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 377489588 1) .v)
    (.rational 955503012 1)) .v) (.rational 639711485 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 532597643 1) .v) (.rational 1301848373 1)) .v) (.rational 836116561 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 521467866 1) .v) (.rational
    1231361692 1)) .v) (.rational 758208115 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 362336691 1) .v) (.rational 827377709 1)) .v) (.rational 488607788 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 179417204 1) .v) (.rational 396818480 1))
    .v) (.rational 225075619 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    62556468 1) .v) (.rational 134283443 1)) .v) (.rational 73330338 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 14885938 1) .v) (.rational 31074672 1)) .v) (.rational
    16384288 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2274133 1) .v)
    (.rational 4621005 1)) .v) (.rational 2357559 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 197412 1) .v) (.rational 389740 1)) .v) (.rational 192328 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7180 1) .v) (.rational 13660 1)) .v) (.rational
    6480 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 1909288 1) .v) (.rational 5021044 1)) .v) (.rational 3427634 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 16228948 1) .v) (.rational 41619177 1)) .v)
    (.rational 27666679 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 62313418 1) .v)
    (.rational 155689106 1)) .v) (.rational 100621459 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 142771675 1) .v) (.rational 347268021 1)) .v) (.rational 217890339 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 217159613 1) .v) (.rational
    513962577 1)) .v) (.rational 312705295 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 230723259 1) .v) (.rational 531250748 1)) .v) (.rational 313185140 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 175331585 1) .v) (.rational 392840319 1))
    .v) (.rational 224346129 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    95863339 1) .v) (.rational 209130023 1)) .v) (.rational 115743355 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 37352625 1) .v) (.rational 79411136 1)) .v) (.rational
    42635654 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 10089473 1) .v)
    (.rational 20923257 1)) .v) (.rational 10912315 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1787181 1) .v) (.rational 3616769 1)) .v) (.rational 1834366 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 185482 1) .v) (.rational 365942 1)) .v)
    (.rational 180460 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 8466 1) .v)
    (.rational 16217 1)) .v) (.rational 7751 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 363900 1) .v)
    (.rational 899308 1)) .v) (.rational 564980 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    3275100 1) .v) (.rational 7946200 1)) .v) (.rational 4899756 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13360963 1) .v) (.rational 31798158 1)) .v) (.rational 19221047 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 32652104 1) .v) (.rational 76166188
    1)) .v) (.rational 45080853 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    53209135 1) .v) (.rational 121573448 1)) .v) (.rational 70383723 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 60876725 1) .v) (.rational 136175452 1)) .v) (.rational
    77050238 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 50113294 1) .v)
    (.rational 109720464 1)) .v) (.rational 60641386 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 29890271 1) .v) (.rational 64055044 1)) .v) (.rational 34575060 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 12813244 1) .v) (.rational 26882768 1)) .v)
    (.rational 14174218 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3847655 1)
    .v) (.rational 7906108 1)) .v) (.rational 4073998 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 767755 1) .v) (.rational 1545474 1)) .v) (.rational 778743 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 91329 1) .v) (.rational 180064 1)) .v)
    (.rational 88735 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 4893 1) .v)
    (.rational 9436 1)) .v) (.rational 4543 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 32052 1) .v)
    (.rational 74528 1)) .v) (.rational 43512 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    304494 1) .v) (.rational 699126 1)) .v) (.rational 403186 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1314950 1) .v) (.rational 2979010 1)) .v) (.rational 1695470 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3412478 1) .v) (.rational 7622591 1)) .v)
    (.rational 4277569 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5925970 1)
    .v) (.rational 13042776 1)) .v) (.rational 7210494 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7253603 1) .v) (.rational 15721361 1)) .v) (.rational 8555538 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 6416893 1) .v) (.rational 13689683 1))
    .v) (.rational 7328874 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4134143
    1) .v) (.rational 8678991 1)) .v) (.rational 4568928 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1925533 1) .v) (.rational 3977611 1)) .v) (.rational 2058714 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 632555 1) .v) (.rational 1285941 1)) .v)
    (.rational 654444 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 139201 1) .v)
    (.rational 278583 1)) .v) (.rational 139456 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 18439 1) .v) (.rational 36342 1)) .v) (.rational 17903 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1113 1) .v) (.rational 2161 1)) .v) (.rational 1048
    1)) (.pow .g 12))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0143

namespace FullLow0144
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    10*SmallGap.PolarCoefficientsLow3.c050 e f g v*((e+f)*(e+f+g))^5+
    5*SmallGap.PolarCoefficientsLow4.c050 e f g v*e*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow3.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    9*SmallGap.PolarCoefficientsLow2.c140 e f g v*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow3.c140 e f g v*e*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow1.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    7*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2+
    2*SmallGap.PolarCoefficientsLow1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    1*SmallGap.PolarCoefficientsLow0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_010_0 e g v+4*SmallGap.ReducedLayers.low0_010_1 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_010_2 e g v*e^2+4*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^3+1*SmallGap.ReducedLayers.low0_010_4 e g v*e^4+20*SmallGap.ReducedLayers.low0_001_0 e g
    v*e^1+40*SmallGap.ReducedLayers.low0_001_1 e g v*e^2+40*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^3+20*SmallGap.ReducedLayers.low0_001_3 e g v*e^4+4*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_011_1 e g v+3*SmallGap.ReducedLayers.low1_011_2 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_3 e g v*e^2+1*SmallGap.ReducedLayers.low1_011_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_002_0 e g v+12*SmallGap.ReducedLayers.low1_002_1 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_002_2 e g v*e^2+12*SmallGap.ReducedLayers.low1_002_3 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_002_4 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3080 1) .v) (.rational 121800 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1750 1)
    .v) (.rational 50540 1)) .v) (.rational 923244 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4375 1) .v) (.rational 74060 1)) .v) (.rational 1123381 1)) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 29265 1) .v) (.rational 404500 1)) .v)
    (.rational 4373902 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 87795 1) .v) (.rational
    796520 1)) .v) (.rational 7292501 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 95195
    1) .v) (.rational 479710 1)) .v) (.rational 4089312 1)) (.pow .g 2)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 229770 1) .v) (.rational 2083770 1)) .v)
    (.rational 14541263 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 804195 1) .v) (.rational
    5234160 1)) .v) (.rational 31026153 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1089365 1) .v) (.rational 4707160 1)) .v) (.rational 24098736 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 712925 1) .v) (.rational 1842010 1)) .v) (.rational 8206653
    1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1115286 1) .v) (.rational 7661122 1)) .v) (.rational 36125008 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4461144 1) .v) (.rational 23638424 1)) .v) (.rational 94839923
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7211914 1) .v) (.rational 28395024 1))
    .v) (.rational 95745471 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6021738
    1) .v) (.rational 16965368 1)) .v) (.rational 46532701 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2736080 1) .v) (.rational 5373720 1)) .v) (.rational 11099901 1)) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 3719876 1) .v) (.rational 21041716 1)) .v) (.rational 69620906 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16739442 1) .v) (.rational 77369897 1)) .v) (.rational
    219312561 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 31356540 1) .v) (.rational
    116334514 1)) .v) (.rational 276961777 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31630494 1) .v) (.rational 92949410 1)) .v) (.rational 179748272 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 18515822 1) .v) (.rational 43033976 1)) .v)
    (.rational 64069881 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6272018 1)
    .v) (.rational 11789319 1)) .v) (.rational 12536447 1)) (.pow .g 5)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    8975121 1) .v) (.rational 44013060 1)) .v) (.rational 106290957 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 44875605 1) .v) (.rational 188099468 1)) .v) (.rational 394434261 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 95410393 1) .v) (.rational 339005551 1)) .v)
    (.rational 606154396 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 112387942
    1) .v) (.rational 337169028 1)) .v) (.rational 501649281 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 79992209 1) .v) (.rational 203488794 1)) .v) (.rational 244456320
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 35096371 1) .v) (.rational
    77020964 1)) .v) (.rational 72578034 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9220701 1) .v) (.rational 18052001 1)) .v) (.rational 13230671 1)) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 16071234 1) .v) (.rational 70505846 1)) .v) (.rational 129572722
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 88391787 1) .v) (.rational 343160868 1)) .v)
    (.rational 557677656 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 210047259 1) .v)
    (.rational 718874618 1)) .v) (.rational 1019057931 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 282274263 1) .v) (.rational 851214326 1)) .v) (.rational 1036384921 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 235626232 1) .v) (.rational
    629100568 1)) .v) (.rational 648007075 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 126154427 1) .v) (.rational 301901876 1)) .v) (.rational 260632208 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 43066409 1) .v) (.rational 94333090 1)) .v)
    (.rational 68613016 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8960967 1)
    .v) (.rational 18479184 1)) .v) (.rational 11641405 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 21572027 1) .v) (.rational 86265758 1)) .v) (.rational 125703815 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 129432162 1) .v) (.rational 470400984 1)) .v)
    (.rational 618494184 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 339692371 1) .v)
    (.rational 1119936849 1)) .v) (.rational 1316280308 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 512000370 1) .v) (.rational 1532091117 1)) .v) (.rational 1594941163
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 489010925 1) .v) (.rational
    1333392180 1)) .v) (.rational 1220752551 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 307795262 1) .v) (.rational 771240674 1)) .v) (.rational 619733831 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 128477687 1) .v) (.rational 299825429 1))
    .v) (.rational 212937379 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    34797416 1) .v) (.rational 76974393 1)) .v) (.rational 49197018 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5771070 1) .v) (.rational 12333854 1)) .v) (.rational
    7280279 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21662950 1)
    .v) (.rational 79833044 1)) .v) (.rational 95749950 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 140809175 1) .v) (.rational 481389063 1)) .v) (.rational 531290514 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 404259846 1) .v) (.rational 1280766540 1)) .v)
    (.rational 1292673624 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 674528228
    1) .v) (.rational 1981518705 1)) .v) (.rational 1819092373 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 723941851 1) .v) (.rational 1977425662 1)) .v) (.rational
    1645587945 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 522128007 1) .v)
    (.rational 1333470734 1)) .v) (.rational 1006184235 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 256486344 1) .v) (.rational 617720390 1)) .v) (.rational 424969793 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 85000584 1) .v) (.rational
    195199329 1)) .v) (.rational 123835009 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18358793 1) .v) (.rational 40686850 1)) .v) (.rational 24167476 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2404453 1) .v) (.rational 5194403 1)) .v)
    (.rational 2930032 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 16052548 1) .v) (.rational 54859476 1)) .v) (.rational 55905641 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 112367836 1) .v) (.rational 362001204 1)) .v) (.rational
    345487790 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 350143565 1) .v) (.rational
    1062471963 1)) .v) (.rational 945686709 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 640079522 1) .v) (.rational 1829871310 1)) .v) (.rational 1513889916 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 761359062 1) .v) (.rational 2054117827 1))
    .v) (.rational 1576658890 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    617499783 1) .v) (.rational 1577639262 1)) .v) (.rational 1124034451 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 347682900 1) .v) (.rational 845613856 1)) .v)
    (.rational 561262699 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 135578916
    1) .v) (.rational 316043238 1)) .v) (.rational 196749583 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 35807507 1) .v) (.rational 80590503 1)) .v) (.rational 47476138
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 6100826 1) .v) (.rational
    13336686 1)) .v) (.rational 7496147 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 610382 1) .v) (.rational 1297695 1)) .v) (.rational 698349 1)) (.pow .g 10)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8525304 1) .v)
    (.rational 27114500 1)) .v) (.rational 24090203 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 63939780 1) .v) (.rational 194151186 1)) .v) (.rational 163983865 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 214828714 1) .v) (.rational 622270458 1)) .v)
    (.rational 498179191 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 426633311
    1) .v) (.rational 1178704185 1)) .v) (.rational 892361079 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 556297442 1) .v) (.rational 1467103254 1)) .v) (.rational
    1048937141 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 500126836 1) .v)
    (.rational 1261381043 1)) .v) (.rational 851816917 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 316570825 1) .v) (.rational 765856004 1)) .v) (.rational 489443028 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 141372804 1) .v) (.rational
    329343355 1)) .v) (.rational 199935580 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 43865538 1) .v) (.rational 98817682 1)) .v) (.rational 57266300 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9116619 1) .v) (.rational 19923335 1)) .v)
    (.rational 11071841 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1182376 1)
    .v) (.rational 2506474 1)) .v) (.rational 1337838 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 83070 1) .v) (.rational 169520 1)) .v) (.rational 86450 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3072271 1) .v) (.rational 9111276 1)) .v) (.rational 7201625 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 24578168 1) .v) (.rational 70307420 1)) .v) (.rational 53486915 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 88543583 1) .v) (.rational 244088595 1)) .v)
    (.rational 178333187 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 189687141
    1) .v) (.rational 503688671 1)) .v) (.rational 352772209 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 268732907 1) .v) (.rational 687412200 1)) .v) (.rational
    460972416 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 264771253 1) .v)
    (.rational 652925465 1)) .v) (.rational 419084187 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 185630585 1) .v) (.rational 441935003 1)) .v) (.rational 271698301 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 93061613 1) .v) (.rational
    214314602 1)) .v) (.rational 126425974 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32992666 1) .v) (.rational 73652570 1)) .v) (.rational 41791793 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8027187 1) .v) (.rational 17395701 1)) .v)
    (.rational 9515612 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1263032 1)
    .v) (.rational 2655088 1)) .v) (.rational 1400766 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 114062 1) .v) (.rational 231309 1)) .v) (.rational 117247 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 4380 1) .v) (.rational 8436 1)) .v)
    (.rational 4056 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 673500 1) .v) (.rational 1864248 1)) .v) (.rational
    1331432 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5724750 1) .v) (.rational 15414342
    1)) .v) (.rational 10703046 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 22006716 1)
    .v) (.rational 57583948 1)) .v) (.rational 38805829 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 50555370 1) .v) (.rational 128461656 1)) .v) (.rational 83891307 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 77244698 1) .v) (.rational
    190527744 1)) .v) (.rational 120429467 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 82635592 1) .v) (.rational 197848006 1)) .v) (.rational 120957115 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 63416784 1) .v) (.rational 147438662 1)) .v)
    (.rational 87174577 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 35145979 1)
    .v) (.rational 79402958 1)) .v) (.rational 45426826 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13946255 1) .v) (.rational 30642666 1)) .v) (.rational 16978742 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3859368 1) .v) (.rational 8250564
    1)) .v) (.rational 4431517 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    705842 1) .v) (.rational 1467038 1)) .v) (.rational 763808 1)) (.pow .g 10))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 76429 1) .v) (.rational 153930 1)) .v) (.rational 77501 1)) (.pow
    .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 3693 1) .v) (.rational 7150 1)) .v)
    (.rational 3457 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 67866 1) .v) (.rational 175392 1)) .v)
    (.rational 114532 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 610794 1) .v) (.rational
    1546476 1)) .v) (.rational 989846 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2494919 1) .v) (.rational 6182436 1)) .v) (.rational 3873321 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 6114688 1) .v) (.rational 14816548 1)) .v) (.rational 9073943 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10013147 1) .v) (.rational 23708363
    1)) .v) (.rational 14176534 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11541313 1) .v) (.rational 26688739 1)) .v) (.rational 15567463 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9601655 1) .v) (.rational 21679617 1)) .v) (.rational
    12328406 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5810533 1) .v)
    (.rational 12809887 1)) .v) (.rational 7100183 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2539553 1) .v) (.rational 5467163 1)) .v) (.rational 2953898 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 782257 1) .v) (.rational 1644573 1)) .v)
    (.rational 866339 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 161342 1) .v)
    (.rational 331127 1)) .v) (.rational 170061 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 20031 1) .v) (.rational 40081 1)) .v) (.rational 20050 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1134 1) .v) (.rational 2206 1)) .v) (.rational 1072
    1)) (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0144

namespace FullLow0145
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  10*SmallGap.PolarCoefficientsLow4.c050 e f g v*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsLow4.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    9*SmallGap.PolarCoefficientsLow3.c140 e f g v*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow4.c140 e f g v*e*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow3.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow2.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow3.c230 e f g v*e*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    7*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    2*SmallGap.PolarCoefficientsLow2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    6*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_010_1 e g v+4*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_010_3 e g v*e^2+4*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^3+1*SmallGap.ReducedLayers.low0_010_5 e g v*e^4+4*SmallGap.ReducedLayers.low0_001_0 e g
    v+20*SmallGap.ReducedLayers.low0_001_1 e g v*e^1+40*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^2+40*SmallGap.ReducedLayers.low0_001_3 e g v*e^3+20*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^4+4*SmallGap.ReducedLayers.low0_001_5 e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_011_2 e g v+3*SmallGap.ReducedLayers.low1_011_3 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_4 e g v*e^2+1*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_002_1 e g v+12*SmallGap.ReducedLayers.low1_002_2 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_002_3 e g v*e^2+12*SmallGap.ReducedLayers.low1_002_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_002_5 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3220 1) .v)
    (.rational 146580 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1470 1) .v)
    (.rational 49784 1)) .v) (.rational 1065932 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    3675 1) .v) (.rational 71288 1)) .v) (.rational 1269457 1)) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 23907 1) .v) (.rational 376644 1)) .v) (.rational 4820024
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 71721 1) .v) (.rational 717888 1)) .v)
    (.rational 7834555 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 77796 1) .v)
    (.rational 400750 1)) .v) (.rational 4225309 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 182274 1) .v) (.rational 1842958 1)) .v)
    (.rational 15209695 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 637959 1) .v) (.rational
    4479837 1)) .v) (.rational 31570885 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    864513 1) .v) (.rational 3800771 1)) .v) (.rational 23539733 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 566385 1) .v) (.rational 1322201 1)) .v) (.rational 7471305 1))
    (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 855230 1) .v) (.rational 6464816 1)) .v) (.rational 35663154 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3420920 1) .v) (.rational 19402394 1)) .v) (.rational 91094177
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5532348 1) .v) (.rational 22376654 1))
    .v) (.rational 88481193 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4623824
    1) .v) (.rational 12581690 1)) .v) (.rational 40496337 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2104754 1) .v) (.rational 3648972 1)) .v) (.rational 8665719 1)) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 2736994 1) .v) (.rational 16944996 1)) .v) (.rational 64470019 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12316473 1) .v) (.rational 61009728 1)) .v) (.rational
    198055845 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 23080488 1) .v) (.rational
    89310578 1)) .v) (.rational 242037055 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23304834 1) .v) (.rational 69042358 1)) .v) (.rational 150146669 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 13666134 1) .v) (.rational 30800894 1)) .v)
    (.rational 50138592 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4641687 1)
    .v) (.rational 8161548 1)) .v) (.rational 8910610 1)) (.pow .g 5)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    6267633 1) .v) (.rational 33594338 1)) .v) (.rational 91565574 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 31338165 1) .v) (.rational 141412580 1)) .v) (.rational 332666785 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 66658928 1) .v) (.rational 250525991 1)) .v)
    (.rational 498392821 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 78606722
    1) .v) (.rational 244655066 1)) .v) (.rational 400050873 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 56056535 1) .v) (.rational 145138190 1)) .v) (.rational 188130433
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 24666371 1) .v) (.rational
    54269138 1)) .v) (.rational 53838782 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6505754 1) .v) (.rational 12685519 1)) .v) (.rational 9567420 1)) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 10487876 1) .v) (.rational 50264190 1)) .v) (.rational 102552293
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 57683318 1) .v) (.rational 242007668 1)) .v)
    (.rational 434017317 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 137151474 1) .v)
    (.rational 501410734 1)) .v) (.rational 778630731 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 184556748 1) .v) (.rational 587650009 1)) .v) (.rational 776774711 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 154411076 1) .v) (.rational
    430870108 1)) .v) (.rational 476984314 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 82957168 1) .v) (.rational 206029422 1)) .v) (.rational 189422202 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 28452568 1) .v) (.rational 64541742 1)) .v)
    (.rational 49802748 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5954322 1)
    .v) (.rational 12756579 1)) .v) (.rational 8566372 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 12873350 1) .v) (.rational 56160080 1)) .v) (.rational 89681112 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 77240100 1) .v) (.rational 303827522 1)) .v)
    (.rational 435583257 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 202855953 1) .v)
    (.rational 718119000 1)) .v) (.rational 915134677 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 306245515 1) .v) (.rational 976695406 1)) .v) (.rational 1095929633 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 293302929 1) .v) (.rational
    847239120 1)) .v) (.rational 831570277 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 185379726 1) .v) (.rational 490281036 1)) .v) (.rational 420952018 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 77824031 1) .v) (.rational 191592586 1)) .v)
    (.rational 145458022 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 21233115
    1) .v) (.rational 49678624 1)) .v) (.rational 34100762 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3551805 1) .v) (.rational 8064664 1)) .v) (.rational 5143562 1)) (.pow
    .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11470008 1) .v) (.rational
    45987200 1)) .v) (.rational 59853209 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 74555052
    1) .v) (.rational 275643306 1)) .v) (.rational 328824284 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 214222962 1) .v) (.rational 729724394 1)) .v) (.rational 792806339 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 358120719 1) .v) (.rational 1125266083
    1)) .v) (.rational 1107611704 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    385604243 1) .v) (.rational 1122046391 1)) .v) (.rational 998032854 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 279472059 1) .v) (.rational 758589906 1)) .v)
    (.rational 610901555 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 138226172
    1) .v) (.rational 353736598 1)) .v) (.rational 259954446 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 46222549 1) .v) (.rational 112989481 1)) .v) (.rational 76802251
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10095825 1) .v) (.rational
    23885181 1)) .v) (.rational 15253354 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1339424 1) .v) (.rational 3095702 1)) .v) (.rational 1878641 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7220946 1) .v) (.rational
    26745462 1)) .v) (.rational 29351014 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 50546622
    1) .v) (.rational 175646504 1)) .v) (.rational 179965724 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 157655985 1) .v) (.rational 513682173 1)) .v) (.rational 489322094 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 288829824 1) .v) (.rational 883091634 1))
    .v) (.rational 779647888 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    344831154 1) .v) (.rational 991897189 1)) .v) (.rational 810640968 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 281243541 1) .v) (.rational 764633788 1)) .v) (.rational
    579411447 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 159605845 1) .v)
    (.rational 412881898 1)) .v) (.rational 291542845 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 62899642 1) .v) (.rational 156074896 1)) .v) (.rational 103516255 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 16840765 1) .v) (.rational 40402325
    1)) .v) (.rational 25395687 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2918440 1) .v) (.rational 6804618 1)) .v) (.rational 4079299 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 297832 1) .v) (.rational 673609 1)) .v) (.rational 384763 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3046426 1) .v) (.rational 10453448 1)) .v) (.rational 9937402 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 22848195 1) .v) (.rational 74555183 1)) .v) (.rational 67208620 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 76849363 1) .v) (.rational 238313701 1)) .v)
    (.rational 203113732 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 152989902
    1) .v) (.rational 450997138 1)) .v) (.rational 362627458 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 200317473 1) .v) (.rational 562141645 1)) .v) (.rational
    426021781 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 181225286 1) .v)
    (.rational 485436060 1)) .v) (.rational 347029363 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 115736873 1) .v) (.rational 297077715 1)) .v) (.rational 200884489 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 52313724 1) .v) (.rational
    129280467 1)) .v) (.rational 83052919 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16493335 1) .v) (.rational 39415367 1)) .v) (.rational 24173715 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3499438 1) .v) (.rational 8105690 1)) .v)
    (.rational 4761097 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 465957 1)
    .v) (.rational 1042933 1)) .v) (.rational 585727 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 33819 1) .v) (.rational 72090 1)) .v) (.rational 38271 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    773406 1) .v) (.rational 2462352 1)) .v) (.rational 2070174 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6187248 1) .v) (.rational 18935892 1)) .v) (.rational 15290280 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 22316668 1) .v) (.rational 65602212 1)) .v)
    (.rational 50760708 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 47939836 1)
    .v) (.rational 135328990 1)) .v) (.rational 100162620 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 68233315 1) .v) (.rational 185057605 1)) .v) (.rational 130884952 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 67701806 1) .v) (.rational
    176634346 1)) .v) (.rational 119379583 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 47942934 1) .v) (.rational 120564463 1)) .v) (.rational 77953923 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 24367153 1) .v) (.rational 59202908 1)) .v)
    (.rational 36695951 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8799212 1)
    .v) (.rational 20697013 1)) .v) (.rational 12326355 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2193764 1) .v) (.rational 4997542 1)) .v) (.rational 2863237 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 356526 1) .v) (.rational 783937 1)) .v)
    (.rational 431209 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 33625 1) .v)
    (.rational 70578 1)) .v) (.rational 36953 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1371 1) .v) (.rational 2674 1)) .v) (.rational 1303 1)) (.pow .g 12)))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 89424
    1) .v) (.rational 264336 1)) .v) (.rational 199632 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 760104 1) .v) (.rational 2178990 1)) .v) (.rational 1596954 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2925938 1) .v) (.rational 8126428 1)) .v) (.rational
    5768694 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6742455 1) .v)
    (.rational 18131059 1)) .v) (.rational 12446258 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10356139 1) .v) (.rational 26956977 1)) .v) (.rational 17873507 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 11167312 1) .v) (.rational 28143770 1)) .v)
    (.rational 18012668 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8667823 1)
    .v) (.rational 21162457 1)) .v) (.rational 13074627 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4879347 1) .v) (.rational 11549939 1)) .v) (.rational 6892066 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1977370 1) .v) (.rational 4540334 1)) .v)
    (.rational 2618563 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 562794 1)
    .v) (.rational 1252822 1)) .v) (.rational 698382 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 106853 1) .v) (.rational 229949 1)) .v) (.rational 123671 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 12164 1) .v) (.rational 25132 1)) .v) (.rational
    12968 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 629 1) .v) (.rational
    1231 1)) .v) (.rational 602 1)) (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0145

namespace FullLow0146
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  9*SmallGap.PolarCoefficientsLow4.c140 e f g v*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsLow4.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow3.c230 e f g v*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow4.c230 e f g v*e*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow3.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    7*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    2*SmallGap.PolarCoefficientsLow3.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    6*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow2.c410 e f g v*e*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_010_2 e g v+4*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_010_4 e g v*e^2+4*SmallGap.ReducedLayers.low0_010_5 e g
    v*e^3+1*SmallGap.ReducedLayers.low0_010_6 e g v*e^4+4*SmallGap.ReducedLayers.low0_001_1 e g
    v+20*SmallGap.ReducedLayers.low0_001_2 e g v*e^1+40*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^2+40*SmallGap.ReducedLayers.low0_001_4 e g v*e^3+20*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_011_3 e g v+3*SmallGap.ReducedLayers.low1_011_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_5 e g v*e^2+1*SmallGap.ReducedLayers.low1_011_6 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_002_2 e g v+12*SmallGap.ReducedLayers.low1_002_3 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_002_4 e g v*e^2+12*SmallGap.ReducedLayers.low1_002_5 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_002_6 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2240 1) .v) (.rational
    122640 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 770 1) .v) (.rational 32844 1))
    .v) (.rational 857612 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1925 1) .v) (.rational
    45948 1)) .v) (.rational 998571 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 12255 1) .v) (.rational 235968 1)) .v) (.rational 3706578 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 36765 1) .v) (.rational 434368 1)) .v) (.rational 5863969 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 39895 1) .v) (.rational 221494 1)) .v) (.rational
    3030758 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 91262 1) .v) (.rational 1099848 1)) .v) (.rational 11103201 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 319417 1) .v) (.rational 2578397 1)) .v) (.rational 22377177 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 433039 1) .v) (.rational 2038827 1)) .v)
    (.rational 15949545 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 284055 1)
    .v) (.rational 595987 1)) .v) (.rational 4654625 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 415841 1) .v) (.rational
    3687946 1)) .v) (.rational 24539292 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1663364
    1) .v) (.rational 10734254 1)) .v) (.rational 60872895 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2691308 1) .v) (.rational 11799431 1)) .v) (.rational 56686301 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2252150 1) .v) (.rational 6127509 1)) .v)
    (.rational 24202308 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1027587 1)
    .v) (.rational 1549159 1)) .v) (.rational 4477327 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1280536 1) .v)
    (.rational 9225444 1)) .v) (.rational 41463094 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5762412 1) .v) (.rational 32464322 1)) .v) (.rational 124065588 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10804472 1) .v) (.rational 46109738 1)) .v) (.rational
    146435151 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10924396 1) .v)
    (.rational 34280597 1)) .v) (.rational 86500610 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6421936 1) .v) (.rational 14595431 1)) .v) (.rational 26810284 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2189478 1) .v) (.rational 3698465 1)) .v)
    (.rational 4217150 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2782543 1) .v) (.rational 17263906
    1)) .v) (.rational 54384451 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 13912715 1) .v)
    (.rational 71504090 1)) .v) (.rational 193333442 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 29613402 1) .v) (.rational 124353114 1)) .v) (.rational 282276919 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 34977318 1) .v) (.rational 119051628 1)) .v)
    (.rational 219802845 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 25013631
    1) .v) (.rational 69326149 1)) .v) (.rational 99915754 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11053683 1) .v) (.rational 25599151 1)) .v) (.rational 27712472 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2932284 1) .v) (.rational 5976275
    1)) .v) (.rational 4864256 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4327564 1) .v)
    (.rational 23860648 1)) .v) (.rational 55212279 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23801602 1) .v) (.rational 113570663 1)) .v) (.rational 229742562 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 56639574 1) .v) (.rational 232606431 1)) .v)
    (.rational 404855474 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 76366068
    1) .v) (.rational 269801008 1)) .v) (.rational 396892562 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 64109052 1) .v) (.rational 196385042 1)) .v) (.rational 240328828
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 34617912 1) .v) (.rational
    93733750 1)) .v) (.rational 94963358 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11955504 1) .v) (.rational 29520612 1)) .v) (.rational 25218014 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2523462 1) .v) (.rational 5903683 1)) .v)
    (.rational 4443632 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4789551 1)
    .v) (.rational 23838306 1)) .v) (.rational 42535708 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 28737306 1) .v) (.rational 127880220 1)) .v) (.rational 203939372 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 75550026 1) .v) (.rational 299993267 1)) .v)
    (.rational 423251420 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 114324825
    1) .v) (.rational 405769207 1)) .v) (.rational 501860334 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 109935897 1) .v) (.rational 351225804 1)) .v) (.rational
    378873915 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 69905004 1) .v)
    (.rational 203774216 1)) .v) (.rational 192356941 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 29590874 1) .v) (.rational 80284140 1)) .v) (.rational 67341925 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8159007 1) .v) (.rational 21092682
    1)) .v) (.rational 16124854 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1381660 1) .v) (.rational 3477179 1)) .v) (.rational 2484736 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 3679608 1) .v) (.rational 16662096 1)) .v)
    (.rational 23954080 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 23917452 1) .v)
    (.rational 99219576 1)) .v) (.rational 130278126 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 68804664 1) .v) (.rational 261312182 1)) .v) (.rational 311383220 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 115333680 1) .v) (.rational 401768948 1)) .v)
    (.rational 432446298 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 124757588
    1) .v) (.rational 400741926 1)) .v) (.rational 389120952 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 91044504 1) .v) (.rational 272166622 1)) .v) (.rational 239382002
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 45461160 1) .v) (.rational
    128109868 1)) .v) (.rational 103130397 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15391524 1) .v) (.rational 41495675 1)) .v) (.rational 31033244 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3413002 1) .v) (.rational 8921791 1)) .v)
    (.rational 6287130 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 460429 1)
    .v) (.rational 1175399 1)) .v) (.rational 785435 1)) (.pow .g 9)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1863102 1) .v) (.rational 7710726 1)) .v)
    (.rational 9261281 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 13041714 1) .v) (.rational
    50369936 1)) .v) (.rational 56320008 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    40730076 1) .v) (.rational 146749780 1)) .v) (.rational 152119447 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 74838174 1) .v) (.rational 251893978 1)) .v) (.rational
    241414664 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 89794517 1) .v)
    (.rational 283361510 1)) .v) (.rational 251008106 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 73783507 1) .v) (.rational 219616924 1)) .v) (.rational 180341396 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 42307562 1) .v) (.rational
    119753686 1)) .v) (.rational 91746214 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16901948 1) .v) (.rational 45916142 1)) .v) (.rational 33105735 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4603544 1) .v) (.rational 12099449 1)) .v)
    (.rational 8275886 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 814160 1)
    .v) (.rational 2077439 1)) .v) (.rational 1352181 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 84869 1) .v) (.rational 208919 1)) .v) (.rational 128534 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 558720 1)
    .v) (.rational 2120688 1)) .v) (.rational 2189592 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4190400 1) .v) (.rational 15056586 1)) .v) (.rational 14704434 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 14113416 1) .v) (.rational 47986154 1)) .v) (.rational
    44196648 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 28182804 1) .v)
    (.rational 90743190 1)) .v) (.rational 78668724 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 37092540 1) .v) (.rational 113348244 1)) .v) (.rational 92460593 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 33817806 1) .v) (.rational 98442687 1)) .v)
    (.rational 75679062 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 21831390 1)
    .v) (.rational 60840853 1)) .v) (.rational 44238080 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10010376 1) .v) (.rational 26854810 1)) .v) (.rational 18557718 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3214502 1) .v) (.rational 8338278
    1)) .v) (.rational 5499867 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    697663 1) .v) (.rational 1751409 1)) .v) (.rational 1103895 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 95397 1) .v) (.rational 230191 1)) .v) (.rational 137863 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 7115 1) .v) (.rational 16118 1))
    .v) (.rational 9003 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 75168 1) .v) (.rational 262476 1)) .v) (.rational
    238098 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 601344 1) .v) (.rational 2010384 1))
    .v) (.rational 1747494 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2172018 1) .v)
    (.rational 6948020 1)) .v) (.rational 5773637 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4680606 1) .v) (.rational 14329002 1)) .v) (.rational 11363890 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6697605 1) .v) (.rational 19643360 1)) .v)
    (.rational 14857291 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6698904 1)
    .v) (.rational 18860284 1)) .v) (.rational 13610922 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4797666 1) .v) (.rational 13001583 1)) .v) (.rational 8967133 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2475993 1) .v) (.rational 6476817 1)) .v)
    (.rational 4278922 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 912370 1)
    .v) (.rational 2307824 1)) .v) (.rational 1463220 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 233566 1) .v) (.rational 570598 1)) .v) (.rational 347076 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 39300 1) .v) (.rational 92035 1)) .v)
    (.rational 53424 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 3883 1) .v)
    (.rational 8547 1)) .v) (.rational 4664 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 169 1) .v) (.rational 334 1)) .v) (.rational 165 1)) (.pow .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0146

namespace FullLow0147
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsLow4.c230 e f g v*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsLow4.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    7*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    2*SmallGap.PolarCoefficientsLow4.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow3.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    6*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow3.c410 e f g v*e*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_010_3 e g v+4*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_010_5 e g v*e^2+4*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^3+4*SmallGap.ReducedLayers.low0_001_2 e g v+20*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^1+40*SmallGap.ReducedLayers.low0_001_4 e g v*e^2+40*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_011_4 e g v+3*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_6 e g v*e^2+1*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_002_3 e g v+12*SmallGap.ReducedLayers.low1_002_4 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_002_5 e g v*e^2+12*SmallGap.ReducedLayers.low1_002_6 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1000 1) .v) (.rational 70440 1))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 230 1) .v) (.rational 13996 1)) .v)
    (.rational 474822 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 575 1) .v) (.rational 19132
    1)) .v) (.rational 539957 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 3603 1) .v) (.rational 96032 1)) .v) (.rational 1964564 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10809 1) .v) (.rational 170476 1)) .v) (.rational 3020335 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11734 1) .v) (.rational 78110 1)) .v) (.rational
    1490679 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 26358 1) .v) (.rational 428272 1)) .v) (.rational 5589731 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 92253 1) .v) (.rational 965894 1)) .v) (.rational 10918559 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 125131 1) .v) (.rational 702650 1)) .v) (.rational
    7410782 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 82195 1) .v) (.rational
    155950 1)) .v) (.rational 1958403 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 117217 1) .v) (.rational 1377760 1)) .v)
    (.rational 11634917 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 468868 1) .v) (.rational
    3881946 1)) .v) (.rational 27991737 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    759096 1) .v) (.rational 4041222 1)) .v) (.rational 24931224 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 636250 1) .v) (.rational 1894622 1)) .v) (.rational 9853517 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 291179 1) .v) (.rational 380822 1))
    .v) (.rational 1502857 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 348558 1) .v) (.rational 3293314 1)) .v)
    (.rational 18311001 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1568511 1) .v) (.rational
    11318254 1)) .v) (.rational 53341881 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2943248 1) .v) (.rational 15567610 1)) .v) (.rational 60810413 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2981650 1) .v) (.rational 11082478 1)) .v) (.rational
    34226058 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1758862 1) .v)
    (.rational 4465052 1)) .v) (.rational 9851326 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 602889 1) .v) (.rational 1069264 1)) .v) (.rational 1365021 1)) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 719116 1) .v) (.rational 5789956 1)) .v) (.rational 21986631 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3595580 1) .v) (.rational 23588476 1)) .v) (.rational
    76505596 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7661023 1) .v) (.rational
    40264052 1)) .v) (.rational 109051781 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9070612 1) .v) (.rational 37799486 1)) .v) (.rational 82761011 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6514358 1) .v) (.rational 21633126 1)) .v)
    (.rational 36754217 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2897368 1)
    .v) (.rational 7912182 1)) .v) (.rational 10100125 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 775453 1) .v) (.rational 1853354 1)) .v) (.rational 1814359 1)) (.pow
    .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1033740 1) .v) (.rational 7285346 1)) .v) (.rational
    19872242 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5685570 1) .v) (.rational 34266122
    1)) .v) (.rational 81348283 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 13547808 1)
    .v) (.rational 69386938 1)) .v) (.rational 141114315 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 18323361 1) .v) (.rational 79743082 1)) .v) (.rational 136615843 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 15465380 1) .v) (.rational 57774376
    1)) .v) (.rational 82354925 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8418802 1) .v) (.rational 27645392 1)) .v) (.rational 32877863 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2939866 1) .v) (.rational 8802192 1)) .v) (.rational
    8981864 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 629319 1) .v)
    (.rational 1790408 1)) .v) (.rational 1642213 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 1013730 1) .v) (.rational 6317976 1)) .v) (.rational 13047586 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6082380 1) .v) (.rational 33583884 1)) .v) (.rational
    61773446 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16017818 1) .v) (.rational
    78195916 1)) .v) (.rational 126851028 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 24333940 1) .v) (.rational 105303800 1)) .v) (.rational 149482200 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 23556717 1) .v) (.rational 91190968 1)) .v)
    (.rational 113029477 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 15129408
    1) .v) (.rational 53273138 1)) .v) (.rational 58114669 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6492966 1) .v) (.rational 21281222 1)) .v) (.rational 20837012 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1822338 1) .v) (.rational 5699826
    1)) .v) (.rational 5137663 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    315269 1) .v) (.rational 959258 1)) .v) (.rational 810627 1)) (.pow .g 8)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 644364 1) .v) (.rational 3565476 1)) .v) (.rational
    5842144 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4188366 1) .v) (.rational 21074028
    1)) .v) (.rational 31451536 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 12073512 1)
    .v) (.rational 55206444 1)) .v) (.rational 74589120 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 20332290 1) .v) (.rational 84710052 1)) .v) (.rational 103222332 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 22166982 1) .v) (.rational 84721282
    1)) .v) (.rational 93157635 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    16367283 1) .v) (.rational 58033966 1)) .v) (.rational 57962099 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8306000 1) .v) (.rational 27726858 1)) .v) (.rational
    25465727 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2872324 1) .v)
    (.rational 9166446 1)) .v) (.rational 7853986 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 653932 1) .v) (.rational 2017936 1)) .v) (.rational 1628828 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 90936 1) .v) (.rational 271804 1)) .v) (.rational
    206346 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    238464 1) .v) (.rational 1175040 1)) .v) (.rational 1587402 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1669248 1) .v) (.rational 7627680 1)) .v) (.rational 9569700 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5224854 1) .v) (.rational 22132608 1)) .v) (.rational
    25683464 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9648900 1) .v)
    (.rational 37960116 1)) .v) (.rational 40654294 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11676162 1) .v) (.rational 42856008 1)) .v) (.rational 42388027 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 9716304 1) .v) (.rational 33514188 1)) .v)
    (.rational 30743544 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5669563 1)
    .v) (.rational 18547868 1)) .v) (.rational 15896319 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2317624 1) .v) (.rational 7258166 1)) .v) (.rational 5859403 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 649777 1) .v) (.rational 1960182 1)) .v)
    (.rational 1498271 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 118963 1)
    .v) (.rational 345390 1)) .v) (.rational 249400 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12861 1) .v) (.rational 35456 1)) .v) (.rational 23838 1)) (.pow .g 10))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 38880 1) .v)
    (.rational 171360 1)) .v) (.rational 196740 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    291600 1) .v) (.rational 1210032 1)) .v) (.rational 1310958 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 984276 1) .v) (.rational 3843900 1)) .v) (.rational 3918176 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1975194 1) .v) (.rational 7267452 1)) .v)
    (.rational 6957974 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2621148 1)
    .v) (.rational 9112242 1)) .v) (.rational 8195718 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2418900 1) .v) (.rational 7982298 1)) .v) (.rational 6760219 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1587564 1) .v) (.rational 5002434 1)) .v)
    (.rational 4005769 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 743589 1)
    .v) (.rational 2250642 1)) .v) (.rational 1712003 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 245046 1) .v) (.rational 715268 1)) .v) (.rational 518344 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 54771 1) .v) (.rational 154038 1)) .v)
    (.rational 106166 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 7707 1) .v)
    (.rational 20670 1)) .v) (.rational 13418 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 582 1) .v) (.rational 1442 1)) .v) (.rational 860 1)) (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0147

namespace FullLow0148
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  7*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsLow4.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    6*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    1*SmallGap.PolarCoefficientsLow4.c410 e f g v*e*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_010_4 e g v+4*SmallGap.ReducedLayers.low0_010_5 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_010_6 e g v*e^2+4*SmallGap.ReducedLayers.low0_001_3 e g
    v+20*SmallGap.ReducedLayers.low0_001_4 e g v*e^1+40*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_011_5 e g v+3*SmallGap.ReducedLayers.low1_011_6 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_7 e g v*e^2+3*SmallGap.ReducedLayers.low1_002_4 e g
    v+12*SmallGap.ReducedLayers.low1_002_5 e g v*e^1+18*SmallGap.ReducedLayers.low1_002_6 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 260 1) .v) (.rational 26580 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 30 1) .v) (.rational 3496 1)) .v) (.rational 173131 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 75 1) .v) (.rational 4672 1)) .v) (.rational 192089
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 465 1) .v) (.rational
    23058 1)) .v) (.rational 686902 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1395 1) .v)
    (.rational 39456 1)) .v) (.rational 1024667 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1515 1) .v) (.rational 15956 1)) .v) (.rational 481232 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3360 1) .v) (.rational 98956
    1)) .v) (.rational 1857931 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 11760 1) .v)
    (.rational 214474 1)) .v) (.rational 3511773 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15960 1) .v) (.rational 141730 1)) .v) (.rational 2262407 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10500 1) .v) (.rational 19040 1)) .v) (.rational
    532539 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 14655 1) .v) (.rational 306986 1)) .v) (.rational 3640261 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 58620 1) .v) (.rational 837146 1)) .v) (.rational 8487223
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 94980 1) .v) (.rational 822066 1)) .v)
    (.rational 7226350 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 79770 1) .v)
    (.rational 339258 1)) .v) (.rational 2636749 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36645 1) .v) (.rational 43942 1)) .v) (.rational 315739 1)) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 42240 1) .v) (.rational 702448 1)) .v) (.rational 5314990 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 190080 1) .v) (.rational 2359100 1)) .v) (.rational 15080578 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 357060 1) .v) (.rational 3143708 1)) .v)
    (.rational 16651887 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 362670 1)
    .v) (.rational 2141610 1)) .v) (.rational 9003819 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 214950 1) .v) (.rational 813422 1)) .v) (.rational 2462469 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 74220 1) .v) (.rational 182684 1)) .v)
    (.rational 322993 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 82800 1) .v) (.rational 1152752 1)) .v)
    (.rational 5774143 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 414000 1) .v) (.rational
    4620760 1)) .v) (.rational 19688258 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    883425 1) .v) (.rational 7750250 1)) .v) (.rational 27514767 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1049700 1) .v) (.rational 7153142 1)) .v) (.rational 20568219 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 758580 1) .v) (.rational 4042894
    1)) .v) (.rational 9130881 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    340590 1) .v) (.rational 1475406 1)) .v) (.rational 2591983 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 92355 1) .v) (.rational 349574 1)) .v) (.rational 501067 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 109260 1) .v) (.rational 1293480 1)) .v)
    (.rational 4525842 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 600930 1) .v) (.rational
    6007800 1)) .v) (.rational 18242046 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1434990 1) .v) (.rational 12033740 1)) .v) (.rational 31265178 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1950480 1) .v) (.rational 13734592 1)) .v) (.rational
    30145548 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1660320 1) .v)
    (.rational 9951628 1)) .v) (.rational 18370375 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 915390 1) .v) (.rational 4808150 1)) .v) (.rational 7571113 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 325290 1) .v) (.rational 1560426 1)) .v)
    (.rational 2171471 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 71220 1) .v)
    (.rational 325072 1)) .v) (.rational 415477 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 92610 1) .v) (.rational 930252 1)) .v) (.rational 2402538 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 555660 1) .v) (.rational 4891788 1)) .v) (.rational 11233302 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1467720 1) .v) (.rational 11302036 1)) .v)
    (.rational 22876560 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2245050 1)
    .v) (.rational 15180320 1)) .v) (.rational 26943234 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2198655 1) .v) (.rational 13209098 1)) .v) (.rational 20605557 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1436580 1) .v) (.rational 7824122
    1)) .v) (.rational 10868263 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    631260 1) .v) (.rational 3196898 1)) .v) (.rational 4040222 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 182700 1) .v) (.rational 880878 1)) .v) (.rational 1033113 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 32835 1) .v) (.rational 152582 1))
    .v) (.rational 167017 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    45360 1) .v) (.rational 383616 1)) .v) (.rational 767268 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 294840 1) .v) (.rational 2245320 1)) .v) (.rational 4085964 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 853380 1) .v) (.rational 5846184 1)) .v) (.rational 9624222
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1450350 1) .v) (.rational
    8965680 1)) .v) (.rational 13317654 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1605690 1) .v) (.rational 9029220 1)) .v) (.rational 12132556 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1212840 1) .v) (.rational 6283164 1)) .v) (.rational
    7702614 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 635100 1) .v)
    (.rational 3076700 1)) .v) (.rational 3483543 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 228900 1) .v) (.rational 1050030 1)) .v) (.rational 1109307 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 54930 1) .v) (.rational 239582 1)) .v) (.rational
    236506 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 8145 1) .v) (.rational
    33396 1)) .v) (.rational 30422 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 9720 1) .v) (.rational 68688 1)) .v) (.rational 110628 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 68040 1) .v) (.rational 441936 1)) .v) (.rational
    660348 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 214110 1) .v) (.rational 1275900
    1)) .v) (.rational 1761150 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    400140 1) .v) (.rational 2189556 1)) .v) (.rational 2786082 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 493920 1) .v) (.rational 2491524 1)) .v) (.rational 2925825 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 423270 1) .v) (.rational 1980888
    1)) .v) (.rational 2156472 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    257265 1) .v) (.rational 1124730 1)) .v) (.rational 1142271 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 111060 1) .v) (.rational 455382 1)) .v) (.rational 433431 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 33435 1) .v) (.rational 128148 1))
    .v) (.rational 114121 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 6705 1)
    .v) (.rational 23658 1)) .v) (.rational 19472 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 810 1) .v) (.rational 2550 1)) .v) (.rational 1885 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0148

namespace FullLow0149
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  6*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_010_5 e g v+4*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_001_4 e g v+20*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_011_6 e g v+3*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_002_5 e g v+12*SmallGap.ReducedLayers.low1_002_6 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 30 1) .v) (.rational 5950 1)) .e) (.add (.mul (.add (.mul
    (.rational 390 1) .v) (.rational 37539 1)) .f) (.mul (.add (.mul (.rational 510 1) .v)
    (.rational 40596 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 2490 1) .v)
    (.rational 143052 1)) .f) (.mul (.add (.mul (.rational 4110 1) .v) (.rational 206726 1)) .g))
    .f) (.mul (.add (.mul (.rational 1440 1) .v) (.rational 92062 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10350 1) .v) (.rational 368138 1)) .f)
    (.mul (.add (.mul (.rational 21570 1) .v) (.rational 672328 1)) .g)) .f) (.mul (.add (.mul
    (.rational 12810 1) .v) (.rational 410116 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational
    360 1) .v) (.rational 84578 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 31140 1) .v) (.rational 678492 1)) .f) (.mul (.add (.mul
    (.rational 82320 1) .v) (.rational 1532564 1)) .g)) .f) (.mul (.add (.mul (.rational 76230 1)
    .v) (.rational 1249844 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 27030 1) .v)
    (.rational 423934 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 900 1) .v) (.rational
    39582 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 68280 1) .v) (.rational 913826 1)) .f) (.mul (.add (.mul (.rational 224460 1)
    .v) (.rational 2528028 1)) .g)) .f) (.mul (.add (.mul (.rational 290610 1) .v) (.rational
    2719566 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 190230 1) .v) (.rational 1438528
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 68430 1) .v) (.rational 394740 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.rational 14460 1) .v) (.rational 58158 1)) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    103500 1) .v) (.rational 882312 1)) .f) (.mul (.add (.mul (.rational 408240 1) .v) (.rational
    2951208 1)) .g)) .f) (.mul (.add (.mul (.rational 673920 1) .v) (.rational 4068936 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.rational 614040 1) .v) (.rational 3044880 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.rational 345330 1) .v) (.rational 1395932 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.rational 127050 1) .v) (.rational 428906 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 30720 1) .v) (.rational 92002 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 100260 1) .v)
    (.rational 574548 1)) .f) (.mul (.add (.mul (.rational 458820 1) .v) (.rational 2279832 1))
    .g)) .f) (.mul (.add (.mul (.rational 908700 1) .v) (.rational 3876840 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 1032480 1) .v) (.rational 3763944 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 752550 1) .v) (.rational 2362554 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 370290 1) .v) (.rational 1026976 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 123570 1) .v) (.rational 313124 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    26520 1) .v) (.rational 62558 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 55080 1) .v)
    (.rational 223560 1)) .f) (.mul (.add (.mul (.rational 285120 1) .v) (.rational 1030320 1))
    .g)) .f) (.mul (.add (.mul (.rational 652140 1) .v) (.rational 2084448 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 874800 1) .v) (.rational 2470392 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 769140 1) .v) (.rational 1933812 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 466200 1) .v) (.rational 1060876 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 196950 1) .v) (.rational 412892 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    56370 1) .v) (.rational 109714 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 10110 1) .v)
    (.rational 18084 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12960 1) .v)
    (.rational 38880 1)) .f) (.mul (.add (.mul (.rational 74520 1) .v) (.rational 204120 1)) .g))
    .f) (.mul (.add (.mul (.rational 192060 1) .v) (.rational 477372 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.rational 294660 1) .v) (.rational 663168 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.rational 300780 1) .v) (.rational 615094 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational
    215100 1) .v) (.rational 402948 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational 109530 1)
    .v) (.rational 189502 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational 39150 1) .v)
    (.rational 62688 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 9360 1) .v) (.rational
    13761 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 1350 1) .v) (.rational 1790 1)) (.pow
    .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow0149

namespace FullLow01410
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  5*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_010_6 e g v+4*SmallGap.ReducedLayers.low0_001_5 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_011_7 e g v+3*SmallGap.ReducedLayers.low1_002_6 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 600 1) .e) (.add (.mul (.rational 3675 1) .f) (.mul (.rational 3870 1) .g))) .e)
    (.add (.mul (.add (.mul (.rational 13470 1) .f) (.mul (.rational 18825 1) .g)) .f) (.mul
    (.rational 7920 1) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 33000 1)
    .f) (.mul (.rational 58140 1) .g)) .f) (.mul (.rational 33525 1) (.pow .g 2))) .f) (.mul
    (.rational 5970 1) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 57120 1) .f) (.mul (.rational 124980 1) .g)) .f) (.mul (.rational 98070 1) (.pow .g
    2))) .f) (.mul (.rational 31575 1) (.pow .g 3))) .f) (.mul (.rational 2640 1) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 70290 1) .f) (.mul
    (.rational 189720 1) .g)) .f) (.mul (.rational 200460 1) (.pow .g 2))) .f) (.mul (.rational
    106560 1) (.pow .g 3))) .f) (.mul (.rational 31575 1) (.pow .g 4))) .f) (.mul (.rational 5970
    1) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 58500 1) .f) (.mul (.rational 191790 1) .g)) .f) (.mul (.rational 262560 1) (.pow
    .g 2))) .f) (.mul (.rational 200460 1) (.pow .g 3))) .f) (.mul (.rational 98070 1) (.pow .g
    4))) .f) (.mul (.rational 33525 1) (.pow .g 5))) .f) (.mul (.rational 7920 1) (.pow .g 6))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 29160 1) .f) (.mul (.rational 113400 1) .g)) .f) (.mul (.rational 191790 1) (.pow
    .g 2))) .f) (.mul (.rational 189720 1) (.pow .g 3))) .f) (.mul (.rational 124980 1) (.pow .g
    4))) .f) (.mul (.rational 58140 1) (.pow .g 5))) .f) (.mul (.rational 18825 1) (.pow .g 6)))
    .f) (.mul (.rational 3870 1) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6480 1) .f) (.mul (.rational
    29160 1) .g)) .f) (.mul (.rational 58500 1) (.pow .g 2))) .f) (.mul (.rational 70290 1) (.pow
    .g 3))) .f) (.mul (.rational 57120 1) (.pow .g 4))) .f) (.mul (.rational 33000 1) (.pow .g
    5))) .f) (.mul (.rational 13470 1) (.pow .g 6))) .f) (.mul (.rational 3675 1) (.pow .g 7)))
    .f) (.mul (.rational 600 1) (.pow .g 8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow01410

end
end SPR.N6.Tail.CoreEndpoint
