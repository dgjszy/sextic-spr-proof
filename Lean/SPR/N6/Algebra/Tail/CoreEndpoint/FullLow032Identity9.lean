import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow032Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^9 layer of FullLow032.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow032Encoded9
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.add (.add (.add (.mul (.mul (.num 38) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 90) (.var 1)) (.mul (.num 30)
    (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 750) (.var 1)) (.mul (.num 516) (.var 2)))
    (.var 1)) (.mul (.num 66) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.num 2733) (.var 1)) (.mul (.num 2808) (.var 2))) (.var 1)) (.mul (.num 687) (.pow (.var 2)
    2))) (.var 1)) (.mul (.num 12) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 5403) (.var 1)) (.mul (.num 7278) (.var 2))) (.var 1)) (.mul (.num
    2547) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 12) (.pow (.var 2) 3))) (.var 1)) (.mul (.neg
    (.num 60)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 6429) (.var 1)) (.mul (.num 11082) (.var 2))) (.var 1)) (.mul (.num 5565)
    (.pow (.var 2) 2))) (.var 1)) (.mul (.num 360) (.pow (.var 2) 3))) (.var 1)) (.mul (.neg (.num
    294)) (.pow (.var 2) 4))) (.var 1)) (.mul (.neg (.num 42)) (.pow (.var 2) 5)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4590) (.var 1))
    (.mul (.num 10314) (.var 2))) (.var 1)) (.mul (.num 7971) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.num 2316) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 75) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.neg (.num 60)) (.pow (.var 2) 5))) (.var 1)) (.mul (.neg (.num 6)) (.pow (.var 2) 6))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    1512) (.var 1)) (.mul (.num 4374) (.var 2))) (.var 1)) (.mul (.num 4893) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.num 2724) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 816) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.num 132) (.pow (.var 2) 5))) (.var 1)) (.mul (.num 9) (.pow (.var 2) 6)))
    (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3))
    (.mul (.mul (.mul (.num 9) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num 24) (.var 2))) (.var 0)) (.add
    (.mul (.add (.mul (.num 666) (.var 1)) (.mul (.num 570) (.var 2))) (.var 1)) (.mul (.num 120)
    (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 3252) (.var 1)) (.mul
    (.num 4206) (.var 2))) (.var 1)) (.mul (.num 1758) (.pow (.var 2) 2))) (.var 1)) (.mul (.num
    240) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    8646) (.var 1)) (.mul (.num 14778) (.var 2))) (.var 1)) (.mul (.num 9156) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.num 2448) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 240) (.pow (.var 2)
    4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13800) (.var
    1)) (.mul (.num 29070) (.var 2))) (.var 1)) (.mul (.num 23436) (.pow (.var 2) 2))) (.var 1))
    (.mul (.num 9030) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 1668) (.pow (.var 2) 4))) (.var
    1)) (.mul (.num 120) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 13938) (.var 1)) (.mul (.num 34962) (.var 2))) (.var 1))
    (.mul (.num 34512) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 16998) (.pow (.var 2) 3))) (.var
    1)) (.mul (.num 4332) (.pow (.var 2) 4))) (.var 1)) (.mul (.num 534) (.pow (.var 2) 5))) (.var
    1)) (.mul (.num 24) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 8568) (.var 1)) (.mul (.num 25272) (.var 2))) (.var
    1)) (.mul (.num 30048) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 18426) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.num 6096) (.pow (.var 2) 4))) (.var 1)) (.mul (.num 1020) (.pow (.var 2)
    5))) (.var 1)) (.mul (.num 66) (.pow (.var 2) 6))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2448) (.var 1)) (.mul (.num
    8424) (.var 2))) (.var 1)) (.mul (.num 12006) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 9174)
    (.pow (.var 2) 3))) (.var 1)) (.mul (.num 4002) (.pow (.var 2) 4))) (.var 1)) (.mul (.num 960)
    (.pow (.var 2) 5))) (.var 1)) (.mul (.num 102) (.pow (.var 2) 6))) (.pow (.var 1) 2)))) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.add (.var 1)
    (.var 2)))) (.mul (.mul (.num 25) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 330) (.var 1)) (.mul (.num 110) (.var
    2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num 3420)) (.var 1))
    (.mul (.add (.mul (.num 60) (.var 3)) (.num 2398)) (.var 2))) (.var 1)) (.mul (.num 318) (.pow
    (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 564) (.var 3))
    (.num 15937)) (.var 1)) (.mul (.add (.mul (.num 708) (.var 3)) (.num 16802)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.num 84) (.var 3)) (.num 4407)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 60)) (.var 3)) (.num 122)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2556) (.var 3)) (.num 43181)) (.var 1))
    (.mul (.add (.mul (.num 3924) (.var 3)) (.num 60500)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.num 852) (.var 3)) (.num 23569)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    744)) (.var 3)) (.num 1072)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 228))
    (.var 3)) (.neg (.num 478))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 7344) (.var 3)) (.num 76250)) (.var 1)) (.mul
    (.add (.mul (.num 14154) (.var 3)) (.num 136457)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num
    5994) (.var 3)) (.num 75147)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    2610)) (.var 3)) (.num 8463)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num
    2106)) (.var 3)) (.neg (.num 3399))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 312)) (.var 3)) (.neg (.num 622))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 15072) (.var 3)) (.num
    92998)) (.var 1)) (.mul (.add (.mul (.num 38124) (.var 3)) (.num 213020)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.num 30900) (.var 3)) (.num 170566)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.num 5484) (.var 3)) (.num 51272)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 3864)) (.var 3)) (.num 428)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 1668)) (.var 3)) (.neg (.num 2158))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 168)) (.var 3)) (.neg (.num 238))) (.pow (.var 2) 6)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 21000) (.var 3)) (.num 77030)) (.var 1)) (.mul (.add (.mul (.num 68316) (.var 3)) (.num
    225338)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 85092) (.var 3)) (.num 256440)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 50292) (.var 3)) (.num 143702)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.num 13896) (.var 3)) (.num 41557)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.num 1332) (.var 3)) (.num 6050)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.neg (.num 60)) (.var 3)) (.num 409)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 12)) (.var 3)) (.num 6)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 16668) (.var 3)) (.num 38448)) (.var 1)) (.mul (.add (.mul (.num 66024) (.var 3))
    (.num 140040)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 107808) (.var 3)) (.num 211370))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 94716) (.var 3)) (.num 173356)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.num 49332) (.var 3)) (.num 85573)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.num 15888) (.var 3)) (.num 26580)) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.num 3144) (.var 3)) (.num 5103)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.num 336) (.var 3)) (.num 512)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add
    (.mul (.num 12) (.var 3)) (.num 14)) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 5472) (.var 3)) (.num 8496)) (.var 1)) (.mul (.add (.mul (.num 25236) (.var 3)) (.num
    37224)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 49728) (.var 3)) (.num 69874)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 55140) (.var 3)) (.num 74134)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.num 38148) (.var 3)) (.num 49382)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.num 17166) (.var 3)) (.num 21553)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.num 4986) (.var 3)) (.num 6111)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.num 858) (.var 3)) (.num 1029)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.num
    66) (.var 3)) (.num 77)) (.pow (.var 2) 8))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1))
    (.add (.add (.var 0) (.var 1)) (.var 2))) 2))) (.mul (.mul (.mul (.num 18) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 90) (.var
    1)) (.mul (.num 30) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 900) (.var 1)) (.mul
    (.num 624) (.var 2))) (.var 1)) (.mul (.num 84) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 4029) (.var 1)) (.mul (.num 4194) (.var 2))) (.var 1)) (.mul
    (.num 1107) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 42) (.pow (.var 2) 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 10275) (.var 1)) (.mul (.num 14169) (.var 2)))
    (.var 1)) (.mul (.num 5541) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 375) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.neg (.num 72)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 16584) (.var 1)) (.mul (.num 29148) (.var 2))) (.var 1))
    (.mul (.num 16104) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 2340) (.pow (.var 2) 3))) (.var
    1)) (.mul (.neg (.num 378)) (.pow (.var 2) 4))) (.var 1)) (.mul (.neg (.num 78)) (.pow (.var
    2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 17496) (.var 1)) (.mul (.num 39192) (.var 2))) (.var 1)) (.mul (.num 31230) (.pow (.var
    2) 2))) (.var 1)) (.mul (.num 10284) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 1050) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.neg (.num 72)) (.pow (.var 2) 5))) (.var 1)) (.mul (.neg (.num
    12)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 11124) (.var 1)) (.mul (.num 31464) (.var 2))) (.var 1))
    (.mul (.num 34944) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 19788) (.pow (.var 2) 3))) (.var
    1)) (.mul (.num 6351) (.pow (.var 2) 4))) (.var 1)) (.mul (.num 1242) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.num 141) (.pow (.var 2) 6))) (.var 1)) (.mul (.num 6) (.pow (.var 2) 7))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 3168) (.var 1)) (.mul (.num 10980) (.var 2))) (.var 1)) (.mul (.num 15840) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.num 12624) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 6231)
    (.pow (.var 2) 4))) (.var 1)) (.mul (.num 1983) (.pow (.var 2) 5))) (.var 1)) (.mul (.num 381)
    (.pow (.var 2) 6))) (.var 1)) (.mul (.num 33) (.pow (.var 2) 7))) (.var 1)))) (.var 0)) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2))) (.mul (.mul
    (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 55) (.var 1)) (.mul (.num 22) (.var 2))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 731)) (.var 1)) (.mul (.add
    (.mul (.num 6) (.var 3)) (.num 631)) (.var 2))) (.var 1)) (.mul (.num 134) (.pow (.var 2)
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num
    4336)) (.var 1)) (.mul (.add (.mul (.num 78) (.var 3)) (.num 5690)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.num 12) (.var 3)) (.num 2422)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 6)) (.var 3)) (.num 336)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 258) (.var 3)) (.num 14705)) (.var 1)) (.mul (.add
    (.mul (.num 360) (.var 3)) (.num 25648)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 6) (.var
    3)) (.num 16226)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 132)) (.var 3))
    (.num 4407)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 36)) (.var 3)) (.num
    434)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 612) (.var 3)) (.num 31566)) (.var 1)) (.mul (.add (.mul (.num 660)
    (.var 3)) (.num 68093)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 834)) (.var 3))
    (.num 56226)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 1440)) (.var 3))
    (.num 22023)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 648)) (.var 3))
    (.num 4054)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 90)) (.var 3)) (.num
    280)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 1242) (.var 3)) (.num 45706)) (.var 1)) (.mul (.add (.mul
    (.num 1110) (.var 3)) (.num 117034)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 3720))
    (.var 3)) (.num 117640)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 6942))
    (.var 3)) (.num 58136)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 4464))
    (.var 3)) (.num 14309)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 1230))
    (.var 3)) (.num 1529)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 120)) (.var
    3)) (.num 42)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2916) (.var 3)) (.num 46236)) (.var 1))
    (.mul (.add (.mul (.num 5670) (.var 3)) (.num 137888)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 2016)) (.var 3)) (.num 163834)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 13140)) (.var 3)) (.num 96960)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 13044)) (.var 3)) (.num 28234)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 5772)) (.var 3)) (.num 2810)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 1188)) (.var 3)) (.neg (.num 298))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 90)) (.var 3)) (.neg (.num 56))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 5004) (.var 3)) (.num 32174)) (.var 1)) (.mul (.add (.mul (.num 15480) (.var 3))
    (.num 111216)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 14466) (.var 3)) (.num 155932))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 2304)) (.var 3)) (.num 111386))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 13602)) (.var 3)) (.num 39981))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 10368)) (.var 3)) (.num 4410))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 3624)) (.var 3)) (.neg (.num
    1418))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 600)) (.var 3)) (.neg
    (.num 459))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num 36)) (.var 3)) (.neg
    (.num 34))) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4428) (.var 3))
    (.num 13860)) (.var 1)) (.mul (.add (.mul (.num 17496) (.var 3)) (.num 55404)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.num 26892) (.var 3)) (.num 91932)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.num 18522) (.var 3)) (.num 80680)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.num 2400) (.var 3)) (.num 38436)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 4896)) (.var 3)) (.num 7959)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 3510)) (.var 3)) (.neg (.num 820))) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 1050)) (.var 3)) (.neg (.num 771))) (.pow (.var 2) 7))) (.var 1))
    (.mul (.add (.mul (.neg (.num 144)) (.var 3)) (.neg (.num 137))) (.pow (.var 2) 8))) (.var 1))
    (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 6))) (.pow (.var 2) 9)))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 1512) (.var 3)) (.num 2736)) (.var 1)) (.mul (.add
    (.mul (.num 7020) (.var 3)) (.num 12564)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 13644)
    (.var 3)) (.num 24502)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 14184) (.var 3))
    (.num 26232)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.num 8124) (.var 3)) (.num
    16434)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.num 2046) (.var 3)) (.num 5704))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 312)) (.var 3)) (.num 694)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 378)) (.var 3)) (.neg (.num 218))) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num 108)) (.var 3)) (.neg (.num 96))) (.pow
    (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg (.num 12))) (.pow
    (.var 2) 9))) (.var 1)))) (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2)))) (.add (.var 1) (.var 2)))) (.mul (.mul (.num 16) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 225) (.var 1)) (.mul (.num 75) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.num 80) (.var 3)) (.num 2865)) (.var 1)) (.mul (.add (.mul (.num 80) (.var 3)) (.num
    2050)) (.var 2))) (.var 1)) (.mul (.num 285) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.num 976)) (.var 3)) (.num
    16800)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 75) (.var 3)) (.num 1332)) (.var 3))
    (.num 18331)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num
    306)) (.var 3)) (.num 5299)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    15) (.var 3)) (.neg (.num 50))) (.var 3)) (.num 268)) (.pow (.var 2) 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 408) (.var 3)) (.num
    5936)) (.var 3)) (.num 59938)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1224) (.var 3))
    (.num 10704)) (.var 3)) (.num 88587)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1329) (.var 3)) (.num 5198)) (.var 3)) (.num 40039)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 618) (.var 3)) (.num 278)) (.var 3)) (.num 4870)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 105) (.var 3)) (.neg (.num 152))) (.var 3))
    (.neg (.num 220))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2562) (.var 3)) (.num 23700)) (.var 3)) (.num
    146959)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8967) (.var 3)) (.num 55698)) (.var 3))
    (.num 281537)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12159) (.var 3)) (.num
    44688)) (.var 3)) (.num 184483)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 7980) (.var 3)) (.num 14098)) (.var 3)) (.num 45064)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 2541) (.var 3)) (.num 1434)) (.var 3)) (.num 1785)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 315) (.var 3)) (.num 26)) (.var
    3)) (.neg (.num 374))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9540) (.var 3)) (.num
    67640)) (.var 3)) (.num 264761)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38160) (.var
    3)) (.num 202312)) (.var 3)) (.num 648291)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 61743) (.var 3)) (.num 234100)) (.var 3)) (.num 600184)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 51669) (.var 3)) (.num 134910)) (.var 3)) (.num 261592))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 23574) (.var 3)) (.num
    42378)) (.var 3)) (.num 55114)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 5553) (.var 3)) (.num 7556)) (.var 3)) (.num 5586)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 525) (.var 3)) (.num 660)) (.var 3)) (.num 310)) (.pow (.var 2)
    6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 22896) (.var 3)) (.num 137032)) (.var 3)) (.num 356691))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 103032) (.var 3)) (.num 502414)) (.var 3)) (.num
    1099523)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 193176) (.var 3)) (.num
    758936)) (.var 3)) (.num 1379487)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 195300) (.var 3)) (.num 618544)) (.var 3)) (.num 919882)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 114774) (.var 3)) (.num 299556)) (.var 3)) (.num 361058))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 39093) (.var 3)) (.num
    88406)) (.var 3)) (.num 87722)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 7104) (.var 3)) (.num 14930)) (.var 3)) (.num 12851)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 525) (.var 3)) (.num 1090)) (.var 3)) (.num 860)) (.pow
    (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 35949) (.var 3)) (.num 187134))
    (.var 3)) (.num 347931)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 179745) (.var 3)) (.num
    810188)) (.var 3)) (.num 1313882)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    382686) (.var 3)) (.num 1494754)) (.var 3)) (.num 2110439)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 452274) (.var 3)) (.num 1544224)) (.var 3)) (.num
    1902253)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 323727) (.var 3))
    (.num 984758)) (.var 3)) (.num 1068618)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 143151) (.var 3)) (.num 399388)) (.var 3)) (.num 389318)) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 37929) (.var 3)) (.num 100388)) (.var 3)) (.num
    90167)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5436) (.var 3))
    (.num 14034)) (.var 3)) (.num 11830)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 315) (.var 3)) (.num 800)) (.var 3)) (.num 628)) (.pow (.var 2) 8)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 35586) (.var 3)) (.num 160316)) (.var 3))
    (.num 228269)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 195723) (.var 3)) (.num 796382))
    (.var 3)) (.num 1022672)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 466233)
    (.var 3)) (.num 1720960)) (.var 3)) (.num 1997650)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 630126) (.var 3)) (.num 2129394)) (.var 3)) (.num 2247311)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 531078) (.var 3)) (.num 1666648))
    (.var 3)) (.num 1615339)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    288246) (.var 3)) (.num 855592)) (.var 3)) (.num 772020)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 100020) (.var 3)) (.num 286292)) (.var 3)) (.num 243972)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 21114) (.var 3)) (.num 59172))
    (.var 3)) (.num 48072)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2397) (.var 3)) (.num 6602)) (.var 3)) (.num 5090)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 105) (.var 3)) (.num 278)) (.var 3)) (.num 195)) (.pow (.var 2) 9))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 20034) (.var 3)) (.num
    76860)) (.var 3)) (.num 88767)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 120204) (.var
    3)) (.num 429372)) (.var 3)) (.num 458523)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 316713) (.var 3)) (.num 1058286)) (.var 3)) (.num 1048173)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 481695) (.var 3)) (.num 1516864)) (.var 3)) (.num
    1400932)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 467124) (.var 3))
    (.num 1400162)) (.var 3)) (.num 1214951)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 300570) (.var 3)) (.num 867676)) (.var 3)) (.num 713655)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 129060) (.var 3)) (.num 363066)) (.var 3))
    (.num 285462)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36060) (.var
    3)) (.num 99770)) (.var 3)) (.num 75399)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 6120) (.var 3)) (.num 16700)) (.var 3)) (.num 12111)) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 537) (.var 3)) (.num 1428)) (.var 3)) (.num
    976)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 3)) (.num
    36)) (.var 3)) (.num 21)) (.pow (.var 2) 10)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 4860) (.var 3)) (.num 15624)) (.var 3)) (.num 15318)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 31590) (.var 3)) (.num 96804)) (.var 3)) (.num 89199))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 91206) (.var 3)) (.num 267376)) (.var
    3)) (.num 232240)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 154143)
    (.var 3)) (.num 434470)) (.var 3)) (.num 357304)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 169035) (.var 3)) (.num 460964)) (.var 3)) (.num 360867)) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 125820) (.var 3)) (.num 334292)) (.var
    3)) (.num 250517)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 64464)
    (.var 3)) (.num 168016)) (.var 3)) (.num 121100)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 22485) (.var 3)) (.num 57810)) (.var 3)) (.num 40171)) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5121) (.var 3)) (.num 13028)) (.var 3))
    (.num 8711)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 690) (.var 3))
    (.num 1736)) (.var 3)) (.num 1107)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 42) (.var 3)) (.num 104)) (.var 3)) (.num 62)) (.pow (.var 2) 10))) (.var 1))))
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))))) (.mul (.mul (.mul
    (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 165) (.var 1)) (.mul (.num 55) (.var 2))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.num 1985)) (.var 1)) (.mul (.add
    (.mul (.num 30) (.var 3)) (.num 1397)) (.var 2))) (.var 1)) (.mul (.num 192) (.pow (.var 2)
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 336) (.var 3)) (.num
    10894)) (.var 1)) (.mul (.add (.mul (.num 432) (.var 3)) (.num 11554)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.num 66) (.var 3)) (.num 3170)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 30)) (.var 3)) (.num 130)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1836) (.var 3)) (.num 35616)) (.var 1)) (.mul
    (.add (.mul (.num 2946) (.var 3)) (.num 50337)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num
    882) (.var 3)) (.num 20708)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 360))
    (.var 3)) (.num 1643)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 132)) (.var
    3)) (.neg (.num 284))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 6468) (.var 3)) (.num 77843)) (.var 1)) (.mul (.add
    (.mul (.num 13098) (.var 3)) (.num 140131)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 6972)
    (.var 3)) (.num 80853)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 738))
    (.var 3)) (.num 12763)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 1290))
    (.var 3)) (.neg (.num 2102))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num
    210)) (.var 3)) (.neg (.num 500))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 16374) (.var 3)) (.num
    121044)) (.var 1)) (.mul (.add (.mul (.num 42600) (.var 3)) (.num 275623)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.num 37656) (.var 3)) (.num 224361)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.num 11100) (.var 3)) (.num 73858)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 1308)) (.var 3)) (.num 5357)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 1098)) (.var 3)) (.neg (.num 1579))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.neg (.num 120)) (.var 3)) (.neg (.num 200))) (.pow (.var 2) 6)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 29382) (.var 3)) (.num 135048)) (.var 1)) (.mul (.add (.mul (.num 96270) (.var 3))
    (.num 387450)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 122916) (.var 3)) (.num 437290))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 77580) (.var 3)) (.num 248730)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.num 25626) (.var 3)) (.num 77384)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.num 4518) (.var 3)) (.num 14122)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.num 474) (.var 3)) (.num 1662)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.num 30) (.var 3)) (.num 102)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 34044) (.var 3)) (.num 102276)) (.var 1)) (.mul (.add (.mul (.num 134634) (.var 3))
    (.num 362484)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 221502) (.var 3)) (.num 537454))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 199140) (.var 3)) (.num 440474)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.num 108840) (.var 3)) (.num 223906)) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.num 38160) (.var 3)) (.num 74985)) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.num 8616) (.var 3)) (.num 16456)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.num 1128) (.var 3)) (.num 2069)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add
    (.mul (.num 60) (.var 3)) (.num 100)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 22140) (.var 3)) (.num 46188)) (.var 1)) (.mul (.add (.mul (.num 101736) (.var 3))
    (.num 196344)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 201246) (.var 3)) (.num 361260))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 226554) (.var 3)) (.num 381774)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.num 161772) (.var 3)) (.num 259239)) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.num 76866) (.var 3)) (.num 118795)) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.num 24342) (.var 3)) (.num 36609)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.num 4836) (.var 3)) (.num 7057)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add
    (.mul (.num 510) (.var 3)) (.num 705)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.num
    18) (.var 3)) (.num 21)) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 6048) (.var 3)) (.num 9216)) (.var 1)) (.mul (.add (.mul (.num 31428) (.var 3)) (.num
    45684)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 71772) (.var 3)) (.num 99876)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 95394) (.var 3)) (.num 127752)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.num 82260) (.var 3)) (.num 106726)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.num 48288) (.var 3)) (.num 61115)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.num 19452) (.var 3)) (.num 24141)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.num 5190) (.var 3)) (.num 6328)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.num 828) (.var 3)) (.num 990)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.num 60)
    (.var 3)) (.num 70)) (.pow (.var 2) 9))) (.var 1)))) (.var 0)) (.mul (.add (.var 0) (.var 1))
    (.add (.add (.var 0) (.var 1)) (.var 2))))) (.mul (.num 10) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 27) (.var 1)) (.mul (.num 9) (.var 2))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.num 14) (.var 3)) (.num 420)) (.var 1)) (.mul (.add
    (.mul (.num 14) (.var 3)) (.num 307)) (.var 2))) (.var 1)) (.mul (.num 45) (.pow (.var 2)
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 10) (.var
    3)) (.num 230)) (.var 3)) (.num 3067)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 25) (.var
    3)) (.num 338)) (.var 3)) (.num 3479)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 20) (.var 3)) (.num 108)) (.var 3)) (.num 1111)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.num 5) (.pow (.var 3) 2)) (.num 83)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 159) (.var 3)) (.num 1882))
    (.var 3)) (.num 14027)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 477) (.var 3)) (.num
    3770)) (.var 3)) (.num 21943)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 518)
    (.var 3)) (.num 2404)) (.var 3)) (.num 11330)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 241) (.var 3)) (.num 554)) (.var 3)) (.num 2107)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 41) (.var 3)) (.num 38)) (.var 3)) (.num 93)) (.pow
    (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 1182) (.var 3)) (.num 9956)) (.var 3)) (.num 45416)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 4137) (.var 3)) (.num 25774)) (.var 3)) (.num 93075)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5615) (.var 3)) (.num 24778)) (.var 3)) (.num
    70059)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3695) (.var 3))
    (.num 11246)) (.var 3)) (.num 23749)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1183) (.var 3)) (.num 2538)) (.var 3)) (.num 3611)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 148) (.var 3)) (.num 252)) (.var 3)) (.num 218)) (.pow
    (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 5357) (.var 3)) (.num 36974)) (.var 3)) (.num 110981))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 21428) (.var 3)) (.num 118344)) (.var 3)) (.num
    289590)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 34722) (.var 3)) (.num
    151764)) (.var 3)) (.num 299776)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 29168) (.var 3)) (.num 101308)) (.var 3)) (.num 158784)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 13405) (.var 3)) (.num 38086)) (.var 3)) (.num 46719))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3196) (.var 3)) (.num 7888))
    (.var 3)) (.num 7716)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 308)
    (.var 3)) (.num 716)) (.var 3)) (.num 602)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 16266) (.var 3)) (.num 98588)) (.var 3)) (.num 209588)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 73197) (.var 3)) (.num 376064)) (.var 3)) (.num 678379)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 137512) (.var 3)) (.num 599462)) (.var 3)) (.num
    916796)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 139706) (.var 3))
    (.num 522290)) (.var 3)) (.num 678594)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 82838) (.var 3)) (.num 271762)) (.var 3)) (.num 303216)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 28623) (.var 3)) (.num 85358)) (.var 3)) (.num 83893))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5316) (.var 3)) (.num
    15032)) (.var 3)) (.num 13520)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 406) (.var 3)) (.num 1132)) (.var 3)) (.num 966)) (.pow (.var 2) 7)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 34286) (.var 3)) (.num 188102)) (.var 3)) (.num 303476)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 171430) (.var 3)) (.num 830654)) (.var 3)) (.num
    1183802)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 365837) (.var 3)) (.num
    1573504)) (.var 3)) (.num 1989303)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 434768) (.var 3)) (.num 1678204)) (.var 3)) (.num 1897362)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 314290) (.var 3)) (.num 1107870)) (.var 3))
    (.num 1135294)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 141188)
    (.var 3)) (.num 465018)) (.var 3)) (.num 440204)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 38321) (.var 3)) (.num 120964)) (.var 3)) (.num 108085)) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5698) (.var 3)) (.num 17644)) (.var 3))
    (.num 15152)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 350) (.var 3))
    (.num 1080)) (.var 3)) (.num 898)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 50292) (.var 3)) (.num 252706)) (.var 3)) (.num 327502)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 276606) (.var 3)) (.num 1263778)) (.var 3)) (.num
    1496800)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 660492) (.var 3)) (.num
    2760224)) (.var 3)) (.num 3003612)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 897669) (.var 3)) (.num 3464414)) (.var 3)) (.num 3491425)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 764020) (.var 3)) (.num 2759168)) (.var 3))
    (.num 2603074)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 421190)
    (.var 3)) (.num 1446088)) (.var 3)) (.num 1293520)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 149702) (.var 3)) (.num 496878)) (.var 3)) (.num 426864)) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 32811) (.var 3)) (.num 106876)) (.var
    3)) (.num 89083)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3966)
    (.var 3)) (.num 12808)) (.var 3)) (.num 10399)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 196) (.var 3)) (.num 628)) (.var 3)) (.num 493)) (.pow (.var 2) 9))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 50160) (.var 3)) (.num
    232344)) (.var 3)) (.num 252408)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 300960) (.var
    3)) (.num 1294224)) (.var 3)) (.num 1319424)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 794764) (.var 3)) (.num 3190580)) (.var 3)) (.num 3066168)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1215020) (.var 3)) (.num 4589416)) (.var 3))
    (.num 4182972)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1188855)
    (.var 3)) (.num 4267250)) (.var 3)) (.num 3716343)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 775860) (.var 3)) (.num 2676232)) (.var 3)) (.num 2245290)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 340482) (.var 3)) (.num 1141528))
    (.var 3)) (.num 929776)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    98460) (.var 3)) (.num 324036)) (.var 3)) (.num 257724)) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 17719) (.var 3)) (.num 57604)) (.var 3)) (.num 44825)) (.pow
    (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1748) (.var 3)) (.num 5610)) (.var
    3)) (.num 4249)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 68) (.var
    3)) (.num 212)) (.var 3)) (.num 153)) (.pow (.var 2) 10)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 32256) (.var 3)) (.num 138876)) (.var 3))
    (.num 130380)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 209664) (.var 3)) (.num 850728))
    (.var 3)) (.num 764832)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 606552)
    (.var 3)) (.num 2330376)) (.var 3)) (.num 2012520)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1029732) (.var 3)) (.num 3769308)) (.var 3)) (.num 3139620)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1137978) (.var 3)) (.num 3998036))
    (.var 3)) (.num 3227184)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    857367) (.var 3)) (.num 2914016)) (.var 3)) (.num 2290769)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 447496) (.var 3)) (.num 1482570)) (.var 3)) (.num
    1140132)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 160706) (.var 3))
    (.num 522138)) (.var 3)) (.num 393994)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 38468) (.var 3)) (.num 122924)) (.var 3)) (.num 91037)) (.pow (.var 2) 8))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 5724) (.var 3)) (.num 17936)) (.var 3)) (.num 12976))
    (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 456) (.var 3)) (.num 1380))
    (.var 3)) (.num 961)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13)
    (.var 3)) (.num 36)) (.var 3)) (.num 23)) (.pow (.var 2) 11)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11988) (.var 3)) (.num
    48600)) (.var 3)) (.num 40284)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 83916) (.var 3))
    (.num 324108)) (.var 3)) (.num 261360)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 263868) (.var 3)) (.num 974676)) (.var 3)) (.num 765960)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 492300) (.var 3)) (.num 1747548)) (.var 3)) (.num
    1341432)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 605994) (.var 3))
    (.num 2078562)) (.var 3)) (.num 1562652)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 517218) (.var 3)) (.num 1723710)) (.var 3)) (.num 1272666)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 312659) (.var 3)) (.num 1017316)) (.var 3))
    (.num 739373)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 134060) (.var
    3)) (.num 427192)) (.var 3)) (.num 305990)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 40067) (.var 3)) (.num 125016)) (.var 3)) (.num 88163)) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8003) (.var 3)) (.num 24300)) (.var 3)) (.num
    16785)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 981) (.var 3)) (.num
    2848)) (.var 3)) (.num 1901)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 61) (.var 3)) (.num 162)) (.var 3)) (.num 101)) (.pow (.var 2) 11))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1) (.var 3)) (.num 2)) (.var 3)) (.num 1)) (.pow (.var 2) 12))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 1944) (.var 3)) (.num 7560)) (.var 3)) (.num 5616)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 14580) (.var 3)) (.num 54432)) (.var 3)) (.num 39852)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 49500) (.var 3)) (.num 177984)) (.var 3)) (.num 128484)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 100620) (.var 3)) (.num 349812))
    (.var 3)) (.num 249192)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    136416) (.var 3)) (.num 460482)) (.var 3)) (.num 324066)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 129954) (.var 3)) (.num 427614)) (.var 3)) (.num 297660)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 89172) (.var 3)) (.num 286884))
    (.var 3)) (.num 197712)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    44379) (.var 3)) (.num 139734)) (.var 3)) (.num 95355)) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 15882) (.var 3)) (.num 48808)) (.var 3)) (.num 32926)) (.pow
    (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3981) (.var 3)) (.num 11826))
    (.var 3)) (.num 7845)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 663)
    (.var 3)) (.num 1860)) (.var 3)) (.num 1197)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 66) (.var 3)) (.num 166)) (.var 3)) (.num 100)) (.pow (.var 2) 11))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 6)) (.var 3)) (.num 3)) (.pow (.var
    2) 12))) (.var 1)))))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.add (.add (.add (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 50) (.var 0)) (.mul (.num 26) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    11) (.var 3)) (.neg (.num 26))) (.var 3)) (.neg (.num 39))) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 23) (.var 3)) (.num 14)) (.var 3)) (.neg (.num 3))) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 13) (.var 3)) (.num 26)) (.var 3))
    (.num 13)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 3))
    (.num 2)) (.var 3)) (.num 1)) (.pow (.var 2) 5)))) (.mul (.mul (.num 36) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 40) (.var 0)) (.mul (.neg (.num 16)) (.var 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.neg (.num 22))) (.var 3)) (.neg (.num 33)))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 14))
    (.var 3)) (.num 12)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3)
    (.var 3)) (.num 8)) (.var 3)) (.num 5)) (.pow (.var 2) 4)))) (.pow (.var 0) 1))) (.mul (.mul
    (.num 90) (.add (.mul (.add (.mul (.add (.mul (.num 17) (.var 0)) (.mul (.neg (.num 21)) (.var
    2))) (.var 0)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 3))) (.pow (.var 2)
    2))) (.var 0)) (.mul (.add (.mul (.num 6) (.var 3)) (.num 7)) (.pow (.var 2) 3)))) (.pow (.var
    0) 2))) (.mul (.mul (.num 120) (.add (.mul (.add (.mul (.num 3) (.var 0)) (.mul (.neg (.num
    6)) (.var 2))) (.var 0)) (.mul (.num 3) (.pow (.var 2) 2)))) (.pow (.var 0) 3))) (.mul (.num
    4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 24) (.var 0)) (.mul (.neg
    (.num 3)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.neg (.num
    10))) (.var 3)) (.neg (.num 22))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 17) (.var 3)) (.num 32)) (.var 3)) (.num 22)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 10) (.var 3)) (.num 28)) (.var 3)) (.num 18)) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.num 2)) (.var 3)) (.num 1)) (.pow
    (.var 2) 5))))) (.mul (.mul (.num 28) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    26) (.var 0)) (.mul (.neg (.num 23)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    3) (.var 3)) (.neg (.num 16))) (.var 3)) (.neg (.num 19))) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 20)) (.var 3)) (.num 19)) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 8)) (.var 3)) (.num 5)) (.pow
    (.var 2) 4)))) (.pow (.var 0) 1))) (.mul (.mul (.num 84) (.add (.mul (.add (.mul (.add (.mul
    (.num 14) (.var 0)) (.mul (.neg (.num 21)) (.var 2))) (.var 0)) (.mul (.mul (.neg (.num 6))
    (.var 3)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.num 6) (.var 3)) (.num 7)) (.pow
    (.var 2) 3)))) (.pow (.var 0) 2))) (.mul (.mul (.num 140) (.add (.mul (.add (.mul (.num 3)
    (.var 0)) (.mul (.neg (.num 6)) (.var 2))) (.var 0)) (.mul (.num 3) (.pow (.var 2) 2)))) (.pow
    (.var 0) 3))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.add (.add (.add (.add
    (.add (.add (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 441) (.var 0)) (.mul (.add (.mul (.num 114)
    (.var 3)) (.num 3888)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 68) (.var 3))
    (.num 238)) (.var 3)) (.num 7567)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 607) (.var 3)) (.neg (.num 686))) (.var 3)) (.num 3653)) (.pow (.var 2) 3))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1894) (.var 3)) (.neg (.num 746))) (.var 3)) (.neg (.num
    1549))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2807) (.var 3))
    (.num 2348)) (.var 3)) (.num 159)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 2126) (.var 3)) (.num 3790)) (.var 3)) (.num 2191)) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 783) (.var 3)) (.num 1778)) (.var 3)) (.num 1097)) (.pow (.var
    2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 112) (.var 3)) (.num 262)) (.var 3))
    (.num 150)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3))
    (.num 6)) (.var 3)) (.num 3)) (.pow (.var 2) 9)))) (.mul (.mul (.num 12) (.add (.mul (.add
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
    9) (.var 3)) (.num 24)) (.var 3)) (.num 15)) (.pow (.var 2) 8)))) (.pow (.var 0) 1))) (.mul
    (.mul (.num 18) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 69) (.var 0)) (.mul (.add (.mul (.num 6) (.var 3)) (.num 490)) (.var 2))) (.var
    0)) (.mul (.num 440) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.neg (.num 84)) (.var
    3)) (.neg (.num 439))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.neg (.num 54)) (.var
    3)) (.neg (.num 227))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.num 168) (.var 3))
    (.num 388)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.num 138) (.var 3)) (.num 218))
    (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.num 18) (.var 3)) (.num 21)) (.pow (.var 2)
    7)))) (.pow (.var 0) 2))) (.mul (.mul (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 9) (.var 0)) (.mul (.num 57) (.var 2))) (.var 0)) (.mul
    (.num 21) (.pow (.var 2) 2))) (.var 0)) (.mul (.neg (.num 78)) (.pow (.var 2) 3))) (.var 0))
    (.mul (.num 21) (.pow (.var 2) 4))) (.var 0)) (.mul (.num 57) (.pow (.var 2) 5))) (.var 0))
    (.mul (.num 9) (.pow (.var 2) 6)))) (.pow (.var 0) 3))) (.mul (.num 3) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 540)
    (.var 0)) (.mul (.add (.mul (.num 160) (.var 3)) (.num 4700)) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 112) (.var 3)) (.num 372)) (.var 3)) (.num 8686)) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1001) (.var 3)) (.neg (.num 512))) (.var 3))
    (.num 3562)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3131) (.var 3))
    (.num 674)) (.var 3)) (.neg (.num 1153))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 4657) (.var 3)) (.num 6146)) (.var 3)) (.num 2965)) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3547) (.var 3)) (.num 7524)) (.var 3)) (.num
    5007)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1320) (.var 3)) (.num
    3270)) (.var 3)) (.num 2127)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 194) (.var 3)) (.num 474)) (.var 3)) (.num 280)) (.pow (.var 2) 8))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 12)) (.var 3)) (.num 6)) (.pow (.var 2)
    9))))) (.mul (.mul (.num 15) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 342) (.var 0)) (.mul (.add (.mul (.num 68) (.var 3)) (.num
    2677)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 70)) (.var
    3)) (.num 3559)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 210) (.var
    3)) (.neg (.num 666))) (.var 3)) (.neg (.num 804))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 642) (.var 3)) (.neg (.num 408))) (.var 3)) (.neg (.num 1832))) (.pow
    (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 912) (.var 3)) (.num 1922)) (.var
    3)) (.num 1739)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 636) (.var
    3)) (.num 2206)) (.var 3)) (.num 2077)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 198) (.var 3)) (.num 672)) (.var 3)) (.num 532)) (.pow (.var 2) 7))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 18) (.var 3)) (.num 48)) (.var 3)) (.num 30)) (.pow (.var
    2) 8)))) (.pow (.var 0) 1))) (.mul (.mul (.num 30) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 120) (.var 0)) (.mul (.add (.mul (.num 12)
    (.var 3)) (.num 845)) (.var 2))) (.var 0)) (.mul (.num 709) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.neg (.num 168)) (.var 3)) (.neg (.num 839))) (.pow (.var 2) 3))) (.var 0))
    (.mul (.add (.mul (.neg (.num 108)) (.var 3)) (.neg (.num 349))) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.num 336) (.var 3)) (.num 776)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add
    (.mul (.num 276) (.var 3)) (.num 424)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.num
    36) (.var 3)) (.num 42)) (.pow (.var 2) 7)))) (.pow (.var 0) 2))) (.mul (.mul (.num 30) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 18) (.var 0)) (.mul
    (.num 114) (.var 2))) (.var 0)) (.mul (.num 42) (.pow (.var 2) 2))) (.var 0)) (.mul (.neg
    (.num 156)) (.pow (.var 2) 3))) (.var 0)) (.mul (.num 42) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.num 114) (.pow (.var 2) 5))) (.var 0)) (.mul (.num 18) (.pow (.var 2) 6)))) (.pow (.var 0)
    3))) (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 150) (.var 0)) (.mul (.add (.mul (.num 52) (.var 3))
    (.num 1286)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 44) (.var 3)) (.num
    140)) (.var 3)) (.num 2204)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    394) (.var 3)) (.num 48)) (.var 3)) (.num 622)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1237) (.var 3)) (.num 1024)) (.var 3)) (.neg (.num 32))) (.pow (.var
    2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1850) (.var 3)) (.num 3342)) (.var 3))
    (.num 2045)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1421) (.var 3))
    (.num 3512)) (.var 3)) (.num 2492)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 537) (.var 3)) (.num 1456)) (.var 3)) (.num 988)) (.pow (.var 2) 7))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 82) (.var 3)) (.num 212)) (.var 3)) (.num 130)) (.pow
    (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 6)) (.var 3))
    (.num 3)) (.pow (.var 2) 9))))) (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 120) (.var 0)) (.mul (.add (.mul
    (.num 28) (.var 3)) (.num 924)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 12)
    (.var 3)) (.num 32)) (.var 3)) (.num 1111)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 105) (.var 3)) (.neg (.num 228))) (.var 3)) (.neg (.num 507))) (.pow (.var
    2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 321) (.var 3)) (.num 18)) (.var 3))
    (.neg (.num 548))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 456)
    (.var 3)) (.num 1084)) (.var 3)) (.num 1019)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 318) (.var 3)) (.num 1094)) (.var 3)) (.num 1006)) (.pow (.var 2) 6))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 99) (.var 3)) (.num 324)) (.var 3)) (.num 252)) (.pow
    (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.num 24)) (.var 3))
    (.num 15)) (.pow (.var 2) 8)))) (.pow (.var 0) 1))) (.mul (.mul (.num 15) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 51) (.var 0)) (.mul
    (.add (.mul (.num 6) (.var 3)) (.num 355)) (.var 2))) (.var 0)) (.mul (.num 269) (.pow (.var
    2) 2))) (.var 0)) (.mul (.add (.mul (.neg (.num 84)) (.var 3)) (.neg (.num 400))) (.pow (.var
    2) 3))) (.var 0)) (.mul (.add (.mul (.neg (.num 54)) (.var 3)) (.neg (.num 122))) (.pow (.var
    2) 4))) (.var 0)) (.mul (.add (.mul (.num 168) (.var 3)) (.num 388)) (.pow (.var 2) 5))) (.var
    0)) (.mul (.add (.mul (.num 138) (.var 3)) (.num 206)) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.add (.mul (.num 18) (.var 3)) (.num 21)) (.pow (.var 2) 7)))) (.pow (.var 0) 2))) (.mul
    (.mul (.num 20) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    9) (.var 0)) (.mul (.num 57) (.var 2))) (.var 0)) (.mul (.num 21) (.pow (.var 2) 2))) (.var
    0)) (.mul (.neg (.num 78)) (.pow (.var 2) 3))) (.var 0)) (.mul (.num 21) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.num 57) (.pow (.var 2) 5))) (.var 0)) (.mul (.num 9) (.pow (.var 2) 6))))
    (.pow (.var 0) 3))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow0329.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow0329.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow0329.leading0 e g v + f * FullLow0329.leading1 e g v +
        f^2 * FullLow0329.remainder e f g v := by
  have hden : denominatorOne FullLow0329.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow0329.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow0329.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 68719476736 13 12 2) lhs =
      value (Encoding4.vars 68719476736 13 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 68719476736 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 13 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 13 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow0329.source e f g v =
      FullLow0329.leading0 e g v + f * FullLow0329.leading1 e g v +
        f^2 * FullLow0329.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 68719476736 13 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow032Encoded9

namespace SPR.N6.Tail.CoreEndpoint.FullLow032
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition9 (e f g v : ℝ) :
    FullLow0329.source e f g v =
      FullLow0329.leading0 e g v + f * FullLow0329.leading1 e g v +
        f^2 * FullLow0329.remainder e f g v :=
  FullLow032Encoded9.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow032
