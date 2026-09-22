import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow113Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^7 layer of FullLow113.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow113Encoded7
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.mul (.mul (.num 18) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 90) (.var 1)) (.mul (.num 30) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.num 900) (.var 1)) (.mul (.num 624) (.var 2))) (.var 1))
    (.mul (.num 84) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 4029)
    (.var 1)) (.mul (.num 4194) (.var 2))) (.var 1)) (.mul (.num 1107) (.pow (.var 2) 2))) (.var
    1)) (.mul (.num 42) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 10275) (.var 1)) (.mul (.num 14169) (.var 2))) (.var 1)) (.mul (.num 5541) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.num 375) (.pow (.var 2) 3))) (.var 1)) (.mul (.neg (.num 72))
    (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 16584) (.var 1)) (.mul (.num 29148) (.var 2))) (.var 1)) (.mul (.num 16104) (.pow (.var
    2) 2))) (.var 1)) (.mul (.num 2340) (.pow (.var 2) 3))) (.var 1)) (.mul (.neg (.num 378))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.neg (.num 78)) (.pow (.var 2) 5)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 17496) (.var 1)) (.mul
    (.num 39192) (.var 2))) (.var 1)) (.mul (.num 31230) (.pow (.var 2) 2))) (.var 1)) (.mul (.num
    10284) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 1050) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.neg (.num 72)) (.pow (.var 2) 5))) (.var 1)) (.mul (.neg (.num 12)) (.pow (.var 2) 6))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 11124) (.var 1)) (.mul (.num 31464) (.var 2))) (.var 1)) (.mul (.num 34944) (.pow (.var
    2) 2))) (.var 1)) (.mul (.num 19788) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 6351) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.num 1242) (.pow (.var 2) 5))) (.var 1)) (.mul (.num 141) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.num 6) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3168) (.var 1)) (.mul
    (.num 10980) (.var 2))) (.var 1)) (.mul (.num 15840) (.pow (.var 2) 2))) (.var 1)) (.mul (.num
    12624) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 6231) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.num 1983) (.pow (.var 2) 5))) (.var 1)) (.mul (.num 381) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.num 33) (.pow (.var 2) 7))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add
    (.var 0) (.var 1)) (.var 2))) 2)) (.mul (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 15) (.var
    1)) (.mul (.num 6) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 195) (.var 1)) (.mul
    (.num 168) (.var 2))) (.var 1)) (.mul (.num 36) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 1134) (.var 1)) (.mul (.num 1485) (.var 2))) (.var 1)) (.mul
    (.num 636) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 90) (.pow (.var 2) 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3735) (.var 1)) (.mul (.num 6510) (.var 2)))
    (.var 1)) (.mul (.num 4161) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 1161) (.pow (.var 2)
    3))) (.var 1)) (.mul (.num 120) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 7698) (.var 1)) (.mul (.num 16662) (.var 2))) (.var 1))
    (.mul (.num 14016) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 5730) (.pow (.var 2) 3))) (.var
    1)) (.mul (.num 1143) (.pow (.var 2) 4))) (.var 1)) (.mul (.num 90) (.pow (.var 2) 5)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 10482) (.var
    1)) (.mul (.num 27108) (.var 2))) (.var 1)) (.mul (.num 28140) (.pow (.var 2) 2))) (.var 1))
    (.mul (.num 14940) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 4257) (.pow (.var 2) 4))) (.var
    1)) (.mul (.num 618) (.pow (.var 2) 5))) (.var 1)) (.mul (.num 36) (.pow (.var 2) 6)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    9456) (.var 1)) (.mul (.num 28626) (.var 2))) (.var 1)) (.mul (.num 35592) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.num 23370) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 8622) (.pow (.var 2)
    4))) (.var 1)) (.mul (.num 1749) (.pow (.var 2) 5))) (.var 1)) (.mul (.num 174) (.pow (.var 2)
    6))) (.var 1)) (.mul (.num 6) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5184) (.var 1)) (.mul (.num
    18144) (.var 2))) (.var 1)) (.mul (.num 26646) (.pow (.var 2) 2))) (.var 1)) (.mul (.num
    21276) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 9933) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.num 2694) (.pow (.var 2) 5))) (.var 1)) (.mul (.num 387) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.num 21) (.pow (.var 2) 7))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1296) (.var 1)) (.mul (.num 5184) (.var
    2))) (.var 1)) (.mul (.num 8880) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 8502) (.pow (.var
    2) 3))) (.var 1)) (.mul (.num 4950) (.pow (.var 2) 4))) (.var 1)) (.mul (.num 1776) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.num 372) (.pow (.var 2) 6))) (.var 1)) (.mul (.num 36) (.pow
    (.var 2) 7))) (.pow (.var 1) 2)))) (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var
    1)) (.var 2)))) (.add (.var 1) (.var 2)))) (.mul (.mul (.num 20) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 165) (.var 1)) (.mul (.num 55) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.num 30) (.var 3)) (.num 1985)) (.var 1)) (.mul (.add (.mul (.num 30) (.var 3)) (.num 1397))
    (.var 2))) (.var 1)) (.mul (.num 192) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 336) (.var 3)) (.num 10894)) (.var 1)) (.mul (.add (.mul (.num
    432) (.var 3)) (.num 11554)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 66) (.var 3)) (.num
    3170)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 30)) (.var 3)) (.num 130))
    (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 1836) (.var 3)) (.num 35616)) (.var 1)) (.mul (.add (.mul (.num 2946) (.var 3)) (.num
    50337)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 882) (.var 3)) (.num 20708)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 360)) (.var 3)) (.num 1643)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.neg (.num 132)) (.var 3)) (.neg (.num 284))) (.pow (.var 2)
    4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    6468) (.var 3)) (.num 77843)) (.var 1)) (.mul (.add (.mul (.num 13098) (.var 3)) (.num
    140131)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 6972) (.var 3)) (.num 80853)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 738)) (.var 3)) (.num 12763)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 1290)) (.var 3)) (.neg (.num 2102)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 210)) (.var 3)) (.neg (.num 500)))
    (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 16374) (.var 3)) (.num 121044)) (.var 1)) (.mul (.add (.mul
    (.num 42600) (.var 3)) (.num 275623)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 37656)
    (.var 3)) (.num 224361)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 11100) (.var
    3)) (.num 73858)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 1308)) (.var 3))
    (.num 5357)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 1098)) (.var 3))
    (.neg (.num 1579))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 120)) (.var
    3)) (.neg (.num 200))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 29382) (.var 3)) (.num
    135048)) (.var 1)) (.mul (.add (.mul (.num 96270) (.var 3)) (.num 387450)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.num 122916) (.var 3)) (.num 437290)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.num 77580) (.var 3)) (.num 248730)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.num 25626) (.var 3)) (.num 77384)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.num 4518) (.var 3)) (.num 14122)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.num 474) (.var 3)) (.num 1662)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.num 30)
    (.var 3)) (.num 102)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 34044) (.var 3)) (.num
    102276)) (.var 1)) (.mul (.add (.mul (.num 134634) (.var 3)) (.num 362484)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.num 221502) (.var 3)) (.num 537454)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.num 199140) (.var 3)) (.num 440474)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.num 108840) (.var 3)) (.num 223906)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.num 38160) (.var 3)) (.num 74985)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.num 8616) (.var 3)) (.num 16456)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.num
    1128) (.var 3)) (.num 2069)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.num 60) (.var
    3)) (.num 100)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 22140) (.var 3))
    (.num 46188)) (.var 1)) (.mul (.add (.mul (.num 101736) (.var 3)) (.num 196344)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.num 201246) (.var 3)) (.num 361260)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.num 226554) (.var 3)) (.num 381774)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.num 161772) (.var 3)) (.num 259239)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.num 76866) (.var 3)) (.num 118795)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.num 24342) (.var 3)) (.num 36609)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul
    (.num 4836) (.var 3)) (.num 7057)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.num 510)
    (.var 3)) (.num 705)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.num 18) (.var 3))
    (.num 21)) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6048)
    (.var 3)) (.num 9216)) (.var 1)) (.mul (.add (.mul (.num 31428) (.var 3)) (.num 45684)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.num 71772) (.var 3)) (.num 99876)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.num 95394) (.var 3)) (.num 127752)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.num 82260) (.var 3)) (.num 106726)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.num 48288) (.var 3)) (.num 61115)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.num 19452) (.var 3)) (.num 24141)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.num 5190) (.var 3)) (.num 6328)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.num
    828) (.var 3)) (.num 990)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.num 60) (.var 3))
    (.num 70)) (.pow (.var 2) 9))) (.var 1)))) (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0)
    (.var 1)) (.var 2))))) (.mul (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 45) (.var 1)) (.mul
    (.num 15) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 525) (.var 1)) (.mul (.num 366)
    (.var 2))) (.var 1)) (.mul (.num 51) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.num 2784) (.var 1)) (.mul (.num 2919) (.var 2))) (.var 1)) (.mul (.num 804)
    (.pow (.var 2) 2))) (.var 1)) (.mul (.num 39) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 8664) (.var 1)) (.mul (.num 12063) (.var 2))) (.var 1))
    (.mul (.num 4953) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 459) (.pow (.var 2) 3))) (.var 1))
    (.mul (.neg (.num 45)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 17631) (.var 1)) (.mul (.num 31125) (.var 2))) (.var 1)) (.mul
    (.num 17784) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 3054) (.pow (.var 2) 3))) (.var 1))
    (.mul (.neg (.num 261)) (.pow (.var 2) 4))) (.var 1)) (.mul (.neg (.num 75)) (.pow (.var 2)
    5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    24606) (.var 1)) (.mul (.num 54576) (.var 2))) (.var 1)) (.mul (.num 43500) (.pow (.var 2)
    2))) (.var 1)) (.mul (.num 14550) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 1581) (.pow (.var
    2) 4))) (.var 1)) (.mul (.neg (.num 84)) (.pow (.var 2) 5))) (.var 1)) (.mul (.neg (.num 15))
    (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 23058) (.var 1)) (.mul (.num 63774) (.var 2))) (.var 1)) (.mul
    (.num 69486) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 38730) (.pow (.var 2) 3))) (.var 1))
    (.mul (.num 12390) (.pow (.var 2) 4))) (.var 1)) (.mul (.num 2541) (.pow (.var 2) 5))) (.var
    1)) (.mul (.num 342) (.pow (.var 2) 6))) (.var 1)) (.mul (.num 21) (.pow (.var 2) 7)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 12960) (.var 1)) (.mul (.num 43740) (.var 2))) (.var 1)) (.mul (.num 61794) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.num 48744) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 24396)
    (.pow (.var 2) 4))) (.var 1)) (.mul (.num 8247) (.pow (.var 2) 5))) (.var 1)) (.mul (.num
    1821) (.pow (.var 2) 6))) (.var 1)) (.mul (.num 219) (.pow (.var 2) 7))) (.var 1)) (.mul (.num
    9) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3240) (.var 1)) (.mul (.num 12960) (.var 2)))
    (.var 1)) (.mul (.num 22482) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 22626) (.pow (.var 2)
    3))) (.var 1)) (.mul (.num 14883) (.pow (.var 2) 4))) (.var 1)) (.mul (.num 6705) (.pow (.var
    2) 5))) (.var 1)) (.mul (.num 2022) (.pow (.var 2) 6))) (.var 1)) (.mul (.num 366) (.pow (.var
    2) 7))) (.var 1)) (.mul (.num 30) (.pow (.var 2) 8))) (.var 1)))) (.var 0)) (.mul (.add (.var
    0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))))) (.mul (.num 20) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 45) (.var 1)) (.mul (.num 15) (.var 2))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 648)) (.var 1)) (.mul (.add
    (.mul (.num 16) (.var 3)) (.num 464)) (.var 2))) (.var 1)) (.mul (.num 66) (.pow (.var 2)
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 3))
    (.num 224)) (.var 3)) (.num 4334)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 3))
    (.num 308)) (.var 3)) (.num 4729)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    12) (.var 3)) (.num 74)) (.var 3)) (.num 1394)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 3) (.var 3)) (.neg (.num 10))) (.var 3)) (.num 79)) (.pow (.var 2)
    3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    93) (.var 3)) (.num 1566)) (.var 3)) (.num 17843)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 279) (.var 3)) (.num 2844)) (.var 3)) (.num 26308)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 303) (.var 3)) (.num 1420)) (.var 3)) (.num 12043)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 141) (.var 3)) (.num 108)) (.var 3)) (.num
    1572)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.neg
    (.num 34))) (.var 3)) (.neg (.num 46))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 672) (.var 3)) (.num 7220))
    (.var 3)) (.num 51068)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2352) (.var 3)) (.num
    16982)) (.var 3)) (.num 97008)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3192)
    (.var 3)) (.num 13730)) (.var 3)) (.num 63511)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2100) (.var 3)) (.num 4456)) (.var 3)) (.num 15750)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 672) (.var 3)) (.num 502)) (.var 3)) (.num
    715)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 84) (.var 3)) (.num
    14)) (.var 3)) (.neg (.num 124))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2931) (.var 3)) (.num
    24022)) (.var 3)) (.num 108773)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11724) (.var
    3)) (.num 71374)) (.var 3)) (.num 261737)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 18996) (.var 3)) (.num 82182)) (.var 3)) (.num 238433)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 15954) (.var 3)) (.num 47310)) (.var 3)) (.num 102182))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7329) (.var 3)) (.num
    14930)) (.var 3)) (.num 21020)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1746) (.var 3)) (.num 2688)) (.var 3)) (.num 2037)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 168) (.var 3)) (.num 238)) (.var 3)) (.num 110)) (.pow (.var 2)
    6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 8448) (.var 3)) (.num 58172)) (.var 3)) (.num 177083))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38016) (.var 3)) (.num 210928)) (.var 3)) (.num
    532532)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 71412) (.var 3)) (.num
    315664)) (.var 3)) (.num 652230)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 72534) (.var 3)) (.num 255918)) (.var 3)) (.num 425352)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 42990) (.var 3)) (.num 124186)) (.var 3)) (.num 164394))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14844) (.var 3)) (.num
    37120)) (.var 3)) (.num 40064)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2754) (.var 3)) (.num 6434)) (.var 3)) (.num 6077)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 210) (.var 3)) (.num 490)) (.var 3)) (.num 436)) (.pow (.var 2)
    7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 16560) (.var 3)) (.num 99532)) (.var 3)) (.num
    217418)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 82800) (.var 3)) (.num 425516)) (.var
    3)) (.num 798829)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 176685) (.var 3))
    (.num 777418)) (.var 3)) (.num 1252323)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 209940) (.var 3)) (.num 799462)) (.var 3)) (.num 1108821)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 151716) (.var 3)) (.num 511622)) (.var 3)) (.num
    619449)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 68118) (.var 3))
    (.num 210582)) (.var 3)) (.num 228809)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 18471) (.var 3)) (.num 54478)) (.var 3)) (.num 55040)) (.pow (.var 2) 6))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 2742) (.var 3)) (.num 7980)) (.var 3)) (.num 7705))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 168) (.var 3)) (.num 490))
    (.var 3)) (.num 454)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 21852) (.var 3)) (.num 115164)) (.var 3)) (.num 192486)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 120186) (.var 3)) (.num 564720)) (.var 3)) (.num 839874)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 286998) (.var 3)) (.num 1209064)) (.var 3)) (.num
    1606206)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 390096) (.var 3))
    (.num 1490720)) (.var 3)) (.num 1784292)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 332064) (.var 3)) (.num 1172168)) (.var 3)) (.num 1282706)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 183078) (.var 3)) (.num 611026)) (.var 3))
    (.num 623462)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 65058) (.var
    3)) (.num 210414)) (.var 3)) (.num 204307)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 14244) (.var 3)) (.num 45560)) (.var 3)) (.num 42710)) (.pow (.var 2) 7)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1716) (.var 3)) (.num 5482)) (.var 3)) (.num
    4972)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 84) (.var 3)) (.num
    266)) (.var 3)) (.num 229)) (.pow (.var 2) 9)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 18522) (.var 3)) (.num 84804)) (.var 3)) (.num 114354)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 111132) (.var 3)) (.num 467496)) (.var 3)) (.num 576792))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 293544) (.var 3)) (.num 1141844))
    (.var 3)) (.num 1295544)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    449010) (.var 3)) (.num 1631596)) (.var 3)) (.num 1716546)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 439731) (.var 3)) (.num 1513414)) (.var 3)) (.num
    1493253)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 287316) (.var 3))
    (.num 951874)) (.var 3)) (.num 892535)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 126252) (.var 3)) (.num 409246)) (.var 3)) (.num 369283)) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36540) (.var 3)) (.num 117438)) (.var 3)) (.num
    102876)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6567) (.var 3))
    (.num 21070)) (.var 3)) (.num 17948)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 642) (.var 3)) (.num 2048)) (.var 3)) (.num 1679)) (.pow (.var 2) 9))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 74)) (.var 3)) (.num 56)) (.pow (.var
    2) 10)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    9072) (.var 3)) (.num 35640)) (.var 3)) (.num 40392)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 58968) (.var 3)) (.num 217728)) (.var 3)) (.num 230364)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 170676) (.var 3)) (.num 595692)) (.var 3)) (.num 591162)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 290070) (.var 3)) (.num 964704))
    (.var 3)) (.num 904014)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    321138) (.var 3)) (.num 1027956)) (.var 3)) (.num 917159)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 242568) (.var 3)) (.num 755664)) (.var 3)) (.num 647652)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 127020) (.var 3)) (.num 389260))
    (.var 3)) (.num 323052)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    45780) (.var 3)) (.num 139194)) (.var 3)) (.num 112458)) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 10986) (.var 3)) (.num 33286)) (.var 3)) (.num 26198)) (.pow
    (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1629) (.var 3)) (.num 4908)) (.var
    3)) (.num 3739)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 126) (.var
    3)) (.num 372)) (.var 3)) (.num 269)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3) (.var 3)) (.num 8)) (.var 3)) (.num 5)) (.pow (.var 2) 11)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1944) (.var 3)) (.num
    6480)) (.var 3)) (.num 6372)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13608) (.var 3))
    (.num 43416)) (.var 3)) (.num 40392)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    42822) (.var 3)) (.num 131340)) (.var 3)) (.num 116094)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 80028) (.var 3)) (.num 237312)) (.var 3)) (.num 200376)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 98784) (.var 3)) (.num 285120))
    (.var 3)) (.num 231378)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    84654) (.var 3)) (.num 239520)) (.var 3)) (.num 187953)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 51453) (.var 3)) (.num 143658)) (.var 3)) (.num 109563)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 22212) (.var 3)) (.num 61506))
    (.var 3)) (.num 45723)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    6687) (.var 3)) (.num 18408)) (.var 3)) (.num 13328)) (.pow (.var 2) 8))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1341) (.var 3)) (.num 3666)) (.var 3)) (.num 2569)) (.pow (.var
    2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 162) (.var 3)) (.num 438)) (.var 3))
    (.num 293)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3))
    (.num 24)) (.var 3)) (.num 15)) (.pow (.var 2) 11))) (.var 1)))))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.add (.add (.add (.add (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    15) (.var 0)) (.mul (.neg (.num 24)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    3) (.var 3)) (.neg (.num 10))) (.var 3)) (.neg (.num 2))) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 26)) (.var 3)) (.num 26)) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 8)) (.var 3)) (.num 5)) (.pow
    (.var 2) 4)))) (.mul (.mul (.num 20) (.add (.mul (.add (.mul (.add (.mul (.num 11) (.var 0))
    (.mul (.neg (.num 21)) (.var 2))) (.var 0)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.num
    3)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.num 6) (.var 3)) (.num 7)) (.pow (.var
    2) 3)))) (.pow (.var 0) 1))) (.mul (.mul (.num 40) (.add (.mul (.add (.mul (.num 3) (.var 0))
    (.mul (.neg (.num 6)) (.var 2))) (.var 0)) (.mul (.num 3) (.pow (.var 2) 2)))) (.pow (.var 0)
    2))) (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 0)) (.mul
    (.neg (.num 16)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.neg
    (.num 22))) (.var 3)) (.neg (.num 33))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 6) (.var 3)) (.num 14)) (.var 3)) (.num 12)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 8)) (.var 3)) (.num 5)) (.pow (.var 2) 4)))))
    (.mul (.mul (.num 12) (.add (.mul (.add (.mul (.add (.mul (.num 17) (.var 0)) (.mul (.neg
    (.num 21)) (.var 2))) (.var 0)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 3)))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.num 6) (.var 3)) (.num 7)) (.pow (.var 2)
    3)))) (.pow (.var 0) 1))) (.mul (.mul (.num 12) (.add (.mul (.add (.mul (.num 3) (.var 0))
    (.mul (.neg (.num 6)) (.var 2))) (.var 0)) (.mul (.num 3) (.pow (.var 2) 2)))) (.pow (.var 0)
    2))) (.mul (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 26) (.var 0)) (.mul
    (.neg (.num 23)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.neg
    (.num 16))) (.var 3)) (.neg (.num 19))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 6) (.var 3)) (.num 20)) (.var 3)) (.num 19)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 8)) (.var 3)) (.num 5)) (.pow (.var 2) 4)))))
    (.mul (.mul (.num 48) (.add (.mul (.add (.mul (.add (.mul (.num 14) (.var 0)) (.mul (.neg
    (.num 21)) (.var 2))) (.var 0)) (.mul (.mul (.neg (.num 6)) (.var 3)) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.num 6) (.var 3)) (.num 7)) (.pow (.var 2) 3)))) (.pow (.var 0)
    1))) (.mul (.mul (.num 72) (.add (.mul (.add (.mul (.num 3) (.var 0)) (.mul (.neg (.num 6))
    (.var 2))) (.var 0)) (.mul (.num 3) (.pow (.var 2) 2)))) (.pow (.var 0) 2))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.add (.add (.add (.add
    (.add (.add (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 240) (.var 0)) (.mul (.add (.mul (.num 56) (.var 3)) (.num
    1848)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 64)) (.var
    3)) (.num 2261)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 210) (.var
    3)) (.neg (.num 456))) (.var 3)) (.neg (.num 744))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 642) (.var 3)) (.num 36)) (.var 3)) (.neg (.num 598))) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 912) (.var 3)) (.num 2168)) (.var 3)) (.num
    2380)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 636) (.var 3)) (.num
    2188)) (.var 3)) (.num 2087)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 198) (.var 3)) (.num 648)) (.var 3)) (.num 504)) (.pow (.var 2) 7))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 18) (.var 3)) (.num 48)) (.var 3)) (.num 30)) (.pow (.var 2)
    8)))) (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 102) (.var 0)) (.mul (.add (.mul (.num 12) (.var 3)) (.num 710)) (.var
    2))) (.var 0)) (.mul (.num 538) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.neg (.num
    168)) (.var 3)) (.neg (.num 800))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.neg (.num
    108)) (.var 3)) (.neg (.num 244))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.num 336)
    (.var 3)) (.num 776)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.num 276) (.var 3))
    (.num 412)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.num 36) (.var 3)) (.num 42))
    (.pow (.var 2) 7)))) (.pow (.var 0) 1))) (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 18) (.var 0)) (.mul (.num 114) (.var 2)))
    (.var 0)) (.mul (.num 42) (.pow (.var 2) 2))) (.var 0)) (.mul (.neg (.num 156)) (.pow (.var 2)
    3))) (.var 0)) (.mul (.num 42) (.pow (.var 2) 4))) (.var 0)) (.mul (.num 114) (.pow (.var 2)
    5))) (.var 0)) (.mul (.num 18) (.pow (.var 2) 6)))) (.pow (.var 0) 2))) (.mul (.num 3) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 156) (.var 0)) (.mul (.add (.mul (.num 44) (.var 3)) (.num 1175)) (.var 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 58)) (.var 3)) (.num 1230)) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 210) (.var 3)) (.neg (.num 246)))
    (.var 3)) (.neg (.num 840))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    642) (.var 3)) (.num 480)) (.var 3)) (.neg (.num 54))) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 912) (.var 3)) (.num 2414)) (.var 3)) (.num 2505)) (.pow (.var
    2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 636) (.var 3)) (.num 2170)) (.var 3))
    (.num 1986)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 198) (.var 3))
    (.num 624)) (.var 3)) (.num 476)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 18) (.var 3)) (.num 48)) (.var 3)) (.num 30)) (.pow (.var 2) 8))))) (.mul (.mul (.num
    12) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    84) (.var 0)) (.mul (.add (.mul (.num 12) (.var 3)) (.num 575)) (.var 2))) (.var 0)) (.mul
    (.num 367) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.neg (.num 168)) (.var 3)) (.neg
    (.num 761))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.neg (.num 108)) (.var 3)) (.neg
    (.num 139))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.num 336) (.var 3)) (.num 776))
    (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.num 276) (.var 3)) (.num 400)) (.pow (.var
    2) 6))) (.var 0)) (.mul (.add (.mul (.num 36) (.var 3)) (.num 42)) (.pow (.var 2) 7)))) (.pow
    (.var 0) 1))) (.mul (.mul (.num 18) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 18) (.var 0)) (.mul (.num 114) (.var 2))) (.var 0)) (.mul (.num 42)
    (.pow (.var 2) 2))) (.var 0)) (.mul (.neg (.num 156)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.num 42) (.pow (.var 2) 4))) (.var 0)) (.mul (.num 114) (.pow (.var 2) 5))) (.var 0)) (.mul
    (.num 18) (.pow (.var 2) 6)))) (.pow (.var 0) 2))) (.mul (.num 3) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 342) (.var 0))
    (.mul (.add (.mul (.num 68) (.var 3)) (.num 2677)) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 24) (.var 3)) (.num 70)) (.var 3)) (.num 3559)) (.pow (.var 2) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 210) (.var 3)) (.neg (.num 666))) (.var 3)) (.neg
    (.num 804))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 642) (.var 3))
    (.neg (.num 408))) (.var 3)) (.neg (.num 1832))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 912) (.var 3)) (.num 1922)) (.var 3)) (.num 1739)) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 636) (.var 3)) (.num 2206)) (.var 3)) (.num
    2077)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 198) (.var 3)) (.num
    672)) (.var 3)) (.num 532)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    18) (.var 3)) (.num 48)) (.var 3)) (.num 30)) (.pow (.var 2) 8))))) (.mul (.mul (.num 6) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 120) (.var
    0)) (.mul (.add (.mul (.num 12) (.var 3)) (.num 845)) (.var 2))) (.var 0)) (.mul (.num 709)
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.neg (.num 168)) (.var 3)) (.neg (.num 839)))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.neg (.num 108)) (.var 3)) (.neg (.num 349)))
    (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.num 336) (.var 3)) (.num 776)) (.pow (.var
    2) 5))) (.var 0)) (.mul (.add (.mul (.num 276) (.var 3)) (.num 424)) (.pow (.var 2) 6))) (.var
    0)) (.mul (.add (.mul (.num 36) (.var 3)) (.num 42)) (.pow (.var 2) 7)))) (.pow (.var 0) 1)))
    (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 18) (.var 0)) (.mul (.num 114) (.var 2))) (.var 0)) (.mul (.num 42) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.neg (.num 156)) (.pow (.var 2) 3))) (.var 0)) (.mul (.num 42) (.pow (.var 2)
    4))) (.var 0)) (.mul (.num 114) (.pow (.var 2) 5))) (.var 0)) (.mul (.num 18) (.pow (.var 2)
    6)))) (.pow (.var 0) 2))) (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 120) (.var 0)) (.mul (.add (.mul (.num 28)
    (.var 3)) (.num 924)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 3))
    (.num 32)) (.var 3)) (.num 1111)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 105) (.var 3)) (.neg (.num 228))) (.var 3)) (.neg (.num 507))) (.pow (.var 2) 3))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 321) (.var 3)) (.num 18)) (.var 3)) (.neg (.num 548)))
    (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 456) (.var 3)) (.num 1084))
    (.var 3)) (.num 1019)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 318)
    (.var 3)) (.num 1094)) (.var 3)) (.num 1006)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 99) (.var 3)) (.num 324)) (.var 3)) (.num 252)) (.pow (.var 2) 7))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.num 24)) (.var 3)) (.num 15)) (.pow
    (.var 2) 8))))) (.mul (.mul (.num 18) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 51) (.var 0)) (.mul (.add (.mul (.num 6) (.var 3)) (.num
    355)) (.var 2))) (.var 0)) (.mul (.num 269) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.neg (.num 84)) (.var 3)) (.neg (.num 400))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.neg (.num 54)) (.var 3)) (.neg (.num 122))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.num 168) (.var 3)) (.num 388)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.num 138)
    (.var 3)) (.num 206)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.num 18) (.var 3))
    (.num 21)) (.pow (.var 2) 7)))) (.pow (.var 0) 1))) (.mul (.mul (.num 18) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9) (.var 0)) (.mul (.num 57) (.var
    2))) (.var 0)) (.mul (.num 21) (.pow (.var 2) 2))) (.var 0)) (.mul (.neg (.num 78)) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.num 21) (.pow (.var 2) 4))) (.var 0)) (.mul (.num 57) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.num 9) (.pow (.var 2) 6)))) (.pow (.var 0) 2))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow1137.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow1137.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow1137.leading0 e g v + f * FullLow1137.leading1 e g v +
        f^2 * FullLow1137.remainder e f g v := by
  have hden : denominatorOne FullLow1137.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow1137.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow1137.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 17179869184 12 11 2) lhs =
      value (Encoding4.vars 17179869184 12 11 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 17179869184 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 11 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 11 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow1137.source e f g v =
      FullLow1137.leading0 e g v + f * FullLow1137.leading1 e g v +
        f^2 * FullLow1137.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 17179869184 12 11 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow113Encoded7

namespace SPR.N6.Tail.CoreEndpoint.FullLow113
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition7 (e f g v : ℝ) :
    FullLow1137.source e f g v =
      FullLow1137.leading0 e g v + f * FullLow1137.leading1 e g v +
        f^2 * FullLow1137.remainder e f g v :=
  FullLow113Encoded7.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow113
