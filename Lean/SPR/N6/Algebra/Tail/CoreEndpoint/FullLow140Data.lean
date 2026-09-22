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

namespace FullLow1400
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c104 e f g v*((e+f)*(e+f+g))^4*(f+g)^4+
    1*SmallGap.PolarCoefficientsLow0.c113 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^3+
    1*SmallGap.PolarCoefficientsLow0.c122 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)^2+
    1*SmallGap.PolarCoefficientsLow0.c131 e f g v*e^3*((e+f)*(e+f+g))^4*(f+g)+
    1*SmallGap.PolarCoefficientsLow0.c140 e f g v*e^4*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_100_0 e g v*e^8+4*SmallGap.ReducedLayers.low0_010_0 e
    g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_110_0 e g v*e^6+3*SmallGap.ReducedLayers.low1_020_0 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20 1) .v) (.rational
    600 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 20 1) .v) (.rational 452 1)) .v)
    (.rational 5687 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 50 1) .v) (.rational 724 1))
    .v) (.rational 7676 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    406 1) .v) (.rational 4718 1)) .v) (.rational 33948 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1218 1) .v) (.rational 10332 1)) .v) (.rational 63552 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1318 1) .v) (.rational 7582 1)) .v) (.rational 41854 1)) (.pow .g
    2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3822 1) .v)
    (.rational 30358 1)) .v) (.rational 143088 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    13377 1) .v) (.rational 84038 1)) .v) (.rational 343837 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 18079 1) .v) (.rational 87142 1)) .v) (.rational 312731 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11755 1) .v) (.rational 42170 1)) .v) (.rational
    133361 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 22215 1) .v) (.rational 135394 1)) .v) (.rational 452567 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 88860 1) .v) (.rational 452098 1)) .v) (.rational 1331439
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 143310 1) .v) (.rational 599500 1)) .v)
    (.rational 1552031 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 118920 1)
    .v) (.rational 403336 1)) .v) (.rational 911049 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 53395 1) .v) (.rational 145194 1)) .v) (.rational 281660 1)) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 89478 1) .v) (.rational 445640 1)) .v) (.rational 1114375 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 402651 1) .v) (.rational 1739862 1)) .v) (.rational 3887437 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 752340 1) .v) (.rational 2795444 1)) .v)
    (.rational 5543850 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 754152 1)
    .v) (.rational 2390198 1)) .v) (.rational 4163574 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 436396 1) .v) (.rational 1172454 1)) .v) (.rational 1765441 1)) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 145129 1) .v) (.rational 329724 1)) .v)
    (.rational 419023 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 265518 1) .v) (.rational 1124328 1)) .v)
    (.rational 2187370 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1327590 1) .v) (.rational
    5019570 1)) .v) (.rational 8840958 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2814740 1) .v) (.rational 9445392 1)) .v) (.rational 14942842 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3293420 1) .v) (.rational 9753810 1)) .v) (.rational
    13713803 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2316098 1) .v)
    (.rational 6026216 1)) .v) (.rational 7422415 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 997202 1) .v) (.rational 2273534 1)) .v) (.rational 2405583 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 254964 1) .v) (.rational 509704 1)) .v)
    (.rational 451227 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 602070 1) .v) (.rational
    2227550 1)) .v) (.rational 3475966 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3311385 1)
    .v) (.rational 11184252 1)) .v) (.rational 15994673 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7844493 1) .v) (.rational 24075762 1)) .v) (.rational 31309534 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10464831 1) .v) (.rational 29056178 1)) .v)
    (.rational 34024447 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8623156 1)
    .v) (.rational 21574726 1)) .v) (.rational 22464694 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4524863 1) .v) (.rational 10170650 1)) .v) (.rational 9265517 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1500493 1) .v) (.rational 3025612 1)) .v)
    (.rational 2361352 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 300089 1)
    .v) (.rational 543288 1)) .v) (.rational 353449 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 1067273 1) .v) (.rational 3519750 1)) .v) (.rational 4515901 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6403638 1) .v) (.rational 19618650 1)) .v) (.rational
    23333109 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 16748321 1) .v) (.rational
    47486758 1)) .v) (.rational 51977948 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25041590 1) .v) (.rational 65458840 1)) .v) (.rational 65366072 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 23583627 1) .v) (.rational 56627442 1)) .v)
    (.rational 51032709 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 14524986 1)
    .v) (.rational 31930008 1)) .v) (.rational 25619214 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5875631 1) .v) (.rational 11793362 1)) .v) (.rational 8280377 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1524102 1) .v) (.rational 2788356 1)) .v)
    (.rational 1675397 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 238700 1)
    .v) (.rational 397860 1)) .v) (.rational 198671 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 1499850 1) .v) (.rational 4477044 1)) .v) (.rational 4822675 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9749025 1) .v) (.rational 27417170 1)) .v)
    (.rational 27669037 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 27883750 1) .v)
    (.rational 73639478 1)) .v) (.rational 69180045 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 46121350 1) .v) (.rational 113994192 1)) .v) (.rational 98931578 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 48756645 1) .v) (.rational 112389468 1)) .v)
    (.rational 89276385 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 34353690 1)
    .v) (.rational 73598268 1)) .v) (.rational 52901928 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16316280 1) .v) (.rational 32378402 1)) .v) (.rational 20758703 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5160660 1) .v) (.rational 9456118
    1)) .v) (.rational 5308154 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1046865 1) .v) (.rational 1766186 1)) .v) (.rational 846999 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 126285 1) .v) (.rational 195664 1)) .v) (.rational 77505 1))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1683616 1)
    .v) (.rational 4604600 1)) .v) (.rational 4240860 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11785312 1) .v) (.rational 30719194 1)) .v) (.rational 26768268 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 36575315 1) .v) (.rational 90599938 1)) .v) (.rational
    74281889 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 66242834 1) .v)
    (.rational 155458046 1)) .v) (.rational 119142498 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 77539407 1) .v) (.rational 171833178 1)) .v) (.rational 122134197 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 61354326 1) .v) (.rational
    127946928 1)) .v) (.rational 83530866 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 33334797 1) .v) (.rational 65176062 1)) .v) (.rational 38614149 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 12370230 1) .v) (.rational 22588712 1)) .v)
    (.rational 11957611 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3054987 1)
    .v) (.rational 5188688 1)) .v) (.rational 2404014 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 476036 1) .v) (.rational 748634 1)) .v) (.rational 295021 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 42354 1) .v) (.rational 61354 1)) .v)
    (.rational 19723 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1513006 1) .v) (.rational 3829670 1)) .v) (.rational 3065244 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11347545 1) .v) (.rational 27636948 1)) .v)
    (.rational 21120183 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 37964755 1) .v)
    (.rational 88743028 1)) .v) (.rational 64447255 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 74666475 1) .v) (.rational 167046840 1)) .v) (.rational 114646959 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 95744881 1) .v) (.rational 204391722 1))
    .v) (.rational 131691135 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    83895372 1) .v) (.rational 170319120 1)) .v) (.rational 102189150 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 51171268 1) .v) (.rational 98427406 1)) .v) (.rational
    54438979 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 21702786 1) .v)
    (.rational 39388398 1)) .v) (.rational 19823086 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6278005 1) .v) (.rational 10700310 1)) .v) (.rational 4816249 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1187758 1) .v) (.rational 1890856 1)) .v)
    (.rational 743160 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 135932 1) .v)
    (.rational 200802 1)) .v) (.rational 66541 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8084 1) .v) (.rational 10990 1)) .v) (.rational 2906 1)) (.pow .g 11)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1085577 1) .v) (.rational 2564926 1)) .v) (.rational 1811073 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8684616 1) .v) (.rational 19902518 1)) .v) (.rational 13530625 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 31150672 1) .v) (.rational 69088168 1)) .v)
    (.rational 45046511 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 66073924 1)
    .v) (.rational 141471896 1)) .v) (.rational 88057937 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 92021957 1) .v) (.rational 189683766 1)) .v) (.rational 112089906 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 88320758 1) .v) (.rational
    174718726 1)) .v) (.rational 97360806 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 59624307 1) .v) (.rational 112794490 1)) .v) (.rational 58774471 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 28359702 1) .v) (.rational 51093692 1)) .v)
    (.rational 24628915 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 9360075 1)
    .v) (.rational 15982858 1)) .v) (.rational 7026048 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2068806 1) .v) (.rational 3328944 1)) .v) (.rational 1308535 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 286327 1) .v) (.rational 431122 1)) .v)
    (.rational 147254 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 21770 1) .v)
    (.rational 30400 1)) .v) (.rational 8630 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 661 1) .v) (.rational 846 1)) .v) (.rational 185 1)) (.pow .g 12)))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    616890 1) .v) (.rational 1370896 1)) .v) (.rational 866153 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5243565 1) .v) (.rational 11378986 1)) .v) (.rational 6975567 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 20069040 1) .v) (.rational 42447760 1)) .v)
    (.rational 25166888 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 45646500 1)
    .v) (.rational 93896470 1)) .v) (.rational 53639346 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 68560486 1) .v) (.rational 136823526 1)) .v) (.rational 74970287 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 71447519 1) .v) (.rational
    137940268 1)) .v) (.rational 72096911 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 52797994 1) .v) (.rational 98290660 1)) .v) (.rational 48668697 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 27764748 1) .v) (.rational 49648114 1)) .v)
    (.rational 23085434 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10259475 1)
    .v) (.rational 17540710 1)) .v) (.rational 7571001 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2580726 1) .v) (.rational 4195126 1)) .v) (.rational 1654392 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 415724 1) .v) (.rational 638072 1)) .v)
    (.rational 224733 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 38014 1) .v)
    (.rational 54604 1)) .v) (.rational 16590 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1463 1) .v) (.rational 1944 1)) .v) (.rational 481 1)) (.pow .g 12))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    273630 1) .v) (.rational 575936 1)) .v) (.rational 330154 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2462670 1) .v) (.rational 5090886 1)) .v) (.rational 2851342 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10016250 1) .v) (.rational 20303756 1)) .v)
    (.rational 11082732 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 24309480 1)
    .v) (.rational 48232286 1)) .v) (.rational 25581159 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 39145900 1) .v) (.rational 75861924 1)) .v) (.rational 38954125 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 43977220 1) .v) (.rational 83037486
    1)) .v) (.rational 41099935 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    35260645 1) .v) (.rational 64682970 1)) .v) (.rational 30691486 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 20274590 1) .v) (.rational 36008814 1)) .v) (.rational
    16265675 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8269205 1) .v)
    (.rational 14160186 1)) .v) (.rational 6034004 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2323250 1) .v) (.rational 3816164 1)) .v) (.rational 1515195 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 424465 1) .v) (.rational 664530 1)) .v)
    (.rational 241586 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 44950 1) .v)
    (.rational 66524 1)) .v) (.rational 21574 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2065 1) .v) (.rational 2858 1)) .v) (.rational 793 1)) (.pow .g 12))) (.pow .f 2)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    92538 1) .v) (.rational 185730 1)) .v) (.rational 97960 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 879111 1) .v) (.rational 1741452 1)) .v) (.rational 903033 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3785975 1) .v) (.rational 7392594 1)) .v) (.rational 3761656 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9763457 1) .v) (.rational 18764298
    1)) .v) (.rational 9347849 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    16772186 1) .v) (.rational 31672274 1)) .v) (.rational 15404956 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 20191577 1) .v) (.rational 37388594 1)) .v) (.rational
    17695473 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 17439639 1) .v)
    (.rational 31589082 1)) .v) (.rational 14487305 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10868065 1) .v) (.rational 19200838 1)) .v) (.rational 8487845 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4839067 1) .v) (.rational 8309188 1)) .v)
    (.rational 3516189 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1497276 1)
    .v) (.rational 2487834 1)) .v) (.rational 998546 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 304574 1) .v) (.rational 487004 1)) .v) (.rational 183043 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 36418 1) .v) (.rational 55640 1)) .v) (.rational
    19222 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 1925 1) .v) (.rational
    2784 1)) .v) (.rational 859 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22983 1) .v) (.rational 44294
    1)) .v) (.rational 21811 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 229830 1) .v)
    (.rational 439002 1)) .v) (.rational 213701 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1044705 1) .v) (.rational 1975878 1)) .v) (.rational 949546 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2852190 1) .v) (.rational 5335400 1)) .v) (.rational
    2527150 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5204533 1) .v)
    (.rational 9616606 1)) .v) (.rational 4480645 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6680660 1) .v) (.rational 12173996 1)) .v) (.rational 5566262 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 6178774 1) .v) (.rational 11083492 1)) .v)
    (.rational 4958212 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4143428 1)
    .v) (.rational 7299752 1)) .v) (.rational 3183032 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1996525 1) .v) (.rational 3444970 1)) .v) (.rational 1457125 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 672998 1) .v) (.rational 1133386 1)) .v)
    (.rational 462045 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 150337 1) .v)
    (.rational 246022 1)) .v) (.rational 95826 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 19934 1) .v) (.rational 31520 1)) .v) (.rational 11586 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1183 1) .v) (.rational 1794 1)) .v) (.rational 611
    1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 3938 1) .v) (.rational 7344 1)) .v) (.rational 3430
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 41349 1) .v) (.rational 76698 1)) .v)
    (.rational 35579 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 197822 1) .v)
    (.rational 364738 1)) .v) (.rational 167906 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 569924 1) .v) (.rational 1043728 1)) .v) (.rational 476324 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1100601 1) .v) (.rational 2000232 1)) .v)
    (.rational 903831 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1499910 1)
    .v) (.rational 2702316 1)) .v) (.rational 1207194 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1478064 1) .v) (.rational 2636508 1)) .v) (.rational 1162224 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1060308 1) .v) (.rational 1869624 1)) .v)
    (.rational 811356 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 549024 1) .v)
    (.rational 955128 1)) .v) (.rational 406824 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 199901 1) .v) (.rational 342282 1)) .v) (.rational 142531 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 48522 1) .v) (.rational 81522 1)) .v) (.rational
    33014 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 7040 1) .v) (.rational
    11560 1)) .v) (.rational 4520 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    461 1) .v) (.rational 736 1)) .v) (.rational 275 1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 414
    1) .v) (.rational 754 1)) .v) (.rational 340 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    4554 1) .v) (.rational 8274 1)) .v) (.rational 3720 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22873 1) .v) (.rational 41444 1)) .v) (.rational 18571 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 69340 1) .v) (.rational 125250 1)) .v) (.rational 55910 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 141255 1) .v) (.rational 254250 1))
    .v) (.rational 112995 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 203628 1)
    .v) (.rational 365028 1)) .v) (.rational 161400 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 212898 1) .v) (.rational 379848 1)) .v) (.rational 166950 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 162576 1) .v) (.rational 288468 1)) .v)
    (.rational 125892 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 89940 1) .v)
    (.rational 158550 1)) .v) (.rational 68610 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 35130 1) .v) (.rational 61450 1)) .v) (.rational 26320 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9189 1) .v) (.rational 15924 1)) .v) (.rational 6735 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1444 1) .v) (.rational 2474 1))
    .v) (.rational 1030 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 103 1) .v)
    (.rational 174 1)) .v) (.rational 71 1)) (.pow .g 12))) (.pow .f 6))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20 1) .v)
    (.rational 36 1)) .v) (.rational 16 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 230 1)
    .v) (.rational 414 1)) .v) (.rational 184 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1210 1) .v) (.rational 2178 1)) .v) (.rational 968 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3850 1) .v) (.rational 6930 1)) .v) (.rational 3080 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8250 1) .v) (.rational 14850 1))
    .v) (.rational 6600 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 12540 1)
    .v) (.rational 22572 1)) .v) (.rational 10032 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 13860 1) .v) (.rational 24948 1)) .v) (.rational 11088 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11220 1) .v) (.rational 20196 1)) .v) (.rational 8976
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6600 1) .v) (.rational 11880
    1)) .v) (.rational 5280 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2750 1)
    .v) (.rational 4950 1)) .v) (.rational 2200 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 770 1) .v) (.rational 1386 1)) .v) (.rational 616 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 130 1) .v) (.rational 234 1)) .v) (.rational 104 1))
    (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 10 1) .v) (.rational 18 1)) .v)
    (.rational 8 1)) (.pow .g 12))) (.pow .f 7))) .e)

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1400

namespace FullLow1401
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
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
  e*g*(e+g)^6*(8*SmallGap.ReducedLayers.low0_100_0 e g v*e^7+1*SmallGap.ReducedLayers.low0_100_1 e
    g v*e^8+24*SmallGap.ReducedLayers.low0_010_0 e g v*e^5+4*SmallGap.ReducedLayers.low0_010_1 e g
    v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.low1_110_0 e g v*e^5+1*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^6+12*SmallGap.ReducedLayers.low1_020_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 230 1) .v) (.rational 7180
    1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 210 1) .v) (.rational 4846 1)) .v)
    (.rational 65231 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 525 1) .v) (.rational 7642
    1)) .v) (.rational 86835 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 4067 1) .v) (.rational 47970 1)) .v) (.rational 373615 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 12201 1) .v) (.rational 103298 1)) .v) (.rational 689019 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 13206 1) .v) (.rational 73676 1)) .v) (.rational
    445098 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 36790 1) .v) (.rational 295912 1)) .v) (.rational 1512285 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 128765 1) .v) (.rational 807096 1)) .v) (.rational 3579544 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 174075 1) .v) (.rational 820048 1)) .v) (.rational
    3195652 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 113275 1) .v)
    (.rational 386060 1)) .v) (.rational 1331084 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 206381 1) .v) (.rational 1273764
    1)) .v) (.rational 4596911 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 825524 1) .v)
    (.rational 4201426 1)) .v) (.rational 13329317 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1331778 1) .v) (.rational 5489016 1)) .v) (.rational 15272371 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1106000 1) .v) (.rational 3629192 1)) .v) (.rational
    8781547 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 497357 1) .v)
    (.rational 1281884 1)) .v) (.rational 2648230 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 804152 1) .v)
    (.rational 4062134 1)) .v) (.rational 10885327 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3618684 1) .v) (.rational 15703828 1)) .v) (.rational 37467756 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6763640 1) .v) (.rational 24955808 1)) .v) (.rational
    52617383 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6785548 1) .v)
    (.rational 21089894 1)) .v) (.rational 38825749 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3932544 1) .v) (.rational 10227748 1)) .v) (.rational 16136152 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1311086 1) .v) (.rational 2850150 1)) .v)
    (.rational 3746477 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2310257 1) .v) (.rational 9947300
    1)) .v) (.rational 20556177 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 11551285 1) .v)
    (.rational 44065096 1)) .v) (.rational 82099705 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 24499830 1) .v) (.rational 82245798 1)) .v) (.rational 136937756 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 28691610 1) .v) (.rational 84250842 1)) .v)
    (.rational 123855285 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 20209579
    1) .v) (.rational 51682092 1)) .v) (.rational 65990570 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8723499 1) .v) (.rational 19402668 1)) .v) (.rational 21046376 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2238892 1) .v) (.rational 4346914
    1)) .v) (.rational 3890835 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5069334 1) .v)
    (.rational 19129828 1)) .v) (.rational 31429769 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27881337 1) .v) (.rational 95465020 1)) .v) (.rational 143153112 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 66075447 1) .v) (.rational 204269442 1)) .v) (.rational
    277159566 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 88229484 1) .v)
    (.rational 245160680 1)) .v) (.rational 297720102 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 72823400 1) .v) (.rational 181226596 1)) .v) (.rational 194263066 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 38313667 1) .v) (.rational 85226962
    1)) .v) (.rational 79234843 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    12754821 1) .v) (.rational 25378308 1)) .v) (.rational 20017369 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2564996 1) .v) (.rational 4584750 1)) .v) (.rational
    2987327 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8681761 1) .v)
    (.rational 29299596 1)) .v) (.rational 39270161 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 52090566 1) .v) (.rational 162543390 1)) .v) (.rational 201203065 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 136296518 1) .v) (.rational 391699106 1)) .v)
    (.rational 444312651 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 203985735
    1) .v) (.rational 537902860 1)) .v) (.rational 553864323 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 192440365 1) .v) (.rational 464098290 1)) .v) (.rational
    428807841 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 118843276 1) .v)
    (.rational 261475652 1)) .v) (.rational 213748150 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 48266096 1) .v) (.rational 96771054 1)) .v) (.rational 68792656 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 12590683 1) .v) (.rational 23020048
    1)) .v) (.rational 13937534 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1987280 1) .v) (.rational 3323220 1)) .v) (.rational 1672159 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 11754336 1) .v) (.rational 36024802 1)) .v)
    (.rational 40283727 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 76403184 1) .v)
    (.rational 219816938 1)) .v) (.rational 229594344 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 218619278 1) .v) (.rational 588512494 1)) .v) (.rational 570278017 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 361971005 1) .v) (.rational 908734074 1))
    .v) (.rational 810442259 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    383323759 1) .v) (.rational 894679628 1)) .v) (.rational 727383735 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 270826914 1) .v) (.rational 586030578 1)) .v) (.rational
    429391190 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 129146260 1) .v)
    (.rational 258506650 1)) .v) (.rational 168360090 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 41079965 1) .v) (.rational 75958528 1)) .v) (.rational 43243226 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8398765 1) .v) (.rational 14340602
    1)) .v) (.rational 6993762 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1023977 1) .v) (.rational 1615664 1)) .v) (.rational 658780 1)) (.pow .g 9)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12660659 1) .v) (.rational 35664508 1))
    .v) (.rational 33948069 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 88624613 1) .v)
    (.rational 237281176 1)) .v) (.rational 213228073 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 275162710 1) .v) (.rational 698214646 1)) .v) (.rational 588964372 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 498856291 1) .v) (.rational 1196153128 1))
    .v) (.rational 940822193 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    584947113 1) .v) (.rational 1321431266 1)) .v) (.rational 961553289 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 464106174 1) .v) (.rational 984877664 1)) .v)
    (.rational 656843206 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 253160068
    1) .v) (.rational 503238812 1)) .v) (.rational 304179308 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 94473955 1) .v) (.rational 175462118 1)) .v) (.rational 94818270
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 23512953 1) .v) (.rational
    40708424 1)) .v) (.rational 19340144 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3702644 1) .v) (.rational 5963938 1)) .v) (.rational 2439417 1)) (.pow .g 9))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 334146 1) .v) (.rational 499730 1)) .v) (.rational
    171367 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 10857374 1) .v) (.rational 28386852 1)) .v) (.rational 23425531 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 81430305 1) .v) (.rational 204436286 1)) .v) (.rational
    160858680 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 272552055 1) .v) (.rational
    655413998 1)) .v) (.rational 489395700 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 536562065 1) .v) (.rational 1232611974 1)) .v) (.rational 868644140 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 689205113 1) .v) (.rational 1508255634 1))
    .v) (.rational 996700275 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    605503250 1) .v) (.rational 1258583998 1)) .v) (.rational 773982326 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 370748114 1) .v) (.rational 729707728 1)) .v)
    (.rational 413784930 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 158099403
    1) .v) (.rational 293710626 1)) .v) (.rational 151865758 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 46078145 1) .v) (.rational 80531122 1)) .v) (.rational 37442590
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 8807144 1) .v) (.rational
    14429662 1)) .v) (.rational 5926715 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1021924 1) .v) (.rational 1563452 1)) .v) (.rational 554275 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 61917 1) .v) (.rational 88022 1)) .v) (.rational
    26105 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 7379527 1) .v) (.rational 18054196 1)) .v) (.rational 13136553
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 59036216 1) .v) (.rational 139882806 1)) .v)
    (.rational 97936267 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 211841886 1) .v)
    (.rational 485072836 1)) .v) (.rational 325528453 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 449759422 1) .v) (.rational 992871656 1)) .v) (.rational 635824417 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 627400255 1) .v) (.rational
    1331836232 1)) .v) (.rational 809623582 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 603676872 1) .v) (.rational 1228787842 1)) .v) (.rational 704693760 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 409028656 1) .v) (.rational 795884182 1))
    .v) (.rational 427383098 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    195555771 1) .v) (.rational 362505124 1)) .v) (.rational 180610816 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 65003107 1) .v) (.rational 114362922 1)) .v) (.rational
    52261948 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 14506770 1) .v)
    (.rational 24119956 1)) .v) (.rational 9961521 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2034130 1) .v) (.rational 3180422 1)) .v) (.rational 1164043 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 157405 1) .v) (.rational 230040 1)) .v)
    (.rational 72635 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 4895 1) .v)
    (.rational 6634 1)) .v) (.rational 1739 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3933872 1) .v) (.rational
    9069906 1)) .v) (.rational 5911697 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 33437912
    1) .v) (.rational 75205072 1)) .v) (.rational 47557688 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 128027436 1) .v) (.rational 280364628 1)) .v) (.rational 171485101 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 291447530 1) .v) (.rational 620139650 1))
    .v) (.rational 365569919 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    438407870 1) .v) (.rational 904293180 1)) .v) (.rational 511616968 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 457930278 1) .v) (.rational 913279232 1)) .v) (.rational
    493429775 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 339546288 1) .v)
    (.rational 652836100 1)) .v) (.rational 334805680 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 179408889 1) .v) (.rational 331438988 1)) .v) (.rational 160153668 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 66730495 1) .v) (.rational
    117998270 1)) .v) (.rational 53223114 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16936000 1) .v) (.rational 28537360 1)) .v) (.rational 11871203 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2761146 1) .v) (.rational 4409976 1)) .v)
    (.rational 1664953 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 256591 1)
    .v) (.rational 385938 1)) .v) (.rational 129347 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10093 1) .v) (.rational 14180 1)) .v) (.rational 4087 1)) (.pow .g 12))) .f))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1615499 1) .v) (.rational 3532772 1)) .v) (.rational 2094031 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 14539491 1) .v) (.rational 31205728 1)) .v) (.rational 18078687 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 59155562 1) .v) (.rational 124416410 1)) .v)
    (.rational 70281116 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 143682700
    1) .v) (.rational 295608602 1)) .v) (.rational 162366387 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 231686377 1) .v) (.rational 465343744 1)) .v) (.rational
    247709830 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 260823675 1) .v)
    (.rational 510255776 1)) .v) (.rational 262206018 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 209762792 1) .v) (.rational 398651978 1)) .v) (.rational 196819561 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 121128479 1) .v) (.rational
    222950792 1)) .v) (.rational 105137096 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 49694955 1) .v) (.rational 88270222 1)) .v) (.rational 39466362 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 14073762 1) .v) (.rational 24021384 1)) .v)
    (.rational 10086435 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2599066 1)
    .v) (.rational 4240844 1)) .v) (.rational 1651267 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 279221 1) .v) (.rational 432790 1)) .v) (.rational 153569 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 13077 1) .v) (.rational 19102 1)) .v)
    (.rational 6025 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 496682 1) .v) (.rational 1036604 1)) .v)
    (.rational 567072 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4718479 1) .v) (.rational
    9715528 1)) .v) (.rational 5228335 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    20326545 1) .v) (.rational 41239638 1)) .v) (.rational 21792662 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 52454418 1) .v) (.rational 104712684 1)) .v) (.rational
    54223294 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 90214094 1) .v)
    (.rational 176906168 1)) .v) (.rational 89545862 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 108802203 1) .v) (.rational 209184504 1)) .v) (.rational 103195069 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 94220581 1) .v) (.rational 177212140 1))
    .v) (.rational 84895265 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    58934005 1) .v) (.rational 108150688 1)) .v) (.rational 50089447 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 26374533 1) .v) (.rational 47076684 1)) .v) (.rational
    20961269 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 8217154 1) .v)
    (.rational 14212288 1)) .v) (.rational 6040072 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1687086 1) .v) (.rational 2814510 1)) .v) (.rational 1130877 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 204237 1) .v) (.rational 326772 1)) .v)
    (.rational 122535 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 10975 1) .v)
    (.rational 16720 1)) .v) (.rational 5745 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 109227 1)
    .v) (.rational 218998 1)) .v) (.rational 112235 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1092270 1) .v) (.rational 2170132 1)) .v) (.rational 1100160 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4966170 1) .v) (.rational 9768306 1)) .v) (.rational
    4892508 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 13565835 1) .v)
    (.rational 26388692 1)) .v) (.rational 13038785 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 24777959 1) .v) (.rational 47606442 1)) .v) (.rational 23165155 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 31852696 1) .v) (.rational 60358200 1)) .v)
    (.rational 28863260 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 29523452 1)
    .v) (.rational 55079724 1)) .v) (.rational 25818520 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19858474 1) .v) (.rational 36400248 1)) .v) (.rational 16672646 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 9609065 1) .v) (.rational 17261922
    1)) .v) (.rational 7695385 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3257554 1) .v) (.rational 5717812 1)) .v) (.rational 2468380 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 733274 1) .v) (.rational 1252882 1)) .v) (.rational 520300 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 98227 1) .v) (.rational 162612 1))
    .v) (.rational 64385 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 5909 1)
    .v) (.rational 9422 1)) .v) (.rational 3513 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15910 1)
    .v) (.rational 30888 1)) .v) (.rational 15074 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    167055 1) .v) (.rational 322584 1)) .v) (.rational 156449 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 799370 1) .v) (.rational 1534370 1)) .v) (.rational 738960 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2303940 1) .v) (.rational 4392814 1)) .v)
    (.rational 2098954 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4452435 1)
    .v) (.rational 8425476 1)) .v) (.rational 3989841 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6074610 1) .v) (.rational 11397480 1)) .v) (.rational 5342022 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5995920 1) .v) (.rational 11141004 1))
    .v) (.rational 5160204 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 4311180
    1) .v) (.rational 7921764 1)) .v) (.rational 3618744 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2239440 1) .v) (.rational 4062264 1)) .v) (.rational 1825704 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 818935 1) .v) (.rational 1463376 1)) .v)
    (.rational 645041 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 199950 1) .v)
    (.rational 351042 1)) .v) (.rational 151148 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 29240 1) .v) (.rational 50270 1)) .v) (.rational 21030 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1935 1) .v) (.rational 3244 1)) .v) (.rational 1309
    1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1326 1) .v) (.rational 2522 1)) .v) (.rational 1196
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 14586 1) .v) (.rational 27678 1)) .v)
    (.rational 13092 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 73268 1) .v) (.rational
    138670 1)) .v) (.rational 65402 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    222170 1) .v) (.rational 419250 1)) .v) (.rational 197080 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 452790 1) .v) (.rational 851580 1)) .v) (.rational 398790 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 653172 1) .v) (.rational 1223724
    1)) .v) (.rational 570552 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    683592 1) .v) (.rational 1275036 1)) .v) (.rational 591444 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 522756 1) .v) (.rational 970020 1)) .v) (.rational 447264 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 289770 1) .v) (.rational 534450 1))
    .v) (.rational 244680 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 113490 1)
    .v) (.rational 207830 1)) .v) (.rational 94340 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 29796 1) .v) (.rational 54102 1)) .v) (.rational 24306 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4706 1) .v) (.rational 8458 1)) .v) (.rational 3752
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 338 1) .v) (.rational 600 1))
    .v) (.rational 262 1)) (.pow .g 12))) (.pow .f 6))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 44 1) .v) (.rational 84 1)) .v)
    (.rational 40 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 506 1) .v) (.rational 966 1))
    .v) (.rational 460 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2662 1) .v)
    (.rational 5082 1)) .v) (.rational 2420 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8470 1) .v) (.rational 16170 1)) .v) (.rational 7700 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 18150 1) .v) (.rational 34650 1)) .v) (.rational 16500 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 27588 1) .v) (.rational 52668 1))
    .v) (.rational 25080 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 30492 1)
    .v) (.rational 58212 1)) .v) (.rational 27720 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 24684 1) .v) (.rational 47124 1)) .v) (.rational 22440 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 14520 1) .v) (.rational 27720 1)) .v) (.rational
    13200 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 6050 1) .v) (.rational
    11550 1)) .v) (.rational 5500 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1694 1) .v) (.rational 3234 1)) .v) (.rational 1540 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 286 1) .v) (.rational 546 1)) .v) (.rational 260 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 22 1) .v) (.rational 42 1)) .v) (.rational 20 1))
    (.pow .g 12))) (.pow .f 7)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1401

namespace FullLow1402
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
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
    2*SmallGap.PolarCoefficientsLow0.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsLow0.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow0.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow0.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(28*SmallGap.ReducedLayers.low0_100_0 e g v*e^6+8*SmallGap.ReducedLayers.low0_100_1
    e g v*e^7+1*SmallGap.ReducedLayers.low0_100_2 e g v*e^8+60*SmallGap.ReducedLayers.low0_010_0 e
    g v*e^4+24*SmallGap.ReducedLayers.low0_010_1 e g v*e^5+4*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.low1_110_0 e g v*e^4+6*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_110_2 e g v*e^6+18*SmallGap.ReducedLayers.low1_020_0 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_020_1 e g v*e^3+3*SmallGap.ReducedLayers.low1_020_2 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1200 1) .v) (.rational 39400 1)) .e)
    (.add (.mul (.add (.mul (.add (.mul (.rational 990 1) .v) (.rational 23664 1)) .v) (.rational
    343386 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2475 1) .v) (.rational 36708 1)) .v)
    (.rational 450333 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    18385 1) .v) (.rational 222126 1)) .v) (.rational 1886507 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 55155 1) .v) (.rational 469420 1)) .v) (.rational 3422556 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 59715 1) .v) (.rational 323844 1)) .v) (.rational 2163699
    1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    160168 1) .v) (.rational 1311712 1)) .v) (.rational 7323707 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 560588 1) .v) (.rational 3517196 1)) .v) (.rational 17048319 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 758076 1) .v) (.rational 3487788 1)) .v) (.rational
    14902222 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 493720 1) .v)
    (.rational 1585962 1)) .v) (.rational 6038499 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 867415 1) .v) (.rational 5439518
    1)) .v) (.rational 21350039 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3469660 1) .v)
    (.rational 17688210 1)) .v) (.rational 60916105 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5599108 1) .v) (.rational 22700512 1)) .v) (.rational 68438381 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4653514 1) .v) (.rational 14686532 1)) .v)
    (.rational 38406428 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2095789 1)
    .v) (.rational 5060440 1)) .v) (.rational 11234874 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3265710 1) .v)
    (.rational 16772072 1)) .v) (.rational 48479908 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14695695 1) .v) (.rational 64103546 1)) .v) (.rational 164393993 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 27476180 1) .v) (.rational 100548262 1)) .v) (.rational
    226851271 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 27586720 1) .v)
    (.rational 83761492 1)) .v) (.rational 163965937 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16010880 1) .v) (.rational 40035304 1)) .v) (.rational 66512188 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5350355 1) .v) (.rational 11021080 1)) .v)
    (.rational 15021330 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9060521 1) .v) (.rational 39759178
    1)) .v) (.rational 87762255 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 45302605 1) .v)
    (.rational 174561868 1)) .v) (.rational 345889116 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 96118087 1) .v) (.rational 322722940 1)) .v) (.rational 568320495 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 112656718 1) .v) (.rational 327412554 1)) .v)
    (.rational 505416421 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 79470945
    1) .v) (.rational 199073182 1)) .v) (.rational 264318964 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 34385263 1) .v) (.rational 74256096 1)) .v) (.rational 82666464
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8855831 1) .v) (.rational
    16609294 1)) .v) (.rational 15007560 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    19164688 1) .v) (.rational 73955172 1)) .v) (.rational 128527955 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 105405784 1) .v) (.rational 366533010 1)) .v) (.rational 578811375 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 249893914 1) .v) (.rational 778880734 1))
    .v) (.rational 1106902577 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    333979233 1) .v) (.rational 928741324 1)) .v) (.rational 1173421449 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 276101752 1) .v) (.rational 682862850 1)) .v)
    (.rational 755289144 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 145626866
    1) .v) (.rational 320130826 1)) .v) (.rational 304069122 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 48658826 1) .v) (.rational 95387714 1)) .v) (.rational 76030821
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 9835857 1) .v) (.rational
    17340922 1)) .v) (.rational 11308196 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 31538675 1) .v) (.rational 109250242 1)) .v) (.rational 153563943 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 189232050 1) .v) (.rational 602904734 1)) .v) (.rational
    779546067 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 495336606 1) .v) (.rational
    1445677330 1)) .v) (.rational 1704885869 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 742055905 1) .v) (.rational 1976729500 1)) .v) (.rational 2104512327 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 701250454 1) .v) (.rational 1700234696 1))
    .v) (.rational 1614126584 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    434218936 1) .v) (.rational 956901076 1)) .v) (.rational 798257308 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 177040268 1) .v) (.rational 354869510 1)) .v) (.rational
    255739818 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 46436779 1) .v)
    (.rational 84964804 1)) .v) (.rational 51915497 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7384501 1) .v) (.rational 12417072 1)) .v) (.rational 6314124 1)) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 40842382 1) .v) (.rational
    128945732 1)) .v) (.rational 150191938 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    265475483 1) .v) (.rational 783675352 1)) .v) (.rational 849845211 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 759966256 1) .v) (.rational 2090689930 1)) .v) (.rational
    2095727298 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1259584095 1) .v)
    (.rational 3219282032 1)) .v) (.rational 2957999967 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1336288986 1) .v) (.rational 3164500922 1)) .v) (.rational 2639246120
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 946765194 1) .v) (.rational
    2073345122 1)) .v) (.rational 1551819376 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 453325892 1) .v) (.rational 917257544 1)) .v) (.rational 608150315 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 145031089 1) .v) (.rational 271307236 1))
    .v) (.rational 157060512 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    29886680 1) .v) (.rational 51810466 1)) .v) (.rational 25792508 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3682758 1) .v) (.rational 5939632 1)) .v) (.rational
    2505149 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    41811247 1) .v) (.rational 121712418 1)) .v) (.rational 120102141 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 292678729 1) .v) (.rational 807339016 1)) .v) (.rational 750319500 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 909134369 1) .v) (.rational 2369713000 1))
    .v) (.rational 2062014701 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1649982737 1) .v) (.rational 4052732588 1)) .v) (.rational 3279447458 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1938337726 1) .v) (.rational 4474703622 1)) .v)
    (.rational 3341073374 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1542356582 1) .v) (.rational 3338753436 1)) .v) (.rational 2279770902 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 844878320 1) .v) (.rational 1711865776 1)) .v)
    (.rational 1058121024 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 317167253
    1) .v) (.rational 600824026 1)) .v) (.rational 332341781 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 79583928 1) .v) (.rational 140906570 1)) .v) (.rational 68869607
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 12671410 1) .v) (.rational
    20978588 1)) .v) (.rational 8937078 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1160606 1) .v) (.rational 1798026 1)) .v) (.rational 658145 1)) (.pow .g 10)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 33790536 1) .v)
    (.rational 91520520 1)) .v) (.rational 78070997 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 253429020 1) .v) (.rational 657625632 1)) .v) (.rational 534072969 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 848643224 1) .v) (.rational 2104673504 1)) .v)
    (.rational 1619500040 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1672507486 1) .v) (.rational 3954360730 1)) .v) (.rational 2867357873 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2152361276 1) .v) (.rational 4839242292 1)) .v)
    (.rational 3286186045 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1896486306 1) .v) (.rational 4044761880 1)) .v) (.rational 2554043886 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1166159830 1) .v) (.rational 2353774226 1)) .v)
    (.rational 1370832413 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 500270529
    1) .v) (.rational 953558446 1)) .v) (.rational 507459446 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 147006972 1) .v) (.rational 264119502 1)) .v) (.rational
    127073896 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 28412952 1) .v)
    (.rational 48037360 1)) .v) (.rational 20641829 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3346702 1) .v) (.rational 5315482 1)) .v) (.rational 2011843 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 206915 1) .v) (.rational 307952 1)) .v)
    (.rational 101037 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 21398741 1) .v) (.rational 54321010 1)) .v)
    (.rational 40805549 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 171189928 1) .v)
    (.rational 420169326 1)) .v) (.rational 303454551 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 614575080 1) .v) (.rational 1455328444 1)) .v) (.rational 1006684871 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1306201820 1) .v) (.rational 2977523772 1))
    .v) (.rational 1964120622 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1825501569 1) .v) (.rational 3996267648 1)) .v) (.rational 2501477686 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1761527478 1) .v) (.rational 3694140146 1)) .v)
    (.rational 2181800067 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1198544184 1) .v) (.rational 2401687980 1)) .v) (.rational 1329616838 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 576395995 1) .v) (.rational 1100721088 1)) .v)
    (.rational 566867101 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 193146718
    1) .v) (.rational 350556578 1)) .v) (.rational 166445299 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 43578356 1) .v) (.rational 74958052 1)) .v) (.rational 32467154
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 6201110 1) .v) (.rational
    10076872 1)) .v) (.rational 3931575 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 489463 1) .v) (.rational 748528 1)) .v) (.rational 259065 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 15638 1) .v) (.rational 22380 1)) .v) (.rational 6742
    1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 10464882 1) .v) (.rational 25051184 1)) .v) (.rational 16853960
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 88951497 1) .v) (.rational 207462218 1)) .v)
    (.rational 135377443 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 340731740 1) .v)
    (.rational 772843338 1)) .v) (.rational 487678843 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 776458110 1) .v) (.rational 1709316228 1)) .v) (.rational 1039483143
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1170065536 1) .v) (.rational
    2494584932 1)) .v) (.rational 1456275856 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1225535467 1) .v) (.rational 2524502446 1)) .v) (.rational 1408328242 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 912352086 1) .v) (.rational 1811192386 1))
    .v) (.rational 960467232 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    484779845 1) .v) (.rational 924890978 1)) .v) (.rational 463339588 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 181705640 1) .v) (.rational 332149078 1)) .v) (.rational
    156032988 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 46599096 1) .v)
    (.rational 81336752 1)) .v) (.rational 35510431 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7704190 1) .v) (.rational 12790892 1)) .v) (.rational 5133097 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 729489 1) .v) (.rational 1146738 1)) .v)
    (.rational 417249 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 29430 1) .v)
    (.rational 43550 1)) .v) (.rational 14120 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3857347 1) .v)
    (.rational 8754614 1)) .v) (.rational 5357869 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    34716123 1) .v) (.rational 77264412 1)) .v) (.rational 46218596 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 141305493 1) .v) (.rational 307919348 1)) .v) (.rational 179622317 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 343545156 1) .v) (.rational
    731725410 1)) .v) (.rational 415157789 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 554878741 1) .v) (.rational 1152982282 1)) .v) (.rational 634316796 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 626256715 1) .v) (.rational 1266823884 1))
    .v) (.rational 673405358 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    505525989 1) .v) (.rational 993152726 1)) .v) (.rational 507972504 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 293438993 1) .v) (.rational 558392564 1)) .v) (.rational
    273446448 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 121248236 1) .v)
    (.rational 222808740 1)) .v) (.rational 103842859 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 34669366 1) .v) (.rational 61310112 1)) .v) (.rational 26996686 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 6485338 1) .v) (.rational 10992550
    1)) .v) (.rational 4531619 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    708751 1) .v) (.rational 1145954 1)) .v) (.rational 437203 1)) (.pow .g 11))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 33960 1) .v) (.rational 52076 1)) .v) (.rational 18116 1)) (.pow
    .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 1030432 1) .v) (.rational 2228596 1)) .v) (.rational 1258908 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9789104 1) .v) (.rational 20875650 1)) .v)
    (.rational 11603022 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 42185794 1) .v)
    (.rational 88595238 1)) .v) (.rational 48369785 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 108957097 1) .v) (.rational 225029856 1)) .v) (.rational 120443971 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 187667152 1) .v) (.rational 380563058 1))
    .v) (.rational 199232586 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    226850308 1) .v) (.rational 450869344 1)) .v) (.rational 230254272 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 197098188 1) .v) (.rational 383155304 1)) .v) (.rational
    190271382 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 123855134 1) .v)
    (.rational 234942700 1)) .v) (.rational 113017842 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 55780952 1) .v) (.rational 102968276 1)) .v) (.rational 47760276 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 17527972 1) .v) (.rational 31385918
    1)) .v) (.rational 13957386 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3639906 1) .v) (.rational 6298658 1)) .v) (.rational 2666409 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 447329 1) .v) (.rational 744724 1)) .v) (.rational 297395
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 24520 1) .v) (.rational 39062
    1)) .v) (.rational 14542 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 186785 1) .v) (.rational
    387006 1)) .v) (.rational 204653 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1867850 1)
    .v) (.rational 3833842 1)) .v) (.rational 2006061 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8495142 1) .v) (.rational 17257538 1)) .v) (.rational 8924637 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 23222553 1) .v) (.rational 46641876 1)) .v)
    (.rational 23806607 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 42469020 1)
    .v) (.rational 84230560 1)) .v) (.rational 42364856 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 54700512 1) .v) (.rational 106982396 1)) .v) (.rational 52922482 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 50843016 1) .v) (.rational 97897156
    1)) .v) (.rational 47523434 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    34333590 1) .v) (.rational 64960928 1)) .v) (.rational 30861454 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16703013 1) .v) (.rational 30985246 1)) .v) (.rational
    14358317 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 5703710 1) .v)
    (.rational 10346690 1)) .v) (.rational 4657521 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1296362 1) .v) (.rational 2292410 1)) .v) (.rational 997289 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 175881 1) .v) (.rational 302044 1)) .v)
    (.rational 126163 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 10758 1) .v)
    (.rational 17860 1)) .v) (.rational 7102 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20308 1)
    .v) (.rational 40564 1)) .v) (.rational 20376 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    213234 1) .v) (.rational 423616 1)) .v) (.rational 211532 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1020596 1) .v) (.rational 2015364 1)) .v) (.rational 999718 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2943252 1) .v) (.rational 5773130 1)) .v)
    (.rational 2842478 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5693598 1)
    .v) (.rational 11084250 1)) .v) (.rational 5411652 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7779948 1) .v) (.rational 15018408 1)) .v) (.rational 7262400 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7696416 1) .v) (.rational 14715792 1))
    .v) (.rational 7038276 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5551344
    1) .v) (.rational 10499628 1)) .v) (.rational 4958484 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2896152 1) .v) (.rational 5410080 1)) .v) (.rational 2517528 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1065298 1) .v) (.rational 1961800 1)) .v)
    (.rational 897252 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 262140 1) .v)
    (.rational 474844 1)) .v) (.rational 212774 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 38732 1) .v) (.rational 68826 1)) .v) (.rational 30094 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2598 1) .v) (.rational 4514 1)) .v) (.rational 1916
    1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 980 1) .v) (.rational 1904 1)) .v) (.rational 924 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10780 1) .v) (.rational 20900 1)) .v) (.rational
    10120 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 54160 1) .v) (.rational 104756 1))
    .v) (.rational 50596 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 164300 1)
    .v) (.rational 316940 1)) .v) (.rational 152640 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 335100 1) .v) (.rational 644460 1)) .v) (.rational 309360 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 483960 1) .v) (.rational 927528 1)) .v)
    (.rational 443568 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 507360 1) .v)
    (.rational 968520 1)) .v) (.rational 461160 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 388920 1) .v) (.rational 739032 1)) .v) (.rational 350112 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 216300 1) .v) (.rational 408840 1)) .v)
    (.rational 192540 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 85100 1) .v)
    (.rational 159860 1)) .v) (.rational 74760 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22480 1) .v) (.rational 41924 1)) .v) (.rational 19444 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3580 1) .v) (.rational 6620 1)) .v) (.rational 3040 1))
    (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 260 1) .v) (.rational 476 1)) .v)
    (.rational 216 1)) (.pow .g 12))) (.pow .f 6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1402

namespace FullLow1403
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
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
    2*SmallGap.PolarCoefficientsLow1.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow1.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    8*SmallGap.PolarCoefficientsLow0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow1.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsLow0.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsLow1.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(56*SmallGap.ReducedLayers.low0_100_0 e g v*e^5+28*SmallGap.ReducedLayers.low0_100_1
    e g v*e^6+8*SmallGap.ReducedLayers.low0_100_2 e g v*e^7+1*SmallGap.ReducedLayers.low0_100_3 e
    g v*e^8+80*SmallGap.ReducedLayers.low0_010_0 e g v*e^3+60*SmallGap.ReducedLayers.low0_010_1 e
    g v*e^4+24*SmallGap.ReducedLayers.low0_010_2 e g v*e^5+4*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(20*SmallGap.ReducedLayers.low1_110_0 e g v*e^3+15*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_110_2 e g v*e^5+1*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^6+12*SmallGap.ReducedLayers.low1_020_0 e g v*e^1+18*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_020_2 e g v*e^3+3*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 3750 1) .v) (.rational 131100 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 2760 1) .v) (.rational 69486 1)) .v) (.rational 1097109 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6900 1) .v) (.rational 105942 1)) .v) (.rational
    1415832 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 49388 1) .v)
    (.rational 618738 1)) .v) (.rational 5780482 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    148164 1) .v) (.rational 1280582 1)) .v) (.rational 10301282 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 160464 1) .v) (.rational 849696 1)) .v) (.rational 6357040 1)) (.pow .g
    2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 415464 1) .v)
    (.rational 3493978 1)) .v) (.rational 21497425 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1454124 1) .v) (.rational 9187548 1)) .v) (.rational 49129261 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1967028 1) .v) (.rational 8849520 1)) .v) (.rational
    41930073 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1282260 1) .v)
    (.rational 3849774 1)) .v) (.rational 16448149 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2173960 1) .v) (.rational 13935614
    1)) .v) (.rational 59974878 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 8695840 1) .v)
    (.rational 44574686 1)) .v) (.rational 168075961 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14037048 1) .v) (.rational 55994462 1)) .v) (.rational 184644479 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11675704 1) .v) (.rational 35252686 1)) .v)
    (.rational 100685199 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5266384 1)
    .v) (.rational 11753962 1)) .v) (.rational 28363797 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7902060 1) .v)
    (.rational 41459582 1)) .v) (.rational 130202243 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 35559270 1) .v) (.rational 156385600 1)) .v) (.rational 434210910 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 66504704 1) .v) (.rational 241517406 1)) .v)
    (.rational 587307265 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 66823204
    1) .v) (.rational 197681074 1)) .v) (.rational 414319185 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 38837508 1) .v) (.rational 92751720 1)) .v) (.rational 163177730
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 13007390 1) .v) (.rational
    25119956 1)) .v) (.rational 35577715 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21121998 1) .v)
    (.rational 94879638 1)) .v) (.rational 225063670 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 105609990 1) .v) (.rational 412343094 1)) .v) (.rational 874009772 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 224145880 1) .v) (.rational 753894360 1)) .v)
    (.rational 1411829612 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 262923580
    1) .v) (.rational 756066682 1)) .v) (.rational 1231263351 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 185739022 1) .v) (.rational 454719536 1)) .v) (.rational
    629854595 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 80546494 1) .v)
    (.rational 168216528 1)) .v) (.rational 192356889 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 20812276 1) .v) (.rational 37526504 1)) .v) (.rational 34141465 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 42890408 1) .v) (.rational 170013226 1)) .v)
    (.rational 314112823 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 235897244 1) .v)
    (.rational 836121768 1)) .v) (.rational 1396992407 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 559467364 1) .v) (.rational 1762797420 1)) .v) (.rational 2634998281 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 748373808 1) .v) (.rational 2086161958 1))
    .v) (.rational 2751911600 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    619641408 1) .v) (.rational 1524126292 1)) .v) (.rational 1743850800 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 327614532 1) .v) (.rational 711752046 1)) .v)
    (.rational 691570768 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 109851868
    1) .v) (.rational 212159530 1)) .v) (.rational 170910576 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 22312672 1) .v) (.rational 38826698 1)) .v) (.rational 25340031
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 67412300 1) .v) (.rational
    240813450 1)) .v) (.rational 356504028 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    404473800 1) .v) (.rational 1321247362 1)) .v) (.rational 1791537273 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1059196066 1) .v) (.rational 3150616998 1)) .v) (.rational
    3876714181 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1588303830 1) .v)
    (.rational 4287055774 1)) .v) (.rational 4733950822 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1503515254 1) .v) (.rational 3674427092 1)) .v) (.rational 3593589030
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 933449836 1) .v) (.rational
    2065369992 1)) .v) (.rational 1762088364 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 382052206 1) .v) (.rational 767625028 1)) .v) (.rational 562016462 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 100746478 1) .v) (.rational 185076572 1))
    .v) (.rational 114475869 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    16135950 1) .v) (.rational 27399508 1)) .v) (.rational 14154853 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 82790956 1) .v) (.rational 270549150 1)) .v)
    (.rational 329501883 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 538141214 1) .v)
    (.rational 1637132508 1)) .v) (.rational 1849923404 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1541223364 1) .v) (.rational 4350599498 1)) .v) (.rational 4526501655 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2557175148 1) .v) (.rational 6678716014 1))
    .v) (.rational 6342078920 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2717929790 1) .v) (.rational 6553907018 1)) .v) (.rational 5623624414 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1931200476 1) .v) (.rational 4295524356 1)) .v)
    (.rational 3293670502 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 928559720
    1) .v) (.rational 1906587012 1)) .v) (.rational 1291058996 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 298809460 1) .v) (.rational 568016876 1)) .v) (.rational
    335797679 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 62065490 1) .v)
    (.rational 109800072 1)) .v) (.rational 56126201 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7728810 1) .v) (.rational 12813938 1)) .v) (.rational 5630629 1)) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 79625720 1) .v)
    (.rational 240634206 1)) .v) (.rational 247031814 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 557380040 1) .v) (.rational 1590946650 1)) .v) (.rational 1534355890 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1732224344 1) .v) (.rational 4657132892 1)) .v)
    (.rational 4193821600 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3147405544 1) .v) (.rational 7950166378 1)) .v) (.rational 6638962224 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3704801434 1) .v) (.rational 8773323994 1)) .v)
    (.rational 6742027972 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2957013970 1) .v) (.rational 6554867240 1)) .v) (.rational 4596721598 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1627050452 1) .v) (.rational 3373980008 1)) .v)
    (.rational 2140012344 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 614623052
    1) .v) (.rational 1192867196 1)) .v) (.rational 678182557 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 155543518 1) .v) (.rational 283027208 1)) .v) (.rational
    143023839 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 25051278 1) .v)
    (.rational 42853730 1)) .v) (.rational 19113941 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2329728 1) .v) (.rational 3757084 1)) .v) (.rational 1471527 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 59702256 1)
    .v) (.rational 168202062 1)) .v) (.rational 148801315 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 447766920 1) .v) (.rational 1205632388 1)) .v) (.rational 1013707951 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1500197040 1) .v) (.rational 3851277336 1)) .v)
    (.rational 3062872979 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2960149140 1) .v) (.rational 7228677418 1)) .v) (.rational 5408462061 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3817366520 1) .v) (.rational 8848245498 1)) .v)
    (.rational 6191261060 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3374364884 1) .v) (.rational 7409818410 1)) .v) (.rational 4817372306 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2084609888 1) .v) (.rational 4330212932 1)) .v)
    (.rational 2597484640 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 900133896
    1) .v) (.rational 1766987564 1)) .v) (.rational 970796179 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 266883168 1) .v) (.rational 494896544 1)) .v) (.rational
    247183705 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 52208040 1) .v)
    (.rational 91458648 1)) .v) (.rational 41226435 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6249700 1) .v) (.rational 10343182 1)) .v) (.rational 4178667 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 394864 1) .v) (.rational 616556 1)) .v)
    (.rational 221692 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 34484336 1) .v) (.rational 91129258 1)) .v)
    (.rational 70862158 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 275874688 1) .v)
    (.rational 703550946 1)) .v) (.rational 525456407 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 990927176 1) .v) (.rational 2433727582 1)) .v) (.rational 1739223933 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2108683192 1) .v) (.rational 4977004406 1))
    .v) (.rational 3388958927 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2953284708 1) .v) (.rational 6684466382 1)) .v) (.rational 4316710219 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2859125056 1) .v) (.rational 6192953032 1)) .v)
    (.rational 3773424562 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1954605022 1) .v) (.rational 4043617682 1)) .v) (.rational 2311585350 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 946261186 1) .v) (.rational 1866286884 1)) .v)
    (.rational 994854859 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 319982046
    1) .v) (.rational 600666144 1)) .v) (.rational 296616087 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 73086844 1) .v) (.rational 130381054 1)) .v) (.rational 59225049
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 10572794 1) .v) (.rational
    17893312 1)) .v) (.rational 7420979 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 853210 1) .v) (.rational 1366398 1)) .v) (.rational 513188 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 28094 1) .v) (.rational 42360 1)) .v) (.rational
    14266 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 15018236 1) .v) (.rational 37406642 1)) .v) (.rational
    26020653 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 127655006 1) .v) (.rational
    309341384 1)) .v) (.rational 208600422 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    489247888 1) .v) (.rational 1151370738 1)) .v) (.rational 750455563 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1116259040 1) .v) (.rational 2546292570 1)) .v)
    (.rational 1598910753 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1685667548 1) .v) (.rational 3719654220 1)) .v) (.rational 2241967776 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1771313986 1) .v) (.rational 3773187000 1)) .v)
    (.rational 2174019211 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1324868188 1) .v) (.rational 2718520960 1)) .v) (.rational 1490477766 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 708610012 1) .v) (.rational 1397504794 1)) .v)
    (.rational 725373935 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 267996110
    1) .v) (.rational 506836940 1)) .v) (.rational 247633923 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 69564388 1) .v) (.rational 125855900 1)) .v) (.rational 57513071
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 11688400 1) .v) (.rational
    20175498 1)) .v) (.rational 8561123 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1130912 1) .v) (.rational 1856336 1)) .v) (.rational 725424 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 46974 1) .v) (.rational 72986 1)) .v) (.rational
    26012 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 4757726 1) .v) (.rational 11214266 1)) .v) (.rational
    7087730 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 42819534 1) .v) (.rational 98866762
    1)) .v) (.rational 61062208 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 174378296 1)
    .v) (.rational 393796236 1)) .v) (.rational 237140676 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 424450264 1) .v) (.rational 935951478 1)) .v) (.rational 548152291 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 686940772 1) .v) (.rational
    1476417548 1)) .v) (.rational 838547967 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 777722148 1) .v) (.rational 1626033380 1)) .v) (.rational 892711377 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 630625616 1) .v) (.rational 1279896148 1))
    .v) (.rational 676737147 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    368363432 1) .v) (.rational 724078468 1)) .v) (.rational 367173867 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 153517014 1) .v) (.rational 291536518 1)) .v) (.rational
    141101631 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 44404062 1) .v)
    (.rational 81245698 1)) .v) (.rational 37323707 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8434312 1) .v) (.rational 14823024 1)) .v) (.rational 6421957 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 940592 1) .v) (.rational 1582166 1)) .v)
    (.rational 641574 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 46296 1) .v)
    (.rational 74212 1)) .v) (.rational 27916 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1031200 1)
    .v) (.rational 2308494 1)) .v) (.rational 1344196 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9796400 1) .v) (.rational 21607800 1)) .v) (.rational 12379090 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 42237200 1) .v) (.rational 91676156 1)) .v) (.rational
    51589355 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 109208000 1) .v)
    (.rational 232933994 1)) .v) (.rational 128511614 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 188450528 1) .v) (.rational 394390792 1)) .v) (.rational 212864972 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 228451760 1) .v) (.rational
    468311546 1)) .v) (.rational 246662722 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 199315536 1) .v) (.rational 399456526 1)) .v) (.rational 204733340 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 125975824 1) .v) (.rational 246312758 1))
    .v) (.rational 122439058 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    57184720 1) .v) (.rational 108824524 1)) .v) (.rational 52263914 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 18159328 1) .v) (.rational 33546182 1)) .v) (.rational
    15495332 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 3823840 1) .v)
    (.rational 6836542 1)) .v) (.rational 3021081 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 478576 1) .v) (.rational 825256 1)) .v) (.rational 346680 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 26864 1) .v) (.rational 44502 1)) .v) (.rational
    17638 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 136108 1) .v) (.rational 290440 1)) .v)
    (.rational 157804 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1361080 1) .v) (.rational
    2875896 1)) .v) (.rational 1546176 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    6192870 1) .v) (.rational 12944702 1)) .v) (.rational 6878690 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16945050 1) .v) (.rational 35002166 1)) .v) (.rational
    18359660 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 31039518 1) .v)
    (.rational 63284924 1)) .v) (.rational 32716310 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 40079880 1) .v) (.rational 80548456 1)) .v) (.rational 40968208 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 37389324 1) .v) (.rational 73953236 1)) .v)
    (.rational 36929732 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 25376988 1)
    .v) (.rational 49314100 1)) .v) (.rational 24119560 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 12431160 1) .v) (.rational 23686616 1)) .v) (.rational 11314760 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 4284208 1) .v) (.rational 7986224
    1)) .v) (.rational 3713360 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    985582 1) .v) (.rational 1792766 1)) .v) (.rational 808154 1)) (.pow .g 10))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 135834 1) .v) (.rational 240390 1)) .v) (.rational 104556 1))
    (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 8478 1) .v) (.rational 14548 1))
    .v) (.rational 6070 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8196 1) .v) (.rational 16740 1))
    .v) (.rational 8592 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 86058 1) .v) (.rational
    174790 1)) .v) (.rational 89192 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 412036
    1) .v) (.rational 831708 1)) .v) (.rational 421652 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1189172 1) .v) (.rational 2383916 1)) .v) (.rational 1199784 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2303478 1) .v) (.rational 4582434 1)) .v)
    (.rational 2287356 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3154044 1)
    .v) (.rational 6220836 1)) .v) (.rational 3076368 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3129504 1) .v) (.rational 6113184 1)) .v) (.rational 2991240 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2266704 1) .v) (.rational 4379952 1)) .v)
    (.rational 2117328 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1189272 1)
    .v) (.rational 2270016 1)) .v) (.rational 1082184 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 440778 1) .v) (.rational 829734 1)) .v) (.rational 389256 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 109548 1) .v) (.rational 202996 1)) .v)
    (.rational 93476 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 16396 1) .v)
    (.rational 29844 1)) .v) (.rational 13448 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1118 1) .v) (.rational 1994 1)) .v) (.rational 876 1)) (.pow .g 12))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1403

namespace FullLow1404
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
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
    2*SmallGap.PolarCoefficientsLow2.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow2.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    8*SmallGap.PolarCoefficientsLow0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow2.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    24*SmallGap.PolarCoefficientsLow0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsLow2.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(70*SmallGap.ReducedLayers.low0_100_0 e g v*e^4+56*SmallGap.ReducedLayers.low0_100_1
    e g v*e^5+28*SmallGap.ReducedLayers.low0_100_2 e g v*e^6+8*SmallGap.ReducedLayers.low0_100_3 e
    g v*e^7+1*SmallGap.ReducedLayers.low0_100_4 e g v*e^8+60*SmallGap.ReducedLayers.low0_010_0 e g
    v*e^2+80*SmallGap.ReducedLayers.low0_010_1 e g v*e^3+60*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^4+24*SmallGap.ReducedLayers.low0_010_3 e g v*e^5+4*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.low1_110_0 e g v*e^2+20*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_110_2 e g v*e^4+6*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_110_4 e g v*e^6+3*SmallGap.ReducedLayers.low1_020_0 e g
    v+12*SmallGap.ReducedLayers.low1_020_1 e g v*e^1+18*SmallGap.ReducedLayers.low1_020_2 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_020_3 e g v*e^3+3*SmallGap.ReducedLayers.low1_020_4 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 7800 1) .v) (.rational 294600 1)) .e) (.add (.mul (.add (.mul
    (.add (.mul (.rational 5040 1) .v) (.rational 136344 1)) .v) (.rational 2369661 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12600 1) .v) (.rational 204168 1)) .v) (.rational 3005658
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 87304 1) .v)
    (.rational 1152828 1)) .v) (.rational 11974034 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 261912 1) .v) (.rational 2331736 1)) .v) (.rational 20927185 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 283752 1) .v) (.rational 1478244 1)) .v) (.rational
    12571016 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 711284 1) .v) (.rational 6221688 1)) .v) (.rational 42614263 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2489494 1) .v) (.rational 16001002 1)) .v) (.rational 95432405
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3368778 1) .v) (.rational 14885598 1))
    .v) (.rational 79271946 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2198210
    1) .v) (.rational 6115182 1)) .v) (.rational 29926641 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3600946 1) .v) (.rational
    23837384 1)) .v) (.rational 113540152 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    14403784 1) .v) (.rational 74814532 1)) .v) (.rational 311909088 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 23258508 1) .v) (.rational 91605654 1)) .v) (.rational 334006914
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 19362280 1) .v) (.rational
    55724674 1)) .v) (.rational 176036633 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8747602 1) .v) (.rational 17773898 1)) .v) (.rational 47302996 1)) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 12632944 1) .v) (.rational 68302704 1)) .v) (.rational 234928817 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 56848248 1) .v) (.rational 253777598 1)) .v) (.rational
    769068540 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 106354264 1) .v) (.rational
    384811296 1)) .v) (.rational 1016807443 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 106948100 1) .v) (.rational 308251106 1)) .v) (.rational 697162275 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 62247996 1) .v) (.rational 141260306 1)) .v)
    (.rational 264839295 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 20895652
    1) .v) (.rational 37435112 1)) .v) (.rational 55180319 1)) (.pow .g 5)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    32462572 1) .v) (.rational 150468250 1)) .v) (.rational 386114418 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 162312860 1) .v) (.rational 646439120 1)) .v) (.rational 1475109640 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 344608026 1) .v) (.rational 1166819674 1))
    .v) (.rational 2337586140 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    404554944 1) .v) (.rational 1154319388 1)) .v) (.rational 1993309594 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 286208336 1) .v) (.rational 685136988 1)) .v)
    (.rational 993492438 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 124396716
    1) .v) (.rational 250858082 1)) .v) (.rational 294817431 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 32245946 1) .v) (.rational 55759112 1)) .v) (.rational 50898782
    1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 63011722 1) .v) (.rational 258546756 1)) .v)
    (.rational 510609459 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 346564471 1) .v)
    (.rational 1260656032 1)) .v) (.rational 2240005150 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 822242369 1) .v) (.rational 2634356616 1)) .v) (.rational 4161133580 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1100857128 1) .v) (.rational 3090891044 1))
    .v) (.rational 4273790202 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    912924500 1) .v) (.rational 2241663724 1)) .v) (.rational 2661089648 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 483853783 1) .v) (.rational 1042123202 1)) .v)
    (.rational 1037733471 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 162805049
    1) .v) (.rational 310757006 1)) .v) (.rational 253288550 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 33222442 1) .v) (.rational 57290418 1)) .v) (.rational 37500675
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 93938826 1) .v) (.rational
    348646552 1)) .v) (.rational 546185584 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    563632956 1) .v) (.rational 1900782230 1)) .v) (.rational 2714906137 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1476619942 1) .v) (.rational 4505008698 1)) .v) (.rational
    5807542483 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2216464280 1) .v)
    (.rational 6097276086 1)) .v) (.rational 7009348048 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2101812842 1) .v) (.rational 5205912556 1)) .v) (.rational 5262699264
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1308428204 1) .v) (.rational
    2922463878 1)) .v) (.rational 2558293401 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 537610370 1) .v) (.rational 1088997804 1)) .v) (.rational 813154377 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 142519856 1) .v) (.rational 264610304 1))
    .v) (.rational 166640469 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    22984708 1) .v) (.rational 39714790 1)) .v) (.rational 21035126 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 108306126 1) .v) (.rational 368942508 1)) .v)
    (.rational 471893327 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 703989819 1) .v)
    (.rational 2222039648 1)) .v) (.rational 2627285825 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2017187386 1) .v) (.rational 5880278138 1)) .v) (.rational 6375547727 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3350642614 1) .v) (.rational 8997700090 1))
    .v) (.rational 8864302756 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3568216493 1) .v) (.rational 8814423792 1)) .v) (.rational 7811287661 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2542986627 1) .v) (.rational 5780530942 1)) .v)
    (.rational 4559599457 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1228028012 1) .v) (.rational 2575583434 1)) .v) (.rational 1790219408 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 397549396 1) .v) (.rational 773536248 1)) .v)
    (.rational 470095799 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 83236811
    1) .v) (.rational 151488238 1)) .v) (.rational 80215029 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 10472944 1) .v) (.rational 18001216 1)) .v) (.rational 8324331
    1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 96460934 1)
    .v) (.rational 304608980 1)) .v) (.rational 326698630 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 675226538 1) .v) (.rational 2006804134 1)) .v) (.rational 2016644782 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2099595509 1) .v) (.rational 5857488350 1)) .v)
    (.rational 5480562327 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3819628060 1) .v) (.rational 9980398822 1)) .v) (.rational 8634746712 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4505693741 1) .v) (.rational 11009263412 1)) .v)
    (.rational 8742393701 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3608110644 1) .v) (.rational 8239299478 1)) .v) (.rational 5959717720 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1994779425 1) .v) (.rational 4260222560 1)) .v)
    (.rational 2786547869 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 758535372
    1) .v) (.rational 1518552990 1)) .v) (.rational 892675494 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 193688733 1) .v) (.rational 364863958 1)) .v) (.rational
    191986391 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 31566922 1) .v)
    (.rational 56219506 1)) .v) (.rational 26445378 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2981370 1) .v) (.rational 5039788 1)) .v) (.rational 2121110 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 65756470 1)
    .v) (.rational 193813316 1)) .v) (.rational 178526353 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 493173525 1) .v) (.rational 1385454146 1)) .v) (.rational 1210744536 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1653289091 1) .v) (.rational 4416785094 1)) .v)
    (.rational 3644163004 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3266580629 1) .v) (.rational 8281687954 1)) .v) (.rational 6417299966 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4222238389 1) .v) (.rational 10141120634 1)) .v)
    (.rational 7338836751 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3745480838 1) .v) (.rational 8512130874 1)) .v) (.rational 5719741768 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2325751326 1) .v) (.rational 4998587826 1)) .v)
    (.rational 3101043430 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1011448023 1) .v) (.rational 2056362994 1)) .v) (.rational 1171670284 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 302811627 1) .v) (.rational 582999938 1)) .v)
    (.rational 303754958 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 60011801
    1) .v) (.rational 109584256 1)) .v) (.rational 52043262 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 7309091 1) .v) (.rational 12672580 1)) .v) (.rational 5473306 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 472488 1) .v) (.rational 776624
    1)) .v) (.rational 304136 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 33661388 1) .v) (.rational 93046668 1)) .v)
    (.rational 75165080 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 269291104 1) .v)
    (.rational 716841146 1)) .v) (.rational 555548835 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 967873796 1) .v) (.rational 2476189702 1)) .v) (.rational 1834151569 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2062522252 1) .v) (.rational 5061554546 1))
    .v) (.rational 3568763131 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2895632306 1) .v) (.rational 6803925210 1)) .v) (.rational 4546565083 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2813749792 1) .v) (.rational 6320259568 1)) .v)
    (.rational 3984401664 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1933950600 1) .v) (.rational 4147247684 1)) .v) (.rational 2455054716 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 943303686 1) .v) (.rational 1929388796 1)) .v)
    (.rational 1067535559 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 322255540
    1) .v) (.rational 628293350 1)) .v) (.rational 323494121 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 74623268 1) .v) (.rational 138626246 1)) .v) (.rational 66146723
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 10994852 1) .v) (.rational
    19446394 1)) .v) (.rational 8565669 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 909338 1) .v) (.rational 1527794 1)) .v) (.rational 618456 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 30958 1) .v) (.rational 49088 1)) .v) (.rational
    18130 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 12513962 1) .v) (.rational 32551164 1)) .v) (.rational
    23478291 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 106368677 1) .v) (.rational
    268740978 1)) .v) (.rational 187770797 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    407923840 1) .v) (.rational 999261370 1)) .v) (.rational 674380977 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 932055260 1) .v) (.rational 2209717880 1)) .v) (.rational
    1435871307 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1410997438 1) .v)
    (.rational 3231685768 1)) .v) (.rational 2014951086 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1488344975 1) .v) (.rational 3287305776 1)) .v) (.rational 1959418550
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1119359050 1) .v) (.rational
    2380097374 1)) .v) (.rational 1350930290 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 603296144 1) .v) (.rational 1232933894 1)) .v) (.rational 663669247 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 230557015 1) .v) (.rational 452169000 1))
    .v) (.rational 229853592 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    60688918 1) .v) (.rational 114042578 1)) .v) (.rational 54509231 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10388868 1) .v) (.rational 18670852 1)) .v) (.rational
    8353119 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1030458 1) .v)
    (.rational 1766446 1)) .v) (.rational 735988 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 44259 1) .v) (.rational 72024 1)) .v) (.rational 27765 1)) (.pow .g 12)))
    .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 3186190 1) .v) (.rational 7818934 1)) .v) (.rational 5112630 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 28675710 1) .v) (.rational 68843026 1)) .v) (.rational 43968637
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 116852507 1) .v) (.rational 274022664
    1)) .v) (.rational 170564333 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    284837296 1) .v) (.rational 651390690 1)) .v) (.rational 394176683 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 462128600 1) .v) (.rational 1028872262 1)) .v) (.rational
    603639421 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 525187180 1) .v)
    (.rational 1136299724 1)) .v) (.rational 644436711 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 428189243 1) .v) (.rational 898657200 1)) .v) (.rational 491065588 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 252023206 1) .v) (.rational
    512097772 1)) .v) (.rational 268672697 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 106119761 1) .v) (.rational 208356610 1)) .v) (.rational 104555568 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 31119770 1) .v) (.rational 58916962 1)) .v)
    (.rational 28161836 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 6019490 1)
    .v) (.rational 10963560 1)) .v) (.rational 4969451 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 687558 1) .v) (.rational 1201394 1)) .v) (.rational 513836 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 34929 1) .v) (.rational 58338 1)) .v)
    (.rational 23409 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 496180 1) .v) (.rational 1151056
    1)) .v) (.rational 691208 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4713710 1) .v)
    (.rational 10763356 1)) .v) (.rational 6357282 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20335456 1) .v) (.rational 45646944 1)) .v) (.rational 26474354 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 52651771 1) .v) (.rational 116021912 1)) .v)
    (.rational 65952817 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 91072438 1)
    .v) (.rational 196710950 1)) .v) (.rational 109368700 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 110806285 1) .v) (.rational 234214298 1)) .v) (.rational 127066969 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 97182435 1) .v) (.rational
    200670582 1)) .v) (.rational 105955563 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 61871459 1) .v) (.rational 124571290 1)) .v) (.rational 63828947 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 28362671 1) .v) (.rational 55569082 1)) .v)
    (.rational 27541907 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 9124753 1)
    .v) (.rational 17359090 1)) .v) (.rational 8292785 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1954425 1) .v) (.rational 3601842 1)) .v) (.rational 1651951 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 250070 1) .v) (.rational 445286 1)) .v)
    (.rational 195216 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 14443 1) .v)
    (.rational 24776 1)) .v) (.rational 10333 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 35568 1)
    .v) (.rational 78140 1)) .v) (.rational 43576 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    355680 1) .v) (.rational 773204 1)) .v) (.rational 426584 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1619224 1) .v) (.rational 3479654 1)) .v) (.rational 1897046 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4436136 1) .v) (.rational 9413570 1)) .v)
    (.rational 5064682 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8143629 1)
    .v) (.rational 17043610 1)) .v) (.rational 9035669 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10550472 1) .v) (.rational 21748400 1)) .v) (.rational 11341792 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9889404 1) .v) (.rational 20049148
    1)) .v) (.rational 10265024 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6756744 1) .v) (.rational 13450268 1)) .v) (.rational 6746020 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3339486 1) .v) (.rational 6515920 1)) .v) (.rational
    3193502 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1164504 1) .v)
    (.rational 2222860 1)) .v) (.rational 1061624 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 272004 1) .v) (.rational 506910 1)) .v) (.rational 235186 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 38224 1) .v) (.rational 69394 1)) .v) (.rational
    31170 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2445 1) .v) (.rational
    4314 1)) .v) (.rational 1869 1)) (.pow .g 12))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1404

namespace FullLow1405
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
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
    2*SmallGap.PolarCoefficientsLow3.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow3.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    8*SmallGap.PolarCoefficientsLow1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow3.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    16*SmallGap.PolarCoefficientsLow0.c230 e f g v*((e+f)*(e+f+g))^3+
    24*SmallGap.PolarCoefficientsLow1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsLow3.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    12*SmallGap.PolarCoefficientsLow0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(56*SmallGap.ReducedLayers.low0_100_0 e g v*e^3+70*SmallGap.ReducedLayers.low0_100_1
    e g v*e^4+56*SmallGap.ReducedLayers.low0_100_2 e g v*e^5+28*SmallGap.ReducedLayers.low0_100_3
    e g v*e^6+8*SmallGap.ReducedLayers.low0_100_4 e g v*e^7+24*SmallGap.ReducedLayers.low0_010_0 e
    g v*e^1+60*SmallGap.ReducedLayers.low0_010_1 e g v*e^2+80*SmallGap.ReducedLayers.low0_010_2 e
    g v*e^3+60*SmallGap.ReducedLayers.low0_010_3 e g v*e^4+24*SmallGap.ReducedLayers.low0_010_4 e
    g v*e^5+4*SmallGap.ReducedLayers.low0_010_5 e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(6*SmallGap.ReducedLayers.low1_110_0 e g v*e^1+15*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^2+20*SmallGap.ReducedLayers.low1_110_2 e g v*e^3+15*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_110_4 e g v*e^5+1*SmallGap.ReducedLayers.low1_110_5 e g
    v*e^6+3*SmallGap.ReducedLayers.low1_020_1 e g v+12*SmallGap.ReducedLayers.low1_020_2 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_020_3 e g v*e^2+12*SmallGap.ReducedLayers.low1_020_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_020_5 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 11340 1) .v) (.rational 471000 1)) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 6300 1) .v) (.rational 187740 1)) .v) (.rational 3645558 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 15750 1) .v) (.rational 275940 1)) .v) (.rational 4539114 1)) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 106106 1) .v) (.rational 1509732
    1)) .v) (.rational 17669626 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 318318 1) .v)
    (.rational 2977940 1)) .v) (.rational 30234962 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 344988 1) .v) (.rational 1790040 1)) .v) (.rational 17624596 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 839972 1) .v)
    (.rational 7788116 1)) .v) (.rational 60123135 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2939902 1) .v) (.rational 19535530 1)) .v) (.rational 131672917 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3979794 1) .v) (.rational 17436342 1)) .v) (.rational
    106076553 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2599730 1) .v)
    (.rational 6643350 1)) .v) (.rational 38263343 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4121930 1) .v) (.rational 28645582
    1)) .v) (.rational 152679592 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 16487720 1) .v)
    (.rational 87989886 1)) .v) (.rational 410282965 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26633180 1) .v) (.rational 104513108 1)) .v) (.rational 426765669 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 22192520 1) .v) (.rational 60876940 1)) .v)
    (.rational 216022205 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 10044290
    1) .v) (.rational 18267230 1)) .v) (.rational 54665319 1)) (.pow .g 4)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13959498 1)
    .v) (.rational 78941814 1)) .v) (.rational 300143985 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 62817741 1) .v) (.rational 288354372 1)) .v) (.rational 962625531 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 117564160 1) .v) (.rational 428016398 1)) .v)
    (.rational 1240361033 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 118325102
    1) .v) (.rational 334041808 1)) .v) (.rational 822603917 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 68980926 1) .v) (.rational 148583650 1)) .v) (.rational 298993420
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 23214289 1) .v) (.rational
    38258156 1)) .v) (.rational 58711728 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 34421219 1) .v)
    (.rational 166925958 1)) .v) (.rational 466874041 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 172106095 1) .v) (.rational 708034794 1)) .v) (.rational 1751952611 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 365537703 1) .v) (.rational 1259568766 1)) .v)
    (.rational 2717707047 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 429514242
    1) .v) (.rational 1226593122 1)) .v) (.rational 2259115617 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 304355921 1) .v) (.rational 716821782 1)) .v) (.rational
    1092526398 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 132613515 1) .v)
    (.rational 259265522 1)) .v) (.rational 313378886 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 34495057 1) .v) (.rational 57383734 1)) .v) (.rational 52363858 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 63583274 1) .v) (.rational 273581394 1)) .v)
    (.rational 581151847 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 349708007 1) .v)
    (.rational 1321549786 1)) .v) (.rational 2512005492 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 830048243 1) .v) (.rational 2734822062 1)) .v) (.rational 4589680448 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1112407041 1) .v) (.rational 3178472906 1))
    .v) (.rational 4628868083 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    924102716 1) .v) (.rational 2286733288 1)) .v) (.rational 2827784902 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 491082697 1) .v) (.rational 1058071206 1)) .v)
    (.rational 1083419369 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 165856075
    1) .v) (.rational 315819982 1)) .v) (.rational 261443593 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 34009839 1) .v) (.rational 58730606 1)) .v) (.rational 38833900
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 89209055 1) .v) (.rational
    348128884 1)) .v) (.rational 580319097 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    535254330 1) .v) (.rational 1885091486 1)) .v) (.rational 2851230693 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1402940656 1) .v) (.rational 4438783350 1)) .v) (.rational
    6025257563 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2108205255 1) .v)
    (.rational 5973823260 1)) .v) (.rational 7183954779 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2003011206 1) .v) (.rational 5080782216 1)) .v) (.rational 5334540764
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1250610924 1) .v) (.rational
    2849702632 1)) .v) (.rational 2573243650 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 516011572 1) .v) (.rational 1065630558 1)) .v) (.rational 817217054 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 137560923 1) .v) (.rational 261297204 1))
    .v) (.rational 169294404 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    22341239 1) .v) (.rational 39801556 1)) .v) (.rational 21939294 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 95375692 1) .v) (.rational 342335642 1)) .v)
    (.rational 462272183 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 619941998 1) .v)
    (.rational 2051493274 1)) .v) (.rational 2551195126 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1777317478 1) .v) (.rational 5405119006 1)) .v) (.rational 6138000651 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2955884151 1) .v) (.rational 8243443370 1))
    .v) (.rational 8468479351 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3154606833 1) .v) (.rational 8063421472 1)) .v) (.rational 7419830989 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2255642583 1) .v) (.rational 5294181178 1)) .v)
    (.rational 4322354705 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1094410172 1) .v) (.rational 2370250668 1)) .v) (.rational 1704118186 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 356568649 1) .v) (.rational 718526262 1)) .v)
    (.rational 453430282 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 75281645
    1) .v) (.rational 142720122 1)) .v) (.rational 79283275 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9570729 1) .v) (.rational 17270824 1)) .v) (.rational 8518918 1))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 77227465 1)
    .v) (.rational 257237136 1)) .v) (.rational 289732697 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 540592255 1) .v) (.rational 1688324528 1)) .v) (.rational 1776856707 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1681964812 1) .v) (.rational 4913026626 1)) .v)
    (.rational 4800566812 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3064089557 1) .v) (.rational 8355666400 1)) .v) (.rational 7528401893 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3623051877 1) .v) (.rational 9215821272 1)) .v)
    (.rational 7603499507 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2911887190 1) .v) (.rational 6912738246 1)) .v) (.rational 5188638834 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1618301673 1) .v) (.rational 3593770200 1)) .v)
    (.rational 2441161977 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 619813689
    1) .v) (.rational 1293013334 1)) .v) (.rational 792534074 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 159788688 1) .v) (.rational 314975760 1)) .v) (.rational
    174242407 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 26366963 1) .v)
    (.rational 49419698 1)) .v) (.rational 24750688 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2529307 1) .v) (.rational 4525698 1)) .v) (.rational 2059114 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 46578954 1)
    .v) (.rational 144788558 1)) .v) (.rational 139567528 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 349342155 1) .v) (.rational 1031971734 1)) .v) (.rational 941977697 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1171886681 1) .v) (.rational 3282889770 1)) .v)
    (.rational 2823838763 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2318907409 1) .v) (.rational 6149631382 1)) .v) (.rational 4959389443 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3005079483 1) .v) (.rational 7535326672 1)) .v)
    (.rational 5668140104 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2676338896 1) .v) (.rational 6342952964 1)) .v) (.rational 4428583093 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1671366664 1) .v) (.rational 3746046324 1)) .v)
    (.rational 2417427761 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 732616434
    1) .v) (.rational 1555377488 1)) .v) (.rational 924922198 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 221678037 1) .v) (.rational 446919124 1)) .v) (.rational
    244534104 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 44555427 1) .v)
    (.rational 85531684 1)) .v) (.rational 43056908 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5527371 1) .v) (.rational 10116400 1)) .v) (.rational 4685806 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 365887 1) .v) (.rational 636260 1)) .v)
    (.rational 270373 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 20281063 1) .v) (.rational 59038842 1)) .v)
    (.rational 49780291 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 162248504 1) .v)
    (.rational 453772116 1)) .v) (.rational 366590040 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 583558532 1) .v) (.rational 1565051078 1)) .v) (.rational 1206908352 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1245560904 1) .v) (.rational 3197777526 1))
    .v) (.rational 2344740480 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1753527885 1) .v) (.rational 4303367730 1)) .v) (.rational 2988248155 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1711182490 1) .v) (.rational 4010042404 1)) .v)
    (.rational 2626702187 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1183335910 1) .v) (.rational 2646528016 1)) .v) (.rational 1629315575 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 582094877 1) .v) (.rational 1242419438 1)) .v)
    (.rational 716633501 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 201154597
    1) .v) (.rational 409906554 1)) .v) (.rational 220972861 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 47300832 1) .v) (.rational 92064172 1)) .v) (.rational 46297409
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 7112710 1) .v) (.rational
    13216610 1)) .v) (.rational 6188467 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 604433 1) .v) (.rational 1068712 1)) .v) (.rational 464279 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21343 1) .v) (.rational 35538 1)) .v) (.rational
    14195 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 6024658 1) .v) (.rational 16459108 1)) .v) (.rational
    12360902 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 51209593 1) .v) (.rational 135623386
    1)) .v) (.rational 98576881 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 196535500 1)
    .v) (.rational 503714672 1)) .v) (.rational 353316560 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 449824390 1) .v) (.rational 1113822684 1)) .v) (.rational 751616480 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 682960938 1) .v) (.rational
    1631206534 1)) .v) (.rational 1055582161 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 723624824 1) .v) (.rational 1664729418 1)) .v) (.rational 1029681442 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 547736648 1) .v) (.rational 1212227350 1))
    .v) (.rational 714339985 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    297856581 1) .v) (.rational 633521322 1)) .v) (.rational 354556759 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 115214485 1) .v) (.rational 235304594 1)) .v) (.rational
    124706340 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 30821933 1) .v)
    (.rational 60388684 1)) .v) (.rational 30223971 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5390746 1) .v) (.rational 10117770 1)) .v) (.rational 4768465 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 550215 1) .v) (.rational 986314 1)) .v)
    (.rational 436099 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 24561 1) .v)
    (.rational 41780 1)) .v) (.rational 17219 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1092842 1) .v)
    (.rational 2805310 1)) .v) (.rational 1904376 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    9835578 1) .v) (.rational 24660278 1)) .v) (.rational 16340136 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 40110665 1) .v) (.rational 98075144 1)) .v) (.rational 63288487 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 97945552 1) .v) (.rational
    233181044 1)) .v) (.rational 146186672 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 159391035 1) .v) (.rational 368877942 1)) .v) (.rational 224084163 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 181979273 1) .v) (.rational 408748314 1))
    .v) (.rational 239938125 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    149357492 1) .v) (.rational 325084240 1)) .v) (.rational 183868324 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 88720035 1) .v) (.rational 186837426 1)) .v) (.rational
    101523459 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 37823752 1) .v)
    (.rational 76953174 1)) .v) (.rational 40052562 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11276205 1) .v) (.rational 22128912 1)) .v) (.rational 10999163 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2228991 1) .v) (.rational 4211504 1)) .v)
    (.rational 1992849 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 261949 1)
    .v) (.rational 475322 1)) .v) (.rational 213373 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 13815 1) .v) (.rational 23982 1)) .v) (.rational 10167 1)) (.pow .g 12)))
    (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 91332 1) .v) (.rational 220412 1)) .v) (.rational 136872 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 867654 1) .v) (.rational 2058346 1)) .v) (.rational 1256520
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3746080 1) .v) (.rational 8724182 1))
    .v) (.rational 5226378 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9716503
    1) .v) (.rational 22182580 1)) .v) (.rational 13016325 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 16858162 1) .v) (.rational 37671338 1)) .v) (.rational 21606416 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 20606863 1) .v) (.rational 45001498
    1)) .v) (.rational 25171579 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    18194337 1) .v) (.rational 38766686 1)) .v) (.rational 21095837 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11690549 1) .v) (.rational 24262822 1)) .v) (.rational
    12811849 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5425613 1) .v)
    (.rational 10949690 1)) .v) (.rational 5595365 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1774047 1) .v) (.rational 3475428 1)) .v) (.rational 1713841 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 388051 1) .v) (.rational 736596 1)) .v)
    (.rational 349517 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 51008 1) .v)
    (.rational 93630 1)) .v) (.rational 42622 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3049 1) .v) (.rational 5400 1)) .v) (.rational 2351 1)) (.pow .g 12))) (.pow .f
    3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1405

namespace FullLow1406
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsLow4.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    8*SmallGap.PolarCoefficientsLow3.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    12*SmallGap.PolarCoefficientsLow4.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    16*SmallGap.PolarCoefficientsLow2.c140 e f g v*((e+f)*(e+f+g))^4+
    32*SmallGap.PolarCoefficientsLow3.c140 e f g v*e*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsLow4.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow4.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow3.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow4.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    8*SmallGap.PolarCoefficientsLow2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow3.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow4.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    16*SmallGap.PolarCoefficientsLow1.c230 e f g v*((e+f)*(e+f+g))^3+
    24*SmallGap.PolarCoefficientsLow2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow3.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsLow4.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    12*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    4*SmallGap.PolarCoefficientsLow0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(28*SmallGap.ReducedLayers.low0_100_0 e g v*e^2+56*SmallGap.ReducedLayers.low0_100_1
    e g v*e^3+70*SmallGap.ReducedLayers.low0_100_2 e g v*e^4+56*SmallGap.ReducedLayers.low0_100_3
    e g v*e^5+28*SmallGap.ReducedLayers.low0_100_4 e g v*e^6+4*SmallGap.ReducedLayers.low0_010_0 e
    g v+24*SmallGap.ReducedLayers.low0_010_1 e g v*e^1+60*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^2+80*SmallGap.ReducedLayers.low0_010_3 e g v*e^3+60*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^4+24*SmallGap.ReducedLayers.low0_010_5 e g v*e^5+4*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_110_0 e g v+6*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_110_2 e g v*e^2+20*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_110_4 e g v*e^4+6*SmallGap.ReducedLayers.low1_110_5 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_110_6 e g v*e^6+3*SmallGap.ReducedLayers.low1_020_2 e g
    v+12*SmallGap.ReducedLayers.low1_020_3 e g v*e^1+18*SmallGap.ReducedLayers.low1_020_4 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_020_5 e g v*e^3+3*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    11760 1) .v) (.rational 549360 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 5460 1)
    .v) (.rational 185136 1)) .v) (.rational 4096428 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13650 1) .v) (.rational 266952 1)) .v) (.rational 5000478 1)) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 89782 1) .v) (.rational 1419180 1)) .v)
    (.rational 19050626 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 269346 1) .v) (.rational
    2724568 1)) .v) (.rational 31859212 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    292026 1) .v) (.rational 1539216 1)) .v) (.rational 17960474 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 693000 1) .v) (.rational
    7004732 1)) .v) (.rational 61930169 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2425500
    1) .v) (.rational 17090766 1)) .v) (.rational 132357953 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3284820 1) .v) (.rational 14524818 1)) .v) (.rational 103008675 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2148300 1) .v) (.rational 5001990 1)) .v)
    (.rational 35192423 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 3303866 1) .v) (.rational 24740044 1)) .v) (.rational
    149615352 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 13215464 1) .v) (.rational 74192176
    1)) .v) (.rational 392419574 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 21356328 1)
    .v) (.rational 85048306 1)) .v) (.rational 395000878 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17814860 1) .v) (.rational 46906022 1)) .v) (.rational 190601934 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8079662 1) .v) (.rational 12913094
    1)) .v) (.rational 44637186 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10808502 1) .v) (.rational 65521604 1))
    .v) (.rational 278547245 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 48638259 1) .v)
    (.rational 234891438 1)) .v) (.rational 873549385 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 91066120 1) .v) (.rational 340322598 1)) .v) (.rational 1093677791 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 91752878 1) .v) (.rational 257550894 1)) .v)
    (.rational 698005243 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 53593254
    1) .v) (.rational 110401918 1)) .v) (.rational 240460262 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 18090211 1) .v) (.rational 27378280 1)) .v) (.rational 43677596
    1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 25534561 1) .v) (.rational 132605226 1)) .v) (.rational
    408012217 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 127672805 1) .v) (.rational
    554764832 1)) .v) (.rational 1501722857 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    271290852 1) .v) (.rational 971356674 1)) .v) (.rational 2275985806 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 319126578 1) .v) (.rational 929548896 1)) .v)
    (.rational 1839418418 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 226580461
    1) .v) (.rational 533898108 1)) .v) (.rational 860046593 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 99024141 1) .v) (.rational 190529058 1)) .v) (.rational 237458121
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 25865534 1) .v) (.rational
    42013076 1)) .v) (.rational 38309456 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    44678024 1) .v) (.rational 205979296 1)) .v) (.rational 474340113 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 245729132 1) .v) (.rational 985216446 1)) .v) (.rational 2018410071 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 583551982 1) .v) (.rational 2017964042 1))
    .v) (.rational 3623820187 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    783015429 1) .v) (.rational 2322250788 1)) .v) (.rational 3585880401 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 651858160 1) .v) (.rational 1657338978 1)) .v)
    (.rational 2148738656 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 347535482
    1) .v) (.rational 763801268 1)) .v) (.rational 809924308 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 117906106 1) .v) (.rational 228599896 1)) .v) (.rational
    194159182 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 24316901 1) .v)
    (.rational 42981158 1)) .v) (.rational 29214804 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 58460627 1) .v) (.rational 244557450 1)) .v) (.rational 436908289 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 350763762 1) .v) (.rational 1314890318 1)) .v)
    (.rational 2120833083 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 919917040 1) .v)
    (.rational 3075497726 1)) .v) (.rational 4426284133 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1384250715 1) .v) (.rational 4116151800 1)) .v) (.rational 5214477981
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1318289911 1) .v) (.rational
    3489140810 1)) .v) (.rational 3833789989 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 826056736 1) .v) (.rational 1957529566 1)) .v) (.rational 1840148279 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 342556918 1) .v) (.rational 735940872 1))
    .v) (.rational 586941157 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    91923799 1) .v) (.rational 182503118 1)) .v) (.rational 123832477 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15049056 1) .v) (.rational 28258930 1)) .v) (.rational
    16588280 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 57078690 1)
    .v) (.rational 219518576 1)) .v) (.rational 315126995 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 371011485 1) .v) (.rational 1308636522 1)) .v) (.rational 1723482141 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1064354208 1) .v) (.rational 3432576566 1)) .v)
    (.rational 4111233297 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1772821809 1) .v) (.rational 5219019602 1)) .v) (.rational 5631503437 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1896939106 1) .v) (.rational 5100554254 1)) .v)
    (.rational 4912494466 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1361751912 1) .v) (.rational 3356556884 1)) .v) (.rational 2863239790 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 664410312 1) .v) (.rational 1512502692 1)) .v)
    (.rational 1138100360 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 218093829
    1) .v) (.rational 463703032 1)) .v) (.rational 308401492 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 46483620 1) .v) (.rational 93573928 1)) .v) (.rational 55491756
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 5976063 1) .v) (.rational
    11535132 1)) .v) (.rational 6173342 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 41006757 1) .v) (.rational 146121474 1)) .v) (.rational 174018165
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 287047299 1) .v) (.rational 955218888 1)) .v)
    (.rational 1060058779 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 893743173 1) .v)
    (.rational 2771166552 1)) .v) (.rational 2847286305 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1630844151 1) .v) (.rational 4705215692 1)) .v) (.rational 4446544605
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1933806548 1) .v) (.rational
    5191759798 1)) .v) (.rational 4484631646 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1560921982 1) .v) (.rational 3906951868 1)) .v) (.rational 3069241636 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 872812391 1) .v) (.rational 2045073322 1))
    .v) (.rational 1457068369 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    337070831 1) .v) (.rational 743978556 1)) .v) (.rational 480981473 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 87841595 1) .v) (.rational 184042886 1)) .v) (.rational
    108391181 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 14692667 1) .v)
    (.rational 29428642 1)) .v) (.rational 15877619 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1432128 1) .v) (.rational 2749496 1)) .v) (.rational 1362666 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21052476 1)
    .v) (.rational 69827540 1)) .v) (.rational 70905064 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 157893570 1) .v) (.rational 496112940 1)) .v) (.rational 476118474 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 530072870 1) .v) (.rational 1574739316 1)) .v)
    (.rational 1421456866 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1050754510 1) .v) (.rational 2947446434 1)) .v) (.rational 2490342350 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1365806506 1) .v) (.rational 3615593504 1)) .v)
    (.rational 2846466273 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1222018292 1) .v) (.rational 3054626756 1)) .v) (.rational 2232263035 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 768189078 1) .v) (.rational 1816480090 1)) .v)
    (.rational 1229082711 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 339772821
    1) .v) (.rational 762354926 1)) .v) (.rational 477228945 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 104049182 1) .v) (.rational 222364070 1)) .v) (.rational
    128906729 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 21240820 1) .v)
    (.rational 43381304 1)) .v) (.rational 23331679 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2687516 1) .v) (.rational 5247630 1)) .v) (.rational 2619015 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 182219 1) .v) (.rational 337672 1)) .v)
    (.rational 155453 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 7312547 1) .v) (.rational 22637266 1)) .v) (.rational
    20047947 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 58500376 1) .v) (.rational 173532598
    1)) .v) (.rational 147040239 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 210582438
    1) .v) (.rational 597514196 1)) .v) (.rational 482624153 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 450320486 1) .v) (.rational 1220467800 1)) .v) (.rational
    936210115 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 636020027 1) .v)
    (.rational 1644857188 1)) .v) (.rational 1193996388 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 623720952 1) .v) (.rational 1538627710 1)) .v) (.rational 1053518820
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 434370830 1) .v) (.rational
    1022398060 1)) .v) (.rational 658643476 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 215755533 1) .v) (.rational 485007188 1)) .v) (.rational 293470576 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 75538154 1) .v) (.rational 162383590 1)) .v)
    (.rational 92212051 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 18072114 1)
    .v) (.rational 37184528 1)) .v) (.rational 19808597 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2779898 1) .v) (.rational 5468984 1)) .v) (.rational 2729359 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 243371 1) .v) (.rational 455072 1)) .v)
    (.rational 211701 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 8938 1) .v)
    (.rational 15612 1)) .v) (.rational 6674 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1540872 1) .v) (.rational
    4458348 1)) .v) (.rational 3506760 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 13097412
    1) .v) (.rational 36654232 1)) .v) (.rational 27872220 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 50310632 1) .v) (.rational 135959000 1)) .v) (.rational 99657708 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 115381500 1) .v) (.rational 300630348 1))
    .v) (.rational 211784088 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    175785994 1) .v) (.rational 441023496 1)) .v) (.rational 297703699 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 187232539 1) .v) (.rational 451852300 1)) .v) (.rational
    291434475 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 142793504 1) .v)
    (.rational 331253966 1)) .v) (.rational 203611437 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 78462505 1) .v) (.rational 174896604 1)) .v) (.rational 102224919 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 30779850 1) .v) (.rational 65907458
    1)) .v) (.rational 36563543 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8389929 1) .v) (.rational 17247436 1)) .v) (.rational 9066709 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1504332 1) .v) (.rational 2963842 1)) .v) (.rational
    1473155 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 158707 1) .v)
    (.rational 298344 1)) .v) (.rational 139637 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7408 1) .v) (.rational 13154 1)) .v) (.rational 5746 1)) (.pow .g 12))) .f))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    148884 1) .v) (.rational 402832 1)) .v) (.rational 285468 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1339956 1) .v) (.rational 3534156 1)) .v) (.rational 2442312 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5469695 1) .v) (.rational 14040866 1)) .v) (.rational
    9440319 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 13385224 1) .v)
    (.rational 33390018 1)) .v) (.rational 21788359 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 21862871 1) .v) (.rational 52918622 1)) .v) (.rational 33429546 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 25101853 1) .v) (.rational 58872120 1)) .v)
    (.rational 35911388 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 20768539 1)
    .v) (.rational 47136502 1)) .v) (.rational 27693970 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 12474469 1) .v) (.rational 27366160 1)) .v) (.rational 15448914 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5398319 1) .v) (.rational 11433978
    1)) .v) (.rational 6187924 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1641611 1) .v) (.rational 3352692 1)) .v) (.rational 1735556 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 333074 1) .v) (.rational 654728 1)) .v) (.rational 323415 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 40503 1) .v) (.rational 76406 1))
    .v) (.rational 35903 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2234 1)
    .v) (.rational 4024 1)) .v) (.rational 1790 1)) (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1406

namespace FullLow1407
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsLow4.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    16*SmallGap.PolarCoefficientsLow3.c140 e f g v*((e+f)*(e+f+g))^4+
    32*SmallGap.PolarCoefficientsLow4.c140 e f g v*e*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow4.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    8*SmallGap.PolarCoefficientsLow3.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsLow4.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    16*SmallGap.PolarCoefficientsLow2.c230 e f g v*((e+f)*(e+f+g))^3+
    24*SmallGap.PolarCoefficientsLow3.c230 e f g v*e*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow4.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow3.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow3.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    12*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow3.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    8*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(8*SmallGap.ReducedLayers.low0_100_0 e g v*e^1+28*SmallGap.ReducedLayers.low0_100_1
    e g v*e^2+56*SmallGap.ReducedLayers.low0_100_2 e g v*e^3+70*SmallGap.ReducedLayers.low0_100_3
    e g v*e^4+56*SmallGap.ReducedLayers.low0_100_4 e g v*e^5+4*SmallGap.ReducedLayers.low0_010_1 e
    g v+24*SmallGap.ReducedLayers.low0_010_2 e g v*e^1+60*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^2+80*SmallGap.ReducedLayers.low0_010_4 e g v*e^3+60*SmallGap.ReducedLayers.low0_010_5 e g
    v*e^4+24*SmallGap.ReducedLayers.low0_010_6 e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_110_1 e g v+6*SmallGap.ReducedLayers.low1_110_2 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_110_3 e g v*e^2+20*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_110_5 e g v*e^4+6*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^5+3*SmallGap.ReducedLayers.low1_020_3 e g v+12*SmallGap.ReducedLayers.low1_020_4 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_020_5 e g v*e^2+12*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_020_7 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8700 1) .v)
    (.rational 471000 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 3240 1) .v)
    (.rational 130764 1)) .v) (.rational 3387786 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    8100 1) .v) (.rational 184908 1)) .v) (.rational 4049028 1)) .g))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 52220 1) .v) (.rational 958356 1)) .v) (.rational 15123232
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 156660 1) .v) (.rational 1787660 1)) .v)
    (.rational 24672416 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 169920 1) .v)
    (.rational 939744 1)) .v) (.rational 13401424 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 394408 1) .v) (.rational 4534872 1)) .v)
    (.rational 46942547 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1380428 1) .v) (.rational
    10736666 1)) .v) (.rational 97690219 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1870356 1) .v) (.rational 8616558 1)) .v) (.rational 73135887 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1224820 1) .v) (.rational 2581602 1)) .v) (.rational
    23412309 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1831520 1) .v) (.rational 15400798 1)) .v) (.rational 107704574 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7326080 1) .v) (.rational 45000530 1)) .v) (.rational
    275126715 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11844888 1) .v) (.rational
    49536612 1)) .v) (.rational 266954211 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9893384 1) .v) (.rational 25525172 1)) .v) (.rational 121757623 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4497944 1) .v) (.rational 6199930 1)) .v)
    (.rational 25761479 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 5794160 1) .v) (.rational 39198842 1)) .v)
    (.rational 189291813 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 26073720 1) .v)
    (.rational 137762916 1)) .v) (.rational 579457448 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 48844640 1) .v) (.rational 194401812 1)) .v) (.rational 703006091 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 49278880 1) .v) (.rational 142076472 1)) .v)
    (.rational 429690887 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 28854000
    1) .v) (.rational 58276194 1)) .v) (.rational 138905108 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9776480 1) .v) (.rational 13784560 1)) .v) (.rational 22794145
    1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 13097312 1) .v) (.rational 75702622 1)) .v) (.rational
    259635856 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 65486560 1) .v) (.rational
    312238682 1)) .v) (.rational 936277438 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    139237050 1) .v) (.rational 537788484 1)) .v) (.rational 1384620318 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 164028840 1) .v) (.rational 505421790 1)) .v)
    (.rational 1086374613 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 116763628
    1) .v) (.rational 285224326 1)) .v) (.rational 490415957 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 51233496 1) .v) (.rational 100512566 1)) .v) (.rational 130346727
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 13456114 1) .v) (.rational
    22144452 1)) .v) (.rational 20434285 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    21596404 1) .v) (.rational 110565842 1)) .v) (.rational 279225535 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 118780222 1) .v) (.rational 523582884 1)) .v) (.rational 1169117329 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 282276134 1) .v) (.rational 1061546864 1))
    .v) (.rational 2062249061 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    379390938 1) .v) (.rational 1210217986 1)) .v) (.rational 2003370762 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 316757592 1) .v) (.rational 857882938 1)) .v)
    (.rational 1180168346 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 169622082
    1) .v) (.rational 394745328 1)) .v) (.rational 440121700 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 57897734 1) .v) (.rational 118887476 1)) .v) (.rational 106002282
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 12033542 1) .v) (.rational
    22686214 1)) .v) (.rational 16423073 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 26068620 1) .v) (.rational 120673974 1)) .v) (.rational 233544954 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 156411720 1) .v) (.rational 644177714 1)) .v) (.rational
    1119925197 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 410539172 1) .v) (.rational
    1497007346 1)) .v) (.rational 2309293389 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 618921760 1) .v) (.rational 1993894610 1)) .v) (.rational 2691610680 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 591340708 1) .v) (.rational 1686995196 1))
    .v) (.rational 1965235262 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    372361192 1) .v) (.rational 948993588 1)) .v) (.rational 943853986 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 155470852 1) .v) (.rational 359862730 1)) .v) (.rational
    304998306 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 42090856 1) .v)
    (.rational 90570610 1)) .v) (.rational 66207079 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6964280 1) .v) (.rational 14292042 1)) .v) (.rational 9229945 1)) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22787440 1) .v) (.rational 96482482
    1)) .v) (.rational 148768049 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 148118360 1) .v)
    (.rational 572092788 1)) .v) (.rational 806298978 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 425301632 1) .v) (.rational 1494191590 1)) .v) (.rational 1907842411 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 709857016 1) .v) (.rational 2266283018 1))
    .v) (.rational 2597889302 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    762243464 1) .v) (.rational 2215702186 1)) .v) (.rational 2261958096 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 550120908 1) .v) (.rational 1464430360 1)) .v)
    (.rational 1324628334 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 270423968
    1) .v) (.rational 666003082 1)) .v) (.rational 533961590 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 89648176 1) .v) (.rational 207144914 1)) .v) (.rational 148303507
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 19343680 1) .v) (.rational
    42583864 1)) .v) (.rational 27576656 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2522072 1) .v) (.rational 5353424 1)) .v) (.rational 3172067 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 14036588 1) .v) (.rational
    54719158 1)) .v) (.rational 69586148 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 98256116
    1) .v) (.rational 356204674 1)) .v) (.rational 421006480 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 306220546 1) .v) (.rational 1030270848 1)) .v) (.rational 1124529556 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 559993768 1) .v) (.rational
    1747247778 1)) .v) (.rational 1750371960 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 666507606 1) .v) (.rational 1930663826 1)) .v) (.rational 1766017368 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 541032588 1) .v) (.rational 1459988628 1))
    .v) (.rational 1215622330 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    304936840 1) .v) (.rational 771216216 1)) .v) (.rational 584548814 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 119019112 1) .v) (.rational 284440952 1)) .v) (.rational
    197012211 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 31439982 1) .v)
    (.rational 71640592 1)) .v) (.rational 45639959 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5345852 1) .v) (.rational 11693190 1)) .v) (.rational 6890977 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 530514 1) .v) (.rational 1113440 1)) .v)
    (.rational 606331 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 5776956 1) .v) (.rational 20819422 1)) .v) (.rational 22478020
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 43327170 1) .v) (.rational 147406930 1)) .v)
    (.rational 150126228 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 145600218 1) .v)
    (.rational 466839510 1)) .v) (.rational 446379236 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 289272672 1) .v) (.rational 873336400 1)) .v) (.rational 780497688 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 377454986 1) .v) (.rational
    1073306596 1)) .v) (.rational 893152521 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 339686270 1) .v) (.rational 911277156 1)) .v) (.rational 704320663 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 215294836 1) .v) (.rational 546649166 1))
    .v) (.rational 392137855 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    96286170 1) .v) (.rational 232420610 1)) .v) (.rational 154947726 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 29914046 1) .v) (.rational 68976714 1)) .v) (.rational
    42853127 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 6218524 1) .v)
    (.rational 13741412 1)) .v) (.rational 7973789 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 804154 1) .v) (.rational 1699898 1)) .v) (.rational 919743 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 55818 1) .v) (.rational 111372 1)) .v) (.rational
    55554 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 1426188 1) .v) (.rational 4764552 1)) .v) (.rational 4470588 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11409504 1) .v) (.rational 36415704 1)) .v)
    (.rational 32642340 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 41112312 1) .v)
    (.rational 125164134 1)) .v) (.rational 106792852 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 88119864 1) .v) (.rational 255619318 1)) .v) (.rational 206874724 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 124948238 1) .v) (.rational
    345207646 1)) .v) (.rational 264180106 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 123263628 1) .v) (.rational 324481548 1)) .v) (.rational 234247415 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 86571602 1) .v) (.rational 217411458 1)) .v)
    (.rational 147848571 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 43498952
    1) .v) (.rational 104417944 1)) .v) (.rational 66867212 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 15463714 1) .v) (.rational 35552270 1)) .v) (.rational 21448196
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3773788 1) .v) (.rational
    8316444 1)) .v) (.rational 4727179 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 595470 1) .v) (.rational 1254408 1)) .v) (.rational 670279 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 53848 1) .v) (.rational 107282 1)) .v) (.rational
    53434 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2060 1) .v) (.rational
    3772 1)) .v) (.rational 1712 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 159840 1) .v) (.rational 495936 1)) .v)
    (.rational 411912 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1358640 1) .v) (.rational
    4066572 1)) .v) (.rational 3261036 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    5224428 1) .v) (.rational 15061430 1)) .v) (.rational 11627192 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12010410 1) .v) (.rational 33306022 1)) .v) (.rational
    24680732 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 18373098 1) .v)
    (.rational 48963788 1)) .v) (.rational 34734023 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 19691412 1) .v) (.rational 50405140 1)) .v) (.rational 34147750 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 15151510 1) .v) (.rational 37249976 1)) .v)
    (.rational 24054225 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8427760 1)
    .v) (.rational 19904486 1)) .v) (.rational 12234826 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3360890 1) .v) (.rational 7626442 1)) .v) (.rational 4457747 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 936348 1) .v) (.rational 2039948 1)) .v)
    (.rational 1132518 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 172822 1)
    .v) (.rational 360414 1)) .v) (.rational 189563 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 18950 1) .v) (.rational 37544 1)) .v) (.rational 18594 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 932 1) .v) (.rational 1726 1)) .v) (.rational 794 1))
    (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1407

namespace FullLow1408
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  16*SmallGap.PolarCoefficientsLow4.c140 e f g v*((e+f)*(e+f+g))^4+
    8*SmallGap.PolarCoefficientsLow4.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    16*SmallGap.PolarCoefficientsLow3.c230 e f g v*((e+f)*(e+f+g))^3+
    24*SmallGap.PolarCoefficientsLow4.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow4.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow3.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow4.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    12*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow3.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow4.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    8*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow2.c410 e f g v*e*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_100_0 e g v+8*SmallGap.ReducedLayers.low0_100_1 e g
    v*e^1+28*SmallGap.ReducedLayers.low0_100_2 e g v*e^2+56*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^3+70*SmallGap.ReducedLayers.low0_100_4 e g v*e^4+4*SmallGap.ReducedLayers.low0_010_2 e g
    v+24*SmallGap.ReducedLayers.low0_010_3 e g v*e^1+60*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^2+80*SmallGap.ReducedLayers.low0_010_5 e g v*e^3+60*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_110_2 e g v+6*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_110_4 e g v*e^2+20*SmallGap.ReducedLayers.low1_110_5 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_110_6 e g v*e^4+3*SmallGap.ReducedLayers.low1_020_4 e g
    v+12*SmallGap.ReducedLayers.low1_020_5 e g v*e^1+18*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_020_7 e g v*e^3+3*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4500 1) .v) (.rational
    294600 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1260 1) .v) (.rational 64836 1))
    .v) (.rational 2046609 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3150 1) .v) (.rational
    89892 1)) .v) (.rational 2391732 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 19978 1) .v) (.rational 455958 1)) .v) (.rational 8774252 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 59934 1) .v) (.rational 825292 1)) .v) (.rational 13937422 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 65034 1) .v) (.rational 399246 1)) .v) (.rational
    7264610 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 148174 1) .v) (.rational 2074738 1)) .v) (.rational 25994085 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 518609 1) .v) (.rational 4758008 1)) .v) (.rational 52555646 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 703023 1) .v) (.rational 3575220 1)) .v)
    (.rational 37678338 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 461035 1)
    .v) (.rational 877824 1)) .v) (.rational 11153344 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 672055 1) .v) (.rational
    6792494 1)) .v) (.rational 56554073 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2688220
    1) .v) (.rational 19317186 1)) .v) (.rational 140408921 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4348918 1) .v) (.rational 20338942 1)) .v) (.rational 130843749 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3637984 1) .v) (.rational 9650006 1)) .v)
    (.rational 55898419 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1658779 1)
    .v) (.rational 1940932 1)) .v) (.rational 10335132 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2058630 1) .v)
    (.rational 16628992 1)) .v) (.rational 93516898 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9263835 1) .v) (.rational 57286660 1)) .v) (.rational 279056545 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 17366324 1) .v) (.rational 78683296 1)) .v) (.rational
    327457855 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17550904 1) .v)
    (.rational 55423824 1)) .v) (.rational 191052215 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 10308588 1) .v) (.rational 21653520 1)) .v) (.rational 57512025 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3509825 1) .v) (.rational 4849996 1)) .v)
    (.rational 8328750 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4446492 1) .v) (.rational 30539294
    1)) .v) (.rational 119317234 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 22232460 1) .v)
    (.rational 124231910 1)) .v) (.rational 421355810 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 47310302 1) .v) (.rational 210637206 1)) .v) (.rational 608010294 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 55846448 1) .v) (.rational 194684106 1)) .v)
    (.rational 463616279 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 39895724
    1) .v) (.rational 108229412 1)) .v) (.rational 202822867 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 17600936 1) .v) (.rational 37837808 1)) .v) (.rational 52453591
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4657778 1) .v) (.rational
    8384856 1)) .v) (.rational 8205035 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6868156 1)
    .v) (.rational 41501598 1)) .v) (.rational 117243773 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 37774858 1) .v) (.rational 194648404 1)) .v) (.rational 483083121 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 89862364 1) .v) (.rational 391012310 1)) .v)
    (.rational 838081542 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 121069203
    1) .v) (.rational 442445626 1)) .v) (.rational 801599297 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 101504368 1) .v) (.rational 312531634 1)) .v) (.rational
    467222008 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 54699680 1) .v)
    (.rational 144283916 1)) .v) (.rational 174545280 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 18835052 1) .v) (.rational 43992038 1)) .v) (.rational 43073223 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3958947 1) .v) (.rational 8565886
    1)) .v) (.rational 7015924 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    7541765 1) .v) (.rational 40795234 1)) .v) (.rational 87139769 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 45250590 1) .v) (.rational 216242556 1)) .v) (.rational 412919796 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 118915267 1) .v) (.rational 499646156 1)) .v)
    (.rational 842290803 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 179779260
    1) .v) (.rational 663339394 1)) .v) (.rational 974171704 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 172599575 1) .v) (.rational 561744562 1)) .v) (.rational
    710333637 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 109479230 1) .v)
    (.rational 318150486 1)) .v) (.rational 344511283 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 46176097 1) .v) (.rational 122314382 1)) .v) (.rational 114166422 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 12667388 1) .v) (.rational 31406180
    1)) .v) (.rational 25789349 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2129776 1) .v) (.rational 5070238 1)) .v) (.rational 3757767 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 5741408 1) .v) (.rational 28045228 1)) .v)
    (.rational 47268499 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 37319152 1) .v)
    (.rational 165381264 1)) .v) (.rational 253919538 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 107303868 1) .v) (.rational 430268916 1)) .v) (.rational 596542629 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 179660602 1) .v) (.rational 651784064 1))
    .v) (.rational 809310376 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    193956272 1) .v) (.rational 638900144 1)) .v) (.rational 706190143 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 141114717 1) .v) (.rational 425538476 1)) .v) (.rational
    418081201 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 70153364 1) .v)
    (.rational 196184876 1)) .v) (.rational 172231872 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 23604298 1) .v) (.rational 62208056 1)) .v) (.rational 49380981 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 5188470 1) .v) (.rational 13086800
    1)) .v) (.rational 9521774 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    691101 1) .v) (.rational 1682856 1)) .v) (.rational 1129606 1)) (.pow .g 9)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2876130 1) .v) (.rational 12751288 1))
    .v) (.rational 17596932 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 20132910 1) .v)
    (.rational 82630408 1)) .v) (.rational 105728581 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 62836628 1) .v) (.rational 238313004 1)) .v) (.rational 280979136 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 115291938 1) .v) (.rational 404016340 1)) .v)
    (.rational 436532273 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 137994914
    1) .v) (.rational 447832974 1)) .v) (.rational 441765812 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 112966160 1) .v) (.rational 341247410 1)) .v) (.rational
    307075565 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 64425154 1) .v)
    (.rational 182586174 1)) .v) (.rational 150327370 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 25541794 1) .v) (.rational 68572810 1)) .v) (.rational 51985288 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6882054 1) .v) (.rational 17662418
    1)) .v) (.rational 12417183 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1198276 1) .v) (.rational 2953212 1)) .v) (.rational 1931071 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 121940 1) .v) (.rational 286890 1)) .v) (.rational 173171 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    851652 1) .v) (.rational 3440352 1)) .v) (.rational 4007136 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6387390 1) .v) (.rational 24263592 1)) .v) (.rational 26609694 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21495922 1) .v) (.rational 76667880 1)) .v)
    (.rational 78805273 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 42848078 1)
    .v) (.rational 143430996 1)) .v) (.rational 137623032 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 56222554 1) .v) (.rational 176830546 1)) .v) (.rational 157927794 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 51021102 1) .v) (.rational
    151207152 1)) .v) (.rational 125557833 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32716132 1) .v) (.rational 91776694 1)) .v) (.rational 70930685 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 14859231 1) .v) (.rational 39676930 1)) .v)
    (.rational 28625139 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4707868 1)
    .v) (.rational 12026940 1)) .v) (.rational 8127120 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1002197 1) .v) (.rational 2454328 1)) .v) (.rational 1554950 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 133079 1) .v) (.rational 310722 1)) .v)
    (.rational 183567 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 9446 1) .v)
    (.rational 20586 1)) .v) (.rational 11140 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 112860 1) .v) (.rational
    416976 1)) .v) (.rational 419940 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 902880 1)
    .v) (.rational 3175968 1)) .v) (.rational 3050796 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3257892 1) .v) (.rational 10895064 1)) .v) (.rational 9946458 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7004844 1) .v) (.rational 22254780 1)) .v) (.rational
    19246687 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9985157 1) .v)
    (.rational 30144038 1)) .v) (.rational 24632929 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9929010 1) .v) (.rational 28518564 1)) .v) (.rational 21986511 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7051241 1) .v) (.rational 19313068 1)) .v)
    (.rational 14043065 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3595862 1)
    .v) (.rational 9418610 1)) .v) (.rational 6464229 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1302976 1) .v) (.rational 3271512 1)) .v) (.rational 2121572 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 325690 1) .v) (.rational 783856 1)) .v)
    (.rational 480149 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 52917 1) .v)
    (.rational 121380 1)) .v) (.rational 69911 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4954 1) .v) (.rational 10638 1)) .v) (.rational 5684 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 197 1) .v) (.rational 378 1)) .v) (.rational 181 1))
    (.pow .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1408

namespace FullLow1409
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  16*SmallGap.PolarCoefficientsLow4.c230 e f g v*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow4.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    12*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow4.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow3.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    8*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow3.c410 e f g v*e*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_100_1 e g v+8*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^1+28*SmallGap.ReducedLayers.low0_100_3 e g v*e^2+56*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^3+4*SmallGap.ReducedLayers.low0_010_3 e g v+24*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^1+60*SmallGap.ReducedLayers.low0_010_5 e g v*e^2+80*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_110_3 e g v+6*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_110_5 e g v*e^2+20*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_020_5 e g v+12*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_020_7 e g v*e^2+12*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1550 1) .v) (.rational 131100 1))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 290 1) .v) (.rational 21494 1)) .v)
    (.rational 880811 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 725 1) .v) (.rational 29218
    1)) .v) (.rational 1005083 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 4539 1) .v) (.rational 145658 1)) .v) (.rational 3628639 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13617 1) .v) (.rational 255626 1)) .v) (.rational 5600795 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 14782 1) .v) (.rational 112444 1)) .v) (.rational
    2788946 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 33174 1) .v) (.rational 639908 1)) .v) (.rational 10256728 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 116109 1) .v) (.rational 1420262 1)) .v) (.rational 20101775 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 157483 1) .v) (.rational 991378 1)) .v)
    (.rational 13736351 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 103435 1)
    .v) (.rational 179942 1)) .v) (.rational 3699561 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 147361 1) .v) (.rational
    2027214 1)) .v) (.rational 21129737 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 589444 1)
    .v) (.rational 5612592 1)) .v) (.rational 50896318 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 954258 1) .v) (.rational 5642604 1)) .v) (.rational 45414304 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 799720 1) .v) (.rational 2433044 1)) .v) (.rational
    18020568 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 365897 1) .v)
    (.rational 363358 1)) .v) (.rational 2784251 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 437634 1) .v)
    (.rational 4780004 1)) .v) (.rational 32752732 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1969353 1) .v) (.rational 16161848 1)) .v) (.rational 95203175 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3695144 1) .v) (.rational 21644366 1)) .v) (.rational
    108028048 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3742690 1) .v)
    (.rational 14726986 1)) .v) (.rational 60193750 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2207086 1) .v) (.rational 5493346 1)) .v) (.rational 16898260 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 756147 1) .v) (.rational 1168622 1)) .v)
    (.rational 2160749 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 901678 1) .v) (.rational 8308374
    1)) .v) (.rational 38545204 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4508390 1) .v)
    (.rational 33379214 1)) .v) (.rational 133336962 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9604969 1) .v) (.rational 55848528 1)) .v) (.rational 188098803 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11369536 1) .v) (.rational 50977364 1)) .v)
    (.rational 140141686 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8161994 1)
    .v) (.rational 28108662 1)) .v) (.rational 60193306 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3627844 1) .v) (.rational 9846482 1)) .v) (.rational 15597864 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 970069 1) .v) (.rational 2219020 1)) .v)
    (.rational 2569477 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1294500 1) .v)
    (.rational 10352522 1)) .v) (.rational 34015194 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7119750 1) .v) (.rational 48129066 1)) .v) (.rational 138024348 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16962924 1) .v) (.rational 95974856 1)) .v) (.rational
    236127184 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22935033 1) .v)
    (.rational 108167206 1)) .v) (.rational 223727405 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19347140 1) .v) (.rational 76565472 1)) .v) (.rational 130583550 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 10523086 1) .v) (.rational 35736520
    1)) .v) (.rational 49861604 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3670318 1) .v) (.rational 11123278 1)) .v) (.rational 12928460 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 784407 1) .v) (.rational 2224380 1)) .v) (.rational 2251087
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1268040 1) .v) (.rational 8897240
    1)) .v) (.rational 21756240 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7608240 1) .v)
    (.rational 46836640 1)) .v) (.rational 101934540 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20032484 1) .v) (.rational 107724036 1)) .v) (.rational 206152724 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 30420220 1) .v) (.rational 142925416 1)) .v)
    (.rational 237748716 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 29427531
    1) .v) (.rational 121677906 1)) .v) (.rational 174629827 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 18879444 1) .v) (.rational 69812656 1)) .v) (.rational 86611334
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8089818 1) .v) (.rational
    27410064 1)) .v) (.rational 29844308 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2265684 1) .v) (.rational 7230732 1)) .v) (.rational 7079172 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 390827 1) .v) (.rational 1200780 1)) .v) (.rational
    1077597 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 805392 1)
    .v) (.rational 4976140 1)) .v) (.rational 9480768 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5235048 1) .v) (.rational 29170808 1)) .v) (.rational 50485680 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15087096 1) .v) (.rational 75640472 1)) .v) (.rational
    117927672 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 25393500 1) .v)
    (.rational 114655244 1)) .v) (.rational 159922504 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 27659346 1) .v) (.rational 113083196 1)) .v) (.rational 140653292 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 20394099 1) .v) (.rational 76306232
    1)) .v) (.rational 84865965 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10328840 1) .v) (.rational 35903506 1)) .v) (.rational 36048656 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3561922 1) .v) (.rational 11693010 1)) .v) (.rational
    10741106 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 807796 1) .v)
    (.rational 2535564 1)) .v) (.rational 2151745 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 111708 1) .v) (.rational 335648 1)) .v) (.rational 262444 1)) (.pow .g 9))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 297972 1) .v) (.rational
    1624536 1)) .v) (.rational 2506788 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2085804 1)
    .v) (.rational 10471500 1)) .v) (.rational 14952816 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6526692 1) .v) (.rational 30118132 1)) .v) (.rational 39560760 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 12044700 1) .v) (.rational 51111692 1)) .v)
    (.rational 61467372 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 14558226 1)
    .v) (.rational 56999458 1)) .v) (.rational 62624472 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 12093042 1) .v) (.rational 43969326 1)) .v) (.rational 44198754 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7038319 1) .v) (.rational 23978868
    1)) .v) (.rational 22168633 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2866732 1) .v) (.rational 9238160 1)) .v) (.rational 7910462 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 799591 1) .v) (.rational 2452720 1)) .v) (.rational 1954351 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 145279 1) .v) (.rational 423460 1))
    .v) (.rational 313009 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 15513 1)
    .v) (.rational 42272 1)) .v) (.rational 28501 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 48600 1) .v) (.rational 234504 1)) .v)
    (.rational 302400 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 364500 1) .v) (.rational
    1645920 1)) .v) (.rational 1995300 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1229868 1) .v) (.rational 5188208 1)) .v) (.rational 5885760 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2465892 1) .v) (.rational 9715780 1)) .v) (.rational 10276848 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3267504 1) .v) (.rational 12044298
    1)) .v) (.rational 11854038 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3008610 1) .v) (.rational 10413254 1)) .v) (.rational 9537284 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1968132 1) .v) (.rational 6430092 1)) .v) (.rational
    5493032 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 917487 1) .v)
    (.rational 2845406 1)) .v) (.rational 2275039 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 300258 1) .v) (.rational 887256 1)) .v) (.rational 665426 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 66393 1) .v) (.rational 186698 1)) .v) (.rational
    131033 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 9171 1) .v) (.rational
    24284 1)) .v) (.rational 15781 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    666 1) .v) (.rational 1614 1)) .v) (.rational 948 1)) (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1409

namespace FullLow14010
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  12*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsLow4.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    8*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsLow4.c410 e f g v*e*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_100_2 e g v+8*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^1+28*SmallGap.ReducedLayers.low0_100_4 e g v*e^2+4*SmallGap.ReducedLayers.low0_010_4 e g
    v+24*SmallGap.ReducedLayers.low0_010_5 e g v*e^1+60*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_110_4 e g v+6*SmallGap.ReducedLayers.low1_110_5 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_110_6 e g v*e^2+3*SmallGap.ReducedLayers.low1_020_6 e g
    v+12*SmallGap.ReducedLayers.low1_020_7 e g v*e^1+18*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 320 1) .v) (.rational 39400 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 30 1) .v) (.rational 4288 1)) .v) (.rational 256346 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 75 1) .v) (.rational 5716 1)) .v) (.rational 285213
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 465 1) .v) (.rational
    28134 1)) .v) (.rational 1015323 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1395 1) .v)
    (.rational 47868 1)) .v) (.rational 1519600 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1515 1) .v) (.rational 18908 1)) .v) (.rational 719387 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3360 1) .v) (.rational 119908
    1)) .v) (.rational 2737432 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 11760 1) .v)
    (.rational 257662 1)) .v) (.rational 5188980 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15960 1) .v) (.rational 166090 1)) .v) (.rational 3364147 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10500 1) .v) (.rational 17960 1)) .v) (.rational
    808322 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 14655 1) .v) (.rational 369278 1)) .v) (.rational 5331945 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 58620 1) .v) (.rational 997238 1)) .v) (.rational 12444101
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 94980 1) .v) (.rational 959118 1)) .v)
    (.rational 10615273 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 79770 1)
    .v) (.rational 373494 1)) .v) (.rational 3892746 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36645 1) .v) (.rational 33706 1)) .v) (.rational 477224 1)) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 42240 1) .v) (.rational 839644 1)) .v) (.rational 7712195 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 190080 1) .v) (.rational 2793920 1)) .v) (.rational 21839804 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 357060 1) .v) (.rational 3665504 1)) .v)
    (.rational 24020658 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 362670 1)
    .v) (.rational 2428950 1)) .v) (.rational 12880548 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 214950 1) .v) (.rational 877586 1)) .v) (.rational 3450414 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 74220 1) .v) (.rational 181712 1)) .v)
    (.rational 423220 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 82800 1) .v) (.rational 1371116 1)) .v)
    (.rational 8272630 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 414000 1) .v) (.rational
    5451820 1)) .v) (.rational 28064581 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    883425 1) .v) (.rational 9037970 1)) .v) (.rational 38879567 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1049700 1) .v) (.rational 8205086 1)) .v) (.rational 28627937 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 758580 1) .v) (.rational 4537822
    1)) .v) (.rational 12383485 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    340590 1) .v) (.rational 1616238 1)) .v) (.rational 3375365 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 92355 1) .v) (.rational 375302 1)) .v) (.rational 621836 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 109260 1) .v) (.rational 1532700 1)) .v)
    (.rational 6387726 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 600930 1) .v) (.rational
    7069200 1)) .v) (.rational 25555194 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1434990 1) .v) (.rational 14029880 1)) .v) (.rational 43298310 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1950480 1) .v) (.rational 15828256 1)) .v) (.rational
    41036628 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1660320 1) .v)
    (.rational 11315224 1)) .v) (.rational 24411166 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 915390 1) .v) (.rational 5392490 1)) .v) (.rational 9764474 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 325290 1) .v) (.rational 1729878 1)) .v)
    (.rational 2717039 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 71220 1) .v)
    (.rational 357496 1)) .v) (.rational 507034 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 92610 1) .v) (.rational 1098996 1)) .v) (.rational 3336954 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 555660 1) .v) (.rational 5743224 1)) .v) (.rational
    15465456 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1467720 1) .v) (.rational
    13166308 1)) .v) (.rational 31102136 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2245050 1) .v) (.rational 17521100 1)) .v) (.rational 36009834 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2198655 1) .v) (.rational 15089774 1)) .v)
    (.rational 26948297 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1436580 1)
    .v) (.rational 8845706 1)) .v) (.rational 13865747 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 631260 1) .v) (.rational 3580454 1)) .v) (.rational 5027691 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 182700 1) .v) (.rational 978774 1)) .v)
    (.rational 1256496 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 32835 1) .v)
    (.rational 168326 1)) .v) (.rational 198672 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 45360 1) .v) (.rational 452088 1)) .v) (.rational 1048536 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 294840 1) .v) (.rational 2630880 1)) .v) (.rational
    5532300 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 853380 1) .v) (.rational 6802092
    1)) .v) (.rational 12867666 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1450350 1) .v) (.rational 10346400 1)) .v) (.rational 17517606 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1605690 1) .v) (.rational 10325700 1)) .v) (.rational
    15645863 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1212840 1) .v)
    (.rational 7118112 1)) .v) (.rational 9715068 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 635100 1) .v) (.rational 3453500 1)) .v) (.rational 4293816 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 228900 1) .v) (.rational 1168050 1)) .v)
    (.rational 1336326 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 54930 1) .v)
    (.rational 263966 1)) .v) (.rational 278126 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8145 1) .v) (.rational 36348 1)) .v) (.rational 34755 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9720 1) .v) (.rational 80784
    1)) .v) (.rational 148788 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 68040 1) .v)
    (.rational 516888 1)) .v) (.rational 880056 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 214110 1) .v) (.rational 1482300 1)) .v) (.rational 2318742 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 400140 1) .v) (.rational 2523888 1)) .v) (.rational
    3612096 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 493920 1) .v)
    (.rational 2846832 1)) .v) (.rational 3723878 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 423270 1) .v) (.rational 2241984 1)) .v) (.rational 2688033 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 257265 1) .v) (.rational 1260210 1)) .v)
    (.rational 1392295 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 111060 1)
    .v) (.rational 504666 1)) .v) (.rational 515927 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 33435 1) .v) (.rational 140184 1)) .v) (.rational 132324 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6705 1) .v) (.rational 25434 1)) .v) (.rational
    21865 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 810 1) .v) (.rational
    2670 1)) .v) (.rational 2025 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow14010

namespace FullLow14011
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    5*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_100_3 e g v+8*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_010_5 e g v+24*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_110_5 e g v+6*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_7 e g v+12*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 30 1) .v) (.rational 7180 1)) .e) (.add (.mul (.add (.mul
    (.rational 390 1) .v) (.rational 45297 1)) .f) (.mul (.add (.mul (.rational 510 1) .v)
    (.rational 49068 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 2490 1) .v)
    (.rational 172566 1)) .f) (.mul (.add (.mul (.rational 4110 1) .v) (.rational 249878 1)) .g))
    .f) (.mul (.add (.mul (.rational 1440 1) .v) (.rational 111856 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10350 1) .v) (.rational 443624 1)) .f)
    (.mul (.add (.mul (.rational 21570 1) .v) (.rational 811564 1)) .g)) .f) (.mul (.add (.mul
    (.rational 12810 1) .v) (.rational 497068 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational
    360 1) .v) (.rational 104114 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 31140 1) .v) (.rational 815556 1)) .f) (.mul (.add (.mul
    (.rational 82320 1) .v) (.rational 1842932 1)) .g)) .f) (.mul (.add (.mul (.rational 76230 1)
    .v) (.rational 1504262 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 27030 1) .v)
    (.rational 511642 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 900 1) .v) (.rational
    48636 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 68280 1) .v) (.rational 1093628 1)) .f) (.mul (.add (.mul (.rational 224460
    1) .v) (.rational 3020604 1)) .g)) .f) (.mul (.add (.mul (.rational 290610 1) .v) (.rational
    3239508 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 190230 1) .v) (.rational 1702864
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 68430 1) .v) (.rational 460530 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.rational 14460 1) .v) (.rational 65394 1)) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    103500 1) .v) (.rational 1049676 1)) .f) (.mul (.add (.mul (.rational 408240 1) .v) (.rational
    3498264 1)) .g)) .f) (.mul (.add (.mul (.rational 673920 1) .v) (.rational 4794168 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.rational 614040 1) .v) (.rational 3552360 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.rational 345330 1) .v) (.rational 1604006 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.rational 127050 1) .v) (.rational 483338 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 30720 1) .v) (.rational 101896 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 100260 1) .v)
    (.rational 678984 1)) .f) (.mul (.add (.mul (.rational 458820 1) .v) (.rational 2680296 1))
    .g)) .f) (.mul (.add (.mul (.rational 908700 1) .v) (.rational 4522980 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 1032480 1) .v) (.rational 4344192 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 752550 1) .v) (.rational 2689632 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 370290 1) .v) (.rational 1152028 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 123570 1) .v) (.rational 346712 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    26520 1) .v) (.rational 68534 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 55080 1) .v)
    (.rational 262440 1)) .f) (.mul (.add (.mul (.rational 285120 1) .v) (.rational 1202040 1))
    .g)) .f) (.mul (.add (.mul (.rational 652140 1) .v) (.rational 2411364 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 874800 1) .v) (.rational 2826936 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 769140 1) .v) (.rational 2184876 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 466200 1) .v) (.rational 1182748 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 196950 1) .v) (.rational 454526 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    56370 1) .v) (.rational 119302 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 10110 1) .v)
    (.rational 19392 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12960 1) .v)
    (.rational 45360 1)) .f) (.mul (.add (.mul (.rational 74520 1) .v) (.rational 236520 1)) .g))
    .f) (.mul (.add (.mul (.rational 192060 1) .v) (.rational 548256 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.rational 294660 1) .v) (.rational 753384 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.rational 300780 1) .v) (.rational 690112 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational
    215100 1) .v) (.rational 446124 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational 109530 1)
    .v) (.rational 206956 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational 39150 1) .v)
    (.rational 67464 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 9360 1) .v) (.rational
    14553 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 1350 1) .v) (.rational 1850 1)) (.pow
    .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow14011

namespace FullLow14012
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  5*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(1*SmallGap.ReducedLayers.low0_100_4 e g v+4*SmallGap.ReducedLayers.low0_010_6 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.low1_110_6 e g v+3*SmallGap.ReducedLayers.low1_020_8 e g v)

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

end FullLow14012

end
end SPR.N6.Tail.CoreEndpoint
