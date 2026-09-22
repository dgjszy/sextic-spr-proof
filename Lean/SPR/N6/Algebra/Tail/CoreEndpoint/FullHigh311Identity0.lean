import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh311Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^0 layer of FullHigh311.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh311Encoded0
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 8) (.var
    1)) (.var 0)) (.add (.mul (.add (.mul (.num 196) (.var 1)) (.add (.mul (.num 88) (.var 2))
    (.mul (.num 48) (.var 3)))) (.var 1)) (.mul (.mul (.num 16) (.var 3)) (.var 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.num 1922) (.var 1)) (.add (.mul (.num 1706) (.var 2))
    (.mul (.num 782) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 368) (.var 2)) (.mul
    (.num 566) (.var 3))) (.var 2)) (.mul (.num 40) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 96) (.var 3)) (.var 2)) (.mul (.num 16) (.pow (.var 3) 2))) (.var 2))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 10522) (.var 1)) (.add (.mul
    (.num 13853) (.var 2)) (.mul (.num 5614) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    5867) (.var 2)) (.mul (.num 6268) (.var 3))) (.var 2)) (.mul (.num 560) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 800) (.var 2)) (.mul (.num 2198) (.var 3)))
    (.var 2)) (.mul (.num 468) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 240) (.var 3)) (.var 2)) (.mul (.num 96) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 36677) (.var 1)) (.add
    (.mul (.num 63706) (.var 2)) (.mul (.num 23635) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 39798) (.var 2)) (.mul (.num 35702) (.var 3))) (.var 2)) (.mul (.num 3428) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10577) (.var 2)) (.mul (.num 19015)
    (.var 3))) (.var 2)) (.mul (.num 4344) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1000) (.var 2)) (.mul (.num 4204) (.var 3))) (.var 2)) (.mul (.num
    1788) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 320)
    (.var 3)) (.var 2)) (.mul (.num 240) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 86743) (.var 1)) (.add
    (.mul (.num 186456) (.var 2)) (.mul (.num 65291) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 152940) (.var 2)) (.mul (.num 124581) (.var 3))) (.var 2)) (.mul (.num 12165) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 59595) (.var 2)) (.mul (.num
    89077) (.var 3))) (.var 2)) (.mul (.num 20615) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 10904) (.var 2)) (.mul (.num 29595) (.var 3))) (.var 2)) (.mul
    (.num 12654) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 728) (.var 2)) (.mul (.num 4488) (.var 3))) (.var 2)) (.mul (.num 3344) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 240) (.var 3)) (.var 2))
    (.mul (.num 320) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 143379) (.var 1)) (.add
    (.mul (.num 366319) (.var 2)) (.mul (.num 124835) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 370283) (.var 2)) (.mul (.num 288738) (.var 3))) (.var 2)) (.mul (.num 27993)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 188460) (.var 2)) (.mul
    (.num 259935) (.var 3))) (.var 2)) (.mul (.num 59385) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 50243) (.var 2)) (.mul (.num 115458) (.var 3))) (.var 2))
    (.mul (.num 48236) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 6446) (.var 2)) (.mul (.num 26140) (.var 3))) (.var 2)) (.mul (.num 18752) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 288) (.var 2))
    (.mul (.num 2738) (.var 3))) (.var 2)) (.mul (.num 3468) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.mul (.num 96) (.var 3)) (.var 2)) (.mul (.num 240) (.pow
    (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 166718) (.var 1)) (.add (.mul (.num
    492343) (.var 2)) (.mul (.num 168129) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    589190) (.var 2)) (.mul (.num 458494) (.var 3))) (.var 2)) (.mul (.num 44129) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 367736) (.var 2)) (.mul (.num 499862)
    (.var 3))) (.var 2)) (.mul (.num 112791) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 127310) (.var 2)) (.mul (.num 279504) (.var 3))) (.var 2)) (.mul (.num
    114089) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    23644) (.var 2)) (.mul (.num 84723) (.var 3))) (.var 2)) (.mul (.num 58245) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2017) (.var 2)) (.mul
    (.num 13286) (.var 3))) (.var 2)) (.mul (.num 15646) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48) (.var 2)) (.mul (.num 898) (.var 3))) (.var
    2)) (.mul (.num 2040) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.mul (.num 16) (.var 3)) (.var 2)) (.mul (.num 96) (.pow (.var 3) 2))) (.pow (.var 2) 6))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 134287) (.var 1)) (.add (.mul (.num 449004) (.var 2)) (.mul
    (.num 157596) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 618595) (.var 2)) (.mul
    (.num 496269) (.var 3))) (.var 2)) (.mul (.num 48183) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 454802) (.var 2)) (.mul (.num 637546) (.var 3))) (.var 2)) (.mul
    (.num 144847) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    191914) (.var 2)) (.mul (.num 431906) (.var 3))) (.var 2)) (.mul (.num 176421) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45944) (.var 2)) (.mul
    (.num 165289) (.var 3))) (.var 2)) (.mul (.num 112147) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5625) (.var 2)) (.mul (.num 35003) (.var 3)))
    (.var 2)) (.mul (.num 39552) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 255) (.var 2)) (.mul (.num 3615) (.var 3))) (.var 2)) (.mul (.num
    7458) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 124)
    (.var 3)) (.var 2)) (.mul (.num 640) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.mul (.num 16) (.pow (.var 3) 2)) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 71615) (.var 1)) (.add (.mul (.num 266748) (.var 2)) (.mul (.num 98264) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 414291) (.var 2)) (.mul (.num 351316) (.var 3))) (.var
    2)) (.mul (.num 35184) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    348761) (.var 2)) (.mul (.num 520493) (.var 3))) (.var 2)) (.mul (.num 122269) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 172192) (.var 2)) (.mul (.num
    415092) (.var 3))) (.var 2)) (.mul (.num 175421) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 49808) (.var 2)) (.mul (.num 192513) (.var 3))) (.var
    2)) (.mul (.num 134701) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 7767) (.var 2)) (.mul (.num 51661) (.var 3))) (.var 2)) (.mul (.num 59524)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 496)
    (.var 2)) (.mul (.num 7306) (.var 3))) (.var 2)) (.mul (.num 14907) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 403) (.var 3)) (.var 2)) (.mul (.num
    1884) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 84) (.pow (.var 3)
    2)) (.pow (.var 2) 7))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 22815) (.var 1)) (.add
    (.mul (.num 93405) (.var 2)) (.mul (.num 36744) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 160820) (.var 2)) (.mul (.num 146994) (.var 3))) (.var 2)) (.mul (.num 15558) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 151691) (.var 2)) (.mul (.num
    246626) (.var 3))) (.var 2)) (.mul (.num 61626) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 85091) (.var 2)) (.mul (.num 226143) (.var 3))) (.var 2)) (.mul
    (.num 102349) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 28498) (.var 2)) (.mul (.num 123071) (.var 3))) (.var 2)) (.mul (.num 92805) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5287) (.var 2))
    (.mul (.num 39902) (.var 3))) (.var 2)) (.mul (.num 49784) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 419) (.var 2)) (.mul (.num 7139) (.var 3)))
    (.var 2)) (.mul (.num 15782) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 541) (.var 3)) (.var 2)) (.mul (.num 2712) (.pow (.var 3) 2))) (.pow (.var
    2) 6))) (.var 1)) (.mul (.mul (.num 190) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 1)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 3294) (.var 1)) (.add (.mul (.num 14652) (.var 2))
    (.mul (.num 6246) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 27576) (.var 2)) (.mul
    (.num 27594) (.var 3))) (.var 2)) (.mul (.num 3168) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 28638) (.var 2)) (.mul (.num 51588) (.var 3))) (.var 2)) (.mul (.num
    14130) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17842)
    (.var 2)) (.mul (.num 53280) (.var 3))) (.var 2)) (.mul (.num 26770) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6708) (.var 2)) (.mul (.num 33096)
    (.var 3))) (.var 2)) (.mul (.num 28143) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1416) (.var 2)) (.mul (.num 12456) (.var 3))) (.var 2))
    (.mul (.num 17878) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 130) (.var 2)) (.mul (.num 2646) (.var 3))) (.var 2)) (.mul (.num 6910) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 246) (.var 3)) (.var
    2)) (.mul (.num 1512) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 145)
    (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 1) 3)))) (.pow (.mul (.add (.var 0) (.var
    1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.add (.var 1) (.var 2))) (.mul (.mul (.mul
    (.num 2) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num
    20) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 1048) (.var 1)) (.add (.mul (.num 828)
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
    (.var 1) 2)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1))
    (.var 2))) 2)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.mul (.mul
    (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0))
    (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul
    (.num 10) (.var 2)) (.mul (.num 4) (.var 3))) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2))))
    (.var 0)) (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 4) (.var 3))) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 2) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.var 0))) (.pow (.var 0) 3)) (.mul (.mul (.num 4) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var
    3)))) (.var 0)) (.add (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 16) (.var 3))) (.var
    2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var
    2)) (.mul (.num 20) (.var 3))) (.var 2)) (.mul (.num 8) (.pow (.var 3) 2))) (.var 2))) (.var
    0)) (.mul (.add (.mul (.mul (.num 8) (.var 3)) (.var 2)) (.mul (.num 10) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.pow (.var 0) 3))) (.pow (.var 0) 1))) (.mul (.mul (.num 4) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var
    3)))) (.var 0)) (.add (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 12) (.var 3))) (.var
    2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var
    2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul (.num 4) (.pow (.var 3) 2))) (.var 2))) (.var
    0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.pow (.var 0) 3))) (.pow (.var 0) 2))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.mul (.mul (.num 6) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 6) (.var 0)) (.add (.mul (.num 84) (.var 2)) (.mul (.num 12) (.var 3)))) (.var 0))
    (.add (.mul (.add (.mul (.num 371) (.var 2)) (.mul (.num 128) (.var 3))) (.var 2)) (.mul (.num
    6) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 785) (.var 2)) (.mul
    (.num 362) (.var 3))) (.var 2)) (.mul (.num 56) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 902) (.var 2)) (.mul (.num 520) (.var 3))) (.var 2)) (.mul (.num
    125) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    572) (.var 2)) (.mul (.num 524) (.var 3))) (.var 2)) (.mul (.num 167) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 185) (.var 2)) (.mul (.num
    384) (.var 3))) (.var 2)) (.mul (.num 246) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 23) (.var 2)) (.mul (.num 158) (.var 3))) (.var 2)) (.mul
    (.num 256) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 24)
    (.var 3)) (.var 2)) (.mul (.num 119) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.mul (.num 17) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 0))) (.pow (.var 0) 3)) (.mul
    (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.add (.mul (.num 172) (.var 2)) (.mul
    (.num 24) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 786) (.var 2)) (.mul (.num 300)
    (.var 3))) (.var 2)) (.mul (.num 12) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1734) (.var 2)) (.mul (.num 1152) (.var 3))) (.var 2)) (.mul (.num 140) (.pow
    (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2098) (.var 2)) (.mul
    (.num 2238) (.var 3))) (.var 2)) (.mul (.num 504) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1422) (.var 2)) (.mul (.num 2536) (.var 3)))
    (.var 2)) (.mul (.num 972) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 504) (.var 2)) (.mul (.num 1704) (.var 3))) (.var 2)) (.mul (.num 1170)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 72)
    (.var 2)) (.mul (.num 624) (.var 3))) (.var 2)) (.mul (.num 870) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 94) (.var 3)) (.var 2)) (.mul (.num 354)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 58) (.pow (.var 3) 2))
    (.pow (.var 2) 7))) (.pow (.var 0) 3))) (.pow (.var 0) 1))) (.mul (.mul (.num 3) (.mul (.add
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
    (.var 0) 2))) (.pow (.var 0) 2))) (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 0))
    (.add (.mul (.num 174) (.var 2)) (.mul (.num 24) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul
    (.num 810) (.var 2)) (.mul (.num 328) (.var 3))) (.var 2)) (.mul (.num 12) (.pow (.var 3)
    2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1826) (.var 2)) (.mul (.num 1430) (.var
    3))) (.var 2)) (.mul (.num 154) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 2264) (.var 2)) (.mul (.num 3036) (.var 3))) (.var 2)) (.mul (.num 624)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1578)
    (.var 2)) (.mul (.num 3564) (.var 3))) (.var 2)) (.mul (.num 1230) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 578) (.var 2)) (.mul (.num 2360)
    (.var 3))) (.var 2)) (.mul (.num 1340) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 86) (.var 2)) (.mul (.num 822) (.var 3))) (.var 2)) (.mul (.num
    822) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 116)
    (.var 3)) (.var 2)) (.mul (.num 264) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.mul (.num 34) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 4)))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh3110.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh3110.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh3110.leading0 e g v + f * FullHigh3110.leading1 e g v +
        f^2 * FullHigh3110.remainder e f g v := by
  have hden : denominatorOne FullHigh3110.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh3110.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh3110.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 17179869184 17 10 2) lhs =
      value (Encoding4.vars 17179869184 17 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 17179869184 := by
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
    FullHigh3110.source e f g v =
      FullHigh3110.leading0 e g v + f * FullHigh3110.leading1 e g v +
        f^2 * FullHigh3110.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 17179869184 17 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh311Encoded0

namespace SPR.N6.Tail.CoreEndpoint.FullHigh311
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition0 (e f g v : ℝ) :
    FullHigh3110.source e f g v =
      FullHigh3110.leading0 e g v + f * FullHigh3110.leading1 e g v +
        f^2 * FullHigh3110.remainder e f g v :=
  FullHigh311Encoded0.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh311
