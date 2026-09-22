import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^5 layer of FullLow023.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow023Encoded5
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add
    (.add (.add (.add (.add (.add (.add (.mul (.mul (.mul (.num 8) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 15) (.var 1)) (.mul (.num 6) (.var 2))) (.var 0)) (.add
    (.mul (.add (.mul (.num 81) (.var 1)) (.mul (.num 66) (.var 2))) (.var 1)) (.mul (.num 12)
    (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 174) (.var 1)) (.mul
    (.num 201) (.var 2))) (.var 1)) (.mul (.num 66) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 6)
    (.pow (.var 2) 3)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.num 126) (.var 1))
    (.mul (.num 162) (.var 2))) (.var 1)) (.mul (.num 54) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.num 3) (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 54)
    (.var 1)) (.mul (.num 84) (.var 2))) (.var 1)) (.mul (.num 30) (.pow (.var 2) 2))) (.pow (.var
    1) 3)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5))
    (.add (.var 1) (.var 2))) (.mul (.mul (.num 40) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 33) (.var 1)) (.mul (.num 11) (.var 2))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 177)) (.var 1)) (.mul (.add (.mul (.num
    6) (.var 3)) (.num 121)) (.var 2))) (.var 1)) (.mul (.num 12) (.pow (.var 2) 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 373)) (.var 1))
    (.mul (.add (.mul (.num 24) (.var 3)) (.num 356)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 6)) (.var 3)) (.num 39)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 6))
    (.var 3)) (.neg (.num 16))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 36) (.var 3)) (.num 359)) (.var 1)) (.mul (.add (.mul (.num 18)
    (.var 3)) (.num 376)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 66)) (.var 3)) (.neg
    (.num 65))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 60)) (.var 3)) (.neg
    (.num 134))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg
    (.num 24))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 192)) (.var 1)) (.mul (.add (.mul (.neg
    (.num 24)) (.var 3)) (.num 228)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 162))
    (.var 3)) (.neg (.num 123))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 168))
    (.var 3)) (.neg (.num 236))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 60))
    (.var 3)) (.neg (.num 82))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 6))
    (.var 3)) (.neg (.num 7))) (.pow (.var 2) 5)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.num 58)) (.var 1)) (.mul (.add
    (.mul (.num 60) (.var 3)) (.num 116)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 6) (.var
    3)) (.num 31)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 54)) (.var 3))
    (.neg (.num 64))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 36)) (.var 3))
    (.neg (.num 44))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var 3))
    (.neg (.num 7))) (.pow (.var 2) 5))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add
    (.add (.var 0) (.var 1)) (.var 2))) 5))) (.mul (.mul (.mul (.num 40) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 9) (.var 1)) (.mul (.num 3) (.var 2))) (.var 0))
    (.add (.mul (.add (.mul (.num 45) (.var 1)) (.mul (.num 30) (.var 2))) (.var 1)) (.mul (.num
    3) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 87) (.var 1))
    (.mul (.num 81) (.var 2))) (.var 1)) (.mul (.num 9) (.pow (.var 2) 2))) (.var 1)) (.mul (.neg
    (.num 3)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    69) (.var 1)) (.mul (.num 69) (.var 2))) (.var 1)) (.mul (.neg (.num 12)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.neg (.num 21)) (.pow (.var 2) 3))) (.var 1)) (.mul (.neg (.num 3)) (.pow
    (.var 2) 4)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var
    1)) (.mul (.num 45) (.var 2))) (.var 1)) (.mul (.num 6) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.neg (.num 12)) (.pow (.var 2) 3))) (.var 1)) (.mul (.neg (.num 3)) (.pow (.var 2) 4))) (.var
    1)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    5))) (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.mul (.num 9) (.var 1)) (.var 0)) (.mul (.add (.mul (.num 99) (.var 1)) (.mul (.num 45) (.var
    2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 447) (.var 1)) (.mul (.num 393)
    (.var 2))) (.var 1)) (.mul (.num 81) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 702) (.var 1)) (.mul (.num 882) (.var 2))) (.var 1)) (.mul
    (.num 351) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 45) (.pow (.var 2) 3))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.num 510) (.var 1)) (.mul (.num 792) (.var 2)))
    (.var 1)) (.mul (.num 381) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 63) (.pow (.var 2) 3)))
    (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.num 228) (.var 1))
    (.mul (.num 450) (.var 2))) (.var 1)) (.mul (.num 282) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.num 60) (.pow (.var 2) 3))) (.pow (.var 1) 3)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add
    (.add (.var 0) (.var 1)) (.var 2))) 4)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul
    (.num 7) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 220) (.var 1)) (.mul (.num 88) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.num 24) (.var 3)) (.num 1670)) (.var 1)) (.mul (.add (.mul (.num 24) (.var 3)) (.num 1402))
    (.var 2))) (.var 1)) (.mul (.num 272) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 96) (.var 3)) (.num 5224)) (.var 1)) (.mul (.add (.mul (.num 96)
    (.var 3)) (.num 6452)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 24)) (.var 3)) (.num
    2404)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 24)) (.var 3)) (.num 264))
    (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 42) (.var 3)) (.num 7700)) (.var 1)) (.mul (.add (.mul (.neg (.num 279)) (.var 3)) (.num
    11877)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 660)) (.var 3)) (.num 5926)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 411)) (.var 3)) (.num 1037)) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 72)) (.var 3)) (.num 40)) (.pow (.var 2) 4))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num
    444)) (.var 3)) (.num 5834)) (.var 1)) (.mul (.add (.mul (.neg (.num 2160)) (.var 3)) (.num
    9776)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 3507)) (.var 3)) (.num 4389)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 2454)) (.var 3)) (.neg (.num 240)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 735)) (.var 3)) (.neg (.num 483)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 72)) (.var 3)) (.neg (.num 64)))
    (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.neg (.num 300)) (.var 3)) (.num 2652)) (.var 1)) (.mul (.add (.mul
    (.neg (.num 2154)) (.var 3)) (.num 4644)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    4662)) (.var 3)) (.num 924)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    4425)) (.var 3)) (.neg (.num 2435))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 1980)) (.var 3)) (.neg (.num 1700))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 387)) (.var 3)) (.neg (.num 377))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 24)) (.var 3)) (.neg (.num 24))) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 246) (.var 3))
    (.num 698)) (.var 1)) (.mul (.add (.mul (.num 342) (.var 3)) (.num 1602)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 558)) (.var 3)) (.num 762)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 1428)) (.var 3)) (.neg (.num 784))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.neg (.num 1083)) (.var 3)) (.neg (.num 941))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.neg (.num 348)) (.var 3)) (.neg (.num 338))) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.neg (.num 39)) (.var 3)) (.neg (.num 39))) (.pow (.var 2) 6))) (.var
    1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.add
    (.var 1) (.var 2)))) (.mul (.mul (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num 24) (.var 2))) (.var 0))
    (.add (.mul (.add (.mul (.num 438) (.var 1)) (.mul (.num 366) (.var 2))) (.var 1)) (.mul (.num
    72) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 1332) (.var 1))
    (.mul (.num 1638) (.var 2))) (.var 1)) (.mul (.num 618) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.num 72) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    1836) (.var 1)) (.mul (.num 2850) (.var 2))) (.var 1)) (.mul (.num 1500) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.num 318) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 24) (.pow (.var 2) 4))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1332) (.var 1)) (.mul
    (.num 2436) (.var 2))) (.var 1)) (.mul (.num 1500) (.pow (.var 2) 2))) (.var 1)) (.mul (.num
    366) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 30) (.pow (.var 2) 4))) (.var 1))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 516) (.var 1)) (.mul (.num 1164)
    (.var 2))) (.var 1)) (.mul (.num 912) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 294) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.num 30) (.pow (.var 2) 4))) (.pow (.var 1) 2)))) (.var 0))
    (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.add (.var
    1) (.var 2)))) (.mul (.mul (.num 32) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 225) (.var 1)) (.mul (.num 75) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 80) (.var 3)) (.num 1740)) (.var 1)) (.mul
    (.add (.mul (.num 80) (.var 3)) (.num 1240)) (.var 2))) (.var 1)) (.mul (.num 150) (.pow (.var
    2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var
    3)) (.num 544)) (.var 3)) (.num 5835)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 75) (.var
    3)) (.num 708)) (.var 3)) (.num 6259)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 60) (.var 3)) (.num 114)) (.var 3)) (.num 1501)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 15) (.var 3)) (.neg (.num 50))) (.var 3)) (.neg (.num 23)))
    (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 237) (.var 3)) (.num 1790)) (.var 3)) (.num 10954)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 711) (.var 3)) (.num 3036)) (.var 3)) (.num 15681)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 771) (.var 3)) (.num 1124)) (.var 3)) (.num 5596))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 357) (.var 3)) (.neg (.num
    220))) (.var 3)) (.neg (.num 257))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 60) (.var 3)) (.neg (.num 98))) (.var 3)) (.neg (.num 226))) (.pow (.var 2) 4))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 816) (.var 3)) (.num 3764)) (.var 3)) (.num 13245)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 2856) (.var 3)) (.num 8630)) (.var 3)) (.num 24945)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 3852) (.var 3)) (.num 6306)) (.var 3)) (.num 13729)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2490) (.var 3)) (.num 1376)) (.var 3))
    (.num 837)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 768) (.var 3))
    (.neg (.num 86))) (.var 3)) (.neg (.num 991))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 90) (.var 3)) (.neg (.num 22))) (.var 3)) (.neg (.num 149))) (.pow (.var 2)
    5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 1479) (.var 3)) (.num 5550)) (.var 3)) (.num 11155)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 5916) (.var 3)) (.num 17158)) (.var 3)) (.num 28404)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9486) (.var 3)) (.num 20260)) (.var 3)) (.num
    25673)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7752) (.var 3))
    (.num 11628)) (.var 3)) (.num 9418)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3375) (.var 3)) (.num 3528)) (.var 3)) (.num 938)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 732) (.var 3)) (.num 602)) (.var 3)) (.neg (.num 118)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num 50))
    (.var 3)) (.neg (.num 12))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1452) (.var 3))
    (.num 4792)) (.var 3)) (.num 6042)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6534) (.var
    3)) (.num 18700)) (.var 3)) (.num 20391)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 12084) (.var 3)) (.num 29724)) (.var 3)) (.num 27316)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 11802) (.var 3)) (.num 24890)) (.var 3)) (.num 18666))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6492) (.var 3)) (.num
    11866)) (.var 3)) (.num 7019)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1971) (.var 3)) (.num 3224)) (.var 3)) (.num 1486)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 294) (.var 3)) (.num 456)) (.var 3)) (.num 175)) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 3)) (.num 24)) (.var 3)) (.num
    9)) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 606) (.var 3)) (.num 1648)) (.var
    3)) (.num 1502)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3030) (.var 3)) (.num 7676))
    (.var 3)) (.num 6338)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6345) (.var
    3)) (.num 14982)) (.var 3)) (.num 11130)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 7200) (.var 3)) (.num 15894)) (.var 3)) (.num 10581)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4773) (.var 3)) (.num 9914)) (.var 3)) (.num
    5918)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1845) (.var 3)) (.num
    3644)) (.var 3)) (.num 1964)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 384) (.var 3)) (.num 732)) (.var 3)) (.num 362)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 33) (.var 3)) (.num 62)) (.var 3)) (.num 29)) (.pow (.var 2)
    7))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))) 4))) (.mul (.mul (.mul (.num 28) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 165) (.var 1)) (.mul (.num 55) (.var 2))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.num 1160)) (.var 1)) (.mul (.add (.mul
    (.num 30) (.var 3)) (.num 803)) (.var 2))) (.var 1)) (.mul (.num 93) (.pow (.var 2) 2))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 174) (.var 3)) (.num 3454))
    (.var 1)) (.mul (.add (.mul (.num 198) (.var 3)) (.num 3514)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 6)) (.var 3)) (.num 716)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 30)) (.var 3)) (.neg (.num 44))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 450) (.var 3)) (.num 5373)) (.var 1)) (.mul
    (.add (.mul (.num 534) (.var 3)) (.num 6940)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 180)) (.var 3)) (.num 1631)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    342)) (.var 3)) (.neg (.num 604))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num
    78)) (.var 3)) (.neg (.num 168))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 666) (.var 3)) (.num 4944)) (.var 1)) (.mul
    (.add (.mul (.num 852) (.var 3)) (.num 7971)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 588)) (.var 3)) (.num 2322)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    1254)) (.var 3)) (.neg (.num 1667))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 546)) (.var 3)) (.neg (.num 919))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 66)) (.var 3)) (.neg (.num 107))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 780) (.var 3)) (.num 2838))
    (.var 1)) (.mul (.add (.mul (.num 1668) (.var 3)) (.num 6204)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.num 570) (.var 3)) (.num 3719)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 966)) (.var 3)) (.neg (.num 444))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 858)) (.var 3)) (.neg (.num 1057))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 228)) (.var 3)) (.neg (.num 291))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 18)) (.var 3)) (.neg (.num 21))) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 468) (.var
    3)) (.num 792)) (.var 1)) (.mul (.add (.mul (.num 1500) (.var 3)) (.num 2394)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.num 1734) (.var 3)) (.num 2616)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.num 804) (.var 3)) (.num 1157)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.num 54) (.var 3)) (.num 84)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 60)) (.var 3)) (.neg (.num 73))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 12)) (.var 3)) (.neg (.num 14))) (.pow (.var 2) 6))) (.var 1)))) (.var 0)) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4))) (.mul (.mul (.mul
    (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 45)
    (.var 1)) (.mul (.num 15) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 300) (.var 1))
    (.mul (.num 204) (.var 2))) (.var 1)) (.mul (.num 24) (.pow (.var 2) 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.num 840) (.var 1)) (.mul (.num 840) (.var 2))) (.var 1)) (.mul
    (.num 174) (.pow (.var 2) 2))) (.var 1)) (.mul (.neg (.num 6)) (.pow (.var 2) 3)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1167) (.var 1)) (.mul (.num 1476) (.var
    2))) (.var 1)) (.mul (.num 363) (.pow (.var 2) 2))) (.var 1)) (.mul (.neg (.num 90)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.neg (.num 24)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 906) (.var 1)) (.mul (.num 1476) (.var
    2))) (.var 1)) (.mul (.num 546) (.pow (.var 2) 2))) (.var 1)) (.mul (.neg (.num 132)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.neg (.num 87)) (.pow (.var 2) 4))) (.var 1)) (.mul (.neg (.num
    9)) (.pow (.var 2) 5)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 348) (.var 1)) (.mul (.num 786) (.var 2))) (.var 1)) (.mul (.num 573) (.pow (.var
    2) 2))) (.var 1)) (.mul (.num 126) (.pow (.var 2) 3))) (.var 1)) (.mul (.neg (.num 15)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.neg (.num 6)) (.pow (.var 2) 5))) (.var 1)))) (.pow (.var 0)
    2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4))) (.mul
    (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.mul (.num 33) (.var 1)) (.var 0)) (.mul (.add (.mul (.num 435) (.var 1)) (.mul
    (.num 201) (.var 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.neg
    (.num 18)) (.var 3)) (.num 2336)) (.var 1)) (.mul (.add (.mul (.neg (.num 27)) (.var 3)) (.num
    2111)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 9)) (.var 3)) (.num 459)) (.pow
    (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg
    (.num 198)) (.var 3)) (.num 5605)) (.var 1)) (.mul (.add (.mul (.neg (.num 414)) (.var 3))
    (.num 7342)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 270)) (.var 3)) (.num 3105))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 54)) (.var 3)) (.num 426)) (.pow
    (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.neg (.num 1038)) (.var 3)) (.num 6497)) (.var 1)) (.mul (.add (.mul (.neg (.num 2676))
    (.var 3)) (.num 10400)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 2454)) (.var 3))
    (.num 5626)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 942)) (.var 3)) (.num
    1177)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 126)) (.var 3)) (.num 69))
    (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.neg (.num 1944)) (.var 3)) (.num 4010)) (.var 1)) (.mul (.add (.mul
    (.neg (.num 6192)) (.var 3)) (.num 6521)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    7662)) (.var 3)) (.num 2212)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    4542)) (.var 3)) (.neg (.num 1136))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 1254)) (.var 3)) (.neg (.num 780))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 126)) (.var 3)) (.neg (.num 111))) (.pow (.var 2) 5))) (.var 1))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg
    (.num 1098)) (.var 3)) (.num 1614)) (.var 1)) (.mul (.add (.mul (.neg (.num 4596)) (.var 3))
    (.num 2446)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 7794)) (.var 3)) (.neg (.num
    919))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 6696)) (.var 3)) (.neg
    (.num 3582))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 2994)) (.var 3))
    (.neg (.num 2386))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 639)) (.var
    3)) (.neg (.num 612))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 45)) (.var
    3)) (.neg (.num 45))) (.pow (.var 2) 6))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 48) (.var 3)) (.num 412))
    (.var 1)) (.mul (.add (.mul (.neg (.num 294)) (.var 3)) (.num 838)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 1422)) (.var 3)) (.neg (.num 34))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 2166)) (.var 3)) (.neg (.num 1321))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.neg (.num 1566)) (.var 3)) (.neg (.num 1309))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.neg (.num 564)) (.var 3)) (.neg (.num 532))) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.neg (.num 84)) (.var 3)) (.neg (.num 84))) (.pow (.var 2) 6))) (.pow
    (.var 1) 2)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    3)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.num 6) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 450)
    (.var 1)) (.mul (.num 180) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 96)
    (.var 3)) (.num 4530)) (.var 1)) (.mul (.add (.mul (.num 96) (.var 3)) (.num 3846)) (.var 2)))
    (.var 1)) (.mul (.num 768) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 18) (.var 3)) (.num 636)) (.var 3)) (.num 19530)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 36) (.var 3)) (.num 780)) (.var 3)) (.num 24816)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18) (.var 3)) (.num 48)) (.var 3)) (.num
    9792)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 96)) (.var 3)) (.num 1176))
    (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 180) (.var 3)) (.num 1560)) (.var 3)) (.num 45489)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 450) (.var 3)) (.num 1476)) (.var 3)) (.num 75051)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 360) (.var 3)) (.neg (.num 1428))) (.var 3)) (.num
    42390)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90) (.var 3)) (.neg
    (.num 1740))) (.var 3)) (.num 9324)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 396)) (.var 3)) (.num 612)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 882) (.var 3)) (.num 1644)) (.var
    3)) (.num 63775)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2646) (.var 3)) (.neg (.num
    2112))) (.var 3)) (.num 125680)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2844) (.var 3)) (.neg (.num 12177))) (.var 3)) (.num 85988)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1278) (.var 3)) (.neg (.num 12750))) (.var 3)) (.num
    22442)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 198) (.var 3)) (.neg
    (.num 4953))) (.var 3)) (.num 945)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 624)) (.var 3)) (.neg (.num 252))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2484)
    (.var 3)) (.num 3724)) (.var 3)) (.num 60385)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    8694) (.var 3)) (.neg (.num 160))) (.var 3)) (.num 137829)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 11646) (.var 3)) (.neg (.num 22248))) (.var 3)) (.num 106130)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7380) (.var 3)) (.neg (.num
    33782))) (.var 3)) (.num 23885)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2178) (.var 3)) (.neg (.num 20140))) (.var 3)) (.neg (.num 7237))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 234) (.var 3)) (.neg (.num 5178))) (.var 3))
    (.neg (.num 3852))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 456)) (.var
    3)) (.neg (.num 408))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4443) (.var 3))
    (.num 11434)) (.var 3)) (.num 42844)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17772)
    (.var 3)) (.num 30666)) (.var 3)) (.num 118123)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 28323) (.var 3)) (.num 20827)) (.var 3)) (.num 114482)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 22767) (.var 3)) (.neg (.num 11909))) (.var 3)) (.num
    36567)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9582) (.var 3))
    (.neg (.num 22659))) (.var 3)) (.neg (.num 10414))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1953) (.var 3)) (.neg (.num 11273))) (.var 3)) (.neg (.num 10022)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 144) (.var 3)) (.neg (.num
    2262))) (.var 3)) (.neg (.num 2250))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 144)) (.var 3)) (.neg (.num 144))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 4578) (.var 3)) (.num 13368)) (.var 3)) (.num 21300)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 20601) (.var 3)) (.num 51490)) (.var 3)) (.num 73715)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38064) (.var 3)) (.num 77722)) (.var 3)) (.num
    98858)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 37086) (.var 3))
    (.num 56158)) (.var 3)) (.num 61559)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 20286) (.var 3)) (.num 17062)) (.var 3)) (.num 13536)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 6069) (.var 3)) (.neg (.num 1058))) (.var 3)) (.neg
    (.num 3689))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 864) (.var 3))
    (.neg (.num 1916))) (.var 3)) (.neg (.num 2499))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 36) (.var 3)) (.neg (.num 366))) (.var 3)) (.neg (.num 402))) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg (.num 12))) (.pow
    (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1944) (.var 3)) (.num 4984))
    (.var 3)) (.num 5120)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9720) (.var 3)) (.num
    23264)) (.var 3)) (.num 21712)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    20460) (.var 3)) (.num 45326)) (.var 3)) (.num 37995)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 23520) (.var 3)) (.num 47572)) (.var 3)) (.num 35198)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15975) (.var 3)) (.num 28771))
    (.var 3)) (.num 18123)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    6429) (.var 3)) (.num 9755)) (.var 3)) (.num 4698)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1425) (.var 3)) (.num 1530)) (.var 3)) (.num 255)) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 135) (.var 3)) (.neg (.num 1))) (.var 3)) (.neg
    (.num 136))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num 21)) (.var 3)) (.neg
    (.num 21))) (.pow (.var 2) 8))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add
    (.var 0) (.var 1)) (.var 2))) 3)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.mul (.num 2)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 330) (.var 1)) (.mul (.num 132) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.num 36) (.var 3)) (.num 3132)) (.var 1)) (.mul (.add (.mul (.num 36) (.var 3)) (.num
    2664)) (.var 2))) (.var 1)) (.mul (.num 540) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 216) (.var 3)) (.num 12708)) (.var 1)) (.mul (.add (.mul
    (.num 252) (.var 3)) (.num 16182)) (.var 2))) (.var 1)) (.mul (.num 6456) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 36)) (.var 3)) (.num 804)) (.pow (.var 2) 3)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 414) (.var 3)) (.num
    26905)) (.var 1)) (.mul (.add (.mul (.num 153) (.var 3)) (.num 44459)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 828)) (.var 3)) (.num 25507)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 711)) (.var 3)) (.num 5913)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 144)) (.var 3)) (.num 456)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 144)) (.var 3)) (.num
    32570)) (.var 1)) (.mul (.add (.mul (.neg (.num 2916)) (.var 3)) (.num 64023)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 6606)) (.var 3)) (.num 44436)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 5508)) (.var 3)) (.num 12557)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 1890)) (.var 3)) (.num 1068)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 216)) (.var 3)) (.neg (.num 36))) (.pow (.var 2) 5))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.neg (.num 324)) (.var 3)) (.num 24564)) (.var 1)) (.mul (.add (.mul (.neg (.num 5577)) (.var
    3)) (.num 55127)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 14805)) (.var 3)) (.num
    41722)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 15849)) (.var 3)) (.num
    9431)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 7971)) (.var 3)) (.neg
    (.num 2466))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 1818)) (.var 3))
    (.neg (.num 1302))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 144)) (.var
    3)) (.neg (.num 132))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1344) (.var 3)) (.num
    11898)) (.var 1)) (.mul (.add (.mul (.num 798) (.var 3)) (.num 31374)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 7038)) (.var 3)) (.num 27772)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 13902)) (.var 3)) (.num 5895)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.neg (.num 10776)) (.var 3)) (.neg (.num 5004))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.neg (.num 3996)) (.var 3)) (.neg (.num 3239))) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 666)) (.var 3)) (.neg (.num 642))) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 36)) (.var 3)) (.neg (.num 36))) (.pow (.var 2) 7))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 1380) (.var 3)) (.num 2880)) (.var 1)) (.mul (.add (.mul (.num 4266)
    (.var 3)) (.num 9360)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 4146) (.var 3)) (.num
    11154)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 63) (.var 3)) (.num 5083)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 2583)) (.var 3)) (.neg (.num 605)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 1884)) (.var 3)) (.neg (.num
    1480))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 561)) (.var 3)) (.neg
    (.num 529))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 63)) (.var 3)) (.neg
    (.num 63))) (.pow (.var 2) 7))) (.var 1)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1))
    (.add (.add (.var 0) (.var 1)) (.var 2))) 3)) (.add (.var 1) (.var 2)))) (.mul (.mul (.num 25)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 270) (.var 1)) (.mul (.num 90) (.var 2))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.num 140) (.var 3)) (.num 2850)) (.var 1)) (.mul (.add (.mul
    (.num 140) (.var 3)) (.num 2098)) (.var 2))) (.var 1)) (.mul (.num 288) (.pow (.var 2) 2))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 100) (.var 3))
    (.num 1544)) (.var 3)) (.num 13711)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 250) (.var
    3)) (.num 2288)) (.var 3)) (.num 15788)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 200) (.var 3)) (.num 744)) (.var 3)) (.num 4873)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.num 50) (.pow (.var 3) 2)) (.num 296)) (.pow (.var 2) 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1020) (.var 3)) (.num
    8344)) (.var 3)) (.num 39911)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3060) (.var 3))
    (.num 17048)) (.var 3)) (.num 64225)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    3320) (.var 3)) (.num 11176)) (.var 3)) (.num 33083)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1540) (.var 3)) (.num 2684)) (.var 3)) (.num 5761)) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 260) (.var 3)) (.num 212)) (.var 3))
    (.num 192)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 4692) (.var 3)) (.num 28072)) (.var 3)) (.num
    79597)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16422) (.var 3)) (.num 74742)) (.var 3))
    (.num 171175)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 22214) (.var 3)) (.num
    74014)) (.var 3)) (.num 133023)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 14480) (.var 3)) (.num 34494)) (.var 3)) (.num 45603)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 4546) (.var 3)) (.num 7954)) (.var 3)) (.num 6886)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 550) (.var 3)) (.num 804)) (.var
    3)) (.num 428)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12384) (.var 3)) (.num 62500)) (.var 3))
    (.num 114972)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 49536) (.var 3)) (.num 206528))
    (.var 3)) (.num 320967)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 79820) (.var
    3)) (.num 272016)) (.var 3)) (.num 351239)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 66084) (.var 3)) (.num 184160)) (.var 3)) (.num 193381)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 29532) (.var 3)) (.num 68744)) (.var 3)) (.num
    57611)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6716) (.var 3))
    (.num 13732)) (.var 3)) (.num 9266)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 600) (.var 3)) (.num 1160)) (.var 3)) (.num 672)) (.pow (.var 2) 6)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 20076) (.var 3)) (.num 90724)) (.var 3)) (.num 118966)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 90342) (.var 3)) (.num 357206)) (.var 3)) (.num 416014))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 168432) (.var 3)) (.num 581760))
    (.var 3)) (.num 598105)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    167916) (.var 3)) (.num 508876)) (.var 3)) (.num 459899)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 96136) (.var 3)) (.num 258956)) (.var 3)) (.num 205786)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 31348) (.var 3)) (.num 76774))
    (.var 3)) (.num 54119)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    5312) (.var 3)) (.num 12192)) (.var 3)) (.num 7771)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 350) (.var 3)) (.num 776)) (.var 3)) (.num 456)) (.pow (.var 2) 7))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 19673) (.var 3)) (.num 80960)) (.var 3)) (.num
    82263)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 98365) (.var 3)) (.num 368108)) (.var
    3)) (.num 346465)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 208000) (.var 3))
    (.num 708428)) (.var 3)) (.num 616282)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 241810) (.var 3)) (.num 752536)) (.var 3)) (.num 604841)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 167969) (.var 3)) (.num 481312)) (.var 3)) (.num
    358091)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 70705) (.var 3))
    (.num 188636)) (.var 3)) (.num 130481)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 17322) (.var 3)) (.num 43596)) (.var 3)) (.num 28210)) (.pow (.var 2) 6))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 2184) (.var 3)) (.num 5244)) (.var 3)) (.num 3187))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 100) (.var 3)) (.num 228))
    (.var 3)) (.num 128)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 10500) (.var 3)) (.num 39822)) (.var 3)) (.num 33402)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 57750) (.var 3)) (.num 204286)) (.var 3)) (.num 163780)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 136526) (.var 3)) (.num 450712)) (.var 3)) (.num 344798))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 181242) (.var 3)) (.num
    559614)) (.var 3)) (.num 408180)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 147940) (.var 3)) (.num 428862)) (.var 3)) (.num 298274)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 76244) (.var 3)) (.num 208540)) (.var 3)) (.num 138388))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24392) (.var 3)) (.num
    63254)) (.var 3)) (.num 40066)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 4518) (.var 3)) (.num 11132)) (.var 3)) (.num 6718)) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 406) (.var 3)) (.num 942)) (.var 3)) (.num 536)) (.pow (.var 2)
    8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20)) (.var 3)) (.num
    10)) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    2280) (.var 3)) (.num 8230)) (.var 3)) (.num 5950)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 13680) (.var 3)) (.num 46782)) (.var 3)) (.num 33102)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 35753) (.var 3)) (.num 115714)) (.var 3)) (.num 79961)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 53365) (.var 3)) (.num 163418)) (.var 3))
    (.num 110053)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50072) (.var
    3)) (.num 145118)) (.var 3)) (.num 95046)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 30578) (.var 3)) (.num 83874)) (.var 3)) (.num 53296)) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12121) (.var 3)) (.num 31414)) (.var 3)) (.num
    19293)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2993) (.var 3))
    (.num 7286)) (.var 3)) (.num 4293)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 414) (.var 3)) (.num 932)) (.var 3)) (.num 518)) (.pow (.var 2) 8))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 48)) (.var 3)) (.num 24)) (.pow (.var
    2) 9))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))) 3))) (.mul (.mul (.mul (.num 18) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 450) (.var 1)) (.mul (.num 150)
    (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 160) (.var 3)) (.num 4230))
    (.var 1)) (.mul (.add (.mul (.num 160) (.var 3)) (.num 3020)) (.var 2))) (.var 1)) (.mul (.num
    390) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 60) (.var 3)) (.num 1376)) (.var 3)) (.num 17765)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 150) (.var 3)) (.num 1832)) (.var 3)) (.num 19276)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 120) (.var 3)) (.num 356)) (.var 3)) (.num 5129)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.neg (.num 100)))
    (.var 3)) (.num 118)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 588) (.var 3)) (.num 5832)) (.var 3)) (.num 43505)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 1764) (.var 3)) (.num 10224)) (.var 3)) (.num 63820))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1914) (.var 3)) (.num 4420)) (.var
    3)) (.num 26449)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 888) (.var
    3)) (.neg (.num 204))) (.var 3)) (.num 1668)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 150) (.var 3)) (.neg (.num 232))) (.var 3)) (.neg (.num 466))) (.pow (.var
    2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 2580) (.var 3)) (.num 15960)) (.var 3)) (.num 70491)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 9030) (.var 3)) (.num 37164)) (.var 3)) (.num 135518)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12210) (.var 3)) (.num 28664)) (.var 3)) (.num
    84085)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7950) (.var 3))
    (.num 7836)) (.var 3)) (.num 15484)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 2490) (.var 3)) (.num 336)) (.var 3)) (.neg (.num 1504))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 300) (.var 3)) (.neg (.num 40))) (.var 3)) (.neg
    (.num 430))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6312) (.var 3)) (.num 30528)) (.var 3))
    (.num 80845)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 25248) (.var 3)) (.num 92928))
    (.var 3)) (.num 203849)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40662) (.var
    3)) (.num 108626)) (.var 3)) (.num 189076)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 33618) (.var 3)) (.num 62298)) (.var 3)) (.num 77953)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14982) (.var 3)) (.num 19062)) (.var 3)) (.num
    13251)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3390) (.var 3))
    (.num 3262)) (.var 3)) (.num 556)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 300) (.var 3)) (.num 272)) (.var 3)) (.neg (.num 14))) (.pow (.var 2) 6)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 9108) (.var 3)) (.num 37828)) (.var 3)) (.num 64291)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 40986) (.var 3)) (.num 143296)) (.var 3)) (.num 208943)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 76332) (.var 3)) (.num 222168)) (.var 3))
    (.num 272360)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 75894) (.var
    3)) (.num 183314)) (.var 3)) (.num 184063)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 43230) (.var 3)) (.num 87750)) (.var 3)) (.num 70086)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13974) (.var 3)) (.num 24694)) (.var 3)) (.num
    15428)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2334) (.var 3))
    (.num 3794)) (.var 3)) (.num 1895)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 150) (.var 3)) (.num 236)) (.var 3)) (.num 98)) (.pow (.var 2) 7)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 7257) (.var 3)) (.num 25734)) (.var 3)) (.num 31089))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36285) (.var 3)) (.num 115740)) (.var 3)) (.num
    125016)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 76626) (.var 3)) (.num
    219786)) (.var 3)) (.num 210888)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 88794) (.var 3)) (.num 229960)) (.var 3)) (.num 195164)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 61299) (.var 3)) (.num 144756)) (.var 3)) (.num 108615))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 25515) (.var 3)) (.num
    55806)) (.var 3)) (.num 37214)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 6120) (.var 3)) (.num 12632)) (.var 3)) (.num 7564)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 738) (.var 3)) (.num 1458)) (.var 3)) (.num 788)) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.num 56)) (.var 3)) (.num
    26)) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2430) (.var 3))
    (.num 7068)) (.var 3)) (.num 6678)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13365) (.var
    3)) (.num 36594)) (.var 3)) (.num 31851)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 31563) (.var 3)) (.num 81524)) (.var 3)) (.num 65267)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 41796) (.var 3)) (.num 102250)) (.var 3)) (.num 75358))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33948) (.var 3)) (.num
    79148)) (.var 3)) (.num 53876)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 17325) (.var 3)) (.num 38804)) (.var 3)) (.num 24525)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 5427) (.var 3)) (.num 11782)) (.var 3)) (.num 6957)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 954) (.var 3)) (.num 2024)) (.var
    3)) (.num 1122)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var
    3)) (.num 150)) (.var 3)) (.num 78)) (.pow (.var 2) 8))) (.var 1)))) (.var 0)) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3))) (.mul (.mul (.mul
    (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 330) (.var 1)) (.mul (.num 110) (.var 2))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.num 60) (.var 3)) (.num 2870)) (.var 1)) (.mul (.add (.mul (.num 60) (.var 3))
    (.num 2002)) (.var 2))) (.var 1)) (.mul (.num 252) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 456) (.var 3)) (.num 10977)) (.var 1)) (.mul (.add
    (.mul (.num 552) (.var 3)) (.num 11442)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 36)
    (.var 3)) (.num 2771)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 60)) (.var
    3)) (.num 6)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 1632) (.var 3)) (.num 23481)) (.var 1)) (.mul (.add (.mul (.num 2316) (.var
    3)) (.num 32181)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 144) (.var 3)) (.num 11093))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 732)) (.var 3)) (.neg (.num 415)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 192)) (.var 3)) (.neg (.num 408)))
    (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 3588) (.var 3)) (.num 31495)) (.var 1)) (.mul (.add (.mul (.num 6246) (.var
    3)) (.num 54993)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 1158) (.var 3)) (.num 26591))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 2886)) (.var 3)) (.neg (.num
    537))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 1602)) (.var 3)) (.neg
    (.num 2720))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 216)) (.var 3))
    (.neg (.num 390))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5676) (.var 3)) (.num 27930)) (.var 1)) (.mul
    (.add (.mul (.num 13596) (.var 3)) (.num 63469)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num
    9054) (.var 3)) (.num 47409)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    1122)) (.var 3)) (.num 9713)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num
    3198)) (.var 3)) (.neg (.num 3117))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 1038)) (.var 3)) (.neg (.num 1412))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 96)) (.var 3)) (.neg (.num 132))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5646)
    (.var 3)) (.num 15270)) (.var 1)) (.mul (.add (.mul (.num 18150) (.var 3)) (.num 45354)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.num 21696) (.var 3)) (.num 50977)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.num 11370) (.var 3)) (.num 26451)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.num 1956) (.var 3)) (.num 5766)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 360)) (.var 3)) (.num 57)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 150)) (.var 3)) (.neg (.num 145))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 12)) (.var 3)) (.neg (.num 14))) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    2364) (.var 3)) (.num 3780)) (.var 1)) (.mul (.add (.mul (.num 9390) (.var 3)) (.num 14190))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.num 15186) (.var 3)) (.num 21720)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.num 12936) (.var 3)) (.num 17563)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.num 6294) (.var 3)) (.num 8150)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.num 1776) (.var 3)) (.num 2208)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.num 276) (.var 3)) (.num 332)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.num
    18) (.var 3)) (.num 21)) (.pow (.var 2) 7))) (.var 1)))) (.pow (.var 0) 2)) (.pow (.mul (.add
    (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3))) (.mul (.mul (.mul (.num 1)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.mul (.num 15) (.var 1)) (.var 0)) (.mul (.add (.mul (.num 239) (.var 1))
    (.mul (.num 111) (.var 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.neg (.num 16)) (.var 3)) (.num 1553)) (.var 1)) (.mul (.add (.mul (.neg (.num 24)) (.var 3))
    (.num 1422)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 8)) (.var 3)) (.num 318))
    (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.neg (.num 224)) (.var 3)) (.num 5101)) (.var 1)) (.mul (.add (.mul (.neg (.num 456)) (.var
    3)) (.num 6839)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 289)) (.var 3)) (.num
    2980)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 57)) (.var 3)) (.num 423))
    (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 6) (.var 3)) (.neg (.num 1332))) (.var 3)) (.num 9289)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 3)) (.neg (.num 3392))) (.var 3)) (.num
    15780)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 3)) (.neg (.num
    3092))) (.var 3)) (.num 9490)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3) (.var 3)) (.neg (.num 1195))) (.var 3)) (.num 2370)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.neg (.num 163)) (.var 3)) (.num 206)) (.pow (.var 2) 4))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 39) (.var 3)) (.neg (.num 3606))) (.var 3)) (.num 10220)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 117) (.var 3)) (.neg (.num 11212))) (.var 3)) (.num 19678)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 126) (.var 3)) (.neg (.num 13586))) (.var 3)) (.num
    12618)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 57) (.var 3)) (.neg
    (.num 7978))) (.var 3)) (.num 2511)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 9) (.var 3)) (.neg (.num 2230))) (.var 3)) (.neg (.num 268))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 232)) (.var 3)) (.neg (.num 95))) (.pow (.var 2) 5)))
    (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 198) (.var 3)) (.neg (.num 4248))) (.var 3)) (.num 7986))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 693) (.var 3)) (.neg (.num 16176))) (.var 3))
    (.num 16470)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 909) (.var 3)) (.neg
    (.num 25458))) (.var 3)) (.num 8466)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 540) (.var 3)) (.neg (.num 20940))) (.var 3)) (.neg (.num 3608))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 135) (.var 3)) (.neg (.num 9304))) (.var
    3)) (.neg (.num 4852))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9)
    (.var 3)) (.neg (.num 2062))) (.var 3)) (.neg (.num 1553))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.neg (.num 168)) (.var 3)) (.neg (.num 150))) (.pow (.var 2) 6))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 567) (.var 3)) (.neg (.num 1290))) (.var 3)) (.num
    5517)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2268) (.var 3)) (.neg (.num 7098))) (.var
    3)) (.num 13863)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3570) (.var 3))
    (.neg (.num 16264))) (.var 3)) (.num 9328)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2772) (.var 3)) (.neg (.num 19656))) (.var 3)) (.neg (.num 3870))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1074) (.var 3)) (.neg (.num
    13332))) (.var 3)) (.neg (.num 8194))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 174) (.var 3)) (.neg (.num 5000))) (.var 3)) (.neg (.num 4177))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.neg (.num 923))) (.var 3))
    (.neg (.num 873))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 55)) (.var 3))
    (.neg (.num 55))) (.pow (.var 2) 7))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 720) (.var 3)) (.num 1140)) (.var 3)) (.num 3048)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3240) (.var 3)) (.num 3936)) (.var 3)) (.num 10230)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 5982) (.var 3)) (.num 4424)) (.var 3)) (.num 12452)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5817) (.var 3)) (.num 438)) (.var 3))
    (.num 5292)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3159) (.var 3))
    (.neg (.num 3096))) (.var 3)) (.neg (.num 1811))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 915) (.var 3)) (.neg (.num 2806))) (.var 3)) (.neg (.num 2756))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 111) (.var 3)) (.neg (.num 1066)))
    (.var 3)) (.neg (.num 1089))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num
    171)) (.var 3)) (.neg (.num 171))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num
    5)) (.var 3)) (.neg (.num 5))) (.pow (.var 2) 8))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 324) (.var 3)) (.num 660)) (.var 3)) (.num 816)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1620) (.var 3)) (.num 3084)) (.var 3)) (.num 3432)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3429) (.var 3)) (.num 5990)) (.var 3)) (.num 5873))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3996) (.var 3)) (.num 6206))
    (.var 3)) (.num 5153)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2781)
    (.var 3)) (.num 3612)) (.var 3)) (.num 2296)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1161) (.var 3)) (.num 1082)) (.var 3)) (.num 310)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 270) (.var 3)) (.num 76)) (.var 3)) (.neg (.num 151)))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 27) (.var 3)) (.neg (.num
    44))) (.var 3)) (.neg (.num 71))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num
    10)) (.var 3)) (.neg (.num 10))) (.pow (.var 2) 8))) (.pow (.var 1) 2)))) (.pow (.mul (.add
    (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.pow (.add (.var 1) (.var
    2)) 2))) (.mul (.mul (.mul (.num 5) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 180) (.var
    1)) (.mul (.num 72) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 56) (.var
    3)) (.num 2326)) (.var 1)) (.mul (.add (.mul (.num 56) (.var 3)) (.num 1978)) (.var 2))) (.var
    1)) (.mul (.num 400) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 20) (.var 3)) (.num 592)) (.var 3)) (.num 13244)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 792)) (.var 3)) (.num 17012)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 144)) (.var 3)) (.num 6892))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 56)) (.var 3)) (.num 864)) (.pow
    (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 248) (.var 3)) (.num 2934)) (.var 3)) (.num 43596)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 620) (.var 3)) (.num 4743)) (.var 3)) (.num 74061)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 496) (.var 3)) (.num 1292)) (.var 3)) (.num 44098)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 124) (.var 3)) (.neg (.num 821)))
    (.var 3)) (.num 10605)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 304))
    (.var 3)) (.num 816)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1464) (.var 3)) (.num 9804)) (.var 3)) (.num
    93708)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4392) (.var 3)) (.num 19022)) (.var 3))
    (.num 196516)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4728) (.var 3)) (.num
    7422)) (.var 3)) (.num 151098)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2136) (.var 3)) (.neg (.num 5150))) (.var 3)) (.num 50684)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 336) (.var 3)) (.neg (.num 4034))) (.var 3)) (.num
    6430)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 680)) (.var 3)) (.num 80))
    (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 5268) (.var 3)) (.num 27134)) (.var 3)) (.num
    144212)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18438) (.var 3)) (.num 67379)) (.var
    3)) (.num 361973)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24730) (.var 3))
    (.num 48543)) (.var 3)) (.num 340683)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 15730) (.var 3)) (.neg (.num 3376))) (.var 3)) (.num 142650)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4682) (.var 3)) (.neg (.num 17839))) (.var 3))
    (.num 20913)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 512) (.var 3))
    (.neg (.num 6965))) (.var 3)) (.neg (.num 1795))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 800)) (.var 3)) (.neg (.num 528))) (.pow (.var 2) 6)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 12602) (.var 3)) (.num 60450)) (.var 3)) (.num 169980)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 50408) (.var 3)) (.num 192422)) (.var 3)) (.num 509114)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 80605) (.var 3)) (.num 221787)) (.var 3))
    (.num 588116)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 65387) (.var
    3)) (.num 97177)) (.var 3)) (.num 315494)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 28049) (.var 3)) (.neg (.num 7553))) (.var 3)) (.num 64132)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5929) (.var 3)) (.neg (.num 20379))) (.var
    3)) (.neg (.num 7600))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 468)
    (.var 3)) (.neg (.num 5984))) (.var 3)) (.neg (.num 4856))) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.neg (.num 520)) (.var 3)) (.neg (.num 480))) (.pow (.var 2) 7)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 20050) (.var 3)) (.num 92370)) (.var 3)) (.num 154148))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90225) (.var 3)) (.num 357769)) (.var 3)) (.num
    551910)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 167312) (.var 3)) (.num
    551264)) (.var 3)) (.num 792026)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 164542) (.var 3)) (.num 419996)) (.var 3)) (.num 568830)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 91758) (.var 3)) (.num 150454)) (.var 3)) (.num 197092))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 28565) (.var 3)) (.num
    8668)) (.var 3)) (.num 14691)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 4464) (.var 3)) (.neg (.num 10162))) (.var 3)) (.neg (.num 10280))) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 252) (.var 3)) (.neg (.num 2683))) (.var 3))
    (.neg (.num 2745))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num 176)) (.var
    3)) (.neg (.num 176))) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 19754) (.var 3)) (.num 85946)) (.var 3)) (.num 99516)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 98770) (.var 3)) (.num 387500)) (.var 3)) (.num 420754)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 208419) (.var 3)) (.num 727067)) (.var 3)) (.num
    738032)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 241056) (.var 3))
    (.num 730736)) (.var 3)) (.num 688772)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 165818) (.var 3)) (.num 417734)) (.var 3)) (.num 358842)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 68592) (.var 3)) (.num 128812)) (.var 3)) (.num
    94182)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16273) (.var 3))
    (.num 14923)) (.var 3)) (.num 4508)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1918) (.var 3)) (.neg (.num 1944))) (.var 3)) (.neg (.num 3448))) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 3)) (.neg (.num 590))) (.var 3))
    (.neg (.num 662))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.neg (.num 24)) (.var 3))
    (.neg (.num 24))) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 10548) (.var 3)) (.num 43560)) (.var 3)) (.num 39348)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 58014) (.var 3)) (.num 222012)) (.var 3)) (.num 192258)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 137248) (.var 3)) (.num 483096)) (.var 3)) (.num
    399388)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 182511) (.var 3))
    (.num 584743)) (.var 3)) (.num 458518)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 149428) (.var 3)) (.num 428534)) (.var 3)) (.num 314862)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 77378) (.var 3)) (.num 192533)) (.var 3)) (.num
    128975)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24922) (.var 3))
    (.num 50207)) (.var 3)) (.num 28309)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 4649) (.var 3)) (.num 6157)) (.var 3)) (.num 1798)) (.pow (.var 2) 7))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 414) (.var 3)) (.neg (.num 3))) (.var 3)) (.neg (.num
    417))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.neg
    (.num 51))) (.var 3)) (.neg (.num 59))) (.pow (.var 2) 9))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 2268) (.var 3)) (.num 9270)) (.var 3)) (.num 7002))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13608) (.var 3)) (.num 52326)) (.var 3)) (.num
    38718)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 35644) (.var 3)) (.num
    128184)) (.var 3)) (.num 92540)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 53480) (.var 3)) (.num 178572)) (.var 3)) (.num 125092)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 50655) (.var 3)) (.num 155445)) (.var 3)) (.num 104790))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 31428) (.var 3)) (.num
    87176)) (.var 3)) (.num 55748)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 12791) (.var 3)) (.num 31129)) (.var 3)) (.num 18338)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 3303) (.var 3)) (.num 6657)) (.var 3)) (.num 3354)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 494) (.var 3)) (.num 728)) (.var
    3)) (.num 234)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33) (.var
    3)) (.num 25)) (.var 3)) (.neg (.num 8))) (.pow (.var 2) 9))) (.pow (.var 1) 2)))) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.add (.var 1) (.var
    2)))) (.mul (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 300) (.var 1)) (.mul
    (.num 120) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 64) (.var 3)) (.num
    3590)) (.var 1)) (.mul (.add (.mul (.num 64) (.var 3)) (.num 3074)) (.var 2))) (.var 1)) (.mul
    (.num 632) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 12) (.var 3)) (.num 552)) (.var 3)) (.num 18852)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 24) (.var 3)) (.num 712)) (.var 3)) (.num 24382)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 12) (.var 3)) (.num 96)) (.var 3)) (.num 10014)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 64)) (.var 3)) (.num 1296)) (.pow (.var
    2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 144) (.var 3)) (.num 2000)) (.var 3)) (.num 55827)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 360) (.var 3)) (.num 2696)) (.var 3)) (.num 95145)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 288) (.var 3)) (.neg (.num 208))) (.var 3)) (.num 57302)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 3)) (.neg (.num 1232)))
    (.var 3)) (.num 14212)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 328))
    (.var 3)) (.num 1192)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 840) (.var 3)) (.num 4192)) (.var 3))
    (.num 103909)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2520) (.var 3)) (.num 4392))
    (.var 3)) (.num 216559)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2712) (.var
    3)) (.neg (.num 6395))) (.var 3)) (.num 166429)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1224) (.var 3)) (.neg (.num 10798))) (.var 3)) (.num 56692)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 192) (.var 3)) (.neg (.num 4883)))
    (.var 3)) (.num 7789)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 680)) (.var
    3)) (.num 240)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2916) (.var 3)) (.num 9128)) (.var 3))
    (.num 132455)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10206) (.var 3)) (.num 12740))
    (.var 3)) (.num 325187)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13698) (.var
    3)) (.neg (.num 14578))) (.var 3)) (.num 297709)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 8730) (.var 3)) (.neg (.num 37509))) (.var 3)) (.num 119536)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2610) (.var 3)) (.neg (.num
    25964))) (.var 3)) (.num 15688)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 288) (.var 3)) (.neg (.num 7365))) (.var 3)) (.neg (.num 1875))) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 720)) (.var 3)) (.neg (.num 440))) (.pow (.var 2)
    6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 6606) (.var 3)) (.num 22364)) (.var 3)) (.num 124041))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 26424) (.var 3)) (.num 59860)) (.var 3)) (.num
    358367)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 42273) (.var 3)) (.num
    40168)) (.var 3)) (.num 392548)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 34335) (.var 3)) (.neg (.num 25270))) (.var 3)) (.num 189788)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 14769) (.var 3)) (.neg (.num 47628))) (.var 3)) (.num
    24511)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3141) (.var 3))
    (.neg (.num 24634))) (.var 3)) (.neg (.num 11713))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 252) (.var 3)) (.neg (.num 5348))) (.var 3)) (.neg (.num 4262))) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 400)) (.var 3)) (.neg (.num 368))) (.pow
    (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9546) (.var 3)) (.num 34372))
    (.var 3)) (.num 85378)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 42957) (.var 3)) (.num
    127198)) (.var 3)) (.num 294590)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    79710) (.var 3)) (.num 179602)) (.var 3)) (.num 401783)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 78519) (.var 3)) (.num 111356)) (.var 3)) (.num 264660)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 43917) (.var 3)) (.num 14346))
    (.var 3)) (.num 72651)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    13728) (.var 3)) (.neg (.num 18466))) (.var 3)) (.neg (.num 6779))) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 2151) (.var 3)) (.neg (.num 9988))) (.var 3)) (.neg
    (.num 8997))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 120) (.var 3))
    (.neg (.num 1860))) (.var 3)) (.neg (.num 1852))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 104)) (.var 3)) (.neg (.num 104))) (.pow (.var 2) 8)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 7722) (.var 3)) (.num 25740)) (.var 3)) (.num
    37992)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38610) (.var 3)) (.num 115560)) (.var
    3)) (.num 156120)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 81588) (.var 3))
    (.num 214974)) (.var 3)) (.num 265107)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 94692) (.var 3)) (.num 212288)) (.var 3)) (.num 237365)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 65529) (.var 3)) (.num 116624)) (.var 3)) (.num
    115595)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 27327) (.var 3))
    (.num 32062)) (.var 3)) (.num 25313)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 6525) (.var 3)) (.num 1465)) (.var 3)) (.neg (.num 1480))) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 759) (.var 3)) (.neg (.num 1372))) (.var 3))
    (.neg (.num 1873))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24)
    (.var 3)) (.neg (.num 273))) (.var 3)) (.neg (.num 297))) (.pow (.var 2) 8))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 8)) (.var 3)) (.neg (.num 8))) (.pow (.var 2) 9)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2592) (.var 3)) (.num 7272)) (.var 3)) (.num
    7848)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14256) (.var 3)) (.num 37728)) (.var 3))
    (.num 37602)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33810) (.var 3)) (.num
    83904)) (.var 3)) (.num 76864)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 45225) (.var 3)) (.num 104324)) (.var 3)) (.num 87242)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 37398) (.var 3)) (.num 79082)) (.var 3)) (.num 59562))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 19635) (.var 3)) (.num
    37132)) (.var 3)) (.num 24407)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 6417) (.var 3)) (.num 10292)) (.var 3)) (.num 5387)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1200) (.var 3)) (.num 1385)) (.var 3)) (.num 330)) (.pow (.var
    2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 99) (.var 3)) (.num 4)) (.var 3)) (.neg
    (.num 95))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.neg (.num 15)) (.var 3)) (.neg
    (.num 15))) (.pow (.var 2) 9))) (.var 1)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1))
    (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.add (.var 1) (.var 2)))) (.mul (.mul (.num 19)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num 20)
    (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 840)) (.var
    1)) (.mul (.add (.mul (.num 40) (.var 3)) (.num 636)) (.var 2))) (.var 1)) (.mul (.num 96)
    (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 40) (.var 3)) (.num 696)) (.var 3)) (.num 5468)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 100) (.var 3)) (.num 1112)) (.var 3)) (.num 6632)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 80) (.var 3)) (.num 456)) (.var 3)) (.num 2348)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 40)) (.var 3)) (.num 224))
    (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 628) (.var 3)) (.num 5588)) (.var 3)) (.num 22172)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1884) (.var 3)) (.num 12400)) (.var 3)) (.num 38230)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 2044) (.var 3)) (.num 9484)) (.var 3)) (.num 22860))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 948) (.var 3)) (.num 3040))
    (.var 3)) (.num 5590)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 160)
    (.var 3)) (.num 368)) (.var 3)) (.num 488)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4364) (.var 3)) (.num
    26912)) (.var 3)) (.num 63151)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15274) (.var 3))
    (.num 76556)) (.var 3)) (.num 145757)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 20718) (.var 3)) (.num 83684)) (.var 3)) (.num 128813)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 13610) (.var 3)) (.num 44668)) (.var 3)) (.num 55155))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4342) (.var 3)) (.num
    11948)) (.var 3)) (.num 11828)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 540) (.var 3)) (.num 1320)) (.var 3)) (.num 1080)) (.pow (.var 2) 5)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 17636) (.var 3)) (.num 85264)) (.var 3)) (.num 133372)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 70544) (.var 3)) (.num 295312)) (.var 3)) (.num 394575)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 114240) (.var 3)) (.num 414752)) (.var 3)) (.num
    473841)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 95816) (.var 3))
    (.num 304660)) (.var 3)) (.num 298809)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 43908) (.var 3)) (.num 124672)) (.var 3)) (.num 106151)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 10424) (.var 3)) (.num 27196)) (.var 3)) (.num 20560))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1000) (.var 3)) (.num 2480))
    (.var 3)) (.num 1720)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 45744) (.var 3))
    (.num 184030)) (.var 3)) (.num 211111)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 205848)
    (.var 3)) (.num 749162)) (.var 3)) (.num 769903)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 386316) (.var 3)) (.num 1276420)) (.var 3)) (.num 1179139)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 391482) (.var 3)) (.num 1183240)) (.var 3))
    (.num 988707)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 231070) (.var
    3)) (.num 646426)) (.var 3)) (.num 493408)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 79282) (.var 3)) (.num 208422)) (.var 3)) (.num 147290)) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14582) (.var 3)) (.num 36628)) (.var 3)) (.num
    24338)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1100) (.var 3))
    (.num 2680)) (.var 3)) (.num 1696)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 78973) (.var 3)) (.num 272022)) (.var 3)) (.num 245901)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 394865) (.var 3)) (.num 1269480)) (.var 3)) (.num 1067804)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 841114) (.var 3)) (.num 2532112)) (.var 3))
    (.num 1987951)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 995266)
    (.var 3)) (.num 2820184)) (.var 3)) (.num 2076539)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 713957) (.var 3)) (.num 1917690)) (.var 3)) (.num 1332714)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 316873) (.var 3)) (.num 813488))
    (.var 3)) (.num 537539)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    84468) (.var 3)) (.num 209008)) (.var 3)) (.num 132282)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 12228) (.var 3)) (.num 29360)) (.var 3)) (.num 17890)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 720) (.var 3)) (.num 1680)) (.var
    3)) (.num 984)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    90630) (.var 3)) (.num 270930)) (.var 3)) (.num 202986)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 498465) (.var 3)) (.num 1423466)) (.var 3)) (.num 1020395)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1186779) (.var 3)) (.num 3244946)) (.var 3)) (.num
    2229874)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1602018) (.var 3))
    (.num 4207720)) (.var 3)) (.num 2779649)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1347392) (.var 3)) (.num 3413254)) (.var 3)) (.num 2175102)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 729043) (.var 3)) (.num 1789070)) (.var 3))
    (.num 1103817)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 251917)
    (.var 3)) (.num 601298)) (.var 3)) (.num 360342)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 52902) (.var 3)) (.num 123144)) (.var 3)) (.num 71799)) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5970) (.var 3)) (.num 13540)) (.var 3))
    (.num 7664)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 260) (.var 3))
    (.num 568)) (.var 3)) (.num 308)) (.pow (.var 2) 9)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 66649) (.var 3)) (.num 174062)) (.var 3)) (.num 111793)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 399894) (.var 3)) (.num 1015812)) (.var 3)) (.num
    636744)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1051522) (.var 3)) (.num
    2601556)) (.var 3)) (.num 1592972)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1591915) (.var 3)) (.num 3842884)) (.var 3)) (.num 2301520)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1531509) (.var 3)) (.num 3614718)) (.var 3))
    (.num 2120708)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 973380)
    (.var 3)) (.num 2250836)) (.var 3)) (.num 1295550)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 410448) (.var 3)) (.num 931376)) (.var 3)) (.num 526512)) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 111723) (.var 3)) (.num 248912)) (.var
    3)) (.num 138202)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18264)
    (.var 3)) (.num 39880)) (.var 3)) (.num 21699)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1520) (.var 3)) (.num 3228)) (.var 3)) (.num 1708)) (.pow (.var 2)
    9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 80)) (.var 3)) (.num
    40)) (.pow (.var 2) 10)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 28560) (.var 3)) (.num 65316)) (.var 3)) (.num 36756)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 185640) (.var 3)) (.num 419100)) (.var 3)) (.num 233460)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 533966) (.var 3)) (.num 1190694)) (.var 3)) (.num
    656728)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 894773) (.var 3))
    (.num 1972242)) (.var 3)) (.num 1077469)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 966943) (.var 3)) (.num 2108388)) (.var 3)) (.num 1141445)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 703506) (.var 3)) (.num 1518494)) (.var 3))
    (.num 814988)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 348336) (.var
    3)) (.num 744534)) (.var 3)) (.num 396198)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 115479) (.var 3)) (.num 244330)) (.var 3)) (.num 128851)) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24361) (.var 3)) (.num 50936)) (.var 3))
    (.num 26575)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2914) (.var
    3)) (.num 5994)) (.var 3)) (.num 3080)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 146) (.var 3)) (.num 292)) (.var 3)) (.num 146)) (.pow (.var 2) 10))) (.var 1)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5454) (.var 3)) (.num
    10908)) (.var 3)) (.num 5454)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38178) (.var 3))
    (.num 76356)) (.var 3)) (.num 38178)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    119187) (.var 3)) (.num 238374)) (.var 3)) (.num 119187)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 218808) (.var 3)) (.num 437616)) (.var 3)) (.num 218808)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 262003) (.var 3)) (.num 524006))
    (.var 3)) (.num 262003)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    214184) (.var 3)) (.num 428368)) (.var 3)) (.num 214184)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 121277) (.var 3)) (.num 242554)) (.var 3)) (.num 121277)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 47048) (.var 3)) (.num 94096))
    (.var 3)) (.num 47048)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    11987) (.var 3)) (.num 23974)) (.var 3)) (.num 11987)) (.pow (.var 2) 8))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1814) (.var 3)) (.num 3628)) (.var 3)) (.num 1814)) (.pow (.var
    2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 124) (.var 3)) (.num 248)) (.var 3))
    (.num 124)) (.pow (.var 2) 10))) (.pow (.var 1) 2)))) (.pow (.mul (.add (.var 0) (.var 1))
    (.add (.add (.var 0) (.var 1)) (.var 2))) 2))) (.mul (.mul (.mul (.num 10) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 270) (.var 1)) (.mul (.num 90) (.var 2))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 140) (.var 3)) (.num 3300)) (.var 1)) (.mul (.add (.mul (.num
    140) (.var 3)) (.num 2422)) (.var 2))) (.var 1)) (.mul (.num 342) (.pow (.var 2) 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 100) (.var 3)) (.num
    1796)) (.var 3)) (.num 18635)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 250) (.var 3))
    (.num 2652)) (.var 3)) (.num 21348)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    200) (.var 3)) (.num 856)) (.var 3)) (.num 6709)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.num 50) (.pow (.var 3) 2)) (.num 456)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1210) (.var 3)) (.num
    11388)) (.var 3)) (.num 64677)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3630) (.var 3))
    (.num 23092)) (.var 3)) (.num 103128)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3940) (.var 3)) (.num 14988)) (.var 3)) (.num 53523)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1830) (.var 3)) (.num 3552)) (.var 3)) (.num 9784)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 310) (.var 3)) (.num 268)) (.var
    3)) (.num 412)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 6708) (.var 3)) (.num 45720)) (.var 3)) (.num
    155956)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 23478) (.var 3)) (.num 120462)) (.var
    3)) (.num 329941)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 31806) (.var 3))
    (.num 118078)) (.var 3)) (.num 254911)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 20820) (.var 3)) (.num 54614)) (.var 3)) (.num 88381)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 6594) (.var 3)) (.num 12542)) (.var 3)) (.num 13855))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 810) (.var 3)) (.num 1264))
    (.var 3)) (.num 900)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 21922) (.var 3)) (.num 124572))
    (.var 3)) (.num 277072)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 87688) (.var 3)) (.num
    406784)) (.var 3)) (.num 755222)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    141650) (.var 3)) (.num 530962)) (.var 3)) (.num 813176)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 118042) (.var 3)) (.num 358374)) (.var 3)) (.num 445482)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 53426) (.var 3)) (.num 134634))
    (.var 3)) (.num 134174)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    12418) (.var 3)) (.num 27406)) (.var 3)) (.num 22218)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1150) (.var 3)) (.num 2396)) (.var 3)) (.num 1680)) (.pow (.var
    2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 45760) (.var 3)) (.num 231034)) (.var 3)) (.num
    364706)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 205920) (.var 3)) (.num 898974)) (.var
    3)) (.num 1240326)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 385244) (.var 3))
    (.num 1453804)) (.var 3)) (.num 1748090)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 387394) (.var 3)) (.num 1272568)) (.var 3)) (.num 1332906)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 225418) (.var 3)) (.num 655522)) (.var 3))
    (.num 601167)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 75540) (.var
    3)) (.num 199854)) (.var 3)) (.num 162848)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 13382) (.var 3)) (.num 33340)) (.var 3)) (.num 24729)) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 950) (.var 3)) (.num 2304)) (.var 3)) (.num
    1592)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 61706) (.var 3)) (.num
    283052)) (.var 3)) (.num 342494)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 308530) (.var
    3)) (.num 1273074)) (.var 3)) (.num 1402978)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 655140) (.var 3)) (.num 2437996)) (.var 3)) (.num 2448644)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 769380) (.var 3)) (.num 2599436)) (.var 3))
    (.num 2386690)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 544464)
    (.var 3)) (.num 1689080)) (.var 3)) (.num 1426357)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 236388) (.var 3)) (.num 683846)) (.var 3)) (.num 536032)) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60892) (.var 3)) (.num 167192)) (.var
    3)) (.num 122981)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8354)
    (.var 3)) (.num 22120)) (.var 3)) (.num 15392)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 450) (.var 3)) (.num 1156)) (.var 3)) (.num 756)) (.pow (.var 2) 8))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 51556) (.var 3)) (.num 216962)) (.var
    3)) (.num 213802)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 283558) (.var 3)) (.num
    1102708)) (.var 3)) (.num 1021926)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    673394) (.var 3)) (.num 2426648)) (.var 3)) (.num 2116814)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 903588) (.var 3)) (.num 3032696)) (.var 3)) (.num
    2495996)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 751972) (.var 3))
    (.num 2367930)) (.var 3)) (.num 1845672)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 400064) (.var 3)) (.num 1192686)) (.var 3)) (.num 884589)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 134700) (.var 3)) (.num 383774)) (.var 3))
    (.num 272121)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 27172) (.var
    3)) (.num 74530)) (.var 3)) (.num 50643)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2870) (.var 3)) (.num 7578)) (.var 3)) (.num 4907)) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 110) (.var 3)) (.num 272)) (.var 3)) (.num 162))
    (.pow (.var 2) 9)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    23934) (.var 3)) (.num 93840)) (.var 3)) (.num 78666)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 143604) (.var 3)) (.num 529836)) (.var 3)) (.num 427884)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 377048) (.var 3)) (.num 1311524)) (.var 3)) (.num 1020352))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 568870) (.var 3)) (.num
    1871382)) (.var 3)) (.num 1403614)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 544044) (.var 3)) (.num 1699756)) (.var 3)) (.num 1230710)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 342600) (.var 3)) (.num 1021376)) (.var 3))
    (.num 714964)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 142498) (.var
    3)) (.num 407042)) (.var 3)) (.num 275712)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 38004) (.var 3)) (.num 104192)) (.var 3)) (.num 68214)) (.pow (.var 2) 7)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6014) (.var 3)) (.num 15754)) (.var 3)) (.num
    9906)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 470) (.var 3)) (.num
    1150)) (.var 3)) (.num 680)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    10) (.var 3)) (.num 20)) (.var 3)) (.num 10)) (.pow (.var 2) 10)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4644) (.var 3)) (.num 17484)) (.var 3))
    (.num 12840)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30186) (.var 3)) (.num 108192))
    (.var 3)) (.num 78006)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 86804) (.var
    3)) (.num 296370)) (.var 3)) (.num 209566)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 145376) (.var 3)) (.num 473448)) (.var 3)) (.num 328072)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 156970) (.var 3)) (.num 488442)) (.var 3))
    (.num 331472)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 114114) (.var
    3)) (.num 339710)) (.var 3)) (.num 225596)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 56508) (.var 3)) (.num 160878)) (.var 3)) (.num 104370)) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18786) (.var 3)) (.num 50944)) (.var 3)) (.num
    32158)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4000) (.var 3))
    (.num 10214)) (.var 3)) (.num 6214)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 490) (.var 3)) (.num 1146)) (.var 3)) (.num 656)) (.pow (.var 2) 9))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 26) (.var 3)) (.num 52)) (.var 3)) (.num 26)) (.pow (.var
    2) 10))) (.var 1)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var
    1)) (.var 2))) 2))) (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 450) (.var 1))
    (.mul (.num 150) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 160) (.var 3))
    (.num 4980)) (.var 1)) (.mul (.add (.mul (.num 160) (.var 3)) (.num 3560)) (.var 2))) (.var
    1)) (.mul (.num 480) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 60) (.var 3)) (.num 1664)) (.var 3)) (.num 25075)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 150) (.var 3)) (.num 2248)) (.var 3)) (.num 27324)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 120) (.var 3)) (.num 484)) (.var 3)) (.num
    7661)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.neg
    (.num 100))) (.var 3)) (.num 312)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 702) (.var 3)) (.num 8596)) (.var 3))
    (.num 75531)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2106) (.var 3)) (.num 15336))
    (.var 3)) (.num 111589)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2286) (.var
    3)) (.num 7136)) (.var 3)) (.num 49081)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1062) (.var 3)) (.num 128)) (.var 3)) (.num 5071)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 180) (.var 3)) (.neg (.num 268))) (.var 3)) (.neg (.num
    452))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 3744) (.var 3)) (.num 28952)) (.var 3)) (.num 153871))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13104) (.var 3)) (.num 67860)) (.var 3)) (.num
    296393)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17748) (.var 3)) (.num
    53708)) (.var 3)) (.num 191801)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 11610) (.var 3)) (.num 16136)) (.var 3)) (.num 43749)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 3672) (.var 3)) (.num 1328)) (.var 3)) (.num 426)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 450) (.var 3)) (.neg (.num 8)))
    (.var 3)) (.neg (.num 544))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11550) (.var 3)) (.num
    68908)) (.var 3)) (.num 226466)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 46200) (.var
    3)) (.num 207708)) (.var 3)) (.num 563531)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 74610) (.var 3)) (.num 241510)) (.var 3)) (.num 525871)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 62130) (.var 3)) (.num 139006)) (.var 3)) (.num 227565))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 28080) (.var 3)) (.num
    43222)) (.var 3)) (.num 45963)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 6510) (.var 3)) (.num 7574)) (.var 3)) (.num 4088)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 600) (.var 3)) (.num 648)) (.var 3)) (.num 184)) (.pow (.var 2)
    6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 22164) (.var 3)) (.num 112300)) (.var 3)) (.num 241649))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 99738) (.var 3)) (.num 417460)) (.var 3)) (.num
    763963)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 186504) (.var 3)) (.num
    637628)) (.var 3)) (.num 978023)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 187320) (.var 3)) (.num 522436)) (.var 3)) (.num 659521)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 108756) (.var 3)) (.num 251808)) (.var 3)) (.num 257373))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36312) (.var 3)) (.num
    72872)) (.var 3)) (.num 60420)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 6396) (.var 3)) (.num 11844)) (.var 3)) (.num 8255)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 450) (.var 3)) (.num 812)) (.var 3)) (.num 496)) (.pow (.var 2)
    7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 26184) (.var 3)) (.num 114600)) (.var 3))
    (.num 175324)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 130920) (.var 3)) (.num 504128))
    (.var 3)) (.num 681489)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 277842)
    (.var 3)) (.num 941324)) (.var 3)) (.num 1120039)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 325848) (.var 3)) (.num 977436)) (.var 3)) (.num 1022617)) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 230010) (.var 3)) (.num 619728)) (.var
    3)) (.num 572488)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 99426)
    (.var 3)) (.num 246068)) (.var 3)) (.num 203001)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 25416) (.var 3)) (.num 59312)) (.var 3)) (.num 44413)) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3438) (.var 3)) (.num 7720)) (.var 3))
    (.num 5293)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 180) (.var 3))
    (.num 388)) (.var 3)) (.num 236)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 17316) (.var 3)) (.num 64284)) (.var 3)) (.num 75702)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 95238) (.var 3)) (.num 324768)) (.var 3)) (.num 348900)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 226086) (.var 3)) (.num 710372)) (.var 3)) (.num
    696285)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 303102) (.var 3))
    (.num 883180)) (.var 3)) (.num 792013)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 251808) (.var 3)) (.num 687280)) (.var 3)) (.num 567180)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 133518) (.var 3)) (.num 345776)) (.var 3)) (.num
    264822)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 44646) (.var 3))
    (.num 111188)) (.var 3)) (.num 79753)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 8868) (.var 3)) (.num 21440)) (.var 3)) (.num 14471)) (.pow (.var 2) 7))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 900) (.var 3)) (.num 2104)) (.var 3)) (.num 1320))
    (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.num 64))
    (.var 3)) (.num 34)) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 4860) (.var 3)) (.num 14928)) (.var 3)) (.num 14448)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 29160) (.var 3)) (.num 84924)) (.var 3)) (.num 76590)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 76566) (.var 3)) (.num 212048)) (.var 3)) (.num 178420))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 115530) (.var 3)) (.num
    305648)) (.var 3)) (.num 240669)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 110484) (.var 3)) (.num 280936)) (.var 3)) (.num 207951)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 69516) (.var 3)) (.num 171132)) (.var 3)) (.num 119710))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 28812) (.var 3)) (.num
    69190)) (.var 3)) (.num 45962)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 7596) (.var 3)) (.num 17910)) (.var 3)) (.num 11327)) (.pow (.var 2) 7))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1158) (.var 3)) (.num 2690)) (.var 3)) (.num 1615)) (.pow
    (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 78) (.var 3)) (.num 178)) (.var
    3)) (.num 100)) (.pow (.var 2) 9))) (.var 1)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2))) (.mul (.mul (.mul (.num 4) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 10) (.var 1)) (.mul (.num 4)
    (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 163)) (.var
    1)) (.mul (.add (.mul (.num 4) (.var 3)) (.num 138)) (.var 2))) (.var 1)) (.mul (.num 28)
    (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 2) (.var 3)) (.num 66)) (.var 3)) (.num 1188)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 4) (.var 3)) (.num 92)) (.var 3)) (.num 1529)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2) (.var 3)) (.num 22)) (.var 3)) (.num 626)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.num 80)) (.pow (.var 2) 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num
    526)) (.var 3)) (.num 5177)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 100) (.var 3))
    (.num 960)) (.var 3)) (.num 8919)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    80) (.var 3)) (.num 458)) (.var 3)) (.num 5449)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 20) (.var 3)) (.neg (.num 4))) (.var 3)) (.num 1366)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.neg (.num 28)) (.var 3)) (.num 112)) (.pow (.var 2) 4))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 355) (.var 3)) (.num 2746)) (.var 3)) (.num 15338)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1065) (.var 3)) (.num 6376)) (.var 3)) (.num 33187)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1151) (.var 3)) (.num 4766)) (.var 3)) (.num 26894)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 527) (.var 3)) (.num 972)) (.var 3))
    (.num 9884)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 86) (.var 3))
    (.neg (.num 248))) (.var 3)) (.num 1520)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 84)) (.var 3)) (.num 56)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1862) (.var 3))
    (.num 10424)) (.var 3)) (.num 33610)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6517)
    (.var 3)) (.num 30052)) (.var 3)) (.num 88488)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 8795) (.var 3)) (.num 31546)) (.var 3)) (.num 90370)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 5695) (.var 3)) (.num 13748)) (.var 3)) (.num 44191))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1763) (.var 3)) (.num 1286))
    (.var 3)) (.num 9920)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 208)
    (.var 3)) (.neg (.num 684))) (.var 3)) (.num 614)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 140)) (.var 3)) (.neg (.num 56))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 6432) (.var 3)) (.num 29304)) (.var 3)) (.num 57616)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 25728) (.var 3)) (.num 101920)) (.var 3)) (.num 181965)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 41443) (.var 3)) (.num 138938)) (.var 3)) (.num
    229905)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 34281) (.var 3))
    (.num 92156)) (.var 3)) (.num 145972)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 15295) (.var 3)) (.num 28502)) (.var 3)) (.num 46555)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3471) (.var 3)) (.num 1928)) (.var 3)) (.num 5496))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 310) (.var 3)) (.neg (.num
    880))) (.var 3)) (.neg (.num 452))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 140)) (.var 3)) (.neg (.num 112))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 15296) (.var 3)) (.num 59824)) (.var 3)) (.num 78742)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 68832) (.var 3)) (.num 243964)) (.var 3)) (.num 295224)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 128546) (.var 3)) (.num 407970)) (.var 3)) (.num
    456037)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 128695) (.var 3))
    (.num 358192)) (.var 3)) (.num 371093)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 74273) (.var 3)) (.num 173526)) (.var 3)) (.num 166257)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 24553) (.var 3)) (.num 42788)) (.var 3)) (.num 36966))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4257) (.var 3)) (.num 3104))
    (.var 3)) (.num 1728)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 292)
    (.var 3)) (.neg (.num 604))) (.var 3)) (.neg (.num 694))) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 84)) (.var 3)) (.neg (.num 80))) (.pow (.var 2) 8)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 25244) (.var 3)) (.num 86362)) (.var 3)) (.num
    83965)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 126220) (.var 3)) (.num 403370)) (.var
    3)) (.num 368303)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 267791) (.var 3))
    (.num 795530)) (.var 3)) (.num 682505)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 313844) (.var 3)) (.num 859844)) (.var 3)) (.num 692185)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 221263) (.var 3)) (.num 550760)) (.var 3)) (.num
    413301)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 95459) (.var 3))
    (.num 208966)) (.var 3)) (.num 143075)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 24332) (.var 3)) (.num 42996)) (.var 3)) (.num 24791)) (.pow (.var 2) 6))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3277) (.var 3)) (.num 3288)) (.var 3)) (.num 660))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 170) (.var 3)) (.neg (.num
    208))) (.var 3)) (.neg (.num 354))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 28)) (.var 3)) (.neg (.num 28))) (.pow (.var 2) 9)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 28440) (.var 3)) (.num 85494)) (.var 3)) (.num 66360))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 156420) (.var 3)) (.num 449286)) (.var 3)) (.num
    334563)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 371316) (.var 3)) (.num
    1017296)) (.var 3)) (.num 726556)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 497772) (.var 3)) (.num 1297210)) (.var 3)) (.num 887536)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 413530) (.var 3)) (.num 1019814)) (.var 3)) (.num 666061))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 219359) (.var 3)) (.num
    506530)) (.var 3)) (.num 312919)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 73489) (.var 3)) (.num 155222)) (.var 3)) (.num 88557)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 14693) (.var 3)) (.num 26758)) (.var 3)) (.num 13065))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1525) (.var 3)) (.num 1938))
    (.var 3)) (.num 473)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 56)
    (.var 3)) (.neg (.num 24))) (.var 3)) (.neg (.num 80))) (.pow (.var 2) 9))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 4)) (.var 3)) (.neg (.num 4))) (.pow (.var 2) 10)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 20931) (.var 3)) (.num 55218))
    (.var 3)) (.num 36033)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 125586) (.var 3)) (.num
    322200)) (.var 3)) (.num 205308)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    329597) (.var 3)) (.num 822046)) (.var 3)) (.num 511343)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 496780) (.var 3)) (.num 1203656)) (.var 3)) (.num 730453)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 474233) (.var 3)) (.num 1114482))
    (.var 3)) (.num 658851)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    297698) (.var 3)) (.num 676200)) (.var 3)) (.num 388050)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 123148) (.var 3)) (.num 268324)) (.var 3)) (.num 148296)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 32531) (.var 3)) (.num 66888))
    (.var 3)) (.num 34950)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    5063) (.var 3)) (.num 9448)) (.var 3)) (.num 4435)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 385) (.var 3)) (.num 576)) (.var 3)) (.num 191)) (.pow (.var 2) 9)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 2)) (.var 3)) (.neg (.num
    6))) (.pow (.var 2) 10))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 9108) (.var 3)) (.num 20988)) (.var 3)) (.num 11880)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 59202) (.var 3)) (.num 134640)) (.var 3)) (.num 75438)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 170148) (.var 3)) (.num 381942)) (.var 3)) (.num
    211794)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 284592) (.var 3))
    (.num 630576)) (.var 3)) (.num 345984)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 306546) (.var 3)) (.num 670254)) (.var 3)) (.num 363708)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 221850) (.var 3)) (.num 478218)) (.var 3)) (.num
    256368)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 108918) (.var 3))
    (.num 230944)) (.var 3)) (.num 122026)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 35613) (.var 3)) (.num 73920)) (.var 3)) (.num 38307)) (.pow (.var 2) 7))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 7341) (.var 3)) (.num 14766)) (.var 3)) (.num 7425))
    (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 843) (.var 3)) (.num 1606))
    (.var 3)) (.num 763)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 39)
    (.var 3)) (.num 66)) (.var 3)) (.num 27)) (.pow (.var 2) 10))) (.pow (.var 1) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1782) (.var 3)) (.num 3564))
    (.var 3)) (.num 1782)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12474) (.var 3)) (.num
    24948)) (.var 3)) (.num 12474)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    38961) (.var 3)) (.num 77922)) (.var 3)) (.num 38961)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 71604) (.var 3)) (.num 143208)) (.var 3)) (.num 71604)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 85893) (.var 3)) (.num 171786))
    (.var 3)) (.num 85893)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    70392) (.var 3)) (.num 140784)) (.var 3)) (.num 70392)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 39980) (.var 3)) (.num 79960)) (.var 3)) (.num 39980)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15560) (.var 3)) (.num 31120))
    (.var 3)) (.num 15560)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    3975) (.var 3)) (.num 7950)) (.var 3)) (.num 3975)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 602) (.var 3)) (.num 1204)) (.var 3)) (.num 602)) (.pow (.var 2) 9)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 41) (.var 3)) (.num 82)) (.var 3)) (.num 41))
    (.pow (.var 2) 10))) (.pow (.var 1) 3)))) (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0)
    (.var 1)) (.var 2)))) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.num 4) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 1)) (.mul (.num 10) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 470)) (.var 1)) (.mul
    (.add (.mul (.num 20) (.var 3)) (.num 354)) (.var 2))) (.var 1)) (.mul (.num 54) (.pow (.var
    2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 20) (.var
    3)) (.num 384)) (.var 3)) (.num 3454)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50) (.var
    3)) (.num 608)) (.var 3)) (.num 4145)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 40) (.var 3)) (.num 244)) (.var 3)) (.num 1461)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20)) (.var 3)) (.num 140)) (.pow (.var 2)
    3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    352) (.var 3)) (.num 3460)) (.var 3)) (.num 15950)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1056) (.var 3)) (.num 7590)) (.var 3)) (.num 27048)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1146) (.var 3)) (.num 5712)) (.var 3)) (.num 15943)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 532) (.var 3)) (.num 1794)) (.var 3)) (.num
    3843)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90) (.var 3)) (.num
    212)) (.var 3)) (.num 328)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2790) (.var 3)) (.num 19032)) (.var 3))
    (.num 52206)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9765) (.var 3)) (.num 53502))
    (.var 3)) (.num 117852)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13255) (.var
    3)) (.num 57756)) (.var 3)) (.num 102045)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 8725) (.var 3)) (.num 30486)) (.var 3)) (.num 42867)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2795) (.var 3)) (.num 8092)) (.var 3)) (.num
    9030)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 350) (.var 3)) (.num
    892)) (.var 3)) (.num 812)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13110) (.var 3)) (.num
    70212)) (.var 3)) (.num 128241)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 52440) (.var
    3)) (.num 240398)) (.var 3)) (.num 369779)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 85029) (.var 3)) (.num 334284)) (.var 3)) (.num 434172)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 71547) (.var 3)) (.num 243946)) (.var 3)) (.num 268884))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 32987) (.var 3)) (.num
    99692)) (.var 3)) (.num 94428)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 7909) (.var 3)) (.num 21864)) (.var 3)) (.num 18248)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 770) (.var 3)) (.num 2020)) (.var 3)) (.num 1540)) (.pow
    (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40450) (.var 3)) (.num 180670)) (.var 3))
    (.num 240617)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 182025) (.var 3)) (.num 727442))
    (.var 3)) (.num 854520)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 342238)
    (.var 3)) (.num 1229384)) (.var 3)) (.num 1280583)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 348383) (.var 3)) (.num 1135458)) (.var 3)) (.num 1057603)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 207321) (.var 3)) (.num 621810))
    (.var 3)) (.num 524419)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    72070) (.var 3)) (.num 202512)) (.var 3)) (.num 157266)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 13519) (.var 3)) (.num 36288)) (.var 3)) (.num 26444)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1050) (.var 3)) (.num 2740)) (.var
    3)) (.num 1904)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 85573)
    (.var 3)) (.num 328376)) (.var 3)) (.num 341965)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 427865) (.var 3)) (.num 1516372)) (.var 3)) (.num 1447466)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 913630) (.var 3)) (.num 3003968)) (.var 3)) (.num 2642187))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1087330) (.var 3)) (.num
    3340050)) (.var 3)) (.num 2726587)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 788030) (.var 3)) (.num 2282524)) (.var 3)) (.num 1745137)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 355468) (.var 3)) (.num 981314)) (.var 3)) (.num
    710018)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 97105) (.var 3))
    (.num 258296)) (.var 3)) (.num 178682)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 14585) (.var 3)) (.num 37728)) (.var 3)) (.num 25150)) (.pow (.var 2) 7))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 910) (.var 3)) (.num 2300)) (.var 3)) (.num 1480))
    (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 125508) (.var
    3)) (.num 419750)) (.var 3)) (.num 359405)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    690294) (.var 3)) (.num 2182750)) (.var 3)) (.num 1764133)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1648472) (.var 3)) (.num 4946324)) (.var 3)) (.num 3788193)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2240919) (.var 3)) (.num 6412162))
    (.var 3)) (.num 4676724)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1908010) (.var 3)) (.num 5237630)) (.var 3)) (.num 3659104)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1052471) (.var 3)) (.num 2789716)) (.var 3)) (.num
    1878176)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 374393) (.var 3))
    (.num 964212)) (.var 3)) (.num 629051)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 82146) (.var 3)) (.num 206552)) (.var 3)) (.num 131076)) (.pow (.var 2) 7))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 9937) (.var 3)) (.num 24436)) (.var 3)) (.num 15084))
    (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 490) (.var 3)) (.num 1172))
    (.var 3)) (.num 698)) (.pow (.var 2) 9)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 125875) (.var 3)) (.num 369436)) (.var 3)) (.num 269166)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 755250) (.var 3)) (.num 2133978)) (.var 3)) (.num 1499571))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1993171) (.var 3)) (.num 5435936))
    (.var 3)) (.num 3693157)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    3042730) (.var 3)) (.num 8036058)) (.var 3)) (.num 5294375)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 2969763) (.var 3)) (.num 7623676)) (.var 3)) (.num
    4886894)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1930422) (.var 3))
    (.num 4835128)) (.var 3)) (.num 3025601)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 841968) (.var 3)) (.num 2064596)) (.var 3)) (.num 1264706)) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 241143) (.var 3)) (.num 580220)) (.var 3))
    (.num 348490)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 42713) (.var
    3)) (.num 100852)) (.var 3)) (.num 59346)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 4095) (.var 3)) (.num 9444)) (.var 3)) (.num 5414)) (.pow (.var 2) 9)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 150) (.var 3)) (.num 332)) (.var 3)) (.num 182))
    (.pow (.var 2) 10)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 82638) (.var 3)) (.num 213480)) (.var 3)) (.num 135396)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 537147) (.var 3)) (.num 1355508)) (.var 3)) (.num 842346)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1551696) (.var 3)) (.num 3831422)) (.var 3))
    (.num 2335796)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2625711)
    (.var 3)) (.num 6356102)) (.var 3)) (.num 3807368)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2885502) (.var 3)) (.num 6862246)) (.var 3)) (.num 4045682)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2154852) (.var 3)) (.num 5044702))
    (.var 3)) (.num 2931895)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1109546) (.var 3)) (.num 2561150)) (.var 3)) (.num 1469152)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 390178) (.var 3)) (.num 888716)) (.var 3)) (.num 503384))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90313) (.var 3)) (.num
    202830)) (.var 3)) (.num 113321)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 12696) (.var 3)) (.num 28008)) (.var 3)) (.num 15373)) (.pow (.var 2) 9))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 909) (.var 3)) (.num 1948)) (.var 3)) (.num 1039)) (.pow
    (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 40)) (.var
    3)) (.num 20)) (.pow (.var 2) 11)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 32112) (.var 3)) (.num 73044)) (.var 3)) (.num 40932)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 224784) (.var 3)) (.num 505692)) (.var 3)) (.num 280908))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 705267) (.var 3)) (.num 1570446))
    (.var 3)) (.num 865179)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1309410) (.var 3)) (.num 2888586)) (.var 3)) (.num 1579176)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1598390) (.var 3)) (.num 3496486)) (.var 3)) (.num
    1898096)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1346377) (.var 3))
    (.num 2922866)) (.var 3)) (.num 1576489)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 797531) (.var 3)) (.num 1719182)) (.var 3)) (.num 921651)) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 331340) (.var 3)) (.num 709260)) (.var 3))
    (.num 377920)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 94151) (.var
    3)) (.num 199966)) (.var 3)) (.num 105815)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 17270) (.var 3)) (.num 36302)) (.var 3)) (.num 19032)) (.pow (.var 2) 9)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1809) (.var 3)) (.num 3740)) (.var 3)) (.num
    1931)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 79) (.var 3)) (.num
    158)) (.var 3)) (.num 79)) (.pow (.var 2) 11))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5616) (.var 3)) (.num 11232)) (.var 3))
    (.num 5616)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 42120) (.var 3)) (.num 84240))
    (.var 3)) (.num 42120)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 142614) (.var
    3)) (.num 285228)) (.var 3)) (.num 142614)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 288171) (.var 3)) (.num 576342)) (.var 3)) (.num 288171)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 386724) (.var 3)) (.num 773448)) (.var 3))
    (.num 386724)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 362505) (.var
    3)) (.num 725010)) (.var 3)) (.num 362505)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 242576) (.var 3)) (.num 485152)) (.var 3)) (.num 242576)) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 116046) (.var 3)) (.num 232092)) (.var 3))
    (.num 116046)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38944) (.var
    3)) (.num 77888)) (.var 3)) (.num 38944)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 8741) (.var 3)) (.num 17482)) (.var 3)) (.num 8741)) (.pow (.var 2) 9)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1182) (.var 3)) (.num 2364)) (.var 3)) (.num
    1182)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 73) (.var 3)) (.num
    146)) (.var 3)) (.num 73)) (.pow (.var 2) 11))) (.pow (.var 1) 2)))) (.var 0)) (.mul (.add
    (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.add (.add (.add (.add (.add (.add (.add (.mul (.num 4) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.mul (.num 8) (.var 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 12)) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 12)) (.var 3)) (.num 8))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 12))
    (.var 3)) (.num 2)) (.pow (.var 2) 4))) (.var 0)) (.mul (.mul (.add (.mul (.num 4) (.var 3))
    (.num 4)) (.var 3)) (.pow (.var 2) 5))) (.pow (.var 0) 3))) (.mul (.mul (.num 20) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13) (.var 0)) (.mul (.num 35)
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.num 8)) (.var 3))
    (.num 30)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27) (.var 3))
    (.num 28)) (.var 3)) (.num 10)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 27) (.var 3)) (.num 32)) (.var 3)) (.num 5)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 9) (.var 3)) (.num 12)) (.var 3)) (.num 3)) (.pow (.var 2) 5))) (.pow
    (.var 0) 2))) (.pow (.var 0) 1))) (.mul (.mul (.num 40) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 35) (.var 0)) (.mul (.num 54) (.var 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 15) (.var 3)) (.neg (.num 6))) (.var 3)) (.num 6)) (.pow (.var
    2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 36) (.var 3)) (.num 22)) (.var 3)) (.neg
    (.num 6))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27) (.var 3))
    (.num 38)) (.var 3)) (.num 11)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 6) (.var 3)) (.num 10)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.var 0))) (.pow (.var
    0) 2))) (.mul (.mul (.num 40) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 50) (.var 0)) (.mul (.num 26) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    11) (.var 3)) (.neg (.num 26))) (.var 3)) (.neg (.num 39))) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 23) (.var 3)) (.num 14)) (.var 3)) (.neg (.num 3))) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 13) (.var 3)) (.num 26)) (.var 3))
    (.num 13)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 3))
    (.num 2)) (.var 3)) (.num 1)) (.pow (.var 2) 5)))) (.pow (.var 0) 3))) (.mul (.mul (.num 20)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 0)) (.mul (.neg (.num 16))
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.neg (.num 22))) (.var
    3)) (.neg (.num 33))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6)
    (.var 3)) (.num 14)) (.var 3)) (.num 12)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 3) (.var 3)) (.num 8)) (.var 3)) (.num 5)) (.pow (.var 2) 4)))) (.pow (.var
    0) 4))) (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.num 17) (.var 0)) (.mul
    (.neg (.num 21)) (.var 2))) (.var 0)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.neg (.num
    3))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.num 6) (.var 3)) (.num 7)) (.pow (.var
    2) 3)))) (.pow (.var 0) 5))) (.mul (.mul (.num 36) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 2) (.var 0)) (.mul (.num 4) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var 2) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 16)) (.var 3)) (.num 8)) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20)) (.var 3))
    (.num 10)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 3))
    (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.pow (.var 0) 2))) (.pow (.var 0) 1)))
    (.mul (.mul (.num 90) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    11) (.var 0)) (.mul (.num 9) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 7) (.var
    3)) (.num 4)) (.var 3)) (.neg (.num 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 19) (.var 3)) (.num 34)) (.var 3)) (.num 18)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 17) (.var 3)) (.num 40)) (.var 3)) (.num 23)) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 3)) (.num 10)) (.var 3)) (.num 5))
    (.pow (.var 2) 5))) (.var 0))) (.pow (.var 0) 2))) (.mul (.mul (.num 120) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 24) (.var 0)) (.mul (.neg (.num 3)) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.neg (.num 10))) (.var 3)) (.neg
    (.num 22))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 17) (.var 3))
    (.num 32)) (.var 3)) (.num 22)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 10) (.var 3)) (.num 28)) (.var 3)) (.num 18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1) (.var 3)) (.num 2)) (.var 3)) (.num 1)) (.pow (.var 2) 5)))) (.pow
    (.var 0) 3))) (.mul (.mul (.num 90) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 26)
    (.var 0)) (.mul (.neg (.num 23)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3)
    (.var 3)) (.neg (.num 16))) (.var 3)) (.neg (.num 19))) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 20)) (.var 3)) (.num 19)) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 8)) (.var 3)) (.num 5)) (.pow
    (.var 2) 4)))) (.pow (.var 0) 4))) (.mul (.mul (.num 36) (.add (.mul (.add (.mul (.add (.mul
    (.num 14) (.var 0)) (.mul (.neg (.num 21)) (.var 2))) (.var 0)) (.mul (.mul (.neg (.num 6))
    (.var 3)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.num 6) (.var 3)) (.num 7)) (.pow
    (.var 2) 3)))) (.pow (.var 0) 5))) (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.num 3) (.var
    0)) (.mul (.neg (.num 6)) (.var 2))) (.var 0)) (.mul (.num 3) (.pow (.var 2) 2)))) (.pow (.var
    0) 6))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.add (.add (.add (.add
    (.add (.add (.add (.add (.add (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 189) (.var 0)) (.mul
    (.add (.mul (.num 96) (.var 3)) (.num 2265)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 140) (.var 3)) (.num 670)) (.var 3)) (.num 8185)) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1441) (.var 3)) (.num 2482)) (.var 3)) (.num 14174)) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5281) (.var 3)) (.num 6532)) (.var
    3)) (.num 13832)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9720)
    (.var 3)) (.num 11478)) (.var 3)) (.num 8687)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 9996) (.var 3)) (.num 12330)) (.var 3)) (.num 4397)) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5803) (.var 3)) (.num 7594)) (.var 3)) (.num
    2048)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1759) (.var 3)) (.num
    2420)) (.var 3)) (.num 661)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    212) (.var 3)) (.num 302)) (.var 3)) (.num 90)) (.pow (.var 2) 9))) (.pow (.var 0) 3))) (.mul
    (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 399) (.var 0)) (.mul (.add (.mul (.num 170) (.var
    3)) (.num 4322)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 200) (.var 3)) (.num
    860)) (.var 3)) (.num 13126)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 1934) (.var 3)) (.num 1984)) (.var 3)) (.num 17719)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 6614) (.var 3)) (.num 4964)) (.var 3)) (.num 12275)) (.pow (.var
    2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 11214) (.var 3)) (.num 10500)) (.var 3))
    (.num 5874)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10438) (.var
    3)) (.num 12520)) (.var 3)) (.num 3948)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 5356) (.var 3)) (.num 7668)) (.var 3)) (.num 2559)) (.pow (.var 2) 7))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1388) (.var 3)) (.num 2200)) (.var 3)) (.num 812)) (.pow
    (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 136) (.var 3)) (.num 222)) (.var
    3)) (.num 86)) (.pow (.var 2) 9))) (.pow (.var 0) 2))) (.pow (.var 0) 1))) (.mul (.mul (.num
    3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 525) (.var 0)) (.mul (.add (.mul (.num 180) (.var 3)) (.num
    5135)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 160) (.var 3)) (.num 620))
    (.var 3)) (.num 12750)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    1476) (.var 3)) (.num 236)) (.var 3)) (.num 12013)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 4781) (.var 3)) (.num 1026)) (.var 3)) (.num 3808)) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 7525) (.var 3)) (.num 5744)) (.var 3))
    (.num 1264)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6300) (.var 3))
    (.num 8228)) (.var 3)) (.num 2986)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 2766) (.var 3)) (.num 4716)) (.var 3)) (.num 2133)) (.pow (.var 2) 7))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 563) (.var 3)) (.num 1070)) (.var 3)) (.num 507)) (.pow
    (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 37) (.var 3)) (.num 68)) (.var 3))
    (.num 31)) (.pow (.var 2) 9))) (.var 0))) (.pow (.var 0) 2))) (.mul (.mul (.num 1) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 441) (.var 0)) (.mul (.add (.mul (.num 114) (.var 3)) (.num 3888)) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 68) (.var 3)) (.num 238)) (.var 3)) (.num 7567))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 607) (.var 3)) (.neg (.num
    686))) (.var 3)) (.num 3653)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 1894) (.var 3)) (.neg (.num 746))) (.var 3)) (.neg (.num 1549))) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2807) (.var 3)) (.num 2348)) (.var 3)) (.num
    159)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2126) (.var 3)) (.num
    3790)) (.var 3)) (.num 2191)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 783) (.var 3)) (.num 1778)) (.var 3)) (.num 1097)) (.pow (.var 2) 7))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 112) (.var 3)) (.num 262)) (.var 3)) (.num 150)) (.pow (.var 2)
    8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 6)) (.var 3)) (.num 3))
    (.pow (.var 2) 9)))) (.pow (.var 0) 3))) (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 90) (.var
    0)) (.mul (.add (.mul (.num 52) (.var 3)) (.num 1085)) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 88) (.var 3)) (.num 438)) (.var 3)) (.num 3943)) (.pow (.var 2) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 953) (.var 3)) (.num 2128)) (.var 3)) (.num 7258))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3692) (.var 3)) (.num 6591))
    (.var 3)) (.num 8699)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 7190)
    (.var 3)) (.num 12239)) (.var 3)) (.num 8276)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 7824) (.var 3)) (.num 13304)) (.var 3)) (.num 6469)) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4805) (.var 3)) (.num 8210)) (.var 3)) (.num
    3534)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1540) (.var 3)) (.num
    2627)) (.var 3)) (.num 1087)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 196) (.var 3)) (.num 331)) (.var 3)) (.num 135)) (.pow (.var 2) 9))) (.pow (.var 0)
    3)))) (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 288) (.var 0)) (.mul (.add (.mul (.num
    140) (.var 3)) (.num 3109)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 192)
    (.var 3)) (.num 832)) (.var 3)) (.num 9313)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1905) (.var 3)) (.num 2922)) (.var 3)) (.num 13035)) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6729) (.var 3)) (.num 8966)) (.var 3)) (.num
    11794)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 11853) (.var 3))
    (.num 17749)) (.var 3)) (.num 10766)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 11543) (.var 3)) (.num 19530)) (.var 3)) (.num 9561)) (.pow (.var 2) 6))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 6254) (.var 3)) (.num 11410)) (.var 3)) (.num 5391))
    (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1732) (.var 3)) (.num 3224))
    (.var 3)) (.num 1492)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 184)
    (.var 3)) (.num 331)) (.var 3)) (.num 147)) (.pow (.var 2) 9))) (.pow (.var 0) 2))) (.pow
    (.var 0) 1))) (.mul (.mul (.num 18) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 510) (.var 0)) (.mul (.add
    (.mul (.num 200) (.var 3)) (.num 4940)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 208) (.var 3)) (.num 788)) (.var 3)) (.num 11864)) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 1937) (.var 3)) (.num 1330)) (.var 3)) (.num 11046)) (.pow (.var
    2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6360) (.var 3)) (.num 5143)) (.var 3))
    (.num 5683)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10194) (.var
    3)) (.num 13416)) (.var 3)) (.num 6760)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 8754) (.var 3)) (.num 15492)) (.var 3)) (.num 8240)) (.pow (.var 2) 6))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 3993) (.var 3)) (.num 8172)) (.var 3)) (.num 4444)) (.pow
    (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 866) (.var 3)) (.num 1817)) (.var
    3)) (.num 951)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 64) (.var
    3)) (.num 122)) (.var 3)) (.num 58)) (.pow (.var 2) 9))) (.var 0))) (.pow (.var 0) 2))) (.mul
    (.mul (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 540) (.var 0)) (.mul (.add (.mul (.num 160) (.var 3))
    (.num 4700)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 112) (.var 3)) (.num
    372)) (.var 3)) (.num 8686)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    1001) (.var 3)) (.neg (.num 512))) (.var 3)) (.num 3562)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 3131) (.var 3)) (.num 674)) (.var 3)) (.neg (.num 1153))) (.pow
    (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4657) (.var 3)) (.num 6146)) (.var
    3)) (.num 2965)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3547) (.var
    3)) (.num 7524)) (.var 3)) (.num 5007)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1320) (.var 3)) (.num 3270)) (.var 3)) (.num 2127)) (.pow (.var 2) 7))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 194) (.var 3)) (.num 474)) (.var 3)) (.num 280)) (.pow
    (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 12)) (.var 3))
    (.num 6)) (.pow (.var 2) 9)))) (.pow (.var 0) 3))) (.mul (.mul (.num 3) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 342) (.var
    0)) (.mul (.add (.mul (.num 68) (.var 3)) (.num 2677)) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 24) (.var 3)) (.num 70)) (.var 3)) (.num 3559)) (.pow (.var 2) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 210) (.var 3)) (.neg (.num 666))) (.var 3)) (.neg
    (.num 804))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 642) (.var 3))
    (.neg (.num 408))) (.var 3)) (.neg (.num 1832))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 912) (.var 3)) (.num 1922)) (.var 3)) (.num 1739)) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 636) (.var 3)) (.num 2206)) (.var 3)) (.num
    2077)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 198) (.var 3)) (.num
    672)) (.var 3)) (.num 532)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    18) (.var 3)) (.num 48)) (.var 3)) (.num 30)) (.pow (.var 2) 8)))) (.pow (.var 0) 4))) (.mul
    (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 6) (.var 0)) (.mul (.add (.mul (.num 4) (.var 3)) (.num
    74)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 44)) (.var
    3)) (.num 275)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 96) (.var
    3)) (.num 270)) (.var 3)) (.num 551)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 409) (.var 3)) (.num 932)) (.var 3)) (.num 831)) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 867) (.var 3)) (.num 1830)) (.var 3)) (.num 1091)) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1018) (.var 3)) (.num 2084)) (.var
    3)) (.num 1089)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 670) (.var
    3)) (.num 1354)) (.var 3)) (.num 685)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 229) (.var 3)) (.num 460)) (.var 3)) (.num 231)) (.pow (.var 2) 8))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 31) (.var 3)) (.num 62)) (.var 3)) (.num 31)) (.pow (.var
    2) 9))) (.pow (.var 0) 3)))) (.mul (.mul (.num 15) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 39) (.var 0))
    (.mul (.add (.mul (.num 22) (.var 3)) (.num 423)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 36) (.var 3)) (.num 164)) (.var 3)) (.num 1255)) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 376) (.var 3)) (.num 792)) (.var 3)) (.num 1850)) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1408) (.var 3)) (.num 2680)) (.var
    3)) (.num 2271)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2643) (.var
    3)) (.num 5286)) (.var 3)) (.num 3102)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 2756) (.var 3)) (.num 5802)) (.var 3)) (.num 3201)) (.pow (.var 2) 6))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1606) (.var 3)) (.num 3446)) (.var 3)) (.num 1866)) (.pow
    (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 480) (.var 3)) (.num 1010)) (.var
    3)) (.num 530)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 55) (.var
    3)) (.num 110)) (.var 3)) (.num 55)) (.pow (.var 2) 9))) (.pow (.var 0) 2))) (.pow (.var 0)
    1))) (.mul (.mul (.num 30) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 105) (.var 0)) (.mul (.add (.mul (.num
    48) (.var 3)) (.num 1009)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 60) (.var
    3)) (.num 228)) (.var 3)) (.num 2321)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 569) (.var 3)) (.num 714)) (.var 3)) (.num 2106)) (.pow (.var 2) 3))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1915) (.var 3)) (.num 2700)) (.var 3)) (.num 1813)) (.pow
    (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3170) (.var 3)) (.num 5882)) (.var
    3)) (.num 3368)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2841) (.var
    3)) (.num 6274)) (.var 3)) (.num 3795)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1374) (.var 3)) (.num 3242)) (.var 3)) (.num 1938)) (.pow (.var 2) 7))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 324) (.var 3)) (.num 738)) (.var 3)) (.num 414)) (.pow
    (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27) (.var 3)) (.num 54)) (.var 3))
    (.num 27)) (.pow (.var 2) 9))) (.var 0))) (.pow (.var 0) 2))) (.mul (.mul (.num 30) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 150) (.var 0)) (.mul (.add (.mul (.num 52) (.var 3)) (.num 1286)) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 44) (.var 3)) (.num 140)) (.var 3)) (.num 2204))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 394) (.var 3)) (.num 48))
    (.var 3)) (.num 622)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1237)
    (.var 3)) (.num 1024)) (.var 3)) (.neg (.num 32))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1850) (.var 3)) (.num 3342)) (.var 3)) (.num 2045)) (.pow (.var 2)
    5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1421) (.var 3)) (.num 3512)) (.var 3))
    (.num 2492)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 537) (.var 3))
    (.num 1456)) (.var 3)) (.num 988)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 82) (.var 3)) (.num 212)) (.var 3)) (.num 130)) (.pow (.var 2) 8))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 6)) (.var 3)) (.num 3)) (.pow (.var 2) 9))))
    (.pow (.var 0) 3))) (.mul (.mul (.num 15) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 120) (.var 0)) (.mul (.add (.mul (.num
    28) (.var 3)) (.num 924)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 12) (.var
    3)) (.num 32)) (.var 3)) (.num 1111)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 105) (.var 3)) (.neg (.num 228))) (.var 3)) (.neg (.num 507))) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 321) (.var 3)) (.num 18)) (.var 3)) (.neg (.num
    548))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 456) (.var 3)) (.num
    1084)) (.var 3)) (.num 1019)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 318) (.var 3)) (.num 1094)) (.var 3)) (.num 1006)) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 99) (.var 3)) (.num 324)) (.var 3)) (.num 252)) (.pow (.var 2)
    7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.num 24)) (.var 3)) (.num
    15)) (.pow (.var 2) 8)))) (.pow (.var 0) 4))) (.mul (.mul (.num 3) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 51) (.var 0)) (.mul (.add
    (.mul (.num 6) (.var 3)) (.num 355)) (.var 2))) (.var 0)) (.mul (.num 269) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.neg (.num 84)) (.var 3)) (.neg (.num 400))) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.neg (.num 54)) (.var 3)) (.neg (.num 122))) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.num 168) (.var 3)) (.num 388)) (.pow (.var 2) 5))) (.var 0))
    (.mul (.add (.mul (.num 138) (.var 3)) (.num 206)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add
    (.mul (.num 18) (.var 3)) (.num 21)) (.pow (.var 2) 7)))) (.pow (.var 0) 5))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow0235.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow0235.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow0235.leading0 e g v + f * FullLow0235.leading1 e g v +
        f^2 * FullLow0235.remainder e f g v := by
  have hden : denominatorOne FullLow0235.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow0235.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow0235.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 2199023255552 16 12 2) lhs =
      value (Encoding4.vars 2199023255552 16 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 2199023255552 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 16 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 16 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow0235.source e f g v =
      FullLow0235.leading0 e g v + f * FullLow0235.leading1 e g v +
        f^2 * FullLow0235.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 2199023255552 16 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow023Encoded5

namespace SPR.N6.Tail.CoreEndpoint.FullLow023
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition5 (e f g v : ℝ) :
    FullLow0235.source e f g v =
      FullLow0235.leading0 e g v + f * FullLow0235.leading1 e g v +
        f^2 * FullLow0235.remainder e f g v :=
  FullLow023Encoded5.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow023
