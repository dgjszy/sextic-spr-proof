import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh212Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^3 layer of FullHigh212.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh212Encoded3
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.add (.add (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 90) (.var 1))
    (.mul (.num 30) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 1098) (.var 1)) (.add (.mul
    (.num 828) (.var 2)) (.mul (.num 180) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 150) (.var
    2)) (.mul (.num 60) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num
    5940) (.var 1)) (.add (.mul (.num 6912) (.var 2)) (.mul (.num 1800) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 2532) (.var 2)) (.mul (.num 1272) (.var 3))) (.var 2)) (.mul
    (.num 90) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 300) (.var 2))
    (.mul (.num 192) (.var 3))) (.var 2)) (.mul (.num 30) (.pow (.var 3) 2))) (.var 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 18342) (.var 1)) (.add (.mul (.num
    28566) (.var 2)) (.mul (.num 8010) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 15630)
    (.var 2)) (.mul (.num 8628) (.var 3))) (.var 2)) (.mul (.num 750) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3606) (.var 2)) (.mul (.num 2634) (.var 3))) (.var 2))
    (.mul (.num 516) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    300) (.var 2)) (.mul (.num 216) (.var 3))) (.var 2)) (.mul (.num 66) (.pow (.var 3) 2))) (.pow
    (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    35100) (.var 1)) (.add (.mul (.num 67848) (.var 2)) (.mul (.num 20106) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 48804) (.var 2)) (.mul (.num 28938) (.var 3))) (.var 2)) (.mul
    (.num 2733) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16386) (.var
    2)) (.mul (.num 13314) (.var 3))) (.var 2)) (.mul (.num 2808) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2580) (.var 2)) (.mul (.num 2178) (.var 3)))
    (.var 2)) (.mul (.num 687) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 150) (.var 2)) (.mul (.num 96) (.var 3))) (.var 2)) (.mul (.num 12) (.pow
    (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 42489) (.var 1)) (.add (.mul (.num 97311) (.var 2)) (.mul (.num
    30882) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 85791) (.var 2)) (.mul (.num 55836)
    (.var 3))) (.var 2)) (.mul (.num 5403) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 37143) (.var 2)) (.mul (.num 34716) (.var 3))) (.var 2)) (.mul (.num 7278) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8274) (.var 2)) (.mul
    (.num 8748) (.var 3))) (.var 2)) (.mul (.num 2547) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 870) (.var 2)) (.mul (.num 798) (.var 3))) (.var
    2)) (.mul (.num 12) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 30) (.var 2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul (.neg (.num 60)) (.pow
    (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 31734) (.var 1)) (.add (.mul (.num 83457) (.var 2))
    (.mul (.num 29220) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 86289) (.var 2)) (.mul
    (.num 64218) (.var 3))) (.var 2)) (.mul (.num 6429) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 45069) (.var 2)) (.mul (.num 51312) (.var 3))) (.var 2)) (.mul (.num
    11082) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12627)
    (.var 2)) (.mul (.num 18324) (.var 3))) (.var 2)) (.mul (.num 5565) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1806) (.var 2)) (.mul (.num 2892)
    (.var 3))) (.var 2)) (.mul (.num 360) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 102) (.var 2)) (.mul (.num 162) (.var 3))) (.var 2)) (.mul (.neg
    (.num 294)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.neg (.num 42))
    (.pow (.var 3) 2)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13365) (.var 1)) (.add (.mul (.num
    39459) (.var 2)) (.mul (.num 15738) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 46413)
    (.var 2)) (.mul (.num 41034) (.var 3))) (.var 2)) (.mul (.num 4590) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 28023) (.var 2)) (.mul (.num 40602) (.var 3))) (.var
    2)) (.mul (.num 10314) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 9252) (.var 2)) (.mul (.num 19284) (.var 3))) (.var 2)) (.mul (.num 7971) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1602) (.var 2)) (.mul
    (.num 4608) (.var 3))) (.var 2)) (.mul (.num 2316) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 114) (.var 2)) (.mul (.num 534) (.var 3))) (.var
    2)) (.mul (.num 75) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 24) (.var 3)) (.var 2)) (.mul (.neg (.num 60)) (.pow (.var 3) 2))) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.mul (.neg (.num 6)) (.pow (.var 3) 2)) (.pow (.var 2) 6)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 2430) (.var 1)) (.add (.mul (.num 7917) (.var 2)) (.mul (.num 3684) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 10359) (.var 2)) (.mul (.num 11130) (.var 3))) (.var
    2)) (.mul (.num 1512) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7017)
    (.var 2)) (.mul (.num 13134) (.var 3))) (.var 2)) (.mul (.num 4374) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2619) (.var 2)) (.mul (.num 7746) (.var
    3))) (.var 2)) (.mul (.num 4893) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 516) (.var 2)) (.mul (.num 2418) (.var 3))) (.var 2)) (.mul (.num
    2724) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    42) (.var 2)) (.mul (.num 384) (.var 3))) (.var 2)) (.mul (.num 816) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 24) (.var 3)) (.var 2)) (.mul (.num 132)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 9) (.pow (.var 3) 2))
    (.pow (.var 2) 6))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0)
    (.var 1)) (.var 2))) 3)) (.mul (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 12) (.var 1))
    (.var 0)) (.add (.mul (.add (.mul (.num 216) (.var 1)) (.add (.mul (.num 96) (.var 2)) (.mul
    (.num 72) (.var 3)))) (.var 1)) (.mul (.mul (.num 24) (.var 3)) (.var 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.num 1725) (.var 1)) (.add (.mul (.num 1509) (.var 2)) (.mul
    (.num 921) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 312) (.var 2)) (.mul (.num 681)
    (.var 3))) (.var 2)) (.mul (.num 60) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 120) (.var 3)) (.var 2)) (.mul (.num 24) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 7791) (.var 1)) (.add (.mul (.num 10044) (.var
    2)) (.mul (.num 5313) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 4101) (.var 2))
    (.mul (.num 6000) (.var 3))) (.var 2)) (.mul (.num 666) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 528) (.var 2)) (.mul (.num 2127) (.var 3))) (.var 2)) (.mul
    (.num 570) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 240) (.var
    3)) (.var 2)) (.mul (.num 120) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 21840) (.var 1)) (.add (.mul (.num
    36822) (.var 2)) (.mul (.num 17412) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 22083)
    (.var 2)) (.mul (.num 26103) (.var 3))) (.var 2)) (.mul (.num 3252) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 5553) (.var 2)) (.mul (.num 13767) (.var 3))) (.var
    2)) (.mul (.num 4206) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 492) (.var 2)) (.mul (.num 3036) (.var 3))) (.var 2)) (.mul (.num 1758) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 240) (.var 3)) (.var 2))
    (.mul (.num 240) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 39525) (.var 1)) (.add (.mul (.num
    81636) (.var 2)) (.mul (.num 35730) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 63714)
    (.var 2)) (.mul (.num 66324) (.var 3))) (.var 2)) (.mul (.num 8646) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 23310) (.var 2)) (.mul (.num 45810) (.var 3))) (.var
    2)) (.mul (.num 14778) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3939) (.var 2)) (.mul (.num 14604) (.var 3))) (.var 2)) (.mul (.num 9156) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 240) (.var 2)) (.mul
    (.num 2148) (.var 3))) (.var 2)) (.mul (.num 2448) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 120) (.var 3)) (.var 2)) (.mul (.num 240) (.pow (.var
    3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 46353) (.var 1)) (.add (.mul (.num 112545) (.var 2)) (.mul
    (.num 47922) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 107028) (.var 2)) (.mul (.num
    106164) (.var 3))) (.var 2)) (.mul (.num 13800) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 50532) (.var 2)) (.mul (.num 90432) (.var 3))) (.var 2)) (.mul (.num
    29070) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12222)
    (.var 2)) (.mul (.num 37296) (.var 3))) (.var 2)) (.mul (.num 23436) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1374) (.var 2)) (.mul (.num 7653)
    (.var 3))) (.var 2)) (.mul (.num 9030) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 48) (.var 2)) (.mul (.num 723) (.var 3))) (.var 2)) (.mul (.num
    1668) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 24)
    (.var 3)) (.var 2)) (.mul (.num 120) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 34062) (.var 1)) (.add (.mul (.num 94470) (.var 2)) (.mul (.num 41448) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 104985) (.var 2)) (.mul (.num 107238) (.var 3))) (.var 2))
    (.mul (.num 13938) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 59886)
    (.var 2)) (.mul (.num 109398) (.var 3))) (.var 2)) (.mul (.num 34962) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18429) (.var 2)) (.mul (.num 55986)
    (.var 3))) (.var 2)) (.mul (.num 34512) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 2892) (.var 2)) (.mul (.num 14949) (.var 3))) (.var 2))
    (.mul (.num 16998) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 180) (.var 2)) (.mul (.num 1944) (.var 3))) (.var 2)) (.mul (.num 4332) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 93) (.var 3)) (.var
    2)) (.mul (.num 534) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 24)
    (.pow (.var 3) 2)) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 14256) (.var 1)) (.add (.mul
    (.num 44208) (.var 2)) (.mul (.num 21024) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    55749) (.var 2)) (.mul (.num 62442) (.var 3))) (.var 2)) (.mul (.num 8568) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36819) (.var 2)) (.mul (.num 74706) (.var
    3))) (.var 2)) (.mul (.num 25272) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 13488) (.var 2)) (.mul (.num 46248) (.var 3))) (.var 2)) (.mul (.num 30048)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2622)
    (.var 2)) (.mul (.num 15636) (.var 3))) (.var 2)) (.mul (.num 18426) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 216) (.var 2)) (.mul (.num 2763)
    (.var 3))) (.var 2)) (.mul (.num 6096) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 207) (.var 3)) (.var 2)) (.mul (.num 1020) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.mul (.num 66) (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 2592) (.var 1)) (.add (.mul (.num 8838) (.var 2)) (.mul (.num
    4716) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 12372) (.var 2)) (.mul (.num 15804)
    (.var 3))) (.var 2)) (.mul (.num 2448) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 9180) (.var 2)) (.mul (.num 21690) (.var 3))) (.var 2)) (.mul (.num 8424) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3834) (.var 2)) (.mul
    (.num 15750) (.var 3))) (.var 2)) (.mul (.num 12006) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 864) (.var 2)) (.mul (.num 6432) (.var 3)))
    (.var 2)) (.mul (.num 9174) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 84) (.var 2)) (.mul (.num 1422) (.var 3))) (.var 2)) (.mul (.num 4002)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 138) (.var 3))
    (.var 2)) (.mul (.num 960) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num
    102) (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.pow (.var 1) 2)))) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.add (.var 1) (.var 2)))) (.mul (.mul
    (.num 15) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 150) (.var 1)) (.mul (.num 50) (.var
    2))) (.var 0)) (.add (.mul (.add (.mul (.num 2180) (.var 1)) (.add (.mul (.num 1670) (.var 2))
    (.mul (.num 300) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 310) (.var 2)) (.mul (.num 100)
    (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 14338) (.var 1))
    (.add (.mul (.num 17062) (.var 2)) (.mul (.num 3620) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 6494) (.var 2)) (.mul (.num 2580) (.var 3))) (.var 2)) (.mul (.num 150) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 810) (.var 2)) (.mul (.num 400)
    (.var 3))) (.var 2)) (.mul (.num 50) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 55800) (.var 1)) (.add (.mul (.num 89498) (.var 2))
    (.mul (.num 19890) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 51382) (.var 2)) (.mul
    (.num 21652) (.var 3))) (.var 2)) (.mul (.num 1560) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 12674) (.var 2)) (.mul (.num 6838) (.var 3))) (.var 2)) (.mul (.num
    1090) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1150) (.var
    2)) (.mul (.num 596) (.var 3))) (.var 2)) (.mul (.num 150) (.pow (.var 3) 2))) (.pow (.var 2)
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 141566)
    (.var 1)) (.add (.mul (.num 284122) (.var 2)) (.mul (.num 64774) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 216908) (.var 2)) (.mul (.num 94730) (.var 3))) (.var 2)) (.mul (.num
    7315) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 79248) (.var 2))
    (.mul (.num 45406) (.var 3))) (.var 2)) (.mul (.num 7706) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 13966) (.var 2)) (.mul (.num 7994) (.var 3))) (.var
    2)) (.mul (.num 2109) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 950) (.var 2)) (.mul (.num 384) (.var 3))) (.var 2)) (.mul (.num 98) (.pow
    (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 243760) (.var 1)) (.add (.mul (.num 584850) (.var 2)) (.mul
    (.num 137656) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 554256) (.var 2)) (.mul
    (.num 253618) (.var 3))) (.var 2)) (.mul (.num 20075) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 266216) (.var 2)) (.mul (.num 164688) (.var 3))) (.var 2)) (.mul
    (.num 28238) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    68530) (.var 2)) (.mul (.num 44794) (.var 3))) (.var 2)) (.mul (.num 11635) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8930) (.var 2)) (.mul
    (.num 4544) (.var 3))) (.var 2)) (.mul (.num 1066) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 450) (.var 2)) (.mul (.num 76) (.var 3))) (.var
    2)) (.mul (.neg (.num 106)) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 287722) (.var
    1)) (.add (.mul (.num 800310) (.var 2)) (.mul (.num 198084) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 901848) (.var 2)) (.mul (.num 443344) (.var 3))) (.var 2)) (.mul (.num
    35738) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 533482) (.var 2))
    (.mul (.num 368816) (.var 3))) (.var 2)) (.mul (.num 64007) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 178644) (.var 2)) (.mul (.num 140640) (.var 3)))
    (.var 2)) (.mul (.num 36945) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 33586) (.var 2)) (.mul (.num 24096) (.var 3))) (.var 2)) (.mul (.num
    6393) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    3194) (.var 2)) (.mul (.num 1396) (.var 3))) (.var 2)) (.mul (.neg (.num 537)) (.pow (.var 3)
    2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 110) (.var 2)) (.mul
    (.neg (.num 16)) (.var 3))) (.var 2)) (.mul (.neg (.num 154)) (.pow (.var 3) 2))) (.pow (.var
    2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 229370) (.var 1)) (.add (.mul (.num 723650) (.var 2)) (.mul
    (.num 192328) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 941744) (.var 2)) (.mul
    (.num 510436) (.var 3))) (.var 2)) (.mul (.num 42934) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 658556) (.var 2)) (.mul (.num 525240) (.var 3))) (.var 2)) (.mul
    (.num 96512) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    269374) (.var 2)) (.mul (.num 265456) (.var 3))) (.var 2)) (.mul (.num 77206) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 65208) (.var 2)) (.mul
    (.num 68726) (.var 3))) (.var 2)) (.mul (.num 25220) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8842) (.var 2)) (.mul (.num 8552) (.var 3)))
    (.var 2)) (.mul (.num 2192) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 566) (.var 2)) (.mul (.num 386) (.var 3))) (.var 2)) (.mul (.neg (.num
    346)) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    10) (.var 2)) (.mul (.neg (.num 4)) (.var 3))) (.var 2)) (.mul (.neg (.num 46)) (.pow (.var 3)
    2))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 117952) (.var 1)) (.add (.mul
    (.num 415322) (.var 2)) (.mul (.num 120452) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 611306) (.var 2)) (.mul (.num 371788) (.var 3))) (.var 2)) (.mul (.num 33782) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 491472) (.var 2)) (.mul (.num
    459960) (.var 3))) (.var 2)) (.mul (.num 94094) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 236086) (.var 2)) (.mul (.num 294016) (.var 3))) (.var 2)) (.mul
    (.num 101460) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 69204) (.var 2)) (.mul (.num 104686) (.var 3))) (.var 2)) (.mul (.num 53834) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11958) (.var 2))
    (.mul (.num 20978) (.var 3))) (.var 2)) (.mul (.num 14959) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1080) (.var 2)) (.mul (.num 2274) (.var
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
    (.mul (.mul (.num 11) (.pow (.var 3) 2)) (.pow (.var 2) 8))) (.var 1)))) (.pow (.mul (.add
    (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2))) (.mul (.mul (.mul (.num 6)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 90) (.var 1)) (.mul (.num 30) (.var 2))) (.var 0)) (.add
    (.mul (.add (.mul (.num 1272) (.var 1)) (.add (.mul (.num 972) (.var 2)) (.mul (.num 180)
    (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 180) (.var 2)) (.mul (.num 60) (.var 3))) (.var
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 8094) (.var 1)) (.add (.mul (.num
    9594) (.var 2)) (.mul (.num 2100) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 3630)
    (.var 2)) (.mul (.num 1488) (.var 3))) (.var 2)) (.mul (.num 90) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 450) (.var 2)) (.mul (.num 228) (.var 3))) (.var 2))
    (.mul (.num 30) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 30084) (.var 1)) (.add (.mul (.num 47952) (.var 2)) (.mul (.num 11094) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 27300) (.var 2)) (.mul (.num 11976) (.var 3)))
    (.var 2)) (.mul (.num 900) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    6672) (.var 2)) (.mul (.num 3714) (.var 3))) (.var 2)) (.mul (.num 624) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 600) (.var 2)) (.mul (.num 312) (.var
    3))) (.var 2)) (.mul (.num 84) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 71514) (.var 1)) (.add (.mul (.num
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
    33) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 1)))) (.var 0)) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2))) (.mul (.mul (.mul (.num 6) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.mul (.num 5) (.var 1)) (.var 0)) (.add (.mul (.add (.mul
    (.num 102) (.var 1)) (.add (.mul (.num 46) (.var 2)) (.mul (.num 30) (.var 3)))) (.var 1))
    (.mul (.mul (.num 10) (.var 3)) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.num 928) (.var 1)) (.add (.mul (.num 828) (.var 2)) (.mul (.num 452) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 177) (.var 2)) (.mul (.num 340) (.var 3))) (.var 2)) (.mul (.num
    25) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 62) (.var 3)) (.var 2)) (.mul
    (.num 10) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 4942) (.var 1)) (.add (.mul (.num 6540) (.var 2)) (.mul (.num 3092) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 2768) (.var 2)) (.mul (.num 3590) (.var 3))) (.var 2))
    (.mul (.num 335) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 374) (.var
    2)) (.mul (.num 1336) (.var 3))) (.var 2)) (.mul (.num 289) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 162) (.var 3)) (.var 2)) (.mul (.num 62) (.pow (.var
    3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 17094) (.var 1)) (.add (.mul (.num 29808) (.var 2)) (.mul (.num 12520) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 18693) (.var 2)) (.mul (.num 19516) (.var 3))) (.var
    2)) (.mul (.num 2008) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4984)
    (.var 2)) (.mul (.num 10912) (.var 3))) (.var 2)) (.mul (.num 2642) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 475) (.var 2)) (.mul (.num 2614) (.var 3)))
    (.var 2)) (.mul (.num 1138) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 230) (.var 3)) (.var 2)) (.mul (.num 162) (.pow (.var 3) 2))) (.pow (.var 2)
    3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    40344) (.var 1)) (.add (.mul (.num 86886) (.var 2)) (.mul (.num 33292) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 71682) (.var 2)) (.mul (.num 64862) (.var 3))) (.var 2)) (.mul
    (.num 6977) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 28220) (.var
    2)) (.mul (.num 48074) (.var 3))) (.var 2)) (.mul (.num 12268) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5270) (.var 2)) (.mul (.num 16964) (.var 3)))
    (.var 2)) (.mul (.num 7898) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 370) (.var 2)) (.mul (.num 2870) (.var 3))) (.var 2)) (.mul (.num
    2217) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 190)
    (.var 3)) (.var 2)) (.mul (.num 230) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 66345)
    (.var 1)) (.add (.mul (.num 169416) (.var 2)) (.mul (.num 61222) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 172326) (.var 2)) (.mul (.num 143062) (.var 3))) (.var 2)) (.mul (.num
    15558) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 88976) (.var 2))
    (.mul (.num 131766) (.var 3))) (.var 2)) (.mul (.num 34109) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24400) (.var 2)) (.mul (.num 60952) (.var 3)))
    (.var 2)) (.mul (.num 29028) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 3324) (.var 2)) (.mul (.num 14880) (.var 3))) (.var 2)) (.mul (.num
    12003) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    171) (.var 2)) (.mul (.num 1824) (.var 3))) (.var 2)) (.mul (.num 2416) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 90) (.var 3)) (.var 2)) (.mul
    (.num 190) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 76046) (.var 1)) (.add
    (.mul (.num 223902) (.var 2)) (.mul (.num 79248) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 269568) (.var 2)) (.mul (.num 216500) (.var 3))) (.var 2)) (.mul (.num 23500) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 171118) (.var 2)) (.mul (.num
    239010) (.var 3))) (.var 2)) (.mul (.num 61708) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 61274) (.var 2)) (.mul (.num 137104) (.var 3))) (.var 2)) (.mul
    (.num 65080) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 12178) (.var 2)) (.mul (.num 43606) (.var 3))) (.var 2)) (.mul (.num 35198) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1204) (.var 2))
    (.mul (.num 7566) (.var 3))) (.var 2)) (.mul (.num 10259) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 42) (.var 2)) (.mul (.num 652) (.var 3)))
    (.var 2)) (.mul (.num 1523) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 22) (.var 3)) (.var 2)) (.mul (.num 90) (.pow (.var 3) 2))) (.pow (.var 2)
    6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 59532) (.var 1)) (.add (.mul (.num 198044) (.var 2)) (.mul
    (.num 71140) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 274428) (.var 2)) (.mul (.num
    223208) (.var 3))) (.var 2)) (.mul (.num 24408) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 205616) (.var 2)) (.mul (.num 288696) (.var 3))) (.var 2)) (.mul (.num
    74966) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90154)
    (.var 2)) (.mul (.num 199200) (.var 3))) (.var 2)) (.mul (.num 94666) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 23268) (.var 2)) (.mul (.num
    78988) (.var 3))) (.var 2)) (.mul (.num 63360) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3335) (.var 2)) (.mul (.num 17968) (.var 3))) (.var
    2)) (.mul (.num 24034) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 224) (.var 2)) (.mul (.num 2184) (.var 3))) (.var 2)) (.mul (.num 5084)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4) (.var
    2)) (.mul (.num 118) (.var 3))) (.var 2)) (.mul (.num 542) (.pow (.var 3) 2))) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.mul (.num 2) (.var 3)) (.var 2)) (.mul (.num 22) (.pow
    (.var 3) 2))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30300) (.var 1))
    (.add (.mul (.num 112168) (.var 2)) (.mul (.num 42020) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 175300) (.var 2)) (.mul (.num 149296) (.var 3))) (.var 2)) (.mul (.num 16802)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 150746) (.var 2)) (.mul
    (.num 222316) (.var 3))) (.var 2)) (.mul (.num 59448) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 77708) (.var 2)) (.mul (.num 180484) (.var 3))) (.var 2))
    (.mul (.num 88174) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 24430) (.var 2)) (.mul (.num 86736) (.var 3))) (.var 2)) (.mul (.num 71138) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4518) (.var
    2)) (.mul (.num 24946) (.var 3))) (.var 2)) (.mul (.num 33717) (.pow (.var 3) 2))) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 438) (.var 2)) (.mul (.num 4086) (.var
    3))) (.var 2)) (.mul (.num 9390) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 16) (.var 2)) (.mul (.num 328) (.var 3))) (.var 2)) (.mul (.num 1432)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num 8) (.var 3))
    (.var 2)) (.mul (.num 99) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.mul (.num
    2) (.pow (.var 3) 2)) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    9018) (.var 1)) (.add (.mul (.num 36720) (.var 2)) (.mul (.num 14580) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 63750) (.var 2)) (.mul (.num 57960) (.var 3))) (.var 2)) (.mul
    (.num 6840) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 61660) (.var
    2)) (.mul (.num 97880) (.var 3))) (.var 2)) (.mul (.num 27540) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36345) (.var 2)) (.mul (.num 91696) (.var 3)))
    (.var 2)) (.mul (.num 47280) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 13368) (.var 2)) (.mul (.num 52062) (.var 3))) (.var 2)) (.mul (.num
    45154) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2992) (.var 2)) (.mul (.num 18290) (.var 3))) (.var 2)) (.mul (.num 26136) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 372) (.var 2)) (.mul (.num
    3850) (.var 3))) (.var 2)) (.mul (.num 9303) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 20) (.var 2)) (.mul (.num 436) (.var 3))) (.var 2)) (.mul
    (.num 1946) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num
    20) (.var 3)) (.var 2)) (.mul (.num 207) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1))
    (.mul (.mul (.num 7) (.pow (.var 3) 2)) (.pow (.var 2) 8))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 1188) (.var 1)) (.add (.mul (.num 5274) (.var 2)) (.mul (.num
    2232) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 10056) (.var 2)) (.mul (.num 9828)
    (.var 3))) (.var 2)) (.mul (.num 1224) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 10778) (.var 2)) (.mul (.num 18580) (.var 3))) (.var 2)) (.mul (.num 5544) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7122) (.var 2)) (.mul
    (.num 19748) (.var 3))) (.var 2)) (.mul (.num 10858) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2982) (.var 2)) (.mul (.num 12948) (.var 3)))
    (.var 2)) (.mul (.num 12048) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 776) (.var 2)) (.mul (.num 5380) (.var 3))) (.var 2)) (.mul (.num
    8310) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    116) (.var 2)) (.mul (.num 1386) (.var 3))) (.var 2)) (.mul (.num 3658) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 2)) (.mul (.num
    204) (.var 3))) (.var 2)) (.mul (.num 1006) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.mul (.num 14) (.var 3)) (.var 2)) (.mul (.num 160) (.pow (.var 3) 2)))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.mul (.num 12) (.pow (.var 3) 2)) (.pow (.var 2) 8)))
    (.pow (.var 1) 2)))) (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))))
    (.add (.var 1) (.var 2)))) (.mul (.mul (.num 24) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 30) (.var 1)) (.mul (.num 10) (.var 2))) (.var 0)) (.add (.mul
    (.add (.mul (.num 582) (.var 1)) (.add (.mul (.num 462) (.var 2)) (.mul (.num 60) (.var 3))))
    (.var 1)) (.mul (.add (.mul (.num 90) (.var 2)) (.mul (.num 20) (.var 3))) (.var 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.num 5106) (.var 1)) (.add (.mul (.num 6349) (.var
    2)) (.mul (.num 1000) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2583) (.var 2))
    (.mul (.num 748) (.var 3))) (.var 2)) (.mul (.num 30) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 350) (.var 2)) (.mul (.num 128) (.var 3))) (.var 2)) (.mul (.num
    10) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 26838) (.var 1)) (.add (.mul (.num 45194) (.var 2)) (.mul (.num 7636) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 27923) (.var 2)) (.mul (.num 8902) (.var 3))) (.var 2))
    (.mul (.num 450) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7577)
    (.var 2)) (.mul (.num 3234) (.var 3))) (.var 2)) (.mul (.num 334) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 770) (.var 2)) (.mul (.num 368) (.var 3)))
    (.var 2)) (.mul (.num 54) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 94298) (.var 1)) (.add (.mul (.num 199594)
    (.var 2)) (.mul (.num 35288) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 164793) (.var
    2)) (.mul (.num 56078) (.var 3))) (.var 2)) (.mul (.num 3090) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 66726) (.var 2)) (.mul (.num 31536) (.var 3))) (.var 2))
    (.mul (.num 3587) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    13319) (.var 2)) (.mul (.num 7466) (.var 3))) (.var 2)) (.mul (.num 1257) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1050) (.var 2)) (.mul (.num
    640) (.var 3))) (.var 2)) (.mul (.num 130) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 233725) (.var
    1)) (.add (.mul (.num 594225) (.var 2)) (.mul (.num 109844) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 612004) (.var 2)) (.mul (.num 221998) (.var 3))) (.var 2)) (.mul (.num
    12842) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 327878) (.var 2))
    (.mul (.num 170378) (.var 3))) (.var 2)) (.mul (.num 20514) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 96549) (.var 2)) (.mul (.num 62254) (.var 3)))
    (.var 2)) (.mul (.num 11377) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 14785) (.var 2)) (.mul (.num 10950) (.var 3))) (.var 2)) (.mul (.num
    2581) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    910) (.var 2)) (.mul (.num 760) (.var 3))) (.var 2)) (.mul (.num 206) (.pow (.var 3) 2)))
    (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 419685) (.var 1)) (.add (.mul (.num 1243100) (.var 2)) (.mul
    (.num 242142) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1529989) (.var 2)) (.mul
    (.num 596512) (.var 3))) (.var 2)) (.mul (.num 35964) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1015762) (.var 2)) (.mul (.num 584014) (.var 3))) (.var 2))
    (.mul (.num 74115) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 392679) (.var 2)) (.mul (.num 291630) (.var 3))) (.var 2)) (.mul (.num 57544) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 87978) (.var
    2)) (.mul (.num 78872) (.var 3))) (.var 2)) (.mul (.num 21106) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10437) (.var 2)) (.mul (.num 11086)
    (.var 3))) (.var 2)) (.mul (.num 3733) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 490) (.var 2)) (.mul (.num 640) (.var 3))) (.var 2)) (.mul (.num
    270) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 550865) (.var 1)) (.add
    (.mul (.num 1859548) (.var 2)) (.mul (.num 385580) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 2656054) (.var 2)) (.mul (.num 1124376) (.var 3))) (.var 2)) (.mul (.num 71139)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2096858) (.var 2)) (.mul
    (.num 1345276) (.var 3))) (.var 2)) (.mul (.num 181821) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 998588) (.var 2)) (.mul (.num 858138) (.var 3))) (.var
    2)) (.mul (.num 184917) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 291793) (.var 2)) (.mul (.num 316554) (.var 3))) (.var 2)) (.mul (.num
    96485) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    50305) (.var 2)) (.mul (.num 67894) (.var 3))) (.var 2)) (.mul (.num 27723) (.pow (.var 3)
    2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4523) (.var 2)) (.mul
    (.num 7846) (.var 3))) (.var 2)) (.mul (.num 4293) (.pow (.var 3) 2))) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 150) (.var 2)) (.mul (.num 368) (.var 3))) (.var
    2)) (.mul (.num 290) (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 525199) (.var 1)) (.add (.mul (.num 1987057) (.var 2)) (.mul (.num 442682) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 3224008) (.var 2)) (.mul (.num 1494482) (.var 3)))
    (.var 2)) (.mul (.num 100397) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2941645) (.var 2)) (.mul (.num 2118944) (.var 3))) (.var 2)) (.mul (.num 309103) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1657623) (.var 2))
    (.mul (.num 1651330) (.var 3))) (.var 2)) (.mul (.num 393437) (.pow (.var 3) 2))) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 593294) (.var 2)) (.mul (.num 775598)
    (.var 3))) (.var 2)) (.mul (.num 270528) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 132569) (.var 2)) (.mul (.num 225122) (.var 3))) (.var 2))
    (.mul (.num 109930) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 17210) (.var 2)) (.mul (.num 39244) (.var 3))) (.var 2)) (.mul (.num 26824) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1087) (.var
    2)) (.mul (.num 3662) (.var 3))) (.var 2)) (.mul (.num 3675) (.pow (.var 3) 2))) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 2)) (.mul (.num 128) (.var
    3))) (.var 2)) (.mul (.num 214) (.pow (.var 3) 2))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 355068) (.var 1)) (.add (.mul (.num 1485839) (.var 2)) (.mul (.num
    358240) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2693861) (.var 2)) (.mul (.num
    1375352) (.var 3))) (.var 2)) (.mul (.num 99162) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2781702) (.var 2)) (.mul (.num 2256616) (.var 3))) (.var 2)) (.mul
    (.num 358959) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1803487) (.var 2)) (.mul (.num 2079804) (.var 3))) (.var 2)) (.mul (.num 551849) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 759712) (.var 2))
    (.mul (.num 1187664) (.var 3))) (.var 2)) (.mul (.num 473867) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 206627) (.var 2)) (.mul (.num 435062)
    (.var 3))) (.var 2)) (.mul (.num 250643) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 34512) (.var 2)) (.mul (.num 101346) (.var 3))) (.var 2))
    (.mul (.num 84172) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3121) (.var 2)) (.mul (.num 14090) (.var 3))) (.var 2)) (.mul (.num 17491) (.pow
    (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 109) (.var 2))
    (.mul (.num 982) (.var 3))) (.var 2)) (.mul (.num 2007) (.pow (.var 3) 2))) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.mul (.num 20) (.var 3)) (.var 2)) (.mul (.num 90) (.pow
    (.var 3) 2))) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    161694) (.var 1)) (.add (.mul (.num 740282) (.var 2)) (.mul (.num 194176) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 1480111) (.var 2)) (.mul (.num 835242) (.var 3))) (.var 2))
    (.mul (.num 65163) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1701709)
    (.var 2)) (.mul (.num 1555908) (.var 3))) (.var 2)) (.mul (.num 271677) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1243155) (.var 2)) (.mul (.num
    1654102) (.var 3))) (.var 2)) (.mul (.num 490341) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 599282) (.var 2)) (.mul (.num 1110710) (.var
    3))) (.var 2)) (.mul (.num 505481) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 190552) (.var 2)) (.mul (.num 490198) (.var 3))) (.var 2)) (.mul
    (.num 329484) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 38409) (.var 2)) (.mul (.num 142286) (.var 3))) (.var 2)) (.mul (.num 140931) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4417) (.var
    2)) (.mul (.num 26036) (.var 3))) (.var 2)) (.mul (.num 39232) (.pow (.var 3) 2))) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 217) (.var 2)) (.mul (.num 2668) (.var
    3))) (.var 2)) (.mul (.num 6670) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 110) (.var 3)) (.var 2)) (.mul (.num 585) (.pow (.var 3) 2))) (.pow (.var 2)
    8))) (.var 1)) (.mul (.mul (.num 16) (.pow (.var 3) 2)) (.pow (.var 2) 9)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 44550) (.var 1)) (.add (.mul (.num 221094)
    (.var 2)) (.mul (.num 63324) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 482184) (.var
    2)) (.mul (.num 301338) (.var 3))) (.var 2)) (.mul (.num 25605) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 609143) (.var 2)) (.mul (.num 627364) (.var 3))) (.var 2))
    (.mul (.num 120843) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 493254) (.var 2)) (.mul (.num 754246) (.var 3))) (.var 2)) (.mul (.num 250392) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 266412) (.var
    2)) (.mul (.num 580652) (.var 3))) (.var 2)) (.mul (.num 301047) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 96226) (.var 2)) (.mul (.num
    298634) (.var 3))) (.var 2)) (.mul (.num 232981) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 22447) (.var 2)) (.mul (.num 103140) (.var 3))) (.var
    2)) (.mul (.num 120895) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 3069) (.var 2)) (.mul (.num 23140) (.var 3))) (.var 2)) (.mul (.num 42078)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 187)
    (.var 2)) (.mul (.num 3058) (.var 3))) (.var 2)) (.mul (.num 9413) (.pow (.var 3) 2))) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.mul (.num 180) (.var 3)) (.var 2)) (.mul (.num
    1207) (.pow (.var 3) 2))) (.pow (.var 2) 8))) (.var 1)) (.mul (.mul (.num 65) (.pow (.var 3)
    2)) (.pow (.var 2) 9))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 5616) (.var 1)) (.add (.mul (.num 29970) (.var 2)) (.mul (.num 9396) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 70632) (.var 2)) (.mul (.num 48924) (.var 3))) (.var 2))
    (.mul (.num 4554) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 96966)
    (.var 2)) (.mul (.num 112338) (.var 3))) (.var 2)) (.mul (.num 23985) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 85872) (.var 2)) (.mul (.num 150282)
    (.var 3))) (.var 2)) (.mul (.num 56070) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 51098) (.var 2)) (.mul (.num 130000) (.var 3))) (.var 2))
    (.mul (.num 76977) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 20510) (.var 2)) (.mul (.num 75944) (.var 3))) (.var 2)) (.mul (.num 68938) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5373) (.var
    2)) (.mul (.num 30162) (.var 3))) (.var 2)) (.mul (.num 42045) (.pow (.var 3) 2))) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 836) (.var 2)) (.mul (.num 7900) (.var
    3))) (.var 2)) (.mul (.num 17548) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 59) (.var 2)) (.mul (.num 1244) (.var 3))) (.var 2)) (.mul (.num
    4846) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.mul (.num 90)
    (.var 3)) (.var 2)) (.mul (.num 804) (.pow (.var 3) 2))) (.pow (.var 2) 8))) (.var 1)) (.mul
    (.mul (.num 61) (.pow (.var 3) 2)) (.pow (.var 2) 9))) (.pow (.var 1) 2)))) (.mul (.add (.var
    0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))))) (.mul (.mul (.mul (.num 6) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 75) (.var 1)) (.mul (.num 25) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.num 1235) (.var 1)) (.add (.mul (.num 955) (.var 2)) (.mul
    (.num 150) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 180) (.var 2)) (.mul (.num 50) (.var
    3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 9302) (.var 1)) (.add
    (.mul (.num 11213) (.var 2)) (.mul (.num 2060) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 4361) (.var 2)) (.mul (.num 1470) (.var 3))) (.var 2)) (.mul (.num 75) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 560) (.var 2)) (.mul (.num 230) (.var 3)))
    (.var 2)) (.mul (.num 25) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 42054) (.var 1)) (.add (.mul (.num 68505) (.var 2)) (.mul (.num
    13020) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 40343) (.var 2)) (.mul (.num 14168)
    (.var 3))) (.var 2)) (.mul (.num 905) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 10312) (.var 2)) (.mul (.num 4502) (.var 3))) (.var 2)) (.mul (.num 635) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 980) (.var 2)) (.mul
    (.num 394) (.var 3))) (.var 2)) (.mul (.num 90) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 126235) (.var 1)) (.add
    (.mul (.num 257924) (.var 2)) (.mul (.num 49580) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 202656) (.var 2)) (.mul (.num 72336) (.var 3))) (.var 2)) (.mul (.num 4990) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 77132) (.var 2)) (.mul (.num 34734)
    (.var 3))) (.var 2)) (.mul (.num 5284) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 14355) (.var 2)) (.mul (.num 6088) (.var 3))) (.var 2)) (.mul (.num
    1496) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1050) (.var 2)) (.mul (.num 270) (.var 3))) (.var 2)) (.mul (.num 82) (.pow (.var 3) 2)))
    (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 263308) (.var 1)) (.add (.mul (.num 644565) (.var 2)) (.mul (.num 125926)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 630619) (.var 2)) (.mul (.num 230864)
    (.var 3))) (.var 2)) (.mul (.num 16452) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 317031) (.var 2)) (.mul (.num 149438) (.var 3))) (.var 2)) (.mul (.num 23265)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 86843) (.var 2))
    (.mul (.num 40090) (.var 3))) (.var 2)) (.mul (.num 9920) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12314) (.var 2)) (.mul (.num 3700) (.var
    3))) (.var 2)) (.mul (.num 1085) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 700) (.var 2)) (.mul (.neg (.num 10)) (.var 3))) (.var 2)) (.mul (.neg
    (.num 62)) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 388462) (.var 1)) (.add (.mul
    (.num 1104588) (.var 2)) (.mul (.num 223182) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 1288565) (.var 2)) (.mul (.num 495708) (.var 3))) (.var 2)) (.mul (.num 36113) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 801154) (.var 2)) (.mul (.num
    409270) (.var 3))) (.var 2)) (.mul (.num 64783) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 287400) (.var 2)) (.mul (.num 153042) (.var 3))) (.var 2)) (.mul
    (.num 38313) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 59436) (.var 2)) (.mul (.num 24094) (.var 3))) (.var 2)) (.mul (.num 7393) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6491) (.var 2))
    (.mul (.num 686) (.var 3))) (.var 2)) (.mul (.neg (.num 290)) (.pow (.var 3) 2))) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 280) (.var 2)) (.mul (.neg (.num 110))
    (.var 3))) (.var 2)) (.mul (.neg (.num 140)) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 404515) (.var 1)) (.add (.mul (.num 1306733) (.var 2)) (.mul (.num 279074) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1764542) (.var 2)) (.mul (.num 733584) (.var
    3))) (.var 2)) (.mul (.num 55458) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1301577) (.var 2)) (.mul (.num 747698) (.var 3))) (.var 2)) (.mul (.num 123871) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 573656) (.var 2)) (.mul
    (.num 371058) (.var 3))) (.var 2)) (.mul (.num 99705) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 154188) (.var 2)) (.mul (.num 90902) (.var 3)))
    (.var 2)) (.mul (.num 33658) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 24365) (.var 2)) (.mul (.num 9096) (.var 3))) (.var 2)) (.mul (.num
    3503) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2000) (.var 2)) (.mul (.neg (.num 66)) (.var 3))) (.var 2)) (.mul (.neg (.num 313)) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 2))
    (.mul (.neg (.num 50)) (.var 3))) (.var 2)) (.mul (.neg (.num 50)) (.pow (.var 3) 2))) (.pow
    (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 290844) (.var 1)) (.add (.mul (.num 1049760)
    (.var 2)) (.mul (.num 241632) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1606092)
    (.var 2)) (.mul (.num 738304) (.var 3))) (.var 2)) (.mul (.num 59550) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1365964) (.var 2)) (.mul (.num 905720) (.var
    3))) (.var 2)) (.mul (.num 163632) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 710441) (.var 2)) (.mul (.num 572720) (.var 3))) (.var 2)) (.mul (.num
    175402) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    233080) (.var 2)) (.mul (.num 199376) (.var 3))) (.var 2)) (.mul (.num 93690) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 47528) (.var 2)) (.mul
    (.num 37780) (.var 3))) (.var 2)) (.mul (.num 26978) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5604) (.var 2)) (.mul (.num 3542) (.var 3)))
    (.var 2)) (.mul (.num 4522) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 318) (.var 2)) (.mul (.num 100) (.var 3))) (.var 2)) (.mul (.num 504)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5) (.var
    2)) (.mul (.neg (.num 6)) (.var 3))) (.var 2)) (.mul (.num 30) (.pow (.var 3) 2))) (.pow (.var
    2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 137286) (.var 1)) (.add (.mul (.num
    546608) (.var 2)) (.mul (.num 137380) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    932408) (.var 2)) (.mul (.num 480280) (.var 3))) (.var 2)) (.mul (.num 42312) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 895594) (.var 2)) (.mul (.num 693048)
    (.var 3))) (.var 2)) (.mul (.num 140370) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 534646) (.var 2)) (.mul (.num 537460) (.var 3))) (.var 2)) (.mul (.num
    192364) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    205791) (.var 2)) (.mul (.num 245470) (.var 3))) (.var 2)) (.mul (.num 143846) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50873) (.var 2)) (.mul
    (.num 68676) (.var 3))) (.var 2)) (.mul (.num 66274) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7683) (.var 2)) (.mul (.num 11990) (.var 3)))
    (.var 2)) (.mul (.num 20331) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 622) (.var 2)) (.mul (.num 1278) (.var 3))) (.var 2)) (.mul (.num
    4198) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    19) (.var 2)) (.mul (.num 66) (.var 3))) (.var 2)) (.mul (.num 503) (.pow (.var 3) 2))) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.mul (.num 22) (.pow (.var 3) 2)) (.pow (.var 2) 8)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 38232) (.var 1)) (.add (.mul (.num 166248)
    (.var 2)) (.mul (.num 45864) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 312300) (.var
    2)) (.mul (.num 180864) (.var 3))) (.var 2)) (.mul (.num 17568) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 333552) (.var 2)) (.mul (.num 300696) (.var 3))) (.var 2))
    (.mul (.num 68688) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 224006) (.var 2)) (.mul (.num 276608) (.var 3))) (.var 2)) (.mul (.num 115050) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 98448) (.var
    2)) (.mul (.num 156018) (.var 3))) (.var 2)) (.mul (.num 109968) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 28367) (.var 2)) (.mul (.num
    56884) (.var 3))) (.var 2)) (.mul (.num 67701) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 5154) (.var 2)) (.mul (.num 13814) (.var 3))) (.var
    2)) (.mul (.num 28519) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 530) (.var 2)) (.mul (.num 2218) (.var 3))) (.var 2)) (.mul (.num 8223)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 23)
    (.var 2)) (.mul (.num 210) (.var 3))) (.var 2)) (.mul (.num 1489) (.pow (.var 3) 2))) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.mul (.num 8) (.var 3)) (.var 2)) (.mul (.num 135)
    (.pow (.var 3) 2))) (.pow (.var 2) 8))) (.var 1)) (.mul (.mul (.num 3) (.pow (.var 3) 2))
    (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4752)
    (.var 1)) (.add (.mul (.num 22392) (.var 2)) (.mul (.num 6768) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 45882) (.var 2)) (.mul (.num 29736) (.var 3))) (.var 2)) (.mul (.num
    3168) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 53848) (.var 2))
    (.mul (.num 55964) (.var 3))) (.var 2)) (.mul (.num 14256) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40077) (.var 2)) (.mul (.num 59456) (.var 3)))
    (.var 2)) (.mul (.num 28104) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 19721) (.var 2)) (.mul (.num 39686) (.var 3))) (.var 2)) (.mul (.num
    32358) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    6448) (.var 2)) (.mul (.num 17588) (.var 3))) (.var 2)) (.mul (.num 24466) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1355) (.var 2)) (.mul (.num
    5322) (.var 3))) (.var 2)) (.mul (.num 12827) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 166) (.var 2)) (.mul (.num 1090) (.var 3))) (.var 2))
    (.mul (.num 4689) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 9) (.var 2)) (.mul (.num 138) (.var 3))) (.var 2)) (.mul (.num 1138) (.pow (.var
    3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.mul (.num 8) (.var 3)) (.var 2))
    (.mul (.num 162) (.pow (.var 3) 2))) (.pow (.var 2) 8))) (.var 1)) (.mul (.mul (.num 10) (.pow
    (.var 3) 2)) (.pow (.var 2) 9))) (.var 1)))) (.var 0)) (.mul (.add (.var 0) (.var 1)) (.add
    (.add (.var 0) (.var 1)) (.var 2)))))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.add (.add (.add (.add (.add (.mul (.mul (.num 48) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var
    3)))) (.var 0)) (.add (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 4) (.var 3))) (.var
    2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.num 4) (.var 2)) (.mul
    (.num 4) (.var 3))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3))
    (.var 2)) (.mul (.num 2) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num
    4) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.var 0))) (.pow (.var 0) 1)) (.mul (.mul (.num 72)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5) (.var 0)) (.add (.mul
    (.num 11) (.var 2)) (.mul (.num 10) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 7)
    (.var 2)) (.mul (.neg (.num 8)) (.var 3))) (.var 2)) (.mul (.num 5) (.pow (.var 3) 2)))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var
    2)) (.mul (.neg (.num 9)) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.mul (.num 3) (.pow
    (.var 3) 2)) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var
    2) 3)))) (.pow (.var 0) 2))) (.mul (.mul (.num 48) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 3) (.var 0)) (.add (.mul (.num 6) (.var 2)) (.mul (.num 6) (.var 3)))) (.var 0))
    (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.neg (.num 6)) (.var 3))) (.var 2)) (.mul
    (.num 3) (.pow (.var 3) 2)))) (.var 0)) (.mul (.mul (.neg (.num 6)) (.pow (.var 3) 2)) (.var
    2))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 2)))) (.pow (.var 0)
    3))) (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9)
    (.var 0)) (.add (.mul (.num 27) (.var 2)) (.mul (.num 18) (.var 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.num 27) (.var 2)) (.mul (.num 46) (.var 3))) (.var 2)) (.mul (.num 9) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 2)) (.mul (.num 38)
    (.var 3))) (.var 2)) (.mul (.num 19) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.mul (.num 10) (.var 3)) (.var 2)) (.mul (.num 11) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 0)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.pow (.var 0)
    2)))) (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 15) (.var 0)) (.add (.mul (.num 36) (.var 2)) (.mul (.num 30) (.var 3)))) (.var 0))
    (.add (.mul (.add (.mul (.num 27) (.var 2)) (.mul (.num 40) (.var 3))) (.var 2)) (.mul (.num
    15) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 2)) (.mul
    (.num 14) (.var 3))) (.var 2)) (.mul (.num 8) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul
    (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.neg (.num 5)) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.mul (.num 2) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.var 0)))
    (.pow (.var 0) 1))) (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 11) (.var 0)) (.add (.mul (.num 23) (.var 2)) (.mul (.num 22) (.var 3)))) (.var
    0)) (.add (.mul (.add (.mul (.num 13) (.var 2)) (.mul (.num 4) (.var 3))) (.var 2)) (.mul
    (.num 11) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 2))
    (.mul (.neg (.num 2)) (.var 3))) (.var 2)) (.mul (.neg (.num 9)) (.pow (.var 3) 2))) (.var
    2))) (.var 0)) (.mul (.mul (.neg (.num 3)) (.pow (.var 3) 2)) (.pow (.var 2) 2))) (.var 0))
    (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 3)))) (.pow (.var 0) 2))) (.mul (.num
    12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add (.mul (.num
    8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 10) (.var 2))
    (.mul (.num 12) (.var 3))) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul (.num 4) (.pow
    (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul
    (.num 2) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.pow (.var 0) 3)))) (.mul (.mul (.num 36)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 7) (.var 0)) (.add
    (.mul (.num 19) (.var 2)) (.mul (.num 14) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num
    17) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num 7) (.pow (.var 3) 2)))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 2)) (.mul (.num 6) (.var 3))) (.var 2)) (.mul
    (.num 1) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3))
    (.var 2)) (.mul (.neg (.num 3)) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul
    (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.var 0))) (.pow (.var 0) 1))) (.mul (.mul
    (.num 36) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 8) (.var 0)) (.add (.mul (.num
    17) (.var 2)) (.mul (.num 16) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 10) (.var
    2)) (.mul (.neg (.num 2)) (.var 3))) (.var 2)) (.mul (.num 8) (.pow (.var 3) 2)))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var 2))
    (.mul (.neg (.num 9)) (.pow (.var 3) 2))) (.var 2))) (.pow (.var 0) 2)) (.mul (.mul (.num 1)
    (.pow (.var 3) 2)) (.pow (.var 2) 3)))) (.pow (.var 0) 2))) (.mul (.mul (.num 12) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 3) (.var 0)) (.add (.mul (.num 6) (.var 2)) (.mul
    (.num 6) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.neg (.num
    6)) (.var 3))) (.var 2)) (.mul (.num 3) (.pow (.var 3) 2)))) (.var 0)) (.mul (.mul (.neg (.num
    6)) (.pow (.var 3) 2)) (.var 2))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow
    (.var 2) 2)))) (.pow (.var 0) 3))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.add (.add (.add (.add
    (.add (.add (.add (.add (.add (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 0))
    (.add (.mul (.num 84) (.var 2)) (.mul (.num 12) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul
    (.num 371) (.var 2)) (.mul (.num 128) (.var 3))) (.var 2)) (.mul (.num 6) (.pow (.var 3) 2))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 785) (.var 2)) (.mul (.num 362) (.var 3))) (.var
    2)) (.mul (.num 56) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 902) (.var 2)) (.mul (.num 520) (.var 3))) (.var 2)) (.mul (.num 125) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 572) (.var 2)) (.mul
    (.num 524) (.var 3))) (.var 2)) (.mul (.num 167) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 185) (.var 2)) (.mul (.num 384) (.var 3))) (.var 2))
    (.mul (.num 246) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 23) (.var 2)) (.mul (.num 158) (.var 3))) (.var 2)) (.mul (.num 256) (.pow (.var
    3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 24) (.var 3)) (.var 2))
    (.mul (.num 119) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 17) (.pow
    (.var 3) 2)) (.pow (.var 2) 7))) (.var 0))) (.pow (.var 0) 1)) (.mul (.mul (.num 18) (.add
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
    7)))) (.pow (.var 0) 2))) (.mul (.mul (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add
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
    (.pow (.var 2) 6)))) (.pow (.var 0) 3))) (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 54) (.var
    0)) (.add (.mul (.num 690) (.var 2)) (.mul (.num 108) (.var 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.num 2760) (.var 2)) (.mul (.num 1158) (.var 3))) (.var 2)) (.mul (.num 54) (.pow (.var
    3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5348) (.var 2)) (.mul (.num 3538) (.var
    3))) (.var 2)) (.mul (.num 522) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 5714) (.var 2)) (.mul (.num 5372) (.var 3))) (.var 2)) (.mul (.num 1363)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3434)
    (.var 2)) (.mul (.num 4896) (.var 3))) (.var 2)) (.mul (.num 1833) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1080) (.var 2)) (.mul (.num 2814)
    (.var 3))) (.var 2)) (.mul (.num 1720) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 136) (.var 2)) (.mul (.num 930) (.var 3))) (.var 2)) (.mul (.num
    1180) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 128)
    (.var 3)) (.var 2)) (.mul (.num 471) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.mul (.num 73) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 2)))) (.mul (.mul (.num
    6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 90) (.var 0)) (.add (.mul (.num 1062) (.var 2)) (.mul (.num 180)
    (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 3810) (.var 2)) (.mul (.num 1698) (.var
    3))) (.var 2)) (.mul (.num 90) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 6468) (.var 2)) (.mul (.num 4016) (.var 3))) (.var 2)) (.mul (.num 738) (.pow (.var 3)
    2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5898) (.var 2)) (.mul (.num
    4096) (.var 3))) (.var 2)) (.mul (.num 1271) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 2932) (.var 2)) (.mul (.num 2360) (.var 3))) (.var 2))
    (.mul (.num 718) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 734) (.var 2)) (.mul (.num 1090) (.var 3))) (.var 2)) (.mul (.num 406) (.pow (.var
    3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 70) (.var 2)) (.mul
    (.num 380) (.var 3))) (.var 2)) (.mul (.num 586) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var
    0)) (.mul (.add (.mul (.mul (.num 52) (.var 3)) (.var 2)) (.mul (.num 317) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 42) (.pow (.var 3) 2)) (.pow (.var 2) 7)))
    (.var 0))) (.pow (.var 0) 1))) (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 66) (.var 0)) (.add
    (.mul (.num 742) (.var 2)) (.mul (.num 132) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul
    (.num 2472) (.var 2)) (.mul (.num 1116) (.var 3))) (.var 2)) (.mul (.num 66) (.pow (.var 3)
    2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3770) (.var 2)) (.mul (.num 1976) (.var
    3))) (.var 2)) (.mul (.num 470) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 2936) (.var 2)) (.mul (.num 904) (.var 3))) (.var 2)) (.mul (.num 454) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1144) (.var
    2)) (.mul (.neg (.num 132)) (.var 3))) (.var 2)) (.mul (.neg (.num 320)) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 190) (.var 2)) (.mul (.neg
    (.num 48)) (.var 3))) (.var 2)) (.mul (.neg (.num 220)) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 2)) (.mul (.num 32) (.var 3)))
    (.var 2)) (.mul (.num 212) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 100) (.pow (.var 3) 2))) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.mul (.num 6) (.pow (.var 3) 2)) (.pow (.var 2) 7)))) (.pow (.var 0) 2)))
    (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.add (.mul (.num 170) (.var 2)) (.mul
    (.num 24) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 766) (.var 2)) (.mul (.num 284)
    (.var 3))) (.var 2)) (.mul (.num 12) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1662) (.var 2)) (.mul (.num 988) (.var 3))) (.var 2)) (.mul (.num 126) (.pow (.var
    3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1970) (.var 2)) (.mul (.num
    1718) (.var 3))) (.var 2)) (.mul (.num 362) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1300) (.var 2)) (.mul (.num 1768) (.var 3))) (.var 2))
    (.mul (.num 528) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 444) (.var 2)) (.mul (.num 1116) (.var 3))) (.var 2)) (.mul (.num 526) (.pow (.var
    3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 2)) (.mul
    (.num 396) (.var 3))) (.var 2)) (.mul (.num 388) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var
    0)) (.mul (.add (.mul (.mul (.num 58) (.var 3)) (.var 2)) (.mul (.num 172) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 30) (.pow (.var 3) 2)) (.pow (.var 2) 7)))
    (.pow (.var 0) 2)))) (.mul (.mul (.num 18) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 42) (.var 0)) (.add
    (.mul (.num 513) (.var 2)) (.mul (.num 84) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num
    1934) (.var 2)) (.mul (.num 806) (.var 3))) (.var 2)) (.mul (.num 42) (.pow (.var 3) 2))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3494) (.var 2)) (.mul (.num 1944) (.var 3)))
    (.var 2)) (.mul (.num 347) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 3440) (.var 2)) (.mul (.num 2088) (.var 3))) (.var 2)) (.mul (.num 588) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1879) (.var
    2)) (.mul (.num 1410) (.var 3))) (.var 2)) (.mul (.num 334) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 528) (.var 2)) (.mul (.num 824) (.var 3)))
    (.var 2)) (.mul (.num 296) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 58) (.var 2)) (.mul (.num 330) (.var 3))) (.var 2)) (.mul (.num 465) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 50) (.var 3)) (.var
    2)) (.mul (.num 258) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 38)
    (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 0))) (.pow (.var 0) 1))) (.mul (.mul (.num 18)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 48) (.var 0)) (.add (.mul (.num 541) (.var 2)) (.mul (.num 96) (.var
    3)))) (.var 0)) (.add (.mul (.add (.mul (.num 1809) (.var 2)) (.mul (.num 798) (.var 3)))
    (.var 2)) (.mul (.num 48) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    2777) (.var 2)) (.mul (.num 1322) (.var 3))) (.var 2)) (.mul (.num 335) (.pow (.var 3) 2)))
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2189) (.var 2)) (.mul (.num 430)
    (.var 3))) (.var 2)) (.mul (.num 283) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 874) (.var 2)) (.mul (.neg (.num 240)) (.var 3))) (.var 2))
    (.mul (.neg (.num 281)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 154) (.var 2)) (.mul (.neg (.num 60)) (.var 3))) (.var 2)) (.mul (.neg (.num
    115)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8)
    (.var 2)) (.mul (.num 26) (.var 3))) (.var 2)) (.mul (.num 212) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 88)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 6) (.pow (.var 3) 2))
    (.pow (.var 2) 7)))) (.pow (.var 0) 2))) (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add
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
    (.var 3) 2)) (.pow (.var 2) 6)))) (.pow (.var 0) 3))) (.mul (.num 3) (.mul (.add (.mul (.add
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
    (.var 0) 2)))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 156) (.var 0)) (.add (.mul
    (.num 1815) (.var 2)) (.mul (.num 312) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num
    6382) (.var 2)) (.mul (.num 2968) (.var 3))) (.var 2)) (.mul (.num 156) (.pow (.var 3) 2))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10540) (.var 2)) (.mul (.num 7204) (.var 3)))
    (.var 2)) (.mul (.num 1285) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 9238) (.var 2)) (.mul (.num 7424) (.var 3))) (.var 2)) (.mul (.num 2221) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4327) (.var
    2)) (.mul (.num 3898) (.var 3))) (.var 2)) (.mul (.num 946) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 988) (.var 2)) (.mul (.num 1362) (.var 3)))
    (.var 2)) (.mul (.neg (.num 174)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 82) (.var 2)) (.mul (.num 394) (.var 3))) (.var 2)) (.mul (.num
    191) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 54) (.var
    3)) (.var 2)) (.mul (.num 265) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul
    (.num 46) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 0))) (.pow (.var 0) 1))) (.mul (.num 3)
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
    (.pow (.var 0) 2)))) (.mul (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 45) (.var 0)) (.add
    (.mul (.num 531) (.var 2)) (.mul (.num 90) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num
    1908) (.var 2)) (.mul (.num 858) (.var 3))) (.var 2)) (.mul (.num 45) (.pow (.var 3) 2))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3246) (.var 2)) (.mul (.num 2074) (.var 3)))
    (.var 2)) (.mul (.num 369) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 2964) (.var 2)) (.mul (.num 2138) (.var 3))) (.var 2)) (.mul (.num 616) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1472) (.var
    2)) (.mul (.num 1180) (.var 3))) (.var 2)) (.mul (.num 224) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 367) (.var 2)) (.mul (.num 494) (.var 3)))
    (.var 2)) (.mul (.neg (.num 46)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 35) (.var 2)) (.mul (.num 172) (.var 3))) (.var 2)) (.mul (.num 122)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 26) (.var 3))
    (.var 2)) (.mul (.num 121) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num
    21) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 0))) (.pow (.var 0) 1))) (.mul (.mul (.num 3)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 33) (.var 0)) (.add (.mul (.num 371) (.var 2)) (.mul (.num 66) (.var
    3)))) (.var 0)) (.add (.mul (.add (.mul (.num 1236) (.var 2)) (.mul (.num 558) (.var 3)))
    (.var 2)) (.mul (.num 33) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    1885) (.var 2)) (.mul (.num 988) (.var 3))) (.var 2)) (.mul (.num 235) (.pow (.var 3) 2)))
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1468) (.var 2)) (.mul (.num 452)
    (.var 3))) (.var 2)) (.mul (.num 227) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 572) (.var 2)) (.mul (.neg (.num 66)) (.var 3))) (.var 2)) (.mul
    (.neg (.num 160)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 95) (.var 2)) (.mul (.neg (.num 24)) (.var 3))) (.var 2)) (.mul (.neg (.num 110))
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var
    2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num 106) (.pow (.var 3) 2))) (.pow (.var 2)
    5))) (.var 0)) (.mul (.add (.mul (.mul (.num 2) (.var 3)) (.var 2)) (.mul (.num 50) (.pow
    (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow
    (.var 2) 7)))) (.pow (.var 0) 2))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh2123.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh2123.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh2123.leading0 e g v + f * FullHigh2123.leading1 e g v +
        f^2 * FullHigh2123.remainder e f g v := by
  have hden : denominatorOne FullHigh2123.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh2123.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh2123.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 137438953472 15 10 2) lhs =
      value (Encoding4.vars 137438953472 15 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 137438953472 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 15 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 15 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullHigh2123.source e f g v =
      FullHigh2123.leading0 e g v + f * FullHigh2123.leading1 e g v +
        f^2 * FullHigh2123.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 137438953472 15 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh212Encoded3

namespace SPR.N6.Tail.CoreEndpoint.FullHigh212
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition3 (e f g v : ℝ) :
    FullHigh2123.source e f g v =
      FullHigh2123.leading0 e g v + f * FullHigh2123.leading1 e g v +
        f^2 * FullHigh2123.remainder e f g v :=
  FullHigh212Encoded3.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh212
