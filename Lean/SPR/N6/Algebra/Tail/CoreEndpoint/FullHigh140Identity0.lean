import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh140Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^0 layer of FullHigh140.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh140Encoded0
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.mul (.mul (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.mul (.mul (.num 1) (.var 3)) (.pow (.var 1) 3)) (.var 0)) (.mul (.add (.mul
    (.mul (.num 5) (.var 3)) (.var 1)) (.add (.mul (.mul (.num 2) (.var 3)) (.var 2)) (.mul (.num
    1) (.pow (.var 3) 2)))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.mul
    (.num 8) (.var 3)) (.var 1)) (.add (.mul (.mul (.num 6) (.var 3)) (.var 2)) (.mul (.num 4)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 1) (.var 3)) (.var 2)) (.mul
    (.num 2) (.pow (.var 3) 2))) (.var 2))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.mul (.num 6) (.var 3)) (.var 1)) (.add (.mul (.mul (.num 7) (.var 3))
    (.var 2)) (.mul (.num 4) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 2) (.var
    3)) (.var 2)) (.mul (.num 4) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.mul (.num 1)
    (.pow (.var 3) 2)) (.pow (.var 2) 2))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.mul (.num 2) (.var 3)) (.var 1)) (.add (.mul (.mul (.num 3) (.var 3))
    (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 1) (.var
    3)) (.var 2)) (.mul (.num 3) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.mul (.num 1)
    (.pow (.var 3) 2)) (.pow (.var 2) 2))) (.pow (.var 1) 4))) (.pow (.var 0) 2))) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.pow (.add (.var 1)
    (.var 2)) 4)) (.mul (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.mul (.add (.mul (.num 4) (.var 1)) (.mul (.num 6) (.var
    3))) (.pow (.var 1) 2)) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 34) (.var 1)) (.add
    (.mul (.num 14) (.var 2)) (.mul (.num 58) (.var 3)))) (.var 1)) (.add (.mul (.mul (.num 22)
    (.var 3)) (.var 2)) (.mul (.num 6) (.pow (.var 3) 2)))) (.pow (.var 1) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 126) (.var 1)) (.add (.mul (.num 102) (.var 2))
    (.mul (.num 214) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 16) (.var 2)) (.mul (.num
    160) (.var 3))) (.var 2)) (.mul (.num 48) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul
    (.mul (.num 26) (.var 3)) (.var 2)) (.mul (.num 22) (.pow (.var 3) 2))) (.var 2))) (.pow (.var
    1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 263) (.var 1))
    (.add (.mul (.num 313) (.var 2)) (.mul (.num 414) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 96) (.var 2)) (.mul (.num 454) (.var 3))) (.var 2)) (.mul (.num 137) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 2)) (.mul (.num 134) (.var
    3))) (.var 2)) (.mul (.num 125) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.mul (.num 10) (.var 3)) (.var 2)) (.mul (.num 26) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 335) (.var 1)) (.add (.mul (.num 522) (.var 2)) (.mul (.num 500) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 236) (.var 2)) (.mul (.num 726) (.var 3))) (.var 2)) (.mul
    (.num 185) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 29) (.var 2))
    (.mul (.num 304) (.var 3))) (.var 2)) (.mul (.num 247) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.mul (.num 36) (.var 3)) (.var 2)) (.mul (.num 94) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.mul (.num 10) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 261) (.var 1)) (.add (.mul (.num 499) (.var 2)) (.mul (.num 400) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 294) (.var 2)) (.mul (.num 727) (.var 3))) (.var 2)) (.mul
    (.num 154) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 52) (.var 2))
    (.mul (.num 400) (.var 3))) (.var 2)) (.mul (.num 266) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.mul (.num 65) (.var 3)) (.var 2)) (.mul (.num 137) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.mul (.num 21) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 115) (.var 1)) (.add (.mul (.num 258) (.var 2)) (.mul (.num 198) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 184) (.var 2)) (.mul (.num 435) (.var 3))) (.var 2)) (.mul
    (.num 82) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 41) (.var 2))
    (.mul (.num 302) (.var 3))) (.var 2)) (.mul (.num 174) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.mul (.num 65) (.var 3)) (.var 2)) (.mul (.num 115) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.mul (.num 23) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.pow (.var 1) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 22) (.var 1)) (.add (.mul (.num 56) (.var 2)) (.mul (.num 46) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 46) (.var 2)) (.mul (.num 118) (.var 3))) (.var 2)) (.mul
    (.num 24) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 2))
    (.mul (.num 98) (.var 3))) (.var 2)) (.mul (.num 62) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.mul (.num 26) (.var 3)) (.var 2)) (.mul (.num 52) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.mul (.num 14) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.pow (.var 1) 5)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var
    1)) (.var 2))) 4)) (.pow (.add (.var 1) (.var 2)) 3))) (.mul (.mul (.mul (.mul (.num 1) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.mul (.add (.mul (.num 12) (.var 1)) (.mul (.num 6) (.var 3))) (.var 1)) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 156) (.var 1)) (.add (.mul (.num 69) (.var 2)) (.mul (.num 114)
    (.var 3)))) (.var 1)) (.add (.mul (.mul (.num 42) (.var 3)) (.var 2)) (.mul (.num 6) (.pow
    (.var 3) 2)))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.num 824) (.var
    1)) (.add (.mul (.num 704) (.var 2)) (.mul (.num 739) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 135) (.var 2)) (.mul (.num 547) (.var 3))) (.var 2)) (.mul (.num 96) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 90) (.var 3)) (.var 2)) (.mul (.num 42) (.pow
    (.var 3) 2))) (.var 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 2390) (.var 1)) (.add (.mul (.num 2982) (.var 2)) (.mul (.num 2433) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 1093) (.var 2)) (.mul (.num 2696) (.var 3))) (.var 2))
    (.mul (.num 502) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 111) (.var
    2)) (.mul (.num 869) (.var 3))) (.var 2)) (.mul (.num 439) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 78) (.var 3)) (.var 2)) (.mul (.num 90) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 4230) (.var 1)) (.add (.mul (.num 6877) (.var 2)) (.mul (.num 4756)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 3642) (.var 2)) (.mul (.num 7013) (.var
    3))) (.var 2)) (.mul (.num 1273) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 698) (.var 2)) (.mul (.num 3310) (.var 3))) (.var 2)) (.mul (.num 1655) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33) (.var 2)) (.mul (.num 555)
    (.var 3))) (.var 2)) (.mul (.num 655) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 24) (.var 3)) (.var 2)) (.mul (.num 78) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 4724) (.var 1)) (.add (.mul (.num 9406) (.var 2)) (.mul (.num 5920)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 6432) (.var 2)) (.mul (.num 10945) (.var
    3))) (.var 2)) (.mul (.num 1833) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1758) (.var 2)) (.mul (.num 6819) (.var 3))) (.var 2)) (.mul (.num 3131) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 155) (.var 2)) (.mul (.num 1653)
    (.var 3))) (.var 2)) (.mul (.num 1770) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 123) (.var 3)) (.var 2)) (.mul (.num 379) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.mul (.num 24) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 3272) (.var 1)) (.add (.mul (.num 7669) (.var 2)) (.mul (.num 4682) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 6360) (.var 2)) (.mul (.num 10449) (.var 3))) (.var 2))
    (.mul (.num 1647) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2206)
    (.var 2)) (.mul (.num 8141) (.var 3))) (.var 2)) (.mul (.num 3484) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 270) (.var 2)) (.mul (.num 2604) (.var 3)))
    (.var 2)) (.mul (.num 2535) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 284) (.var 3)) (.var 2)) (.mul (.num 742) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.mul (.num 71) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.pow (.var 1)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 1290) (.var 1)) (.add (.mul (.num 3459) (.var 2)) (.mul (.num 2160) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 3337) (.var 2)) (.mul (.num 5658) (.var 3))) (.var 2)) (.mul
    (.num 886) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1375) (.var 2))
    (.mul (.num 5303) (.var 3))) (.var 2)) (.mul (.num 2254) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 207) (.var 2)) (.mul (.num 2108) (.var 3))) (.var 2))
    (.mul (.num 2035) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 303) (.var 3)) (.var 2)) (.mul (.num 770) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.mul (.num 103) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.pow (.var 1) 3))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 222)
    (.var 1)) (.add (.mul (.num 666) (.var 2)) (.mul (.num 444) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 725) (.var 2)) (.mul (.num 1332) (.var 3))) (.var 2)) (.mul (.num 224) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 340) (.var 2)) (.mul (.num 1450)
    (.var 3))) (.var 2)) (.mul (.num 674) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 59) (.var 2)) (.mul (.num 680) (.var 3))) (.var 2)) (.mul (.num 737)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 118) (.var 3))
    (.var 2)) (.mul (.num 348) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num
    61) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.pow (.var 1) 4)))) (.pow (.var 0) 2)) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.pow (.add (.var 1)
    (.var 2)) 2))) (.mul (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 8) (.var 1))
    (.var 0)) (.add (.mul (.add (.mul (.num 164) (.var 1)) (.add (.mul (.num 72) (.var 2)) (.mul
    (.num 48) (.var 3)))) (.var 1)) (.mul (.mul (.num 16) (.var 3)) (.var 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.num 1238) (.var 1)) (.add (.mul (.num 1062) (.var 2)) (.mul
    (.num 602) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 216) (.var 2)) (.mul (.num 418)
    (.var 3))) (.var 2)) (.mul (.num 40) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 64) (.var 3)) (.var 2)) (.mul (.num 16) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4934) (.var 1)) (.add (.mul (.num 6219) (.var
    2)) (.mul (.num 3186) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2441) (.var 2))
    (.mul (.num 3384) (.var 3))) (.var 2)) (.mul (.num 408) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 296) (.var 2)) (.mul (.num 1070) (.var 3))) (.var 2)) (.mul
    (.num 332) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 96) (.var
    3)) (.var 2)) (.mul (.num 64) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11887) (.var 1)) (.add (.mul (.num
    19614) (.var 2)) (.mul (.num 9423) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 11186)
    (.var 2)) (.mul (.num 13514) (.var 3))) (.var 2)) (.mul (.num 1724) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 2571) (.var 2)) (.mul (.num 6481) (.var 3))) (.var 2))
    (.mul (.num 2104) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    192) (.var 2)) (.mul (.num 1190) (.var 3))) (.var 2)) (.mul (.num 804) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 64) (.var 3)) (.var 2)) (.mul
    (.num 96) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 18321) (.var 1)) (.add (.mul (.num 37164)
    (.var 2)) (.mul (.num 17295) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 27462) (.var
    2)) (.mul (.num 31355) (.var 3))) (.var 2)) (.mul (.num 3977) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 9032) (.var 2)) (.mul (.num 20171) (.var 3))) (.var 2))
    (.mul (.num 6441) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1249) (.var 2)) (.mul (.num 5565) (.var 3))) (.var 2)) (.mul (.num 3612) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48) (.var 2)) (.mul (.num
    606) (.var 3))) (.var 2)) (.mul (.num 828) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.mul (.num 16) (.var 3)) (.var 2)) (.mul (.num 64) (.pow (.var 3) 2)))
    (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 18291) (.var 1)) (.add (.mul (.num 43843) (.var 2)) (.mul (.num
    20409) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 39448) (.var 2)) (.mul (.num 44934)
    (.var 3))) (.var 2)) (.mul (.num 5575) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 16574) (.var 2)) (.mul (.num 36412) (.var 3))) (.var 2)) (.mul (.num 11259) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3211) (.var 2)) (.mul
    (.num 13428) (.var 3))) (.var 2)) (.mul (.num 8234) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 221) (.var 2)) (.mul (.num 2193) (.var 3)))
    (.var 2)) (.mul (.num 2686) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 116) (.var 3)) (.var 2)) (.mul (.num 376) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.mul (.num 16) (.pow (.var 3) 2)) (.pow (.var 2) 5)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    11501) (.var 1)) (.add (.mul (.num 31691) (.var 2)) (.mul (.num 15195) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 33371) (.var 2)) (.mul (.num 39492) (.var 3))) (.var 2)) (.mul
    (.num 4906) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16824) (.var
    2)) (.mul (.num 38723) (.var 3))) (.var 2)) (.mul (.num 11970) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4073) (.var 2)) (.mul (.num 17905) (.var 3)))
    (.var 2)) (.mul (.num 10869) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 378) (.var 2)) (.mul (.num 3898) (.var 3))) (.var 2)) (.mul (.num
    4579) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 315)
    (.var 3)) (.var 2)) (.mul (.num 886) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.mul (.num 60) (.pow (.var 3) 2)) (.pow (.var 2) 5))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4156) (.var 1))
    (.add (.mul (.num 12895) (.var 2)) (.mul (.num 6526) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 15450) (.var 2)) (.mul (.num 19581) (.var 3))) (.var 2)) (.mul (.num 2528) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8975) (.var 2)) (.mul (.num
    22533) (.var 3))) (.var 2)) (.mul (.num 7312) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 2549) (.var 2)) (.mul (.num 12482) (.var 3))) (.var 2)) (.mul
    (.num 8049) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 285) (.var 2)) (.mul (.num 3357) (.var 3))) (.var 2)) (.mul (.num 4229) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 353) (.var 3)) (.var 2))
    (.mul (.num 1068) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.num 104)
    (.pow (.var 3) 2)) (.pow (.var 2) 5))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 660) (.var 1)) (.add
    (.mul (.num 2268) (.var 2)) (.mul (.num 1236) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 3026) (.var 2)) (.mul (.num 4200) (.var 3))) (.var 2)) (.mul (.num 588) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1968) (.var 2)) (.mul (.num 5526) (.var
    3))) (.var 2)) (.mul (.num 1986) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 630) (.var 2)) (.mul (.num 3534) (.var 3))) (.var 2)) (.mul (.num 2596)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 80)
    (.var 2)) (.mul (.num 1110) (.var 3))) (.var 2)) (.mul (.num 1650) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 138) (.var 3)) (.var 2)) (.mul (.num
    516) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.num 64) (.pow (.var 3)
    2)) (.pow (.var 2) 5))) (.pow (.var 1) 3)))) (.pow (.var 0) 3)) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.add (.var 1) (.var 2)))) (.mul (.mul
    (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 1)) (.mul (.num 10) (.var 2))) (.var
    0)) (.add (.mul (.add (.mul (.num 408) (.var 1)) (.add (.mul (.num 318) (.var 2)) (.mul (.num
    60) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 60) (.var 2)) (.mul (.num 20) (.var 3)))
    (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 2391) (.var 1)) (.add (.mul
    (.num 2884) (.var 2)) (.mul (.num 700) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    1113) (.var 2)) (.mul (.num 532) (.var 3))) (.var 2)) (.mul (.num 30) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 140) (.var 2)) (.mul (.num 92) (.var 3))) (.var
    2)) (.mul (.num 10) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 7974) (.var 1)) (.add (.mul (.num 12900) (.var 2)) (.mul (.num 3526)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 7436) (.var 2)) (.mul (.num 4180) (.var
    3))) (.var 2)) (.mul (.num 300) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1820) (.var 2)) (.mul (.num 1530) (.var 3))) (.var 2)) (.mul (.num 226) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 160) (.var 2)) (.mul (.num 176)
    (.var 3))) (.var 2)) (.mul (.num 36) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 16766) (.var 1)) (.add (.mul (.num
    33817) (.var 2)) (.mul (.num 10058) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 25674)
    (.var 2)) (.mul (.num 16210) (.var 3))) (.var 2)) (.mul (.num 1281) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 9147) (.var 2)) (.mul (.num 9090) (.var 3))) (.var 2))
    (.mul (.num 1514) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1514) (.var 2)) (.mul (.num 2114) (.var 3))) (.var 2)) (.mul (.num 525) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90) (.var 2)) (.mul (.num
    176) (.var 3))) (.var 2)) (.mul (.num 52) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 23146) (.var 1))
    (.add (.mul (.num 55684) (.var 2)) (.mul (.num 17864) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 52048) (.var 2)) (.mul (.num 36458) (.var 3))) (.var 2)) (.mul (.num 3056) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 23992) (.var 2)) (.mul (.num
    27550) (.var 3))) (.var 2)) (.mul (.num 4972) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 5642) (.var 2)) (.mul (.num 9614) (.var 3))) (.var 2)) (.mul
    (.num 2710) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 610) (.var 2)) (.mul (.num 1550) (.var 3))) (.var 2)) (.mul (.num 574) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 2)) (.mul
    (.num 92) (.var 3))) (.var 2)) (.mul (.num 40) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    21053) (.var 1)) (.add (.mul (.num 58636) (.var 2)) (.mul (.num 20308) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 64701) (.var 2)) (.mul (.num 50236) (.var 3))) (.var 2)) (.mul
    (.num 4459) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36191) (.var
    2)) (.mul (.num 47758) (.var 3))) (.var 2)) (.mul (.num 9361) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10791) (.var 2)) (.mul (.num 22162) (.var 3)))
    (.var 2)) (.mul (.num 7093) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1609) (.var 2)) (.mul (.num 5226) (.var 3))) (.var 2)) (.mul (.num
    2381) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    91) (.var 2)) (.mul (.num 574) (.var 3))) (.var 2)) (.mul (.num 348) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 20) (.var 3)) (.var 2)) (.mul (.num 18)
    (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12200) (.var 1)) (.add (.mul (.num
    38496) (.var 2)) (.mul (.num 14454) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 48717)
    (.var 2)) (.mul (.num 42034) (.var 3))) (.var 2)) (.mul (.num 4012) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 31747) (.var 2)) (.mul (.num 48104) (.var 3))) (.var
    2)) (.mul (.num 10448) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 11275) (.var 2)) (.mul (.num 27734) (.var 3))) (.var 2)) (.mul (.num 10320) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2073) (.var 2))
    (.mul (.num 8506) (.var 3))) (.var 2)) (.mul (.num 4876) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 154) (.var 2)) (.mul (.num 1316) (.var 3)))
    (.var 2)) (.mul (.num 1138) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 80) (.var 3)) (.var 2)) (.mul (.num 120) (.pow (.var 3) 2))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 6)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 4096) (.var 1)) (.add (.mul (.num 14401) (.var 2)) (.mul (.num 5890) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 20458) (.var 2)) (.mul (.num 19676) (.var 3))) (.var
    2)) (.mul (.num 2054) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    15094) (.var 2)) (.mul (.num 26258) (.var 3))) (.var 2)) (.mul (.num 6437) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6135) (.var 2)) (.mul (.num 17972)
    (.var 3))) (.var 2)) (.mul (.num 7912) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1309) (.var 2)) (.mul (.num 6690) (.var 3))) (.var 2)) (.mul
    (.num 4872) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 115) (.var 2)) (.mul (.num 1292) (.var 3))) (.var 2)) (.mul (.num 1585) (.pow (.var 3)
    2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 102) (.var 3)) (.var 2))
    (.mul (.num 259) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 17) (.pow
    (.var 3) 2)) (.pow (.var 2) 6))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 608) (.var 1)) (.add
    (.mul (.num 2350) (.var 2)) (.mul (.num 1052) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 3685) (.var 2)) (.mul (.num 3962) (.var 3))) (.var 2)) (.mul (.num 460) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3013) (.var 2)) (.mul (.num 6014) (.var
    3))) (.var 2)) (.mul (.num 1692) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1363) (.var 2)) (.mul (.num 4724) (.var 3))) (.var 2)) (.mul (.num 2493)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 325)
    (.var 2)) (.mul (.num 2036) (.var 3))) (.var 2)) (.mul (.num 1887) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 32) (.var 2)) (.mul (.num 458)
    (.var 3))) (.var 2)) (.mul (.num 777) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 42) (.var 3)) (.var 2)) (.mul (.num 165) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.mul (.num 14) (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.pow
    (.var 1) 2)))) (.pow (.var 0) 4)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0)
    (.var 1)) (.var 2))) 4)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.mul (.mul (.num
    1) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add
    (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num
    10) (.var 2)) (.mul (.num 4) (.var 3))) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var
    0)) (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 4) (.var 3))) (.pow (.var 2) 2))) (.var
    0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.var 0))) (.pow (.var 0) 8)) (.mul (.mul (.num 4) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var
    3)))) (.var 0)) (.add (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 16) (.var 3))) (.var
    2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var
    2)) (.mul (.num 20) (.var 3))) (.var 2)) (.mul (.num 8) (.pow (.var 3) 2))) (.var 2))) (.var
    0)) (.mul (.add (.mul (.mul (.num 8) (.var 3)) (.var 2)) (.mul (.num 10) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.pow (.var 0) 3))) (.pow (.var 0) 6))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.mul (.mul (.num 1) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12)
    (.var 0)) (.add (.mul (.num 172) (.var 2)) (.mul (.num 24) (.var 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.num 786) (.var 2)) (.mul (.num 300) (.var 3))) (.var 2)) (.mul (.num 12) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1734) (.var 2)) (.mul (.num 1152)
    (.var 3))) (.var 2)) (.mul (.num 140) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 2098) (.var 2)) (.mul (.num 2238) (.var 3))) (.var 2)) (.mul (.num
    504) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    1422) (.var 2)) (.mul (.num 2536) (.var 3))) (.var 2)) (.mul (.num 972) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 504) (.var 2)) (.mul (.num
    1704) (.var 3))) (.var 2)) (.mul (.num 1170) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 72) (.var 2)) (.mul (.num 624) (.var 3))) (.var 2)) (.mul
    (.num 870) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 94)
    (.var 3)) (.var 2)) (.mul (.num 354) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.mul (.num 58) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 3))) (.pow (.var 0) 6))
    (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 0)) (.add (.mul (.num 88) (.var 2))
    (.mul (.num 12) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 415) (.var 2)) (.mul (.num
    172) (.var 3))) (.var 2)) (.mul (.num 6) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 949) (.var 2)) (.mul (.num 802) (.var 3))) (.var 2)) (.mul (.num 84) (.pow
    (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1196) (.var 2)) (.mul
    (.num 1818) (.var 3))) (.var 2)) (.mul (.num 387) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 850) (.var 2)) (.mul (.num 2272) (.var 3)))
    (.var 2)) (.mul (.num 869) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 319) (.var 2)) (.mul (.num 1600) (.var 3))) (.var 2)) (.mul (.num 1076)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 49)
    (.var 2)) (.mul (.num 594) (.var 3))) (.var 2)) (.mul (.num 750) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 90) (.var 3)) (.var 2)) (.mul (.num 275)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 41) (.pow (.var 3) 2))
    (.pow (.var 2) 7))) (.pow (.var 0) 5))) (.pow (.var 0) 4))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh1400.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh1400.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh1400.leading0 e g v + f * FullHigh1400.leading1 e g v +
        f^2 * FullHigh1400.remainder e f g v := by
  have hden : denominatorOne FullHigh1400.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh1400.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh1400.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 34359738368 21 10 2) lhs =
      value (Encoding4.vars 34359738368 21 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 34359738368 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 21 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 21 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullHigh1400.source e f g v =
      FullHigh1400.leading0 e g v + f * FullHigh1400.leading1 e g v +
        f^2 * FullHigh1400.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 34359738368 21 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh140Encoded0

namespace SPR.N6.Tail.CoreEndpoint.FullHigh140
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition0 (e f g v : ℝ) :
    FullHigh1400.source e f g v =
      FullHigh1400.leading0 e g v + f * FullHigh1400.leading1 e g v +
        f^2 * FullHigh1400.remainder e f g v :=
  FullHigh140Encoded0.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh140
