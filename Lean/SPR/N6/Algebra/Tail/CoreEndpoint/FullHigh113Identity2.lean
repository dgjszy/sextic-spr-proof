import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh113Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^2 layer of FullHigh113.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh113Encoded2
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.add (.add (.add (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 12) (.var 1)) (.var
    0)) (.add (.mul (.add (.mul (.num 168) (.var 1)) (.add (.mul (.num 72) (.var 2)) (.mul (.num
    72) (.var 3)))) (.var 1)) (.mul (.mul (.num 24) (.var 3)) (.var 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 999) (.var 1)) (.add (.mul (.num 831) (.var 2)) (.mul (.num 651)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 156) (.var 2)) (.mul (.num 459) (.var 3)))
    (.var 2)) (.mul (.num 60) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 72)
    (.var 3)) (.var 2)) (.mul (.num 24) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 3105) (.var 1)) (.add (.mul (.num 3738) (.var 2))
    (.mul (.num 2583) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1353) (.var 2)) (.mul
    (.num 2718) (.var 3))) (.var 2)) (.mul (.num 438) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 144) (.var 2)) (.mul (.num 831) (.var 3))) (.var 2)) (.mul (.num 366)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 72) (.var 3)) (.var 2))
    (.mul (.num 72) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 5448) (.var 1)) (.add (.mul (.num 8400) (.var 2))
    (.mul (.num 5310) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 4302) (.var 2)) (.mul
    (.num 7227) (.var 3))) (.var 2)) (.mul (.num 1332) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 834) (.var 2)) (.mul (.num 3168) (.var 3))) (.var 2)) (.mul (.num
    1638) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48) (.var
    2)) (.mul (.num 507) (.var 3))) (.var 2)) (.mul (.num 618) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.mul (.num 24) (.var 3)) (.var 2)) (.mul (.num 72) (.pow
    (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 5451) (.var 1)) (.add (.mul (.num 10080) (.var 2)) (.mul (.num
    6168) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 6465) (.var 2)) (.mul (.num 10242)
    (.var 3))) (.var 2)) (.mul (.num 1836) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1704) (.var 2)) (.mul (.num 5703) (.var 3))) (.var 2)) (.mul (.num 2850) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 156) (.var 2)) (.mul
    (.num 1236) (.var 3))) (.var 2)) (.mul (.num 1500) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 87) (.var 3)) (.var 2)) (.mul (.num 318) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num 24) (.pow (.var 3) 2)) (.pow (.var 2)
    4)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 2907) (.var 1)) (.add (.mul (.num 6189) (.var 2)) (.mul (.num 3996) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 4656) (.var 2)) (.mul (.num 7908) (.var 3))) (.var 2)) (.mul
    (.num 1332) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1482) (.var 2))
    (.mul (.num 5394) (.var 3))) (.var 2)) (.mul (.num 2436) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 168) (.var 2)) (.mul (.num 1503) (.var 3))) (.var 2))
    (.mul (.num 1500) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 141) (.var 3)) (.var 2)) (.mul (.num 366) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.mul (.num 30) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 642) (.var 1))
    (.add (.mul (.num 1530) (.var 2)) (.mul (.num 1134) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 1296) (.var 2)) (.mul (.num 2610) (.var 3))) (.var 2)) (.mul (.num 516) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 468) (.var 2)) (.mul (.num 2100)
    (.var 3))) (.var 2)) (.mul (.num 1164) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 60) (.var 2)) (.mul (.num 702) (.var 3))) (.var 2)) (.mul (.num 912)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 78) (.var 3))
    (.var 2)) (.mul (.num 294) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.num
    30) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.pow (.var 1) 2)))) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.add (.var 1) (.var 2))) (.mul (.mul
    (.num 8) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 75) (.var 1)) (.mul (.num 25) (.var 2))) (.var 0)) (.add (.mul
    (.add (.mul (.num 800) (.var 1)) (.add (.mul (.num 595) (.var 2)) (.mul (.num 150) (.var 3))))
    (.var 1)) (.mul (.add (.mul (.num 105) (.var 2)) (.mul (.num 50) (.var 3))) (.var 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.num 3743) (.var 1)) (.add (.mul (.num 4277) (.var
    2)) (.mul (.num 1310) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1514) (.var 2))
    (.mul (.num 930) (.var 3))) (.var 2)) (.mul (.num 75) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 170) (.var 2)) (.mul (.num 140) (.var 3))) (.var 2)) (.mul (.num
    25) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 9933) (.var 1)) (.add (.mul (.num 15169) (.var 2)) (.mul (.num 5010) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 7982) (.var 2)) (.mul (.num 5432) (.var 3))) (.var 2)) (.mul
    (.num 530) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1726) (.var 2))
    (.mul (.num 1658) (.var 3))) (.var 2)) (.mul (.num 365) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 130) (.var 2)) (.mul (.num 136) (.var 3))) (.var 2))
    (.mul (.num 45) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 16254) (.var 1)) (.add (.mul (.num 30819) (.var 2))
    (.mul (.num 10712) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 21282) (.var 2)) (.mul
    (.num 15572) (.var 3))) (.var 2)) (.mul (.num 1600) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 6657) (.var 2)) (.mul (.num 7176) (.var 3))) (.var 2)) (.mul (.num
    1636) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 935) (.var
    2)) (.mul (.num 1168) (.var 3))) (.var 2)) (.mul (.num 374) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45) (.var 2)) (.mul (.num 52) (.var 3)))
    (.var 2)) (.mul (.neg (.num 2)) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 16735) (.var 1)) (.add (.mul
    (.num 37664) (.var 2)) (.mul (.num 13822) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    31902) (.var 2)) (.mul (.num 25262) (.var 3))) (.var 2)) (.mul (.num 2589) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12850) (.var 2)) (.mul (.num 15694) (.var
    3))) (.var 2)) (.mul (.num 3454) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2541) (.var 2)) (.mul (.num 3894) (.var 3))) (.var 2)) (.mul (.num 1085)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 219)
    (.var 2)) (.mul (.num 346) (.var 3))) (.var 2)) (.mul (.neg (.num 82)) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 2)) (.mul (.num 6)
    (.var 3))) (.var 2)) (.mul (.neg (.num 42)) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    10564) (.var 1)) (.add (.mul (.num 27397) (.var 2)) (.mul (.num 10776) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 27316) (.var 2)) (.mul (.num 23870) (.var 3))) (.var 2)) (.mul
    (.num 2466) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13322) (.var
    2)) (.mul (.num 18894) (.var 3))) (.var 2)) (.mul (.num 4167) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3327) (.var 2)) (.mul (.num 6490) (.var 3)))
    (.var 2)) (.mul (.num 1818) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 394) (.var 2)) (.mul (.num 932) (.var 3))) (.var 2)) (.mul (.neg (.num
    149)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    16) (.var 2)) (.mul (.num 42) (.var 3))) (.var 2)) (.mul (.neg (.num 199)) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.neg (.num 23)) (.pow (.var 3) 2)) (.pow (.var 2)
    5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 3732) (.var 1)) (.add (.mul (.num 10930) (.var 2)) (.mul (.num 4676)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 12493) (.var 2)) (.mul (.num 12236) (.var
    3))) (.var 2)) (.mul (.num 1362) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 7112) (.var 2)) (.mul (.num 11882) (.var 3))) (.var 2)) (.mul (.num 2964) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2121) (.var 2)) (.mul (.num
    5310) (.var 3))) (.var 2)) (.mul (.num 2003) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 311) (.var 2)) (.mul (.num 1096) (.var 3))) (.var 2))
    (.mul (.num 270) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 17) (.var 2)) (.mul (.num 90) (.var 3))) (.var 2)) (.mul (.neg (.num 169)) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 2) (.var 3)) (.var
    2)) (.mul (.neg (.num 51)) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.neg
    (.num 3)) (.pow (.var 3) 2)) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 564) (.var 1))
    (.add (.mul (.num 1840) (.var 2)) (.mul (.num 860) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 2370) (.var 2)) (.mul (.num 2608) (.var 3))) (.var 2)) (.mul (.num 324) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1539) (.var 2)) (.mul (.num 3024)
    (.var 3))) (.var 2)) (.mul (.num 894) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 530) (.var 2)) (.mul (.num 1682) (.var 3))) (.var 2)) (.mul (.num 882)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 91)
    (.var 2)) (.mul (.num 458) (.var 3))) (.var 2)) (.mul (.num 353) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 2)) (.mul (.num 54) (.var
    3))) (.var 2)) (.mul (.num 30) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 2) (.var 3)) (.var 2)) (.mul (.neg (.num 13)) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.mul (.neg (.num 2)) (.pow (.var 3) 2)) (.pow (.var 2) 6)))
    (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    4))) (.mul (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 45) (.var 1)) (.mul (.num 15) (.var 2))) (.var 0))
    (.add (.mul (.add (.mul (.num 462) (.var 1)) (.add (.mul (.num 342) (.var 2)) (.mul (.num 90)
    (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 60) (.var 2)) (.mul (.num 30) (.var 3))) (.var
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 2061) (.var 1)) (.add (.mul (.num
    2337) (.var 2)) (.mul (.num 750) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 816)
    (.var 2)) (.mul (.num 528) (.var 3))) (.var 2)) (.mul (.num 45) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 90) (.var 2)) (.mul (.num 78) (.var 3))) (.var 2)) (.mul
    (.num 15) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 5085) (.var 1)) (.add (.mul (.num 7662) (.var 2)) (.mul (.num 2706) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 3945) (.var 2)) (.mul (.num 2898) (.var 3))) (.var 2))
    (.mul (.num 300) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 828) (.var
    2)) (.mul (.num 858) (.var 3))) (.var 2)) (.mul (.num 204) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 2)) (.mul (.num 66) (.var 3))) (.var
    2)) (.mul (.num 24) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 7434) (.var 1)) (.add (.mul (.num 13794) (.var 2))
    (.mul (.num 5244) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 9204) (.var 2)) (.mul
    (.num 7458) (.var 3))) (.var 2)) (.mul (.num 840) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2736) (.var 2)) (.mul (.num 3282) (.var 3))) (.var 2)) (.mul (.num
    840) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 357) (.var
    2)) (.mul (.num 486) (.var 3))) (.var 2)) (.mul (.num 174) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 2)) (.mul (.num 18) (.var 3)))
    (.var 2)) (.mul (.neg (.num 6)) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6423) (.var 1)) (.add (.mul
    (.num 14004) (.var 2)) (.mul (.num 5814) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    11280) (.var 2)) (.mul (.num 10338) (.var 3))) (.var 2)) (.mul (.num 1167) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4206) (.var 2)) (.mul (.num 6084) (.var
    3))) (.var 2)) (.mul (.num 1476) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 735) (.var 2)) (.mul (.num 1356) (.var 3))) (.var 2)) (.mul (.num 363) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48) (.var 2))
    (.mul (.num 96) (.var 3))) (.var 2)) (.mul (.neg (.num 90)) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.mul (.neg (.num 24)) (.pow (.var 3) 2)) (.pow (.var 2) 4)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    3036) (.var 1)) (.add (.mul (.num 7536) (.var 2)) (.mul (.num 3540) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 7008) (.var 2)) (.mul (.num 7620) (.var 3))) (.var 2)) (.mul
    (.num 906) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3066) (.var 2))
    (.mul (.num 5712) (.var 3))) (.var 2)) (.mul (.num 1476) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 639) (.var 2)) (.mul (.num 1782) (.var 3))) (.var 2))
    (.mul (.num 546) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 51) (.var 2)) (.mul (.num 216) (.var 3))) (.var 2)) (.mul (.neg (.num 132)) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 6) (.var 3)) (.var
    2)) (.mul (.neg (.num 87)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.neg
    (.num 9)) (.pow (.var 3) 2)) (.pow (.var 2) 5)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 606) (.var 1)) (.add (.mul
    (.num 1674) (.var 2)) (.mul (.num 924) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    1743) (.var 2)) (.mul (.num 2340) (.var 3))) (.var 2)) (.mul (.num 348) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 858) (.var 2)) (.mul (.num 2130) (.var 3)))
    (.var 2)) (.mul (.num 786) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 201) (.var 2)) (.mul (.num 846) (.var 3))) (.var 2)) (.mul (.num 573) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18) (.var 2)) (.mul
    (.num 138) (.var 3))) (.var 2)) (.mul (.num 126) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.mul (.num 6) (.var 3)) (.var 2)) (.mul (.neg (.num 15)) (.pow (.var 3)
    2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.neg (.num 6)) (.pow (.var 3) 2)) (.pow (.var
    2) 5))) (.var 1)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var
    1)) (.var 2))) 4))) (.mul (.mul (.mul (.num 2) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 30) (.var 1)) (.var
    0)) (.add (.mul (.add (.mul (.num 492) (.var 1)) (.add (.mul (.num 216) (.var 2)) (.mul (.num
    180) (.var 3)))) (.var 1)) (.mul (.mul (.num 60) (.var 3)) (.var 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 3465) (.var 1)) (.add (.mul (.num 2985) (.var 2)) (.mul (.num
    2037) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 600) (.var 2)) (.mul (.num 1485)
    (.var 3))) (.var 2)) (.mul (.num 150) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 252) (.var 3)) (.var 2)) (.mul (.num 60) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13653) (.var 1)) (.add (.mul (.num 17298)
    (.var 2)) (.mul (.num 10197) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 6813) (.var
    2)) (.mul (.num 11328) (.var 3))) (.var 2)) (.mul (.num 1440) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 828) (.var 2)) (.mul (.num 3867) (.var 3))) (.var 2))
    (.mul (.num 1224) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 408)
    (.var 3)) (.var 2)) (.mul (.num 252) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 33172) (.var 1)) (.add (.mul (.num
    54896) (.var 2)) (.mul (.num 28915) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 31639)
    (.var 2)) (.mul (.num 42689) (.var 3))) (.var 2)) (.mul (.num 5940) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 7449) (.var 2)) (.mul (.num 21634) (.var 3))) (.var
    2)) (.mul (.num 7614) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 594) (.var 2)) (.mul (.num 4440) (.var 3))) (.var 2)) (.mul (.num 3108) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 312) (.var 3)) (.var 2))
    (.mul (.num 408) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 51655) (.var 1)) (.add (.mul (.num
    104676) (.var 2)) (.mul (.num 51055) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    78384) (.var 2)) (.mul (.num 93553) (.var 3))) (.var 2)) (.mul (.num 13249) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 26746) (.var 2)) (.mul (.num 62225) (.var
    3))) (.var 2)) (.mul (.num 22394) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 4047) (.var 2)) (.mul (.num 18503) (.var 3))) (.var 2)) (.mul (.num 13453)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 204)
    (.var 2)) (.mul (.num 2412) (.var 3))) (.var 2)) (.mul (.num 3420) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 108) (.var 3)) (.var 2)) (.mul (.num
    312) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 51653) (.var 1)) (.add (.mul (.num
    123151) (.var 2)) (.mul (.num 58222) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    112434) (.var 2)) (.mul (.num 127689) (.var 3))) (.var 2)) (.mul (.num 17570) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 49502) (.var 2)) (.mul (.num 105227) (.var
    3))) (.var 2)) (.mul (.num 36507) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 10720) (.var 2)) (.mul (.num 40787) (.var 3))) (.var 2)) (.mul (.num 28374)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1002)
    (.var 2)) (.mul (.num 7526) (.var 3))) (.var 2)) (.mul (.num 10289) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24) (.var 2)) (.mul (.num 579)
    (.var 3))) (.var 2)) (.mul (.num 1734) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 12) (.var 3)) (.var 2)) (.mul (.num 108) (.pow (.var 3) 2))) (.pow
    (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 32006) (.var 1)) (.add (.mul (.num 87422) (.var 2)) (.mul
    (.num 41990) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 93611) (.var 2)) (.mul (.num
    107828) (.var 3))) (.var 2)) (.mul (.num 14568) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 50004) (.var 2)) (.mul (.num 106863) (.var 3))) (.var 2)) (.mul (.num
    36020) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13861)
    (.var 2)) (.mul (.num 51711) (.var 3))) (.var 2)) (.mul (.num 34213) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1836) (.var 2)) (.mul (.num 12574)
    (.var 3))) (.var 2)) (.mul (.num 15764) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 84) (.var 2)) (.mul (.num 1381) (.var 3))) (.var 2)) (.mul
    (.num 3615) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num
    45) (.var 3)) (.var 2)) (.mul (.num 372) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.mul (.num 12) (.pow (.var 3) 2)) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    11142) (.var 1)) (.add (.mul (.num 34236) (.var 2)) (.mul (.num 17280) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 41939) (.var 2)) (.mul (.num 51098) (.var 3))) (.var 2)) (.mul
    (.num 7122) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 26209) (.var
    2)) (.mul (.num 59634) (.var 3))) (.var 2)) (.mul (.num 20736) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8780) (.var 2)) (.mul (.num 35031) (.var 3)))
    (.var 2)) (.mul (.num 23782) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1482) (.var 2)) (.mul (.num 10814) (.var 3))) (.var 2)) (.mul (.num
    13665) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    96) (.var 2)) (.mul (.num 1626) (.var 3))) (.var 2)) (.mul (.num 4068) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 87) (.var 3)) (.var 2)) (.mul
    (.num 565) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 24) (.pow (.var
    3) 2)) (.pow (.var 2) 6))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1656) (.var 1)) (.add (.mul
    (.num 5656) (.var 2)) (.mul (.num 3032) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    7804) (.var 2)) (.mul (.num 10192) (.var 3))) (.var 2)) (.mul (.num 1500) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5582) (.var 2)) (.mul (.num 13792) (.var 3)))
    (.var 2)) (.mul (.num 5094) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 2186) (.var 2)) (.mul (.num 9636) (.var 3))) (.var 2)) (.mul (.num 7008) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 444) (.var 2))
    (.mul (.num 3666) (.var 3))) (.var 2)) (.mul (.num 5020) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36) (.var 2)) (.mul (.num 716) (.var 3)))
    (.var 2)) (.mul (.num 1978) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 54) (.var 3)) (.var 2)) (.mul (.num 404) (.pow (.var 3) 2))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.mul (.num 32) (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.pow (.var 1)
    2)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)) (.add
    (.var 1) (.var 2)))) (.mul (.mul (.num 14) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 60)
    (.var 1)) (.mul (.num 20) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 932) (.var 1))
    (.add (.mul (.num 732) (.var 2)) (.mul (.num 120) (.var 3)))) (.var 1)) (.mul (.add (.mul
    (.num 140) (.var 2)) (.mul (.num 40) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.num 6368) (.var 1)) (.add (.mul (.num 7782) (.var 2)) (.mul (.num 1600) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 3074) (.var 2)) (.mul (.num 1208) (.var 3)))
    (.var 2)) (.mul (.num 60) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    400) (.var 2)) (.mul (.num 208) (.var 3))) (.var 2)) (.mul (.num 20) (.pow (.var 3) 2))) (.var
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 25302) (.var 1)) (.add
    (.mul (.num 41652) (.var 2)) (.mul (.num 9468) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 24772) (.var 2)) (.mul (.num 11164) (.var 3))) (.var 2)) (.mul (.num 700) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6362) (.var 2)) (.mul (.num 4088) (.var
    3))) (.var 2)) (.mul (.num 524) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 600) (.var 2)) (.mul (.num 472) (.var 3))) (.var 2)) (.mul (.num 84) (.pow
    (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 64972) (.var 1)) (.add (.mul (.num 133840) (.var 2)) (.mul (.num 32688)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 105578) (.var 2)) (.mul (.num 52544) (.var
    3))) (.var 2)) (.mul (.num 3606) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 39966) (.var 2)) (.mul (.num 29696) (.var 3))) (.var 2)) (.mul (.num 4238) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7256) (.var 2)) (.mul (.num
    7048) (.var 3))) (.var 2)) (.mul (.num 1484) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 500) (.var 2)) (.mul (.num 608) (.var 3))) (.var 2)) (.mul
    (.num 152) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 113017) (.var 1)) (.add (.mul (.num 278571)
    (.var 2)) (.mul (.num 72780) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 272283) (.var
    2)) (.mul (.num 148632) (.var 3))) (.var 2)) (.mul (.num 10772) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 134887) (.var 2)) (.mul (.num 114092) (.var 3))) (.var 2))
    (.mul (.num 17464) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 35494) (.var 2)) (.mul (.num 41268) (.var 3))) (.var 2)) (.mul (.num 9686) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4616) (.var 2))
    (.mul (.num 7100) (.var 3))) (.var 2)) (.mul (.num 2162) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 220) (.var 2)) (.mul (.num 472) (.var 3)))
    (.var 2)) (.mul (.num 168) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 135235) (.var
    1)) (.add (.mul (.num 387021) (.var 2)) (.mul (.num 108614) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 449265) (.var 2)) (.mul (.num 269822) (.var 3))) (.var 2)) (.mul (.num
    20584) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 273001) (.var 2))
    (.mul (.num 262614) (.var 3))) (.var 2)) (.mul (.num 43136) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 92792) (.var 2)) (.mul (.num 128134) (.var 3)))
    (.var 2)) (.mul (.num 33460) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 17204) (.var 2)) (.mul (.num 33060) (.var 3))) (.var 2)) (.mul (.num
    11980) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1514) (.var 2)) (.mul (.num 4260) (.var 3))) (.var 2)) (.mul (.num 2004) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40) (.var 2)) (.mul (.num
    208) (.var 3))) (.var 2)) (.mul (.num 132) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 110179) (.var 1)) (.add (.mul (.num 358212) (.var 2)) (.mul (.num 108676) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 479687) (.var 2)) (.mul (.num 318588) (.var 3)))
    (.var 2)) (.mul (.num 25891) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 343195) (.var 2)) (.mul (.num 376184) (.var 3))) (.var 2)) (.mul (.num 67365) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 141470) (.var 2)) (.mul
    (.num 231252) (.var 3))) (.var 2)) (.mul (.num 68315) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33377) (.var 2)) (.mul (.num 79476) (.var 3)))
    (.var 2)) (.mul (.num 34551) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 4102) (.var 2)) (.mul (.num 15044) (.var 3))) (.var 2)) (.mul (.num
    9234) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    194) (.var 2)) (.mul (.num 1388) (.var 3))) (.var 2)) (.mul (.num 1252) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 40) (.var 3)) (.var 2)) (.mul
    (.num 68) (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 58611)
    (.var 1)) (.add (.mul (.num 212897) (.var 2)) (.mul (.num 70238) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 321899) (.var 2)) (.mul (.num 237430) (.var 3))) (.var 2)) (.mul (.num
    20859) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 263513) (.var 2))
    (.mul (.num 329498) (.var 3))) (.var 2)) (.mul (.num 65347) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 126522) (.var 2)) (.mul (.num 243902) (.var 3)))
    (.var 2)) (.mul (.num 82641) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 35676) (.var 2)) (.mul (.num 104264) (.var 3))) (.var 2)) (.mul (.num
    54653) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    5462) (.var 2)) (.mul (.num 25760) (.var 3))) (.var 2)) (.mul (.num 20394) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 348) (.var 2)) (.mul (.num
    3392) (.var 3))) (.var 2)) (.mul (.num 4270) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.mul (.num 180) (.var 3)) (.var 2)) (.mul (.num 452) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 16) (.pow (.var 3) 2)) (.pow (.var 2) 7))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 18414) (.var 1)) (.add (.mul (.num 73731) (.var 2)) (.mul
    (.num 26586) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 123778) (.var 2)) (.mul (.num
    101726) (.var 3))) (.var 2)) (.mul (.num 9780) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 113472) (.var 2)) (.mul (.num 161912) (.var 3))) (.var 2)) (.mul (.num
    35961) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 61668)
    (.var 2)) (.mul (.num 139632) (.var 3))) (.var 2)) (.mul (.num 54660) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 19957) (.var 2)) (.mul (.num
    70894) (.var 3))) (.var 2)) (.mul (.num 44744) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3574) (.var 2)) (.mul (.num 21322) (.var 3))) (.var
    2)) (.mul (.num 21446) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 274) (.var 2)) (.mul (.num 3540) (.var 3))) (.var 2)) (.mul (.num 6059)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 252) (.var 3))
    (.var 2)) (.mul (.num 940) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num
    62) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    2598) (.var 1)) (.add (.mul (.num 11338) (.var 2)) (.mul (.num 4490) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 20844) (.var 2)) (.mul (.num 19146) (.var 3))) (.var 2)) (.mul
    (.num 2040) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 21036) (.var
    2)) (.mul (.num 34260) (.var 3))) (.var 2)) (.mul (.num 8622) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12662) (.var 2)) (.mul (.num 33540) (.var 3)))
    (.var 2)) (.mul (.num 15306) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 4570) (.var 2)) (.mul (.num 19538) (.var 3))) (.var 2)) (.mul (.num
    14904) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    920) (.var 2)) (.mul (.num 6818) (.var 3))) (.var 2)) (.mul (.num 8676) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 80) (.var 2)) (.mul (.num
    1328) (.var 3))) (.var 2)) (.mul (.num 3046) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.mul (.num 112) (.var 3)) (.var 2)) (.mul (.num 602) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 52) (.pow (.var 3) 2)) (.pow (.var 2) 7)))
    (.pow (.var 1) 2)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))) 3))) (.mul (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 150) (.var 1)) (.mul
    (.num 50) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 1890) (.var 1)) (.add (.mul (.num
    1430) (.var 2)) (.mul (.num 300) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 260) (.var 2))
    (.mul (.num 100) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num
    10632) (.var 1)) (.add (.mul (.num 12438) (.var 2)) (.mul (.num 3120) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 4596) (.var 2)) (.mul (.num 2220) (.var 3))) (.var 2)) (.mul
    (.num 150) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 550) (.var 2))
    (.mul (.num 340) (.var 3))) (.var 2)) (.mul (.num 50) (.pow (.var 3) 2))) (.var 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 34746) (.var 1)) (.add (.mul (.num
    54594) (.var 2)) (.mul (.num 14550) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 30258)
    (.var 2)) (.mul (.num 15828) (.var 3))) (.var 2)) (.mul (.num 1310) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 7090) (.var 2)) (.mul (.num 4942) (.var 3))) (.var 2))
    (.mul (.num 910) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    600) (.var 2)) (.mul (.num 424) (.var 3))) (.var 2)) (.mul (.num 120) (.pow (.var 3) 2)))
    (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 72276) (.var 1)) (.add (.mul (.num 141642) (.var 2)) (.mul (.num 39282) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 103866) (.var 2)) (.mul (.num 57444) (.var 3))) (.var
    2)) (.mul (.num 5055) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    35744) (.var 2)) (.mul (.num 27254) (.var 3))) (.var 2)) (.mul (.num 5274) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5794) (.var 2)) (.mul (.num 4724)
    (.var 3))) (.var 2)) (.mul (.num 1361) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 350) (.var 2)) (.mul (.num 232) (.var 3))) (.var 2)) (.mul (.num
    42) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 98861) (.var 1)) (.add (.mul (.num 230923) (.var 2))
    (.mul (.num 67058) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 209239) (.var 2)) (.mul
    (.num 123630) (.var 3))) (.var 2)) (.mul (.num 11043) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 93951) (.var 2)) (.mul (.num 79558) (.var 3))) (.var 2)) (.mul
    (.num 15309) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    21960) (.var 2)) (.mul (.num 21318) (.var 3))) (.var 2)) (.mul (.num 5855) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2486) (.var 2)) (.mul (.num
    2184) (.var 3))) (.var 2)) (.mul (.num 293) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 100) (.var 2)) (.mul (.num 52) (.var 3))) (.var 2)) (.mul
    (.neg (.num 96)) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 88684) (.var 1)) (.add (.mul
    (.num 239538) (.var 2)) (.mul (.num 74116) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    257048) (.var 2)) (.mul (.num 166084) (.var 3))) (.var 2)) (.mul (.num 15049) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 141224) (.var 2)) (.mul (.num 136956)
    (.var 3))) (.var 2)) (.mul (.num 26583) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 42468) (.var 2)) (.mul (.num 51344) (.var 3))) (.var 2)) (.mul (.num
    14303) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    6808) (.var 2)) (.mul (.num 8704) (.var 3))) (.var 2)) (.mul (.num 1629) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 500) (.var 2)) (.mul (.num
    552) (.var 3))) (.var 2)) (.mul (.neg (.num 530)) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 4) (.var 3))) (.var
    2)) (.mul (.neg (.num 90)) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    50201) (.var 1)) (.add (.mul (.num 153491) (.var 2)) (.mul (.num 51530) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 189610) (.var 2)) (.mul (.num 136866) (.var 3))) (.var 2)) (.mul
    (.num 13074) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 122500) (.var
    2)) (.mul (.num 139324) (.var 3))) (.var 2)) (.mul (.num 29245) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 44593) (.var 2)) (.mul (.num 68748) (.var 3)))
    (.var 2)) (.mul (.num 22413) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 9067) (.var 2)) (.mul (.num 17152) (.var 3))) (.var 2)) (.mul (.num
    6203) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    928) (.var 2)) (.mul (.num 2046) (.var 3))) (.var 2)) (.mul (.neg (.num 69)) (.pow (.var 3)
    2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 34) (.var 2)) (.mul
    (.num 94) (.var 3))) (.var 2)) (.mul (.neg (.num 254)) (.pow (.var 3) 2))) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.mul (.neg (.num 24)) (.pow (.var 3) 2)) (.pow (.var 2) 6)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 16236) (.var 1)) (.add (.mul (.num 55338) (.var 2)) (.mul (.num 20376) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 77158) (.var 2)) (.mul (.num 62844) (.var 3)))
    (.var 2)) (.mul (.num 6600) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    57102) (.var 2)) (.mul (.num 76612) (.var 3))) (.var 2)) (.mul (.num 18456) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24252) (.var 2)) (.mul (.num
    47340) (.var 3))) (.var 2)) (.mul (.num 19495) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 5904) (.var 2)) (.mul (.num 15826) (.var 3))) (.var
    2)) (.mul (.num 9633) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 756) (.var 2)) (.mul (.num 2832) (.var 3))) (.var 2)) (.mul (.num 2178)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38)
    (.var 2)) (.mul (.num 250) (.var 3))) (.var 2)) (.mul (.num 153) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 8) (.var 3)) (.var 2)) (.mul (.neg (.num
    13)) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.neg (.num 2)) (.pow (.var
    3) 2)) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2280) (.var 1)) (.add (.mul
    (.num 8568) (.var 2)) (.mul (.num 3456) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    13301) (.var 2)) (.mul (.num 12168) (.var 3))) (.var 2)) (.mul (.num 1416) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11079) (.var 2)) (.mul (.num 17338) (.var
    3))) (.var 2)) (.mul (.num 4800) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 5361) (.var 2)) (.mul (.num 12918) (.var 3))) (.var 2)) (.mul (.num 6534)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1509)
    (.var 2)) (.mul (.num 5426) (.var 3))) (.var 2)) (.mul (.num 4627) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 228) (.var 2)) (.mul (.num 1286)
    (.var 3))) (.var 2)) (.mul (.num 1856) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 14) (.var 2)) (.mul (.num 160) (.var 3))) (.var 2)) (.mul (.num
    432) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 8) (.var
    3)) (.var 2)) (.mul (.num 56) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul
    (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 1)))) (.var 0)) (.pow (.mul (.add (.var
    0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3))) (.mul (.mul (.mul (.num 3) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.mul (.num 8) (.var 1)) (.var 0)) (.add (.mul (.add (.mul
    (.num 196) (.var 1)) (.add (.mul (.num 88) (.var 2)) (.mul (.num 48) (.var 3)))) (.var 1))
    (.mul (.mul (.num 16) (.var 3)) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.num 1922) (.var 1)) (.add (.mul (.num 1706) (.var 2)) (.mul (.num 782) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 368) (.var 2)) (.mul (.num 566) (.var 3))) (.var 2)) (.mul (.num
    40) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 96) (.var 3)) (.var 2)) (.mul
    (.num 16) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 10522) (.var 1)) (.add (.mul (.num 13853) (.var 2)) (.mul (.num 5614) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 5867) (.var 2)) (.mul (.num 6268) (.var 3))) (.var 2))
    (.mul (.num 560) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 800) (.var
    2)) (.mul (.num 2198) (.var 3))) (.var 2)) (.mul (.num 468) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 240) (.var 3)) (.var 2)) (.mul (.num 96) (.pow (.var
    3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 36677) (.var 1)) (.add (.mul (.num 63706) (.var 2)) (.mul (.num 23635) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 39798) (.var 2)) (.mul (.num 35702) (.var 3))) (.var
    2)) (.mul (.num 3428) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    10577) (.var 2)) (.mul (.num 19015) (.var 3))) (.var 2)) (.mul (.num 4344) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1000) (.var 2)) (.mul (.num 4204)
    (.var 3))) (.var 2)) (.mul (.num 1788) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 320) (.var 3)) (.var 2)) (.mul (.num 240) (.pow (.var 3) 2))) (.pow
    (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 86743) (.var 1)) (.add (.mul (.num 186456) (.var 2)) (.mul (.num 65291) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 152940) (.var 2)) (.mul (.num 124581) (.var 3)))
    (.var 2)) (.mul (.num 12165) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 59595) (.var 2)) (.mul (.num 89077) (.var 3))) (.var 2)) (.mul (.num 20615) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10904) (.var 2)) (.mul (.num
    29595) (.var 3))) (.var 2)) (.mul (.num 12654) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 728) (.var 2)) (.mul (.num 4488) (.var 3))) (.var 2))
    (.mul (.num 3344) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 240) (.var 3)) (.var 2)) (.mul (.num 320) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    143379) (.var 1)) (.add (.mul (.num 366319) (.var 2)) (.mul (.num 124835) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 370283) (.var 2)) (.mul (.num 288738) (.var 3))) (.var 2))
    (.mul (.num 27993) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 188460)
    (.var 2)) (.mul (.num 259935) (.var 3))) (.var 2)) (.mul (.num 59385) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50243) (.var 2)) (.mul (.num 115458)
    (.var 3))) (.var 2)) (.mul (.num 48236) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 6446) (.var 2)) (.mul (.num 26140) (.var 3))) (.var 2))
    (.mul (.num 18752) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 288) (.var 2)) (.mul (.num 2738) (.var 3))) (.var 2)) (.mul (.num 3468) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 96) (.var 3)) (.var
    2)) (.mul (.num 240) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 166718)
    (.var 1)) (.add (.mul (.num 492343) (.var 2)) (.mul (.num 168129) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 589190) (.var 2)) (.mul (.num 458494) (.var 3))) (.var 2)) (.mul (.num
    44129) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 367736) (.var 2))
    (.mul (.num 499862) (.var 3))) (.var 2)) (.mul (.num 112791) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 127310) (.var 2)) (.mul (.num 279504) (.var 3)))
    (.var 2)) (.mul (.num 114089) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 23644) (.var 2)) (.mul (.num 84723) (.var 3))) (.var 2)) (.mul (.num
    58245) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2017) (.var 2)) (.mul (.num 13286) (.var 3))) (.var 2)) (.mul (.num 15646) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48) (.var 2)) (.mul (.num
    898) (.var 3))) (.var 2)) (.mul (.num 2040) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.mul (.num 16) (.var 3)) (.var 2)) (.mul (.num 96) (.pow (.var 3) 2)))
    (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 134287) (.var 1)) (.add (.mul (.num
    449004) (.var 2)) (.mul (.num 157596) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    618595) (.var 2)) (.mul (.num 496269) (.var 3))) (.var 2)) (.mul (.num 48183) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 454802) (.var 2)) (.mul (.num 637546)
    (.var 3))) (.var 2)) (.mul (.num 144847) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 191914) (.var 2)) (.mul (.num 431906) (.var 3))) (.var 2)) (.mul (.num
    176421) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    45944) (.var 2)) (.mul (.num 165289) (.var 3))) (.var 2)) (.mul (.num 112147) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5625) (.var 2)) (.mul
    (.num 35003) (.var 3))) (.var 2)) (.mul (.num 39552) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 255) (.var 2)) (.mul (.num 3615) (.var 3)))
    (.var 2)) (.mul (.num 7458) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 124) (.var 3)) (.var 2)) (.mul (.num 640) (.pow (.var 3) 2))) (.pow (.var 2)
    6))) (.var 1)) (.mul (.mul (.num 16) (.pow (.var 3) 2)) (.pow (.var 2) 7)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 71615) (.var 1)) (.add (.mul (.num 266748) (.var 2)) (.mul (.num
    98264) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 414291) (.var 2)) (.mul (.num
    351316) (.var 3))) (.var 2)) (.mul (.num 35184) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 348761) (.var 2)) (.mul (.num 520493) (.var 3))) (.var 2)) (.mul (.num
    122269) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 172192)
    (.var 2)) (.mul (.num 415092) (.var 3))) (.var 2)) (.mul (.num 175421) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 49808) (.var 2)) (.mul (.num
    192513) (.var 3))) (.var 2)) (.mul (.num 134701) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 7767) (.var 2)) (.mul (.num 51661) (.var 3))) (.var
    2)) (.mul (.num 59524) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 496) (.var 2)) (.mul (.num 7306) (.var 3))) (.var 2)) (.mul (.num 14907)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 403) (.var 3))
    (.var 2)) (.mul (.num 1884) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul
    (.num 84) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 22815) (.var 1)) (.add (.mul (.num 93405) (.var 2)) (.mul (.num 36744) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 160820) (.var 2)) (.mul (.num 146994) (.var 3))) (.var 2))
    (.mul (.num 15558) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 151691)
    (.var 2)) (.mul (.num 246626) (.var 3))) (.var 2)) (.mul (.num 61626) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 85091) (.var 2)) (.mul (.num 226143)
    (.var 3))) (.var 2)) (.mul (.num 102349) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 28498) (.var 2)) (.mul (.num 123071) (.var 3))) (.var 2))
    (.mul (.num 92805) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 5287) (.var 2)) (.mul (.num 39902) (.var 3))) (.var 2)) (.mul (.num 49784) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 419) (.var 2))
    (.mul (.num 7139) (.var 3))) (.var 2)) (.mul (.num 15782) (.pow (.var 3) 2))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.mul (.num 541) (.var 3)) (.var 2)) (.mul (.num 2712) (.pow
    (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 190) (.pow (.var 3) 2)) (.pow
    (.var 2) 7))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3294) (.var 1)) (.add
    (.mul (.num 14652) (.var 2)) (.mul (.num 6246) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 27576) (.var 2)) (.mul (.num 27594) (.var 3))) (.var 2)) (.mul (.num 3168) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 28638) (.var 2)) (.mul (.num 51588)
    (.var 3))) (.var 2)) (.mul (.num 14130) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 17842) (.var 2)) (.mul (.num 53280) (.var 3))) (.var 2)) (.mul (.num
    26770) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    6708) (.var 2)) (.mul (.num 33096) (.var 3))) (.var 2)) (.mul (.num 28143) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1416) (.var 2)) (.mul (.num
    12456) (.var 3))) (.var 2)) (.mul (.num 17878) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 130) (.var 2)) (.mul (.num 2646) (.var 3))) (.var 2))
    (.mul (.num 6910) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 246) (.var 3)) (.var 2)) (.mul (.num 1512) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var
    1)) (.mul (.mul (.num 145) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 1) 3)))) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.add (.var 1)
    (.var 2)))) (.mul (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 60) (.var 1)) (.mul (.num 20) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 1048)
    (.var 1)) (.add (.mul (.num 828) (.var 2)) (.mul (.num 120) (.var 3)))) (.var 1)) (.mul (.add
    (.mul (.num 160) (.var 2)) (.mul (.num 40) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.num 8178) (.var 1)) (.add (.mul (.num 10092) (.var 2)) (.mul (.num 1800)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 4054) (.var 2)) (.mul (.num 1352) (.var
    3))) (.var 2)) (.mul (.num 60) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 540) (.var 2)) (.mul (.num 232) (.var 3))) (.var 2)) (.mul (.num 20) (.pow (.var 3) 2)))
    (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 37734) (.var 1))
    (.add (.mul (.num 62920) (.var 2)) (.mul (.num 12208) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 38250) (.var 2)) (.mul (.num 14312) (.var 3))) (.var 2)) (.mul (.num 800) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10144) (.var 2)) (.mul (.num
    5224) (.var 3))) (.var 2)) (.mul (.num 596) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1000) (.var 2)) (.mul (.num 600) (.var 3))) (.var 2)) (.mul
    (.num 96) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 114672) (.var 1)) (.add (.mul (.num 239888) (.var 2))
    (.mul (.num 49340) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 194290) (.var 2)) (.mul
    (.num 78900) (.var 3))) (.var 2)) (.mul (.num 4812) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 76516) (.var 2)) (.mul (.num 44572) (.var 3))) (.var 2)) (.mul (.num
    5620) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14702)
    (.var 2)) (.mul (.num 10612) (.var 3))) (.var 2)) (.mul (.num 1972) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1100) (.var 2)) (.mul (.num 920)
    (.var 3))) (.var 2)) (.mul (.num 204) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 241547) (.var 1))
    (.add (.mul (.num 605969) (.var 2)) (.mul (.num 131870) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 610571) (.var 2)) (.mul (.num 268222) (.var 3))) (.var 2)) (.mul (.num
    17212) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 316799) (.var 2))
    (.mul (.num 206554) (.var 3))) (.var 2)) (.mul (.num 27714) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 89198) (.var 2)) (.mul (.num 75578) (.var 3)))
    (.var 2)) (.mul (.num 15420) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 12828) (.var 2)) (.mul (.num 13296) (.var 3))) (.var 2)) (.mul (.num
    3498) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    720) (.var 2)) (.mul (.num 920) (.var 3))) (.var 2)) (.mul (.num 280) (.pow (.var 3) 2)))
    (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 360614) (.var 1)) (.add (.mul (.num 1052469) (.var 2)) (.mul
    (.num 243908) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1264167) (.var 2)) (.mul
    (.num 604496) (.var 3))) (.var 2)) (.mul (.num 40603) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 809639) (.var 2)) (.mul (.num 592724) (.var 3))) (.var 2)) (.mul
    (.num 84475) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    297461) (.var 2)) (.mul (.num 294984) (.var 3))) (.var 2)) (.mul (.num 65847) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 62004) (.var 2)) (.mul
    (.num 79000) (.var 3))) (.var 2)) (.mul (.num 24097) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6610) (.var 2)) (.mul (.num 10872) (.var 3)))
    (.var 2)) (.mul (.num 4222) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 260) (.var 2)) (.mul (.num 600) (.var 3))) (.var 2)) (.mul (.num 300)
    (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 382288) (.var 1)) (.add (.mul
    (.num 1269897) (.var 2)) (.mul (.num 316084) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 1766006) (.var 2)) (.mul (.num 926428) (.var 3))) (.var 2)) (.mul (.num 65744) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1339890) (.var 2)) (.mul (.num
    1107212) (.var 3))) (.var 2)) (.mul (.num 169807) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 602924) (.var 2)) (.mul (.num 700140) (.var 3))) (.var 2))
    (.mul (.num 173329) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 162473) (.var 2)) (.mul (.num 253296) (.var 3))) (.var 2)) (.mul (.num 89965)
    (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24834)
    (.var 2)) (.mul (.num 52368) (.var 3))) (.var 2)) (.mul (.num 25387) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1832) (.var 2)) (.mul (.num 5656)
    (.var 3))) (.var 2)) (.mul (.num 3788) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 40) (.var 2)) (.mul (.num 232) (.var 3))) (.var 2)) (.mul (.num
    240) (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 282480) (.var
    1)) (.add (.mul (.num 1050349) (.var 2)) (.mul (.num 282928) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 1655367) (.var 2)) (.mul (.num 958634) (.var 3))) (.var 2)) (.mul (.num
    72825) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1446060) (.var 2))
    (.mul (.num 1353340) (.var 3))) (.var 2)) (.mul (.num 226589) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 765492) (.var 2)) (.mul (.num 1039456) (.var
    3))) (.var 2)) (.mul (.num 289035) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 250471) (.var 2)) (.mul (.num 474292) (.var 3))) (.var 2)) (.mul
    (.num 196949) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 48963) (.var 2)) (.mul (.num 130810) (.var 3))) (.var 2)) (.mul (.num 78052) (.pow (.var
    3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5108) (.var 2))
    (.mul (.num 20880) (.var 3))) (.var 2)) (.mul (.num 18150) (.pow (.var 3) 2))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 206) (.var 2)) (.mul (.num 1660) (.var 3)))
    (.var 2)) (.mul (.num 2292) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 40) (.var 3)) (.var 2)) (.mul (.num 116) (.pow (.var 3) 2))) (.pow (.var 2)
    7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 138757) (.var 1)) (.add (.mul (.num 569888)
    (.var 2)) (.mul (.num 167110) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1001140)
    (.var 2)) (.mul (.num 642712) (.var 3))) (.var 2)) (.mul (.num 52852) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 985827) (.var 2)) (.mul (.num 1046216) (.var
    3))) (.var 2)) (.mul (.num 193189) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 596812) (.var 2)) (.mul (.num 944600) (.var 3))) (.var 2)) (.mul (.num
    296953) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    227755) (.var 2)) (.mul (.num 519176) (.var 3))) (.var 2)) (.mul (.num 251621) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 53449) (.var 2)) (.mul
    (.num 178254) (.var 3))) (.var 2)) (.mul (.num 128981) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7018) (.var 2)) (.mul (.num 37274) (.var 3)))
    (.var 2)) (.mul (.num 40924) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 390) (.var 2)) (.mul (.num 4290) (.var 3))) (.var 2)) (.mul (.num
    7742) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num 200)
    (.var 3)) (.var 2)) (.mul (.num 758) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.mul (.num 24) (.pow (.var 3) 2)) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 40824) (.var 1)) (.add (.mul (.num 183162) (.var 2)) (.mul (.num 58740)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 353878) (.var 2)) (.mul (.num 252576)
    (.var 3))) (.var 2)) (.mul (.num 22686) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 386313) (.var 2)) (.mul (.num 464980) (.var 3))) (.var 2)) (.mul (.num 95394)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 261813) (.var 2))
    (.mul (.num 481250) (.var 3))) (.var 2)) (.mul (.num 171707) (.pow (.var 3) 2))) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 113237) (.var 2)) (.mul (.num 308152)
    (.var 3))) (.var 2)) (.mul (.num 173947) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 30615) (.var 2)) (.mul (.num 125752) (.var 3))) (.var 2))
    (.mul (.num 109240) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 4740) (.var 2)) (.mul (.num 32112) (.var 3))) (.var 2)) (.mul (.num 43790) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 322) (.var 2))
    (.mul (.num 4710) (.var 3))) (.var 2)) (.mul (.num 10961) (.pow (.var 3) 2))) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.mul (.num 304) (.var 3)) (.var 2)) (.mul (.num 1557) (.pow
    (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.mul (.num 94) (.pow (.var 3) 2)) (.pow
    (.var 2) 8))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5454) (.var 1)) (.add
    (.mul (.num 26478) (.var 2)) (.mul (.num 9324) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 55629) (.var 2)) (.mul (.num 44244) (.var 3))) (.var 2)) (.mul (.num 4380) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 66408) (.var 2)) (.mul (.num 90642)
    (.var 3))) (.var 2)) (.mul (.num 20826) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 49534) (.var 2)) (.mul (.num 105384) (.var 3))) (.var 2)) (.mul (.num
    42938) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    23756) (.var 2)) (.mul (.num 76596) (.var 3))) (.var 2)) (.mul (.num 50551) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7185) (.var 2)) (.mul
    (.num 35892) (.var 3))) (.var 2)) (.mul (.num 37499) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1258) (.var 2)) (.mul (.num 10662) (.var 3)))
    (.var 2)) (.mul (.num 18094) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 98) (.var 2)) (.mul (.num 1848) (.var 3))) (.var 2)) (.mul (.num 5584)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num 144) (.var 3))
    (.var 2)) (.mul (.num 1013) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.mul
    (.num 83) (.pow (.var 3) 2)) (.pow (.var 2) 8))) (.pow (.var 1) 2)))) (.var 0)) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.add (.add (.add (.add (.mul (.mul (.num 40) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 2) (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var 3))))
    (.var 0)) (.add (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 4) (.var 3))) (.var 2))
    (.mul (.num 2) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num
    4) (.var 3))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var
    2)) (.mul (.num 2) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 4)
    (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.var 0))) (.pow (.var 0) 3)) (.mul (.mul (.num 20)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5) (.var 0)) (.add (.mul
    (.num 11) (.var 2)) (.mul (.num 10) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 7)
    (.var 2)) (.mul (.neg (.num 8)) (.var 3))) (.var 2)) (.mul (.num 5) (.pow (.var 3) 2)))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var
    2)) (.mul (.neg (.num 9)) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.mul (.num 3) (.pow
    (.var 3) 2)) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var
    2) 3)))) (.pow (.var 0) 4))) (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 3) (.var 0)) (.add (.mul (.num 6) (.var 2)) (.mul (.num 6) (.var 3)))) (.var 0))
    (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.neg (.num 6)) (.var 3))) (.var 2)) (.mul
    (.num 3) (.pow (.var 3) 2)))) (.var 0)) (.mul (.mul (.neg (.num 6)) (.pow (.var 3) 2)) (.var
    2))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 2)))) (.pow (.var 0)
    5))) (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 2) (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num 2)
    (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num
    20) (.var 3))) (.var 2)) (.mul (.num 8) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.mul (.num 8) (.var 3)) (.var 2)) (.mul (.num 10) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 0)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.pow (.var 0) 3)))
    (.pow (.var 0) 1))) (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 9) (.var 0)) (.add (.mul (.num 27) (.var 2)) (.mul (.num 18) (.var
    3)))) (.var 0)) (.add (.mul (.add (.mul (.num 27) (.var 2)) (.mul (.num 46) (.var 3))) (.var
    2)) (.mul (.num 9) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var
    2)) (.mul (.num 38) (.var 3))) (.var 2)) (.mul (.num 19) (.pow (.var 3) 2))) (.var 2))) (.var
    0)) (.mul (.add (.mul (.mul (.num 10) (.var 3)) (.var 2)) (.mul (.num 11) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.pow (.var 0) 2))) (.pow (.var 0) 2))) (.mul (.mul (.num 4) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 15) (.var 0)) (.add (.mul (.num 36) (.var 2)) (.mul
    (.num 30) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 27) (.var 2)) (.mul (.num 40)
    (.var 3))) (.var 2)) (.mul (.num 15) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 6) (.var 2)) (.mul (.num 14) (.var 3))) (.var 2)) (.mul (.num 8) (.pow (.var 3)
    2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.neg
    (.num 5)) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 2) (.pow (.var
    3) 2)) (.pow (.var 2) 3))) (.var 0))) (.pow (.var 0) 3))) (.mul (.mul (.num 72) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add (.mul (.num 8) (.var 2))
    (.mul (.num 4) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num
    12) (.var 3))) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 4) (.var 2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul (.num 4) (.pow (.var 3)
    2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 2)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.pow (.var 0) 3))) (.pow (.var 0) 2))) (.mul (.mul
    (.num 48) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 7) (.var 0))
    (.add (.mul (.num 19) (.var 2)) (.mul (.num 14) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul
    (.num 17) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num 7) (.pow (.var 3) 2))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 2)) (.mul (.num 6) (.var 3))) (.var 2))
    (.mul (.num 1) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var
    3)) (.var 2)) (.mul (.neg (.num 3)) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.var 0))) (.pow (.var 0) 3))) (.mul
    (.mul (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 8) (.var 0)) (.add (.mul
    (.num 17) (.var 2)) (.mul (.num 16) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 10)
    (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var 2)) (.mul (.num 8) (.pow (.var 3) 2)))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var
    2)) (.mul (.neg (.num 9)) (.pow (.var 3) 2))) (.var 2))) (.pow (.var 0) 2)) (.mul (.mul (.num
    1) (.pow (.var 3) 2)) (.pow (.var 2) 3)))) (.pow (.var 0) 4))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.add (.add (.add (.add
    (.add (.add (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.add (.mul (.num
    172) (.var 2)) (.mul (.num 24) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 786) (.var
    2)) (.mul (.num 300) (.var 3))) (.var 2)) (.mul (.num 12) (.pow (.var 3) 2)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 1734) (.var 2)) (.mul (.num 1152) (.var 3))) (.var 2)) (.mul
    (.num 140) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2098)
    (.var 2)) (.mul (.num 2238) (.var 3))) (.var 2)) (.mul (.num 504) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1422) (.var 2)) (.mul (.num 2536)
    (.var 3))) (.var 2)) (.mul (.num 972) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 504) (.var 2)) (.mul (.num 1704) (.var 3))) (.var 2)) (.mul
    (.num 1170) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 72) (.var 2)) (.mul (.num 624) (.var 3))) (.var 2)) (.mul (.num 870) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 94) (.var 3)) (.var 2)) (.mul
    (.num 354) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 58) (.pow (.var
    3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 3))) (.pow (.var 0) 1)) (.mul (.mul (.num 3) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 54) (.var 0)) (.add (.mul (.num 690) (.var 2)) (.mul (.num 108) (.var
    3)))) (.var 0)) (.add (.mul (.add (.mul (.num 2760) (.var 2)) (.mul (.num 1158) (.var 3)))
    (.var 2)) (.mul (.num 54) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    5348) (.var 2)) (.mul (.num 3538) (.var 3))) (.var 2)) (.mul (.num 522) (.pow (.var 3) 2)))
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5714) (.var 2)) (.mul (.num 5372)
    (.var 3))) (.var 2)) (.mul (.num 1363) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 3434) (.var 2)) (.mul (.num 4896) (.var 3))) (.var 2)) (.mul
    (.num 1833) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 1080) (.var 2)) (.mul (.num 2814) (.var 3))) (.var 2)) (.mul (.num 1720) (.pow (.var 3)
    2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 136) (.var 2)) (.mul
    (.num 930) (.var 3))) (.var 2)) (.mul (.num 1180) (.pow (.var 3) 2))) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.mul (.num 128) (.var 3)) (.var 2)) (.mul (.num 471) (.pow (.var
    3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 73) (.pow (.var 3) 2)) (.pow (.var 2)
    7))) (.pow (.var 0) 2))) (.pow (.var 0) 2))) (.mul (.mul (.num 1) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 90) (.var 0)) (.add (.mul (.num 1062) (.var 2)) (.mul (.num 180) (.var 3)))) (.var 0))
    (.add (.mul (.add (.mul (.num 3810) (.var 2)) (.mul (.num 1698) (.var 3))) (.var 2)) (.mul
    (.num 90) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6468) (.var 2))
    (.mul (.num 4016) (.var 3))) (.var 2)) (.mul (.num 738) (.pow (.var 3) 2))) (.var 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 5898) (.var 2)) (.mul (.num 4096) (.var 3))) (.var 2))
    (.mul (.num 1271) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 2932) (.var 2)) (.mul (.num 2360) (.var 3))) (.var 2)) (.mul (.num 718) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 734) (.var 2))
    (.mul (.num 1090) (.var 3))) (.var 2)) (.mul (.num 406) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 70) (.var 2)) (.mul (.num 380) (.var 3)))
    (.var 2)) (.mul (.num 586) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.mul (.num 52) (.var 3)) (.var 2)) (.mul (.num 317) (.pow (.var 3) 2))) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.mul (.num 42) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 0))) (.pow (.var
    0) 3))) (.mul (.mul (.num 18) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.add (.mul (.num
    170) (.var 2)) (.mul (.num 24) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 766) (.var
    2)) (.mul (.num 284) (.var 3))) (.var 2)) (.mul (.num 12) (.pow (.var 3) 2)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 1662) (.var 2)) (.mul (.num 988) (.var 3))) (.var 2)) (.mul
    (.num 126) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1970)
    (.var 2)) (.mul (.num 1718) (.var 3))) (.var 2)) (.mul (.num 362) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1300) (.var 2)) (.mul (.num 1768)
    (.var 3))) (.var 2)) (.mul (.num 528) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 444) (.var 2)) (.mul (.num 1116) (.var 3))) (.var 2)) (.mul
    (.num 526) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 60) (.var 2)) (.mul (.num 396) (.var 3))) (.var 2)) (.mul (.num 388) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 58) (.var 3)) (.var 2)) (.mul
    (.num 172) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 30) (.pow (.var
    3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 2))) (.pow (.var 0) 2))) (.mul (.mul (.num 12) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 42) (.var 0)) (.add (.mul (.num 513) (.var 2)) (.mul (.num 84) (.var
    3)))) (.var 0)) (.add (.mul (.add (.mul (.num 1934) (.var 2)) (.mul (.num 806) (.var 3)))
    (.var 2)) (.mul (.num 42) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    3494) (.var 2)) (.mul (.num 1944) (.var 3))) (.var 2)) (.mul (.num 347) (.pow (.var 3) 2)))
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3440) (.var 2)) (.mul (.num 2088)
    (.var 3))) (.var 2)) (.mul (.num 588) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 1879) (.var 2)) (.mul (.num 1410) (.var 3))) (.var 2)) (.mul
    (.num 334) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 528) (.var 2)) (.mul (.num 824) (.var 3))) (.var 2)) (.mul (.num 296) (.pow (.var 3)
    2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 58) (.var 2)) (.mul
    (.num 330) (.var 3))) (.var 2)) (.mul (.num 465) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var
    0)) (.mul (.add (.mul (.mul (.num 50) (.var 3)) (.var 2)) (.mul (.num 258) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 38) (.pow (.var 3) 2)) (.pow (.var 2) 7)))
    (.var 0))) (.pow (.var 0) 3))) (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 48) (.var 0)) (.add
    (.mul (.num 541) (.var 2)) (.mul (.num 96) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num
    1809) (.var 2)) (.mul (.num 798) (.var 3))) (.var 2)) (.mul (.num 48) (.pow (.var 3) 2))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2777) (.var 2)) (.mul (.num 1322) (.var 3)))
    (.var 2)) (.mul (.num 335) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 2189) (.var 2)) (.mul (.num 430) (.var 3))) (.var 2)) (.mul (.num 283) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 874) (.var 2)) (.mul
    (.neg (.num 240)) (.var 3))) (.var 2)) (.mul (.neg (.num 281)) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 154) (.var 2)) (.mul (.neg (.num 60))
    (.var 3))) (.var 2)) (.mul (.neg (.num 115)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 8) (.var 2)) (.mul (.num 26) (.var 3))) (.var 2)) (.mul
    (.num 212) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 4)
    (.var 3)) (.var 2)) (.mul (.num 88) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.mul (.num 6) (.pow (.var 3) 2)) (.pow (.var 2) 7)))) (.pow (.var 0) 4))) (.mul (.num 3)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 12) (.var 0)) (.add (.mul (.num 174) (.var 2)) (.mul (.num 24)
    (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 810) (.var 2)) (.mul (.num 328) (.var 3)))
    (.var 2)) (.mul (.num 12) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    1826) (.var 2)) (.mul (.num 1430) (.var 3))) (.var 2)) (.mul (.num 154) (.pow (.var 3) 2)))
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2264) (.var 2)) (.mul (.num 3036)
    (.var 3))) (.var 2)) (.mul (.num 624) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 1578) (.var 2)) (.mul (.num 3564) (.var 3))) (.var 2)) (.mul
    (.num 1230) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 578) (.var 2)) (.mul (.num 2360) (.var 3))) (.var 2)) (.mul (.num 1340) (.pow (.var 3)
    2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 86) (.var 2)) (.mul
    (.num 822) (.var 3))) (.var 2)) (.mul (.num 822) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var
    0)) (.mul (.add (.mul (.mul (.num 116) (.var 3)) (.var 2)) (.mul (.num 264) (.pow (.var 3)
    2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 34) (.pow (.var 3) 2)) (.pow (.var 2)
    7))) (.pow (.var 0) 4)))) (.mul (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 66) (.var 0)) (.add
    (.mul (.num 871) (.var 2)) (.mul (.num 132) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul
    (.num 3640) (.var 2)) (.mul (.num 1584) (.var 3))) (.var 2)) (.mul (.num 66) (.pow (.var 3)
    2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 7406) (.var 2)) (.mul (.num 5821) (.var
    3))) (.var 2)) (.mul (.num 725) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 8338) (.var 2)) (.mul (.num 10439) (.var 3))) (.var 2)) (.mul (.num 2345)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5299)
    (.var 2)) (.mul (.num 10498) (.var 3))) (.var 2)) (.mul (.num 3623) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1772) (.var 2)) (.mul (.num 6082)
    (.var 3))) (.var 2)) (.mul (.num 3120) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 240) (.var 2)) (.mul (.num 1901) (.var 3))) (.var 2)) (.mul
    (.num 1583) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num
    247) (.var 3)) (.var 2)) (.mul (.num 461) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0))
    (.mul (.mul (.num 61) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 3))) (.pow (.var
    0) 1))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 144) (.var 0)) (.add (.mul (.num 1767)
    (.var 2)) (.mul (.num 288) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 6713) (.var 2))
    (.mul (.num 3066) (.var 3))) (.var 2)) (.mul (.num 144) (.pow (.var 3) 2)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 12269) (.var 2)) (.mul (.num 9301) (.var 3))) (.var 2)) (.mul
    (.num 1365) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    12271) (.var 2)) (.mul (.num 13338) (.var 3))) (.var 2)) (.mul (.num 3359) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6844) (.var 2)) (.mul (.num
    10674) (.var 3))) (.var 2)) (.mul (.num 3542) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 1980) (.var 2)) (.mul (.num 5122) (.var 3))) (.var 2))
    (.mul (.num 1977) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 228) (.var 2)) (.mul (.num 1449) (.var 3))) (.var 2)) (.mul (.num 882) (.pow (.var
    3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 186) (.var 3)) (.var 2))
    (.mul (.num 388) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 79) (.pow
    (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 2))) (.pow (.var 0) 2))) (.mul (.mul (.num 18)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 6) (.var 0)) (.add (.mul (.num 86) (.var 2)) (.mul (.num 12)
    (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 395) (.var 2)) (.mul (.num 156) (.var 3)))
    (.var 2)) (.mul (.num 6) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    877) (.var 2)) (.mul (.num 630) (.var 3))) (.var 2)) (.mul (.num 70) (.pow (.var 3) 2))) (.var
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1068) (.var 2)) (.mul (.num 1234) (.var
    3))) (.var 2)) (.mul (.num 239) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 728) (.var 2)) (.mul (.num 1336) (.var 3))) (.var 2)) (.mul (.num 377)
    (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 259)
    (.var 2)) (.mul (.num 816) (.var 3))) (.var 2)) (.mul (.num 308) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 37) (.var 2)) (.mul (.num 262)
    (.var 3))) (.var 2)) (.mul (.num 128) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul
    (.add (.mul (.mul (.num 34) (.var 3)) (.var 2)) (.mul (.num 23) (.pow (.var 3) 2))) (.pow
    (.var 2) 6))) (.var 0)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow
    (.var 0) 3))) (.pow (.var 0) 1))) (.mul (.mul (.num 18) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 27) (.var
    0)) (.add (.mul (.num 345) (.var 2)) (.mul (.num 54) (.var 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.num 1385) (.var 2)) (.mul (.num 594) (.var 3))) (.var 2)) (.mul (.num 27) (.pow (.var
    3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2694) (.var 2)) (.mul (.num 1884) (.var
    3))) (.var 2)) (.mul (.num 261) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 2885) (.var 2)) (.mul (.num 2860) (.var 3))) (.var 2)) (.mul (.num 649)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1733)
    (.var 2)) (.mul (.num 2472) (.var 3))) (.var 2)) (.mul (.num 680) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 543) (.var 2)) (.mul (.num 1312)
    (.var 3))) (.var 2)) (.mul (.num 383) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 68) (.var 2)) (.mul (.num 414) (.var 3))) (.var 2)) (.mul (.num
    203) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 58) (.var
    3)) (.var 2)) (.mul (.num 109) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul
    (.num 24) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 2))) (.pow (.var 0) 2))) (.mul
    (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 45) (.var 0)) (.add (.mul (.num 531) (.var 2)) (.mul
    (.num 90) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 1908) (.var 2)) (.mul (.num 858)
    (.var 3))) (.var 2)) (.mul (.num 45) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 3246) (.var 2)) (.mul (.num 2074) (.var 3))) (.var 2)) (.mul (.num 369) (.pow
    (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2964) (.var 2)) (.mul
    (.num 2138) (.var 3))) (.var 2)) (.mul (.num 616) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1472) (.var 2)) (.mul (.num 1180) (.var 3)))
    (.var 2)) (.mul (.num 224) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 367) (.var 2)) (.mul (.num 494) (.var 3))) (.var 2)) (.mul (.neg (.num 46))
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 35)
    (.var 2)) (.mul (.num 172) (.var 3))) (.var 2)) (.mul (.num 122) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 26) (.var 3)) (.var 2)) (.mul (.num 121)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 21) (.pow (.var 3) 2))
    (.pow (.var 2) 7))) (.var 0))) (.pow (.var 0) 3))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh1132.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh1132.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh1132.leading0 e g v + f * FullHigh1132.leading1 e g v +
        f^2 * FullHigh1132.remainder e f g v := by
  have hden : denominatorOne FullHigh1132.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh1132.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh1132.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 274877906944 17 10 2) lhs =
      value (Encoding4.vars 274877906944 17 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 274877906944 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 17 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 17 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullHigh1132.source e f g v =
      FullHigh1132.leading0 e g v + f * FullHigh1132.leading1 e g v +
        f^2 * FullHigh1132.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 274877906944 17 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh113Encoded2

namespace SPR.N6.Tail.CoreEndpoint.FullHigh113
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition2 (e f g v : ℝ) :
    FullHigh1132.source e f g v =
      FullHigh1132.leading0 e g v + f * FullHigh1132.leading1 e g v +
        f^2 * FullHigh1132.remainder e f g v :=
  FullHigh113Encoded2.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh113
