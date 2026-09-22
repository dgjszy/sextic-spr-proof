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

namespace FullLow2210
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    3*SmallGap.PolarCoefficientsLow0.c230 e f g v*e^2*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_0 e g v*e^5+12*SmallGap.ReducedLayers.low0_010_0
    e g v*e^3+6*SmallGap.ReducedLayers.low0_001_0 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_0 e g v*e^5+6*SmallGap.ReducedLayers.low1_110_0 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_101_0 e g v*e^4+3*SmallGap.ReducedLayers.low1_020_0 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_0 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 120 1) .v) (.rational 3420 1)) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 120 1) .v) (.rational 2640 1)) .v) (.rational 30816 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 300 1) .v) (.rational 4200 1)) .v) (.rational 39978 1))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2400 1) .v) (.rational
    27072 1)) .v) (.rational 175164 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7200 1) .v)
    (.rational 59076 1)) .v) (.rational 316512 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7800 1) .v) (.rational 43464 1)) .v) (.rational 200784 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22140 1) .v) (.rational
    171492 1)) .v) (.rational 704629 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 77490 1) .v)
    (.rational 475074 1)) .v) (.rational 1647084 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 104910 1) .v) (.rational 496854 1)) .v) (.rational 1461333 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 68550 1) .v) (.rational 246582 1)) .v) (.rational
    612382 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 125148 1) .v) (.rational 750612 1)) .v) (.rational 2131461 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 500592 1) .v) (.rational 2516994 1)) .v) (.rational
    6157686 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 809052 1) .v) (.rational 3377904
    1)) .v) (.rational 7092249 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    675084 1) .v) (.rational 2330004 1)) .v) (.rational 4161090 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 306360 1) .v) (.rational 877164 1)) .v) (.rational 1313244 1))
    (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 485454 1) .v) (.rational 2406458 1)) .v) (.rational 5023532 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2184543 1) .v) (.rational 9458397 1)) .v) (.rational
    17377698 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4091496 1) .v) (.rational
    15409330 1)) .v) (.rational 24779417 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4125702 1) .v) (.rational 13501334 1)) .v) (.rational 18858446 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2413590 1) .v) (.rational 6886362 1)) .v)
    (.rational 8278011 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 816987 1)
    .v) (.rational 2051797 1)) .v) (.rational 2103206 1)) (.pow .g 5)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1370664 1) .v) (.rational 5846160 1)) .v) (.rational 9421489 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6853320 1) .v) (.rational 26316984 1)) .v) (.rational 38108346 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 14567655 1) .v) (.rational 50258109 1)) .v)
    (.rational 65061058 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 17150700 1)
    .v) (.rational 53141862 1)) .v) (.rational 61149937 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 12196038 1) .v) (.rational 34013550 1)) .v) (.rational 34584531 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5344608 1) .v) (.rational 13488768
    1)) .v) (.rational 12056569 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1402659 1) .v) (.rational 3232893 1)) .v) (.rational 2532732 1)) (.pow .g 6)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 2913816 1) .v) (.rational 10983144 1)) .v) (.rational 14226090 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 16025988 1) .v) (.rational 55651453 1)) .v)
    (.rational 66024807 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 38066634 1) .v)
    (.rational 121608513 1)) .v) (.rational 131601434 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 51104943 1) .v) (.rational 150132843 1)) .v) (.rational 147566468 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 42586032 1) .v) (.rational
    115159712 1)) .v) (.rational 102389443 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22743294 1) .v) (.rational 56765379 1)) .v) (.rational 45496691 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7739310 1) .v) (.rational 17911617 1)) .v)
    (.rational 12911825 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1604967 1)
    .v) (.rational 3466237 1)) .v) (.rational 2245912 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 4755839 1) .v) (.rational 16141772 1)) .v) (.rational 17379321 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 28535034 1) .v) (.rational 90831326 1)) .v)
    (.rational 91126302 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 74836348 1) .v)
    (.rational 223131410 1)) .v) (.rational 207897166 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 112610595 1) .v) (.rational 314284266 1)) .v) (.rational 271056783 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 107248498 1) .v) (.rational
    280193333 1)) .v) (.rational 222993700 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 67215796 1) .v) (.rational 164542020 1)) .v) (.rational 120505356 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 27891172 1) .v) (.rational 64096816 1)) .v)
    (.rational 43099389 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 7497355 1)
    .v) (.rational 16218414 1)) .v) (.rational 9994663 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1232583 1) .v) (.rational 2517229 1)) .v) (.rational 1419242 1)) (.pow
    .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6019306 1) .v) (.rational
    18650068 1)) .v) (.rational 17168784 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 39125489
    1) .v) (.rational 115303512 1)) .v) (.rational 100393656 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 112212422 1) .v) (.rational 314149348 1)) .v) (.rational 258007617 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 186787942 1) .v) (.rational 496300397 1))
    .v) (.rational 383452196 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    199653749 1) .v) (.rational 503176595 1)) .v) (.rational 364775632 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 143102874 1) .v) (.rational 342031517 1)) .v) (.rational
    232071946 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 69679284 1) .v)
    (.rational 157978532 1)) .v) (.rational 100080212 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 22818918 1) .v) (.rational 49099547 1)) .v) (.rational 28968046 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4853395 1) .v) (.rational 9914467
    1)) .v) (.rational 5430715 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    623757 1) .v) (.rational 1208995 1)) .v) (.rational 611964 1)) (.pow .g 9)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5921930 1) .v) (.rational 16925840 1))
    .v) (.rational 13642002 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 41453510 1) .v)
    (.rational 113972962 1)) .v) (.rational 87991524 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 128996425 1) .v) (.rational 340746935 1)) .v) (.rational 251428901 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 235082920 1) .v) (.rational 595933222 1))
    .v) (.rational 419316751 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    278143051 1) .v) (.rational 675981853 1)) .v) (.rational 452524590 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 223763810 1) .v) (.rational 520925664 1)) .v) (.rational
    330991510 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 124533404 1) .v)
    (.rational 277498020 1)) .v) (.rational 166930303 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 47790896 1) .v) (.rational 101848840 1)) .v) (.rational 57836452 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 12354421 1) .v) (.rational 25151725
    1)) .v) (.rational 13432886 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2046588 1) .v) (.rational 3971926 1)) .v) (.rational 1984431 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 197505 1) .v) (.rational 363883 1)) .v) (.rational 168616 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    4507918 1) .v) (.rational 11985388 1)) .v) (.rational 8628357 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 33809385 1) .v) (.rational 87267814 1)) .v) (.rational 60819678 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 113407217 1) .v) (.rational 283837690 1)) .v)
    (.rational 191147624 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 224371238
    1) .v) (.rational 543854396 1)) .v) (.rational 353220567 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 290680259 1) .v) (.rational 681540576 1)) .v) (.rational
    426016052 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 258764286 1) .v)
    (.rational 586148567 1)) .v) (.rational 351841147 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 161486657 1) .v) (.rational 352939191 1)) .v) (.rational 202935202 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 70712211 1) .v) (.rational
    148888673 1)) .v) (.rational 81760443 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 21363475 1) .v) (.rational 43250776 1)) .v) (.rational 22596281 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4284049 1) .v) (.rational 8315657 1)) .v)
    (.rational 4111351 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 529696 1)
    .v) (.rational 981327 1)) .v) (.rational 455458 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 34911 1) .v) (.rational 61245 1)) .v) (.rational 26334 1)) (.pow .g 11))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2622596 1) .v) (.rational 6532412 1)) .v) (.rational 4272691 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 20980768 1) .v) (.rational 51118932 1)) .v) (.rational 32652930 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 75438994 1) .v) (.rational 179589719 1)) .v)
    (.rational 111858570 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 160909518
    1) .v) (.rational 373830335 1)) .v) (.rational 226668737 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 226267074 1) .v) (.rational 512356309 1)) .v) (.rational
    301879403 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 220403654 1) .v)
    (.rational 485773079 1)) .v) (.rational 277563698 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 152011399 1) .v) (.rational 325604409 1)) .v) (.rational 180001488 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 74492159 1) .v) (.rational
    154789749 1)) .v) (.rational 82558908 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25604033 1) .v) (.rational 51496198 1)) .v) (.rational 26404322 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5974944 1) .v) (.rational 11596021 1)) .v)
    (.rational 5688168 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 888723 1)
    .v) (.rational 1657010 1)) .v) (.rational 772132 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 74341 1) .v) (.rational 132244 1)) .v) (.rational 57903 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2565 1) .v) (.rational 4303 1)) .v)
    (.rational 1738 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1140364 1) .v) (.rational 2678170 1)) .v) (.rational
    1615392 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 9693094 1) .v) (.rational 22407407
    1)) .v) (.rational 13293678 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 37181858 1)
    .v) (.rational 84520426 1)) .v) (.rational 49260238 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 85002055 1) .v) (.rational 189797629 1)) .v) (.rational 108521951 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 128800213 1) .v) (.rational
    282157815 1)) .v) (.rational 158034132 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 136051253 1) .v) (.rational 292022153 1)) .v) (.rational 159938890 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 102523847 1) .v) (.rational 215286565 1))
    .v) (.rational 115067943 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    55402688 1) .v) (.rational 113611496 1)) .v) (.rational 59114393 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 21244270 1) .v) (.rational 42449264 1)) .v) (.rational
    21435276 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 5615123 1) .v)
    (.rational 10901210 1)) .v) (.rational 5320322 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 965789 1) .v) (.rational 1814563 1)) .v) (.rational 851033 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 96283 1) .v) (.rational 174073 1)) .v) (.rational
    77790 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 4155 1) .v) (.rational
    7165 1)) .v) (.rational 3010 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 357038 1) .v) (.rational 795616 1))
    .v) (.rational 448553 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3213342 1) .v)
    (.rational 7085018 1)) .v) (.rational 3951570 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13095250 1) .v) (.rational 28545804 1)) .v) (.rational 15735813 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 31926248 1) .v) (.rational 68743378 1)) .v)
    (.rational 37414856 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 51813352 1)
    .v) (.rational 110088361 1)) .v) (.rational 59088853 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 58909256 1) .v) (.rational 123367971 1)) .v) (.rational 65211093 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 48058090 1) .v) (.rational 99067040
    1)) .v) (.rational 51487354 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    28307720 1) .v) (.rational 57349601 1)) .v) (.rational 29248595 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11930368 1) .v) (.rational 23708928 1)) .v) (.rational
    11836701 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3501922 1) .v)
    (.rational 6810011 1)) .v) (.rational 3317713 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 677908 1) .v) (.rational 1285920 1)) .v) (.rational 608725 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 77448 1) .v) (.rational 142677 1)) .v) (.rational
    65229 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 3930 1) .v) (.rational
    6987 1)) .v) (.rational 3057 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 75526 1) .v) (.rational
    160792 1)) .v) (.rational 85840 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 717497 1) .v)
    (.rational 1517955 1)) .v) (.rational 805371 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3095129 1) .v) (.rational 6503395 1)) .v) (.rational 3427069 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8012423 1) .v) (.rational 16709613 1)) .v) (.rational
    8739555 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 13855120 1) .v)
    (.rational 28657136 1)) .v) (.rational 14864239 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16849634 1) .v) (.rational 34535295 1)) .v) (.rational 17747912 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 14768110 1) .v) (.rational 29965201 1)) .v)
    (.rational 15240064 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 9393254 1)
    .v) (.rational 18845983 1)) .v) (.rational 9472952 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4300258 1) .v) (.rational 8519103 1)) .v) (.rational 4225060 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1380885 1) .v) (.rational 2696466 1)) .v)
    (.rational 1316709 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 294993 1)
    .v) (.rational 566528 1)) .v) (.rational 271627 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 37603 1) .v) (.rational 70816 1)) .v) (.rational 33213 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2160 1) .v) (.rational 3973 1)) .v) (.rational 1813
    1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 9569 1) .v) (.rational 19628 1)) .v) (.rational 10059
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 95690 1) .v) (.rational 195740 1)) .v)
    (.rational 100050 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 435532 1) .v)
    (.rational 888191 1)) .v) (.rational 452659 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1192623 1) .v) (.rational 2423889 1)) .v) (.rational 1231266 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2187495 1) .v) (.rational 4429006 1)) .v)
    (.rational 2241511 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2830320 1)
    .v) (.rational 5706140 1)) .v) (.rational 2875820 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2648016 1) .v) (.rational 5312986 1)) .v) (.rational 2664970 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1804530 1) .v) (.rational 3600926 1)) .v)
    (.rational 1796396 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 888783 1)
    .v) (.rational 1762564 1)) .v) (.rational 873781 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 308510 1) .v) (.rational 607456 1)) .v) (.rational 298946 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 71636 1) .v) (.rational 139887 1)) .v) (.rational
    68251 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 9991 1) .v) (.rational
    19321 1)) .v) (.rational 9330 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    633 1) .v) (.rational 1210 1)) .v) (.rational 577 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 540
    1) .v) (.rational 1080 1)) .v) (.rational 540 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    5670 1) .v) (.rational 11340 1)) .v) (.rational 5670 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 27150 1) .v) (.rational 54300 1)) .v) (.rational 27150 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 78375 1) .v) (.rational 156750 1)) .v) (.rational
    78375 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 151875 1) .v) (.rational
    303750 1)) .v) (.rational 151875 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 208080 1) .v) (.rational 416160 1)) .v) (.rational 208080 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 206640 1) .v) (.rational 413280 1)) .v) (.rational
    206640 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 149850 1) .v) (.rational
    299700 1)) .v) (.rational 149850 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 78750 1) .v) (.rational 157500 1)) .v) (.rational 78750 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 29250 1) .v) (.rational 58500 1)) .v) (.rational 29250 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 7290 1) .v) (.rational 14580 1))
    .v) (.rational 7290 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1095 1)
    .v) (.rational 2190 1)) .v) (.rational 1095 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 75 1) .v) (.rational 150 1)) .v) (.rational 75 1)) (.pow .g 12))) (.pow .f
    5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2210

namespace FullLow2211
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsLow0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(60*SmallGap.ReducedLayers.low0_100_0 e g v*e^4+12*SmallGap.ReducedLayers.low0_100_1
    e g v*e^5+36*SmallGap.ReducedLayers.low0_010_0 e g v*e^2+12*SmallGap.ReducedLayers.low0_010_1
    e g v*e^3+24*SmallGap.ReducedLayers.low0_001_0 e g v*e^3+6*SmallGap.ReducedLayers.low0_001_1 e
    g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.low1_200_0 e g v*e^4+3*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^5+18*SmallGap.ReducedLayers.low1_110_0 e g v*e^2+6*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^3+12*SmallGap.ReducedLayers.low1_101_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_020_0 e g v+3*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^1+6*SmallGap.ReducedLayers.low1_011_0 e g v*e^1+3*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 1020 1) .v) (.rational 30750 1)) .e) (.add (.mul (.add (.mul
    (.add (.mul (.rational 900 1) .v) (.rational 20400 1)) .v) (.rational 262380 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2250 1) .v) (.rational 31740 1)) .v) (.rational 333900 1))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16860 1) .v) (.rational
    194808 1)) .v) (.rational 1412664 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 50580 1)
    .v) (.rational 414984 1)) .v) (.rational 2496846 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 54810 1) .v) (.rational 292956 1)) .v) (.rational 1535658 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 147300 1) .v)
    (.rational 1167930 1)) .v) (.rational 5384701 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    515550 1) .v) (.rational 3169017 1)) .v) (.rational 12302496 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 698130 1) .v) (.rational 3221283 1)) .v) (.rational 10593540 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 456450 1) .v) (.rational 1540131 1)) .v)
    (.rational 4265404 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 793590 1) .v) (.rational 4885590 1)) .v) (.rational
    15443237 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3174360 1) .v) (.rational 16114236
    1)) .v) (.rational 43648046 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5131386 1)
    .v) (.rational 21201162 1)) .v) (.rational 48939294 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4283898 1) .v) (.rational 14300118 1)) .v) (.rational 27783068 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1945968 1) .v) (.rational 5263992
    1)) .v) (.rational 8431433 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2942670 1) .v) (.rational 15038372 1))
    .v) (.rational 34522906 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 13242015 1) .v)
    (.rational 58358610 1)) .v) (.rational 117090892 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 24807348 1) .v) (.rational 93759034 1)) .v) (.rational 163202728 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 25029648 1) .v) (.rational 80984894 1)) .v)
    (.rational 121036888 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 14658516
    1) .v) (.rational 40775802 1)) .v) (.rational 51663526 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4970205 1) .v) (.rational 12040984 1)) .v) (.rational 12773260 1))
    (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 7943400 1) .v) (.rational 35089420 1)) .v) (.rational
    61385493 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 39717000 1) .v) (.rational 156427386
    1)) .v) (.rational 244141045 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 84451410 1)
    .v) (.rational 295790574 1)) .v) (.rational 409213049 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 99503640 1) .v) (.rational 309854900 1)) .v) (.rational 377198832 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 70856490 1) .v) (.rational
    196807314 1)) .v) (.rational 209240167 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31118130 1) .v) (.rational 77697012 1)) .v) (.rational 71712653 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8191800 1) .v) (.rational 18627868 1)) .v)
    (.rational 14898207 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16105898 1) .v)
    (.rational 63117828 1)) .v) (.rational 87696776 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 88582439 1) .v) (.rational 317442338 1)) .v) (.rational 401415775 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 210501727 1) .v) (.rational 688771904 1)) .v)
    (.rational 788738666 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 282889479
    1) .v) (.rational 845116188 1)) .v) (.rational 871983482 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 236154896 1) .v) (.rational 645379766 1)) .v) (.rational
    597240962 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 126468307 1) .v)
    (.rational 317570378 1)) .v) (.rational 262720205 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 43206265 1) .v) (.rational 100405896 1)) .v) (.rational 74189670 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 9008151 1) .v) (.rational 19559856
    1)) .v) (.rational 12938734 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    24949877 1) .v) (.rational 88264102 1)) .v) (.rational 100914086 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 149699262 1) .v) (.rational 493823434 1)) .v) (.rational 523336112 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 392817817 1) .v) (.rational 1206922916 1))
    .v) (.rational 1181111171 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    591845850 1) .v) (.rational 1693182864 1)) .v) (.rational 1524601692 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 564907279 1) .v) (.rational 1506050062 1)) .v)
    (.rational 1243878119 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 355245898
    1) .v) (.rational 884521790 1)) .v) (.rational 668571818 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 148128061 1) .v) (.rational 345708722 1)) .v) (.rational
    238892605 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 40084228 1) .v)
    (.rational 88113342 1)) .v) (.rational 55685880 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6648294 1) .v) (.rational 13837650 1)) .v) (.rational 8008209 1)) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 29741872 1) .v) (.rational 96133964
    1)) .v) (.rational 93197188 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 193322168 1) .v)
    (.rational 591693745 1)) .v) (.rational 540316208 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 554812558 1) .v) (.rational 1606168826 1)) .v) (.rational 1377544539 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 924925221 1) .v) (.rational 2531122645 1))
    .v) (.rational 2033303278 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    991200561 1) .v) (.rational 2564064870 1)) .v) (.rational 1924588829 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 713279139 1) .v) (.rational 1745407469 1)) .v)
    (.rational 1221710964 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 349296968
    1) .v) (.rational 809695964 1)) .v) (.rational 527758381 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 115292257 1) .v) (.rational 253669697 1)) .v) (.rational
    153816678 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 24780743 1) .v)
    (.rational 51854472 1)) .v) (.rational 29223291 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3228873 1) .v) (.rational 6431880 1)) .v) (.rational 3361876 1)) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 27255091 1) .v)
    (.rational 81198244 1)) .v) (.rational 68438930 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 190785637 1) .v) (.rational 544856132 1)) .v) (.rational 438548148 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 594134866 1) .v) (.rational 1624689098 1)) .v)
    (.rational 1245890679 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1084595915 1) .v) (.rational 2837399834 1)) .v) (.rational 2068404236 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1287023644 1) .v) (.rational 3219265598 1)) .v)
    (.rational 2226219504 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1040046681 1) .v) (.rational 2486775716 1)) .v) (.rational 1628209613 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 582558216 1) .v) (.rational 1331568172 1)) .v)
    (.rational 824005020 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 225551817
    1) .v) (.rational 492949050 1)) .v) (.rational 287799188 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 59005283 1) .v) (.rational 123304200 1)) .v) (.rational 67771070
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 9929312 1) .v) (.rational
    19821378 1)) .v) (.rational 10221423 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 978066 1) .v) (.rational 1859076 1)) .v) (.rational 893879 1)) (.pow .g 10)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 19023658 1) .v)
    (.rational 52586726 1)) .v) (.rational 39343561 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 142677435 1) .v) (.rational 381857456 1)) .v) (.rational 275959930 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 478974041 1) .v) (.rational 1239735076 1)) .v)
    (.rational 863772601 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 949390169
    1) .v) (.rational 2374000834 1)) .v) (.rational 1591675460 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1233887807 1) .v) (.rational 2978031246 1)) .v) (.rational
    1917730083 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1103761494 1) .v)
    (.rational 2569173612 1)) .v) (.rational 1586048649 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 693638726 1) .v) (.rational 1555936718 1)) .v) (.rational 919033639 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 306664248 1) .v) (.rational
    662385790 1)) .v) (.rational 373527070 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 93853417 1) .v) (.rational 194981872 1)) .v) (.rational 104688193 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 19145119 1) .v) (.rational 38180943 1)) .v)
    (.rational 19443225 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2420959 1)
    .v) (.rational 4617459 1)) .v) (.rational 2216576 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 164343 1) .v) (.rational 297569 1)) .v) (.rational 133226 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    9920393 1) .v) (.rational 25582150 1)) .v) (.rational 17284377 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 79363144 1) .v) (.rational 199780874 1)) .v) (.rational 131614954 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 285605006 1) .v) (.rational 701055583 1)) .v)
    (.rational 449638443 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 610380022
    1) .v) (.rational 1459367335 1)) .v) (.rational 909773146 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 861178337 1) .v) (.rational 2003376763 1)) .v) (.rational
    1211869215 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 843152788 1) .v)
    (.rational 1906351323 1)) .v) (.rational 1116978042 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 585782773 1) .v) (.rational 1285748023 1)) .v) (.rational 728279044 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 289962506 1) .v) (.rational
    617032843 1)) .v) (.rational 337110148 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 101020756 1) .v) (.rational 208062413 1)) .v) (.rational 109335970 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 23999288 1) .v) (.rational 47726715 1)) .v)
    (.rational 24032276 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 3654409 1)
    .v) (.rational 6991166 1)) .v) (.rational 3354599 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 315260 1) .v) (.rational 576606 1)) .v) (.rational 261346 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 11334 1) .v) (.rational 19598 1)) .v)
    (.rational 8264 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 3735962 1) .v) (.rational 9029792 1)) .v) (.rational
    5589870 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 31755677 1) .v) (.rational 75438817
    1)) .v) (.rational 45886496 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 121918448 1)
    .v) (.rational 284388238 1)) .v) (.rational 169756371 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 279274820 1) .v) (.rational 638987729 1)) .v) (.rational 373808708 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 424617192 1) .v) (.rational
    951924063 1)) .v) (.rational 544969763 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 450854716 1) .v) (.rational 989185536 1)) .v) (.rational 553313614 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 342280686 1) .v) (.rational 734009287 1))
    .v) (.rational 400445942 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    186862643 1) .v) (.rational 391090476 1)) .v) (.rational 207665564 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 72640005 1) .v) (.rational 148108869 1)) .v) (.rational
    76349098 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 19548817 1) .v)
    (.rational 38738983 1)) .v) (.rational 19322438 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3442324 1) .v) (.rational 6607879 1)) .v) (.rational 3174419 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 353839 1) .v) (.rational 654715 1)) .v)
    (.rational 300876 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 15895 1) .v)
    (.rational 28128 1)) .v) (.rational 12233 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 957377 1) .v)
    (.rational 2178504 1)) .v) (.rational 1251201 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    8616393 1) .v) (.rational 19382134 1)) .v) (.rational 11006097 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 35144386 1) .v) (.rational 78086874 1)) .v) (.rational 43799010 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 85850180 1) .v) (.rational
    188245716 1)) .v) (.rational 104187450 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 139795087 1) .v) (.rational 302217365 1)) .v) (.rational 164859599 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 159754637 1) .v) (.rational 340145525 1))
    .v) (.rational 182643644 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    131283532 1) .v) (.rational 274973577 1)) .v) (.rational 145123776 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 78110297 1) .v) (.rational 160719169 1)) .v) (.rational
    83229874 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 33364405 1) .v)
    (.rational 67331431 1)) .v) (.rational 34142455 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9967162 1) .v) (.rational 19688145 1)) .v) (.rational 9750219 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1973830 1) .v) (.rational 3806241 1)) .v)
    (.rational 1834598 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 232179 1)
    .v) (.rational 435503 1)) .v) (.rational 203324 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12231 1) .v) (.rational 22200 1)) .v) (.rational 9969 1)) (.pow .g 12)))
    (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 148876 1) .v) (.rational 320412 1)) .v) (.rational 172684 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1414322 1) .v) (.rational 3023797 1)) .v) (.rational
    1619301 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6106084 1) .v) (.rational
    12960899 1)) .v) (.rational 6892421 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15836503 1) .v) (.rational 33351851 1)) .v) (.rational 17600078 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 27472346 1) .v) (.rational 57363250 1)) .v)
    (.rational 30015350 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 33573379 1)
    .v) (.rational 69448549 1)) .v) (.rational 35999672 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 29631917 1) .v) (.rational 60669063 1)) .v) (.rational 31123092 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 19028737 1) .v) (.rational 38522261
    1)) .v) (.rational 19533970 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8823353 1) .v) (.rational 17640581 1)) .v) (.rational 8829658 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2880911 1) .v) (.rational 5680290 1)) .v) (.rational
    2801635 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 628723 1) .v)
    (.rational 1220402 1)) .v) (.rational 591863 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 82340 1) .v) (.rational 156996 1)) .v) (.rational 74656 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4893 1) .v) (.rational 9137 1)) .v) (.rational
    4244 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 10548 1) .v) (.rational 21586 1)) .v)
    (.rational 11038 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 105480 1) .v) (.rational
    215320 1)) .v) (.rational 109840 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 480455
    1) .v) (.rational 978037 1)) .v) (.rational 497582 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1317915 1) .v) (.rational 2674473 1)) .v) (.rational 1356558 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2424493 1) .v) (.rational 4903002 1)) .v)
    (.rational 2478509 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3151220 1)
    .v) (.rational 6347940 1)) .v) (.rational 3196720 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2967454 1) .v) (.rational 5951862 1)) .v) (.rational 2984408 1)) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2040338 1) .v) (.rational 4072542 1)) .v)
    (.rational 2032204 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1016950 1)
    .v) (.rational 2018898 1)) .v) (.rational 1001948 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 358508 1) .v) (.rational 707452 1)) .v) (.rational 348944 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 84907 1) .v) (.rational 166429 1)) .v)
    (.rational 81522 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 12139 1) .v)
    (.rational 23617 1)) .v) (.rational 11478 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 793 1) .v) (.rational 1530 1)) .v) (.rational 737 1)) (.pow .g 12))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2211

namespace FullLow2212
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsLow0.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    9*SmallGap.PolarCoefficientsLow0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    18*SmallGap.PolarCoefficientsLow0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(120*SmallGap.ReducedLayers.low0_100_0 e g
    v*e^3+60*SmallGap.ReducedLayers.low0_100_1 e g v*e^4+12*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^5+36*SmallGap.ReducedLayers.low0_010_0 e g v*e^1+36*SmallGap.ReducedLayers.low0_010_1 e g
    v*e^2+12*SmallGap.ReducedLayers.low0_010_2 e g v*e^3+36*SmallGap.ReducedLayers.low0_001_0 e g
    v*e^2+24*SmallGap.ReducedLayers.low0_001_1 e g v*e^3+6*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(30*SmallGap.ReducedLayers.low1_200_0 e g v*e^3+15*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_200_2 e g v*e^5+18*SmallGap.ReducedLayers.low1_110_0 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_110_1 e g v*e^2+6*SmallGap.ReducedLayers.low1_110_2 e g
    v*e^3+18*SmallGap.ReducedLayers.low1_101_0 e g v*e^2+12*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_101_2 e g v*e^4+3*SmallGap.ReducedLayers.low1_020_1 e g
    v+3*SmallGap.ReducedLayers.low1_020_2 e g v*e^1+3*SmallGap.ReducedLayers.low1_011_0 e g
    v+6*SmallGap.ReducedLayers.low1_011_1 e g v*e^1+3*SmallGap.ReducedLayers.low1_011_2 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 3780 1) .v) (.rational 123090 1)) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 2880 1) .v) (.rational 69300 1)) .v) (.rational 996804 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7200 1) .v) (.rational 105300 1)) .v) (.rational 1242702 1)) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 51090 1) .v) (.rational 616380 1))
    .v) (.rational 5083446 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 153270 1) .v)
    (.rational 1276980 1)) .v) (.rational 8770362 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 166140 1) .v) (.rational 856500 1)) .v) (.rational 5207952 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 424860 1) .v)
    (.rational 3488328 1)) .v) (.rational 18324174 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1487010 1) .v) (.rational 9231576 1)) .v) (.rational 40808502 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2014110 1) .v) (.rational 9049800 1)) .v) (.rational
    33935322 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1317750 1) .v)
    (.rational 4110468 1)) .v) (.rational 13003662 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2183982 1) .v) (.rational 13901322
    1)) .v) (.rational 49645653 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 8735928 1) .v)
    (.rational 44936364 1)) .v) (.rational 136862436 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14124282 1) .v) (.rational 57645453 1)) .v) (.rational 148648485 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11797098 1) .v) (.rational 37728951 1)) .v)
    (.rational 80994129 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5363592 1)
    .v) (.rational 13451169 1)) .v) (.rational 23328582 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7726254 1) .v)
    (.rational 40934824 1)) .v) (.rational 104736578 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34768143 1) .v) (.rational 156416601 1)) .v) (.rational 347287546 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 65146488 1) .v) (.rational 246932504 1)) .v)
    (.rational 471146888 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 65761374
    1) .v) (.rational 209344645 1)) .v) (.rational 338438867 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 38545614 1) .v) (.rational 103558737 1)) .v) (.rational 139321369
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 13086267 1) .v) (.rational
    30184970 1)) .v) (.rational 33193643 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 19846707 1) .v)
    (.rational 91302590 1)) .v) (.rational 175420724 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 99233535 1) .v) (.rational 402315382 1)) .v) (.rational 684311013 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 211058331 1) .v) (.rational 751539814 1)) .v)
    (.rational 1122412533 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 248832114
    1) .v) (.rational 777986710 1)) .v) (.rational 1010485099 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 177388683 1) .v) (.rational 489148387 1)) .v) (.rational
    547155426 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 78034497 1) .v)
    (.rational 191854921 1)) .v) (.rational 183484947 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 20589147 1) .v) (.rational 45961433 1)) .v) (.rational 37570241 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 38091670 1) .v) (.rational 156157432 1)) .v)
    (.rational 235118748 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 209504185 1) .v)
    (.rational 778523361 1)) .v) (.rational 1059336683 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 498038399 1) .v) (.rational 1674867843 1)) .v) (.rational 2047133277 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 669891408 1) .v) (.rational 2039451989 1))
    .v) (.rational 2225551855 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    560076772 1) .v) (.rational 1548494868 1)) .v) (.rational 1500768998 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 300638093 1) .v) (.rational 759887106 1)) .v)
    (.rational 652142148 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 103044707
    1) .v) (.rational 240614920 1)) .v) (.rational 183053938 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 21575562 1) .v) (.rational 47181456 1)) .v) (.rational 32022066
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 55392638 1) .v) (.rational
    205667508 1)) .v) (.rational 251995138 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    332355828 1) .v) (.rational 1143021212 1)) .v) (.rational 1290572852 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 872560580 1) .v) (.rational 2776758936 1)) .v) (.rational
    2876695029 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1316207810 1) .v)
    (.rational 3876568846 1)) .v) (.rational 3670407776 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1258860938 1) .v) (.rational 3437792900 1)) .v) (.rational 2965663597
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 794111000 1) .v) (.rational
    2018431056 1)) .v) (.rational 1584048114 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 332589066 1) .v) (.rational 791432707 1)) .v) (.rational 565430482 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 90537392 1) .v) (.rational 203217891 1)) .v)
    (.rational 132586829 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 15131898
    1) .v) (.rational 32291697 1)) .v) (.rational 19330680 1)) (.pow .g 8)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 61241964 1) .v) (.rational 208083300 1)) .v)
    (.rational 214254142 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 398072766 1) .v)
    (.rational 1274113335 1)) .v) (.rational 1230082494 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1143166924 1) .v) (.rational 3443658808 1)) .v) (.rational 3107530353 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1908617656 1) .v) (.rational 5410327352 1))
    .v) (.rational 4550708321 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2050644596 1) .v) (.rational 5474291457 1)) .v) (.rational 4282594619 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1481468901 1) .v) (.rational 3731421534 1)) .v)
    (.rational 2711676980 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 729557584
    1) .v) (.rational 1738874654 1)) .v) (.rational 1173723979 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 242652746 1) .v) (.rational 549351993 1)) .v) (.rational
    344740814 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 52685384 1) .v)
    (.rational 113726432 1)) .v) (.rational 66441836 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6954723 1) .v) (.rational 14347278 1)) .v) (.rational 7804761 1)) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 51173024 1) .v)
    (.rational 160198844 1)) .v) (.rational 142354332 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 358211168 1) .v) (.rational 1070580588 1)) .v) (.rational 905308336 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1116401761 1) .v) (.rational 3182367192 1)) .v)
    (.rational 2554735590 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2041665382 1) .v) (.rational 5547977006 1)) .v) (.rational 4218947447 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2430199116 1) .v) (.rational 6295186386 1)) .v)
    (.rational 4526526858 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1973095749 1) .v) (.rational 4875032364 1)) .v) (.rational 3310088823 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1112627146 1) .v) (.rational 2624944390 1)) .v)
    (.rational 1681612821 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 434768428
    1) .v) (.rational 980817672 1)) .v) (.rational 592562762 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 115146728 1) .v) (.rational 248704017 1)) .v) (.rational
    141619152 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 19692737 1) .v)
    (.rational 40726345 1)) .v) (.rational 21820963 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1980927 1) .v) (.rational 3911091 1)) .v) (.rational 1962285 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 31787662 1)
    .v) (.rational 92116560 1)) .v) (.rational 72183140 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 238407465 1) .v) (.rational 666727087 1)) .v) (.rational 503339776 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 801072361 1) .v) (.rational 2159765505 1)) .v)
    (.rational 1567799166 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1591123794 1) .v) (.rational 4132338473 1)) .v) (.rational 2879072003 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2075258989 1) .v) (.rational 5188997595 1)) .v)
    (.rational 3464058670 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1866425121 1) .v) (.rational 4491798990 1)) .v) (.rational 2868949389 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1181976572 1) .v) (.rational 2737737782 1)) .v)
    (.rational 1670789861 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 528115020
    1) .v) (.rational 1177293758 1)) .v) (.rational 685611574 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 163934399 1) .v) (.rational 351621793 1)) .v) (.rational
    195088078 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 34073262 1) .v)
    (.rational 70232568 1)) .v) (.rational 37027496 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4416083 1) .v) (.rational 8718054 1)) .v) (.rational 4346332 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 309666 1) .v) (.rational 580864 1)) .v)
    (.rational 271198 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 14226720 1) .v) (.rational 38293182 1)) .v)
    (.rational 26923367 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 113813760 1) .v)
    (.rational 298274676 1)) .v) (.rational 204089976 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 409997036 1) .v) (.rational 1045087667 1)) .v) (.rational 694796250 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 878238452 1) .v) (.rational 2175281875 1))
    .v) (.rational 1402897157 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1243961071 1) .v) (.rational 2991325827 1)) .v) (.rational 1868519698 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1225192630 1) .v) (.rational 2858100541 1)) .v)
    (.rational 1726492846 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 858461103
    1) .v) (.rational 1941295249 1)) .v) (.rational 1132283141 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 429916446 1) .v) (.rational 941678717 1)) .v) (.rational
    529429275 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 152134021 1) .v)
    (.rational 322410981 1)) .v) (.rational 174365739 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 36893962 1) .v) (.rational 75510151 1)) .v) (.rational 39170016 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 5771849 1) .v) (.rational 11370860
    1)) .v) (.rational 5632331 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    516014 1) .v) (.rational 972472 1)) .v) (.rational 456458 1)) (.pow .g 11))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 19464 1) .v) (.rational 34666 1)) .v) (.rational 15202 1)) (.pow
    .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 4334818 1) .v) (.rational 10866160 1)) .v) (.rational 6950964 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 36845953 1) .v) (.rational 90600456 1)) .v) (.rational
    56867090 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 141614666 1) .v) (.rational
    341230662 1)) .v) (.rational 209879007 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 325190935 1) .v) (.rational 767081373 1)) .v) (.rational 461699212 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 496506107 1) .v) (.rational 1145397699 1))
    .v) (.rational 673683283 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    530548330 1) .v) (.rational 1195771380 1)) .v) (.rational 686259615 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 406444877 1) .v) (.rational 894048897 1)) .v)
    (.rational 499873142 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 224657686
    1) .v) (.rational 481737909 1)) .v) (.rational 261943739 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 88786865 1) .v) (.rational 185330718 1)) .v) (.rational 97800042
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 24417677 1) .v) (.rational
    49518634 1)) .v) (.rational 25292203 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4422597 1) .v) (.rational 8688795 1)) .v) (.rational 4279251 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 471579 1) .v) (.rational 893496 1)) .v) (.rational
    421917 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 22230 1) .v) (.rational
    40317 1)) .v) (.rational 18087 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 804527 1) .v) (.rational 1882378
    1)) .v) (.rational 1108074 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7240743 1) .v)
    (.rational 16723946 1)) .v) (.rational 9724233 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 29566478 1) .v) (.rational 67353854 1)) .v) (.rational 38644643 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 72408316 1) .v) (.rational 162539120 1)) .v)
    (.rational 91921454 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 118418654
    1) .v) (.rational 261683821 1)) .v) (.rational 145698277 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 136217326 1) .v) (.rational 296029937 1)) .v) (.rational
    162060989 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 112989818 1) .v)
    (.rational 241223113 1)) .v) (.rational 129665545 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 68086444 1) .v) (.rational 142626389 1)) .v) (.rational 75161807 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 29577341 1) .v) (.rational 60710425
    1)) .v) (.rational 31309519 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9031659 1) .v) (.rational 18134721 1)) .v) (.rational 9132662 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1839584 1) .v) (.rational 3605469 1)) .v) (.rational
    1768120 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 224280 1) .v)
    (.rational 427807 1)) .v) (.rational 203527 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 12366 1) .v) (.rational 22860 1)) .v) (.rational 10494 1)) (.pow .g 12)))
    (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 68580 1) .v) (.rational 150080 1)) .v) (.rational 82074 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 651510 1) .v) (.rational 1415212 1)) .v) (.rational 768615
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2815900 1) .v) (.rational 6067394 1))
    .v) (.rational 3270297 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 7321645
    1) .v) (.rational 15637368 1)) .v) (.rational 8358088 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 12755936 1) .v) (.rational 26983534 1)) .v) (.rational 14289821 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 15690640 1) .v) (.rational 32847044
    1)) .v) (.rational 17218655 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    13977152 1) .v) (.rational 28930552 1)) .v) (.rational 14996373 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9089158 1) .v) (.rational 18583628 1)) .v) (.rational
    9514693 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4284860 1) .v)
    (.rational 8645008 1)) .v) (.rational 4366363 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1429186 1) .v) (.rational 2842144 1)) .v) (.rational 1414086 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 320420 1) .v) (.rational 627254 1)) .v)
    (.rational 306926 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 43397 1) .v)
    (.rational 83500 1)) .v) (.rational 40103 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2688 1) .v) (.rational 5074 1)) .v) (.rational 2386 1)) (.pow .g 12))) (.pow .f
    3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2212

namespace FullLow2213
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow3.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow3.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsLow1.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow3.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    9*SmallGap.PolarCoefficientsLow1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    24*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2+
    18*SmallGap.PolarCoefficientsLow1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsLow0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(120*SmallGap.ReducedLayers.low0_100_0 e g
    v*e^2+120*SmallGap.ReducedLayers.low0_100_1 e g v*e^3+60*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^4+12*SmallGap.ReducedLayers.low0_100_3 e g v*e^5+12*SmallGap.ReducedLayers.low0_010_0 e g
    v+36*SmallGap.ReducedLayers.low0_010_1 e g v*e^1+36*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^2+12*SmallGap.ReducedLayers.low0_010_3 e g v*e^3+24*SmallGap.ReducedLayers.low0_001_0 e g
    v*e^1+36*SmallGap.ReducedLayers.low0_001_1 e g v*e^2+24*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^3+6*SmallGap.ReducedLayers.low0_001_3 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(30*SmallGap.ReducedLayers.low1_200_0 e g v*e^2+30*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_200_2 e g v*e^4+3*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^5+6*SmallGap.ReducedLayers.low1_110_0 e g v+18*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_110_2 e g v*e^2+6*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^3+12*SmallGap.ReducedLayers.low1_101_0 e g v*e^1+18*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_101_2 e g v*e^3+3*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_020_2 e g v+3*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_1 e g v+6*SmallGap.ReducedLayers.low1_011_2 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_3 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    7980 1) .v) (.rational 287910 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 5100 1)
    .v) (.rational 135240 1)) .v) (.rational 2218590 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12750 1) .v) (.rational 200460 1)) .v) (.rational 2706300 1)) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 86550 1) .v) (.rational 1122240 1)) .v)
    (.rational 10723680 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 259650 1) .v) (.rational
    2252460 1)) .v) (.rational 18023190 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    281550 1) .v) (.rational 1418040 1)) .v) (.rational 10287720 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 689400 1) .v) (.rational
    5986332 1)) .v) (.rational 36504340 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2412900
    1) .v) (.rational 15377214 1)) .v) (.rational 79023546 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3269100 1) .v) (.rational 14393310 1)) .v) (.rational 63112122 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2140500 1) .v) (.rational 6081042 1)) .v)
    (.rational 22739062 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 3390966 1) .v) (.rational 22669374 1)) .v) (.rational
    93119253 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 13563864 1) .v) (.rational 71510112
    1)) .v) (.rational 249593568 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 21934500 1)
    .v) (.rational 88820259 1)) .v) (.rational 261124767 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 18329976 1) .v) (.rational 55798989 1)) .v) (.rational 135156801 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8341878 1) .v) (.rational 18980859
    1)) .v) (.rational 36251088 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11441130 1) .v) (.rational 63648976 1))
    .v) (.rational 184444773 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 51485085 1) .v)
    (.rational 238710138 1)) .v) (.rational 596050688 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 96487440 1) .v) (.rational 368645594 1)) .v) (.rational 783272283 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 97442310 1) .v) (.rational 304975681 1)) .v)
    (.rational 540907872 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 57161190
    1) .v) (.rational 147249063 1)) .v) (.rational 212392397 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 19429065 1) .v) (.rational 42118169 1)) .v) (.rational 48071532
    1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 27863547 1) .v) (.rational 135018922 1)) .v) (.rational
    288890636 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 139317735 1) .v) (.rational
    586766662 1)) .v) (.rational 1102435571 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    296381643 1) .v) (.rational 1079884393 1)) .v) (.rational 1763054031 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 349620162 1) .v) (.rational 1101263666 1)) .v)
    (.rational 1542853956 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 249480069
    1) .v) (.rational 683282467 1)) .v) (.rational 810802151 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 109904127 1) .v) (.rational 265613647 1)) .v) (.rational
    264519132 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 29049861 1) .v)
    (.rational 63511750 1)) .v) (.rational 53191294 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    50236278 1) .v) (.rational 217773492 1)) .v) (.rational 359641041 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 276299529 1) .v) (.rational 1074647011 1)) .v) (.rational 1591671033
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 657046677 1) .v) (.rational 2288513855
    1)) .v) (.rational 3017552711 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    884463579 1) .v) (.rational 2760873800 1)) .v) (.rational 3216965360 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 740481636 1) .v) (.rational 2081137430 1)) .v)
    (.rational 2129952898 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 398285727
    1) .v) (.rational 1017502472 1)) .v) (.rational 912505259 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 136888125 1) .v) (.rational 322586726 1)) .v) (.rational
    254527277 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 28756701 1) .v)
    (.rational 63685225 1)) .v) (.rational 44734852 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 67714557 1) .v) (.rational 266675406 1)) .v) (.rational 353986248 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 406287342 1) .v) (.rational 1470703074 1)) .v)
    (.rational 1787536780 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1067169285 1) .v)
    (.rational 3547588658 1)) .v) (.rational 3928616727 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1611545790 1) .v) (.rational 4924021830 1)) .v) (.rational 4946734086
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1544266512 1) .v) (.rational
    4350594779 1)) .v) (.rational 3953478433 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 976952070 1) .v) (.rational 2552800974 1)) .v) (.rational 2097543212 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 410804229 1) .v) (.rational 1004328033 1))
    .v) (.rational 748477056 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    112411998 1) .v) (.rational 259903589 1)) .v) (.rational 176857161 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 18906897 1) .v) (.rational 41790628 1)) .v) (.rational
    26184638 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 68107398 1)
    .v) (.rational 245829818 1)) .v) (.rational 271588651 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 442698087 1) .v) (.rational 1496295170 1)) .v) (.rational 1542178672 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1272136152 1) .v) (.rational 4023820100 1)) .v)
    (.rational 3855859770 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2127069879 1) .v) (.rational 6299131187 1)) .v) (.rational 5596582790 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2291119602 1) .v) (.rational 6364102845 1)) .v)
    (.rational 5233508361 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1661532552 1) .v) (.rational 4343762682 1)) .v) (.rational 3305602836 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 822656016 1) .v) (.rational 2034128824 1)) .v)
    (.rational 1434830467 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 275608719
    1) .v) (.rational 648387622 1)) .v) (.rational 425316470 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 60404076 1) .v) (.rational 135987940 1)) .v) (.rational 83266668
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 8066721 1) .v) (.rational
    17438731 1)) .v) (.rational 9985152 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 50425623 1) .v) (.rational 167657496 1)) .v) (.rational 158622858
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 352979361 1) .v) (.rational 1115113856 1))
    .v) (.rational 1000074483 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1100992848 1)
    .v) (.rational 3302582419 1)) .v) (.rational 2800592968 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2017225395 1) .v) (.rational 5745271852 1)) .v) (.rational
    4597217689 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2408728905 1) .v)
    (.rational 6518794427 1)) .v) (.rational 4915091660 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1965086508 1) .v) (.rational 5061744264 1)) .v) (.rational 3594224538
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1115704113 1) .v) (.rational
    2742002796 1)) .v) (.rational 1834301349 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 440048571 1) .v) (.rational 1034847754 1)) .v) (.rational 652882251 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 117992262 1) .v) (.rational 266198948 1))
    .v) (.rational 158551343 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    20505363 1) .v) (.rational 44418239 1)) .v) (.rational 24965078 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2105157 1) .v) (.rational 4363078 1)) .v) (.rational
    2303350 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 26700954 1) .v) (.rational 82012332 1)) .v) (.rational 67968291 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 200257155 1) .v) (.rational 591288789 1)) .v) (.rational
    470688911 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 673550193 1) .v) (.rational
    1910198545 1)) .v) (.rational 1457645661 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1340842737 1) .v) (.rational 3650766249 1)) .v) (.rational 2665864191 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1755528999 1) .v) (.rational 4588858471 1))
    .v) (.rational 3202103988 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1588053126 1) .v) (.rational 3986985776 1)) .v) (.rational 2656037854 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1014022998 1) .v) (.rational 2447190254 1)) .v)
    (.rational 1555524936 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 458223624
    1) .v) (.rational 1064026527 1)) .v) (.rational 645121481 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 144406833 1) .v) (.rational 322825671 1)) .v) (.rational
    186593286 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 30619887 1) .v)
    (.rational 65851970 1)) .v) (.rational 36224397 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4074015 1) .v) (.rational 8397374 1)) .v) (.rational 4376545 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 295719 1) .v) (.rational 578261 1)) .v)
    (.rational 282542 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 9576981 1) .v) (.rational 27216892 1)) .v) (.rational
    20108241 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 76615848 1) .v) (.rational 211313554
    1)) .v) (.rational 151581458 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 276318795
    1) .v) (.rational 738921061 1)) .v) (.rational 513769746 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 593454225 1) .v) (.rational 1537499103 1)) .v) (.rational
    1034546358 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 844360818 1) .v)
    (.rational 2118121997 1)) .v) (.rational 1377301342 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 837281067 1) .v) (.rational 2032998359 1)) .v) (.rational 1275886398
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 592345578 1) .v) (.rational
    1391857371 1)) .v) (.rational 842136207 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 300588585 1) .v) (.rational 683354581 1)) .v) (.rational 398167364 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 108265098 1) .v) (.rational 237991396 1))
    .v) (.rational 133354395 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    26875965 1) .v) (.rational 57038959 1)) .v) (.rational 30667200 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4336209 1) .v) (.rational 8853930 1)) .v) (.rational
    4549149 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 403902 1) .v)
    (.rational 787644 1)) .v) (.rational 383742 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 16113 1) .v) (.rational 29553 1)) .v) (.rational 13440 1)) (.pow .g 12))))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2086764 1) .v) (.rational 5490834 1)) .v) (.rational 3665538 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 17737494 1) .v) (.rational 45658762 1)) .v) (.rational 29853834 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 68263698 1) .v) (.rational 171726464 1)) .v)
    (.rational 109815725 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 157227855
    1) .v) (.rational 386161619 1)) .v) (.rational 241169423 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 241289415 1) .v) (.rational 578070789 1)) .v) (.rational
    352082200 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 259833366 1) .v)
    (.rational 606713413 1)) .v) (.rational 359876755 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 201246753 1) .v) (.rational 457635493 1)) .v) (.rational 263995861 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 112910688 1) .v) (.rational
    249835134 1)) .v) (.rational 139960625 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 45518895 1) .v) (.rational 97892684 1)) .v) (.rational 53166593 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 12848700 1) .v) (.rational 26811419 1)) .v)
    (.rational 14085335 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2407497 1)
    .v) (.rational 4860949 1)) .v) (.rational 2462002 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 268329 1) .v) (.rational 521781 1)) .v) (.rational 253452 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 13410 1) .v) (.rational 24915 1)) .v)
    (.rational 11505 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 208800 1) .v) (.rational 508714 1)) .v)
    (.rational 310038 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1879200 1) .v) (.rational
    4509846 1)) .v) (.rational 2711214 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    7684839 1) .v) (.rational 18147778 1)) .v) (.rational 10748943 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 18883512 1) .v) (.rational 43835038 1)) .v) (.rational
    25547988 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 31059060 1) .v)
    (.rational 70799099 1)) .v) (.rational 40549672 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36035160 1) .v) (.rational 80578813 1)) .v) (.rational 45291653 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 30254511 1) .v) (.rational 66296846 1)) .v)
    (.rational 36519258 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 18532182 1)
    .v) (.rational 39753451 1)) .v) (.rational 21428843 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8225967 1) .v) (.rational 17253248 1)) .v) (.rational 9086428 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2582700 1) .v) (.rational 5289149 1)) .v)
    (.rational 2716437 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 545010 1)
    .v) (.rational 1087844 1)) .v) (.rational 543595 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 69486 1) .v) (.rational 134855 1)) .v) (.rational 65369 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 4053 1) .v) (.rational 7623 1)) .v)
    (.rational 3570 1)) (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2213

namespace FullLow2214
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    4*SmallGap.PolarCoefficientsLow3.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow4.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsLow2.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow3.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow4.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow3.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    9*SmallGap.PolarCoefficientsLow2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow3.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    24*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    18*SmallGap.PolarCoefficientsLow2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow3.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    30*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsLow1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(60*SmallGap.ReducedLayers.low0_100_0 e g
    v*e^1+120*SmallGap.ReducedLayers.low0_100_1 e g v*e^2+120*SmallGap.ReducedLayers.low0_100_2 e
    g v*e^3+60*SmallGap.ReducedLayers.low0_100_3 e g v*e^4+12*SmallGap.ReducedLayers.low0_100_4 e
    g v*e^5+12*SmallGap.ReducedLayers.low0_010_1 e g v+36*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^1+36*SmallGap.ReducedLayers.low0_010_3 e g v*e^2+12*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^3+6*SmallGap.ReducedLayers.low0_001_0 e g v+24*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^1+36*SmallGap.ReducedLayers.low0_001_2 e g v*e^2+24*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^3+6*SmallGap.ReducedLayers.low0_001_4 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.low1_200_0 e g v*e^1+30*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^2+30*SmallGap.ReducedLayers.low1_200_2 e g v*e^3+15*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_200_4 e g v*e^5+6*SmallGap.ReducedLayers.low1_110_1 e g
    v+18*SmallGap.ReducedLayers.low1_110_2 e g v*e^1+18*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_110_4 e g v*e^3+3*SmallGap.ReducedLayers.low1_101_0 e g
    v+12*SmallGap.ReducedLayers.low1_101_1 e g v*e^1+18*SmallGap.ReducedLayers.low1_101_2 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_101_3 e g v*e^3+3*SmallGap.ReducedLayers.low1_101_4 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_020_3 e g v+3*SmallGap.ReducedLayers.low1_020_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_2 e g v+6*SmallGap.ReducedLayers.low1_011_3 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_4 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10500 1)
    .v) (.rational 433650 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 5400 1) .v)
    (.rational 165900 1)) .v) (.rational 3189120 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    13500 1) .v) (.rational 239700 1)) .v) (.rational 3802230 1)) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 88500 1) .v) (.rational 1288740 1)) .v) (.rational
    14629290 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 265500 1) .v) (.rational 2496720 1))
    .v) (.rational 23907240 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 288000 1) .v)
    (.rational 1453680 1)) .v) (.rational 13059990 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 680100 1) .v) (.rational 6480528 1)) .v)
    (.rational 46997995 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2380350 1) .v) (.rational
    16075266 1)) .v) (.rational 98632044 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    3226050 1) .v) (.rational 14187870 1)) .v) (.rational 75214653 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2114250 1) .v) (.rational 5393898 1)) .v) (.rational
    25099918 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 3215616 1) .v) (.rational 23291430 1)) .v) (.rational 112572866 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 12862464 1) .v) (.rational 71360442 1)) .v)
    (.rational 292456262 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 20805768 1) .v)
    (.rational 85080219 1)) .v) (.rational 292953150 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 17398680 1) .v) (.rational 50520681 1)) .v) (.rational 142231631 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7928232 1) .v) (.rational 15996183 1)) .v)
    (.rational 34530590 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 10364148 1) .v) (.rational 62198742 1)) .v)
    (.rational 208304412 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 46638666 1) .v)
    (.rational 228150144 1)) .v) (.rational 654063662 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 87426408 1) .v) (.rational 342856854 1)) .v) (.rational 828344475 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 88345320 1) .v) (.rational 274750569 1)) .v)
    (.rational 545219193 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 51880752
    1) .v) (.rational 128313189 1)) .v) (.rational 201311294 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 17662134 1) .v) (.rational 35716215 1)) .v) (.rational 42387087
    1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 23880648 1) .v) (.rational 124840362 1)) .v) (.rational
    302698856 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 119403240 1) .v) (.rational
    533804418 1)) .v) (.rational 1127119518 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    254088705 1) .v) (.rational 964944942 1)) .v) (.rational 1751151661 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 299935380 1) .v) (.rational 965989836 1)) .v)
    (.rational 1482238396 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 214280046
    1) .v) (.rational 589376109 1)) .v) (.rational 751404906 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 94559916 1) .v) (.rational 226490583 1)) .v) (.rational 237107701
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 25046793 1) .v) (.rational
    54018867 1)) .v) (.rational 46713119 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    40161114 1) .v) (.rational 188037030 1)) .v) (.rational 345804460 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 220886127 1) .v) (.rational 917009310 1)) .v) (.rational 1500389284 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 525473715 1) .v) (.rational 1929674292 1))
    .v) (.rational 2784068301 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    707985765 1) .v) (.rational 2302483200 1)) .v) (.rational 2903201893 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 593645700 1) .v) (.rational 1720816638 1)) .v)
    (.rational 1883311163 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 320029269
    1) .v) (.rational 837794679 1)) .v) (.rational 794912163 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 110315007 1) .v) (.rational 266075019 1)) .v) (.rational
    220739343 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 23250495 1) .v)
    (.rational 52946715 1)) .v) (.rational 39142942 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 49479798 1) .v) (.rational 210570162 1)) .v) (.rational 306950568 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 296878788 1) .v) (.rational 1151116422 1)) .v)
    (.rational 1526065204 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 780199104 1) .v)
    (.rational 2754198519 1)) .v) (.rational 3302032572 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1179606630 1) .v) (.rational 3797454843 1)) .v) (.rational 4098072657
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1132684692 1) .v) (.rational
    3341459388 1)) .v) (.rational 3237895962 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 718765656 1) .v) (.rational 1959885270 1)) .v) (.rational 1707663468 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 303490800 1) .v) (.rational 774341844 1))
    .v) (.rational 610593834 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    83473782 1) .v) (.rational 202207350 1)) .v) (.rational 145891922 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 14119302 1) .v) (.rational 32923755 1)) .v) (.rational
    21994416 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 44197152 1)
    .v) (.rational 172277214 1)) .v) (.rational 206802556 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 287281488 1) .v) (.rational 1041507540 1)) .v) (.rational 1160045970 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 826092840 1) .v) (.rational 2784744720 1)) .v)
    (.rational 2867510576 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1383414252 1) .v) (.rational 4341758103 1)) .v) (.rational 4122301831 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1494061332 1) .v) (.rational 4379674965 1)) .v)
    (.rational 3830303709 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1087813656 1) .v) (.rational 2994585690 1)) .v) (.rational 2415530244 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 541574088 1) .v) (.rational 1410474036 1)) .v)
    (.rational 1053494095 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 182752608
    1) .v) (.rational 454155558 1)) .v) (.rational 315974442 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 40411176 1) .v) (.rational 96579420 1)) .v) (.rational 62966059
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 5451576 1) .v) (.rational
    12580689 1)) .v) (.rational 7703677 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 27868728 1) .v) (.rational 99900858 1)) .v) (.rational 101859242
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 195081096 1) .v) (.rational 660834270 1)) .v)
    (.rational 635963774 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 609003897 1) .v)
    (.rational 1948892880 1)) .v) (.rational 1765731177 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1117969134 1) .v) (.rational 3382057308 1)) .v) (.rational 2879491584
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1339339779 1) .v) (.rational
    3837339654 1)) .v) (.rational 3067765181 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1098081288 1) .v) (.rational 2988898974 1)) .v) (.rational 2244876474 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 627806964 1) .v) (.rational 1630258326 1))
    .v) (.rational 1152512984 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    249944394 1) .v) (.rational 622093788 1)) .v) (.rational 415110452 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 67838919 1) .v) (.rational 162478593 1)) .v) (.rational
    102590925 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 11971332 1) .v)
    (.rational 27623367 1)) .v) (.rational 16505149 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1251789 1) .v) (.rational 2768205 1)) .v) (.rational 1555901 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11770782 1)
    .v) (.rational 38886306 1)) .v) (.rational 34498221 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 88280865 1) .v) (.rational 279078228 1)) .v) (.rational 236998616 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 297235689 1) .v) (.rational 898667550 1)) .v)
    (.rational 729052326 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 593105526
    1) .v) (.rational 1715140428 1)) .v) (.rational 1327130757 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 779647125 1) .v) (.rational 2158071774 1)) .v) (.rational
    1591163026 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 709536597 1) .v)
    (.rational 1882672650 1)) .v) (.rational 1322359659 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 456949818 1) .v) (.rational 1164573084 1)) .v) (.rational 779560869 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 208909035 1) .v) (.rational
    512475324 1)) .v) (.rational 327191876 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 66865527 1) .v) (.rational 158109096 1)) .v) (.rational 96318795 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 14469708 1) .v) (.rational 32958159 1)) .v)
    (.rational 19133214 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1976973 1)
    .v) (.rational 4314861 1)) .v) (.rational 2374584 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 148509 1) .v) (.rational 305967 1)) .v) (.rational 157458 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2992086 1) .v) (.rational 9118236 1)) .v) (.rational 7168200 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 23936688 1) .v) (.rational 70512444 1)) .v) (.rational 53671146 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 86438562 1) .v) (.rational 245940984 1)) .v)
    (.rational 180932764 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 186177894
    1) .v) (.rational 511418256 1)) .v) (.rational 363085852 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 266180391 1) .v) (.rational 705853908 1)) .v) (.rational
    483021333 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 265889028 1) .v)
    (.rational 680845908 1)) .v) (.rational 448686950 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 190074531 1) .v) (.rational 470217195 1)) .v) (.rational 298257293 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 97841052 1) .v) (.rational
    233942175 1)) .v) (.rational 142755501 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 35923347 1) .v) (.rational 83004144 1)) .v) (.rational 48687121 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9149148 1) .v) (.rational 20394030 1)) .v)
    (.rational 11475754 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1527615 1)
    .v) (.rational 3269475 1)) .v) (.rational 1756899 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 149070 1) .v) (.rational 303123 1)) .v) (.rational 154053 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 6348 1) .v) (.rational 11994 1)) .v)
    (.rational 5646 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 346680 1) .v) (.rational 974568 1)) .v) (.rational
    688188 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2946780 1) .v) (.rational 8075028 1))
    .v) (.rational 5572218 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 11358534 1) .v)
    (.rational 30309438 1)) .v) (.rational 20405763 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 26253405 1) .v) (.rational 68157786 1)) .v) (.rational 44700688 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 40529481 1) .v) (.rational 102297726 1)) .v)
    (.rational 65263742 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 44036304 1)
    .v) (.rational 108001026 1)) .v) (.rational 66939669 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 34542363 1) .v) (.rational 82276614 1)) .v) (.rational 49484366 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 19719546 1) .v) (.rational 45589383
    1)) .v) (.rational 26574646 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8136945 1) .v) (.rational 18239931 1)) .v) (.rational 10289553 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2368836 1) .v) (.rational 5138796 1)) .v) (.rational
    2799367 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 462339 1) .v)
    (.rational 967278 1)) .v) (.rational 507041 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 54393 1) .v) (.rational 109101 1)) .v) (.rational 54708 1)) (.pow .g 11)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2922 1) .v) (.rational 5565 1)) .v) (.rational
    2643 1)) (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2214

namespace FullLow2215
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsLow4.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsLow3.c230 e f g v*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsLow4.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsLow4.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    9*SmallGap.PolarCoefficientsLow3.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsLow4.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    24*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    18*SmallGap.PolarCoefficientsLow3.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsLow4.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    30*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsLow2.c410 e f g v*e*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_0 e g v+60*SmallGap.ReducedLayers.low0_100_1 e g
    v*e^1+120*SmallGap.ReducedLayers.low0_100_2 e g v*e^2+120*SmallGap.ReducedLayers.low0_100_3 e
    g v*e^3+60*SmallGap.ReducedLayers.low0_100_4 e g v*e^4+12*SmallGap.ReducedLayers.low0_010_2 e
    g v+36*SmallGap.ReducedLayers.low0_010_3 e g v*e^1+36*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^2+12*SmallGap.ReducedLayers.low0_010_5 e g v*e^3+6*SmallGap.ReducedLayers.low0_001_1 e g
    v+24*SmallGap.ReducedLayers.low0_001_2 e g v*e^1+36*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^2+24*SmallGap.ReducedLayers.low0_001_4 e g v*e^3+6*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_0 e g v+15*SmallGap.ReducedLayers.low1_200_1 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_200_2 e g v*e^2+30*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_200_4 e g v*e^4+6*SmallGap.ReducedLayers.low1_110_2 e g
    v+18*SmallGap.ReducedLayers.low1_110_3 e g v*e^1+18*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_110_5 e g v*e^3+3*SmallGap.ReducedLayers.low1_101_1 e g
    v+12*SmallGap.ReducedLayers.low1_101_2 e g v*e^1+18*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_101_4 e g v*e^3+3*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_020_4 e g v+3*SmallGap.ReducedLayers.low1_020_5 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_3 e g v+6*SmallGap.ReducedLayers.low1_011_4 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_5 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8820 1) .v) (.rational
    436170 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 3420 1) .v) (.rational 131040
    1)) .v) (.rational 3071106 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 8550 1) .v)
    (.rational 184500 1)) .v) (.rational 3575448 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 54600 1) .v) (.rational 957912 1)) .v) (.rational 13396044 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 163800 1) .v) (.rational 1785696 1)) .v) (.rational
    21252312 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 177750 1) .v) (.rational 944844
    1)) .v) (.rational 11065194 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 407940 1) .v) (.rational 4551354 1)) .v) (.rational 40624749 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1427790 1) .v) (.rational 10848993 1)) .v)
    (.rational 82460940 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1935810 1) .v)
    (.rational 8893299 1)) .v) (.rational 59705730 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1270050 1) .v) (.rational 2878539 1)) .v) (.rational 18122364 1)) (.pow .g
    3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1865130 1) .v) (.rational 15537108 1)) .v) (.rational 91203336 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7460520 1) .v) (.rational 46021548 1)) .v) (.rational 229037094 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 12072426 1) .v) (.rational 52149567 1)) .v)
    (.rational 218414067 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10105458
    1) .v) (.rational 28648113 1)) .v) (.rational 98044377 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4613388 1) .v) (.rational 8081049 1)) .v) (.rational 20640501 1)) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 5762736 1) .v) (.rational 39420480 1)) .v) (.rational 156939411 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 25932312 1) .v) (.rational 140950230 1)) .v) (.rational
    477606600 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 48631044 1) .v) (.rational
    204977292 1)) .v) (.rational 580345641 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 49191198 1) .v) (.rational 157741089 1)) .v) (.rational 360993936 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 28939050 1) .v) (.rational 70420179 1)) .v)
    (.rational 123281613 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 9878358 1)
    .v) (.rational 18849165 1)) .v) (.rational 23456784 1)) (.pow .g 5)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    12561282 1) .v) (.rational 74483646 1)) .v) (.rational 209768286 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 62806410 1) .v) (.rational 312668088 1)) .v) (.rational 760631895 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 133715388 1) .v) (.rational 553543518 1))
    .v) (.rational 1144861002 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    158023092 1) .v) (.rational 542107218 1)) .v) (.rational 933754344 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 113119968 1) .v) (.rational 324171993 1)) .v) (.rational
    454619223 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 50066004 1) .v)
    (.rational 122912877 1)) .v) (.rational 138364110 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13311678 1) .v) (.rational 29257863 1)) .v) (.rational 26788281 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 19589028 1) .v) (.rational 103533174 1)) .v)
    (.rational 216663807 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 107739654 1) .v)
    (.rational 498225027 1)) .v) (.rational 920250522 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 256461954 1) .v) (.rational 1034380053 1)) .v) (.rational 1668691557 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 346031388 1) .v) (.rational 1219106496 1))
    .v) (.rational 1699966350 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    290857092 1) .v) (.rational 902848758 1)) .v) (.rational 1080460812 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 157364256 1) .v) (.rational 438023370 1)) .v)
    (.rational 450514146 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 54500736
    1) .v) (.rational 139661178 1)) .v) (.rational 125340921 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 11549502 1) .v) (.rational 28096647 1)) .v) (.rational 22611774
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21727632 1) .v) (.rational
    103728156 1)) .v) (.rational 169272750 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    130365792 1) .v) (.rational 561451824 1)) .v) (.rational 827602704 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 342865536 1) .v) (.rational 1331228415 1)) .v) (.rational
    1761367371 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 519307920 1) .v)
    (.rational 1822464231 1)) .v) (.rational 2154076695 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 500156292 1) .v) (.rational 1597590678 1)) .v) (.rational 1684429098
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 318801360 1) .v) (.rational
    938015742 1)) .v) (.rational 885899016 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 135418434 1) .v) (.rational 373133112 1)) .v) (.rational 319111980 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 37520094 1) .v) (.rational 98633982 1)) .v)
    (.rational 77578554 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6396522 1)
    .v) (.rational 16304439 1)) .v) (.rational 11958039 1)) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 16719960 1) .v) (.rational 72571488 1)) .v) (.rational
    96309075 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 108679740 1) .v) (.rational
    435369600 1)) .v) (.rational 533127648 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    312801120 1) .v) (.rational 1156658862 1)) .v) (.rational 1301950599 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 524929020 1) .v) (.rational 1795795008 1)) .v)
    (.rational 1853730438 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 568926624
    1) .v) (.rational 1809669078 1)) .v) (.rational 1713288648 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 416417868 1) .v) (.rational 1241357106 1)) .v) (.rational
    1081519704 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 208814124 1) .v)
    (.rational 589470138 1)) .v) (.rational 475811400 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 71114910 1) .v) (.rational 192279699 1)) .v) (.rational 145046790 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 15897546 1) .v) (.rational 41566515
    1)) .v) (.rational 29516979 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2168892 1) .v) (.rational 5504115 1)) .v) (.rational 3682812 1)) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8476344 1) .v) (.rational 33581418
    1)) .v) (.rational 37491762 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 59334408 1) .v)
    (.rational 220754448 1)) .v) (.rational 231570243 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 185421252 1) .v) (.rational 647951424 1)) .v) (.rational 637000956 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 341180208 1) .v) (.rational 1121587374 1))
    .v) (.rational 1031851479 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    410353554 1) .v) (.rational 1273182270 1)) .v) (.rational 1096227888 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 338419254 1) .v) (.rational 995944938 1)) .v)
    (.rational 804129984 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 195065232
    1) .v) (.rational 547973766 1)) .v) (.rational 416431470 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 78493308 1) .v) (.rational 211893780 1)) .v) (.rational 152253753
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 21590820 1) .v) (.rational
    56302653 1)) .v) (.rational 38383809 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3870564 1) .v) (.rational 9758349 1)) .v) (.rational 6308304 1)) (.pow .g 9))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 411348 1) .v) (.rational 994341 1)) .v) (.rational
    604053 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 2544696 1) .v) (.rational 9231840 1)) .v) (.rational 8901624 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 19085220 1) .v) (.rational 65903922 1)) .v) (.rational
    60597942 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 64330692 1) .v) (.rational
    211430082 1)) .v) (.rational 185017557 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 128690328 1) .v) (.rational 402901038 1)) .v) (.rational 335110158 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 169887480 1) .v) (.rational 507615270 1))
    .v) (.rational 401162442 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    155597706 1) .v) (.rational 444987207 1)) .v) (.rational 334381722 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 101102658 1) .v) (.rational 277736187 1)) .v) (.rational
    198768072 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 46776348 1) .v)
    (.rational 123872898 1)) .v) (.rational 84599580 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 15205092 1) .v) (.rational 38906424 1)) .v) (.rational 25386366 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3355446 1) .v) (.rational 8287005 1)) .v)
    (.rational 5158356 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 469614 1)
    .v) (.rational 1110381 1)) .v) (.rational 654627 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 36264 1) .v) (.rational 80202 1)) .v) (.rational 43938 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    342792 1) .v) (.rational 1142316 1)) .v) (.rational 970404 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2742336 1) .v) (.rational 8791848 1)) .v) (.rational 7207752 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9915228 1) .v) (.rational 30570600 1)) .v) (.rational
    24143832 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 21415716 1) .v)
    (.rational 63512226 1)) .v) (.rational 48256341 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 30762624 1) .v) (.rational 87823770 1)) .v) (.rational 64143120 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 30947724 1) .v) (.rational 85162380 1)) .v)
    (.rational 59775321 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 22347912 1)
    .v) (.rational 59369919 1)) .v) (.rational 40055901 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11664948 1) .v) (.rational 29955981 1)) .v) (.rational 19432554 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4364826 1) .v) (.rational 10836072
    1)) .v) (.rational 6756096 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1140684 1) .v) (.rational 2730294 1)) .v) (.rational 1632345 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 197352 1) .v) (.rational 451815 1)) .v) (.rational 257397 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 20256 1) .v) (.rational 43575 1))
    .v) (.rational 23319 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 930 1)
    .v) (.rational 1812 1)) .v) (.rational 882 1)) (.pow .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2215

namespace FullLow2216
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  12*SmallGap.PolarCoefficientsLow4.c230 e f g v*((e+f)*(e+f+g))^3+
    9*SmallGap.PolarCoefficientsLow4.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    24*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    18*SmallGap.PolarCoefficientsLow4.c320 e f g v*e*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow3.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    30*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsLow3.c410 e f g v*e*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_1 e g v+60*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^1+120*SmallGap.ReducedLayers.low0_100_3 e g v*e^2+120*SmallGap.ReducedLayers.low0_100_4 e
    g v*e^3+12*SmallGap.ReducedLayers.low0_010_3 e g v+36*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^1+36*SmallGap.ReducedLayers.low0_010_5 e g v*e^2+12*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^3+6*SmallGap.ReducedLayers.low0_001_2 e g v+24*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^1+36*SmallGap.ReducedLayers.low0_001_4 e g v*e^2+24*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_1 e g v+15*SmallGap.ReducedLayers.low1_200_2 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_200_3 e g v*e^2+30*SmallGap.ReducedLayers.low1_200_4 e g
    v*e^3+6*SmallGap.ReducedLayers.low1_110_3 e g v+18*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_110_5 e g v*e^2+6*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_101_2 e g v+12*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_101_4 e g v*e^2+12*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_020_5 e g v+3*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_4 e g v+6*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_6 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4620 1) .v) (.rational 292950 1))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1200 1) .v) (.rational 65100 1)) .v)
    (.rational 1981620 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3000 1) .v) (.rational
    89340 1)) .v) (.rational 2251170 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 18810 1) .v) (.rational 450948 1)) .v) (.rational 8239674 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 56430 1) .v) (.rational 807204 1)) .v) (.rational 12674346 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 61260 1) .v) (.rational 380436 1)) .v) (.rational
    6267948 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 137700 1) .v) (.rational 2034048 1)) .v) (.rational 23614176 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 481950 1) .v) (.rational 4641168 1)) .v) (.rational 46281390 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 653730 1) .v) (.rational 3473808 1)) .v)
    (.rational 31668828 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 429450 1)
    .v) (.rational 864084 1)) .v) (.rational 8565882 1)) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 612870 1) .v) (.rational
    6616908 1)) .v) (.rational 49650336 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2451480
    1) .v) (.rational 18880776 1)) .v) (.rational 120316488 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3969090 1) .v) (.rational 20131272 1)) .v) (.rational 108774318 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3327090 1) .v) (.rational 9938244 1)) .v)
    (.rational 44522778 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1522920 1)
    .v) (.rational 2290344 1)) .v) (.rational 7625214 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1824120 1) .v)
    (.rational 15961224 1)) .v) (.rational 79134570 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8208540 1) .v) (.rational 55497216 1)) .v) (.rational 233102502 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 15403800 1) .v) (.rational 77736432 1)) .v) (.rational
    271125048 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 15606780 1) .v)
    (.rational 56951376 1)) .v) (.rational 158539092 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9208500 1) .v) (.rational 23964216 1)) .v) (.rational 49419336 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3157560 1) .v) (.rational 6067596 1)) .v)
    (.rational 8242938 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3767010 1) .v) (.rational 28243296
    1)) .v) (.rational 96351210 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 18835050 1) .v)
    (.rational 116207292 1)) .v) (.rational 339944742 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 40134300 1) .v) (.rational 201070440 1)) .v) (.rational 495358248 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 47526900 1) .v) (.rational 192186156 1)) .v)
    (.rational 389268252 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 34143240
    1) .v) (.rational 112424328 1)) .v) (.rational 182378832 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 15192780 1) .v) (.rational 42056904 1)) .v) (.rational 53944632
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4068870 1) .v) (.rational
    10020228 1)) .v) (.rational 10438578 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5420160 1) .v) (.rational 35688540 1)) .v) (.rational 88266690 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 29810880 1) .v) (.rational 169239888 1)) .v) (.rational 366771414 1)) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 71041500 1) .v) (.rational 346276884 1)) .v)
    (.rational 649965084 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 96105150
    1) .v) (.rational 402960012 1)) .v) (.rational 647930220 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 81147000 1) .v) (.rational 295998336 1)) .v) (.rational 405368100
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 44199960 1) .v) (.rational
    143523168 1)) .v) (.rational 168535236 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15447840 1) .v) (.rational 46165020 1)) .v) (.rational 47610492 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3310650 1) .v) (.rational 9441360 1)) .v)
    (.rational 8845794 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5319450 1)
    .v) (.rational 31033020 1)) .v) (.rational 58639596 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 31916700 1) .v) (.rational 166095060 1)) .v) (.rational 281743536 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 84062910 1) .v) (.rational 389957652 1)) .v)
    (.rational 589843110 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 127744800
    1) .v) (.rational 530171700 1)) .v) (.rational 711959544 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 123727860 1) .v) (.rational 463787568 1)) .v) (.rational
    553247184 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 79526340 1) .v)
    (.rational 273562908 1)) .v) (.rational 292239288 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 34167240 1) .v) (.rational 110147508 1)) .v) (.rational 107049864 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 9603990 1) .v) (.rational 29660616
    1)) .v) (.rational 26714094 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1664940 1) .v) (.rational 5007636 1)) .v) (.rational 4229940 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 3383100 1) .v) (.rational 17543472 1)) .v)
    (.rational 26509380 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 21990150 1) .v)
    (.rational 104303964 1)) .v) (.rational 144685122 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 63400320 1) .v) (.rational 275156724 1)) .v) (.rational 349010982 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 106810110 1) .v) (.rational 425554428 1)) .v)
    (.rational 492689418 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 116524800
    1) .v) (.rational 429182076 1)) .v) (.rational 454279566 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 86123250 1) .v) (.rational 296396220 1)) .v) (.rational 288518604
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 43767480 1) .v) (.rational
    142641780 1)) .v) (.rational 128915754 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15165150 1) .v) (.rational 47441412 1)) .v) (.rational 40218630 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3462000 1) .v) (.rational 10496808 1)) .v)
    (.rational 8398560 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 483300 1)
    .v) (.rational 1421184 1)) .v) (.rational 1069500 1)) (.pow .g 9)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1252260 1) .v) (.rational 5788584 1)) .v)
    (.rational 7257762 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 8765820 1) .v) (.rational
    37771272 1)) .v) (.rational 44300844 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    27443610 1) .v) (.rational 110276268 1)) .v) (.rational 120680382 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 50706000 1) .v) (.rational 190468020 1)) .v) (.rational
    194282988 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 61410780 1) .v)
    (.rational 216663828 1)) .v) (.rational 206226870 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 51167610 1) .v) (.rational 170742744 1)) .v) (.rational 152189334 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 29911110 1) .v) (.rational 95200884
    1)) .v) (.rational 79894134 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    12258420 1) .v) (.rational 37518888 1)) .v) (.rational 29810712 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3449220 1) .v) (.rational 10204872 1)) .v) (.rational
    7699008 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 634830 1) .v)
    (.rational 1812984 1)) .v) (.rational 1294374 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 69210 1) .v) (.rational 188256 1)) .v) (.rational 125370 1)) (.pow .g 10))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 204120 1) .v)
    (.rational 844992 1)) .v) (.rational 904932 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1530900 1) .v) (.rational 5994648 1)) .v) (.rational 6097518 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5168880 1) .v) (.rational 19151400 1)) .v) (.rational 18465924 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10379070 1) .v) (.rational 36447612
    1)) .v) (.rational 33282876 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    13787820 1) .v) (.rational 46034856 1)) .v) (.rational 39828672 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12744270 1) .v) (.rational 40642284 1)) .v) (.rational
    33375978 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 8383680 1) .v)
    (.rational 25677792 1)) .v) (.rational 20073060 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3939840 1) .v) (.rational 11651232 1)) .v) (.rational 8696124 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1304640 1) .v) (.rational 3737700 1)) .v)
    (.rational 2667390 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 293760 1)
    .v) (.rational 814188 1)) .v) (.rational 554244 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 41850 1) .v) (.rational 111000 1)) .v) (.rational 71388 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3240 1) .v) (.rational 7956 1)) .v) (.rational
    4716 1)) (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2216

namespace FullLow2217
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  24*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow4.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    30*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsLow4.c410 e f g v*e*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_2 e g v+60*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^1+120*SmallGap.ReducedLayers.low0_100_4 e g v*e^2+12*SmallGap.ReducedLayers.low0_010_4 e g
    v+36*SmallGap.ReducedLayers.low0_010_5 e g v*e^1+36*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^2+6*SmallGap.ReducedLayers.low0_001_3 e g v+24*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^1+36*SmallGap.ReducedLayers.low0_001_5 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_2 e g v+15*SmallGap.ReducedLayers.low1_200_3 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_200_4 e g v*e^2+6*SmallGap.ReducedLayers.low1_110_4 e g
    v+18*SmallGap.ReducedLayers.low1_110_5 e g v*e^1+18*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^2+3*SmallGap.ReducedLayers.low1_101_3 e g v+12*SmallGap.ReducedLayers.low1_101_4 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_101_5 e g v*e^2+3*SmallGap.ReducedLayers.low1_020_6 e g
    v+3*SmallGap.ReducedLayers.low1_020_7 e g v*e^1+3*SmallGap.ReducedLayers.low1_011_5 e g
    v+6*SmallGap.ReducedLayers.low1_011_6 e g v*e^1+3*SmallGap.ReducedLayers.low1_011_7 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1380 1) .v) (.rational 126690 1)) .e) (.add
    (.mul (.add (.mul (.add (.mul (.rational 180 1) .v) (.rational 18600 1)) .v) (.rational 826194
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 450 1) .v) (.rational 24900 1)) .v)
    (.rational 915372 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2790 1) .v) (.rational 123120 1)) .v) (.rational 3284136 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8370 1) .v) (.rational 211500 1)) .v) (.rational 4894062 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 9090 1) .v) (.rational 86880 1)) .v) (.rational 2293572 1)) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 20160 1)
    .v) (.rational 530880 1)) .v) (.rational 8911554 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 70560 1) .v) (.rational 1157280 1)) .v) (.rational 16849458 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 95760 1) .v) (.rational 777300 1)) .v) (.rational 10867434
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 63000 1) .v) (.rational 117480
    1)) .v) (.rational 2568054 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 87930 1) .v) (.rational 1655040 1)) .v) (.rational
    17551530 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 351720 1) .v) (.rational 4542600 1))
    .v) (.rational 41028564 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 569880 1) .v)
    (.rational 4521240 1)) .v) (.rational 35137464 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 478620 1) .v) (.rational 1932840 1)) .v) (.rational 13016412 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 219870 1) .v) (.rational 294360 1)) .v)
    (.rational 1669098 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 253440 1) .v) (.rational 3803100 1)) .v)
    (.rational 25813812 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1140480 1) .v) (.rational
    12850140 1)) .v) (.rational 73635348 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2142360 1) .v) (.rational 17296860 1)) .v) (.rational 82129986 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2176020 1) .v) (.rational 11987640 1)) .v) (.rational
    45315702 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1289700 1) .v)
    (.rational 4688040 1)) .v) (.rational 12974094 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 445320 1) .v) (.rational 1099020 1)) .v) (.rational 1916718 1)) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 496800 1) .v) (.rational 6261420 1)) .v) (.rational 28288644 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2484000 1) .v) (.rational 25231380 1)) .v) (.rational
    97190448 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5300550 1) .v) (.rational
    42638340 1)) .v) (.rational 137517978 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6298200 1) .v) (.rational 39763020 1)) .v) (.rational 104878632 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4551480 1) .v) (.rational 22772580 1)) .v)
    (.rational 48025104 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2043540 1)
    .v) (.rational 8429940 1)) .v) (.rational 14206944 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 554130 1) .v) (.rational 2020260 1)) .v) (.rational 2851698 1)) (.pow
    .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 655560 1) .v) (.rational 7043220 1)) .v) (.rational
    22373388 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3605580 1) .v) (.rational 32862600
    1)) .v) (.rational 90982080 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8609940 1)
    .v) (.rational 66214020 1)) .v) (.rational 157957092 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 11702880 1) .v) (.rational 76126560 1)) .v) (.rational 155039904 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9961920 1) .v) (.rational 55618980
    1)) .v) (.rational 96627282 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5492340 1) .v) (.rational 27095880 1)) .v) (.rational 40784502 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1951740 1) .v) (.rational 8854200 1)) .v) (.rational
    11922762 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 427320 1) .v)
    (.rational 1853160 1)) .v) (.rational 2305554 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 555660 1) .v) (.rational 5075280 1)) .v) (.rational 11977380 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3333960 1) .v) (.rational 26796420 1)) .v) (.rational
    56524104 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 8806320 1) .v) (.rational
    62219400 1)) .v) (.rational 116547564 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13470300 1) .v) (.rational 84059580 1)) .v) (.rational 139415292 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 13191930 1) .v) (.rational 73612560 1)) .v)
    (.rational 108521778 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8619480 1)
    .v) (.rational 43879980 1)) .v) (.rational 58243836 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3787560 1) .v) (.rational 18030720 1)) .v) (.rational 21963564 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1096200 1) .v) (.rational 4991580
    1)) .v) (.rational 5673384 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    197010 1) .v) (.rational 868260 1)) .v) (.rational 924372 1)) (.pow .g 8)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 272160 1) .v) (.rational 2096280 1)) .v) (.rational
    3853656 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1769040 1) .v) (.rational 12315240
    1)) .v) (.rational 20711376 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5120280 1)
    .v) (.rational 32209380 1)) .v) (.rational 49353804 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8702100 1) .v) (.rational 49651920 1)) .v) (.rational 69239880 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9634140 1) .v) (.rational 50285880
    1)) .v) (.rational 64029648 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7277040 1) .v) (.rational 35194140 1)) .v) (.rational 41250348 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3810600 1) .v) (.rational 17329800 1)) .v) (.rational
    18897714 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1373400 1) .v)
    (.rational 5946120 1)) .v) (.rational 6083658 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 329580 1) .v) (.rational 1364340 1)) .v) (.rational 1310412 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 48870 1) .v) (.rational 191520 1)) .v) (.rational
    170622 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    58320 1) .v) (.rational 375840 1)) .v) (.rational 559224 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 408240 1) .v) (.rational 2426760 1)) .v) (.rational 3367656 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1284660 1) .v) (.rational 7036200 1)) .v) (.rational
    9079380 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2400840 1) .v)
    (.rational 12134340 1)) .v) (.rational 14544288 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2963520 1) .v) (.rational 13883220 1)) .v) (.rational 15481344 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2539620 1) .v) (.rational 11102040 1)) .v)
    (.rational 11565612 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1543590 1)
    .v) (.rational 6341940 1)) .v) (.rational 6204930 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 666360 1) .v) (.rational 2584440 1)) .v) (.rational 2383104 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 200610 1) .v) (.rational 732780 1)) .v)
    (.rational 635436 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 40230 1) .v)
    (.rational 136620 1)) .v) (.rational 110094 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4860 1) .v) (.rational 14940 1)) .v) (.rational 10890 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2217

namespace FullLow2218
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  30*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    30*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_3 e g v+60*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^1+12*SmallGap.ReducedLayers.low0_010_5 e g v+36*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^1+6*SmallGap.ReducedLayers.low0_001_4 e g v+24*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_3 e g v+15*SmallGap.ReducedLayers.low1_200_4 e g
    v*e^1+6*SmallGap.ReducedLayers.low1_110_5 e g v+18*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_101_4 e g v+12*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_020_7 e g v+3*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_6 e g v+6*SmallGap.ReducedLayers.low1_011_7 e g v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 180 1) .v) (.rational 32010 1)) .e) (.add (.mul (.add (.mul
    (.rational 2340 1) .v) (.rational 201960 1)) .f) (.mul (.add (.mul (.rational 3060 1) .v)
    (.rational 218160 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 14940 1) .v)
    (.rational 769770 1)) .f) (.mul (.add (.mul (.rational 24660 1) .v) (.rational 1110900 1))
    .g)) .f) (.mul (.add (.mul (.rational 8640 1) .v) (.rational 492990 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 62100 1) .v) (.rational 1982370 1))
    .f) (.mul (.add (.mul (.rational 129420 1) .v) (.rational 3616260 1)) .g)) .f) (.mul (.add
    (.mul (.rational 76860 1) .v) (.rational 2199840 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.rational 2160 1) .v) (.rational 448860 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 186840 1) .v) (.rational 3659760 1)) .f) (.mul (.add
    (.mul (.rational 493920 1) .v) (.rational 8264280 1)) .g)) .f) (.mul (.add (.mul (.rational
    457380 1) .v) (.rational 6735810 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 162180 1)
    .v) (.rational 2280480 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 5400 1) .v)
    (.rational 210330 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 409680 1) .v) (.rational 4943550 1)) .f) (.mul (.add (.mul
    (.rational 1346760 1) .v) (.rational 13690440 1)) .g)) .f) (.mul (.add (.mul (.rational
    1743660 1) .v) (.rational 14757570 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 1141380
    1) .v) (.rational 7838160 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 410580 1) .v)
    (.rational 2171070 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 86760 1) .v) (.rational
    327240 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 621000 1) .v) (.rational 4791780 1)) .f) (.mul (.add (.mul
    (.rational 2449440 1) .v) (.rational 16066080 1)) .g)) .f) (.mul (.add (.mul (.rational
    4043520 1) .v) (.rational 22237920 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 3684240
    1) .v) (.rational 16746840 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 2071980 1) .v)
    (.rational 7751370 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 762300 1) .v) (.rational
    2410140 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational 184320 1) .v) (.rational 522330 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 601560 1) .v) (.rational 3133980 1)) .f) (.mul (.add (.mul
    (.rational 2752920 1) .v) (.rational 12477600 1)) .g)) .f) (.mul (.add (.mul (.rational
    5452200 1) .v) (.rational 21322620 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 6194880
    1) .v) (.rational 20842920 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 4515300 1) .v)
    (.rational 13194090 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 2221740 1) .v)
    (.rational 5786700 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational 741420 1) .v) (.rational
    1777980 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational 159120 1) .v) (.rational 357420 1))
    (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 330480 1) .v) (.rational 1224720 1)) .f) (.mul
    (.add (.mul (.rational 1710720 1) .v) (.rational 5666760 1)) .g)) .f) (.mul (.add (.mul
    (.rational 3912840 1) .v) (.rational 11525940 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.rational 5248800 1) .v) (.rational 13752720 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.rational 4614840 1) .v) (.rational 10849680 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.rational 2797200 1) .v) (.rational 5999640 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 1181700 1) .v) (.rational 2352450 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.rational 338220 1) .v) (.rational 629520 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational
    60660 1) .v) (.rational 104580 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    77760 1) .v) (.rational 213840 1)) .f) (.mul (.add (.mul (.rational 447120 1) .v) (.rational
    1127520 1)) .g)) .f) (.mul (.add (.mul (.rational 1152360 1) .v) (.rational 2651580 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.rational 1767960 1) .v) (.rational 3708360 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.rational 1804680 1) .v) (.rational 3465510 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.rational 1290600 1) .v) (.rational 2288160 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.rational 657180 1) .v) (.rational 1084650 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.rational 234900 1) .v) (.rational 361800 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational
    56160 1) .v) (.rational 80190 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 8100 1) .v)
    (.rational 10560 1)) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow2218

namespace FullLow2219
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  30*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(12*SmallGap.ReducedLayers.low0_100_4 e g v+12*SmallGap.ReducedLayers.low0_010_6 e g
    v+6*SmallGap.ReducedLayers.low0_001_5 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_200_4 e g v+6*SmallGap.ReducedLayers.low1_110_6 e g
    v+3*SmallGap.ReducedLayers.low1_101_5 e g v+3*SmallGap.ReducedLayers.low1_020_8 e g
    v+3*SmallGap.ReducedLayers.low1_011_7 e g v)

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

end FullLow2219

end
end SPR.N6.Tail.CoreEndpoint
