import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh005Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^4 layer of FullHigh005.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh005Encoded4
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 90) (.var 1)) (.mul (.num 30) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.num 1098) (.var 1)) (.add (.mul (.num 828) (.var 2)) (.mul
    (.num 180) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 150) (.var 2)) (.mul (.num 60) (.var
    3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 5940) (.var 1)) (.add
    (.mul (.num 6912) (.var 2)) (.mul (.num 1800) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 2532) (.var 2)) (.mul (.num 1272) (.var 3))) (.var 2)) (.mul (.num 90) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 300) (.var 2)) (.mul (.num 192) (.var 3)))
    (.var 2)) (.mul (.num 30) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 18342) (.var 1)) (.add (.mul (.num 28566) (.var 2)) (.mul (.num
    8010) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 15630) (.var 2)) (.mul (.num 8628)
    (.var 3))) (.var 2)) (.mul (.num 750) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3606) (.var 2)) (.mul (.num 2634) (.var 3))) (.var 2)) (.mul (.num 516) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 300) (.var 2)) (.mul
    (.num 216) (.var 3))) (.var 2)) (.mul (.num 66) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 35100) (.var 1)) (.add
    (.mul (.num 67848) (.var 2)) (.mul (.num 20106) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 48804) (.var 2)) (.mul (.num 28938) (.var 3))) (.var 2)) (.mul (.num 2733) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16386) (.var 2)) (.mul (.num 13314)
    (.var 3))) (.var 2)) (.mul (.num 2808) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2580) (.var 2)) (.mul (.num 2178) (.var 3))) (.var 2)) (.mul (.num
    687) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    150) (.var 2)) (.mul (.num 96) (.var 3))) (.var 2)) (.mul (.num 12) (.pow (.var 3) 2))) (.pow
    (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 42489) (.var 1)) (.add (.mul (.num 97311) (.var 2)) (.mul (.num 30882) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 85791) (.var 2)) (.mul (.num 55836) (.var 3))) (.var
    2)) (.mul (.num 5403) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    37143) (.var 2)) (.mul (.num 34716) (.var 3))) (.var 2)) (.mul (.num 7278) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8274) (.var 2)) (.mul (.num 8748)
    (.var 3))) (.var 2)) (.mul (.num 2547) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 870) (.var 2)) (.mul (.num 798) (.var 3))) (.var 2)) (.mul (.num
    12) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30)
    (.var 2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul (.neg (.num 60)) (.pow (.var 3) 2)))
    (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 31734) (.var 1)) (.add (.mul (.num 83457) (.var 2)) (.mul (.num
    29220) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 86289) (.var 2)) (.mul (.num 64218)
    (.var 3))) (.var 2)) (.mul (.num 6429) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 45069) (.var 2)) (.mul (.num 51312) (.var 3))) (.var 2)) (.mul (.num 11082) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12627) (.var 2)) (.mul
    (.num 18324) (.var 3))) (.var 2)) (.mul (.num 5565) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1806) (.var 2)) (.mul (.num 2892) (.var 3)))
    (.var 2)) (.mul (.num 360) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 102) (.var 2)) (.mul (.num 162) (.var 3))) (.var 2)) (.mul (.neg (.num 294))
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.neg (.num 42)) (.pow (.var 3)
    2)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 13365) (.var 1)) (.add (.mul (.num 39459) (.var 2))
    (.mul (.num 15738) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 46413) (.var 2)) (.mul
    (.num 41034) (.var 3))) (.var 2)) (.mul (.num 4590) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 28023) (.var 2)) (.mul (.num 40602) (.var 3))) (.var 2)) (.mul (.num
    10314) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9252)
    (.var 2)) (.mul (.num 19284) (.var 3))) (.var 2)) (.mul (.num 7971) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1602) (.var 2)) (.mul (.num 4608)
    (.var 3))) (.var 2)) (.mul (.num 2316) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 114) (.var 2)) (.mul (.num 534) (.var 3))) (.var 2)) (.mul (.num
    75) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 24) (.var
    3)) (.var 2)) (.mul (.neg (.num 60)) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.mul (.neg (.num 6)) (.pow (.var 3) 2)) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    2430) (.var 1)) (.add (.mul (.num 7917) (.var 2)) (.mul (.num 3684) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 10359) (.var 2)) (.mul (.num 11130) (.var 3))) (.var 2)) (.mul
    (.num 1512) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7017) (.var 2))
    (.mul (.num 13134) (.var 3))) (.var 2)) (.mul (.num 4374) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 2619) (.var 2)) (.mul (.num 7746) (.var 3))) (.var 2))
    (.mul (.num 4893) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 516) (.var 2)) (.mul (.num 2418) (.var 3))) (.var 2)) (.mul (.num 2724) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 42) (.var 2))
    (.mul (.num 384) (.var 3))) (.var 2)) (.mul (.num 816) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 24) (.var 3)) (.var 2)) (.mul (.num 132) (.pow (.var
    3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 9) (.pow (.var 3) 2)) (.pow (.var 2)
    6))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))) 3)) (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 150) (.var 1))
    (.mul (.num 50) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 2180) (.var 1)) (.add (.mul
    (.num 1670) (.var 2)) (.mul (.num 300) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 310)
    (.var 2)) (.mul (.num 100) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.num 14338) (.var 1)) (.add (.mul (.num 17062) (.var 2)) (.mul (.num 3620) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 6494) (.var 2)) (.mul (.num 2580) (.var 3))) (.var 2))
    (.mul (.num 150) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 810) (.var
    2)) (.mul (.num 400) (.var 3))) (.var 2)) (.mul (.num 50) (.pow (.var 3) 2))) (.var 2))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 55800) (.var 1)) (.add (.mul
    (.num 89498) (.var 2)) (.mul (.num 19890) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    51382) (.var 2)) (.mul (.num 21652) (.var 3))) (.var 2)) (.mul (.num 1560) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12674) (.var 2)) (.mul (.num 6838) (.var
    3))) (.var 2)) (.mul (.num 1090) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1150) (.var 2)) (.mul (.num 596) (.var 3))) (.var 2)) (.mul (.num 150) (.pow
    (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 141566) (.var 1)) (.add (.mul (.num 284122) (.var 2)) (.mul (.num 64774)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 216908) (.var 2)) (.mul (.num 94730) (.var
    3))) (.var 2)) (.mul (.num 7315) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 79248) (.var 2)) (.mul (.num 45406) (.var 3))) (.var 2)) (.mul (.num 7706) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13966) (.var 2)) (.mul (.num
    7994) (.var 3))) (.var 2)) (.mul (.num 2109) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 950) (.var 2)) (.mul (.num 384) (.var 3))) (.var 2)) (.mul
    (.num 98) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 243760) (.var 1)) (.add (.mul (.num 584850)
    (.var 2)) (.mul (.num 137656) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 554256)
    (.var 2)) (.mul (.num 253618) (.var 3))) (.var 2)) (.mul (.num 20075) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 266216) (.var 2)) (.mul (.num 164688) (.var 3)))
    (.var 2)) (.mul (.num 28238) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 68530) (.var 2)) (.mul (.num 44794) (.var 3))) (.var 2)) (.mul (.num 11635) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8930) (.var
    2)) (.mul (.num 4544) (.var 3))) (.var 2)) (.mul (.num 1066) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 450) (.var 2)) (.mul (.num 76) (.var
    3))) (.var 2)) (.mul (.neg (.num 106)) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    287722) (.var 1)) (.add (.mul (.num 800310) (.var 2)) (.mul (.num 198084) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 901848) (.var 2)) (.mul (.num 443344) (.var 3))) (.var 2))
    (.mul (.num 35738) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 533482)
    (.var 2)) (.mul (.num 368816) (.var 3))) (.var 2)) (.mul (.num 64007) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 178644) (.var 2)) (.mul (.num 140640)
    (.var 3))) (.var 2)) (.mul (.num 36945) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 33586) (.var 2)) (.mul (.num 24096) (.var 3))) (.var 2))
    (.mul (.num 6393) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3194) (.var 2)) (.mul (.num 1396) (.var 3))) (.var 2)) (.mul (.neg (.num 537))
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 110)
    (.var 2)) (.mul (.neg (.num 16)) (.var 3))) (.var 2)) (.mul (.neg (.num 154)) (.pow (.var 3)
    2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 229370) (.var 1)) (.add (.mul (.num 723650)
    (.var 2)) (.mul (.num 192328) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 941744)
    (.var 2)) (.mul (.num 510436) (.var 3))) (.var 2)) (.mul (.num 42934) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 658556) (.var 2)) (.mul (.num 525240) (.var 3)))
    (.var 2)) (.mul (.num 96512) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 269374) (.var 2)) (.mul (.num 265456) (.var 3))) (.var 2)) (.mul (.num 77206)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 65208)
    (.var 2)) (.mul (.num 68726) (.var 3))) (.var 2)) (.mul (.num 25220) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8842) (.var 2)) (.mul (.num 8552)
    (.var 3))) (.var 2)) (.mul (.num 2192) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 566) (.var 2)) (.mul (.num 386) (.var 3))) (.var 2)) (.mul (.neg
    (.num 346)) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 10) (.var 2)) (.mul (.neg (.num 4)) (.var 3))) (.var 2)) (.mul (.neg (.num 46)) (.pow
    (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 117952) (.var 1)) (.add
    (.mul (.num 415322) (.var 2)) (.mul (.num 120452) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 611306) (.var 2)) (.mul (.num 371788) (.var 3))) (.var 2)) (.mul (.num 33782)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 491472) (.var 2)) (.mul
    (.num 459960) (.var 3))) (.var 2)) (.mul (.num 94094) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 236086) (.var 2)) (.mul (.num 294016) (.var 3))) (.var 2))
    (.mul (.num 101460) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 69204) (.var 2)) (.mul (.num 104686) (.var 3))) (.var 2)) (.mul (.num 53834) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11958) (.var
    2)) (.mul (.num 20978) (.var 3))) (.var 2)) (.mul (.num 14959) (.pow (.var 3) 2))) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1080) (.var 2)) (.mul (.num 2274) (.var
    3))) (.var 2)) (.mul (.num 2234) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 36) (.var 2)) (.mul (.num 110) (.var 3))) (.var 2)) (.mul (.num 187)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 6) (.pow (.var 3) 2))
    (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 35262) (.var 1)) (.add (.mul
    (.num 136896) (.var 2)) (.mul (.num 43644) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    224428) (.var 2)) (.mul (.num 154032) (.var 3))) (.var 2)) (.mul (.num 15444) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 203374) (.var 2)) (.mul (.num 223460)
    (.var 3))) (.var 2)) (.mul (.num 52056) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 111722) (.var 2)) (.mul (.num 173484) (.var 3))) (.var 2)) (.mul (.num
    71882) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    38178) (.var 2)) (.mul (.num 78852) (.var 3))) (.var 2)) (.mul (.num 53392) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7916) (.var 2)) (.mul
    (.num 21662) (.var 3))) (.var 2)) (.mul (.num 23779) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 902) (.var 2)) (.mul (.num 3580) (.var 3)))
    (.var 2)) (.mul (.num 6726) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 42) (.var 2)) (.mul (.num 330) (.var 3))) (.var 2)) (.mul (.num 1197)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num 12) (.var 3))
    (.var 2)) (.mul (.num 110) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.mul (.num
    2) (.pow (.var 3) 2)) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    4644) (.var 1)) (.add (.mul (.num 19698) (.var 2)) (.mul (.num 6888) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 35564) (.var 2)) (.mul (.num 27396) (.var 3))) (.var 2)) (.mul
    (.num 3024) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 35808) (.var
    2)) (.mul (.num 45644) (.var 3))) (.var 2)) (.mul (.num 11988) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 22080) (.var 2)) (.mul (.num 41680) (.var 3)))
    (.var 2)) (.mul (.num 20146) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 8576) (.var 2)) (.mul (.num 22956) (.var 3))) (.var 2)) (.mul (.num
    18994) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2056) (.var 2)) (.mul (.num 7916) (.var 3))) (.var 2)) (.mul (.num 11234) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 278) (.var 2)) (.mul (.num
    1708) (.var 3))) (.var 2)) (.mul (.num 4387) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 16) (.var 2)) (.mul (.num 216) (.var 3))) (.var 2)) (.mul
    (.num 1125) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num
    12) (.var 3)) (.var 2)) (.mul (.num 171) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1))
    (.mul (.mul (.num 11) (.pow (.var 3) 2)) (.pow (.var 2) 8))) (.var 1)))) (.pow (.mul (.add
    (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2))) (.mul (.mul (.num 1) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 1)) (.mul (.num
    10) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 582) (.var 1)) (.add (.mul (.num 462)
    (.var 2)) (.mul (.num 60) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 90) (.var 2)) (.mul
    (.num 20) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 5106)
    (.var 1)) (.add (.mul (.num 6349) (.var 2)) (.mul (.num 1000) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 2583) (.var 2)) (.mul (.num 748) (.var 3))) (.var 2)) (.mul (.num 30)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 350) (.var 2)) (.mul (.num
    128) (.var 3))) (.var 2)) (.mul (.num 10) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 26838) (.var 1)) (.add (.mul (.num 45194)
    (.var 2)) (.mul (.num 7636) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 27923) (.var
    2)) (.mul (.num 8902) (.var 3))) (.var 2)) (.mul (.num 450) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 7577) (.var 2)) (.mul (.num 3234) (.var 3))) (.var 2))
    (.mul (.num 334) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    770) (.var 2)) (.mul (.num 368) (.var 3))) (.var 2)) (.mul (.num 54) (.pow (.var 3) 2))) (.pow
    (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    94298) (.var 1)) (.add (.mul (.num 199594) (.var 2)) (.mul (.num 35288) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 164793) (.var 2)) (.mul (.num 56078) (.var 3))) (.var 2)) (.mul
    (.num 3090) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 66726) (.var
    2)) (.mul (.num 31536) (.var 3))) (.var 2)) (.mul (.num 3587) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13319) (.var 2)) (.mul (.num 7466) (.var 3)))
    (.var 2)) (.mul (.num 1257) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1050) (.var 2)) (.mul (.num 640) (.var 3))) (.var 2)) (.mul (.num 130)
    (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 233725) (.var 1)) (.add (.mul (.num 594225) (.var 2))
    (.mul (.num 109844) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 612004) (.var 2))
    (.mul (.num 221998) (.var 3))) (.var 2)) (.mul (.num 12842) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 327878) (.var 2)) (.mul (.num 170378) (.var 3))) (.var 2))
    (.mul (.num 20514) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 96549) (.var 2)) (.mul (.num 62254) (.var 3))) (.var 2)) (.mul (.num 11377) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14785) (.var 2))
    (.mul (.num 10950) (.var 3))) (.var 2)) (.mul (.num 2581) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 910) (.var 2)) (.mul (.num 760) (.var 3)))
    (.var 2)) (.mul (.num 206) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 419685) (.var
    1)) (.add (.mul (.num 1243100) (.var 2)) (.mul (.num 242142) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 1529989) (.var 2)) (.mul (.num 596512) (.var 3))) (.var 2)) (.mul (.num
    35964) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1015762) (.var 2))
    (.mul (.num 584014) (.var 3))) (.var 2)) (.mul (.num 74115) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 392679) (.var 2)) (.mul (.num 291630) (.var 3)))
    (.var 2)) (.mul (.num 57544) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 87978) (.var 2)) (.mul (.num 78872) (.var 3))) (.var 2)) (.mul (.num
    21106) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    10437) (.var 2)) (.mul (.num 11086) (.var 3))) (.var 2)) (.mul (.num 3733) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 490) (.var 2)) (.mul (.num
    640) (.var 3))) (.var 2)) (.mul (.num 270) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 550865) (.var 1)) (.add (.mul (.num 1859548) (.var 2)) (.mul (.num 385580) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2656054) (.var 2)) (.mul (.num 1124376) (.var
    3))) (.var 2)) (.mul (.num 71139) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2096858) (.var 2)) (.mul (.num 1345276) (.var 3))) (.var 2)) (.mul (.num 181821) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 998588) (.var 2)) (.mul
    (.num 858138) (.var 3))) (.var 2)) (.mul (.num 184917) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 291793) (.var 2)) (.mul (.num 316554) (.var 3)))
    (.var 2)) (.mul (.num 96485) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 50305) (.var 2)) (.mul (.num 67894) (.var 3))) (.var 2)) (.mul (.num
    27723) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    4523) (.var 2)) (.mul (.num 7846) (.var 3))) (.var 2)) (.mul (.num 4293) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 150) (.var 2)) (.mul (.num
    368) (.var 3))) (.var 2)) (.mul (.num 290) (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 525199) (.var 1)) (.add (.mul (.num 1987057) (.var 2)) (.mul (.num
    442682) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 3224008) (.var 2)) (.mul (.num
    1494482) (.var 3))) (.var 2)) (.mul (.num 100397) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2941645) (.var 2)) (.mul (.num 2118944) (.var 3))) (.var 2)) (.mul
    (.num 309103) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1657623) (.var 2)) (.mul (.num 1651330) (.var 3))) (.var 2)) (.mul (.num 393437) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 593294) (.var 2))
    (.mul (.num 775598) (.var 3))) (.var 2)) (.mul (.num 270528) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 132569) (.var 2)) (.mul (.num 225122)
    (.var 3))) (.var 2)) (.mul (.num 109930) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 17210) (.var 2)) (.mul (.num 39244) (.var 3))) (.var 2))
    (.mul (.num 26824) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1087) (.var 2)) (.mul (.num 3662) (.var 3))) (.var 2)) (.mul (.num 3675) (.pow
    (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 2))
    (.mul (.num 128) (.var 3))) (.var 2)) (.mul (.num 214) (.pow (.var 3) 2))) (.pow (.var 2)
    7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 355068) (.var 1)) (.add (.mul (.num 1485839)
    (.var 2)) (.mul (.num 358240) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2693861)
    (.var 2)) (.mul (.num 1375352) (.var 3))) (.var 2)) (.mul (.num 99162) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2781702) (.var 2)) (.mul (.num 2256616) (.var
    3))) (.var 2)) (.mul (.num 358959) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1803487) (.var 2)) (.mul (.num 2079804) (.var 3))) (.var 2)) (.mul (.num
    551849) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    759712) (.var 2)) (.mul (.num 1187664) (.var 3))) (.var 2)) (.mul (.num 473867) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 206627) (.var 2)) (.mul
    (.num 435062) (.var 3))) (.var 2)) (.mul (.num 250643) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 34512) (.var 2)) (.mul (.num 101346) (.var 3)))
    (.var 2)) (.mul (.num 84172) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 3121) (.var 2)) (.mul (.num 14090) (.var 3))) (.var 2)) (.mul (.num
    17491) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    109) (.var 2)) (.mul (.num 982) (.var 3))) (.var 2)) (.mul (.num 2007) (.pow (.var 3) 2)))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.mul (.num 20) (.var 3)) (.var 2)) (.mul
    (.num 90) (.pow (.var 3) 2))) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 161694) (.var 1)) (.add (.mul (.num 740282) (.var 2)) (.mul (.num 194176)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1480111) (.var 2)) (.mul (.num 835242)
    (.var 3))) (.var 2)) (.mul (.num 65163) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1701709) (.var 2)) (.mul (.num 1555908) (.var 3))) (.var 2)) (.mul (.num 271677)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1243155) (.var
    2)) (.mul (.num 1654102) (.var 3))) (.var 2)) (.mul (.num 490341) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 599282) (.var 2)) (.mul (.num
    1110710) (.var 3))) (.var 2)) (.mul (.num 505481) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 190552) (.var 2)) (.mul (.num 490198) (.var 3)))
    (.var 2)) (.mul (.num 329484) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 38409) (.var 2)) (.mul (.num 142286) (.var 3))) (.var 2)) (.mul (.num
    140931) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    4417) (.var 2)) (.mul (.num 26036) (.var 3))) (.var 2)) (.mul (.num 39232) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 217) (.var 2)) (.mul (.num
    2668) (.var 3))) (.var 2)) (.mul (.num 6670) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1))
    (.mul (.add (.mul (.mul (.num 110) (.var 3)) (.var 2)) (.mul (.num 585) (.pow (.var 3) 2)))
    (.pow (.var 2) 8))) (.var 1)) (.mul (.mul (.num 16) (.pow (.var 3) 2)) (.pow (.var 2) 9))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 44550) (.var 1)) (.add (.mul (.num
    221094) (.var 2)) (.mul (.num 63324) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    482184) (.var 2)) (.mul (.num 301338) (.var 3))) (.var 2)) (.mul (.num 25605) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 609143) (.var 2)) (.mul (.num 627364)
    (.var 3))) (.var 2)) (.mul (.num 120843) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 493254) (.var 2)) (.mul (.num 754246) (.var 3))) (.var 2)) (.mul (.num
    250392) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    266412) (.var 2)) (.mul (.num 580652) (.var 3))) (.var 2)) (.mul (.num 301047) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 96226) (.var 2)) (.mul
    (.num 298634) (.var 3))) (.var 2)) (.mul (.num 232981) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 22447) (.var 2)) (.mul (.num 103140) (.var 3)))
    (.var 2)) (.mul (.num 120895) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 3069) (.var 2)) (.mul (.num 23140) (.var 3))) (.var 2)) (.mul (.num
    42078) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    187) (.var 2)) (.mul (.num 3058) (.var 3))) (.var 2)) (.mul (.num 9413) (.pow (.var 3) 2)))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.mul (.num 180) (.var 3)) (.var 2)) (.mul
    (.num 1207) (.pow (.var 3) 2))) (.pow (.var 2) 8))) (.var 1)) (.mul (.mul (.num 65) (.pow
    (.var 3) 2)) (.pow (.var 2) 9))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 5616) (.var 1)) (.add (.mul (.num 29970) (.var 2)) (.mul (.num 9396) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 70632) (.var 2)) (.mul (.num 48924) (.var 3)))
    (.var 2)) (.mul (.num 4554) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    96966) (.var 2)) (.mul (.num 112338) (.var 3))) (.var 2)) (.mul (.num 23985) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 85872) (.var 2)) (.mul (.num
    150282) (.var 3))) (.var 2)) (.mul (.num 56070) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 51098) (.var 2)) (.mul (.num 130000) (.var 3))) (.var
    2)) (.mul (.num 76977) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 20510) (.var 2)) (.mul (.num 75944) (.var 3))) (.var 2)) (.mul (.num 68938)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5373)
    (.var 2)) (.mul (.num 30162) (.var 3))) (.var 2)) (.mul (.num 42045) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 836) (.var 2)) (.mul (.num 7900)
    (.var 3))) (.var 2)) (.mul (.num 17548) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 59) (.var 2)) (.mul (.num 1244) (.var 3))) (.var 2)) (.mul
    (.num 4846) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.mul (.num
    90) (.var 3)) (.var 2)) (.mul (.num 804) (.pow (.var 3) 2))) (.pow (.var 2) 8))) (.var 1))
    (.mul (.mul (.num 61) (.pow (.var 3) 2)) (.pow (.var 2) 9))) (.pow (.var 1) 2)))) (.mul (.add
    (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.mul
    (.num 1) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add (.mul
    (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 10)
    (.var 2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul
    (.num 4) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3))
    (.var 2)) (.mul (.num 2) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.pow (.var 0) 3))) (.mul
    (.mul (.num 4) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 7)
    (.var 0)) (.add (.mul (.num 19) (.var 2)) (.mul (.num 14) (.var 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.num 17) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num 7) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 2)) (.mul (.num 6) (.var
    3))) (.var 2)) (.mul (.num 1) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul
    (.num 4) (.var 3)) (.var 2)) (.mul (.neg (.num 3)) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.var 0))) (.pow (.var
    0) 1))) (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 8) (.var
    0)) (.add (.mul (.num 17) (.var 2)) (.mul (.num 16) (.var 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.num 10) (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var 2)) (.mul (.num 8) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.neg (.num
    2)) (.var 3))) (.var 2)) (.mul (.neg (.num 9)) (.pow (.var 3) 2))) (.var 2))) (.pow (.var 0)
    2)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 3)))) (.pow (.var 0) 2))) (.mul
    (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3) (.var 0)) (.add (.mul
    (.num 6) (.var 2)) (.mul (.num 6) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 3) (.var
    2)) (.mul (.neg (.num 6)) (.var 3))) (.var 2)) (.mul (.num 3) (.pow (.var 3) 2)))) (.var 0))
    (.mul (.mul (.neg (.num 6)) (.pow (.var 3) 2)) (.var 2))) (.var 0)) (.mul (.mul (.num 3) (.pow
    (.var 3) 2)) (.pow (.var 2) 2)))) (.pow (.var 0) 3))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.mul (.num 1) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 27) (.var 0)) (.add (.mul (.num 345) (.var 2)) (.mul (.num 54) (.var 3)))) (.var 0))
    (.add (.mul (.add (.mul (.num 1385) (.var 2)) (.mul (.num 594) (.var 3))) (.var 2)) (.mul
    (.num 27) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2694) (.var 2))
    (.mul (.num 1884) (.var 3))) (.var 2)) (.mul (.num 261) (.pow (.var 3) 2))) (.var 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 2885) (.var 2)) (.mul (.num 2860) (.var 3))) (.var 2))
    (.mul (.num 649) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1733) (.var 2)) (.mul (.num 2472) (.var 3))) (.var 2)) (.mul (.num 680) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 543) (.var 2))
    (.mul (.num 1312) (.var 3))) (.var 2)) (.mul (.num 383) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 68) (.var 2)) (.mul (.num 414) (.var 3)))
    (.var 2)) (.mul (.num 203) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.mul (.num 58) (.var 3)) (.var 2)) (.mul (.num 109) (.pow (.var 3) 2))) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.mul (.num 24) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 2)))
    (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 45) (.var 0)) (.add (.mul (.num 531) (.var 2))
    (.mul (.num 90) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 1908) (.var 2)) (.mul
    (.num 858) (.var 3))) (.var 2)) (.mul (.num 45) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 3246) (.var 2)) (.mul (.num 2074) (.var 3))) (.var 2)) (.mul (.num
    369) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2964) (.var
    2)) (.mul (.num 2138) (.var 3))) (.var 2)) (.mul (.num 616) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1472) (.var 2)) (.mul (.num 1180) (.var
    3))) (.var 2)) (.mul (.num 224) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 367) (.var 2)) (.mul (.num 494) (.var 3))) (.var 2)) (.mul (.neg (.num
    46)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 35)
    (.var 2)) (.mul (.num 172) (.var 3))) (.var 2)) (.mul (.num 122) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 26) (.var 3)) (.var 2)) (.mul (.num 121)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 21) (.pow (.var 3) 2))
    (.pow (.var 2) 7))) (.var 0))) (.pow (.var 0) 1))) (.mul (.mul (.num 3) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 33) (.var 0)) (.add (.mul (.num 371) (.var 2)) (.mul (.num 66) (.var 3)))) (.var 0))
    (.add (.mul (.add (.mul (.num 1236) (.var 2)) (.mul (.num 558) (.var 3))) (.var 2)) (.mul
    (.num 33) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1885) (.var 2))
    (.mul (.num 988) (.var 3))) (.var 2)) (.mul (.num 235) (.pow (.var 3) 2))) (.var 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 1468) (.var 2)) (.mul (.num 452) (.var 3))) (.var 2))
    (.mul (.num 227) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 572) (.var 2)) (.mul (.neg (.num 66)) (.var 3))) (.var 2)) (.mul (.neg (.num 160))
    (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 95)
    (.var 2)) (.mul (.neg (.num 24)) (.var 3))) (.var 2)) (.mul (.neg (.num 110)) (.pow (.var 3)
    2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 2)) (.mul
    (.num 16) (.var 3))) (.var 2)) (.mul (.num 106) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var
    0)) (.mul (.add (.mul (.mul (.num 2) (.var 3)) (.var 2)) (.mul (.num 50) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 7))))
    (.pow (.var 0) 2))) (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9) (.var 0)) (.add (.mul (.num 99) (.var 2))
    (.mul (.num 18) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 318) (.var 2)) (.mul (.num
    138) (.var 3))) (.var 2)) (.mul (.num 9) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 456) (.var 2)) (.mul (.num 168) (.var 3))) (.var 2)) (.mul (.num 57) (.pow
    (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 321) (.var 2)) (.mul
    (.neg (.num 54)) (.var 3))) (.var 2)) (.mul (.num 21) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 105) (.var 2)) (.mul (.neg (.num 84)) (.var 3)))
    (.var 2)) (.mul (.neg (.num 78)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.num 12) (.pow (.var 2) 2)) (.mul (.num 21) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.mul (.num 6) (.var 3)) (.var 2)) (.mul (.num 57) (.pow (.var 3)
    2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.mul (.num 9) (.pow (.var 3) 2)) (.pow (.var 2)
    6)))) (.pow (.var 0) 3))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh0054.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh0054.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh0054.leading0 e g v + f * FullHigh0054.leading1 e g v +
        f^2 * FullHigh0054.remainder e f g v := by
  have hden : denominatorOne FullHigh0054.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh0054.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh0054.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 8589934592 15 10 2) lhs =
      value (Encoding4.vars 8589934592 15 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 8589934592 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 15 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 15 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullHigh0054.source e f g v =
      FullHigh0054.leading0 e g v + f * FullHigh0054.leading1 e g v +
        f^2 * FullHigh0054.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 8589934592 15 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh005Encoded4

namespace SPR.N6.Tail.CoreEndpoint.FullHigh005
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition4 (e f g v : ℝ) :
    FullHigh0054.source e f g v =
      FullHigh0054.leading0 e g v + f * FullHigh0054.leading1 e g v +
        f^2 * FullHigh0054.remainder e f g v :=
  FullHigh005Encoded4.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh005
