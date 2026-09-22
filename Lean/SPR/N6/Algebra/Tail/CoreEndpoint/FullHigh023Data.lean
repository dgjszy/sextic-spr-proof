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

namespace FullHigh0230
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh0.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    4*SmallGap.PolarCoefficientsHigh0.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    10*SmallGap.PolarCoefficientsHigh0.c050 e f g v*e^2*((e+f)*(e+f+g))^5

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_010_0 e g v*e^5+6*SmallGap.ReducedLayers.high0_001_0
    e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_020_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_011_0 e g
    v*e^4+3*SmallGap.ReducedLayers.high1_002_0 e g v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1308 1) .e) (.add (.mul (.rational 13348
    1) .f) (.add (.mul (.rational 16882 1) .g) (.mul (.rational 2448 1) .v)))) .e) (.add (.mul
    (.add (.mul (.rational 84928 1) .f) (.add (.mul (.rational 146500 1) .g) (.mul (.rational
    23354 1) .v))) .f) (.add (.mul (.add (.mul (.rational 90644 1) .g) (.mul (.rational 30040 1)
    .v)) .g) (.mul (.rational 1140 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 378312 1) .f) (.add (.mul (.rational 825729 1) .g) (.mul (.rational 138678 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 688348 1) .g) (.mul (.rational 244246 1) .v)) .g) (.mul
    (.rational 10114 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 273015 1) .g)
    (.mul (.rational 153366 1) .v)) .g) (.mul (.rational 13250 1) (.pow .v 2))) .g))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 1255186 1) .f) (.add (.mul (.rational
    3311610 1) .g) (.mul (.rational 575187 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3469859
    1) .g) (.mul (.rational 1285913 1) .v)) .g) (.mul (.rational 55736 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1839252 1) .g) (.mul (.rational 1093403 1) .v)) .g) (.mul
    (.rational 100350 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 517125 1)
    .g) (.mul (.rational 440007 1) .v)) .g) (.mul (.rational 63912 1) (.pow .v 2))) (.pow .g 2))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 3220338 1) .f)
    (.add (.mul (.rational 9958719 1) .g) (.mul (.rational 1771633 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 12559444 1) .g) (.mul (.rational 4800656 1) .v)) .g) (.mul (.rational 213967
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 8324822 1) .g) (.mul (.rational
    5150744 1) .v)) .g) (.mul (.rational 490480 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3109294 1) .g) (.mul (.rational 2785250 1) .v)) .g) (.mul (.rational 425173
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 647983 1) .g)
    (.mul (.rational 795479 1) .v)) .g) (.mul (.rational 172978 1) (.pow .v 2))) (.pow .g 3))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 6544490
    1) .f) (.add (.mul (.rational 23202320 1) .g) (.mul (.rational 4204024 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 34195241 1) .g) (.mul (.rational 13384477 1) .v)) .g) (.mul
    (.rational 607964 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 27182888 1)
    .g) (.mul (.rational 17340816 1) .v)) .g) (.mul (.rational 1693649 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 12641348 1) .g) (.mul (.rational 11775820 1) .v)) .g)
    (.mul (.rational 1860030 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3482284 1) .g) (.mul (.rational 4491858 1) .v)) .g) (.mul (.rational 1023103 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 545937 1) .g) (.mul
    (.rational 953079 1) .v)) .g) (.mul (.rational 294664 1) (.pow .v 2))) (.pow .g 4)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    10700898 1) .f) (.add (.mul (.rational 42774277 1) .g) (.mul (.rational 7866274 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 72108850 1) .g) (.mul (.rational 28773342 1) .v)) .g) (.mul
    (.rational 1325424 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 66803673 1)
    .g) (.mul (.rational 43685365 1) .v)) .g) (.mul (.rational 4348636 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 37136410 1) .g) (.mul (.rational 35704540 1) .v)) .g)
    (.mul (.rational 5786883 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 12687941 1) .g) (.mul (.rational 17031910 1) .v)) .g) (.mul (.rational 4017064 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2617390 1) .g) (.mul
    (.rational 4800956 1) .v)) .g) (.mul (.rational 1555941 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 305829 1) .g) (.mul (.rational 768795 1) .v)) .g)
    (.mul (.rational 332298 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 14215682 1) .f)
    (.add (.mul (.rational 63238734 1) .g) (.mul (.rational 11777285 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 119983739 1) .g) (.mul (.rational 48665461 1) .v)) .g) (.mul (.rational
    2266996 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 126872448 1) .g) (.mul
    (.rational 84724696 1) .v)) .g) (.mul (.rational 8564578 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 81980449 1) .g) (.mul (.rational 80949015 1) .v)) .g) (.mul
    (.rational 13397144 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 33375430 1) .g) (.mul (.rational 46330091 1) .v)) .g) (.mul (.rational 11240241 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 8506919 1) .g) (.mul
    (.rational 16266839 1) .v)) .g) (.mul (.rational 5475874 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1302028 1) .g) (.mul (.rational 3443106 1) .v)) .g)
    (.mul (.rational 1565449 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 108995 1) .g) (.mul (.rational 412621 1) .v)) .g) (.mul (.rational 252020 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15423122 1) .f) (.add (.mul (.rational
    75563059 1) .g) (.mul (.rational 14229787 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    159321404 1) .g) (.mul (.rational 65555204 1) .v)) .g) (.mul (.rational 3083245 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 189272028 1) .g) (.mul (.rational 128735343
    1) .v)) .g) (.mul (.rational 13186734 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 139291476 1) .g) (.mul (.rational 140772012 1) .v)) .g) (.mul (.rational 23720040
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 65740596 1) .g)
    (.mul (.rational 93956244 1) .v)) .g) (.mul (.rational 23352336 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 19901800 1) .g) (.mul (.rational 39456420 1) .v))
    .g) (.mul (.rational 13717902 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3748684 1) .g) (.mul (.rational 10360613 1) .v)) .g) (.mul (.rational 4916658 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 409062 1) .g) (.mul
    (.rational 1632658 1) .v)) .g) (.mul (.rational 1054785 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 22275 1) .g) (.mul (.rational 140877 1) .v)) .g)
    (.mul (.rational 127022 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 13683202 1) .f) (.add (.mul (.rational 73204404 1) .g) (.mul (.rational 13925626 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 169787233 1) .g) (.mul (.rational 70773417 1)
    .v)) .g) (.mul (.rational 3357904 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 223823644 1) .g) (.mul (.rational 154765303 1) .v)) .g) (.mul (.rational 16043885
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 184724568 1) .g) (.mul
    (.rational 190604220 1) .v)) .g) (.mul (.rational 32639076 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 99072120 1) .g) (.mul (.rational 145314708 1) .v))
    .g) (.mul (.rational 36903666 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 34672316 1) .g) (.mul (.rational 70983528 1) .v)) .g) (.mul (.rational 25394208 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7729544 1) .g) (.mul
    (.rational 22219631 1) .v)) .g) (.mul (.rational 10949064 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1033422 1) .g) (.mul (.rational 4324894 1) .v)) .g)
    (.mul (.rational 2935210 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 72944 1) .g) (.mul (.rational 487920 1) .v)) .g) (.mul (.rational 468833 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1975 1) .g) (.mul
    (.rational 27549 1) .v)) .g) (.mul (.rational 40668 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 9902386 1) .f) (.add (.mul (.rational 57439759
    1) .g) (.mul (.rational 11030084 1) .v))) .f) (.add (.mul (.add (.mul (.rational 145331870 1)
    .g) (.mul (.rational 61309222 1) .v)) .g) (.mul (.rational 2933238 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 210489961 1) .g) (.mul (.rational 147759634 1) .v)) .g)
    (.mul (.rational 15491058 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    192474716 1) .g) (.mul (.rational 202390910 1) .v)) .g) (.mul (.rational 35181050 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 115543554 1) .g) (.mul
    (.rational 173506116 1) .v)) .g) (.mul (.rational 44944536 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 45839248 1) .g) (.mul (.rational 96610248 1) .v)) .g)
    (.mul (.rational 35473158 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 11776942 1) .g) (.mul (.rational 35079933 1) .v)) .g) (.mul (.rational 17884566 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1856118 1) .g) (.mul
    (.rational 8109750 1) .v)) .g) (.mul (.rational 5753239 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 159688 1) .g) (.mul (.rational 1124490 1) .v)) .g)
    (.mul (.rational 1144180 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5566 1) .g) (.mul (.rational 82458 1) .v)) .g) (.mul (.rational 130953 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 2331 1) .v) .g) (.mul (.rational
    7444 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 5807862 1) .f) (.add (.mul (.rational 36308214 1) .g) (.mul (.rational 7034781 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 99521713 1) .g) (.mul (.rational 42458299 1) .v))
    .g) (.mul (.rational 2048128 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    157080660 1) .g) (.mul (.rational 111826563 1) .v)) .g) (.mul (.rational 11852234 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 157606455 1) .g) (.mul (.rational
    168643941 1) .v)) .g) (.mul (.rational 29736528 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 104654536 1) .g) (.mul (.rational 160584220 1) .v)) .g) (.mul
    (.rational 42378748 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 46374902 1) .g) (.mul (.rational 100371054 1) .v)) .g) (.mul (.rational 37755732 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 13469696 1) .g) (.mul
    (.rational 41447917 1) .v)) .g) (.mul (.rational 21803460 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2437866 1) .g) (.mul (.rational 11080316 1) .v)) .g)
    (.mul (.rational 8185560 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 246080 1) .g) (.mul (.rational 1816992 1) .v)) .g) (.mul (.rational 1947907 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 10388 1) .g) (.mul
    (.rational 162790 1) .v)) .g) (.mul (.rational 276414 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 5927 1) .v) .g) (.mul (.rational 20601 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 588 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2729878 1) .f) (.add (.mul (.rational
    18298821 1) .g) (.mul (.rational 3575991 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    54020564 1) .g) (.mul (.rational 23293544 1) .v)) .g) (.mul (.rational 1132985 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 92291526 1) .g) (.mul (.rational 66575414
    1) .v)) .g) (.mul (.rational 7132236 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 100805046 1) .g) (.mul (.rational 109633482 1) .v)) .g) (.mul (.rational 19600221
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 73346351 1) .g)
    (.mul (.rational 114817283 1) .v)) .g) (.mul (.rational 30842858 1) (.pow .v 2))) (.pow .g
    3))) .f) (.mul (.add (.mul (.add (.mul (.rational 35887320 1) .g) (.mul (.rational 79599374 1)
    .v)) .g) (.mul (.rational 30630998 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11615356 1) .g) (.mul (.rational 36827665 1) .v)) .g) (.mul (.rational
    19946262 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2369268
    1) .g) (.mul (.rational 11167310 1) .v)) .g) (.mul (.rational 8564243 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 273490 1) .g) (.mul (.rational 2109954 1)
    .v)) .g) (.mul (.rational 2373130 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 13468 1) .g) (.mul (.rational 222418 1) .v)) .g) (.mul (.rational 401583 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 9821 1) .v) .g) (.mul
    (.rational 36914 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1370 1) (.pow .v
    2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    1010526 1) .f) (.add (.mul (.rational 7231128 1) .g) (.mul (.rational 1424908 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 22877251 1) .g) (.mul (.rational 9965639 1) .v)) .g) (.mul
    (.rational 488812 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 42066800 1)
    .g) (.mul (.rational 30726062 1) .v)) .g) (.mul (.rational 3326923 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 49691932 1) .g) (.mul (.rational 54873788 1) .v)) .g)
    (.mul (.rational 9943294 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 39315892 1) .g) (.mul (.rational 62701310 1) .v)) .g) (.mul (.rational 17132299 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 21047809 1) .g) (.mul
    (.rational 47756183 1) .v)) .g) (.mul (.rational 18777320 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7507380 1) .g) (.mul (.rational 24469801 1) .v)) .g)
    (.mul (.rational 13619908 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1701936 1) .g) (.mul (.rational 8295750 1) .v)) .g) (.mul (.rational 6586634 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 220616 1) .g) (.mul
    (.rational 1772580 1) .v)) .g) (.mul (.rational 2083763 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 12362 1) .g) (.mul (.rational 214368 1) .v)) .g)
    (.mul (.rational 409500 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational
    11067 1) .v) .g) (.mul (.rational 44699 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul
    (.rational 2032 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 286922 1) .f) (.add (.mul (.rational 2183483 1) .g)
    (.mul (.rational 433738 1) .v))) .f) (.add (.mul (.add (.mul (.rational 7371614 1) .g) (.mul
    (.rational 3242626 1) .v)) .g) (.mul (.rational 160412 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 14519447 1) .g) (.mul (.rational 10731009 1) .v)) .g) (.mul (.rational
    1174280 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 18448274 1) .g)
    (.mul (.rational 20665120 1) .v)) .g) (.mul (.rational 3794103 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 15772537 1) .g) (.mul (.rational 25593354 1) .v))
    .g) (.mul (.rational 7108288 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9171478 1) .g) (.mul (.rational 21251028 1) .v)) .g) (.mul (.rational 8527909 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 3573829 1) .g) (.mul
    (.rational 11949296 1) .v)) .g) (.mul (.rational 6823128 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 890972 1) .g) (.mul (.rational 4479264 1) .v)) .g)
    (.mul (.rational 3672635 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 127984 1) .g) (.mul (.rational 1067580 1) .v)) .g) (.mul (.rational 1307048 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8020 1) .g) (.mul
    (.rational 145514 1) .v)) .g) (.mul (.rational 292683 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 8575 1) .v) .g) (.mul (.rational 36984 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 1986 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 59994 1) .f) (.add (.mul
    (.rational 483946 1) .g) (.mul (.rational 96883 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1737193 1) .g) (.mul (.rational 771279 1) .v)) .g) (.mul (.rational 38484 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3650328 1) .g) (.mul (.rational 2727994
    1) .v)) .g) (.mul (.rational 301654 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4966243 1) .g) (.mul (.rational 5637565 1) .v)) .g) (.mul (.rational 1048320 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 4564670 1) .g) (.mul
    (.rational 7526383 1) .v)) .g) (.mul (.rational 2123233 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2866131 1) .g) (.mul (.rational 6770459 1) .v)) .g)
    (.mul (.rational 2769594 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1211828 1) .g) (.mul (.rational 4147469 1) .v)) .g) (.mul (.rational 2425155 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 329563 1) .g) (.mul
    (.rational 1704359 1) .v)) .g) (.mul (.rational 1439384 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 51948 1) .g) (.mul (.rational 448450 1) .v)) .g)
    (.mul (.rational 569775 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3596 1) .g) (.mul (.rational 68018 1) .v)) .g) (.mul (.rational 143358 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 4501 1) .v) .g) (.mul (.rational
    20599 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1276 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    8642 1) .f) (.add (.mul (.rational 73687 1) .g) (.mul (.rational 14861 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 280382 1) .g) (.mul (.rational 125572 1) .v)) .g) (.mul
    (.rational 6319 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 626424 1) .g)
    (.mul (.rational 472987 1) .v)) .g) (.mul (.rational 52834 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 909160 1) .g) (.mul (.rational 1044744 1) .v)) .g) (.mul
    (.rational 196646 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    894670 1) .g) (.mul (.rational 1496810 1) .v)) .g) (.mul (.rational 428484 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 603792 1) .g) (.mul (.rational
    1451408 1) .v)) .g) (.mul (.rational 604366 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 275552 1) .g) (.mul (.rational 963102 1) .v)) .g) (.mul
    (.rational 575512 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    81254 1) .g) (.mul (.rational 431032 1) .v)) .g) (.mul (.rational 373884 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 13955 1) .g) (.mul (.rational
    124249 1) .v)) .g) (.mul (.rational 163196 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1058 1) .g) (.mul (.rational 20780 1) .v)) .g) (.mul (.rational
    45659 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1527 1) .v) .g)
    (.mul (.rational 7366 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 518 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 758 1) .f) (.add (.mul (.rational 6816 1) .g) (.mul (.rational 1384 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 27423 1) .g) (.mul (.rational 12379 1) .v)) .g) (.mul
    (.rational 628 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 64968 1) .g)
    (.mul (.rational 49509 1) .v)) .g) (.mul (.rational 5583 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 100296 1) .g) (.mul (.rational 116508 1) .v)) .g) (.mul
    (.rational 22176 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    105336 1) .g) (.mul (.rational 178500 1) .v)) .g) (.mul (.rational 51780 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 76146 1) .g) (.mul (.rational
    185850 1) .v)) .g) (.mul (.rational 78624 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 37368 1) .g) (.mul (.rational 133014 1) .v)) .g) (.mul (.rational 81018
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 11898 1) .g) (.mul
    (.rational 64524 1) .v)) .g) (.mul (.rational 57288 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 2216 1) .g) (.mul (.rational 20268 1) .v)) .g) (.mul
    (.rational 27396 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    183 1) .g) (.mul (.rational 3715 1) .v)) .g) (.mul (.rational 8460 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 301 1) .v) .g) (.mul (.rational 1519 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 120 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 6)))
    .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 30 1) .f) (.add (.mul
    (.rational 284 1) .g) (.mul (.rational 58 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1206
    1) .g) (.mul (.rational 548 1) .v)) .g) (.mul (.rational 28 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3024 1) .g) (.mul (.rational 2322 1) .v)) .g) (.mul (.rational
    264 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 4956 1) .g) (.mul
    (.rational 5808 1) .v)) .g) (.mul (.rational 1116 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5544 1) .g) (.mul (.rational 9492 1) .v)) .g) (.mul
    (.rational 2784 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4284 1) .g) (.mul (.rational 10584 1) .v)) .g) (.mul (.rational 4536 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 2256 1) .g) (.mul (.rational 8148 1) .v))
    .g) (.mul (.rational 5040 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 774 1) .g) (.mul (.rational 4272 1) .v)) .g) (.mul (.rational 3864 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 156 1) .g) (.mul (.rational 1458 1)
    .v)) .g) (.mul (.rational 2016 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 14 1) .g) (.mul (.rational 292 1) .v)) .g) (.mul (.rational 684 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 26 1) .v) .g) (.mul (.rational 136
    1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 12 1) (.pow .v 2)) (.pow .g 10)))
    (.pow .f 7)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0230

namespace FullHigh0231
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh1.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    8*SmallGap.PolarCoefficientsHigh0.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    4*SmallGap.PolarCoefficientsHigh1.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    40*SmallGap.PolarCoefficientsHigh0.c050 e f g v*e*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsHigh1.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh0.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    3*SmallGap.PolarCoefficientsHigh0.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    6*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e^2*((e+f)*(e+f+g))^4

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(20*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^4+4*SmallGap.ReducedLayers.high0_010_1 e g v*e^5+36*SmallGap.ReducedLayers.high0_001_0 e g
    v*e^5+6*SmallGap.ReducedLayers.high0_001_1 e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_0 e g v*e^2+1*SmallGap.ReducedLayers.high1_020_1 e g
    v*e^3+12*SmallGap.ReducedLayers.high1_011_0 e g v*e^3+3*SmallGap.ReducedLayers.high1_011_1 e g
    v*e^4+15*SmallGap.ReducedLayers.high1_002_0 e g v*e^4+3*SmallGap.ReducedLayers.high1_002_1 e g
    v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 11958 1) .e) (.add (.mul (.rational 117788 1) .f)
    (.add (.mul (.rational 148052 1) .g) (.mul (.rational 22160 1) .v)))) .e) (.add (.mul (.add
    (.mul (.rational 724341 1) .f) (.add (.mul (.rational 1241764 1) .g) (.mul (.rational 202337
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 763805 1) .g) (.mul (.rational 256810 1) .v))
    .g) (.mul (.rational 10250 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 3118622 1) .f) (.add (.mul (.rational 6765739 1) .g) (.mul (.rational 1152879 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 5608388 1) .g) (.mul (.rational 2003516 1) .v))
    .g) (.mul (.rational 86485 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    2214689 1) .g) (.mul (.rational 1237991 1) .v)) .g) (.mul (.rational 111396 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 9990702 1) .f) (.add
    (.mul (.rational 26202860 1) .g) (.mul (.rational 4593125 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 27307244 1) .g) (.mul (.rational 10137245 1) .v)) .g) (.mul (.rational 454633 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 14414434 1) .g) (.mul (.rational
    8492767 1) .v)) .g) (.mul (.rational 804520 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 4045070 1) .g) (.mul (.rational 3361403 1) .v)) .g) (.mul (.rational 500949
    1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 24700961 1) .f) (.add (.mul (.rational 75942221 1) .g) (.mul (.rational
    13586519 1) .v))) .f) (.add (.mul (.add (.mul (.rational 95276308 1) .g) (.mul (.rational
    36370552 1) .v)) .g) (.mul (.rational 1667412 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 62900220 1) .g) (.mul (.rational 38497602 1) .v)) .g) (.mul (.rational
    3758839 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 23448493 1) .g)
    (.mul (.rational 20513822 1) .v)) .g) (.mul (.rational 3191170 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4893739 1) .g) (.mul (.rational 5771219 1) .v))
    .g) (.mul (.rational 1264927 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 48235998 1) .f) (.add (.mul (.rational
    170031207 1) .g) (.mul (.rational 30920201 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    249315195 1) .g) (.mul (.rational 97326605 1) .v)) .g) (.mul (.rational 4527256 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 197415739 1) .g) (.mul (.rational 124549930
    1) .v)) .g) (.mul (.rational 12415137 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 91630061 1) .g) (.mul (.rational 83487356 1) .v)) .g) (.mul (.rational 13380174 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 25269256 1) .g) (.mul
    (.rational 31435627 1) .v)) .g) (.mul (.rational 7195083 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3983782 1) .g) (.mul (.rational 6593487 1) .v)) .g)
    (.mul (.rational 2017404 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 75500371 1) .f) (.add (.mul
    (.rational 300080683 1) .g) (.mul (.rational 55346831 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 503335660 1) .g) (.mul (.rational 200315150 1) .v)) .g) (.mul (.rational 9421083 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 464495808 1) .g) (.mul (.rational
    300743443 1) .v)) .g) (.mul (.rational 30465730 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 257687810 1) .g) (.mul (.rational 242990126 1) .v)) .g) (.mul
    (.rational 39866696 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 88108118 1) .g) (.mul (.rational 114624329 1) .v)) .g) (.mul (.rational 27141351 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 18264121 1) .g) (.mul
    (.rational 32000198 1) .v)) .g) (.mul (.rational 10282117 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2156695 1) .g) (.mul (.rational 5093469 1) .v)) .g)
    (.mul (.rational 2143265 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 95547815 1) .f)
    (.add (.mul (.rational 422649207 1) .g) (.mul (.rational 78972684 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 797888084 1) .g) (.mul (.rational 323143366 1) .v)) .g) (.mul
    (.rational 15343046 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 840390075
    1) .g) (.mul (.rational 556896037 1) .v)) .g) (.mul (.rational 57210865 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 541827172 1) .g) (.mul (.rational 526682749 1)
    .v)) .g) (.mul (.rational 88181923 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 220664434 1) .g) (.mul (.rational 298547752 1) .v)) .g) (.mul (.rational
    72773888 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 56474775
    1) .g) (.mul (.rational 103982408 1) .v)) .g) (.mul (.rational 34816537 1) (.pow .v 2))) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 8724706 1) .g) (.mul (.rational 21906223
    1) .v)) .g) (.mul (.rational 9766407 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 742424 1) .g) (.mul (.rational 2628937 1) .v)) .g) (.mul (.rational
    1544800 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 98149744 1) .f) (.add
    (.mul (.rational 478169635 1) .g) (.mul (.rational 90463606 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 1003142950 1) .g) (.mul (.rational 413006620 1) .v)) .g) (.mul (.rational
    19788772 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1186935249 1) .g)
    (.mul (.rational 803617823 1) .v)) .g) (.mul (.rational 83653210 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 871360456 1) .g) (.mul (.rational 870833578 1) .v))
    .g) (.mul (.rational 148563606 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 411204995 1) .g) (.mul (.rational 576388895 1) .v)) .g) (.mul (.rational
    144251801 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    124894501 1) .g) (.mul (.rational 240427570 1) .v)) .g) (.mul (.rational 83511619 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 23715340 1) .g) (.mul
    (.rational 62905407 1) .v)) .g) (.mul (.rational 29501034 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2625851 1) .g) (.mul (.rational 9931474 1) .v)) .g)
    (.mul (.rational 6250721 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 146345 1) .g) (.mul (.rational 866257 1) .v)) .g) (.mul (.rational 748065 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 81810683 1) .f) (.add (.mul
    (.rational 435233738 1) .g) (.mul (.rational 83349527 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1004355499 1) .g) (.mul (.rational 420095918 1) .v)) .g) (.mul (.rational 20315374
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1318491812 1) .g) (.mul
    (.rational 911014225 1) .v)) .g) (.mul (.rational 96077460 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1085169739 1) .g) (.mul (.rational 1112948408 1) .v)) .g)
    (.mul (.rational 193333752 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 581623995 1) .g) (.mul (.rational 842330044 1) .v)) .g) (.mul (.rational 216108770
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 204042038 1) .g)
    (.mul (.rational 409126525 1) .v)) .g) (.mul (.rational 147001724 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 45794321 1) .g) (.mul (.rational 127711061
    1) .v)) .g) (.mul (.rational 62702045 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 6200682 1) .g) (.mul (.rational 24911448 1) .v)) .g) (.mul (.rational
    16671236 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 446816 1)
    .g) (.mul (.rational 2838856 1) .v)) .g) (.mul (.rational 2657033 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 12481 1) .g) (.mul (.rational 163875 1) .v))
    .g) (.mul (.rational 232886 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 55078332 1) .f) (.add (.mul (.rational 317702473 1) .g) (.mul
    (.rational 61582433 1) .v))) .f) (.add (.mul (.add (.mul (.rational 799716260 1) .g) (.mul
    (.rational 339695376 1) .v)) .g) (.mul (.rational 16587211 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1153225193 1) .g) (.mul (.rational 812500039 1) .v)) .g) (.mul
    (.rational 86828304 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1051238077 1) .g) (.mul (.rational 1104860682 1) .v)) .g) (.mul (.rational 195383039 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 630268908 1) .g) (.mul
    (.rational 941083324 1) .v)) .g) (.mul (.rational 247285212 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 250407720 1) .g) (.mul (.rational 521433830 1) .v))
    .g) (.mul (.rational 193423392 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 64676263 1) .g) (.mul (.rational 188910610 1) .v)) .g) (.mul (.rational
    96760244 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 10302504
    1) .g) (.mul (.rational 43766068 1) .v)) .g) (.mul (.rational 30971507 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 902391 1) .g) (.mul (.rational 6124196 1)
    .v)) .g) (.mul (.rational 6164319 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 32335 1) .g) (.mul (.rational 458062 1) .v)) .g) (.mul (.rational 713966 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 13416 1) .v) .g) (.mul
    (.rational 41915 1) (.pow .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 29668364 1) .f) (.add (.mul (.rational 184437874 1) .g) (.mul
    (.rational 36185865 1) .v))) .f) (.add (.mul (.add (.mul (.rational 502910108 1) .g) (.mul
    (.rational 216875457 1) .v)) .g) (.mul (.rational 10698833 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 790140608 1) .g) (.mul (.rational 567265359 1) .v)) .g) (.mul
    (.rational 61446126 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    789984375 1) .g) (.mul (.rational 849876941 1) .v)) .g) (.mul (.rational 152983413 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 523549227 1) .g) (.mul
    (.rational 804570753 1) .v)) .g) (.mul (.rational 216382426 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 232089956 1) .g) (.mul (.rational 500676601 1) .v))
    .g) (.mul (.rational 191443457 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 67665233 1) .g) (.mul (.rational 206336436 1) .v)) .g) (.mul (.rational
    109948023 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 12350944
    1) .g) (.mul (.rational 55262246 1) .v)) .g) (.mul (.rational 41167718 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1265510 1) .g) (.mul (.rational 9134089
    1) .v)) .g) (.mul (.rational 9823100 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 54705 1) .g) (.mul (.rational 832519 1) .v)) .g) (.mul (.rational
    1411308 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 31262 1) .v) .g)
    (.mul (.rational 108333 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 3279 1)
    (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 12588369 1) .f) (.add (.mul (.rational 83910227 1) .g) (.mul (.rational 16663007 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 246393416 1) .g) (.mul (.rational 107845288 1)
    .v)) .g) (.mul (.rational 5377644 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 418914982 1) .g) (.mul (.rational 306282306 1) .v)) .g) (.mul (.rational 33637163
    1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 455724652 1) .g) (.mul
    (.rational 501337134 1) .v)) .g) (.mul (.rational 91852338 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 330690539 1) .g) (.mul (.rational 522235510 1) .v))
    .g) (.mul (.rational 143663095 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 161680394 1) .g) (.mul (.rational 360557778 1) .v)) .g) (.mul (.rational
    141916454 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 52439521
    1) .g) (.mul (.rational 166471771 1) .v)) .g) (.mul (.rational 92056843 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 10762350 1) .g) (.mul (.rational 50541912
    1) .v)) .g) (.mul (.rational 39480694 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1257031 1) .g) (.mul (.rational 9610539 1) .v)) .g) (.mul (.rational
    10979774 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 63119 1)
    .g) (.mul (.rational 1027584 1) .v)) .g) (.mul (.rational 1880197 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 46563 1) .v) .g) (.mul (.rational 177369 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 6917 1) (.pow .v 2)) (.pow .g 10))) .f)) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4106312 1) .f) (.add
    (.mul (.rational 29219315 1) .g) (.mul (.rational 5872631 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 91936381 1) .g) (.mul (.rational 40830305 1) .v)) .g) (.mul (.rational 2058784 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 168184275 1) .g) (.mul (.rational
    125151166 1) .v)) .g) (.mul (.rational 13937645 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 197767936 1) .g) (.mul (.rational 222252980 1) .v)) .g) (.mul
    (.rational 41437852 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 155916853 1) .g) (.mul (.rational 252667191 1) .v)) .g) (.mul (.rational 71048019
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 83301916 1) .g)
    (.mul (.rational 191657032 1) .v)) .g) (.mul (.rational 77546170 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 29720545 1) .g) (.mul (.rational 97967027 1)
    .v)) .g) (.mul (.rational 56090477 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 6762036 1) .g) (.mul (.rational 33222704 1) .v)) .g) (.mul (.rational
    27115056 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 883860 1)
    .g) (.mul (.rational 7130922 1) .v)) .g) (.mul (.rational 8609801 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 50267 1) .g) (.mul (.rational 871859 1) .v))
    .g) (.mul (.rational 1709770 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 45943 1) .v) .g) (.mul (.rational 190714 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 9024 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 991305 1) .f) (.add (.mul (.rational 7501395 1)
    .g) (.mul (.rational 1525673 1) .v))) .f) (.add (.mul (.add (.mul (.rational 25182876 1) .g)
    (.mul (.rational 11343766 1) .v)) .g) (.mul (.rational 578517 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 49329382 1) .g) (.mul (.rational 37335183 1) .v)) .g) (.mul
    (.rational 4216146 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 62355711
    1) .g) (.mul (.rational 71513646 1) .v)) .g) (.mul (.rational 13563282 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 53072526 1) .g) (.mul (.rational 88126865
    1) .v)) .g) (.mul (.rational 25308613 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 30755735 1) .g) (.mul (.rational 72862224 1) .v)) .g) (.mul (.rational
    30260107 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 11964006
    1) .g) (.mul (.rational 40846131 1) .v)) .g) (.mul (.rational 24156585 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2985192 1) .g) (.mul (.rational 15296638
    1) .v)) .g) (.mul (.rational 12998861 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 430771 1) .g) (.mul (.rational 3654126 1) .v)) .g) (.mul (.rational
    4639847 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 27261 1)
    .g) (.mul (.rational 501710 1) .v)) .g) (.mul (.rational 1047588 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 30006 1) .v) .g) (.mul (.rational 134617 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 7453 1) (.pow .v 2)) (.pow .g 10))) (.pow .f
    3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 166297 1) .f)
    (.add (.mul (.rational 1333843 1) .g) (.mul (.rational 274442 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 4760194 1) .g) (.mul (.rational 2173728 1) .v)) .g) (.mul (.rational 112120
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 9943779 1) .g) (.mul (.rational
    7648541 1) .v)) .g) (.mul (.rational 875577 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 13450011 1) .g) (.mul (.rational 15723931 1) .v)) .g) (.mul (.rational
    3031715 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 12294197
    1) .g) (.mul (.rational 20885797 1) .v)) .g) (.mul (.rational 6119184 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 7681353 1) .g) (.mul (.rational 18700183
    1) .v)) .g) (.mul (.rational 7958084 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3235089 1) .g) (.mul (.rational 11410583 1) .v)) .g) (.mul (.rational
    6953218 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 877864 1)
    .g) (.mul (.rational 4677041 1) .v)) .g) (.mul (.rational 4123722 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 138436 1) .g) (.mul (.rational 1230221 1)
    .v)) .g) (.mul (.rational 1634920 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 9625 1) .g) (.mul (.rational 187197 1) .v)) .g) (.mul (.rational 413564 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 12496 1) .v) .g) (.mul
    (.rational 60109 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 3803 1) (.pow .v
    2)) (.pow .g 10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 17234 1) .f) (.add (.mul (.rational 146105 1) .g) (.mul (.rational 30396 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 552578 1) .g) (.mul (.rational 255612 1) .v)) .g)
    (.mul (.rational 13330 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1226757
    1) .g) (.mul (.rational 957981 1) .v)) .g) (.mul (.rational 111102 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1768795 1) .g) (.mul (.rational 2105002 1) .v)) .g)
    (.mul (.rational 412198 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1728979 1) .g) (.mul (.rational 2999794 1) .v)) .g) (.mul (.rational 895345 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 1159095 1) .g) (.mul
    (.rational 2893338 1) .v)) .g) (.mul (.rational 1259139 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 525623 1) .g) (.mul (.rational 1910132 1) .v)) .g)
    (.mul (.rational 1195985 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 154127 1) .g) (.mul (.rational 851006 1) .v)) .g) (.mul (.rational 775607 1) (.pow
    .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 26360 1) .g) (.mul
    (.rational 244482 1) .v)) .g) (.mul (.rational 338403 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1995 1) .g) (.mul (.rational 40834 1) .v)) .g) (.mul
    (.rational 94855 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3007 1)
    .v) .g) (.mul (.rational 15389 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1095
    1) (.pow .v 2)) (.pow .g 10))) (.pow .f 5))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 826 1) .f) (.add (.mul (.rational 7384 1) .g) (.mul (.rational
    1552 1) .v))) .f) (.add (.mul (.add (.mul (.rational 29520 1) .g) (.mul (.rational 13818 1)
    .v)) .g) (.mul (.rational 728 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    69456 1) .g) (.mul (.rational 54990 1) .v)) .g) (.mul (.rational 6454 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 106428 1) .g) (.mul (.rational 128712 1) .v)) .g)
    (.mul (.rational 25560 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 110880 1) .g) (.mul (.rational 196056 1) .v)) .g) (.mul (.rational 59496 1) (.pow
    .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 79464 1) .g) (.mul
    (.rational 202860 1) .v)) .g) (.mul (.rational 90048 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 38640 1) .g) (.mul (.rational 144228 1) .v)) .g) (.mul
    (.rational 92484 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    12186 1) .g) (.mul (.rational 69480 1) .v)) .g) (.mul (.rational 65184 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2248 1) .g) (.mul (.rational 21672 1)
    .v)) .g) (.mul (.rational 31080 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 184 1) .g) (.mul (.rational 3946 1) .v)) .g) (.mul (.rational 9576 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 318 1) .v) .g) (.mul (.rational
    1718 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 136 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 6)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0231

namespace FullHigh0232
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  1*SmallGap.PolarCoefficientsHigh2.c032 e f g v*((e+f)*(e+f+g))^5*(f+g)^2+
    8*SmallGap.PolarCoefficientsHigh1.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    4*SmallGap.PolarCoefficientsHigh2.c041 e f g v*e*((e+f)*(e+f+g))^5*(f+g)+
    40*SmallGap.PolarCoefficientsHigh0.c050 e f g v*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsHigh1.c050 e f g v*e*((e+f)*(e+f+g))^5+
    10*SmallGap.PolarCoefficientsHigh2.c050 e f g v*e^2*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh1.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    7*SmallGap.PolarCoefficientsHigh0.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsHigh1.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    28*SmallGap.PolarCoefficientsHigh0.c140 e f g v*e*((e+f)*(e+f+g))^4+
    6*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh0.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    2*SmallGap.PolarCoefficientsHigh0.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    3*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e^2*((e+f)*(e+f+g))^3

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(40*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^3+20*SmallGap.ReducedLayers.high0_010_1 e g v*e^4+4*SmallGap.ReducedLayers.high0_010_2 e g
    v*e^5+90*SmallGap.ReducedLayers.high0_001_0 e g v*e^4+36*SmallGap.ReducedLayers.high0_001_1 e
    g v*e^5+6*SmallGap.ReducedLayers.high0_001_2 e g v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(3*SmallGap.ReducedLayers.high1_020_0 e g v*e^1+3*SmallGap.ReducedLayers.high1_020_1 e g
    v*e^2+1*SmallGap.ReducedLayers.high1_020_2 e g v*e^3+18*SmallGap.ReducedLayers.high1_011_0 e g
    v*e^2+12*SmallGap.ReducedLayers.high1_011_1 e g v*e^3+3*SmallGap.ReducedLayers.high1_011_2 e g
    v*e^4+30*SmallGap.ReducedLayers.high1_002_0 e g v*e^3+15*SmallGap.ReducedLayers.high1_002_1 e
    g v*e^4+3*SmallGap.ReducedLayers.high1_002_2 e g v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 48702 1) .e) (.add (.mul (.rational 464352 1) .f) (.add (.mul
    (.rational 580206 1) .g) (.mul (.rational 89292 1) .v)))) .e) (.add (.mul (.add (.mul
    (.rational 2762673 1) .f) (.add (.mul (.rational 4706680 1) .g) (.mul (.rational 781749 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 2878025 1) .g) (.mul (.rational 977742 1) .v))
    .g) (.mul (.rational 41030 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 11490329 1) .f) (.add (.mul (.rational 24769417 1) .g) (.mul (.rational 4273693 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 20409621 1) .g) (.mul (.rational 7315209 1) .v))
    .g) (.mul (.rational 329772 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8021349 1) .g) (.mul (.rational 4435939 1) .v)) .g) (.mul (.rational 416850 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 35473107 1) .f) (.add
    (.mul (.rational 92437468 1) .g) (.mul (.rational 16328533 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 95757022 1) .g) (.mul (.rational 35503882 1) .v)) .g) (.mul (.rational
    1652646 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 50302882 1) .g) (.mul
    (.rational 29219698 1) .v)) .g) (.mul (.rational 2867443 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 14079887 1) .g) (.mul (.rational 11326862 1) .v)) .g) (.mul
    (.rational 1738288 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 84240243 1) .f) (.add (.mul (.rational 257311576 1) .g)
    (.mul (.rational 46248869 1) .v))) .f) (.add (.mul (.add (.mul (.rational 320889966 1) .g)
    (.mul (.rational 122043091 1) .v)) .g) (.mul (.rational 5777426 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 210821452 1) .g) (.mul (.rational 127060964 1) .v)) .g)
    (.mul (.rational 12773043 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    78373147 1) .g) (.mul (.rational 66448544 1) .v)) .g) (.mul (.rational 10573985 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 16365520 1) .g) (.mul
    (.rational 18317339 1) .v)) .g) (.mul (.rational 4054561 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 157342806
    1) .f) (.add (.mul (.rational 551001854 1) .g) (.mul (.rational 100520172 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 803092791 1) .g) (.mul (.rational 312140214 1) .v)) .g) (.mul
    (.rational 14934876 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 632817503
    1) .g) (.mul (.rational 393423441 1) .v)) .g) (.mul (.rational 40205630 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 292858227 1) .g) (.mul (.rational 259344700 1)
    .v)) .g) (.mul (.rational 42344750 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 80773465 1) .g) (.mul (.rational 95942698 1) .v)) .g) (.mul (.rational
    22120467 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 12793452
    1) .g) (.mul (.rational 19782346 1) .v)) .g) (.mul (.rational 5980280 1) (.pow .v 2))) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 234317613 1) .f) (.add (.mul (.rational 925175793 1) .g) (.mul (.rational
    171182694 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1542507843 1) .g) (.mul (.rational
    611746649 1) .v)) .g) (.mul (.rational 29522304 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1416480403 1) .g) (.mul (.rational 905820097 1) .v)) .g) (.mul (.rational
    93854745 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 783390471 1) .g)
    (.mul (.rational 721120981 1) .v)) .g) (.mul (.rational 120329600 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 267791467 1) .g) (.mul (.rational 335052822
    1) .v)) .g) (.mul (.rational 79925051 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 55731037 1) .g) (.mul (.rational 92219005 1) .v)) .g) (.mul (.rational
    29396581 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 6645469
    1) .g) (.mul (.rational 14521583 1) .v)) .g) (.mul (.rational 5921016 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 280293309 1) .f) (.add (.mul (.rational 1231647465 1) .g) (.mul
    (.rational 231159638 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2311085526 1) .g) (.mul
    (.rational 934817701 1) .v)) .g) (.mul (.rational 45501234 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2422040879 1) .g) (.mul (.rational 1590995173 1) .v)) .g) (.mul
    (.rational 167087925 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1556466211 1) .g) (.mul (.rational 1485218614 1) .v)) .g) (.mul (.rational 253021728 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 633500332 1) .g) (.mul
    (.rational 831089067 1) .v)) .g) (.mul (.rational 204585163 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 162667155 1) .g) (.mul (.rational 286121935 1) .v))
    .g) (.mul (.rational 95627435 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 25351074 1) .g) (.mul (.rational 59788395 1) .v)) .g) (.mul (.rational 26155097 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2192045 1) .g) (.mul
    (.rational 7166478 1) .v)) .g) (.mul (.rational 4038129 1) (.pow .v 2))) (.pow .g 6)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 269937558 1) .f) (.add (.mul (.rational 1306340259 1) .g) (.mul
    (.rational 248830412 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2723844070 1) .g) (.mul
    (.rational 1123811765 1) .v)) .g) (.mul (.rational 55226178 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3206468177 1) .g) (.mul (.rational 2162197144 1) .v)) .g) (.mul
    (.rational 230353713 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2345756097 1) .g) (.mul (.rational 2316480778 1) .v)) .g) (.mul (.rational 403033561 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1105872319 1) .g) (.mul
    (.rational 1516558931 1) .v)) .g) (.mul (.rational 384943288 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 336764500 1) .g) (.mul (.rational 626698902 1)
    .v)) .g) (.mul (.rational 218954038 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 64441259 1) .g) (.mul (.rational 163002900 1) .v)) .g) (.mul (.rational
    75993790 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7240219
    1) .g) (.mul (.rational 25749464 1) .v)) .g) (.mul (.rational 15868900 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 413136 1) .g) (.mul (.rational 2271693 1)
    .v)) .g) (.mul (.rational 1890349 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 208766121 1) .f) (.add (.mul (.rational 1103212784 1) .g) (.mul (.rational
    213414109 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2530109557 1) .g) (.mul (.rational
    1065066091 1) .v)) .g) (.mul (.rational 52918716 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3304067016 1) .g) (.mul (.rational 2286484888 1) .v)) .g) (.mul (.rational
    247424546 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2709196682 1) .g)
    (.mul (.rational 2765589992 1) .v)) .g) (.mul (.rational 491815568 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1449939954 1) .g) (.mul (.rational
    2073857973 1) .v)) .g) (.mul (.rational 542725582 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 509619252 1) .g) (.mul (.rational 999757645 1) .v)) .g)
    (.mul (.rational 364461828 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 115136101 1) .g) (.mul (.rational 310805841 1) .v)) .g) (.mul (.rational 153691014
    1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 15795189 1) .g)
    (.mul (.rational 60744618 1) .v)) .g) (.mul (.rational 40575712 1) (.pow .v 2))) (.pow .g 6)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1163115 1) .g) (.mul (.rational 7004769 1) .v))
    .g) (.mul (.rational 6487041 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 33569 1) .g) (.mul (.rational 415308 1) .v)) .g) (.mul (.rational 582200 1) (.pow
    .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 128665815 1) .f)
    (.add (.mul (.rational 737183591 1) .g) (.mul (.rational 144926345 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1844028253 1) .g) (.mul (.rational 792262542 1) .v)) .g) (.mul
    (.rational 39860102 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2644767619
    1) .g) (.mul (.rational 1877911015 1) .v)) .g) (.mul (.rational 206675215 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 2401086109 1) .g) (.mul (.rational
    2531426862 1) .v)) .g) (.mul (.rational 460523551 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1436711761 1) .g) (.mul (.rational 2139324091 1) .v)) .g)
    (.mul (.rational 577223481 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 571419680 1) .g) (.mul (.rational 1178225997 1) .v)) .g) (.mul (.rational 447515230
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 148388870 1) .g)
    (.mul (.rational 425697196 1) .v)) .g) (.mul (.rational 222407654 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 23908381 1) .g) (.mul (.rational 98905993 1)
    .v)) .g) (.mul (.rational 71079611 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2135237 1) .g) (.mul (.rational 14004131 1) .v)) .g) (.mul (.rational
    14265980 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 78840 1)
    .g) (.mul (.rational 1074274 1) .v)) .g) (.mul (.rational 1696881 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 32890 1) .v) .g) (.mul (.rational 105496 1) (.pow
    .v 2))) (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    62314913 1) .f) (.add (.mul (.rational 384773106 1) .g) (.mul (.rational 76918361 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 1042491616 1) .g) (.mul (.rational 457238273 1) .v)) .g)
    (.mul (.rational 23325600 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1628662600 1) .g) (.mul (.rational 1186293771 1) .v)) .g) (.mul (.rational 132928785 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1621105564 1) .g) (.mul (.rational
    1763665027 1) .v)) .g) (.mul (.rational 328433023 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1071570941 1) .g) (.mul (.rational 1658416023 1) .v)) .g)
    (.mul (.rational 461266052 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 475094055 1) .g) (.mul (.rational 1026924832 1) .v)) .g) (.mul (.rational 405783947
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 139075297 1) .g)
    (.mul (.rational 422434400 1) .v)) .g) (.mul (.rational 232364406 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 25627858 1) .g) (.mul (.rational 113506235
    1) .v)) .g) (.mul (.rational 87199209 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2670628 1) .g) (.mul (.rational 18972370 1) .v)) .g) (.mul (.rational
    21047065 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 118566 1)
    .g) (.mul (.rational 1769745 1) .v)) .g) (.mul (.rational 3107768 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 69187 1) .v) .g) (.mul (.rational 251584 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 8345 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 23183355 1) .f) (.add
    (.mul (.rational 153481778 1) .g) (.mul (.rational 31211205 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 447751140 1) .g) (.mul (.rational 200500812 1) .v)) .g) (.mul (.rational
    10381992 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 756759710 1) .g) (.mul
    (.rational 565265164 1) .v)) .g) (.mul (.rational 64538470 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 819217715 1) .g) (.mul (.rational 918905806 1) .v)) .g)
    (.mul (.rational 175211849 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 592482892 1) .g) (.mul (.rational 951541192 1) .v)) .g) (.mul (.rational 272685922
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 289405075 1) .g)
    (.mul (.rational 654172381 1) .v)) .g) (.mul (.rational 268474593 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 94102694 1) .g) (.mul (.rational 301608054
    1) .v)) .g) (.mul (.rational 174076454 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 19455850 1) .g) (.mul (.rational 91854164 1) .v)) .g) (.mul (.rational
    74996340 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2304446
    1) .g) (.mul (.rational 17642439 1) .v)) .g) (.mul (.rational 21126290 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 118385 1) .g) (.mul (.rational 1925261 1)
    .v)) .g) (.mul (.rational 3714345 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 90370 1) .v) .g) (.mul (.rational 367496 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 15513 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 6388776 1) .f) (.add (.mul (.rational 45148386 1) .g)
    (.mul (.rational 9341394 1) .v))) .f) (.add (.mul (.add (.mul (.rational 141106483 1) .g)
    (.mul (.rational 64505293 1) .v)) .g) (.mul (.rational 3392522 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 256520535 1) .g) (.mul (.rational 196399626 1) .v)) .g)
    (.mul (.rational 22855740 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    299996025 1) .g) (.mul (.rational 346599786 1) .v)) .g) (.mul (.rational 67658098 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 235526843 1) .g) (.mul
    (.rational 391898623 1) .v)) .g) (.mul (.rational 115613953 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 125561810 1) .g) (.mul (.rational 296104671 1) .v))
    .g) (.mul (.rational 125973949 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 44832329 1) .g) (.mul (.rational 151135636 1) .v)) .g) (.mul (.rational
    91217522 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 10250869
    1) .g) (.mul (.rational 51377508 1) .v)) .g) (.mul (.rational 44342869 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1354331 1) .g) (.mul (.rational 11119869
    1) .v)) .g) (.mul (.rational 14260849 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 78461 1) .g) (.mul (.rational 1382950 1) .v)) .g) (.mul (.rational
    2900737 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 75060 1) .v) .g)
    (.mul (.rational 337160 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 17049 1)
    (.pow .v 2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 1226955 1) .f) (.add (.mul (.rational 9219975 1) .g) (.mul (.rational
    1940900 1) .v))) .f) (.add (.mul (.add (.mul (.rational 30738371 1) .g) (.mul (.rational
    14340460 1) .v)) .g) (.mul (.rational 766230 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 59810509 1) .g) (.mul (.rational 46905889 1) .v)) .g) (.mul (.rational
    5563238 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 75141550 1) .g)
    (.mul (.rational 89318728 1) .v)) .g) (.mul (.rational 17839413 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 63624454 1) .g) (.mul (.rational 109497259 1)
    .v)) .g) (.mul (.rational 33211996 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 36737165 1) .g) (.mul (.rational 90171404 1) .v)) .g) (.mul (.rational
    39680490 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 14272781
    1) .g) (.mul (.rational 50450345 1) .v)) .g) (.mul (.rational 31731381 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3569069 1) .g) (.mul (.rational 18916184
    1) .v)) .g) (.mul (.rational 17170193 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 518665 1) .g) (.mul (.rational 4546093 1) .v)) .g) (.mul (.rational
    6199638 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 33274 1)
    .g) (.mul (.rational 632424 1) .v)) .g) (.mul (.rational 1428786 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 38714 1) .v) .g) (.mul (.rational 189955 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 11096 1) (.pow .v 2)) (.pow .g 10))) (.pow .f
    3))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 146361 1) .f)
    (.add (.mul (.rational 1165613 1) .g) (.mul (.rational 249580 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 4129846 1) .g) (.mul (.rational 1965204 1) .v)) .g) (.mul (.rational 106656
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 8565111 1) .g) (.mul (.rational
    6874198 1) .v)) .g) (.mul (.rational 830475 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11504932 1) .g) (.mul (.rational 14051407 1) .v)) .g) (.mul (.rational
    2868511 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 10449371
    1) .g) (.mul (.rational 18565963 1) .v)) .g) (.mul (.rational 5780184 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 6493968 1) .g) (.mul (.rational 16549775
    1) .v)) .g) (.mul (.rational 7514281 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2725121 1) .g) (.mul (.rational 10068719 1) .v)) .g) (.mul (.rational
    6575900 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 738751 1)
    .g) (.mul (.rational 4124693 1) .v)) .g) (.mul (.rational 3918045 1) (.pow .v 2))) (.pow .g
    6))) .f) (.mul (.add (.mul (.add (.mul (.rational 116832 1) .g) (.mul (.rational 1088317 1)
    .v)) .g) (.mul (.rational 1567796 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 8190 1) .g) (.mul (.rational 167033 1) .v)) .g) (.mul (.rational 403039 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 11335 1) .v) .g) (.mul
    (.rational 60141 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 3964 1) (.pow .v
    2)) (.pow .g 10))) (.pow .f 4))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 8148 1) .f) (.add (.mul (.rational 68573 1) .g) (.mul (.rational 14926 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 257378 1) .g) (.mul (.rational 124816 1) .v)) .g)
    (.mul (.rational 6876 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 566925 1)
    .g) (.mul (.rational 465096 1) .v)) .g) (.mul (.rational 57174 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 810943 1) .g) (.mul (.rational 1016050 1) .v)) .g) (.mul
    (.rational 211687 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    786499 1) .g) (.mul (.rational 1439746 1) .v)) .g) (.mul (.rational 459121 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 523383 1) .g) (.mul (.rational
    1381338 1) .v)) .g) (.mul (.rational 645267 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 235823 1) .g) (.mul (.rational 907886 1) .v)) .g) (.mul
    (.rational 613361 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    68825 1) .g) (.mul (.rational 403286 1) .v)) .g) (.mul (.rational 398909 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 11748 1) .g) (.mul (.rational
    115800 1) .v)) .g) (.mul (.rational 175107 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 891 1) .g) (.mul (.rational 19406 1) .v)) .g) (.mul (.rational
    49621 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 1442 1) .v) .g)
    (.mul (.rational 8197 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 600 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 5)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0232

namespace FullHigh0233
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  8*SmallGap.PolarCoefficientsHigh2.c041 e f g v*((e+f)*(e+f+g))^5*(f+g)+
    40*SmallGap.PolarCoefficientsHigh1.c050 e f g v*((e+f)*(e+f+g))^5+
    40*SmallGap.PolarCoefficientsHigh2.c050 e f g v*e*((e+f)*(e+f+g))^5+
    1*SmallGap.PolarCoefficientsHigh2.c122 e f g v*((e+f)*(e+f+g))^4*(f+g)^2+
    7*SmallGap.PolarCoefficientsHigh1.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    3*SmallGap.PolarCoefficientsHigh2.c131 e f g v*e*((e+f)*(e+f+g))^4*(f+g)+
    32*SmallGap.PolarCoefficientsHigh0.c140 e f g v*((e+f)*(e+f+g))^4+
    28*SmallGap.PolarCoefficientsHigh1.c140 e f g v*e*((e+f)*(e+f+g))^4+
    6*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e^2*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh1.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    6*SmallGap.PolarCoefficientsHigh0.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsHigh1.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    18*SmallGap.PolarCoefficientsHigh0.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsHigh0.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    1*SmallGap.PolarCoefficientsHigh0.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(40*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^2+40*SmallGap.ReducedLayers.high0_010_1 e g v*e^3+20*SmallGap.ReducedLayers.high0_010_2 e
    g v*e^4+4*SmallGap.ReducedLayers.high0_010_3 e g v*e^5+120*SmallGap.ReducedLayers.high0_001_0
    e g v*e^3+90*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^4+36*SmallGap.ReducedLayers.high0_001_2 e g v*e^5+6*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^6)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_020_0 e g v+3*SmallGap.ReducedLayers.high1_020_1 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_020_2 e g v*e^2+1*SmallGap.ReducedLayers.high1_020_3 e g
    v*e^3+12*SmallGap.ReducedLayers.high1_011_0 e g v*e^1+18*SmallGap.ReducedLayers.high1_011_1 e
    g v*e^2+12*SmallGap.ReducedLayers.high1_011_2 e g v*e^3+3*SmallGap.ReducedLayers.high1_011_3 e
    g v*e^4+30*SmallGap.ReducedLayers.high1_002_0 e g v*e^2+30*SmallGap.ReducedLayers.high1_002_1
    e g v*e^3+15*SmallGap.ReducedLayers.high1_002_2 e g v*e^4+3*SmallGap.ReducedLayers.high1_002_3
    e g v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 115962 1) .e) (.add (.mul (.rational 1073462 1) .f) (.add (.mul (.rational
    1333826 1) .g) (.mul (.rational 210180 1) .v)))) .e) (.add (.mul (.add (.mul (.rational
    6187736 1) .f) (.add (.mul (.rational 10476938 1) .g) (.mul (.rational 1767988 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 6370016 1) .g) (.mul (.rational 2175956 1) .v)) .g) (.mul
    (.rational 95970 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational
    24858302 1) .f) (.add (.mul (.rational 53234070 1) .g) (.mul (.rational 9276132 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 43594230 1) .g) (.mul (.rational 15608312 1) .v)) .g) (.mul
    (.rational 736181 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 17051100 1)
    .g) (.mul (.rational 9259740 1) .v)) .g) (.mul (.rational 911524 1) (.pow .v 2))) .g))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 73833494 1) .f) (.add (.mul
    (.rational 191069023 1) .g) (.mul (.rational 33943065 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 196648807 1) .g) (.mul (.rational 72540187 1) .v)) .g) (.mul (.rational 3516553 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 102757787 1) .g) (.mul (.rational
    58442319 1) .v)) .g) (.mul (.rational 5966499 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 28676819 1) .g) (.mul (.rational 22072125 1) .v)) .g) (.mul (.rational
    3504283 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 167865369 1) .f) (.add (.mul (.rational 509055375 1) .g) (.mul
    (.rational 91792975 1) .v))) .f) (.add (.mul (.add (.mul (.rational 630561335 1) .g) (.mul
    (.rational 238164368 1) .v)) .g) (.mul (.rational 11693830 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 411945435 1) .g) (.mul (.rational 243000558 1) .v)) .g) (.mul
    (.rational 25276094 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    152600222 1) .g) (.mul (.rational 124076916 1) .v)) .g) (.mul (.rational 20295445 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 31859958 1) .g) (.mul
    (.rational 33272311 1) .v)) .g) (.mul (.rational 7457400 1) (.pow .v 2))) (.pow .g 3)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 298395637
    1) .f) (.add (.mul (.rational 1037188456 1) .g) (.mul (.rational 189692543 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 1501205595 1) .g) (.mul (.rational 579571623 1) .v)) .g) (.mul
    (.rational 28675123 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1175953534
    1) .g) (.mul (.rational 716900398 1) .v)) .g) (.mul (.rational 75534978 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 542061371 1) .g) (.mul (.rational 462492934 1)
    .v)) .g) (.mul (.rational 77343319 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 149378448 1) .g) (.mul (.rational 167017383 1) .v)) .g) (.mul (.rational
    38918795 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 23746389
    1) .g) (.mul (.rational 33575055 1) .v)) .g) (.mul (.rational 10001270 1) (.pow .v 2))) (.pow
    .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 419876412 1) .f) (.add (.mul (.rational 1645171536 1) .g) (.mul (.rational
    305447671 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2723336727 1) .g) (.mul (.rational
    1075014618 1) .v)) .g) (.mul (.rational 53563692 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2485555250 1) .g) (.mul (.rational 1564615489 1) .v)) .g) (.mul (.rational
    166897279 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1368745174 1) .g)
    (.mul (.rational 1221937302 1) .v)) .g) (.mul (.rational 208696153 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 467231186 1) .g) (.mul (.rational 556107559
    1) .v)) .g) (.mul (.rational 134314933 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 97515129 1) .g) (.mul (.rational 149888180 1) .v)) .g) (.mul (.rational
    47458994 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 11728784
    1) .g) (.mul (.rational 23175533 1) .v)) .g) (.mul (.rational 9091346 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 470393684 1) .f) (.add (.mul (.rational 2050837877 1) .g) (.mul
    (.rational 387158997 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3820104256 1) .g) (.mul
    (.rational 1543609635 1) .v)) .g) (.mul (.rational 77586439 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3978250953 1) .g) (.mul (.rational 2586505405 1) .v)) .g) (.mul
    (.rational 279861863 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    2544801991 1) .g) (.mul (.rational 2374297715 1) .v)) .g) (.mul (.rational 414871119 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 1033834135 1) .g) (.mul
    (.rational 1305553873 1) .v)) .g) (.mul (.rational 327024400 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 266038036 1) .g) (.mul (.rational 441948567 1)
    .v)) .g) (.mul (.rational 148321062 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 41783405 1) .g) (.mul (.rational 91101697 1) .v)) .g) (.mul (.rational
    39203862 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 3667411
    1) .g) (.mul (.rational 10856199 1) .v)) .g) (.mul (.rational 5850936 1) (.pow .v 2))) (.pow
    .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 419617348 1) .f) (.add (.mul (.rational 2014559663 1)
    .g) (.mul (.rational 387405095 1) .v))) .f) (.add (.mul (.add (.mul (.rational 4169217311 1)
    .g) (.mul (.rational 1726972296 1) .v)) .g) (.mul (.rational 87803850 1) (.pow .v 2)))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4876053415 1) .g) (.mul (.rational 3276618598 1) .v))
    .g) (.mul (.rational 360666394 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3549836948 1) .g) (.mul (.rational 3459595242 1) .v)) .g) (.mul (.rational
    620142167 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1669690083 1) .g) (.mul (.rational 2232164922 1) .v)) .g) (.mul (.rational 580833061 1) (.pow
    .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 509239077 1) .g) (.mul
    (.rational 910260970 1) .v)) .g) (.mul (.rational 323420473 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 98118941 1) .g) (.mul (.rational 234507080 1) .v))
    .g) (.mul (.rational 109898499 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 11179732 1) .g) (.mul (.rational 36976288 1) .v)) .g) (.mul (.rational
    22582751 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 652764 1)
    .g) (.mul (.rational 3299657 1) .v)) .g) (.mul (.rational 2691124 1) (.pow .v 2))) (.pow .g
    7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 296384662 1) .f) (.add (.mul (.rational
    1553583487 1) .g) (.mul (.rational 304867841 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    3535902134 1) .g) (.mul (.rational 1503465551 1) .v)) .g) (.mul (.rational 77553519 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4586650372 1) .g) (.mul (.rational
    3187817458 1) .v)) .g) (.mul (.rational 358035334 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 3741531669 1) .g) (.mul (.rational 3807635746 1) .v)) .g) (.mul
    (.rational 702029712 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1997004763 1) .g) (.mul (.rational 2821140038 1) .v)) .g) (.mul (.rational
    763741446 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    702529035 1) .g) (.mul (.rational 1346185568 1) .v)) .g) (.mul (.rational 505833244 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 159677036 1) .g) (.mul
    (.rational 415912154 1) .v)) .g) (.mul (.rational 210946352 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 22191209 1) .g) (.mul (.rational 81392310 1) .v)) .g)
    (.mul (.rational 55495891 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1670366 1) .g) (.mul (.rational 9516245 1) .v)) .g) (.mul (.rational 8991991 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 49835 1) .g) (.mul
    (.rational 582681 1) .v)) .g) (.mul (.rational 844008 1) (.pow .v 2))) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 163732338 1) .f) (.add (.mul (.rational
    930415057 1) .g) (.mul (.rational 186598435 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    2309347891 1) .g) (.mul (.rational 1009104290 1) .v)) .g) (.mul (.rational 52956521 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3289302008 1) .g) (.mul (.rational
    2365708763 1) .v)) .g) (.mul (.rational 271812367 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2969962226 1) .g) (.mul (.rational 3154714826 1) .v)) .g) (.mul
    (.rational 599494544 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1771456825 1) .g) (.mul (.rational 2639844834 1) .v)) .g) (.mul (.rational
    744151028 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    704704832 1) .g) (.mul (.rational 1442651936 1) .v)) .g) (.mul (.rational 572382939 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 183927152 1) .g) (.mul
    (.rational 519336100 1) .v)) .g) (.mul (.rational 283406140 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 29982682 1) .g) (.mul (.rational 121088680 1) .v))
    .g) (.mul (.rational 91014057 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2733096 1) .g) (.mul (.rational 17405869 1) .v)) .g) (.mul (.rational 18652249 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 104169 1) .g) (.mul
    (.rational 1378864 1) .v)) .g) (.mul (.rational 2327279 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 44595 1) .v) .g) (.mul (.rational 157726 1) (.pow .v 2)))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 69258826 1)
    .f) (.add (.mul (.rational 424099098 1) .g) (.mul (.rational 87031078 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1139943041 1) .g) (.mul (.rational 512310052 1) .v)) .g) (.mul
    (.rational 27413012 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1768188666
    1) .g) (.mul (.rational 1316249238 1) .v)) .g) (.mul (.rational 155006790 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1749749505 1) .g) (.mul (.rational
    1938706260 1) .v)) .g) (.mul (.rational 380194448 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1152303685 1) .g) (.mul (.rational 1808166161 1) .v)) .g)
    (.mul (.rational 530748508 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 510590943 1) .g) (.mul (.rational 1113066793 1) .v)) .g) (.mul (.rational 465302695
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 150054861 1) .g)
    (.mul (.rational 457020949 1) .v)) .g) (.mul (.rational 266820273 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 27933736 1) .g) (.mul (.rational 123397397
    1) .v)) .g) (.mul (.rational 101136041 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2965310 1) .g) (.mul (.rational 20944850 1) .v)) .g) (.mul (.rational
    25016848 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 135569 1)
    .g) (.mul (.rational 2014702 1) .v)) .g) (.mul (.rational 3872967 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 82928 1) .v) .g) (.mul (.rational 339397 1) (.pow
    .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 12653 1) (.pow .v 2)) (.pow .g 10)))) .e)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 21661557 1) .f) (.add
    (.mul (.rational 142198052 1) .g) (.mul (.rational 29884090 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 411466006 1) .g) (.mul (.rational 190274308 1) .v)) .g) (.mul (.rational
    10397308 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 690254768 1) .g) (.mul
    (.rational 531767310 1) .v)) .g) (.mul (.rational 64259334 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 742541642 1) .g) (.mul (.rational 857431734 1) .v)) .g)
    (.mul (.rational 173599192 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 534677111 1) .g) (.mul (.rational 881774375 1) .v)) .g) (.mul (.rational 269305218
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 260770387 1) .g)
    (.mul (.rational 603409166 1) .v)) .g) (.mul (.rational 265071510 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 85012613 1) .g) (.mul (.rational 277982176
    1) .v)) .g) (.mul (.rational 172675262 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 17723764 1) .g) (.mul (.rational 85110956 1) .v)) .g) (.mul (.rational
    75347907 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 2133308
    1) .g) (.mul (.rational 16588619 1) .v)) .g) (.mul (.rational 21773641 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 112496 1) .g) (.mul (.rational 1861964 1)
    .v)) .g) (.mul (.rational 4002817 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 91558 1) .v) .g) (.mul (.rational 425173 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 19894 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 4719509 1) .f) (.add (.mul (.rational 33065635 1) .g)
    (.mul (.rational 7119760 1) .v))) .f) (.add (.mul (.add (.mul (.rational 102478299 1) .g)
    (.mul (.rational 48765374 1) .v)) .g) (.mul (.rational 2723612 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 184838678 1) .g) (.mul (.rational 147305154 1) .v)) .g)
    (.mul (.rational 18272950 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    214688210 1) .g) (.mul (.rational 258069678 1) .v)) .g) (.mul (.rational 53926253 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 167676117 1) .g) (.mul
    (.rational 290033073 1) .v)) .g) (.mul (.rational 92036032 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 89150396 1) .g) (.mul (.rational 218280179 1) .v))
    .g) (.mul (.rational 100459272 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 31863368 1) .g) (.mul (.rational 111364356 1) .v)) .g) (.mul (.rational
    73213518 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 7330569
    1) .g) (.mul (.rational 38046772 1) .v)) .g) (.mul (.rational 36082141 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 981314 1) .g) (.mul (.rational 8343065 1)
    .v)) .g) (.mul (.rational 11893512 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 58129 1) .g) (.mul (.rational 1063501 1) .v)) .g) (.mul (.rational 2519038 1)
    (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 60096 1) .v) .g) (.mul
    (.rational 311516 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 17212 1) (.pow .v
    2)) (.pow .g 10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 639380 1) .f) (.add (.mul (.rational 4762429 1) .g) (.mul (.rational 1050766
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 15739384 1) .g) (.mul (.rational 7705288 1)
    .v)) .g) (.mul (.rational 439954 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 30370632 1) .g) (.mul (.rational 25019010 1) .v)) .g) (.mul (.rational 3185080 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 37867206 1) .g) (.mul
    (.rational 47320464 1) .v)) .g) (.mul (.rational 10195588 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 31863941 1) .g) (.mul (.rational 57683387 1) .v)) .g)
    (.mul (.rational 18982260 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18323109 1) .g) (.mul (.rational 47323416 1) .v)) .g) (.mul (.rational 22743525 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 7112094 1) .g) (.mul
    (.rational 26457243 1) .v)) .g) (.mul (.rational 18315713 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1784812 1) .g) (.mul (.rational 9958600 1) .v)) .g)
    (.mul (.rational 10043370 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 261896 1) .g) (.mul (.rational 2419059 1) .v)) .g) (.mul (.rational 3708438 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 17101 1) .g) (.mul
    (.rational 343432 1) .v)) .g) (.mul (.rational 885295 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 21735 1) .v) .g) (.mul (.rational 124045 1) (.pow .v 2))) (.pow
    .g 9))) .f) (.mul (.mul (.rational 7804 1) (.pow .v 2)) (.pow .g 10))) (.pow .f 3))) .e) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 40538 1) .f) (.add (.mul
    (.rational 319922 1) .g) (.mul (.rational 72312 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1123170 1) .g) (.mul (.rational 565350 1) .v)) .g) (.mul (.rational 32988 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2308524 1) .g) (.mul (.rational 1963808
    1) .v)) .g) (.mul (.rational 256354 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 3074611 1) .g) (.mul (.rational 3987938 1) .v)) .g) (.mul (.rational 884644 1)
    (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2771586 1) .g) (.mul
    (.rational 5239292 1) .v)) .g) (.mul (.rational 1783806 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1712397 1) .g) (.mul (.rational 4650826 1) .v)) .g)
    (.mul (.rational 2326101 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 716240 1) .g) (.mul (.rational 2824600 1) .v)) .g) (.mul (.rational 2049116 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 194259 1) .g) (.mul
    (.rational 1159438 1) .v)) .g) (.mul (.rational 1235319 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 30896 1) .g) (.mul (.rational 308228 1) .v)) .g)
    (.mul (.rational 503814 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2193 1) .g) (.mul (.rational 48032 1) .v)) .g) (.mul (.rational 133351 1) (.pow .v
    2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3344 1) .v) .g) (.mul (.rational
    20766 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 1453 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 4)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0233

namespace FullHigh0234
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  40*SmallGap.PolarCoefficientsHigh2.c050 e f g v*((e+f)*(e+f+g))^5+
    7*SmallGap.PolarCoefficientsHigh2.c131 e f g v*((e+f)*(e+f+g))^4*(f+g)+
    32*SmallGap.PolarCoefficientsHigh1.c140 e f g v*((e+f)*(e+f+g))^4+
    28*SmallGap.PolarCoefficientsHigh2.c140 e f g v*e*((e+f)*(e+f+g))^4+
    1*SmallGap.PolarCoefficientsHigh2.c212 e f g v*((e+f)*(e+f+g))^3*(f+g)^2+
    6*SmallGap.PolarCoefficientsHigh1.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    2*SmallGap.PolarCoefficientsHigh2.c221 e f g v*e*((e+f)*(e+f+g))^3*(f+g)+
    25*SmallGap.PolarCoefficientsHigh0.c230 e f g v*((e+f)*(e+f+g))^3+
    18*SmallGap.PolarCoefficientsHigh1.c230 e f g v*e*((e+f)*(e+f+g))^3+
    3*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e^2*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsHigh1.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    5*SmallGap.PolarCoefficientsHigh0.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsHigh1.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    10*SmallGap.PolarCoefficientsHigh0.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e^2*((e+f)*(e+f+g))^2

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(20*SmallGap.ReducedLayers.high0_010_0 e g
    v*e^1+40*SmallGap.ReducedLayers.high0_010_1 e g v*e^2+40*SmallGap.ReducedLayers.high0_010_2 e
    g v*e^3+20*SmallGap.ReducedLayers.high0_010_3 e g v*e^4+4*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^5+90*SmallGap.ReducedLayers.high0_001_0 e g v*e^2+120*SmallGap.ReducedLayers.high0_001_1
    e g v*e^3+90*SmallGap.ReducedLayers.high0_001_2 e g
    v*e^4+36*SmallGap.ReducedLayers.high0_001_3 e g v*e^5)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_020_1 e g v+3*SmallGap.ReducedLayers.high1_020_2 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_020_3 e g v*e^2+1*SmallGap.ReducedLayers.high1_020_4 e g
    v*e^3+3*SmallGap.ReducedLayers.high1_011_0 e g v+12*SmallGap.ReducedLayers.high1_011_1 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_011_2 e g v*e^2+12*SmallGap.ReducedLayers.high1_011_3 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_011_4 e g v*e^4+15*SmallGap.ReducedLayers.high1_002_0 e
    g v*e^1+30*SmallGap.ReducedLayers.high1_002_1 e g v*e^2+30*SmallGap.ReducedLayers.high1_002_2
    e g v*e^3+15*SmallGap.ReducedLayers.high1_002_3 e g v*e^4+3*SmallGap.ReducedLayers.high1_002_4
    e g v*e^5)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    177870 1) .e) (.add (.mul (.rational 1603660 1) .f) (.add (.mul (.rational 1982410 1) .g)
    (.mul (.rational 318460 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 8972430 1) .f) (.add
    (.mul (.rational 15101090 1) .g) (.mul (.rational 2579440 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 9133470 1) .g) (.mul (.rational 3119420 1) .v)) .g) (.mul (.rational 144550 1)
    (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 34828564 1) .f) (.add (.mul
    (.rational 74086577 1) .g) (.mul (.rational 12996836 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 60301332 1) .g) (.mul (.rational 21451920 1) .v)) .g) (.mul (.rational 1060670 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 23480739 1) .g) (.mul (.rational
    12406652 1) .v)) .g) (.mul (.rational 1283970 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 99396080 1) .f) (.add (.mul (.rational 255338157 1)
    .g) (.mul (.rational 45502078 1) .v))) .f) (.add (.mul (.add (.mul (.rational 261011950 1) .g)
    (.mul (.rational 95324556 1) .v)) .g) (.mul (.rational 4830650 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 135652619 1) .g) (.mul (.rational 74870144 1) .v)) .g)
    (.mul (.rational 7992200 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    37748996 1) .g) (.mul (.rational 27366992 1) .v)) .g) (.mul (.rational 4522310 1) (.pow .v
    2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    215674040 1) .f) (.add (.mul (.rational 648877492 1) .g) (.mul (.rational 117172900 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 797815995 1) .g) (.mul (.rational 298021871 1) .v)) .g)
    (.mul (.rational 15255517 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    517991473 1) .g) (.mul (.rational 296681607 1) .v)) .g) (.mul (.rational 32126998 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 191127249 1) .g) (.mul (.rational
    146920201 1) .v)) .g) (.mul (.rational 24863539 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 39886939 1) .g) (.mul (.rational 37937585 1) .v)) .g) (.mul
    (.rational 8644632 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 362946324 1) .f) (.add (.mul (.rational
    1250969811 1) .g) (.mul (.rational 229180042 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1796270756 1) .g) (.mul (.rational 686789493 1) .v)) .g) (.mul (.rational 35364391 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1397476322 1) .g) (.mul (.rational
    830020559 1) .v)) .g) (.mul (.rational 90819567 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 641066784 1) .g) (.mul (.rational 520719547 1) .v)) .g) (.mul
    (.rational 89852802 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 176374985 1) .g) (.mul (.rational 181894525 1) .v)) .g) (.mul (.rational 43066059
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 28119404 1) .g)
    (.mul (.rational 35197052 1) .v)) .g) (.mul (.rational 10291825 1) (.pow .v 2))) (.pow .g
    4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 478800133 1) .f) (.add (.mul (.rational 1859466941 1) .g) (.mul (.rational
    346574460 1) .v))) .f) (.add (.mul (.add (.mul (.rational 3052210305 1) .g) (.mul (.rational
    1197486678 1) .v)) .g) (.mul (.rational 62090987 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2765131372 1) .g) (.mul (.rational 1705863698 1) .v)) .g) (.mul (.rational
    188977314 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1514257640 1) .g)
    (.mul (.rational 1299442687 1) .v)) .g) (.mul (.rational 229254547 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 515563094 1) .g) (.mul (.rational 574756687
    1) .v)) .g) (.mul (.rational 141721796 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 107784026 1) .g) (.mul (.rational 150155071 1) .v)) .g) (.mul
    (.rational 47394294 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13058357 1) .g) (.mul (.rational 22511207 1) .v)) .g) (.mul (.rational 8413080 1)
    (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 496917817 1) .f) (.add (.mul (.rational
    2146494769 1) .g) (.mul (.rational 408387182 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    3963051645 1) .g) (.mul (.rational 1600434024 1) .v)) .g) (.mul (.rational 83874079 1) (.pow
    .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 4094659269 1) .g) (.mul (.rational
    2629981526 1) .v)) .g) (.mul (.rational 296365132 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2603170285 1) .g) (.mul (.rational 2362047473 1) .v)) .g) (.mul
    (.rational 428387490 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1053977139 1) .g) (.mul (.rational 1268144233 1) .v)) .g) (.mul (.rational
    327297244 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    271414345 1) .g) (.mul (.rational 418810059 1) .v)) .g) (.mul (.rational 142827678 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 42894061 1) .g) (.mul
    (.rational 84419501 1) .v)) .g) (.mul (.rational 36060458 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3814066 1) .g) (.mul (.rational 9917656 1) .v)) .g)
    (.mul (.rational 5135387 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    404503965 1) .f) (.add (.mul (.rational 1923438942 1) .g) (.mul (.rational 374799398 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 3944140487 1) .g) (.mul (.rational 1644444401 1) .v))
    .g) (.mul (.rational 87522375 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    4574653135 1) .g) (.mul (.rational 3066074371 1) .v)) .g) (.mul (.rational 353362335 1) (.pow
    .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3308267757 1) .g) (.mul (.rational
    3176833130 1) .v)) .g) (.mul (.rational 595644516 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1549810440 1) .g) (.mul (.rational 2009812644 1) .v)) .g)
    (.mul (.rational 545449230 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 472635354 1) .g) (.mul (.rational 804170882 1) .v)) .g) (.mul (.rational 296353350
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 91556854 1) .g)
    (.mul (.rational 204040968 1) .v)) .g) (.mul (.rational 98358521 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 10562053 1) .g) (.mul (.rational 31975115 1)
    .v)) .g) (.mul (.rational 19930535 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 629555 1) .g) (.mul (.rational 2882803 1) .v)) .g) (.mul (.rational 2408428
    1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 255638685 1) .f)
    (.add (.mul (.rational 1326800297 1) .g) (.mul (.rational 265577110 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 2991108182 1) .g) (.mul (.rational 1290835321 1) .v)) .g) (.mul
    (.rational 70103757 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3846457768
    1) .g) (.mul (.rational 2694932987 1) .v)) .g) (.mul (.rational 319223778 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 3115478612 1) .g) (.mul (.rational
    3167473812 1) .v)) .g) (.mul (.rational 616800119 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1655244758 1) .g) (.mul (.rational 2309674758 1) .v)) .g)
    (.mul (.rational 661058620 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 581847026 1) .g) (.mul (.rational 1086562248 1) .v)) .g) (.mul (.rational 431957418
    1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 132857940 1) .g)
    (.mul (.rational 332506496 1) .v)) .g) (.mul (.rational 178681565 1) (.pow .v 2))) (.pow .g
    5))) .f) (.mul (.add (.mul (.add (.mul (.rational 18682573 1) .g) (.mul (.rational 65063507 1)
    .v)) .g) (.mul (.rational 47252429 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1435709 1) .g) (.mul (.rational 7729107 1) .v)) .g) (.mul (.rational 7904347
    1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 44194 1) .g) (.mul
    (.rational 491808 1) .v)) .g) (.mul (.rational 798485 1) (.pow .v 2))) (.pow .g 8)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 123003419 1) .f) (.add (.mul (.rational
    691897701 1) .g) (.mul (.rational 142608302 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1700539506 1) .g) (.mul (.rational 761108598 1) .v)) .g) (.mul (.rational 42348391 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 2400414976 1) .g) (.mul (.rational
    1760077170 1) .v)) .g) (.mul (.rational 215104502 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 2151114145 1) .g) (.mul (.rational 2315130752 1) .v)) .g) (.mul
    (.rational 469629026 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1276509129 1) .g) (.mul (.rational 1912520088 1) .v)) .g) (.mul (.rational
    577852268 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    507079903 1) .g) (.mul (.rational 1034330336 1) .v)) .g) (.mul (.rational 442110690 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 132855092 1) .g) (.mul
    (.rational 370381276 1) .v)) .g) (.mul (.rational 219339372 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 21896651 1) .g) (.mul (.rational 86710849 1) .v)) .g)
    (.mul (.rational 71566985 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2036870 1) .g) (.mul (.rational 12705563 1) .v)) .g) (.mul (.rational 15256232 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 80144 1) .g) (.mul
    (.rational 1048085 1) .v)) .g) (.mul (.rational 2047226 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 36221 1) .v) .g) (.mul (.rational 154610 1) (.pow .v 2)))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 43575253 1)
    .f) (.add (.mul (.rational 264058406 1) .g) (.mul (.rational 56145180 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 702617925 1) .g) (.mul (.rational 326564218 1) .v)) .g) (.mul
    (.rational 18671407 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1079689118
    1) .g) (.mul (.rational 828926112 1) .v)) .g) (.mul (.rational 104782704 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 1059962269 1) .g) (.mul (.rational 1206712298 1)
    .v)) .g) (.mul (.rational 255361070 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 694106925 1) .g) (.mul (.rational 1113811432 1) .v)) .g) (.mul (.rational
    355036280 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    306905377 1) .g) (.mul (.rational 680464960 1) .v)) .g) (.mul (.rational 311375402 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 90461145 1) .g) (.mul
    (.rational 278754866 1) .v)) .g) (.mul (.rational 180030960 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 17008504 1) .g) (.mul (.rational 75766477 1) .v)) .g)
    (.mul (.rational 69712800 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1840520 1) .g) (.mul (.rational 13126839 1) .v)) .g) (.mul (.rational 17975726 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 86786 1) .g) (.mul
    (.rational 1314151 1) .v)) .g) (.mul (.rational 2981204 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 57675 1) .v) .g) (.mul (.rational 288376 1) (.pow .v 2)))
    (.pow .g 9))) .f) (.mul (.mul (.rational 12163 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 10722123 1) .f) (.add (.mul
    (.rational 69635672 1) .g) (.mul (.rational 15292786 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 199404358 1) .g) (.mul (.rational 96310994 1) .v)) .g) (.mul (.rational 5669244 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 331264144 1) .g) (.mul (.rational
    266269880 1) .v)) .g) (.mul (.rational 34857357 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 353361086 1) .g) (.mul (.rational 425009368 1) .v)) .g) (.mul
    (.rational 93836565 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 252849923 1) .g) (.mul (.rational 433348030 1) .v)) .g) (.mul (.rational 145471795
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 122954924 1) .g)
    (.mul (.rational 294895337 1) .v)) .g) (.mul (.rational 143774359 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 40159198 1) .g) (.mul (.rational 135795543
    1) .v)) .g) (.mul (.rational 94769816 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 8444647 1) .g) (.mul (.rational 41905010 1) .v)) .g) (.mul (.rational
    42342779 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 1034335
    1) .g) (.mul (.rational 8335194 1) .v)) .g) (.mul (.rational 12745935 1) (.pow .v 2))) (.pow
    .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 56134 1) .g) (.mul (.rational 971403 1)
    .v)) .g) (.mul (.rational 2496653 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 50679 1) .v) .g) (.mul (.rational 289873 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 15176 1) (.pow .v 2)) (.pow .g 10))) .f)) .e) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 1637685 1) .f) (.add (.mul (.rational 11348010 1) .g)
    (.mul (.rational 2575800 1) .v))) .f) (.add (.mul (.add (.mul (.rational 34791282 1) .g) (.mul
    (.rational 17465160 1) .v)) .g) (.mul (.rational 1059390 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 62113982 1) .g) (.mul (.rational 52241456 1) .v)) .g) (.mul
    (.rational 7084035 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 71495230
    1) .g) (.mul (.rational 90704286 1) .v)) .g) (.mul (.rational 20876303 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 55446931 1) .g) (.mul (.rational
    101194054 1) .v)) .g) (.mul (.rational 35686731 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 29363300 1) .g) (.mul (.rational 75825817 1) .v)) .g) (.mul
    (.rational 39199463 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 10500272 1) .g) (.mul (.rational 38702635 1) .v)) .g) (.mul (.rational 28954767 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2432137 1) .g) (.mul
    (.rational 13327536 1) .v)) .g) (.mul (.rational 14614830 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 330525 1) .g) (.mul (.rational 2978156 1) .v)) .g)
    (.mul (.rational 5006153 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20086 1) .g) (.mul (.rational 392689 1) .v)) .g) (.mul (.rational 1122781 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 23387 1) .v) .g) (.mul (.rational
    150258 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 9177 1) (.pow .v 2)) (.pow .g
    10))) (.pow .f 2))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    117000 1) .f) (.add (.mul (.rational 861585 1) .g) (.mul (.rational 202170 1) .v))) .f) (.add
    (.mul (.add (.mul (.rational 2815427 1) .g) (.mul (.rational 1468530 1) .v)) .g) (.mul
    (.rational 91800 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 5374089 1) .g)
    (.mul (.rational 4724906 1) .v)) .g) (.mul (.rational 663300 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 6635159 1) .g) (.mul (.rational 8862742 1) .v)) .g) (.mul
    (.rational 2123231 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    5538523 1) .g) (.mul (.rational 10731654 1) .v)) .g) (.mul (.rational 3964693 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3168165 1) .g) (.mul (.rational
    8769610 1) .v)) .g) (.mul (.rational 4785239 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1228267 1) .g) (.mul (.rational 4904870 1) .v)) .g) (.mul
    (.rational 3906853 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    309629 1) .g) (.mul (.rational 1859106 1) .v)) .g) (.mul (.rational 2191565 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 45984 1) .g) (.mul (.rational
    459032 1) .v)) .g) (.mul (.rational 837991 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 3068 1) .g) (.mul (.rational 67084 1) .v)) .g) (.mul (.rational
    210413 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 4440 1) .v) .g)
    (.mul (.rational 31579 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 2168 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 3)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0234

namespace FullHigh0235
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  32*SmallGap.PolarCoefficientsHigh2.c140 e f g v*((e+f)*(e+f+g))^4+
    6*SmallGap.PolarCoefficientsHigh2.c221 e f g v*((e+f)*(e+f+g))^3*(f+g)+
    25*SmallGap.PolarCoefficientsHigh1.c230 e f g v*((e+f)*(e+f+g))^3+
    18*SmallGap.PolarCoefficientsHigh2.c230 e f g v*e*((e+f)*(e+f+g))^3+
    1*SmallGap.PolarCoefficientsHigh2.c302 e f g v*((e+f)*(e+f+g))^2*(f+g)^2+
    5*SmallGap.PolarCoefficientsHigh1.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    1*SmallGap.PolarCoefficientsHigh2.c311 e f g v*e*((e+f)*(e+f+g))^2*(f+g)+
    19*SmallGap.PolarCoefficientsHigh0.c320 e f g v*((e+f)*(e+f+g))^2+
    10*SmallGap.PolarCoefficientsHigh1.c320 e f g v*e*((e+f)*(e+f+g))^2+
    1*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e^2*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh0.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    4*SmallGap.PolarCoefficientsHigh0.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_010_0 e g v+20*SmallGap.ReducedLayers.high0_010_1 e
    g v*e^1+40*SmallGap.ReducedLayers.high0_010_2 e g v*e^2+40*SmallGap.ReducedLayers.high0_010_3
    e g v*e^3+20*SmallGap.ReducedLayers.high0_010_4 e g
    v*e^4+36*SmallGap.ReducedLayers.high0_001_0 e g v*e^1+90*SmallGap.ReducedLayers.high0_001_1 e
    g v*e^2+120*SmallGap.ReducedLayers.high0_001_2 e g v*e^3+90*SmallGap.ReducedLayers.high0_001_3
    e g v*e^4)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_020_2 e g v+3*SmallGap.ReducedLayers.high1_020_3 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_020_4 e g v*e^2+1*SmallGap.ReducedLayers.high1_020_5 e g
    v*e^3+3*SmallGap.ReducedLayers.high1_011_1 e g v+12*SmallGap.ReducedLayers.high1_011_2 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_011_3 e g v*e^2+12*SmallGap.ReducedLayers.high1_011_4 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_011_5 e g v*e^4+3*SmallGap.ReducedLayers.high1_002_0 e
    g v+15*SmallGap.ReducedLayers.high1_002_1 e g v*e^1+30*SmallGap.ReducedLayers.high1_002_2 e g
    v*e^2+30*SmallGap.ReducedLayers.high1_002_3 e g v*e^3+15*SmallGap.ReducedLayers.high1_002_4 e
    g v*e^4)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 182238 1)
    .e) (.add (.mul (.rational 1605378 1) .f) (.add (.mul (.rational 1975362 1) .g) (.mul
    (.rational 322068 1) .v)))) .e) (.add (.mul (.add (.mul (.rational 8736723 1) .f) (.add (.mul
    (.rational 14620700 1) .g) (.mul (.rational 2517609 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 8802779 1) .g) (.mul (.rational 2987070 1) .v)) .g) (.mul (.rational 145390 1)
    (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul (.rational 32793638 1) .f) (.add (.mul
    (.rational 69291707 1) .g) (.mul (.rational 12193387 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 56074756 1) .g) (.mul (.rational 19696196 1) .v)) .g) (.mul (.rational 1023069 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 21756101 1) .g) (.mul (.rational
    11059839 1) .v)) .g) (.mul (.rational 1208520 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 89841906 1) .f) (.add (.mul (.rational 229032047 1)
    .g) (.mul (.rational 40818478 1) .v))) .f) (.add (.mul (.add (.mul (.rational 232521281 1) .g)
    (.mul (.rational 83575444 1) .v)) .g) (.mul (.rational 4445991 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 120233755 1) .g) (.mul (.rational 63682204 1) .v)) .g)
    (.mul (.rational 7151720 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    33391793 1) .g) (.mul (.rational 22336680 1) .v)) .g) (.mul (.rational 3873867 1) (.pow .v
    2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    185499332 1) .f) (.add (.mul (.rational 553324534 1) .g) (.mul (.rational 99852902 1) .v)))
    .f) (.add (.mul (.add (.mul (.rational 674981933 1) .g) (.mul (.rational 248106090 1) .v)) .g)
    (.mul (.rational 13321020 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    435454083 1) .g) (.mul (.rational 239707108 1) .v)) .g) (.mul (.rational 27231707 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 160074169 1) .g) (.mul (.rational
    114127268 1) .v)) .g) (.mul (.rational 20165194 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 33413195 1) .g) (.mul (.rational 27957154 1) .v)) .g) (.mul
    (.rational 6522011 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 293905895 1) .f) (.add (.mul (.rational
    1003486667 1) .g) (.mul (.rational 184019439 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    1428190630 1) .g) (.mul (.rational 538889166 1) .v)) .g) (.mul (.rational 29110167 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1102737691 1) .g) (.mul (.rational
    632898164 1) .v)) .g) (.mul (.rational 72605763 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 503200462 1) .g) (.mul (.rational 382927464 1) .v)) .g) (.mul
    (.rational 68924958 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 138198804 1) .g) (.mul (.rational 127694005 1) .v)) .g) (.mul (.rational 31014761
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 22096149 1) .g)
    (.mul (.rational 23286978 1) .v)) .g) (.mul (.rational 6657557 1) (.pow .v 2))) (.pow .g 4))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 360334770 1) .f) (.add (.mul (.rational 1385141182 1) .g) (.mul (.rational
    259440989 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2251531173 1) .g) (.mul (.rational
    876777882 1) .v)) .g) (.mul (.rational 47799526 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2022188616 1) .g) (.mul (.rational 1216155410 1) .v)) .g) (.mul (.rational
    141633735 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1100077593 1) .g)
    (.mul (.rational 896868286 1) .v)) .g) (.mul (.rational 165780239 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 373240923 1) .g) (.mul (.rational 381333191
    1) .v)) .g) (.mul (.rational 97459834 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 78095038 1) .g) (.mul (.rational 95021294 1) .v)) .g) (.mul (.rational
    30240439 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 9518055
    1) .g) (.mul (.rational 13503162 1) .v)) .g) (.mul (.rational 4765545 1) (.pow .v 2))) (.pow
    .g 5)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 341966875 1) .f) (.add (.mul (.rational 1461060879 1) .g) (.mul
    (.rational 281032558 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2669122228 1) .g) (.mul
    (.rational 1078601036 1) .v)) .g) (.mul (.rational 59717279 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2731332312 1) .g) (.mul (.rational 1729907917 1) .v)) .g) (.mul
    (.rational 206212293 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1722886051 1) .g) (.mul (.rational 1510261200 1) .v)) .g) (.mul (.rational 289654960 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 694113552 1) .g) (.mul
    (.rational 784750038 1) .v)) .g) (.mul (.rational 213399324 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 178589139 1) .g) (.mul (.rational 249912080 1) .v))
    .g) (.mul (.rational 88905456 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 28344883 1) .g) (.mul (.rational 48551333 1) .v)) .g) (.mul (.rational 21210547 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2544957 1) .g) (.mul
    (.rational 5535080 1) .v)) .g) (.mul (.rational 2855531 1) (.pow .v 2))) (.pow .g 6)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 249279550 1) .f) (.add (.mul (.rational 1171645190 1) .g) (.mul
    (.rational 232592556 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2375456669 1) .g) (.mul
    (.rational 1000942698 1) .v)) .g) (.mul (.rational 56683810 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2726420278 1) .g) (.mul (.rational 1825964113 1) .v)) .g) (.mul
    (.rational 224657715 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    1954247564 1) .g) (.mul (.rational 1846322192 1) .v)) .g) (.mul (.rational 370748003 1) (.pow
    .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 909834394 1) .g) (.mul
    (.rational 1137432136 1) .v)) .g) (.mul (.rational 331551202 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 276837734 1) .g) (.mul (.rational 442897456 1)
    .v)) .g) (.mul (.rational 175777540 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 53786237 1) .g) (.mul (.rational 109713745 1) .v)) .g) (.mul (.rational
    57214408 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 6261159
    1) .g) (.mul (.rational 16963424 1) .v)) .g) (.mul (.rational 11598409 1) (.pow .v 2))) (.pow
    .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 378775 1) .g) (.mul (.rational 1539698 1)
    .v)) .g) (.mul (.rational 1467893 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 137148084 1) .f) (.add (.mul (.rational 703173971 1) .g) (.mul (.rational
    144674122 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1566299076 1) .g) (.mul (.rational
    690782312 1) .v)) .g) (.mul (.rational 40273567 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1991626669 1) .g) (.mul (.rational 1414398932 1) .v)) .g) (.mul (.rational
    180834107 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1597436879 1) .g)
    (.mul (.rational 1628122210 1) .v)) .g) (.mul (.rational 344396744 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 842578540 1) .g) (.mul (.rational 1162074327
    1) .v)) .g) (.mul (.rational 364171562 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 295171350 1) .g) (.mul (.rational 535877502 1) .v)) .g) (.mul
    (.rational 235752638 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 67527716 1) .g) (.mul (.rational 161615308 1) .v)) .g) (.mul (.rational 97658618 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 9577953 1) .g) (.mul
    (.rational 31544882 1) .v)) .g) (.mul (.rational 26449562 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 748058 1) .g) (.mul (.rational 3815438 1) .v)) .g)
    (.mul (.rational 4701277 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 23572 1) .g) (.mul (.rational 253840 1) .v)) .g) (.mul (.rational 525425 1) (.pow
    .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 55162352 1) .f)
    (.add (.mul (.rational 306351435 1) .g) (.mul (.rational 65535806 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 743503883 1) .g) (.mul (.rational 344108330 1) .v)) .g) (.mul
    (.rational 20757585 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1037018979
    1) .g) (.mul (.rational 782112000 1) .v)) .g) (.mul (.rational 104384457 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 919544771 1) .g) (.mul (.rational 1010622002 1)
    .v)) .g) (.mul (.rational 225887518 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 541244911 1) .g) (.mul (.rational 820635507 1) .v)) .g) (.mul (.rational
    276317720 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    214065062 1) .g) (.mul (.rational 437431504 1) .v)) .g) (.mul (.rational 211517879 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 56143333 1) .g) (.mul
    (.rational 155389462 1) .v)) .g) (.mul (.rational 106273308 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 9329696 1) .g) (.mul (.rational 36536976 1) .v)) .g)
    (.mul (.rational 35845151 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 882806 1) .g) (.mul (.rational 5483616 1) .v)) .g) (.mul (.rational 8132354 1)
    (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 35700 1) .g) (.mul
    (.rational 475306 1) .v)) .g) (.mul (.rational 1197298 1) (.pow .v 2))) (.pow .g 8))) .f)
    (.mul (.add (.mul (.mul (.rational 17727 1) .v) .g) (.mul (.rational 100991 1) (.pow .v 2)))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 15322717 1)
    .f) (.add (.mul (.rational 91625122 1) .g) (.mul (.rational 20426590 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 240602107 1) .g) (.mul (.rational 117041364 1) .v)) .g) (.mul
    (.rational 7329298 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 365094047 1)
    .g) (.mul (.rational 292533068 1) .v)) .g) (.mul (.rational 40856031 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 354401560 1) .g) (.mul (.rational 419395710 1) .v))
    .g) (.mul (.rational 99112581 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 230009934 1) .g) (.mul (.rational 381749162 1) .v)) .g) (.mul (.rational 137723530
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 101169995 1) .g)
    (.mul (.rational 230786838 1) .v)) .g) (.mul (.rational 121584233 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 29826471 1) .g) (.mul (.rational 94200867 1)
    .v)) .g) (.mul (.rational 71601474 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 5651147 1) .g) (.mul (.rational 25818626 1) .v)) .g) (.mul (.rational
    28750455 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 622150 1)
    .g) (.mul (.rational 4593478 1) .v)) .g) (.mul (.rational 7871506 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 30198 1) .g) (.mul (.rational 483526 1) .v))
    .g) (.mul (.rational 1421247 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul
    (.rational 22899 1) .v) .g) (.mul (.rational 152463 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul
    (.mul (.rational 7190 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 2630232 1) .f) (.add (.mul (.rational 16847082 1) .g) (.mul
    (.rational 3919716 1) .v))) .f) (.add (.mul (.add (.mul (.rational 47581634 1) .g) (.mul
    (.rational 24344748 1) .v)) .g) (.mul (.rational 1585458 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 78006687 1) .g) (.mul (.rational 66371882 1) .v)) .g) (.mul
    (.rational 9707670 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 82219849
    1) .g) (.mul (.rational 104535850 1) .v)) .g) (.mul (.rational 26094267 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 58264593 1) .g) (.mul (.rational
    105365528 1) .v)) .g) (.mul (.rational 40573821 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 28161012 1) .g) (.mul (.rational 71149104 1) .v)) .g) (.mul
    (.rational 40508984 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9191567 1) .g) (.mul (.rational 32734187 1) .v)) .g) (.mul (.rational 27269875 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 1946011 1) .g) (.mul
    (.rational 10206114 1) .v)) .g) (.mul (.rational 12638084 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 242343 1) .g) (.mul (.rational 2085202 1) .v)) .g)
    (.mul (.rational 4025221 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 13534 1) .g) (.mul (.rational 254992 1) .v)) .g) (.mul (.rational 852424 1) (.pow
    .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 14293 1) .v) .g) (.mul (.rational
    108989 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 6359 1) (.pow .v 2)) (.pow .g
    10))) .f)) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 210474 1)
    .f) (.add (.mul (.rational 1437498 1) .g) (.mul (.rational 349308 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 4344061 1) .g) (.mul (.rational 2337696 1) .v)) .g) (.mul (.rational
    158436 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 7648508 1) .g) (.mul
    (.rational 6903054 1) .v)) .g) (.mul (.rational 1057014 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 8692615 1) .g) (.mul (.rational 11843124 1) .v)) .g) (.mul
    (.rational 3116944 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    6670908 1) .g) (.mul (.rational 13083054 1) .v)) .g) (.mul (.rational 5355993 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3508091 1) .g) (.mul (.rational
    9744750 1) .v)) .g) (.mul (.rational 5954630 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 1252268 1) .g) (.mul (.rational 4976632 1) .v)) .g) (.mul
    (.rational 4496215 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    291671 1) .g) (.mul (.rational 1732288 1) .v)) .g) (.mul (.rational 2351562 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 40242 1) .g) (.mul (.rational
    397050 1) .v)) .g) (.mul (.rational 848951 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 2512 1) .g) (.mul (.rational 54718 1) .v)) .g) (.mul (.rational
    204486 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 3478 1) .v) .g)
    (.mul (.rational 29907 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational 2022 1) (.pow
    .v 2)) (.pow .g 10))) (.pow .f 2)))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0235

namespace FullHigh0236
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  25*SmallGap.PolarCoefficientsHigh2.c230 e f g v*((e+f)*(e+f+g))^3+
    5*SmallGap.PolarCoefficientsHigh2.c311 e f g v*((e+f)*(e+f+g))^2*(f+g)+
    19*SmallGap.PolarCoefficientsHigh1.c320 e f g v*((e+f)*(e+f+g))^2+
    10*SmallGap.PolarCoefficientsHigh2.c320 e f g v*e*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh1.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    14*SmallGap.PolarCoefficientsHigh0.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsHigh1.c410 e f g v*e*((e+f)*(e+f+g))

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_010_1 e g v+20*SmallGap.ReducedLayers.high0_010_2 e
    g v*e^1+40*SmallGap.ReducedLayers.high0_010_3 e g v*e^2+40*SmallGap.ReducedLayers.high0_010_4
    e g v*e^3+6*SmallGap.ReducedLayers.high0_001_0 e g v+36*SmallGap.ReducedLayers.high0_001_1 e g
    v*e^1+90*SmallGap.ReducedLayers.high0_001_2 e g v*e^2+120*SmallGap.ReducedLayers.high0_001_3 e
    g v*e^3)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_020_3 e g v+3*SmallGap.ReducedLayers.high1_020_4 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_020_5 e g v*e^2+1*SmallGap.ReducedLayers.high1_020_6 e g
    v*e^3+3*SmallGap.ReducedLayers.high1_011_2 e g v+12*SmallGap.ReducedLayers.high1_011_3 e g
    v*e^1+18*SmallGap.ReducedLayers.high1_011_4 e g v*e^2+12*SmallGap.ReducedLayers.high1_011_5 e
    g v*e^3+3*SmallGap.ReducedLayers.high1_002_1 e g v+15*SmallGap.ReducedLayers.high1_002_2 e g
    v*e^1+30*SmallGap.ReducedLayers.high1_002_3 e g v*e^2+30*SmallGap.ReducedLayers.high1_002_4 e
    g v*e^3)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 124698 1) .e) (.add
    (.mul (.rational 1076728 1) .f) (.add (.mul (.rational 1319482 1) .g) (.mul (.rational 217380
    1) .v)))) .e) (.add (.mul (.add (.mul (.rational 5712901 1) .f) (.add (.mul (.rational 9509644
    1) .g) (.mul (.rational 1643717 1) .v))) .f) (.add (.mul (.add (.mul (.rational 5704845 1) .g)
    (.mul (.rational 1910230 1) .v)) .g) (.mul (.rational 97650 1) (.pow .v 2))))) .e) (.add (.mul
    (.add (.mul (.add (.mul (.rational 20758061 1) .f) (.add (.mul (.rational 43573011 1) .g)
    (.mul (.rational 7660845 1) .v))) .f) (.add (.mul (.add (.mul (.rational 35082065 1) .g) (.mul
    (.rational 12079741 1) .v)) .g) (.mul (.rational 660760 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 13581123 1) .g) (.mul (.rational 6554523 1) .v)) .g) (.mul
    (.rational 760286 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 54561637 1) .f) (.add (.mul (.rational 138000589 1) .g) (.mul (.rational 24515070
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 139183475 1) .g) (.mul (.rational 48893117 1)
    .v)) .g) (.mul (.rational 2743538 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 71674829 1) .g) (.mul (.rational 35933431 1) .v)) .g) (.mul (.rational 4278075 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 19902968 1) .g) (.mul
    (.rational 11957115 1) .v)) .g) (.mul (.rational 2202484 1) (.pow .v 2))) (.pow .g 2)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 106901059 1) .f) (.add
    (.mul (.rational 315956953 1) .g) (.mul (.rational 56859402 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 382324891 1) .g) (.mul (.rational 137480004 1) .v)) .g) (.mul (.rational
    7797444 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 245186369 1) .g) (.mul
    (.rational 128092219 1) .v)) .g) (.mul (.rational 15416887 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 89903330 1) .g) (.mul (.rational 57958975 1) .v)) .g) (.mul
    (.rational 10835799 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 18808166 1) .g) (.mul (.rational 13160087 1) .v)) .g) (.mul (.rational 3185849 1)
    (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 158552124 1) .f) (.add (.mul (.rational 535699751 1) .g) (.mul
    (.rational 98314031 1) .v))) .f) (.add (.mul (.add (.mul (.rational 755161248 1) .g) (.mul
    (.rational 280175214 1) .v)) .g) (.mul (.rational 16035869 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 578558343 1) .g) (.mul (.rational 317734324 1) .v)) .g) (.mul
    (.rational 38710882 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational
    262731723 1) .g) (.mul (.rational 183426163 1) .v)) .g) (.mul (.rational 35018956 1) (.pow .v
    2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 72109336 1) .g) (.mul
    (.rational 57261250 1) .v)) .g) (.mul (.rational 14541883 1) (.pow .v 2))) (.pow .g 3))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 11580609 1) .g) (.mul (.rational 9472803 1) .v)) .g)
    (.mul (.rational 2650393 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 178886535 1) .f) (.add (.mul
    (.rational 679616384 1) .g) (.mul (.rational 128229489 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 1092573738 1) .g) (.mul (.rational 422073645 1) .v)) .g) (.mul (.rational 24526443
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 971935278 1) .g) (.mul
    (.rational 566623506 1) .v)) .g) (.mul (.rational 70586799 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 525006084 1) .g) (.mul (.rational 400799750 1) .v)) .g)
    (.mul (.rational 79399618 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 177517663 1) .g) (.mul (.rational 161340228 1) .v)) .g) (.mul (.rational 44025867
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 37185867 1) .g)
    (.mul (.rational 37361580 1) .v)) .g) (.mul (.rational 12417992 1) (.pow .v 2))) (.pow .g 4)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4558211 1) .g) (.mul (.rational 4811141 1) .v))
    .g) (.mul (.rational 1632530 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 152824618 1) .f)
    (.add (.mul (.rational 644538461 1) .g) (.mul (.rational 126016318 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 1162861092 1) .g) (.mul (.rational 471710903 1) .v)) .g) (.mul
    (.rational 28098196 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1176575142
    1) .g) (.mul (.rational 734301608 1) .v)) .g) (.mul (.rational 94748819 1) (.pow .v 2))) .g))
    .f) (.mul (.add (.mul (.add (.mul (.rational 735351027 1) .g) (.mul (.rational 618307450 1)
    .v)) .g) (.mul (.rational 129249574 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 294470560 1) .g) (.mul (.rational 307427468 1) .v)) .g) (.mul (.rational
    91805798 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 75621133
    1) .g) (.mul (.rational 92843634 1) .v)) .g) (.mul (.rational 36567762 1) (.pow .v 2))) (.pow
    .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 12032203 1) .g) (.mul (.rational 16977321
    1) .v)) .g) (.mul (.rational 8309924 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1085984 1) .g) (.mul (.rational 1821293 1) .v)) .g) (.mul (.rational
    1091758 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 97358047 1) .f) (.add
    (.mul (.rational 451179582 1) .g) (.mul (.rational 92027036 1) .v))) .f) (.add (.mul (.add
    (.mul (.rational 902149797 1) .g) (.mul (.rational 386872836 1) .v)) .g) (.mul (.rational
    23854630 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 1022075896 1) .g)
    (.mul (.rational 686979432 1) .v)) .g) (.mul (.rational 92872721 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 724400392 1) .g) (.mul (.rational 673416432 1) .v))
    .g) (.mul (.rational 150352511 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 334406609 1) .g) (.mul (.rational 400528734 1) .v)) .g) (.mul (.rational
    131940094 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational
    101276754 1) .g) (.mul (.rational 150158076 1) .v)) .g) (.mul (.rational 68998202 1) (.pow .v
    2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 19670845 1) .g) (.mul
    (.rational 35882465 1) .v)) .g) (.mul (.rational 22541148 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 2297130 1) .g) (.mul (.rational 5415253 1) .v)) .g)
    (.mul (.rational 4774638 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 139290 1) .g) (.mul (.rational 491309 1) .v)) .g) (.mul (.rational 669581 1) (.pow
    .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 44875431 1) .f) (.add (.mul
    (.rational 226605617 1) .g) (.mul (.rational 48472146 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 497151217 1) .g) (.mul (.rational 226451570 1) .v)) .g) (.mul (.rational 14567227
    1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 623005805 1) .g) (.mul
    (.rational 452531224 1) .v)) .g) (.mul (.rational 64601600 1) (.pow .v 2))) .g)) .f) (.mul
    (.add (.mul (.add (.mul (.rational 493163011 1) .g) (.mul (.rational 507185112 1) .v)) .g)
    (.mul (.rational 121685911 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 257347904 1) .g) (.mul (.rational 351921923 1) .v)) .g) (.mul (.rational 127816486
    1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 89512909 1) .g)
    (.mul (.rational 157913220 1) .v)) .g) (.mul (.rational 83030382 1) (.pow .v 2))) (.pow .g
    4))) .f) (.mul (.add (.mul (.add (.mul (.rational 20424108 1) .g) (.mul (.rational 46639608 1)
    .v)) .g) (.mul (.rational 35218554 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 2902158 1) .g) (.mul (.rational 9055001 1) .v)) .g) (.mul (.rational 10093457
    1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 227620 1) .g)
    (.mul (.rational 1117481 1) .v)) .g) (.mul (.rational 1969507 1) (.pow .v 2))) (.pow .g 7)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 7168 1) .g) (.mul (.rational 77919 1) .v)) .g)
    (.mul (.rational 245523 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 14157736 1) .f) (.add (.mul (.rational 77357277 1) .g) (.mul (.rational
    17416632 1) .v))) .f) (.add (.mul (.add (.mul (.rational 184683605 1) .g) (.mul (.rational
    89606316 1) .v)) .g) (.mul (.rational 6044431 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 253488639 1) .g) (.mul (.rational 199219350 1) .v)) .g) (.mul (.rational
    30152335 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 221446122 1) .g)
    (.mul (.rational 251505186 1) .v)) .g) (.mul (.rational 64919169 1) (.pow .v 2))) (.pow .g
    2))) .f) (.mul (.add (.mul (.add (.mul (.rational 128694833 1) .g) (.mul (.rational 199549611
    1) .v)) .g) (.mul (.rational 79489231 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 50429213 1) .g) (.mul (.rational 104241231 1) .v)) .g) (.mul (.rational
    61588162 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 13165833
    1) .g) (.mul (.rational 36590756 1) .v)) .g) (.mul (.rational 31901248 1) (.pow .v 2))) (.pow
    .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 2189894 1) .g) (.mul (.rational 8640836
    1) .v)) .g) (.mul (.rational 11380589 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 208500 1) .g) (.mul (.rational 1334583 1) .v)) .g) (.mul (.rational
    2803486 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 8512 1)
    .g) (.mul (.rational 122283 1) .v)) .g) (.mul (.rational 454340 1) (.pow .v 2))) (.pow .g 8)))
    .f) (.mul (.add (.mul (.mul (.rational 4920 1) .v) .g) (.mul (.rational 41898 1) (.pow .v 2)))
    (.pow .g 9)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2738799 1)
    .f) (.add (.mul (.rational 16096182 1) .g) (.mul (.rational 3823086 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 41529585 1) .g) (.mul (.rational 21489846 1) .v)) .g) (.mul (.rational
    1524096 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 61928923 1) .g) (.mul
    (.rational 52634556 1) .v)) .g) (.mul (.rational 8455104 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 59131735 1) .g) (.mul (.rational 73918696 1) .v)) .g) (.mul
    (.rational 20489165 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 37824566 1) .g) (.mul (.rational 65982532 1) .v)) .g) (.mul (.rational 28626892 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 16453113 1) .g) (.mul
    (.rational 39275135 1) .v)) .g) (.mul (.rational 25683577 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4820855 1) .g) (.mul (.rational 15924600 1) .v)) .g)
    (.mul (.rational 15618879 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 913666 1) .g) (.mul (.rational 4404498 1) .v)) .g) (.mul (.rational 6611903 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 101370 1) .g) (.mul
    (.rational 808986 1) .v)) .g) (.mul (.rational 1949626 1) (.pow .v 2))) (.pow .g 7))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4998 1) .g) (.mul (.rational 90217 1) .v)) .g) (.mul
    (.rational 384675 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 4632
    1) .v) .g) (.mul (.rational 45251 1) (.pow .v 2))) (.pow .g 9))) .f) (.mul (.mul (.rational
    2336 1) (.pow .v 2)) (.pow .g 10)))) .e) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 245322 1) .f) (.add (.mul (.rational 1542783 1) .g) (.mul (.rational 387024
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 4276382 1) .g) (.mul (.rational 2360226 1)
    .v)) .g) (.mul (.rational 176148 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 6880959 1) .g) (.mul (.rational 6314346 1) .v)) .g) (.mul (.rational 1075788 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7123848 1) .g) (.mul
    (.rational 9760830 1) .v)) .g) (.mul (.rational 2896109 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 4967897 1) .g) (.mul (.rational 9672764 1) .v)) .g)
    (.mul (.rational 4539581 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2370822 1) .g) (.mul (.rational 6450504 1) .v)) .g) (.mul (.rational 4614713 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 768031 1) .g) (.mul
    (.rational 2956934 1) .v)) .g) (.mul (.rational 3207792 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 162552 1) .g) (.mul (.rational 932314 1) .v)) .g)
    (.mul (.rational 1562592 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 20418 1) .g) (.mul (.rational 196716 1) .v)) .g) (.mul (.rational 533103 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 1162 1) .g) (.mul
    (.rational 25454 1) .v)) .g) (.mul (.rational 122839 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul
    (.add (.mul (.mul (.rational 1544 1) .v) .g) (.mul (.rational 17248 1) (.pow .v 2))) (.pow .g
    9))) .f) (.mul (.mul (.rational 1111 1) (.pow .v 2)) (.pow .g 10))) .f))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0236

namespace FullHigh0237
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  19*SmallGap.PolarCoefficientsHigh2.c320 e f g v*((e+f)*(e+f+g))^2+
    4*SmallGap.PolarCoefficientsHigh2.c401 e f g v*((e+f)*(e+f+g))*(f+g)+
    14*SmallGap.PolarCoefficientsHigh1.c410 e f g v*((e+f)*(e+f+g))+
    4*SmallGap.PolarCoefficientsHigh2.c410 e f g v*e*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsHigh0.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_010_2 e g v+20*SmallGap.ReducedLayers.high0_010_3 e
    g v*e^1+40*SmallGap.ReducedLayers.high0_010_4 e g v*e^2+6*SmallGap.ReducedLayers.high0_001_1 e
    g v+36*SmallGap.ReducedLayers.high0_001_2 e g v*e^1+90*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^2)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_020_4 e g v+3*SmallGap.ReducedLayers.high1_020_5 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_020_6 e g v*e^2+3*SmallGap.ReducedLayers.high1_011_3 e g
    v+12*SmallGap.ReducedLayers.high1_011_4 e g v*e^1+18*SmallGap.ReducedLayers.high1_011_5 e g
    v*e^2+3*SmallGap.ReducedLayers.high1_002_2 e g v+15*SmallGap.ReducedLayers.high1_002_3 e g
    v*e^1+30*SmallGap.ReducedLayers.high1_002_4 e g v*e^2)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 54942 1) .e) (.add (.mul (.rational
    466442 1) .f) (.add (.mul (.rational 569606 1) .g) (.mul (.rational 94412 1) .v)))) .e) (.add
    (.mul (.add (.mul (.rational 2418618 1) .f) (.add (.mul (.rational 4006450 1) .g) (.mul
    (.rational 692114 1) .v))) .f) (.add (.mul (.add (.mul (.rational 2397490 1) .g) (.mul
    (.rational 786472 1) .v)) .g) (.mul (.rational 42230 1) (.pow .v 2))))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.rational 8518190 1) .f) (.add (.mul (.rational 17766820 1) .g) (.mul
    (.rational 3107942 1) .v))) .f) (.add (.mul (.add (.mul (.rational 14245234 1) .g) (.mul
    (.rational 4770364 1) .v)) .g) (.mul (.rational 275587 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 5513230 1) .g) (.mul (.rational 2487102 1) .v)) .g) (.mul (.rational
    308340 1) (.pow .v 2))) .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    21474152 1) .f) (.add (.mul (.rational 53880418 1) .g) (.mul (.rational 9507572 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 54019688 1) .g) (.mul (.rational 18400972 1) .v)) .g) (.mul
    (.rational 1095211 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 27750784 1)
    .g) (.mul (.rational 12952414 1) .v)) .g) (.mul (.rational 1650763 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 7727988 1) .g) (.mul (.rational 4024380 1) .v)) .g)
    (.mul (.rational 801413 1) (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.rational 39817412 1) .f) (.add (.mul (.rational 116542738 1)
    .g) (.mul (.rational 20877668 1) .v))) .f) (.add (.mul (.add (.mul (.rational 139915640 1) .g)
    (.mul (.rational 48909712 1) .v)) .g) (.mul (.rational 2955154 1) (.pow .v 2)))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 89305734 1) .g) (.mul (.rational 43615854 1) .v)) .g) (.mul
    (.rational 5632680 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 32747002
    1) .g) (.mul (.rational 18462980 1) .v)) .g) (.mul (.rational 3727101 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 6893964 1) .g) (.mul (.rational 3735750
    1) .v)) .g) (.mul (.rational 965834 1) (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 54942284 1) .f) (.add (.mul
    (.rational 183499080 1) .g) (.mul (.rational 33740574 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 256115274 1) .g) (.mul (.rational 93151928 1) .v)) .g) (.mul (.rational 5719602 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 194819820 1) .g) (.mul (.rational
    101277160 1) .v)) .g) (.mul (.rational 13334826 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul
    (.add (.mul (.rational 88209220 1) .g) (.mul (.rational 55037376 1) .v)) .g) (.mul (.rational
    11441313 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 24274130
    1) .g) (.mul (.rational 15610192 1) .v)) .g) (.mul (.rational 4314939 1) (.pow .v 2))) (.pow
    .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 3933466 1) .g) (.mul (.rational 2163704
    1) .v)) .g) (.mul (.rational 611509 1) (.pow .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 56397774 1) .f)
    (.add (.mul (.rational 211404186 1) .g) (.mul (.rational 40383350 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 335769858 1) .g) (.mul (.rational 128897424 1) .v)) .g) (.mul
    (.rational 8130011 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 295796034 1)
    .g) (.mul (.rational 166422452 1) .v)) .g) (.mul (.rational 22732142 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 158802908 1) .g) (.mul (.rational 111738252 1) .v))
    .g) (.mul (.rational 24602654 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 53629846 1) .g) (.mul (.rational 41752192 1) .v)) .g) (.mul (.rational 12895232 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 11283114 1) .g) (.mul
    (.rational 8613012 1) .v)) .g) (.mul (.rational 3312218 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 1395346 1) .g) (.mul (.rational 906254 1) .v)) .g)
    (.mul (.rational 357580 1) (.pow .v 2))) (.pow .g 5)))) .e) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 42530246 1) .f)
    (.add (.mul (.rational 176640766 1) .g) (.mul (.rational 35440140 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 314142364 1) .g) (.mul (.rational 128837212 1) .v)) .g) (.mul
    (.rational 8467729 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 313899618 1)
    .g) (.mul (.rational 193592264 1) .v)) .g) (.mul (.rational 27963685 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 194332404 1) .g) (.mul (.rational 156005000 1) .v))
    .g) (.mul (.rational 37287838 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 77406812 1) .g) (.mul (.rational 73334468 1) .v)) .g) (.mul (.rational 25897234 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 19866862 1) .g) (.mul
    (.rational 20590352 1) .v)) .g) (.mul (.rational 10176552 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3170622 1) .g) (.mul (.rational 3427438 1) .v)) .g)
    (.mul (.rational 2367106 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 286598 1) .g) (.mul (.rational 327132 1) .v)) .g) (.mul (.rational 350965 1) (.pow
    .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 22904526 1) .f) (.add (.mul (.rational
    104328068 1) .g) (.mul (.rational 22173016 1) .v))) .f) (.add (.mul (.add (.mul (.rational
    205148580 1) .g) (.mul (.rational 90669476 1) .v)) .g) (.mul (.rational 6288048 1) (.pow .v
    2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 228873652 1) .g) (.mul (.rational 155928812
    1) .v)) .g) (.mul (.rational 24160272 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul
    (.rational 160115492 1) .g) (.mul (.rational 147264080 1) .v)) .g) (.mul (.rational 38728532
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 73204510 1) .g)
    (.mul (.rational 83916820 1) .v)) .g) (.mul (.rational 33953740 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 22043344 1) .g) (.mul (.rational 30018772 1) .v))
    .g) (.mul (.rational 18111066 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 4268850 1) .g) (.mul (.rational 6859750 1) .v)) .g) (.mul (.rational 6285760 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 495978 1) .g) (.mul
    (.rational 1005204 1) .v)) .g) (.mul (.rational 1496723 1) (.pow .v 2))) (.pow .g 6))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 29406 1) .g) (.mul (.rational 90846 1) .v)) .g) (.mul
    (.rational 243130 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational
    8344146 1) .f) (.add (.mul (.rational 41334430 1) .g) (.mul (.rational 9359552 1) .v))) .f)
    (.add (.mul (.add (.mul (.rational 88966766 1) .g) (.mul (.rational 42589588 1) .v)) .g) (.mul
    (.rational 3142104 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 109461460 1)
    .g) (.mul (.rational 82636660 1) .v)) .g) (.mul (.rational 13834068 1) (.pow .v 2))) .g)) .f)
    (.mul (.add (.mul (.add (.mul (.rational 85212746 1) .g) (.mul (.rational 89654112 1) .v)) .g)
    (.mul (.rational 26020998 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 43842724 1) .g) (.mul (.rational 60105858 1) .v)) .g) (.mul (.rational 27608564 1)
    (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 15082292 1) .g) (.mul
    (.rational 26103516 1) .v)) .g) (.mul (.rational 18493918 1) (.pow .v 2))) (.pow .g 4))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3410908 1) .g) (.mul (.rational 7533404 1) .v)) .g)
    (.mul (.rational 8346406 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 479366 1) .g) (.mul (.rational 1459504 1) .v)) .g) (.mul (.rational 2632817 1)
    (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 36662 1) .g) (.mul
    (.rational 184614 1) .v)) .g) (.mul (.rational 573653 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 1068 1) .g) (.mul (.rational 13320 1) .v)) .g) (.mul
    (.rational 78213 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 1843776 1) .f) (.add (.mul (.rational 9864126 1) .g) (.mul (.rational 2387340 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 23048256 1) .g) (.mul (.rational 11974824 1) .v))
    .g) (.mul (.rational 943164 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    30965950 1) .g) (.mul (.rational 25893212 1) .v)) .g) (.mul (.rational 4689576 1) (.pow .v
    2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 26504028 1) .g) (.mul (.rational
    31734340 1) .v)) .g) (.mul (.rational 10129188 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 15118136 1) .g) (.mul (.rational 24441818 1) .v)) .g) (.mul
    (.rational 12582768 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 5828232 1) .g) (.mul (.rational 12443128 1) .v)) .g) (.mul (.rational 10066661 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 1499668 1) .g) (.mul
    (.rational 4304336 1) .v)) .g) (.mul (.rational 5512014 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 245480 1) .g) (.mul (.rational 1022088 1) .v)) .g)
    (.mul (.rational 2127106 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 22770 1) .g) (.mul (.rational 162574 1) .v)) .g) (.mul (.rational 572808 1) (.pow
    .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 878 1) .g) (.mul (.rational
    15544 1) .v)) .g) (.mul (.rational 100451 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul
    (.mul (.rational 644 1) .v) .g) (.mul (.rational 9756 1) (.pow .v 2))) (.pow .g 9)))) .e)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 186732 1) .f) (.add (.mul
    (.rational 1072548 1) .g) (.mul (.rational 277776 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 2701920 1) .g) (.mul (.rational 1523124 1) .v)) .g) (.mul (.rational 128088 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 3932060 1) .g) (.mul (.rational
    3631576 1) .v)) .g) (.mul (.rational 709884 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 3664778 1) .g) (.mul (.rational 4958360 1) .v)) .g) (.mul (.rational 1729368
    1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 2290624 1) .g)
    (.mul (.rational 4305656 1) .v)) .g) (.mul (.rational 2453568 1) (.pow .v 2))) (.pow .g 3)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 975312 1) .g) (.mul (.rational 2504360 1) .v))
    .g) (.mul (.rational 2268353 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 280200 1) .g) (.mul (.rational 1003072 1) .v)) .g) (.mul (.rational 1447995 1)
    (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational 52052 1) .g) (.mul
    (.rational 279176 1) .v)) .g) (.mul (.rational 655282 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 5628 1) .g) (.mul (.rational 52764 1) .v)) .g) (.mul
    (.rational 208874 1) (.pow .v 2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational
    266 1) .g) (.mul (.rational 6156 1) .v)) .g) (.mul (.rational 44539 1) (.pow .v 2))) (.pow .g
    8))) .f) (.mul (.add (.mul (.mul (.rational 332 1) .v) .g) (.mul (.rational 5619 1) (.pow .v
    2))) (.pow .g 9))) .f) (.mul (.mul (.rational 310 1) (.pow .v 2)) (.pow .g 10))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0237

namespace FullHigh0238
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  14*SmallGap.PolarCoefficientsHigh2.c410 e f g v*((e+f)*(e+f+g))+
    10*SmallGap.PolarCoefficientsHigh1.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_010_3 e g v+20*SmallGap.ReducedLayers.high0_010_4 e
    g v*e^1+6*SmallGap.ReducedLayers.high0_001_2 e g v+36*SmallGap.ReducedLayers.high0_001_3 e g
    v*e^1)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_020_5 e g v+3*SmallGap.ReducedLayers.high1_020_6 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_011_4 e g v+12*SmallGap.ReducedLayers.high1_011_5 e g
    v*e^1+3*SmallGap.ReducedLayers.high1_002_3 e g v+15*SmallGap.ReducedLayers.high1_002_4 e g
    v*e^1)

/-- Exact positive higher coefficients, retaining Horner factors. -/
def remainderData : NonnegativeExpression.Expr :=
  (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.rational 14142 1) .e) (.add (.mul (.rational 118392 1)
    .f) (.add (.mul (.rational 144156 1) .g) (.mul (.rational 23940 1) .v)))) .e) (.add (.mul
    (.add (.mul (.rational 601356 1) .f) (.add (.mul (.rational 991798 1) .g) (.mul (.rational
    170508 1) .v))) .f) (.add (.mul (.add (.mul (.rational 592776 1) .g) (.mul (.rational 189096
    1) .v)) .g) (.mul (.rational 10670 1) (.pow .v 2))))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.rational 2055606 1) .f) (.add (.mul (.rational 4261402 1) .g) (.mul (.rational 738588 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 3406642 1) .g) (.mul (.rational 1100012 1) .v))
    .g) (.mul (.rational 67356 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    1321334 1) .g) (.mul (.rational 547232 1) .v)) .g) (.mul (.rational 73164 1) (.pow .v 2)))
    .g))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 4968774 1) .f) (.add
    (.mul (.rational 12366724 1) .g) (.mul (.rational 2160432 1) .v))) .f) (.add (.mul (.add (.mul
    (.rational 12337234 1) .g) (.mul (.rational 4040280 1) .v)) .g) (.mul (.rational 256758 1)
    (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 6337758 1) .g) (.mul (.rational
    2700168 1) .v)) .g) (.mul (.rational 373084 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1777404 1) .g) (.mul (.rational 765052 1) .v)) .g) (.mul (.rational 169358 1)
    (.pow .v 2))) (.pow .g 2)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.rational 8693934 1) .f) (.add (.mul (.rational 25185808 1) .g) (.mul (.rational 4487460 1)
    .v))) .f) (.add (.mul (.add (.mul (.rational 30018080 1) .g) (.mul (.rational 10137500 1) .v))
    .g) (.mul (.rational 659062 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational
    19112136 1) .g) (.mul (.rational 8576168 1) .v)) .g) (.mul (.rational 1208192 1) (.pow .v 2)))
    .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 7038046 1) .g) (.mul (.rational 3322116 1)
    .v)) .g) (.mul (.rational 747464 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 1500688 1) .g) (.mul (.rational 554864 1) .v)) .g) (.mul (.rational 164092 1)
    (.pow .v 2))) (.pow .g 3)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.rational 11081910 1) .f) (.add (.mul (.rational 36543054 1) .g) (.mul (.rational
    6756048 1) .v))) .f) (.add (.mul (.add (.mul (.rational 50503968 1) .g) (.mul (.rational
    17988204 1) .v)) .g) (.mul (.rational 1203288 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 38212368 1) .g) (.mul (.rational 18611612 1) .v)) .g) (.mul (.rational
    2710936 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 17320192 1) .g)
    (.mul (.rational 9369560 1) .v)) .g) (.mul (.rational 2209366 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 4810468 1) .g) (.mul (.rational 2303736 1) .v))
    .g) (.mul (.rational 755216 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 793674 1) .g) (.mul (.rational 215744 1) .v)) .g) (.mul (.rational 75858 1) (.pow
    .v 2))) (.pow .g 4)))) .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.rational 10204428 1) .f) (.add (.mul (.rational 37664892 1) .g) (.mul
    (.rational 7355244 1) .v))) .f) (.add (.mul (.add (.mul (.rational 59062782 1) .g) (.mul
    (.rational 22674360 1) .v)) .g) (.mul (.rational 1589734 1) (.pow .v 2)))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 51585942 1) .g) (.mul (.rational 28009088 1) .v)) .g) (.mul
    (.rational 4340832 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 27622280
    1) .g) (.mul (.rational 17694088 1) .v)) .g) (.mul (.rational 4576014 1) (.pow .v 2))) (.pow
    .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational 9375248 1) .g) (.mul (.rational 6016084
    1) .v)) .g) (.mul (.rational 2334692 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1998622 1) .g) (.mul (.rational 1040132 1) .v)) .g) (.mul (.rational
    592110 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 252014 1)
    .g) (.mul (.rational 66412 1) .v)) .g) (.mul (.rational 70752 1) (.pow .v 2))) (.pow .g 5))))
    .e) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 6615414 1) .f) (.add (.mul (.rational 26976060 1) .g) (.mul (.rational
    5648076 1) .v))) .f) (.add (.mul (.add (.mul (.rational 47210370 1) .g) (.mul (.rational
    19867440 1) .v)) .g) (.mul (.rational 1490988 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add
    (.mul (.rational 46595200 1) .g) (.mul (.rational 28716020 1) .v)) .g) (.mul (.rational
    4865832 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 28646496 1) .g)
    (.mul (.rational 22071952 1) .v)) .g) (.mul (.rational 6465024 1) (.pow .v 2))) (.pow .g 2)))
    .f) (.mul (.add (.mul (.add (.mul (.rational 11409592 1) .g) (.mul (.rational 9776492 1) .v))
    .g) (.mul (.rational 4567320 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2949220 1) .g) (.mul (.rational 2543400 1) .v)) .g) (.mul (.rational 1916998 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 476170 1) .g) (.mul
    (.rational 383988 1) .v)) .g) (.mul (.rational 524044 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 43330 1) .g) (.mul (.rational 32180 1) .v)) .g) (.mul
    (.rational 100778 1) (.pow .v 2))) (.pow .g 6)))) .e) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.rational 2864556 1)
    .f) (.add (.mul (.rational 12770394 1) .g) (.mul (.rational 2896680 1) .v))) .f) (.add (.mul
    (.add (.mul (.rational 24621072 1) .g) (.mul (.rational 11477124 1) .v)) .g) (.mul (.rational
    936372 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul (.rational 27015218 1) .g) (.mul
    (.rational 19060696 1) .v)) .g) (.mul (.rational 3588888 1) (.pow .v 2))) .g)) .f) (.mul (.add
    (.mul (.add (.mul (.rational 18672738 1) .g) (.mul (.rational 17329220 1) .v)) .g) (.mul
    (.rational 5815260 1) (.pow .v 2))) (.pow .g 2))) .f) (.mul (.add (.mul (.add (.mul (.rational
    8484178 1) .g) (.mul (.rational 9495140 1) .v)) .g) (.mul (.rational 5284296 1) (.pow .v 2)))
    (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul (.rational 2553488 1) .g) (.mul (.rational
    3285128 1) .v)) .g) (.mul (.rational 3047166 1) (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add
    (.mul (.add (.mul (.rational 495246 1) .g) (.mul (.rational 742176 1) .v)) .g) (.mul
    (.rational 1205864 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul (.add (.mul (.add (.mul (.rational
    57046 1) .g) (.mul (.rational 112120 1) .v)) .g) (.mul (.rational 337396 1) (.pow .v 2)))
    (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational 3184 1) .g) (.mul (.rational 10796
    1) .v)) .g) (.mul (.rational 62572 1) (.pow .v 2))) (.pow .g 7)))) .e) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.rational 743580 1) .f) (.add (.mul (.rational 3593268 1) .g) (.mul (.rational 887976
    1) .v))) .f) (.add (.mul (.add (.mul (.rational 7552566 1) .g) (.mul (.rational 3917160 1)
    .v)) .g) (.mul (.rational 349920 1) (.pow .v 2)))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 9094680 1) .g) (.mul (.rational 7353468 1) .v)) .g) (.mul (.rational 1545480 1)
    (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 6953820 1) .g) (.mul
    (.rational 7714440 1) .v)) .g) (.mul (.rational 2957532 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 3529790 1) .g) (.mul (.rational 5017540 1) .v)) .g)
    (.mul (.rational 3266568 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 1202526 1) .g) (.mul (.rational 2138780 1) .v)) .g) (.mul (.rational 2351928 1)
    (.pow .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 269008 1) .g) (.mul
    (.rational 621056 1) .v)) .g) (.mul (.rational 1179224 1) (.pow .v 2))) (.pow .g 5))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 36798 1) .g) (.mul (.rational 125104 1) .v)) .g)
    (.mul (.rational 419638 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 2574 1) .g) (.mul (.rational 16656 1) .v)) .g) (.mul (.rational 101576 1) (.pow .v
    2))) (.pow .g 7))) .f) (.mul (.add (.mul (.add (.mul (.rational 50 1) .g) (.mul (.rational
    1192 1) .v)) .g) (.mul (.rational 14856 1) (.pow .v 2))) (.pow .g 8)))) .e) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.rational 87480 1) .f) (.add (.mul (.rational 455004 1) .g) (.mul
    (.rational 122688 1) .v))) .f) (.add (.mul (.add (.mul (.rational 1033704 1) .g) (.mul
    (.rational 596376 1) .v)) .g) (.mul (.rational 58320 1) (.pow .v 2)))) .f) (.mul (.add (.mul
    (.add (.mul (.rational 1351890 1) .g) (.mul (.rational 1247472 1) .v)) .g) (.mul (.rational
    291600 1) (.pow .v 2))) .g)) .f) (.mul (.add (.mul (.add (.mul (.rational 1128840 1) .g) (.mul
    (.rational 1479060 1) .v)) .g) (.mul (.rational 641508 1) (.pow .v 2))) (.pow .g 2))) .f)
    (.mul (.add (.mul (.add (.mul (.rational 629926 1) .g) (.mul (.rational 1106372 1) .v)) .g)
    (.mul (.rational 827232 1) (.pow .v 2))) (.pow .g 3))) .f) (.mul (.add (.mul (.add (.mul
    (.rational 237918 1) .g) (.mul (.rational 552988 1) .v)) .g) (.mul (.rational 703646 1) (.pow
    .v 2))) (.pow .g 4))) .f) (.mul (.add (.mul (.add (.mul (.rational 59692 1) .g) (.mul
    (.rational 191456 1) .v)) .g) (.mul (.rational 418872 1) (.pow .v 2))) (.pow .g 5))) .f) (.mul
    (.add (.mul (.add (.mul (.rational 9318 1) .g) (.mul (.rational 46396 1) .v)) .g) (.mul
    (.rational 177398 1) (.pow .v 2))) (.pow .g 6))) .f) (.mul (.add (.mul (.add (.mul (.rational
    768 1) .g) (.mul (.rational 7488 1) .v)) .g) (.mul (.rational 51852 1) (.pow .v 2))) (.pow .g
    7))) .f) (.mul (.add (.mul (.add (.mul (.rational 20 1) .g) (.mul (.rational 676 1) .v)) .g)
    (.mul (.rational 9594 1) (.pow .v 2))) (.pow .g 8))) .f) (.mul (.add (.mul (.mul (.rational 20
    1) .v) .g) (.mul (.rational 940 1) (.pow .v 2))) (.pow .g 9))))

def remainder (e f g v : ℝ) : ℝ :=
  NonnegativeExpression.eval remainderData e f g v

theorem remainder_nonnegative {e f g v : ℝ} (he : 0 ≤ e) (hf : 0 ≤ f)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ remainder e f g v := by
  exact NonnegativeExpression.nonnegative remainderData he hf hg hv

end FullHigh0238

namespace FullHigh0239
/-- Actual finite polar-to-outer source recipe. -/
def source (e f g v : ℝ) : ℝ :=
  10*SmallGap.PolarCoefficientsHigh2.c500 e f g v

def leading0 (e g v : ℝ) : ℝ :=
  e*g*(e+g)^6*(4*SmallGap.ReducedLayers.high0_010_4 e g v+6*SmallGap.ReducedLayers.high0_001_3 e g
    v)

def leading1 (e g v : ℝ) : ℝ :=
  (e+g)^3*(1*SmallGap.ReducedLayers.high1_020_6 e g v+3*SmallGap.ReducedLayers.high1_011_5 e g
    v+3*SmallGap.ReducedLayers.high1_002_4 e g v)

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

end FullHigh0239

end
end SPR.N6.Tail.CoreEndpoint
