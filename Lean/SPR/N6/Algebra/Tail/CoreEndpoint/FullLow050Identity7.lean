import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow050Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^7 layer of FullLow050.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow050Encoded7
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add
    (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.mul
    (.mul (.mul (.num 8) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 3) (.var 1))
    (.var 0)) (.mul (.add (.mul (.num 27) (.var 1)) (.mul (.num 12) (.var 2))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 96) (.var 1)) (.mul (.num 81) (.var 2))) (.var 1))
    (.mul (.num 15) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    63) (.var 1)) (.mul (.num 66) (.var 2))) (.var 1)) (.mul (.num 15) (.pow (.var 2) 2))) (.pow
    (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 1)) (.mul (.num 39)
    (.var 2))) (.var 1)) (.mul (.num 9) (.pow (.var 2) 2))) (.pow (.var 1) 3)))) (.pow (.mul (.add
    (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5)) (.pow (.add (.var 1) (.var
    2)) 2)) (.mul (.mul (.mul (.num 16) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 55) (.var 1)) (.mul (.num 22) (.var 2))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.num 6) (.var 3)) (.num 313)) (.var 1)) (.mul (.add (.mul (.num 6) (.var
    3)) (.num 257)) (.var 2))) (.var 1)) (.mul (.num 46) (.pow (.var 2) 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 3)) (.num 692)) (.var 1)) (.mul
    (.add (.mul (.num 6) (.var 3)) (.num 804)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    12)) (.var 3)) (.num 258)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 6))
    (.var 3)) (.num 20)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.neg (.num 24)) (.var 3)) (.num 568)) (.var 1)) (.mul (.add (.mul (.neg
    (.num 117)) (.var 3)) (.num 709)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 162))
    (.var 3)) (.num 175)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 81)) (.var
    3)) (.neg (.num 38))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var
    3)) (.neg (.num 10))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.neg (.num 108)) (.var 3)) (.num 188)) (.var 1)) (.mul (.add
    (.mul (.neg (.num 408)) (.var 3)) (.num 84)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 558)) (.var 3)) (.neg (.num 332))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 336)) (.var 3)) (.neg (.num 310))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 84)) (.var 3)) (.neg (.num 83))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 6)) (.var 3)) (.neg (.num 6))) (.pow (.var 2) 5)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.num 42))
    (.var 1)) (.mul (.add (.mul (.neg (.num 99)) (.var 3)) (.num 1)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 243)) (.var 3)) (.neg (.num 179))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 222)) (.var 3)) (.neg (.num 210))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 81)) (.var 3)) (.neg (.num 81))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 9)) (.var 3)) (.neg (.num 9))) (.pow (.var 2) 5))) (.var 1)))) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5)) (.add (.var 1)
    (.var 2)))) (.mul (.mul (.mul (.mul (.num 32) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 15) (.var 1)) (.mul (.num 6) (.var 2))) (.var 0)) (.add (.mul (.add (.mul
    (.num 81) (.var 1)) (.mul (.num 66) (.var 2))) (.var 1)) (.mul (.num 12) (.pow (.var 2) 2))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 174) (.var 1)) (.mul (.num 201) (.var 2)))
    (.var 1)) (.mul (.num 66) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 6) (.pow (.var 2) 3))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.num 126) (.var 1)) (.mul (.num 162)
    (.var 2))) (.var 1)) (.mul (.num 54) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 3) (.pow (.var
    2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 54) (.var 1)) (.mul (.num 84)
    (.var 2))) (.var 1)) (.mul (.num 30) (.pow (.var 2) 2))) (.pow (.var 1) 3)))) (.var 0)) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5)) (.add (.var 1)
    (.var 2)))) (.mul (.mul (.num 32) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 45) (.var 1)) (.mul (.num 15) (.var 2))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 273)) (.var 1)) (.mul (.add (.mul (.num 16)
    (.var 3)) (.num 194)) (.var 2))) (.var 1)) (.mul (.num 21) (.pow (.var 2) 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 80))
    (.var 3)) (.num 679)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 3)) (.num 100))
    (.var 3)) (.num 705)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 3))
    (.num 10)) (.var 3)) (.num 128)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3) (.var 3)) (.neg (.num 10))) (.var 3)) (.neg (.num 18))) (.pow (.var 2) 3)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 36) (.var
    3)) (.num 184)) (.var 3)) (.num 885)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 108) (.var
    3)) (.num 288)) (.var 3)) (.num 1171)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 117) (.var 3)) (.num 62)) (.var 3)) (.num 232)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 54) (.var 3)) (.neg (.num 58))) (.var 3)) (.neg (.num 152)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.neg (.num
    16))) (.var 3)) (.neg (.num 38))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 90) (.var 3)) (.num 276)) (.var
    3)) (.num 734)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 315) (.var 3)) (.num 610)) (.var
    3)) (.num 1291)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 423) (.var 3)) (.num
    392)) (.var 3)) (.num 473)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    270) (.var 3)) (.num 34)) (.var 3)) (.neg (.num 212))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 81) (.var 3)) (.neg (.num 26))) (.var 3)) (.neg (.num 131)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.neg (.num
    2))) (.var 3)) (.neg (.num 13))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 108) (.var 3)) (.num
    312)) (.var 3)) (.num 428)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 432) (.var 3)) (.num
    1000)) (.var 3)) (.num 1112)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 687)
    (.var 3)) (.num 1226)) (.var 3)) (.num 987)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 549) (.var 3)) (.num 736)) (.var 3)) (.num 325)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 228) (.var 3)) (.num 240)) (.var 3)) (.num 21)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.mul (.add (.mul (.num 45) (.var 3)) (.num 46)) (.var 3)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 4)) (.var 3))
    (.num 1)) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num 148)) (.var 3))
    (.num 128)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 270) (.var 3)) (.num 610)) (.var 3))
    (.num 464)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 492) (.var 3)) (.num
    1016)) (.var 3)) (.num 666)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    462) (.var 3)) (.num 874)) (.var 3)) (.num 485)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 234) (.var 3)) (.num 410)) (.var 3)) (.num 192)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num 100)) (.var 3)) (.num 41))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 10))
    (.var 3)) (.num 4)) (.pow (.var 2) 6))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add
    (.add (.var 0) (.var 1)) (.var 2))) 5))) (.mul (.mul (.mul (.num 80) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 33) (.var 1)) (.mul (.num 11) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 177)) (.var 1)) (.mul
    (.add (.mul (.num 6) (.var 3)) (.num 121)) (.var 2))) (.var 1)) (.mul (.num 12) (.pow (.var 2)
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num
    373)) (.var 1)) (.mul (.add (.mul (.num 24) (.var 3)) (.num 356)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 6)) (.var 3)) (.num 39)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 16))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 36) (.var 3)) (.num 359)) (.var 1))
    (.mul (.add (.mul (.num 18) (.var 3)) (.num 376)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 66)) (.var 3)) (.neg (.num 65))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 60)) (.var 3)) (.neg (.num 134))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 12)) (.var 3)) (.neg (.num 24))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 192)) (.var 1))
    (.mul (.add (.mul (.neg (.num 24)) (.var 3)) (.num 228)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 162)) (.var 3)) (.neg (.num 123))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 168)) (.var 3)) (.neg (.num 236))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 60)) (.var 3)) (.neg (.num 82))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 7))) (.pow (.var 2) 5)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.num
    58)) (.var 1)) (.mul (.add (.mul (.num 60) (.var 3)) (.num 116)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.num 6) (.var 3)) (.num 31)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 54)) (.var 3)) (.neg (.num 64))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 36)) (.var 3)) (.neg (.num 44))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 6)) (.var 3)) (.neg (.num 7))) (.pow (.var 2) 5))) (.var 1)))) (.var 0)) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5))) (.mul (.mul
    (.mul (.num 80) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9) (.var 1))
    (.mul (.num 3) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 45) (.var 1)) (.mul (.num
    30) (.var 2))) (.var 1)) (.mul (.num 3) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.num 87) (.var 1)) (.mul (.num 81) (.var 2))) (.var 1)) (.mul (.num 9) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.neg (.num 3)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 69) (.var 1)) (.mul (.num 69) (.var 2))) (.var 1)) (.mul
    (.neg (.num 12)) (.pow (.var 2) 2))) (.var 1)) (.mul (.neg (.num 21)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.neg (.num 3)) (.pow (.var 2) 4)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 30) (.var 1)) (.mul (.num 45) (.var 2))) (.var 1)) (.mul (.num
    6) (.pow (.var 2) 2))) (.var 1)) (.mul (.neg (.num 12)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.neg (.num 3)) (.pow (.var 2) 4))) (.var 1)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5))) (.mul (.mul (.mul (.num 2) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 6) (.pow (.var 1) 2)) (.var 0)) (.mul
    (.add (.mul (.num 66) (.var 1)) (.mul (.num 30) (.var 2))) (.pow (.var 1) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 120) (.var 1)) (.mul (.num 108) (.var 2))) (.var 1)) (.mul (.num
    24) (.pow (.var 2) 2))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 72)
    (.var 1)) (.mul (.num 90) (.var 2))) (.var 1)) (.mul (.num 24) (.pow (.var 2) 2))) (.pow (.var
    1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 36) (.var 1)) (.mul (.num 60) (.var 2)))
    (.var 1)) (.mul (.num 24) (.pow (.var 2) 2))) (.pow (.var 1) 4)))) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.pow (.add (.var 1) (.var 2)) 3)))
    (.mul (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.mul (.num 33) (.var 1)) (.var 0)) (.mul (.add (.mul (.num 369) (.var 1)) (.mul (.num
    168) (.var 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num
    18)) (.var 3)) (.num 1609)) (.var 1)) (.mul (.add (.mul (.neg (.num 27)) (.var 3)) (.num
    1417)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 9)) (.var 3)) (.num 291)) (.pow
    (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg
    (.num 162)) (.var 3)) (.num 2586)) (.var 1)) (.mul (.add (.mul (.neg (.num 342)) (.var 3))
    (.num 3185)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 225)) (.var 3)) (.num 1193))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 45)) (.var 3)) (.num 135)) (.pow
    (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.neg (.num 726)) (.var 3)) (.num 1524)) (.var 1)) (.mul (.add (.mul (.neg (.num 1860))
    (.var 3)) (.num 1786)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 1686)) (.var 3))
    (.num 223)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 633)) (.var 3)) (.neg
    (.num 261))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 81)) (.var 3)) (.neg
    (.num 66))) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.neg (.num 816)) (.var 3)) (.num 322)) (.var 1)) (.mul
    (.add (.mul (.neg (.num 2646)) (.var 3)) (.neg (.num 344))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 3306)) (.var 3)) (.neg (.num 1764))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 1938)) (.var 3)) (.neg (.num 1551))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.neg (.num 507)) (.var 3)) (.neg (.num 486))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.neg (.num 45)) (.var 3)) (.neg (.num 45))) (.pow (.var 2) 5))) (.var 1)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg
    (.num 108)) (.var 3)) (.num 64)) (.var 1)) (.mul (.add (.mul (.neg (.num 612)) (.var 3)) (.neg
    (.num 178))) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 1218)) (.var 3)) (.neg (.num
    824))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 1110)) (.var 3)) (.neg
    (.num 958))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 474)) (.var 3)) (.neg
    (.num 454))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 78)) (.var 3)) (.neg
    (.num 78))) (.pow (.var 2) 5))) (.pow (.var 1) 2)))) (.pow (.mul (.add (.var 0) (.var 1))
    (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul
    (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num
    9) (.var 1)) (.var 0)) (.mul (.add (.mul (.num 99) (.var 1)) (.mul (.num 45) (.var 2))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 447) (.var 1)) (.mul (.num 393) (.var 2)))
    (.var 1)) (.mul (.num 81) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 702) (.var 1)) (.mul (.num 882) (.var 2))) (.var 1)) (.mul (.num 351)
    (.pow (.var 2) 2))) (.var 1)) (.mul (.num 45) (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 510) (.var 1)) (.mul (.num 792) (.var 2))) (.var 1))
    (.mul (.num 381) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 63) (.pow (.var 2) 3))) (.pow (.var
    1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.num 228) (.var 1)) (.mul (.num
    450) (.var 2))) (.var 1)) (.mul (.num 282) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 60) (.pow
    (.var 2) 3))) (.pow (.var 1) 3)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add
    (.var 0) (.var 1)) (.var 2))) 4)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.num
    8) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 300) (.var 1)) (.mul (.num 120) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.num 64) (.var 3)) (.num 2450)) (.var 1)) (.mul (.add (.mul (.num 64) (.var 3)) (.num
    2054)) (.var 2))) (.var 1)) (.mul (.num 392) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 3)) (.num 296)) (.var 3)) (.num
    8268)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 328)) (.var 3)) (.num
    10206)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 3)) (.neg (.num
    32))) (.var 3)) (.num 3762)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 64))
    (.var 3)) (.num 392)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 96) (.var 3)) (.num 336)) (.var 3)) (.num 14025)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 240) (.var 3)) (.neg (.num 216))) (.var 3)) (.num
    21747)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 192) (.var 3)) (.neg (.num
    1376))) (.var 3)) (.num 10716)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 48) (.var 3)) (.neg (.num 1024))) (.var 3)) (.num 1698)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.neg (.num 200)) (.var 3)) (.num 16)) (.pow (.var 2) 4)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 384) (.var
    3)) (.neg (.num 368))) (.var 3)) (.num 13383)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1152) (.var 3)) (.neg (.num 3496))) (.var 3)) (.num 23175)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1236) (.var 3)) (.neg (.num 7225))) (.var 3)) (.num 11065)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 552) (.var 3)) (.neg (.num 5842)))
    (.var 3)) (.neg (.num 378))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    84) (.var 3)) (.neg (.num 1961))) (.var 3)) (.neg (.num 1255))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.neg (.num 216)) (.var 3)) (.neg (.num 184))) (.pow (.var 2) 5)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 828) (.var 3)) (.num 400)) (.var 3)) (.num 8834)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2898) (.var 3)) (.neg (.num 1996))) (.var 3)) (.num 17180)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3870) (.var 3)) (.neg (.num 8282))) (.var 3)) (.num
    7153)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2430) (.var 3)) (.neg
    (.num 10069))) (.var 3)) (.neg (.num 4822))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 702) (.var 3)) (.neg (.num 5292))) (.var 3)) (.neg (.num 4638))) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 3)) (.neg (.num 1197))) (.var
    3)) (.neg (.num 1189))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 88)) (.var
    3)) (.neg (.num 88))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1104) (.var 3)) (.num
    2440)) (.var 3)) (.num 4768)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4416) (.var 3))
    (.num 7272)) (.var 3)) (.num 12688)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    6987) (.var 3)) (.num 7034)) (.var 3)) (.num 10736)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 5505) (.var 3)) (.num 1220)) (.var 3)) (.num 1232)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2217) (.var 3)) (.neg (.num 1967))) (.var
    3)) (.neg (.num 2832))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 411)
    (.var 3)) (.neg (.num 1194))) (.var 3)) (.neg (.num 1481))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.neg (.num 217))) (.var 3)) (.neg (.num
    241))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 8)) (.var 3)) (.neg (.num
    8))) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 642) (.var 3)) (.num 1476))
    (.var 3)) (.num 1422)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2889) (.var 3)) (.num
    6094)) (.var 3)) (.num 5191)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5298)
    (.var 3)) (.num 10094)) (.var 3)) (.num 7392)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 5061) (.var 3)) (.num 8470)) (.var 3)) (.num 5059)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2655) (.var 3)) (.num 3674)) (.var 3)) (.num
    1535)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 726) (.var 3)) (.num
    687)) (.var 3)) (.num 25)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    81) (.var 3)) (.neg (.num 6))) (.var 3)) (.neg (.num 87))) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 13)) (.var 3)) (.neg (.num 13))) (.pow (.var 2) 7))) (.var 1)))) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.add (.var 1)
    (.var 2)))) (.mul (.mul (.mul (.mul (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 220) (.var 1)) (.mul (.num 88) (.var 2))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 1670)) (.var 1)) (.mul (.add
    (.mul (.num 24) (.var 3)) (.num 1402)) (.var 2))) (.var 1)) (.mul (.num 272) (.pow (.var 2)
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 96) (.var 3)) (.num
    5224)) (.var 1)) (.mul (.add (.mul (.num 96) (.var 3)) (.num 6452)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 24)) (.var 3)) (.num 2404)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 24)) (.var 3)) (.num 264)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 42) (.var 3)) (.num 7700)) (.var 1)) (.mul
    (.add (.mul (.neg (.num 279)) (.var 3)) (.num 11877)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 660)) (.var 3)) (.num 5926)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 411)) (.var 3)) (.num 1037)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num
    72)) (.var 3)) (.num 40)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.neg (.num 444)) (.var 3)) (.num 5834)) (.var 1)) (.mul
    (.add (.mul (.neg (.num 2160)) (.var 3)) (.num 9776)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 3507)) (.var 3)) (.num 4389)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 2454)) (.var 3)) (.neg (.num 240))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 735)) (.var 3)) (.neg (.num 483))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 72)) (.var 3)) (.neg (.num 64))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 300))
    (.var 3)) (.num 2652)) (.var 1)) (.mul (.add (.mul (.neg (.num 2154)) (.var 3)) (.num 4644))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 4662)) (.var 3)) (.num 924)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.neg (.num 4425)) (.var 3)) (.neg (.num 2435))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 1980)) (.var 3)) (.neg (.num 1700))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 387)) (.var 3)) (.neg (.num 377))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 24)) (.var 3)) (.neg (.num 24))) (.pow
    (.var 2) 6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 246) (.var 3)) (.num 698)) (.var 1)) (.mul (.add (.mul (.num
    342) (.var 3)) (.num 1602)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 558)) (.var 3))
    (.num 762)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 1428)) (.var 3)) (.neg
    (.num 784))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 1083)) (.var 3))
    (.neg (.num 941))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 348)) (.var 3))
    (.neg (.num 338))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 39)) (.var 3))
    (.neg (.num 39))) (.pow (.var 2) 6))) (.var 1)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var
    1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul
    (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    60) (.var 1)) (.mul (.num 24) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 438) (.var
    1)) (.mul (.num 366) (.var 2))) (.var 1)) (.mul (.num 72) (.pow (.var 2) 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.num 1332) (.var 1)) (.mul (.num 1638) (.var 2))) (.var 1))
    (.mul (.num 618) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 72) (.pow (.var 2) 3)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1836) (.var 1)) (.mul (.num 2850) (.var
    2))) (.var 1)) (.mul (.num 1500) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 318) (.pow (.var 2)
    3))) (.var 1)) (.mul (.num 24) (.pow (.var 2) 4)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 1332) (.var 1)) (.mul (.num 2436) (.var 2))) (.var 1)) (.mul
    (.num 1500) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 366) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.num 30) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 516) (.var 1)) (.mul (.num 1164) (.var 2))) (.var 1)) (.mul (.num 912) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.num 294) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 30) (.pow
    (.var 2) 4))) (.pow (.var 1) 2)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1))
    (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.add (.var 1) (.var 2)))) (.mul (.mul (.num 16)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 135) (.var 1)) (.mul (.num 45) (.var 2))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.num 70) (.var 3)) (.num 1200)) (.var 1)) (.mul (.add (.mul (.num 70) (.var
    3)) (.num 887)) (.var 2))) (.var 1)) (.mul (.num 117) (.pow (.var 2) 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 50) (.var 3)) (.num 646)) (.var
    3)) (.num 4758)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 125) (.var 3)) (.num 962))
    (.var 3)) (.num 5501)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 100) (.var 3))
    (.num 316)) (.var 3)) (.num 1640)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 25)
    (.pow (.var 3) 2)) (.num 77)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 415) (.var 3)) (.num 2874)) (.var 3)) (.num
    11160)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1245) (.var 3)) (.num 5922)) (.var 3))
    (.num 18075)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1350) (.var 3)) (.num
    3920)) (.var 3)) (.num 9075)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 625) (.var 3)) (.num 950)) (.var 3)) (.num 1391)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 105) (.var 3)) (.num 78)) (.var 3)) (.num 11)) (.pow (.var 2)
    4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 1518) (.var 3)) (.num 7780)) (.var 3)) (.num 17646)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 5313) (.var 3)) (.num 20956)) (.var 3)) (.num 38532)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 7171) (.var 3)) (.num 20952)) (.var 3)) (.num 29785))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4645) (.var 3)) (.num 9804))
    (.var 3)) (.num 9772)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1439)
    (.var 3)) (.num 2256)) (.var 3)) (.num 1314)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 170) (.var 3)) (.num 228)) (.var 3)) (.num 71)) (.pow (.var 2) 5)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 3065) (.var 3)) (.num 13494)) (.var 3)) (.num 19815)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 12260) (.var 3)) (.num 45200)) (.var 3)) (.num 56800)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 19680) (.var 3)) (.num 60054)) (.var 3)) (.num 63017))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16130) (.var 3)) (.num
    40650)) (.var 3)) (.num 34542)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 7065) (.var 3)) (.num 14970)) (.var 3)) (.num 10012)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1550) (.var 3)) (.num 2900)) (.var 3)) (.num 1539)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 130) (.var 3)) (.num 232)) (.var
    3)) (.num 107)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3590) (.var 3)) (.num
    14302)) (.var 3)) (.num 15144)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16155) (.var 3))
    (.num 57098)) (.var 3)) (.num 54711)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    29956) (.var 3)) (.num 93630)) (.var 3)) (.num 80380)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 29456) (.var 3)) (.num 81548)) (.var 3)) (.num 62189)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16422) (.var 3)) (.num 40640))
    (.var 3)) (.num 27418)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    5110) (.var 3)) (.num 11520)) (.var 3)) (.num 6915)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 798) (.var 3)) (.num 1686)) (.var 3)) (.num 920)) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45) (.var 3)) (.num 92)) (.var 3)) (.num 47))
    (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2258) (.var 3)) (.num 8198))
    (.var 3)) (.num 6860)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11290) (.var 3)) (.num
    37760)) (.var 3)) (.num 29854)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    23719) (.var 3)) (.num 72980)) (.var 3)) (.num 54247)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 27136) (.var 3)) (.num 76880)) (.var 3)) (.num 53518)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18287) (.var 3)) (.num 47890))
    (.var 3)) (.num 31157)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    7303) (.var 3)) (.num 17804)) (.var 3)) (.num 10831)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1633) (.var 3)) (.num 3742)) (.var 3)) (.num 2137)) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 173) (.var 3)) (.num 376)) (.var 3))
    (.num 203)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 3))
    (.num 10)) (.var 3)) (.num 5)) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 564) (.var 3)) (.num 1916)) (.var 3)) (.num 1352)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 3102) (.var 3)) (.num 9930)) (.var 3)) (.num 6828)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 7284) (.var 3)) (.num 21910)) (.var 3)) (.num 14626))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9513) (.var 3)) (.num
    26836)) (.var 3)) (.num 17323)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 7534) (.var 3)) (.num 19914)) (.var 3)) (.num 12380)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 3689) (.var 3)) (.num 9134)) (.var 3)) (.num 5445)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1083) (.var 3)) (.num 2510)) (.var
    3)) (.num 1427)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 172) (.var
    3)) (.num 372)) (.var 3)) (.num 200)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 11) (.var 3)) (.num 22)) (.var 3)) (.num 11)) (.pow (.var 2) 8))) (.var 1))))
    (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4))) (.mul
    (.mul (.mul (.num 32) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 225) (.var 1)) (.mul (.num 75) (.var 2))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 80) (.var 3)) (.num 1740)) (.var 1)) (.mul (.add (.mul (.num 80)
    (.var 3)) (.num 1240)) (.var 2))) (.var 1)) (.mul (.num 150) (.pow (.var 2) 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.num 544))
    (.var 3)) (.num 5835)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 75) (.var 3)) (.num 708))
    (.var 3)) (.num 6259)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 3))
    (.num 114)) (.var 3)) (.num 1501)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 15) (.var 3)) (.neg (.num 50))) (.var 3)) (.neg (.num 23))) (.pow (.var 2) 3)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 237) (.var
    3)) (.num 1790)) (.var 3)) (.num 10954)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 711)
    (.var 3)) (.num 3036)) (.var 3)) (.num 15681)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 771) (.var 3)) (.num 1124)) (.var 3)) (.num 5596)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 357) (.var 3)) (.neg (.num 220))) (.var 3)) (.neg (.num
    257))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.neg
    (.num 98))) (.var 3)) (.neg (.num 226))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 816) (.var 3)) (.num
    3764)) (.var 3)) (.num 13245)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2856) (.var 3))
    (.num 8630)) (.var 3)) (.num 24945)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    3852) (.var 3)) (.num 6306)) (.var 3)) (.num 13729)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2490) (.var 3)) (.num 1376)) (.var 3)) (.num 837)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 768) (.var 3)) (.neg (.num 86))) (.var 3)) (.neg
    (.num 991))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90) (.var 3))
    (.neg (.num 22))) (.var 3)) (.neg (.num 149))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    1479) (.var 3)) (.num 5550)) (.var 3)) (.num 11155)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 5916) (.var 3)) (.num 17158)) (.var 3)) (.num 28404)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 9486) (.var 3)) (.num 20260)) (.var 3)) (.num 25673)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7752) (.var 3)) (.num 11628)) (.var 3))
    (.num 9418)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3375) (.var 3))
    (.num 3528)) (.var 3)) (.num 938)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 732) (.var 3)) (.num 602)) (.var 3)) (.neg (.num 118))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num 50)) (.var 3)) (.neg (.num 12))) (.pow
    (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1452) (.var 3)) (.num 4792)) (.var 3)) (.num
    6042)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6534) (.var 3)) (.num 18700)) (.var 3))
    (.num 20391)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12084) (.var 3)) (.num
    29724)) (.var 3)) (.num 27316)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 11802) (.var 3)) (.num 24890)) (.var 3)) (.num 18666)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 6492) (.var 3)) (.num 11866)) (.var 3)) (.num 7019)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1971) (.var 3)) (.num 3224)) (.var
    3)) (.num 1486)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 294) (.var
    3)) (.num 456)) (.var 3)) (.num 175)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 15) (.var 3)) (.num 24)) (.var 3)) (.num 9)) (.pow (.var 2) 7)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 606) (.var 3)) (.num 1648)) (.var 3)) (.num 1502)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 3030) (.var 3)) (.num 7676)) (.var 3)) (.num 6338)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6345) (.var 3)) (.num 14982)) (.var 3)) (.num
    11130)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7200) (.var 3))
    (.num 15894)) (.var 3)) (.num 10581)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 4773) (.var 3)) (.num 9914)) (.var 3)) (.num 5918)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1845) (.var 3)) (.num 3644)) (.var 3)) (.num 1964)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 384) (.var 3)) (.num 732)) (.var
    3)) (.num 362)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33) (.var
    3)) (.num 62)) (.var 3)) (.num 29)) (.pow (.var 2) 7))) (.var 1)))) (.var 0)) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4))) (.mul (.mul (.mul
    (.num 24) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 165) (.var 1)) (.mul (.num 55) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.num 30) (.var 3)) (.num 1160)) (.var 1)) (.mul (.add (.mul (.num 30) (.var 3)) (.num 803))
    (.var 2))) (.var 1)) (.mul (.num 93) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 174) (.var 3)) (.num 3454)) (.var 1)) (.mul (.add (.mul (.num
    198) (.var 3)) (.num 3514)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var 3))
    (.num 716)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 30)) (.var 3)) (.neg
    (.num 44))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 450) (.var 3)) (.num 5373)) (.var 1)) (.mul (.add (.mul (.num 534) (.var 3))
    (.num 6940)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 180)) (.var 3)) (.num 1631))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 342)) (.var 3)) (.neg (.num 604)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 78)) (.var 3)) (.neg (.num 168)))
    (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 666) (.var 3)) (.num 4944)) (.var 1)) (.mul (.add (.mul (.num 852) (.var 3))
    (.num 7971)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 588)) (.var 3)) (.num 2322))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 1254)) (.var 3)) (.neg (.num
    1667))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 546)) (.var 3)) (.neg
    (.num 919))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 66)) (.var 3)) (.neg
    (.num 107))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 780) (.var 3)) (.num 2838)) (.var 1)) (.mul (.add
    (.mul (.num 1668) (.var 3)) (.num 6204)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 570)
    (.var 3)) (.num 3719)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 966)) (.var
    3)) (.neg (.num 444))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 858)) (.var
    3)) (.neg (.num 1057))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 228))
    (.var 3)) (.neg (.num 291))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 18))
    (.var 3)) (.neg (.num 21))) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 468) (.var 3)) (.num 792)) (.var
    1)) (.mul (.add (.mul (.num 1500) (.var 3)) (.num 2394)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.num 1734) (.var 3)) (.num 2616)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num
    804) (.var 3)) (.num 1157)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.num 54) (.var
    3)) (.num 84)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 60)) (.var 3))
    (.neg (.num 73))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var 3))
    (.neg (.num 14))) (.pow (.var 2) 6))) (.var 1)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var
    0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4))) (.mul (.mul (.mul (.num 8) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 45) (.var 1)) (.mul
    (.num 15) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 300) (.var 1)) (.mul (.num 204)
    (.var 2))) (.var 1)) (.mul (.num 24) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.num 840) (.var 1)) (.mul (.num 840) (.var 2))) (.var 1)) (.mul (.num 174) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.neg (.num 6)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 1167) (.var 1)) (.mul (.num 1476) (.var 2))) (.var 1))
    (.mul (.num 363) (.pow (.var 2) 2))) (.var 1)) (.mul (.neg (.num 90)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.neg (.num 24)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 906) (.var 1)) (.mul (.num 1476) (.var 2))) (.var 1))
    (.mul (.num 546) (.pow (.var 2) 2))) (.var 1)) (.mul (.neg (.num 132)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.neg (.num 87)) (.pow (.var 2) 4))) (.var 1)) (.mul (.neg (.num 9)) (.pow
    (.var 2) 5)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 348) (.var 1)) (.mul (.num 786) (.var 2))) (.var 1)) (.mul (.num 573) (.pow (.var 2)
    2))) (.var 1)) (.mul (.num 126) (.pow (.var 2) 3))) (.var 1)) (.mul (.neg (.num 15)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.neg (.num 6)) (.pow (.var 2) 5))) (.var 1)))) (.pow (.var 0)
    3)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4))) (.mul
    (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.mul (.num 11) (.pow (.var 1) 2)) (.var 0)) (.mul (.add (.mul (.num 131) (.var 1)) (.mul
    (.num 61) (.var 2))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.neg (.num 6)) (.var 3)) (.num 408)) (.var 1)) (.mul (.add (.mul (.neg (.num 9)) (.var 3))
    (.num 377)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 3)) (.var 3)) (.num 90)) (.pow
    (.var 2) 2))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.neg (.num 96)) (.var 3)) (.num 448)) (.var 1)) (.mul (.add (.mul (.neg (.num 180))
    (.var 3)) (.num 568)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 102)) (.var 3)) (.num
    226)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 18)) (.var 3)) (.num 29))
    (.pow (.var 2) 3))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.neg (.num 276)) (.var 3)) (.num 130)) (.var 1)) (.mul (.add (.mul
    (.neg (.num 666)) (.var 3)) (.num 64)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    582)) (.var 3)) (.neg (.num 168))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    219)) (.var 3)) (.neg (.num 141))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num
    27)) (.var 3)) (.neg (.num 23))) (.pow (.var 2) 4))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 234)) (.var 3))
    (.neg (.num 46))) (.var 1)) (.mul (.add (.mul (.neg (.num 720)) (.var 3)) (.neg (.num 296)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 888)) (.var 3)) (.neg (.num 568))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 540)) (.var 3)) (.neg (.num 452))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 150)) (.var 3)) (.neg (.num 145))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg (.num 12))) (.pow
    (.var 2) 5))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.neg (.num 36)) (.var 3)) (.neg (.num 20))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 162)) (.var 3)) (.neg (.num 118))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 300)) (.var 3)) (.neg (.num 252))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 282)) (.var 3)) (.neg (.num 256))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 132)) (.var 3)) (.neg (.num 126))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 24)) (.var 3)) (.neg (.num 24))) (.pow (.var 2) 5))) (.pow (.var 1) 3))))
    (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)) (.pow (.add
    (.var 1) (.var 2)) 3))) (.mul (.mul (.mul (.num 2) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 45) (.var 1)) (.var 0))
    (.mul (.add (.mul (.num 627) (.var 1)) (.mul (.num 288) (.var 2))) (.var 1))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.neg (.num 48)) (.var 3)) (.num 3423)) (.var 1)) (.mul
    (.add (.mul (.neg (.num 72)) (.var 3)) (.num 3081)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 24)) (.var 3)) (.num 666)) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 576)) (.var 3)) (.num 8705)) (.var 1))
    (.mul (.add (.mul (.neg (.num 1176)) (.var 3)) (.num 11292)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 747)) (.var 3)) (.num 4639)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 147)) (.var 3)) (.num 603)) (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 18) (.var 3)) (.neg
    (.num 2892))) (.var 3)) (.num 10999)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45) (.var
    3)) (.neg (.num 7360))) (.var 3)) (.num 17043)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 36) (.var 3)) (.neg (.num 6686))) (.var 3)) (.num 8461)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.neg (.num 2560))) (.var 3)) (.num
    1376)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 342)) (.var 3)) (.num 15))
    (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 81) (.var 3)) (.neg (.num 5866))) (.var 3)) (.num
    7493)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 243) (.var 3)) (.neg (.num 18336))) (.var
    3)) (.num 10621)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 261) (.var 3))
    (.neg (.num 22270))) (.var 3)) (.num 633)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 117) (.var 3)) (.neg (.num 13008))) (.var 3)) (.neg (.num 4926))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18) (.var 3)) (.neg (.num 3562)))
    (.var 3)) (.neg (.num 2359))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num
    354)) (.var 3)) (.neg (.num 300))) (.pow (.var 2) 5))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 360)
    (.var 3)) (.neg (.num 4092))) (.var 3)) (.num 4074)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1260) (.var 3)) (.neg (.num 16156))) (.var 3)) (.num 4921)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1638) (.var 3)) (.neg (.num 26272))) (.var 3)) (.neg (.num
    5903))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 945) (.var 3)) (.neg
    (.num 22092))) (.var 3)) (.neg (.num 12960))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 216) (.var 3)) (.neg (.num 9838))) (.var 3)) (.neg (.num 7986))) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.neg (.num 2104))) (.var
    3)) (.neg (.num 1977))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 150))
    (.var 3)) (.neg (.num 150))) (.pow (.var 2) 6))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 753) (.var 3)) (.num 326)) (.var 3)) (.num 2672)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3012) (.var 3)) (.neg (.num 270))) (.var 3)) (.num 6289)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 4725) (.var 3)) (.neg (.num 4054))) (.var 3)) (.num 2648))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3633) (.var 3)) (.neg (.num
    7720))) (.var 3)) (.neg (.num 4750))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1374) (.var 3)) (.neg (.num 6428))) (.var 3)) (.neg (.num 5953))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 207) (.var 3)) (.neg (.num 2606))) (.var
    3)) (.neg (.num 2612))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 455))
    (.var 3)) (.neg (.num 455))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 15))
    (.var 3)) (.neg (.num 15))) (.pow (.var 2) 7))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 486) (.var 3)) (.num 880)) (.var 3)) (.num 968)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2187) (.var 3)) (.num 3636)) (.var 3)) (.num 3492)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 4032) (.var 3)) (.num 5978)) (.var 3)) (.num 4794)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3906) (.var 3)) (.num 4862)) (.var 3))
    (.num 2911)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2106) (.var 3))
    (.num 1870)) (.var 3)) (.num 432)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 603) (.var 3)) (.num 138)) (.var 3)) (.neg (.num 373))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 72) (.var 3)) (.neg (.num 120))) (.var 3)) (.neg (.num
    192))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 28)) (.var 3)) (.neg (.num
    28))) (.pow (.var 2) 7))) (.pow (.var 1) 2)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add
    (.add (.var 0) (.var 1)) (.var 2))) 3)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul
    (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.mul (.num 33) (.var 1)) (.var 0)) (.mul (.add (.mul (.num 435) (.var 1)) (.mul (.num
    201) (.var 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num
    18)) (.var 3)) (.num 2336)) (.var 1)) (.mul (.add (.mul (.neg (.num 27)) (.var 3)) (.num
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
    (.var 1) 2)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1))
    (.var 2))) 3)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.num 4) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 270) (.var 1)) (.mul (.num 108) (.var 2))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.num 84) (.var 3)) (.num 2976)) (.var 1)) (.mul (.add (.mul (.num 84) (.var
    3)) (.num 2508)) (.var 2))) (.var 1)) (.mul (.num 492) (.pow (.var 2) 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.num 720)) (.var
    3)) (.num 14142)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num 936))
    (.var 3)) (.num 17862)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 3))
    (.num 132)) (.var 3)) (.num 6954)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    84)) (.var 3)) (.num 804)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 312) (.var 3)) (.num 2826)) (.var 3)) (.num 37743))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 780) (.var 3)) (.num 4221)) (.var 3)) (.num
    62397)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 624) (.var 3)) (.num 540))
    (.var 3)) (.num 35031)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 156)
    (.var 3)) (.neg (.num 1227))) (.var 3)) (.num 7461)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 372)) (.var 3)) (.num 420)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1542) (.var 3)) (.num
    7620)) (.var 3)) (.num 64250)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4626) (.var 3))
    (.num 13314)) (.var 3)) (.num 129611)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 4974) (.var 3)) (.num 2073)) (.var 3)) (.num 91327)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 2238) (.var 3)) (.neg (.num 7212))) (.var 3)) (.num 24847))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 348) (.var 3)) (.neg (.num
    4239))) (.var 3)) (.num 1179)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num
    648)) (.var 3)) (.neg (.num 300))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4560) (.var 3))
    (.num 18530)) (.var 3)) (.num 78236)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15960)
    (.var 3)) (.num 44159)) (.var 3)) (.num 188821)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 21360) (.var 3)) (.num 27483)) (.var 3)) (.num 161218)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 13500) (.var 3)) (.neg (.num 8539))) (.var 3)) (.num
    51247)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3960) (.var 3))
    (.neg (.num 15097))) (.var 3)) (.neg (.num 1630))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 420) (.var 3)) (.neg (.num 5256))) (.var 3)) (.neg (.num 3816))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 552)) (.var 3)) (.neg (.num 492))) (.pow
    (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 8751) (.var 3)) (.num 35740)) (.var 3)) (.num
    73897)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 35004) (.var 3)) (.num 114126)) (.var
    3)) (.num 217532)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 55791) (.var 3))
    (.num 131881)) (.var 3)) (.num 237672)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 44859) (.var 3)) (.num 58537)) (.var 3)) (.num 109037)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 18888) (.var 3)) (.neg (.num 2841))) (.var 3)) (.num
    8017)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3849) (.var 3)) (.neg
    (.num 10631))) (.var 3)) (.neg (.num 9959))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 282) (.var 3)) (.neg (.num 2976))) (.var 3)) (.neg (.num 3018))) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 228)) (.var 3)) (.neg (.num 228))) (.pow (.var
    2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 10492) (.var 3)) (.num 42016)) (.var 3))
    (.num 52044)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 47214) (.var 3)) (.num 164872))
    (.var 3)) (.num 188028)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 87230) (.var
    3)) (.num 257920)) (.var 3)) (.num 268066)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 84973) (.var 3)) (.num 201369)) (.var 3)) (.num 186310)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 46491) (.var 3)) (.num 77287)) (.var 3)) (.num
    58382)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13961) (.var 3))
    (.num 9118)) (.var 3)) (.num 821)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2031) (.var 3)) (.neg (.num 2581))) (.var 3)) (.neg (.num 4146))) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 96) (.var 3)) (.neg (.num 753))) (.var 3)) (.neg
    (.num 849))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num 36)) (.var 3)) (.neg
    (.num 36))) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6722)
    (.var 3)) (.num 25524)) (.var 3)) (.num 22962)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    33610) (.var 3)) (.num 116530)) (.var 3)) (.num 99256)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 70669) (.var 3)) (.num 220978)) (.var 3)) (.num 176567)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 81016) (.var 3)) (.num 224298)) (.var 3)) (.num
    165574)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 54793) (.var 3))
    (.num 130059)) (.var 3)) (.num 85920)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 21985) (.var 3)) (.num 41743)) (.var 3)) (.num 22502)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 4928) (.var 3)) (.num 6054)) (.var 3)) (.num 1426))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 513) (.var 3)) (.neg (.num
    25))) (.var 3)) (.neg (.num 538))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 12) (.var 3)) (.neg (.num 69))) (.var 3)) (.neg (.num 81))) (.pow (.var 2) 8))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1656) (.var 3)) (.num 6178)) (.var 3))
    (.num 4522)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9108) (.var 3)) (.num 31747)) (.var
    3)) (.num 22639)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 21472) (.var 3))
    (.num 69277)) (.var 3)) (.num 47805)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 28314) (.var 3)) (.num 83574)) (.var 3)) (.num 55260)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 22826) (.var 3)) (.num 60650)) (.var 3)) (.num 37824))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11515) (.var 3)) (.num
    26847)) (.var 3)) (.num 15332)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3549) (.var 3)) (.num 6929)) (.var 3)) (.num 3380)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 611) (.var 3)) (.num 904)) (.var 3)) (.num 293)) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45) (.var 3)) (.num 38)) (.var 3)) (.neg
    (.num 7))) (.pow (.var 2) 8))) (.pow (.var 1) 2)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add
    (.add (.var 0) (.var 1)) (.var 2))) 3)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.mul
    (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 450) (.var 1)) (.mul (.num 180) (.var 2))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 96) (.var 3)) (.num 4530)) (.var 1)) (.mul (.add (.mul (.num 96)
    (.var 3)) (.num 3846)) (.var 2))) (.var 1)) (.mul (.num 768) (.pow (.var 2) 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 18) (.var 3)) (.num 636))
    (.var 3)) (.num 19530)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36) (.var 3)) (.num
    780)) (.var 3)) (.num 24816)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18)
    (.var 3)) (.num 48)) (.var 3)) (.num 9792)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 96)) (.var 3)) (.num 1176)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 180) (.var 3)) (.num 1560)) (.var 3))
    (.num 45489)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 450) (.var 3)) (.num 1476)) (.var
    3)) (.num 75051)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 360) (.var 3))
    (.neg (.num 1428))) (.var 3)) (.num 42390)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 90) (.var 3)) (.neg (.num 1740))) (.var 3)) (.num 9324)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 396)) (.var 3)) (.num 612)) (.pow (.var 2) 4)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    882) (.var 3)) (.num 1644)) (.var 3)) (.num 63775)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2646) (.var 3)) (.neg (.num 2112))) (.var 3)) (.num 125680)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 2844) (.var 3)) (.neg (.num 12177))) (.var 3)) (.num 85988))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1278) (.var 3)) (.neg (.num
    12750))) (.var 3)) (.num 22442)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 198) (.var 3)) (.neg (.num 4953))) (.var 3)) (.num 945)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.neg (.num 624)) (.var 3)) (.neg (.num 252))) (.pow (.var 2) 5)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 2484) (.var 3)) (.num 3724)) (.var 3)) (.num 60385)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 8694) (.var 3)) (.neg (.num 160))) (.var 3)) (.num 137829)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 11646) (.var 3)) (.neg (.num 22248))) (.var 3)) (.num
    106130)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7380) (.var 3))
    (.neg (.num 33782))) (.var 3)) (.num 23885)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2178) (.var 3)) (.neg (.num 20140))) (.var 3)) (.neg (.num 7237))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 234) (.var 3)) (.neg (.num 5178)))
    (.var 3)) (.neg (.num 3852))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num
    456)) (.var 3)) (.neg (.num 408))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    4443) (.var 3)) (.num 11434)) (.var 3)) (.num 42844)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 17772) (.var 3)) (.num 30666)) (.var 3)) (.num 118123)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 28323) (.var 3)) (.num 20827)) (.var 3)) (.num 114482)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 22767) (.var 3)) (.neg (.num 11909))) (.var
    3)) (.num 36567)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9582)
    (.var 3)) (.neg (.num 22659))) (.var 3)) (.neg (.num 10414))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1953) (.var 3)) (.neg (.num 11273))) (.var 3)) (.neg (.num
    10022))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 144) (.var 3))
    (.neg (.num 2262))) (.var 3)) (.neg (.num 2250))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 144)) (.var 3)) (.neg (.num 144))) (.pow (.var 2) 7)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 4578) (.var 3)) (.num 13368)) (.var 3)) (.num 21300)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 20601) (.var 3)) (.num 51490)) (.var 3)) (.num 73715))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38064) (.var 3)) (.num 77722)) (.var
    3)) (.num 98858)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 37086)
    (.var 3)) (.num 56158)) (.var 3)) (.num 61559)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 20286) (.var 3)) (.num 17062)) (.var 3)) (.num 13536)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6069) (.var 3)) (.neg (.num 1058))) (.var
    3)) (.neg (.num 3689))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 864)
    (.var 3)) (.neg (.num 1916))) (.var 3)) (.neg (.num 2499))) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 36) (.var 3)) (.neg (.num 366))) (.var 3)) (.neg (.num
    402))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg (.num
    12))) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1944) (.var 3))
    (.num 4984)) (.var 3)) (.num 5120)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9720) (.var
    3)) (.num 23264)) (.var 3)) (.num 21712)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 20460) (.var 3)) (.num 45326)) (.var 3)) (.num 37995)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 23520) (.var 3)) (.num 47572)) (.var 3)) (.num 35198))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15975) (.var 3)) (.num
    28771)) (.var 3)) (.num 18123)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 6429) (.var 3)) (.num 9755)) (.var 3)) (.num 4698)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1425) (.var 3)) (.num 1530)) (.var 3)) (.num 255)) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 135) (.var 3)) (.neg (.num 1))) (.var
    3)) (.neg (.num 136))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num 21)) (.var
    3)) (.neg (.num 21))) (.pow (.var 2) 8))) (.var 1)))) (.var 0)) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)) (.add (.var 1) (.var 2)))) (.mul (.mul
    (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 330) (.var 1)) (.mul (.num 132) (.var 2))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 36) (.var 3)) (.num 3132)) (.var 1)) (.mul (.add (.mul (.num 36)
    (.var 3)) (.num 2664)) (.var 2))) (.var 1)) (.mul (.num 540) (.pow (.var 2) 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 216) (.var 3)) (.num 12708)) (.var 1))
    (.mul (.add (.mul (.num 252) (.var 3)) (.num 16182)) (.var 2))) (.var 1)) (.mul (.num 6456)
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 36)) (.var 3)) (.num 804)) (.pow
    (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    414) (.var 3)) (.num 26905)) (.var 1)) (.mul (.add (.mul (.num 153) (.var 3)) (.num 44459))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 828)) (.var 3)) (.num 25507)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 711)) (.var 3)) (.num 5913)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.neg (.num 144)) (.var 3)) (.num 456)) (.pow (.var 2) 4))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num
    144)) (.var 3)) (.num 32570)) (.var 1)) (.mul (.add (.mul (.neg (.num 2916)) (.var 3)) (.num
    64023)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 6606)) (.var 3)) (.num 44436))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 5508)) (.var 3)) (.num 12557))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 1890)) (.var 3)) (.num 1068))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 216)) (.var 3)) (.neg (.num 36)))
    (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.neg (.num 324)) (.var 3)) (.num 24564)) (.var 1)) (.mul (.add (.mul
    (.neg (.num 5577)) (.var 3)) (.num 55127)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    14805)) (.var 3)) (.num 41722)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    15849)) (.var 3)) (.num 9431)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num
    7971)) (.var 3)) (.neg (.num 2466))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 1818)) (.var 3)) (.neg (.num 1302))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 144)) (.var 3)) (.neg (.num 132))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    1344) (.var 3)) (.num 11898)) (.var 1)) (.mul (.add (.mul (.num 798) (.var 3)) (.num 31374))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 7038)) (.var 3)) (.num 27772)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 13902)) (.var 3)) (.num 5895)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.neg (.num 10776)) (.var 3)) (.neg (.num 5004))) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 3996)) (.var 3)) (.neg (.num 3239))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 666)) (.var 3)) (.neg (.num 642))) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 36)) (.var 3)) (.neg (.num 36))) (.pow
    (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 1380) (.var 3)) (.num 2880)) (.var 1)) (.mul (.add
    (.mul (.num 4266) (.var 3)) (.num 9360)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 4146)
    (.var 3)) (.num 11154)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 63) (.var 3))
    (.num 5083)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 2583)) (.var 3))
    (.neg (.num 605))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 1884)) (.var
    3)) (.neg (.num 1480))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 561))
    (.var 3)) (.neg (.num 529))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 63))
    (.var 3)) (.neg (.num 63))) (.pow (.var 2) 7))) (.var 1)))) (.pow (.var 0) 2)) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)) (.add (.var 1) (.var
    2)))) (.mul (.mul (.num 8) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul
    (.num 20) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num
    740)) (.var 1)) (.mul (.add (.mul (.num 40) (.var 3)) (.num 564)) (.var 2))) (.var 1)) (.mul
    (.num 84) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 40) (.var 3)) (.num 624)) (.var 3)) (.num 4190)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 100) (.var 3)) (.num 1008)) (.var 3)) (.num 5146)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 80) (.var 3)) (.num 424)) (.var 3)) (.num 1828)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 40)) (.var 3)) (.num
    172)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 552) (.var 3)) (.num 4384)) (.var 3)) (.num 14604)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1656) (.var 3)) (.num 9860)) (.var 3)) (.num 25668)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1796) (.var 3)) (.num 7680)) (.var 3)) (.num
    15570)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 832) (.var 3)) (.num
    2516)) (.var 3)) (.num 3846)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 140) (.var 3)) (.num 312)) (.var 3)) (.num 340)) (.pow (.var 2) 4)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3292)
    (.var 3)) (.num 18060)) (.var 3)) (.num 35352)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    11522) (.var 3)) (.num 52084)) (.var 3)) (.num 83698)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 15614) (.var 3)) (.num 57728)) (.var 3)) (.num 75574)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10230) (.var 3)) (.num 31172)) (.var 3)) (.num
    32922)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3246) (.var 3))
    (.num 8396)) (.var 3)) (.num 7154)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 400) (.var 3)) (.num 928)) (.var 3)) (.num 660)) (.pow (.var 2) 5)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 11126) (.var 3)) (.num 47756)) (.var 3)) (.num 62521)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 44504) (.var 3)) (.num 167628)) (.var 3)) (.num 190489)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 71946) (.var 3)) (.num 238020)) (.var 3)) (.num
    234389)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60074) (.var 3))
    (.num 175956)) (.var 3)) (.num 150433)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 27296) (.var 3)) (.num 71976)) (.var 3)) (.num 53914)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 6390) (.var 3)) (.num 15560)) (.var 3)) (.num 10422))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 600) (.var 3)) (.num 1392))
    (.var 3)) (.num 860)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 23396) (.var 3)) (.num
    83398)) (.var 3)) (.num 80861)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 105282) (.var
    3)) (.num 343912)) (.var 3)) (.num 303977)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 197064) (.var 3)) (.num 591216)) (.var 3)) (.num 476793)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 198408) (.var 3)) (.num 549704)) (.var 3)) (.num 405949))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 115720) (.var 3)) (.num
    298790)) (.var 3)) (.num 203464)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 38938) (.var 3)) (.num 94848)) (.var 3)) (.num 60180)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 6948) (.var 3)) (.num 16188)) (.var 3)) (.num 9692)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 500) (.var 3)) (.num 1128)) (.var
    3)) (.num 644)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 31379) (.var 3))
    (.num 95516)) (.var 3)) (.num 73917)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 156895)
    (.var 3)) (.num 451388)) (.var 3)) (.num 330454)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 333016) (.var 3)) (.num 907112)) (.var 3)) (.num 628756)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 390694) (.var 3)) (.num 1010868)) (.var 3))
    (.num 664918)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 275975) (.var
    3)) (.num 681460)) (.var 3)) (.num 426931)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 119455) (.var 3)) (.num 283136)) (.var 3)) (.num 169740)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30618) (.var 3)) (.num 70072)) (.var 3))
    (.num 40394)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4164) (.var
    3)) (.num 9240)) (.var 3)) (.num 5138)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 220) (.var 3)) (.num 472)) (.var 3)) (.num 252)) (.pow (.var 2) 8)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 26192) (.var 3)) (.num 68998)) (.var 3)) (.num
    44846)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 144056) (.var 3)) (.num 367034)) (.var
    3)) (.num 231600)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 341420) (.var 3))
    (.num 842102)) (.var 3)) (.num 515988)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 455970) (.var 3)) (.num 1090412)) (.var 3)) (.num 649346)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 376252) (.var 3)) (.num 874234)) (.var 3)) (.num
    506658)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 197414) (.var 3))
    (.num 446726)) (.var 3)) (.num 252358)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 65010) (.var 3)) (.num 143562)) (.var 3)) (.num 79154)) (.pow (.var 2) 6))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 12640) (.var 3)) (.num 27260)) (.var 3)) (.num 14672))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1246) (.var 3)) (.num 2616))
    (.var 3)) (.num 1370)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40)
    (.var 3)) (.num 80)) (.var 3)) (.num 40)) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 12455) (.var 3)) (.num 28580)) (.var 3)) (.num 16125))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 74730) (.var 3)) (.num 168882)) (.var 3)) (.num
    94152)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 195392) (.var 3)) (.num
    434992)) (.var 3)) (.num 239600)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 291935) (.var 3)) (.num 640558)) (.var 3)) (.num 348623)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 274395) (.var 3)) (.num 593764)) (.var 3)) (.num 319369))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 168000) (.var 3)) (.num
    358718)) (.var 3)) (.num 190718)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 66824) (.var 3)) (.num 140820)) (.var 3)) (.num 73996)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 16569) (.var 3)) (.num 34438)) (.var 3)) (.num 17869))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2302) (.var 3)) (.num 4708))
    (.var 3)) (.num 2406)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 134)
    (.var 3)) (.num 268)) (.var 3)) (.num 134)) (.pow (.var 2) 9))) (.var 1))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2598) (.var 3)) (.num 5196)) (.var 3)) (.num
    2598)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16887) (.var 3)) (.num 33774)) (.var 3))
    (.num 16887)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48236) (.var 3)) (.num
    96472)) (.var 3)) (.num 48236)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 79541) (.var 3)) (.num 159082)) (.var 3)) (.num 79541)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 83558) (.var 3)) (.num 167116)) (.var 3)) (.num 83558))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 58089) (.var 3)) (.num
    116178)) (.var 3)) (.num 58089)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 26776) (.var 3)) (.num 53552)) (.var 3)) (.num 26776)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 7907) (.var 3)) (.num 15814)) (.var 3)) (.num 7907)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1360) (.var 3)) (.num 2720)) (.var
    3)) (.num 1360)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 104) (.var
    3)) (.num 208)) (.var 3)) (.num 104)) (.pow (.var 2) 9))) (.pow (.var 1) 2)))) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3))) (.mul (.mul (.mul
    (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 270) (.var 1)) (.mul (.num 90) (.var 2))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.num 140) (.var 3)) (.num 2850)) (.var 1)) (.mul (.add
    (.mul (.num 140) (.var 3)) (.num 2098)) (.var 2))) (.var 1)) (.mul (.num 288) (.pow (.var 2)
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 100) (.var
    3)) (.num 1544)) (.var 3)) (.num 13711)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 250)
    (.var 3)) (.num 2288)) (.var 3)) (.num 15788)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 200) (.var 3)) (.num 744)) (.var 3)) (.num 4873)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.num 50) (.pow (.var 3) 2)) (.num 296)) (.pow (.var 2) 3)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1020) (.var 3))
    (.num 8344)) (.var 3)) (.num 39911)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3060) (.var
    3)) (.num 17048)) (.var 3)) (.num 64225)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3320) (.var 3)) (.num 11176)) (.var 3)) (.num 33083)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1540) (.var 3)) (.num 2684)) (.var 3)) (.num 5761)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 260) (.var 3)) (.num 212)) (.var
    3)) (.num 192)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
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
    2) 9))) (.var 1)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var
    1)) (.var 2))) 3))) (.mul (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 450) (.var 1)) (.mul (.num
    150) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 160) (.var 3)) (.num
    4230)) (.var 1)) (.mul (.add (.mul (.num 160) (.var 3)) (.num 3020)) (.var 2))) (.var 1))
    (.mul (.num 390) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 60) (.var 3)) (.num 1376)) (.var 3)) (.num 17765)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 150) (.var 3)) (.num 1832)) (.var 3)) (.num 19276)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 120) (.var 3)) (.num 356)) (.var 3)) (.num
    5129)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.neg
    (.num 100))) (.var 3)) (.num 118)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 588) (.var 3)) (.num 5832)) (.var 3))
    (.num 43505)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1764) (.var 3)) (.num 10224))
    (.var 3)) (.num 63820)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1914) (.var
    3)) (.num 4420)) (.var 3)) (.num 26449)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 888) (.var 3)) (.neg (.num 204))) (.var 3)) (.num 1668)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 150) (.var 3)) (.neg (.num 232))) (.var 3)) (.neg
    (.num 466))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 2580) (.var 3)) (.num 15960)) (.var 3)) (.num
    70491)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9030) (.var 3)) (.num 37164)) (.var 3))
    (.num 135518)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12210) (.var 3)) (.num
    28664)) (.var 3)) (.num 84085)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 7950) (.var 3)) (.num 7836)) (.var 3)) (.num 15484)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 2490) (.var 3)) (.num 336)) (.var 3)) (.neg (.num 1504))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 300) (.var 3)) (.neg (.num 40)))
    (.var 3)) (.neg (.num 430))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6312) (.var 3)) (.num
    30528)) (.var 3)) (.num 80845)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 25248) (.var 3))
    (.num 92928)) (.var 3)) (.num 203849)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 40662) (.var 3)) (.num 108626)) (.var 3)) (.num 189076)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 33618) (.var 3)) (.num 62298)) (.var 3)) (.num 77953))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14982) (.var 3)) (.num
    19062)) (.var 3)) (.num 13251)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3390) (.var 3)) (.num 3262)) (.var 3)) (.num 556)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 300) (.var 3)) (.num 272)) (.var 3)) (.neg (.num 14))) (.pow
    (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9108) (.var 3)) (.num 37828)) (.var 3)) (.num
    64291)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40986) (.var 3)) (.num 143296)) (.var
    3)) (.num 208943)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 76332) (.var 3))
    (.num 222168)) (.var 3)) (.num 272360)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 75894) (.var 3)) (.num 183314)) (.var 3)) (.num 184063)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 43230) (.var 3)) (.num 87750)) (.var 3)) (.num 70086))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13974) (.var 3)) (.num
    24694)) (.var 3)) (.num 15428)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2334) (.var 3)) (.num 3794)) (.var 3)) (.num 1895)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 150) (.var 3)) (.num 236)) (.var 3)) (.num 98)) (.pow (.var 2)
    7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 7257) (.var 3)) (.num 25734)) (.var 3)) (.num
    31089)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36285) (.var 3)) (.num 115740)) (.var
    3)) (.num 125016)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 76626) (.var 3))
    (.num 219786)) (.var 3)) (.num 210888)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 88794) (.var 3)) (.num 229960)) (.var 3)) (.num 195164)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 61299) (.var 3)) (.num 144756)) (.var 3)) (.num
    108615)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 25515) (.var 3))
    (.num 55806)) (.var 3)) (.num 37214)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 6120) (.var 3)) (.num 12632)) (.var 3)) (.num 7564)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 738) (.var 3)) (.num 1458)) (.var 3)) (.num 788)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.num 56)) (.var 3))
    (.num 26)) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2430)
    (.var 3)) (.num 7068)) (.var 3)) (.num 6678)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    13365) (.var 3)) (.num 36594)) (.var 3)) (.num 31851)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 31563) (.var 3)) (.num 81524)) (.var 3)) (.num 65267)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 41796) (.var 3)) (.num 102250)) (.var 3)) (.num
    75358)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33948) (.var 3))
    (.num 79148)) (.var 3)) (.num 53876)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 17325) (.var 3)) (.num 38804)) (.var 3)) (.num 24525)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 5427) (.var 3)) (.num 11782)) (.var 3)) (.num 6957))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 954) (.var 3)) (.num 2024))
    (.var 3)) (.num 1122)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72)
    (.var 3)) (.num 150)) (.var 3)) (.num 78)) (.pow (.var 2) 8))) (.var 1)))) (.pow (.var 0) 2))
    (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3))) (.mul
    (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 330) (.var 1)) (.mul (.num 110) (.var 2))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num 2870)) (.var 1)) (.mul (.add (.mul (.num 60)
    (.var 3)) (.num 2002)) (.var 2))) (.var 1)) (.mul (.num 252) (.pow (.var 2) 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 456) (.var 3)) (.num 10977)) (.var 1))
    (.mul (.add (.mul (.num 552) (.var 3)) (.num 11442)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.num 36) (.var 3)) (.num 2771)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    60)) (.var 3)) (.num 6)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 1632) (.var 3)) (.num 23481)) (.var 1)) (.mul (.add (.mul (.num
    2316) (.var 3)) (.num 32181)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 144) (.var 3))
    (.num 11093)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 732)) (.var 3))
    (.neg (.num 415))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 192)) (.var 3))
    (.neg (.num 408))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 3588) (.var 3)) (.num 31495)) (.var 1)) (.mul (.add (.mul
    (.num 6246) (.var 3)) (.num 54993)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 1158) (.var
    3)) (.num 26591)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 2886)) (.var 3))
    (.neg (.num 537))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 1602)) (.var
    3)) (.neg (.num 2720))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 216))
    (.var 3)) (.neg (.num 390))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5676) (.var 3)) (.num 27930))
    (.var 1)) (.mul (.add (.mul (.num 13596) (.var 3)) (.num 63469)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.num 9054) (.var 3)) (.num 47409)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 1122)) (.var 3)) (.num 9713)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 3198)) (.var 3)) (.neg (.num 3117))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 1038)) (.var 3)) (.neg (.num 1412))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.neg (.num 96)) (.var 3)) (.neg (.num 132))) (.pow (.var 2) 6)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 5646) (.var 3)) (.num 15270)) (.var 1)) (.mul (.add (.mul (.num 18150) (.var 3))
    (.num 45354)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 21696) (.var 3)) (.num 50977))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 11370) (.var 3)) (.num 26451)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.num 1956) (.var 3)) (.num 5766)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.neg (.num 360)) (.var 3)) (.num 57)) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 150)) (.var 3)) (.neg (.num 145))) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg (.num 14))) (.pow (.var 2) 7))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 2364) (.var 3)) (.num 3780)) (.var 1)) (.mul (.add (.mul (.num 9390)
    (.var 3)) (.num 14190)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 15186) (.var 3)) (.num
    21720)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 12936) (.var 3)) (.num 17563))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.num 6294) (.var 3)) (.num 8150)) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.num 1776) (.var 3)) (.num 2208)) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.num 276) (.var 3)) (.num 332)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.num 18) (.var 3)) (.num 21)) (.pow (.var 2) 7))) (.var 1)))) (.pow (.var
    0) 3)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)))
    (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 9) (.var 1)) (.var 0)) (.mul
    (.add (.mul (.num 157) (.var 1)) (.mul (.num 72) (.var 2))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.neg (.num 10)) (.var 3)) (.num 1079)) (.var 1)) (.mul (.add
    (.mul (.neg (.num 17)) (.var 3)) (.num 979)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 7)) (.var 3)) (.num 216)) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.neg (.num 166)) (.var 3)) (.num 3842)) (.var 1)) (.mul
    (.add (.mul (.neg (.num 360)) (.var 3)) (.num 5107)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 248)) (.var 3)) (.num 2171)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 54)) (.var 3)) (.num 294)) (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.neg (.num
    1042))) (.var 3)) (.num 7919)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 3))
    (.neg (.num 2789))) (.var 3)) (.num 13374)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 4) (.var 3)) (.neg (.num 2704))) (.var 3)) (.num 7795)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.neg (.num 1120))) (.var 3)) (.num 1791))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 163)) (.var 3)) (.num 128)) (.pow
    (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 23) (.var 3)) (.neg (.num 2968))) (.var 3)) (.num 10429))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 69) (.var 3)) (.neg (.num 9728))) (.var 3))
    (.num 20267)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 71) (.var 3)) (.neg
    (.num 12507))) (.var 3)) (.num 12836)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 27) (.var 3)) (.neg (.num 7802))) (.var 3)) (.num 2223)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.neg (.num 2303))) (.var 3)) (.neg (.num
    466))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 248)) (.var 3)) (.neg (.num
    124))) (.pow (.var 2) 5))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 196) (.var 3)) (.neg (.num
    3554))) (.var 3)) (.num 10296)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 686) (.var 3))
    (.neg (.num 14813))) (.var 3)) (.num 22217)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 882) (.var 3)) (.neg (.num 25453))) (.var 3)) (.num 12965)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 490) (.var 3)) (.neg (.num 22599))) (.var 3))
    (.neg (.num 3071))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 98)
    (.var 3)) (.neg (.num 10647))) (.var 3)) (.neg (.num 5648))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.neg (.num 2443)) (.var 3)) (.neg (.num 1863))) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.neg (.num 201)) (.var 3)) (.neg (.num 180))) (.pow (.var 2) 6))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 741) (.var 3)) (.neg (.num 144))) (.var 3)) (.num
    9147)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2964) (.var 3)) (.neg (.num 4530))) (.var
    3)) (.num 24060)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4629) (.var 3))
    (.neg (.num 16415))) (.var 3)) (.num 18338)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 3513) (.var 3)) (.neg (.num 24619))) (.var 3)) (.neg (.num 3346))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1288) (.var 3)) (.neg (.num
    18635))) (.var 3)) (.neg (.num 11747))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 179) (.var 3)) (.neg (.num 7319))) (.var 3)) (.neg (.num 6197))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 2)) (.var 3)) (.neg (.num 1356)))
    (.var 3)) (.neg (.num 1281))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 82))
    (.var 3)) (.neg (.num 82))) (.pow (.var 2) 7))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 1218) (.var 3)) (.num 3684)) (.var 3)) (.num 6930)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 5481) (.var 3)) (.num 12882)) (.var 3)) (.num 23553)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 10074) (.var 3)) (.num 15178)) (.var 3)) (.num 28714))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9681) (.var 3)) (.num 3529))
    (.var 3)) (.num 11680)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    5137) (.var 3)) (.neg (.num 7117))) (.var 3)) (.neg (.num 4929))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 1429) (.var 3)) (.neg (.num 6746))) (.var 3)) (.neg
    (.num 6629))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 161) (.var 3))
    (.neg (.num 2431))) (.var 3)) (.neg (.num 2461))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.neg (.num 1)) (.var 3)) (.neg (.num 364))) (.var 3)) (.neg (.num 363)))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num 13)) (.var 3)) (.neg (.num 13)))
    (.pow (.var 2) 8))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 870) (.var 3))
    (.num 3300)) (.var 3)) (.num 3390)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4350) (.var
    3)) (.num 14622)) (.var 3)) (.num 14208)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 9169) (.var 3)) (.num 26180)) (.var 3)) (.num 23635)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 10576) (.var 3)) (.num 23744)) (.var 3)) (.num 19054))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7230) (.var 3)) (.num
    10701)) (.var 3)) (.num 6401)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2944) (.var 3)) (.num 1339)) (.var 3)) (.neg (.num 827))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 667) (.var 3)) (.neg (.num 754))) (.var 3)) (.neg (.num
    1335))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 66) (.var 3)) (.neg
    (.num 315))) (.var 3)) (.neg (.num 381))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 37)) (.var 3)) (.neg (.num 37))) (.pow (.var 2) 8))) (.pow (.var 1) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 216) (.var 3)) (.num 948)) (.var 3)) (.num 732))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1188) (.var 3)) (.num 4782)) (.var 3)) (.num
    3594)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2814) (.var 3)) (.num 10134))
    (.var 3)) (.num 7320)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3753)
    (.var 3)) (.num 11664)) (.var 3)) (.num 7911)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 3090) (.var 3)) (.num 7830)) (.var 3)) (.num 4740)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1617) (.var 3)) (.num 3020)) (.var 3)) (.num
    1403)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 531) (.var 3)) (.num
    588)) (.var 3)) (.num 57)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    102) (.var 3)) (.num 30)) (.var 3)) (.neg (.num 72))) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 9) (.var 3)) (.neg (.num 4))) (.var 3)) (.neg (.num 13))) (.pow
    (.var 2) 8))) (.pow (.var 1) 3)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0)
    (.var 1)) (.var 2))) 2)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.num 2) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 1)) (.mul (.num 16) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 576)) (.var 1)) (.mul
    (.add (.mul (.num 16) (.var 3)) (.num 484)) (.var 2))) (.var 1)) (.mul (.num 96) (.pow (.var
    2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 8) (.var
    3)) (.num 232)) (.var 3)) (.num 3652)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var
    3)) (.num 320)) (.var 3)) (.num 4648)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 8) (.var 3)) (.num 72)) (.var 3)) (.num 1852)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 16)) (.var 3)) (.num 224)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 144) (.var 3)) (.num 1620)) (.var
    3)) (.num 13641)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 360) (.var 3)) (.num 2922))
    (.var 3)) (.num 23177)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 288) (.var
    3)) (.num 1336)) (.var 3)) (.num 13702)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 72) (.var 3)) (.neg (.num 62))) (.var 3)) (.num 3210)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.neg (.num 96)) (.var 3)) (.num 224)) (.pow (.var 2) 4)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    1128) (.var 3)) (.num 7424)) (.var 3)) (.num 34289)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3384) (.var 3)) (.num 17150)) (.var 3)) (.num 73151)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 3656) (.var 3)) (.num 12606)) (.var 3)) (.num 57186)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1672) (.var 3)) (.num 2338)) (.var 3))
    (.num 19418)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 272) (.var 3))
    (.neg (.num 782))) (.var 3)) (.num 2414)) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.neg
    (.num 240)) (.var 3)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5122) (.var 3)) (.num 24662))
    (.var 3)) (.num 63669)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17927) (.var 3)) (.num
    71329)) (.var 3)) (.num 166193)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    24169) (.var 3)) (.num 74953)) (.var 3)) (.num 164873)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 15605) (.var 3)) (.num 32563)) (.var 3)) (.num 75203)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4801) (.var 3)) (.num 2993)) (.var
    3)) (.num 13838)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 560) (.var
    3)) (.neg (.num 1604))) (.var 3)) (.neg (.num 124))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 320)) (.var 3)) (.neg (.num 224))) (.pow (.var 2) 6)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 14988) (.var 3)) (.num 59556)) (.var 3)) (.num 92751)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 59952) (.var 3)) (.num 208896)) (.var 3)) (.num 293791)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 96401) (.var 3)) (.num 287125)) (.var 3)) (.num
    367145)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 79371) (.var 3))
    (.num 192319)) (.var 3)) (.num 225095)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 35087) (.var 3)) (.num 60811)) (.var 3)) (.num 65276)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 7833) (.var 3)) (.num 5045)) (.var 3)) (.num 4670))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 680) (.var 3)) (.neg (.num
    1472))) (.var 3)) (.neg (.num 1512))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 240)) (.var 3)) (.neg (.num 224))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 29328) (.var 3)) (.num 100830)) (.var 3)) (.num 106686)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 131976) (.var 3)) (.num 415593)) (.var 3)) (.num 405886)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 245864) (.var 3)) (.num 701722)) (.var 3))
    (.num 631279)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 244636) (.var
    3)) (.num 621786)) (.var 3)) (.num 511851)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 139540) (.var 3)) (.num 304806)) (.var 3)) (.num 224790)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45204) (.var 3)) (.num 77443)) (.var 3))
    (.num 47146)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7572) (.var
    3)) (.num 6942)) (.var 3)) (.num 1254)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 488) (.var 3)) (.neg (.num 618))) (.var 3)) (.neg (.num 1022))) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.neg (.num 96)) (.var 3)) (.neg (.num 96))) (.pow (.var 2)
    8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 38142) (.var 3)) (.num 114910))
    (.var 3)) (.num 92326)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 190710) (.var 3)) (.num
    542868)) (.var 3)) (.num 413784)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    403367) (.var 3)) (.num 1080429)) (.var 3)) (.num 779411)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 469208) (.var 3)) (.num 1175182)) (.var 3)) (.num 798779)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 326256) (.var 3)) (.num 755504))
    (.var 3)) (.num 479032)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    137522) (.var 3)) (.num 287554)) (.var 3)) (.num 165814)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 33731) (.var 3)) (.num 60023)) (.var 3)) (.num 29004)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4248) (.var 3)) (.num 5204)) (.var
    3)) (.num 1146)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 192) (.var
    3)) (.neg (.num 74))) (.var 3)) (.neg (.num 266))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 16)) (.var 3)) (.neg (.num 16))) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 31682) (.var 3)) (.num 83740)) (.var 3)) (.num
    55226)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 174251) (.var 3)) (.num 445270)) (.var
    3)) (.num 285149)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 412079) (.var 3))
    (.num 1016474)) (.var 3)) (.num 631165)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 547473) (.var 3)) (.num 1300793)) (.var 3)) (.num 781463)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 447498) (.var 3)) (.num 1020388)) (.var 3))
    (.num 590768)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 231126) (.var
    3)) (.num 502167)) (.var 3)) (.num 277951)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 74174) (.var 3)) (.num 151253)) (.var 3)) (.num 78591)) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13802) (.var 3)) (.num 25478)) (.var 3)) (.num
    11821)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1251) (.var 3))
    (.num 1865)) (.var 3)) (.num 614)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 32) (.var 3)) (.num 12)) (.var 3)) (.neg (.num 20))) (.pow (.var 2) 9))) (.var 1)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 15300) (.var 3)) (.num 35334))
    (.var 3)) (.num 20034)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 91800) (.var 3)) (.num
    208710)) (.var 3)) (.num 116910)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    239815) (.var 3)) (.num 536526)) (.var 3)) (.num 296711)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 357575) (.var 3)) (.num 786762)) (.var 3)) (.num 429187)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 334847) (.var 3)) (.num 723829))
    (.var 3)) (.num 388982)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    203738) (.var 3)) (.num 431796)) (.var 3)) (.num 228058)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 80200) (.var 3)) (.num 165947)) (.var 3)) (.num 85747)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 19532) (.var 3)) (.num 39115))
    (.var 3)) (.num 19583)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2626) (.var 3)) (.num 4992)) (.var 3)) (.num 2366)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 143) (.var 3)) (.num 245)) (.var 3)) (.num 102)) (.pow (.var 2) 9)))
    (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3294)
    (.var 3)) (.num 6588)) (.var 3)) (.num 3294)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    21411) (.var 3)) (.num 42822)) (.var 3)) (.num 21411)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 61200) (.var 3)) (.num 122400)) (.var 3)) (.num 61200)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 101079) (.var 3)) (.num 202158)) (.var 3)) (.num
    101079)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 106474) (.var 3))
    (.num 212948)) (.var 3)) (.num 106474)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 74322) (.var 3)) (.num 148644)) (.var 3)) (.num 74322)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 34448) (.var 3)) (.num 68896)) (.var 3)) (.num 34448))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10243) (.var 3)) (.num
    20486)) (.var 3)) (.num 10243)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1776) (.var 3)) (.num 3552)) (.var 3)) (.num 1776)) (.pow (.var 2) 8))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 137) (.var 3)) (.num 274)) (.var 3)) (.num 137)) (.pow (.var 2)
    9))) (.pow (.var 1) 3)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1))
    (.var 2))) 2)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.mul (.num 1) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 180) (.var 1)) (.mul (.num 72) (.var 2))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 56) (.var 3)) (.num 2326)) (.var 1)) (.mul (.add (.mul (.num 56)
    (.var 3)) (.num 1978)) (.var 2))) (.var 1)) (.mul (.num 400) (.pow (.var 2) 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 592))
    (.var 3)) (.num 13244)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num
    792)) (.var 3)) (.num 17012)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20)
    (.var 3)) (.num 144)) (.var 3)) (.num 6892)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 56)) (.var 3)) (.num 864)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 248) (.var 3)) (.num 2934)) (.var 3))
    (.num 43596)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 620) (.var 3)) (.num 4743)) (.var
    3)) (.num 74061)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 496) (.var 3))
    (.num 1292)) (.var 3)) (.num 44098)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 124) (.var 3)) (.neg (.num 821))) (.var 3)) (.num 10605)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 304)) (.var 3)) (.num 816)) (.pow (.var 2) 4)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    1464) (.var 3)) (.num 9804)) (.var 3)) (.num 93708)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 4392) (.var 3)) (.num 19022)) (.var 3)) (.num 196516)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 4728) (.var 3)) (.num 7422)) (.var 3)) (.num 151098)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2136) (.var 3)) (.neg (.num 5150))) (.var
    3)) (.num 50684)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 336) (.var
    3)) (.neg (.num 4034))) (.var 3)) (.num 6430)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 680)) (.var 3)) (.num 80)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5268) (.var 3))
    (.num 27134)) (.var 3)) (.num 144212)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18438)
    (.var 3)) (.num 67379)) (.var 3)) (.num 361973)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 24730) (.var 3)) (.num 48543)) (.var 3)) (.num 340683)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 15730) (.var 3)) (.neg (.num 3376))) (.var 3)) (.num
    142650)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4682) (.var 3))
    (.neg (.num 17839))) (.var 3)) (.num 20913)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 512) (.var 3)) (.neg (.num 6965))) (.var 3)) (.neg (.num 1795))) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 800)) (.var 3)) (.neg (.num 528))) (.pow (.var
    2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 12602) (.var 3)) (.num 60450)) (.var 3)) (.num
    169980)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50408) (.var 3)) (.num 192422)) (.var
    3)) (.num 509114)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 80605) (.var 3))
    (.num 221787)) (.var 3)) (.num 588116)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 65387) (.var 3)) (.num 97177)) (.var 3)) (.num 315494)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 28049) (.var 3)) (.neg (.num 7553))) (.var 3)) (.num
    64132)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5929) (.var 3))
    (.neg (.num 20379))) (.var 3)) (.neg (.num 7600))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 468) (.var 3)) (.neg (.num 5984))) (.var 3)) (.neg (.num 4856))) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 520)) (.var 3)) (.neg (.num 480))) (.pow
    (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 20050) (.var 3)) (.num 92370))
    (.var 3)) (.num 154148)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90225) (.var 3)) (.num
    357769)) (.var 3)) (.num 551910)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    167312) (.var 3)) (.num 551264)) (.var 3)) (.num 792026)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 164542) (.var 3)) (.num 419996)) (.var 3)) (.num 568830)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 91758) (.var 3)) (.num 150454))
    (.var 3)) (.num 197092)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    28565) (.var 3)) (.num 8668)) (.var 3)) (.num 14691)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 4464) (.var 3)) (.neg (.num 10162))) (.var 3)) (.neg (.num
    10280))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 252) (.var 3))
    (.neg (.num 2683))) (.var 3)) (.neg (.num 2745))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 176)) (.var 3)) (.neg (.num 176))) (.pow (.var 2) 8)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 19754) (.var 3)) (.num 85946)) (.var 3)) (.num
    99516)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 98770) (.var 3)) (.num 387500)) (.var
    3)) (.num 420754)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 208419) (.var 3))
    (.num 727067)) (.var 3)) (.num 738032)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 241056) (.var 3)) (.num 730736)) (.var 3)) (.num 688772)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 165818) (.var 3)) (.num 417734)) (.var 3)) (.num
    358842)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 68592) (.var 3))
    (.num 128812)) (.var 3)) (.num 94182)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 16273) (.var 3)) (.num 14923)) (.var 3)) (.num 4508)) (.pow (.var 2) 6))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 1918) (.var 3)) (.neg (.num 1944))) (.var 3)) (.neg
    (.num 3448))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 3))
    (.neg (.num 590))) (.var 3)) (.neg (.num 662))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 24)) (.var 3)) (.neg (.num 24))) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 10548) (.var 3)) (.num 43560)) (.var 3)) (.num
    39348)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 58014) (.var 3)) (.num 222012)) (.var
    3)) (.num 192258)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 137248) (.var 3))
    (.num 483096)) (.var 3)) (.num 399388)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 182511) (.var 3)) (.num 584743)) (.var 3)) (.num 458518)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 149428) (.var 3)) (.num 428534)) (.var 3)) (.num
    314862)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 77378) (.var 3))
    (.num 192533)) (.var 3)) (.num 128975)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 24922) (.var 3)) (.num 50207)) (.var 3)) (.num 28309)) (.pow (.var 2) 6))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 4649) (.var 3)) (.num 6157)) (.var 3)) (.num 1798))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 414) (.var 3)) (.neg (.num
    3))) (.var 3)) (.neg (.num 417))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 8) (.var 3)) (.neg (.num 51))) (.var 3)) (.neg (.num 59))) (.pow (.var 2) 9))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2268) (.var 3)) (.num 9270))
    (.var 3)) (.num 7002)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13608) (.var 3)) (.num
    52326)) (.var 3)) (.num 38718)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    35644) (.var 3)) (.num 128184)) (.var 3)) (.num 92540)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 53480) (.var 3)) (.num 178572)) (.var 3)) (.num 125092)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50655) (.var 3)) (.num 155445))
    (.var 3)) (.num 104790)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    31428) (.var 3)) (.num 87176)) (.var 3)) (.num 55748)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 12791) (.var 3)) (.num 31129)) (.var 3)) (.num 18338)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3303) (.var 3)) (.num 6657)) (.var
    3)) (.num 3354)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 494) (.var
    3)) (.num 728)) (.var 3)) (.num 234)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 33) (.var 3)) (.num 25)) (.var 3)) (.neg (.num 8))) (.pow (.var 2) 9))) (.pow
    (.var 1) 2)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1))
    (.var 2))) 2)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.num 4) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num 20) (.var 2))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 840)) (.var 1)) (.mul (.add (.mul
    (.num 40) (.var 3)) (.num 636)) (.var 2))) (.var 1)) (.mul (.num 96) (.pow (.var 2) 2))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 3))
    (.num 696)) (.var 3)) (.num 5468)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 100) (.var
    3)) (.num 1112)) (.var 3)) (.num 6632)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 80) (.var 3)) (.num 456)) (.var 3)) (.num 2348)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 40)) (.var 3)) (.num 224)) (.pow (.var 2)
    3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    628) (.var 3)) (.num 5588)) (.var 3)) (.num 22172)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1884) (.var 3)) (.num 12400)) (.var 3)) (.num 38230)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2044) (.var 3)) (.num 9484)) (.var 3)) (.num 22860)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 948) (.var 3)) (.num 3040)) (.var 3)) (.num
    5590)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 160) (.var 3)) (.num
    368)) (.var 3)) (.num 488)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4364) (.var 3)) (.num 26912)) (.var 3))
    (.num 63151)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15274) (.var 3)) (.num 76556))
    (.var 3)) (.num 145757)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20718) (.var
    3)) (.num 83684)) (.var 3)) (.num 128813)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 13610) (.var 3)) (.num 44668)) (.var 3)) (.num 55155)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4342) (.var 3)) (.num 11948)) (.var 3)) (.num
    11828)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 540) (.var 3)) (.num
    1320)) (.var 3)) (.num 1080)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 17636) (.var 3)) (.num
    85264)) (.var 3)) (.num 133372)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 70544) (.var
    3)) (.num 295312)) (.var 3)) (.num 394575)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 114240) (.var 3)) (.num 414752)) (.var 3)) (.num 473841)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 95816) (.var 3)) (.num 304660)) (.var 3)) (.num 298809))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 43908) (.var 3)) (.num
    124672)) (.var 3)) (.num 106151)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 10424) (.var 3)) (.num 27196)) (.var 3)) (.num 20560)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1000) (.var 3)) (.num 2480)) (.var 3)) (.num 1720)) (.pow
    (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 45744) (.var 3)) (.num 184030)) (.var 3))
    (.num 211111)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 205848) (.var 3)) (.num 749162))
    (.var 3)) (.num 769903)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 386316)
    (.var 3)) (.num 1276420)) (.var 3)) (.num 1179139)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 391482) (.var 3)) (.num 1183240)) (.var 3)) (.num 988707)) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 231070) (.var 3)) (.num 646426)) (.var
    3)) (.num 493408)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 79282)
    (.var 3)) (.num 208422)) (.var 3)) (.num 147290)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 14582) (.var 3)) (.num 36628)) (.var 3)) (.num 24338)) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1100) (.var 3)) (.num 2680)) (.var 3))
    (.num 1696)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 78973) (.var 3))
    (.num 272022)) (.var 3)) (.num 245901)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 394865)
    (.var 3)) (.num 1269480)) (.var 3)) (.num 1067804)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 841114) (.var 3)) (.num 2532112)) (.var 3)) (.num 1987951)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 995266) (.var 3)) (.num 2820184)) (.var 3))
    (.num 2076539)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 713957)
    (.var 3)) (.num 1917690)) (.var 3)) (.num 1332714)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 316873) (.var 3)) (.num 813488)) (.var 3)) (.num 537539)) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 84468) (.var 3)) (.num 209008)) (.var
    3)) (.num 132282)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12228)
    (.var 3)) (.num 29360)) (.var 3)) (.num 17890)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 720) (.var 3)) (.num 1680)) (.var 3)) (.num 984)) (.pow (.var 2) 8))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 90630) (.var 3)) (.num 270930)) (.var
    3)) (.num 202986)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 498465) (.var 3)) (.num
    1423466)) (.var 3)) (.num 1020395)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1186779) (.var 3)) (.num 3244946)) (.var 3)) (.num 2229874)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1602018) (.var 3)) (.num 4207720)) (.var 3)) (.num
    2779649)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1347392) (.var 3))
    (.num 3413254)) (.var 3)) (.num 2175102)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 729043) (.var 3)) (.num 1789070)) (.var 3)) (.num 1103817)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 251917) (.var 3)) (.num 601298)) (.var 3))
    (.num 360342)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 52902) (.var
    3)) (.num 123144)) (.var 3)) (.num 71799)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 5970) (.var 3)) (.num 13540)) (.var 3)) (.num 7664)) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 260) (.var 3)) (.num 568)) (.var 3)) (.num 308))
    (.pow (.var 2) 9)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    66649) (.var 3)) (.num 174062)) (.var 3)) (.num 111793)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 399894) (.var 3)) (.num 1015812)) (.var 3)) (.num 636744)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1051522) (.var 3)) (.num 2601556)) (.var 3)) (.num
    1592972)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1591915) (.var 3))
    (.num 3842884)) (.var 3)) (.num 2301520)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1531509) (.var 3)) (.num 3614718)) (.var 3)) (.num 2120708)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 973380) (.var 3)) (.num 2250836)) (.var 3))
    (.num 1295550)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 410448)
    (.var 3)) (.num 931376)) (.var 3)) (.num 526512)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 111723) (.var 3)) (.num 248912)) (.var 3)) (.num 138202)) (.pow (.var
    2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18264) (.var 3)) (.num 39880)) (.var 3))
    (.num 21699)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1520) (.var
    3)) (.num 3228)) (.var 3)) (.num 1708)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 40) (.var 3)) (.num 80)) (.var 3)) (.num 40)) (.pow (.var 2) 10)))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 28560) (.var 3)) (.num
    65316)) (.var 3)) (.num 36756)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 185640) (.var
    3)) (.num 419100)) (.var 3)) (.num 233460)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 533966) (.var 3)) (.num 1190694)) (.var 3)) (.num 656728)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 894773) (.var 3)) (.num 1972242)) (.var 3)) (.num
    1077469)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 966943) (.var 3))
    (.num 2108388)) (.var 3)) (.num 1141445)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 703506) (.var 3)) (.num 1518494)) (.var 3)) (.num 814988)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 348336) (.var 3)) (.num 744534)) (.var 3))
    (.num 396198)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 115479) (.var
    3)) (.num 244330)) (.var 3)) (.num 128851)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 24361) (.var 3)) (.num 50936)) (.var 3)) (.num 26575)) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2914) (.var 3)) (.num 5994)) (.var 3)) (.num
    3080)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 146) (.var 3)) (.num
    292)) (.var 3)) (.num 146)) (.pow (.var 2) 10))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 5454) (.var 3)) (.num 10908)) (.var 3)) (.num 5454))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38178) (.var 3)) (.num 76356)) (.var 3)) (.num
    38178)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 119187) (.var 3)) (.num
    238374)) (.var 3)) (.num 119187)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 218808) (.var 3)) (.num 437616)) (.var 3)) (.num 218808)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 262003) (.var 3)) (.num 524006)) (.var 3)) (.num 262003))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 214184) (.var 3)) (.num
    428368)) (.var 3)) (.num 214184)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 121277) (.var 3)) (.num 242554)) (.var 3)) (.num 121277)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 47048) (.var 3)) (.num 94096)) (.var 3)) (.num 47048))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11987) (.var 3)) (.num
    23974)) (.var 3)) (.num 11987)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1814) (.var 3)) (.num 3628)) (.var 3)) (.num 1814)) (.pow (.var 2) 9))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 124) (.var 3)) (.num 248)) (.var 3)) (.num 124)) (.pow (.var 2)
    10))) (.pow (.var 1) 2)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0)
    (.var 1)) (.var 2))) 2))) (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 270) (.var 1)) (.mul (.num 90) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.num 140) (.var 3)) (.num 3300)) (.var 1)) (.mul (.add (.mul (.num 140) (.var 3)) (.num
    2422)) (.var 2))) (.var 1)) (.mul (.num 342) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 100) (.var 3)) (.num 1796)) (.var 3)) (.num
    18635)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 250) (.var 3)) (.num 2652)) (.var 3))
    (.num 21348)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 200) (.var 3)) (.num
    856)) (.var 3)) (.num 6709)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 50) (.pow
    (.var 3) 2)) (.num 456)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 1210) (.var 3)) (.num 11388)) (.var 3)) (.num
    64677)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3630) (.var 3)) (.num 23092)) (.var 3))
    (.num 103128)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3940) (.var 3)) (.num
    14988)) (.var 3)) (.num 53523)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1830) (.var 3)) (.num 3552)) (.var 3)) (.num 9784)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 310) (.var 3)) (.num 268)) (.var 3)) (.num 412)) (.pow (.var 2)
    4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 6708) (.var 3)) (.num 45720)) (.var 3)) (.num 155956)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 23478) (.var 3)) (.num 120462)) (.var 3)) (.num 329941)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 31806) (.var 3)) (.num 118078)) (.var 3)) (.num
    254911)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20820) (.var 3))
    (.num 54614)) (.var 3)) (.num 88381)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 6594) (.var 3)) (.num 12542)) (.var 3)) (.num 13855)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 810) (.var 3)) (.num 1264)) (.var 3)) (.num 900))
    (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 21922) (.var 3)) (.num 124572)) (.var 3)) (.num
    277072)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 87688) (.var 3)) (.num 406784)) (.var
    3)) (.num 755222)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 141650) (.var 3))
    (.num 530962)) (.var 3)) (.num 813176)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 118042) (.var 3)) (.num 358374)) (.var 3)) (.num 445482)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 53426) (.var 3)) (.num 134634)) (.var 3)) (.num
    134174)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12418) (.var 3))
    (.num 27406)) (.var 3)) (.num 22218)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1150) (.var 3)) (.num 2396)) (.var 3)) (.num 1680)) (.pow (.var 2) 6)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 45760) (.var 3)) (.num 231034)) (.var 3)) (.num 364706)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 205920) (.var 3)) (.num 898974)) (.var 3)) (.num 1240326))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 385244) (.var 3)) (.num 1453804))
    (.var 3)) (.num 1748090)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    387394) (.var 3)) (.num 1272568)) (.var 3)) (.num 1332906)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 225418) (.var 3)) (.num 655522)) (.var 3)) (.num 601167))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 75540) (.var 3)) (.num
    199854)) (.var 3)) (.num 162848)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 13382) (.var 3)) (.num 33340)) (.var 3)) (.num 24729)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 950) (.var 3)) (.num 2304)) (.var 3)) (.num 1592)) (.pow
    (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 61706) (.var 3)) (.num 283052))
    (.var 3)) (.num 342494)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 308530) (.var 3)) (.num
    1273074)) (.var 3)) (.num 1402978)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    655140) (.var 3)) (.num 2437996)) (.var 3)) (.num 2448644)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 769380) (.var 3)) (.num 2599436)) (.var 3)) (.num
    2386690)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 544464) (.var 3))
    (.num 1689080)) (.var 3)) (.num 1426357)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 236388) (.var 3)) (.num 683846)) (.var 3)) (.num 536032)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60892) (.var 3)) (.num 167192)) (.var 3))
    (.num 122981)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8354) (.var
    3)) (.num 22120)) (.var 3)) (.num 15392)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 450) (.var 3)) (.num 1156)) (.var 3)) (.num 756)) (.pow (.var 2) 8)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 51556) (.var 3)) (.num 216962)) (.var 3))
    (.num 213802)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 283558) (.var 3)) (.num 1102708))
    (.var 3)) (.num 1021926)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 673394)
    (.var 3)) (.num 2426648)) (.var 3)) (.num 2116814)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 903588) (.var 3)) (.num 3032696)) (.var 3)) (.num 2495996)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 751972) (.var 3)) (.num 2367930))
    (.var 3)) (.num 1845672)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    400064) (.var 3)) (.num 1192686)) (.var 3)) (.num 884589)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 134700) (.var 3)) (.num 383774)) (.var 3)) (.num 272121)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 27172) (.var 3)) (.num 74530))
    (.var 3)) (.num 50643)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2870) (.var 3)) (.num 7578)) (.var 3)) (.num 4907)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 110) (.var 3)) (.num 272)) (.var 3)) (.num 162)) (.pow (.var 2) 9))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 23934) (.var 3)) (.num
    93840)) (.var 3)) (.num 78666)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 143604) (.var
    3)) (.num 529836)) (.var 3)) (.num 427884)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 377048) (.var 3)) (.num 1311524)) (.var 3)) (.num 1020352)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 568870) (.var 3)) (.num 1871382)) (.var 3)) (.num
    1403614)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 544044) (.var 3))
    (.num 1699756)) (.var 3)) (.num 1230710)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 342600) (.var 3)) (.num 1021376)) (.var 3)) (.num 714964)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 142498) (.var 3)) (.num 407042)) (.var 3))
    (.num 275712)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38004) (.var
    3)) (.num 104192)) (.var 3)) (.num 68214)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 6014) (.var 3)) (.num 15754)) (.var 3)) (.num 9906)) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 470) (.var 3)) (.num 1150)) (.var 3)) (.num
    680)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num
    20)) (.var 3)) (.num 10)) (.pow (.var 2) 10)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 4644) (.var 3)) (.num 17484)) (.var 3)) (.num 12840)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 30186) (.var 3)) (.num 108192)) (.var 3)) (.num 78006))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 86804) (.var 3)) (.num 296370)) (.var
    3)) (.num 209566)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 145376)
    (.var 3)) (.num 473448)) (.var 3)) (.num 328072)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 156970) (.var 3)) (.num 488442)) (.var 3)) (.num 331472)) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 114114) (.var 3)) (.num 339710)) (.var
    3)) (.num 225596)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 56508)
    (.var 3)) (.num 160878)) (.var 3)) (.num 104370)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 18786) (.var 3)) (.num 50944)) (.var 3)) (.num 32158)) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4000) (.var 3)) (.num 10214)) (.var 3))
    (.num 6214)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 490) (.var 3))
    (.num 1146)) (.var 3)) (.num 656)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 26) (.var 3)) (.num 52)) (.var 3)) (.num 26)) (.pow (.var 2) 10))) (.var 1)))) (.pow
    (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    2)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.add (.add (.mul (.mul (.num 8) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 2) (.var 0)) (.mul (.num 8) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 12)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 8) (.var 3)) (.num 12)) (.var 3)) (.num 8)) (.pow (.var 2) 3))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 12)) (.var 3)) (.num 2)) (.pow
    (.var 2) 4))) (.var 0)) (.mul (.mul (.add (.mul (.num 4) (.var 3)) (.num 4)) (.var 3)) (.pow
    (.var 2) 5))) (.pow (.var 0) 3))) (.pow (.var 0) 1)) (.mul (.mul (.num 28) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13) (.var 0)) (.mul (.num 35) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.num 8)) (.var 3)) (.num 30))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27) (.var 3)) (.num 28))
    (.var 3)) (.num 10)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27)
    (.var 3)) (.num 32)) (.var 3)) (.num 5)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 9) (.var 3)) (.num 12)) (.var 3)) (.num 3)) (.pow (.var 2) 5))) (.pow (.var 0)
    2))) (.pow (.var 0) 2))) (.mul (.mul (.num 56) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 35) (.var 0)) (.mul (.num 54) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 15) (.var 3)) (.neg (.num 6))) (.var 3)) (.num 6)) (.pow (.var 2) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 36) (.var 3)) (.num 22)) (.var 3)) (.neg (.num 6)))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27) (.var 3)) (.num 38))
    (.var 3)) (.num 11)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6)
    (.var 3)) (.num 10)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.var 0))) (.pow (.var 0) 3)))
    (.mul (.mul (.num 70) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 50)
    (.var 0)) (.mul (.num 26) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 11) (.var
    3)) (.neg (.num 26))) (.var 3)) (.neg (.num 39))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 23) (.var 3)) (.num 14)) (.var 3)) (.neg (.num 3))) (.pow (.var 2)
    3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 13) (.var 3)) (.num 26)) (.var 3)) (.num
    13)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.num 2))
    (.var 3)) (.num 1)) (.pow (.var 2) 5)))) (.pow (.var 0) 4))) (.mul (.mul (.num 56) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 0)) (.mul (.neg (.num 16)) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.neg (.num 22))) (.var 3)) (.neg
    (.num 33))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 3))
    (.num 14)) (.var 3)) (.num 12)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 3) (.var 3)) (.num 8)) (.var 3)) (.num 5)) (.pow (.var 2) 4)))) (.pow (.var 0) 5)))
    (.mul (.mul (.num 28) (.add (.mul (.add (.mul (.add (.mul (.num 17) (.var 0)) (.mul (.neg
    (.num 21)) (.var 2))) (.var 0)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 3)))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.num 6) (.var 3)) (.num 7)) (.pow (.var 2)
    3)))) (.pow (.var 0) 6))) (.mul (.mul (.num 8) (.add (.mul (.add (.mul (.num 3) (.var 0))
    (.mul (.neg (.num 6)) (.var 2))) (.var 0)) (.mul (.num 3) (.pow (.var 2) 2)))) (.pow (.var 0)
    7))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.add (.mul (.num 1) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 51) (.var 0)) (.mul (.add (.mul (.num 30) (.var 3)) (.num 676)) (.var
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 52) (.var 3)) (.num 278)) (.var 3)) (.num
    2851)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 579) (.var 3)) (.num
    1346)) (.var 3)) (.num 5987)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 2300) (.var 3)) (.num 3828)) (.var 3)) (.num 7293)) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 4599) (.var 3)) (.num 6544)) (.var 3)) (.num 5551)) (.pow (.var
    2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5156) (.var 3)) (.num 6766)) (.var 3))
    (.num 2801)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3281) (.var 3))
    (.num 4122)) (.var 3)) (.num 1001)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1100) (.var 3)) (.num 1352)) (.var 3)) (.num 252)) (.pow (.var 2) 8))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 149) (.var 3)) (.num 182)) (.var 3)) (.num 33)) (.pow
    (.var 2) 9))) (.pow (.var 0) 4))) (.mul (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 189) (.var
    0)) (.mul (.add (.mul (.num 96) (.var 3)) (.num 2265)) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 140) (.var 3)) (.num 670)) (.var 3)) (.num 8185)) (.pow (.var 2) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 1441) (.var 3)) (.num 2482)) (.var 3)) (.num 14174))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5281) (.var 3)) (.num 6532))
    (.var 3)) (.num 13832)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    9720) (.var 3)) (.num 11478)) (.var 3)) (.num 8687)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 9996) (.var 3)) (.num 12330)) (.var 3)) (.num 4397)) (.pow (.var 2)
    6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5803) (.var 3)) (.num 7594)) (.var 3))
    (.num 2048)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1759) (.var 3))
    (.num 2420)) (.var 3)) (.num 661)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 212) (.var 3)) (.num 302)) (.var 3)) (.num 90)) (.pow (.var 2) 9))) (.pow (.var 0) 3)))
    (.pow (.var 0) 1))) (.mul (.mul (.num 15) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 399) (.var 0)) (.mul
    (.add (.mul (.num 170) (.var 3)) (.num 4322)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 200) (.var 3)) (.num 860)) (.var 3)) (.num 13126)) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1934) (.var 3)) (.num 1984)) (.var 3)) (.num 17719)) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6614) (.var 3)) (.num 4964)) (.var
    3)) (.num 12275)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 11214)
    (.var 3)) (.num 10500)) (.var 3)) (.num 5874)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 10438) (.var 3)) (.num 12520)) (.var 3)) (.num 3948)) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5356) (.var 3)) (.num 7668)) (.var 3)) (.num
    2559)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1388) (.var 3)) (.num
    2200)) (.var 3)) (.num 812)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    136) (.var 3)) (.num 222)) (.var 3)) (.num 86)) (.pow (.var 2) 9))) (.pow (.var 0) 2))) (.pow
    (.var 0) 2))) (.mul (.mul (.num 20) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 525) (.var 0)) (.mul (.add
    (.mul (.num 180) (.var 3)) (.num 5135)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 160) (.var 3)) (.num 620)) (.var 3)) (.num 12750)) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 1476) (.var 3)) (.num 236)) (.var 3)) (.num 12013)) (.pow (.var
    2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4781) (.var 3)) (.num 1026)) (.var 3))
    (.num 3808)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 7525) (.var 3))
    (.num 5744)) (.var 3)) (.num 1264)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 6300) (.var 3)) (.num 8228)) (.var 3)) (.num 2986)) (.pow (.var 2) 6))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 2766) (.var 3)) (.num 4716)) (.var 3)) (.num 2133)) (.pow
    (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 563) (.var 3)) (.num 1070)) (.var
    3)) (.num 507)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 37) (.var
    3)) (.num 68)) (.var 3)) (.num 31)) (.pow (.var 2) 9))) (.var 0))) (.pow (.var 0) 3))) (.mul
    (.mul (.num 15) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 441) (.var 0)) (.mul (.add (.mul (.num 114) (.var 3))
    (.num 3888)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 68) (.var 3)) (.num
    238)) (.var 3)) (.num 7567)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    607) (.var 3)) (.neg (.num 686))) (.var 3)) (.num 3653)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 1894) (.var 3)) (.neg (.num 746))) (.var 3)) (.neg (.num 1549)))
    (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2807) (.var 3)) (.num 2348))
    (.var 3)) (.num 159)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2126)
    (.var 3)) (.num 3790)) (.var 3)) (.num 2191)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 783) (.var 3)) (.num 1778)) (.var 3)) (.num 1097)) (.pow (.var 2) 7))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 112) (.var 3)) (.num 262)) (.var 3)) (.num 150)) (.pow
    (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 6)) (.var 3))
    (.num 3)) (.pow (.var 2) 9)))) (.pow (.var 0) 4))) (.mul (.mul (.num 6) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 231) (.var
    0)) (.mul (.add (.mul (.num 40) (.var 3)) (.num 1831)) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 12) (.var 3)) (.num 38)) (.var 3)) (.num 2601)) (.pow (.var 2) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 105) (.var 3)) (.neg (.num 438))) (.var 3)) (.neg
    (.num 240))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 321) (.var 3))
    (.neg (.num 426))) (.var 3)) (.neg (.num 1380))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 456) (.var 3)) (.num 838)) (.var 3)) (.num 633)) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 318) (.var 3)) (.num 1112)) (.var 3)) (.num
    1053)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 99) (.var 3)) (.num
    348)) (.var 3)) (.num 280)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    9) (.var 3)) (.num 24)) (.var 3)) (.num 15)) (.pow (.var 2) 8)))) (.pow (.var 0) 5))) (.mul
    (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 69) (.var 0)) (.mul (.add (.mul (.num 6) (.var 3)) (.num 490)) (.var 2))) (.var
    0)) (.mul (.num 440) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.neg (.num 84)) (.var
    3)) (.neg (.num 439))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.neg (.num 54)) (.var
    3)) (.neg (.num 227))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.num 168) (.var 3))
    (.num 388)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.num 138) (.var 3)) (.num 218))
    (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.num 18) (.var 3)) (.num 21)) (.pow (.var 2)
    7)))) (.pow (.var 0) 6))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow0507.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow0507.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow0507.leading0 e g v + f * FullLow0507.leading1 e g v +
        f^2 * FullLow0507.remainder e f g v := by
  have hden : denominatorOne FullLow0507.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow0507.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow0507.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 1099511627776 17 12 2) lhs =
      value (Encoding4.vars 1099511627776 17 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 1099511627776 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 17 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 17 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow0507.source e f g v =
      FullLow0507.leading0 e g v + f * FullLow0507.leading1 e g v +
        f^2 * FullLow0507.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 1099511627776 17 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow050Encoded7

namespace SPR.N6.Tail.CoreEndpoint.FullLow050
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition7 (e f g v : ℝ) :
    FullLow0507.source e f g v =
      FullLow0507.leading0 e g v + f * FullLow0507.leading1 e g v +
        f^2 * FullLow0507.remainder e f g v :=
  FullLow050Encoded7.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow050
