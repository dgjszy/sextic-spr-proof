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

namespace FullLow1310
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow0.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    2*SmallGap.PolarCoefficientsLow0.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    3*SmallGap.PolarCoefficientsLow0.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    4*SmallGap.PolarCoefficientsLow0.c140 e f g v*e^3*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_0 e g v*e^7+12*SmallGap.ReducedLayers.low0_010_0
    e g v*e^5+4*SmallGap.ReducedLayers.low0_001_0 e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_0 e g v*e^5+1*SmallGap.ReducedLayers.low1_101_0 e g
    v*e^6+6*SmallGap.ReducedLayers.low1_020_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_011_0 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 80 1) .v) (.rational 2360 1))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 80 1) .v) (.rational 1792 1)) .v)
    (.rational 21992 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 200 1) .v) (.rational 2864
    1)) .v) (.rational 29300 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1616 1) .v) (.rational 18576 1)) .v) (.rational 129108 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4848 1) .v) (.rational 40616 1)) .v) (.rational 238744 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5248 1) .v) (.rational 29808 1)) .v) (.rational
    155076 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 15112 1) .v) (.rational 118796 1)) .v) (.rational 535565 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 52892 1) .v) (.rational 328698 1)) .v) (.rational 1273472 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 71524 1) .v) (.rational 341430 1)) .v) (.rational
    1145827 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 46580 1) .v) (.rational
    166350 1)) .v) (.rational 483594 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 87088 1) .v) (.rational 526504 1)) .v)
    (.rational 1668743 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 348352 1) .v) (.rational
    1759002 1)) .v) (.rational 4869340 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    562184 1) .v) (.rational 2339040 1)) .v) (.rational 5633821 1)) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 467320 1) .v) (.rational 1584436 1)) .v) (.rational 3288592 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 210536 1) .v) (.rational 578088 1))
    .v) (.rational 1015318 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 347014 1) .v) (.rational 1720462 1)) .v)
    (.rational 4052285 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1561563 1) .v) (.rational
    6726029 1)) .v) (.rational 14057812 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2919824 1) .v) (.rational 10844478 1)) .v) (.rational 19965843 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2932090 1) .v) (.rational 9335846 1)) .v) (.rational
    14975146 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1702306 1) .v)
    (.rational 4633694 1)) .v) (.rational 6373996 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 569187 1) .v) (.rational 1327701 1)) .v) (.rational 1532872 1)) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1016050 1) .v) (.rational 4301872 1)) .v) (.rational 7851649 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5080250 1) .v) (.rational 19243056 1)) .v) (.rational
    31644736 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 10779025 1) .v) (.rational
    36351777 1)) .v) (.rational 53439763 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12634600 1) .v) (.rational 37792930 1)) .v) (.rational 49165302 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8913920 1) .v) (.rational 23601230 1)) .v)
    (.rational 26822030 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3857710 1)
    .v) (.rational 9048120 1)) .v) (.rational 8841346 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 993925 1) .v) (.rational 2075257 1)) .v) (.rational 1711708 1)) (.pow
    .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 2266304 1) .v) (.rational 8425482 1)) .v) (.rational
    12323358 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 12464672 1) .v) (.rational 42402921
    1)) .v) (.rational 56692411 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 29549858 1)
    .v) (.rational 91657003 1)) .v) (.rational 111206912 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 39489321 1) .v) (.rational 111349311 1)) .v) (.rational 121535516 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 32640736 1) .v) (.rational 83501926
    1)) .v) (.rational 81142625 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    17211782 1) .v) (.rational 39929303 1)) .v) (.rational 34127483 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5749070 1) .v) (.rational 12115463 1)) .v) (.rational
    8984049 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1161609 1) .v)
    (.rational 2233657 1)) .v) (.rational 1416524 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 3937230 1) .v) (.rational 13116378 1)) .v) (.rational 15811620 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 23623380 1) .v) (.rational 73299820 1)) .v) (.rational
    81869452 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 61829895 1) .v) (.rational
    178170783 1)) .v) (.rational 183216675 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 92601825 1) .v) (.rational 247170035 1)) .v) (.rational 232308018 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 87468927 1) .v) (.rational 215799149 1)) .v)
    (.rational 183828161 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 54121938
    1) .v) (.rational 123258132 1)) .v) (.rational 94258068 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 22043153 1) .v) (.rational 46331437 1)) .v) (.rational 31468670
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5773161 1) .v) (.rational
    11212503 1)) .v) (.rational 6686258 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 916195 1) .v) (.rational 1648725 1)) .v) (.rational 852944 1)) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5398448 1) .v) (.rational 16366372 1))
    .v) (.rational 16659038 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 35089912 1) .v)
    (.rational 100500950 1)) .v) (.rational 95969308 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 100431874 1) .v) (.rational 271063802 1)) .v) (.rational 241536848 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 166386275 1) .v) (.rational 422161732 1))
    .v) (.rational 348915829 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    176386067 1) .v) (.rational 419785406 1)) .v) (.rational 319620736 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 124823787 1) .v) (.rational 278134477 1)) .v) (.rational
    193589886 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 59664900 1) .v)
    (.rational 124303684 1)) .v) (.rational 78410819 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 19042005 1) .v) (.rational 37066202 1)) .v) (.rational 20987027 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 3910815 1) .v) (.rational 7112486 1)) .v)
    (.rational 3576467 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 479701 1)
    .v) (.rational 815463 1)) .v) (.rational 359908 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 5880468 1) .v) (.rational 16423374 1)) .v) (.rational
    14419140 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 41163276 1) .v) (.rational 109869628
    1)) .v) (.rational 91525908 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 127831833 1)
    .v) (.rational 325351801 1)) .v) (.rational 256032030 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 231868410 1) .v) (.rational 561463722 1)) .v) (.rational 415323632 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 272119187 1) .v) (.rational
    625511973 1)) .v) (.rational 432515597 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 216193588 1) .v) (.rational 470741334 1)) .v) (.rational 302351664 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 118159530 1) .v) (.rational 243220782 1))
    .v) (.rational 144075131 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    44215254 1) .v) (.rational 85882972 1)) .v) (.rational 46538030 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11045435 1) .v) (.rational 20211811 1)) .v) (.rational
    9924896 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1748016 1) .v)
    (.rational 3008454 1)) .v) (.rational 1323926 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 158787 1) .v) (.rational 256491 1)) .v) (.rational 99792 1)) (.pow .g 10))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5093990 1) .v)
    (.rational 13237788 1)) .v) (.rational 10217367 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 38204925 1) .v) (.rational 95789510 1)) .v) (.rational 70869007 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 127896595 1) .v) (.rational 308768958 1)) .v) (.rational
    218184918 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 251886505 1) .v)
    (.rational 584317430 1)) .v) (.rational 392768985 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 323770495 1) .v) (.rational 720122660 1)) .v) (.rational 458362540 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 284757165 1) .v) (.rational
    605888151 1)) .v) (.rational 363290310 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 174630065 1) .v) (.rational 354632473 1)) .v) (.rational 199116822 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 74631750 1) .v) (.rational 144305331 1)) .v)
    (.rational 75346583 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 21816595 1)
    .v) (.rational 40062960 1)) .v) (.rational 19292809 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4186620 1) .v) (.rational 7281005 1)) .v) (.rational 3201465 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 488360 1) .v) (.rational 801573 1)) .v)
    (.rational 317744 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 29795 1) .v)
    (.rational 45933 1)) .v) (.rational 16138 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3493900 1) .v) (.rational
    8520236 1)) .v) (.rational 5881967 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 27951200
    1) .v) (.rational 66283914 1)) .v) (.rational 44260580 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 100312162 1) .v) (.rational 230922282 1)) .v) (.rational 148715311 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 213039134 1) .v) (.rational 475176606 1))
    .v) (.rational 294175060 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    297345482 1) .v) (.rational 641290910 1)) .v) (.rational 380234703 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 286343750 1) .v) (.rational 595831010 1)) .v) (.rational
    336908190 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 194253563 1) .v)
    (.rational 389052039 1)) .v) (.rational 208753202 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 93031467 1) .v) (.rational 178868113 1)) .v) (.rational 90541842 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 30996145 1) .v) (.rational 57042919
    1)) .v) (.rational 27047962 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6939096 1) .v) (.rational 12181982 1)) .v) (.rational 5363506 1)) (.pow .g 9))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 977031 1) .v) (.rational 1629527 1)) .v) (.rational 658685
    1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 76017 1) .v) (.rational 119807
    1)) .v) (.rational 43790 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 2381
    1) .v) (.rational 3519 1)) .v) (.rational 1138 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1877974 1) .v)
    (.rational 4329718 1)) .v) (.rational 2716385 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    15962779 1) .v) (.rational 36025521 1)) .v) (.rational 22034788 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 61124768 1) .v) (.rational 134832726 1)) .v) (.rational 80217199 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 139180180 1) .v) (.rational
    299578090 1)) .v) (.rational 172912044 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 209446476 1) .v) (.rational 439098942 1)) .v) (.rational 245145233 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 218911290 1) .v) (.rational 446095094 1))
    .v) (.rational 240066094 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    162467210 1) .v) (.rational 321071680 1)) .v) (.rational 165875421 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 85954275 1) .v) (.rational 164307164 1)) .v) (.rational
    81096995 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 32026395 1) .v)
    (.rational 59041370 1)) .v) (.rational 27675859 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8147321 1) .v) (.rational 14434457 1)) .v) (.rational 6378528 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1332436 1) .v) (.rational 2259026 1)) .v)
    (.rational 932074 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 124331 1)
    .v) (.rational 200634 1)) .v) (.rational 76303 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4917 1) .v) (.rational 7498 1)) .v) (.rational 2581 1)) (.pow .g 12))) .f))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    777082 1) .v) (.rational 1705612 1)) .v) (.rational 987137 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6993738 1) .v) (.rational 15109904 1)) .v) (.rational 8583736 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 28456871 1) .v) (.rational 60441399 1)) .v)
    (.rational 33643683 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 69130240 1)
    .v) (.rational 144145466 1)) .v) (.rational 78460022 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 111503506 1) .v) (.rational 227887468 1)) .v) (.rational 121013043 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 125581890 1) .v) (.rational
    251118918 1)) .v) (.rational 129738622 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 101061881 1) .v) (.rational 197319633 1)) .v) (.rational 98862867 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 58411172 1) .v) (.rational 111091616 1)) .v)
    (.rational 53768364 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 23993655 1)
    .v) (.rational 44328261 1)) .v) (.rational 20626982 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6806336 1) .v) (.rational 12174838 1)) .v) (.rational 5414078 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1259728 1) .v) (.rational 2172936 1)) .v)
    (.rational 916330 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 135728 1)
    .v) (.rational 224634 1)) .v) (.rational 88906 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6381 1) .v) (.rational 10067 1)) .v) (.rational 3686 1)) (.pow .g 12))) (.pow
    .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 240604 1) .v) (.rational 506242 1)) .v) (.rational 274240 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2285738 1) .v) (.rational 4756029 1)) .v) (.rational 2543473 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 9847084 1) .v) (.rational 20242323 1)) .v)
    (.rational 10673164 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 25413895 1)
    .v) (.rational 51555151 1)) .v) (.rational 26761286 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 43716106 1) .v) (.rational 87404554 1)) .v) (.rational 44587626 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 52738171 1) .v) (.rational
    103769278 1)) .v) (.rational 51916117 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 45688629 1) .v) (.rational 88320078 1)) .v) (.rational 43229641 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 28593929 1) .v) (.rational 54195290 1)) .v)
    (.rational 25875291 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 12806465 1)
    .v) (.rational 23742206 1)) .v) (.rational 11017001 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3994111 1) .v) (.rational 7222309 1)) .v) (.rational 3242286 1)) (.pow
    .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 821187 1) .v) (.rational 1443271 1)) .v)
    (.rational 623167 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 99596 1) .v)
    (.rational 169399 1)) .v) (.rational 69803 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5365 1) .v) (.rational 8782 1)) .v) (.rational 3417 1)) (.pow .g 12))) (.pow
    .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 53270 1) .v) (.rational 108258 1)) .v) (.rational 55710 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 532700 1) .v) (.rational 1074768 1)) .v) (.rational 548596 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2422055 1) .v) (.rational 4847983 1)) .v)
    (.rational 2452361 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6616545 1)
    .v) (.rational 13127955 1)) .v) (.rational 6574506 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 12086175 1) .v) (.rational 23748205 1)) .v) (.rational 11760310 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 15539220 1) .v) (.rational 30204116
    1)) .v) (.rational 14769224 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    14405790 1) .v) (.rational 27663286 1)) .v) (.rational 13333894 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9692550 1) .v) (.rational 18359666 1)) .v) (.rational
    8705204 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4691820 1) .v)
    (.rational 8750380 1)) .v) (.rational 4070926 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1591400 1) .v) (.rational 2915780 1)) .v) (.rational 1326740 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 358475 1) .v) (.rational 643483 1)) .v)
    (.rational 285209 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 48065 1) .v)
    (.rational 84243 1)) .v) (.rational 36178 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2895 1) .v) (.rational 4933 1)) .v) (.rational 2038 1)) (.pow .g 12))) (.pow .f
    4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 7812 1) .v) (.rational 15480 1)) .v) (.rational 7692 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 82026 1) .v) (.rational 161884 1)) .v) (.rational 80088 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 392502 1) .v) (.rational 771162 1)) .v) (.rational
    379650 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1131279 1) .v)
    (.rational 2211572 1)) .v) (.rational 1082813 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2186271 1) .v) (.rational 4250118 1)) .v) (.rational 2068047 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2982888 1) .v) (.rational 5762232 1)) .v)
    (.rational 2784132 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2944368 1)
    .v) (.rational 5647236 1)) .v) (.rational 2706648 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2117178 1) .v) (.rational 4027656 1)) .v) (.rational 1912518 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1099854 1) .v) (.rational 2072772 1)) .v)
    (.rational 973638 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 402246 1) .v)
    (.rational 749868 1)) .v) (.rational 347772 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 98226 1) .v) (.rational 180802 1)) .v) (.rational 82590 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 14367 1) .v) (.rational 26052 1)) .v) (.rational
    11685 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 951 1) .v) (.rational
    1694 1)) .v) (.rational 743 1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 656 1) .v) (.rational 1286
    1)) .v) (.rational 630 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7216 1) .v) (.rational
    14124 1)) .v) (.rational 6908 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 36247 1)
    .v) (.rational 70823 1)) .v) (.rational 34576 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 109910 1) .v) (.rational 214330 1)) .v) (.rational 104420 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 223995 1) .v) (.rational 435825 1)) .v)
    (.rational 211830 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 323112 1) .v)
    (.rational 627072 1)) .v) (.rational 303960 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 338142 1) .v) (.rational 654318 1)) .v) (.rational 316176 1)) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 258564 1) .v) (.rational 498636 1)) .v)
    (.rational 240072 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 143310 1) .v)
    (.rational 275280 1)) .v) (.rational 131970 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 56120 1) .v) (.rational 107300 1)) .v) (.rational 51180 1)) (.pow .g 9))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 14731 1) .v) (.rational 28011 1)) .v) (.rational
    13280 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 2326 1) .v) (.rational
    4394 1)) .v) (.rational 2068 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational
    167 1) .v) (.rational 313 1)) .v) (.rational 146 1)) (.pow .g 12))) (.pow .f 6))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22 1)
    .v) (.rational 44 1)) .v) (.rational 22 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 253
    1) .v) (.rational 506 1)) .v) (.rational 253 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1331 1) .v) (.rational 2662 1)) .v) (.rational 1331 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4235 1) .v) (.rational 8470 1)) .v) (.rational 4235 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 9075 1) .v) (.rational 18150 1))
    .v) (.rational 9075 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 13794 1)
    .v) (.rational 27588 1)) .v) (.rational 13794 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 15246 1) .v) (.rational 30492 1)) .v) (.rational 15246 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 12342 1) .v) (.rational 24684 1)) .v) (.rational
    12342 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 7260 1) .v) (.rational
    14520 1)) .v) (.rational 7260 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3025 1) .v) (.rational 6050 1)) .v) (.rational 3025 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 847 1) .v) (.rational 1694 1)) .v) (.rational 847 1)) (.pow .g 10)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 143 1) .v) (.rational 286 1)) .v) (.rational 143
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 11 1) .v) (.rational 22 1))
    .v) (.rational 11 1)) (.pow .g 12))) (.pow .f 7)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1310

namespace FullLow1311
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow1.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow0.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow1.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow0.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsLow1.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    24*SmallGap.PolarCoefficientsLow0.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow1.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow0.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    2*SmallGap.PolarCoefficientsLow0.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow0.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow0.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(28*SmallGap.ReducedLayers.low0_100_0 e g v*e^6+4*SmallGap.ReducedLayers.low0_100_1
    e g v*e^7+60*SmallGap.ReducedLayers.low0_010_0 e g v*e^4+12*SmallGap.ReducedLayers.low0_010_1
    e g v*e^5+24*SmallGap.ReducedLayers.low0_001_0 e g v*e^5+4*SmallGap.ReducedLayers.low0_001_1 e
    g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.low1_110_0 e g v*e^4+3*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^5+6*SmallGap.ReducedLayers.low1_101_0 e g v*e^5+1*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^6+18*SmallGap.ReducedLayers.low1_020_0 e g v*e^2+6*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^3+12*SmallGap.ReducedLayers.low1_011_0 e g v*e^3+3*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 840 1) .v) (.rational 25900 1)) .e) (.add
    (.mul (.add (.mul (.add (.mul (.rational 760 1) .v) (.rational 17424 1)) .v) (.rational 230584
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1900 1) .v) (.rational 27368 1)) .v)
    (.rational 302552 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    14576 1) .v) (.rational 170480 1)) .v) (.rational 1294386 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 43728 1) .v) (.rational 365840 1)) .v) (.rational 2353664 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 47348 1) .v) (.rational 260080 1)) .v) (.rational 1495214
    1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    130488 1) .v) (.rational 1041698 1)) .v) (.rational 5137882 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 456708 1) .v) (.rational 2835495 1)) .v) (.rational 12010199 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 617756 1) .v) (.rational 2879873 1)) .v) (.rational
    10576717 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 402620 1) .v)
    (.rational 1361477 1)) .v) (.rational 4341717 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 723360 1) .v) (.rational 4444176
    1)) .v) (.rational 15328362 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2893440 1) .v)
    (.rational 14650482 1)) .v) (.rational 44000336 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4670868 1) .v) (.rational 19169282 1)) .v) (.rational 49913546 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3885564 1) .v) (.rational 12744530 1)) .v)
    (.rational 28445412 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1753004 1)
    .v) (.rational 4558774 1)) .v) (.rational 8530808 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2779208 1) .v)
    (.rational 14034574 1)) .v) (.rational 35656026 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12506436 1) .v) (.rational 54289555 1)) .v) (.rational 121848035 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 23392136 1) .v) (.rational 86512304 1)) .v) (.rational
    170078376 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 23509108 1) .v)
    (.rational 73567152 1)) .v) (.rational 125043212 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 13668908 1) .v) (.rational 36091348 1)) .v) (.rational 52037216 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4581184 1) .v) (.rational 10251533 1)) .v)
    (.rational 12216561 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7849978 1) .v) (.rational 33956386
    1)) .v) (.rational 66182876 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 39249890 1) .v)
    (.rational 150644476 1)) .v) (.rational 263233932 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 83309337 1) .v) (.rational 282164477 1)) .v) (.rational 438065492 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 97738008 1) .v) (.rational 290936942 1)) .v)
    (.rational 396626086 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 69066692
    1) .v) (.rational 180405114 1)) .v) (.rational 212752528 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 29966586 1) .v) (.rational 68855002 1)) .v) (.rational 68978926
    1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7749817 1) .v) (.rational
    15794199 1)) .v) (.rational 13176116 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    16871150 1) .v) (.rational 64291260 1)) .v) (.rational 99448138 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 92791325 1) .v) (.rational 321499178 1)) .v) (.rational 452419223 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 220072243 1) .v) (.rational 690645592 1))
    .v) (.rational 876972779 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    294390156 1) .v) (.rational 834370535 1)) .v) (.rational 946689381 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 243765636 1) .v) (.rational 623056044 1)) .v) (.rational
    624429226 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 128898273 1) .v)
    (.rational 297363160 1)) .v) (.rational 259820279 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 43230783 1) .v) (.rational 90377864 1)) .v) (.rational 67908269 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8785014 1) .v) (.rational 16774735
    1)) .v) (.rational 10706205 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    28165522 1) .v) (.rational 96470852 1)) .v) (.rational 121956422 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 168993132 1) .v) (.rational 536475130 1)) .v) (.rational 625765238 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 442515939 1) .v) (.rational 1298158923 1))
    .v) (.rational 1387515166 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    663475985 1) .v) (.rational 1794228295 1)) .v) (.rational 1743416778 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 627904547 1) .v) (.rational 1562797263 1)) .v)
    (.rational 1368272958 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 389686730
    1) .v) (.rational 892355402 1)) .v) (.rational 697151678 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 159412553 1) .v) (.rational 336333819 1)) .v) (.rational
    232113488 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 42008789 1) .v)
    (.rational 81949257 1)) .v) (.rational 49487030 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6723079 1) .v) (.rational 12195295 1)) .v) (.rational 6395702 1)) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 36951534 1) .v) (.rational
    115470168 1)) .v) (.rational 122427234 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    240184971 1) .v) (.rational 706396288 1)) .v) (.rational 700302173 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 687786992 1) .v) (.rational 1899066834 1)) .v) (.rational
    1750420674 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1140793775 1) .v)
    (.rational 2950582673 1)) .v) (.rational 2512654110 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1211820680 1) .v) (.rational 2930735817 1)) .v) (.rational 2289848161
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 860291769 1) .v) (.rational
    1943283499 1)) .v) (.rational 1382663538 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 413117912 1) .v) (.rational 871420816 1)) .v) (.rational 560221892 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 132704833 1) .v) (.rational 261637005 1))
    .v) (.rational 150801892 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    27497982 1) .v) (.rational 50776571 1)) .v) (.rational 26050837 1)) (.pow .g 8))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3413480 1) .v) (.rational 5920239 1)) .v) (.rational
    2687063 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    38279336 1) .v) (.rational 110395962 1)) .v) (.rational 100450492 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 267955352 1) .v) (.rational 736403292 1)) .v) (.rational 634233656 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 832568425 1) .v) (.rational 2175643761 1))
    .v) (.rational 1765511842 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1511990974 1) .v) (.rational 3749060414 1)) .v) (.rational 2852131908 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1778201931 1) .v) (.rational 4175727811 1)) .v)
    (.rational 2961805782 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1417361616 1) .v) (.rational 3147117466 1)) .v) (.rational 2068879352 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 778340762 1) .v) (.rational 1632184602 1)) .v)
    (.rational 988199138 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 293203970
    1) .v) (.rational 580291260 1)) .v) (.rational 321446890 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 73918195 1) .v) (.rational 138050659 1)) .v) (.rational 69495612
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 11843364 1) .v) (.rational
    20875692 1)) .v) (.rational 9484906 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1093763 1) .v) (.rational 1819205 1)) .v) (.rational 740586 1)) (.pow .g 10)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 31274452 1) .v)
    (.rational 84003626 1)) .v) (.rational 66957870 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 234558390 1) .v) (.rational 606528235 1)) .v) (.rational 462656069 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 785637126 1) .v) (.rational 1951948205 1)) .v)
    (.rational 1419695155 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1549172404 1) .v) (.rational 3690974803 1)) .v) (.rational 2549445571 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1995504552 1) .v) (.rational 4550403421 1)) .v)
    (.rational 2971824121 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1760810205 1) .v) (.rational 3835829313 1)) .v) (.rational 2357303702 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1084991041 1) .v) (.rational 2254081929 1)) .v)
    (.rational 1296698770 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 466802928
    1) .v) (.rational 923395186 1)) .v) (.rational 494428576 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 137713382 1) .v) (.rational 259006279 1)) .v) (.rational
    128286947 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 26756559 1) .v)
    (.rational 47775683 1)) .v) (.rational 21739688 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3173391 1) .v) (.rational 5369377 1)) .v) (.rational 2226902 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 197978 1) .v) (.rational 316392 1)) .v)
    (.rational 118414 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 20005060 1) .v) (.rational 50423864 1)) .v)
    (.rational 35860678 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 160040480 1) .v)
    (.rational 391638070 1)) .v) (.rational 269137268 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 574659310 1) .v) (.rational 1362940156 1)) .v) (.rational 902442974 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1221906770 1) .v) (.rational 2803715856 1))
    .v) (.rational 1782976860 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1708998810 1) .v) (.rational 3786654338 1)) .v) (.rational 2304639064 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1651046690 1) .v) (.rational 3525772706 1)) .v)
    (.rational 2045679762 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1125283899 1) .v) (.rational 2311418909 1)) .v) (.rational 1272939352 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 542445655 1) .v) (.rational 1069568947 1)) .v)
    (.rational 556372926 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 182354025
    1) .v) (.rational 344408011 1)) .v) (.rational 168289004 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 41319260 1) .v) (.rational 74574318 1)) .v) (.rational 34010290
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 5912715 1) .v) (.rational
    10168707 1)) .v) (.rational 4295158 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 470129 1) .v) (.rational 767439 1)) .v) (.rational 297310 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 15165 1) .v) (.rational 23351 1)) .v) (.rational 8186
    1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 9874868 1) .v) (.rational 23508606 1)) .v) (.rational 15165678
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 83936378 1) .v) (.rational 195374315 1)) .v)
    (.rational 122813885 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 321570028 1) .v)
    (.rational 730748424 1)) .v) (.rational 446597428 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 733047650 1) .v) (.rational 1623692258 1)) .v) (.rational 962342356 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1105312404 1) .v) (.rational
    2382249838 1)) .v) (.rational 1365427394 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1158781533 1) .v) (.rational 2425656020 1)) .v) (.rational 1340263847 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 863808986 1) .v) (.rational 1752675372 1))
    .v) (.rational 930214774 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    459839743 1) .v) (.rational 902403387 1)) .v) (.rational 458160576 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 172792400 1) .v) (.rational 327177843 1)) .v) (.rational
    158146751 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 44462209 1) .v)
    (.rational 81007723 1)) .v) (.rational 37067734 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7383390 1) .v) (.rational 12901894 1)) .v) (.rational 5550084 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 703143 1) .v) (.rational 1173577 1)) .v)
    (.rational 470434 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 28580 1) .v)
    (.rational 45303 1)) .v) (.rational 16723 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3671754 1) .v)
    (.rational 8304742 1)) .v) (.rational 4933452 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    33045786 1) .v) (.rational 73513076 1)) .v) (.rational 42857972 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 134521879 1) .v) (.rational 293966827 1)) .v) (.rational 167905528 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 327137216 1) .v) (.rational
    701292138 1)) .v) (.rational 391675698 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 528612850 1) .v) (.rational 1109981858 1)) .v) (.rational 604857128 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 597021026 1) .v) (.rational 1225892964 1))
    .v) (.rational 650147838 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    482404397 1) .v) (.rational 966836651 1)) .v) (.rational 497605006 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 280404764 1) .v) (.rational 547397278 1)) .v) (.rational
    272490634 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 116080051 1) .v)
    (.rational 220203813 1)) .v) (.rational 105602538 1)) (.pow .g 8))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 33274720 1) .v) (.rational 61171148 1)) .v) (.rational 28127558 1))
    (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 6244972 1) .v) (.rational 11089762
    1)) .v) (.rational 4860706 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational
    685416 1) .v) (.rational 1171060 1)) .v) (.rational 485644 1)) (.pow .g 11))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 33025 1) .v) (.rational 54011 1)) .v) (.rational 20986 1)) (.pow
    .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 988998 1) .v) (.rational 2137528 1)) .v) (.rational 1185866 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9395481 1) .v) (.rational 20072532 1)) .v)
    (.rational 10994097 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 40492579 1) .v)
    (.rational 85428162 1)) .v) (.rational 46137397 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 104602156 1) .v) (.rational 217687417 1)) .v) (.rational 115761571 1)) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 180220544 1) .v) (.rational 369512678 1))
    .v) (.rational 193166816 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    217950022 1) .v) (.rational 439653291 1)) .v) (.rational 225511311 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 189492506 1) .v) (.rational 375480973 1)) .v) (.rational
    188559553 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 119187484 1) .v)
    (.rational 231571369 1)) .v) (.rational 113560639 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 53747306 1) .v) (.rational 102179697 1)) .v) (.rational 48781581 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 16917769 1) .v) (.rational 31394133
    1)) .v) (.rational 14536996 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3521099 1) .v) (.rational 6359573 1)) .v) (.rational 2843150 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 434000 1) .v) (.rational 760266 1)) .v) (.rational 326266
    1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 23880 1) .v) (.rational 40397
    1)) .v) (.rational 16517 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 180714 1) .v) (.rational
    375564 1)) .v) (.rational 197278 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1807140 1)
    .v) (.rational 3728022 1)) .v) (.rational 1942814 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8219379 1) .v) (.rational 16819647 1)) .v) (.rational 8688990 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 22470921 1) .v) (.rational 45576911 1)) .v)
    (.rational 23317574 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 41101399 1)
    .v) (.rational 82552937 1)) .v) (.rational 41780818 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 52952804 1) .v) (.rational 105211768 1)) .v) (.rational 52608236 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 49237174 1) .v) (.rational 96659822
    1)) .v) (.rational 47678260 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    33266774 1) .v) (.rational 64437058 1)) .v) (.rational 31297676 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 16195696 1) .v) (.rational 30902246 1)) .v) (.rational
    14747914 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 5535824 1) .v)
    (.rational 10385002 1)) .v) (.rational 4857078 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1259815 1) .v) (.rational 2318339 1)) .v) (.rational 1059198 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 171209 1) .v) (.rational 308215 1)) .v)
    (.rational 137006 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 10495 1) .v)
    (.rational 18421 1)) .v) (.rational 7926 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 19806 1)
    .v) (.rational 39884 1)) .v) (.rational 20126 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    207963 1) .v) (.rational 417162 1)) .v) (.rational 209659 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 995380 1) .v) (.rational 1988134 1)) .v) (.rational 994734 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 2870615 1) .v) (.rational 5706421 1)) .v)
    (.rational 2840846 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5553360 1)
    .v) (.rational 10980909 1)) .v) (.rational 5435949 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7588902 1) .v) (.rational 14916864 1)) .v) (.rational 7337538 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7508256 1) .v) (.rational 14659848 1))
    .v) (.rational 7159152 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5416470
    1) .v) (.rational 10495854 1)) .v) (.rational 5083464 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2826390 1) .v) (.rational 5429946 1)) .v) (.rational 2604996 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 1039935 1) .v) (.rational 1978334 1)) .v)
    (.rational 938699 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 255996 1) .v)
    (.rational 481530 1)) .v) (.rational 225562 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 37843 1) .v) (.rational 70261 1)) .v) (.rational 32418 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2540 1) .v) (.rational 4645 1)) .v) (.rational 2105
    1)) (.pow .g 12))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 964 1) .v) (.rational 1902 1)) .v) (.rational 938 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 10604 1) .v) (.rational 20900 1)) .v) (.rational
    10296 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 53275 1) .v) (.rational 104879 1))
    .v) (.rational 51604 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 161610 1)
    .v) (.rational 317730 1)) .v) (.rational 156120 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 329595 1) .v) (.rational 647025 1)) .v) (.rational 317430 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 475968 1) .v) (.rational 932784 1)) .v)
    (.rational 456816 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 498918 1) .v)
    (.rational 975870 1)) .v) (.rational 476952 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 382380 1) .v) (.rational 746268 1)) .v) (.rational 363888 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 212610 1) .v) (.rational 413880 1)) .v)
    (.rational 201270 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 83620 1) .v)
    (.rational 162300 1)) .v) (.rational 78680 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22079 1) .v) (.rational 42707 1)) .v) (.rational 20628 1)) (.pow .g 10))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3514 1) .v) (.rational 6770 1)) .v) (.rational 3256 1))
    (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 255 1) .v) (.rational 489 1)) .v)
    (.rational 234 1)) (.pow .g 12))) (.pow .f 6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1311

namespace FullLow1312
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow2.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow1.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow2.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow0.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    12*SmallGap.PolarCoefficientsLow1.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsLow2.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    48*SmallGap.PolarCoefficientsLow0.c140 e f g v*e*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsLow1.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow2.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow1.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    6*SmallGap.PolarCoefficientsLow0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow1.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow1.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    18*SmallGap.PolarCoefficientsLow0.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsLow1.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(84*SmallGap.ReducedLayers.low0_100_0 e g v*e^5+28*SmallGap.ReducedLayers.low0_100_1
    e g v*e^6+4*SmallGap.ReducedLayers.low0_100_2 e g v*e^7+120*SmallGap.ReducedLayers.low0_010_0
    e g v*e^3+60*SmallGap.ReducedLayers.low0_010_1 e g v*e^4+12*SmallGap.ReducedLayers.low0_010_2
    e g v*e^5+60*SmallGap.ReducedLayers.low0_001_0 e g v*e^4+24*SmallGap.ReducedLayers.low0_001_1
    e g v*e^5+4*SmallGap.ReducedLayers.low0_001_2 e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(30*SmallGap.ReducedLayers.low1_110_0 e g v*e^3+15*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_110_2 e g v*e^5+15*SmallGap.ReducedLayers.low1_101_0 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_101_1 e g v*e^5+1*SmallGap.ReducedLayers.low1_101_2 e g
    v*e^6+18*SmallGap.ReducedLayers.low1_020_0 e g v*e^1+18*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_020_2 e g v*e^3+18*SmallGap.ReducedLayers.low1_011_0 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_011_1 e g v*e^3+3*SmallGap.ReducedLayers.low1_011_2 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 3960 1) .v) (.rational 129300 1)) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 3200 1) .v) (.rational 76440 1)) .v) (.rational 1101032 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8000 1) .v) (.rational 117880 1)) .v) (.rational
    1421104 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 58644 1) .v)
    (.rational 705896 1)) .v) (.rational 5908406 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    175932 1) .v) (.rational 1483200 1)) .v) (.rational 10547984 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 190552 1) .v) (.rational 1015344 1)) .v) (.rational 6535698 1)) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 504000 1)
    .v) (.rational 4114200 1)) .v) (.rational 22408669 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1764000 1) .v) (.rational 10987616 1)) .v) (.rational 51400606 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2386720 1) .v) (.rational 10859136 1)) .v) (.rational
    44169857 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1556800 1) .v)
    (.rational 4938240 1)) .v) (.rational 17543756 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2688724 1) .v) (.rational 16859492
    1)) .v) (.rational 63853507 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 10754896 1) .v)
    (.rational 54711936 1)) .v) (.rational 179961212 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17366364 1) .v) (.rational 70192215 1)) .v) (.rational 199562906 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 14456956 1) .v) (.rational 45570581 1)) .v)
    (.rational 110521219 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6531344 1)
    .v) (.rational 15875121 1)) .v) (.rational 31962025 1)) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9946824 1) .v)
    (.rational 51326968 1)) .v) (.rational 141803333 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 44760708 1) .v) (.rational 196100350 1)) .v) (.rational 476468988 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 83745488 1) .v) (.rational 308107998 1)) .v)
    (.rational 651903561 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 84225904
    1) .v) (.rational 258017261 1)) .v) (.rational 468055709 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 49037344 1) .v) (.rational 124682551 1)) .v) (.rational 189449613
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 16470252 1) .v) (.rational
    34993065 1)) .v) (.rational 43119465 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 27021028 1) .v)
    (.rational 119791336 1)) .v) (.rational 251073317 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 135105140 1) .v) (.rational 526390124 1)) .v) (.rational 983907184 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 286863175 1) .v) (.rational 976040450 1)) .v)
    (.rational 1610153028 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 336821860
    1) .v) (.rational 996300134 1)) .v) (.rational 1430760764 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 238365242 1) .v) (.rational 612284267 1)) .v) (.rational
    752032165 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 103660804 1) .v)
    (.rational 232274813 1)) .v) (.rational 238889813 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 26898091 1) .v) (.rational 53236663 1)) .v) (.rational 44858820 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 55695406 1) .v) (.rational 218313980 1)) .v)
    (.rational 359258958 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 306324733 1) .v)
    (.rational 1083797376 1)) .v) (.rational 1614146861 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 726796853 1) .v) (.rational 2311499274 1)) .v) (.rational 3087098766 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 973150341 1) .v) (.rational 2774104632 1))
    .v) (.rational 3285699569 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    807144972 1) .v) (.rational 2060730884 1)) .v) (.rational 2136772747 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 427912275 1) .v) (.rational 980884353 1)) .v)
    (.rational 877888528 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 144059073
    1) .v) (.rational 298517893 1)) .v) (.rational 227504554 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 29427459 1) .v) (.rational 55787867 1)) .v) (.rational 35865012
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 88763992 1) .v) (.rational
    313836840 1)) .v) (.rational 418203368 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    532583952 1) .v) (.rational 1735629280 1)) .v) (.rational 2124404932 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1395236122 1) .v) (.rational 4178382081 1)) .v) (.rational
    4662124574 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2094161050 1) .v)
    (.rational 5750315469 1)) .v) (.rational 5798645015 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1985611298 1) .v) (.rational 4994343484 1)) .v) (.rational 4508846485
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1235902364 1) .v) (.rational
    2850113902 1)) .v) (.rational 2281051338 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 507732290 1) .v) (.rational 1077138902 1)) .v) (.rational 757275856 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 134591534 1) .v) (.rational 264317424 1))
    .v) (.rational 162134284 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    21712058 1) .v) (.rational 39824593 1)) .v) (.rational 21264787 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 110440226 1) .v) (.rational 357273044 1)) .v)
    (.rational 396391344 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 717861469 1) .v)
    (.rational 2176471754 1)) .v) (.rational 2249829153 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2056709824 1) .v) (.rational 5829931572 1)) .v) (.rational 5580915338 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3415427873 1) .v) (.rational 9033416455 1))
    .v) (.rational 7955534676 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3635622724 1) .v) (.rational 8961036849 1)) .v) (.rational 7209365006 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2589307449 1) .v) (.rational 5946328350 1)) .v)
    (.rational 4339136139 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1249230896 1) .v) (.rational 2676118908 1)) .v) (.rational 1759353203 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 403916167 1) .v) (.rational 809389814 1)) .v)
    (.rational 476767645 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 84442050
    1) .v) (.rational 158963190 1)) .v) (.rational 83613994 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 10606962 1) .v) (.rational 18854959 1)) .v) (.rational 8849329
    1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 107523696
    1) .v) (.rational 321618376 1)) .v) (.rational 304583456 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 752665872 1) .v) (.rational 2138499004 1)) .v) (.rational 1911879136 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2339934368 1) .v) (.rational 6301774954 1)) .v)
    (.rational 5293458132 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4254949872 1) .v) (.rational 10841549600 1)) .v) (.rational 8512929710 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5015320936 1) .v) (.rational 12072180448 1)) .v)
    (.rational 8813626833 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4011434136 1) .v) (.rational 9113192362 1)) .v) (.rational 6152417282 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2213952251 1) .v) (.rational 4746050560 1)) .v)
    (.rational 2947173334 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 839875724
    1) .v) (.rational 1699994410 1)) .v) (.rational 966334758 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 213772874 1) .v) (.rational 409143733 1)) .v) (.rational
    212052799 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 34694276 1) .v)
    (.rational 62903777 1)) .v) (.rational 29638129 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3259383 1) .v) (.rational 5605125 1)) .v) (.rational 2394876 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 81555176 1)
    .v) (.rational 227353552 1)) .v) (.rational 187869833 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 611663820 1) .v) (.rational 1637521612 1)) .v) (.rational 1292562128 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2049938856 1) .v) (.rational 5260435568 1)) .v)
    (.rational 3951712419 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4047701294 1) .v) (.rational 9938394352 1)) .v) (.rational 7077074084 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5226127010 1) .v) (.rational 12257606812 1)) .v)
    (.rational 8239366685 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4628167115 1) .v) (.rational 10355034426 1)) .v) (.rational 6541838331 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2866802777 1) .v) (.rational 6112232268 1)) .v)
    (.rational 3613224899 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1242467355 1) .v) (.rational 2522639936 1)) .v) (.rational 1389359925 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 370228064 1) .v) (.rational 715593764 1)) .v)
    (.rational 365664520 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 72906953
    1) .v) (.rational 134123169 1)) .v) (.rational 63333674 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 8804053 1) .v) (.rational 15404813 1)) .v) (.rational 6693669 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 562671 1) .v) (.rational 934021
    1)) .v) (.rational 371350 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 47624968 1) .v) (.rational 124510372 1)) .v)
    (.rational 91519603 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 380999744 1) .v)
    (.rational 965249556 1)) .v) (.rational 684757684 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1368887460 1) .v) (.rational 3355034859 1)) .v) (.rational 2290486248 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2914716700 1) .v) (.rational 6899314993 1))
    .v) (.rational 4518714539 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4086355256 1) .v) (.rational 9326142811 1)) .v) (.rational 5840337362 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3962302788 1) .v) (.rational 8705062173 1)) .v)
    (.rational 5193908859 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2714930114 1) .v) (.rational 5733018186 1)) .v) (.rational 3246927966 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1318486870 1) .v) (.rational 2672321932 1)) .v)
    (.rational 1431045604 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 447746976
    1) .v) (.rational 869862961 1)) .v) (.rational 438653713 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 102845840 1) .v) (.rational 191246373 1)) .v) (.rational 90423623
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 14987566 1) .v) (.rational
    26626929 1)) .v) (.rational 11746110 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1221114 1) .v) (.rational 2066317 1)) .v) (.rational 845203 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 40716 1) .v) (.rational 65226 1)) .v) (.rational
    24510 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 20958552 1) .v) (.rational 51651040 1)) .v) (.rational
    34343149 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 178147692 1) .v) (.rational
    428655774 1)) .v) (.rational 277521806 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    682912112 1) .v) (.rational 1602007030 1)) .v) (.rational 1007646627 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1558887000 1) .v) (.rational 3559723889 1)) .v)
    (.rational 2169966979 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2356075538 1) .v) (.rational 5228753471 1)) .v) (.rational 3080846920 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2478998145 1) .v) (.rational 5337965611 1)) .v)
    (.rational 3031269370 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1857652172 1) .v) (.rational 3874522143 1)) .v) (.rational 2113868620 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 996143643 1) .v) (.rational 2008954334 1)) .v)
    (.rational 1049435045 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 378056650
    1) .v) (.rational 735867274 1)) .v) (.rational 366674384 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 98586363 1) .v) (.rational 184829621 1)) .v) (.rational 87482850
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 16664608 1) .v) (.rational
    30019641 1)) .v) (.rational 13430931 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1624965 1) .v) (.rational 2803459 1)) .v) (.rational 1178494 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 68176 1) .v) (.rational 112089 1)) .v) (.rational
    43913 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 6706312 1) .v) (.rational 15649352 1)) .v) (.rational
    9552437 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 60356808 1) .v) (.rational 138387528
    1)) .v) (.rational 82866336 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 245838645 1)
    .v) (.rational 553144612 1)) .v) (.rational 324373902 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 598621512 1) .v) (.rational 1320008534 1)) .v) (.rational 756645042 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 969467628 1) .v) (.rational
    2092030045 1)) .v) (.rational 1169726746 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1098703704 1) .v) (.rational 2316612563 1)) .v) (.rational 1260561201 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 892204194 1) .v) (.rational 1835071355 1))
    .v) (.rational 969253432 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    522216384 1) .v) (.rational 1045862615 1)) .v) (.rational 534664031 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 218231952 1) .v) (.rational 424741069 1)) .v)
    (.rational 209478927 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 63351088
    1) .v) (.rational 119559945 1)) .v) (.rational 56675191 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12089937 1) .v) (.rational 22068301 1)) .v) (.rational 10010734
    1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1356456 1) .v) (.rational
    2387247 1)) .v) (.rational 1030791 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 67284 1) .v) (.rational 113698 1)) .v) (.rational 46414 1)) (.pow .g 12))) (.pow .f
    2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1467642 1) .v) (.rational 3256668 1)) .v) (.rational 1849148 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 13942599 1) .v) (.rational 30562084 1)) .v) (.rational 17129077
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 60120935 1) .v) (.rational 130053326 1))
    .v) (.rational 71860550 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    155491673 1) .v) (.rational 331578404 1)) .v) (.rational 180373031 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 268447936 1) .v) (.rational 563638900 1)) .v) (.rational
    301386720 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 325671158 1) .v)
    (.rational 672367379 1)) .v) (.rational 352777513 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 284439610 1) .v) (.rational 576591505 1)) .v) (.rational 296254357 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 180044306 1) .v) (.rational
    357769967 1)) .v) (.rational 179603025 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 81891718 1) .v) (.rational 159230029 1)) .v) (.rational 77895881 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 26073971 1) .v) (.rational 49506965 1)) .v)
    (.rational 23530030 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 5509351 1)
    .v) (.rational 10190981 1)) .v) (.rational 4689145 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 692581 1) .v) (.rational 1244641 1)) .v) (.rational 552060 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 39096 1) .v) (.rational 68031 1)) .v)
    (.rational 28935 1)) (.pow .g 12))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 195548 1) .v) (.rational 414456 1))
    .v) (.rational 221598 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1955480 1) .v)
    (.rational 4112868 1)) .v) (.rational 2181668 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8898066 1) .v) (.rational 18558653 1)) .v) (.rational 9758732 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 24351414 1) .v) (.rational 50325713 1)) .v)
    (.rational 26208179 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 44620052 1)
    .v) (.rational 91290072 1)) .v) (.rational 47033740 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 57643048 1) .v) (.rational 116635980 1)) .v) (.rational 59378492 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 53810204 1) .v) (.rational
    107560278 1)) .v) (.rational 54032104 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 36556852 1) .v) (.rational 72094974 1)) .v) (.rational 35678642 1)) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 17930684 1) .v) (.rational 34838388 1)) .v)
    (.rational 16953334 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 6190032 1)
    .v) (.rational 11829672 1)) .v) (.rational 5648360 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1427170 1) .v) (.rational 2677749 1)) .v) (.rational 1251324 1)) (.pow
    .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 197254 1) .v) (.rational 362585 1)) .v)
    (.rational 165331 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 12356 1) .v)
    (.rational 22196 1)) .v) (.rational 9840 1)) (.pow .g 12))) (.pow .f 4))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 11886 1)
    .v) (.rational 24188 1)) .v) (.rational 12326 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    124803 1) .v) (.rational 253010 1)) .v) (.rational 128437 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 597564 1) .v) (.rational 1206344 1)) .v) (.rational 609770 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1724763 1) .v) (.rational 3465703 1)) .v)
    (.rational 1743460 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3341412 1)
    .v) (.rational 6679437 1)) .v) (.rational 3342225 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4576230 1) .v) (.rational 9095064 1)) .v) (.rational 4523622 1)) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4542048 1) .v) (.rational 8968932 1)) .v)
    (.rational 4430664 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3291246 1)
    .v) (.rational 6452106 1)) .v) (.rational 3162900 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1727838 1) .v) (.rational 3359778 1)) .v) (.rational 1632660 1)) (.pow
    .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 640887 1) .v) (.rational 1234862 1)) .v)
    (.rational 594125 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 159444 1) .v)
    (.rational 304076 1)) .v) (.rational 144646 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 23895 1) .v) (.rational 45047 1)) .v) (.rational 21152 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1632 1) .v) (.rational 3037 1)) .v) (.rational 1405
    1)) (.pow .g 12))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1312

namespace FullLow1313
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow3.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow2.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow3.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow1.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    12*SmallGap.PolarCoefficientsLow2.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsLow3.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    32*SmallGap.PolarCoefficientsLow0.c140 e f g v*((e+f)*(e+f+g))^4+
    48*SmallGap.PolarCoefficientsLow1.c140 e f g v*e*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsLow2.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow3.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow2.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    6*SmallGap.PolarCoefficientsLow1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow2.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    16*SmallGap.PolarCoefficientsLow0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsLow1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow2.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    48*SmallGap.PolarCoefficientsLow0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    18*SmallGap.PolarCoefficientsLow1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsLow2.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    6*SmallGap.PolarCoefficientsLow0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    6*SmallGap.PolarCoefficientsLow0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(140*SmallGap.ReducedLayers.low0_100_0 e g
    v*e^4+84*SmallGap.ReducedLayers.low0_100_1 e g v*e^5+28*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^6+4*SmallGap.ReducedLayers.low0_100_3 e g v*e^7+120*SmallGap.ReducedLayers.low0_010_0 e g
    v*e^2+120*SmallGap.ReducedLayers.low0_010_1 e g v*e^3+60*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^4+12*SmallGap.ReducedLayers.low0_010_3 e g v*e^5+80*SmallGap.ReducedLayers.low0_001_0 e g
    v*e^3+60*SmallGap.ReducedLayers.low0_001_1 e g v*e^4+24*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^5+4*SmallGap.ReducedLayers.low0_001_3 e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(30*SmallGap.ReducedLayers.low1_110_0 e g v*e^2+30*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_110_2 e g v*e^4+3*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^5+20*SmallGap.ReducedLayers.low1_101_0 e g v*e^3+15*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_101_2 e g v*e^5+1*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^6+6*SmallGap.ReducedLayers.low1_020_0 e g v+18*SmallGap.ReducedLayers.low1_020_1 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_020_2 e g v*e^2+6*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^3+12*SmallGap.ReducedLayers.low1_011_0 e g v*e^1+18*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^2+12*SmallGap.ReducedLayers.low1_011_2 e g v*e^3+3*SmallGap.ReducedLayers.low1_011_3 e g
    v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 11040 1) .v) (.rational 387600 1)) .e) (.add (.mul (.add (.mul
    (.add (.mul (.rational 7840 1) .v) (.rational 199296 1)) .v) (.rational 3160972 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 19600 1) .v) (.rational 301472 1)) .v) (.rational 4008440
    1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 138124 1) .v)
    (.rational 1738176 1)) .v) (.rational 16215182 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 414372 1) .v) (.rational 3567064 1)) .v) (.rational 28373900 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 448952 1) .v) (.rational 2334800 1)) .v) (.rational
    17096354 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1143464 1) .v) (.rational 9651446 1)) .v) (.rational 58686500 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4002124 1) .v) (.rational 25213981 1)) .v) (.rational 131828401
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5416628 1) .v) (.rational 24105763 1))
    .v) (.rational 110163605 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3536260 1) .v) (.rational 10419383 1)) .v) (.rational 42068863 1)) (.pow .g 3)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5877356 1) .v)
    (.rational 37918636 1)) .v) (.rational 159333794 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23509424 1) .v) (.rational 120808568 1)) .v) (.rational 439955790 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 37972348 1) .v) (.rational 151317141 1)) .v)
    (.rational 475302927 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 31634060
    1) .v) (.rational 95293247 1)) .v) (.rational 254359797 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 14311672 1) .v) (.rational 32022979 1)) .v) (.rational 70243971
    1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 20919152 1) .v) (.rational 111025532 1)) .v) (.rational 336627238 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 94136184 1) .v) (.rational 418090108 1)) .v)
    (.rational 1109882562 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 176175448 1) .v)
    (.rational 645808300 1)) .v) (.rational 1484032844 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 177311876 1) .v) (.rational 530560923 1)) .v) (.rational 1035901241 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 103366940 1) .v) (.rational
    251396173 1)) .v) (.rational 405105039 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34788756 1) .v) (.rational 69407749 1)) .v) (.rational 88551701 1)) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 54503758 1) .v) (.rational 249129766 1)) .v) (.rational 565897836 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 272518790 1) .v) (.rational 1082743268 1)) .v)
    (.rational 2181193246 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 578814928 1) .v)
    (.rational 1983830346 1)) .v) (.rational 3501898906 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 680146972 1) .v) (.rational 2000431810 1)) .v) (.rational 3044377130
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 482000378 1) .v) (.rational
    1215692367 1)) .v) (.rational 1561673285 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 210065650 1) .v) (.rational 457509871 1)) .v) (.rational 483751485 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 54674768 1) .v) (.rational 104668597 1)) .v)
    (.rational 88914609 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 107210156 1) .v)
    (.rational 434865706 1)) .v) (.rational 766363830 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 589655858 1) .v) (.rational 2141103001 1)) .v) (.rational 3396059541 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1399574886 1) .v) (.rational 4528691727 1)) .v)
    (.rational 6397736643 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1875668052 1) .v) (.rational 5392875506 1)) .v) (.rational 6700540650 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1558184256 1) .v) (.rational 3980882954 1)) .v)
    (.rational 4287136912 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 828118326
    1) .v) (.rational 1888315034 1)) .v) (.rational 1735777674 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 279775482 1) .v) (.rational 575300170 1)) .v) (.rational
    445559332 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 57422388 1) .v)
    (.rational 108285247 1)) .v) (.rational 70295631 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 161894390 1) .v) (.rational 594490150 1)) .v) (.rational 839889890 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 971366340 1) .v) (.rational 3267508266 1)) .v)
    (.rational 4219782146 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2545896276 1) .v)
    (.rational 7820835497 1)) .v) (.rational 9155683737 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3825289930 1) .v) (.rational 10710345249 1)) .v) (.rational 11260006599
    1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3633732930 1) .v) (.rational
    9271445904 1)) .v) (.rational 8666336402 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2268221880 1) .v) (.rational 5286741064 1)) .v) (.rational 4351160498 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 935674812 1) .v) (.rational 2003706816 1))
    .v) (.rational 1440891954 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    249435822 1) .v) (.rational 495407654 1)) .v) (.rational 310286074 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 40538456 1) .v) (.rational 75606045 1)) .v) (.rational
    41397213 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 188992408
    1) .v) (.rational 636828480 1)) .v) (.rational 743317672 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1228450652 1) .v) (.rational 3861485238 1)) .v) (.rational 4183246224 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3521441084 1) .v) (.rational 10301651868 1)) .v)
    (.rational 10291403054 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5854968790 1) .v) (.rational 15914057552 1)) .v) (.rational 14560190994 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6245695918 1) .v) (.rational 15763715250 1)) .v)
    (.rational 13116350030 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4462801464 1) .v) (.rational 10469218770 1)) .v) (.rational 7870023854 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2163313440 1) .v) (.rational 4730297568 1)) .v)
    (.rational 3195809506 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 704057394
    1) .v) (.rational 1442039461 1)) .v) (.rational 873198945 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 148486122 1) .v) (.rational 286785821 1)) .v) (.rational
    155763941 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 18867044 1) .v)
    (.rational 34610295 1)) .v) (.rational 16930103 1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 170376186 1) .v) (.rational 531726692 1)) .v)
    (.rational 526747758 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1192633302 1) .v)
    (.rational 3523001632 1)) .v) (.rational 3285333756 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3709952432 1) .v) (.rational 10352159400 1)) .v) (.rational 9043061464 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6755481666 1) .v) (.rational 17778142660 1))
    .v) (.rational 14473079828 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7981637614 1) .v) (.rational 19791155756 1)) .v) (.rational 14938311106 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6407366496 1) .v) (.rational 14967882782 1)) .v)
    (.rational 10424281204 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3555008040 1) .v) (.rational 7831350030 1)) .v) (.rational 5011974018 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1358542314 1) .v) (.rational 2828131858 1)) .v)
    (.rational 1658631862 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 349240980
    1) .v) (.rational 689162835 1)) .v) (.rational 369979437 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 57434454 1) .v) (.rational 107795359 1)) .v) (.rational 52998237
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 5490336 1) .v) (.rational
    9820403 1)) .v) (.rational 4424573 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 117530036 1) .v) (.rational 341950658 1)) .v)
    (.rational 294319008 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 881475270 1) .v)
    (.rational 2456134945 1)) .v) (.rational 2015317431 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2956123058 1) .v) (.rational 7874360343 1)) .v) (.rational 6136314125 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5845758282 1) .v) (.rational 14862749369 1))
    .v) (.rational 10957035391 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    7567166630 1) .v) (.rational 18340566441 1)) .v) (.rational 12740717595 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6727966872 1) .v) (.rational 15532234276 1)) .v)
    (.rational 10128505366 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4191399372 1) .v) (.rational 9214449232 1)) .v) (.rational 5620888162 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1831075482 1) .v) (.rational 3834639397 1)) .v)
    (.rational 2181864675 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 551560418
    1) .v) (.rational 1101227303 1)) .v) (.rational 583182923 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 110202974 1) .v) (.rational 209958007 1)) .v) (.rational
    103323579 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 13567342 1) .v)
    (.rational 24665537 1)) .v) (.rational 11260173 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 889696 1) .v) (.rational 1538878 1)) .v) (.rational 649182 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    60870022 1) .v) (.rational 165884000 1)) .v) (.rational 126557518 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 486960176 1) .v) (.rational 1283223112 1)) .v) (.rational 943565446 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1750805028 1) .v) (.rational 4453983637 1))
    .v) (.rational 3147324219 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3733832116 1) .v) (.rational 9155757843 1)) .v) (.rational 6198477719 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5249020038 1) .v) (.rational 12388827847 1)) .v)
    (.rational 8010425309 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5110990728 1) .v) (.rational 11596770937 1)) .v) (.rational 7138857345 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3523185776 1) .v) (.rational 7677514080 1)) .v)
    (.rational 4485852022 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1725424998 1) .v) (.rational 3608429782 1)) .v) (.rational 1995326696 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 592658656 1) .v) (.rational 1188848723 1)) .v)
    (.rational 620468167 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 138228228
    1) .v) (.rational 265799457 1)) .v) (.rational 130589631 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 20558456 1) .v) (.rational 37848457 1)) .v) (.rational 17453485
    1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1721290 1) .v) (.rational
    3024773 1)) .v) (.rational 1303483 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 59560 1) .v) (.rational 99160 1)) .v) (.rational 39600 1)) (.pow .g 12)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    22890336 1) .v) (.rational 58639844 1)) .v) (.rational 40330470 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 194567856 1) .v) (.rational 485837790 1)) .v) (.rational 325047350 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 746388784 1) .v) (.rational 1813976044 1))
    .v) (.rational 1177940482 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1706558760 1) .v) (.rational 4030833437 1)) .v) (.rational 2534425981 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2586480248 1) .v) (.rational 5928655843 1)) .v)
    (.rational 3600255747 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2733097016 1) .v) (.rational 6070980859 1)) .v) (.rational 3551257761 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2060735732 1) .v) (.rational 4429878359 1)) .v)
    (.rational 2489332433 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1114552098 1) .v) (.rational 2315632197 1)) .v) (.rational 1246600471 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 427937990 1) .v) (.rational 858198397 1)) .v)
    (.rational 441350441 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 113339868
    1) .v) (.rational 219082843 1)) .v) (.rational 107311997 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 19557040 1) .v) (.rational 36369665 1)) .v) (.rational 16910481
    1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 1959826 1) .v) (.rational
    3496234 1)) .v) (.rational 1536408 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 85294 1) .v) (.rational 145208 1)) .v) (.rational 59914 1)) (.pow .g 12))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    5894572 1) .v) (.rational 14235894 1)) .v) (.rational 8952648 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 53051148 1) .v) (.rational 125727100 1)) .v) (.rational 77513594 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 216234880 1) .v) (.rational 502241442 1)) .v)
    (.rational 303037172 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 527386352
    1) .v) (.rational 1198925134 1)) .v) (.rational 706637482 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 856472966 1) .v) (.rational 1903061923 1)) .v) (.rational
    1093452121 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 974774010 1) .v)
    (.rational 2113968829 1)) .v) (.rational 1181526523 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 796417060 1) .v) (.rational 1683262007 1)) .v) (.rational 913032239 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 470114302 1) .v) (.rational
    966878669 1)) .v) (.rational 507716627 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 198719592 1) .v) (.rational 397077179 1)) .v) (.rational 201321257 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 58570746 1) .v) (.rational 113507803 1)) .v)
    (.rational 55405711 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 11403428 1)
    .v) (.rational 21389915 1)) .v) (.rational 10019385 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1313362 1) .v) (.rational 2378257 1)) .v) (.rational 1064895 1)) (.pow
    .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 67422 1) .v) (.rational 117432 1)) .v)
    (.rational 50010 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 928304 1) .v) (.rational 2118910
    1)) .v) (.rational 1233250 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 8818888 1) .v)
    (.rational 19866809 1)) .v) (.rational 11408695 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 38052960 1) .v) (.rational 84517635 1)) .v) (.rational 47827251 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 98568516 1) .v) (.rational 215604678 1)) .v)
    (.rational 120059952 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 170623652
    1) .v) (.rational 367113144 1)) .v) (.rational 200853670 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 207833646 1) .v) (.rational 439298704 1)) .v) (.rational
    235743556 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 182580370 1) .v)
    (.rational 378605416 1)) .v) (.rational 198909480 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 116503582 1) .v) (.rational 236661330 1)) .v) (.rational 121477934 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 53568306 1) .v) (.rational
    106432568 1)) .v) (.rational 53256872 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17301922 1) .v) (.rational 33566679 1)) .v) (.rational 16333285 1)) (.pow .g 9)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3724662 1) .v) (.rational 7042709 1)) .v)
    (.rational 3323381 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 479622 1)
    .v) (.rational 881992 1)) .v) (.rational 402370 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 27922 1) .v) (.rational 49810 1)) .v) (.rational 21888 1)) (.pow .g 12)))
    (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 67288 1) .v) (.rational 145518 1)) .v) (.rational 79214 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 672880 1) .v) (.rational 1443294 1)) .v) (.rational 779290
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3063684 1) .v) (.rational 6512873 1))
    .v) (.rational 3485045 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8396076
    1) .v) (.rational 17674833 1)) .v) (.rational 9364149 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 15421278 1) .v) (.rational 32118240 1)) .v) (.rational 16829682 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19995264 1) .v) (.rational 41159928
    1)) .v) (.rational 21305280 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    18764256 1) .v) (.rational 38134614 1)) .v) (.rational 19473174 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 12840888 1) .v) (.rational 25734102 1)) .v) (.rational
    12944430 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6360156 1) .v)
    (.rational 12553218 1)) .v) (.rational 6209694 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2224048 1) .v) (.rational 4317330 1)) .v) (.rational 2096462 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 521356 1) .v) (.rational 993945 1)) .v)
    (.rational 472861 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 73596 1) .v)
    (.rational 137585 1)) .v) (.rational 63989 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4734 1) .v) (.rational 8664 1)) .v) (.rational 3930 1)) (.pow .g 12))) (.pow
    .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1313

namespace FullLow1314
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsLow4.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    4*SmallGap.PolarCoefficientsLow3.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow4.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow2.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    12*SmallGap.PolarCoefficientsLow3.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsLow4.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    32*SmallGap.PolarCoefficientsLow1.c140 e f g v*((e+f)*(e+f+g))^4+
    48*SmallGap.PolarCoefficientsLow2.c140 e f g v*e*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsLow3.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsLow4.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow3.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    6*SmallGap.PolarCoefficientsLow2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow3.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    16*SmallGap.PolarCoefficientsLow1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsLow2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow3.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    40*SmallGap.PolarCoefficientsLow0.c230 e f g v*((e+f)*(e+f+g))^3+
    48*SmallGap.PolarCoefficientsLow1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    18*SmallGap.PolarCoefficientsLow2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsLow3.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    15*SmallGap.PolarCoefficientsLow0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    6*SmallGap.PolarCoefficientsLow1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    30*SmallGap.PolarCoefficientsLow0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(140*SmallGap.ReducedLayers.low0_100_0 e g
    v*e^3+140*SmallGap.ReducedLayers.low0_100_1 e g v*e^4+84*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^5+28*SmallGap.ReducedLayers.low0_100_3 e g v*e^6+4*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^7+60*SmallGap.ReducedLayers.low0_010_0 e g v*e^1+120*SmallGap.ReducedLayers.low0_010_1 e g
    v*e^2+120*SmallGap.ReducedLayers.low0_010_2 e g v*e^3+60*SmallGap.ReducedLayers.low0_010_3 e g
    v*e^4+12*SmallGap.ReducedLayers.low0_010_4 e g v*e^5+60*SmallGap.ReducedLayers.low0_001_0 e g
    v*e^2+80*SmallGap.ReducedLayers.low0_001_1 e g v*e^3+60*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^4+24*SmallGap.ReducedLayers.low0_001_3 e g v*e^5+4*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(15*SmallGap.ReducedLayers.low1_110_0 e g v*e^1+30*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^2+30*SmallGap.ReducedLayers.low1_110_2 e g v*e^3+15*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^4+3*SmallGap.ReducedLayers.low1_110_4 e g v*e^5+15*SmallGap.ReducedLayers.low1_101_0 e g
    v*e^2+20*SmallGap.ReducedLayers.low1_101_1 e g v*e^3+15*SmallGap.ReducedLayers.low1_101_2 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_101_3 e g v*e^5+1*SmallGap.ReducedLayers.low1_101_4 e g
    v*e^6+6*SmallGap.ReducedLayers.low1_020_1 e g v+18*SmallGap.ReducedLayers.low1_020_2 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_020_3 e g v*e^2+6*SmallGap.ReducedLayers.low1_020_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_0 e g v+12*SmallGap.ReducedLayers.low1_011_1 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_011_2 e g v*e^2+12*SmallGap.ReducedLayers.low1_011_3 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_4 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 20160 1) .v) (.rational 775200 1)) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 12320 1) .v) (.rational 342048 1)) .v) (.rational 6063344 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 30800 1) .v) (.rational 507136 1)) .v) (.rational 7545016 1)) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 209860 1) .v) (.rational 2821504
    1)) .v) (.rational 29740530 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 629580 1) .v)
    (.rational 5641048 1)) .v) (.rational 50920584 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 682360 1) .v) (.rational 3501008 1)) .v) (.rational 29738630 1)) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1680000 1) .v)
    (.rational 14918668 1)) .v) (.rational 102608677 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5880000 1) .v) (.rational 38002002 1)) .v) (.rational 225243776 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7960960 1) .v) (.rational 34896670 1)) .v) (.rational
    182346351 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5202400 1) .v)
    (.rational 14097310 1)) .v) (.rational 66431714 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 8335980 1) .v) (.rational 56121408
    1)) .v) (.rational 264822829 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 33343920 1) .v)
    (.rational 175022898 1)) .v) (.rational 714782282 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 53873700 1) .v) (.rational 212932318 1)) .v) (.rational 749447781 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 44917380 1) .v) (.rational 128940454 1)) .v)
    (.rational 384906920 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 20352400
    1) .v) (.rational 41216306 1)) .v) (.rational 100169592 1)) (.pow .g 4)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 28543582 1)
    .v) (.rational 157719222 1)) .v) (.rational 530371641 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 128446119 1) .v) (.rational 584073425 1)) .v) (.rational 1712200952 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 240459616 1) .v) (.rational 884043018 1)) .v)
    (.rational 2230033337 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 242193434
    1) .v) (.rational 709221640 1)) .v) (.rational 1505526786 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 141384466 1) .v) (.rational 327593852 1)) .v) (.rational
    564108548 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 47685191 1) .v)
    (.rational 88446783 1)) .v) (.rational 116892500 1)) (.pow .g 5)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    71159316 1) .v) (.rational 339097768 1)) .v) (.rational 842242367 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 355796580 1) .v) (.rational 1455381408 1)) .v) (.rational 3187286460
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 755945665 1) .v) (.rational 2629762487
    1)) .v) (.rational 5007918567 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    889003180 1) .v) (.rational 2613366374 1)) .v) (.rational 4244982270 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 630910950 1) .v) (.rational 1566536680 1)) .v)
    (.rational 2115632914 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 275567356
    1) .v) (.rational 583623066 1)) .v) (.rational 635673024 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 71940485 1) .v) (.rational 133156865 1)) .v) (.rational 113840294
    1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 132897276 1) .v) (.rational 563664658 1)) .v)
    (.rational 1071862767 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 730935018 1) .v)
    (.rational 2749734601 1)) .v) (.rational 4678524400 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1735592868 1) .v) (.rational 5761380747 1)) .v) (.rational 8667633404 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2328155271 1) .v) (.rational 6799617011 1))
    .v) (.rational 8916055296 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1937234504 1) .v) (.rational 4982626654 1)) .v) (.rational 5601597470 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1032141292 1) .v) (.rational 2353907481 1)) .v)
    (.rational 2231769690 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 349925152
    1) .v) (.rational 717971173 1)) .v) (.rational 567474029 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 72146859 1) .v) (.rational 136201347 1)) .v) (.rational 89836484
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 188526628 1) .v) (.rational
    726098690 1)) .v) (.rational 1094939067 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1131159768 1) .v) (.rational 3963782072 1)) .v) (.rational 5435979870 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2966110927 1) .v) (.rational 9426610311 1)) .v) (.rational
    11649720008 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4461590095 1) .v)
    (.rational 12839109879 1)) .v) (.rational 14154187488 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4246286903 1) .v) (.rational 11073653235 1)) .v) (.rational 10776988972
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2658364490 1) .v) (.rational
    6309534800 1)) .v) (.rational 5370886592 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1101183701 1) .v) (.rational 2399278611 1)) .v) (.rational 1776649885 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 295196339 1) .v) (.rational 598169889 1))
    .v) (.rational 385917952 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    48314873 1) .v) (.rational 92521977 1)) .v) (.rational 52549570 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 203817660 1) .v) (.rational 721928266 1)) .v)
    (.rational 892088709 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1324814790 1) .v)
    (.rational 4355242701 1)) .v) (.rational 4974883539 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3799804886 1) .v) (.rational 11567593392 1)) .v) (.rational 12131252325 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6325964183 1) .v) (.rational 17811359075
    1)) .v) (.rational 17028298160 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6763204797 1) .v) (.rational 17617157656 1)) .v) (.rational 15249385383 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4849134249 1) .v) (.rational 11713245398 1)) .v)
    (.rational 9127899595 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2362104476 1) .v) (.rational 5316619850 1)) .v) (.rational 3717984384 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 773896405 1) .v) (.rational 1635053301 1)) .v)
    (.rational 1026711600 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 164649989
    1) .v) (.rational 329521960 1)) .v) (.rational 186737601 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 21153661 1) .v) (.rational 40460685 1)) .v) (.rational 20855708
    1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 166914842
    1) .v) (.rational 548101658 1)) .v) (.rational 571416653 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1168403894 1) .v) (.rational 3617337024 1)) .v) (.rational 3539423328 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3636931222 1) .v) (.rational 10596449423 1)) .v)
    (.rational 9681848024 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6632336710 1) .v) (.rational 18163406724 1)) .v) (.rational 15418379138 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7856153656 1) .v) (.rational 20217136941 1)) .v)
    (.rational 15868184705 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6331307912 1) .v) (.rational 15324197682 1)) .v) (.rational 11077092656 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3532553185 1) .v) (.rational 8060471854 1)) .v)
    (.rational 5352419477 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1360424266 1) .v) (.rational 2937421058 1)) .v) (.rational 1790959268 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 353357036 1) .v) (.rational 725422153 1)) .v)
    (.rational 406811107 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 58902650
    1) .v) (.rational 115498768 1)) .v) (.rational 59759296 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 5729071 1) .v) (.rational 10750331 1)) .v) (.rational 5141244 1))
    (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    101844546 1) .v) (.rational 311622230 1)) .v) (.rational 281001978 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 763834095 1) .v) (.rational 2231423147 1)) .v) (.rational 1914066489
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2563459359 1) .v) (.rational 7138114211
    1)) .v) (.rational 5802271320 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5077668726 1) .v) (.rational 13459723255 1)) .v) (.rational 10328456312 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6591624965 1) .v) (.rational 16620542159 1)) .v)
    (.rational 11996649515 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5886178958 1) .v) (.rational 14116466152 1)) .v) (.rational 9554057040 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3689999363 1) .v) (.rational 8422831144 1)) .v)
    (.rational 5332519688 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1626051135 1) .v) (.rational 3537849398 1)) .v) (.rational 2092372348 1)) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 495563145 1) .v) (.rational 1029746059 1)) .v)
    (.rational 568762213 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 100566021
    1) .v) (.rational 199924261 1)) .v) (.rational 103156177 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12637366 1) .v) (.rational 24035579 1)) .v) (.rational 11579012
    1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 851329 1) .v) (.rational
    1541651 1)) .v) (.rational 690322 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 44873556 1) .v) (.rational 128355654 1))
    .v) (.rational 102201052 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 358988448 1) .v)
    (.rational 990461478 1)) .v) (.rational 758890676 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1291723271 1) .v) (.rational 3432327967 1)) .v) (.rational 2523237039 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2759765057 1) .v) (.rational 7052785713 1))
    .v) (.rational 4959837084 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3891727634 1) .v) (.rational 9554791607 1)) .v) (.rational 6409207649 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3807394447 1) .v) (.rational 8973599867 1)) .v)
    (.rational 5726017216 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2642515065 1) .v) (.rational 5976653412 1)) .v) (.rational 3619294384 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1306403366 1) .v) (.rational 2835466318 1)) .v)
    (.rational 1626471104 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 454501063
    1) .v) (.rational 946855662 1)) .v) (.rational 513727363 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 107829883 1) .v) (.rational 215618513 1)) .v) (.rational
    110511400 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 16405392 1) .v)
    (.rational 31451057 1)) .v) (.rational 15198683 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1415831 1) .v) (.rational 2591735 1)) .v) (.rational 1175904 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 51051 1) .v) (.rational 88265 1)) .v)
    (.rational 37214 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 13493418 1) .v) (.rational 36155992 1)) .v)
    (.rational 25851430 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 114694053 1) .v)
    (.rational 298952950 1)) .v) (.rational 207688389 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 440354952 1) .v) (.rational 1114918048 1)) .v) (.rational 750865442 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1008781080 1) .v) (.rational 2477497153 1))
    .v) (.rational 1613653826 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1533980574 1) .v) (.rational 3649661947 1)) .v) (.rational 2293409310 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1629133233 1) .v) (.rational 3750648896 1)) .v)
    (.rational 2268474290 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1237283878 1) .v) (.rational 2753642691 1)) .v) (.rational 1599346260 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 675925030 1) .v) (.rational 1452983036 1)) .v)
    (.rational 808675677 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 263061695
    1) .v) (.rational 545758543 1)) .v) (.rational 290482711 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 70939764 1) .v) (.rational 141901702 1)) .v) (.rational 72082555
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 12536440 1) .v) (.rational
    24138269 1)) .v) (.rational 11673540 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1296680 1) .v) (.rational 2395431 1)) .v) (.rational 1098751 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 58883 1) .v) (.rational 103678 1)) .v) (.rational
    44795 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 2478410 1) .v) (.rational 6229238 1)) .v) (.rational
    4054110 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 22305690 1) .v) (.rational 54925048
    1)) .v) (.rational 35012672 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 90997463 1)
    .v) (.rational 219235182 1)) .v) (.rational 136641679 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 222384064 1) .v) (.rational 523520808 1)) .v) (.rational 318419208 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 362392929 1) .v) (.rational
    832494745 1)) .v) (.rational 493142232 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 414614123 1) .v) (.rational 928213229 1)) .v) (.rational 534401118 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 341302128 1) .v) (.rational 743685674 1))
    .v) (.rational 415264750 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    203560761 1) .v) (.rational 431170331 1)) .v) (.rational 233013570 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 87250744 1) .v) (.rational 179424028 1)) .v) (.rational
    93644418 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 26193179 1) .v)
    (.rational 52222395 1)) .v) (.rational 26264162 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5223693 1) .v) (.rational 10079996 1)) .v) (.rational 4873043 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 620743 1) .v) (.rational 1156541 1)) .v)
    (.rational 535798 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 33193 1) .v)
    (.rational 59489 1)) .v) (.rational 26296 1)) (.pow .g 12))) (.pow .f 2))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 209790 1)
    .v) (.rational 494996 1)) .v) (.rational 296462 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1993005 1) .v) (.rational 4635174 1)) .v) (.rational 2737215 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 8607327 1) .v) (.rational 19709762 1)) .v) (.rational
    11460741 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22340652 1) .v)
    (.rational 50309636 1)) .v) (.rational 28762754 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 38806026 1) .v) (.rational 85834112 1)) .v) (.rational 48172012 1)) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 47518665 1) .v) (.rational 103103990 1)) .v)
    (.rational 56705563 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 42060375 1)
    .v) (.rational 89406282 1)) .v) (.rational 48100773 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 27117363 1) .v) (.rational 56396506 1)) .v) (.rational 29624789 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 12641727 1) .v) (.rational 25688626
    1)) .v) (.rational 13149869 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4157406 1) .v) (.rational 8243132 1)) .v) (.rational 4103762 1)) (.pow .g 9))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 915990 1) .v) (.rational 1769564 1)) .v) (.rational 854986 1))
    (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 121485 1) .v) (.rational 228298
    1)) .v) (.rational 106813 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 7341
    1) .v) (.rational 13394 1)) .v) (.rational 6053 1)) (.pow .g 12))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1314

namespace FullLow1315
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  4*SmallGap.PolarCoefficientsLow4.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    12*SmallGap.PolarCoefficientsLow3.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    12*SmallGap.PolarCoefficientsLow4.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    32*SmallGap.PolarCoefficientsLow2.c140 e f g v*((e+f)*(e+f+g))^4+
    48*SmallGap.PolarCoefficientsLow3.c140 e f g v*e*((e+f)*(e+f+g))^4+
    24*SmallGap.PolarCoefficientsLow4.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    2*SmallGap.PolarCoefficientsLow4.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    6*SmallGap.PolarCoefficientsLow3.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsLow4.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    16*SmallGap.PolarCoefficientsLow2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsLow3.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsLow4.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    40*SmallGap.PolarCoefficientsLow1.c230 e f g v*((e+f)*(e+f+g))^3+
    48*SmallGap.PolarCoefficientsLow2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    18*SmallGap.PolarCoefficientsLow3.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    2*SmallGap.PolarCoefficientsLow4.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    15*SmallGap.PolarCoefficientsLow1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    6*SmallGap.PolarCoefficientsLow2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    36*SmallGap.PolarCoefficientsLow0.c320 e f g v*((e+f)*(e+f+g))^2+
    30*SmallGap.PolarCoefficientsLow1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    12*SmallGap.PolarCoefficientsLow0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(84*SmallGap.ReducedLayers.low0_100_0 e g
    v*e^2+140*SmallGap.ReducedLayers.low0_100_1 e g v*e^3+140*SmallGap.ReducedLayers.low0_100_2 e
    g v*e^4+84*SmallGap.ReducedLayers.low0_100_3 e g v*e^5+28*SmallGap.ReducedLayers.low0_100_4 e
    g v*e^6+12*SmallGap.ReducedLayers.low0_010_0 e g v+60*SmallGap.ReducedLayers.low0_010_1 e g
    v*e^1+120*SmallGap.ReducedLayers.low0_010_2 e g v*e^2+120*SmallGap.ReducedLayers.low0_010_3 e
    g v*e^3+60*SmallGap.ReducedLayers.low0_010_4 e g v*e^4+12*SmallGap.ReducedLayers.low0_010_5 e
    g v*e^5+24*SmallGap.ReducedLayers.low0_001_0 e g v*e^1+60*SmallGap.ReducedLayers.low0_001_1 e
    g v*e^2+80*SmallGap.ReducedLayers.low0_001_2 e g v*e^3+60*SmallGap.ReducedLayers.low0_001_3 e
    g v*e^4+24*SmallGap.ReducedLayers.low0_001_4 e g v*e^5+4*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_0 e g v+15*SmallGap.ReducedLayers.low1_110_1 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_110_2 e g v*e^2+30*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_110_4 e g v*e^4+3*SmallGap.ReducedLayers.low1_110_5 e g
    v*e^5+6*SmallGap.ReducedLayers.low1_101_0 e g v*e^1+15*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^2+20*SmallGap.ReducedLayers.low1_101_2 e g v*e^3+15*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_101_4 e g v*e^5+1*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^6+6*SmallGap.ReducedLayers.low1_020_2 e g v+18*SmallGap.ReducedLayers.low1_020_3 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_020_4 e g v*e^2+6*SmallGap.ReducedLayers.low1_020_5 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_1 e g v+12*SmallGap.ReducedLayers.low1_011_2 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_011_3 e g v*e^2+12*SmallGap.ReducedLayers.low1_011_4 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_5 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    25200 1) .v) (.rational 1086120 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 12880
    1) .v) (.rational 403872 1)) .v) (.rational 8160544 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 32200 1) .v) (.rational 586544 1)) .v) (.rational 9952208 1)) .g))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 213276 1) .v) (.rational 3158176 1)) .v)
    (.rational 38291554 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 639828 1) .v) (.rational
    6136536 1)) .v) (.rational 64035832 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    693728 1) .v) (.rational 3576048 1)) .v) (.rational 36121302 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1657992 1) .v) (.rational
    15909486 1)) .v) (.rational 125842274 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 5802972
    1) .v) (.rational 39384433 1)) .v) (.rational 269362601 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7859684 1) .v) (.rational 34446975 1)) .v) (.rational 210370555 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5141780 1) .v) (.rational 12692355 1)) .v)
    (.rational 72427723 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 7962788 1) .v) (.rational 57281464 1)) .v) (.rational
    308101954 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 31851152 1) .v) (.rational
    174333522 1)) .v) (.rational 810981692 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    51480444 1) .v) (.rational 204806220 1)) .v) (.rational 821856748 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 42962300 1) .v) (.rational 117903856 1)) .v) (.rational
    401803714 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 19501216 1) .v)
    (.rational 35094588 1)) .v) (.rational 96756414 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 26248752 1) .v)
    (.rational 154288414 1)) .v) (.rational 582841778 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 118119384 1) .v) (.rational 560637499 1)) .v) (.rational 1838406867 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 221207368 1) .v) (.rational 828577824 1)) .v)
    (.rational 2324419584 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 223001996
    1) .v) (.rational 645677046 1)) .v) (.rational 1509062030 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 130392500 1) .v) (.rational 288641518 1)) .v) (.rational
    536301798 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 44088156 1) .v)
    (.rational 75615975 1)) .v) (.rational 103478727 1)) (.pow .g 5)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    62501048 1) .v) (.rational 316743366 1)) .v) (.rational 869512022 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 312505240 1) .v) (.rational 1340564084 1)) .v) (.rational 3225215488
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 664229531 1) .v) (.rational 2384293719
    1)) .v) (.rational 4947777452 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    781886684 1) .v) (.rational 2329654738 1)) .v) (.rational 4076080570 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 555824686 1) .v) (.rational 1374035396 1)) .v)
    (.rational 1965135568 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 243392672
    1) .v) (.rational 505810224 1)) .v) (.rational 569877444 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 63761711 1) .v) (.rational 115050439 1)) .v) (.rational 99117914
    1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 110255470 1) .v) (.rational 497962544 1)) .v)
    (.rational 1031222458 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 606405085 1) .v)
    (.rational 2404762696 1)) .v) (.rational 4428448117 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1440563075 1) .v) (.rational 4986379374 1)) .v) (.rational 8057579999 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1934495700 1) .v) (.rational 5827009167 1))
    .v) (.rational 8129372901 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1612720052 1) .v) (.rational 4235937760 1)) .v) (.rational 5009567850 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 861709177 1) .v) (.rational 1992975408 1)) .v)
    (.rational 1964144935 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 293298919
    1) .v) (.rational 609085468 1)) .v) (.rational 495999807 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 60772230 1) .v) (.rational 116620185 1)) .v) (.rational 79256455
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 145504668 1) .v) (.rational
    597443190 1)) .v) (.rational 969668732 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    873028008 1) .v) (.rational 3237492128 1)) .v) (.rational 4753481258 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2290492789 1) .v) (.rational 7646214999 1)) .v) (.rational
    10055455396 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3449707205 1) .v)
    (.rational 10354213191 1)) .v) (.rational 12065196858 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3290439867 1) .v) (.rational 8898147167 1)) .v) (.rational 9090665856
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2066824326 1) .v) (.rational
    5068895120 1)) .v) (.rational 4503964902 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 860133531 1) .v) (.rational 1936101685 1)) .v) (.rational 1493228640 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 231977625 1) .v) (.rational 487444383 1))
    .v) (.rational 328781952 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    38246545 1) .v) (.rational 76492583 1)) .v) (.rational 45893612 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 143349352 1) .v) (.rational 541421850 1)) .v)
    (.rational 713890558 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 931770788 1) .v)
    (.rational 3248350327 1)) .v) (.rational 3942963395 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2674192864 1) .v) (.rational 8587100964 1)) .v) (.rational 9527220940 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4458582084 1) .v) (.rational 13178015018 1))
    .v) (.rational 13268560846 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4778820456 1) .v) (.rational 13018579113 1)) .v) (.rational 11820488997 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3439544424 1) .v) (.rational 8671460124 1)) .v)
    (.rational 7069946432 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1684579128 1) .v) (.rational 3958503930 1)) .v) (.rational 2896539198 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 555936888 1) .v) (.rational 1229839030 1)) .v)
    (.rational 811268486 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 119375356
    1) .v) (.rational 251468931 1)) .v) (.rational 150896179 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 15507408 1) .v) (.rational 31414261 1)) .v) (.rational 17317201
    1)) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 103976856
    1) .v) (.rational 363724084 1)) .v) (.rational 402108618 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 727837992 1) .v) (.rational 2390291788 1)) .v) (.rational 2472494692 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2267223009 1) .v) (.rational 6978858253 1)) .v)
    (.rational 6719630184 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4141444158 1) .v) (.rational 11940037120 1)) .v) (.rational 10648791044 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4919715221 1) .v) (.rational 13292253021 1)) .v)
    (.rational 10934442418 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3982143466 1) .v) (.rational 10104583218 1)) .v) (.rational 7645429996 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2235653896 1) .v) (.rational 5348906440 1)) .v)
    (.rational 3720115068 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 868259710
    1) .v) (.rational 1969638114 1)) .v) (.rational 1261703510 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 228030693 1) .v) (.rational 493585357 1)) .v) (.rational
    292458824 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 38549770 1) .v)
    (.rational 80039666 1)) .v) (.rational 44068264 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3814137 1) .v) (.rational 7601429 1)) .v) (.rational 3892356 1)) (.pow .g
    10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 53932254 1)
    .v) (.rational 175428934 1)) .v) (.rational 166956428 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 404491905 1) .v) (.rational 1251901201 1)) .v) (.rational 1130753930 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1358605795 1) .v) (.rational 3995077635 1)) .v)
    (.rational 3411603980 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2696143775 1) .v) (.rational 7525805119 1)) .v) (.rational 6053993228 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3511234373 1) .v) (.rational 9302152953 1)) .v)
    (.rational 7026770798 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3150754090 1) .v) (.rational 7928544121 1)) .v) (.rational 5611010935 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1988959304 1) .v) (.rational 4762592549 1)) .v)
    (.rational 3154116509 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 884862273
    1) .v) (.rational 2021615818 1)) .v) (.rational 1253231227 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 273132267 1) .v) (.rational 597201423 1)) .v) (.rational
    347016196 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 56360931 1) .v)
    (.rational 118196993 1)) .v) (.rational 64468646 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7236943 1) .v) (.rational 14543363 1)) .v) (.rational 7439698 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 501042 1) .v) (.rational 956696 1)) .v)
    (.rational 455654 1)) (.pow .g 11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 18942248 1) .v) (.rational 57420078 1)) .v)
    (.rational 48055474 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 151537984 1) .v)
    (.rational 441827634 1)) .v) (.rational 355195470 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 545764705 1) .v) (.rational 1528333881 1)) .v) (.rational 1176755592 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1168438215 1) .v) (.rational 3139188037 1))
    .v) (.rational 2308317670 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1653521589 1) .v) (.rational 4259123687 1)) .v) (.rational 2983142326 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1626411011 1) .v) (.rational 4015708107 1)) .v)
    (.rational 2673293104 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1137526660 1) .v) (.rational 2693231612 1)) .v) (.rational 1701411022 1)) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 568366730 1) .v) (.rational 1291434370 1)) .v)
    (.rational 773529416 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 200582384
    1) .v) (.rational 437787462 1)) .v) (.rational 248531346 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 48500775 1) .v) (.rational 101709277 1)) .v) (.rational 54701770
    1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 7566927 1) .v) (.rational
    15218999 1)) .v) (.rational 7740166 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 675277 1) .v) (.rational 1294023 1)) .v) (.rational 618746 1)) (.pow .g 11))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 25479 1) .v) (.rational 45729 1)) .v) (.rational
    20250 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 4039572 1) .v) (.rational 11423844 1)) .v) (.rational
    8549888 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 34336362 1) .v) (.rational 94228876
    1)) .v) (.rational 68426682 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 131962658 1)
    .v) (.rational 350931996 1)) .v) (.rational 246681486 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 302992695 1) .v) (.rational 779824293 1)) .v) (.rational 529369616 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 462530077 1) .v) (.rational
    1150892585 1)) .v) (.rational 752760676 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 494128921 1) .v) (.rational 1187710212 1)) .v) (.rational 746931347 1)) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 378461261 1) .v) (.rational 878263053 1))
    .v) (.rational 530085630 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    209175373 1) .v) (.rational 468476667 1)) .v) (.rational 270952912 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 82697505 1) .v) (.rational 178682068 1)) .v) (.rational
    98899991 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 22772277 1) .v)
    (.rational 47430050 1)) .v) (.rational 25087561 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4137369 1) .v) (.rational 8289893 1)) .v) (.rational 4180974 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 444004 1) .v) (.rational 851902 1)) .v)
    (.rational 407898 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 21190 1) .v)
    (.rational 38561 1)) .v) (.rational 17371 1)) (.pow .g 12))) .f)) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 395388 1) .v)
    (.rational 1043386 1)) .v) (.rational 707494 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    3558492 1) .v) (.rational 9180684 1)) .v) (.rational 6090368 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14532998 1) .v) (.rational 36606480 1)) .v) (.rational 23713342 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 35604832 1) .v) (.rational 87442704
    1)) .v) (.rational 55203676 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    58267415 1) .v) (.rational 139346813 1)) .v) (.rational 85561940 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 67094377 1) .v) (.rational 156062309 1)) .v) (.rational
    93016276 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 55740530 1) .v)
    (.rational 125965572 1)) .v) (.rational 72737588 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 33667159 1) .v) (.rational 73844431 1)) .v) (.rational 41236612 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 14676542 1) .v) (.rational 31212034 1)) .v)
    (.rational 16826366 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 4505275 1)
    .v) (.rational 9278503 1)) .v) (.rational 4820300 1)) (.pow .g 9))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 925004 1) .v) (.rational 1841648 1)) .v) (.rational 920062 1)) (.pow .g
    10))) .f) (.mul (.add (.mul (.add (.mul (.rational 114153 1) .v) (.rational 219113 1)) .v)
    (.rational 104960 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 6411 1) .v)
    (.rational 11811 1)) .v) (.rational 5400 1)) (.pow .g 12))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1315

namespace FullLow1316
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  12*SmallGap.PolarCoefficientsLow4.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    32*SmallGap.PolarCoefficientsLow3.c140 e f g v*((e+f)*(e+f+g))^4+
    48*SmallGap.PolarCoefficientsLow4.c140 e f g v*e*((e+f)*(e+f+g))^4+
    6*SmallGap.PolarCoefficientsLow4.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    16*SmallGap.PolarCoefficientsLow3.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsLow4.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    40*SmallGap.PolarCoefficientsLow2.c230 e f g v*((e+f)*(e+f+g))^3+
    48*SmallGap.PolarCoefficientsLow3.c230 e f g v*e*((e+f)*(e+f+g))^3+
    18*SmallGap.PolarCoefficientsLow4.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow3.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    15*SmallGap.PolarCoefficientsLow2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    6*SmallGap.PolarCoefficientsLow3.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    36*SmallGap.PolarCoefficientsLow1.c320 e f g v*((e+f)*(e+f+g))^2+
    30*SmallGap.PolarCoefficientsLow2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow3.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    28*SmallGap.PolarCoefficientsLow0.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsLow1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(28*SmallGap.ReducedLayers.low0_100_0 e g v*e^1+84*SmallGap.ReducedLayers.low0_100_1
    e g v*e^2+140*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^3+140*SmallGap.ReducedLayers.low0_100_3 e g v*e^4+84*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^5+12*SmallGap.ReducedLayers.low0_010_1 e g v+60*SmallGap.ReducedLayers.low0_010_2 e g
    v*e^1+120*SmallGap.ReducedLayers.low0_010_3 e g v*e^2+120*SmallGap.ReducedLayers.low0_010_4 e
    g v*e^3+60*SmallGap.ReducedLayers.low0_010_5 e g v*e^4+12*SmallGap.ReducedLayers.low0_010_6 e
    g v*e^5+4*SmallGap.ReducedLayers.low0_001_0 e g v+24*SmallGap.ReducedLayers.low0_001_1 e g
    v*e^1+60*SmallGap.ReducedLayers.low0_001_2 e g v*e^2+80*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^3+60*SmallGap.ReducedLayers.low0_001_4 e g v*e^4+24*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_1 e g v+15*SmallGap.ReducedLayers.low1_110_2 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_110_3 e g v*e^2+30*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_110_5 e g v*e^4+3*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^5+1*SmallGap.ReducedLayers.low1_101_0 e g v+6*SmallGap.ReducedLayers.low1_101_1 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_101_2 e g v*e^2+20*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_101_4 e g v*e^4+6*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^5+6*SmallGap.ReducedLayers.low1_020_3 e g v+18*SmallGap.ReducedLayers.low1_020_4 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_020_5 e g v*e^2+6*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_2 e g v+12*SmallGap.ReducedLayers.low1_011_3 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_011_4 e g v*e^2+12*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_6 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21840 1)
    .v) (.rational 1087800 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 8960 1) .v)
    (.rational 332304 1)) .v) (.rational 7864304 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    22400 1) .v) (.rational 472528 1)) .v) (.rational 9387952 1)) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 144956 1) .v) (.rational 2471280 1)) .v) (.rational
    35326606 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 434868 1) .v) (.rational 4656680 1))
    .v) (.rational 57598744 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 471688 1) .v)
    (.rational 2519440 1)) .v) (.rational 31263274 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1099168 1) .v) (.rational 11880808 1)) .v)
    (.rational 110538367 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 3847088 1) .v)
    (.rational 28494140 1)) .v) (.rational 230196494 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5212816 1) .v) (.rational 23510708 1)) .v) (.rational 172670467 1)) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3414320 1) .v) (.rational 7616332 1)) .v)
    (.rational 55535672 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 5125900 1) .v) (.rational 40974356 1)) .v) (.rational
    256270697 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 20503600 1) .v) (.rational
    121358812 1)) .v) (.rational 656322896 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    33154148 1) .v) (.rational 136822347 1)) .v) (.rational 640162716 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 27699844 1) .v) (.rational 73814665 1)) .v) (.rational
    295166227 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 12600464 1) .v)
    (.rational 19781189 1)) .v) (.rational 64111013 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16289860 1) .v)
    (.rational 105718652 1)) .v) (.rational 456314591 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 73304370 1) .v) (.rational 376232140 1)) .v) (.rational 1403550104 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 137344592 1) .v) (.rational 541182498 1)) .v)
    (.rational 1717346243 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 138619012
    1) .v) (.rational 407416477 1)) .v) (.rational 1066140697 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 81222244 1) .v) (.rational 174820639 1)) .v) (.rational 355359809
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 27551610 1) .v) (.rational
    44010579 1)) .v) (.rational 62360405 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 37000746 1) .v)
    (.rational 206508536 1)) .v) (.rational 635645409 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 185003730 1) .v) (.rational 860959332 1)) .v) (.rational 2307882780 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 393433335 1) .v) (.rational 1505096606 1)) .v)
    (.rational 3450797566 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 463710960
    1) .v) (.rational 1443403778 1)) .v) (.rational 2756576568 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 330378600 1) .v) (.rational 836236199 1)) .v) (.rational
    1282074071 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 145163106 1) .v)
    (.rational 303935161 1)) .v) (.rational 358100441 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 38204215 1) .v) (.rational 68998247 1)) .v) (.rational 60642272 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 61327878 1) .v) (.rational 304499184 1)) .v)
    (.rational 695448945 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 337303329 1) .v)
    (.rational 1454798614 1)) .v) (.rational 2936016538 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 801788821 1) .v) (.rational 2983665208 1)) .v) (.rational 5243082434 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1078274727 1) .v) (.rational 3451246558 1))
    .v) (.rational 5187062487 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    901199900 1) .v) (.rational 2489545136 1)) .v) (.rational 3138144524 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 483374227 1) .v) (.rational 1167929855 1)) .v)
    (.rational 1214990477 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 165388201
    1) .v) (.rational 358462591 1)) .v) (.rational 307007114 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 34492653 1) .v) (.rational 69460873 1)) .v) (.rational 50057864
    1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 74442230 1) .v) (.rational
    335113080 1)) .v) (.rational 592217195 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    446653380 1) .v) (.rational 1801858224 1)) .v) (.rational 2865420056 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1172702444 1) .v) (.rational 4225272017 1)) .v) (.rational
    5982652963 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1769189570 1) .v)
    (.rational 5689637369 1)) .v) (.rational 7093419411 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1692418244 1) .v) (.rational 4875561736 1)) .v) (.rational 5298927816
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1067722736 1) .v) (.rational
    2781158858 1)) .v) (.rational 2620186130 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 447042488 1) .v) (.rational 1069539034 1)) .v) (.rational 876107225 1)) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 121506902 1) .v) (.rational 272656136 1))
    .v) (.rational 196997280 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    20216626 1) .v) (.rational 43494833 1)) .v) (.rational 28332855 1)) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 65470904 1) .v) (.rational 270018100 1)) .v)
    (.rational 384066437 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 425560876 1) .v)
    (.rational 1610537416 1)) .v) (.rational 2100302674 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1222378900 1) .v) (.rational 4236932426 1)) .v) (.rational 5028886643 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2041914314 1) .v) (.rational 6482070537 1))
    .v) (.rational 6953870819 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2195724770 1) .v) (.rational 6401004087 1)) .v) (.rational 6173256797 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1588158564 1) .v) (.rational 4277609450 1)) .v)
    (.rational 3700786902 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 783186072
    1) .v) (.rational 1968074722 1)) .v) (.rational 1531847024 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 260805546 1) .v) (.rational 619236244 1)) .v) (.rational
    437326650 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 56631186 1) .v)
    (.rational 128738668 1)) .v) (.rational 83478752 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 7450300 1) .v) (.rational 16372581 1)) .v) (.rational 9837893 1)) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 40603378 1) .v)
    (.rational 154321528 1)) .v) (.rational 182795901 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 284223646 1) .v) (.rational 1009478956 1)) .v) (.rational 1115370180 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 886169773 1) .v) (.rational 2937205860 1)) .v)
    (.rational 3011613026 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1622111240 1) .v) (.rational 5016863146 1)) .v) (.rational 4751573706 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1933812693 1) .v) (.rational 5589735784 1)) .v)
    (.rational 4873855533 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1573707328 1) .v) (.rational 4266886090 1)) .v) (.rational 3420703710 1)) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 890205270 1) .v) (.rational 2277195702 1)) .v)
    (.rational 1681166358 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 349234644
    1) .v) (.rational 849131560 1)) .v) (.rational 579884934 1)) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 92912215 1) .v) (.rational 216369477 1)) .v) (.rational 137518048
    1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 15956942 1) .v) (.rational
    35774577 1)) .v) (.rational 21255361 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1606827 1) .v) (.rational 3461453 1)) .v) (.rational 1918144 1)) (.pow .g 10))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16839486 1) .v)
    (.rational 59188336 1)) .v) (.rational 60037180 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 126296145 1) .v) (.rational 420776458 1)) .v) (.rational 404110216 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 424621341 1) .v) (.rational 1339324532 1)) .v)
    (.rational 1213251669 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 844547184
    1) .v) (.rational 2520854212 1)) .v) (.rational 2146668181 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1104069433 1) .v) (.rational 3120557682 1)) .v) (.rational
    2491674496 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 996444229 1) .v)
    (.rational 2671823750 1)) .v) (.rational 1997760045 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 634163280 1) .v) (.rational 1618150250 1)) .v) (.rational 1133326825
    1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 285257211 1) .v) (.rational
    695420546 1)) .v) (.rational 457069118 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 89331699 1) .v) (.rational 208892266 1)) .v) (.rational 129178808 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 18776298 1) .v) (.rational 42202787 1)) .v)
    (.rational 24593830 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 2466473 1)
    .v) (.rational 5312835 1)) .v) (.rational 2909915 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 175325 1) .v) (.rational 356755 1)) .v) (.rational 181430 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    4193814 1) .v) (.rational 13662180 1)) .v) (.rational 12131784 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 33550512 1) .v) (.rational 104783100 1)) .v) (.rational 89204976 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 120960576 1) .v) (.rational 361723218 1)) .v)
    (.rational 294363071 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 259590072
    1) .v) (.rational 742727494 1)) .v) (.rational 576194100 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 368865707 1) .v) (.rational 1009612834 1)) .v) (.rational
    744993811 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 365071602 1) .v)
    (.rational 956428488 1)) .v) (.rational 670250654 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 257592331 1) .v) (.rational 646744065 1)) .v) (.rational 430134135 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 130266006 1) .v) (.rational
    313962927 1)) .v) (.rational 198192387 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 46717575 1) .v) (.rational 108245926 1)) .v) (.rational 64888147 1)) (.pow .g 8)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11538054 1) .v) (.rational 25702122 1)) .v)
    (.rational 14627504 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 1850761 1)
    .v) (.rational 3949595 1)) .v) (.rational 2127842 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 171306 1) .v) (.rational 346333 1)) .v) (.rational 175027 1)) (.pow .g
    11))) .f) (.mul (.add (.mul (.add (.mul (.rational 6788 1) .v) (.rational 12646 1)) .v)
    (.rational 5858 1)) (.pow .g 12)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 474768 1) .v) (.rational 1435416 1)) .v) (.rational
    1135008 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 4035528 1) .v) (.rational 11805648
    1)) .v) (.rational 9042390 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 15527574 1)
    .v) (.rational 43894532 1)) .v) (.rational 32488064 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 35746245 1) .v) (.rational 97541656 1)) .v) (.rational 69600504 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 54813477 1) .v) (.rational
    144270578 1)) .v) (.rational 99035690 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 58958250 1) .v) (.rational 149624386 1)) .v) (.rational 98636649 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 45598295 1) .v) (.rational 111571422 1)) .v)
    (.rational 70538112 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 25542242 1)
    .v) (.rational 60263669 1)) .v) (.rational 36504218 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10282555 1) .v) (.rational 23389921 1)) .v) (.rational 13563629 1))
    (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 2900802 1) .v) (.rational 6354628
    1)) .v) (.rational 3523255 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational
    544307 1) .v) (.rational 1144500 1)) .v) (.rational 604986 1)) (.pow .g 10))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 60997 1) .v) (.rational 122189 1)) .v) (.rational 61192 1)) (.pow
    .g 11))) .f) (.mul (.add (.mul (.add (.mul (.rational 3088 1) .v) (.rational 5807 1)) .v)
    (.rational 2719 1)) (.pow .g 12))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1316

namespace FullLow1317
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  32*SmallGap.PolarCoefficientsLow4.c140 e f g v*((e+f)*(e+f+g))^4+
    16*SmallGap.PolarCoefficientsLow4.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    40*SmallGap.PolarCoefficientsLow3.c230 e f g v*((e+f)*(e+f+g))^3+
    48*SmallGap.PolarCoefficientsLow4.c230 e f g v*e*((e+f)*(e+f+g))^3+
    6*SmallGap.PolarCoefficientsLow4.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    15*SmallGap.PolarCoefficientsLow3.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    6*SmallGap.PolarCoefficientsLow4.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    36*SmallGap.PolarCoefficientsLow2.c320 e f g v*((e+f)*(e+f+g))^2+
    30*SmallGap.PolarCoefficientsLow3.c320 e f g v*e*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsLow4.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    28*SmallGap.PolarCoefficientsLow1.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsLow2.c410 e f g v*e*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsLow0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_0 e g v+28*SmallGap.ReducedLayers.low0_100_1 e g
    v*e^1+84*SmallGap.ReducedLayers.low0_100_2 e g v*e^2+140*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^3+140*SmallGap.ReducedLayers.low0_100_4 e g v*e^4+12*SmallGap.ReducedLayers.low0_010_2 e g
    v+60*SmallGap.ReducedLayers.low0_010_3 e g v*e^1+120*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^2+120*SmallGap.ReducedLayers.low0_010_5 e g v*e^3+60*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^4+4*SmallGap.ReducedLayers.low0_001_1 e g v+24*SmallGap.ReducedLayers.low0_001_2 e g
    v*e^1+60*SmallGap.ReducedLayers.low0_001_3 e g v*e^2+80*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^3+60*SmallGap.ReducedLayers.low0_001_5 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_2 e g v+15*SmallGap.ReducedLayers.low1_110_3 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_110_4 e g v*e^2+30*SmallGap.ReducedLayers.low1_110_5 e g
    v*e^3+15*SmallGap.ReducedLayers.low1_110_6 e g v*e^4+1*SmallGap.ReducedLayers.low1_101_1 e g
    v+6*SmallGap.ReducedLayers.low1_101_2 e g v*e^1+15*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^2+20*SmallGap.ReducedLayers.low1_101_4 e g v*e^3+15*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^4+6*SmallGap.ReducedLayers.low1_020_4 e g v+18*SmallGap.ReducedLayers.low1_020_5 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_020_6 e g v*e^2+6*SmallGap.ReducedLayers.low1_020_7 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_3 e g v+12*SmallGap.ReducedLayers.low1_011_4 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_011_5 e g v*e^2+12*SmallGap.ReducedLayers.low1_011_6 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_7 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 12960 1) .v) (.rational
    778800 1)) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 4000 1) .v) (.rational 188160
    1)) .v) (.rational 5427112 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 10000 1) .v)
    (.rational 261920 1)) .v) (.rational 6333584 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 63524 1) .v) (.rational 1336256 1)) .v) (.rational 23359266 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 190572 1) .v) (.rational 2437640 1)) .v) (.rational
    37065744 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 206792 1) .v) (.rational
    1208944 1)) .v) (.rational 19282198 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 471960 1) .v) (.rational 6149210 1)) .v) (.rational
    69579944 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1651860 1) .v) (.rational 14251611
    1)) .v) (.rational 140667871 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2239340 1)
    .v) (.rational 10978661 1)) .v) (.rational 100878267 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1468700 1) .v) (.rational 2948945 1)) .v) (.rational 29890801 1)) (.pow
    .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2144724 1) .v) (.rational 20359932 1)) .v) (.rational 152528662 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 8578896 1) .v) (.rational 58566276 1)) .v) (.rational 379288022
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 13879524 1) .v) (.rational 63002765 1))
    .v) (.rational 354672231 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11612436 1) .v) (.rational 31309871 1)) .v) (.rational 152704269 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5296424 1) .v) (.rational 7141051 1)) .v) (.rational
    28867015 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 6583592 1) .v) (.rational 50342720 1)) .v) (.rational
    254755898 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 29626164 1) .v) (.rational
    175288750 1)) .v) (.rational 762985824 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    55543112 1) .v) (.rational 244873324 1)) .v) (.rational 901425164 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 56145460 1) .v) (.rational 177323311 1)) .v) (.rational
    532868429 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 32990108 1) .v)
    (.rational 72471265 1)) .v) (.rational 164973855 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11239336 1) .v) (.rational 17353999 1)) .v) (.rational 25662251 1)) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 14252744 1) .v) (.rational 93217242 1)) .v) (.rational 329060694 1))
    .f) (.mul (.add (.mul (.add (.mul (.rational 71263720 1) .v) (.rational 382688804 1)) .v)
    (.rational 1168630050 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 151665688 1) .v)
    (.rational 657300930 1)) .v) (.rational 1702216834 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 179080432 1) .v) (.rational 618539574 1)) .v) (.rational 1318597502 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 127995340 1) .v) (.rational
    352129531 1)) .v) (.rational 592659467 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 56512132 1) .v) (.rational 126598271 1)) .v) (.rational 160481413 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 14972044 1) .v) (.rational 28796285 1)) .v)
    (.rational 26921353 1)) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22069528 1) .v)
    (.rational 127540034 1)) .v) (.rational 327870632 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 121382404 1) .v) (.rational 602729357 1)) .v) (.rational 1360544097 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 288799700 1) .v) (.rational 1222846811 1)) .v)
    (.rational 2385835439 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 389230620
    1) .v) (.rational 1401250520 1)) .v) (.rational 2319000304 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 326533928 1) .v) (.rational 1004890546 1)) .v) (.rational
    1383896318 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 176136016 1) .v)
    (.rational 471625622 1)) .v) (.rational 534074722 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 60735520 1) .v) (.rational 146030682 1)) .v) (.rational 137056464 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 12791520 1) .v) (.rational 28766633
    1)) .v) (.rational 23167357 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    24298600 1) .v) (.rational 126114564 1)) .v) (.rational 247285094 1)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 145791600 1) .v) (.rational 672664464 1)) .v) (.rational 1180931742 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 383204108 1) .v) (.rational 1566428773 1))
    .v) (.rational 2435453419 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    579597540 1) .v) (.rational 2099408065 1)) .v) (.rational 2859570425 1)) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 556881904 1) .v) (.rational 1797383390 1)) .v)
    (.rational 2127132770 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 353649976
    1) .v) (.rational 1029936994 1)) .v) (.rational 1057441042 1)) (.pow .g 5))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 149421264 1) .v) (.rational 400480664 1)) .v) (.rational
    360130220 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 41090944 1) .v)
    (.rational 103848522 1)) .v) (.rational 83490908 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6932524 1) .v) (.rational 16900829 1)) .v) (.rational 12429005 1)) (.pow .g
    8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 18552016 1) .v) (.rational 87187156
    1)) .v) (.rational 136126522 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 120588104 1) .v)
    (.rational 516789136 1)) .v) (.rational 736991174 1)) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 346812240 1) .v) (.rational 1353069158 1)) .v) (.rational 1749615538 1)) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 580998176 1) .v) (.rational 2065226660 1))
    .v) (.rational 2406053764 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    627831200 1) .v) (.rational 2041983642 1)) .v) (.rational 2135288870 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 457457796 1) .v) (.rational 1372870090 1)) .v)
    (.rational 1289520258 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 227905144
    1) .v) (.rational 639010770 1)) .v) (.rational 542789166 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 76913900 1) .v) (.rational 204503745 1)) .v) (.rational 158960883
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 16978316 1) .v) (.rational
    43404525 1)) .v) (.rational 31255899 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2275400 1) .v) (.rational 5634117 1)) .v) (.rational 3778121 1)) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9324000 1) .v) (.rational
    39868298 1)) .v) (.rational 51409208 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 65268000
    1) .v) (.rational 259467176 1)) .v) (.rational 311188590 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 203770024 1) .v) (.rational 752308940 1)) .v) (.rational 834959992 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 374136144 1) .v) (.rational 1283534930
    1)) .v) (.rational 1312881994 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    448344872 1) .v) (.rational 1433236866 1)) .v) (.rational 1348076388 1)) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 367697040 1) .v) (.rational 1101104414 1)) .v)
    (.rational 952917222 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 210254256
    1) .v) (.rational 594355422 1)) .v) (.rational 475107538 1)) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 83668368 1) .v) (.rational 225285004 1)) .v) (.rational 167419812
    1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 22662688 1) .v) (.rational
    58596243 1)) .v) (.rational 40746421 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3975960 1) .v) (.rational 9907067 1)) .v) (.rational 6460449 1)) (.pow .g 9))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 409340 1) .v) (.rational 976611 1)) .v) (.rational
    592641 1)) (.pow .g 10)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 2771424 1) .v) (.rational 10822512 1)) .v) (.rational 11870172 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 20785680 1) .v) (.rational 76606098 1)) .v) (.rational
    79365114 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 69978656 1) .v) (.rational
    243168742 1)) .v) (.rational 237078444 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 139611784 1) .v) (.rational 457464470 1)) .v) (.rational 418453384 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 183464072 1) .v) (.rational 567724378 1))
    .v) (.rational 486344044 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    166871628 1) .v) (.rational 489164241 1)) .v) (.rational 392389077 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 107357300 1) .v) (.rational 299456633 1)) .v) (.rational
    225321955 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 48988956 1) .v)
    (.rational 130703074 1)) .v) (.rational 92539032 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 15624048 1) .v) (.rational 40049212 1)) .v) (.rational 26763654 1)) (.pow .g
    8))) .f) (.mul (.add (.mul (.add (.mul (.rational 3357756 1) .v) (.rational 8278819 1)) .v)
    (.rational 5224451 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul (.rational 452332 1)
    .v) (.rational 1066035 1)) .v) (.rational 631571 1)) (.pow .g 10))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 32900 1) .v) (.rational 72482 1)) .v) (.rational 39582 1)) (.pow .g
    11)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    368928 1) .v) (.rational 1320540 1)) .v) (.rational 1260756 1)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2951424 1) .v) (.rational 10089552 1)) .v) (.rational 9215892 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 10654992 1) .v) (.rational 34751784 1)) .v)
    (.rational 30279450 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22935024 1)
    .v) (.rational 71345394 1)) .v) (.rational 59149696 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 32755168 1) .v) (.rational 97235342 1)) .v) (.rational 76568352 1))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 32665488 1) .v) (.rational 92672448
    1)) .v) (.rational 69256038 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    23295508 1) .v) (.rational 63304641 1)) .v) (.rational 44908061 1)) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 11950612 1) .v) (.rational 31186763 1)) .v) (.rational
    21022185 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4366756 1) .v)
    (.rational 10963396 1)) .v) (.rational 7028730 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1104616 1) .v) (.rational 2665950 1)) .v) (.rational 1624348 1)) (.pow .g
    9))) .f) (.mul (.add (.mul (.add (.mul (.rational 182652 1) .v) (.rational 420945 1)) .v)
    (.rational 242511 1)) (.pow .g 10))) .f) (.mul (.add (.mul (.add (.mul (.rational 17572 1) .v)
    (.rational 37957 1)) .v) (.rational 20385 1)) (.pow .g 11))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 732 1) .v) (.rational 1416 1)) .v) (.rational 684 1)) (.pow .g 12))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1317

namespace FullLow1318
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  40*SmallGap.PolarCoefficientsLow4.c230 e f g v*((e+f)*(e+f+g))^3+
    15*SmallGap.PolarCoefficientsLow4.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    36*SmallGap.PolarCoefficientsLow3.c320 e f g v*((e+f)*(e+f+g))^2+
    30*SmallGap.PolarCoefficientsLow4.c320 e f g v*e*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow3.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    28*SmallGap.PolarCoefficientsLow2.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsLow3.c410 e f g v*e*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsLow1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_1 e g v+28*SmallGap.ReducedLayers.low0_100_2 e g
    v*e^1+84*SmallGap.ReducedLayers.low0_100_3 e g v*e^2+140*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^3+12*SmallGap.ReducedLayers.low0_010_3 e g v+60*SmallGap.ReducedLayers.low0_010_4 e g
    v*e^1+120*SmallGap.ReducedLayers.low0_010_5 e g v*e^2+120*SmallGap.ReducedLayers.low0_010_6 e
    g v*e^3+4*SmallGap.ReducedLayers.low0_001_2 e g v+24*SmallGap.ReducedLayers.low0_001_3 e g
    v*e^1+60*SmallGap.ReducedLayers.low0_001_4 e g v*e^2+80*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_3 e g v+15*SmallGap.ReducedLayers.low1_110_4 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_110_5 e g v*e^2+30*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^3+1*SmallGap.ReducedLayers.low1_101_2 e g v+6*SmallGap.ReducedLayers.low1_101_3 e g
    v*e^1+15*SmallGap.ReducedLayers.low1_101_4 e g v*e^2+20*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^3+6*SmallGap.ReducedLayers.low1_020_5 e g v+18*SmallGap.ReducedLayers.low1_020_6 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_020_7 e g v*e^2+6*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^3+3*SmallGap.ReducedLayers.low1_011_4 e g v+12*SmallGap.ReducedLayers.low1_011_5 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_011_6 e g v*e^2+12*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5040 1) .v) (.rational 390600 1))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 1040 1) .v) (.rational 70176 1)) .v)
    (.rational 2628392 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2600 1) .v) (.rational
    95632 1)) .v) (.rational 2995060 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 16284 1) .v) (.rational 478256 1)) .v) (.rational 10851122 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 48852 1) .v) (.rational 843744 1)) .v) (.rational 16726400 1))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 53032 1) .v) (.rational 378240 1)) .v)
    (.rational 8305374 1)) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 119064 1) .v) (.rational 2115696 1)) .v) (.rational 30771310 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 416724 1) .v) (.rational 4731056 1)) .v) (.rational
    60266956 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 565228 1) .v) (.rational
    3367728 1)) .v) (.rational 41135690 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 371260 1) .v) (.rational 676488 1)) .v) (.rational 11044808 1)) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 529156 1)
    .v) (.rational 6750416 1)) .v) (.rational 63706464 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2116624 1) .v) (.rational 18845688 1)) .v) (.rational 153558750 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3426708 1) .v) (.rational 19266936 1)) .v) (.rational
    137249252 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2871940 1) .v)
    (.rational 8658752 1)) .v) (.rational 54684882 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1314152 1) .v) (.rational 1518384 1)) .v) (.rational 8572256 1)) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1572384 1) .v) (.rational 16017000 1)) .v) (.rational 99447258 1)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 7075728 1) .v) (.rational 54582168 1)) .v) (.rational 289799976
    1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 13276784 1) .v) (.rational 74049744 1))
    .v) (.rational 330444276 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    13448680 1) .v) (.rational 51517408 1)) .v) (.rational 185946126 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 7931896 1) .v) (.rational 19977864 1)) .v) (.rational
    53405382 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2718072 1) .v)
    (.rational 4522080 1)) .v) (.rational 7305630 1)) (.pow .g 5)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3241588 1)
    .v) (.rational 27980984 1)) .v) (.rational 118089354 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16207940 1) .v) (.rational 113178912 1)) .v) (.rational 410284056 1)) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 34531984 1) .v) (.rational 191218912 1)) .v)
    (.rational 583071980 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 40880296
    1) .v) (.rational 176960144 1)) .v) (.rational 439925432 1)) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 29352704 1) .v) (.rational 99384144 1)) .v) (.rational 193126248
    1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 13050424 1) .v) (.rational
    35567296 1)) .v) (.rational 51901960 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3491044 1) .v) (.rational 8169360 1)) .v) (.rational 8989982 1)) (.pow .g 6)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 4656480 1) .v) (.rational 35007560 1)) .v) (.rational 105289366
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 25610640 1) .v) (.rational 163679440 1)) .v)
    (.rational 429673408 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 61021464 1) .v)
    (.rational 328853712 1)) .v) (.rational 741490392 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 82516788 1) .v) (.rational 374183992 1)) .v) (.rational 711769104 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 69625040 1) .v) (.rational
    267886208 1)) .v) (.rational 423310072 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 37883776 1) .v) (.rational 126548352 1)) .v) (.rational 165663424 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 13220368 1) .v) (.rational 39813392 1)) .v)
    (.rational 44123566 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2827452 1)
    .v) (.rational 8022112 1)) .v) (.rational 7855372 1)) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 4563540 1) .v) (.rational 30191944 1)) .v) (.rational 68080912 1)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 27381240 1) .v) (.rational 159700136 1)) .v)
    (.rational 321015602 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 72100604 1) .v)
    (.rational 369531128 1)) .v) (.rational 655094714 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 109508320 1) .v) (.rational 493865688 1)) .v) (.rational 764851416 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 105968496 1) .v) (.rational
    423937304 1)) .v) (.rational 570804244 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 68017704 1) .v) (.rational 245337744 1)) .v) (.rational 288468000 1)) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 29165568 1) .v) (.rational 97101904 1)) .v)
    (.rational 101341578 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 8176044 1)
    .v) (.rational 25787688 1)) .v) (.rational 24453030 1)) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1412192 1) .v) (.rational 4306000 1)) .v) (.rational 3775084 1)) (.pow
    .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2899512 1) .v) (.rational
    16941440 1)) .v) (.rational 29994026 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 18846828
    1) .v) (.rational 99722488 1)) .v) (.rational 160758196 1)) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 54321216 1) .v) (.rational 259895944 1)) .v) (.rational 378788764 1)) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 91451580 1) .v) (.rational 396319624 1))
    .v) (.rational 519473670 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    99652656 1) .v) (.rational 393536544 1)) .v) (.rational 463189976 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 73522764 1) .v) (.rational 267456960 1)) .v) (.rational
    283854840 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 37269680 1) .v)
    (.rational 126738200 1)) .v) (.rational 122527328 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 12868492 1) .v) (.rational 41553240 1)) .v) (.rational 37070100 1))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 2923456 1) .v) (.rational 9069200
    1)) .v) (.rational 7533062 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational
    405288 1) .v) (.rational 1209312 1)) .v) (.rational 932754 1)) (.pow .g 9)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1072872 1) .v) (.rational 5549040 1)) .v)
    (.rational 8016012 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 7510104 1) .v) (.rational
    35896896 1)) .v) (.rational 48113856 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    23503092 1) .v) (.rational 103704632 1)) .v) (.rational 128331164 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 43387200 1) .v) (.rational 176918680 1)) .v) (.rational
    201427198 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 52468776 1) .v)
    (.rational 198484880 1)) .v) (.rational 207719392 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 43618692 1) .v) (.rational 154116072 1)) .v) (.rational 148617648 1))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 25415764 1) .v) (.rational 84627448
    1)) .v) (.rational 75627172 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10368712 1) .v) (.rational 32836328 1)) .v) (.rational 27383354 1)) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2898736 1) .v) (.rational 8784584 1)) .v) (.rational
    6866328 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 528484 1) .v)
    (.rational 1530392 1)) .v) (.rational 1117824 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 56748 1) .v) (.rational 154688 1)) .v) (.rational 103920 1)) (.pow .g 10))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 174960 1) .v)
    (.rational 803808 1)) .v) (.rational 977112 1)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1312200 1) .v) (.rational 5659632 1)) .v) (.rational 6484644 1)) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4428288 1) .v) (.rational 17911264 1)) .v) (.rational 19271182 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8882172 1) .v) (.rational 33703784
    1)) .v) (.rational 33959648 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11777304 1) .v) (.rational 42017040 1)) .v) (.rational 39602902 1)) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10855020 1) .v) (.rational 36558856 1)) .v) (.rational
    32263046 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7111392 1) .v)
    (.rational 22733928 1)) .v) (.rational 18837022 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3322152 1) .v) (.rational 10138192 1)) .v) (.rational 7915500 1)) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1090608 1) .v) (.rational 3189160 1)) .v)
    (.rational 2351366 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 242328 1)
    .v) (.rational 678280 1)) .v) (.rational 471218 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 33756 1) .v) (.rational 89512 1)) .v) (.rational 58004 1)) (.pow .g 10))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2496 1) .v) (.rational 6088 1)) .v) (.rational 3592
    1)) (.pow .g 11))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1318

namespace FullLow1319
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  36*SmallGap.PolarCoefficientsLow4.c320 e f g v*((e+f)*(e+f+g))^2+
    12*SmallGap.PolarCoefficientsLow4.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    28*SmallGap.PolarCoefficientsLow3.c410 e f g v*((e+f)*(e+f+g))+
    12*SmallGap.PolarCoefficientsLow4.c410 e f g v*e*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsLow2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_2 e g v+28*SmallGap.ReducedLayers.low0_100_3 e g
    v*e^1+84*SmallGap.ReducedLayers.low0_100_4 e g v*e^2+12*SmallGap.ReducedLayers.low0_010_4 e g
    v+60*SmallGap.ReducedLayers.low0_010_5 e g v*e^1+120*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^2+4*SmallGap.ReducedLayers.low0_001_3 e g v+24*SmallGap.ReducedLayers.low0_001_4 e g
    v*e^1+60*SmallGap.ReducedLayers.low0_001_5 e g v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_4 e g v+15*SmallGap.ReducedLayers.low1_110_5 e g
    v*e^1+30*SmallGap.ReducedLayers.low1_110_6 e g v*e^2+1*SmallGap.ReducedLayers.low1_101_3 e g
    v+6*SmallGap.ReducedLayers.low1_101_4 e g v*e^1+15*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^2+6*SmallGap.ReducedLayers.low1_020_6 e g v+18*SmallGap.ReducedLayers.low1_020_7 e g
    v*e^1+18*SmallGap.ReducedLayers.low1_020_8 e g v*e^2+3*SmallGap.ReducedLayers.low1_011_5 e g
    v+12*SmallGap.ReducedLayers.low1_011_6 e g v*e^1+18*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 1160 1) .v) (.rational 130700 1)) .e) (.add
    (.mul (.add (.mul (.add (.mul (.rational 120 1) .v) (.rational 15568 1)) .v) (.rational 850824
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 300 1) .v) (.rational 20776 1)) .v)
    (.rational 945496 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1860 1) .v) (.rational 102384 1)) .v) (.rational 3372740 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5580 1) .v) (.rational 174648 1)) .v) (.rational 5041224 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 6060 1) .v) (.rational 69728 1)) .v) (.rational 2379140 1)) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13440 1)
    .v) (.rational 437728 1)) .v) (.rational 9107512 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 47040 1) .v) (.rational 944272 1)) .v) (.rational 17247456 1)) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 63840 1) .v) (.rational 615640 1)) .v) (.rational 11159316 1))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 42000 1) .v) (.rational 74000 1))
    .v) (.rational 2663944 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 58620 1) .v) (.rational 1352528 1)) .v) (.rational 17789084
    1)) .f) (.mul (.add (.mul (.add (.mul (.rational 234480 1) .v) (.rational 3668768 1)) .v)
    (.rational 41519712 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 379920 1) .v)
    (.rational 3562368 1)) .v) (.rational 35426956 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 319080 1) .v) (.rational 1425504 1)) .v) (.rational 12999500 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 146580 1) .v) (.rational 155296 1)) .v)
    (.rational 1597872 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 168960 1) .v) (.rational 3084184 1)) .v)
    (.rational 25841916 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 760320 1) .v) (.rational
    10306040 1)) .v) (.rational 73292928 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1428240 1) .v) (.rational 13618424 1)) .v) (.rational 80853600 1)) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1450680 1) .v) (.rational 9141120 1)) .v) (.rational
    43626096 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 859800 1) .v)
    (.rational 3382016 1)) .v) (.rational 11863680 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 296880 1) .v) (.rational 728792 1)) .v) (.rational 1524856 1)) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 331200 1) .v) (.rational 5047736 1)) .v) (.rational 27878644 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1656000 1) .v) (.rational 20145160 1)) .v) (.rational
    94864284 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3533700 1) .v) (.rational
    33576440 1)) .v) (.rational 132098188 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4198800 1) .v) (.rational 30716456 1)) .v) (.rational 98121688 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3034320 1) .v) (.rational 17161432 1)) .v)
    (.rational 43074176 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1362360 1)
    .v) (.rational 6183288 1)) .v) (.rational 12007704 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 369420 1) .v) (.rational 1449752 1)) .v) (.rational 2269200 1)) (.pow
    .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 437040 1) .v) (.rational 5652360 1)) .v) (.rational
    21668760 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 2403720 1) .v) (.rational 26154000
    1)) .v) (.rational 87049296 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5739960 1)
    .v) (.rational 52127240 1)) .v) (.rational 148419528 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 7801920 1) .v) (.rational 59125696 1)) .v) (.rational 141976128 1))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6641280 1) .v) (.rational 42533704
    1)) .v) (.rational 85541584 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3661560 1) .v) (.rational 20401280 1)) .v) (.rational 34747440 1)) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1301160 1) .v) (.rational 6580608 1)) .v) (.rational
    9813812 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 284880 1) .v)
    (.rational 1365136 1)) .v) (.rational 1852312 1)) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 370440 1) .v) (.rational 4058496 1)) .v) (.rational 11398104 1)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2222640 1) .v) (.rational 21270024 1)) .v) (.rational
    53077608 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5870880 1) .v) (.rational
    48936688 1)) .v) (.rational 107458840 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 8980200 1) .v) (.rational 65402840 1)) .v) (.rational 125534184 1)) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 8794620 1) .v) (.rational 56597744 1)) .v)
    (.rational 94996588 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5746320 1)
    .v) (.rational 33339656 1)) .v) (.rational 49487256 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2525040 1) .v) (.rational 13554704 1)) .v) (.rational 18159868 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 730800 1) .v) (.rational 3719304
    1)) .v) (.rational 4586172 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    131340 1) .v) (.rational 641816 1)) .v) (.rational 732260 1)) (.pow .g 8)))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 181440 1) .v) (.rational 1671408 1)) .v) (.rational
    3606048 1)) .f) (.mul (.add (.mul (.add (.mul (.rational 1179360 1) .v) (.rational 9752400 1))
    .v) (.rational 19121184 1)) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3413520 1) .v)
    (.rational 25296552 1)) .v) (.rational 44770968 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5801400 1) .v) (.rational 38624160 1)) .v) (.rational 61466544 1)) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6422760 1) .v) (.rational 38709840 1)) .v)
    (.rational 55452252 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4851360 1)
    .v) (.rational 26802552 1)) .v) (.rational 34811424 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2540400 1) .v) (.rational 13060400 1)) .v) (.rational 15555912 1))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 915600 1) .v) (.rational 4436160
    1)) .v) (.rational 4893120 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    219720 1) .v) (.rational 1007096 1)) .v) (.rational 1029648 1)) (.pow .g 8))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 32580 1) .v) (.rational 139488 1)) .v) (.rational 130384 1))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 38880 1)
    .v) (.rational 298944 1)) .v) (.rational 515088 1)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 272160 1) .v) (.rational 1917648 1)) .v) (.rational 3061728 1)) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 856440 1) .v) (.rational 5516400 1)) .v) (.rational 8118936
    1)) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1600560 1) .v) (.rational
    9426888 1)) .v) (.rational 12748680 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1975680 1) .v) (.rational 10676712 1)) .v) (.rational 13266436 1)) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1693080 1) .v) (.rational 8445744 1)) .v)
    (.rational 9675228 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1029060 1)
    .v) (.rational 4769880 1)) .v) (.rational 5065724 1)) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 444240 1) .v) (.rational 1920096 1)) .v) (.rational 1898272 1)) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 133740 1) .v) (.rational 536664 1)) .v)
    (.rational 492884 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.add (.mul (.rational 26820 1) .v)
    (.rational 98184 1)) .v) (.rational 82680 1)) (.pow .g 9))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3240 1) .v) (.rational 10440 1)) .v) (.rational 7820 1)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow1319

namespace FullLow13110
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  28*SmallGap.PolarCoefficientsLow4.c410 e f g v*((e+f)*(e+f+g))+
    20*SmallGap.PolarCoefficientsLow3.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_3 e g v+28*SmallGap.ReducedLayers.low0_100_4 e g
    v*e^1+12*SmallGap.ReducedLayers.low0_010_5 e g v+60*SmallGap.ReducedLayers.low0_010_6 e g
    v*e^1+4*SmallGap.ReducedLayers.low0_001_4 e g v+24*SmallGap.ReducedLayers.low0_001_5 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_5 e g v+15*SmallGap.ReducedLayers.low1_110_6 e g
    v*e^1+1*SmallGap.ReducedLayers.low1_101_4 e g v+6*SmallGap.ReducedLayers.low1_101_5 e g
    v*e^1+6*SmallGap.ReducedLayers.low1_020_7 e g v+18*SmallGap.ReducedLayers.low1_020_8 e g
    v*e^1+3*SmallGap.ReducedLayers.low1_011_6 e g v+12*SmallGap.ReducedLayers.low1_011_7 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 120 1) .v) (.rational 26260 1)) .e) (.add (.mul (.add (.mul
    (.rational 1560 1) .v) (.rational 165672 1)) .f) (.mul (.add (.mul (.rational 2040 1) .v)
    (.rational 179328 1)) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 9960 1) .v)
    (.rational 631236 1)) .f) (.mul (.add (.mul (.rational 16440 1) .v) (.rational 913208 1)) .g))
    .f) (.mul (.add (.mul (.rational 5760 1) .v) (.rational 407836 1)) (.pow .g 2)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 41400 1) .v) (.rational 1623524 1)) .f)
    (.mul (.add (.mul (.rational 86280 1) .v) (.rational 2967784 1)) .g)) .f) (.mul (.add (.mul
    (.rational 51240 1) .v) (.rational 1814368 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational
    1440 1) .v) (.rational 377384 1)) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 124560 1) .v) (.rational 2988096 1)) .f) (.mul (.add (.mul
    (.rational 329280 1) .v) (.rational 6750992 1)) .g)) .f) (.mul (.add (.mul (.rational 304920
    1) .v) (.rational 5508212 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 108120 1) .v)
    (.rational 1871152 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 3600 1) .v) (.rational
    176436 1)) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 273120 1) .v) (.rational 4014908 1)) .f) (.mul (.add (.mul (.rational
    897840 1) .v) (.rational 11097264 1)) .g)) .f) (.mul (.add (.mul (.rational 1162440 1) .v)
    (.rational 11918148 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 760920 1) .v)
    (.rational 6282784 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 273720 1) .v) (.rational
    1710540 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 57840 1) .v) (.rational 247104 1))
    (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 414000 1) .v) (.rational 3863976 1)) .f) (.mul (.add (.mul (.rational
    1632960 1) .v) (.rational 12898944 1)) .g)) .f) (.mul (.add (.mul (.rational 2695680 1) .v)
    (.rational 17726208 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 2456160 1) .v)
    (.rational 13194480 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 1381320 1) .v)
    (.rational 5999876 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 508200 1) .v) (.rational
    1824488 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational 122880 1) .v) (.rational 387796 1))
    (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 401040 1) .v) (.rational 2507064 1)) .f) (.mul (.add (.mul
    (.rational 1835280 1) .v) (.rational 9920256 1)) .g)) .f) (.mul (.add (.mul (.rational 3634800
    1) .v) (.rational 16799640 1)) (.pow .g 2))) .f) (.mul (.add (.mul (.rational 4129920 1) .v)
    (.rational 16216272 1)) (.pow .g 3))) .f) (.mul (.add (.mul (.rational 3010200 1) .v)
    (.rational 10104372 1)) (.pow .g 4))) .f) (.mul (.add (.mul (.rational 1481160 1) .v)
    (.rational 4358008 1)) (.pow .g 5))) .f) (.mul (.add (.mul (.rational 494280 1) .v) (.rational
    1319672 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational 106080 1) .v) (.rational 262184 1))
    (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 220320 1) .v) (.rational 972000 1)) .f) (.mul
    (.add (.mul (.rational 1140480 1) .v) (.rational 4464720 1)) .g)) .f) (.mul (.add (.mul
    (.rational 2608560 1) .v) (.rational 8991624 1)) (.pow .g 2))) .f) (.mul (.add (.mul
    (.rational 3499200 1) .v) (.rational 10594656 1)) (.pow .g 3))) .f) (.mul (.add (.mul
    (.rational 3076560 1) .v) (.rational 8237376 1)) (.pow .g 4))) .f) (.mul (.add (.mul
    (.rational 1864800 1) .v) (.rational 4487248 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 787800 1) .v) (.rational 1734836 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    225480 1) .v) (.rational 458032 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 40440 1)
    .v) (.rational 74952 1)) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 51840 1)
    .v) (.rational 168480 1)) .f) (.mul (.add (.mul (.rational 298080 1) .v) (.rational 881280 1))
    .g)) .f) (.mul (.add (.mul (.rational 768240 1) .v) (.rational 2051256 1)) (.pow .g 2))) .f)
    (.mul (.add (.mul (.rational 1178640 1) .v) (.rational 2833104 1)) (.pow .g 3))) .f) (.mul
    (.add (.mul (.rational 1203120 1) .v) (.rational 2610412 1)) (.pow .g 4))) .f) (.mul (.add
    (.mul (.rational 860400 1) .v) (.rational 1698144 1)) (.pow .g 5))) .f) (.mul (.add (.mul
    (.rational 438120 1) .v) (.rational 792916 1)) (.pow .g 6))) .f) (.mul (.add (.mul (.rational
    156600 1) .v) (.rational 260304 1)) (.pow .g 7))) .f) (.mul (.add (.mul (.rational 37440 1)
    .v) (.rational 56628 1)) (.pow .g 8))) .f) (.mul (.add (.mul (.rational 5400 1) .v) (.rational
    7280 1)) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullLow13110

namespace FullLow13111
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  20*SmallGap.PolarCoefficientsLow4.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.low0_100_4 e g v+12*SmallGap.ReducedLayers.low0_010_6 e g
    v+4*SmallGap.ReducedLayers.low0_001_5 e g v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.low1_110_6 e g v+1*SmallGap.ReducedLayers.low1_101_5 e g
    v+6*SmallGap.ReducedLayers.low1_020_8 e g v+3*SmallGap.ReducedLayers.low1_011_7 e g v)

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

end FullLow13111

end
end SPR.N6.Tail.CoreEndpoint
