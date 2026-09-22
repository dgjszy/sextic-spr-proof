import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^0 layer of FullHigh050.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh050Encoded0
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.mul (.mul (.mul (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.mul (.mul (.num 1) (.var 3)) (.pow (.var 1) 3)) (.var 0)) (.mul (.add (.mul (.mul
    (.num 3) (.var 3)) (.var 1)) (.add (.mul (.mul (.num 1) (.var 3)) (.var 2)) (.mul (.num 1)
    (.pow (.var 3) 2)))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.mul (.num
    3) (.var 3)) (.var 1)) (.add (.mul (.mul (.num 2) (.var 3)) (.var 2)) (.mul (.num 2) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.var 2))) (.pow (.var 1)
    3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.mul (.num 1) (.var 3)) (.var 1)) (.add (.mul
    (.mul (.num 1) (.var 3)) (.var 2)) (.mul (.num 1) (.pow (.var 3) 2)))) (.var 1)) (.mul (.mul
    (.num 1) (.pow (.var 3) 2)) (.var 2))) (.pow (.var 1) 4))) (.pow (.var 0) 2))) (.var 0)) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5)) (.pow (.add (.var
    1) (.var 2)) 4)) (.mul (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.mul (.add (.mul (.num 2) (.var 1)) (.mul (.num 3) (.var 3)))
    (.pow (.var 1) 2)) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 13) (.var 1)) (.add (.mul
    (.num 5) (.var 2)) (.mul (.num 23) (.var 3)))) (.var 1)) (.add (.mul (.mul (.num 8) (.var 3))
    (.var 2)) (.mul (.num 3) (.pow (.var 3) 2)))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 36) (.var 1)) (.add (.mul (.num 27) (.var 2)) (.mul (.num 62)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.num 42) (.var 3)))
    (.var 2)) (.mul (.num 18) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 5)
    (.var 3)) (.var 2)) (.mul (.num 8) (.pow (.var 3) 2))) (.var 2))) (.pow (.var 1) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 54) (.var 1)) (.add (.mul
    (.num 59) (.var 2)) (.mul (.num 86) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 13)
    (.var 2)) (.mul (.num 86) (.var 3))) (.var 2)) (.mul (.num 33) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.mul (.num 17) (.var 3)) (.var 2)) (.mul (.num 29) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.mul (.num 5) (.pow (.var 3) 2)) (.pow (.var 2) 2))) (.pow (.var
    1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 46) (.var 1))
    (.add (.mul (.num 65) (.var 2)) (.mul (.num 71) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 21) (.var 2)) (.mul (.num 94) (.var 3))) (.var 2)) (.mul (.num 28) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.mul (.num 27) (.var 3)) (.var 2)) (.mul (.num 35) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.mul (.num 9) (.pow (.var 3) 2)) (.pow (.var 2) 2))) (.pow
    (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 21) (.var
    1)) (.add (.mul (.num 36) (.var 2)) (.mul (.num 35) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 15) (.var 2)) (.mul (.num 58) (.var 3))) (.var 2)) (.mul (.num 14) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 23) (.var 3)) (.var 2)) (.mul (.num 22) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.mul (.num 8) (.pow (.var 3) 2)) (.pow (.var 2) 2)))
    (.pow (.var 1) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4)
    (.var 1)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 8) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 4) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num 4) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 8) (.var 3)) (.var 2)) (.mul (.num 8) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 2)))
    (.pow (.var 1) 5)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var
    0) (.var 1)) (.var 2))) 5)) (.pow (.add (.var 1) (.var 2)) 3))) (.mul (.mul (.mul (.mul (.num
    1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul
    (.add (.mul (.num 4) (.var 1)) (.mul (.num 2) (.var 3))) (.var 1)) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 44) (.var 1)) (.add (.mul (.num 19) (.var 2)) (.mul (.num 34) (.var 3))))
    (.var 1)) (.add (.mul (.mul (.num 12) (.var 3)) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2))))
    (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.num 186) (.var 1)) (.add
    (.mul (.num 152) (.var 2)) (.mul (.num 181) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 26) (.var 2)) (.mul (.num 127) (.var 3))) (.var 2)) (.mul (.num 28) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.mul (.num 18) (.var 3)) (.var 2)) (.mul (.num 12) (.pow (.var 3)
    2))) (.var 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 414) (.var 1)) (.add (.mul (.num 488) (.var 2)) (.mul (.num 461) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 155) (.var 2)) (.mul (.num 481) (.var 3))) (.var 2)) (.mul (.num
    113) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11) (.var 2)) (.mul
    (.num 132) (.var 3))) (.var 2)) (.mul (.num 96) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 8) (.var 3)) (.var 2)) (.mul (.num 18) (.pow (.var 3) 2))) (.pow (.var
    2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 536) (.var 1)) (.add (.mul (.num 816) (.var 2)) (.mul (.num 665) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 367) (.var 2)) (.mul (.num 922) (.var 3))) (.var 2)) (.mul (.num
    202) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 47) (.var 2)) (.mul
    (.num 366) (.var 3))) (.var 2)) (.mul (.num 252) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.mul (.num 39) (.var 3)) (.var 2)) (.mul (.num 88) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.mul (.num 8) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    408) (.var 1)) (.add (.mul (.num 755) (.var 2)) (.mul (.num 571) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 431) (.var 2)) (.mul (.num 991) (.var 3))) (.var 2)) (.mul (.num 195)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 75) (.var 2)) (.mul (.num
    518) (.var 3))) (.var 2)) (.mul (.num 315) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 80) (.var 3)) (.var 2)) (.mul (.num 149) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.mul (.num 20) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.pow
    (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 170) (.var 1)) (.add (.mul (.num 368) (.var 2)) (.mul (.num 276) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 251) (.var 2)) (.mul (.num 577) (.var 3))) (.var 2)) (.mul (.num
    108) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 53) (.var 2)) (.mul
    (.num 376) (.var 3))) (.var 2)) (.mul (.num 215) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.mul (.num 75) (.var 3)) (.var 2)) (.mul (.num 131) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.mul (.num 24) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 30) (.var 1)) (.add (.mul (.num 74) (.var 2)) (.mul (.num 58) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 58) (.var 2)) (.mul (.num 142) (.var 3))) (.var 2)) (.mul
    (.num 28) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14) (.var 2))
    (.mul (.num 110) (.var 3))) (.var 2)) (.mul (.num 68) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.mul (.num 26) (.var 3)) (.var 2)) (.mul (.num 52) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.mul (.num 12) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.pow (.var 1) 4)))) (.pow (.var 0) 3)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var
    0) (.var 1)) (.var 2))) 5)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.mul (.num
    1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.mul (.num 2) (.var 1)) (.var 0)) (.add (.mul (.add (.mul (.num 37) (.var 1)) (.add
    (.mul (.num 16) (.var 2)) (.mul (.num 12) (.var 3)))) (.var 1)) (.mul (.mul (.num 4) (.var 3))
    (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 236) (.var 1)) (.add (.mul
    (.num 197) (.var 2)) (.mul (.num 128) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 38)
    (.var 2)) (.mul (.num 86) (.var 3))) (.var 2)) (.mul (.num 10) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.mul (.num 12) (.var 3)) (.var 2)) (.mul (.num 4) (.pow (.var 3) 2))) (.var
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 762) (.var 1)) (.add
    (.mul (.num 926) (.var 2)) (.mul (.num 556) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 338) (.var 2)) (.mul (.num 568) (.var 3))) (.var 2)) (.mul (.num 83) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36) (.var 2)) (.mul (.num 164) (.var 3)))
    (.var 2)) (.mul (.num 66) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 12) (.var 3)) (.var 2)) (.mul (.num 12) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1430) (.var 1)) (.add
    (.mul (.num 2259) (.var 2)) (.mul (.num 1294) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 1178) (.var 2)) (.mul (.num 1782) (.var 3))) (.var 2)) (.mul (.num 272) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 229) (.var 2)) (.mul (.num 778) (.var 3)))
    (.var 2)) (.mul (.num 321) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 12) (.var 2)) (.mul (.num 118) (.var 3))) (.var 2)) (.mul (.num 114) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2))
    (.mul (.num 12) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1637) (.var 1)) (.add (.mul (.num 3161)
    (.var 2)) (.mul (.num 1778) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2105) (.var
    2)) (.mul (.num 3094) (.var 3))) (.var 2)) (.mul (.num 461) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 567) (.var 2)) (.mul (.num 1802) (.var 3))) (.var 2))
    (.mul (.num 716) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    51) (.var 2)) (.mul (.num 406) (.var 3))) (.var 2)) (.mul (.num 364) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 28) (.var 3)) (.var 2)) (.mul (.num 70)
    (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num 4) (.pow (.var 3) 2))
    (.pow (.var 2) 4)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 1132) (.var 1)) (.add (.mul (.num 2570) (.var 2)) (.mul (.num 1462)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2057) (.var 2)) (.mul (.num 3086) (.var
    3))) (.var 2)) (.mul (.num 448) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 687) (.var 2)) (.mul (.num 2250) (.var 3))) (.var 2)) (.mul (.num 864) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 81) (.var 2)) (.mul (.num 668)
    (.var 3))) (.var 2)) (.mul (.num 560) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 68) (.var 3)) (.var 2)) (.mul (.num 143) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.mul (.num 12) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 436) (.var 1)) (.add (.mul (.num 1133) (.var 2)) (.mul (.num 670) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 1049) (.var 2)) (.mul (.num 1666) (.var 3))) (.var 2)) (.mul
    (.num 246) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 409) (.var 2))
    (.mul (.num 1458) (.var 3))) (.var 2)) (.mul (.num 575) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 57) (.var 2)) (.mul (.num 530) (.var 3))) (.var 2))
    (.mul (.num 463) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 68) (.var 3)) (.var 2)) (.mul (.num 151) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.mul (.num 17) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.pow (.var 1) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 72) (.var
    1)) (.add (.mul (.num 210) (.var 2)) (.mul (.num 132) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 219) (.var 2)) (.mul (.num 378) (.var 3))) (.var 2)) (.mul (.num 60) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 96) (.var 2)) (.mul (.num 384) (.var
    3))) (.var 2)) (.mul (.num 168) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 15) (.var 2)) (.mul (.num 162) (.var 3))) (.var 2)) (.mul (.num 165) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 24) (.var 3)) (.var
    2)) (.mul (.num 66) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num 9)
    (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.pow (.var 1) 3)))) (.pow (.var 0) 4)) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5)) (.add (.var 1) (.var
    2)))) (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 1)) (.mul (.num 2) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.num 70) (.var 1)) (.add (.mul (.num 54) (.var 2)) (.mul
    (.num 12) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 4) (.var
    3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 342) (.var 1)) (.add
    (.mul (.num 405) (.var 2)) (.mul (.num 120) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 151) (.var 2)) (.mul (.num 92) (.var 3))) (.var 2)) (.mul (.num 6) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18) (.var 2)) (.mul (.num 16) (.var 3))) (.var
    2)) (.mul (.num 2) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 924) (.var 1)) (.add (.mul (.num 1458) (.var 2)) (.mul (.num 496)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 801) (.var 2)) (.mul (.num 590) (.var 3)))
    (.var 2)) (.mul (.num 50) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    181) (.var 2)) (.mul (.num 214) (.var 3))) (.var 2)) (.mul (.num 38) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14) (.var 2)) (.mul (.num 24) (.var 3)))
    (.var 2)) (.mul (.num 6) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1522) (.var 1)) (.add (.mul (.num 2978) (.var
    2)) (.mul (.num 1112) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2129) (.var 2))
    (.mul (.num 1786) (.var 3))) (.var 2)) (.mul (.num 168) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 684) (.var 2)) (.mul (.num 976) (.var 3))) (.var 2)) (.mul (.num
    199) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 95) (.var
    2)) (.mul (.num 214) (.var 3))) (.var 2)) (.mul (.num 67) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 16) (.var 3)))
    (.var 2)) (.mul (.num 6) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1574) (.var 1)) (.add (.mul (.num
    3656) (.var 2)) (.mul (.num 1476) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 3183)
    (.var 2)) (.mul (.num 2982) (.var 3))) (.var 2)) (.mul (.num 298) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 1295) (.var 2)) (.mul (.num 2162) (.var 3))) (.var 2))
    (.mul (.num 482) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    245) (.var 2)) (.mul (.num 690) (.var 3))) (.var 2)) (.mul (.num 249) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17) (.var 2)) (.mul (.num
    94) (.var 3))) (.var 2)) (.mul (.num 45) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2))) (.pow
    (.var 2) 4)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 1002) (.var 1)) (.add (.mul (.num 2683) (.var 2)) (.mul (.num 1168) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2730) (.var 2)) (.mul (.num 2842) (.var 3)))
    (.var 2)) (.mul (.num 302) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1321) (.var 2)) (.mul (.num 2556) (.var 3))) (.var 2)) (.mul (.num 627) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 305) (.var 2)) (.mul (.num 1056)
    (.var 3))) (.var 2)) (.mul (.num 444) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 27) (.var 2)) (.mul (.num 200) (.var 3))) (.var 2)) (.mul (.num
    124) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 14) (.var
    3)) (.var 2)) (.mul (.num 11) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 360) (.var 1)) (.add (.mul (.num 1088) (.var 2)) (.mul (.num 512) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 1258) (.var 2)) (.mul (.num 1456) (.var 3))) (.var 2)) (.mul
    (.num 168) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 696) (.var 2))
    (.mul (.num 1556) (.var 3))) (.var 2)) (.mul (.num 432) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 185) (.var 2)) (.mul (.num 778) (.var 3))) (.var 2))
    (.mul (.num 398) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 19) (.var 2)) (.mul (.num 182) (.var 3))) (.var 2)) (.mul (.num 158) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 16) (.var 3)) (.var 2))
    (.mul (.num 25) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.num 1) (.pow
    (.var 3) 2)) (.pow (.var 2) 5))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 56) (.var 1)) (.add (.mul (.num
    188) (.var 2)) (.mul (.num 96) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 242) (.var
    2)) (.mul (.num 312) (.var 3))) (.var 2)) (.mul (.num 40) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 149) (.var 2)) (.mul (.num 384) (.var 3))) (.var 2)) (.mul (.num
    124) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 44) (.var
    2)) (.mul (.num 222) (.var 3))) (.var 2)) (.mul (.num 142) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 2)) (.mul (.num 60) (.var 3)))
    (.var 2)) (.mul (.num 73) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.mul (.num 6) (.var 3)) (.var 2)) (.mul (.num 16) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 5))) (.pow (.var 1) 2))))
    (.pow (.var 0) 5)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))) 5)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.mul (.mul (.num 1)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add
    (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num
    10) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 20) (.var 3))) (.var 2))
    (.mul (.num 8) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 8) (.var
    3)) (.var 2)) (.mul (.num 10) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul
    (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.pow (.var 0) 3))) (.pow (.var 0) 8)))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.mul (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var
    0)) (.add (.mul (.num 88) (.var 2)) (.mul (.num 12) (.var 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.num 415) (.var 2)) (.mul (.num 172) (.var 3))) (.var 2)) (.mul (.num 6) (.pow (.var 3)
    2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 949) (.var 2)) (.mul (.num 802) (.var 3)))
    (.var 2)) (.mul (.num 84) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1196) (.var 2)) (.mul (.num 1818) (.var 3))) (.var 2)) (.mul (.num 387) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 850) (.var 2))
    (.mul (.num 2272) (.var 3))) (.var 2)) (.mul (.num 869) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 319) (.var 2)) (.mul (.num 1600) (.var 3)))
    (.var 2)) (.mul (.num 1076) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 49) (.var 2)) (.mul (.num 594) (.var 3))) (.var 2)) (.mul (.num 750)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 90) (.var 3))
    (.var 2)) (.mul (.num 275) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num
    41) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 5))) (.pow (.var 0) 6)))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh0500.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh0500.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh0500.leading0 e g v + f * FullHigh0500.leading1 e g v +
        f^2 * FullHigh0500.remainder e f g v := by
  have hden : denominatorOne FullHigh0500.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh0500.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh0500.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 8589934592 22 10 2) lhs =
      value (Encoding4.vars 8589934592 22 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 8589934592 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 22 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 22 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullHigh0500.source e f g v =
      FullHigh0500.leading0 e g v + f * FullHigh0500.leading1 e g v +
        f^2 * FullHigh0500.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 8589934592 22 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh050Encoded0

namespace SPR.N6.Tail.CoreEndpoint.FullHigh050
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition0 (e f g v : ℝ) :
    FullHigh0500.source e f g v =
      FullHigh0500.leading0 e g v + f * FullHigh0500.leading1 e g v +
        f^2 * FullHigh0500.remainder e f g v :=
  FullHigh050Encoded0.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh050
