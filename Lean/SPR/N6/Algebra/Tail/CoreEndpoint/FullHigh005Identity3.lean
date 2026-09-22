import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh005Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^3 layer of FullHigh005.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh005Encoded3
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
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
    2) 5))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))) 4)) (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 150) (.var 1)) (.mul (.num
    50) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 1890) (.var 1)) (.add (.mul (.num 1430)
    (.var 2)) (.mul (.num 300) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 260) (.var 2)) (.mul
    (.num 100) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 10632)
    (.var 1)) (.add (.mul (.num 12438) (.var 2)) (.mul (.num 3120) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 4596) (.var 2)) (.mul (.num 2220) (.var 3))) (.var 2)) (.mul (.num
    150) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 550) (.var 2)) (.mul
    (.num 340) (.var 3))) (.var 2)) (.mul (.num 50) (.pow (.var 3) 2))) (.var 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 34746) (.var 1)) (.add (.mul (.num
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
    (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var
    1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3))) (.mul (.mul (.num 1) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num 20) (.var 2))) (.var 0))
    (.add (.mul (.add (.mul (.num 1048) (.var 1)) (.add (.mul (.num 828) (.var 2)) (.mul (.num
    120) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 160) (.var 2)) (.mul (.num 40) (.var 3)))
    (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 8178) (.var 1)) (.add (.mul
    (.num 10092) (.var 2)) (.mul (.num 1800) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    4054) (.var 2)) (.mul (.num 1352) (.var 3))) (.var 2)) (.mul (.num 60) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 540) (.var 2)) (.mul (.num 232) (.var 3))) (.var
    2)) (.mul (.num 20) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 37734) (.var 1)) (.add (.mul (.num 62920) (.var 2)) (.mul (.num 12208)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 38250) (.var 2)) (.mul (.num 14312) (.var
    3))) (.var 2)) (.mul (.num 800) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 10144) (.var 2)) (.mul (.num 5224) (.var 3))) (.var 2)) (.mul (.num 596) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1000) (.var 2)) (.mul (.num 600)
    (.var 3))) (.var 2)) (.mul (.num 96) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 114672) (.var 1)) (.add (.mul
    (.num 239888) (.var 2)) (.mul (.num 49340) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    194290) (.var 2)) (.mul (.num 78900) (.var 3))) (.var 2)) (.mul (.num 4812) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 76516) (.var 2)) (.mul (.num 44572) (.var
    3))) (.var 2)) (.mul (.num 5620) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 14702) (.var 2)) (.mul (.num 10612) (.var 3))) (.var 2)) (.mul (.num 1972)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1100)
    (.var 2)) (.mul (.num 920) (.var 3))) (.var 2)) (.mul (.num 204) (.pow (.var 3) 2))) (.pow
    (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 241547) (.var 1)) (.add (.mul (.num 605969) (.var 2)) (.mul (.num 131870) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 610571) (.var 2)) (.mul (.num 268222) (.var 3)))
    (.var 2)) (.mul (.num 17212) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 316799) (.var 2)) (.mul (.num 206554) (.var 3))) (.var 2)) (.mul (.num 27714) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 89198) (.var 2)) (.mul
    (.num 75578) (.var 3))) (.var 2)) (.mul (.num 15420) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12828) (.var 2)) (.mul (.num 13296) (.var 3)))
    (.var 2)) (.mul (.num 3498) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 720) (.var 2)) (.mul (.num 920) (.var 3))) (.var 2)) (.mul (.num 280)
    (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 360614) (.var 1)) (.add (.mul (.num 1052469)
    (.var 2)) (.mul (.num 243908) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1264167)
    (.var 2)) (.mul (.num 604496) (.var 3))) (.var 2)) (.mul (.num 40603) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 809639) (.var 2)) (.mul (.num 592724) (.var 3)))
    (.var 2)) (.mul (.num 84475) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 297461) (.var 2)) (.mul (.num 294984) (.var 3))) (.var 2)) (.mul (.num 65847)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 62004)
    (.var 2)) (.mul (.num 79000) (.var 3))) (.var 2)) (.mul (.num 24097) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6610) (.var 2)) (.mul (.num 10872)
    (.var 3))) (.var 2)) (.mul (.num 4222) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 260) (.var 2)) (.mul (.num 600) (.var 3))) (.var 2)) (.mul (.num
    300) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 382288) (.var 1)) (.add
    (.mul (.num 1269897) (.var 2)) (.mul (.num 316084) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 1766006) (.var 2)) (.mul (.num 926428) (.var 3))) (.var 2)) (.mul (.num 65744)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1339890) (.var 2)) (.mul
    (.num 1107212) (.var 3))) (.var 2)) (.mul (.num 169807) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 602924) (.var 2)) (.mul (.num 700140) (.var 3))) (.var
    2)) (.mul (.num 173329) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 162473) (.var 2)) (.mul (.num 253296) (.var 3))) (.var 2)) (.mul (.num
    89965) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    24834) (.var 2)) (.mul (.num 52368) (.var 3))) (.var 2)) (.mul (.num 25387) (.pow (.var 3)
    2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1832) (.var 2)) (.mul
    (.num 5656) (.var 3))) (.var 2)) (.mul (.num 3788) (.pow (.var 3) 2))) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40) (.var 2)) (.mul (.num 232) (.var 3))) (.var
    2)) (.mul (.num 240) (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 282480) (.var 1)) (.add (.mul (.num 1050349) (.var 2)) (.mul (.num 282928) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 1655367) (.var 2)) (.mul (.num 958634) (.var 3)))
    (.var 2)) (.mul (.num 72825) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1446060) (.var 2)) (.mul (.num 1353340) (.var 3))) (.var 2)) (.mul (.num 226589) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 765492) (.var 2)) (.mul
    (.num 1039456) (.var 3))) (.var 2)) (.mul (.num 289035) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 250471) (.var 2)) (.mul (.num 474292) (.var
    3))) (.var 2)) (.mul (.num 196949) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 48963) (.var 2)) (.mul (.num 130810) (.var 3))) (.var 2)) (.mul
    (.num 78052) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 5108) (.var 2)) (.mul (.num 20880) (.var 3))) (.var 2)) (.mul (.num 18150) (.pow (.var
    3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 206) (.var 2)) (.mul
    (.num 1660) (.var 3))) (.var 2)) (.mul (.num 2292) (.pow (.var 3) 2))) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 40) (.var 3)) (.var 2)) (.mul (.num 116) (.pow (.var
    3) 2))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 138757) (.var 1))
    (.add (.mul (.num 569888) (.var 2)) (.mul (.num 167110) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 1001140) (.var 2)) (.mul (.num 642712) (.var 3))) (.var 2)) (.mul (.num
    52852) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 985827) (.var 2))
    (.mul (.num 1046216) (.var 3))) (.var 2)) (.mul (.num 193189) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 596812) (.var 2)) (.mul (.num 944600) (.var 3)))
    (.var 2)) (.mul (.num 296953) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 227755) (.var 2)) (.mul (.num 519176) (.var 3))) (.var 2)) (.mul (.num
    251621) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    53449) (.var 2)) (.mul (.num 178254) (.var 3))) (.var 2)) (.mul (.num 128981) (.pow (.var 3)
    2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7018) (.var 2)) (.mul
    (.num 37274) (.var 3))) (.var 2)) (.mul (.num 40924) (.pow (.var 3) 2))) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 390) (.var 2)) (.mul (.num 4290) (.var 3)))
    (.var 2)) (.mul (.num 7742) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 200) (.var 3)) (.var 2)) (.mul (.num 758) (.pow (.var 3) 2))) (.pow (.var 2)
    7))) (.var 1)) (.mul (.mul (.num 24) (.pow (.var 3) 2)) (.pow (.var 2) 8)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 40824) (.var 1)) (.add (.mul (.num 183162) (.var 2)) (.mul
    (.num 58740) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 353878) (.var 2)) (.mul (.num
    252576) (.var 3))) (.var 2)) (.mul (.num 22686) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 386313) (.var 2)) (.mul (.num 464980) (.var 3))) (.var 2)) (.mul (.num
    95394) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 261813)
    (.var 2)) (.mul (.num 481250) (.var 3))) (.var 2)) (.mul (.num 171707) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 113237) (.var 2)) (.mul
    (.num 308152) (.var 3))) (.var 2)) (.mul (.num 173947) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30615) (.var 2)) (.mul (.num 125752) (.var 3)))
    (.var 2)) (.mul (.num 109240) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 4740) (.var 2)) (.mul (.num 32112) (.var 3))) (.var 2)) (.mul (.num
    43790) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    322) (.var 2)) (.mul (.num 4710) (.var 3))) (.var 2)) (.mul (.num 10961) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num 304) (.var 3)) (.var 2)) (.mul
    (.num 1557) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.mul (.num 94) (.pow
    (.var 3) 2)) (.pow (.var 2) 8))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 5454) (.var 1)) (.add (.mul (.num 26478) (.var 2)) (.mul (.num 9324) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 55629) (.var 2)) (.mul (.num 44244) (.var 3))) (.var 2))
    (.mul (.num 4380) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 66408)
    (.var 2)) (.mul (.num 90642) (.var 3))) (.var 2)) (.mul (.num 20826) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 49534) (.var 2)) (.mul (.num 105384) (.var
    3))) (.var 2)) (.mul (.num 42938) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 23756) (.var 2)) (.mul (.num 76596) (.var 3))) (.var 2)) (.mul
    (.num 50551) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 7185) (.var 2)) (.mul (.num 35892) (.var 3))) (.var 2)) (.mul (.num 37499) (.pow (.var
    3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1258) (.var 2))
    (.mul (.num 10662) (.var 3))) (.var 2)) (.mul (.num 18094) (.pow (.var 3) 2))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 98) (.var 2)) (.mul (.num 1848) (.var 3)))
    (.var 2)) (.mul (.num 5584) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 144) (.var 3)) (.var 2)) (.mul (.num 1013) (.pow (.var 3) 2))) (.pow (.var
    2) 7))) (.var 1)) (.mul (.mul (.num 83) (.pow (.var 3) 2)) (.pow (.var 2) 8))) (.pow (.var 1)
    2)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.mul
    (.mul (.num 4) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add
    (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num
    10) (.var 2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 12) (.var 3))) (.var 2))
    (.mul (.num 4) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var
    3)) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.pow (.var 0) 3))) (.pow
    (.var 0) 1)) (.mul (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 7) (.var 0)) (.add (.mul (.num 19) (.var 2)) (.mul (.num 14) (.var 3)))) (.var 0))
    (.add (.mul (.add (.mul (.num 17) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num
    7) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 2)) (.mul (.num
    6) (.var 3))) (.var 2)) (.mul (.num 1) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.neg (.num 3)) (.pow (.var 3) 2))) (.pow (.var
    2) 2))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.var 0))) (.pow
    (.var 0) 2))) (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 8)
    (.var 0)) (.add (.mul (.num 17) (.var 2)) (.mul (.num 16) (.var 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.num 10) (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var 2)) (.mul (.num 8)
    (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.neg
    (.num 2)) (.var 3))) (.var 2)) (.mul (.neg (.num 9)) (.pow (.var 3) 2))) (.var 2))) (.pow
    (.var 0) 2)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 3)))) (.pow (.var 0) 3)))
    (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3) (.var 0)) (.add
    (.mul (.num 6) (.var 2)) (.mul (.num 6) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 3)
    (.var 2)) (.mul (.neg (.num 6)) (.var 3))) (.var 2)) (.mul (.num 3) (.pow (.var 3) 2)))) (.var
    0)) (.mul (.mul (.neg (.num 6)) (.pow (.var 3) 2)) (.var 2))) (.var 0)) (.mul (.mul (.num 3)
    (.pow (.var 3) 2)) (.pow (.var 2) 2)))) (.pow (.var 0) 4))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.mul (.num 1) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 6) (.var 0)) (.add (.mul (.num 86) (.var 2)) (.mul (.num 12) (.var 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.num 395) (.var 2)) (.mul (.num 156) (.var 3))) (.var 2)) (.mul (.num 6)
    (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 877) (.var 2)) (.mul (.num
    630) (.var 3))) (.var 2)) (.mul (.num 70) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1068) (.var 2)) (.mul (.num 1234) (.var 3))) (.var 2)) (.mul (.num
    239) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    728) (.var 2)) (.mul (.num 1336) (.var 3))) (.var 2)) (.mul (.num 377) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 259) (.var 2)) (.mul (.num
    816) (.var 3))) (.var 2)) (.mul (.num 308) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 37) (.var 2)) (.mul (.num 262) (.var 3))) (.var 2)) (.mul
    (.num 128) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 34)
    (.var 3)) (.var 2)) (.mul (.num 23) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 3))) (.mul (.mul (.num 3)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 27) (.var 0)) (.add (.mul (.num 345) (.var 2)) (.mul (.num 54)
    (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 1385) (.var 2)) (.mul (.num 594) (.var
    3))) (.var 2)) (.mul (.num 27) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 2694) (.var 2)) (.mul (.num 1884) (.var 3))) (.var 2)) (.mul (.num 261) (.pow (.var 3)
    2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2885) (.var 2)) (.mul (.num
    2860) (.var 3))) (.var 2)) (.mul (.num 649) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1733) (.var 2)) (.mul (.num 2472) (.var 3))) (.var 2))
    (.mul (.num 680) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 543) (.var 2)) (.mul (.num 1312) (.var 3))) (.var 2)) (.mul (.num 383) (.pow (.var
    3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 68) (.var 2)) (.mul
    (.num 414) (.var 3))) (.var 2)) (.mul (.num 203) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var
    0)) (.mul (.add (.mul (.mul (.num 58) (.var 3)) (.var 2)) (.mul (.num 109) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 24) (.pow (.var 3) 2)) (.pow (.var 2) 7)))
    (.pow (.var 0) 2))) (.pow (.var 0) 1))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 45)
    (.var 0)) (.add (.mul (.num 531) (.var 2)) (.mul (.num 90) (.var 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.num 1908) (.var 2)) (.mul (.num 858) (.var 3))) (.var 2)) (.mul (.num 45) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3246) (.var 2)) (.mul (.num 2074)
    (.var 3))) (.var 2)) (.mul (.num 369) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 2964) (.var 2)) (.mul (.num 2138) (.var 3))) (.var 2)) (.mul (.num
    616) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    1472) (.var 2)) (.mul (.num 1180) (.var 3))) (.var 2)) (.mul (.num 224) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 367) (.var 2)) (.mul (.num
    494) (.var 3))) (.var 2)) (.mul (.neg (.num 46)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 35) (.var 2)) (.mul (.num 172) (.var 3))) (.var 2))
    (.mul (.num 122) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul
    (.num 26) (.var 3)) (.var 2)) (.mul (.num 121) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var
    0)) (.mul (.mul (.num 21) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 0))) (.pow (.var 0)
    2))) (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 33) (.var 0)) (.add (.mul (.num 371) (.var 2))
    (.mul (.num 66) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 1236) (.var 2)) (.mul
    (.num 558) (.var 3))) (.var 2)) (.mul (.num 33) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1885) (.var 2)) (.mul (.num 988) (.var 3))) (.var 2)) (.mul (.num 235)
    (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1468) (.var 2))
    (.mul (.num 452) (.var 3))) (.var 2)) (.mul (.num 227) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 572) (.var 2)) (.mul (.neg (.num 66)) (.var 3)))
    (.var 2)) (.mul (.neg (.num 160)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 95) (.var 2)) (.mul (.neg (.num 24)) (.var 3))) (.var 2)) (.mul
    (.neg (.num 110)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 4) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num 106) (.pow (.var 3)
    2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 2) (.var 3)) (.var 2)) (.mul
    (.num 50) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var
    3) 2)) (.pow (.var 2) 7)))) (.pow (.var 0) 3))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh0053.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh0053.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh0053.leading0 e g v + f * FullHigh0053.leading1 e g v +
        f^2 * FullHigh0053.remainder e f g v := by
  have hden : denominatorOne FullHigh0053.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh0053.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh0053.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 17179869184 16 10 2) lhs =
      value (Encoding4.vars 17179869184 16 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 17179869184 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 16 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 16 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullHigh0053.source e f g v =
      FullHigh0053.leading0 e g v + f * FullHigh0053.leading1 e g v +
        f^2 * FullHigh0053.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 17179869184 16 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh005Encoded3

namespace SPR.N6.Tail.CoreEndpoint.FullHigh005
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition3 (e f g v : ℝ) :
    FullHigh0053.source e f g v =
      FullHigh0053.leading0 e g v + f * FullHigh0053.leading1 e g v +
        f^2 * FullHigh0053.remainder e f g v :=
  FullHigh005Encoded3.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh005
