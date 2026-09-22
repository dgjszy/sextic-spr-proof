import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh212Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^5 layer of FullHigh212.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh212Encoded5
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.mul (.mul (.num 24) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 45) (.var 1)) (.mul
    (.num 15) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 723) (.var 1)) (.add (.mul (.num
    558) (.var 2)) (.mul (.num 90) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 105) (.var 2))
    (.mul (.num 30) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num
    5292) (.var 1)) (.add (.mul (.num 6360) (.var 2)) (.mul (.num 1200) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 2463) (.var 2)) (.mul (.num 852) (.var 3))) (.var 2)) (.mul
    (.num 45) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 315) (.var 2))
    (.mul (.num 132) (.var 3))) (.var 2)) (.mul (.num 15) (.pow (.var 3) 2))) (.var 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 23022) (.var 1)) (.add (.mul (.num
    37329) (.var 2)) (.mul (.num 7332) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 21855)
    (.var 2)) (.mul (.num 7920) (.var 3))) (.var 2)) (.mul (.num 525) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 5553) (.var 2)) (.mul (.num 2478) (.var 3))) (.var 2))
    (.mul (.num 366) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    525) (.var 2)) (.mul (.num 210) (.var 3))) (.var 2)) (.mul (.num 51) (.pow (.var 3) 2))) (.pow
    (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    65553) (.var 1)) (.add (.mul (.num 133026) (.var 2)) (.mul (.num 26628) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 103671) (.var 2)) (.mul (.num 38424) (.var 3))) (.var 2)) (.mul
    (.num 2784) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 39117) (.var
    2)) (.mul (.num 18078) (.var 3))) (.var 2)) (.mul (.num 2919) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7224) (.var 2)) (.mul (.num 3042) (.var 3)))
    (.var 2)) (.mul (.num 804) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 525) (.var 2)) (.mul (.num 120) (.var 3))) (.var 2)) (.mul (.num 39) (.pow
    (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 127248) (.var 1)) (.add (.mul (.num 308550) (.var 2)) (.mul
    (.num 63450) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 298509) (.var 2)) (.mul (.num
    114732) (.var 3))) (.var 2)) (.mul (.num 8664) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 148224) (.var 2)) (.mul (.num 72534) (.var 3))) (.var 2)) (.mul (.num
    12063) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40098)
    (.var 2)) (.mul (.num 18588) (.var 3))) (.var 2)) (.mul (.num 4953) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5616) (.var 2)) (.mul (.num 1506)
    (.var 3))) (.var 2)) (.mul (.num 459) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 315) (.var 2)) (.mul (.neg (.num 30)) (.var 3))) (.var 2)) (.mul
    (.neg (.num 45)) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 170202) (.var 1)) (.add
    (.mul (.num 477900) (.var 2)) (.mul (.num 103362) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 549255) (.var 2)) (.mul (.num 226314) (.var 3))) (.var 2)) (.mul (.num 17631)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 335769) (.var 2)) (.mul
    (.num 182730) (.var 3))) (.var 2)) (.mul (.num 31125) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 118248) (.var 2)) (.mul (.num 65784) (.var 3))) (.var 2))
    (.mul (.num 17784) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 23958) (.var 2)) (.mul (.num 9534) (.var 3))) (.var 2)) (.mul (.num 3054) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2547) (.var
    2)) (.mul (.num 108) (.var 3))) (.var 2)) (.mul (.neg (.num 261)) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 105) (.var 2)) (.mul (.neg (.num
    60)) (.var 3))) (.var 2)) (.mul (.neg (.num 75)) (.pow (.var 3) 2))) (.pow (.var 2) 5))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 154683) (.var 1)) (.add (.mul (.num 491631) (.var 2)) (.mul (.num 115158)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 651198) (.var 2)) (.mul (.num 298794)
    (.var 3))) (.var 2)) (.mul (.num 24606) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 469746) (.var 2)) (.mul (.num 299208) (.var 3))) (.var 2)) (.mul (.num 54576)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 201831) (.var 2))
    (.mul (.num 145080) (.var 3))) (.var 2)) (.mul (.num 43500) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 52644) (.var 2)) (.mul (.num 34578) (.var
    3))) (.var 2)) (.mul (.num 14550) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 7983) (.var 2)) (.mul (.num 3390) (.var 3))) (.var 2)) (.mul
    (.num 1581) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 609) (.var 2)) (.mul (.neg (.num 18)) (.var 3))) (.var 2)) (.mul (.neg (.num 84)) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 2))
    (.mul (.neg (.num 18)) (.var 3))) (.var 2)) (.mul (.neg (.num 15)) (.pow (.var 3) 2))) (.pow
    (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 91314) (.var 1)) (.add (.mul (.num 322881)
    (.var 2)) (.mul (.num 84108) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 482031) (.var
    2)) (.mul (.num 254058) (.var 3))) (.var 2)) (.mul (.num 23058) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 398334) (.var 2)) (.mul (.num 307578) (.var 3))) (.var 2))
    (.mul (.num 63774) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 200295) (.var 2)) (.mul (.num 192240) (.var 3))) (.var 2)) (.mul (.num 69486) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 63057) (.var
    2)) (.mul (.num 66972) (.var 3))) (.var 2)) (.mul (.num 38730) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12138) (.var 2)) (.mul (.num 13278)
    (.var 3))) (.var 2)) (.mul (.num 12390) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1293) (.var 2)) (.mul (.num 1476) (.var 3))) (.var 2))
    (.mul (.num 2541) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 57) (.var 2)) (.mul (.num 78) (.var 3))) (.var 2)) (.mul (.num 342) (.pow (.var 3)
    2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 21) (.pow (.var 3) 2)) (.pow (.var 2)
    7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 31590) (.var 1)) (.add (.mul (.num 122580)
    (.var 2)) (.mul (.num 36180) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 202743) (.var
    2)) (.mul (.num 125064) (.var 3))) (.var 2)) (.mul (.num 12960) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 187737) (.var 2)) (.mul (.num 178374) (.var 3))) (.var 2))
    (.mul (.num 43740) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 107268) (.var 2)) (.mul (.num 137262) (.var 3))) (.var 2)) (.mul (.num 61794) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 39084) (.var
    2)) (.mul (.num 63066) (.var 3))) (.var 2)) (.mul (.num 48744) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8940) (.var 2)) (.mul (.num 18324) (.var
    3))) (.var 2)) (.mul (.num 24396) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1179) (.var 2)) (.mul (.num 3480) (.var 3))) (.var 2)) (.mul
    (.num 8247) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 69) (.var 2)) (.mul (.num 414) (.var 3))) (.var 2)) (.mul (.num 1821) (.pow (.var 3)
    2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num 24) (.var 3)) (.var 2)) (.mul
    (.num 219) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.mul (.num 9) (.pow (.var
    3) 2)) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4860) (.var 1))
    (.add (.mul (.num 20466) (.var 2)) (.mul (.num 6912) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 36990) (.var 2)) (.mul (.num 26892) (.var 3))) (.var 2)) (.mul (.num 3240) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 37725) (.var 2)) (.mul (.num
    44076) (.var 3))) (.var 2)) (.mul (.num 12960) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 23955) (.var 2)) (.mul (.num 40074) (.var 3))) (.var 2)) (.mul
    (.num 22482) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 9804) (.var 2)) (.mul (.num 22524) (.var 3))) (.var 2)) (.mul (.num 22626) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2553) (.var 2))
    (.mul (.num 8298) (.var 3))) (.var 2)) (.mul (.num 14883) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 390) (.var 2)) (.mul (.num 2046) (.var 3)))
    (.var 2)) (.mul (.num 6705) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 27) (.var 2)) (.mul (.num 318) (.var 3))) (.var 2)) (.mul (.num 2022)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.mul (.num 24) (.var 3))
    (.var 2)) (.mul (.num 366) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.mul (.num
    30) (.pow (.var 3) 2)) (.pow (.var 2) 8))) (.var 1)))) (.mul (.add (.var 0) (.var 1)) (.add
    (.add (.var 0) (.var 1)) (.var 2)))) (.mul (.num 30) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 15) (.var 1)) (.mul (.num 5) (.var 2))) (.var 0)) (.add (.mul
    (.add (.mul (.num 276) (.var 1)) (.add (.mul (.num 215) (.var 2)) (.mul (.num 30) (.var 3))))
    (.var 1)) (.mul (.add (.mul (.num 41) (.var 2)) (.mul (.num 10) (.var 3))) (.var 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.num 2343) (.var 1)) (.add (.mul (.num 2853) (.var
    2)) (.mul (.num 462) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1128) (.var 2)) (.mul
    (.num 330) (.var 3))) (.var 2)) (.mul (.num 15) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 148) (.var 2)) (.mul (.num 52) (.var 3))) (.var 2)) (.mul (.num 5)
    (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 12075) (.var 1)) (.add (.mul (.num 19909) (.var 2)) (.mul (.num 3300) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 11952) (.var 2)) (.mul (.num 3588) (.var 3))) (.var 2))
    (.mul (.num 206) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3136)
    (.var 2)) (.mul (.num 1144) (.var 3))) (.var 2)) (.mul (.num 145) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 308) (.var 2)) (.mul (.num 100) (.var 3)))
    (.var 2)) (.mul (.num 21) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 41916) (.var 1)) (.add (.mul (.num 86839)
    (.var 2)) (.mul (.num 14370) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 69718) (.var
    2)) (.mul (.num 20894) (.var 3))) (.var 2)) (.mul (.num 1305) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 27335) (.var 2)) (.mul (.num 10010) (.var 3))) (.var 2))
    (.mul (.num 1386) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    5286) (.var 2)) (.mul (.num 1730) (.var 3))) (.var 2)) (.mul (.num 401) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 406) (.var 2)) (.mul (.num
    68) (.var 3))) (.var 2)) (.mul (.num 24) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 102951) (.var
    1)) (.add (.mul (.num 255964) (.var 2)) (.mul (.num 42390) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 256438) (.var 2)) (.mul (.num 77184) (.var 3))) (.var 2)) (.mul (.num 5016)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 133224) (.var 2)) (.mul
    (.num 49500) (.var 3))) (.var 2)) (.mul (.num 7102) (.pow (.var 3) 2))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 38103) (.var 2)) (.mul (.num 12892) (.var 3))) (.var 2))
    (.mul (.num 3080) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 5714) (.var 2)) (.mul (.num 1002) (.var 3))) (.var 2)) (.mul (.num 362) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 350) (.var 2))
    (.mul (.neg (.num 40)) (.var 3))) (.var 2)) (.mul (.neg (.num 16)) (.pow (.var 3) 2))) (.pow
    (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 183042) (.var 1)) (.add (.mul (.num 529423) (.var 2)) (.mul (.num
    89100) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 633680) (.var 2)) (.mul (.num
    195758) (.var 3))) (.var 2)) (.mul (.num 13066) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 408294) (.var 2)) (.mul (.num 158972) (.var 3))) (.var 2)) (.mul (.num
    23354) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 153592)
    (.var 2)) (.mul (.num 56952) (.var 3))) (.var 2)) (.mul (.num 13880) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33817) (.var 2)) (.mul (.num 7472)
    (.var 3))) (.var 2)) (.mul (.num 2734) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 4020) (.var 2)) (.mul (.neg (.num 290)) (.var 3))) (.var 2))
    (.mul (.neg (.num 100)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 196) (.var 2)) (.mul (.neg (.num 100)) (.var 3))) (.var 2)) (.mul (.neg
    (.num 54)) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 236922) (.var 1))
    (.add (.mul (.num 779502) (.var 2)) (.mul (.num 136140) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 1081863) (.var 2)) (.mul (.num 352668) (.var 3))) (.var 2)) (.mul (.num
    24384) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 829056) (.var 2))
    (.mul (.num 351614) (.var 3))) (.var 2)) (.mul (.num 53836) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 384634) (.var 2)) (.mul (.num 166256) (.var 3)))
    (.var 2)) (.mul (.num 42844) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 110716) (.var 2)) (.mul (.num 35040) (.var 3))) (.var 2)) (.mul (.num
    14126) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    19215) (.var 2)) (.mul (.num 1112) (.var 3))) (.var 2)) (.mul (.num 1248) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1808) (.var 2)) (.mul (.neg
    (.num 642)) (.var 3))) (.var 2)) (.mul (.neg (.num 216)) (.pow (.var 3) 2))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 68) (.var 2)) (.mul (.neg (.num 68)) (.var
    3))) (.var 2)) (.mul (.neg (.num 30)) (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 221208) (.var 1)) (.add (.mul (.num 813990) (.var 2)) (.mul (.num 150624)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1281780) (.var 2)) (.mul (.num 452364)
    (.var 3))) (.var 2)) (.mul (.num 33112) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1134927) (.var 2)) (.mul (.num 541544) (.var 3))) (.var 2)) (.mul (.num 89280)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 623420) (.var 2))
    (.mul (.num 327238) (.var 3))) (.var 2)) (.mul (.num 93642) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 220190) (.var 2)) (.mul (.num 102472) (.var
    3))) (.var 2)) (.mul (.num 48434) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 49708) (.var 2)) (.mul (.num 14024) (.var 3))) (.var 2)) (.mul
    (.num 13158) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 6797) (.var 2)) (.mul (.neg (.num 188)) (.var 3))) (.var 2)) (.mul (.num 2010) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 491) (.var 2))
    (.mul (.neg (.num 250)) (.var 3))) (.var 2)) (.mul (.num 220) (.pow (.var 3) 2))) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13) (.var 2)) (.mul (.neg (.num 20))
    (.var 3))) (.var 2)) (.mul (.num 16) (.pow (.var 3) 2))) (.pow (.var 2) 7)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 145080) (.var 1)) (.add (.mul (.num 589248) (.var 2)) (.mul
    (.num 117432) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1035516) (.var 2)) (.mul
    (.num 403008) (.var 3))) (.var 2)) (.mul (.num 31944) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1037188) (.var 2)) (.mul (.num 567776) (.var 3))) (.var 2))
    (.mul (.num 103644) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 655773) (.var 2)) (.mul (.num 424144) (.var 3))) (.var 2)) (.mul (.num 138840) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 273004) (.var
    2)) (.mul (.num 181178) (.var 3))) (.var 2)) (.mul (.num 101496) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 75262) (.var 2)) (.mul (.num
    44592) (.var 3))) (.var 2)) (.mul (.num 46048) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 13324) (.var 2)) (.mul (.num 6084) (.var 3))) (.var
    2)) (.mul (.num 14302) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1393) (.var 2)) (.mul (.num 404) (.var 3))) (.var 2)) (.mul (.num 3152)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.num 71) (.pow (.var 2)
    2)) (.mul (.num 430) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1) (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var 2)) (.mul (.num 24) (.pow
    (.var 3) 2))) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    63360) (.var 1)) (.add (.mul (.num 281064) (.var 2)) (.mul (.num 60936) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 544152) (.var 2)) (.mul (.num 235800) (.var 3))) (.var 2)) (.mul
    (.num 20532) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 606692) (.var
    2)) (.mul (.num 383536) (.var 3))) (.var 2)) (.mul (.num 78564) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 432474) (.var 2)) (.mul (.num 343016) (.var 3)))
    (.var 2)) (.mul (.num 129228) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 206389) (.var 2)) (.mul (.num 186332) (.var 3))) (.var 2)) (.mul (.num
    122256) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    66752) (.var 2)) (.mul (.num 64946) (.var 3))) (.var 2)) (.mul (.num 75762) (.pow (.var 3)
    2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14358) (.var 2)) (.mul
    (.num 15300) (.var 3))) (.var 2)) (.mul (.num 33050) (.pow (.var 3) 2))) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1933) (.var 2)) (.mul (.num 2560) (.var 3)))
    (.var 2)) (.mul (.num 10228) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 142) (.var 2)) (.mul (.num 290) (.var 3))) (.var 2)) (.mul (.num 2074)
    (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4) (.var
    2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num 229) (.pow (.var 3) 2))) (.pow (.var 2)
    8))) (.var 1)) (.mul (.mul (.num 9) (.pow (.var 3) 2)) (.pow (.var 2) 9)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 16524) (.var 1)) (.add (.mul (.num
    79380) (.var 2)) (.mul (.num 18792) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    167580) (.var 2)) (.mul (.num 81000) (.var 3))) (.var 2)) (.mul (.num 7776) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 205380) (.var 2)) (.mul (.num 149472)
    (.var 3))) (.var 2)) (.mul (.num 34344) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 162486) (.var 2)) (.mul (.num 155640) (.var 3))) (.var 2)) (.mul (.num
    66912) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    87098) (.var 2)) (.mul (.num 102124) (.var 3))) (.var 2)) (.mul (.num 77076) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 32145) (.var 2)) (.mul
    (.num 45164) (.var 3))) (.var 2)) (.mul (.num 59448) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8068) (.var 2)) (.mul (.num 14234) (.var 3)))
    (.var 2)) (.mul (.num 32612) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1311) (.var 2)) (.mul (.num 3304) (.var 3))) (.var 2)) (.mul (.num
    12820) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    123) (.var 2)) (.mul (.num 540) (.var 3))) (.var 2)) (.mul (.num 3446) (.pow (.var 3) 2)))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 2)) (.mul (.num 52)
    (.var 3))) (.var 2)) (.mul (.num 570) (.pow (.var 3) 2))) (.pow (.var 2) 8))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 2) (.var 3)) (.var 2)) (.mul (.num 47) (.pow (.var 3) 2))) (.pow (.var
    2) 9))) (.var 1)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 10)))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1944) (.var 1)) (.add (.mul
    (.num 10044) (.var 2)) (.mul (.num 2592) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    22932) (.var 2)) (.mul (.num 12312) (.var 3))) (.var 2)) (.mul (.num 1296) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30588) (.var 2)) (.mul (.num 25392) (.var
    3))) (.var 2)) (.mul (.num 6480) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 26532) (.var 2)) (.mul (.num 30096) (.var 3))) (.var 2)) (.mul (.num 14532)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15730)
    (.var 2)) (.mul (.num 23000) (.var 3))) (.var 2)) (.mul (.num 19572) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6492) (.var 2)) (.mul (.num 12148)
    (.var 3))) (.var 2)) (.mul (.num 17852) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1849) (.var 2)) (.mul (.num 4664) (.var 3))) (.var 2))
    (.mul (.num 11664) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 348) (.var 2)) (.mul (.num 1330) (.var 3))) (.var 2)) (.mul (.num 5522) (.pow
    (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 39) (.var 2))
    (.mul (.num 270) (.var 3))) (.var 2)) (.mul (.num 1842) (.pow (.var 3) 2))) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 2)) (.mul (.num 34) (.var 3)))
    (.var 2)) (.mul (.num 405) (.pow (.var 3) 2))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul
    (.mul (.num 2) (.var 3)) (.var 2)) (.mul (.num 52) (.pow (.var 3) 2))) (.pow (.var 2) 9)))
    (.var 1)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 10))) (.var 1)))))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.add (.mul (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5)
    (.var 0)) (.add (.mul (.num 11) (.var 2)) (.mul (.num 10) (.var 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.num 7) (.var 2)) (.mul (.neg (.num 8)) (.var 3))) (.var 2)) (.mul (.num 5) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.neg (.num
    2)) (.var 3))) (.var 2)) (.mul (.neg (.num 9)) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul
    (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 1) (.pow
    (.var 3) 2)) (.pow (.var 2) 3)))) (.mul (.mul (.num 48) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 3) (.var 0)) (.add (.mul (.num 6) (.var 2)) (.mul (.num 6) (.var 3)))) (.var
    0)) (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.neg (.num 6)) (.var 3))) (.var 2))
    (.mul (.num 3) (.pow (.var 3) 2)))) (.var 0)) (.mul (.mul (.neg (.num 6)) (.pow (.var 3) 2))
    (.var 2))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 2)))) (.pow (.var
    0) 1))) (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11)
    (.var 0)) (.add (.mul (.num 23) (.var 2)) (.mul (.num 22) (.var 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.num 13) (.var 2)) (.mul (.num 4) (.var 3))) (.var 2)) (.mul (.num 11) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.neg (.num
    2)) (.var 3))) (.var 2)) (.mul (.neg (.num 9)) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul
    (.mul (.neg (.num 3)) (.pow (.var 3) 2)) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 1)
    (.pow (.var 3) 2)) (.pow (.var 2) 3))))) (.mul (.mul (.num 12) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 3) (.var 0)) (.add (.mul (.num 6) (.var 2)) (.mul (.num 6) (.var 3))))
    (.var 0)) (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.neg (.num 6)) (.var 3))) (.var
    2)) (.mul (.num 3) (.pow (.var 3) 2)))) (.var 0)) (.mul (.mul (.neg (.num 6)) (.pow (.var 3)
    2)) (.var 2))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 2)))) (.pow
    (.var 0) 1))) (.mul (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 8) (.var
    0)) (.add (.mul (.num 17) (.var 2)) (.mul (.num 16) (.var 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.num 10) (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var 2)) (.mul (.num 8) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.neg (.num
    2)) (.var 3))) (.var 2)) (.mul (.neg (.num 9)) (.pow (.var 3) 2))) (.var 2))) (.pow (.var 0)
    2)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 3))))) (.mul (.mul (.num 36) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3) (.var 0)) (.add (.mul (.num 6) (.var 2))
    (.mul (.num 6) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.neg
    (.num 6)) (.var 3))) (.var 2)) (.mul (.num 3) (.pow (.var 3) 2)))) (.var 0)) (.mul (.mul (.neg
    (.num 6)) (.pow (.var 3) 2)) (.var 2))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2))
    (.pow (.var 2) 2)))) (.pow (.var 0) 1))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.add (.add (.add (.add
    (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 15) (.var 0)) (.add (.mul (.num 170) (.var 2)) (.mul (.num
    30) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 573) (.var 2)) (.mul (.num 240) (.var
    3))) (.var 2)) (.mul (.num 15) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 892) (.var 2)) (.mul (.num 334) (.var 3))) (.var 2)) (.mul (.num 100) (.pow (.var 3)
    2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 721) (.var 2)) (.mul (.neg (.num
    22)) (.var 3))) (.var 2)) (.mul (.num 56) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 302) (.var 2)) (.mul (.neg (.num 174)) (.var 3))) (.var
    2)) (.mul (.neg (.num 121)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 59) (.var 2)) (.mul (.neg (.num 36)) (.var 3))) (.var 2)) (.mul (.neg
    (.num 5)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 4) (.var 2)) (.mul (.num 10) (.var 3))) (.var 2)) (.mul (.num 106) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 2) (.var 3)) (.var 2)) (.mul (.num
    38) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2))
    (.pow (.var 2) 7)))) (.mul (.mul (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9) (.var 0)) (.add (.mul (.num 99) (.var
    2)) (.mul (.num 18) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 318) (.var 2)) (.mul
    (.num 138) (.var 3))) (.var 2)) (.mul (.num 9) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 456) (.var 2)) (.mul (.num 168) (.var 3))) (.var 2)) (.mul (.num 57)
    (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 321) (.var 2))
    (.mul (.neg (.num 54)) (.var 3))) (.var 2)) (.mul (.num 21) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 105) (.var 2)) (.mul (.neg (.num 84)) (.var
    3))) (.var 2)) (.mul (.neg (.num 78)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.num 12) (.pow (.var 2) 2)) (.mul (.num 21) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.mul (.num 6) (.var 3)) (.var 2)) (.mul (.num 57) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.mul (.num 9) (.pow (.var 3) 2)) (.pow
    (.var 2) 6)))) (.pow (.var 0) 1))) (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add
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
    (.var 0)) (.mul (.mul (.num 6) (.pow (.var 3) 2)) (.pow (.var 2) 7))))) (.mul (.mul (.num 6)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 18) (.var 0)) (.add (.mul (.num 198) (.var 2)) (.mul (.num 36) (.var 3)))) (.var
    0)) (.add (.mul (.add (.mul (.num 636) (.var 2)) (.mul (.num 276) (.var 3))) (.var 2)) (.mul
    (.num 18) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 912) (.var 2))
    (.mul (.num 336) (.var 3))) (.var 2)) (.mul (.num 114) (.pow (.var 3) 2))) (.var 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 642) (.var 2)) (.mul (.neg (.num 108)) (.var 3)))
    (.var 2)) (.mul (.num 42) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 210) (.var 2)) (.mul (.neg (.num 168)) (.var 3))) (.var 2)) (.mul (.neg
    (.num 156)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.num 24)
    (.pow (.var 2) 2)) (.mul (.num 42) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.mul (.num 12) (.var 3)) (.var 2)) (.mul (.num 114) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.mul (.num 18) (.pow (.var 3) 2)) (.pow (.var 2) 6)))) (.pow
    (.var 0) 1))) (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 48) (.var 0)) (.add (.mul (.num 541) (.var 2))
    (.mul (.num 96) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 1809) (.var 2)) (.mul
    (.num 798) (.var 3))) (.var 2)) (.mul (.num 48) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 2777) (.var 2)) (.mul (.num 1322) (.var 3))) (.var 2)) (.mul (.num
    335) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2189) (.var
    2)) (.mul (.num 430) (.var 3))) (.var 2)) (.mul (.num 283) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 874) (.var 2)) (.mul (.neg (.num 240))
    (.var 3))) (.var 2)) (.mul (.neg (.num 281)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 154) (.var 2)) (.mul (.neg (.num 60)) (.var 3))) (.var 2))
    (.mul (.neg (.num 115)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 8) (.var 2)) (.mul (.num 26) (.var 3))) (.var 2)) (.mul (.num 212) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var
    2)) (.mul (.num 88) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 6)
    (.pow (.var 3) 2)) (.pow (.var 2) 7))))) (.mul (.mul (.num 18) (.add (.mul (.add (.mul (.add
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
    (.var 3) 2)) (.pow (.var 2) 6)))) (.pow (.var 0) 1))) (.mul (.num 3) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 84)
    (.var 0)) (.add (.mul (.num 943) (.var 2)) (.mul (.num 168) (.var 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.num 3135) (.var 2)) (.mul (.num 1434) (.var 3))) (.var 2)) (.mul (.num 84) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4763) (.var 2)) (.mul (.num 2630)
    (.var 3))) (.var 2)) (.mul (.num 605) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 3683) (.var 2)) (.mul (.num 1378) (.var 3))) (.var 2)) (.mul (.num
    625) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    1414) (.var 2)) (.mul (.neg (.num 24)) (.var 3))) (.var 2)) (.mul (.neg (.num 359)) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 226) (.var 2))
    (.mul (.neg (.num 36)) (.var 3))) (.var 2)) (.mul (.neg (.num 325)) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 2)) (.mul (.num 38) (.var
    3))) (.var 2)) (.mul (.num 212) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add
    (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 112) (.pow (.var 3) 2))) (.pow (.var 2)
    6))) (.var 0)) (.mul (.mul (.num 6) (.pow (.var 3) 2)) (.pow (.var 2) 7))))) (.mul (.mul (.num
    3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 18) (.var 0)) (.add (.mul (.num 198) (.var 2)) (.mul (.num 36) (.var 3)))) (.var
    0)) (.add (.mul (.add (.mul (.num 636) (.var 2)) (.mul (.num 276) (.var 3))) (.var 2)) (.mul
    (.num 18) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 912) (.var 2))
    (.mul (.num 336) (.var 3))) (.var 2)) (.mul (.num 114) (.pow (.var 3) 2))) (.var 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 642) (.var 2)) (.mul (.neg (.num 108)) (.var 3)))
    (.var 2)) (.mul (.num 42) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 210) (.var 2)) (.mul (.neg (.num 168)) (.var 3))) (.var 2)) (.mul (.neg
    (.num 156)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.num 24)
    (.pow (.var 2) 2)) (.mul (.num 42) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.mul (.num 12) (.var 3)) (.var 2)) (.mul (.num 114) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.mul (.num 18) (.pow (.var 3) 2)) (.pow (.var 2) 6)))) (.pow
    (.var 0) 1))) (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
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
    3) 2)) (.pow (.var 2) 7))))) (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add
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
    (.pow (.var 2) 6)))) (.pow (.var 0) 1))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh2125.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh2125.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh2125.leading0 e g v + f * FullHigh2125.leading1 e g v +
        f^2 * FullHigh2125.remainder e f g v := by
  have hden : denominatorOne FullHigh2125.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh2125.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh2125.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 17179869184 13 10 2) lhs =
      value (Encoding4.vars 17179869184 13 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 17179869184 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 13 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 13 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullHigh2125.source e f g v =
      FullHigh2125.leading0 e g v + f * FullHigh2125.leading1 e g v +
        f^2 * FullHigh2125.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 17179869184 13 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh212Encoded5

namespace SPR.N6.Tail.CoreEndpoint.FullHigh212
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition5 (e f g v : ℝ) :
    FullHigh2125.source e f g v =
      FullHigh2125.leading0 e g v + f * FullHigh2125.leading1 e g v +
        f^2 * FullHigh2125.remainder e f g v :=
  FullHigh212Encoded5.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh212
