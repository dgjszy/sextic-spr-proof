import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh131Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^7 layer of FullHigh131.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh131Encoded7
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.mul (.mul (.num 36) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 90) (.var 1))
    (.mul (.num 30) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 1272) (.var 1)) (.add (.mul
    (.num 972) (.var 2)) (.mul (.num 180) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 180) (.var
    2)) (.mul (.num 60) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num
    8094) (.var 1)) (.add (.mul (.num 9594) (.var 2)) (.mul (.num 2100) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 3630) (.var 2)) (.mul (.num 1488) (.var 3))) (.var 2)) (.mul
    (.num 90) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 450) (.var 2))
    (.mul (.num 228) (.var 3))) (.var 2)) (.mul (.num 30) (.pow (.var 3) 2))) (.var 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30084) (.var 1)) (.add (.mul (.num
    47952) (.var 2)) (.mul (.num 11094) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 27300)
    (.var 2)) (.mul (.num 11976) (.var 3))) (.var 2)) (.mul (.num 900) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 6672) (.var 2)) (.mul (.num 3714) (.var 3))) (.var 2))
    (.mul (.num 624) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    600) (.var 2)) (.mul (.num 312) (.var 3))) (.var 2)) (.mul (.num 84) (.pow (.var 3) 2))) (.pow
    (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    71514) (.var 1)) (.add (.mul (.num 142182) (.var 2)) (.mul (.num 34110) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 107244) (.var 2)) (.mul (.num 49248) (.var 3))) (.var 2)) (.mul
    (.num 4029) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38640) (.var
    2)) (.mul (.num 23046) (.var 3))) (.var 2)) (.mul (.num 4194) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6714) (.var 2)) (.mul (.num 3876) (.var 3)))
    (.var 2)) (.mul (.num 1107) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 450) (.var 2)) (.mul (.num 168) (.var 3))) (.var 2)) (.mul (.num 42)
    (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 112374) (.var 1)) (.add (.mul (.num 266058) (.var 2))
    (.mul (.num 66924) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 247932) (.var 2)) (.mul
    (.num 121368) (.var 3))) (.var 2)) (.mul (.num 10275) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 116706) (.var 2)) (.mul (.num 76716) (.var 3))) (.var 2)) (.mul
    (.num 14169) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    29358) (.var 2)) (.mul (.num 19872) (.var 3))) (.var 2)) (.mul (.num 5541) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3720) (.var 2)) (.mul (.num
    1812) (.var 3))) (.var 2)) (.mul (.num 375) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 180) (.var 2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul
    (.neg (.num 72)) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 116514) (.var 1)) (.add
    (.mul (.num 318372) (.var 2)) (.mul (.num 86256) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 350766) (.var 2)) (.mul (.num 190020) (.var 3))) (.var 2)) (.mul (.num 16584) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 201822) (.var 2)) (.mul (.num
    154272) (.var 3))) (.var 2)) (.mul (.num 29148) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 65334) (.var 2)) (.mul (.num 56652) (.var 3))) (.var 2)) (.mul
    (.num 16104) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 11748) (.var 2)) (.mul (.num 9132) (.var 3))) (.var 2)) (.mul (.num 2340) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1038) (.var 2)) (.mul
    (.num 456) (.var 3))) (.var 2)) (.mul (.neg (.num 378)) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 2)) (.mul (.neg (.num 12)) (.var
    3))) (.var 2)) (.mul (.neg (.num 78)) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 76782) (.var 1)) (.add (.mul (.num 236718) (.var 2)) (.mul (.num 71232) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 299148) (.var 2)) (.mul (.num 186372) (.var 3))) (.var
    2)) (.mul (.num 17496) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    201654) (.var 2)) (.mul (.num 188100) (.var 3))) (.var 2)) (.mul (.num 39192) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 78732) (.var 2)) (.mul (.num
    92880) (.var 3))) (.var 2)) (.mul (.num 31230) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 17880) (.var 2)) (.mul (.num 23574) (.var 3))) (.var
    2)) (.mul (.num 10284) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2178) (.var 2)) (.mul (.num 2964) (.var 3))) (.var 2)) (.mul (.num 1050)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 108)
    (.var 2)) (.mul (.num 150) (.var 3))) (.var 2)) (.mul (.neg (.num 72)) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.neg (.num 12)) (.pow (.var 3) 2)) (.pow (.var 2)
    6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 29160) (.var 1)) (.add (.mul (.num 99702) (.var 2)) (.mul
    (.num 34164) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 141336) (.var 2)) (.mul (.num
    104040) (.var 3))) (.var 2)) (.mul (.num 11124) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 108348) (.var 2)) (.mul (.num 126576) (.var 3))) (.var 2)) (.mul (.num
    31464) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48924)
    (.var 2)) (.mul (.num 79572) (.var 3))) (.var 2)) (.mul (.num 34944) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13146) (.var 2)) (.mul (.num
    28110) (.var 3))) (.var 2)) (.mul (.num 19788) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 1962) (.var 2)) (.mul (.num 5748) (.var 3))) (.var 2))
    (.mul (.num 6351) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 126) (.var 2)) (.mul (.num 666) (.var 3))) (.var 2)) (.mul (.num 1242) (.pow (.var
    3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 36) (.var 3)) (.var 2))
    (.mul (.num 141) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 6) (.pow
    (.var 3) 2)) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4860) (.var 1)) (.add
    (.mul (.num 18180) (.var 2)) (.mul (.num 7200) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 28416) (.var 2)) (.mul (.num 25020) (.var 3))) (.var 2)) (.mul (.num 3168) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24228) (.var 2)) (.mul (.num 35592)
    (.var 3))) (.var 2)) (.mul (.num 10980) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 12282) (.var 2)) (.mul (.num 27036) (.var 3))) (.var 2)) (.mul (.num
    15840) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    3744) (.var 2)) (.mul (.num 12024) (.var 3))) (.var 2)) (.mul (.num 12624) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 642) (.var 2)) (.mul (.num
    3228) (.var 3))) (.var 2)) (.mul (.num 6231) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 48) (.var 2)) (.mul (.num 504) (.var 3))) (.var 2)) (.mul
    (.num 1983) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num
    36) (.var 3)) (.var 2)) (.mul (.num 381) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1))
    (.mul (.mul (.num 33) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 1)))) (.pow (.mul (.add
    (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.mul (.mul (.mul (.num 12)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.mul (.num 3) (.var 1)) (.var 0)) (.add (.mul (.add (.mul (.num
    60) (.var 1)) (.add (.mul (.num 27) (.var 2)) (.mul (.num 18) (.var 3)))) (.var 1)) (.mul
    (.mul (.num 6) (.var 3)) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 540)
    (.var 1)) (.add (.mul (.num 480) (.var 2)) (.mul (.num 264) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 102) (.var 2)) (.mul (.num 198) (.var 3))) (.var 2)) (.mul (.num 15) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 36) (.var 3)) (.var 2)) (.mul (.num 6)
    (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 2814) (.var 1)) (.add (.mul (.num 3702) (.var 2)) (.mul (.num 1764) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 1560) (.var 2)) (.mul (.num 2034) (.var 3))) (.var 2)) (.mul
    (.num 195) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 210) (.var 2))
    (.mul (.num 750) (.var 3))) (.var 2)) (.mul (.num 168) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.mul (.num 90) (.var 3)) (.var 2)) (.mul (.num 36) (.pow (.var 3) 2)))
    (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 9360) (.var 1)) (.add (.mul (.num 16182) (.var 2)) (.mul (.num 6864) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 10083) (.var 2)) (.mul (.num 10572) (.var 3))) (.var 2))
    (.mul (.num 1134) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2676)
    (.var 2)) (.mul (.num 5838) (.var 3))) (.var 2)) (.mul (.num 1485) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 255) (.var 2)) (.mul (.num 1380) (.var 3)))
    (.var 2)) (.mul (.num 636) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.mul (.num 120) (.var 3)) (.var 2)) (.mul (.num 90) (.pow (.var 3) 2))) (.pow (.var 2) 3))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 20796)
    (.var 1)) (.add (.mul (.num 44268) (.var 2)) (.mul (.num 17208) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 36162) (.var 2)) (.mul (.num 32970) (.var 3))) (.var 2)) (.mul (.num
    3735) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14115) (.var 2))
    (.mul (.num 24006) (.var 3))) (.var 2)) (.mul (.num 6510) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 2616) (.var 2)) (.mul (.num 8298) (.var 3))) (.var 2))
    (.mul (.num 4161) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 183) (.var 2)) (.mul (.num 1374) (.var 3))) (.var 2)) (.mul (.num 1161) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 90) (.var 3)) (.var
    2)) (.mul (.num 120) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 31335) (.var 1)) (.add
    (.mul (.num 78816) (.var 2)) (.mul (.num 29226) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 79044) (.var 2)) (.mul (.num 66942) (.var 3))) (.var 2)) (.mul (.num 7698) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40254) (.var 2)) (.mul (.num 60288)
    (.var 3))) (.var 2)) (.mul (.num 16662) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 10869) (.var 2)) (.mul (.num 27114) (.var 3))) (.var 2)) (.mul (.num
    14016) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1452) (.var 2)) (.mul (.num 6378) (.var 3))) (.var 2)) (.mul (.num 5730) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 2)) (.mul (.num
    750) (.var 3))) (.var 2)) (.mul (.num 1143) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.mul (.num 36) (.var 3)) (.var 2)) (.mul (.num 90) (.pow (.var 3) 2)))
    (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 31680) (.var 1)) (.add (.mul (.num 91503) (.var 2))
    (.mul (.num 33948) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 108072) (.var 2)) (.mul
    (.num 90762) (.var 3))) (.var 2)) (.mul (.num 10482) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 67242) (.var 2)) (.mul (.num 97764) (.var 3))) (.var 2)) (.mul
    (.num 27108) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    23502) (.var 2)) (.mul (.num 54360) (.var 3))) (.var 2)) (.mul (.num 28140) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4515) (.var 2)) (.mul
    (.num 16536) (.var 3))) (.var 2)) (.mul (.num 14940) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 420) (.var 2)) (.mul (.num 2688) (.var 3)))
    (.var 2)) (.mul (.num 4257) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 12) (.var 2)) (.mul (.num 210) (.var 3))) (.var 2)) (.mul (.num 618)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 6) (.var 3))
    (.var 2)) (.mul (.num 36) (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 20592) (.var 1)) (.add (.mul (.num 66864) (.var 2)) (.mul (.num 25980) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 90333) (.var 2)) (.mul (.num 79704) (.var 3))) (.var 2))
    (.mul (.num 9456) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 65832)
    (.var 2)) (.mul (.num 100542) (.var 3))) (.var 2)) (.mul (.num 28626) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 27882) (.var 2)) (.mul (.num 67308)
    (.var 3))) (.var 2)) (.mul (.num 35592) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 6846) (.var 2)) (.mul (.num 25596) (.var 3))) (.var 2))
    (.mul (.num 23370) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 900) (.var 2)) (.mul (.num 5472) (.var 3))) (.var 2)) (.mul (.num 8622) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48) (.var 2))
    (.mul (.num 600) (.var 3))) (.var 2)) (.mul (.num 1749) (.pow (.var 3) 2))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.mul (.num 24) (.var 3)) (.var 2)) (.mul (.num 174) (.pow
    (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 6) (.pow (.var 3) 2)) (.pow
    (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 7776) (.var 1)) (.add (.mul (.num 27918)
    (.var 2)) (.mul (.num 11772) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 42210) (.var
    2)) (.mul (.num 40824) (.var 3))) (.var 2)) (.mul (.num 5184) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 34965) (.var 2)) (.mul (.num 59220) (.var 3))) (.var 2))
    (.mul (.num 18144) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 17184) (.var 2)) (.mul (.num 46662) (.var 3))) (.var 2)) (.mul (.num 26646) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5040) (.var 2))
    (.mul (.num 21576) (.var 3))) (.var 2)) (.mul (.num 21276) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 828) (.var 2)) (.mul (.num 5886) (.var 3)))
    (.var 2)) (.mul (.num 9933) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 60) (.var 2)) (.mul (.num 894) (.var 3))) (.var 2)) (.mul (.num 2694)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 60) (.var 3))
    (.var 2)) (.mul (.num 387) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num
    21) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    1296) (.var 1)) (.add (.mul (.num 5076) (.var 2)) (.mul (.num 2376) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 8442) (.var 2)) (.mul (.num 9180) (.var 3))) (.var 2)) (.mul
    (.num 1296) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7770) (.var 2))
    (.mul (.num 15036) (.var 3))) (.var 2)) (.mul (.num 5184) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 4296) (.var 2)) (.mul (.num 13608) (.var 3))) (.var
    2)) (.mul (.num 8880) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1440) (.var 2)) (.mul (.num 7392) (.var 3))) (.var 2)) (.mul (.num 8502)
    (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 276)
    (.var 2)) (.mul (.num 2442) (.var 3))) (.var 2)) (.mul (.num 4950) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24) (.var 2)) (.mul (.num 468)
    (.var 3))) (.var 2)) (.mul (.num 1776) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 42) (.var 3)) (.var 2)) (.mul (.num 372) (.pow (.var 3) 2))) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.mul (.num 36) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow
    (.var 1) 2)))) (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))) (.add
    (.var 1) (.var 2)))) (.mul (.mul (.num 28) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 75) (.var 1)) (.mul (.num 25) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num
    1235) (.var 1)) (.add (.mul (.num 955) (.var 2)) (.mul (.num 150) (.var 3)))) (.var 1)) (.mul
    (.add (.mul (.num 180) (.var 2)) (.mul (.num 50) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 9302) (.var 1)) (.add (.mul (.num 11213) (.var 2)) (.mul (.num
    2060) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 4361) (.var 2)) (.mul (.num 1470)
    (.var 3))) (.var 2)) (.mul (.num 75) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 560) (.var 2)) (.mul (.num 230) (.var 3))) (.var 2)) (.mul (.num 25) (.pow (.var
    3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 42054)
    (.var 1)) (.add (.mul (.num 68505) (.var 2)) (.mul (.num 13020) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 40343) (.var 2)) (.mul (.num 14168) (.var 3))) (.var 2)) (.mul (.num
    905) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10312) (.var 2)) (.mul
    (.num 4502) (.var 3))) (.var 2)) (.mul (.num 635) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 980) (.var 2)) (.mul (.num 394) (.var 3))) (.var 2)) (.mul
    (.num 90) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 126235) (.var 1)) (.add (.mul (.num 257924) (.var 2))
    (.mul (.num 49580) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 202656) (.var 2)) (.mul
    (.num 72336) (.var 3))) (.var 2)) (.mul (.num 4990) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 77132) (.var 2)) (.mul (.num 34734) (.var 3))) (.var 2)) (.mul (.num
    5284) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14355)
    (.var 2)) (.mul (.num 6088) (.var 3))) (.var 2)) (.mul (.num 1496) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1050) (.var 2)) (.mul (.num 270)
    (.var 3))) (.var 2)) (.mul (.num 82) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 263308) (.var 1))
    (.add (.mul (.num 644565) (.var 2)) (.mul (.num 125926) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 630619) (.var 2)) (.mul (.num 230864) (.var 3))) (.var 2)) (.mul (.num
    16452) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 317031) (.var 2))
    (.mul (.num 149438) (.var 3))) (.var 2)) (.mul (.num 23265) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 86843) (.var 2)) (.mul (.num 40090) (.var 3)))
    (.var 2)) (.mul (.num 9920) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 12314) (.var 2)) (.mul (.num 3700) (.var 3))) (.var 2)) (.mul (.num
    1085) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    700) (.var 2)) (.mul (.neg (.num 10)) (.var 3))) (.var 2)) (.mul (.neg (.num 62)) (.pow (.var
    3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 388462) (.var 1)) (.add (.mul (.num 1104588) (.var 2))
    (.mul (.num 223182) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1288565) (.var 2))
    (.mul (.num 495708) (.var 3))) (.var 2)) (.mul (.num 36113) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 801154) (.var 2)) (.mul (.num 409270) (.var 3))) (.var 2))
    (.mul (.num 64783) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 287400) (.var 2)) (.mul (.num 153042) (.var 3))) (.var 2)) (.mul (.num 38313) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 59436) (.var
    2)) (.mul (.num 24094) (.var 3))) (.var 2)) (.mul (.num 7393) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6491) (.var 2)) (.mul (.num 686) (.var
    3))) (.var 2)) (.mul (.neg (.num 290)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 280) (.var 2)) (.mul (.neg (.num 110)) (.var 3))) (.var 2))
    (.mul (.neg (.num 140)) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 404515)
    (.var 1)) (.add (.mul (.num 1306733) (.var 2)) (.mul (.num 279074) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 1764542) (.var 2)) (.mul (.num 733584) (.var 3))) (.var 2)) (.mul
    (.num 55458) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1301577) (.var
    2)) (.mul (.num 747698) (.var 3))) (.var 2)) (.mul (.num 123871) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 573656) (.var 2)) (.mul (.num 371058) (.var
    3))) (.var 2)) (.mul (.num 99705) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 154188) (.var 2)) (.mul (.num 90902) (.var 3))) (.var 2)) (.mul
    (.num 33658) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 24365) (.var 2)) (.mul (.num 9096) (.var 3))) (.var 2)) (.mul (.num 3503) (.pow (.var 3)
    2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2000) (.var 2)) (.mul
    (.neg (.num 66)) (.var 3))) (.var 2)) (.mul (.neg (.num 313)) (.pow (.var 3) 2))) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 2)) (.mul (.neg (.num 50))
    (.var 3))) (.var 2)) (.mul (.neg (.num 50)) (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 290844) (.var 1)) (.add (.mul (.num 1049760) (.var 2)) (.mul (.num
    241632) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1606092) (.var 2)) (.mul (.num
    738304) (.var 3))) (.var 2)) (.mul (.num 59550) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1365964) (.var 2)) (.mul (.num 905720) (.var 3))) (.var 2)) (.mul
    (.num 163632) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    710441) (.var 2)) (.mul (.num 572720) (.var 3))) (.var 2)) (.mul (.num 175402) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 233080) (.var 2)) (.mul
    (.num 199376) (.var 3))) (.var 2)) (.mul (.num 93690) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 47528) (.var 2)) (.mul (.num 37780) (.var 3)))
    (.var 2)) (.mul (.num 26978) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 5604) (.var 2)) (.mul (.num 3542) (.var 3))) (.var 2)) (.mul (.num
    4522) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    318) (.var 2)) (.mul (.num 100) (.var 3))) (.var 2)) (.mul (.num 504) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 2)) (.mul (.neg
    (.num 6)) (.var 3))) (.var 2)) (.mul (.num 30) (.pow (.var 3) 2))) (.pow (.var 2) 7)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 137286) (.var 1)) (.add (.mul (.num 546608) (.var 2))
    (.mul (.num 137380) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 932408) (.var 2))
    (.mul (.num 480280) (.var 3))) (.var 2)) (.mul (.num 42312) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 895594) (.var 2)) (.mul (.num 693048) (.var 3))) (.var 2))
    (.mul (.num 140370) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 534646) (.var 2)) (.mul (.num 537460) (.var 3))) (.var 2)) (.mul (.num 192364) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 205791) (.var
    2)) (.mul (.num 245470) (.var 3))) (.var 2)) (.mul (.num 143846) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50873) (.var 2)) (.mul (.num
    68676) (.var 3))) (.var 2)) (.mul (.num 66274) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 7683) (.var 2)) (.mul (.num 11990) (.var 3))) (.var
    2)) (.mul (.num 20331) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 622) (.var 2)) (.mul (.num 1278) (.var 3))) (.var 2)) (.mul (.num 4198)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 19)
    (.var 2)) (.mul (.num 66) (.var 3))) (.var 2)) (.mul (.num 503) (.pow (.var 3) 2))) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.mul (.num 22) (.pow (.var 3) 2)) (.pow (.var 2) 8)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 38232) (.var 1)) (.add (.mul (.num 166248)
    (.var 2)) (.mul (.num 45864) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 312300) (.var
    2)) (.mul (.num 180864) (.var 3))) (.var 2)) (.mul (.num 17568) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 333552) (.var 2)) (.mul (.num 300696) (.var 3))) (.var 2))
    (.mul (.num 68688) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 224006) (.var 2)) (.mul (.num 276608) (.var 3))) (.var 2)) (.mul (.num 115050) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 98448) (.var
    2)) (.mul (.num 156018) (.var 3))) (.var 2)) (.mul (.num 109968) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 28367) (.var 2)) (.mul (.num
    56884) (.var 3))) (.var 2)) (.mul (.num 67701) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 5154) (.var 2)) (.mul (.num 13814) (.var 3))) (.var
    2)) (.mul (.num 28519) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 530) (.var 2)) (.mul (.num 2218) (.var 3))) (.var 2)) (.mul (.num 8223)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 23)
    (.var 2)) (.mul (.num 210) (.var 3))) (.var 2)) (.mul (.num 1489) (.pow (.var 3) 2))) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.mul (.num 8) (.var 3)) (.var 2)) (.mul (.num 135)
    (.pow (.var 3) 2))) (.pow (.var 2) 8))) (.var 1)) (.mul (.mul (.num 3) (.pow (.var 3) 2))
    (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4752)
    (.var 1)) (.add (.mul (.num 22392) (.var 2)) (.mul (.num 6768) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 45882) (.var 2)) (.mul (.num 29736) (.var 3))) (.var 2)) (.mul (.num
    3168) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 53848) (.var 2))
    (.mul (.num 55964) (.var 3))) (.var 2)) (.mul (.num 14256) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40077) (.var 2)) (.mul (.num 59456) (.var 3)))
    (.var 2)) (.mul (.num 28104) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 19721) (.var 2)) (.mul (.num 39686) (.var 3))) (.var 2)) (.mul (.num
    32358) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    6448) (.var 2)) (.mul (.num 17588) (.var 3))) (.var 2)) (.mul (.num 24466) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1355) (.var 2)) (.mul (.num
    5322) (.var 3))) (.var 2)) (.mul (.num 12827) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 166) (.var 2)) (.mul (.num 1090) (.var 3))) (.var 2))
    (.mul (.num 4689) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 9) (.var 2)) (.mul (.num 138) (.var 3))) (.var 2)) (.mul (.num 1138) (.pow (.var
    3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.mul (.num 8) (.var 3)) (.var 2))
    (.mul (.num 162) (.pow (.var 3) 2))) (.pow (.var 2) 8))) (.var 1)) (.mul (.mul (.num 10) (.pow
    (.var 3) 2)) (.pow (.var 2) 9))) (.var 1)))) (.mul (.add (.var 0) (.var 1)) (.add (.add (.var
    0) (.var 1)) (.var 2))))) (.mul (.mul (.mul (.num 12) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 45) (.var 1)) (.mul (.num 15) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num
    723) (.var 1)) (.add (.mul (.num 558) (.var 2)) (.mul (.num 90) (.var 3)))) (.var 1)) (.mul
    (.add (.mul (.num 105) (.var 2)) (.mul (.num 30) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 5292) (.var 1)) (.add (.mul (.num 6360) (.var 2)) (.mul (.num
    1200) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2463) (.var 2)) (.mul (.num 852)
    (.var 3))) (.var 2)) (.mul (.num 45) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 315) (.var 2)) (.mul (.num 132) (.var 3))) (.var 2)) (.mul (.num 15) (.pow (.var
    3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 23022)
    (.var 1)) (.add (.mul (.num 37329) (.var 2)) (.mul (.num 7332) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 21855) (.var 2)) (.mul (.num 7920) (.var 3))) (.var 2)) (.mul (.num
    525) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5553) (.var 2)) (.mul
    (.num 2478) (.var 3))) (.var 2)) (.mul (.num 366) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 525) (.var 2)) (.mul (.num 210) (.var 3))) (.var 2)) (.mul
    (.num 51) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 65553) (.var 1)) (.add (.mul (.num 133026) (.var 2)) (.mul
    (.num 26628) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 103671) (.var 2)) (.mul (.num
    38424) (.var 3))) (.var 2)) (.mul (.num 2784) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 39117) (.var 2)) (.mul (.num 18078) (.var 3))) (.var 2)) (.mul (.num 2919)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7224) (.var 2))
    (.mul (.num 3042) (.var 3))) (.var 2)) (.mul (.num 804) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 525) (.var 2)) (.mul (.num 120) (.var 3)))
    (.var 2)) (.mul (.num 39) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 127248) (.var 1)) (.add (.mul
    (.num 308550) (.var 2)) (.mul (.num 63450) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    298509) (.var 2)) (.mul (.num 114732) (.var 3))) (.var 2)) (.mul (.num 8664) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 148224) (.var 2)) (.mul (.num 72534) (.var
    3))) (.var 2)) (.mul (.num 12063) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 40098) (.var 2)) (.mul (.num 18588) (.var 3))) (.var 2)) (.mul (.num 4953)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5616)
    (.var 2)) (.mul (.num 1506) (.var 3))) (.var 2)) (.mul (.num 459) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 315) (.var 2)) (.mul (.neg (.num
    30)) (.var 3))) (.var 2)) (.mul (.neg (.num 45)) (.pow (.var 3) 2))) (.pow (.var 2) 4))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 170202) (.var 1)) (.add (.mul (.num 477900) (.var 2)) (.mul (.num 103362) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 549255) (.var 2)) (.mul (.num 226314) (.var 3))) (.var
    2)) (.mul (.num 17631) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    335769) (.var 2)) (.mul (.num 182730) (.var 3))) (.var 2)) (.mul (.num 31125) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 118248) (.var 2)) (.mul (.num
    65784) (.var 3))) (.var 2)) (.mul (.num 17784) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 23958) (.var 2)) (.mul (.num 9534) (.var 3))) (.var
    2)) (.mul (.num 3054) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2547) (.var 2)) (.mul (.num 108) (.var 3))) (.var 2)) (.mul (.neg (.num
    261)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    105) (.var 2)) (.mul (.neg (.num 60)) (.var 3))) (.var 2)) (.mul (.neg (.num 75)) (.pow (.var
    3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 154683) (.var 1)) (.add (.mul (.num 491631)
    (.var 2)) (.mul (.num 115158) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 651198)
    (.var 2)) (.mul (.num 298794) (.var 3))) (.var 2)) (.mul (.num 24606) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 469746) (.var 2)) (.mul (.num 299208) (.var 3)))
    (.var 2)) (.mul (.num 54576) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 201831) (.var 2)) (.mul (.num 145080) (.var 3))) (.var 2)) (.mul (.num 43500)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 52644)
    (.var 2)) (.mul (.num 34578) (.var 3))) (.var 2)) (.mul (.num 14550) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7983) (.var 2)) (.mul (.num 3390)
    (.var 3))) (.var 2)) (.mul (.num 1581) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 609) (.var 2)) (.mul (.neg (.num 18)) (.var 3))) (.var 2)) (.mul
    (.neg (.num 84)) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 15) (.var 2)) (.mul (.neg (.num 18)) (.var 3))) (.var 2)) (.mul (.neg (.num 15))
    (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 91314) (.var 1)) (.add
    (.mul (.num 322881) (.var 2)) (.mul (.num 84108) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 482031) (.var 2)) (.mul (.num 254058) (.var 3))) (.var 2)) (.mul (.num 23058) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 398334) (.var 2)) (.mul (.num
    307578) (.var 3))) (.var 2)) (.mul (.num 63774) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 200295) (.var 2)) (.mul (.num 192240) (.var 3))) (.var 2)) (.mul
    (.num 69486) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 63057) (.var 2)) (.mul (.num 66972) (.var 3))) (.var 2)) (.mul (.num 38730) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12138) (.var 2))
    (.mul (.num 13278) (.var 3))) (.var 2)) (.mul (.num 12390) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1293) (.var 2)) (.mul (.num 1476) (.var
    3))) (.var 2)) (.mul (.num 2541) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 57) (.var 2)) (.mul (.num 78) (.var 3))) (.var 2)) (.mul (.num 342)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 21) (.pow (.var 3) 2))
    (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 31590) (.var 1)) (.add (.mul
    (.num 122580) (.var 2)) (.mul (.num 36180) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    202743) (.var 2)) (.mul (.num 125064) (.var 3))) (.var 2)) (.mul (.num 12960) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 187737) (.var 2)) (.mul (.num 178374)
    (.var 3))) (.var 2)) (.mul (.num 43740) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 107268) (.var 2)) (.mul (.num 137262) (.var 3))) (.var 2)) (.mul (.num
    61794) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    39084) (.var 2)) (.mul (.num 63066) (.var 3))) (.var 2)) (.mul (.num 48744) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8940) (.var 2)) (.mul
    (.num 18324) (.var 3))) (.var 2)) (.mul (.num 24396) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1179) (.var 2)) (.mul (.num 3480) (.var 3)))
    (.var 2)) (.mul (.num 8247) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 69) (.var 2)) (.mul (.num 414) (.var 3))) (.var 2)) (.mul (.num 1821)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num 24) (.var 3))
    (.var 2)) (.mul (.num 219) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.mul (.num
    9) (.pow (.var 3) 2)) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    4860) (.var 1)) (.add (.mul (.num 20466) (.var 2)) (.mul (.num 6912) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 36990) (.var 2)) (.mul (.num 26892) (.var 3))) (.var 2)) (.mul
    (.num 3240) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 37725) (.var
    2)) (.mul (.num 44076) (.var 3))) (.var 2)) (.mul (.num 12960) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 23955) (.var 2)) (.mul (.num 40074) (.var 3)))
    (.var 2)) (.mul (.num 22482) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 9804) (.var 2)) (.mul (.num 22524) (.var 3))) (.var 2)) (.mul (.num
    22626) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2553) (.var 2)) (.mul (.num 8298) (.var 3))) (.var 2)) (.mul (.num 14883) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 390) (.var 2)) (.mul (.num
    2046) (.var 3))) (.var 2)) (.mul (.num 6705) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 27) (.var 2)) (.mul (.num 318) (.var 3))) (.var 2)) (.mul
    (.num 2022) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num
    24) (.var 3)) (.var 2)) (.mul (.num 366) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1))
    (.mul (.mul (.num 30) (.pow (.var 3) 2)) (.pow (.var 2) 8))) (.var 1)))) (.var 0)) (.mul (.add
    (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))))) (.mul (.num 20) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 1)) (.mul
    (.num 2) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 128) (.var 1)) (.add (.mul (.num
    102) (.var 2)) (.mul (.num 12) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 20) (.var 2))
    (.mul (.num 4) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num
    1247) (.var 1)) (.add (.mul (.num 1560) (.var 2)) (.mul (.num 220) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 641) (.var 2)) (.mul (.num 164) (.var 3))) (.var 2)) (.mul (.num 6)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 88) (.var 2)) (.mul (.num
    28) (.var 3))) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 7356) (.var 1)) (.add (.mul (.num 12484) (.var 2))
    (.mul (.num 1866) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 7810) (.var 2)) (.mul
    (.num 2164) (.var 3))) (.var 2)) (.mul (.num 100) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2156) (.var 2)) (.mul (.num 782) (.var 3))) (.var 2)) (.mul (.num 74)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 224) (.var 2))
    (.mul (.num 88) (.var 3))) (.var 2)) (.mul (.num 12) (.pow (.var 3) 2))) (.pow (.var 2) 2))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 29354) (.var 1))
    (.add (.mul (.num 62707) (.var 2)) (.mul (.num 9690) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 52536) (.var 2)) (.mul (.num 15298) (.var 3))) (.var 2)) (.mul (.num 771) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 21713) (.var 2)) (.mul (.num
    8546) (.var 3))) (.var 2)) (.mul (.num 890) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 4454) (.var 2)) (.mul (.num 2002) (.var 3))) (.var 2)) (.mul
    (.num 311) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 364) (.var 2)) (.mul (.num 168) (.var 3))) (.var 2)) (.mul (.num 32) (.pow (.var 3) 2)))
    (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 83783) (.var 1)) (.add (.mul (.num 215247) (.var 2)) (.mul (.num 34366)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 225379) (.var 2)) (.mul (.num 68932) (.var
    3))) (.var 2)) (.mul (.num 3644) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 123605) (.var 2)) (.mul (.num 52528) (.var 3))) (.var 2)) (.mul (.num 5774) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 37570) (.var 2)) (.mul (.num
    19020) (.var 3))) (.var 2)) (.mul (.num 3182) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 6004) (.var 2)) (.mul (.num 3298) (.var 3))) (.var 2))
    (.mul (.num 716) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 392) (.var 2)) (.mul (.num 224) (.var 3))) (.var 2)) (.mul (.num 56) (.pow (.var
    3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 176175) (.var 1)) (.add (.mul (.num 527867) (.var 2))
    (.mul (.num 87804) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 661640) (.var 2)) (.mul
    (.num 214556) (.var 3))) (.var 2)) (.mul (.num 11788) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 450844) (.var 2)) (.mul (.num 208630) (.var 3))) (.var 2)) (.mul
    (.num 24042) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    180613) (.var 2)) (.mul (.num 103486) (.var 3))) (.var 2)) (.mul (.num 18508) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 42477) (.var 2)) (.mul
    (.num 27782) (.var 3))) (.var 2)) (.mul (.num 6732) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5392) (.var 2)) (.mul (.num 3878) (.var 3)))
    (.var 2)) (.mul (.num 1178) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 280) (.var 2)) (.mul (.num 224) (.var 3))) (.var 2)) (.mul (.num 84)
    (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 276612) (.var 1)) (.add (.mul
    (.num 945463) (.var 2)) (.mul (.num 165678) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 1377460) (.var 2)) (.mul (.num 479222) (.var 3))) (.var 2)) (.mul (.num 27490) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1118864) (.var 2)) (.mul (.num
    570102) (.var 3))) (.var 2)) (.mul (.num 69419) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 554190) (.var 2)) (.mul (.num 362428) (.var 3))) (.var 2)) (.mul
    (.num 69945) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 170901) (.var 2)) (.mul (.num 133666) (.var 3))) (.var 2)) (.mul (.num 36259) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 31774) (.var
    2)) (.mul (.num 28846) (.var 3))) (.var 2)) (.mul (.num 10395) (.pow (.var 3) 2))) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3196) (.var 2)) (.mul (.num 3402) (.var
    3))) (.var 2)) (.mul (.num 1620) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 128) (.var 2)) (.mul (.num 168) (.var 3))) (.var 2)) (.mul (.num 112)
    (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 324570) (.var 1))
    (.add (.mul (.num 1244502) (.var 2)) (.mul (.num 232206) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 2062799) (.var 2)) (.mul (.num 778026) (.var 3))) (.var 2)) (.mul (.num
    47077) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1941159) (.var 2))
    (.mul (.num 1098870) (.var 3))) (.var 2)) (.mul (.num 143116) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1141746) (.var 2)) (.mul (.num 856892) (.var
    3))) (.var 2)) (.mul (.num 180602) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 433516) (.var 2)) (.mul (.num 405344) (.var 3))) (.var 2)) (.mul
    (.num 123788) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 105251) (.var 2)) (.mul (.num 119796) (.var 3))) (.var 2)) (.mul (.num 50567) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15451) (.var
    2)) (.mul (.num 21676) (.var 3))) (.var 2)) (.mul (.num 12574) (.pow (.var 3) 2))) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1196) (.var 2)) (.mul (.num 2174) (.var
    3))) (.var 2)) (.mul (.num 1792) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 34) (.var 2)) (.mul (.num 88) (.var 3))) (.var 2)) (.mul (.num 112)
    (.pow (.var 3) 2))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 281283)
    (.var 1)) (.add (.mul (.num 1193982) (.var 2)) (.mul (.num 239274) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 2214949) (.var 2)) (.mul (.num 912666) (.var 3))) (.var 2)) (.mul
    (.num 58858) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2364725) (.var
    2)) (.mul (.num 1495266) (.var 3))) (.var 2)) (.mul (.num 210467) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1606127) (.var 2)) (.mul (.num 1385036)
    (.var 3))) (.var 2)) (.mul (.num 321398) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 721544) (.var 2)) (.mul (.num 802328) (.var 3))) (.var 2))
    (.mul (.num 276215) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 214867) (.var 2)) (.mul (.num 302486) (.var 3))) (.var 2)) (.mul (.num 147833)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 41037)
    (.var 2)) (.mul (.num 74222) (.var 3))) (.var 2)) (.mul (.num 51036) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4622) (.var 2)) (.mul (.num 11300)
    (.var 3))) (.var 2)) (.mul (.num 11145) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 254) (.var 2)) (.mul (.num 930) (.var 3))) (.var 2)) (.mul
    (.num 1388) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 4) (.var 2)) (.mul (.num 28) (.var 3))) (.var 2)) (.mul (.num 72) (.pow (.var 3) 2)))
    (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 175068) (.var
    1)) (.add (.mul (.num 813828) (.var 2)) (.mul (.num 176280) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 1667760) (.var 2)) (.mul (.num 754404) (.var 3))) (.var 2)) (.mul (.num
    52278) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1987710) (.var 2))
    (.mul (.num 1407084) (.var 3))) (.var 2)) (.mul (.num 215532) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1527127) (.var 2)) (.mul (.num 1510240) (.var
    3))) (.var 2)) (.mul (.num 387326) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 789521) (.var 2)) (.mul (.num 1035836) (.var 3))) (.var 2))
    (.mul (.num 401212) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 277108) (.var 2)) (.mul (.num 475104) (.var 3))) (.var 2)) (.mul (.num 266082)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 64642)
    (.var 2)) (.mul (.num 147190) (.var 3))) (.var 2)) (.mul (.num 117786) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9430) (.var 2)) (.mul (.num
    30018) (.var 3))) (.var 2)) (.mul (.num 34730) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 751) (.var 2)) (.mul (.num 3718) (.var 3))) (.var 2))
    (.mul (.num 6472) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 23) (.var 2)) (.mul (.num 230) (.var 3))) (.var 2)) (.mul (.num 664) (.pow (.var
    3) 2))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2))
    (.mul (.num 26) (.pow (.var 3) 2))) (.pow (.var 2) 9)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 74106) (.var 1)) (.add (.mul (.num 373854) (.var 2)) (.mul
    (.num 87900) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 837288) (.var 2)) (.mul (.num
    416856) (.var 3))) (.var 2)) (.mul (.num 31224) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1099706) (.var 2)) (.mul (.num 871516) (.var 3))) (.var 2)) (.mul
    (.num 145908) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    940490) (.var 2)) (.mul (.num 1062700) (.var 3))) (.var 2)) (.mul (.num 301720) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 548121) (.var 2)) (.mul
    (.num 841218) (.var 3))) (.var 2)) (.mul (.num 365750) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 220488) (.var 2)) (.mul (.num 453794) (.var 3)))
    (.var 2)) (.mul (.num 289250) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 60322) (.var 2)) (.mul (.num 169398) (.var 3))) (.var 2)) (.mul (.num
    156153) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    10682) (.var 2)) (.mul (.num 43112) (.var 3))) (.var 2)) (.mul (.num 57955) (.pow (.var 3)
    2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1093) (.var 2)) (.mul
    (.num 7072) (.var 3))) (.var 2)) (.mul (.num 14351) (.pow (.var 3) 2))) (.pow (.var 2) 7)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48) (.var 2)) (.mul (.num 654) (.var 3))) (.var
    2)) (.mul (.num 2185) (.pow (.var 3) 2))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul
    (.mul (.num 24) (.var 3)) (.var 2)) (.mul (.num 170) (.pow (.var 3) 2))) (.pow (.var 2) 9)))
    (.var 1)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 10)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 19116) (.var 1)) (.add (.mul (.num
    103842) (.var 2)) (.mul (.num 26568) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    251874) (.var 2)) (.mul (.num 138132) (.var 3))) (.var 2)) (.mul (.num 11232) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 360678) (.var 2)) (.mul (.num 319524)
    (.var 3))) (.var 2)) (.mul (.num 58644) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 338940) (.var 2)) (.mul (.num 435600) (.var 3))) (.var 2)) (.mul (.num
    137082) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    219098) (.var 2)) (.mul (.num 390082) (.var 3))) (.var 2)) (.mul (.num 190236) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 98901) (.var 2)) (.mul
    (.num 241298) (.var 3))) (.var 2)) (.mul (.num 174637) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30827) (.var 2)) (.mul (.num 104998) (.var 3)))
    (.var 2)) (.mul (.num 111228) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 6350) (.var 2)) (.mul (.num 31844) (.var 3))) (.var 2)) (.mul (.num
    49768) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    779) (.var 2)) (.mul (.num 6438) (.var 3))) (.var 2)) (.mul (.num 15360) (.pow (.var 3) 2)))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 43) (.var 2)) (.mul (.num
    778) (.var 3))) (.var 2)) (.mul (.num 3088) (.pow (.var 3) 2))) (.pow (.var 2) 8))) (.var 1))
    (.mul (.add (.mul (.mul (.num 42) (.var 3)) (.var 2)) (.mul (.num 356) (.pow (.var 3) 2)))
    (.pow (.var 2) 9))) (.var 1)) (.mul (.mul (.num 17) (.pow (.var 3) 2)) (.pow (.var 2) 10)))
    (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2268)
    (.var 1)) (.add (.mul (.num 13176) (.var 2)) (.mul (.num 3672) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 34344) (.var 2)) (.mul (.num 20736) (.var 3))) (.var 2)) (.mul (.num
    1836) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 53136) (.var 2))
    (.mul (.num 52488) (.var 3))) (.var 2)) (.mul (.num 10584) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 54279) (.var 2)) (.mul (.num 78948) (.var 3)))
    (.var 2)) (.mul (.num 27576) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 38406) (.var 2)) (.mul (.num 78702) (.var 3))) (.var 2)) (.mul (.num
    43092) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    19131) (.var 2)) (.mul (.num 54726) (.var 3))) (.var 2)) (.mul (.num 45042) (.pow (.var 3)
    2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6645) (.var 2)) (.mul
    (.num 27066) (.var 3))) (.var 2)) (.mul (.num 33087) (.pow (.var 3) 2))) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1544) (.var 2)) (.mul (.num 9456) (.var 3)))
    (.var 2)) (.mul (.num 17358) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 217) (.var 2)) (.mul (.num 2242) (.var 3))) (.var 2)) (.mul (.num
    6429) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    14) (.var 2)) (.mul (.num 326) (.var 3))) (.var 2)) (.mul (.num 1607) (.pow (.var 3) 2)))
    (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.mul (.num 22) (.var 3)) (.var 2)) (.mul
    (.num 244) (.pow (.var 3) 2))) (.pow (.var 2) 9))) (.var 1)) (.mul (.mul (.num 17) (.pow (.var
    3) 2)) (.pow (.var 2) 10))) (.pow (.var 1) 2)))))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.add (.add (.add (.add (.mul (.num 4) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 2) (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var
    0)) (.add (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 4) (.var 3))) (.var 2)) (.mul
    (.num 2) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 4)
    (.var 3))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2))
    (.mul (.num 2) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 4) (.pow
    (.var 3) 2)) (.pow (.var 2) 3))) (.var 0))) (.mul (.mul (.num 28) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 5) (.var 0)) (.add (.mul (.num 11) (.var 2)) (.mul
    (.num 10) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 7) (.var 2)) (.mul (.neg (.num
    8)) (.var 3))) (.var 2)) (.mul (.num 5) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1) (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var 2)) (.mul (.neg (.num 9))
    (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var
    2) 2))) (.var 0)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 3)))) (.pow (.var 0)
    1))) (.mul (.mul (.num 84) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3) (.var 0))
    (.add (.mul (.num 6) (.var 2)) (.mul (.num 6) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul
    (.num 3) (.var 2)) (.mul (.neg (.num 6)) (.var 3))) (.var 2)) (.mul (.num 3) (.pow (.var 3)
    2)))) (.var 0)) (.mul (.mul (.neg (.num 6)) (.pow (.var 3) 2)) (.var 2))) (.var 0)) (.mul
    (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 2)))) (.pow (.var 0) 2))) (.mul (.num 12)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 15) (.var 0)) (.add
    (.mul (.num 36) (.var 2)) (.mul (.num 30) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num
    27) (.var 2)) (.mul (.num 40) (.var 3))) (.var 2)) (.mul (.num 15) (.pow (.var 3) 2)))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 2)) (.mul (.num 14) (.var 3))) (.var 2))
    (.mul (.num 8) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var
    3)) (.var 2)) (.mul (.neg (.num 5)) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.mul (.num 2) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.var 0)))) (.mul (.mul (.num 60) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11) (.var 0)) (.add (.mul (.num
    23) (.var 2)) (.mul (.num 22) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 13) (.var
    2)) (.mul (.num 4) (.var 3))) (.var 2)) (.mul (.num 11) (.pow (.var 3) 2)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var 2)) (.mul
    (.neg (.num 9)) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.mul (.neg (.num 3)) (.pow
    (.var 3) 2)) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var
    2) 3)))) (.pow (.var 0) 1))) (.mul (.mul (.num 120) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 3) (.var 0)) (.add (.mul (.num 6) (.var 2)) (.mul (.num 6) (.var 3)))) (.var 0))
    (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.neg (.num 6)) (.var 3))) (.var 2)) (.mul
    (.num 3) (.pow (.var 3) 2)))) (.var 0)) (.mul (.mul (.neg (.num 6)) (.pow (.var 3) 2)) (.var
    2))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 2)))) (.pow (.var 0)
    2))) (.mul (.num 4) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 7)
    (.var 0)) (.add (.mul (.num 19) (.var 2)) (.mul (.num 14) (.var 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.num 17) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num 7) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 2)) (.mul (.num 6) (.var
    3))) (.var 2)) (.mul (.num 1) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul
    (.num 4) (.var 3)) (.var 2)) (.mul (.neg (.num 3)) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.var 0)))) (.mul (.mul
    (.num 24) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 8) (.var 0)) (.add (.mul (.num
    17) (.var 2)) (.mul (.num 16) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 10) (.var
    2)) (.mul (.neg (.num 2)) (.var 3))) (.var 2)) (.mul (.num 8) (.pow (.var 3) 2)))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var 2))
    (.mul (.neg (.num 9)) (.pow (.var 3) 2))) (.var 2))) (.pow (.var 0) 2)) (.mul (.mul (.num 1)
    (.pow (.var 3) 2)) (.pow (.var 2) 3)))) (.pow (.var 0) 1))) (.mul (.mul (.num 60) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 3) (.var 0)) (.add (.mul (.num 6) (.var 2)) (.mul
    (.num 6) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.neg (.num
    6)) (.var 3))) (.var 2)) (.mul (.num 3) (.pow (.var 3) 2)))) (.var 0)) (.mul (.mul (.neg (.num
    6)) (.pow (.var 3) 2)) (.var 2))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow
    (.var 2) 2)))) (.pow (.var 0) 2))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.add (.add (.add (.add
    (.add (.add (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 90) (.var 0)) (.add (.mul (.num 1062)
    (.var 2)) (.mul (.num 180) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 3810) (.var 2))
    (.mul (.num 1698) (.var 3))) (.var 2)) (.mul (.num 90) (.pow (.var 3) 2)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 6468) (.var 2)) (.mul (.num 4016) (.var 3))) (.var 2)) (.mul
    (.num 738) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5898)
    (.var 2)) (.mul (.num 4096) (.var 3))) (.var 2)) (.mul (.num 1271) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2932) (.var 2)) (.mul (.num 2360)
    (.var 3))) (.var 2)) (.mul (.num 718) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 734) (.var 2)) (.mul (.num 1090) (.var 3))) (.var 2)) (.mul
    (.num 406) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 70) (.var 2)) (.mul (.num 380) (.var 3))) (.var 2)) (.mul (.num 586) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 52) (.var 3)) (.var 2)) (.mul
    (.num 317) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 42) (.pow (.var
    3) 2)) (.pow (.var 2) 7))) (.var 0))) (.mul (.mul (.num 15) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 66) (.var
    0)) (.add (.mul (.num 742) (.var 2)) (.mul (.num 132) (.var 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.num 2472) (.var 2)) (.mul (.num 1116) (.var 3))) (.var 2)) (.mul (.num 66) (.pow (.var
    3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3770) (.var 2)) (.mul (.num 1976) (.var
    3))) (.var 2)) (.mul (.num 470) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 2936) (.var 2)) (.mul (.num 904) (.var 3))) (.var 2)) (.mul (.num 454) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1144) (.var
    2)) (.mul (.neg (.num 132)) (.var 3))) (.var 2)) (.mul (.neg (.num 320)) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 190) (.var 2)) (.mul (.neg
    (.num 48)) (.var 3))) (.var 2)) (.mul (.neg (.num 220)) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 2)) (.mul (.num 32) (.var 3)))
    (.var 2)) (.mul (.num 212) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 100) (.pow (.var 3) 2))) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.mul (.num 6) (.pow (.var 3) 2)) (.pow (.var 2) 7)))) (.pow (.var 0) 1)))
    (.mul (.mul (.num 30) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 18) (.var 0)) (.add (.mul (.num 198) (.var 2)) (.mul (.num 36)
    (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 636) (.var 2)) (.mul (.num 276) (.var 3)))
    (.var 2)) (.mul (.num 18) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    912) (.var 2)) (.mul (.num 336) (.var 3))) (.var 2)) (.mul (.num 114) (.pow (.var 3) 2)))
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 642) (.var 2)) (.mul (.neg (.num
    108)) (.var 3))) (.var 2)) (.mul (.num 42) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 210) (.var 2)) (.mul (.neg (.num 168)) (.var 3))) (.var
    2)) (.mul (.neg (.num 156)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.num 24) (.pow (.var 2) 2)) (.mul (.num 42) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.mul (.num 12) (.var 3)) (.var 2)) (.mul (.num 114) (.pow (.var
    3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.mul (.num 18) (.pow (.var 3) 2)) (.pow (.var 2)
    6)))) (.pow (.var 0) 2))) (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 42) (.var 0)) (.add (.mul
    (.num 513) (.var 2)) (.mul (.num 84) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 1934)
    (.var 2)) (.mul (.num 806) (.var 3))) (.var 2)) (.mul (.num 42) (.pow (.var 3) 2)))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 3494) (.var 2)) (.mul (.num 1944) (.var 3))) (.var 2))
    (.mul (.num 347) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    3440) (.var 2)) (.mul (.num 2088) (.var 3))) (.var 2)) (.mul (.num 588) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1879) (.var 2)) (.mul (.num
    1410) (.var 3))) (.var 2)) (.mul (.num 334) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 528) (.var 2)) (.mul (.num 824) (.var 3))) (.var 2)) (.mul
    (.num 296) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 58) (.var 2)) (.mul (.num 330) (.var 3))) (.var 2)) (.mul (.num 465) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 50) (.var 3)) (.var 2)) (.mul
    (.num 258) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 38) (.pow (.var
    3) 2)) (.pow (.var 2) 7))) (.var 0)))) (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 48) (.var
    0)) (.add (.mul (.num 541) (.var 2)) (.mul (.num 96) (.var 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.num 1809) (.var 2)) (.mul (.num 798) (.var 3))) (.var 2)) (.mul (.num 48) (.pow (.var
    3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2777) (.var 2)) (.mul (.num 1322) (.var
    3))) (.var 2)) (.mul (.num 335) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 2189) (.var 2)) (.mul (.num 430) (.var 3))) (.var 2)) (.mul (.num 283) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 874) (.var 2))
    (.mul (.neg (.num 240)) (.var 3))) (.var 2)) (.mul (.neg (.num 281)) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 154) (.var 2)) (.mul (.neg (.num
    60)) (.var 3))) (.var 2)) (.mul (.neg (.num 115)) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 2)) (.mul (.num 26) (.var 3))) (.var
    2)) (.mul (.num 212) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul
    (.num 4) (.var 3)) (.var 2)) (.mul (.num 88) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0))
    (.mul (.mul (.num 6) (.pow (.var 3) 2)) (.pow (.var 2) 7)))) (.pow (.var 0) 1))) (.mul (.mul
    (.num 15) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 18) (.var 0)) (.add (.mul (.num 198) (.var 2)) (.mul (.num 36) (.var 3))))
    (.var 0)) (.add (.mul (.add (.mul (.num 636) (.var 2)) (.mul (.num 276) (.var 3))) (.var 2))
    (.mul (.num 18) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 912) (.var
    2)) (.mul (.num 336) (.var 3))) (.var 2)) (.mul (.num 114) (.pow (.var 3) 2))) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 642) (.var 2)) (.mul (.neg (.num 108)) (.var
    3))) (.var 2)) (.mul (.num 42) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 210) (.var 2)) (.mul (.neg (.num 168)) (.var 3))) (.var 2)) (.mul
    (.neg (.num 156)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.num
    24) (.pow (.var 2) 2)) (.mul (.num 42) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.mul (.num 12) (.var 3)) (.var 2)) (.mul (.num 114) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.mul (.num 18) (.pow (.var 3) 2)) (.pow (.var 2) 6)))) (.pow
    (.var 0) 2))) (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 120) (.var 0)) (.add (.mul (.num 1386)
    (.var 2)) (.mul (.num 240) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 4819) (.var 2))
    (.mul (.num 2290) (.var 3))) (.var 2)) (.mul (.num 120) (.pow (.var 3) 2)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 7831) (.var 2)) (.mul (.num 5622) (.var 3))) (.var 2)) (.mul
    (.num 994) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6700)
    (.var 2)) (.mul (.num 5856) (.var 3))) (.var 2)) (.mul (.num 1758) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3020) (.var 2)) (.mul (.num 3012)
    (.var 3))) (.var 2)) (.mul (.num 779) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 645) (.var 2)) (.mul (.num 922) (.var 3))) (.var 2)) (.mul (.neg
    (.num 224)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 47) (.var 2)) (.mul (.num 222) (.var 3))) (.var 2)) (.mul (.neg (.num 18)) (.pow (.var
    3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 28) (.var 3)) (.var 2))
    (.mul (.num 126) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 25) (.pow
    (.var 3) 2)) (.pow (.var 2) 7))) (.var 0)))) (.mul (.mul (.num 18) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 51)
    (.var 0)) (.add (.mul (.num 572) (.var 2)) (.mul (.num 102) (.var 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.num 1899) (.var 2)) (.mul (.num 876) (.var 3))) (.var 2)) (.mul (.num 51) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2878) (.var 2)) (.mul (.num 1642)
    (.var 3))) (.var 2)) (.mul (.num 370) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 2215) (.var 2)) (.mul (.num 926) (.var 3))) (.var 2)) (.mul (.num 398)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 842)
    (.var 2)) (.mul (.num 42) (.var 3))) (.var 2)) (.mul (.neg (.num 199)) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 131) (.var 2)) (.mul (.neg
    (.num 12)) (.var 3))) (.var 2)) (.mul (.neg (.num 215)) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 22) (.var 3)))
    (.var 2)) (.mul (.num 106) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.mul (.num 2) (.var 3)) (.var 2)) (.mul (.num 62) (.pow (.var 3) 2))) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 7)))) (.pow (.var 0) 1)))
    (.mul (.mul (.num 18) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 9) (.var 0)) (.add (.mul (.num 99) (.var 2)) (.mul (.num 18)
    (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 318) (.var 2)) (.mul (.num 138) (.var 3)))
    (.var 2)) (.mul (.num 9) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    456) (.var 2)) (.mul (.num 168) (.var 3))) (.var 2)) (.mul (.num 57) (.pow (.var 3) 2))) (.var
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 321) (.var 2)) (.mul (.neg (.num 54)) (.var
    3))) (.var 2)) (.mul (.num 21) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 105) (.var 2)) (.mul (.neg (.num 84)) (.var 3))) (.var 2)) (.mul (.neg
    (.num 78)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.num 12) (.pow
    (.var 2) 2)) (.mul (.num 21) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.mul (.num 6) (.var 3)) (.var 2)) (.mul (.num 57) (.pow (.var 3) 2))) (.pow (.var 2)
    5))) (.var 0)) (.mul (.mul (.num 9) (.pow (.var 3) 2)) (.pow (.var 2) 6)))) (.pow (.var 0)
    2))) (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 156) (.var 0)) (.add (.mul (.num 1815) (.var
    2)) (.mul (.num 312) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 6382) (.var 2)) (.mul
    (.num 2968) (.var 3))) (.var 2)) (.mul (.num 156) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 10540) (.var 2)) (.mul (.num 7204) (.var 3))) (.var 2)) (.mul (.num
    1285) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9238) (.var
    2)) (.mul (.num 7424) (.var 3))) (.var 2)) (.mul (.num 2221) (.pow (.var 3) 2))) (.pow (.var
    2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4327) (.var 2)) (.mul (.num 3898) (.var
    3))) (.var 2)) (.mul (.num 946) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 988) (.var 2)) (.mul (.num 1362) (.var 3))) (.var 2)) (.mul (.neg
    (.num 174)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 82) (.var 2)) (.mul (.num 394) (.var 3))) (.var 2)) (.mul (.num 191) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 54) (.var 3)) (.var 2)) (.mul
    (.num 265) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 46) (.pow (.var
    3) 2)) (.pow (.var 2) 7))) (.var 0)))) (.mul (.mul (.num 12) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 84) (.var
    0)) (.add (.mul (.num 943) (.var 2)) (.mul (.num 168) (.var 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.num 3135) (.var 2)) (.mul (.num 1434) (.var 3))) (.var 2)) (.mul (.num 84) (.pow (.var
    3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4763) (.var 2)) (.mul (.num 2630) (.var
    3))) (.var 2)) (.mul (.num 605) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 3683) (.var 2)) (.mul (.num 1378) (.var 3))) (.var 2)) (.mul (.num 625)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1414)
    (.var 2)) (.mul (.neg (.num 24)) (.var 3))) (.var 2)) (.mul (.neg (.num 359)) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 226) (.var 2)) (.mul
    (.neg (.num 36)) (.var 3))) (.var 2)) (.mul (.neg (.num 325)) (.pow (.var 3) 2))) (.pow (.var
    2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 2)) (.mul (.num 38) (.var 3)))
    (.var 2)) (.mul (.num 212) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 112) (.pow (.var 3) 2))) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.mul (.num 6) (.pow (.var 3) 2)) (.pow (.var 2) 7)))) (.pow (.var 0) 1)))
    (.mul (.mul (.num 18) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 18) (.var 0)) (.add (.mul (.num 198) (.var 2)) (.mul (.num 36)
    (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 636) (.var 2)) (.mul (.num 276) (.var 3)))
    (.var 2)) (.mul (.num 18) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    912) (.var 2)) (.mul (.num 336) (.var 3))) (.var 2)) (.mul (.num 114) (.pow (.var 3) 2)))
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 642) (.var 2)) (.mul (.neg (.num
    108)) (.var 3))) (.var 2)) (.mul (.num 42) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 210) (.var 2)) (.mul (.neg (.num 168)) (.var 3))) (.var
    2)) (.mul (.neg (.num 156)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.num 24) (.pow (.var 2) 2)) (.mul (.num 42) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.mul (.num 12) (.var 3)) (.var 2)) (.mul (.num 114) (.pow (.var
    3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.mul (.num 18) (.pow (.var 3) 2)) (.pow (.var 2)
    6)))) (.pow (.var 0) 2))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh1317.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh1317.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh1317.leading0 e g v + f * FullHigh1317.leading1 e g v +
        f^2 * FullHigh1317.remainder e f g v := by
  have hden : denominatorOne FullHigh1317.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh1317.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh1317.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 68719476736 14 10 2) lhs =
      value (Encoding4.vars 68719476736 14 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 68719476736 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 14 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 14 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullHigh1317.source e f g v =
      FullHigh1317.leading0 e g v + f * FullHigh1317.leading1 e g v +
        f^2 * FullHigh1317.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 68719476736 14 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh131Encoded7

namespace SPR.N6.Tail.CoreEndpoint.FullHigh131
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition7 (e f g v : ℝ) :
    FullHigh1317.source e f g v =
      FullHigh1317.leading0 e g v + f * FullHigh1317.leading1 e g v +
        f^2 * FullHigh1317.remainder e f g v :=
  FullHigh131Encoded7.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh131
