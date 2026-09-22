import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^4 layer of FullHigh050.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh050Encoded4
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add
    (.add (.add (.add (.add (.add (.add (.add (.add (.mul (.mul (.mul (.num 4) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.mul (.add (.mul (.num 3) (.var 1)) (.mul (.num 3) (.var 3)))
    (.pow (.var 1) 2)) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 1)) (.add (.mul
    (.num 6) (.var 2)) (.mul (.num 33) (.var 3)))) (.var 1)) (.add (.mul (.mul (.num 12) (.var 3))
    (.var 2)) (.mul (.num 3) (.pow (.var 3) 2)))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 27) (.var 1)) (.add (.mul (.num 18) (.var 2)) (.mul (.num 51)
    (.var 3)))) (.var 1)) (.add (.mul (.mul (.num 27) (.var 3)) (.var 2)) (.mul (.num 27) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.mul (.num 12) (.pow (.var 3) 2)) (.var 2))) (.pow (.var 1)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.num 21) (.var 1)) (.add (.mul (.num
    18) (.var 2)) (.mul (.num 33) (.var 3)))) (.var 1)) (.add (.mul (.mul (.num 27) (.var 3))
    (.var 2)) (.mul (.num 12) (.pow (.var 3) 2)))) (.var 1)) (.mul (.mul (.num 9) (.pow (.var 3)
    2)) (.var 2))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    6) (.var 1)) (.add (.mul (.num 6) (.var 2)) (.mul (.num 12) (.var 3)))) (.var 1)) (.add (.mul
    (.mul (.num 12) (.var 3)) (.var 2)) (.mul (.num 6) (.pow (.var 3) 2)))) (.var 1)) (.mul (.mul
    (.num 6) (.pow (.var 3) 2)) (.var 2))) (.pow (.var 1) 4)))) (.pow (.mul (.add (.var 0) (.var
    1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5)) (.pow (.add (.var 1) (.var 2)) 3)) (.mul
    (.mul (.mul (.num 8) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.mul (.add (.mul (.num 5) (.var 1)) (.mul (.num 5) (.var 3))) (.var 1)) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 52) (.var 1)) (.add (.mul (.num 22) (.var 2)) (.mul (.num 57) (.var
    3)))) (.var 1)) (.add (.mul (.mul (.num 21) (.var 3)) (.var 2)) (.mul (.num 5) (.pow (.var 3)
    2)))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.num 190) (.var 1))
    (.add (.mul (.num 150) (.var 2)) (.mul (.num 246) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 24) (.var 2)) (.mul (.num 175) (.var 3))) (.var 2)) (.mul (.num 47) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 25) (.var 3)) (.var 2)) (.mul (.num 21) (.pow
    (.var 3) 2))) (.var 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 336) (.var 1)) (.add (.mul (.num 372) (.var 2)) (.mul (.num 456) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 103) (.var 2)) (.mul (.num 456) (.var 3))) (.var 2)) (.mul
    (.num 152) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 2))
    (.mul (.num 113) (.var 3))) (.var 2)) (.mul (.num 132) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.mul (.num 5) (.var 3)) (.var 2)) (.mul (.num 25) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 313) (.var 1)) (.add (.mul (.num 436) (.var 2)) (.mul (.num 442) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 165) (.var 2)) (.mul (.num 570) (.var 3))) (.var 2))
    (.mul (.num 161) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var
    2)) (.mul (.num 194) (.var 3))) (.var 2)) (.mul (.num 196) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 15) (.var 3)) (.var 2)) (.mul (.num 64) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.mul (.num 5) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    148) (.var 1)) (.add (.mul (.num 246) (.var 2)) (.mul (.num 232) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 117) (.var 2)) (.mul (.num 366) (.var 3))) (.var 2)) (.mul (.num 88)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 2)) (.mul (.num
    160) (.var 3))) (.var 2)) (.mul (.num 130) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 18) (.var 3)) (.var 2)) (.mul (.num 51) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.mul (.num 5) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.pow
    (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 28) (.var 1)) (.add (.mul (.num 54) (.var 2)) (.mul (.num 52) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 31) (.var 2)) (.mul (.num 98) (.var 3))) (.var 2)) (.mul (.num
    24) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 2)) (.mul
    (.num 54) (.var 3))) (.var 2)) (.mul (.num 44) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 8) (.var 3)) (.var 2)) (.mul (.num 23) (.pow (.var 3) 2))) (.pow (.var
    2) 2))) (.var 1)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.pow (.var 1)
    3)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5)) (.pow
    (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.mul (.num 12) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.mul (.add (.mul (.num 3) (.var 1)) (.mul (.num 3) (.var 3)))
    (.var 1)) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 36) (.var 1)) (.add (.mul (.num 15)
    (.var 2)) (.mul (.num 33) (.var 3)))) (.var 1)) (.add (.mul (.mul (.num 12) (.var 3)) (.var
    2)) (.mul (.num 3) (.pow (.var 3) 2)))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 126) (.var 1)) (.add (.mul (.num 96) (.var 2)) (.mul (.num 156) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 15) (.var 2)) (.mul (.num 108) (.var 3))) (.var 2))
    (.mul (.num 27) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 15) (.var 3))
    (.var 2)) (.mul (.num 12) (.pow (.var 3) 2))) (.var 2))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 192) (.var 1)) (.add (.mul (.num 198) (.var
    2)) (.mul (.num 252) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 45) (.var 2)) (.mul
    (.num 228) (.var 3))) (.var 2)) (.mul (.num 96) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 45) (.var 3)) (.var 2)) (.mul (.num 81) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.mul (.num 15) (.pow (.var 3) 2)) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 135) (.var 1)) (.add (.mul (.num 168)
    (.var 2)) (.mul (.num 192) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 45) (.var 2))
    (.mul (.num 222) (.var 3))) (.var 2)) (.mul (.num 63) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 54) (.var 3)) (.var 2)) (.mul (.num 66) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.mul (.num 15) (.pow (.var 3) 2)) (.pow (.var 2) 2))) (.pow (.var 1) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 36) (.var 1)) (.add
    (.mul (.num 51) (.var 2)) (.mul (.num 66) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    15) (.var 2)) (.mul (.num 90) (.var 3))) (.var 2)) (.mul (.num 30) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.mul (.num 24) (.var 3)) (.var 2)) (.mul (.num 39) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.mul (.num 9) (.pow (.var 3) 2)) (.pow (.var 2) 2))) (.pow (.var
    1) 3)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))) 5)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.num 16) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 2)
    (.var 1)) (.var 0)) (.add (.mul (.add (.mul (.num 37) (.var 1)) (.add (.mul (.num 16) (.var
    2)) (.mul (.num 12) (.var 3)))) (.var 1)) (.mul (.mul (.num 4) (.var 3)) (.var 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.num 236) (.var 1)) (.add (.mul (.num 197) (.var 2))
    (.mul (.num 128) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 38) (.var 2)) (.mul (.num
    86) (.var 3))) (.var 2)) (.mul (.num 10) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul
    (.mul (.num 12) (.var 3)) (.var 2)) (.mul (.num 4) (.pow (.var 3) 2))) (.var 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 762) (.var 1)) (.add (.mul (.num 926)
    (.var 2)) (.mul (.num 556) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 338) (.var 2))
    (.mul (.num 568) (.var 3))) (.var 2)) (.mul (.num 83) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 36) (.var 2)) (.mul (.num 164) (.var 3))) (.var 2)) (.mul (.num
    66) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 12) (.var 3)) (.var
    2)) (.mul (.num 12) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 1430) (.var 1)) (.add (.mul (.num 2259) (.var 2))
    (.mul (.num 1294) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1178) (.var 2)) (.mul
    (.num 1782) (.var 3))) (.var 2)) (.mul (.num 272) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 229) (.var 2)) (.mul (.num 778) (.var 3))) (.var 2)) (.mul (.num 321)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 2))
    (.mul (.num 118) (.var 3))) (.var 2)) (.mul (.num 114) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 12) (.pow (.var 3)
    2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 1637) (.var 1)) (.add (.mul (.num 3161) (.var 2)) (.mul (.num 1778)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2105) (.var 2)) (.mul (.num 3094) (.var
    3))) (.var 2)) (.mul (.num 461) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 567) (.var 2)) (.mul (.num 1802) (.var 3))) (.var 2)) (.mul (.num 716) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 51) (.var 2)) (.mul (.num 406)
    (.var 3))) (.var 2)) (.mul (.num 364) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 28) (.var 3)) (.var 2)) (.mul (.num 70) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 4)))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1132)
    (.var 1)) (.add (.mul (.num 2570) (.var 2)) (.mul (.num 1462) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 2057) (.var 2)) (.mul (.num 3086) (.var 3))) (.var 2)) (.mul (.num
    448) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 687) (.var 2)) (.mul
    (.num 2250) (.var 3))) (.var 2)) (.mul (.num 864) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 81) (.var 2)) (.mul (.num 668) (.var 3))) (.var 2)) (.mul
    (.num 560) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 68)
    (.var 3)) (.var 2)) (.mul (.num 143) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.mul (.num 12) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 436) (.var 1)) (.add (.mul
    (.num 1133) (.var 2)) (.mul (.num 670) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    1049) (.var 2)) (.mul (.num 1666) (.var 3))) (.var 2)) (.mul (.num 246) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 409) (.var 2)) (.mul (.num 1458) (.var 3)))
    (.var 2)) (.mul (.num 575) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 57) (.var 2)) (.mul (.num 530) (.var 3))) (.var 2)) (.mul (.num 463) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 68) (.var 3)) (.var 2))
    (.mul (.num 151) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num 17) (.pow
    (.var 3) 2)) (.pow (.var 2) 4))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 72) (.var 1)) (.add (.mul (.num 210)
    (.var 2)) (.mul (.num 132) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 219) (.var 2))
    (.mul (.num 378) (.var 3))) (.var 2)) (.mul (.num 60) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 96) (.var 2)) (.mul (.num 384) (.var 3))) (.var 2)) (.mul (.num
    168) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var
    2)) (.mul (.num 162) (.var 3))) (.var 2)) (.mul (.num 165) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.mul (.num 24) (.var 3)) (.var 2)) (.mul (.num 66) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num 9) (.pow (.var 3) 2)) (.pow
    (.var 2) 4))) (.pow (.var 1) 3)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0)
    (.var 1)) (.var 2))) 5)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.mul (.num 32) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 5)
    (.var 1)) (.var 0)) (.add (.mul (.add (.mul (.num 62) (.var 1)) (.add (.mul (.num 26) (.var
    2)) (.mul (.num 30) (.var 3)))) (.var 1)) (.mul (.mul (.num 10) (.var 3)) (.var 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.num 307) (.var 1)) (.add (.mul (.num 247) (.var 2))
    (.mul (.num 227) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 43) (.var 2)) (.mul (.num
    155) (.var 3))) (.var 2)) (.mul (.num 25) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul
    (.mul (.num 22) (.var 3)) (.var 2)) (.mul (.num 10) (.pow (.var 3) 2))) (.var 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 781) (.var 1)) (.add (.mul (.num 904)
    (.var 2)) (.mul (.num 727) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 297) (.var 2))
    (.mul (.num 736) (.var 3))) (.var 2)) (.mul (.num 145) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 26) (.var 2)) (.mul (.num 203) (.var 3))) (.var 2)) (.mul (.num
    119) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 14) (.var 3))
    (.var 2)) (.mul (.num 22) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1114) (.var 1)) (.add (.mul (.num 1650) (.var
    2)) (.mul (.num 1203) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 761) (.var 2)) (.mul
    (.num 1581) (.var 3))) (.var 2)) (.mul (.num 332) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 118) (.var 2)) (.mul (.num 621) (.var 3))) (.var 2)) (.mul (.num 396)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 2))
    (.mul (.num 77) (.var 3))) (.var 2)) (.mul (.num 138) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 2) (.var 3)) (.var 2)) (.mul (.num 14) (.pow (.var 3)
    2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 901) (.var 1)) (.add (.mul (.num 1606) (.var 2)) (.mul (.num 1111)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 931) (.var 2)) (.mul (.num 1793) (.var
    3))) (.var 2)) (.mul (.num 340) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 198) (.var 2)) (.mul (.num 902) (.var 3))) (.var 2)) (.mul (.num 502) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 2)) (.mul (.num 155)
    (.var 3))) (.var 2)) (.mul (.num 229) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 7) (.var 3)) (.var 2)) (.mul (.num 37) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.mul (.num 2) (.pow (.var 3) 2)) (.pow (.var 2) 4)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 386) (.var 1))
    (.add (.mul (.num 799) (.var 2)) (.mul (.num 554) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 552) (.var 2)) (.mul (.num 1063) (.var 3))) (.var 2)) (.mul (.num 188) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 146) (.var 2)) (.mul (.num 654) (.var
    3))) (.var 2)) (.mul (.num 324) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 12) (.var 2)) (.mul (.num 144) (.var 3))) (.var 2)) (.mul (.num 166) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 9) (.var 3)) (.var
    2)) (.mul (.num 26) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num 1)
    (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 68) (.var 1)) (.add (.mul (.num 160) (.var 2)) (.mul
    (.num 116) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 128) (.var 2)) (.mul (.num 260)
    (.var 3))) (.var 2)) (.mul (.num 48) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 40) (.var 2)) (.mul (.num 192) (.var 3))) (.var 2)) (.mul (.num 100) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 52)
    (.var 3))) (.var 2)) (.mul (.num 64) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 12) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.pow (.var 1) 3)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var
    0) (.var 1)) (.var 2))) 5)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.mul (.num 24) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 3) (.var 1))
    (.var 0)) (.add (.mul (.add (.mul (.num 36) (.var 1)) (.add (.mul (.num 15) (.var 2)) (.mul
    (.num 18) (.var 3)))) (.var 1)) (.mul (.mul (.num 6) (.var 3)) (.var 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.num 177) (.var 1)) (.add (.mul (.num 141) (.var 2)) (.mul
    (.num 129) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 24) (.var 2)) (.mul (.num 87)
    (.var 3))) (.var 2)) (.mul (.num 15) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 12) (.var 3)) (.var 2)) (.mul (.num 6) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 423) (.var 1)) (.add (.mul (.num 477) (.var
    2)) (.mul (.num 399) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 150) (.var 2)) (.mul
    (.num 393) (.var 3))) (.var 2)) (.mul (.num 81) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 12) (.var 2)) (.mul (.num 102) (.var 3))) (.var 2)) (.mul (.num 66)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 6) (.var 3)) (.var 2))
    (.mul (.num 12) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 522) (.var 1)) (.add (.mul (.num 735) (.var 2))
    (.mul (.num 579) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 306) (.var 2)) (.mul
    (.num 714) (.var 3))) (.var 2)) (.mul (.num 174) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 36) (.var 2)) (.mul (.num 246) (.var 3))) (.var 2)) (.mul (.num 201)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 21) (.var 3)) (.var 2))
    (.mul (.num 66) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.mul (.num 6) (.pow
    (.var 3) 2)) (.pow (.var 2) 3)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 321) (.var 1)) (.add (.mul (.num 528) (.var 2)) (.mul (.num 423) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 258) (.var 2)) (.mul (.num 630) (.var 3))) (.var
    2)) (.mul (.num 126) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36)
    (.var 2)) (.mul (.num 264) (.var 3))) (.var 2)) (.mul (.num 162) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.mul (.num 27) (.var 3)) (.var 2)) (.mul (.num 54) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow
    (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    78) (.var 1)) (.add (.mul (.num 144) (.var 2)) (.mul (.num 132) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 78) (.var 2)) (.mul (.num 228) (.var 3))) (.var 2)) (.mul (.num 54)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 2)) (.mul (.num
    108) (.var 3))) (.var 2)) (.mul (.num 84) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 12) (.var 3)) (.var 2)) (.mul (.num 30) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.pow (.var 1) 3)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add
    (.var 0) (.var 1)) (.var 2))) 5)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.num 80) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 6) (.var 1)) (.mul (.num 2) (.var 2))) (.var 0)) (.add (.mul (.add (.mul
    (.num 70) (.var 1)) (.add (.mul (.num 54) (.var 2)) (.mul (.num 12) (.var 3)))) (.var 1))
    (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 4) (.var 3))) (.var 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.num 342) (.var 1)) (.add (.mul (.num 405) (.var 2)) (.mul
    (.num 120) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 151) (.var 2)) (.mul (.num 92)
    (.var 3))) (.var 2)) (.mul (.num 6) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 18) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num 2) (.pow (.var 3)
    2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 924) (.var
    1)) (.add (.mul (.num 1458) (.var 2)) (.mul (.num 496) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 801) (.var 2)) (.mul (.num 590) (.var 3))) (.var 2)) (.mul (.num 50) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 181) (.var 2)) (.mul (.num 214) (.var
    3))) (.var 2)) (.mul (.num 38) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 14) (.var 2)) (.mul (.num 24) (.var 3))) (.var 2)) (.mul (.num 6) (.pow
    (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 1522) (.var 1)) (.add (.mul (.num 2978) (.var 2)) (.mul (.num 1112) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2129) (.var 2)) (.mul (.num 1786) (.var 3)))
    (.var 2)) (.mul (.num 168) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    684) (.var 2)) (.mul (.num 976) (.var 3))) (.var 2)) (.mul (.num 199) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 95) (.var 2)) (.mul (.num 214) (.var
    3))) (.var 2)) (.mul (.num 67) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num 6) (.pow
    (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 1574) (.var 1)) (.add (.mul (.num 3656) (.var 2)) (.mul (.num
    1476) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 3183) (.var 2)) (.mul (.num 2982)
    (.var 3))) (.var 2)) (.mul (.num 298) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1295) (.var 2)) (.mul (.num 2162) (.var 3))) (.var 2)) (.mul (.num 482) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 245) (.var 2)) (.mul
    (.num 690) (.var 3))) (.var 2)) (.mul (.num 249) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 17) (.var 2)) (.mul (.num 94) (.var 3))) (.var 2))
    (.mul (.num 45) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 4) (.var 3)) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1002)
    (.var 1)) (.add (.mul (.num 2683) (.var 2)) (.mul (.num 1168) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 2730) (.var 2)) (.mul (.num 2842) (.var 3))) (.var 2)) (.mul (.num
    302) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1321) (.var 2)) (.mul
    (.num 2556) (.var 3))) (.var 2)) (.mul (.num 627) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 305) (.var 2)) (.mul (.num 1056) (.var 3))) (.var 2))
    (.mul (.num 444) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 27) (.var 2)) (.mul (.num 200) (.var 3))) (.var 2)) (.mul (.num 124) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 14) (.var 3)) (.var 2))
    (.mul (.num 11) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 360) (.var 1))
    (.add (.mul (.num 1088) (.var 2)) (.mul (.num 512) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 1258) (.var 2)) (.mul (.num 1456) (.var 3))) (.var 2)) (.mul (.num 168) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 696) (.var 2)) (.mul (.num 1556)
    (.var 3))) (.var 2)) (.mul (.num 432) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 185) (.var 2)) (.mul (.num 778) (.var 3))) (.var 2)) (.mul (.num 398)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 19)
    (.var 2)) (.mul (.num 182) (.var 3))) (.var 2)) (.mul (.num 158) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 16) (.var 3)) (.var 2)) (.mul (.num 25)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.num 1) (.pow (.var 3) 2))
    (.pow (.var 2) 5))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 56) (.var 1)) (.add (.mul (.num 188) (.var 2)) (.mul
    (.num 96) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 242) (.var 2)) (.mul (.num 312)
    (.var 3))) (.var 2)) (.mul (.num 40) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 149) (.var 2)) (.mul (.num 384) (.var 3))) (.var 2)) (.mul (.num 124) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 44) (.var 2)) (.mul (.num
    222) (.var 3))) (.var 2)) (.mul (.num 142) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 5) (.var 2)) (.mul (.num 60) (.var 3))) (.var 2)) (.mul
    (.num 73) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 6)
    (.var 3)) (.var 2)) (.mul (.num 16) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 5))) (.pow (.var 1) 2)))) (.var 0)) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5))) (.mul (.mul
    (.mul (.num 80) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 15) (.var 1)) (.mul (.num 5) (.var 2))) (.var 0)) (.add (.mul (.add
    (.mul (.num 131) (.var 1)) (.add (.mul (.num 95) (.var 2)) (.mul (.num 30) (.var 3)))) (.var
    1)) (.mul (.add (.mul (.num 16) (.var 2)) (.mul (.num 10) (.var 3))) (.var 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.num 490) (.var 1)) (.add (.mul (.num 541) (.var 2))
    (.mul (.num 212) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 179) (.var 2)) (.mul
    (.num 150) (.var 3))) (.var 2)) (.mul (.num 15) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 18) (.var 2)) (.mul (.num 22) (.var 3))) (.var 2)) (.mul (.num 5)
    (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 1008) (.var 1)) (.add (.mul (.num 1477) (.var 2)) (.mul (.num 630) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 715) (.var 2)) (.mul (.num 676) (.var 3))) (.var 2)) (.mul (.num
    81) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 134) (.var 2)) (.mul
    (.num 196) (.var 3))) (.var 2)) (.mul (.num 55) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 8) (.var 2)) (.mul (.num 14) (.var 3))) (.var 2)) (.mul (.num 6)
    (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 1225) (.var 1)) (.add (.mul (.num 2214) (.var 2)) (.mul (.num 994)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1386) (.var 2)) (.mul (.num 1416) (.var
    3))) (.var 2)) (.mul (.num 175) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 364) (.var 2)) (.mul (.num 604) (.var 3))) (.var 2)) (.mul (.num 170) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38) (.var 2)) (.mul (.num 80)
    (.var 3))) (.var 2)) (.mul (.num 27) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.num 2) (.var 3))) (.var 2)) (.mul (.neg
    (.num 4)) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 877) (.var 1)) (.add (.mul (.num 1870) (.var
    2)) (.mul (.num 884) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1418) (.var 2)) (.mul
    (.num 1570) (.var 3))) (.var 2)) (.mul (.num 185) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 468) (.var 2)) (.mul (.num 886) (.var 3))) (.var 2)) (.mul (.num 220)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 66) (.var 2))
    (.mul (.num 172) (.var 3))) (.var 2)) (.mul (.num 25) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.num 8) (.var 3))) (.var 2))
    (.mul (.neg (.num 32)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.neg
    (.num 6)) (.pow (.var 3) 2)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 342) (.var 1)) (.add (.mul (.num
    836) (.var 2)) (.mul (.num 422) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 739) (.var
    2)) (.mul (.num 900) (.var 3))) (.var 2)) (.mul (.num 108) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 290) (.var 2)) (.mul (.num 636) (.var 3))) (.var 2)) (.mul
    (.num 162) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50)
    (.var 2)) (.mul (.num 166) (.var 3))) (.var 2)) (.mul (.num 27) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.num 12) (.var
    3))) (.var 2)) (.mul (.neg (.num 44)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.mul (.neg (.num 16)) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.neg
    (.num 1)) (.pow (.var 3) 2)) (.pow (.var 2) 5)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 56) (.var 1)) (.add (.mul
    (.num 154) (.var 2)) (.mul (.num 84) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 155)
    (.var 2)) (.mul (.num 210) (.var 3))) (.var 2)) (.mul (.num 28) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 70) (.var 2)) (.mul (.num 180) (.var 3))) (.var 2)) (.mul
    (.num 56) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14)
    (.var 2)) (.mul (.num 60) (.var 3))) (.var 2)) (.mul (.num 25) (.pow (.var 3) 2))) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.num 6) (.var 3)))
    (.var 2)) (.mul (.neg (.num 10)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul
    (.neg (.num 8)) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.neg (.num 1))
    (.pow (.var 3) 2)) (.pow (.var 2) 5))) (.var 1)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var
    0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5))) (.mul (.mul (.mul (.num 40) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9) (.var
    1)) (.mul (.num 3) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 75) (.var 1)) (.add
    (.mul (.num 54) (.var 2)) (.mul (.num 18) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 9)
    (.var 2)) (.mul (.num 6) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.num 264) (.var 1)) (.add (.mul (.num 288) (.var 2)) (.mul (.num 120) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 93) (.var 2)) (.mul (.num 84) (.var 3))) (.var 2)) (.mul (.num
    9) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 2)) (.mul (.num
    12) (.var 3))) (.var 2)) (.mul (.num 3) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 492) (.var 1)) (.add (.mul (.num 705) (.var 2))
    (.mul (.num 330) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 327) (.var 2)) (.mul
    (.num 348) (.var 3))) (.var 2)) (.mul (.num 45) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 57) (.var 2)) (.mul (.num 96) (.var 3))) (.var 2)) (.mul (.num 30)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 2))
    (.mul (.num 6) (.var 3))) (.var 2)) (.mul (.num 3) (.pow (.var 3) 2))) (.pow (.var 2) 2))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 507) (.var 1))
    (.add (.mul (.num 882) (.var 2)) (.mul (.num 450) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 513) (.var 2)) (.mul (.num 618) (.var 3))) (.var 2)) (.mul (.num 87) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 117) (.var 2)) (.mul (.num 240) (.var
    3))) (.var 2)) (.mul (.num 81) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 9) (.var 2)) (.mul (.num 24) (.var 3))) (.var 2)) (.mul (.num 9) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.mul (.neg (.num 3)) (.pow (.var 3) 2)) (.pow
    (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 273) (.var 1)) (.add (.mul (.num 549) (.var 2)) (.mul (.num 312) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 372) (.var 2)) (.mul (.num 528) (.var 3))) (.var 2)) (.mul
    (.num 69) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 99) (.var 2))
    (.mul (.num 264) (.var 3))) (.var 2)) (.mul (.num 69) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 9) (.var 2)) (.mul (.num 36) (.var 3))) (.var 2)) (.mul
    (.neg (.num 12)) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.mul (.neg (.num
    21)) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.neg (.num 3)) (.pow (.var
    3) 2)) (.pow (.var 2) 4)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 60) (.var 1)) (.add (.mul (.num 135) (.var 2)) (.mul (.num 90)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 102) (.var 2)) (.mul (.num 180) (.var 3)))
    (.var 2)) (.mul (.num 30) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    30) (.var 2)) (.mul (.num 108) (.var 3))) (.var 2)) (.mul (.num 45) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.num 18) (.var 3)))
    (.var 2)) (.mul (.num 6) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.mul (.neg
    (.num 12)) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.neg (.num 3)) (.pow
    (.var 3) 2)) (.pow (.var 2) 4))) (.var 1)))) (.pow (.var 0) 3)) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5))) (.mul (.mul (.mul (.num 1) (.mul
    (.add (.mul (.add (.mul (.mul (.mul (.num 3) (.var 3)) (.pow (.var 1) 3)) (.var 0)) (.mul
    (.add (.mul (.mul (.num 9) (.var 3)) (.var 1)) (.add (.mul (.mul (.num 3) (.var 3)) (.var 2))
    (.mul (.num 3) (.pow (.var 3) 2)))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.mul (.num 6) (.var 3)) (.var 1)) (.add (.mul (.mul (.num 3) (.var 3)) (.var 2)) (.mul
    (.num 6) (.pow (.var 3) 2)))) (.var 1)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.var 2)))
    (.pow (.var 1) 3))) (.pow (.var 0) 2))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var
    0) (.var 1)) (.var 2))) 4)) (.pow (.add (.var 1) (.var 2)) 4))) (.mul (.mul (.mul (.num 2)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.add (.mul
    (.num 6) (.var 1)) (.mul (.num 10) (.var 3))) (.pow (.var 1) 2)) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 46) (.var 1)) (.add (.mul (.num 20) (.var 2)) (.mul (.num 102) (.var 3))))
    (.var 1)) (.add (.mul (.mul (.num 40) (.var 3)) (.var 2)) (.mul (.num 10) (.pow (.var 3) 2))))
    (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.num 143) (.var 1))
    (.add (.mul (.num 117) (.var 2)) (.mul (.num 309) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 18) (.var 2)) (.mul (.num 229) (.var 3))) (.var 2)) (.mul (.num 86) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 38) (.var 3)) (.var 2)) (.mul (.num 40) (.pow
    (.var 3) 2))) (.var 2))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 230) (.var 1)) (.add (.mul (.num 267) (.var 2)) (.mul (.num 427) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 77) (.var 2)) (.mul (.num 451) (.var 3))) (.var
    2)) (.mul (.num 186) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4)
    (.var 2)) (.mul (.num 126) (.var 3))) (.var 2)) (.mul (.num 172) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.mul (.num 8) (.var 3)) (.var 2)) (.mul (.num 38) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 201) (.var 1)) (.add (.mul (.num 297) (.var 2))
    (.mul (.num 342) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 124) (.var 2)) (.mul
    (.num 480) (.var 3))) (.var 2)) (.mul (.num 146) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 14) (.var 2)) (.mul (.num 189) (.var 3))) (.var 2)) (.mul (.num 194)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 19) (.var 3)) (.var 2))
    (.mul (.num 74) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.mul (.num 8) (.pow
    (.var 3) 2)) (.pow (.var 2) 3))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 90) (.var 1)) (.add (.mul (.num 161) (.var 2)) (.mul
    (.num 168) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 89) (.var 2)) (.mul (.num 296)
    (.var 3))) (.var 2)) (.mul (.num 76) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 16) (.var 2)) (.mul (.num 157) (.var 3))) (.var 2)) (.mul (.num 130) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 25) (.var 3)) (.var 2)) (.mul (.num
    64) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.mul (.num 8) (.pow (.var 3) 2))
    (.pow (.var 2) 3))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 16) (.var 1)) (.add (.mul (.num 34) (.var 2)) (.mul (.num 36)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 24) (.var 2)) (.mul (.num 78) (.var 3)))
    (.var 2)) (.mul (.num 20) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    6) (.var 2)) (.mul (.num 56) (.var 3))) (.var 2)) (.mul (.num 44) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.mul (.num 14) (.var 3)) (.var 2)) (.mul (.num 32) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.mul (.num 8) (.pow (.var 3) 2)) (.pow
    (.var 2) 3))) (.pow (.var 1) 4)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0)
    (.var 1)) (.var 2))) 4)) (.pow (.add (.var 1) (.var 2)) 3))) (.mul (.mul (.mul (.mul (.num 1)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.add (.mul (.num 6) (.var
    1)) (.mul (.num 6) (.var 3))) (.pow (.var 1) 2)) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    42) (.var 1)) (.add (.mul (.num 18) (.var 2)) (.mul (.num 78) (.var 3)))) (.var 1)) (.add
    (.mul (.mul (.num 30) (.var 3)) (.var 2)) (.mul (.num 6) (.pow (.var 3) 2)))) (.pow (.var 1)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.num 117) (.var 1)) (.add (.mul
    (.num 93) (.var 2)) (.mul (.num 219) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 12)
    (.var 2)) (.mul (.num 153) (.var 3))) (.var 2)) (.mul (.num 66) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.mul (.num 24) (.var 3)) (.var 2)) (.mul (.num 30) (.pow (.var 3) 2)))
    (.var 2))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 162) (.var 1)) (.add (.mul (.num 180) (.var 2)) (.mul (.num 267) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 42) (.var 2)) (.mul (.num 264) (.var 3))) (.var 2)) (.mul (.num
    120) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 57) (.var 3)) (.var 2))
    (.mul (.num 108) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.mul (.num 24) (.pow (.var 3)
    2)) (.pow (.var 2) 2))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 111) (.var 1)) (.add (.mul (.num 153) (.var 2)) (.mul (.num 186) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 48) (.var 2)) (.mul (.num 249) (.var 3))) (.var
    2)) (.mul (.num 72) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 75) (.var 3))
    (.var 2)) (.mul (.num 90) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.mul (.num 24) (.pow
    (.var 3) 2)) (.pow (.var 2) 2))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 30) (.var 1)) (.add (.mul (.num 48) (.var 2)) (.mul (.num 66)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 18) (.var 2)) (.mul (.num 108) (.var 3)))
    (.var 2)) (.mul (.num 36) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 42)
    (.var 3)) (.var 2)) (.mul (.num 60) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.mul (.num
    24) (.pow (.var 3) 2)) (.pow (.var 2) 2))) (.pow (.var 1) 4)))) (.var 0)) (.pow (.mul (.add
    (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.pow (.add (.var 1) (.var
    2)) 3))) (.mul (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.add (.mul (.num 12) (.var 1)) (.mul (.num 6)
    (.var 3))) (.var 1)) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 156) (.var 1)) (.add (.mul
    (.num 69) (.var 2)) (.mul (.num 114) (.var 3)))) (.var 1)) (.add (.mul (.mul (.num 42) (.var
    3)) (.var 2)) (.mul (.num 6) (.pow (.var 3) 2)))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 824) (.var 1)) (.add (.mul (.num 704) (.var 2)) (.mul (.num 739) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 135) (.var 2)) (.mul (.num 547) (.var 3))) (.var
    2)) (.mul (.num 96) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 90) (.var 3))
    (.var 2)) (.mul (.num 42) (.pow (.var 3) 2))) (.var 2))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2390) (.var 1)) (.add (.mul (.num 2982) (.var
    2)) (.mul (.num 2433) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1093) (.var 2))
    (.mul (.num 2696) (.var 3))) (.var 2)) (.mul (.num 502) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 111) (.var 2)) (.mul (.num 869) (.var 3))) (.var 2)) (.mul (.num
    439) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 78) (.var 3))
    (.var 2)) (.mul (.num 90) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4230) (.var 1)) (.add (.mul
    (.num 6877) (.var 2)) (.mul (.num 4756) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    3642) (.var 2)) (.mul (.num 7013) (.var 3))) (.var 2)) (.mul (.num 1273) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 698) (.var 2)) (.mul (.num 3310) (.var 3)))
    (.var 2)) (.mul (.num 1655) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 33) (.var 2)) (.mul (.num 555) (.var 3))) (.var 2)) (.mul (.num 655) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 24) (.var 3)) (.var 2))
    (.mul (.num 78) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4724) (.var 1)) (.add (.mul
    (.num 9406) (.var 2)) (.mul (.num 5920) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    6432) (.var 2)) (.mul (.num 10945) (.var 3))) (.var 2)) (.mul (.num 1833) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1758) (.var 2)) (.mul (.num 6819) (.var 3)))
    (.var 2)) (.mul (.num 3131) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 155) (.var 2)) (.mul (.num 1653) (.var 3))) (.var 2)) (.mul (.num 1770) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 123) (.var 3)) (.var
    2)) (.mul (.num 379) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num 24)
    (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3272) (.var 1)) (.add (.mul (.num 7669)
    (.var 2)) (.mul (.num 4682) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 6360) (.var
    2)) (.mul (.num 10449) (.var 3))) (.var 2)) (.mul (.num 1647) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 2206) (.var 2)) (.mul (.num 8141) (.var 3))) (.var 2))
    (.mul (.num 3484) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    270) (.var 2)) (.mul (.num 2604) (.var 3))) (.var 2)) (.mul (.num 2535) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 284) (.var 3)) (.var 2)) (.mul
    (.num 742) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num 71) (.pow (.var
    3) 2)) (.pow (.var 2) 4))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1290) (.var 1)) (.add (.mul (.num 3459) (.var
    2)) (.mul (.num 2160) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 3337) (.var 2))
    (.mul (.num 5658) (.var 3))) (.var 2)) (.mul (.num 886) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1375) (.var 2)) (.mul (.num 5303) (.var 3))) (.var 2)) (.mul
    (.num 2254) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 207)
    (.var 2)) (.mul (.num 2108) (.var 3))) (.var 2)) (.mul (.num 2035) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 303) (.var 3)) (.var 2)) (.mul (.num
    770) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num 103) (.pow (.var 3)
    2)) (.pow (.var 2) 4))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 222) (.var 1)) (.add (.mul (.num 666) (.var
    2)) (.mul (.num 444) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 725) (.var 2)) (.mul
    (.num 1332) (.var 3))) (.var 2)) (.mul (.num 224) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 340) (.var 2)) (.mul (.num 1450) (.var 3))) (.var 2)) (.mul (.num 674)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 59) (.var 2))
    (.mul (.num 680) (.var 3))) (.var 2)) (.mul (.num 737) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 118) (.var 3)) (.var 2)) (.mul (.num 348) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num 61) (.pow (.var 3) 2)) (.pow (.var 2)
    4))) (.pow (.var 1) 4)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1))
    (.var 2))) 4)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.mul (.num 4) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.add
    (.mul (.num 15) (.var 1)) (.mul (.num 15) (.var 3))) (.var 1)) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 186) (.var 1)) (.add (.mul (.num 81) (.var 2)) (.mul (.num 201) (.var 3))))
    (.var 1)) (.add (.mul (.mul (.num 78) (.var 3)) (.var 2)) (.mul (.num 15) (.pow (.var 3) 2))))
    (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.num 880) (.var 1)) (.add
    (.mul (.num 736) (.var 2)) (.mul (.num 1070) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 138) (.var 2)) (.mul (.num 812) (.var 3))) (.var 2)) (.mul (.num 171) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 138) (.var 3)) (.var 2)) (.mul (.num 78) (.pow
    (.var 3) 2))) (.var 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 2144) (.var 1)) (.add (.mul (.num 2580) (.var 2)) (.mul (.num 2746) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 901) (.var 2)) (.mul (.num 3016) (.var 3))) (.var 2))
    (.mul (.num 733) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 87) (.var
    2)) (.mul (.num 972) (.var 3))) (.var 2)) (.mul (.num 658) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 90) (.var 3)) (.var 2)) (.mul (.num 138) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 2959) (.var 1)) (.add (.mul (.num 4566) (.var 2)) (.mul (.num
    3920) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2254) (.var 2)) (.mul (.num 5572)
    (.var 3))) (.var 2)) (.mul (.num 1344) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 395) (.var 2)) (.mul (.num 2518) (.var 3))) (.var 2)) (.mul (.num 1763) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 2)) (.mul
    (.num 404) (.var 3))) (.var 2)) (.mul (.num 716) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.mul (.num 15) (.var 3)) (.var 2)) (.mul (.num 90) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 2334) (.var 1)) (.add (.mul (.num 4351) (.var 2)) (.mul (.num
    3354) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2735) (.var 2)) (.mul (.num 5900)
    (.var 3))) (.var 2)) (.mul (.num 1230) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 675) (.var 2)) (.mul (.num 3444) (.var 3))) (.var 2)) (.mul (.num 2062) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50) (.var 2)) (.mul
    (.num 768) (.var 3))) (.var 2)) (.mul (.num 1147) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 47) (.var 3)) (.var 2)) (.mul (.num 246) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num 15) (.pow (.var 3) 2)) (.pow (.var 2)
    4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 978) (.var 1)) (.add (.mul (.num 2130) (.var 2)) (.mul (.num 1632) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1622) (.var 2)) (.mul (.num 3450) (.var 3)))
    (.var 2)) (.mul (.num 682) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    513) (.var 2)) (.mul (.num 2514) (.var 3))) (.var 2)) (.mul (.num 1402) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 55) (.var 2)) (.mul (.num 742) (.var
    3))) (.var 2)) (.mul (.num 978) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 70) (.var 3)) (.var 2)) (.mul (.num 267) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.mul (.num 21) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.pow (.var 1)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 168) (.var 1)) (.add (.mul (.num 420) (.var 2)) (.mul (.num 336) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 378) (.var 2)) (.mul (.num 840) (.var 3))) (.var 2)) (.mul (.num
    172) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 146) (.var 2)) (.mul
    (.num 754) (.var 3))) (.var 2)) (.mul (.num 434) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 20) (.var 2)) (.mul (.num 288) (.var 3))) (.var 2)) (.mul
    (.num 394) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 38)
    (.var 3)) (.var 2)) (.mul (.num 152) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.mul (.num 20) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.pow (.var 1) 3)))) (.var 0)) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.pow (.add (.var
    1) (.var 2)) 2))) (.mul (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.mul (.add (.mul (.num 9) (.var 1)) (.mul (.num 9) (.var 3)))
    (.var 1)) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 126) (.var 1)) (.add (.mul (.num 54)
    (.var 2)) (.mul (.num 117) (.var 3)))) (.var 1)) (.add (.mul (.mul (.num 45) (.var 3)) (.var
    2)) (.mul (.num 9) (.pow (.var 3) 2)))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 588) (.var 1)) (.add (.mul (.num 480) (.var 2)) (.mul (.num 660) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 90) (.var 2)) (.mul (.num 489) (.var 3))) (.var 2))
    (.mul (.num 99) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 81) (.var 3))
    (.var 2)) (.mul (.num 45) (.pow (.var 3) 2))) (.var 2))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1320) (.var 1)) (.add (.mul (.num 1530) (.var
    2)) (.mul (.num 1590) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 507) (.var 2)) (.mul
    (.num 1656) (.var 3))) (.var 2)) (.mul (.num 447) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 45) (.var 2)) (.mul (.num 507) (.var 3))) (.var 2)) (.mul (.num 393)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 45) (.var 3)) (.var 2))
    (.mul (.num 81) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1569) (.var 1)) (.add (.mul (.num 2298)
    (.var 2)) (.mul (.num 2004) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1032) (.var
    2)) (.mul (.num 2664) (.var 3))) (.var 2)) (.mul (.num 702) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 150) (.var 2)) (.mul (.num 1080) (.var 3))) (.var 2))
    (.mul (.num 882) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 141)
    (.var 3)) (.var 2)) (.mul (.num 351) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.mul (.num 45) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 954) (.var 1)) (.add (.mul (.num 1656)
    (.var 2)) (.mul (.num 1422) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 903) (.var 2))
    (.mul (.num 2346) (.var 3))) (.var 2)) (.mul (.num 510) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 165) (.var 2)) (.mul (.num 1206) (.var 3))) (.var 2)) (.mul
    (.num 792) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 210) (.var
    3)) (.var 2)) (.mul (.num 381) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.mul
    (.num 63) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 234) (.var 1)) (.add (.mul (.num
    462) (.var 2)) (.mul (.num 456) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 288) (.var
    2)) (.mul (.num 894) (.var 3))) (.var 2)) (.mul (.num 228) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 60) (.var 2)) (.mul (.num 552) (.var 3))) (.var 2)) (.mul
    (.num 450) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 114) (.var
    3)) (.var 2)) (.mul (.num 282) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.mul
    (.num 60) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.pow (.var 1) 3)))) (.pow (.var 0) 2)) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.pow (.add (.var
    1) (.var 2)) 2))) (.mul (.mul (.mul (.mul (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add
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
    2)) (.pow (.var 2) 5))) (.pow (.var 1) 3)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1))
    (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul
    (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.mul (.num 20) (.var 1)) (.var 0)) (.add (.mul (.add (.mul (.num 288) (.var
    1)) (.add (.mul (.num 124) (.var 2)) (.mul (.num 120) (.var 3)))) (.var 1)) (.mul (.mul (.num
    40) (.var 3)) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 1729) (.var 1))
    (.add (.mul (.num 1449) (.var 2)) (.mul (.num 1133) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 276) (.var 2)) (.mul (.num 805) (.var 3))) (.var 2)) (.mul (.num 100) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 128) (.var 3)) (.var 2)) (.mul (.num 40)
    (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 5607) (.var 1)) (.add (.mul (.num 6855) (.var 2)) (.mul (.num 4643) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 2528) (.var 2)) (.mul (.num 4973) (.var 3))) (.var 2)) (.mul
    (.num 770) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 276) (.var 2))
    (.mul (.num 1570) (.var 3))) (.var 2)) (.mul (.num 646) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.mul (.num 144) (.var 3)) (.var 2)) (.mul (.num 128) (.pow (.var 3)
    2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 10772) (.var 1)) (.add (.mul (.num 17063) (.var 2)) (.mul (.num 10392) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 9080) (.var 2)) (.mul (.num 14658) (.var 3))) (.var
    2)) (.mul (.num 2464) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1873)
    (.var 2)) (.mul (.num 6780) (.var 3))) (.var 2)) (.mul (.num 3080) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 120) (.var 2)) (.mul (.num 1186) (.var 3)))
    (.var 2)) (.mul (.num 1192) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 64) (.var 3)) (.var 2)) (.mul (.num 144) (.pow (.var 3) 2))) (.pow (.var 2)
    3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    12617) (.var 1)) (.add (.mul (.num 24296) (.var 2)) (.mul (.num 13864) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 16591) (.var 2)) (.mul (.num 24148) (.var 3))) (.var 2)) (.mul
    (.num 3986) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4858) (.var 2))
    (.mul (.num 14526) (.var 3))) (.var 2)) (.mul (.num 6456) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 566) (.var 2)) (.mul (.num 3620) (.var 3))) (.var 2))
    (.mul (.num 3586) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 16) (.var 2)) (.mul (.num 346) (.var 3))) (.var 2)) (.mul (.num 812) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 8) (.var 3)) (.var 2))
    (.mul (.num 64) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 8837) (.var 1)) (.add (.mul
    (.num 19908) (.var 2)) (.mul (.num 11210) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    16420) (.var 2)) (.mul (.num 23352) (.var 3))) (.var 2)) (.mul (.num 3614) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6113) (.var 2)) (.mul (.num 17382) (.var
    3))) (.var 2)) (.mul (.num 7064) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 996) (.var 2)) (.mul (.num 5642) (.var 3))) (.var 2)) (.mul (.num 4896)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 52)
    (.var 2)) (.mul (.num 759) (.var 3))) (.var 2)) (.mul (.num 1482) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 29) (.var 3)) (.var 2)) (.mul (.num 192)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.num 8) (.pow (.var 3) 2))
    (.pow (.var 2) 5)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 3394) (.var 1)) (.add (.mul (.num 8731) (.var 2)) (.mul
    (.num 5088) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 8403) (.var 2)) (.mul (.num
    12420) (.var 3))) (.var 2)) (.mul (.num 1920) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 3764) (.var 2)) (.mul (.num 11136) (.var 3))) (.var 2)) (.mul (.num 4470)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 774) (.var 2))
    (.mul (.num 4528) (.var 3))) (.var 2)) (.mul (.num 3762) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 56) (.var 2)) (.mul (.num 811) (.var 3)))
    (.var 2)) (.mul (.num 1402) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 47) (.var 3)) (.var 2)) (.mul (.num 220) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.mul (.num 10) (.pow (.var 3) 2)) (.pow (.var 2) 5))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 548) (.var 1)) (.add (.mul (.num 1586) (.var 2)) (.mul (.num 980) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 1746) (.var 2)) (.mul (.num 2766) (.var 3))) (.var 2)) (.mul
    (.num 452) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 912) (.var 2))
    (.mul (.num 2942) (.var 3))) (.var 2)) (.mul (.num 1260) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 224) (.var 2)) (.mul (.num 1464) (.var 3))) (.var 2))
    (.mul (.num 1320) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 20) (.var 2)) (.mul (.num 334) (.var 3))) (.var 2)) (.mul (.num 644) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 26) (.var 3)) (.var 2))
    (.mul (.num 142) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.num 10) (.pow
    (.var 3) 2)) (.pow (.var 2) 5))) (.pow (.var 1) 2)))) (.pow (.var 0) 2)) (.pow (.mul (.add
    (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.add (.var 1) (.var 2))))
    (.mul (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.mul (.num 12) (.var 1)) (.var 0)) (.add (.mul (.add (.mul (.num 168)
    (.var 1)) (.add (.mul (.num 72) (.var 2)) (.mul (.num 72) (.var 3)))) (.var 1)) (.mul (.mul
    (.num 24) (.var 3)) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 999) (.var
    1)) (.add (.mul (.num 831) (.var 2)) (.mul (.num 651) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 156) (.var 2)) (.mul (.num 459) (.var 3))) (.var 2)) (.mul (.num 60) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 72) (.var 3)) (.var 2)) (.mul (.num 24) (.pow
    (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    3105) (.var 1)) (.add (.mul (.num 3738) (.var 2)) (.mul (.num 2583) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 1353) (.var 2)) (.mul (.num 2718) (.var 3))) (.var 2)) (.mul
    (.num 438) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 144) (.var 2))
    (.mul (.num 831) (.var 3))) (.var 2)) (.mul (.num 366) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.mul (.num 72) (.var 3)) (.var 2)) (.mul (.num 72) (.pow (.var 3) 2)))
    (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 5448) (.var 1)) (.add (.mul (.num 8400) (.var 2)) (.mul (.num 5310) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 4302) (.var 2)) (.mul (.num 7227) (.var 3))) (.var 2)) (.mul
    (.num 1332) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 834) (.var 2))
    (.mul (.num 3168) (.var 3))) (.var 2)) (.mul (.num 1638) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 48) (.var 2)) (.mul (.num 507) (.var 3))) (.var 2))
    (.mul (.num 618) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 24) (.var 3)) (.var 2)) (.mul (.num 72) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5451) (.var
    1)) (.add (.mul (.num 10080) (.var 2)) (.mul (.num 6168) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 6465) (.var 2)) (.mul (.num 10242) (.var 3))) (.var 2)) (.mul (.num 1836)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1704) (.var 2)) (.mul (.num
    5703) (.var 3))) (.var 2)) (.mul (.num 2850) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 156) (.var 2)) (.mul (.num 1236) (.var 3))) (.var 2)) (.mul
    (.num 1500) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num
    87) (.var 3)) (.var 2)) (.mul (.num 318) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.mul (.num 24) (.pow (.var 3) 2)) (.pow (.var 2) 4)))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2907) (.var 1)) (.add (.mul
    (.num 6189) (.var 2)) (.mul (.num 3996) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    4656) (.var 2)) (.mul (.num 7908) (.var 3))) (.var 2)) (.mul (.num 1332) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1482) (.var 2)) (.mul (.num 5394) (.var 3)))
    (.var 2)) (.mul (.num 2436) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 168) (.var 2)) (.mul (.num 1503) (.var 3))) (.var 2)) (.mul (.num 1500) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 141) (.var 3)) (.var
    2)) (.mul (.num 366) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num 30)
    (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 642) (.var 1)) (.add (.mul (.num 1530)
    (.var 2)) (.mul (.num 1134) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1296) (.var
    2)) (.mul (.num 2610) (.var 3))) (.var 2)) (.mul (.num 516) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 468) (.var 2)) (.mul (.num 2100) (.var 3))) (.var 2))
    (.mul (.num 1164) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    60) (.var 2)) (.mul (.num 702) (.var 3))) (.var 2)) (.mul (.num 912) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 78) (.var 3)) (.var 2)) (.mul (.num 294)
    (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num 30) (.pow (.var 3) 2))
    (.pow (.var 2) 4))) (.pow (.var 1) 2)))) (.pow (.var 0) 3)) (.pow (.mul (.add (.var 0) (.var
    1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul
    (.num 24) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 1)) (.mul (.num 10) (.var 2))) (.var 0))
    (.add (.mul (.add (.mul (.num 408) (.var 1)) (.add (.mul (.num 318) (.var 2)) (.mul (.num 60)
    (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 60) (.var 2)) (.mul (.num 20) (.var 3))) (.var
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 2391) (.var 1)) (.add (.mul (.num
    2884) (.var 2)) (.mul (.num 700) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1113)
    (.var 2)) (.mul (.num 532) (.var 3))) (.var 2)) (.mul (.num 30) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 140) (.var 2)) (.mul (.num 92) (.var 3))) (.var 2)) (.mul
    (.num 10) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 7974) (.var 1)) (.add (.mul (.num 12900) (.var 2)) (.mul (.num 3526) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 7436) (.var 2)) (.mul (.num 4180) (.var 3))) (.var 2))
    (.mul (.num 300) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1820)
    (.var 2)) (.mul (.num 1530) (.var 3))) (.var 2)) (.mul (.num 226) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 160) (.var 2)) (.mul (.num 176) (.var 3)))
    (.var 2)) (.mul (.num 36) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 16766) (.var 1)) (.add (.mul (.num 33817)
    (.var 2)) (.mul (.num 10058) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 25674) (.var
    2)) (.mul (.num 16210) (.var 3))) (.var 2)) (.mul (.num 1281) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 9147) (.var 2)) (.mul (.num 9090) (.var 3))) (.var 2))
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
    (.var 1) 2)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0)
    (.var 1)) (.var 2))) 4))) (.mul (.mul (.mul (.num 8) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 75) (.var 1)) (.mul
    (.num 25) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 800) (.var 1)) (.add (.mul (.num
    595) (.var 2)) (.mul (.num 150) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 105) (.var 2))
    (.mul (.num 50) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num
    3743) (.var 1)) (.add (.mul (.num 4277) (.var 2)) (.mul (.num 1310) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 1514) (.var 2)) (.mul (.num 930) (.var 3))) (.var 2)) (.mul
    (.num 75) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 170) (.var 2))
    (.mul (.num 140) (.var 3))) (.var 2)) (.mul (.num 25) (.pow (.var 3) 2))) (.var 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9933) (.var 1)) (.add (.mul (.num
    15169) (.var 2)) (.mul (.num 5010) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 7982)
    (.var 2)) (.mul (.num 5432) (.var 3))) (.var 2)) (.mul (.num 530) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 1726) (.var 2)) (.mul (.num 1658) (.var 3))) (.var 2))
    (.mul (.num 365) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    130) (.var 2)) (.mul (.num 136) (.var 3))) (.var 2)) (.mul (.num 45) (.pow (.var 3) 2))) (.pow
    (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    16254) (.var 1)) (.add (.mul (.num 30819) (.var 2)) (.mul (.num 10712) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 21282) (.var 2)) (.mul (.num 15572) (.var 3))) (.var 2)) (.mul
    (.num 1600) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6657) (.var 2))
    (.mul (.num 7176) (.var 3))) (.var 2)) (.mul (.num 1636) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 935) (.var 2)) (.mul (.num 1168) (.var 3))) (.var 2))
    (.mul (.num 374) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 45) (.var 2)) (.mul (.num 52) (.var 3))) (.var 2)) (.mul (.neg (.num 2)) (.pow
    (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 16735) (.var 1)) (.add (.mul (.num 37664) (.var 2)) (.mul (.num
    13822) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 31902) (.var 2)) (.mul (.num 25262)
    (.var 3))) (.var 2)) (.mul (.num 2589) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 12850) (.var 2)) (.mul (.num 15694) (.var 3))) (.var 2)) (.mul (.num 3454) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2541) (.var 2)) (.mul
    (.num 3894) (.var 3))) (.var 2)) (.mul (.num 1085) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 219) (.var 2)) (.mul (.num 346) (.var 3))) (.var
    2)) (.mul (.neg (.num 82)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 5) (.var 2)) (.mul (.num 6) (.var 3))) (.var 2)) (.mul (.neg (.num 42))
    (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 10564) (.var 1)) (.add (.mul (.num 27397)
    (.var 2)) (.mul (.num 10776) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 27316) (.var
    2)) (.mul (.num 23870) (.var 3))) (.var 2)) (.mul (.num 2466) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 13322) (.var 2)) (.mul (.num 18894) (.var 3))) (.var 2))
    (.mul (.num 4167) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    3327) (.var 2)) (.mul (.num 6490) (.var 3))) (.var 2)) (.mul (.num 1818) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 394) (.var 2)) (.mul (.num
    932) (.var 3))) (.var 2)) (.mul (.neg (.num 149)) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 2)) (.mul (.num 42) (.var 3))) (.var
    2)) (.mul (.neg (.num 199)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul
    (.neg (.num 23)) (.pow (.var 3) 2)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3732) (.var 1))
    (.add (.mul (.num 10930) (.var 2)) (.mul (.num 4676) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 12493) (.var 2)) (.mul (.num 12236) (.var 3))) (.var 2)) (.mul (.num 1362) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7112) (.var 2)) (.mul (.num
    11882) (.var 3))) (.var 2)) (.mul (.num 2964) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 2121) (.var 2)) (.mul (.num 5310) (.var 3))) (.var 2)) (.mul
    (.num 2003) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 311) (.var 2)) (.mul (.num 1096) (.var 3))) (.var 2)) (.mul (.num 270) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17) (.var 2)) (.mul
    (.num 90) (.var 3))) (.var 2)) (.mul (.neg (.num 169)) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 2) (.var 3)) (.var 2)) (.mul (.neg (.num 51)) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.neg (.num 3)) (.pow (.var 3) 2))
    (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 564) (.var 1)) (.add (.mul (.num 1840) (.var
    2)) (.mul (.num 860) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2370) (.var 2)) (.mul
    (.num 2608) (.var 3))) (.var 2)) (.mul (.num 324) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1539) (.var 2)) (.mul (.num 3024) (.var 3))) (.var 2)) (.mul (.num
    894) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 530) (.var
    2)) (.mul (.num 1682) (.var 3))) (.var 2)) (.mul (.num 882) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 91) (.var 2)) (.mul (.num 458) (.var 3)))
    (.var 2)) (.mul (.num 353) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 6) (.var 2)) (.mul (.num 54) (.var 3))) (.var 2)) (.mul (.num 30) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 2) (.var 3)) (.var
    2)) (.mul (.neg (.num 13)) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.neg
    (.num 2)) (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.var 1)))) (.pow (.var 0) 3)) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4))) (.mul (.mul (.mul
    (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 45) (.var 1)) (.mul (.num 15) (.var 2))) (.var 0)) (.add (.mul (.add (.mul
    (.num 462) (.var 1)) (.add (.mul (.num 342) (.var 2)) (.mul (.num 90) (.var 3)))) (.var 1))
    (.mul (.add (.mul (.num 60) (.var 2)) (.mul (.num 30) (.var 3))) (.var 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.num 2061) (.var 1)) (.add (.mul (.num 2337) (.var 2)) (.mul
    (.num 750) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 816) (.var 2)) (.mul (.num 528)
    (.var 3))) (.var 2)) (.mul (.num 45) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 90) (.var 2)) (.mul (.num 78) (.var 3))) (.var 2)) (.mul (.num 15) (.pow (.var 3)
    2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5085) (.var
    1)) (.add (.mul (.num 7662) (.var 2)) (.mul (.num 2706) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 3945) (.var 2)) (.mul (.num 2898) (.var 3))) (.var 2)) (.mul (.num 300)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 828) (.var 2)) (.mul (.num
    858) (.var 3))) (.var 2)) (.mul (.num 204) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 60) (.var 2)) (.mul (.num 66) (.var 3))) (.var 2)) (.mul (.num
    24) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 7434) (.var 1)) (.add (.mul (.num 13794) (.var 2)) (.mul (.num
    5244) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 9204) (.var 2)) (.mul (.num 7458)
    (.var 3))) (.var 2)) (.mul (.num 840) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 2736) (.var 2)) (.mul (.num 3282) (.var 3))) (.var 2)) (.mul (.num 840) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 357) (.var 2)) (.mul
    (.num 486) (.var 3))) (.var 2)) (.mul (.num 174) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 2)) (.mul (.num 18) (.var 3))) (.var 2))
    (.mul (.neg (.num 6)) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6423) (.var 1)) (.add (.mul (.num
    14004) (.var 2)) (.mul (.num 5814) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 11280)
    (.var 2)) (.mul (.num 10338) (.var 3))) (.var 2)) (.mul (.num 1167) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 4206) (.var 2)) (.mul (.num 6084) (.var 3))) (.var 2))
    (.mul (.num 1476) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    735) (.var 2)) (.mul (.num 1356) (.var 3))) (.var 2)) (.mul (.num 363) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48) (.var 2)) (.mul (.num
    96) (.var 3))) (.var 2)) (.mul (.neg (.num 90)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.mul (.neg (.num 24)) (.pow (.var 3) 2)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3036) (.var 1))
    (.add (.mul (.num 7536) (.var 2)) (.mul (.num 3540) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 7008) (.var 2)) (.mul (.num 7620) (.var 3))) (.var 2)) (.mul (.num 906) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3066) (.var 2)) (.mul (.num 5712)
    (.var 3))) (.var 2)) (.mul (.num 1476) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 639) (.var 2)) (.mul (.num 1782) (.var 3))) (.var 2)) (.mul (.num 546)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 51)
    (.var 2)) (.mul (.num 216) (.var 3))) (.var 2)) (.mul (.neg (.num 132)) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 6) (.var 3)) (.var 2)) (.mul (.neg
    (.num 87)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.neg (.num 9)) (.pow
    (.var 3) 2)) (.pow (.var 2) 5)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 606) (.var 1)) (.add (.mul (.num 1674) (.var
    2)) (.mul (.num 924) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1743) (.var 2)) (.mul
    (.num 2340) (.var 3))) (.var 2)) (.mul (.num 348) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 858) (.var 2)) (.mul (.num 2130) (.var 3))) (.var 2)) (.mul (.num 786)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 201) (.var 2))
    (.mul (.num 846) (.var 3))) (.var 2)) (.mul (.num 573) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18) (.var 2)) (.mul (.num 138) (.var 3))) (.var
    2)) (.mul (.num 126) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 6) (.var 3)) (.var 2)) (.mul (.neg (.num 15)) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.mul (.neg (.num 6)) (.pow (.var 3) 2)) (.pow (.var 2) 5))) (.var 1)))) (.pow
    (.var 0) 4)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    4))) (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.mul (.add (.mul (.num 2) (.var 1)) (.mul (.num 3) (.var
    3))) (.pow (.var 1) 2)) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 21) (.var 1)) (.add
    (.mul (.num 9) (.var 2)) (.mul (.num 35) (.var 3)))) (.var 1)) (.add (.mul (.mul (.num 14)
    (.var 3)) (.var 2)) (.mul (.num 3) (.pow (.var 3) 2)))) (.pow (.var 1) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 98) (.var 1)) (.add (.mul (.num 83) (.var 2)) (.mul
    (.num 164) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 15) (.var 2)) (.mul (.num 130)
    (.var 3))) (.var 2)) (.mul (.num 30) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 24) (.var 3)) (.var 2)) (.mul (.num 14) (.pow (.var 3) 2))) (.var 2))) (.pow (.var 1)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 265) (.var 1))
    (.add (.mul (.num 332) (.var 2)) (.mul (.num 416) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 118) (.var 2)) (.mul (.num 486) (.var 3))) (.var 2)) (.mul (.num 116) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11) (.var 2)) (.mul (.num 170) (.var
    3))) (.var 2)) (.mul (.num 108) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.mul (.num 18) (.var 3)) (.var 2)) (.mul (.num 24) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 455) (.var 1)) (.add (.mul (.num 750) (.var 2)) (.mul (.num 672) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 394) (.var 2)) (.mul (.num 1036) (.var 3))) (.var 2)) (.mul
    (.num 227) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 2))
    (.mul (.num 516) (.var 3))) (.var 2)) (.mul (.num 313) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.num 94) (.var 3))) (.var 2))
    (.mul (.num 134) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 5) (.var 3)) (.var 2)) (.mul (.num 18) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.pow
    (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 510) (.var 1)) (.add (.mul (.num 1037) (.var 2)) (.mul (.num 744) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 715) (.var 2)) (.mul (.num 1429) (.var 3)))
    (.var 2)) (.mul (.num 272) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    192) (.var 2)) (.mul (.num 924) (.var 3))) (.var 2)) (.mul (.num 491) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 2)) (.mul (.num 233) (.var
    3))) (.var 2)) (.mul (.num 295) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 19) (.var 3)) (.var 2)) (.mul (.num 68) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.mul (.num 5) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.pow (.var 1) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    367) (.var 1)) (.add (.mul (.num 883) (.var 2)) (.mul (.num 564) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 747) (.var 2)) (.mul (.num 1303) (.var 3))) (.var 2)) (.mul (.num 217)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 260) (.var 2)) (.mul (.num
    1048) (.var 3))) (.var 2)) (.mul (.num 481) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 31) (.var 2)) (.mul (.num 343) (.var 3))) (.var 2)) (.mul (.num
    368) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 38) (.var
    3)) (.var 2)) (.mul (.num 114) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul
    (.num 12) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 156) (.var 1)) (.add
    (.mul (.num 430) (.var 2)) (.mul (.num 272) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 425) (.var 2)) (.mul (.num 738) (.var 3))) (.var 2)) (.mul (.num 114) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 177) (.var 2)) (.mul (.num 716) (.var 3)))
    (.var 2)) (.mul (.num 301) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 26) (.var 2)) (.mul (.num 292) (.var 3))) (.var 2)) (.mul (.num 282) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 42) (.var 3)) (.var 2))
    (.mul (.num 110) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num 15) (.pow
    (.var 3) 2)) (.pow (.var 2) 4))) (.pow (.var 1) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 1)) (.add (.mul (.num 92)
    (.var 2)) (.mul (.num 64) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 102) (.var 2))
    (.mul (.num 198) (.var 3))) (.var 2)) (.mul (.num 34) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 48) (.var 2)) (.mul (.num 222) (.var 3))) (.var 2)) (.mul (.num
    106) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 2))
    (.mul (.num 106) (.var 3))) (.var 2)) (.mul (.num 120) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 18) (.var 3)) (.var 2)) (.mul (.num 58) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num 10) (.pow (.var 3) 2)) (.pow (.var 2)
    4))) (.pow (.var 1) 5)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1))
    (.var 2))) 3)) (.pow (.add (.var 1) (.var 2)) 3))) (.mul (.mul (.mul (.mul (.num 1) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.mul (.add (.mul (.num 12) (.var 1)) (.mul (.num 6) (.var 3))) (.var 1)) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 180) (.var 1)) (.add (.mul (.num 81) (.var 2)) (.mul
    (.num 126) (.var 3)))) (.var 1)) (.add (.mul (.mul (.num 48) (.var 3)) (.var 2)) (.mul (.num
    6) (.pow (.var 3) 2)))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    1138) (.var 1)) (.add (.mul (.num 1000) (.var 2)) (.mul (.num 959) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 204) (.var 2)) (.mul (.num 737) (.var 3))) (.var 2)) (.mul (.num 108)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 132) (.var 3)) (.var 2)) (.mul
    (.num 48) (.pow (.var 3) 2))) (.var 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 4074) (.var 1)) (.add (.mul (.num 5268) (.var 2)) (.mul (.num
    3859) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2085) (.var 2)) (.mul (.num 4453)
    (.var 3))) (.var 2)) (.mul (.num 689) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 246) (.var 2)) (.mul (.num 1572) (.var 3))) (.var 2)) (.mul (.num 614) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 168) (.var 3)) (.var 2)) (.mul
    (.num 132) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9212) (.var 1)) (.add (.mul (.num 15618)
    (.var 2)) (.mul (.num 9544) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 9037) (.var
    2)) (.mul (.num 14674) (.var 3))) (.var 2)) (.mul (.num 2256) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 2055) (.var 2)) (.mul (.num 7636) (.var 3))) (.var 2))
    (.mul (.num 3004) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    144) (.var 2)) (.mul (.num 1558) (.var 3))) (.var 2)) (.mul (.num 1264) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 102) (.var 3)) (.var 2)) (.mul
    (.num 168) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13752) (.var 1)) (.add (.mul
    (.num 28706) (.var 2)) (.mul (.num 15668) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    21657) (.var 2)) (.mul (.num 30196) (.var 3))) (.var 2)) (.mul (.num 4392) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7152) (.var 2)) (.mul (.num 20746) (.var
    3))) (.var 2)) (.mul (.num 7737) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 959) (.var 2)) (.mul (.num 6134) (.var 3))) (.var 2)) (.mul (.num 4747)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33)
    (.var 2)) (.mul (.num 726) (.var 3))) (.var 2)) (.mul (.num 1192) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 24) (.var 3)) (.var 2)) (.mul (.num 102)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13630) (.var 1)) (.add (.mul
    (.num 33653) (.var 2)) (.mul (.num 17433) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    31078) (.var 2)) (.mul (.num 40555) (.var 3))) (.var 2)) (.mul (.num 5564) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13276) (.var 2)) (.mul (.num 34817) (.var
    3))) (.var 2)) (.mul (.num 12180) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2564) (.var 2)) (.mul (.num 13565) (.var 3))) (.var 2)) (.mul (.num 9707)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 169)
    (.var 2)) (.mul (.num 2317) (.var 3))) (.var 2)) (.mul (.num 3439) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 129) (.var 3)) (.var 2)) (.mul (.num
    516) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.num 24) (.pow (.var 3)
    2)) (.pow (.var 2) 5))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 8686) (.var 1)) (.add (.mul (.num 24655) (.var
    2)) (.mul (.num 12747) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 26748) (.var 2))
    (.mul (.num 34826) (.var 3))) (.var 2)) (.mul (.num 4650) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 13851) (.var 2)) (.mul (.num 36034) (.var 3))) (.var 2)) (.mul
    (.num 12213) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    3417) (.var 2)) (.mul (.num 17562) (.var 3))) (.var 2)) (.mul (.num 12028) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 318) (.var 2)) (.mul (.num
    3990) (.var 3))) (.var 2)) (.mul (.num 5496) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.mul (.num 329) (.var 3)) (.var 2)) (.mul (.num 1140) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.num 82) (.pow (.var 3) 2)) (.pow (.var 2) 5)))
    (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 3240) (.var 1)) (.add (.mul (.num 10341) (.var 2)) (.mul
    (.num 5562) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 12787) (.var 2)) (.mul (.num
    17457) (.var 3))) (.var 2)) (.mul (.num 2371) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 7683) (.var 2)) (.mul (.num 21151) (.var 3))) (.var 2)) (.mul (.num 7307)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2258) (.var 2))
    (.mul (.num 12391) (.var 3))) (.var 2)) (.mul (.num 8651) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 261) (.var 2)) (.mul (.num 3525) (.var 3)))
    (.var 2)) (.mul (.num 4913) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 390) (.var 3)) (.var 2)) (.mul (.num 1335) (.pow (.var 3) 2))) (.pow (.var
    2) 4))) (.var 1)) (.mul (.mul (.num 137) (.pow (.var 3) 2)) (.pow (.var 2) 5))) (.pow (.var 1)
    3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 540) (.var 1)) (.add (.mul (.num 1902) (.var 2)) (.mul (.num 1104) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2616) (.var 2)) (.mul (.num 3900) (.var 3)))
    (.var 2)) (.mul (.num 574) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1765) (.var 2)) (.mul (.num 5384) (.var 3))) (.var 2)) (.mul (.num 2043) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 590) (.var 2)) (.mul (.num 3650)
    (.var 3))) (.var 2)) (.mul (.num 2848) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 79) (.var 2)) (.mul (.num 1228) (.var 3))) (.var 2)) (.mul (.num
    1955) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 166)
    (.var 3)) (.var 2)) (.mul (.num 668) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.mul (.num 92) (.pow (.var 3) 2)) (.pow (.var 2) 5))) (.pow (.var 1) 4)))) (.var 0)) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)) (.pow (.add (.var
    1) (.var 2)) 2))) (.mul (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 12)
    (.var 1)) (.var 0)) (.add (.mul (.add (.mul (.num 270) (.var 1)) (.add (.mul (.num 120) (.var
    2)) (.mul (.num 72) (.var 3)))) (.var 1)) (.mul (.mul (.num 24) (.var 3)) (.var 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.num 2346) (.var 1)) (.add (.mul (.num 2052) (.var
    2)) (.mul (.num 1038) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 432) (.var 2)) (.mul
    (.num 738) (.var 3))) (.var 2)) (.mul (.num 60) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 120) (.var 3)) (.var 2)) (.mul (.num 24) (.pow (.var 3) 2))) (.var 2))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11106) (.var 1)) (.add (.mul
    (.num 14355) (.var 2)) (.mul (.num 6474) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    5895) (.var 2)) (.mul (.num 7074) (.var 3))) (.var 2)) (.mul (.num 726) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 768) (.var 2)) (.mul (.num 2376) (.var 3)))
    (.var 2)) (.mul (.num 600) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 240) (.var 3)) (.var 2)) (.mul (.num 120) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 32729) (.var 1)) (.add
    (.mul (.num 55636) (.var 2)) (.mul (.num 23208) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 33509) (.var 2)) (.mul (.num 34278) (.var 3))) (.var 2)) (.mul (.num 3756) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8424) (.var 2)) (.mul (.num 17478)
    (.var 3))) (.var 2)) (.mul (.num 4686) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 732) (.var 2)) (.mul (.num 3588) (.var 3))) (.var 2)) (.mul (.num
    1872) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 240)
    (.var 3)) (.var 2)) (.mul (.num 240) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 63823) (.var 1)) (.add
    (.mul (.num 133898) (.var 2)) (.mul (.num 53350) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 105352) (.var 2)) (.mul (.num 99572) (.var 3))) (.var 2)) (.mul (.num 10990) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38493) (.var 2)) (.mul (.num 68164)
    (.var 3))) (.var 2)) (.mul (.num 18281) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 6378) (.var 2)) (.mul (.num 21042) (.var 3))) (.var 2)) (.mul (.num
    10831) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    360) (.var 2)) (.mul (.num 2820) (.var 3))) (.var 2)) (.mul (.num 2712) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 120) (.var 3)) (.var 2)) (.mul
    (.num 240) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 84310) (.var 1)) (.add (.mul (.num
    209730) (.var 2)) (.mul (.num 82426) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    202428) (.var 2)) (.mul (.num 186686) (.var 3))) (.var 2)) (.mul (.num 20301) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 95842) (.var 2)) (.mul (.num 161058) (.var
    3))) (.var 2)) (.mul (.num 42208) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 22836) (.var 2)) (.mul (.num 66550) (.var 3))) (.var 2)) (.mul (.num 32927)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2424)
    (.var 2)) (.mul (.num 13358) (.var 3))) (.var 2)) (.mul (.num 12004) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 2)) (.mul (.num 1122)
    (.var 3))) (.var 2)) (.mul (.num 2016) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 24) (.var 3)) (.var 2)) (.mul (.num 120) (.pow (.var 3) 2))) (.pow
    (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 75052) (.var 1)) (.add (.mul (.num 215316) (.var 2)) (.mul
    (.num 86002) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 244960) (.var 2)) (.mul (.num
    229900) (.var 3))) (.var 2)) (.mul (.num 24849) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 141133) (.var 2)) (.mul (.num 240382) (.var 3))) (.var 2)) (.mul (.num
    62301) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 43116)
    (.var 2)) (.mul (.num 125118) (.var 3))) (.var 2)) (.mul (.num 60441) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6490) (.var 2)) (.mul (.num
    33698) (.var 3))) (.var 2)) (.mul (.num 28761) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 357) (.var 2)) (.mul (.num 4284) (.var 3))) (.var 2))
    (.mul (.num 6906) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 180) (.var 3)) (.var 2)) (.mul (.num 744) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var
    1)) (.mul (.mul (.num 24) (.pow (.var 3) 2)) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    43319) (.var 1)) (.add (.mul (.num 140388) (.var 2)) (.mul (.num 58439) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 183047) (.var 2)) (.mul (.num 180474) (.var 3))) (.var 2)) (.mul
    (.num 19893) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 123250) (.var
    2)) (.mul (.num 222274) (.var 3))) (.var 2)) (.mul (.num 58837) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45297) (.var 2)) (.mul (.num 139930) (.var 3)))
    (.var 2)) (.mul (.num 68900) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 8600) (.var 2)) (.mul (.num 47459) (.var 3))) (.var 2)) (.mul (.num
    40847) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    653) (.var 2)) (.mul (.num 8150) (.var 3))) (.var 2)) (.mul (.num 12839) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 538) (.var 3)) (.var 2)) (.mul
    (.num 1978) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 108) (.pow
    (.var 3) 2)) (.pow (.var 2) 6))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 14697) (.var 1)) (.add
    (.mul (.num 52925) (.var 2)) (.mul (.num 23437) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 77411) (.var 2)) (.mul (.num 82142) (.var 3))) (.var 2)) (.mul (.num 9510) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 59172) (.var 2)) (.mul (.num 116436)
    (.var 3))) (.var 2)) (.mul (.num 32638) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 25092) (.var 2)) (.mul (.num 85892) (.var 3))) (.var 2)) (.mul (.num
    45184) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    5626) (.var 2)) (.mul (.num 35009) (.var 3))) (.var 2)) (.mul (.num 32447) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 523) (.var 2)) (.mul (.num
    7512) (.var 3))) (.var 2)) (.mul (.num 12804) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.mul (.num 664) (.var 3)) (.var 2)) (.mul (.num 2630) (.pow (.var 3)
    2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 217) (.pow (.var 3) 2)) (.pow (.var 2)
    6))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2232) (.var 1)) (.add (.mul (.num 8808) (.var
    2)) (.mul (.num 4224) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 14202) (.var 2))
    (.mul (.num 16536) (.var 3))) (.var 2)) (.mul (.num 2080) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 12050) (.var 2)) (.mul (.num 26428) (.var 3))) (.var 2)) (.mul
    (.num 8168) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5721)
    (.var 2)) (.mul (.num 22224) (.var 3))) (.var 2)) (.mul (.num 13129) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1452) (.var 2)) (.mul (.num 10470)
    (.var 3))) (.var 2)) (.mul (.num 11146) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 155) (.var 2)) (.mul (.num 2644) (.var 3))) (.var 2))
    (.mul (.num 5327) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 282) (.var 3)) (.var 2)) (.mul (.num 1372) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var
    1)) (.mul (.mul (.num 150) (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.pow (.var 1) 3)))) (.pow
    (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    3)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 60) (.var 1)) (.mul (.num 20) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num
    932) (.var 1)) (.add (.mul (.num 732) (.var 2)) (.mul (.num 120) (.var 3)))) (.var 1)) (.mul
    (.add (.mul (.num 140) (.var 2)) (.mul (.num 40) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 6368) (.var 1)) (.add (.mul (.num 7782) (.var 2)) (.mul (.num
    1600) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 3074) (.var 2)) (.mul (.num 1208)
    (.var 3))) (.var 2)) (.mul (.num 60) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 400) (.var 2)) (.mul (.num 208) (.var 3))) (.var 2)) (.mul (.num 20) (.pow (.var
    3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 25302)
    (.var 1)) (.add (.mul (.num 41652) (.var 2)) (.mul (.num 9468) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 24772) (.var 2)) (.mul (.num 11164) (.var 3))) (.var 2)) (.mul (.num
    700) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6362) (.var 2)) (.mul
    (.num 4088) (.var 3))) (.var 2)) (.mul (.num 524) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 600) (.var 2)) (.mul (.num 472) (.var 3))) (.var 2)) (.mul
    (.num 84) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 64972) (.var 1)) (.add (.mul (.num 133840) (.var 2)) (.mul
    (.num 32688) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 105578) (.var 2)) (.mul (.num
    52544) (.var 3))) (.var 2)) (.mul (.num 3606) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 39966) (.var 2)) (.mul (.num 29696) (.var 3))) (.var 2)) (.mul (.num 4238)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7256) (.var 2))
    (.mul (.num 7048) (.var 3))) (.var 2)) (.mul (.num 1484) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 500) (.var 2)) (.mul (.num 608) (.var 3)))
    (.var 2)) (.mul (.num 152) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 113017) (.var 1)) (.add
    (.mul (.num 278571) (.var 2)) (.mul (.num 72780) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 272283) (.var 2)) (.mul (.num 148632) (.var 3))) (.var 2)) (.mul (.num 10772) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 134887) (.var 2)) (.mul (.num
    114092) (.var 3))) (.var 2)) (.mul (.num 17464) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 35494) (.var 2)) (.mul (.num 41268) (.var 3))) (.var 2)) (.mul
    (.num 9686) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 4616) (.var 2)) (.mul (.num 7100) (.var 3))) (.var 2)) (.mul (.num 2162) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 220) (.var 2)) (.mul
    (.num 472) (.var 3))) (.var 2)) (.mul (.num 168) (.pow (.var 3) 2))) (.pow (.var 2) 4))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 135235) (.var 1)) (.add (.mul (.num 387021) (.var 2)) (.mul (.num 108614) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 449265) (.var 2)) (.mul (.num 269822) (.var 3))) (.var
    2)) (.mul (.num 20584) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    273001) (.var 2)) (.mul (.num 262614) (.var 3))) (.var 2)) (.mul (.num 43136) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 92792) (.var 2)) (.mul (.num
    128134) (.var 3))) (.var 2)) (.mul (.num 33460) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 17204) (.var 2)) (.mul (.num 33060) (.var 3))) (.var
    2)) (.mul (.num 11980) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1514) (.var 2)) (.mul (.num 4260) (.var 3))) (.var 2)) (.mul (.num 2004)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40)
    (.var 2)) (.mul (.num 208) (.var 3))) (.var 2)) (.mul (.num 132) (.pow (.var 3) 2))) (.pow
    (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 110179) (.var 1)) (.add (.mul (.num 358212) (.var 2))
    (.mul (.num 108676) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 479687) (.var 2))
    (.mul (.num 318588) (.var 3))) (.var 2)) (.mul (.num 25891) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 343195) (.var 2)) (.mul (.num 376184) (.var 3))) (.var 2))
    (.mul (.num 67365) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 141470) (.var 2)) (.mul (.num 231252) (.var 3))) (.var 2)) (.mul (.num 68315) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33377) (.var
    2)) (.mul (.num 79476) (.var 3))) (.var 2)) (.mul (.num 34551) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4102) (.var 2)) (.mul (.num 15044) (.var
    3))) (.var 2)) (.mul (.num 9234) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 194) (.var 2)) (.mul (.num 1388) (.var 3))) (.var 2)) (.mul (.num
    1252) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 40)
    (.var 3)) (.var 2)) (.mul (.num 68) (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 58611) (.var 1)) (.add (.mul (.num 212897) (.var 2)) (.mul (.num 70238)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 321899) (.var 2)) (.mul (.num 237430)
    (.var 3))) (.var 2)) (.mul (.num 20859) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 263513) (.var 2)) (.mul (.num 329498) (.var 3))) (.var 2)) (.mul (.num 65347)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 126522) (.var 2))
    (.mul (.num 243902) (.var 3))) (.var 2)) (.mul (.num 82641) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 35676) (.var 2)) (.mul (.num 104264) (.var
    3))) (.var 2)) (.mul (.num 54653) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 5462) (.var 2)) (.mul (.num 25760) (.var 3))) (.var 2)) (.mul
    (.num 20394) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 348) (.var 2)) (.mul (.num 3392) (.var 3))) (.var 2)) (.mul (.num 4270) (.pow (.var 3)
    2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 180) (.var 3)) (.var 2))
    (.mul (.num 452) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 16) (.pow
    (.var 3) 2)) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 18414) (.var 1)) (.add
    (.mul (.num 73731) (.var 2)) (.mul (.num 26586) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 123778) (.var 2)) (.mul (.num 101726) (.var 3))) (.var 2)) (.mul (.num 9780) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 113472) (.var 2)) (.mul (.num 161912)
    (.var 3))) (.var 2)) (.mul (.num 35961) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 61668) (.var 2)) (.mul (.num 139632) (.var 3))) (.var 2)) (.mul (.num
    54660) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    19957) (.var 2)) (.mul (.num 70894) (.var 3))) (.var 2)) (.mul (.num 44744) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3574) (.var 2)) (.mul
    (.num 21322) (.var 3))) (.var 2)) (.mul (.num 21446) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 274) (.var 2)) (.mul (.num 3540) (.var 3)))
    (.var 2)) (.mul (.num 6059) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 252) (.var 3)) (.var 2)) (.mul (.num 940) (.pow (.var 3) 2))) (.pow (.var 2)
    6))) (.var 1)) (.mul (.mul (.num 62) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 2598) (.var 1)) (.add (.mul (.num 11338) (.var 2)) (.mul (.num
    4490) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 20844) (.var 2)) (.mul (.num 19146)
    (.var 3))) (.var 2)) (.mul (.num 2040) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 21036) (.var 2)) (.mul (.num 34260) (.var 3))) (.var 2)) (.mul (.num 8622) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12662) (.var 2)) (.mul
    (.num 33540) (.var 3))) (.var 2)) (.mul (.num 15306) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4570) (.var 2)) (.mul (.num 19538) (.var 3)))
    (.var 2)) (.mul (.num 14904) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 920) (.var 2)) (.mul (.num 6818) (.var 3))) (.var 2)) (.mul (.num
    8676) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    80) (.var 2)) (.mul (.num 1328) (.var 3))) (.var 2)) (.mul (.num 3046) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 112) (.var 3)) (.var 2)) (.mul
    (.num 602) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 52) (.pow (.var
    3) 2)) (.pow (.var 2) 7))) (.pow (.var 1) 2)))) (.pow (.var 0) 3)) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.mul (.mul (.num 70) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    2) (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.num 10) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num 2) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 20)
    (.var 3))) (.var 2)) (.mul (.num 8) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.mul (.num 8) (.var 3)) (.var 2)) (.mul (.num 10) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.pow (.var 0) 3)))
    (.pow (.var 0) 4)) (.mul (.mul (.num 56) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 9) (.var 0)) (.add (.mul (.num 27) (.var 2)) (.mul (.num 18) (.var 3))))
    (.var 0)) (.add (.mul (.add (.mul (.num 27) (.var 2)) (.mul (.num 46) (.var 3))) (.var 2))
    (.mul (.num 9) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 2))
    (.mul (.num 38) (.var 3))) (.var 2)) (.mul (.num 19) (.pow (.var 3) 2))) (.var 2))) (.var 0))
    (.mul (.add (.mul (.mul (.num 10) (.var 3)) (.var 2)) (.mul (.num 11) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.pow (.var 0) 2))) (.pow (.var 0) 5))) (.mul (.mul (.num 28) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 15) (.var 0)) (.add (.mul (.num 36) (.var 2)) (.mul
    (.num 30) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 27) (.var 2)) (.mul (.num 40)
    (.var 3))) (.var 2)) (.mul (.num 15) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 6) (.var 2)) (.mul (.num 14) (.var 3))) (.var 2)) (.mul (.num 8) (.pow (.var 3)
    2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.neg
    (.num 5)) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 2) (.pow (.var
    3) 2)) (.pow (.var 2) 3))) (.var 0))) (.pow (.var 0) 6))) (.mul (.mul (.num 8) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11) (.var 0)) (.add (.mul (.num 23)
    (.var 2)) (.mul (.num 22) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 13) (.var 2))
    (.mul (.num 4) (.var 3))) (.var 2)) (.mul (.num 11) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var 2)) (.mul (.neg
    (.num 9)) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.mul (.neg (.num 3)) (.pow (.var 3)
    2)) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 3))))
    (.pow (.var 0) 7))) (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    3) (.var 0)) (.add (.mul (.num 6) (.var 2)) (.mul (.num 6) (.var 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.num 3) (.var 2)) (.mul (.neg (.num 6)) (.var 3))) (.var 2)) (.mul (.num 3) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.mul (.neg (.num 6)) (.pow (.var 3) 2)) (.var 2))) (.var 0))
    (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 2)))) (.pow (.var 0) 8))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.mul (.mul (.num 15) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 6) (.var 0)) (.add (.mul (.num 88) (.var 2)) (.mul (.num 12) (.var
    3)))) (.var 0)) (.add (.mul (.add (.mul (.num 415) (.var 2)) (.mul (.num 172) (.var 3))) (.var
    2)) (.mul (.num 6) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 949)
    (.var 2)) (.mul (.num 802) (.var 3))) (.var 2)) (.mul (.num 84) (.pow (.var 3) 2))) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1196) (.var 2)) (.mul (.num 1818) (.var 3)))
    (.var 2)) (.mul (.num 387) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 850) (.var 2)) (.mul (.num 2272) (.var 3))) (.var 2)) (.mul (.num 869) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 319) (.var 2))
    (.mul (.num 1600) (.var 3))) (.var 2)) (.mul (.num 1076) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 49) (.var 2)) (.mul (.num 594) (.var 3)))
    (.var 2)) (.mul (.num 750) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.mul (.num 90) (.var 3)) (.var 2)) (.mul (.num 275) (.pow (.var 3) 2))) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.mul (.num 41) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 5)))
    (.pow (.var 0) 2)) (.mul (.mul (.num 20) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 39) (.var 0)) (.add (.mul
    (.num 528) (.var 2)) (.mul (.num 78) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 2275)
    (.var 2)) (.mul (.num 1006) (.var 3))) (.var 2)) (.mul (.num 39) (.pow (.var 3) 2)))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 4784) (.var 2)) (.mul (.num 4118) (.var 3))) (.var 2))
    (.mul (.num 478) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    5581) (.var 2)) (.mul (.num 8226) (.var 3))) (.var 2)) (.mul (.num 1851) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3688) (.var 2)) (.mul (.num
    9114) (.var 3))) (.var 2)) (.mul (.num 3482) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1289) (.var 2)) (.mul (.num 5714) (.var 3))) (.var 2))
    (.mul (.num 3613) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 184) (.var 2)) (.mul (.num 1890) (.var 3))) (.var 2)) (.mul (.num 2106) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 254) (.var 3)) (.var
    2)) (.mul (.num 641) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 78)
    (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 4))) (.pow (.var 0) 3))) (.mul (.mul
    (.num 15) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 105) (.var 0)) (.add (.mul (.num 1331) (.var 2)) (.mul
    (.num 210) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 5280) (.var 2)) (.mul (.num
    2448) (.var 3))) (.var 2)) (.mul (.num 105) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 10164) (.var 2)) (.mul (.num 8672) (.var 3))) (.var 2)) (.mul (.num 1129)
    (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10807) (.var 2))
    (.mul (.num 14832) (.var 3))) (.var 2)) (.mul (.num 3566) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6477) (.var 2)) (.mul (.num 14058) (.var
    3))) (.var 2)) (.mul (.num 5300) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 2040) (.var 2)) (.mul (.num 7592) (.var 3))) (.var 2)) (.mul (.num
    4279) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    260) (.var 2)) (.mul (.num 2196) (.var 3))) (.var 2)) (.mul (.num 1967) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 264) (.var 3)) (.var 2)) (.mul
    (.num 506) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 60) (.pow (.var
    3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 3))) (.pow (.var 0) 4))) (.mul (.mul (.num 6) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 150) (.var 0)) (.add (.mul (.num 1804) (.var 2)) (.mul (.num 300)
    (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 6658) (.var 2)) (.mul (.num 3166) (.var
    3))) (.var 2)) (.mul (.num 150) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 11738) (.var 2)) (.mul (.num 9504) (.var 3))) (.var 2)) (.mul (.num 1416) (.pow (.var 3)
    2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 11228) (.var 2)) (.mul (.num
    13300) (.var 3))) (.var 2)) (.mul (.num 3483) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 5922) (.var 2)) (.mul (.num 10100) (.var 3))) (.var
    2)) (.mul (.num 3587) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1596) (.var 2)) (.mul (.num 4414) (.var 3))) (.var 2)) (.mul (.num 1754)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 168)
    (.var 2)) (.mul (.num 1104) (.var 3))) (.var 2)) (.mul (.num 548) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 128) (.var 3)) (.var 2)) (.mul (.num
    213) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 49) (.pow (.var 3)
    2)) (.pow (.var 2) 7))) (.pow (.var 0) 2))) (.pow (.var 0) 5))) (.mul (.mul (.num 1) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 120) (.var 0)) (.add (.mul (.num 1386) (.var 2)) (.mul (.num 240)
    (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 4819) (.var 2)) (.mul (.num 2290) (.var
    3))) (.var 2)) (.mul (.num 120) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 7831) (.var 2)) (.mul (.num 5622) (.var 3))) (.var 2)) (.mul (.num 994) (.pow (.var 3)
    2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6700) (.var 2)) (.mul (.num
    5856) (.var 3))) (.var 2)) (.mul (.num 1758) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 3020) (.var 2)) (.mul (.num 3012) (.var 3))) (.var 2))
    (.mul (.num 779) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 645) (.var 2)) (.mul (.num 922) (.var 3))) (.var 2)) (.mul (.neg (.num 224)) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 47) (.var 2))
    (.mul (.num 222) (.var 3))) (.var 2)) (.mul (.neg (.num 18)) (.pow (.var 3) 2))) (.pow (.var
    2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 28) (.var 3)) (.var 2)) (.mul (.num 126) (.pow
    (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 25) (.pow (.var 3) 2)) (.pow
    (.var 2) 7))) (.var 0))) (.pow (.var 0) 6))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh0504.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh0504.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh0504.leading0 e g v + f * FullHigh0504.leading1 e g v +
        f^2 * FullHigh0504.remainder e f g v := by
  have hden : denominatorOne FullHigh0504.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh0504.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh0504.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 1099511627776 20 10 2) lhs =
      value (Encoding4.vars 1099511627776 20 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 1099511627776 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 20 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 20 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullHigh0504.source e f g v =
      FullHigh0504.leading0 e g v + f * FullHigh0504.leading1 e g v +
        f^2 * FullHigh0504.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 1099511627776 20 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh050Encoded4

namespace SPR.N6.Tail.CoreEndpoint.FullHigh050
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition4 (e f g v : ℝ) :
    FullHigh0504.source e f g v =
      FullHigh0504.leading0 e g v + f * FullHigh0504.leading1 e g v +
        f^2 * FullHigh0504.remainder e f g v :=
  FullHigh050Encoded4.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh050
