import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh221Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^3 layer of FullHigh221.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh221Encoded3
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.mul (.mul (.mul (.num 4) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.mul (.num 18) (.var 1)) (.var 0)) (.add (.mul (.add (.mul (.num 288) (.var 1)) (.add (.mul
    (.num 126) (.var 2)) (.mul (.num 108) (.var 3)))) (.var 1)) (.mul (.mul (.num 36) (.var 3))
    (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 2007) (.var 1)) (.add (.mul
    (.num 1719) (.var 2)) (.mul (.num 1179) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    342) (.var 2)) (.mul (.num 855) (.var 3))) (.var 2)) (.mul (.num 90) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.mul (.num 144) (.var 3)) (.var 2)) (.mul (.num 36) (.pow (.var
    3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 7659)
    (.var 1)) (.add (.mul (.num 9603) (.var 2)) (.mul (.num 5733) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 3744) (.var 2)) (.mul (.num 6291) (.var 3))) (.var 2)) (.mul (.num
    828) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 450) (.var 2)) (.mul
    (.num 2106) (.var 3))) (.var 2)) (.mul (.num 702) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.mul (.num 216) (.var 3)) (.var 2)) (.mul (.num 144) (.pow (.var 3) 2)))
    (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 17454) (.var 1)) (.add (.mul (.num 28401) (.var 2)) (.mul (.num 15279) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 16068) (.var 2)) (.mul (.num 22044) (.var 3))) (.var 2))
    (.mul (.num 3276) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3699)
    (.var 2)) (.mul (.num 10851) (.var 3))) (.var 2)) (.mul (.num 4158) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 288) (.var 2)) (.mul (.num 2142) (.var 3)))
    (.var 2)) (.mul (.num 1674) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 144) (.var 3)) (.var 2)) (.mul (.num 216) (.pow (.var 3) 2))) (.pow (.var 2)
    3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    24459) (.var 1)) (.add (.mul (.num 48372) (.var 2)) (.mul (.num 24483) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 35157) (.var 2)) (.mul (.num 43458) (.var 3))) (.var 2)) (.mul
    (.num 6621) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11532) (.var
    2)) (.mul (.num 27705) (.var 3))) (.var 2)) (.mul (.num 10956) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1638) (.var 2)) (.mul (.num 7740) (.var 3)))
    (.var 2)) (.mul (.num 6441) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 72) (.var 2)) (.mul (.num 918) (.var 3))) (.var 2)) (.mul (.num 1602)
    (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 36) (.var 3))
    (.var 2)) (.mul (.num 144) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 20703) (.var 1))
    (.add (.mul (.num 47754) (.var 2)) (.mul (.num 24252) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 41748) (.var 2)) (.mul (.num 51318) (.var 3))) (.var 2)) (.mul (.num 7572) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17313) (.var 2)) (.mul (.num
    40233) (.var 3))) (.var 2)) (.mul (.num 15216) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 3390) (.var 2)) (.mul (.num 14466) (.var 3))) (.var 2)) (.mul
    (.num 11334) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 252) (.var 2)) (.mul (.num 2334) (.var 3))) (.var 2)) (.mul (.num 3888) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 135) (.var 3)) (.var 2))
    (.mul (.num 612) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.num 36) (.pow
    (.var 3) 2)) (.pow (.var 2) 5)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9720) (.var 1)) (.add (.mul (.num 25413) (.var
    2)) (.mul (.num 13890) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 25629) (.var 2))
    (.mul (.num 34368) (.var 3))) (.var 2)) (.mul (.num 5160) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 12576) (.var 2)) (.mul (.num 32325) (.var 3))) (.var 2)) (.mul
    (.num 12342) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    3018) (.var 2)) (.mul (.num 14514) (.var 3))) (.var 2)) (.mul (.num 11157) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 288) (.var 2)) (.mul (.num
    3108) (.var 3))) (.var 2)) (.mul (.num 4758) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.mul (.num 261) (.var 3)) (.var 2)) (.mul (.num 945) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.num 72) (.pow (.var 3) 2)) (.pow (.var 2) 5)))
    (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 1944) (.var 1)) (.add (.mul (.num 5640) (.var 2)) (.mul (.num 3504)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 6372) (.var 2)) (.mul (.num 9936) (.var
    3))) (.var 2)) (.mul (.num 1716) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3546) (.var 2)) (.mul (.num 10908) (.var 3))) (.var 2)) (.mul (.num 4920) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 978) (.var 2)) (.mul (.num 5862)
    (.var 3))) (.var 2)) (.mul (.num 5514) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 108) (.var 2)) (.mul (.num 1548) (.var 3))) (.var 2)) (.mul
    (.num 3066) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num
    162) (.var 3)) (.var 2)) (.mul (.num 852) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.mul (.num 96) (.pow (.var 3) 2)) (.pow (.var 2) 5))) (.pow (.var 1) 2)))) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)) (.add (.var 1) (.var
    2))) (.mul (.mul (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 150) (.var 1)) (.mul (.num 50)
    (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 1890) (.var 1)) (.add (.mul (.num 1430)
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
    1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3))) (.mul (.mul (.mul (.num 12) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 90) (.var 1)) (.mul (.num 30) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num
    1098) (.var 1)) (.add (.mul (.num 828) (.var 2)) (.mul (.num 180) (.var 3)))) (.var 1)) (.mul
    (.add (.mul (.num 150) (.var 2)) (.mul (.num 60) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 5940) (.var 1)) (.add (.mul (.num 6912) (.var 2)) (.mul (.num
    1800) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2532) (.var 2)) (.mul (.num 1272)
    (.var 3))) (.var 2)) (.mul (.num 90) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 300) (.var 2)) (.mul (.num 192) (.var 3))) (.var 2)) (.mul (.num 30) (.pow (.var
    3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 18342)
    (.var 1)) (.add (.mul (.num 28566) (.var 2)) (.mul (.num 8010) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 15630) (.var 2)) (.mul (.num 8628) (.var 3))) (.var 2)) (.mul (.num
    750) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3606) (.var 2)) (.mul
    (.num 2634) (.var 3))) (.var 2)) (.mul (.num 516) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 300) (.var 2)) (.mul (.num 216) (.var 3))) (.var 2)) (.mul
    (.num 66) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 35100) (.var 1)) (.add (.mul (.num 67848) (.var 2)) (.mul
    (.num 20106) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 48804) (.var 2)) (.mul (.num
    28938) (.var 3))) (.var 2)) (.mul (.num 2733) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 16386) (.var 2)) (.mul (.num 13314) (.var 3))) (.var 2)) (.mul (.num 2808)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2580) (.var 2))
    (.mul (.num 2178) (.var 3))) (.var 2)) (.mul (.num 687) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 150) (.var 2)) (.mul (.num 96) (.var 3)))
    (.var 2)) (.mul (.num 12) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 42489) (.var 1)) (.add (.mul (.num
    97311) (.var 2)) (.mul (.num 30882) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 85791)
    (.var 2)) (.mul (.num 55836) (.var 3))) (.var 2)) (.mul (.num 5403) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 37143) (.var 2)) (.mul (.num 34716) (.var 3))) (.var
    2)) (.mul (.num 7278) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 8274) (.var 2)) (.mul (.num 8748) (.var 3))) (.var 2)) (.mul (.num 2547) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 870) (.var 2)) (.mul
    (.num 798) (.var 3))) (.var 2)) (.mul (.num 12) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 2)) (.mul (.num 12) (.var 3))) (.var 2))
    (.mul (.neg (.num 60)) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 31734) (.var 1)) (.add
    (.mul (.num 83457) (.var 2)) (.mul (.num 29220) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 86289) (.var 2)) (.mul (.num 64218) (.var 3))) (.var 2)) (.mul (.num 6429) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45069) (.var 2)) (.mul (.num 51312)
    (.var 3))) (.var 2)) (.mul (.num 11082) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 12627) (.var 2)) (.mul (.num 18324) (.var 3))) (.var 2)) (.mul (.num
    5565) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1806) (.var 2)) (.mul (.num 2892) (.var 3))) (.var 2)) (.mul (.num 360) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 102) (.var 2)) (.mul (.num
    162) (.var 3))) (.var 2)) (.mul (.neg (.num 294)) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.mul (.neg (.num 42)) (.pow (.var 3) 2)) (.pow (.var 2) 5)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 13365) (.var 1)) (.add (.mul (.num 39459) (.var 2)) (.mul (.num 15738) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 46413) (.var 2)) (.mul (.num 41034) (.var 3))) (.var 2))
    (.mul (.num 4590) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 28023)
    (.var 2)) (.mul (.num 40602) (.var 3))) (.var 2)) (.mul (.num 10314) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9252) (.var 2)) (.mul (.num 19284) (.var
    3))) (.var 2)) (.mul (.num 7971) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1602) (.var 2)) (.mul (.num 4608) (.var 3))) (.var 2)) (.mul (.num
    2316) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    114) (.var 2)) (.mul (.num 534) (.var 3))) (.var 2)) (.mul (.num 75) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 24) (.var 3)) (.var 2)) (.mul (.neg
    (.num 60)) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.neg (.num 6)) (.pow
    (.var 3) 2)) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2430) (.var 1)) (.add (.mul (.num
    7917) (.var 2)) (.mul (.num 3684) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 10359)
    (.var 2)) (.mul (.num 11130) (.var 3))) (.var 2)) (.mul (.num 1512) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 7017) (.var 2)) (.mul (.num 13134) (.var 3))) (.var
    2)) (.mul (.num 4374) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2619) (.var 2)) (.mul (.num 7746) (.var 3))) (.var 2)) (.mul (.num 4893) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 516) (.var 2)) (.mul
    (.num 2418) (.var 3))) (.var 2)) (.mul (.num 2724) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 42) (.var 2)) (.mul (.num 384) (.var 3))) (.var
    2)) (.mul (.num 816) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 24) (.var 3)) (.var 2)) (.mul (.num 132) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var
    1)) (.mul (.mul (.num 9) (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.var 1)))) (.var 0)) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3))) (.mul (.mul
    (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.mul (.add (.mul (.num 3) (.var 1)) (.mul (.num 3) (.var 3))) (.var 1))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 54) (.var 1)) (.add (.mul (.num 24) (.var 2))
    (.mul (.num 51) (.var 3)))) (.var 1)) (.add (.mul (.mul (.num 21) (.var 3)) (.var 2)) (.mul
    (.num 3) (.pow (.var 3) 2)))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 372) (.var 1)) (.add (.mul (.num 324) (.var 2)) (.mul (.num 384) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 69) (.var 2)) (.mul (.num 309) (.var 3))) (.var 2)) (.mul (.num
    45) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 60) (.var 3)) (.var 2)) (.mul
    (.num 21) (.pow (.var 3) 2))) (.var 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 1368) (.var 1)) (.add (.mul (.num 1746) (.var 2)) (.mul (.num
    1482) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 711) (.var 2)) (.mul (.num 1740)
    (.var 3))) (.var 2)) (.mul (.num 291) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 93) (.var 2)) (.mul (.num 666) (.var 3))) (.var 2)) (.mul (.num 267) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 84) (.var 3)) (.var 2)) (.mul (.num
    60) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 3018) (.var 1)) (.add (.mul (.num 5016) (.var 2))
    (.mul (.num 3354) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2949) (.var 2)) (.mul
    (.num 5112) (.var 3))) (.var 2)) (.mul (.num 912) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 726) (.var 2)) (.mul (.num 2802) (.var 3))) (.var 2)) (.mul (.num
    1236) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60) (.var
    2)) (.mul (.num 660) (.var 3))) (.var 2)) (.mul (.num 558) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.mul (.num 57) (.var 3)) (.var 2)) (.mul (.num 84) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4140) (.var 1)) (.add (.mul (.num 8400) (.var
    2)) (.mul (.num 4866) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 6363) (.var 2))
    (.mul (.num 9120) (.var 3))) (.var 2)) (.mul (.num 1575) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 2235) (.var 2)) (.mul (.num 6384) (.var 3))) (.var 2)) (.mul
    (.num 2790) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 345)
    (.var 2)) (.mul (.num 2076) (.var 3))) (.var 2)) (.mul (.num 1827) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 2)) (.mul (.num 303)
    (.var 3))) (.var 2)) (.mul (.num 528) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 15) (.var 3)) (.var 2)) (.mul (.num 57) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 3465) (.var 1)) (.add (.mul (.num 8232) (.var 2)) (.mul
    (.num 4602) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 7539) (.var 2)) (.mul (.num
    10320) (.var 3))) (.var 2)) (.mul (.num 1674) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 3372) (.var 2)) (.mul (.num 8862) (.var 3))) (.var 2)) (.mul (.num 3645)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 735) (.var 2))
    (.mul (.num 3684) (.var 3))) (.var 2)) (.mul (.num 3036) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 2)) (.mul (.num 732) (.var 3)))
    (.var 2)) (.mul (.num 1209) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 51) (.var 3)) (.var 2)) (.mul (.num 225) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.mul (.num 15) (.pow (.var 3) 2)) (.pow (.var 2) 5))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 1620) (.var 1)) (.add (.mul (.num 4374) (.var 2)) (.mul (.num 2592) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 4644) (.var 2)) (.mul (.num 6804) (.var 3))) (.var 2)) (.mul
    (.num 1116) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2478) (.var 2))
    (.mul (.num 7008) (.var 3))) (.var 2)) (.mul (.num 2916) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 675) (.var 2)) (.mul (.num 3630) (.var 3))) (.var 2))
    (.mul (.num 2979) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 75) (.var 2)) (.mul (.num 960) (.var 3))) (.var 2)) (.mul (.num 1506) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 102) (.var 3)) (.var 2))
    (.mul (.num 372) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.num 33) (.pow
    (.var 3) 2)) (.pow (.var 2) 5))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 324) (.var 1)) (.add (.mul
    (.num 972) (.var 2)) (.mul (.num 648) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    1161) (.var 2)) (.mul (.num 1944) (.var 3))) (.var 2)) (.mul (.num 360) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 708) (.var 2)) (.mul (.num 2334) (.var 3)))
    (.var 2)) (.mul (.num 1116) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 225) (.var 2)) (.mul (.num 1446) (.var 3))) (.var 2)) (.mul (.num 1398) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 2))
    (.mul (.num 474) (.var 3))) (.var 2)) (.mul (.num 909) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 66) (.var 3)) (.var 2)) (.mul (.num 312) (.pow (.var
    3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.num 45) (.pow (.var 3) 2)) (.pow (.var 2)
    5))) (.pow (.var 1) 3)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1))
    (.var 2))) 2)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.num 9) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.mul (.num 20) (.var 1)) (.var 0)) (.add (.mul (.add (.mul (.num 368) (.var
    1)) (.add (.mul (.num 164) (.var 2)) (.mul (.num 120) (.var 3)))) (.var 1)) (.mul (.mul (.num
    40) (.var 3)) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 2971) (.var 1))
    (.add (.mul (.num 2611) (.var 2)) (.mul (.num 1583) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 544) (.var 2)) (.mul (.num 1175) (.var 3))) (.var 2)) (.mul (.num 100) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 208) (.var 3)) (.var 2)) (.mul (.num 40)
    (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 13769) (.var 1)) (.add (.mul (.num 17887) (.var 2)) (.mul (.num 9373) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 7350) (.var 2)) (.mul (.num 10681) (.var 3))) (.var 2))
    (.mul (.num 1150) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 952)
    (.var 2)) (.mul (.num 3836) (.var 3))) (.var 2)) (.mul (.num 986) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.mul (.num 440) (.var 3)) (.var 2)) (.mul (.num 208) (.pow
    (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 40528) (.var 1)) (.add (.mul (.num 69131) (.var 2)) (.mul (.num 32246) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 41893) (.var 2)) (.mul (.num 49128) (.var 3)))
    (.var 2)) (.mul (.num 5816) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    10638) (.var 2)) (.mul (.num 26387) (.var 3))) (.var 2)) (.mul (.num 7572) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 948) (.var 2)) (.mul (.num 5945)
    (.var 3))) (.var 2)) (.mul (.num 3192) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 480) (.var 3)) (.var 2)) (.mul (.num 440) (.pow (.var 3) 2))) (.pow
    (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 79251) (.var 1)) (.add (.mul (.num 166372) (.var 2)) (.mul (.num 71234) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 131996) (.var 2)) (.mul (.num 135240) (.var 3)))
    (.var 2)) (.mul (.num 16580) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 49151) (.var 2)) (.mul (.num 95905) (.var 3))) (.var 2)) (.mul (.num 28708) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8488) (.var 2)) (.mul (.num
    31627) (.var 3))) (.var 2)) (.mul (.num 17994) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 532) (.var 2)) (.mul (.num 4848) (.var 3))) (.var 2))
    (.mul (.num 4862) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 280) (.var 3)) (.var 2)) (.mul (.num 480) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    104379) (.var 1)) (.add (.mul (.num 258958) (.var 2)) (.mul (.num 105824) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 252156) (.var 2)) (.mul (.num 240702) (.var 3))) (.var 2))
    (.mul (.num 29382) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 122358)
    (.var 2)) (.mul (.num 211788) (.var 3))) (.var 2)) (.mul (.num 63116) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30728) (.var 2)) (.mul (.num 91282)
    (.var 3))) (.var 2)) (.mul (.num 51932) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 3675) (.var 2)) (.mul (.num 20013) (.var 3))) (.var 2))
    (.mul (.num 20466) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 152) (.var 2)) (.mul (.num 2081) (.var 3))) (.var 2)) (.mul (.num 3864) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 80) (.var 3)) (.var
    2)) (.mul (.num 280) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 91454)
    (.var 1)) (.add (.mul (.num 260841) (.var 2)) (.mul (.num 106186) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 299418) (.var 2)) (.mul (.num 282510) (.var 3))) (.var 2)) (.mul (.num
    34088) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 177622) (.var 2))
    (.mul (.num 298298) (.var 3))) (.var 2)) (.mul (.num 87450) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 57771) (.var 2)) (.mul (.num 159794) (.var 3)))
    (.var 2)) (.mul (.num 88692) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 9958) (.var 2)) (.mul (.num 45767) (.var 3))) (.var 2)) (.mul (.num
    45266) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    778) (.var 2)) (.mul (.num 6711) (.var 3))) (.var 2)) (.mul (.num 12142) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 2)) (.mul (.num
    428) (.var 3))) (.var 2)) (.mul (.num 1602) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.mul (.num 8) (.var 3)) (.var 2)) (.mul (.num 80) (.pow (.var 3) 2))) (.pow
    (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 50984) (.var 1)) (.add (.mul (.num 163914)
    (.var 2)) (.mul (.num 68956) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 215865) (.var
    2)) (.mul (.num 210942) (.var 3))) (.var 2)) (.mul (.num 25766) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 150464) (.var 2)) (.mul (.num 261550) (.var 3))) (.var 2))
    (.mul (.num 77406) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 59530) (.var 2)) (.mul (.num 169274) (.var 3))) (.var 2)) (.mul (.num 94092) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13197) (.var 2))
    (.mul (.num 60964) (.var 3))) (.var 2)) (.mul (.num 59410) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1476) (.var 2)) (.mul (.num 11920) (.var
    3))) (.var 2)) (.mul (.num 20630) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 60) (.var 2)) (.mul (.num 1105) (.var 3))) (.var 2)) (.mul (.num
    3792) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 31)
    (.var 3)) (.var 2)) (.mul (.num 316) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.mul (.num 8) (.pow (.var 3) 2)) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    16308) (.var 1)) (.add (.mul (.num 58266) (.var 2)) (.mul (.num 25920) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 86380) (.var 2)) (.mul (.num 89904) (.var 3))) (.var 2)) (.mul
    (.num 11460) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 68903) (.var
    2)) (.mul (.num 128622) (.var 3))) (.var 2)) (.mul (.num 39828) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 31907) (.var 2)) (.mul (.num 98274) (.var 3)))
    (.var 2)) (.mul (.num 57232) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 8560) (.var 2)) (.mul (.num 43140) (.var 3))) (.var 2)) (.mul (.num
    43974) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1226) (.var 2)) (.mul (.num 10790) (.var 3))) (.var 2)) (.mul (.num 19348) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 2)) (.mul (.num
    1395) (.var 3))) (.var 2)) (.mul (.num 4774) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.mul (.num 69) (.var 3)) (.var 2)) (.mul (.num 578) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 22) (.pow (.var 3) 2)) (.pow (.var 2) 7)))
    (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2268) (.var 1)) (.add (.mul (.num 8916) (.var
    2)) (.mul (.num 4224) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 14686) (.var 2))
    (.mul (.num 16428) (.var 3))) (.var 2)) (.mul (.num 2208) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 13168) (.var 2)) (.mul (.num 26728) (.var 3))) (.var 2)) (.mul
    (.num 8772) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6960)
    (.var 2)) (.mul (.num 23634) (.var 3))) (.var 2)) (.mul (.num 14686) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2178) (.var 2)) (.mul (.num 12298)
    (.var 3))) (.var 2)) (.mul (.num 13482) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 376) (.var 2)) (.mul (.num 3780) (.var 3))) (.var 2))
    (.mul (.num 7358) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 28) (.var 2)) (.mul (.num 638) (.var 3))) (.var 2)) (.mul (.num 2398) (.pow (.var
    3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 46) (.var 3)) (.var 2))
    (.mul (.num 434) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 34) (.pow
    (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 1) 2)))) (.pow (.mul (.add (.var 0) (.var 1))
    (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul
    (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.mul (.num 12) (.var 1)) (.var 0)) (.add (.mul (.add (.mul
    (.num 216) (.var 1)) (.add (.mul (.num 96) (.var 2)) (.mul (.num 72) (.var 3)))) (.var 1))
    (.mul (.mul (.num 24) (.var 3)) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.num 1725) (.var 1)) (.add (.mul (.num 1509) (.var 2)) (.mul (.num 921) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 312) (.var 2)) (.mul (.num 681) (.var 3))) (.var 2)) (.mul (.num
    60) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 120) (.var 3)) (.var 2))
    (.mul (.num 24) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 7791) (.var 1)) (.add (.mul (.num 10044) (.var 2)) (.mul (.num 5313) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 4101) (.var 2)) (.mul (.num 6000) (.var 3)))
    (.var 2)) (.mul (.num 666) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    528) (.var 2)) (.mul (.num 2127) (.var 3))) (.var 2)) (.mul (.num 570) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 240) (.var 3)) (.var 2)) (.mul (.num 120)
    (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 21840) (.var 1)) (.add (.mul (.num 36822) (.var 2)) (.mul (.num 17412)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 22083) (.var 2)) (.mul (.num 26103) (.var
    3))) (.var 2)) (.mul (.num 3252) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 5553) (.var 2)) (.mul (.num 13767) (.var 3))) (.var 2)) (.mul (.num 4206) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 492) (.var 2)) (.mul (.num 3036)
    (.var 3))) (.var 2)) (.mul (.num 1758) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 240) (.var 3)) (.var 2)) (.mul (.num 240) (.pow (.var 3) 2))) (.pow
    (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 39525) (.var 1)) (.add (.mul (.num 81636) (.var 2)) (.mul (.num 35730) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 63714) (.var 2)) (.mul (.num 66324) (.var 3))) (.var
    2)) (.mul (.num 8646) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    23310) (.var 2)) (.mul (.num 45810) (.var 3))) (.var 2)) (.mul (.num 14778) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3939) (.var 2)) (.mul (.num
    14604) (.var 3))) (.var 2)) (.mul (.num 9156) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 240) (.var 2)) (.mul (.num 2148) (.var 3))) (.var 2))
    (.mul (.num 2448) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 120) (.var 3)) (.var 2)) (.mul (.num 240) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    46353) (.var 1)) (.add (.mul (.num 112545) (.var 2)) (.mul (.num 47922) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 107028) (.var 2)) (.mul (.num 106164) (.var 3))) (.var 2)) (.mul
    (.num 13800) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50532) (.var
    2)) (.mul (.num 90432) (.var 3))) (.var 2)) (.mul (.num 29070) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12222) (.var 2)) (.mul (.num 37296) (.var 3)))
    (.var 2)) (.mul (.num 23436) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1374) (.var 2)) (.mul (.num 7653) (.var 3))) (.var 2)) (.mul (.num
    9030) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    48) (.var 2)) (.mul (.num 723) (.var 3))) (.var 2)) (.mul (.num 1668) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 24) (.var 3)) (.var 2)) (.mul
    (.num 120) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 34062) (.var 1)) (.add
    (.mul (.num 94470) (.var 2)) (.mul (.num 41448) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 104985) (.var 2)) (.mul (.num 107238) (.var 3))) (.var 2)) (.mul (.num 13938) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 59886) (.var 2)) (.mul (.num
    109398) (.var 3))) (.var 2)) (.mul (.num 34962) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 18429) (.var 2)) (.mul (.num 55986) (.var 3))) (.var 2)) (.mul
    (.num 34512) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2892) (.var 2)) (.mul (.num 14949) (.var 3))) (.var 2)) (.mul (.num 16998) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 180) (.var 2)) (.mul
    (.num 1944) (.var 3))) (.var 2)) (.mul (.num 4332) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 93) (.var 3)) (.var 2)) (.mul (.num 534) (.pow (.var
    3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 24) (.pow (.var 3) 2)) (.pow (.var 2)
    6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 14256) (.var 1)) (.add (.mul (.num 44208) (.var 2)) (.mul (.num
    21024) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 55749) (.var 2)) (.mul (.num 62442)
    (.var 3))) (.var 2)) (.mul (.num 8568) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 36819) (.var 2)) (.mul (.num 74706) (.var 3))) (.var 2)) (.mul (.num 25272) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13488) (.var 2)) (.mul
    (.num 46248) (.var 3))) (.var 2)) (.mul (.num 30048) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2622) (.var 2)) (.mul (.num 15636) (.var 3)))
    (.var 2)) (.mul (.num 18426) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 216) (.var 2)) (.mul (.num 2763) (.var 3))) (.var 2)) (.mul (.num
    6096) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 207)
    (.var 3)) (.var 2)) (.mul (.num 1020) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.mul (.num 66) (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    2592) (.var 1)) (.add (.mul (.num 8838) (.var 2)) (.mul (.num 4716) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 12372) (.var 2)) (.mul (.num 15804) (.var 3))) (.var 2)) (.mul
    (.num 2448) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9180) (.var 2))
    (.mul (.num 21690) (.var 3))) (.var 2)) (.mul (.num 8424) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3834) (.var 2)) (.mul (.num 15750) (.var 3))) (.var
    2)) (.mul (.num 12006) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 864) (.var 2)) (.mul (.num 6432) (.var 3))) (.var 2)) (.mul (.num 9174)
    (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 84)
    (.var 2)) (.mul (.num 1422) (.var 3))) (.var 2)) (.mul (.num 4002) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 138) (.var 3)) (.var 2)) (.mul (.num
    960) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 102) (.pow (.var 3)
    2)) (.pow (.var 2) 6))) (.pow (.var 1) 2)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1))
    (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.add (.var 1) (.var 2)))) (.mul (.mul (.num 24)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num 20)
    (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 1048) (.var 1)) (.add (.mul (.num 828)
    (.var 2)) (.mul (.num 120) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 160) (.var 2)) (.mul
    (.num 40) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 8178)
    (.var 1)) (.add (.mul (.num 10092) (.var 2)) (.mul (.num 1800) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 4054) (.var 2)) (.mul (.num 1352) (.var 3))) (.var 2)) (.mul (.num 60)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 540) (.var 2)) (.mul (.num
    232) (.var 3))) (.var 2)) (.mul (.num 20) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 37734) (.var 1)) (.add (.mul (.num 62920)
    (.var 2)) (.mul (.num 12208) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 38250) (.var
    2)) (.mul (.num 14312) (.var 3))) (.var 2)) (.mul (.num 800) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 10144) (.var 2)) (.mul (.num 5224) (.var 3))) (.var 2))
    (.mul (.num 596) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1000) (.var 2)) (.mul (.num 600) (.var 3))) (.var 2)) (.mul (.num 96) (.pow (.var 3) 2)))
    (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 114672) (.var 1)) (.add (.mul (.num 239888) (.var 2)) (.mul (.num 49340) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 194290) (.var 2)) (.mul (.num 78900) (.var 3))) (.var
    2)) (.mul (.num 4812) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    76516) (.var 2)) (.mul (.num 44572) (.var 3))) (.var 2)) (.mul (.num 5620) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14702) (.var 2)) (.mul (.num 10612)
    (.var 3))) (.var 2)) (.mul (.num 1972) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1100) (.var 2)) (.mul (.num 920) (.var 3))) (.var 2)) (.mul
    (.num 204) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 241547) (.var 1)) (.add (.mul (.num 605969)
    (.var 2)) (.mul (.num 131870) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 610571)
    (.var 2)) (.mul (.num 268222) (.var 3))) (.var 2)) (.mul (.num 17212) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 316799) (.var 2)) (.mul (.num 206554) (.var 3)))
    (.var 2)) (.mul (.num 27714) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 89198) (.var 2)) (.mul (.num 75578) (.var 3))) (.var 2)) (.mul (.num 15420) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12828) (.var
    2)) (.mul (.num 13296) (.var 3))) (.var 2)) (.mul (.num 3498) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 720) (.var 2)) (.mul (.num 920) (.var
    3))) (.var 2)) (.mul (.num 280) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 360614) (.var
    1)) (.add (.mul (.num 1052469) (.var 2)) (.mul (.num 243908) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 1264167) (.var 2)) (.mul (.num 604496) (.var 3))) (.var 2)) (.mul (.num
    40603) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 809639) (.var 2))
    (.mul (.num 592724) (.var 3))) (.var 2)) (.mul (.num 84475) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 297461) (.var 2)) (.mul (.num 294984) (.var 3)))
    (.var 2)) (.mul (.num 65847) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 62004) (.var 2)) (.mul (.num 79000) (.var 3))) (.var 2)) (.mul (.num
    24097) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    6610) (.var 2)) (.mul (.num 10872) (.var 3))) (.var 2)) (.mul (.num 4222) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 260) (.var 2)) (.mul (.num
    600) (.var 3))) (.var 2)) (.mul (.num 300) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 382288) (.var 1)) (.add (.mul (.num 1269897) (.var 2)) (.mul (.num 316084) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1766006) (.var 2)) (.mul (.num 926428) (.var
    3))) (.var 2)) (.mul (.num 65744) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1339890) (.var 2)) (.mul (.num 1107212) (.var 3))) (.var 2)) (.mul (.num 169807) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 602924) (.var 2)) (.mul
    (.num 700140) (.var 3))) (.var 2)) (.mul (.num 173329) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 162473) (.var 2)) (.mul (.num 253296) (.var 3)))
    (.var 2)) (.mul (.num 89965) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 24834) (.var 2)) (.mul (.num 52368) (.var 3))) (.var 2)) (.mul (.num
    25387) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1832) (.var 2)) (.mul (.num 5656) (.var 3))) (.var 2)) (.mul (.num 3788) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40) (.var 2)) (.mul (.num
    232) (.var 3))) (.var 2)) (.mul (.num 240) (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 282480) (.var 1)) (.add (.mul (.num 1050349) (.var 2)) (.mul (.num
    282928) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1655367) (.var 2)) (.mul (.num
    958634) (.var 3))) (.var 2)) (.mul (.num 72825) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1446060) (.var 2)) (.mul (.num 1353340) (.var 3))) (.var 2)) (.mul
    (.num 226589) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    765492) (.var 2)) (.mul (.num 1039456) (.var 3))) (.var 2)) (.mul (.num 289035) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 250471) (.var 2)) (.mul
    (.num 474292) (.var 3))) (.var 2)) (.mul (.num 196949) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48963) (.var 2)) (.mul (.num 130810) (.var 3)))
    (.var 2)) (.mul (.num 78052) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 5108) (.var 2)) (.mul (.num 20880) (.var 3))) (.var 2)) (.mul (.num
    18150) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    206) (.var 2)) (.mul (.num 1660) (.var 3))) (.var 2)) (.mul (.num 2292) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num 40) (.var 3)) (.var 2)) (.mul
    (.num 116) (.pow (.var 3) 2))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 138757) (.var 1)) (.add (.mul (.num 569888) (.var 2)) (.mul (.num 167110) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 1001140) (.var 2)) (.mul (.num 642712) (.var 3)))
    (.var 2)) (.mul (.num 52852) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 985827) (.var 2)) (.mul (.num 1046216) (.var 3))) (.var 2)) (.mul (.num 193189) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 596812) (.var 2)) (.mul
    (.num 944600) (.var 3))) (.var 2)) (.mul (.num 296953) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 227755) (.var 2)) (.mul (.num 519176) (.var 3)))
    (.var 2)) (.mul (.num 251621) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 53449) (.var 2)) (.mul (.num 178254) (.var 3))) (.var 2)) (.mul (.num
    128981) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    7018) (.var 2)) (.mul (.num 37274) (.var 3))) (.var 2)) (.mul (.num 40924) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 390) (.var 2)) (.mul (.num
    4290) (.var 3))) (.var 2)) (.mul (.num 7742) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.mul (.num 200) (.var 3)) (.var 2)) (.mul (.num 758) (.pow (.var 3) 2)))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.mul (.num 24) (.pow (.var 3) 2)) (.pow (.var 2) 8))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40824) (.var 1)) (.add (.mul (.num 183162)
    (.var 2)) (.mul (.num 58740) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 353878) (.var
    2)) (.mul (.num 252576) (.var 3))) (.var 2)) (.mul (.num 22686) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 386313) (.var 2)) (.mul (.num 464980) (.var 3))) (.var 2))
    (.mul (.num 95394) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 261813) (.var 2)) (.mul (.num 481250) (.var 3))) (.var 2)) (.mul (.num 171707) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 113237) (.var
    2)) (.mul (.num 308152) (.var 3))) (.var 2)) (.mul (.num 173947) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30615) (.var 2)) (.mul (.num
    125752) (.var 3))) (.var 2)) (.mul (.num 109240) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 4740) (.var 2)) (.mul (.num 32112) (.var 3))) (.var
    2)) (.mul (.num 43790) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 322) (.var 2)) (.mul (.num 4710) (.var 3))) (.var 2)) (.mul (.num 10961)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num 304) (.var 3))
    (.var 2)) (.mul (.num 1557) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.mul
    (.num 94) (.pow (.var 3) 2)) (.pow (.var 2) 8))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 5454) (.var 1)) (.add (.mul (.num 26478) (.var 2)) (.mul (.num 9324) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 55629) (.var 2)) (.mul (.num 44244) (.var 3)))
    (.var 2)) (.mul (.num 4380) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    66408) (.var 2)) (.mul (.num 90642) (.var 3))) (.var 2)) (.mul (.num 20826) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 49534) (.var 2)) (.mul (.num
    105384) (.var 3))) (.var 2)) (.mul (.num 42938) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 23756) (.var 2)) (.mul (.num 76596) (.var 3))) (.var
    2)) (.mul (.num 50551) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 7185) (.var 2)) (.mul (.num 35892) (.var 3))) (.var 2)) (.mul (.num 37499)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1258)
    (.var 2)) (.mul (.num 10662) (.var 3))) (.var 2)) (.mul (.num 18094) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 98) (.var 2)) (.mul (.num 1848)
    (.var 3))) (.var 2)) (.mul (.num 5584) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 144) (.var 3)) (.var 2)) (.mul (.num 1013) (.pow (.var 3) 2))) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.mul (.num 83) (.pow (.var 3) 2)) (.pow (.var 2) 8))) (.pow
    (.var 1) 2)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    2))) (.mul (.mul (.mul (.num 18) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 150) (.var 1))
    (.mul (.num 50) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 2180) (.var 1)) (.add (.mul
    (.num 1670) (.var 2)) (.mul (.num 300) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 310)
    (.var 2)) (.mul (.num 100) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.num 14338) (.var 1)) (.add (.mul (.num 17062) (.var 2)) (.mul (.num 3620) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 6494) (.var 2)) (.mul (.num 2580) (.var 3))) (.var 2))
    (.mul (.num 150) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 810) (.var
    2)) (.mul (.num 400) (.var 3))) (.var 2)) (.mul (.num 50) (.pow (.var 3) 2))) (.var 2))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 55800) (.var 1)) (.add (.mul
    (.num 89498) (.var 2)) (.mul (.num 19890) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    51382) (.var 2)) (.mul (.num 21652) (.var 3))) (.var 2)) (.mul (.num 1560) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12674) (.var 2)) (.mul (.num 6838) (.var
    3))) (.var 2)) (.mul (.num 1090) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1150) (.var 2)) (.mul (.num 596) (.var 3))) (.var 2)) (.mul (.num 150) (.pow
    (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 141566) (.var 1)) (.add (.mul (.num 284122) (.var 2)) (.mul (.num 64774)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 216908) (.var 2)) (.mul (.num 94730) (.var
    3))) (.var 2)) (.mul (.num 7315) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 79248) (.var 2)) (.mul (.num 45406) (.var 3))) (.var 2)) (.mul (.num 7706) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13966) (.var 2)) (.mul (.num
    7994) (.var 3))) (.var 2)) (.mul (.num 2109) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 950) (.var 2)) (.mul (.num 384) (.var 3))) (.var 2)) (.mul
    (.num 98) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 243760) (.var 1)) (.add (.mul (.num 584850)
    (.var 2)) (.mul (.num 137656) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 554256)
    (.var 2)) (.mul (.num 253618) (.var 3))) (.var 2)) (.mul (.num 20075) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 266216) (.var 2)) (.mul (.num 164688) (.var 3)))
    (.var 2)) (.mul (.num 28238) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 68530) (.var 2)) (.mul (.num 44794) (.var 3))) (.var 2)) (.mul (.num 11635) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8930) (.var
    2)) (.mul (.num 4544) (.var 3))) (.var 2)) (.mul (.num 1066) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 450) (.var 2)) (.mul (.num 76) (.var
    3))) (.var 2)) (.mul (.neg (.num 106)) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    287722) (.var 1)) (.add (.mul (.num 800310) (.var 2)) (.mul (.num 198084) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 901848) (.var 2)) (.mul (.num 443344) (.var 3))) (.var 2))
    (.mul (.num 35738) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 533482)
    (.var 2)) (.mul (.num 368816) (.var 3))) (.var 2)) (.mul (.num 64007) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 178644) (.var 2)) (.mul (.num 140640)
    (.var 3))) (.var 2)) (.mul (.num 36945) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 33586) (.var 2)) (.mul (.num 24096) (.var 3))) (.var 2))
    (.mul (.num 6393) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3194) (.var 2)) (.mul (.num 1396) (.var 3))) (.var 2)) (.mul (.neg (.num 537))
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 110)
    (.var 2)) (.mul (.neg (.num 16)) (.var 3))) (.var 2)) (.mul (.neg (.num 154)) (.pow (.var 3)
    2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 229370) (.var 1)) (.add (.mul (.num 723650)
    (.var 2)) (.mul (.num 192328) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 941744)
    (.var 2)) (.mul (.num 510436) (.var 3))) (.var 2)) (.mul (.num 42934) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 658556) (.var 2)) (.mul (.num 525240) (.var 3)))
    (.var 2)) (.mul (.num 96512) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 269374) (.var 2)) (.mul (.num 265456) (.var 3))) (.var 2)) (.mul (.num 77206)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 65208)
    (.var 2)) (.mul (.num 68726) (.var 3))) (.var 2)) (.mul (.num 25220) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8842) (.var 2)) (.mul (.num 8552)
    (.var 3))) (.var 2)) (.mul (.num 2192) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 566) (.var 2)) (.mul (.num 386) (.var 3))) (.var 2)) (.mul (.neg
    (.num 346)) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 10) (.var 2)) (.mul (.neg (.num 4)) (.var 3))) (.var 2)) (.mul (.neg (.num 46)) (.pow
    (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 117952) (.var 1)) (.add
    (.mul (.num 415322) (.var 2)) (.mul (.num 120452) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 611306) (.var 2)) (.mul (.num 371788) (.var 3))) (.var 2)) (.mul (.num 33782)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 491472) (.var 2)) (.mul
    (.num 459960) (.var 3))) (.var 2)) (.mul (.num 94094) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 236086) (.var 2)) (.mul (.num 294016) (.var 3))) (.var 2))
    (.mul (.num 101460) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 69204) (.var 2)) (.mul (.num 104686) (.var 3))) (.var 2)) (.mul (.num 53834) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11958) (.var
    2)) (.mul (.num 20978) (.var 3))) (.var 2)) (.mul (.num 14959) (.pow (.var 3) 2))) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1080) (.var 2)) (.mul (.num 2274) (.var
    3))) (.var 2)) (.mul (.num 2234) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 36) (.var 2)) (.mul (.num 110) (.var 3))) (.var 2)) (.mul (.num 187)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 6) (.pow (.var 3) 2))
    (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 35262) (.var 1)) (.add (.mul
    (.num 136896) (.var 2)) (.mul (.num 43644) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    224428) (.var 2)) (.mul (.num 154032) (.var 3))) (.var 2)) (.mul (.num 15444) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 203374) (.var 2)) (.mul (.num 223460)
    (.var 3))) (.var 2)) (.mul (.num 52056) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 111722) (.var 2)) (.mul (.num 173484) (.var 3))) (.var 2)) (.mul (.num
    71882) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    38178) (.var 2)) (.mul (.num 78852) (.var 3))) (.var 2)) (.mul (.num 53392) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7916) (.var 2)) (.mul
    (.num 21662) (.var 3))) (.var 2)) (.mul (.num 23779) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 902) (.var 2)) (.mul (.num 3580) (.var 3)))
    (.var 2)) (.mul (.num 6726) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 42) (.var 2)) (.mul (.num 330) (.var 3))) (.var 2)) (.mul (.num 1197)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num 12) (.var 3))
    (.var 2)) (.mul (.num 110) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.mul (.num
    2) (.pow (.var 3) 2)) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    4644) (.var 1)) (.add (.mul (.num 19698) (.var 2)) (.mul (.num 6888) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 35564) (.var 2)) (.mul (.num 27396) (.var 3))) (.var 2)) (.mul
    (.num 3024) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 35808) (.var
    2)) (.mul (.num 45644) (.var 3))) (.var 2)) (.mul (.num 11988) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 22080) (.var 2)) (.mul (.num 41680) (.var 3)))
    (.var 2)) (.mul (.num 20146) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 8576) (.var 2)) (.mul (.num 22956) (.var 3))) (.var 2)) (.mul (.num
    18994) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2056) (.var 2)) (.mul (.num 7916) (.var 3))) (.var 2)) (.mul (.num 11234) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 278) (.var 2)) (.mul (.num
    1708) (.var 3))) (.var 2)) (.mul (.num 4387) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 16) (.var 2)) (.mul (.num 216) (.var 3))) (.var 2)) (.mul
    (.num 1125) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num
    12) (.var 3)) (.var 2)) (.mul (.num 171) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1))
    (.mul (.mul (.num 11) (.pow (.var 3) 2)) (.pow (.var 2) 8))) (.var 1)))) (.var 0)) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2))) (.mul (.mul (.mul
    (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 90) (.var 1)) (.mul (.num 30) (.var 2))) (.var 0))
    (.add (.mul (.add (.mul (.num 1272) (.var 1)) (.add (.mul (.num 972) (.var 2)) (.mul (.num
    180) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 180) (.var 2)) (.mul (.num 60) (.var 3)))
    (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 8094) (.var 1)) (.add (.mul
    (.num 9594) (.var 2)) (.mul (.num 2100) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    3630) (.var 2)) (.mul (.num 1488) (.var 3))) (.var 2)) (.mul (.num 90) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 450) (.var 2)) (.mul (.num 228) (.var 3))) (.var
    2)) (.mul (.num 30) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 30084) (.var 1)) (.add (.mul (.num 47952) (.var 2)) (.mul (.num 11094)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 27300) (.var 2)) (.mul (.num 11976) (.var
    3))) (.var 2)) (.mul (.num 900) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 6672) (.var 2)) (.mul (.num 3714) (.var 3))) (.var 2)) (.mul (.num 624) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 600) (.var 2)) (.mul (.num 312)
    (.var 3))) (.var 2)) (.mul (.num 84) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 71514) (.var 1)) (.add (.mul (.num
    142182) (.var 2)) (.mul (.num 34110) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    107244) (.var 2)) (.mul (.num 49248) (.var 3))) (.var 2)) (.mul (.num 4029) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38640) (.var 2)) (.mul (.num 23046) (.var
    3))) (.var 2)) (.mul (.num 4194) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 6714) (.var 2)) (.mul (.num 3876) (.var 3))) (.var 2)) (.mul (.num 1107)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 450)
    (.var 2)) (.mul (.num 168) (.var 3))) (.var 2)) (.mul (.num 42) (.pow (.var 3) 2))) (.pow
    (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 112374) (.var 1)) (.add (.mul (.num 266058) (.var 2)) (.mul (.num 66924) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 247932) (.var 2)) (.mul (.num 121368) (.var 3)))
    (.var 2)) (.mul (.num 10275) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 116706) (.var 2)) (.mul (.num 76716) (.var 3))) (.var 2)) (.mul (.num 14169) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 29358) (.var 2)) (.mul (.num
    19872) (.var 3))) (.var 2)) (.mul (.num 5541) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3720) (.var 2)) (.mul (.num 1812) (.var 3))) (.var 2))
    (.mul (.num 375) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 180) (.var 2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul (.neg (.num 72)) (.pow
    (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 116514) (.var 1)) (.add (.mul (.num 318372) (.var
    2)) (.mul (.num 86256) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 350766) (.var 2))
    (.mul (.num 190020) (.var 3))) (.var 2)) (.mul (.num 16584) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 201822) (.var 2)) (.mul (.num 154272) (.var 3))) (.var 2))
    (.mul (.num 29148) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 65334) (.var 2)) (.mul (.num 56652) (.var 3))) (.var 2)) (.mul (.num 16104) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11748) (.var 2))
    (.mul (.num 9132) (.var 3))) (.var 2)) (.mul (.num 2340) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1038) (.var 2)) (.mul (.num 456) (.var 3)))
    (.var 2)) (.mul (.neg (.num 378)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 30) (.var 2)) (.mul (.neg (.num 12)) (.var 3))) (.var 2)) (.mul
    (.neg (.num 78)) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 76782) (.var 1))
    (.add (.mul (.num 236718) (.var 2)) (.mul (.num 71232) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 299148) (.var 2)) (.mul (.num 186372) (.var 3))) (.var 2)) (.mul (.num 17496)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 201654) (.var 2)) (.mul
    (.num 188100) (.var 3))) (.var 2)) (.mul (.num 39192) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 78732) (.var 2)) (.mul (.num 92880) (.var 3))) (.var 2))
    (.mul (.num 31230) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 17880) (.var 2)) (.mul (.num 23574) (.var 3))) (.var 2)) (.mul (.num 10284) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2178) (.var
    2)) (.mul (.num 2964) (.var 3))) (.var 2)) (.mul (.num 1050) (.pow (.var 3) 2))) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 108) (.var 2)) (.mul (.num 150) (.var
    3))) (.var 2)) (.mul (.neg (.num 72)) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.mul (.neg (.num 12)) (.pow (.var 3) 2)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 29160) (.var 1)) (.add (.mul (.num 99702) (.var 2)) (.mul (.num 34164) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 141336) (.var 2)) (.mul (.num 104040) (.var 3))) (.var 2))
    (.mul (.num 11124) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 108348)
    (.var 2)) (.mul (.num 126576) (.var 3))) (.var 2)) (.mul (.num 31464) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48924) (.var 2)) (.mul (.num 79572)
    (.var 3))) (.var 2)) (.mul (.num 34944) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 13146) (.var 2)) (.mul (.num 28110) (.var 3))) (.var 2))
    (.mul (.num 19788) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1962) (.var 2)) (.mul (.num 5748) (.var 3))) (.var 2)) (.mul (.num 6351) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 126) (.var 2))
    (.mul (.num 666) (.var 3))) (.var 2)) (.mul (.num 1242) (.pow (.var 3) 2))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.mul (.num 36) (.var 3)) (.var 2)) (.mul (.num 141) (.pow
    (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 6) (.pow (.var 3) 2)) (.pow
    (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4860) (.var 1)) (.add (.mul (.num 18180)
    (.var 2)) (.mul (.num 7200) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 28416) (.var
    2)) (.mul (.num 25020) (.var 3))) (.var 2)) (.mul (.num 3168) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 24228) (.var 2)) (.mul (.num 35592) (.var 3))) (.var 2))
    (.mul (.num 10980) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 12282) (.var 2)) (.mul (.num 27036) (.var 3))) (.var 2)) (.mul (.num 15840) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3744) (.var 2))
    (.mul (.num 12024) (.var 3))) (.var 2)) (.mul (.num 12624) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 642) (.var 2)) (.mul (.num 3228) (.var 3)))
    (.var 2)) (.mul (.num 6231) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 48) (.var 2)) (.mul (.num 504) (.var 3))) (.var 2)) (.mul (.num 1983)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 36) (.var 3))
    (.var 2)) (.mul (.num 381) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num
    33) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 1)))) (.pow (.var 0) 2)) (.pow (.mul (.add
    (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2))) (.mul (.mul (.mul (.num 12)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 2) (.var 1)) (.var 0)) (.add
    (.mul (.add (.mul (.num 53) (.var 1)) (.add (.mul (.num 24) (.var 2)) (.mul (.num 12) (.var
    3)))) (.var 1)) (.mul (.mul (.num 4) (.var 3)) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.num 578) (.var 1)) (.add (.mul (.num 519) (.var 2)) (.mul (.num 218) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 114) (.var 2)) (.mul (.num 160) (.var 3))) (.var 2))
    (.mul (.num 10) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 28) (.var 3))
    (.var 2)) (.mul (.num 4) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 3588) (.var 1)) (.add (.mul (.num 4791) (.var 2)) (.mul (.num
    1770) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2075) (.var 2)) (.mul (.num 2010)
    (.var 3))) (.var 2)) (.mul (.num 159) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 292) (.var 2)) (.mul (.num 728) (.var 3))) (.var 2)) (.mul (.num 134) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 84) (.var 3)) (.var 2)) (.mul (.num
    28) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 14437) (.var 1)) (.add (.mul (.num 25489) (.var 2)) (.mul (.num
    8556) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 16345) (.var 2)) (.mul (.num 13156)
    (.var 3))) (.var 2)) (.mul (.num 1124) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 4511) (.var 2)) (.mul (.num 7240) (.var 3))) (.var 2)) (.mul (.num 1441) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 450) (.var 2)) (.mul
    (.num 1688) (.var 3))) (.var 2)) (.mul (.num 606) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 140) (.var 3)) (.var 2)) (.mul (.num 84) (.pow (.var
    3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 40180) (.var 1)) (.add (.mul (.num 87961) (.var 2)) (.mul (.num 27602)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 74309) (.var 2)) (.mul (.num 53598) (.var
    3))) (.var 2)) (.mul (.num 4691) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 30233) (.var 2)) (.mul (.num 39590) (.var 3))) (.var 2)) (.mul (.num 8059) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5887) (.var 2)) (.mul (.num
    13862) (.var 3))) (.var 2)) (.mul (.num 5071) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 432) (.var 2)) (.mul (.num 2284) (.var 3))) (.var 2))
    (.mul (.num 1390) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 140) (.var 3)) (.var 2)) (.mul (.num 140) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    79972) (.var 1)) (.add (.mul (.num 208454) (.var 2)) (.mul (.num 62920) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 217674) (.var 2)) (.mul (.num 147960) (.var 3))) (.var 2)) (.mul
    (.num 12947) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 116245) (.var
    2)) (.mul (.num 137458) (.var 3))) (.var 2)) (.mul (.num 27876) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33234) (.var 2)) (.mul (.num 64256) (.var 3)))
    (.var 2)) (.mul (.num 23279) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 4741) (.var 2)) (.mul (.num 15770) (.var 3))) (.var 2)) (.mul (.num
    9439) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    254) (.var 2)) (.mul (.num 1888) (.var 3))) (.var 2)) (.mul (.num 1854) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 84) (.var 3)) (.var 2)) (.mul
    (.num 140) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 115355) (.var 1))
    (.add (.mul (.num 348117) (.var 2)) (.mul (.num 103924) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 431594) (.var 2)) (.mul (.num 287786) (.var 3))) (.var 2)) (.mul (.num
    25048) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 283960) (.var 2))
    (.mul (.num 323332) (.var 3))) (.var 2)) (.mul (.num 64953) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 106180) (.var 2)) (.mul (.num 189916) (.var 3)))
    (.var 2)) (.mul (.num 67619) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 22161) (.var 2)) (.mul (.num 62192) (.var 3))) (.var 2)) (.mul (.num
    36138) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2301) (.var 2)) (.mul (.num 11066) (.var 3))) (.var 2)) (.mul (.num 10397) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 84) (.var 2)) (.mul (.num
    944) (.var 3))) (.var 2)) (.mul (.num 1506) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.mul (.num 28) (.var 3)) (.var 2)) (.mul (.num 84) (.pow (.var 3) 2)))
    (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 120182) (.var 1)) (.add (.mul (.num
    411294) (.var 2)) (.mul (.num 124504) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    588722) (.var 2)) (.mul (.num 397732) (.var 3))) (.var 2)) (.mul (.num 34744) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 458414) (.var 2)) (.mul (.num 526062)
    (.var 3))) (.var 2)) (.mul (.num 105773) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 210447) (.var 2)) (.mul (.num 373978) (.var 3))) (.var 2)) (.mul (.num
    132410) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    57239) (.var 2)) (.mul (.num 154314) (.var 3))) (.var 2)) (.mul (.num 88097) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8667) (.var 2)) (.mul
    (.num 36862) (.var 3))) (.var 2)) (.mul (.num 33348) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 613) (.var 2)) (.mul (.num 4716) (.var 3)))
    (.var 2)) (.mul (.num 7039) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 12) (.var 2)) (.mul (.num 264) (.var 3))) (.var 2)) (.mul (.num 738)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num 4) (.var 3))
    (.var 2)) (.mul (.num 28) (.pow (.var 3) 2))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 88464) (.var 1)) (.add (.mul (.num 337827) (.var 2)) (.mul (.num 105888)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 546790) (.var 2)) (.mul (.num 383852)
    (.var 3))) (.var 2)) (.mul (.num 34214) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 489940) (.var 2)) (.mul (.num 585484) (.var 3))) (.var 2)) (.mul (.num 120092)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 265216) (.var 2))
    (.mul (.num 490292) (.var 3))) (.var 2)) (.mul (.num 176613) (.pow (.var 3) 2))) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 88200) (.var 2)) (.mul (.num 245466)
    (.var 3))) (.var 2)) (.mul (.num 141596) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 17325) (.var 2)) (.mul (.num 74342) (.var 3))) (.var 2))
    (.mul (.num 67004) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1779) (.var 2)) (.mul (.num 12946) (.var 3))) (.var 2)) (.mul (.num 18731) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 68) (.var 2))
    (.mul (.num 1118) (.var 3))) (.var 2)) (.mul (.num 2881) (.pow (.var 3) 2))) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.mul (.num 32) (.var 3)) (.var 2)) (.mul (.num 202) (.pow
    (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow
    (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 43755) (.var 1)) (.add (.mul
    (.num 184012) (.var 2)) (.mul (.num 60746) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    331306) (.var 2)) (.mul (.num 246434) (.var 3))) (.var 2)) (.mul (.num 22847) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 334486) (.var 2)) (.mul (.num 426146)
    (.var 3))) (.var 2)) (.mul (.num 91153) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 207513) (.var 2)) (.mul (.num 411382) (.var 3))) (.var 2)) (.mul (.num
    154766) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    80978) (.var 2)) (.mul (.num 242802) (.var 3))) (.var 2)) (.mul (.num 146185) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 19328) (.var 2)) (.mul
    (.num 89486) (.var 3))) (.var 2)) (.mul (.num 83804) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2553) (.var 2)) (.mul (.num 19908) (.var 3)))
    (.var 2)) (.mul (.num 29568) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 140) (.var 2)) (.mul (.num 2386) (.var 3))) (.var 2)) (.mul (.num
    6127) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num 112)
    (.var 3)) (.var 2)) (.mul (.num 649) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.mul (.num 24) (.pow (.var 3) 2)) (.pow (.var 2) 8))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 13068) (.var 1)) (.add (.mul (.num 59850) (.var 2)) (.mul (.num 21096)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 118266) (.var 2)) (.mul (.num 94608) (.var
    3))) (.var 2)) (.mul (.num 9306) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 132307) (.var 2)) (.mul (.num 182774) (.var 3))) (.var 2)) (.mul (.num 41697) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 92061) (.var 2)) (.mul
    (.num 199738) (.var 3))) (.var 2)) (.mul (.num 80576) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40929) (.var 2)) (.mul (.num 135744) (.var 3)))
    (.var 2)) (.mul (.num 88098) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 11368) (.var 2)) (.mul (.num 58942) (.var 3))) (.var 2)) (.mul (.num
    59777) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1801) (.var 2)) (.mul (.num 15966) (.var 3))) (.var 2)) (.mul (.num 25748) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 124) (.var 2)) (.mul (.num
    2454) (.var 3))) (.var 2)) (.mul (.num 6824) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.mul (.num 162) (.var 3)) (.var 2)) (.mul (.num 1000) (.pow (.var 3) 2)))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.mul (.num 60) (.pow (.var 3) 2)) (.pow (.var 2) 8)))
    (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1782) (.var 1)) (.add
    (.mul (.num 8802) (.var 2)) (.mul (.num 3348) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 18873) (.var 2)) (.mul (.num 16416) (.var 3))) (.var 2)) (.mul (.num 1746) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 23076) (.var 2)) (.mul (.num 34974)
    (.var 3))) (.var 2)) (.mul (.num 8694) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 17700) (.var 2)) (.mul (.num 42588) (.var 3))) (.var 2)) (.mul (.num
    18894) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    8764) (.var 2)) (.mul (.num 32660) (.var 3))) (.var 2)) (.mul (.num 23577) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2745) (.var 2)) (.mul (.num
    16254) (.var 3))) (.var 2)) (.mul (.num 18602) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 498) (.var 2)) (.mul (.num 5148) (.var 3))) (.var 2))
    (.mul (.num 9548) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 40) (.var 2)) (.mul (.num 950) (.var 3))) (.var 2)) (.mul (.num 3120) (.pow (.var
    3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num 78) (.var 3)) (.var 2))
    (.mul (.num 593) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.mul (.num 50) (.pow
    (.var 3) 2)) (.pow (.var 2) 8))) (.pow (.var 1) 3)))) (.mul (.add (.var 0) (.var 1)) (.add
    (.add (.var 0) (.var 1)) (.var 2)))) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.num 12)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 1)) (.mul
    (.num 10) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 582) (.var 1)) (.add (.mul (.num
    462) (.var 2)) (.mul (.num 60) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 90) (.var 2))
    (.mul (.num 20) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num
    5106) (.var 1)) (.add (.mul (.num 6349) (.var 2)) (.mul (.num 1000) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 2583) (.var 2)) (.mul (.num 748) (.var 3))) (.var 2)) (.mul
    (.num 30) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 350) (.var 2))
    (.mul (.num 128) (.var 3))) (.var 2)) (.mul (.num 10) (.pow (.var 3) 2))) (.var 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 26838) (.var 1)) (.add (.mul (.num
    45194) (.var 2)) (.mul (.num 7636) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 27923)
    (.var 2)) (.mul (.num 8902) (.var 3))) (.var 2)) (.mul (.num 450) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 7577) (.var 2)) (.mul (.num 3234) (.var 3))) (.var 2))
    (.mul (.num 334) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    770) (.var 2)) (.mul (.num 368) (.var 3))) (.var 2)) (.mul (.num 54) (.pow (.var 3) 2))) (.pow
    (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    94298) (.var 1)) (.add (.mul (.num 199594) (.var 2)) (.mul (.num 35288) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 164793) (.var 2)) (.mul (.num 56078) (.var 3))) (.var 2)) (.mul
    (.num 3090) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 66726) (.var
    2)) (.mul (.num 31536) (.var 3))) (.var 2)) (.mul (.num 3587) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13319) (.var 2)) (.mul (.num 7466) (.var 3)))
    (.var 2)) (.mul (.num 1257) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1050) (.var 2)) (.mul (.num 640) (.var 3))) (.var 2)) (.mul (.num 130)
    (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 233725) (.var 1)) (.add (.mul (.num 594225) (.var 2))
    (.mul (.num 109844) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 612004) (.var 2))
    (.mul (.num 221998) (.var 3))) (.var 2)) (.mul (.num 12842) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 327878) (.var 2)) (.mul (.num 170378) (.var 3))) (.var 2))
    (.mul (.num 20514) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 96549) (.var 2)) (.mul (.num 62254) (.var 3))) (.var 2)) (.mul (.num 11377) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14785) (.var 2))
    (.mul (.num 10950) (.var 3))) (.var 2)) (.mul (.num 2581) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 910) (.var 2)) (.mul (.num 760) (.var 3)))
    (.var 2)) (.mul (.num 206) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 419685) (.var
    1)) (.add (.mul (.num 1243100) (.var 2)) (.mul (.num 242142) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 1529989) (.var 2)) (.mul (.num 596512) (.var 3))) (.var 2)) (.mul (.num
    35964) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1015762) (.var 2))
    (.mul (.num 584014) (.var 3))) (.var 2)) (.mul (.num 74115) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 392679) (.var 2)) (.mul (.num 291630) (.var 3)))
    (.var 2)) (.mul (.num 57544) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 87978) (.var 2)) (.mul (.num 78872) (.var 3))) (.var 2)) (.mul (.num
    21106) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    10437) (.var 2)) (.mul (.num 11086) (.var 3))) (.var 2)) (.mul (.num 3733) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 490) (.var 2)) (.mul (.num
    640) (.var 3))) (.var 2)) (.mul (.num 270) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 550865) (.var 1)) (.add (.mul (.num 1859548) (.var 2)) (.mul (.num 385580) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2656054) (.var 2)) (.mul (.num 1124376) (.var
    3))) (.var 2)) (.mul (.num 71139) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2096858) (.var 2)) (.mul (.num 1345276) (.var 3))) (.var 2)) (.mul (.num 181821) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 998588) (.var 2)) (.mul
    (.num 858138) (.var 3))) (.var 2)) (.mul (.num 184917) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 291793) (.var 2)) (.mul (.num 316554) (.var 3)))
    (.var 2)) (.mul (.num 96485) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 50305) (.var 2)) (.mul (.num 67894) (.var 3))) (.var 2)) (.mul (.num
    27723) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    4523) (.var 2)) (.mul (.num 7846) (.var 3))) (.var 2)) (.mul (.num 4293) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 150) (.var 2)) (.mul (.num
    368) (.var 3))) (.var 2)) (.mul (.num 290) (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 525199) (.var 1)) (.add (.mul (.num 1987057) (.var 2)) (.mul (.num
    442682) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 3224008) (.var 2)) (.mul (.num
    1494482) (.var 3))) (.var 2)) (.mul (.num 100397) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2941645) (.var 2)) (.mul (.num 2118944) (.var 3))) (.var 2)) (.mul
    (.num 309103) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1657623) (.var 2)) (.mul (.num 1651330) (.var 3))) (.var 2)) (.mul (.num 393437) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 593294) (.var 2))
    (.mul (.num 775598) (.var 3))) (.var 2)) (.mul (.num 270528) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 132569) (.var 2)) (.mul (.num 225122)
    (.var 3))) (.var 2)) (.mul (.num 109930) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 17210) (.var 2)) (.mul (.num 39244) (.var 3))) (.var 2))
    (.mul (.num 26824) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1087) (.var 2)) (.mul (.num 3662) (.var 3))) (.var 2)) (.mul (.num 3675) (.pow
    (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 2))
    (.mul (.num 128) (.var 3))) (.var 2)) (.mul (.num 214) (.pow (.var 3) 2))) (.pow (.var 2)
    7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 355068) (.var 1)) (.add (.mul (.num 1485839)
    (.var 2)) (.mul (.num 358240) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2693861)
    (.var 2)) (.mul (.num 1375352) (.var 3))) (.var 2)) (.mul (.num 99162) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2781702) (.var 2)) (.mul (.num 2256616) (.var
    3))) (.var 2)) (.mul (.num 358959) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1803487) (.var 2)) (.mul (.num 2079804) (.var 3))) (.var 2)) (.mul (.num
    551849) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    759712) (.var 2)) (.mul (.num 1187664) (.var 3))) (.var 2)) (.mul (.num 473867) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 206627) (.var 2)) (.mul
    (.num 435062) (.var 3))) (.var 2)) (.mul (.num 250643) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 34512) (.var 2)) (.mul (.num 101346) (.var 3)))
    (.var 2)) (.mul (.num 84172) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 3121) (.var 2)) (.mul (.num 14090) (.var 3))) (.var 2)) (.mul (.num
    17491) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    109) (.var 2)) (.mul (.num 982) (.var 3))) (.var 2)) (.mul (.num 2007) (.pow (.var 3) 2)))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.mul (.num 20) (.var 3)) (.var 2)) (.mul
    (.num 90) (.pow (.var 3) 2))) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 161694) (.var 1)) (.add (.mul (.num 740282) (.var 2)) (.mul (.num 194176)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1480111) (.var 2)) (.mul (.num 835242)
    (.var 3))) (.var 2)) (.mul (.num 65163) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1701709) (.var 2)) (.mul (.num 1555908) (.var 3))) (.var 2)) (.mul (.num 271677)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1243155) (.var
    2)) (.mul (.num 1654102) (.var 3))) (.var 2)) (.mul (.num 490341) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 599282) (.var 2)) (.mul (.num
    1110710) (.var 3))) (.var 2)) (.mul (.num 505481) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 190552) (.var 2)) (.mul (.num 490198) (.var 3)))
    (.var 2)) (.mul (.num 329484) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 38409) (.var 2)) (.mul (.num 142286) (.var 3))) (.var 2)) (.mul (.num
    140931) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    4417) (.var 2)) (.mul (.num 26036) (.var 3))) (.var 2)) (.mul (.num 39232) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 217) (.var 2)) (.mul (.num
    2668) (.var 3))) (.var 2)) (.mul (.num 6670) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1))
    (.mul (.add (.mul (.mul (.num 110) (.var 3)) (.var 2)) (.mul (.num 585) (.pow (.var 3) 2)))
    (.pow (.var 2) 8))) (.var 1)) (.mul (.mul (.num 16) (.pow (.var 3) 2)) (.pow (.var 2) 9))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 44550) (.var 1)) (.add (.mul (.num
    221094) (.var 2)) (.mul (.num 63324) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    482184) (.var 2)) (.mul (.num 301338) (.var 3))) (.var 2)) (.mul (.num 25605) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 609143) (.var 2)) (.mul (.num 627364)
    (.var 3))) (.var 2)) (.mul (.num 120843) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 493254) (.var 2)) (.mul (.num 754246) (.var 3))) (.var 2)) (.mul (.num
    250392) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    266412) (.var 2)) (.mul (.num 580652) (.var 3))) (.var 2)) (.mul (.num 301047) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 96226) (.var 2)) (.mul
    (.num 298634) (.var 3))) (.var 2)) (.mul (.num 232981) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 22447) (.var 2)) (.mul (.num 103140) (.var 3)))
    (.var 2)) (.mul (.num 120895) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 3069) (.var 2)) (.mul (.num 23140) (.var 3))) (.var 2)) (.mul (.num
    42078) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    187) (.var 2)) (.mul (.num 3058) (.var 3))) (.var 2)) (.mul (.num 9413) (.pow (.var 3) 2)))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.mul (.num 180) (.var 3)) (.var 2)) (.mul
    (.num 1207) (.pow (.var 3) 2))) (.pow (.var 2) 8))) (.var 1)) (.mul (.mul (.num 65) (.pow
    (.var 3) 2)) (.pow (.var 2) 9))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 5616) (.var 1)) (.add (.mul (.num 29970) (.var 2)) (.mul (.num 9396) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 70632) (.var 2)) (.mul (.num 48924) (.var 3)))
    (.var 2)) (.mul (.num 4554) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    96966) (.var 2)) (.mul (.num 112338) (.var 3))) (.var 2)) (.mul (.num 23985) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 85872) (.var 2)) (.mul (.num
    150282) (.var 3))) (.var 2)) (.mul (.num 56070) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 51098) (.var 2)) (.mul (.num 130000) (.var 3))) (.var
    2)) (.mul (.num 76977) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 20510) (.var 2)) (.mul (.num 75944) (.var 3))) (.var 2)) (.mul (.num 68938)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5373)
    (.var 2)) (.mul (.num 30162) (.var 3))) (.var 2)) (.mul (.num 42045) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 836) (.var 2)) (.mul (.num 7900)
    (.var 3))) (.var 2)) (.mul (.num 17548) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 59) (.var 2)) (.mul (.num 1244) (.var 3))) (.var 2)) (.mul
    (.num 4846) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.mul (.num
    90) (.var 3)) (.var 2)) (.mul (.num 804) (.pow (.var 3) 2))) (.pow (.var 2) 8))) (.var 1))
    (.mul (.mul (.num 61) (.pow (.var 3) 2)) (.pow (.var 2) 9))) (.pow (.var 1) 2)))) (.var 0))
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.add (.add (.add (.add (.add (.add (.mul (.mul (.num 120) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4)
    (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 4) (.var 3)))
    (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.num 4) (.var 2))
    (.mul (.num 4) (.var 3))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var
    3)) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul
    (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.var 0))) (.pow (.var 0) 2)) (.mul (.mul
    (.num 120) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5) (.var 0))
    (.add (.mul (.num 11) (.var 2)) (.mul (.num 10) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul
    (.num 7) (.var 2)) (.mul (.neg (.num 8)) (.var 3))) (.var 2)) (.mul (.num 5) (.pow (.var 3)
    2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.neg (.num 2)) (.var
    3))) (.var 2)) (.mul (.neg (.num 9)) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.mul
    (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 1) (.pow (.var 3)
    2)) (.pow (.var 2) 3)))) (.pow (.var 0) 3))) (.mul (.mul (.num 60) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 3) (.var 0)) (.add (.mul (.num 6) (.var 2)) (.mul (.num 6) (.var
    3)))) (.var 0)) (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.neg (.num 6)) (.var 3)))
    (.var 2)) (.mul (.num 3) (.pow (.var 3) 2)))) (.var 0)) (.mul (.mul (.neg (.num 6)) (.pow
    (.var 3) 2)) (.var 2))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 2))))
    (.pow (.var 0) 4))) (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 2) (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var
    0)) (.add (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul
    (.num 2) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 2)) (.mul
    (.num 20) (.var 3))) (.var 2)) (.mul (.num 8) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul
    (.add (.mul (.mul (.num 8) (.var 3)) (.var 2)) (.mul (.num 10) (.pow (.var 3) 2))) (.pow (.var
    2) 2))) (.var 0)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.pow (.var 0)
    3)))) (.mul (.mul (.num 36) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 9) (.var 0)) (.add (.mul (.num 27) (.var 2)) (.mul (.num 18) (.var 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.num 27) (.var 2)) (.mul (.num 46) (.var 3))) (.var 2)) (.mul (.num 9)
    (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 2)) (.mul (.num
    38) (.var 3))) (.var 2)) (.mul (.num 19) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.mul (.num 10) (.var 3)) (.var 2)) (.mul (.num 11) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 0)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.pow (.var 0) 2)))
    (.pow (.var 0) 1))) (.mul (.mul (.num 36) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 15) (.var 0)) (.add (.mul (.num 36) (.var 2)) (.mul (.num 30) (.var
    3)))) (.var 0)) (.add (.mul (.add (.mul (.num 27) (.var 2)) (.mul (.num 40) (.var 3))) (.var
    2)) (.mul (.num 15) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6)
    (.var 2)) (.mul (.num 14) (.var 3))) (.var 2)) (.mul (.num 8) (.pow (.var 3) 2))) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.neg (.num 5)) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 2) (.pow (.var 3) 2)) (.pow
    (.var 2) 3))) (.var 0))) (.pow (.var 0) 2))) (.mul (.mul (.num 12) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 11) (.var 0)) (.add (.mul (.num 23) (.var 2)) (.mul
    (.num 22) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 13) (.var 2)) (.mul (.num 4)
    (.var 3))) (.var 2)) (.mul (.num 11) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1) (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var 2)) (.mul (.neg (.num 9))
    (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.mul (.neg (.num 3)) (.pow (.var 3) 2)) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 3)))) (.pow
    (.var 0) 3))) (.mul (.mul (.num 24) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 2) (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul (.num 2)
    (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num
    12) (.var 3))) (.var 2)) (.mul (.num 4) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.pow (.var 0) 3))) (.pow (.var 0) 1))) (.mul (.mul (.num 36) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 7) (.var 0)) (.add (.mul (.num 19) (.var 2))
    (.mul (.num 14) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 17) (.var 2)) (.mul (.num
    16) (.var 3))) (.var 2)) (.mul (.num 7) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 5) (.var 2)) (.mul (.num 6) (.var 3))) (.var 2)) (.mul (.num 1) (.pow (.var 3)
    2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.neg
    (.num 3)) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var
    3) 2)) (.pow (.var 2) 3))) (.var 0))) (.pow (.var 0) 2))) (.mul (.mul (.num 24) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 8) (.var 0)) (.add (.mul (.num 17) (.var 2)) (.mul
    (.num 16) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.neg (.num
    2)) (.var 3))) (.var 2)) (.mul (.num 8) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1) (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var 2)) (.mul (.neg (.num 9))
    (.pow (.var 3) 2))) (.var 2))) (.pow (.var 0) 2)) (.mul (.mul (.num 1) (.pow (.var 3) 2))
    (.pow (.var 2) 3)))) (.pow (.var 0) 3))) (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 3) (.var 0)) (.add (.mul (.num 6) (.var 2)) (.mul (.num 6) (.var 3))))
    (.var 0)) (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.neg (.num 6)) (.var 3))) (.var
    2)) (.mul (.num 3) (.pow (.var 3) 2)))) (.var 0)) (.mul (.mul (.neg (.num 6)) (.pow (.var 3)
    2)) (.var 2))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 2)))) (.pow
    (.var 0) 4))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.add (.add (.add (.add
    (.add (.add (.add (.add (.add (.add (.mul (.mul (.num 30) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var
    0)) (.add (.mul (.num 84) (.var 2)) (.mul (.num 12) (.var 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.num 371) (.var 2)) (.mul (.num 128) (.var 3))) (.var 2)) (.mul (.num 6) (.pow (.var 3)
    2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 785) (.var 2)) (.mul (.num 362) (.var 3)))
    (.var 2)) (.mul (.num 56) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 902) (.var 2)) (.mul (.num 520) (.var 3))) (.var 2)) (.mul (.num 125) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 572) (.var 2)) (.mul
    (.num 524) (.var 3))) (.var 2)) (.mul (.num 167) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 185) (.var 2)) (.mul (.num 384) (.var 3))) (.var 2))
    (.mul (.num 246) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 23) (.var 2)) (.mul (.num 158) (.var 3))) (.var 2)) (.mul (.num 256) (.pow (.var
    3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 24) (.var 3)) (.var 2))
    (.mul (.num 119) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 17) (.pow
    (.var 3) 2)) (.pow (.var 2) 7))) (.var 0))) (.pow (.var 0) 2)) (.mul (.mul (.num 30) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 15) (.var 0)) (.add (.mul (.num 170) (.var 2)) (.mul (.num 30) (.var 3))))
    (.var 0)) (.add (.mul (.add (.mul (.num 573) (.var 2)) (.mul (.num 240) (.var 3))) (.var 2))
    (.mul (.num 15) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 892) (.var
    2)) (.mul (.num 334) (.var 3))) (.var 2)) (.mul (.num 100) (.pow (.var 3) 2))) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 721) (.var 2)) (.mul (.neg (.num 22)) (.var 3)))
    (.var 2)) (.mul (.num 56) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 302) (.var 2)) (.mul (.neg (.num 174)) (.var 3))) (.var 2)) (.mul (.neg
    (.num 121)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 59) (.var 2)) (.mul (.neg (.num 36)) (.var 3))) (.var 2)) (.mul (.neg (.num 5)) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 2))
    (.mul (.num 10) (.var 3))) (.var 2)) (.mul (.num 106) (.pow (.var 3) 2))) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.mul (.num 2) (.var 3)) (.var 2)) (.mul (.num 38) (.pow (.var 3)
    2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2)
    7)))) (.pow (.var 0) 3))) (.mul (.mul (.num 15) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9) (.var 0)) (.add (.mul (.num 99)
    (.var 2)) (.mul (.num 18) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 318) (.var 2))
    (.mul (.num 138) (.var 3))) (.var 2)) (.mul (.num 9) (.pow (.var 3) 2)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 456) (.var 2)) (.mul (.num 168) (.var 3))) (.var 2)) (.mul (.num
    57) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 321) (.var
    2)) (.mul (.neg (.num 54)) (.var 3))) (.var 2)) (.mul (.num 21) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 105) (.var 2)) (.mul (.neg (.num
    84)) (.var 3))) (.var 2)) (.mul (.neg (.num 78)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    0)) (.mul (.add (.mul (.num 12) (.pow (.var 2) 2)) (.mul (.num 21) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.mul (.num 6) (.var 3)) (.var 2)) (.mul (.num 57)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.mul (.num 9) (.pow (.var 3) 2))
    (.pow (.var 2) 6)))) (.pow (.var 0) 4))) (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var
    0)) (.add (.mul (.num 172) (.var 2)) (.mul (.num 24) (.var 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.num 786) (.var 2)) (.mul (.num 300) (.var 3))) (.var 2)) (.mul (.num 12) (.pow (.var
    3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1734) (.var 2)) (.mul (.num 1152) (.var
    3))) (.var 2)) (.mul (.num 140) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 2098) (.var 2)) (.mul (.num 2238) (.var 3))) (.var 2)) (.mul (.num 504)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1422)
    (.var 2)) (.mul (.num 2536) (.var 3))) (.var 2)) (.mul (.num 972) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 504) (.var 2)) (.mul (.num 1704)
    (.var 3))) (.var 2)) (.mul (.num 1170) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 72) (.var 2)) (.mul (.num 624) (.var 3))) (.var 2)) (.mul (.num
    870) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 94) (.var
    3)) (.var 2)) (.mul (.num 354) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul
    (.num 58) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 3)))) (.mul (.mul (.num 18)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 54) (.var 0)) (.add (.mul (.num 690) (.var 2)) (.mul (.num 108)
    (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 2760) (.var 2)) (.mul (.num 1158) (.var
    3))) (.var 2)) (.mul (.num 54) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 5348) (.var 2)) (.mul (.num 3538) (.var 3))) (.var 2)) (.mul (.num 522) (.pow (.var 3)
    2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5714) (.var 2)) (.mul (.num
    5372) (.var 3))) (.var 2)) (.mul (.num 1363) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 3434) (.var 2)) (.mul (.num 4896) (.var 3))) (.var 2))
    (.mul (.num 1833) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1080) (.var 2)) (.mul (.num 2814) (.var 3))) (.var 2)) (.mul (.num 1720) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 136) (.var 2))
    (.mul (.num 930) (.var 3))) (.var 2)) (.mul (.num 1180) (.pow (.var 3) 2))) (.pow (.var 2)
    5))) (.var 0)) (.mul (.add (.mul (.mul (.num 128) (.var 3)) (.var 2)) (.mul (.num 471) (.pow
    (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 73) (.pow (.var 3) 2)) (.pow
    (.var 2) 7))) (.pow (.var 0) 2))) (.pow (.var 0) 1))) (.mul (.mul (.num 18) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 90) (.var 0)) (.add (.mul (.num 1062) (.var 2)) (.mul (.num 180) (.var 3)))) (.var
    0)) (.add (.mul (.add (.mul (.num 3810) (.var 2)) (.mul (.num 1698) (.var 3))) (.var 2)) (.mul
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
    0) 2))) (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 66) (.var 0)) (.add (.mul (.num 742) (.var 2))
    (.mul (.num 132) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 2472) (.var 2)) (.mul
    (.num 1116) (.var 3))) (.var 2)) (.mul (.num 66) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 3770) (.var 2)) (.mul (.num 1976) (.var 3))) (.var 2)) (.mul (.num
    470) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2936) (.var
    2)) (.mul (.num 904) (.var 3))) (.var 2)) (.mul (.num 454) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1144) (.var 2)) (.mul (.neg (.num 132))
    (.var 3))) (.var 2)) (.mul (.neg (.num 320)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 190) (.var 2)) (.mul (.neg (.num 48)) (.var 3))) (.var 2))
    (.mul (.neg (.num 220)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 8) (.var 2)) (.mul (.num 32) (.var 3))) (.var 2)) (.mul (.num 212) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var
    2)) (.mul (.num 100) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 6)
    (.pow (.var 3) 2)) (.pow (.var 2) 7)))) (.pow (.var 0) 3))) (.mul (.mul (.num 12) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 12) (.var 0)) (.add (.mul (.num 170) (.var 2)) (.mul (.num 24) (.var 3))))
    (.var 0)) (.add (.mul (.add (.mul (.num 766) (.var 2)) (.mul (.num 284) (.var 3))) (.var 2))
    (.mul (.num 12) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1662) (.var
    2)) (.mul (.num 988) (.var 3))) (.var 2)) (.mul (.num 126) (.pow (.var 3) 2))) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1970) (.var 2)) (.mul (.num 1718) (.var 3)))
    (.var 2)) (.mul (.num 362) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1300) (.var 2)) (.mul (.num 1768) (.var 3))) (.var 2)) (.mul (.num 528)
    (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 444)
    (.var 2)) (.mul (.num 1116) (.var 3))) (.var 2)) (.mul (.num 526) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 2)) (.mul (.num 396)
    (.var 3))) (.var 2)) (.mul (.num 388) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul
    (.add (.mul (.mul (.num 58) (.var 3)) (.var 2)) (.mul (.num 172) (.pow (.var 3) 2))) (.pow
    (.var 2) 6))) (.var 0)) (.mul (.mul (.num 30) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow
    (.var 0) 2))) (.pow (.var 0) 1))) (.mul (.mul (.num 18) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 42) (.var
    0)) (.add (.mul (.num 513) (.var 2)) (.mul (.num 84) (.var 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.num 1934) (.var 2)) (.mul (.num 806) (.var 3))) (.var 2)) (.mul (.num 42) (.pow (.var
    3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3494) (.var 2)) (.mul (.num 1944) (.var
    3))) (.var 2)) (.mul (.num 347) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 3440) (.var 2)) (.mul (.num 2088) (.var 3))) (.var 2)) (.mul (.num 588)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1879)
    (.var 2)) (.mul (.num 1410) (.var 3))) (.var 2)) (.mul (.num 334) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 528) (.var 2)) (.mul (.num 824)
    (.var 3))) (.var 2)) (.mul (.num 296) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 58) (.var 2)) (.mul (.num 330) (.var 3))) (.var 2)) (.mul (.num
    465) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 50) (.var
    3)) (.var 2)) (.mul (.num 258) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul
    (.num 38) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 0))) (.pow (.var 0) 2))) (.mul (.mul
    (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 48) (.var 0)) (.add (.mul (.num 541) (.var 2)) (.mul (.num 96)
    (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 1809) (.var 2)) (.mul (.num 798) (.var
    3))) (.var 2)) (.mul (.num 48) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 2777) (.var 2)) (.mul (.num 1322) (.var 3))) (.var 2)) (.mul (.num 335) (.pow (.var 3)
    2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2189) (.var 2)) (.mul (.num 430)
    (.var 3))) (.var 2)) (.mul (.num 283) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 874) (.var 2)) (.mul (.neg (.num 240)) (.var 3))) (.var 2))
    (.mul (.neg (.num 281)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 154) (.var 2)) (.mul (.neg (.num 60)) (.var 3))) (.var 2)) (.mul (.neg (.num
    115)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8)
    (.var 2)) (.mul (.num 26) (.var 3))) (.var 2)) (.mul (.num 212) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 88)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 6) (.pow (.var 3) 2))
    (.pow (.var 2) 7)))) (.pow (.var 0) 3))) (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 18) (.var 0)) (.add
    (.mul (.num 198) (.var 2)) (.mul (.num 36) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num
    636) (.var 2)) (.mul (.num 276) (.var 3))) (.var 2)) (.mul (.num 18) (.pow (.var 3) 2))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 912) (.var 2)) (.mul (.num 336) (.var 3))) (.var
    2)) (.mul (.num 114) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 642) (.var 2)) (.mul (.neg (.num 108)) (.var 3))) (.var 2)) (.mul (.num 42) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 210) (.var 2)) (.mul
    (.neg (.num 168)) (.var 3))) (.var 2)) (.mul (.neg (.num 156)) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 0)) (.mul (.add (.mul (.num 24) (.pow (.var 2) 2)) (.mul (.num 42) (.pow (.var
    3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.mul (.num 12) (.var 3)) (.var 2))
    (.mul (.num 114) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.mul (.num 18) (.pow
    (.var 3) 2)) (.pow (.var 2) 6)))) (.pow (.var 0) 4))) (.mul (.num 3) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 105) (.var 0)) (.add (.mul (.num 1331) (.var 2)) (.mul (.num 210) (.var 3)))) (.var 0))
    (.add (.mul (.add (.mul (.num 5280) (.var 2)) (.mul (.num 2448) (.var 3))) (.var 2)) (.mul
    (.num 105) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10164) (.var 2))
    (.mul (.num 8672) (.var 3))) (.var 2)) (.mul (.num 1129) (.pow (.var 3) 2))) (.var 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 10807) (.var 2)) (.mul (.num 14832) (.var 3))) (.var
    2)) (.mul (.num 3566) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 6477) (.var 2)) (.mul (.num 14058) (.var 3))) (.var 2)) (.mul (.num 5300)
    (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2040)
    (.var 2)) (.mul (.num 7592) (.var 3))) (.var 2)) (.mul (.num 4279) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 260) (.var 2)) (.mul (.num 2196)
    (.var 3))) (.var 2)) (.mul (.num 1967) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul
    (.add (.mul (.mul (.num 264) (.var 3)) (.var 2)) (.mul (.num 506) (.pow (.var 3) 2))) (.pow
    (.var 2) 6))) (.var 0)) (.mul (.mul (.num 60) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow
    (.var 0) 3)))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 150) (.var 0)) (.add (.mul
    (.num 1804) (.var 2)) (.mul (.num 300) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num
    6658) (.var 2)) (.mul (.num 3166) (.var 3))) (.var 2)) (.mul (.num 150) (.pow (.var 3) 2))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 11738) (.var 2)) (.mul (.num 9504) (.var 3)))
    (.var 2)) (.mul (.num 1416) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 11228) (.var 2)) (.mul (.num 13300) (.var 3))) (.var 2)) (.mul (.num 3483) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5922) (.var
    2)) (.mul (.num 10100) (.var 3))) (.var 2)) (.mul (.num 3587) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1596) (.var 2)) (.mul (.num 4414) (.var
    3))) (.var 2)) (.mul (.num 1754) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 168) (.var 2)) (.mul (.num 1104) (.var 3))) (.var 2)) (.mul (.num 548)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 128) (.var 3))
    (.var 2)) (.mul (.num 213) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num
    49) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 2))) (.pow (.var 0) 1))) (.mul (.num
    3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 66) (.var 0)) (.add (.mul (.num 871) (.var 2)) (.mul (.num 132)
    (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 3640) (.var 2)) (.mul (.num 1584) (.var
    3))) (.var 2)) (.mul (.num 66) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 7406) (.var 2)) (.mul (.num 5821) (.var 3))) (.var 2)) (.mul (.num 725) (.pow (.var 3)
    2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8338) (.var 2)) (.mul (.num
    10439) (.var 3))) (.var 2)) (.mul (.num 2345) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 5299) (.var 2)) (.mul (.num 10498) (.var 3))) (.var
    2)) (.mul (.num 3623) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1772) (.var 2)) (.mul (.num 6082) (.var 3))) (.var 2)) (.mul (.num 3120)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 240)
    (.var 2)) (.mul (.num 1901) (.var 3))) (.var 2)) (.mul (.num 1583) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 247) (.var 3)) (.var 2)) (.mul (.num
    461) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 61) (.pow (.var 3)
    2)) (.pow (.var 2) 7))) (.pow (.var 0) 3)))) (.mul (.mul (.num 6) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 144) (.var 0)) (.add (.mul (.num 1767) (.var 2)) (.mul (.num 288) (.var 3)))) (.var 0))
    (.add (.mul (.add (.mul (.num 6713) (.var 2)) (.mul (.num 3066) (.var 3))) (.var 2)) (.mul
    (.num 144) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 12269) (.var 2))
    (.mul (.num 9301) (.var 3))) (.var 2)) (.mul (.num 1365) (.pow (.var 3) 2))) (.var 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 12271) (.var 2)) (.mul (.num 13338) (.var 3))) (.var
    2)) (.mul (.num 3359) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 6844) (.var 2)) (.mul (.num 10674) (.var 3))) (.var 2)) (.mul (.num 3542)
    (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1980)
    (.var 2)) (.mul (.num 5122) (.var 3))) (.var 2)) (.mul (.num 1977) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 228) (.var 2)) (.mul (.num 1449)
    (.var 3))) (.var 2)) (.mul (.num 882) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul
    (.add (.mul (.mul (.num 186) (.var 3)) (.var 2)) (.mul (.num 388) (.pow (.var 3) 2))) (.pow
    (.var 2) 6))) (.var 0)) (.mul (.mul (.num 79) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow
    (.var 0) 2))) (.pow (.var 0) 1))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 156) (.var
    0)) (.add (.mul (.num 1815) (.var 2)) (.mul (.num 312) (.var 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.num 6382) (.var 2)) (.mul (.num 2968) (.var 3))) (.var 2)) (.mul (.num 156) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10540) (.var 2)) (.mul (.num
    7204) (.var 3))) (.var 2)) (.mul (.num 1285) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 9238) (.var 2)) (.mul (.num 7424) (.var 3))) (.var 2)) (.mul
    (.num 2221) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 4327) (.var 2)) (.mul (.num 3898) (.var 3))) (.var 2)) (.mul (.num 946) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 988) (.var 2)) (.mul
    (.num 1362) (.var 3))) (.var 2)) (.mul (.neg (.num 174)) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 82) (.var 2)) (.mul (.num 394) (.var 3)))
    (.var 2)) (.mul (.num 191) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.mul (.num 54) (.var 3)) (.var 2)) (.mul (.num 265) (.pow (.var 3) 2))) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.mul (.num 46) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 0))) (.pow (.var
    0) 2))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh2213.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh2213.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh2213.leading0 e g v + f * FullHigh2213.leading1 e g v +
        f^2 * FullHigh2213.remainder e f g v := by
  have hden : denominatorOne FullHigh2213.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh2213.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh2213.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 549755813888 16 10 2) lhs =
      value (Encoding4.vars 549755813888 16 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 549755813888 := by
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
    FullHigh2213.source e f g v =
      FullHigh2213.leading0 e g v + f * FullHigh2213.leading1 e g v +
        f^2 * FullHigh2213.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 549755813888 16 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh221Encoded3

namespace SPR.N6.Tail.CoreEndpoint.FullHigh221
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition3 (e f g v : ℝ) :
    FullHigh2213.source e f g v =
      FullHigh2213.leading0 e g v + f * FullHigh2213.leading1 e g v +
        f^2 * FullHigh2213.remainder e f g v :=
  FullHigh221Encoded3.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh221
