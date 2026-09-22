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

namespace FullHigh0320
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    3*SmallGap.PolarCoefficientsHigh0.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    6*SmallGap.PolarCoefficientsHigh0.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    10*SmallGap.PolarCoefficientsHigh0.c050 e f g v*e^3*((e+f)*(e+f+g))^5

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_010_0 e g v*e^6+4*SmallGap.ReducedLayers.high0_001_0
    e g v*e^7)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_0 e g v*e^4+3*SmallGap.ReducedLayers.high1_011_0 e g
    v*e^5+1*SmallGap.ReducedLayers.high1_002_0 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1312 1) .e) (.add (.mul
    (.rational 13462 1) .f) (.add (.mul (.rational 17048 1) .g) (.mul (.rational 2472 1) .v))))
    .e) (.add (.mul (.add (.mul (.rational 86328 1) .f) (.add (.mul (.rational 149172 1) .g) (.mul
    (.rational 23854 1) .v))) .f) (.add (.mul (.add (.mul (.rational 92192 1) .g) (.mul (.rational
    30916 1) .v)) .g) (.mul (.rational 1160 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.rational 388534 1) .f) (.add (.mul (.rational 849839 1) .g) (.mul (.rational 143538 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 708220 1) .g) (.mul (.rational 254834 1) .v)) .g)
    (.mul (.rational 10484 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 279811
    1) .g) (.mul (.rational 161166 1) .v)) .g) (.mul (.rational 13936 1) (.pow .v 2))) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1305860 1) .f) (.add (.mul
    (.rational 3453852 1) .g) (.mul (.rational 604520 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 3620281 1) .g) (.mul (.rational 1362512 1) .v)) .g) (.mul (.rational 58936 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1913926 1) .g) (.mul (.rational 1167138
    1) .v)) .g) (.mul (.rational 107742 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 534429 1) .g) (.mul (.rational 472468 1) .v)) .g) (.mul (.rational 69836 1) (.pow
    .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 3403481 1) .f) (.add (.mul (.rational 10554679 1) .g) (.mul (.rational 1895004 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 13324450 1) .g) (.mul (.rational 5176818 1) .v))
    .g) (.mul (.rational 231168 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8817922 1) .g) (.mul (.rational 5596164 1) .v)) .g) (.mul (.rational 538087 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3276329 1) .g) (.mul (.rational 3045064 1)
    .v)) .g) (.mul (.rational 474608 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 675871 1) .g) (.mul (.rational 873136 1) .v)) .g) (.mul (.rational 196963 1)
    (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 7048270 1) .f) (.add (.mul (.rational 25066372 1) .g) (.mul (.rational
    4588483 1) .v))) .f) (.add (.mul (.add (.mul (.rational 37000721 1) .g) (.mul (.rational
    14726524 1) .v)) .g) (.mul (.rational 672392 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 29394156 1) .g) (.mul (.rational 19223976 1) .v)) .g) (.mul (.rational
    1901562 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 13618352 1) .g)
    (.mul (.rational 13139600 1) .v)) .g) (.mul (.rational 2123969 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3721312 1) .g) (.mul (.rational 5035095 1) .v))
    .g) (.mul (.rational 1190778 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 575393 1) .g) (.mul (.rational 1069812 1) .v)) .g) (.mul (.rational 350425 1) (.pow
    .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 11785115 1) .f) (.add (.mul (.rational 47268807 1) .g) (.mul
    (.rational 8787267 1) .v))) .f) (.add (.mul (.add (.mul (.rational 79853345 1) .g) (.mul
    (.rational 32398256 1) .v)) .g) (.mul (.rational 1504054 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 73994185 1) .g) (.mul (.rational 49561158 1) .v)) .g) (.mul
    (.rational 5007452 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 41032737
    1) .g) (.mul (.rational 40778238 1) .v)) .g) (.mul (.rational 6773144 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 13933123 1) .g) (.mul (.rational 19551659
    1) .v)) .g) (.mul (.rational 4788223 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2842287 1) .g) (.mul (.rational 5524704 1) .v)) .g) (.mul (.rational
    1892874 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 326217 1)
    .g) (.mul (.rational 883076 1) .v)) .g) (.mul (.rational 413527 1) (.pow .v 2))) (.pow .g
    5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 16074396 1) .f) (.add (.mul (.rational 71770452 1) .g) (.mul (.rational
    13513162 1) .v))) .f) (.add (.mul (.add (.mul (.rational 136524269 1) .g) (.mul (.rational
    56275552 1) .v)) .g) (.mul (.rational 2646980 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 144507650 1) .g) (.mul (.rational 98712099 1) .v)) .g) (.mul (.rational
    10141942 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 93258267 1) .g)
    (.mul (.rational 94959116 1) .v)) .g) (.mul (.rational 16114156 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 37799344 1) .g) (.mul (.rational 54650738 1) .v))
    .g) (.mul (.rational 13756458 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9550449 1) .g) (.mul (.rational 19252824 1) .v)) .g) (.mul (.rational 6832229 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1440510 1) .g) (.mul
    (.rational 4074419 1) .v)) .g) (.mul (.rational 1995344 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 117911 1) .g) (.mul (.rational 485516 1) .v)) .g)
    (.mul (.rational 328781 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    17990141 1) .f) (.add (.mul (.rational 88486515 1) .g) (.mul (.rational 16841734 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 187139396 1) .g) (.mul (.rational 78183526 1) .v)) .g)
    (.mul (.rational 3717300 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    222706788 1) .g) (.mul (.rational 154683999 1) .v)) .g) (.mul (.rational 16113665 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 163873212 1) .g) (.mul (.rational
    170325768 1) .v)) .g) (.mul (.rational 29418456 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 77125056 1) .g) (.mul (.rational 114357780 1) .v)) .g) (.mul
    (.rational 29442030 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23196592 1) .g) (.mul (.rational 48224304 1) .v)) .g) (.mul (.rational 17612328 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 4318956 1) .g) (.mul
    (.rational 12679007 1) .v)) .g) (.mul (.rational 6440190 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 462681 1) .g) (.mul (.rational 1991448 1) .v)) .g)
    (.mul (.rational 1412132 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 24509 1) .g) (.mul (.rational 170088 1) .v)) .g) (.mul (.rational 174041 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16556930 1) .f) (.add (.mul
    (.rational 88948132 1) .g) (.mul (.rational 17089501 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 207020825 1) .g) (.mul (.rational 87504516 1) .v)) .g) (.mul (.rational 4198920 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 273571144 1) .g) (.mul (.rational
    192771843 1) .v)) .g) (.mul (.rational 20319354 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 225983688 1) .g) (.mul (.rational 239088768 1) .v)) .g) (.mul
    (.rational 41920761 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 121041816 1) .g) (.mul (.rational 183426012 1) .v)) .g) (.mul (.rational 48136716
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 42174692 1) .g)
    (.mul (.rational 90039096 1) .v)) .g) (.mul (.rational 33693366 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 9320520 1) .g) (.mul (.rational 28256893 1) .v))
    .g) (.mul (.rational 14802060 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1228062 1) .g) (.mul (.rational 5493704 1) .v)) .g) (.mul (.rational 4049932 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 84744 1) .g) (.mul
    (.rational 615519 1) .v)) .g) (.mul (.rational 661138 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2219 1) .g) (.mul (.rational 34216 1) .v)) .g) (.mul
    (.rational 58643 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 12514879 1) .f) (.add (.mul (.rational 72912385 1) .g) (.mul (.rational 14125605 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 185196299 1) .g) (.mul (.rational 79089600 1)
    .v)) .g) (.mul (.rational 3825954 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 269053477 1) .g) (.mul (.rational 192009015 1) .v)) .g) (.mul (.rational 20449154
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 246486464 1) .g) (.mul
    (.rational 264876210 1) .v)) .g) (.mul (.rational 47056468 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 147982758 1) .g) (.mul (.rational 228571980 1) .v))
    .g) (.mul (.rational 60992286 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 58566844 1) .g) (.mul (.rational 127978956 1) .v)) .g) (.mul (.rational 48911520 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 14957190 1) .g) (.mul
    (.rational 46644563 1) .v)) .g) (.mul (.rational 25094034 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2331711 1) .g) (.mul (.rational 10791932 1) .v)) .g)
    (.mul (.rational 8227312 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 197072 1) .g) (.mul (.rational 1490655 1) .v)) .g) (.mul (.rational 1669879 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6685 1) .g) (.mul
    (.rational 108110 1) .v)) .g) (.mul (.rational 195198 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 2990 1) .v) .g) (.mul (.rational 11325 1) (.pow .v 2))) (.pow .g
    9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 7732096 1) .f) (.add
    (.mul (.rational 48559388 1) .g) (.mul (.rational 9478092 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 133668559 1) .g) (.mul (.rational 57611744 1) .v)) .g) (.mul (.rational 2807348 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 211754026 1) .g) (.mul (.rational
    152833944 1) .v)) .g) (.mul (.rational 16428322 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 213055619 1) .g) (.mul (.rational 232139980 1) .v)) .g) (.mul
    (.rational 41726336 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 141677872 1) .g) (.mul (.rational 222563178 1) .v)) .g) (.mul (.rational 60272546
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 62747090 1) .g)
    (.mul (.rational 139966848 1) .v)) .g) (.mul (.rational 54497898 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 18163548 1) .g) (.mul (.rational 58078825 1)
    .v)) .g) (.mul (.rational 31986108 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3263142 1) .g) (.mul (.rational 15566784 1) .v)) .g) (.mul (.rational
    12222208 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 325112 1)
    .g) (.mul (.rational 2550126 1) .v)) .g) (.mul (.rational 2964220 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 13440 1) .g) (.mul (.rational 226944 1) .v))
    .g) (.mul (.rational 429073 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 8135 1) .v) .g) (.mul (.rational 32614 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 947 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 3870515 1) .f) (.add (.mul (.rational 26068197 1) .g) (.mul
    (.rational 5122640 1) .v))) .f) (.add (.mul (.add (.mul (.rational 77310058 1) .g) (.mul
    (.rational 33598142 1) .v)) .g) (.mul (.rational 1648168 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 132641122 1) .g) (.mul (.rational 96708330 1) .v)) .g) (.mul
    (.rational 10483161 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    145405161 1) .g) (.mul (.rational 160399336 1) .v)) .g) (.mul (.rational 29137520 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 106082767 1) .g) (.mul
    (.rational 169174420 1) .v)) .g) (.mul (.rational 46425335 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 51969288 1) .g) (.mul (.rational 118069086 1) .v))
    .g) (.mul (.rational 46741378 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 16805244 1) .g) (.mul (.rational 54945443 1) .v)) .g) (.mul (.rational 30896796 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3414114 1) .g) (.mul
    (.rational 16732528 1) .v)) .g) (.mul (.rational 13484816 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 390766 1) .g) (.mul (.rational 3166614 1) .v)) .g)
    (.mul (.rational 3803207 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18960 1) .g) (.mul (.rational 332916 1) .v)) .g) (.mul (.rational 655726 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 14561 1) .v) .g) (.mul (.rational
    61429 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 2320 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1548242 1)
    .f) (.add (.mul (.rational 11133244 1) .g) (.mul (.rational 2201253 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 35394619 1) .g) (.mul (.rational 15497556 1) .v)) .g) (.mul (.rational
    764952 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 65393068 1) .g) (.mul
    (.rational 48113334 1) .v)) .g) (.mul (.rational 5255854 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 77589152 1) .g) (.mul (.rational 86540752 1) .v)) .g) (.mul
    (.rational 15872339 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 61625152 1) .g) (.mul (.rational 99603547 1) .v)) .g) (.mul (.rational 27662074 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 33087313 1) .g) (.mul
    (.rational 76406340 1) .v)) .g) (.mul (.rational 30701325 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11818600 1) .g) (.mul (.rational 39414079 1) .v)) .g)
    (.mul (.rational 22578362 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2677152 1) .g) (.mul (.rational 13439896 1) .v)) .g) (.mul (.rational 11085338 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 345608 1) .g) (.mul
    (.rational 2883480 1) .v)) .g) (.mul (.rational 3565130 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 19194 1) .g) (.mul (.rational 349104 1) .v)) .g)
    (.mul (.rational 713073 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    17955 1) .v) .g) (.mul (.rational 79276 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 3669 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 484765 1) .f) (.add (.mul (.rational 3707545 1) .g)
    (.mul (.rational 737125 1) .v))) .f) (.add (.mul (.add (.mul (.rational 12581255 1) .g) (.mul
    (.rational 5545768 1) .v)) .g) (.mul (.rational 275306 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 24909327 1) .g) (.mul (.rational 18476364 1) .v)) .g) (.mul (.rational
    2032632 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 31812449 1) .g)
    (.mul (.rational 35832314 1) .v)) .g) (.mul (.rational 6629408 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 27332503 1) .g) (.mul (.rational 44704431 1) .v))
    .g) (.mul (.rational 12549483 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 15964395 1) .g) (.mul (.rational 37399680 1) .v)) .g) (.mul (.rational 15228778 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6243385 1) .g) (.mul
    (.rational 21187963 1) .v)) .g) (.mul (.rational 12339139 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1560002 1) .g) (.mul (.rational 7999554 1) .v)) .g)
    (.mul (.rational 6734742 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 224104 1) .g) (.mul (.rational 1918644 1) .v)) .g) (.mul (.rational 2433713 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 13998 1) .g) (.mul
    (.rational 262716 1) .v)) .g) (.mul (.rational 554108 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 15505 1) .v) .g) (.mul (.rational 71273 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 3898 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 115196 1) .f) (.add (.mul
    (.rational 933936 1) .g) (.mul (.rational 186594 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 3370319 1) .g) (.mul (.rational 1494392 1) .v)) .g) (.mul (.rational 74572 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7121326 1) .g) (.mul (.rational 5319723
    1) .v)) .g) (.mul (.rational 588962 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9744237 1) .g) (.mul (.rational 11069460 1) .v)) .g) (.mul (.rational 2063924 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9008896 1) .g) (.mul
    (.rational 14887010 1) .v)) .g) (.mul (.rational 4218958 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5689781 1) .g) (.mul (.rational 13496184 1) .v)) .g)
    (.mul (.rational 5559945 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2419254 1) .g) (.mul (.rational 8334912 1) .v)) .g) (.mul (.rational 4924228 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 661271 1) .g) (.mul
    (.rational 3453748 1) .v)) .g) (.mul (.rational 2959907 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 104652 1) .g) (.mul (.rational 916260 1) .v)) .g)
    (.mul (.rational 1188294 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7260 1) .g) (.mul (.rational 140040 1) .v)) .g) (.mul (.rational 303683 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 9325 1) .v) .g) (.mul (.rational
    44390 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 2801 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    19809 1) .f) (.add (.mul (.rational 169753 1) .g) (.mul (.rational 34054 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 649406 1) .g) (.mul (.rational 289354 1) .v)) .g) (.mul
    (.rational 14504 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1459304 1) .g)
    (.mul (.rational 1096515 1) .v)) .g) (.mul (.rational 122059 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2131122 1) .g) (.mul (.rational 2438024 1) .v)) .g) (.mul
    (.rational 457576 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2111074 1) .g) (.mul (.rational 3518144 1) .v)) .g) (.mul (.rational 1005048 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1434748 1) .g) (.mul (.rational
    3438204 1) .v)) .g) (.mul (.rational 1430324 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 659616 1) .g) (.mul (.rational 2300914 1) .v)) .g) (.mul
    (.rational 1375766 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    195989 1) .g) (.mul (.rational 1039240 1) .v)) .g) (.mul (.rational 903924 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 33917 1) .g) (.mul (.rational
    302514 1) .v)) .g) (.mul (.rational 399616 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2590 1) .g) (.mul (.rational 51114 1) .v)) .g) (.mul (.rational
    113428 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3795 1) .v) .g)
    (.mul (.rational 18599 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1332 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 2278 1) .f) (.add (.mul (.rational 20584 1) .g) (.mul (.rational 4141 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 83259 1) .g) (.mul (.rational 37224 1) .v)) .g)
    (.mul (.rational 1872 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 198408 1)
    .g) (.mul (.rational 149697 1) .v)) .g) (.mul (.rational 16730 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 308280 1) .g) (.mul (.rational 354432 1) .v)) .g) (.mul
    (.rational 66843 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    326088 1) .g) (.mul (.rational 546714 1) .v)) .g) (.mul (.rational 157104 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 237594 1) .g) (.mul (.rational
    573552 1) .v)) .g) (.mul (.rational 240324 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 117624 1) .g) (.mul (.rational 413994 1) .v)) .g) (.mul
    (.rational 249732 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    37818 1) .g) (.mul (.rational 202752 1) .v)) .g) (.mul (.rational 178290 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 7120 1) .g) (.mul (.rational 64377
    1) .v)) .g) (.mul (.rational 86208 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 595 1) .g) (.mul (.rational 11944 1) .v)) .g) (.mul (.rational 26964 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 981 1) .v) .g) (.mul (.rational
    4914 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 395 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 6))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    151 1) .f) (.add (.mul (.rational 1436 1) .g) (.mul (.rational 289 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 6129 1) .g) (.mul (.rational 2742 1) .v)) .g) (.mul (.rational 138 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 15456 1) .g) (.mul (.rational
    11673 1) .v)) .g) (.mul (.rational 1306 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 25494 1) .g) (.mul (.rational 29352 1) .v)) .g) (.mul (.rational 5544 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 28728 1) .g) (.mul
    (.rational 48258 1) .v)) .g) (.mul (.rational 13896 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 22386 1) .g) (.mul (.rational 54180 1) .v)) .g) (.mul
    (.rational 22764 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11904 1) .g) (.mul (.rational 42042 1) .v)) .g) (.mul (.rational 25452 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4131 1) .g) (.mul (.rational 22248 1)
    .v)) .g) (.mul (.rational 19656 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 844 1) .g) (.mul (.rational 7677 1) .v)) .g) (.mul (.rational 10344 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 77 1) .g) (.mul (.rational
    1558 1) .v)) .g) (.mul (.rational 3546 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 141 1) .v) .g) (.mul (.rational 714 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 64 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 7))) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 4 1) .f) (.add (.mul (.rational 40 1) .g) (.mul
    (.rational 8 1) .v))) .f) (.add (.mul (.add (.mul (.rational 180 1) .g) (.mul (.rational 80 1)
    .v)) .g) (.mul (.rational 4 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 480
    1) .g) (.mul (.rational 360 1) .v)) .g) (.mul (.rational 40 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 840 1) .g) (.mul (.rational 960 1) .v)) .g) (.mul
    (.rational 180 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1008 1) .g) (.mul (.rational 1680 1) .v)) .g) (.mul (.rational 480 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 840 1) .g) (.mul (.rational 2016 1) .v)) .g)
    (.mul (.rational 840 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 480 1) .g) (.mul (.rational 1680 1) .v)) .g) (.mul (.rational 1008 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 180 1) .g) (.mul (.rational 960 1)
    .v)) .g) (.mul (.rational 840 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 40 1) .g) (.mul (.rational 360 1) .v)) .g) (.mul (.rational 480 1) (.pow .v 2)))
    (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 4 1) .g) (.mul (.rational 80 1)
    .v)) .g) (.mul (.rational 180 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 8 1) .v) .g) (.mul (.rational 40 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 4 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 8)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0320

namespace FullHigh0321
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh1.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    6*SmallGap.PolarCoefficientsHigh0.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    3*SmallGap.PolarCoefficientsHigh1.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    24*SmallGap.PolarCoefficientsHigh0.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    6*SmallGap.PolarCoefficientsHigh1.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    60*SmallGap.PolarCoefficientsHigh0.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsHigh1.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh0.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    2*SmallGap.PolarCoefficientsHigh0.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    3*SmallGap.PolarCoefficientsHigh0.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    4*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e^3*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(36*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^5+6*SmallGap.ReducedLayers.high0_010_1 e g v*e^6+28*SmallGap.ReducedLayers.high0_001_0 e g
    v*e^6+4*SmallGap.ReducedLayers.high0_001_1 e g v*e^7)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(12*SmallGap.ReducedLayers.high1_020_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_020_1 e
    g v*e^4+15*SmallGap.ReducedLayers.high1_011_0 e g v*e^4+3*SmallGap.ReducedLayers.high1_011_1 e
    g v*e^5+6*SmallGap.ReducedLayers.high1_002_0 e g v*e^5+1*SmallGap.ReducedLayers.high1_002_1 e
    g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 13304 1) .e) (.add (.mul (.rational
    132174 1) .f) (.add (.mul (.rational 166446 1) .g) (.mul (.rational 24852 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 821695 1) .f) (.add (.mul (.rational 1411964 1) .g) (.mul
    (.rational 230495 1) .v))) .f) (.add (.mul (.add (.mul (.rational 868165 1) .g) (.mul
    (.rational 295322 1) .v)) .g) (.mul (.rational 11580 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 3585828 1) .f) (.add (.mul (.rational 7800766 1) .g) (.mul
    (.rational 1336077 1) .v))) .f) (.add (.mul (.add (.mul (.rational 6468876 1) .g) (.mul
    (.rational 2345066 1) .v)) .g) (.mul (.rational 99949 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2546446 1) .g) (.mul (.rational 1463437 1) .v)) .g) (.mul (.rational
    130850 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    11677917 1) .f) (.add (.mul (.rational 30723891 1) .g) (.mul (.rational 5425951 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 32052336 1) .g) (.mul (.rational 12095895 1) .v)) .g) (.mul
    (.rational 538097 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 16884999 1)
    .g) (.mul (.rational 10234259 1) .v)) .g) (.mul (.rational 968704 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4708177 1) .g) (.mul (.rational 4087501 1) .v)) .g)
    (.mul (.rational 615789 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 29449698 1) .f) (.add (.mul (.rational 90857214 1)
    .g) (.mul (.rational 16400597 1) .v))) .f) (.add (.mul (.add (.mul (.rational 114175356 1) .g)
    (.mul (.rational 44340701 1) .v)) .g) (.mul (.rational 2024369 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 75298010 1) .g) (.mul (.rational 47391407 1) .v)) .g) (.mul
    (.rational 4642791 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 27934014
    1) .g) (.mul (.rational 25478279 1) .v)) .g) (.mul (.rational 4022103 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 5771248 1) .g) (.mul (.rational 7217956
    1) .v)) .g) (.mul (.rational 1633229 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 58884370 1) .f) (.add (.mul
    (.rational 208356751 1) .g) (.mul (.rational 38254319 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 306179663 1) .g) (.mul (.rational 121583778 1) .v)) .g) (.mul (.rational 5649680 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 242400336 1) .g) (.mul (.rational
    157069339 1) .v)) .g) (.mul (.rational 15755939 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 112113802 1) .g) (.mul (.rational 106200863 1) .v)) .g) (.mul
    (.rational 17312345 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 30667337 1) .g) (.mul (.rational 40265518 1) .v)) .g) (.mul (.rational 9521291 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4766001 1) .g) (.mul
    (.rational 8476067 1) .v)) .g) (.mul (.rational 2740639 1) (.pow .v 2))) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    94790942 1) .f) (.add (.mul (.rational 378301783 1) .g) (.mul (.rational 70438771 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 636251868 1) .g) (.mul (.rational 257345808 1) .v)) .g)
    (.mul (.rational 12117080 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    587527418 1) .g) (.mul (.rational 389921945 1) .v)) .g) (.mul (.rational 39821092 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 325191958 1) .g) (.mul (.rational
    317703853 1) .v)) .g) (.mul (.rational 53068347 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 110481997 1) .g) (.mul (.rational 150896104 1) .v)) .g) (.mul
    (.rational 36886919 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22631304 1) .g) (.mul (.rational 42292119 1) .v)) .g) (.mul (.rational 14308199 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2621710 1) .g) (.mul
    (.rational 6724632 1) .v)) .g) (.mul (.rational 3062625 1) (.pow .v 2))) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 124020443 1) .f) (.add (.mul (.rational 551010674 1) .g) (.mul (.rational
    103857507 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1043526322 1) .g) (.mul (.rational
    428848869 1) .v)) .g) (.mul (.rational 20410079 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1100645525 1) .g) (.mul (.rational 745640311 1) .v)) .g) (.mul (.rational
    77274180 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 708794970 1) .g)
    (.mul (.rational 710968358 1) .v)) .g) (.mul (.rational 121149140 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 287297484 1) .g) (.mul (.rational 405736888
    1) .v)) .g) (.mul (.rational 101898127 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 72823466 1) .g) (.mul (.rational 141907986 1) .v)) .g) (.mul (.rational
    49792236 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 11070121
    1) .g) (.mul (.rational 29891936 1) .v)) .g) (.mul (.rational 14294787 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 919071 1) .g) (.mul (.rational 3562107 1)
    .v)) .g) (.mul (.rational 2316665 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    132534050 1) .f) (.add (.mul (.rational 648702989 1) .g) (.mul (.rational 123626789 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1365868670 1) .g) (.mul (.rational 569377699 1) .v))
    .g) (.mul (.rational 27352700 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1619543680 1) .g) (.mul (.rational 1117397149 1) .v)) .g) (.mul (.rational 117287780 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1188843612 1) .g) (.mul (.rational
    1220505746 1) .v)) .g) (.mul (.rational 211590636 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 559236295 1) .g) (.mul (.rational 813243910 1) .v)) .g)
    (.mul (.rational 209023760 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 168587746 1) .g) (.mul (.rational 340732354 1) .v)) .g) (.mul (.rational 123309987
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 31589096 1) .g)
    (.mul (.rational 89208920 1) .v)) .g) (.mul (.rational 44447665 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3425024 1) .g) (.mul (.rational 14009429 1) .v))
    .g) (.mul (.rational 9614149 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 185062 1) .g) (.mul (.rational 1204396 1) .v)) .g) (.mul (.rational 1172559 1)
    (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 115804274 1) .f) (.add
    (.mul (.rational 619120316 1) .g) (.mul (.rational 119202369 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 1434547487 1) .g) (.mul (.rational 605884752 1) .v)) .g) (.mul (.rational
    29357668 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1888542540 1) .g)
    (.mul (.rational 1324813369 1) .v)) .g) (.mul (.rational 140683642 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1555813898 1) .g) (.mul (.rational 1631037318 1) .v))
    .g) (.mul (.rational 287186291 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 832444697 1) .g) (.mul (.rational 1242678612 1) .v)) .g) (.mul (.rational
    326051208 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    290449180 1) .g) (.mul (.rational 606426142 1) .v)) .g) (.mul (.rational 225520010 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 64504136 1) .g) (.mul
    (.rational 189576716 1) .v)) .g) (.mul (.rational 97892543 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 8583535 1) .g) (.mul (.rational 36842227 1) .v)) .g)
    (.mul (.rational 26487306 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 602379 1) .g) (.mul (.rational 4149799 1) .v)) .g) (.mul (.rational 4287953 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 16194 1) .g) (.mul
    (.rational 234011 1) .v)) .g) (.mul (.rational 379569 1) (.pow .v 2))) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 82511038 1) .f) (.add (.mul (.rational
    478406444 1) .g) (.mul (.rational 93005237 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1209688390 1) .g) (.mul (.rational 517198574 1) .v)) .g) (.mul (.rational 25266825 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1750518522 1) .g) (.mul (.rational
    1246984497 1) .v)) .g) (.mul (.rational 133871898 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1598822944 1) .g) (.mul (.rational 1708569066 1) .v)) .g) (.mul
    (.rational 305196015 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 958302287 1) .g) (.mul (.rational 1465037916 1) .v)) .g) (.mul (.rational 391703972
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 379427930 1) .g)
    (.mul (.rational 815841362 1) .v)) .g) (.mul (.rational 310945143 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 97235896 1) .g) (.mul (.rational 296249954
    1) .v)) .g) (.mul (.rational 157936358 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 15276586 1) .g) (.mul (.rational 68490317 1) .v)) .g) (.mul (.rational
    51311534 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1309147
    1) .g) (.mul (.rational 9499023 1) .v)) .g) (.mul (.rational 10345765 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 45408 1) .g) (.mul (.rational 697043 1)
    .v)) .g) (.mul (.rational 1207716 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 19735 1) .v) .g) (.mul (.rational 70689 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 47618019 1) .f) (.add (.mul
    (.rational 297629359 1) .g) (.mul (.rational 58398717 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 815563956 1) .g) (.mul (.rational 352739585 1) .v)) .g) (.mul (.rational 17371015
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1286687833 1) .g) (.mul
    (.rational 929807449 1) .v)) .g) (.mul (.rational 100870220 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1290210841 1) .g) (.mul (.rational 1403446441 1) .v)) .g)
    (.mul (.rational 254115465 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 856029951 1) .g) (.mul (.rational 1337617418 1) .v)) .g) (.mul (.rational 363951238
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 378918094 1) .g)
    (.mul (.rational 836913784 1) .v)) .g) (.mul (.rational 326245478 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 109904378 1) .g) (.mul (.rational 346003616
    1) .v)) .g) (.mul (.rational 189876220 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19856262 1) .g) (.mul (.rational 92627493 1) .v)) .g) (.mul (.rational
    72012639 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1999833
    1) .g) (.mul (.rational 15216843 1) .v)) .g) (.mul (.rational 17372659 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 84182 1) .g) (.mul (.rational 1366669 1)
    .v)) .g) (.mul (.rational 2512399 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 49929 1) .v) .g) (.mul (.rational 192369 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 5710 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 22004142 1) .f) (.add (.mul (.rational 147501600 1) .g)
    (.mul (.rational 29200183 1) .v))) .f) (.add (.mul (.add (.mul (.rational 435441096 1) .g)
    (.mul (.rational 190406595 1) .v)) .g) (.mul (.rational 9451121 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 743889282 1) .g) (.mul (.rational 544842641 1) .v)) .g)
    (.mul (.rational 59708155 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    812416286 1) .g) (.mul (.rational 898414075 1) .v)) .g) (.mul (.rational 164782843 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 591005507 1) .g) (.mul
    (.rational 942319944 1) .v)) .g) (.mul (.rational 260634755 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 289087598 1) .g) (.mul (.rational 654430348 1) .v))
    .g) (.mul (.rational 260480917 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 93528916 1) .g) (.mul (.rational 303409618 1) .v)) .g) (.mul (.rational
    170965101 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 19067384
    1) .g) (.mul (.rational 92234579 1) .v)) .g) (.mul (.rational 74153605 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2199407 1) .g) (.mul (.rational 17481161
    1) .v)) .g) (.mul (.rational 20822761 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 108206 1) .g) (.mul (.rational 1850059 1) .v)) .g) (.mul (.rational
    3587294 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 82109 1) .v) .g)
    (.mul (.rational 337996 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 12988 1)
    (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 7997994 1) .f) (.add (.mul (.rational 57245535 1) .g) (.mul (.rational
    11429765 1) .v))) .f) (.add (.mul (.add (.mul (.rational 181155057 1) .g) (.mul (.rational
    80041058 1) .v)) .g) (.mul (.rational 4004024 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 333202088 1) .g) (.mul (.rational 247144961 1) .v)) .g) (.mul (.rational
    27350403 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 393720698 1) .g)
    (.mul (.rational 442125059 1) .v)) .g) (.mul (.rational 82093595 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 311616014 1) .g) (.mul (.rational 506190694
    1) .v)) .g) (.mul (.rational 142176453 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 166888543 1) .g) (.mul (.rational 386436731 1) .v)) .g) (.mul
    (.rational 156808223 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 59552444 1) .g) (.mul (.rational 198558064 1) .v)) .g) (.mul (.rational 114626529
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 13507526 1) .g)
    (.mul (.rational 67542505 1) .v)) .g) (.mul (.rational 55980426 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1751975 1) .g) (.mul (.rational 14492025 1) .v))
    .g) (.mul (.rational 17935367 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 98238 1) .g) (.mul (.rational 1761703 1) .v)) .g) (.mul (.rational 3583771 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 91547 1) .v) .g) (.mul (.rational
    400040 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 18753 1) (.pow .v 2)) (.pow
    .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    2225980 1) .f) (.add (.mul (.rational 16946941 1) .g) (.mul (.rational 3411257 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 57242216 1) .g) (.mul (.rational 25539996 1) .v)) .g) (.mul
    (.rational 1287374 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 112810830 1)
    .g) (.mul (.rational 84664087 1) .v)) .g) (.mul (.rational 9457676 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 143431934 1) .g) (.mul (.rational 163362089 1) .v))
    .g) (.mul (.rational 30686313 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 122725244 1) .g) (.mul (.rational 202788856 1) .v)) .g) (.mul (.rational 57779829
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 71429906 1) .g)
    (.mul (.rational 168844567 1) .v)) .g) (.mul (.rational 69740330 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 27865466 1) .g) (.mul (.rational 95252546 1)
    .v)) .g) (.mul (.rational 56214751 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6956550 1) .g) (.mul (.rational 35848567 1) .v)) .g) (.mul (.rational
    30539546 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1000959
    1) .g) (.mul (.rational 8585979 1) .v)) .g) (.mul (.rational 10996883 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 62854 1) .g) (.mul (.rational 1177421 1)
    .v)) .g) (.mul (.rational 2500084 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 69915 1) .v) .g) (.mul (.rational 322285 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 17777 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 455117 1) .f) (.add (.mul (.rational
    3673414 1) .g) (.mul (.rational 745045 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    13195344 1) .g) (.mul (.rational 5940735 1) .v)) .g) (.mul (.rational 301625 1) (.pow .v 2))))
    .f) (.mul (.add (.mul (.add (.mul (.rational 27749531 1) .g) (.mul (.rational 21051005 1) .v))
    .g) (.mul (.rational 2372344 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 37789092 1) .g) (.mul (.rational 43596628 1) .v)) .g) (.mul (.rational 8277470 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 34772985 1) .g) (.mul
    (.rational 58350148 1) .v)) .g) (.mul (.rational 16844381 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21863644 1) .g) (.mul (.rational 52646710 1) .v)) .g)
    (.mul (.rational 22096954 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9259509 1) .g) (.mul (.rational 32366120 1) .v)) .g) (.mul (.rational 19482199 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2523291 1) .g) (.mul
    (.rational 13358300 1) .v)) .g) (.mul (.rational 11661214 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 398737 1) .g) (.mul (.rational 3533543 1) .v)) .g)
    (.mul (.rational 4665035 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 27688 1) .g) (.mul (.rational 539483 1) .v)) .g) (.mul (.rational 1189601 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 35995 1) .v) .g) (.mul (.rational
    173929 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 11024 1) (.pow .v 2)) (.pow
    .g 10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    63872 1) .f) (.add (.mul (.rational 545015 1) .g) (.mul (.rational 111291 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 2075578 1) .g) (.mul (.rational 941949 1) .v)) .g) (.mul
    (.rational 48140 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4641836 1) .g)
    (.mul (.rational 3554791 1) .v)) .g) (.mul (.rational 403776 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6744808 1) .g) (.mul (.rational 7869308 1) .v)) .g) (.mul
    (.rational 1508346 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6646514 1) .g) (.mul (.rational 11303614 1) .v)) .g) (.mul (.rational 3300744 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4493020 1) .g) (.mul (.rational
    10994270 1) .v)) .g) (.mul (.rational 4679304 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2054588 1) .g) (.mul (.rational 7322014 1) .v)) .g) (.mul
    (.rational 4483080 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    607336 1) .g) (.mul (.rational 3291356 1) .v)) .g) (.mul (.rational 2934036 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 104623 1) .g) (.mul (.rational
    953863 1) .v)) .g) (.mul (.rational 1292376 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 7962 1) .g) (.mul (.rational 160589 1) .v)) .g) (.mul (.rational
    365724 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 11899 1) .v) .g)
    (.mul (.rational 59864 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 4290 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 5427 1) .f) (.add (.mul (.rational 48842 1) .g) (.mul (.rational 10028 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 196700 1) .g) (.mul (.rational 89842 1) .v)) .g)
    (.mul (.rational 4616 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 466528 1)
    .g) (.mul (.rational 359992 1) .v)) .g) (.mul (.rational 41150 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 721154 1) .g) (.mul (.rational 848984 1) .v)) .g) (.mul
    (.rational 163967 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    758548 1) .g) (.mul (.rational 1303960 1) .v)) .g) (.mul (.rational 384256 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 549332 1) .g) (.mul (.rational
    1361612 1) .v)) .g) (.mul (.rational 585956 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 270160 1) .g) (.mul (.rational 977872 1) .v)) .g) (.mul
    (.rational 606844 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    86243 1) .g) (.mul (.rational 476312 1) .v)) .g) (.mul (.rational 431690 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 16114 1) .g) (.mul (.rational
    150364 1) .v)) .g) (.mul (.rational 207952 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1336 1) .g) (.mul (.rational 27730 1) .v)) .g) (.mul (.rational
    64796 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2264 1) .v) .g)
    (.mul (.rational 11766 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 943 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 6))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 206 1) .f) (.add (.mul (.rational 1952 1) .g) (.mul (.rational 402 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 8298 1) .g) (.mul (.rational 3804 1) .v)) .g) (.mul
    (.rational 196 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 20832 1) .g)
    (.mul (.rational 16146 1) .v)) .g) (.mul (.rational 1852 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 34188 1) .g) (.mul (.rational 40464 1) .v)) .g) (.mul (.rational
    7848 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 38304 1) .g)
    (.mul (.rational 66276 1) .v)) .g) (.mul (.rational 19632 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 29652 1) .g) (.mul (.rational 74088 1) .v)) .g) (.mul
    (.rational 32088 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    15648 1) .g) (.mul (.rational 57204 1) .v)) .g) (.mul (.rational 35784 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 5382 1) .g) (.mul (.rational 30096 1)
    .v)) .g) (.mul (.rational 27552 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1088 1) .g) (.mul (.rational 10314 1) .v)) .g) (.mul (.rational 14448 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 98 1) .g) (.mul
    (.rational 2076 1) .v)) .g) (.mul (.rational 4932 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 186 1) .v) .g) (.mul (.rational 988 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 88 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 7)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0321

namespace FullHigh0322
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c023 e f g v*((e+f)*(e+f+g))^5*(f+g)^3+
    6*SmallGap.PolarCoefficientsHigh1.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    3*SmallGap.PolarCoefficientsHigh2.c032 e f g v*e*((e+f)*(e+f+g))^5*(f+g)^2+
    24*SmallGap.PolarCoefficientsHigh0.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsHigh1.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    6*SmallGap.PolarCoefficientsHigh2.c041 e f g v*e^2*((e+f)*(e+f+g))^5*(f+g)+
    120*SmallGap.PolarCoefficientsHigh0.c050 e f g v*e*((e+f)*(e+f+g))^5+
    60*SmallGap.PolarCoefficientsHigh1.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsHigh2.c050 e f g v*e^3*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh1.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    5*SmallGap.PolarCoefficientsHigh0.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh1.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    15*SmallGap.PolarCoefficientsHigh0.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsHigh1.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    30*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh0.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    1*SmallGap.PolarCoefficientsHigh0.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh0.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(90*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^4+36*SmallGap.ReducedLayers.high0_010_1 e g v*e^5+6*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^6+84*SmallGap.ReducedLayers.high0_001_0 e g v*e^5+28*SmallGap.ReducedLayers.high0_001_1 e
    g v*e^6+4*SmallGap.ReducedLayers.high0_001_2 e g v*e^7)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(18*SmallGap.ReducedLayers.high1_020_0 e g v*e^2+12*SmallGap.ReducedLayers.high1_020_1 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_020_2 e g v*e^4+30*SmallGap.ReducedLayers.high1_011_0 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_011_1 e g v*e^4+3*SmallGap.ReducedLayers.high1_011_2 e
    g v*e^5+15*SmallGap.ReducedLayers.high1_002_0 e g v*e^4+6*SmallGap.ReducedLayers.high1_002_1 e
    g v*e^5+1*SmallGap.ReducedLayers.high1_002_2 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 60820 1) .e) (.add (.mul (.rational 586370 1) .f)
    (.add (.mul (.rational 734422 1) .g) (.mul (.rational 112548 1) .v)))) .e) (.add (.mul (.add
    (.mul (.rational 3536568 1) .f) (.add (.mul (.rational 6042880 1) .g) (.mul (.rational 1004626
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 3696412 1) .g) (.mul (.rational 1270972 1)
    .v)) .g) (.mul (.rational 52080 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 14956577 1) .f) (.add (.mul (.rational 32351914 1) .g) (.mul (.rational 5608708 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 26688017 1) .g) (.mul (.rational 9717697 1) .v))
    .g) (.mul (.rational 429755 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    10464036 1) .g) (.mul (.rational 5970694 1) .v)) .g) (.mul (.rational 553198 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 47117945 1) .f) (.add
    (.mul (.rational 123256232 1) .g) (.mul (.rational 21933080 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 127914204 1) .g) (.mul (.rational 48279421 1) .v)) .g) (.mul (.rational
    2214417 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 67109880 1) .g) (.mul
    (.rational 40253107 1) .v)) .g) (.mul (.rational 3917511 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 18676535 1) .g) (.mul (.rational 15811367 1) .v)) .g) (.mul
    (.rational 2433983 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 114651908 1) .f) (.add (.mul (.rational 351697781 1) .g)
    (.mul (.rational 63766690 1) .v))) .f) (.add (.mul (.add (.mul (.rational 439658240 1) .g)
    (.mul (.rational 170320601 1) .v)) .g) (.mul (.rational 7974793 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 288752712 1) .g) (.mul (.rational 179565944 1) .v)) .g)
    (.mul (.rational 17979741 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    106882968 1) .g) (.mul (.rational 95091480 1) .v)) .g) (.mul (.rational 15245270 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 22101603 1) .g) (.mul
    (.rational 26514690 1) .v)) .g) (.mul (.rational 6024877 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 220478057
    1) .f) (.add (.mul (.rational 775680106 1) .g) (.mul (.rational 142777296 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 1133929568 1) .g) (.mul (.rational 448607783 1) .v)) .g) (.mul
    (.rational 21289597 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 893958356
    1) .g) (.mul (.rational 572262400 1) .v)) .g) (.mul (.rational 58415680 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 412452997 1) .g) (.mul (.rational 381700193 1)
    .v)) .g) (.mul (.rational 62933433 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 112856902 1) .g) (.mul (.rational 142704469 1) .v)) .g) (.mul (.rational
    33791089 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 17617474
    1) .g) (.mul (.rational 29646476 1) .v)) .g) (.mul (.rational 9448826 1) (.pow .v 2))) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 339963294 1) .f) (.add (.mul (.rational 1349006606 1) .g) (.mul (.rational
    251627302 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2257019621 1) .g) (.mul (.rational
    909458295 1) .v)) .g) (.mul (.rational 43603008 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2075280284 1) .g) (.mul (.rational 1362072155 1) .v)) .g) (.mul (.rational
    141145612 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1145571738 1) .g)
    (.mul (.rational 1096302083 1) .v)) .g) (.mul (.rational 184783517 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 389130236 1) .g) (.mul (.rational 514308846
    1) .v)) .g) (.mul (.rational 125776271 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 79993863 1) .g) (.mul (.rational 142514239 1) .v)) .g) (.mul (.rational
    47610138 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 9349330
    1) .g) (.mul (.rational 22469041 1) .v)) .g) (.mul (.rational 9913939 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 423916262 1) .f) (.add (.mul (.rational 1872659448 1) .g) (.mul
    (.rational 353675153 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3527952821 1) .g) (.mul
    (.rational 1445798080 1) .v)) .g) (.mul (.rational 69937229 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3704830220 1) .g) (.mul (.rational 2487223702 1) .v)) .g) (.mul
    (.rational 261158522 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2378881267 1) .g) (.mul (.rational 2345651022 1) .v)) .g) (.mul (.rational 403015399 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 963599424 1) .g) (.mul
    (.rational 1324162977 1) .v)) .g) (.mul (.rational 332903680 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 244912591 1) .g) (.mul (.rational 458611535 1)
    .v)) .g) (.mul (.rational 159391536 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 37511216 1) .g) (.mul (.rational 95918285 1) .v)) .g) (.mul (.rational
    44757099 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3158663
    1) .g) (.mul (.rational 11410239 1) .v)) .g) (.mul (.rational 7095536 1) (.pow .v 2))) (.pow
    .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 429086735 1) .f) (.add (.mul (.rational 2088228109 1)
    .g) (.mul (.rational 399196675 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4373673212 1)
    .g) (.mul (.rational 1821497293 1) .v)) .g) (.mul (.rational 88874744 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5162752564 1) .g) (.mul (.rational 3540125406 1) .v))
    .g) (.mul (.rational 376398108 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3777745933 1) .g) (.mul (.rational 3828842520 1) .v)) .g) (.mul (.rational
    669690076 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1775023094 1) .g) (.mul (.rational 2526948807 1) .v)) .g) (.mul (.rational 651468372 1) (.pow
    .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 536103022 1) .g) (.mul
    (.rational 1049837784 1) .v)) .g) (.mul (.rational 377932839 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 101079618 1) .g) (.mul (.rational 273237392 1)
    .v)) .g) (.mul (.rational 133861723 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11095004 1) .g) (.mul (.rational 42859314 1) .v)) .g) (.mul (.rational
    28478630 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 611873 1)
    .g) (.mul (.rational 3710488 1) .v)) .g) (.mul (.rational 3432499 1) (.pow .v 2))) (.pow .g
    7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 352385396 1) .f) (.add (.mul (.rational
    1873209382 1) .g) (.mul (.rational 362441010 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    4317295851 1) .g) (.mul (.rational 1826444606 1) .v)) .g) (.mul (.rational 89912066 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5657381676 1) .g) (.mul (.rational
    3958467630 1) .v)) .g) (.mul (.rational 426166606 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4644534919 1) .g) (.mul (.rational 4830459122 1) .v)) .g) (.mul
    (.rational 859611521 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2480952536 1) .g) (.mul (.rational 3649353598 1) .v)) .g) (.mul (.rational
    963419296 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    866522821 1) .g) (.mul (.rational 1767917605 1) .v)) .g) (.mul (.rational 657365791 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 193390576 1) .g) (.mul
    (.rational 549932650 1) .v)) .g) (.mul (.rational 281489594 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 26003529 1) .g) (.mul (.rational 106795801 1) .v))
    .g) (.mul (.rational 75249432 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1857866 1) .g) (.mul (.rational 12106737 1) .v)) .g) (.mul (.rational 12091775 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 51360 1) .g) (.mul
    (.rational 694898 1) .v)) .g) (.mul (.rational 1073702 1) (.pow .v 2))) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 233683869 1) .f) (.add (.mul (.rational
    1347213526 1) .g) (.mul (.rational 263851948 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    3388245019 1) .g) (.mul (.rational 1455703631 1) .v)) .g) (.mul (.rational 72336979 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4879680684 1) .g) (.mul (.rational
    3481570302 1) .v)) .g) (.mul (.rational 379622566 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 4440016199 1) .g) (.mul (.rational 4732399587 1) .v)) .g) (.mul
    (.rational 856670689 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2655389866 1) .g) (.mul (.rational 4027522228 1) .v)) .g) (.mul (.rational
    1087789156 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1051527726 1) .g) (.mul (.rational 2228527352 1) .v)) .g) (.mul (.rational 854170153 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 270442870 1) .g) (.mul
    (.rational 805791941 1) .v)) .g) (.mul (.rational 429377306 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 42850083 1) .g) (.mul (.rational 186199230 1) .v))
    .g) (.mul (.rational 138319894 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3728472 1) .g) (.mul (.rational 25972664 1) .v)) .g) (.mul (.rational
    27777177 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 132522 1)
    .g) (.mul (.rational 1935774 1) .v)) .g) (.mul (.rational 3259339 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 56491 1) .v) .g) (.mul (.rational 195055 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    123935189 1) .f) (.add (.mul (.rational 770243272 1) .g) (.mul (.rational 152709166 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 2099155982 1) .g) (.mul (.rational 915719493 1) .v))
    .g) (.mul (.rational 45957871 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3295384032 1) .g) (.mul (.rational 2396131085 1) .v)) .g) (.mul (.rational 264690163 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3290810134 1) .g) (.mul (.rational
    3590697859 1) .v)) .g) (.mul (.rational 661125647 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2177297792 1) .g) (.mul (.rational 3399292266 1) .v)) .g)
    (.mul (.rational 938622875 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 963025339 1) .g) (.mul (.rational 2114761669 1) .v)) .g) (.mul (.rational 834178520
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 279936868 1) .g)
    (.mul (.rational 870998141 1) .v)) .g) (.mul (.rational 481738247 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 50903073 1) .g) (.mul (.rational 233053161
    1) .v)) .g) (.mul (.rational 181659202 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5190816 1) .g) (.mul (.rational 38471534 1) .v)) .g) (.mul (.rational
    43755889 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 223063 1)
    .g) (.mul (.rational 3501290 1) .v)) .g) (.mul (.rational 6368187 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 131280 1) .v) .g) (.mul (.rational 497694 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 15441 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 51742418 1) .f) (.add
    (.mul (.rational 344885879 1) .g) (.mul (.rational 69222332 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 1012539600 1) .g) (.mul (.rational 448389635 1) .v)) .g) (.mul (.rational
    22738513 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1720882272 1) .g)
    (.mul (.rational 1274478558 1) .v)) .g) (.mul (.rational 142659581 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1870967089 1) .g) (.mul (.rational 2087775348 1) .v))
    .g) (.mul (.rational 390921630 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1356408681 1) .g) (.mul (.rational 2176414439 1) .v)) .g) (.mul (.rational
    613943175 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    662313446 1) .g) (.mul (.rational 1503627223 1) .v)) .g) (.mul (.rational 609466282 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 214434842 1) .g) (.mul
    (.rational 694636922 1) .v)) .g) (.mul (.rational 397724055 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 43906071 1) .g) (.mul (.rational 211000174 1) .v))
    .g) (.mul (.rational 171861646 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5112694 1) .g) (.mul (.rational 40139239 1) .v)) .g) (.mul (.rational
    48260269 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 255744 1)
    .g) (.mul (.rational 4293796 1) .v)) .g) (.mul (.rational 8370117 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 194686 1) .v) .g) (.mul (.rational 803144 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 32036 1) (.pow .v 2)) (.pow .g 10))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 16592585 1) .f) (.add
    (.mul (.rational 118091942 1) .g) (.mul (.rational 23993920 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 371620358 1) .g) (.mul (.rational 167008147 1) .v)) .g) (.mul (.rational
    8560077 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 679865004 1) .g) (.mul
    (.rational 512520354 1) .v)) .g) (.mul (.rational 58134572 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 799407808 1) .g) (.mul (.rational 911343973 1) .v)) .g)
    (.mul (.rational 173478113 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 630106502 1) .g) (.mul (.rational 1037487219 1) .v)) .g) (.mul (.rational 298734607
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 336509167 1) .g)
    (.mul (.rational 788139687 1) .v)) .g) (.mul (.rational 327752093 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 119979788 1) .g) (.mul (.rational 403511457
    1) .v)) .g) (.mul (.rational 238564173 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 27270909 1) .g) (.mul (.rational 137080159 1) .v)) .g) (.mul (.rational
    116224562 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3559668
    1) .g) (.mul (.rational 29480733 1) .v)) .g) (.mul (.rational 37266653 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 202077 1) .g) (.mul (.rational 3612594 1)
    .v)) .g) (.mul (.rational 7493632 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 190877 1) .v) .g) (.mul (.rational 849523 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 41051 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3932858 1) .f) (.add (.mul (.rational
    29773876 1) .g) (.mul (.rational 6122610 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    99998831 1) .g) (.mul (.rational 45586185 1) .v)) .g) (.mul (.rational 2361698 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 195971444 1) .g) (.mul (.rational 150266481
    1) .v)) .g) (.mul (.rational 17268040 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 247832571 1) .g) (.mul (.rational 288322617 1) .v)) .g) (.mul (.rational 55762631
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 211027598 1) .g)
    (.mul (.rational 355988428 1) .v)) .g) (.mul (.rational 104517229 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 122339991 1) .g) (.mul (.rational 294969197
    1) .v)) .g) (.mul (.rational 125631525 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 47606776 1) .g) (.mul (.rational 165768700 1) .v)) .g) (.mul (.rational
    100935653 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 11881779
    1) .g) (.mul (.rational 62256391 1) .v)) .g) (.mul (.rational 54740695 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1714866 1) .g) (.mul (.rational 14921222
    1) .v)) .g) (.mul (.rational 19729471 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 108530 1) .g) (.mul (.rational 2056618 1) .v)) .g) (.mul (.rational
    4509069 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 123567 1) .v)
    .g) (.mul (.rational 588455 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 33230 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 646632 1) .f) (.add (.mul (.rational 5190092 1) .g) (.mul (.rational
    1079725 1) .v))) .f) (.add (.mul (.add (.mul (.rational 18536273 1) .g) (.mul (.rational
    8565890 1) .v)) .g) (.mul (.rational 448427 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 38753468 1) .g) (.mul (.rational 30195546 1) .v)) .g) (.mul (.rational
    3513476 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 52466452 1) .g)
    (.mul (.rational 62206024 1) .v)) .g) (.mul (.rational 12212251 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 48006844 1) .g) (.mul (.rational 82825014 1) .v))
    .g) (.mul (.rational 24760052 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 30028582 1) .g) (.mul (.rational 74362716 1) .v)) .g) (.mul (.rational 32372462 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 12662948 1) .g) (.mul
    (.rational 45520880 1) .v)) .g) (.mul (.rational 28465364 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3441068 1) .g) (.mul (.rational 18728616 1) .v)) .g)
    (.mul (.rational 17012446 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 543512 1) .g) (.mul (.rational 4948149 1) .v)) .g) (.mul (.rational 6808876 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 37857 1) .g) (.mul
    (.rational 756914 1) .v)) .g) (.mul (.rational 1742647 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 50846 1) .v) .g) (.mul (.rational 257032 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 16567 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 65513 1) .f) (.add
    (.mul (.rational 555921 1) .g) (.mul (.rational 116915 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2104748 1) .g) (.mul (.rational 984995 1) .v)) .g) (.mul (.rational 52068 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4678268 1) .g) (.mul (.rational 3699300
    1) .v)) .g) (.mul (.rational 435396 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6754566 1) .g) (.mul (.rational 8148140 1) .v)) .g) (.mul (.rational 1621480 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6612886 1) .g) (.mul
    (.rational 11644010 1) .v)) .g) (.mul (.rational 3537624 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4441276 1) .g) (.mul (.rational 11267130 1) .v)) .g)
    (.mul (.rational 5000912 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2018268 1) .g) (.mul (.rational 7466620 1) .v)) .g) (.mul (.rational 4779488 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 593273 1) .g) (.mul
    (.rational 3341500 1) .v)) .g) (.mul (.rational 3122616 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 101761 1) .g) (.mul (.rational 965115 1) .v)) .g)
    (.mul (.rational 1374760 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7728 1) .g) (.mul (.rational 162235 1) .v)) .g) (.mul (.rational 389644 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 12040 1) .v) .g) (.mul (.rational
    64092 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 4640 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    3058 1) .f) (.add (.mul (.rational 27370 1) .g) (.mul (.rational 5812 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 109571 1) .g) (.mul (.rational 51852 1) .v)) .g) (.mul (.rational 2764
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 258208 1) .g) (.mul (.rational
    206830 1) .v)) .g) (.mul (.rational 24582 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 396368 1) .g) (.mul (.rational 485408 1) .v)) .g) (.mul (.rational 97709 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 413812 1) .g) (.mul
    (.rational 741664 1) .v)) .g) (.mul (.rational 228400 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 297290 1) .g) (.mul (.rational 770168 1) .v)) .g) (.mul
    (.rational 347396 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    144976 1) .g) (.mul (.rational 549892 1) .v)) .g) (.mul (.rational 358876 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 45878 1) .g) (.mul (.rational
    266240 1) .v)) .g) (.mul (.rational 254702 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 8498 1) .g) (.mul (.rational 83548 1) .v)) .g) (.mul (.rational
    122464 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 699 1) .g)
    (.mul (.rational 15324 1) .v)) .g) (.mul (.rational 38120 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 1246 1) .v) .g) (.mul (.rational 6926 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 557 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0322

namespace FullHigh0323
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  6*SmallGap.PolarCoefficientsHigh2.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    24*SmallGap.PolarCoefficientsHigh1.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    24*SmallGap.PolarCoefficientsHigh2.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    80*SmallGap.PolarCoefficientsHigh0.c050 e f g v*((e+f)*(e+f+g))^5+
    120*SmallGap.PolarCoefficientsHigh1.c050 e f g v*e*((e+f)*(e+f+g))^5+
    60*SmallGap.PolarCoefficientsHigh2.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh2.c113 e f g v*((e+f)*(e+f+g))^4*(f+g)^3+
    5*SmallGap.PolarCoefficientsHigh1.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh2.c122 e f g v*e*((e+f)*(e+f+g))^4*(f+g)^2+
    18*SmallGap.PolarCoefficientsHigh0.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    15*SmallGap.PolarCoefficientsHigh1.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsHigh2.c131 e f g v*e^2*((e+f)*(e+f+g))^4*(f+g)+
    72*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e*((e+f)*(e+f+g))^4+
    30*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e^3*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh1.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    4*SmallGap.PolarCoefficientsHigh0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh1.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    8*SmallGap.PolarCoefficientsHigh0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsHigh1.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    12*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e^3*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(120*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^3+90*SmallGap.ReducedLayers.high0_010_1 e g v*e^4+36*SmallGap.ReducedLayers.high0_010_2 e
    g v*e^5+6*SmallGap.ReducedLayers.high0_010_3 e g v*e^6+140*SmallGap.ReducedLayers.high0_001_0
    e g v*e^4+84*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^5+28*SmallGap.ReducedLayers.high0_001_2 e g v*e^6+4*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^7)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(12*SmallGap.ReducedLayers.high1_020_0 e g v*e^1+18*SmallGap.ReducedLayers.high1_020_1 e
    g v*e^2+12*SmallGap.ReducedLayers.high1_020_2 e g v*e^3+3*SmallGap.ReducedLayers.high1_020_3 e
    g v*e^4+30*SmallGap.ReducedLayers.high1_011_0 e g v*e^2+30*SmallGap.ReducedLayers.high1_011_1
    e g v*e^3+15*SmallGap.ReducedLayers.high1_011_2 e g v*e^4+3*SmallGap.ReducedLayers.high1_011_3
    e g v*e^5+20*SmallGap.ReducedLayers.high1_002_0 e g
    v*e^3+15*SmallGap.ReducedLayers.high1_002_1 e g v*e^4+6*SmallGap.ReducedLayers.high1_002_2 e g
    v*e^5+1*SmallGap.ReducedLayers.high1_002_3 e g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 165056 1) .e) (.add (.mul (.rational 1547936 1) .f) (.add (.mul
    (.rational 1928788 1) .g) (.mul (.rational 302328 1) .v)))) .e) (.add (.mul (.add (.mul
    (.rational 9066975 1) .f) (.add (.mul (.rational 15405550 1) .g) (.mul (.rational 2601017 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 9376123 1) .g) (.mul (.rational 3245030 1) .v))
    .g) (.mul (.rational 138960 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 37151753 1) .f) (.add (.mul (.rational 79885979 1) .g) (.mul (.rational 13986597 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 65543559 1) .g) (.mul (.rational 23881533 1) .v))
    .g) (.mul (.rational 1097719 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    25594729 1) .g) (.mul (.rational 14410283 1) .v)) .g) (.mul (.rational 1386950 1) (.pow .v
    2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 113045526 1) .f)
    (.add (.mul (.rational 293902648 1) .g) (.mul (.rational 52601908 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 303285132 1) .g) (.mul (.rational 114110455 1) .v)) .g) (.mul
    (.rational 5411513 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 158405764 1)
    .g) (.mul (.rational 93494619 1) .v)) .g) (.mul (.rational 9386170 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 43984518 1) .g) (.mul (.rational 35977617 1) .v)) .g)
    (.mul (.rational 5677257 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 264668525 1) .f) (.add (.mul (.rational 806755757 1)
    .g) (.mul (.rational 146733454 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1002643129 1)
    .g) (.mul (.rational 386399894 1) .v)) .g) (.mul (.rational 18620908 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 655363707 1) .g) (.mul (.rational 400713071 1) .v))
    .g) (.mul (.rational 41162197 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 241903186 1) .g) (.mul (.rational 208231533 1) .v)) .g) (.mul (.rational 34017228
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 50039292 1) .g)
    (.mul (.rational 56860159 1) .v)) .g) (.mul (.rational 12993129 1) (.pow .v 2))) (.pow .g
    3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    487442432 1) .f) (.add (.mul (.rational 1703846806 1) .g) (.mul (.rational 314208531 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 2475870507 1) .g) (.mul (.rational 973937082 1) .v))
    .g) (.mul (.rational 47400994 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1942159308 1) .g) (.mul (.rational 1223445014 1) .v)) .g) (.mul (.rational 127619616 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 893173498 1) .g) (.mul (.rational
    802154449 1) .v)) .g) (.mul (.rational 134257103 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 244297466 1) .g) (.mul (.rational 294387250 1) .v)) .g)
    (.mul (.rational 69937286 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 38282155 1) .g) (.mul (.rational 60027185 1) .v)) .g) (.mul (.rational 18813301 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 715807126 1) .f) (.add (.mul (.rational 2821751186 1) .g)
    (.mul (.rational 527318437 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4692222662 1) .g)
    (.mul (.rational 1881635341 1) .v)) .g) (.mul (.rational 92298414 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4292011870 1) .g) (.mul (.rational 2778410552 1) .v)) .g)
    (.mul (.rational 293542172 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2360743129 1) .g) (.mul (.rational 2202007288 1) .v)) .g) (.mul (.rational 376141182 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 801096131 1) .g) (.mul
    (.rational 1016356856 1) .v)) .g) (.mul (.rational 249393511 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 165151875 1) .g) (.mul (.rational 277169282 1)
    .v)) .g) (.mul (.rational 91421290 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 19461953 1) .g) (.mul (.rational 43119295 1) .v)) .g) (.mul (.rational
    18321103 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 844311625 1) .f) (.add (.mul
    (.rational 3704958940 1) .g) (.mul (.rational 701846522 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 6936455488 1) .g) (.mul (.rational 2834989119 1) .v)) .g) (.mul (.rational
    140159618 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7245146254 1) .g)
    (.mul (.rational 4814261906 1) .v)) .g) (.mul (.rational 515054818 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4634030873 1) .g) (.mul (.rational 4478044106 1) .v))
    .g) (.mul (.rational 779983582 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1874185782 1) .g) (.mul (.rational 2492417134 1) .v)) .g) (.mul (.rational
    630148802 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    477298850 1) .g) (.mul (.rational 851671668 1) .v)) .g) (.mul (.rational 293992861 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 73617656 1) .g) (.mul
    (.rational 176211943 1) .v)) .g) (.mul (.rational 80172886 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6284792 1) .g) (.mul (.rational 20862699 1) .v)) .g)
    (.mul (.rational 12333445 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    801685988 1) .f) (.add (.mul (.rational 3875334190 1) .g) (.mul (.rational 744698390 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 8065369426 1) .g) (.mul (.rational 3360578642 1) .v))
    .g) (.mul (.rational 167633392 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9467818290 1) .g) (.mul (.rational 6454958322 1) .v)) .g) (.mul (.rational 699945966 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6898910653 1) .g) (.mul (.rational
    6896447998 1) .v)) .g) (.mul (.rational 1225395628 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3234924287 1) .g) (.mul (.rational 4496183428 1) .v)) .g)
    (.mul (.rational 1170457664 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 978191785 1) .g) (.mul (.rational 1847069528 1) .v)) .g) (.mul (.rational 665355908
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 185511651 1) .g)
    (.mul (.rational 476646879 1) .v)) .g) (.mul (.rational 230650797 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 20612684 1) .g) (.mul (.rational 74550165 1)
    .v)) .g) (.mul (.rational 48093936 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1160342 1) .g) (.mul (.rational 6500193 1) .v)) .g) (.mul (.rational 5725199
    1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 611184791 1) .f)
    (.add (.mul (.rational 3226934106 1) .g) (.mul (.rational 629560927 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 7389608313 1) .g) (.mul (.rational 3140411382 1) .v)) .g) (.mul
    (.rational 158292608 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9628132088
    1) .g) (.mul (.rational 6734270713 1) .v)) .g) (.mul (.rational 741128488 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7868991291 1) .g) (.mul (.rational
    8129243746 1) .v)) .g) (.mul (.rational 1474860356 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4192685404 1) .g) (.mul (.rational 6077213464 1) .v)) .g)
    (.mul (.rational 1628908436 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1464969886 1) .g) (.mul (.rational 2916710012 1) .v)) .g) (.mul (.rational
    1094438438 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    328481364 1) .g) (.mul (.rational 901298197 1) .v)) .g) (.mul (.rational 461629132 1) (.pow .v
    2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 44639361 1) .g) (.mul
    (.rational 174791789 1) .v)) .g) (.mul (.rational 121905189 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3249220 1) .g) (.mul (.rational 19968167 1) .v)) .g)
    (.mul (.rational 19508426 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 92460 1) .g) (.mul (.rational 1171453 1) .v)) .g) (.mul (.rational 1756003 1) (.pow
    .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 371222277 1) .f)
    (.add (.mul (.rational 2125557599 1) .g) (.mul (.rational 421354831 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 5311000187 1) .g) (.mul (.rational 2303122035 1) .v)) .g) (.mul
    (.rational 117489199 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7603819833
    1) .g) (.mul (.rational 5455834135 1) .v)) .g) (.mul (.rational 610221958 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6885551867 1) .g) (.mul (.rational
    7345355611 1) .v)) .g) (.mul (.rational 1361952433 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 4105395333 1) .g) (.mul (.rational 6194791950 1) .v)) .g)
    (.mul (.rational 1709720868 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1625067341 1) .g) (.mul (.rational 3401199346 1) .v)) .g) (.mul (.rational
    1327462399 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    419403039 1) .g) (.mul (.rational 1223545369 1) .v)) .g) (.mul (.rational 660679458 1) (.pow
    .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 67048240 1) .g) (.mul
    (.rational 282655885 1) .v)) .g) (.mul (.rational 211494549 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5930524 1) .g) (.mul (.rational 39738113 1) .v)) .g)
    (.mul (.rational 42545473 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 216416 1) .g) (.mul (.rational 3023247 1) .v)) .g) (.mul (.rational 5079415 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 91726 1) .v) .g) (.mul
    (.rational 317683 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 177120176 1) .f) (.add (.mul (.rational 1093243840 1) .g) (.mul
    (.rational 220350928 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2959751996 1) .g) (.mul
    (.rational 1310160361 1) .v)) .g) (.mul (.rational 67735113 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4618159780 1) .g) (.mul (.rational 3398823695 1) .v)) .g) (.mul
    (.rational 386785958 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    4588057015 1) .g) (.mul (.rational 5050269089 1) .v)) .g) (.mul (.rational 957633095 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3024629792 1) .g) (.mul
    (.rational 4743516777 1) .v)) .g) (.mul (.rational 1347837504 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1336102674 1) .g) (.mul (.rational 2931774022 1)
    .v)) .g) (.mul (.rational 1188393205 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 389234390 1) .g) (.mul (.rational 1202651089 1) .v)) .g) (.mul
    (.rational 682169560 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 71282871 1) .g) (.mul (.rational 321907753 1) .v)) .g) (.mul (.rational 256709003
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 7371106 1) .g)
    (.mul (.rational 53540411 1) .v)) .g) (.mul (.rational 62173238 1) (.pow .v 2))) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 324176 1) .g) (.mul (.rational 4964439 1) .v))
    .g) (.mul (.rational 9221786 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 192764 1) .v) .g) (.mul (.rational 751040 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 25098 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 64886397 1) .f) (.add (.mul (.rational 429519281 1) .g)
    (.mul (.rational 88067490 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1252538509 1) .g)
    (.mul (.rational 566062846 1) .v)) .g) (.mul (.rational 29690784 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2115352715 1) .g) (.mul (.rational 1596469983 1) .v)) .g)
    (.mul (.rational 184989873 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2287120577 1) .g) (.mul (.rational 2595506709 1) .v)) .g) (.mul (.rational 503452942 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1651080017 1) .g) (.mul
    (.rational 2686960969 1) .v)) .g) (.mul (.rational 785624343 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 804401995 1) .g) (.mul (.rational 1845855435 1)
    .v)) .g) (.mul (.rational 775752792 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 260642221 1) .g) (.mul (.rational 849871629 1) .v)) .g) (.mul (.rational
    504630169 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 53641222
    1) .g) (.mul (.rational 258282227 1) .v)) .g) (.mul (.rational 218216542 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 6316646 1) .g) (.mul (.rational
    49463493 1) .v)) .g) (.mul (.rational 61741169 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 322180 1) .g) (.mul (.rational 5377647 1) .v)) .g) (.mul
    (.rational 10913040 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    251300 1) .v) .g) (.mul (.rational 1086766 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 46220 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 17596442 1) .f) (.add (.mul (.rational 124369282 1) .g)
    (.mul (.rational 25947317 1) .v))) .f) (.add (.mul (.add (.mul (.rational 388691169 1) .g)
    (.mul (.rational 179333722 1) .v)) .g) (.mul (.rational 9549174 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 706418976 1) .g) (.mul (.rational 546464708 1) .v)) .g)
    (.mul (.rational 64495536 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    825656055 1) .g) (.mul (.rational 965058821 1) .v)) .g) (.mul (.rational 191452501 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 647568178 1) .g) (.mul
    (.rational 1091758238 1) .v)) .g) (.mul (.rational 328166734 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 344691795 1) .g) (.mul (.rational 825117771 1)
    .v)) .g) (.mul (.rational 358815599 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 122801156 1) .g) (.mul (.rational 421122238 1) .v)) .g) (.mul (.rational
    260840544 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 27993679
    1) .g) (.mul (.rational 143086307 1) .v)) .g) (.mul (.rational 127373039 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3683912 1) .g) (.mul (.rational
    30937777 1) .v)) .g) (.mul (.rational 41178918 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 212364 1) .g) (.mul (.rational 3841747 1) .v)) .g) (.mul
    (.rational 8427827 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    208090 1) .v) .g) (.mul (.rational 986716 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 50308 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 3322772 1) .f) (.add (.mul (.rational 24979580
    1) .g) (.mul (.rational 5302823 1) .v))) .f) (.add (.mul (.add (.mul (.rational 83307304 1)
    .g) (.mul (.rational 39227603 1) .v)) .g) (.mul (.rational 2120900 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 162133536 1) .g) (.mul (.rational 128468342 1) .v)) .g)
    (.mul (.rational 15440736 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    203700660 1) .g) (.mul (.rational 244939858 1) .v)) .g) (.mul (.rational 49664418 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 172444052 1) .g) (.mul
    (.rational 300653170 1) .v)) .g) (.mul (.rational 92780357 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 99517800 1) .g) (.mul (.rational 247890292 1) .v))
    .g) (.mul (.rational 111285717 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 38627064 1) .g) (.mul (.rational 138850148 1) .v)) .g) (.mul (.rational
    89392137 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9644896
    1) .g) (.mul (.rational 52113302 1) .v)) .g) (.mul (.rational 48621901 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1398680 1) .g) (.mul (.rational 12534503
    1) .v)) .g) (.mul (.rational 17661663 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 89480 1) .g) (.mul (.rational 1744785 1) .v)) .g) (.mul (.rational
    4098987 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 106854 1) .v)
    .g) (.mul (.rational 549427 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 32397 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 389281 1) .f) (.add (.mul (.rational 3102436 1) .g) (.mul (.rational
    669938 1) .v))) .f) (.add (.mul (.add (.mul (.rational 11000032 1) .g) (.mul (.rational
    5283169 1) .v)) .g) (.mul (.rational 289940 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 22829610 1) .g) (.mul (.rational 18510884 1) .v)) .g) (.mul (.rational
    2264142 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 30685854 1) .g)
    (.mul (.rational 37905612 1) .v)) .g) (.mul (.rational 7846130 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 27886982 1) .g) (.mul (.rational 50181480 1) .v))
    .g) (.mul (.rational 15869462 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17339136 1) .g) (.mul (.rational 44825614 1) .v)) .g) (.mul (.rational 20718988 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7278342 1) .g) (.mul
    (.rational 27332724 1) .v)) .g) (.mul (.rational 18221494 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1973185 1) .g) (.mul (.rational 11223804 1) .v)) .g)
    (.mul (.rational 10919212 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 311974 1) .g) (.mul (.rational 2968982 1) .v)) .g) (.mul (.rational 4398650 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 21856 1) .g) (.mul
    (.rational 456905 1) .v)) .g) (.mul (.rational 1139672 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 31096 1) .v) .g) (.mul (.rational 171628 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 11434 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 4)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21250 1) .f) (.add
    (.mul (.rational 179024 1) .g) (.mul (.rational 39298 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 672692 1) .g) (.mul (.rational 329230 1) .v)) .g) (.mul (.rational 18324 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1483528 1) .g) (.mul (.rational 1229324
    1) .v)) .g) (.mul (.rational 152828 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2124836 1) .g) (.mul (.rational 2691784 1) .v)) .g) (.mul (.rational 567810 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2063656 1) .g) (.mul
    (.rational 3824156 1) .v)) .g) (.mul (.rational 1236408 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1375304 1) .g) (.mul (.rational 3679732 1) .v)) .g)
    (.mul (.rational 1745688 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 620632 1) .g) (.mul (.rational 2426480 1) .v)) .g) (.mul (.rational 1668240 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 181418 1) .g) (.mul
    (.rational 1081864 1) .v)) .g) (.mul (.rational 1091748 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 31016 1) .g) (.mul (.rational 311954 1) .v)) .g)
    (.mul (.rational 482760 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2356 1) .g) (.mul (.rational 52526 1) .v)) .g) (.mul (.rational 137988 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3924 1) .v) .g) (.mul (.rational
    23028 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1706 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0323

namespace FullHigh0324
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  24*SmallGap.PolarCoefficientsHigh2.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    80*SmallGap.PolarCoefficientsHigh1.c050 e f g v*((e+f)*(e+f+g))^5+
    120*SmallGap.PolarCoefficientsHigh2.c050 e f g v*e*((e+f)*(e+f+g))^5+
    5*SmallGap.PolarCoefficientsHigh2.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    18*SmallGap.PolarCoefficientsHigh1.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    15*SmallGap.PolarCoefficientsHigh2.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    56*SmallGap.PolarCoefficientsHigh0.c140 e f g v*((e+f)*(e+f+g))^4+
    72*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e*((e+f)*(e+f+g))^4+
    30*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh2.c203 e f g v*((e+f)*(e+f+g))^3*(f+g)^3+
    4*SmallGap.PolarCoefficientsHigh1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh2.c212 e f g v*e*((e+f)*(e+f+g))^3*(f+g)^2+
    13*SmallGap.PolarCoefficientsHigh0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsHigh1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    1*SmallGap.PolarCoefficientsHigh2.c221 e f g v*e^2*((e+f)*(e+f+g))^3*(f+g)+
    39*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e^3*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    3*SmallGap.PolarCoefficientsHigh0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(90*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^2+120*SmallGap.ReducedLayers.high0_010_1 e g v*e^3+90*SmallGap.ReducedLayers.high0_010_2 e
    g v*e^4+36*SmallGap.ReducedLayers.high0_010_3 e g v*e^5+6*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^6+140*SmallGap.ReducedLayers.high0_001_0 e g
    v*e^3+140*SmallGap.ReducedLayers.high0_001_1 e g v*e^4+84*SmallGap.ReducedLayers.high0_001_2 e
    g v*e^5+28*SmallGap.ReducedLayers.high0_001_3 e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_0 e g v+12*SmallGap.ReducedLayers.high1_020_1 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_020_2 e g v*e^2+12*SmallGap.ReducedLayers.high1_020_3 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_020_4 e g v*e^4+15*SmallGap.ReducedLayers.high1_011_0 e
    g v*e^1+30*SmallGap.ReducedLayers.high1_011_1 e g v*e^2+30*SmallGap.ReducedLayers.high1_011_2
    e g v*e^3+15*SmallGap.ReducedLayers.high1_011_3 e g v*e^4+3*SmallGap.ReducedLayers.high1_011_4
    e g v*e^5+15*SmallGap.ReducedLayers.high1_002_0 e g
    v*e^2+20*SmallGap.ReducedLayers.high1_002_1 e g v*e^3+15*SmallGap.ReducedLayers.high1_002_2 e
    g v*e^4+6*SmallGap.ReducedLayers.high1_002_3 e g v*e^5+1*SmallGap.ReducedLayers.high1_002_4 e
    g v*e^6)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 294448 1) .e) (.add (.mul (.rational 2692788 1) .f) (.add (.mul (.rational
    3339084 1) .g) (.mul (.rational 533400 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    15338384 1) .f) (.add (.mul (.rational 25916992 1) .g) (.mul (.rational 4429792 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 15698804 1) .g) (.mul (.rational 5442604 1) .v)) .g) (.mul
    (.rational 243600 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    60895494 1) .f) (.add (.mul (.rational 130146383 1) .g) (.mul (.rational 22949472 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 106199508 1) .g) (.mul (.rational 38544748 1) .v)) .g)
    (.mul (.rational 1844969 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    41310791 1) .g) (.mul (.rational 22775588 1) .v)) .g) (.mul (.rational 2283946 1) (.pow .v
    2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 178734206 1) .f)
    (.add (.mul (.rational 461652984 1) .g) (.mul (.rational 82918440 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 473545395 1) .g) (.mul (.rational 176879166 1) .v)) .g) (.mul
    (.rational 8700757 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 246180686 1)
    .g) (.mul (.rational 141955414 1) .v)) .g) (.mul (.rational 14758871 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 68204069 1) .g) (.mul (.rational 53256102 1) .v)) .g)
    (.mul (.rational 8650587 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 401501149 1) .f) (.add (.mul (.rational 1215384871 1)
    .g) (.mul (.rational 221387384 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1500801798 1)
    .g) (.mul (.rational 573380444 1) .v)) .g) (.mul (.rational 28558348 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 975808142 1) .g) (.mul (.rational 582913630 1) .v))
    .g) (.mul (.rational 61712493 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 359036917 1) .g) (.mul (.rational 295814756 1) .v)) .g) (.mul (.rational 49457301
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 74279699 1) .g)
    (.mul (.rational 78568122 1) .v)) .g) (.mul (.rational 18092023 1) (.pow .v 2))) (.pow .g
    3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    704999646 1) .f) (.add (.mul (.rational 2446453646 1) .g) (.mul (.rational 451606450 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 3530815507 1) .g) (.mul (.rational 1377495330 1) .v))
    .g) (.mul (.rational 69101408 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2753713168 1) .g) (.mul (.rational 1698263110 1) .v)) .g) (.mul (.rational 181982502 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1261426262 1) .g) (.mul (.rational
    1089532846 1) .v)) .g) (.mul (.rational 186020824 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 344688418 1) .g) (.mul (.rational 390100262 1) .v)) .g)
    (.mul (.rational 93237677 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 54194373 1) .g) (.mul (.rational 77449800 1) .v)) .g) (.mul (.rational 23785150 1)
    (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 979638991 1) .f) (.add (.mul (.rational 3832709298 1) .g)
    (.mul (.rational 717666190 1) .v))) .f) (.add (.mul (.add (.mul (.rational 6327994887 1) .g)
    (.mul (.rational 2522010604 1) .v)) .g) (.mul (.rational 127327498 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5752444925 1) .g) (.mul (.rational 3659811382 1) .v)) .g)
    (.mul (.rational 396679310 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    3149700519 1) .g) (.mul (.rational 2844231188 1) .v)) .g) (.mul (.rational 495316742 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1066842260 1) .g) (.mul
    (.rational 1284706848 1) .v)) .g) (.mul (.rational 317723809 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 220401907 1) .g) (.mul (.rational 342522168 1)
    .v)) .g) (.mul (.rational 111582361 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 26167817 1) .g) (.mul (.rational 52179892 1) .v)) .g) (.mul (.rational
    21159593 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1083470290 1) .f) (.add (.mul
    (.rational 4717498555 1) .g) (.mul (.rational 897540489 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 8766925413 1) .g) (.mul (.rational 3573909553 1) .v)) .g) (.mul (.rational
    181880087 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9097166856 1) .g)
    (.mul (.rational 5973282388 1) .v)) .g) (.mul (.rational 656066918 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5789314225 1) .g) (.mul (.rational 5459964722 1) .v))
    .g) (.mul (.rational 971512692 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2335371085 1) .g) (.mul (.rational 2982839771 1) .v)) .g) (.mul (.rational
    763775480 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    595393293 1) .g) (.mul (.rational 1000340471 1) .v)) .g) (.mul (.rational 344726681 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 92403504 1) .g) (.mul
    (.rational 203595998 1) .v)) .g) (.mul (.rational 90399425 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7990131 1) .g) (.mul (.rational 23869358 1) .v)) .g)
    (.mul (.rational 13334538 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    953834910 1) .f) (.add (.mul (.rational 4574118449 1) .g) (.mul (.rational 885951591 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 9447192717 1) .g) (.mul (.rational 3945334034 1) .v))
    .g) (.mul (.rational 202935050 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    11013985563 1) .g) (.mul (.rational 7469799023 1) .v)) .g) (.mul (.rational 833771119 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7981700321 1) .g) (.mul (.rational
    7858934240 1) .v)) .g) (.mul (.rational 1432657814 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3730610980 1) .g) (.mul (.rational 5043059385 1) .v)) .g)
    (.mul (.rational 1339261658 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1128300367 1) .g) (.mul (.rational 2040404278 1) .v)) .g) (.mul (.rational
    743002750 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    215064707 1) .g) (.mul (.rational 520041783 1) .v)) .g) (.mul (.rational 250974418 1) (.pow .v
    2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 24174265 1) .g) (.mul
    (.rational 80871104 1) .v)) .g) (.mul (.rational 51126641 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1387841 1) .g) (.mul (.rational 7097986 1) .v)) .g)
    (.mul (.rational 6025321 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 664640356 1) .f) (.add (.mul (.rational 3480674809 1) .g) (.mul (.rational
    687599409 1) .v))) .f) (.add (.mul (.add (.mul (.rational 7908380494 1) .g) (.mul (.rational
    3388425217 1) .v)) .g) (.mul (.rational 176685959 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 10230709206 1) .g) (.mul (.rational 7172747151 1) .v)) .g) (.mul
    (.rational 816089081 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    8312534107 1) .g) (.mul (.rational 8542974763 1) .v)) .g) (.mul (.rational 1599832656 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4412255941 1) .g) (.mul
    (.rational 6301603069 1) .v)) .g) (.mul (.rational 1738391958 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1540745881 1) .g) (.mul (.rational 2987656377 1)
    .v)) .g) (.mul (.rational 1148455635 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 346851532 1) .g) (.mul (.rational 914906291 1) .v)) .g) (.mul
    (.rational 476913827 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 47623835 1) .g) (.mul (.rational 176991551 1) .v)) .g) (.mul (.rational 124686090
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3531272 1) .g)
    (.mul (.rational 20405066 1) .v)) .g) (.mul (.rational 20039451 1) (.pow .v 2))) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 103407 1) .g) (.mul (.rational 1229752 1) .v))
    .g) (.mul (.rational 1864190 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 362091436 1) .f) (.add (.mul (.rational 2056157910 1) .g) (.mul
    (.rational 414960199 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5096514965 1) .g) (.mul
    (.rational 2243120772 1) .v)) .g) (.mul (.rational 118904149 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 7242936847 1) .g) (.mul (.rational 5252625428 1) .v)) .g) (.mul
    (.rational 610780258 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    6517933308 1) .g) (.mul (.rational 6989481952 1) .v)) .g) (.mul (.rational 1347453955 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 3869388713 1) .g) (.mul
    (.rational 5828679032 1) .v)) .g) (.mul (.rational 1671807210 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1529504734 1) .g) (.mul (.rational 3169157828 1)
    .v)) .g) (.mul (.rational 1284042105 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 395888284 1) .g) (.mul (.rational 1132796522 1) .v)) .g) (.mul
    (.rational 634039852 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 63857028 1) .g) (.mul (.rational 261667124 1) .v)) .g) (.mul (.rational 202756843
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 5745204 1) .g)
    (.mul (.rational 37179923 1) .v)) .g) (.mul (.rational 41313865 1) (.pow .v 2))) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 215487 1) .g) (.mul (.rational 2906056 1) .v))
    .g) (.mul (.rational 5119610 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 92628 1) .v) .g) (.mul (.rational 344525 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 150989482 1) .f) (.add (.mul
    (.rational 924145671 1) .g) (.mul (.rational 190780563 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2481499563 1) .g) (.mul (.rational 1122937835 1) .v)) .g) (.mul (.rational 60649248
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3842375539 1) .g) (.mul
    (.rational 2883197178 1) .v)) .g) (.mul (.rational 343313139 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 3792100312 1) .g) (.mul (.rational 4240567158 1) .v)) .g)
    (.mul (.rational 842679930 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2487667262 1) .g) (.mul (.rational 3945295185 1) .v)) .g) (.mul (.rational
    1176633889 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1096464409 1) .g) (.mul (.rational 2419459849 1) .v)) .g) (.mul (.rational 1031046309 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 319982523 1) .g) (.mul
    (.rational 988061950 1) .v)) .g) (.mul (.rational 590405059 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 59035157 1) .g) (.mul (.rational 264845000 1) .v))
    .g) (.mul (.rational 223220586 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6197455 1) .g) (.mul (.rational 44540236 1) .v)) .g) (.mul (.rational
    55006987 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 279527 1)
    .g) (.mul (.rational 4237570 1) .v)) .g) (.mul (.rational 8473954 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 172300 1) .v) .g) (.mul (.rational 738296 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 27343 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 46534321 1) .f) (.add
    (.mul (.rational 305415992 1) .g) (.mul (.rational 64555317 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 883184565 1) .g) (.mul (.rational 411134930 1) .v)) .g) (.mul (.rational
    22660718 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1479750585 1) .g)
    (.mul (.rational 1148827005 1) .v)) .g) (.mul (.rational 140246382 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1588644920 1) .g) (.mul (.rational 1851011168 1) .v))
    .g) (.mul (.rational 379328781 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1140510223 1) .g) (.mul (.rational 1900661391 1) .v)) .g) (.mul (.rational
    588961248 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    553912131 1) .g) (.mul (.rational 1297344686 1) .v)) .g) (.mul (.rational 579932501 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 179560263 1) .g) (.mul
    (.rational 595392235 1) .v)) .g) (.mul (.rational 377694253 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 37162165 1) .g) (.mul (.rational 181325644 1) .v))
    .g) (.mul (.rational 164634333 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4432177 1) .g) (.mul (.rational 35096120 1) .v)) .g) (.mul (.rational
    47478162 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 231138 1)
    .g) (.mul (.rational 3905828 1) .v)) .g) (.mul (.rational 8701285 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 190188 1) .v) .g) (.mul (.rational 920411 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 42838 1) (.pow .v 2)) (.pow .g 10))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9986174 1) .f) (.add
    (.mul (.rational 69970325 1) .g) (.mul (.rational 15150761 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 216798927 1) .g) (.mul (.rational 103835073 1) .v)) .g) (.mul (.rational
    5845713 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 390758772 1) .g) (.mul
    (.rational 313756529 1) .v)) .g) (.mul (.rational 39285203 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 453266355 1) .g) (.mul (.rational 549644245 1) .v)) .g)
    (.mul (.rational 116122146 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 353270907 1) .g) (.mul (.rational 617339049 1) .v)) .g) (.mul (.rational 198472640
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 187251634 1) .g)
    (.mul (.rational 463983827 1) .v)) .g) (.mul (.rational 216895049 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 66641038 1) .g) (.mul (.rational 236176101
    1) .v)) .g) (.mul (.rational 158197429 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 15245181 1) .g) (.mul (.rational 80409351 1) .v)) .g) (.mul (.rational
    77985322 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2026206
    1) .g) (.mul (.rational 17548698 1) .v)) .g) (.mul (.rational 25694262 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 118977 1) .g) (.mul (.rational 2223376 1)
    .v)) .g) (.mul (.rational 5434984 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 124734 1) .v) .g) (.mul (.rational 670610 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 36930 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1331855 1) .f) (.add (.mul (.rational
    9924061 1) .g) (.mul (.rational 2201695 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    32802976 1) .g) (.mul (.rational 16160528 1) .v)) .g) (.mul (.rational 929476 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 63285819 1) .g) (.mul (.rational 52515756
    1) .v)) .g) (.mul (.rational 6742108 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 78859707 1) .g) (.mul (.rational 99385620 1) .v)) .g) (.mul (.rational 21624606 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 66279725 1) .g) (.mul
    (.rational 121181386 1) .v)) .g) (.mul (.rational 40340544 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 38040501 1) .g) (.mul (.rational 99395748 1) .v)) .g)
    (.mul (.rational 48426036 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14723361 1) .g) (.mul (.rational 55522308 1) .v)) .g) (.mul (.rational 39066324 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3680314 1) .g) (.mul
    (.rational 20864156 1) .v)) .g) (.mul (.rational 21453348 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 537242 1) .g) (.mul (.rational 5054895 1) .v)) .g)
    (.mul (.rational 7929816 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34855 1) .g) (.mul (.rational 715036 1) .v)) .g) (.mul (.rational 1893984 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 45048 1) .v) .g) (.mul (.rational
    265336 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 16678 1) (.pow .v 2)) (.pow
    .g 10))) (.pow .f 3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    83078 1) .f) (.add (.mul (.rational 656098 1) .g) (.mul (.rational 149104 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 2304729 1) .g) (.mul (.rational 1167254 1) .v)) .g) (.mul
    (.rational 68556 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4738929 1) .g)
    (.mul (.rational 4059830 1) .v)) .g) (.mul (.rational 533926 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6312374 1) .g) (.mul (.rational 8254488 1) .v)) .g) (.mul
    (.rational 1846805 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5688867 1) .g) (.mul (.rational 10856534 1) .v)) .g) (.mul (.rational 3733071 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3512178 1) .g) (.mul (.rational
    9645640 1) .v)) .g) (.mul (.rational 4880412 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1466959 1) .g) (.mul (.rational 5861334 1) .v)) .g) (.mul
    (.rational 4310497 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    396984 1) .g) (.mul (.rational 2406160 1) .v)) .g) (.mul (.rational 2605356 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 62939 1) .g) (.mul (.rational
    639338 1) .v)) .g) (.mul (.rational 1065225 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 4449 1) .g) (.mul (.rational 99514 1) .v)) .g) (.mul (.rational
    282596 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 6916 1) .v) .g)
    (.mul (.rational 44097 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 3091 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0324

namespace FullHigh0325
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  80*SmallGap.PolarCoefficientsHigh2.c050 e f g v*((e+f)*(e+f+g))^5+
    18*SmallGap.PolarCoefficientsHigh2.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    56*SmallGap.PolarCoefficientsHigh1.c140 e f g v*((e+f)*(e+f+g))^4+
    72*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e*((e+f)*(e+f+g))^4+
    4*SmallGap.PolarCoefficientsHigh2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    13*SmallGap.PolarCoefficientsHigh1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    8*SmallGap.PolarCoefficientsHigh2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    38*SmallGap.PolarCoefficientsHigh0.c230 e f g v*((e+f)*(e+f+g))^3+
    39*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    12*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    9*SmallGap.PolarCoefficientsHigh0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    18*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(36*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^1+90*SmallGap.ReducedLayers.high0_010_1 e g v*e^2+120*SmallGap.ReducedLayers.high0_010_2 e
    g v*e^3+90*SmallGap.ReducedLayers.high0_010_3 e g v*e^4+36*SmallGap.ReducedLayers.high0_010_4
    e g v*e^5+84*SmallGap.ReducedLayers.high0_001_0 e g
    v*e^2+140*SmallGap.ReducedLayers.high0_001_1 e g v*e^3+140*SmallGap.ReducedLayers.high0_001_2
    e g v*e^4+84*SmallGap.ReducedLayers.high0_001_3 e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_1 e g v+12*SmallGap.ReducedLayers.high1_020_2 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_020_3 e g v*e^2+12*SmallGap.ReducedLayers.high1_020_4 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_020_5 e g v*e^4+3*SmallGap.ReducedLayers.high1_011_0 e
    g v+15*SmallGap.ReducedLayers.high1_011_1 e g v*e^1+30*SmallGap.ReducedLayers.high1_011_2 e g
    v*e^2+30*SmallGap.ReducedLayers.high1_011_3 e g v*e^3+15*SmallGap.ReducedLayers.high1_011_4 e
    g v*e^4+3*SmallGap.ReducedLayers.high1_011_5 e g v*e^5+6*SmallGap.ReducedLayers.high1_002_0 e
    g v*e^1+15*SmallGap.ReducedLayers.high1_002_1 e g v*e^2+20*SmallGap.ReducedLayers.high1_002_2
    e g v*e^3+15*SmallGap.ReducedLayers.high1_002_3 e g v*e^4+6*SmallGap.ReducedLayers.high1_002_4
    e g v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    360752 1) .e) (.add (.mul (.rational 3225292 1) .f) (.add (.mul (.rational 3981488 1) .g)
    (.mul (.rational 645792 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 17892723 1) .f) (.add
    (.mul (.rational 30070562 1) .g) (.mul (.rational 5185289 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 18136907 1) .g) (.mul (.rational 6264686 1) .v)) .g) (.mul (.rational 293160 1)
    (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 68850814 1) .f) (.add (.mul
    (.rational 146243114 1) .g) (.mul (.rational 25891883 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 118704550 1) .g) (.mul (.rational 42687344 1) .v)) .g) (.mul (.rational 2132389 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 46021686 1) .g) (.mul (.rational
    24617351 1) .v)) .g) (.mul (.rational 2581586 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 194714935 1) .f) (.add (.mul (.rational 499476559 1)
    .g) (.mul (.rational 89793383 1) .v))) .f) (.add (.mul (.add (.mul (.rational 509201592 1) .g)
    (.mul (.rational 187876481 1) .v)) .g) (.mul (.rational 9621771 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 263518107 1) .g) (.mul (.rational 147124901 1) .v)) .g)
    (.mul (.rational 15918552 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    72881671 1) .g) (.mul (.rational 53481419 1) .v)) .g) (.mul (.rational 8993431 1) (.pow .v
    2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    418501284 1) .f) (.add (.mul (.rational 1257321794 1) .g) (.mul (.rational 228928541 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1541880898 1) .g) (.mul (.rational 581488505 1) .v))
    .g) (.mul (.rational 30083213 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    996959048 1) .g) (.mul (.rational 577140433 1) .v)) .g) (.mul (.rational 63340317 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 365658442 1) .g) (.mul (.rational
    284255997 1) .v)) .g) (.mul (.rational 48932983 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 75686034 1) .g) (.mul (.rational 72739618 1) .v)) .g) (.mul
    (.rational 16937123 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 697260690 1) .f) (.add (.mul (.rational
    2399983173 1) .g) (.mul (.rational 443060683 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    3437483911 1) .g) (.mul (.rational 1325919974 1) .v)) .g) (.mul (.rational 68986176 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2663691564 1) .g) (.mul (.rational
    1597713315 1) .v)) .g) (.mul (.rational 177098519 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1214850870 1) .g) (.mul (.rational 997085693 1) .v)) .g) (.mul
    (.rational 174870339 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 331573619 1) .g) (.mul (.rational 345325308 1) .v)) .g) (.mul (.rational 83428335
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 52303841 1) .g)
    (.mul (.rational 65941745 1) .v)) .g) (.mul (.rational 19749337 1) (.pow .v 2))) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 910178325 1) .f) (.add (.mul (.rational 3530224754 1) .g) (.mul (.rational
    662590111 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5780820186 1) .g) (.mul (.rational
    2286323812 1) .v)) .g) (.mul (.rational 119722539 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5217206414 1) .g) (.mul (.rational 3247718633 1) .v)) .g) (.mul
    (.rational 364202860 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2841197971 1) .g) (.mul (.rational 2461683725 1) .v)) .g) (.mul (.rational 440922265 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 959895522 1) .g) (.mul
    (.rational 1080173026 1) .v)) .g) (.mul (.rational 271330873 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 198613486 1) .g) (.mul (.rational 278792421 1)
    .v)) .g) (.mul (.rational 89938754 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 23740946 1) .g) (.mul (.rational 41070850 1) .v)) .g) (.mul (.rational
    15702011 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 934178223 1) .f) (.add (.mul
    (.rational 4030512763 1) .g) (.mul (.rational 771674851 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 7424848053 1) .g) (.mul (.rational 3020342765 1) .v)) .g) (.mul (.rational
    159737770 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7643906623 1) .g)
    (.mul (.rational 4950191883 1) .v)) .g) (.mul (.rational 564123558 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4833930358 1) .g) (.mul (.rational 4425488666 1) .v))
    .g) (.mul (.rational 813790510 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1942753505 1) .g) (.mul (.rational 2358690388 1) .v)) .g) (.mul (.rational
    619090727 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    495342441 1) .g) (.mul (.rational 770489012 1) .v)) .g) (.mul (.rational 268028537 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 77273513 1) .g) (.mul
    (.rational 152907846 1) .v)) .g) (.mul (.rational 66743537 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 6756805 1) .g) (.mul (.rational 17595061 1) .v)) .g)
    (.mul (.rational 9290275 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    751603967 1) .f) (.add (.mul (.rational 3570140852 1) .g) (.mul (.rational 699578925 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 7305799287 1) .g) (.mul (.rational 3066034255 1) .v))
    .g) (.mul (.rational 164533707 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8445489621 1) .g) (.mul (.rational 5703053497 1) .v)) .g) (.mul (.rational 663966088 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6077342577 1) .g) (.mul (.rational
    5884658794 1) .v)) .g) (.mul (.rational 1117174323 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2827250364 1) .g) (.mul (.rational 3698643302 1) .v)) .g)
    (.mul (.rational 1019118500 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 854128595 1) .g) (.mul (.rational 1465600562 1) .v)) .g) (.mul (.rational 549933232
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 163428193 1) .g)
    (.mul (.rational 366810754 1) .v)) .g) (.mul (.rational 180476523 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 18555826 1) .g) (.mul (.rational 56451711 1)
    .v)) .g) (.mul (.rational 35945398 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1083574 1) .g) (.mul (.rational 4978698 1) .v)) .g) (.mul (.rational 4243697
    1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 469205692 1) .f)
    (.add (.mul (.rational 2433049719 1) .g) (.mul (.rational 489417800 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 5474992509 1) .g) (.mul (.rational 2376666686 1) .v)) .g) (.mul
    (.rational 130017348 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7019348494
    1) .g) (.mul (.rational 4951740182 1) .v)) .g) (.mul (.rational 591845837 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 5659549735 1) .g) (.mul (.rational
    5799035762 1) .v)) .g) (.mul (.rational 1141824140 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2987547270 1) .g) (.mul (.rational 4204473225 1) .v)) .g)
    (.mul (.rational 1219809398 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1041001480 1) .g) (.mul (.rational 1961275256 1) .v)) .g) (.mul (.rational
    792545948 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    234973920 1) .g) (.mul (.rational 593104055 1) .v)) .g) (.mul (.rational 324881786 1) (.pow .v
    2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 32556122 1) .g) (.mul
    (.rational 114253205 1) .v)) .g) (.mul (.rational 84780253 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2455127 1) .g) (.mul (.rational 13314871 1) .v)) .g)
    (.mul (.rational 13937293 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 73752 1) .g) (.mul (.rational 829217 1) .v)) .g) (.mul (.rational 1381315 1) (.pow
    .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 222885063 1) .f)
    (.add (.mul (.rational 1252840360 1) .g) (.mul (.rational 259344736 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 3074410280 1) .g) (.mul (.rational 1383239958 1) .v)) .g) (.mul
    (.rational 77451176 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4328150147
    1) .g) (.mul (.rational 3193491824 1) .v)) .g) (.mul (.rational 393360834 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3862836603 1) .g) (.mul (.rational
    4187931508 1) .v)) .g) (.mul (.rational 857848636 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2278902607 1) .g) (.mul (.rational 3442921711 1) .v)) .g)
    (.mul (.rational 1052847032 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 898049770 1) .g) (.mul (.rational 1848631498 1) .v)) .g) (.mul (.rational 801878641
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 232815047 1) .g)
    (.mul (.rational 655310363 1) .v)) .g) (.mul (.rational 394981238 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 37854932 1) .g) (.mul (.rational 151376799
    1) .v)) .g) (.mul (.rational 127545827 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3461819 1) .g) (.mul (.rational 21817421 1) .v)) .g) (.mul (.rational
    26823415 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 133332 1)
    .g) (.mul (.rational 1766111 1) .v)) .g) (.mul (.rational 3543925 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 59819 1) .v) .g) (.mul (.rational 263519 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    77911342 1) .f) (.add (.mul (.rational 471895242 1) .g) (.mul (.rational 100716122 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1254063409 1) .g) (.mul (.rational 585600016 1) .v))
    .g) (.mul (.rational 33661579 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1922739408 1) .g) (.mul (.rational 1484645056 1) .v)) .g) (.mul (.rational 188937256 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1880945093 1) .g) (.mul (.rational
    2156145696 1) .v)) .g) (.mul (.rational 460143011 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1225392669 1) .g) (.mul (.rational 1982337415 1) .v)) .g)
    (.mul (.rational 638575810 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 537971757 1) .g) (.mul (.rational 1203897353 1) .v)) .g) (.mul (.rational 558121791
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 157075285 1) .g)
    (.mul (.rational 489044905 1) .v)) .g) (.mul (.rational 320911854 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 29176901 1) .g) (.mul (.rational 131439086
    1) .v)) .g) (.mul (.rational 123266711 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3109846 1) .g) (.mul (.rational 22454977 1) .v)) .g) (.mul (.rational
    31446239 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 143948 1)
    .g) (.mul (.rational 2211693 1) .v)) .g) (.mul (.rational 5148844 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 95369 1) .v) .g) (.mul (.rational 491195 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 20418 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 18907189 1) .f) (.add
    (.mul (.rational 122763894 1) .g) (.mul (.rational 27049338 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 351220173 1) .g) (.mul (.rational 170346426 1) .v)) .g) (.mul (.rational
    10071696 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 582431555 1) .g) (.mul
    (.rational 470608630 1) .v)) .g) (.mul (.rational 61954687 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 619471165 1) .g) (.mul (.rational 749888048 1) .v)) .g)
    (.mul (.rational 166750454 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 441338368 1) .g) (.mul (.rational 762309445 1) .v)) .g) (.mul (.rational 258215657
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 213300915 1) .g)
    (.mul (.rational 516330355 1) .v)) .g) (.mul (.rational 254587739 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 69097099 1) .g) (.mul (.rational 236159263
    1) .v)) .g) (.mul (.rational 167128221 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14376502 1) .g) (.mul (.rational 72210722 1) .v)) .g) (.mul (.rational
    74215243 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1737860
    1) .g) (.mul (.rational 14196957 1) .v)) .g) (.mul (.rational 22153755 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 92832 1) .g) (.mul (.rational 1631945 1)
    .v)) .g) (.mul (.rational 4294429 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 83863 1) .v) .g) (.mul (.rational 492704 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 25463 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 2846907 1) .f) (.add (.mul (.rational 19727658 1) .g)
    (.mul (.rational 4490712 1) .v))) .f) (.add (.mul (.add (.mul (.rational 60450535 1) .g) (.mul
    (.rational 30458824 1) .v)) .g) (.mul (.rational 1854036 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 107788176 1) .g) (.mul (.rational 91086298 1) .v)) .g) (.mul
    (.rational 12407346 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    123790473 1) .g) (.mul (.rational 157989384 1) .v)) .g) (.mul (.rational 36573821 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 95669429 1) .g) (.mul
    (.rational 175898860 1) .v)) .g) (.mul (.rational 62492654 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 50409561 1) .g) (.mul (.rational 131351990 1) .v))
    .g) (.mul (.rational 68544609 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17902782 1) .g) (.mul (.rational 66699660 1) .v)) .g) (.mul (.rational 50490307 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 4109764 1) .g) (.mul
    (.rational 22804412 1) .v)) .g) (.mul (.rational 25372219 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 552315 1) .g) (.mul (.rational 5048620 1) .v)) .g)
    (.mul (.rational 8636328 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 33120 1) .g) (.mul (.rational 658254 1) .v)) .g) (.mul (.rational 1921187 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 38714 1) .v) .g) (.mul (.rational
    254621 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 15384 1) (.pow .v 2)) (.pow
    .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    200430 1) .f) (.add (.mul (.rational 1476452 1) .g) (.mul (.rational 347314 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 4824166 1) .g) (.mul (.rational 2524536 1) .v)) .g) (.mul
    (.rational 158220 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9201969 1)
    .g) (.mul (.rational 8124772 1) .v)) .g) (.mul (.rational 1144440 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11344286 1) .g) (.mul (.rational 15235458 1) .v)) .g)
    (.mul (.rational 3666006 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9445289 1) .g) (.mul (.rational 18427902 1) .v)) .g) (.mul (.rational 6846869 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5382102 1) .g) (.mul
    (.rational 15026054 1) .v)) .g) (.mul (.rational 8259420 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2075251 1) .g) (.mul (.rational 8374326 1) .v)) .g)
    (.mul (.rational 6732825 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 519364 1) .g) (.mul (.rational 3157662 1) .v)) .g) (.mul (.rational 3766060 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 76431 1) .g) (.mul
    (.rational 774208 1) .v)) .g) (.mul (.rational 1433751 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 5044 1) .g) (.mul (.rational 112162 1) .v)) .g) (.mul
    (.rational 357864 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 7350
    1) .v) .g) (.mul (.rational 53315 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    3630 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0325

namespace FullHigh0326
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  56*SmallGap.PolarCoefficientsHigh2.c140 e f g v*((e+f)*(e+f+g))^4+
    13*SmallGap.PolarCoefficientsHigh2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    38*SmallGap.PolarCoefficientsHigh1.c230 e f g v*((e+f)*(e+f+g))^3+
    39*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    9*SmallGap.PolarCoefficientsHigh1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    3*SmallGap.PolarCoefficientsHigh2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    25*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2+
    18*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    3*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsHigh0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    6*SmallGap.PolarCoefficientsHigh0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_010_0 e g v+36*SmallGap.ReducedLayers.high0_010_1 e
    g v*e^1+90*SmallGap.ReducedLayers.high0_010_2 e g v*e^2+120*SmallGap.ReducedLayers.high0_010_3
    e g v*e^3+90*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^4+28*SmallGap.ReducedLayers.high0_001_0 e g v*e^1+84*SmallGap.ReducedLayers.high0_001_1 e
    g v*e^2+140*SmallGap.ReducedLayers.high0_001_2 e g
    v*e^3+140*SmallGap.ReducedLayers.high0_001_3 e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_2 e g v+12*SmallGap.ReducedLayers.high1_020_3 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_020_4 e g v*e^2+12*SmallGap.ReducedLayers.high1_020_5 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_020_6 e g v*e^4+3*SmallGap.ReducedLayers.high1_011_1 e
    g v+15*SmallGap.ReducedLayers.high1_011_2 e g v*e^1+30*SmallGap.ReducedLayers.high1_011_3 e g
    v*e^2+30*SmallGap.ReducedLayers.high1_011_4 e g v*e^3+15*SmallGap.ReducedLayers.high1_011_5 e
    g v*e^4+1*SmallGap.ReducedLayers.high1_002_0 e g v+6*SmallGap.ReducedLayers.high1_002_1 e g
    v*e^1+15*SmallGap.ReducedLayers.high1_002_2 e g v*e^2+20*SmallGap.ReducedLayers.high1_002_3 e
    g v*e^3+15*SmallGap.ReducedLayers.high1_002_4 e g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 307384 1)
    .e) (.add (.mul (.rational 2693404 1) .f) (.add (.mul (.rational 3311336 1) .g) (.mul
    (.rational 543312 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 14576910 1) .f) (.add (.mul
    (.rational 24371924 1) .g) (.mul (.rational 4224370 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 14646410 1) .g) (.mul (.rational 5010592 1) .v)) .g) (.mul (.rational 245280 1)
    (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 54394813 1) .f) (.add (.mul
    (.rational 114825436 1) .g) (.mul (.rational 20341392 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 92745681 1) .g) (.mul (.rational 32843541 1) .v)) .g) (.mul (.rational 1716659 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 35871446 1) .g) (.mul (.rational
    18412462 1) .v)) .g) (.mul (.rational 2028670 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 148085767 1) .f) (.add (.mul (.rational 377145764 1)
    .g) (.mul (.rational 67662128 1) .v))) .f) (.add (.mul (.add (.mul (.rational 382147650 1) .g)
    (.mul (.rational 138456641 1) .v)) .g) (.mul (.rational 7414927 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 196975788 1) .g) (.mul (.rational 105305151 1) .v)) .g)
    (.mul (.rational 11930759 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    54448215 1) .g) (.mul (.rational 36793335 1) .v)) .g) (.mul (.rational 6457389 1) (.pow .v
    2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    303684594 1) .f) (.add (.mul (.rational 904967915 1) .g) (.mul (.rational 164358574 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1101769112 1) .g) (.mul (.rational 408085453 1) .v))
    .g) (.mul (.rational 22062329 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    708497900 1) .g) (.mul (.rational 393460516 1) .v)) .g) (.mul (.rational 45102611 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 259198770 1) .g) (.mul (.rational
    186557696 1) .v)) .g) (.mul (.rational 33356778 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 53742045 1) .g) (.mul (.rational 45357326 1) .v)) .g) (.mul
    (.rational 10748019 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 477620929 1) .f) (.add (.mul (.rational
    1629143244 1) .g) (.mul (.rational 300554431 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    2314054348 1) .g) (.mul (.rational 879397999 1) .v)) .g) (.mul (.rational 47830001 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1780909104 1) .g) (.mul (.rational
    1030513054 1) .v)) .g) (.mul (.rational 119263912 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 808704597 1) .g) (.mul (.rational 620809521 1) .v)) .g) (.mul
    (.rational 113019085 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 220578632 1) .g) (.mul (.rational 205445244 1) .v)) .g) (.mul (.rational 50624269
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 34939478 1) .g)
    (.mul (.rational 36983392 1) .v)) .g) (.mul (.rational 10748322 1) (.pow .v 2))) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 580894808 1) .f) (.add (.mul (.rational 2230822805 1) .g) (.mul (.rational
    420141641 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3619018131 1) .g) (.mul (.rational
    1418516281 1) .v)) .g) (.mul (.rational 77834613 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3239733984 1) .g) (.mul (.rational 1963001381 1) .v)) .g) (.mul (.rational
    230499624 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1753740060 1) .g)
    (.mul (.rational 1441266267 1) .v)) .g) (.mul (.rational 269205859 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 590859267 1) .g) (.mul (.rational 608173449
    1) .v)) .g) (.mul (.rational 157455533 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 122447677 1) .g) (.mul (.rational 149672801 1) .v)) .g) (.mul
    (.rational 48323083 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 14732656 1) .g) (.mul (.rational 20855685 1) .v)) .g) (.mul (.rational 7428957 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 546500211 1) .f) (.add (.mul (.rational
    2332764774 1) .g) (.mul (.rational 450893524 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    4253298331 1) .g) (.mul (.rational 1728819031 1) .v)) .g) (.mul (.rational 96274091 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4338231568 1) .g) (.mul (.rational
    2766207929 1) .v)) .g) (.mul (.rational 332185007 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2722960732 1) .g) (.mul (.rational 2404409580 1) .v)) .g) (.mul
    (.rational 465450567 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1089273386 1) .g) (.mul (.rational 1240183974 1) .v)) .g) (.mul (.rational
    341103898 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    277540571 1) .g) (.mul (.rational 390342190 1) .v)) .g) (.mul (.rational 140652242 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 43475496 1) .g) (.mul
    (.rational 74492926 1) .v)) .g) (.mul (.rational 32904648 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3835027 1) .g) (.mul (.rational 8279799 1) .v)) .g)
    (.mul (.rational 4272256 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    394628556 1) .f) (.add (.mul (.rational 1853202619 1) .g) (.mul (.rational 369431550 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 3750216649 1) .g) (.mul (.rational 1588288597 1) .v))
    .g) (.mul (.rational 90391585 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4290494345 1) .g) (.mul (.rational 2890741022 1) .v)) .g) (.mul (.rational 357928553 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3060257366 1) .g) (.mul (.rational
    2910578804 1) .v)) .g) (.mul (.rational 589176878 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1414706552 1) .g) (.mul (.rational 1780518906 1) .v)) .g)
    (.mul (.rational 524183186 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 426265925 1) .g) (.mul (.rational 685771016 1) .v)) .g) (.mul (.rational 275337528
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 81733771 1) .g)
    (.mul (.rational 167161426 1) .v)) .g) (.mul (.rational 88222578 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9348168 1) .g) (.mul (.rational 25277722 1)
    .v)) .g) (.mul (.rational 17451686 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 552037 1) .g) (.mul (.rational 2231504 1) .v)) .g) (.mul (.rational 2139589
    1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 214909655 1) .f)
    (.add (.mul (.rational 1101024326 1) .g) (.mul (.rational 227307129 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 2448147656 1) .g) (.mul (.rational 1084388897 1) .v)) .g) (.mul
    (.rational 63472223 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3103307360
    1) .g) (.mul (.rational 2215514359 1) .v)) .g) (.mul (.rational 284743576 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2477158589 1) .g) (.mul (.rational
    2540112145 1) .v)) .g) (.mul (.rational 540966375 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1297522462 1) .g) (.mul (.rational 1801154884 1) .v)) .g)
    (.mul (.rational 569313180 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 450174130 1) .g) (.mul (.rational 822279086 1) .v)) .g) (.mul (.rational 365562416
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 101656356 1) .g)
    (.mul (.rational 244413539 1) .v)) .g) (.mul (.rational 149496232 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 14171940 1) .g) (.mul (.rational 46777630 1)
    .v)) .g) (.mul (.rational 39749860 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1081672 1) .g) (.mul (.rational 5521998 1) .v)) .g) (.mul (.rational 6907023
    1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 33006 1) .g) (.mul
    (.rational 357490 1) .v)) .g) (.mul (.rational 754814 1) (.pow .v 2))) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 85494555 1) .f) (.add (.mul (.rational
    474507663 1) .g) (.mul (.rational 101778469 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1149751652 1) .g) (.mul (.rational 534026206 1) .v)) .g) (.mul (.rational 32307252 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1598967680 1) .g) (.mul (.rational
    1211419706 1) .v)) .g) (.mul (.rational 162338400 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1411327424 1) .g) (.mul (.rational 1559662620 1) .v)) .g) (.mul
    (.rational 350529028 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 825134743 1) .g) (.mul (.rational 1258896677 1) .v)) .g) (.mul (.rational 426976576
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 323297327 1) .g)
    (.mul (.rational 664954367 1) .v)) .g) (.mul (.rational 324548443 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 83728306 1) .g) (.mul (.rational 233153603
    1) .v)) .g) (.mul (.rational 161325208 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 13684916 1) .g) (.mul (.rational 53873429 1) .v)) .g) (.mul (.rational
    53613261 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1267294
    1) .g) (.mul (.rational 7913248 1) .v)) .g) (.mul (.rational 11944755 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 49812 1) .g) (.mul (.rational 669400 1)
    .v)) .g) (.mul (.rational 1725034 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 24319 1) .v) .g) (.mul (.rational 142781 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 23471078 1) .f) (.add (.mul
    (.rational 140287046 1) .g) (.mul (.rational 31333886 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 367869825 1) .g) (.mul (.rational 179449968 1) .v)) .g) (.mul (.rational 11257282
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 556729456 1) .g) (.mul
    (.rational 447787373 1) .v)) .g) (.mul (.rational 62715980 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 538109947 1) .g) (.mul (.rational 639928225 1) .v)) .g)
    (.mul (.rational 151861596 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 347024118 1) .g) (.mul (.rational 579389197 1) .v)) .g) (.mul (.rational 210257218
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 151283703 1) .g)
    (.mul (.rational 347436040 1) .v)) .g) (.mul (.rational 184502995 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 44069012 1) .g) (.mul (.rational 140180570
    1) .v)) .g) (.mul (.rational 107677349 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8220279 1) .g) (.mul (.rational 37831433 1) .v)) .g) (.mul (.rational
    42704341 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 887200 1)
    .g) (.mul (.rational 6603311 1) .v)) .g) (.mul (.rational 11513928 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 42000 1) .g) (.mul (.rational 680142 1) .v))
    .g) (.mul (.rational 2043647 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 31471 1) .v) .g) (.mul (.rational 215341 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 9955 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 3979098 1) .f) (.add (.mul (.rational 25481118 1) .g) (.mul
    (.rational 5935062 1) .v))) .f) (.add (.mul (.add (.mul (.rational 71886411 1) .g) (.mul
    (.rational 36853686 1) .v)) .g) (.mul (.rational 2401518 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 117580205 1) .g) (.mul (.rational 100350345 1) .v)) .g) (.mul
    (.rational 14699706 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    123452168 1) .g) (.mul (.rational 157631248 1) .v)) .g) (.mul (.rational 39455862 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 86974113 1) .g) (.mul
    (.rational 158156174 1) .v)) .g) (.mul (.rational 61165902 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 41691135 1) .g) (.mul (.rational 106043929 1) .v))
    .g) (.mul (.rational 60759893 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13456955 1) .g) (.mul (.rational 48296738 1) .v)) .g) (.mul (.rational 40591897 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2808300 1) .g) (.mul
    (.rational 14855590 1) .v)) .g) (.mul (.rational 18615856 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 343489 1) .g) (.mul (.rational 2984476 1) .v)) .g)
    (.mul (.rational 5851368 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18768 1) .g) (.mul (.rational 358003 1) .v)) .g) (.mul (.rational 1220455 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 19661 1) .v) .g) (.mul (.rational
    153511 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 8800 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 314274 1)
    .f) (.add (.mul (.rational 2146530 1) .g) (.mul (.rational 521772 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 6481708 1) .g) (.mul (.rational 3492240 1) .v)) .g) (.mul (.rational
    236532 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 11390808 1) .g) (.mul
    (.rational 10304096 1) .v)) .g) (.mul (.rational 1577982 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 12902776 1) .g) (.mul (.rational 17641806 1) .v)) .g) (.mul
    (.rational 4648484 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9850802 1) .g) (.mul (.rational 19415944 1) .v)) .g) (.mul (.rational 7968910 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 5141966 1) .g) (.mul (.rational
    14375976 1) .v)) .g) (.mul (.rational 8823055 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1817092 1) .g) (.mul (.rational 7278602 1) .v)) .g) (.mul
    (.rational 6620016 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    417754 1) .g) (.mul (.rational 2504174 1) .v)) .g) (.mul (.rational 3431873 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 56720 1) .g) (.mul (.rational
    565648 1) .v)) .g) (.mul (.rational 1225038 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3474 1) .g) (.mul (.rational 76652 1) .v)) .g) (.mul (.rational
    291181 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 4786 1) .v) .g)
    (.mul (.rational 41974 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 2795 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0326

namespace FullHigh0327
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  38*SmallGap.PolarCoefficientsHigh2.c230 e f g v*((e+f)*(e+f+g))^3+
    9*SmallGap.PolarCoefficientsHigh2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    25*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    18*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsHigh1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    16*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsHigh1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_010_1 e g v+36*SmallGap.ReducedLayers.high0_010_2 e
    g v*e^1+90*SmallGap.ReducedLayers.high0_010_3 e g v*e^2+120*SmallGap.ReducedLayers.high0_010_4
    e g v*e^3+4*SmallGap.ReducedLayers.high0_001_0 e g v+28*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^1+84*SmallGap.ReducedLayers.high0_001_2 e g v*e^2+140*SmallGap.ReducedLayers.high0_001_3 e
    g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_3 e g v+12*SmallGap.ReducedLayers.high1_020_4 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_020_5 e g v*e^2+12*SmallGap.ReducedLayers.high1_020_6 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_011_2 e g v+15*SmallGap.ReducedLayers.high1_011_3 e g
    v*e^1+30*SmallGap.ReducedLayers.high1_011_4 e g v*e^2+30*SmallGap.ReducedLayers.high1_011_5 e
    g v*e^3+1*SmallGap.ReducedLayers.high1_002_1 e g v+6*SmallGap.ReducedLayers.high1_002_2 e g
    v*e^1+15*SmallGap.ReducedLayers.high1_002_3 e g v*e^2+20*SmallGap.ReducedLayers.high1_002_4 e
    g v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 179840 1) .e) (.add
    (.mul (.rational 1548240 1) .f) (.add (.mul (.rational 1896492 1) .g) (.mul (.rational 313608
    1) .v)))) .e) (.add (.mul (.add (.mul (.rational 8188753 1) .f) (.add (.mul (.rational
    13624610 1) .g) (.mul (.rational 2364791 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    8164597 1) .g) (.mul (.rational 2748842 1) .v)) .g) (.mul (.rational 140880 1) (.pow .v 2)))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.rational 29652477 1) .f) (.add (.mul (.rational
    62212519 1) .g) (.mul (.rational 10987023 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    50032587 1) .g) (.mul (.rational 17327597 1) .v)) .g) (.mul (.rational 950605 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 19331101 1) .g) (.mul (.rational 9398269 1)
    .v)) .g) (.mul (.rational 1094498 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 77647520 1) .f) (.add (.mul (.rational 196288854 1) .g) (.mul
    (.rational 35031698 1) .v))) .f) (.add (.mul (.add (.mul (.rational 197735880 1) .g) (.mul
    (.rational 69872985 1) .v)) .g) (.mul (.rational 3933707 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 101618546 1) .g) (.mul (.rational 51321005 1) .v)) .g) (.mul
    (.rational 6137506 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 28129972
    1) .g) (.mul (.rational 17047223 1) .v)) .g) (.mul (.rational 3160083 1) (.pow .v 2))) (.pow
    .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 151500073
    1) .f) (.add (.mul (.rational 447530869 1) .g) (.mul (.rational 80910624 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 540859425 1) .g) (.mul (.rational 195622200 1) .v)) .g) (.mul
    (.rational 11133938 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 346103871
    1) .g) (.mul (.rational 182107097 1) .v)) .g) (.mul (.rational 22021731 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 126485998 1) .g) (.mul (.rational 82217343 1)
    .v)) .g) (.mul (.rational 15471750 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 26336056 1) .g) (.mul (.rational 18580643 1) .v)) .g) (.mul (.rational
    4539227 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 223661024 1) .f) (.add (.mul (.rational 755259034 1) .g)
    (.mul (.rational 139224957 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1063270673 1) .g)
    (.mul (.rational 396682006 1) .v)) .g) (.mul (.rational 22782966 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 812746312 1) .g) (.mul (.rational 449352276 1) .v)) .g)
    (.mul (.rational 55000582 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    367773034 1) .g) (.mul (.rational 258722259 1) .v)) .g) (.mul (.rational 49702373 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 100423010 1) .g) (.mul
    (.rational 80337374 1) .v)) .g) (.mul (.rational 20568156 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 16013157 1) .g) (.mul (.rational 13151083 1) .v)) .g)
    (.mul (.rational 3708963 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 251044697 1) .f) (.add (.mul
    (.rational 953211569 1) .g) (.mul (.rational 180588251 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1530312360 1) .g) (.mul (.rational 594210119 1) .v)) .g) (.mul (.rational 34638827
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1358044452 1) .g) (.mul
    (.rational 796615042 1) .v)) .g) (.mul (.rational 99657220 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 730800176 1) .g) (.mul (.rational 561779274 1) .v)) .g)
    (.mul (.rational 111907922 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 245742106 1) .g) (.mul (.rational 224832768 1) .v)) .g) (.mul (.rational 61773893
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 51079543 1) .g)
    (.mul (.rational 51509402 1) .v)) .g) (.mul (.rational 17230925 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 6194029 1) .g) (.mul (.rational 6503071 1) .v))
    .g) (.mul (.rational 2192321 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 213235204 1) .f)
    (.add (.mul (.rational 898810850 1) .g) (.mul (.rational 176364448 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1619308069 1) .g) (.mul (.rational 659874547 1) .v)) .g) (.mul
    (.rational 39410143 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1634233276
    1) .g) (.mul (.rational 1025589438 1) .v)) .g) (.mul (.rational 132806058 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1017290212 1) .g) (.mul (.rational 860715542
    1) .v)) .g) (.mul (.rational 180764140 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 404971884 1) .g) (.mul (.rational 425347606 1) .v)) .g) (.mul
    (.rational 127753340 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 103130717 1) .g) (.mul (.rational 127094906 1) .v)) .g) (.mul (.rational 50355480
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 16218038 1) .g)
    (.mul (.rational 22827013 1) .v)) .g) (.mul (.rational 11198168 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1439442 1) .g) (.mul (.rational 2379605 1) .v))
    .g) (.mul (.rational 1410415 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    134969215 1) .f) (.add (.mul (.rational 625139301 1) .g) (.mul (.rational 127892502 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 1248171443 1) .g) (.mul (.rational 537364826 1) .v))
    .g) (.mul (.rational 33197420 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1410338849 1) .g) (.mul (.rational 952570934 1) .v)) .g) (.mul (.rational 129132743 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 995357602 1) .g) (.mul (.rational
    930481138 1) .v)) .g) (.mul (.rational 208531785 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 456610528 1) .g) (.mul (.rational 549963618 1) .v)) .g)
    (.mul (.rational 182054990 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 137053692 1) .g) (.mul (.rational 204036862 1) .v)) .g) (.mul (.rational 94306888
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 26287664 1) .g)
    (.mul (.rational 47957361 1) .v)) .g) (.mul (.rational 30315832 1) (.pow .v 2))) (.pow .g 5)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 3015656 1) .g) (.mul (.rational 7063407 1) .v))
    .g) (.mul (.rational 6269539 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 178018 1) .g) (.mul (.rational 620637 1) .v)) .g) (.mul (.rational 855853 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 61764963 1) .f) (.add (.mul
    (.rational 311739332 1) .g) (.mul (.rational 66835530 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 682929754 1) .g) (.mul (.rational 312073154 1) .v)) .g) (.mul (.rational 20096160
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 853471340 1) .g) (.mul
    (.rational 622520122 1) .v)) .g) (.mul (.rational 89033070 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 672614238 1) .g) (.mul (.rational 695181896 1) .v)) .g)
    (.mul (.rational 167270824 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 348677710 1) .g) (.mul (.rational 479330359 1) .v)) .g) (.mul (.rational 174816848
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 120137983 1) .g)
    (.mul (.rational 212898768 1) .v)) .g) (.mul (.rational 112593474 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 27051408 1) .g) (.mul (.rational 61911238 1)
    .v)) .g) (.mul (.rational 47132100 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3773296 1) .g) (.mul (.rational 11760057 1) .v)) .g) (.mul (.rational
    13269675 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 288092 1)
    .g) (.mul (.rational 1411497 1) .v)) .g) (.mul (.rational 2538388 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8688 1) .g) (.mul (.rational 95279 1) .v))
    .g) (.mul (.rational 310565 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 19330474 1) .f) (.add (.mul (.rational 105578724 1) .g) (.mul
    (.rational 23805708 1) .v))) .f) (.add (.mul (.add (.mul (.rational 251701835 1) .g) (.mul
    (.rational 122417670 1) .v)) .g) (.mul (.rational 8258114 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 344516761 1) .g) (.mul (.rational 271685804 1) .v)) .g) (.mul
    (.rational 41154912 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    299599524 1) .g) (.mul (.rational 341749854 1) .v)) .g) (.mul (.rational 88382024 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 172922726 1) .g) (.mul
    (.rational 269458323 1) .v)) .g) (.mul (.rational 107699464 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 67095959 1) .g) (.mul (.rational 139368781 1) .v))
    .g) (.mul (.rational 82793119 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 17278517 1) .g) (.mul (.rational 48205718 1) .v)) .g) (.mul (.rational 42392436 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2820192 1) .g) (.mul
    (.rational 11155244 1) .v)) .g) (.mul (.rational 14895622 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 261528 1) .g) (.mul (.rational 1679595 1) .v)) .g)
    (.mul (.rational 3605723 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10272 1) .g) (.mul (.rational 149403 1) .v)) .g) (.mul (.rational 573650 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 5804 1) .v) .g) (.mul (.rational
    51797 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 3706344 1) .f) (.add (.mul (.rational 21776832 1) .g) (.mul (.rational
    5175216 1) .v))) .f) (.add (.mul (.add (.mul (.rational 56111571 1) .g) (.mul (.rational
    29079666 1) .v)) .g) (.mul (.rational 2060064 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 83443970 1) .g) (.mul (.rational 71105072 1) .v)) .g) (.mul (.rational
    11418336 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 79308656 1) .g)
    (.mul (.rational 99506596 1) .v)) .g) (.mul (.rational 27602880 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 50376560 1) .g) (.mul (.rational 88281752 1) .v))
    .g) (.mul (.rational 38390994 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 21693351 1) .g) (.mul (.rational 52045767 1) .v)) .g) (.mul (.rational 34192761 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6268246 1) .g) (.mul
    (.rational 20808172 1) .v)) .g) (.mul (.rational 20574438 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1165790 1) .g) (.mul (.rational 5646518 1) .v)) .g)
    (.mul (.rational 8589500 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 126112 1) .g) (.mul (.rational 1012756 1) .v)) .g) (.mul (.rational 2491194 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 6008 1) .g) (.mul
    (.rational 109893 1) .v)) .g) (.mul (.rational 482541 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 5472 1) .v) .g) (.mul (.rational 55574 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 2790 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 328752 1) .f) (.add (.mul (.rational
    2067318 1) .g) (.mul (.rational 518364 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5723642
    1) .g) (.mul (.rational 3160656 1) .v)) .g) (.mul (.rational 235296 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9185470 1) .g) (.mul (.rational 8443238 1) .v)) .g)
    (.mul (.rational 1435968 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    9466496 1) .g) (.mul (.rational 13008404 1) .v)) .g) (.mul (.rational 3857086 1) (.pow .v 2)))
    (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6555400 1) .g) (.mul (.rational
    12815804 1) .v)) .g) (.mul (.rational 6020064 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3096954 1) .g) (.mul (.rational 8468250 1) .v)) .g) (.mul
    (.rational 6077676 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational
    989414 1) .g) (.mul (.rational 3830398 1) .v)) .g) (.mul (.rational 4182865 1) (.pow .v 2)))
    (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 205580 1) .g) (.mul (.rational
    1186232 1) .v)) .g) (.mul (.rational 2010989 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 25214 1) .g) (.mul (.rational 244804 1) .v)) .g) (.mul (.rational
    675258 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1392 1) .g)
    (.mul (.rational 30890 1) .v)) .g) (.mul (.rational 152814 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 1824 1) .v) .g) (.mul (.rational 21029 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 1323 1) (.pow .v 2)) (.pow .g 10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0327

namespace FullHigh0328
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  25*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    6*SmallGap.PolarCoefficientsHigh2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    16*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    6*SmallGap.PolarCoefficientsHigh2.c410 e f g v*e*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_010_2 e g v+36*SmallGap.ReducedLayers.high0_010_3 e
    g v*e^1+90*SmallGap.ReducedLayers.high0_010_4 e g v*e^2+4*SmallGap.ReducedLayers.high0_001_1 e
    g v+28*SmallGap.ReducedLayers.high0_001_2 e g v*e^1+84*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_4 e g v+12*SmallGap.ReducedLayers.high1_020_5 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_020_6 e g v*e^2+3*SmallGap.ReducedLayers.high1_011_3 e g
    v+15*SmallGap.ReducedLayers.high1_011_4 e g v*e^1+30*SmallGap.ReducedLayers.high1_011_5 e g
    v*e^2+1*SmallGap.ReducedLayers.high1_002_2 e g v+6*SmallGap.ReducedLayers.high1_002_3 e g
    v*e^1+15*SmallGap.ReducedLayers.high1_002_4 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 69136 1) .e) (.add (.mul (.rational
    586166 1) .f) (.add (.mul (.rational 715708 1) .g) (.mul (.rational 118848 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 3035100 1) .f) (.add (.mul (.rational 5026900 1) .g) (.mul
    (.rational 870382 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3006688 1) .g) (.mul
    (.rational 989560 1) .v)) .g) (.mul (.rational 53160 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 10672718 1) .f) (.add (.mul (.rational 22257124 1) .g) (.mul
    (.rational 3903742 1) .v))) .f) (.add (.mul (.add (.mul (.rational 17836454 1) .g) (.mul
    (.rational 5995288 1) .v)) .g) (.mul (.rational 346559 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6896484 1) .g) (.mul (.rational 3127498 1) .v)) .g) (.mul (.rational
    388030 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    26859116 1) .f) (.add (.mul (.rational 67380656 1) .g) (.mul (.rational 11924220 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 67518246 1) .g) (.mul (.rational 23091376 1) .v)) .g) (.mul
    (.rational 1375383 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 34649388 1)
    .g) (.mul (.rational 16262026 1) .v)) .g) (.mul (.rational 2074635 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9633266 1) .g) (.mul (.rational 5054976 1) .v)) .g)
    (.mul (.rational 1008077 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 49706344 1) .f) (.add (.mul (.rational 145462170 1)
    .g) (.mul (.rational 26136604 1) .v))) .f) (.add (.mul (.add (.mul (.rational 174533168 1) .g)
    (.mul (.rational 61261644 1) .v)) .g) (.mul (.rational 3704338 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 111276344 1) .g) (.mul (.rational 54649406 1) .v)) .g)
    (.mul (.rational 7065252 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    40729540 1) .g) (.mul (.rational 23135400 1) .v)) .g) (.mul (.rational 4677473 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 8551734 1) .g) (.mul
    (.rational 4679638 1) .v)) .g) (.mul (.rational 1212514 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 68440354 1)
    .f) (.add (.mul (.rational 228540932 1) .g) (.mul (.rational 42146982 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 318780602 1) .g) (.mul (.rational 116411060 1) .v)) .g) (.mul
    (.rational 7152530 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 242189008 1)
    .g) (.mul (.rational 126580412 1) .v)) .g) (.mul (.rational 16682344 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 109436864 1) .g) (.mul (.rational 68761004 1) .v))
    .g) (.mul (.rational 14312493 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 30025780 1) .g) (.mul (.rational 19476304 1) .v)) .g) (.mul (.rational 5391029 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 4844752 1) .g) (.mul
    (.rational 2689776 1) .v)) .g) (.mul (.rational 759149 1) (.pow .v 2))) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    70084794 1) .f) (.add (.mul (.rational 262663824 1) .g) (.mul (.rational 50314666 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 416900200 1) .g) (.mul (.rational 160649364 1) .v)) .g)
    (.mul (.rational 10136643 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    366769854 1) .g) (.mul (.rational 207391888 1) .v)) .g) (.mul (.rational 28345314 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 196466500 1) .g) (.mul (.rational
    139122616 1) .v)) .g) (.mul (.rational 30655490 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 66125542 1) .g) (.mul (.rational 51866628 1) .v)) .g) (.mul
    (.rational 16027268 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13844062 1) .g) (.mul (.rational 10643940 1) .v)) .g) (.mul (.rational 4085462 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1699924 1) .g) (.mul
    (.rational 1105602 1) .v)) .g) (.mul (.rational 428092 1) (.pow .v 2))) (.pow .g 5)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 52709332 1) .f) (.add (.mul (.rational 218881238 1) .g) (.mul (.rational
    44024064 1) .v))) .f) (.add (.mul (.add (.mul (.rational 388977058 1) .g) (.mul (.rational
    160078724 1) .v)) .g) (.mul (.rational 10520575 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 388095364 1) .g) (.mul (.rational 240447220 1) .v)) .g) (.mul (.rational
    34735533 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 239667106 1) .g)
    (.mul (.rational 193503560 1) .v)) .g) (.mul (.rational 46259694 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 95100824 1) .g) (.mul (.rational 90687644 1)
    .v)) .g) (.mul (.rational 32025360 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 24271630 1) .g) (.mul (.rational 25307132 1) .v)) .g) (.mul (.rational
    12495358 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3841842
    1) .g) (.mul (.rational 4161642 1) .v)) .g) (.mul (.rational 2864288 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 342878 1) .g) (.mul (.rational 387880 1)
    .v)) .g) (.mul (.rational 414521 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    28300062 1) .f) (.add (.mul (.rational 128885176 1) .g) (.mul (.rational 27449456 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 253236540 1) .g) (.mul (.rational 112261588 1) .v)) .g)
    (.mul (.rational 7781028 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    282057152 1) .g) (.mul (.rational 192948556 1) .v)) .g) (.mul (.rational 29883684 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 196772064 1) .g) (.mul (.rational
    181910664 1) .v)) .g) (.mul (.rational 47826968 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 89576994 1) .g) (.mul (.rational 103285860 1) .v)) .g) (.mul
    (.rational 41784772 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 26801584 1) .g) (.mul (.rational 36698936 1) .v)) .g) (.mul (.rational 22144854 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 5141516 1) .g) (.mul
    (.rational 8287510 1) .v)) .g) (.mul (.rational 7606544 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 588716 1) .g) (.mul (.rational 1191384 1) .v)) .g)
    (.mul (.rational 1787267 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34022 1) .g) (.mul (.rational 104762 1) .v)) .g) (.mul (.rational 286666 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10274142 1) .f) (.add (.mul
    (.rational 50889290 1) .g) (.mul (.rational 11541640 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 109440106 1) .g) (.mul (.rational 52523612 1) .v)) .g) (.mul (.rational 3870456 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 134407056 1) .g) (.mul (.rational
    101833300 1) .v)) .g) (.mul (.rational 17031300 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 104307344 1) .g) (.mul (.rational 110251064 1) .v)) .g) (.mul
    (.rational 31977746 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 53407460 1) .g) (.mul (.rational 73609962 1) .v)) .g) (.mul (.rational 33807272 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 18240088 1) .g) (.mul
    (.rational 31735528 1) .v)) .g) (.mul (.rational 22509414 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4081036 1) .g) (.mul (.rational 9049576 1) .v)) .g)
    (.mul (.rational 10068944 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 564200 1) .g) (.mul (.rational 1721868 1) .v)) .g) (.mul (.rational 3141441 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 41970 1) .g) (.mul
    (.rational 212498 1) .v)) .g) (.mul (.rational 676487 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1152 1) .g) (.mul (.rational 14832 1) .v)) .g) (.mul
    (.rational 91067 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 2261304 1) .f) (.add (.mul (.rational 12097242 1) .g) (.mul (.rational 2930796 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 28241220 1) .g) (.mul (.rational 14701968 1) .v))
    .g) (.mul (.rational 1155780 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    37867670 1) .g) (.mul (.rational 31761100 1) .v)) .g) (.mul (.rational 5743224 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 32299548 1) .g) (.mul (.rational
    38832860 1) .v)) .g) (.mul (.rational 12381360 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 18324218 1) .g) (.mul (.rational 29771406 1) .v)) .g) (.mul
    (.rational 15323556 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 7006974 1) .g) (.mul (.rational 15037044 1) .v)) .g) (.mul (.rational 12185745 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1781424 1) .g) (.mul
    (.rational 5136900 1) .v)) .g) (.mul (.rational 6615138 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 286364 1) .g) (.mul (.rational 1197652 1) .v)) .g)
    (.mul (.rational 2525074 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25798 1) .g) (.mul (.rational 185834 1) .v)) .g) (.mul (.rational 671328 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 942 1) .g) (.mul (.rational
    17188 1) .v)) .g) (.mul (.rational 115911 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 676 1) .v) .g) (.mul (.rational 11002 1) (.pow .v 2))) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 227988 1) .f) (.add (.mul
    (.rational 1309572 1) .g) (.mul (.rational 339264 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 3296064 1) .g) (.mul (.rational 1860516 1) .v)) .g) (.mul (.rational 156024 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4786420 1) .g) (.mul (.rational
    4431512 1) .v)) .g) (.mul (.rational 864180 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4444108 1) .g) (.mul (.rational 6034360 1) .v)) .g) (.mul (.rational 2100984
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2761040 1) .g)
    (.mul (.rational 5213356 1) .v)) .g) (.mul (.rational 2969088 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1165026 1) .g) (.mul (.rational 3006448 1) .v))
    .g) (.mul (.rational 2727583 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 330294 1) .g) (.mul (.rational 1188284 1) .v)) .g) (.mul (.rational 1725351 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 60170 1) .g) (.mul
    (.rational 324472 1) .v)) .g) (.mul (.rational 771530 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6314 1) .g) (.mul (.rational 59780 1) .v)) .g) (.mul
    (.rational 242308 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    284 1) .g) (.mul (.rational 6748 1) .v)) .g) (.mul (.rational 50709 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 348 1) .v) .g) (.mul (.rational 6233 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 330 1) (.pow .v 2)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0328

namespace FullHigh0329
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  16*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_010_3 e g v+36*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^1+4*SmallGap.ReducedLayers.high0_001_2 e g v+28*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_5 e g v+12*SmallGap.ReducedLayers.high1_020_6 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_011_4 e g v+15*SmallGap.ReducedLayers.high1_011_5 e g
    v*e^1+1*SmallGap.ReducedLayers.high1_002_3 e g v+6*SmallGap.ReducedLayers.high1_002_4 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 15768 1) .e) (.add (.mul (.rational 131958 1)
    .f) (.add (.mul (.rational 160674 1) .g) (.mul (.rational 26700 1) .v)))) .e) (.add (.mul
    (.add (.mul (.rational 670014 1) .f) (.add (.mul (.rational 1105042 1) .g) (.mul (.rational
    190152 1) .v))) .f) (.add (.mul (.add (.mul (.rational 660384 1) .g) (.mul (.rational 210984
    1) .v)) .g) (.mul (.rational 11900 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 2289384 1) .f) (.add (.mul (.rational 4746118 1) .g) (.mul (.rational 823572 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 3793708 1) .g) (.mul (.rational 1227308 1) .v))
    .g) (.mul (.rational 75114 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1471046 1) .g) (.mul (.rational 611108 1) .v)) .g) (.mul (.rational 81636 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 5531526 1) .f) (.add
    (.mul (.rational 13767736 1) .g) (.mul (.rational 2408508 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 13733356 1) .g) (.mul (.rational 4507200 1) .v)) .g) (.mul (.rational 286272 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7052832 1) .g) (.mul (.rational
    3015192 1) .v)) .g) (.mul (.rational 416236 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1976886 1) .g) (.mul (.rational 855928 1) .v)) .g) (.mul (.rational 189152 1)
    (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 9674436 1) .f) (.add (.mul (.rational 28027462 1) .g) (.mul (.rational 5001240 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 33401120 1) .g) (.mul (.rational 11306060 1) .v))
    .g) (.mul (.rational 734548 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    21259164 1) .g) (.mul (.rational 9574232 1) .v)) .g) (.mul (.rational 1347428 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7824064 1) .g) (.mul (.rational 3715344 1)
    .v)) .g) (.mul (.rational 834416 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1666762 1) .g) (.mul (.rational 623456 1) .v)) .g) (.mul (.rational 183628 1)
    (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 12326580 1) .f) (.add (.mul (.rational 40649916 1) .g) (.mul (.rational
    7526712 1) .v))) .f) (.add (.mul (.add (.mul (.rational 56173302 1) .g) (.mul (.rational
    20054136 1) .v)) .g) (.mul (.rational 1340352 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 42486912 1) .g) (.mul (.rational 20768108 1) .v)) .g) (.mul (.rational
    3021304 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 19245028 1) .g)
    (.mul (.rational 10470560 1) .v)) .g) (.mul (.rational 2463784 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 5339512 1) .g) (.mul (.rational 2582784 1) .v))
    .g) (.mul (.rational 842924 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 879606 1) .g) (.mul (.rational 244976 1) .v)) .g) (.mul (.rational 84912 1) (.pow
    .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 11346192 1) .f) (.add (.mul (.rational 41882748 1) .g) (.mul
    (.rational 8190816 1) .v))) .f) (.add (.mul (.add (.mul (.rational 65669208 1) .g) (.mul
    (.rational 25267320 1) .v)) .g) (.mul (.rational 1769536 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 57334038 1) .g) (.mul (.rational 31236752 1) .v)) .g) (.mul
    (.rational 4833408 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 30677720
    1) .g) (.mul (.rational 19754332 1) .v)) .g) (.mul (.rational 5095956 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10400012 1) .g) (.mul (.rational 6729136
    1) .v)) .g) (.mul (.rational 2599028 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2213128 1) .g) (.mul (.rational 1168688 1) .v)) .g) (.mul (.rational
    657900 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 278306 1)
    .g) (.mul (.rational 76168 1) .v)) .g) (.mul (.rational 77988 1) (.pow .v 2))) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 7353216 1) .f) (.add (.mul (.rational 29988000 1) .g) (.mul (.rational
    6287184 1) .v))) .f) (.add (.mul (.add (.mul (.rational 52475400 1) .g) (.mul (.rational
    22129920 1) .v)) .g) (.mul (.rational 1658352 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 51769960 1) .g) (.mul (.rational 32007200 1) .v)) .g) (.mul (.rational
    5412888 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 31802034 1) .g)
    (.mul (.rational 24619168 1) .v)) .g) (.mul (.rational 7190256 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 12649528 1) .g) (.mul (.rational 10914308 1) .v))
    .g) (.mul (.rational 5074800 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3263020 1) .g) (.mul (.rational 2843040 1) .v)) .g) (.mul (.rational 2125072 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 525160 1) .g) (.mul
    (.rational 430152 1) .v)) .g) (.mul (.rational 578476 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 47530 1) .g) (.mul (.rational 36200 1) .v)) .g) (.mul
    (.rational 110672 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3183264 1)
    .f) (.add (.mul (.rational 14193216 1) .g) (.mul (.rational 3223440 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 27361008 1) .g) (.mul (.rational 12779856 1) .v)) .g) (.mul (.rational
    1040808 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 30007832 1) .g) (.mul
    (.rational 21235744 1) .v)) .g) (.mul (.rational 3989352 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 20722452 1) .g) (.mul (.rational 19314800 1) .v)) .g) (.mul
    (.rational 6461400 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    9401362 1) .g) (.mul (.rational 10585400 1) .v)) .g) (.mul (.rational 5864544 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2822912 1) .g) (.mul (.rational
    3661652 1) .v)) .g) (.mul (.rational 3374244 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 545484 1) .g) (.mul (.rational 826344 1) .v)) .g) (.mul
    (.rational 1330916 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    62434 1) .g) (.mul (.rational 124480 1) .v)) .g) (.mul (.rational 370984 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3436 1) .g) (.mul (.rational 11924
    1) .v)) .g) (.mul (.rational 68548 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 826200 1) .f) (.add (.mul (.rational 3993192 1) .g) (.mul (.rational 987984
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 8392104 1) .g) (.mul (.rational 4361040 1)
    .v)) .g) (.mul (.rational 388800 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10100520 1) .g) (.mul (.rational 8190432 1) .v)) .g) (.mul (.rational 1717200 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7715100 1) .g) (.mul
    (.rational 8594160 1) .v)) .g) (.mul (.rational 3284448 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3909620 1) .g) (.mul (.rational 5588440 1) .v)) .g)
    (.mul (.rational 3623112 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1328394 1) .g) (.mul (.rational 2379800 1) .v)) .g) (.mul (.rational 2602992 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 295912 1) .g) (.mul
    (.rational 689444 1) .v)) .g) (.mul (.rational 1301096 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 40182 1) .g) (.mul (.rational 138256 1) .v)) .g)
    (.mul (.rational 461272 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2766 1) .g) (.mul (.rational 18264 1) .v)) .g) (.mul (.rational 111164 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 50 1) .g) (.mul (.rational
    1288 1) .v)) .g) (.mul (.rational 16164 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 97200 1) .f) (.add (.mul (.rational 505656 1) .g) (.mul
    (.rational 136512 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1148616 1) .g) (.mul
    (.rational 663984 1) .v)) .g) (.mul (.rational 64800 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1501320 1) .g) (.mul (.rational 1389408 1) .v)) .g) (.mul (.rational
    324000 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1252200 1) .g) (.mul
    (.rational 1647360 1) .v)) .g) (.mul (.rational 712392 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 697444 1) .g) (.mul (.rational 1231568 1) .v)) .g)
    (.mul (.rational 917448 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 262632 1) .g) (.mul (.rational 614632 1) .v)) .g) (.mul (.rational 778664 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 65578 1) .g) (.mul
    (.rational 212144 1) .v)) .g) (.mul (.rational 462048 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 10152 1) .g) (.mul (.rational 51124 1) .v)) .g) (.mul
    (.rational 194852 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    822 1) .g) (.mul (.rational 8172 1) .v)) .g) (.mul (.rational 56628 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 20 1) .g) (.mul (.rational 724 1) .v)) .g)
    (.mul (.rational 10386 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    20 1) .v) .g) (.mul (.rational 1000 1) (.pow .v 2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0329

namespace FullHigh03210
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  10*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(6*SmallGap.ReducedLayers.high0_010_4 e g v+4*SmallGap.ReducedLayers.high0_001_3 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_6 e g v+3*SmallGap.ReducedLayers.high1_011_5 e g
    v+1*SmallGap.ReducedLayers.high1_002_4 e g v)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 1620 1) .e) (.add (.mul (.rational 13410 1) .f) (.add (.mul
    (.rational 16290 1) .g) (.mul (.rational 2700 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    66870 1) .f) (.add (.mul (.rational 109860 1) .g) (.mul (.rational 18720 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 65670 1) .g) (.mul (.rational 20220 1) .v)) .g) (.mul (.rational
    1200 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 222120 1) .f) (.add
    (.mul (.rational 457800 1) .g) (.mul (.rational 78300 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 365400 1) .g) (.mul (.rational 112740 1) .v)) .g) (.mul (.rational 7350 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 142440 1) .g) (.mul (.rational 53040 1)
    .v)) .g) (.mul (.rational 7740 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 514530 1) .f) (.add (.mul (.rational 1270200 1) .g) (.mul (.rational
    219060 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1262520 1) .g) (.mul (.rational 393900
    1) .v)) .g) (.mul (.rational 26940 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 650580 1) .g) (.mul (.rational 247140 1) .v)) .g) (.mul (.rational 37650 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 184710 1) .g) (.mul (.rational 61440
    1) .v)) .g) (.mul (.rational 15840 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 846540 1) .f) (.add (.mul (.rational 2425680 1)
    .g) (.mul (.rational 430200 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2873160 1) .g)
    (.mul (.rational 932400 1) .v)) .g) (.mul (.rational 66000 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1830780 1) .g) (.mul (.rational 740580 1) .v)) .g) (.mul
    (.rational 116280 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 681180 1)
    .g) (.mul (.rational 254100 1) .v)) .g) (.mul (.rational 67050 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 148440 1) .g) (.mul (.rational 28920 1) .v)) .g)
    (.mul (.rational 11940 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 987840 1) .f) (.add (.mul (.rational 3211380 1)
    .g) (.mul (.rational 601560 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4397310 1) .g)
    (.mul (.rational 1538280 1) .v)) .g) (.mul (.rational 114240 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3320640 1) .g) (.mul (.rational 1505100 1) .v)) .g) (.mul
    (.rational 249960 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1517160
    1) .g) (.mul (.rational 690660 1) .v)) .g) (.mul (.rational 196140 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 429900 1) .g) (.mul (.rational 136860 1)
    .v)) .g) (.mul (.rational 63150 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 73290 1) .g) (.mul (.rational 1800 1) .v)) .g) (.mul (.rational 5280 1) (.pow
    .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 800280 1) .f) (.add (.mul (.rational 2900700 1) .g) (.mul
    (.rational 589320 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4490100 1) .g) (.mul
    (.rational 1749600 1) .v)) .g) (.mul (.rational 140580 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3900960 1) .g) (.mul (.rational 2064960 1) .v)) .g) (.mul (.rational
    379440 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2099400 1) .g) (.mul
    (.rational 1228080 1) .v)) .g) (.mul (.rational 400920 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 725340 1) .g) (.mul (.rational 380460 1) .v)) .g)
    (.mul (.rational 213120 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 159540 1) .g) (.mul (.rational 54060 1) .v)) .g) (.mul (.rational 63150 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 21000 1) .g) (.mul (.rational
    720 1) .v)) .g) (.mul (.rational 11940 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    428220 1) .f) (.add (.mul (.rational 1706760 1) .g) (.mul (.rational 384120 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 2935440 1) .g) (.mul (.rational 1304280 1) .v)) .g) (.mul
    (.rational 117000 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2869980 1)
    .g) (.mul (.rational 1817400 1) .v)) .g) (.mul (.rational 383580 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1766850 1) .g) (.mul (.rational 1347840 1) .v)) .g)
    (.mul (.rational 525120 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 714120 1) .g) (.mul (.rational 581220 1) .v)) .g) (.mul (.rational 400920 1) (.pow
    .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 189960 1) .g) (.mul
    (.rational 152460 1) .v)) .g) (.mul (.rational 196140 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 31920 1) .g) (.mul (.rational 25620 1) .v)) .g) (.mul
    (.rational 67050 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    3030 1) .g) (.mul (.rational 2880 1) .v)) .g) (.mul (.rational 15840 1) (.pow .v 2))) (.pow .g
    6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 136080 1) .f) (.add (.mul (.rational 589680 1) .g) (.mul
    (.rational 149040 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1111320 1) .g) (.mul
    (.rational 570240 1) .v)) .g) (.mul (.rational 58320 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1201860 1) .g) (.mul (.rational 917640 1) .v)) .g) (.mul (.rational
    226800 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 828000 1) .g) (.mul
    (.rational 816480 1) .v)) .g) (.mul (.rational 383580 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 380160 1) .g) (.mul (.rational 448920 1) .v)) .g) (.mul
    (.rational 379440 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    117240 1) .g) (.mul (.rational 164640 1) .v)) .g) (.mul (.rational 249960 1) (.pow .v 2)))
    (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 23520 1) .g) (.mul (.rational 43140
    1) .v)) .g) (.mul (.rational 116280 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2790 1) .g) (.mul (.rational 8220 1) .v)) .g) (.mul (.rational 37650 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 150 1) .g) (.mul (.rational
    1020 1) .v)) .g) (.mul (.rational 7740 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 19440 1) .f) (.add (.mul (.rational 90720 1) .g) (.mul (.rational 25920
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 185220 1) .g) (.mul (.rational 110160 1) .v))
    .g) (.mul (.rational 12960 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    218520 1) .g) (.mul (.rational 200520 1) .v)) .g) (.mul (.rational 58320 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 165600 1) .g) (.mul (.rational 207000 1) .v)) .g)
    (.mul (.rational 117000 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 84480 1) .g) (.mul (.rational 136560 1) .v)) .g) (.mul (.rational 140580 1) (.pow
    .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 29310 1) .g) (.mul
    (.rational 62280 1) .v)) .g) (.mul (.rational 114240 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6720 1) .g) (.mul (.rational 20700 1) .v)) .g) (.mul
    (.rational 66000 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    930 1) .g) (.mul (.rational 4980 1) .v)) .g) (.mul (.rational 26940 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 60 1) .g) (.mul (.rational 780 1) .v)) .g)
    (.mul (.rational 7350 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.mul (.rational 60
    1) .v) .g) (.mul (.rational 1200 1) (.pow .v 2))) (.pow .g 8))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh03210

end
end SPR.N6.Tail.CoreEndpoint
