import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh113Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^1 layer of FullHigh113.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh113Encoded1
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 20) (.var 1)) (.var 0))
    (.add (.mul (.add (.mul (.num 288) (.var 1)) (.add (.mul (.num 124) (.var 2)) (.mul (.num 120)
    (.var 3)))) (.var 1)) (.mul (.mul (.num 40) (.var 3)) (.var 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.num 1729) (.var 1)) (.add (.mul (.num 1449) (.var 2)) (.mul (.num 1133)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 276) (.var 2)) (.mul (.num 805) (.var 3)))
    (.var 2)) (.mul (.num 100) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 128)
    (.var 3)) (.var 2)) (.mul (.num 40) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 5607) (.var 1)) (.add (.mul (.num 6855) (.var 2))
    (.mul (.num 4643) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2528) (.var 2)) (.mul
    (.num 4973) (.var 3))) (.var 2)) (.mul (.num 770) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 276) (.var 2)) (.mul (.num 1570) (.var 3))) (.var 2)) (.mul (.num 646)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 144) (.var 3)) (.var
    2)) (.mul (.num 128) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 10772) (.var 1)) (.add (.mul (.num 17063)
    (.var 2)) (.mul (.num 10392) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 9080) (.var
    2)) (.mul (.num 14658) (.var 3))) (.var 2)) (.mul (.num 2464) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1873) (.var 2)) (.mul (.num 6780) (.var 3))) (.var 2))
    (.mul (.num 3080) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    120) (.var 2)) (.mul (.num 1186) (.var 3))) (.var 2)) (.mul (.num 1192) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.mul (.num 64) (.var 3)) (.var 2)) (.mul
    (.num 144) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12617) (.var 1)) (.add (.mul (.num 24296)
    (.var 2)) (.mul (.num 13864) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 16591) (.var
    2)) (.mul (.num 24148) (.var 3))) (.var 2)) (.mul (.num 3986) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 4858) (.var 2)) (.mul (.num 14526) (.var 3))) (.var 2))
    (.mul (.num 6456) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    566) (.var 2)) (.mul (.num 3620) (.var 3))) (.var 2)) (.mul (.num 3586) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 2)) (.mul (.num
    346) (.var 3))) (.var 2)) (.mul (.num 812) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.mul (.num 8) (.var 3)) (.var 2)) (.mul (.num 64) (.pow (.var 3) 2))) (.pow
    (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 8837) (.var 1)) (.add (.mul (.num 19908) (.var 2)) (.mul (.num 11210)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 16420) (.var 2)) (.mul (.num 23352) (.var
    3))) (.var 2)) (.mul (.num 3614) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 6113) (.var 2)) (.mul (.num 17382) (.var 3))) (.var 2)) (.mul (.num 7064) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 996) (.var 2)) (.mul (.num 5642)
    (.var 3))) (.var 2)) (.mul (.num 4896) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 52) (.var 2)) (.mul (.num 759) (.var 3))) (.var 2)) (.mul (.num
    1482) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 29)
    (.var 3)) (.var 2)) (.mul (.num 192) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.mul (.num 8) (.pow (.var 3) 2)) (.pow (.var 2) 5)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3394) (.var 1)) (.add (.mul
    (.num 8731) (.var 2)) (.mul (.num 5088) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    8403) (.var 2)) (.mul (.num 12420) (.var 3))) (.var 2)) (.mul (.num 1920) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3764) (.var 2)) (.mul (.num 11136) (.var 3)))
    (.var 2)) (.mul (.num 4470) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 774) (.var 2)) (.mul (.num 4528) (.var 3))) (.var 2)) (.mul (.num 3762) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 56) (.var 2))
    (.mul (.num 811) (.var 3))) (.var 2)) (.mul (.num 1402) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.mul (.num 47) (.var 3)) (.var 2)) (.mul (.num 220) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.num 10) (.pow (.var 3) 2)) (.pow
    (.var 2) 5))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 548) (.var 1)) (.add (.mul (.num 1586) (.var 2)) (.mul
    (.num 980) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1746) (.var 2)) (.mul (.num
    2766) (.var 3))) (.var 2)) (.mul (.num 452) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 912) (.var 2)) (.mul (.num 2942) (.var 3))) (.var 2)) (.mul (.num 1260)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 224) (.var 2))
    (.mul (.num 1464) (.var 3))) (.var 2)) (.mul (.num 1320) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 2)) (.mul (.num 334) (.var 3)))
    (.var 2)) (.mul (.num 644) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.mul (.num 26) (.var 3)) (.var 2)) (.mul (.num 142) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.mul (.num 10) (.pow (.var 3) 2)) (.pow (.var 2) 5))) (.pow (.var 1) 2))))
    (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.add (.var
    1) (.var 2))) (.mul (.mul (.num 8) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 1)) (.mul (.num
    10) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 408) (.var 1)) (.add (.mul (.num 318)
    (.var 2)) (.mul (.num 60) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 60) (.var 2)) (.mul
    (.num 20) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 2391)
    (.var 1)) (.add (.mul (.num 2884) (.var 2)) (.mul (.num 700) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 1113) (.var 2)) (.mul (.num 532) (.var 3))) (.var 2)) (.mul (.num 30) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 140) (.var 2)) (.mul (.num 92)
    (.var 3))) (.var 2)) (.mul (.num 10) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 7974) (.var 1)) (.add (.mul (.num 12900) (.var 2))
    (.mul (.num 3526) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 7436) (.var 2)) (.mul
    (.num 4180) (.var 3))) (.var 2)) (.mul (.num 300) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1820) (.var 2)) (.mul (.num 1530) (.var 3))) (.var 2)) (.mul (.num
    226) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 160) (.var
    2)) (.mul (.num 176) (.var 3))) (.var 2)) (.mul (.num 36) (.pow (.var 3) 2))) (.pow (.var 2)
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 16766) (.var
    1)) (.add (.mul (.num 33817) (.var 2)) (.mul (.num 10058) (.var 3)))) (.var 1)) (.add (.mul
    (.add (.mul (.num 25674) (.var 2)) (.mul (.num 16210) (.var 3))) (.var 2)) (.mul (.num 1281)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9147) (.var 2)) (.mul (.num
    9090) (.var 3))) (.var 2)) (.mul (.num 1514) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1514) (.var 2)) (.mul (.num 2114) (.var 3))) (.var 2)) (.mul
    (.num 525) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 90) (.var 2)) (.mul (.num 176) (.var 3))) (.var 2)) (.mul (.num 52) (.pow (.var 3) 2)))
    (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 23146) (.var 1)) (.add (.mul (.num 55684) (.var 2)) (.mul (.num 17864) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 52048) (.var 2)) (.mul (.num 36458) (.var 3)))
    (.var 2)) (.mul (.num 3056) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    23992) (.var 2)) (.mul (.num 27550) (.var 3))) (.var 2)) (.mul (.num 4972) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5642) (.var 2)) (.mul (.num 9614)
    (.var 3))) (.var 2)) (.mul (.num 2710) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 610) (.var 2)) (.mul (.num 1550) (.var 3))) (.var 2)) (.mul
    (.num 574) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 20) (.var 2)) (.mul (.num 92) (.var 3))) (.var 2)) (.mul (.num 40) (.pow (.var 3) 2)))
    (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 21053) (.var 1)) (.add (.mul (.num 58636) (.var 2)) (.mul (.num
    20308) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 64701) (.var 2)) (.mul (.num 50236)
    (.var 3))) (.var 2)) (.mul (.num 4459) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 36191) (.var 2)) (.mul (.num 47758) (.var 3))) (.var 2)) (.mul (.num 9361) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10791) (.var 2)) (.mul
    (.num 22162) (.var 3))) (.var 2)) (.mul (.num 7093) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1609) (.var 2)) (.mul (.num 5226) (.var 3)))
    (.var 2)) (.mul (.num 2381) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 91) (.var 2)) (.mul (.num 574) (.var 3))) (.var 2)) (.mul (.num 348)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 20) (.var 3))
    (.var 2)) (.mul (.num 18) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12200)
    (.var 1)) (.add (.mul (.num 38496) (.var 2)) (.mul (.num 14454) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 48717) (.var 2)) (.mul (.num 42034) (.var 3))) (.var 2)) (.mul (.num
    4012) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 31747) (.var 2))
    (.mul (.num 48104) (.var 3))) (.var 2)) (.mul (.num 10448) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11275) (.var 2)) (.mul (.num 27734) (.var 3)))
    (.var 2)) (.mul (.num 10320) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2073) (.var 2)) (.mul (.num 8506) (.var 3))) (.var 2)) (.mul (.num
    4876) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    154) (.var 2)) (.mul (.num 1316) (.var 3))) (.var 2)) (.mul (.num 1138) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 80) (.var 3)) (.var 2)) (.mul
    (.num 120) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 4) (.pow (.var
    3) 2)) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4096) (.var 1)) (.add (.mul (.num 14401)
    (.var 2)) (.mul (.num 5890) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 20458) (.var
    2)) (.mul (.num 19676) (.var 3))) (.var 2)) (.mul (.num 2054) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 15094) (.var 2)) (.mul (.num 26258) (.var 3))) (.var 2))
    (.mul (.num 6437) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    6135) (.var 2)) (.mul (.num 17972) (.var 3))) (.var 2)) (.mul (.num 7912) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1309) (.var 2)) (.mul (.num
    6690) (.var 3))) (.var 2)) (.mul (.num 4872) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 115) (.var 2)) (.mul (.num 1292) (.var 3))) (.var 2))
    (.mul (.num 1585) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 102) (.var 3)) (.var 2)) (.mul (.num 259) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var
    1)) (.mul (.mul (.num 17) (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.var 1))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 608) (.var 1)) (.add (.mul (.num 2350) (.var 2)) (.mul (.num 1052) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 3685) (.var 2)) (.mul (.num 3962) (.var 3))) (.var 2))
    (.mul (.num 460) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3013)
    (.var 2)) (.mul (.num 6014) (.var 3))) (.var 2)) (.mul (.num 1692) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1363) (.var 2)) (.mul (.num 4724) (.var
    3))) (.var 2)) (.mul (.num 2493) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 325) (.var 2)) (.mul (.num 2036) (.var 3))) (.var 2)) (.mul (.num
    1887) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    32) (.var 2)) (.mul (.num 458) (.var 3))) (.var 2)) (.mul (.num 777) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 42) (.var 3)) (.var 2)) (.mul (.num 165)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 14) (.pow (.var 3) 2))
    (.pow (.var 2) 6))) (.pow (.var 1) 2)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add
    (.var 0) (.var 1)) (.var 2))) 4))) (.mul (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 75) (.var
    1)) (.mul (.num 25) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 800) (.var 1)) (.add
    (.mul (.num 595) (.var 2)) (.mul (.num 150) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 105)
    (.var 2)) (.mul (.num 50) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.num 3743) (.var 1)) (.add (.mul (.num 4277) (.var 2)) (.mul (.num 1310) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 1514) (.var 2)) (.mul (.num 930) (.var 3))) (.var 2)) (.mul
    (.num 75) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 170) (.var 2))
    (.mul (.num 140) (.var 3))) (.var 2)) (.mul (.num 25) (.pow (.var 3) 2))) (.var 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9933) (.var 1)) (.add (.mul (.num
    15169) (.var 2)) (.mul (.num 5010) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 7982)
    (.var 2)) (.mul (.num 5432) (.var 3))) (.var 2)) (.mul (.num 530) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 1726) (.var 2)) (.mul (.num 1658) (.var 3))) (.var 2))
    (.mul (.num 365) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    130) (.var 2)) (.mul (.num 136) (.var 3))) (.var 2)) (.mul (.num 45) (.pow (.var 3) 2))) (.pow
    (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    16254) (.var 1)) (.add (.mul (.num 30819) (.var 2)) (.mul (.num 10712) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 21282) (.var 2)) (.mul (.num 15572) (.var 3))) (.var 2)) (.mul
    (.num 1600) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6657) (.var 2))
    (.mul (.num 7176) (.var 3))) (.var 2)) (.mul (.num 1636) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 935) (.var 2)) (.mul (.num 1168) (.var 3))) (.var 2))
    (.mul (.num 374) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 45) (.var 2)) (.mul (.num 52) (.var 3))) (.var 2)) (.mul (.neg (.num 2)) (.pow
    (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 16735) (.var 1)) (.add (.mul (.num 37664) (.var 2)) (.mul (.num
    13822) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 31902) (.var 2)) (.mul (.num 25262)
    (.var 3))) (.var 2)) (.mul (.num 2589) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 12850) (.var 2)) (.mul (.num 15694) (.var 3))) (.var 2)) (.mul (.num 3454) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2541) (.var 2)) (.mul
    (.num 3894) (.var 3))) (.var 2)) (.mul (.num 1085) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 219) (.var 2)) (.mul (.num 346) (.var 3))) (.var
    2)) (.mul (.neg (.num 82)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 5) (.var 2)) (.mul (.num 6) (.var 3))) (.var 2)) (.mul (.neg (.num 42))
    (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 10564) (.var 1)) (.add (.mul (.num 27397)
    (.var 2)) (.mul (.num 10776) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 27316) (.var
    2)) (.mul (.num 23870) (.var 3))) (.var 2)) (.mul (.num 2466) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 13322) (.var 2)) (.mul (.num 18894) (.var 3))) (.var 2))
    (.mul (.num 4167) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    3327) (.var 2)) (.mul (.num 6490) (.var 3))) (.var 2)) (.mul (.num 1818) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 394) (.var 2)) (.mul (.num
    932) (.var 3))) (.var 2)) (.mul (.neg (.num 149)) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 2)) (.mul (.num 42) (.var 3))) (.var
    2)) (.mul (.neg (.num 199)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul
    (.neg (.num 23)) (.pow (.var 3) 2)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3732) (.var 1))
    (.add (.mul (.num 10930) (.var 2)) (.mul (.num 4676) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 12493) (.var 2)) (.mul (.num 12236) (.var 3))) (.var 2)) (.mul (.num 1362) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7112) (.var 2)) (.mul (.num
    11882) (.var 3))) (.var 2)) (.mul (.num 2964) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 2121) (.var 2)) (.mul (.num 5310) (.var 3))) (.var 2)) (.mul
    (.num 2003) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 311) (.var 2)) (.mul (.num 1096) (.var 3))) (.var 2)) (.mul (.num 270) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17) (.var 2)) (.mul
    (.num 90) (.var 3))) (.var 2)) (.mul (.neg (.num 169)) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 2) (.var 3)) (.var 2)) (.mul (.neg (.num 51)) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.neg (.num 3)) (.pow (.var 3) 2))
    (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 564) (.var 1)) (.add (.mul (.num 1840) (.var
    2)) (.mul (.num 860) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2370) (.var 2)) (.mul
    (.num 2608) (.var 3))) (.var 2)) (.mul (.num 324) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1539) (.var 2)) (.mul (.num 3024) (.var 3))) (.var 2)) (.mul (.num
    894) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 530) (.var
    2)) (.mul (.num 1682) (.var 3))) (.var 2)) (.mul (.num 882) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 91) (.var 2)) (.mul (.num 458) (.var 3)))
    (.var 2)) (.mul (.num 353) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 6) (.var 2)) (.mul (.num 54) (.var 3))) (.var 2)) (.mul (.num 30) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 2) (.var 3)) (.var
    2)) (.mul (.neg (.num 13)) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.neg
    (.num 2)) (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.var 1)))) (.var 0)) (.pow (.mul (.add (.var
    0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4))) (.mul (.mul (.mul (.num 2) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.mul (.num 12) (.var 1)) (.var 0)) (.add (.mul (.add (.mul (.num 270)
    (.var 1)) (.add (.mul (.num 120) (.var 2)) (.mul (.num 72) (.var 3)))) (.var 1)) (.mul (.mul
    (.num 24) (.var 3)) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 2346)
    (.var 1)) (.add (.mul (.num 2052) (.var 2)) (.mul (.num 1038) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 432) (.var 2)) (.mul (.num 738) (.var 3))) (.var 2)) (.mul (.num 60)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.mul (.num 120) (.var 3)) (.var 2)) (.mul
    (.num 24) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 11106) (.var 1)) (.add (.mul (.num 14355) (.var 2)) (.mul (.num 6474) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 5895) (.var 2)) (.mul (.num 7074) (.var 3))) (.var 2))
    (.mul (.num 726) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 768) (.var
    2)) (.mul (.num 2376) (.var 3))) (.var 2)) (.mul (.num 600) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 240) (.var 3)) (.var 2)) (.mul (.num 120) (.pow (.var
    3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 32729) (.var 1)) (.add (.mul (.num 55636) (.var 2)) (.mul (.num 23208) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 33509) (.var 2)) (.mul (.num 34278) (.var 3))) (.var
    2)) (.mul (.num 3756) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8424)
    (.var 2)) (.mul (.num 17478) (.var 3))) (.var 2)) (.mul (.num 4686) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 732) (.var 2)) (.mul (.num 3588) (.var 3)))
    (.var 2)) (.mul (.num 1872) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 240) (.var 3)) (.var 2)) (.mul (.num 240) (.pow (.var 3) 2))) (.pow (.var 2)
    3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    63823) (.var 1)) (.add (.mul (.num 133898) (.var 2)) (.mul (.num 53350) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 105352) (.var 2)) (.mul (.num 99572) (.var 3))) (.var 2)) (.mul
    (.num 10990) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38493) (.var
    2)) (.mul (.num 68164) (.var 3))) (.var 2)) (.mul (.num 18281) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6378) (.var 2)) (.mul (.num 21042) (.var 3)))
    (.var 2)) (.mul (.num 10831) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 360) (.var 2)) (.mul (.num 2820) (.var 3))) (.var 2)) (.mul (.num
    2712) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 120)
    (.var 3)) (.var 2)) (.mul (.num 240) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 84310)
    (.var 1)) (.add (.mul (.num 209730) (.var 2)) (.mul (.num 82426) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 202428) (.var 2)) (.mul (.num 186686) (.var 3))) (.var 2)) (.mul (.num
    20301) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 95842) (.var 2))
    (.mul (.num 161058) (.var 3))) (.var 2)) (.mul (.num 42208) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 22836) (.var 2)) (.mul (.num 66550) (.var 3)))
    (.var 2)) (.mul (.num 32927) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2424) (.var 2)) (.mul (.num 13358) (.var 3))) (.var 2)) (.mul (.num
    12004) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    72) (.var 2)) (.mul (.num 1122) (.var 3))) (.var 2)) (.mul (.num 2016) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 24) (.var 3)) (.var 2)) (.mul
    (.num 120) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 75052) (.var 1)) (.add
    (.mul (.num 215316) (.var 2)) (.mul (.num 86002) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 244960) (.var 2)) (.mul (.num 229900) (.var 3))) (.var 2)) (.mul (.num 24849) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 141133) (.var 2)) (.mul (.num
    240382) (.var 3))) (.var 2)) (.mul (.num 62301) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 43116) (.var 2)) (.mul (.num 125118) (.var 3))) (.var 2)) (.mul
    (.num 60441) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 6490) (.var 2)) (.mul (.num 33698) (.var 3))) (.var 2)) (.mul (.num 28761) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 357) (.var 2)) (.mul
    (.num 4284) (.var 3))) (.var 2)) (.mul (.num 6906) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.mul (.num 180) (.var 3)) (.var 2)) (.mul (.num 744) (.pow (.var
    3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 24) (.pow (.var 3) 2)) (.pow (.var 2)
    6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 43319) (.var 1)) (.add (.mul (.num 140388) (.var 2)) (.mul (.num
    58439) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 183047) (.var 2)) (.mul (.num
    180474) (.var 3))) (.var 2)) (.mul (.num 19893) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 123250) (.var 2)) (.mul (.num 222274) (.var 3))) (.var 2)) (.mul (.num
    58837) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45297)
    (.var 2)) (.mul (.num 139930) (.var 3))) (.var 2)) (.mul (.num 68900) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8600) (.var 2)) (.mul (.num
    47459) (.var 3))) (.var 2)) (.mul (.num 40847) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 653) (.var 2)) (.mul (.num 8150) (.var 3))) (.var 2))
    (.mul (.num 12839) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul
    (.num 538) (.var 3)) (.var 2)) (.mul (.num 1978) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var
    1)) (.mul (.mul (.num 108) (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.var 1))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 14697) (.var 1)) (.add (.mul (.num 52925) (.var 2)) (.mul (.num 23437) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 77411) (.var 2)) (.mul (.num 82142) (.var 3))) (.var
    2)) (.mul (.num 9510) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    59172) (.var 2)) (.mul (.num 116436) (.var 3))) (.var 2)) (.mul (.num 32638) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 25092) (.var 2)) (.mul (.num
    85892) (.var 3))) (.var 2)) (.mul (.num 45184) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 5626) (.var 2)) (.mul (.num 35009) (.var 3))) (.var
    2)) (.mul (.num 32447) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 523) (.var 2)) (.mul (.num 7512) (.var 3))) (.var 2)) (.mul (.num 12804)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 664) (.var 3))
    (.var 2)) (.mul (.num 2630) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul
    (.num 217) (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 2232) (.var 1)) (.add (.mul (.num 8808) (.var 2)) (.mul (.num 4224) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 14202) (.var 2)) (.mul (.num 16536) (.var 3))) (.var 2))
    (.mul (.num 2080) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12050)
    (.var 2)) (.mul (.num 26428) (.var 3))) (.var 2)) (.mul (.num 8168) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5721) (.var 2)) (.mul (.num 22224) (.var
    3))) (.var 2)) (.mul (.num 13129) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1452) (.var 2)) (.mul (.num 10470) (.var 3))) (.var 2)) (.mul
    (.num 11146) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 155) (.var 2)) (.mul (.num 2644) (.var 3))) (.var 2)) (.mul (.num 5327) (.pow (.var 3)
    2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 282) (.var 3)) (.var 2))
    (.mul (.num 1372) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 150)
    (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.pow (.var 1) 3)))) (.pow (.mul (.add (.var 0) (.var
    1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul
    (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num 20) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.num 932) (.var 1)) (.add (.mul (.num 732) (.var 2)) (.mul
    (.num 120) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 140) (.var 2)) (.mul (.num 40) (.var
    3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 6368) (.var 1)) (.add
    (.mul (.num 7782) (.var 2)) (.mul (.num 1600) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 3074) (.var 2)) (.mul (.num 1208) (.var 3))) (.var 2)) (.mul (.num 60) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 400) (.var 2)) (.mul (.num 208) (.var 3)))
    (.var 2)) (.mul (.num 20) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 25302) (.var 1)) (.add (.mul (.num 41652) (.var 2)) (.mul (.num
    9468) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 24772) (.var 2)) (.mul (.num 11164)
    (.var 3))) (.var 2)) (.mul (.num 700) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 6362) (.var 2)) (.mul (.num 4088) (.var 3))) (.var 2)) (.mul (.num 524) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 600) (.var 2)) (.mul
    (.num 472) (.var 3))) (.var 2)) (.mul (.num 84) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 64972) (.var 1)) (.add
    (.mul (.num 133840) (.var 2)) (.mul (.num 32688) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 105578) (.var 2)) (.mul (.num 52544) (.var 3))) (.var 2)) (.mul (.num 3606) (.pow (.var
    3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 39966) (.var 2)) (.mul (.num 29696)
    (.var 3))) (.var 2)) (.mul (.num 4238) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 7256) (.var 2)) (.mul (.num 7048) (.var 3))) (.var 2)) (.mul (.num
    1484) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    500) (.var 2)) (.mul (.num 608) (.var 3))) (.var 2)) (.mul (.num 152) (.pow (.var 3) 2)))
    (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 113017) (.var 1)) (.add (.mul (.num 278571) (.var 2)) (.mul (.num 72780)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 272283) (.var 2)) (.mul (.num 148632)
    (.var 3))) (.var 2)) (.mul (.num 10772) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 134887) (.var 2)) (.mul (.num 114092) (.var 3))) (.var 2)) (.mul (.num 17464)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 35494) (.var 2))
    (.mul (.num 41268) (.var 3))) (.var 2)) (.mul (.num 9686) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4616) (.var 2)) (.mul (.num 7100) (.var
    3))) (.var 2)) (.mul (.num 2162) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 220) (.var 2)) (.mul (.num 472) (.var 3))) (.var 2)) (.mul (.num 168)
    (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 135235) (.var 1)) (.add (.mul (.num 387021)
    (.var 2)) (.mul (.num 108614) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 449265)
    (.var 2)) (.mul (.num 269822) (.var 3))) (.var 2)) (.mul (.num 20584) (.pow (.var 3) 2))))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 273001) (.var 2)) (.mul (.num 262614) (.var 3)))
    (.var 2)) (.mul (.num 43136) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 92792) (.var 2)) (.mul (.num 128134) (.var 3))) (.var 2)) (.mul (.num 33460) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17204) (.var
    2)) (.mul (.num 33060) (.var 3))) (.var 2)) (.mul (.num 11980) (.pow (.var 3) 2))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1514) (.var 2)) (.mul (.num 4260) (.var
    3))) (.var 2)) (.mul (.num 2004) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 40) (.var 2)) (.mul (.num 208) (.var 3))) (.var 2)) (.mul (.num 132)
    (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 110179) (.var 1)) (.add (.mul
    (.num 358212) (.var 2)) (.mul (.num 108676) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 479687) (.var 2)) (.mul (.num 318588) (.var 3))) (.var 2)) (.mul (.num 25891) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 343195) (.var 2)) (.mul (.num
    376184) (.var 3))) (.var 2)) (.mul (.num 67365) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 141470) (.var 2)) (.mul (.num 231252) (.var 3))) (.var 2)) (.mul
    (.num 68315) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 33377) (.var 2)) (.mul (.num 79476) (.var 3))) (.var 2)) (.mul (.num 34551) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4102) (.var 2))
    (.mul (.num 15044) (.var 3))) (.var 2)) (.mul (.num 9234) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 194) (.var 2)) (.mul (.num 1388) (.var 3)))
    (.var 2)) (.mul (.num 1252) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 40) (.var 3)) (.var 2)) (.mul (.num 68) (.pow (.var 3) 2))) (.pow (.var 2)
    6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 58611) (.var 1)) (.add (.mul (.num 212897) (.var 2)) (.mul
    (.num 70238) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 321899) (.var 2)) (.mul (.num
    237430) (.var 3))) (.var 2)) (.mul (.num 20859) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 263513) (.var 2)) (.mul (.num 329498) (.var 3))) (.var 2)) (.mul (.num
    65347) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 126522)
    (.var 2)) (.mul (.num 243902) (.var 3))) (.var 2)) (.mul (.num 82641) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 35676) (.var 2)) (.mul (.num
    104264) (.var 3))) (.var 2)) (.mul (.num 54653) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 5462) (.var 2)) (.mul (.num 25760) (.var 3))) (.var
    2)) (.mul (.num 20394) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 348) (.var 2)) (.mul (.num 3392) (.var 3))) (.var 2)) (.mul (.num 4270)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 180) (.var 3))
    (.var 2)) (.mul (.num 452) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num
    16) (.pow (.var 3) 2)) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 18414)
    (.var 1)) (.add (.mul (.num 73731) (.var 2)) (.mul (.num 26586) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 123778) (.var 2)) (.mul (.num 101726) (.var 3))) (.var 2)) (.mul (.num
    9780) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 113472) (.var 2))
    (.mul (.num 161912) (.var 3))) (.var 2)) (.mul (.num 35961) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 61668) (.var 2)) (.mul (.num 139632) (.var 3)))
    (.var 2)) (.mul (.num 54660) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 19957) (.var 2)) (.mul (.num 70894) (.var 3))) (.var 2)) (.mul (.num
    44744) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    3574) (.var 2)) (.mul (.num 21322) (.var 3))) (.var 2)) (.mul (.num 21446) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 274) (.var 2)) (.mul (.num
    3540) (.var 3))) (.var 2)) (.mul (.num 6059) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.mul (.num 252) (.var 3)) (.var 2)) (.mul (.num 940) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 62) (.pow (.var 3) 2)) (.pow (.var 2) 7)))
    (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2598) (.var 1)) (.add (.mul (.num 11338) (.var
    2)) (.mul (.num 4490) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 20844) (.var 2))
    (.mul (.num 19146) (.var 3))) (.var 2)) (.mul (.num 2040) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 21036) (.var 2)) (.mul (.num 34260) (.var 3))) (.var 2)) (.mul
    (.num 8622) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    12662) (.var 2)) (.mul (.num 33540) (.var 3))) (.var 2)) (.mul (.num 15306) (.pow (.var 3)
    2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4570) (.var 2)) (.mul
    (.num 19538) (.var 3))) (.var 2)) (.mul (.num 14904) (.pow (.var 3) 2))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 920) (.var 2)) (.mul (.num 6818) (.var 3)))
    (.var 2)) (.mul (.num 8676) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 80) (.var 2)) (.mul (.num 1328) (.var 3))) (.var 2)) (.mul (.num 3046)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 112) (.var 3))
    (.var 2)) (.mul (.num 602) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num
    52) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 1) 2)))) (.var 0)) (.pow (.mul (.add
    (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.add (.mul (.mul (.num 20) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 2) (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 4) (.var 3))) (.var 2)) (.mul (.num 2) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 4) (.var 3))) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 2)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 4) (.pow (.var 3) 2))
    (.pow (.var 2) 3))) (.var 0))) (.pow (.var 0) 4)) (.mul (.mul (.num 4) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 5) (.var 0)) (.add (.mul (.num 11) (.var 2)) (.mul
    (.num 10) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 7) (.var 2)) (.mul (.neg (.num
    8)) (.var 3))) (.var 2)) (.mul (.num 5) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1) (.var 2)) (.mul (.neg (.num 2)) (.var 3))) (.var 2)) (.mul (.neg (.num 9))
    (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var
    2) 2))) (.var 0)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 3)))) (.pow (.var 0)
    5))) (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 2) (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num 2)
    (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num
    20) (.var 3))) (.var 2)) (.mul (.num 8) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.mul (.num 8) (.var 3)) (.var 2)) (.mul (.num 10) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 0)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.pow (.var 0) 3)))
    (.pow (.var 0) 2))) (.mul (.mul (.num 4) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 9) (.var 0)) (.add (.mul (.num 27) (.var 2)) (.mul (.num 18) (.var 3))))
    (.var 0)) (.add (.mul (.add (.mul (.num 27) (.var 2)) (.mul (.num 46) (.var 3))) (.var 2))
    (.mul (.num 9) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 2))
    (.mul (.num 38) (.var 3))) (.var 2)) (.mul (.num 19) (.pow (.var 3) 2))) (.var 2))) (.var 0))
    (.mul (.add (.mul (.mul (.num 10) (.var 3)) (.var 2)) (.mul (.num 11) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.pow (.var 0) 2))) (.pow (.var 0) 3))) (.mul (.mul (.num 48) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var
    3)))) (.var 0)) (.add (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 12) (.var 3))) (.var
    2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var
    2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul (.num 4) (.pow (.var 3) 2))) (.var 2))) (.var
    0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.pow (.var 0) 3))) (.pow (.var 0) 3))) (.mul (.mul (.num 12) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 7) (.var 0)) (.add (.mul (.num 19)
    (.var 2)) (.mul (.num 14) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 17) (.var 2))
    (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num 7) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 5) (.var 2)) (.mul (.num 6) (.var 3))) (.var 2)) (.mul (.num 1) (.pow
    (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul
    (.neg (.num 3)) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 3) (.pow
    (.var 3) 2)) (.pow (.var 2) 3))) (.var 0))) (.pow (.var 0) 4))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.add (.add (.mul (.mul
    (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.add (.mul (.num 172) (.var 2)) (.mul (.num
    24) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 786) (.var 2)) (.mul (.num 300) (.var
    3))) (.var 2)) (.mul (.num 12) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 1734) (.var 2)) (.mul (.num 1152) (.var 3))) (.var 2)) (.mul (.num 140) (.pow (.var 3)
    2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2098) (.var 2)) (.mul (.num
    2238) (.var 3))) (.var 2)) (.mul (.num 504) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1422) (.var 2)) (.mul (.num 2536) (.var 3))) (.var 2))
    (.mul (.num 972) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 504) (.var 2)) (.mul (.num 1704) (.var 3))) (.var 2)) (.mul (.num 1170) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 2))
    (.mul (.num 624) (.var 3))) (.var 2)) (.mul (.num 870) (.pow (.var 3) 2))) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.mul (.num 94) (.var 3)) (.var 2)) (.mul (.num 354) (.pow (.var
    3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 58) (.pow (.var 3) 2)) (.pow (.var 2)
    7))) (.pow (.var 0) 3))) (.pow (.var 0) 2)) (.mul (.mul (.num 1) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 54)
    (.var 0)) (.add (.mul (.num 690) (.var 2)) (.mul (.num 108) (.var 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.num 2760) (.var 2)) (.mul (.num 1158) (.var 3))) (.var 2)) (.mul (.num 54) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5348) (.var 2)) (.mul (.num 3538)
    (.var 3))) (.var 2)) (.mul (.num 522) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 5714) (.var 2)) (.mul (.num 5372) (.var 3))) (.var 2)) (.mul (.num
    1363) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    3434) (.var 2)) (.mul (.num 4896) (.var 3))) (.var 2)) (.mul (.num 1833) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1080) (.var 2)) (.mul (.num
    2814) (.var 3))) (.var 2)) (.mul (.num 1720) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 136) (.var 2)) (.mul (.num 930) (.var 3))) (.var 2)) (.mul
    (.num 1180) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num
    128) (.var 3)) (.var 2)) (.mul (.num 471) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0))
    (.mul (.mul (.num 73) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 2))) (.pow (.var
    0) 3))) (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
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
    3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 2))) (.pow (.var 0) 3))) (.mul (.mul (.num 3) (.mul
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
    (.var 0))) (.pow (.var 0) 4))) (.mul (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul
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
    (.mul (.num 34) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 4))) (.pow (.var 0) 1)))
    (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 66) (.var 0)) (.add (.mul (.num 871) (.var 2))
    (.mul (.num 132) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 3640) (.var 2)) (.mul
    (.num 1584) (.var 3))) (.var 2)) (.mul (.num 66) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 7406) (.var 2)) (.mul (.num 5821) (.var 3))) (.var 2)) (.mul (.num
    725) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8338) (.var
    2)) (.mul (.num 10439) (.var 3))) (.var 2)) (.mul (.num 2345) (.pow (.var 3) 2))) (.pow (.var
    2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5299) (.var 2)) (.mul (.num 10498) (.var
    3))) (.var 2)) (.mul (.num 3623) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1772) (.var 2)) (.mul (.num 6082) (.var 3))) (.var 2)) (.mul (.num
    3120) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    240) (.var 2)) (.mul (.num 1901) (.var 3))) (.var 2)) (.mul (.num 1583) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 247) (.var 3)) (.var 2)) (.mul
    (.num 461) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 61) (.pow (.var
    3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 3))) (.pow (.var 0) 2))) (.mul (.mul (.num 18) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 6) (.var 0)) (.add (.mul (.num 86) (.var 2)) (.mul (.num 12) (.var
    3)))) (.var 0)) (.add (.mul (.add (.mul (.num 395) (.var 2)) (.mul (.num 156) (.var 3))) (.var
    2)) (.mul (.num 6) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 877)
    (.var 2)) (.mul (.num 630) (.var 3))) (.var 2)) (.mul (.num 70) (.pow (.var 3) 2))) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1068) (.var 2)) (.mul (.num 1234) (.var 3)))
    (.var 2)) (.mul (.num 239) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 728) (.var 2)) (.mul (.num 1336) (.var 3))) (.var 2)) (.mul (.num 377) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 259) (.var 2))
    (.mul (.num 816) (.var 3))) (.var 2)) (.mul (.num 308) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 37) (.var 2)) (.mul (.num 262) (.var 3))) (.var
    2)) (.mul (.num 128) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul
    (.num 34) (.var 3)) (.var 2)) (.mul (.num 23) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var
    0)) (.mul (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 3))) (.pow
    (.var 0) 2))) (.mul (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 27) (.var 0)) (.add (.mul (.num
    345) (.var 2)) (.mul (.num 54) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 1385) (.var
    2)) (.mul (.num 594) (.var 3))) (.var 2)) (.mul (.num 27) (.pow (.var 3) 2)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 2694) (.var 2)) (.mul (.num 1884) (.var 3))) (.var 2)) (.mul
    (.num 261) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2885)
    (.var 2)) (.mul (.num 2860) (.var 3))) (.var 2)) (.mul (.num 649) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1733) (.var 2)) (.mul (.num 2472)
    (.var 3))) (.var 2)) (.mul (.num 680) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 543) (.var 2)) (.mul (.num 1312) (.var 3))) (.var 2)) (.mul
    (.num 383) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 68) (.var 2)) (.mul (.num 414) (.var 3))) (.var 2)) (.mul (.num 203) (.pow (.var 3) 2)))
    (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 58) (.var 3)) (.var 2)) (.mul
    (.num 109) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 24) (.pow (.var
    3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 2))) (.pow (.var 0) 3))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh1131.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh1131.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh1131.leading0 e g v + f * FullHigh1131.leading1 e g v +
        f^2 * FullHigh1131.remainder e f g v := by
  have hden : denominatorOne FullHigh1131.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh1131.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh1131.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 274877906944 18 10 2) lhs =
      value (Encoding4.vars 274877906944 18 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 274877906944 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 18 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 18 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullHigh1131.source e f g v =
      FullHigh1131.leading0 e g v + f * FullHigh1131.leading1 e g v +
        f^2 * FullHigh1131.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 274877906944 18 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh113Encoded1

namespace SPR.N6.Tail.CoreEndpoint.FullHigh113
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition1 (e f g v : ℝ) :
    FullHigh1131.source e f g v =
      FullHigh1131.leading0 e g v + f * FullHigh1131.leading1 e g v +
        f^2 * FullHigh1131.remainder e f g v :=
  FullHigh113Encoded1.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh113
