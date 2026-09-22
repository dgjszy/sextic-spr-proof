import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow005Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^5 layer of FullLow005.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow005Encoded5
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 45) (.var 1)) (.mul (.num 15) (.var 2))) (.var 0)) (.add (.mul
    (.add (.mul (.num 300) (.var 1)) (.mul (.num 204) (.var 2))) (.var 1)) (.mul (.num 24) (.pow
    (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 840) (.var 1)) (.mul (.num
    840) (.var 2))) (.var 1)) (.mul (.num 174) (.pow (.var 2) 2))) (.var 1)) (.mul (.neg (.num 6))
    (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1167)
    (.var 1)) (.mul (.num 1476) (.var 2))) (.var 1)) (.mul (.num 363) (.pow (.var 2) 2))) (.var
    1)) (.mul (.neg (.num 90)) (.pow (.var 2) 3))) (.var 1)) (.mul (.neg (.num 24)) (.pow (.var 2)
    4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 906) (.var
    1)) (.mul (.num 1476) (.var 2))) (.var 1)) (.mul (.num 546) (.pow (.var 2) 2))) (.var 1))
    (.mul (.neg (.num 132)) (.pow (.var 2) 3))) (.var 1)) (.mul (.neg (.num 87)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.neg (.num 9)) (.pow (.var 2) 5)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 348) (.var 1)) (.mul (.num 786) (.var 2)))
    (.var 1)) (.mul (.num 573) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 126) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.neg (.num 15)) (.pow (.var 2) 4))) (.var 1)) (.mul (.neg (.num 6)) (.pow
    (.var 2) 5))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1))
    (.var 2))) 4)) (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 330) (.var 1)) (.mul (.num 110) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num 2870)) (.var 1)) (.mul
    (.add (.mul (.num 60) (.var 3)) (.num 2002)) (.var 2))) (.var 1)) (.mul (.num 252) (.pow (.var
    2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 456) (.var 3)) (.num
    10977)) (.var 1)) (.mul (.add (.mul (.num 552) (.var 3)) (.num 11442)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.num 36) (.var 3)) (.num 2771)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 60)) (.var 3)) (.num 6)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1632) (.var 3)) (.num 23481)) (.var 1)) (.mul
    (.add (.mul (.num 2316) (.var 3)) (.num 32181)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num
    144) (.var 3)) (.num 11093)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 732))
    (.var 3)) (.neg (.num 415))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 192))
    (.var 3)) (.neg (.num 408))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3588) (.var 3)) (.num 31495)) (.var 1)) (.mul
    (.add (.mul (.num 6246) (.var 3)) (.num 54993)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num
    1158) (.var 3)) (.num 26591)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    2886)) (.var 3)) (.neg (.num 537))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 1602)) (.var 3)) (.neg (.num 2720))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 216)) (.var 3)) (.neg (.num 390))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5676) (.var 3))
    (.num 27930)) (.var 1)) (.mul (.add (.mul (.num 13596) (.var 3)) (.num 63469)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.num 9054) (.var 3)) (.num 47409)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 1122)) (.var 3)) (.num 9713)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.neg (.num 3198)) (.var 3)) (.neg (.num 3117))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.neg (.num 1038)) (.var 3)) (.neg (.num 1412))) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 96)) (.var 3)) (.neg (.num 132))) (.pow (.var 2) 6))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 5646) (.var 3)) (.num 15270)) (.var 1)) (.mul (.add (.mul (.num 18150) (.var
    3)) (.num 45354)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 21696) (.var 3)) (.num 50977))
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
    (.mul (.add (.mul (.num 18) (.var 3)) (.num 21)) (.pow (.var 2) 7))) (.var 1)))) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3))) (.mul (.mul (.num 1)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 450) (.var 1)) (.mul (.num 150) (.var 2))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.num 160) (.var 3)) (.num 4980)) (.var 1)) (.mul (.add (.mul
    (.num 160) (.var 3)) (.num 3560)) (.var 2))) (.var 1)) (.mul (.num 480) (.pow (.var 2) 2))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 3))
    (.num 1664)) (.var 3)) (.num 25075)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 150) (.var
    3)) (.num 2248)) (.var 3)) (.num 27324)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 120) (.var 3)) (.num 484)) (.var 3)) (.num 7661)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 30) (.var 3)) (.neg (.num 100))) (.var 3)) (.num 312)) (.pow
    (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 702) (.var 3)) (.num 8596)) (.var 3)) (.num 75531)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2106) (.var 3)) (.num 15336)) (.var 3)) (.num 111589)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 2286) (.var 3)) (.num 7136)) (.var 3)) (.num 49081)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1062) (.var 3)) (.num 128)) (.var
    3)) (.num 5071)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 180) (.var
    3)) (.neg (.num 268))) (.var 3)) (.neg (.num 452))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3744) (.var 3))
    (.num 28952)) (.var 3)) (.num 153871)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13104)
    (.var 3)) (.num 67860)) (.var 3)) (.num 296393)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 17748) (.var 3)) (.num 53708)) (.var 3)) (.num 191801)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 11610) (.var 3)) (.num 16136)) (.var 3)) (.num 43749))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3672) (.var 3)) (.num 1328))
    (.var 3)) (.num 426)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 450)
    (.var 3)) (.neg (.num 8))) (.var 3)) (.neg (.num 544))) (.pow (.var 2) 5)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 11550) (.var 3)) (.num 68908)) (.var 3)) (.num 226466)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 46200) (.var 3)) (.num 207708)) (.var 3)) (.num 563531)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 74610) (.var 3)) (.num 241510)) (.var 3)) (.num
    525871)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 62130) (.var 3))
    (.num 139006)) (.var 3)) (.num 227565)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 28080) (.var 3)) (.num 43222)) (.var 3)) (.num 45963)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 6510) (.var 3)) (.num 7574)) (.var 3)) (.num 4088))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 600) (.var 3)) (.num 648))
    (.var 3)) (.num 184)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 22164) (.var 3)) (.num
    112300)) (.var 3)) (.num 241649)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 99738) (.var
    3)) (.num 417460)) (.var 3)) (.num 763963)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 186504) (.var 3)) (.num 637628)) (.var 3)) (.num 978023)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 187320) (.var 3)) (.num 522436)) (.var 3)) (.num 659521))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 108756) (.var 3)) (.num
    251808)) (.var 3)) (.num 257373)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 36312) (.var 3)) (.num 72872)) (.var 3)) (.num 60420)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 6396) (.var 3)) (.num 11844)) (.var 3)) (.num 8255)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 450) (.var 3)) (.num 812)) (.var
    3)) (.num 496)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 26184) (.var 3))
    (.num 114600)) (.var 3)) (.num 175324)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 130920)
    (.var 3)) (.num 504128)) (.var 3)) (.num 681489)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 277842) (.var 3)) (.num 941324)) (.var 3)) (.num 1120039)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 325848) (.var 3)) (.num 977436)) (.var 3)) (.num
    1022617)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 230010) (.var 3))
    (.num 619728)) (.var 3)) (.num 572488)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 99426) (.var 3)) (.num 246068)) (.var 3)) (.num 203001)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 25416) (.var 3)) (.num 59312)) (.var 3)) (.num 44413))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3438) (.var 3)) (.num 7720))
    (.var 3)) (.num 5293)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 180)
    (.var 3)) (.num 388)) (.var 3)) (.num 236)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 17316) (.var 3)) (.num 64284)) (.var 3)) (.num 75702)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 95238) (.var 3)) (.num 324768)) (.var 3)) (.num 348900))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 226086) (.var 3)) (.num 710372))
    (.var 3)) (.num 696285)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    303102) (.var 3)) (.num 883180)) (.var 3)) (.num 792013)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 251808) (.var 3)) (.num 687280)) (.var 3)) (.num 567180)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 133518) (.var 3)) (.num 345776))
    (.var 3)) (.num 264822)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    44646) (.var 3)) (.num 111188)) (.var 3)) (.num 79753)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 8868) (.var 3)) (.num 21440)) (.var 3)) (.num 14471)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 900) (.var 3)) (.num 2104)) (.var
    3)) (.num 1320)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var
    3)) (.num 64)) (.var 3)) (.num 34)) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 4860) (.var 3)) (.num 14928)) (.var 3)) (.num 14448)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 29160) (.var 3)) (.num 84924)) (.var 3)) (.num 76590))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 76566) (.var 3)) (.num 212048)) (.var
    3)) (.num 178420)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 115530)
    (.var 3)) (.num 305648)) (.var 3)) (.num 240669)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 110484) (.var 3)) (.num 280936)) (.var 3)) (.num 207951)) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 69516) (.var 3)) (.num 171132)) (.var
    3)) (.num 119710)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 28812)
    (.var 3)) (.num 69190)) (.var 3)) (.num 45962)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 7596) (.var 3)) (.num 17910)) (.var 3)) (.num 11327)) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1158) (.var 3)) (.num 2690)) (.var 3))
    (.num 1615)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 78) (.var 3))
    (.num 178)) (.var 3)) (.num 100)) (.pow (.var 2) 9))) (.var 1)))) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2))) (.mul (.mul (.num 1) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 135) (.var 1)) (.mul (.num 45) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 70) (.var 3)) (.num 1875)) (.var 1)) (.mul
    (.add (.mul (.num 70) (.var 3)) (.num 1373)) (.var 2))) (.var 1)) (.mul (.num 198) (.pow (.var
    2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 50) (.var
    3)) (.num 1024)) (.var 3)) (.num 12144)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 125)
    (.var 3)) (.num 1508)) (.var 3)) (.num 13841)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 100) (.var 3)) (.num 484)) (.var 3)) (.num 4394)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.num 25) (.pow (.var 3) 2)) (.num 317)) (.pow (.var 2) 3)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 700) (.var 3))
    (.num 7440)) (.var 3)) (.num 48876)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2100) (.var
    3)) (.num 14988)) (.var 3)) (.num 77181)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2280) (.var 3)) (.num 9638)) (.var 3)) (.num 40032)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1060) (.var 3)) (.num 2252)) (.var 3)) (.num 7439)) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 180) (.var 3)) (.num 162)) (.var 3))
    (.num 332)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 4542) (.var 3)) (.num 34644)) (.var 3)) (.num
    138143)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15897) (.var 3)) (.num 90432)) (.var
    3)) (.num 287548)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 21559) (.var 3))
    (.num 87762)) (.var 3)) (.num 219604)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 14155) (.var 3)) (.num 40222)) (.var 3)) (.num 75672)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 4511) (.var 3)) (.num 9166)) (.var 3)) (.num 11831))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 560) (.var 3)) (.num 918))
    (.var 3)) (.num 758)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 17712) (.var 3)) (.num 111602))
    (.var 3)) (.num 291626)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 70848) (.var 3)) (.num
    360606)) (.var 3)) (.num 777271)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    114650) (.var 3)) (.num 466484)) (.var 3)) (.num 821373)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 95982) (.var 3)) (.num 313288)) (.var 3)) (.num 443934)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 43826) (.var 3)) (.num 117908))
    (.var 3)) (.num 133031)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    10338) (.var 3)) (.num 24270)) (.var 3)) (.num 22205)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 980) (.var 3)) (.num 2170)) (.var 3)) (.num 1720)) (.pow (.var
    2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 45352) (.var 3)) (.num 252332)) (.var 3)) (.num
    467324)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 204084) (.var 3)) (.num 971640)) (.var
    3)) (.num 1549394)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 382726) (.var 3))
    (.num 1560028)) (.var 3)) (.num 2139578)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 387149) (.var 3)) (.num 1363354)) (.var 3)) (.num 1610951)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 227751) (.var 3)) (.num 707052)) (.var 3))
    (.num 726139)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 77701) (.var
    3)) (.num 219476)) (.var 3)) (.num 199945)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 14155) (.var 3)) (.num 37808)) (.var 3)) (.num 31507)) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1050) (.var 3)) (.num 2750)) (.var 3)) (.num
    2158)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 78281) (.var 3)) (.num
    394984)) (.var 3)) (.num 557339)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 391405) (.var
    3)) (.num 1759516)) (.var 3)) (.num 2226399)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 833514) (.var 3)) (.num 3351616)) (.var 3)) (.num 3814164)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 985626) (.var 3)) (.num 3577178)) (.var 3))
    (.num 3683132)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 706203)
    (.var 3)) (.num 2347334)) (.var 3)) (.num 2208691)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 312819) (.var 3)) (.num 970942)) (.var 3)) (.num 846798)) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 83126) (.var 3)) (.num 246252)) (.var
    3)) (.num 202306)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11974)
    (.var 3)) (.num 34540)) (.var 3)) (.num 27083)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 700) (.var 3)) (.num 1990)) (.var 3)) (.num 1492)) (.pow (.var 2)
    8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 89896) (.var 3)) (.num 415530))
    (.var 3)) (.num 473528)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 494428) (.var 3)) (.num
    2094218)) (.var 3)) (.num 2211832)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1177884) (.var 3)) (.num 4592396)) (.var 3)) (.num 4510244)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1592268) (.var 3)) (.num 5757448)) (.var 3)) (.num
    5286110)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1342554) (.var 3))
    (.num 4549438)) (.var 3)) (.num 3933553)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 729351) (.var 3)) (.num 2345710)) (.var 3)) (.num 1926740)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 253609) (.var 3)) (.num 784554)) (.var 3))
    (.num 617632)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 53797) (.var
    3)) (.num 161962)) (.var 3)) (.num 122994)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 6181) (.var 3)) (.num 18222)) (.var 3)) (.num 13346)) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 280) (.var 3)) (.num 802)) (.var 3)) (.num 557))
    (.pow (.var 2) 9)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    65322) (.var 3)) (.num 279074)) (.var 3)) (.num 268130)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 391932) (.var 3)) (.num 1564878)) (.var 3)) (.num 1428888)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1032468) (.var 3)) (.num 3867618)) (.var 3)) (.num
    3364038)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1569630) (.var 3))
    (.num 5547938)) (.var 3)) (.num 4612760)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1521166) (.var 3)) (.num 5110136)) (.var 3)) (.num 4079398)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 978136) (.var 3)) (.num 3148804)) (.var 3))
    (.num 2425285)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 419958)
    (.var 3)) (.num 1306070)) (.var 3)) (.num 974957)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 117592) (.var 3)) (.num 355578)) (.var 3)) (.num 257950)) (.pow (.var
    2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20146) (.var 3)) (.num 59350)) (.var 3))
    (.num 41780)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1830) (.var
    3)) (.num 5208)) (.var 3)) (.num 3518)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 60) (.var 3)) (.num 158)) (.var 3)) (.num 98)) (.pow (.var 2) 10)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 26928) (.var 3)) (.num
    107964)) (.var 3)) (.num 90144)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 175032) (.var
    3)) (.num 664902)) (.var 3)) (.num 537840)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 505064) (.var 3)) (.num 1823122)) (.var 3)) (.num 1430198)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 852500) (.var 3)) (.num 2935864)) (.var 3)) (.num
    2237318)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 932932) (.var 3))
    (.num 3080000)) (.var 3)) (.num 2284944)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 692472) (.var 3)) (.num 2202594)) (.var 3)) (.num 1594212)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 353666) (.var 3)) (.num 1088478)) (.var 3))
    (.num 769908)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 123091) (.var
    3)) (.num 367382)) (.var 3)) (.num 253983)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 28127) (.var 3)) (.num 81244)) (.var 3)) (.num 54725)) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3886) (.var 3)) (.num 10744)) (.var 3)) (.num
    6980)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 269) (.var 3)) (.num
    688)) (.var 3)) (.num 419)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    5) (.var 3)) (.num 10)) (.var 3)) (.num 5)) (.pow (.var 2) 11)))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4752) (.var 3)) (.num 18324))
    (.var 3)) (.num 13572)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33264) (.var 3)) (.num
    122652)) (.var 3)) (.num 89388)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    104310) (.var 3)) (.num 368532)) (.var 3)) (.num 264222)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 193428) (.var 3)) (.num 656622)) (.var 3)) (.num 463194)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 235675) (.var 3)) (.num 771056))
    (.var 3)) (.num 535381)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    198077) (.var 3)) (.num 626266)) (.var 3)) (.num 428189)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 117128) (.var 3)) (.num 358376)) (.var 3)) (.num 241248)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48686) (.var 3)) (.num 143952))
    (.var 3)) (.num 95266)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    13921) (.var 3)) (.num 39506)) (.var 3)) (.num 25585)) (.pow (.var 2) 8))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 2603) (.var 3)) (.num 6968)) (.var 3)) (.num 4365)) (.pow (.var
    2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 286) (.var 3)) (.num 694)) (.var 3))
    (.num 408)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14) (.var 3))
    (.num 28)) (.var 3)) (.num 14)) (.pow (.var 2) 11))) (.var 1)))) (.mul (.add (.var 0) (.var
    1)) (.add (.add (.var 0) (.var 1)) (.var 2))))) (.mul (.num 1) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 1)) (.mul (.num 2) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 104)) (.var 1)) (.mul
    (.add (.mul (.num 4) (.var 3)) (.num 78)) (.var 2))) (.var 1)) (.mul (.num 12) (.pow (.var 2)
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4) (.var 3))
    (.num 84)) (.var 3)) (.num 851)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3))
    (.num 132)) (.var 3)) (.num 1012)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8)
    (.var 3)) (.num 52)) (.var 3)) (.num 355)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 34)) (.pow (.var 2) 3)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 78) (.var 3))
    (.num 838)) (.var 3)) (.num 4404)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 234) (.var
    3)) (.num 1820)) (.var 3)) (.num 7360)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 254) (.var 3)) (.num 1350)) (.var 3)) (.num 4278)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 118) (.var 3)) (.num 416)) (.var 3)) (.num 1014)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 48)) (.var 3)) (.num
    84)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 694) (.var 3)) (.num 5174)) (.var 3)) (.num 16268)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 2429) (.var 3)) (.num 14394)) (.var 3)) (.num 36007))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3299) (.var 3)) (.num 15362)) (.var
    3)) (.num 30571)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2175)
    (.var 3)) (.num 8022)) (.var 3)) (.num 12579)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 699) (.var 3)) (.num 2112)) (.var 3)) (.num 2591)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 88) (.var 3)) (.num 232)) (.var 3)) (.num 228)) (.pow
    (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 3715) (.var 3)) (.num 21758)) (.var 3)) (.num 45533))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14860) (.var 3)) (.num 73746)) (.var 3)) (.num
    128305)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24118) (.var 3)) (.num
    101612)) (.var 3)) (.num 147439)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 20344) (.var 3)) (.num 73664)) (.var 3)) (.num 89579)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 9423) (.var 3)) (.num 30030)) (.var 3)) (.num 31002))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2276) (.var 3)) (.num 6606))
    (.var 3)) (.num 5950)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 224)
    (.var 3)) (.num 616)) (.var 3)) (.num 504)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 13286) (.var 3)) (.num 65008)) (.var 3)) (.num 98799)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 59787) (.var 3)) (.num 259240)) (.var 3)) (.num 342569)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 112564) (.var 3)) (.num 434848)) (.var 3)) (.num 502886))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 114968) (.var 3)) (.num
    400010)) (.var 3)) (.num 408830)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 68828) (.var 3)) (.num 219222)) (.var 3)) (.num 200961)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 24153) (.var 3)) (.num 71878)) (.var 3)) (.num 60299))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4594) (.var 3)) (.num
    13058)) (.var 3)) (.num 10256)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 364) (.var 3)) (.num 1008)) (.var 3)) (.num 756)) (.pow (.var 2) 7)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 33296) (.var 3)) (.num 140410)) (.var 3)) (.num 165972)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 166480) (.var 3)) (.num 642486)) (.var 3)) (.num
    686473)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 356118) (.var 3)) (.num
    1264802)) (.var 3)) (.num 1230082)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 425592) (.var 3)) (.num 1403078)) (.var 3)) (.num 1253701)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 310704) (.var 3)) (.num 961574)) (.var 3)) (.num
    798703)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 141756) (.var 3))
    (.num 417218)) (.var 3)) (.num 326498)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 39378) (.var 3)) (.num 111686)) (.var 3)) (.num 83453)) (.pow (.var 2) 6))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 6060) (.var 3)) (.num 16754)) (.var 3)) (.num 12082))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 392) (.var 3)) (.num 1064))
    (.var 3)) (.num 744)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 59564) (.var 3)) (.num 219842)) (.var 3)) (.num 212556)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 327602) (.var 3)) (.num 1133186)) (.var 3)) (.num 1021116)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 784020) (.var 3)) (.num 2553952)) (.var 3)) (.num
    2157258)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1071075) (.var 3))
    (.num 3307194)) (.var 3)) (.num 2637331)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 919776) (.var 3)) (.num 2713150)) (.var 3)) (.num 2059456)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 514080) (.var 3)) (.num 1461056)) (.var 3))
    (.num 1064762)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 186444)
    (.var 3)) (.num 514778)) (.var 3)) (.num 363064)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 42075) (.var 3)) (.num 113636)) (.var 3)) (.num 78033)) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5308) (.var 3)) (.num 14078)) (.var 3))
    (.num 9434)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 280) (.var 3))
    (.num 728)) (.var 3)) (.num 474)) (.pow (.var 2) 9)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 75945) (.var 3)) (.num 247170)) (.var 3)) (.num 202449)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 455670) (.var 3)) (.num 1415436)) (.var 3)) (.num
    1105674)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1205595) (.var 3)) (.num
    3587914)) (.var 3)) (.num 2684039)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1851000) (.var 3)) (.num 5302760)) (.var 3)) (.num 3817510)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1824339) (.var 3)) (.num 5058094)) (.var 3))
    (.num 3523005)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1203726)
    (.var 3)) (.num 3247962)) (.var 3)) (.num 2200389)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 536617) (.var 3)) (.num 1416446)) (.var 3)) (.num 937784)) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 158640) (.var 3)) (.num 411312)) (.var
    3)) (.num 267023)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 29456)
    (.var 3)) (.num 75164)) (.var 3)) (.num 47893)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 3044) (.var 3)) (.num 7630)) (.var 3)) (.num 4756)) (.pow (.var 2)
    9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 128) (.var 3)) (.num 312)) (.var 3)) (.num
    188)) (.pow (.var 2) 10)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 67584) (.var 3)) (.num 194628)) (.var 3)) (.num 138276)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 439296) (.var 3)) (.num 1225104)) (.var 3)) (.num 844452)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1272732) (.var 3)) (.num 3446808)) (.var
    3)) (.num 2311158)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2167770)
    (.var 3)) (.num 5719752)) (.var 3)) (.num 3742218)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2408704) (.var 3)) (.num 6213964)) (.var 3)) (.num 3979897)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1829277) (.var 3)) (.num 4630328))
    (.var 3)) (.num 2912279)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    965268) (.var 3)) (.num 2404800)) (.var 3)) (.num 1489300)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 351690) (.var 3)) (.num 864302)) (.var 3)) (.num 527972))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 85790) (.var 3)) (.num
    208126)) (.var 3)) (.num 125424)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 13097) (.var 3)) (.num 31302)) (.var 3)) (.num 18561)) (.pow (.var 2) 9))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1086) (.var 3)) (.num 2538)) (.var 3)) (.num 1469)) (.pow
    (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 34) (.var 3)) (.num 76)) (.var
    3)) (.num 42)) (.pow (.var 2) 11)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 39978) (.var 3)) (.num 101988)) (.var 3)) (.num 63846))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 279846) (.var 3)) (.num 699768)) (.var 3)) (.num
    430506)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 880932) (.var 3)) (.num
    2163108)) (.var 3)) (.num 1309752)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1647594) (.var 3)) (.num 3980880)) (.var 3)) (.num 2376378)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2036158) (.var 3)) (.num 4851338)) (.var 3))
    (.num 2860222)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1747508)
    (.var 3)) (.num 4114078)) (.var 3)) (.num 2399657)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1063738) (.var 3)) (.num 2478722)) (.var 3)) (.num 1432342)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 459730) (.var 3)) (.num 1061450))
    (.var 3)) (.num 608149)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    138502) (.var 3)) (.num 316852)) (.var 3)) (.num 179957)) (.pow (.var 2) 8))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 27844) (.var 3)) (.num 62998)) (.var 3)) (.num 35398)) (.pow
    (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3424) (.var 3)) (.num 7620)) (.var
    3)) (.num 4213)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 214) (.var
    3)) (.num 462)) (.var 3)) (.num 248)) (.pow (.var 2) 11))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 4) (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 12)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 14148)
    (.var 3)) (.num 31968)) (.var 3)) (.num 17820)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    106110) (.var 3)) (.num 237492)) (.var 3)) (.num 131382)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 360594) (.var 3)) (.num 800172)) (.var 3)) (.num 439578)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 734526) (.var 3)) (.num 1617624)) (.var
    3)) (.num 883098)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 999114)
    (.var 3)) (.num 2185878)) (.var 3)) (.num 1186764)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 955878) (.var 3)) (.num 2079462)) (.var 3)) (.num 1123584)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 659004) (.var 3)) (.num 1426548))
    (.var 3)) (.num 767544)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    329247) (.var 3)) (.num 709470)) (.var 3)) (.num 380223)) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 117892) (.var 3)) (.num 252828)) (.var 3)) (.num 134936)) (.pow
    (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 29321) (.var 3)) (.num 62506))
    (.var 3)) (.num 33185)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    4755) (.var 3)) (.num 10044)) (.var 3)) (.num 5289)) (.pow (.var 2) 10))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 442) (.var 3)) (.num 918)) (.var 3)) (.num 476)) (.pow (.var 2)
    11))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17) (.var 3)) (.num 34)) (.var 3)) (.num
    17)) (.pow (.var 2) 12))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 2268) (.var 3)) (.num 4536)) (.var 3)) (.num 2268))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18144) (.var 3)) (.num 36288)) (.var 3)) (.num
    18144)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 66204) (.var 3)) (.num
    132408)) (.var 3)) (.num 66204)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 145908) (.var 3)) (.num 291816)) (.var 3)) (.num 145908)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 216657) (.var 3)) (.num 433314)) (.var 3)) (.num 216657))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 228690) (.var 3)) (.num
    457380)) (.var 3)) (.num 228690)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 176193) (.var 3)) (.num 352386)) (.var 3)) (.num 176193)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 99954) (.var 3)) (.num 199908)) (.var 3)) (.num 99954))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 41480) (.var 3)) (.num
    82960)) (.var 3)) (.num 41480)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 12290) (.var 3)) (.num 24580)) (.var 3)) (.num 12290)) (.pow (.var 2) 9))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 2469) (.var 3)) (.num 4938)) (.var 3)) (.num 2469)) (.pow
    (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 302) (.var 3)) (.num 604)) (.var
    3)) (.num 302)) (.pow (.var 2) 11))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17) (.var
    3)) (.num 34)) (.var 3)) (.num 17)) (.pow (.var 2) 12))) (.pow (.var 1) 2)))))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11)
    (.var 0)) (.mul (.num 9) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 7) (.var 3))
    (.num 4)) (.var 3)) (.neg (.num 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 19) (.var 3)) (.num 34)) (.var 3)) (.num 18)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 17) (.var 3)) (.num 40)) (.var 3)) (.num 23)) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 3)) (.num 10)) (.var 3)) (.num 5))
    (.pow (.var 2) 5))) (.var 0))) (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 24) (.var 0)) (.mul (.neg (.num 3)) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 8) (.var 3)) (.neg (.num 10))) (.var 3)) (.neg (.num 22))) (.pow (.var
    2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 17) (.var 3)) (.num 32)) (.var 3)) (.num
    22)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num
    28)) (.var 3)) (.num 18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1)
    (.var 3)) (.num 2)) (.var 3)) (.num 1)) (.pow (.var 2) 5)))) (.pow (.var 0) 1))) (.mul (.mul
    (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 26) (.var 0)) (.mul (.neg (.num
    23)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.neg (.num 16)))
    (.var 3)) (.neg (.num 19))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    6) (.var 3)) (.num 20)) (.var 3)) (.num 19)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 3) (.var 3)) (.num 8)) (.var 3)) (.num 5)) (.pow (.var 2) 4)))) (.pow (.var
    0) 2))) (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.num 14) (.var 0)) (.mul
    (.neg (.num 21)) (.var 2))) (.var 0)) (.mul (.mul (.neg (.num 6)) (.var 3)) (.pow (.var 2)
    2))) (.var 0)) (.mul (.add (.mul (.num 6) (.var 3)) (.num 7)) (.pow (.var 2) 3)))) (.pow (.var
    0) 3))) (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.num 3) (.var 0)) (.mul (.neg (.num 6))
    (.var 2))) (.var 0)) (.mul (.num 3) (.pow (.var 2) 2)))) (.pow (.var 0) 4))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.mul (.num 1) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 105) (.var 0)) (.mul (.add (.mul (.num 48) (.var 3)) (.num 1009)) (.var 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num 228)) (.var 3)) (.num 2321)) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 569) (.var 3)) (.num 714)) (.var
    3)) (.num 2106)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1915) (.var
    3)) (.num 2700)) (.var 3)) (.num 1813)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 3170) (.var 3)) (.num 5882)) (.var 3)) (.num 3368)) (.pow (.var 2) 5))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 2841) (.var 3)) (.num 6274)) (.var 3)) (.num 3795)) (.pow
    (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1374) (.var 3)) (.num 3242)) (.var
    3)) (.num 1938)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 324) (.var
    3)) (.num 738)) (.var 3)) (.num 414)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 27) (.var 3)) (.num 54)) (.var 3)) (.num 27)) (.pow (.var 2) 9))) (.var 0))) (.mul
    (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 150) (.var 0)) (.mul (.add (.mul (.num 52) (.var 3)) (.num
    1286)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 44) (.var 3)) (.num 140))
    (.var 3)) (.num 2204)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 394)
    (.var 3)) (.num 48)) (.var 3)) (.num 622)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1237) (.var 3)) (.num 1024)) (.var 3)) (.neg (.num 32))) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1850) (.var 3)) (.num 3342)) (.var 3)) (.num
    2045)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1421) (.var 3)) (.num
    3512)) (.var 3)) (.num 2492)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 537) (.var 3)) (.num 1456)) (.var 3)) (.num 988)) (.pow (.var 2) 7))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 82) (.var 3)) (.num 212)) (.var 3)) (.num 130)) (.pow (.var 2)
    8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 6)) (.var 3)) (.num 3))
    (.pow (.var 2) 9)))) (.pow (.var 0) 1))) (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 120) (.var 0)) (.mul
    (.add (.mul (.num 28) (.var 3)) (.num 924)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 12) (.var 3)) (.num 32)) (.var 3)) (.num 1111)) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 105) (.var 3)) (.neg (.num 228))) (.var 3)) (.neg (.num 507)))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 321) (.var 3)) (.num 18))
    (.var 3)) (.neg (.num 548))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    456) (.var 3)) (.num 1084)) (.var 3)) (.num 1019)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 318) (.var 3)) (.num 1094)) (.var 3)) (.num 1006)) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 99) (.var 3)) (.num 324)) (.var 3)) (.num 252))
    (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.num 24))
    (.var 3)) (.num 15)) (.pow (.var 2) 8)))) (.pow (.var 0) 2))) (.mul (.mul (.num 1) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 51) (.var 0))
    (.mul (.add (.mul (.num 6) (.var 3)) (.num 355)) (.var 2))) (.var 0)) (.mul (.num 269) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.neg (.num 84)) (.var 3)) (.neg (.num 400))) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.neg (.num 54)) (.var 3)) (.neg (.num 122))) (.pow
    (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.num 168) (.var 3)) (.num 388)) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.num 138) (.var 3)) (.num 206)) (.pow (.var 2) 6))) (.var 0))
    (.mul (.add (.mul (.num 18) (.var 3)) (.num 21)) (.pow (.var 2) 7)))) (.pow (.var 0) 3))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow0055.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow0055.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow0055.leading0 e g v + f * FullLow0055.leading1 e g v +
        f^2 * FullLow0055.remainder e f g v := by
  have hden : denominatorOne FullLow0055.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow0055.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow0055.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 17179869184 14 12 2) lhs =
      value (Encoding4.vars 17179869184 14 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 17179869184 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 14 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 14 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow0055.source e f g v =
      FullLow0055.leading0 e g v + f * FullLow0055.leading1 e g v +
        f^2 * FullLow0055.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 17179869184 14 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow005Encoded5

namespace SPR.N6.Tail.CoreEndpoint.FullLow005
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition5 (e f g v : ℝ) :
    FullLow0055.source e f g v =
      FullLow0055.leading0 e g v + f * FullLow0055.leading1 e g v +
        f^2 * FullLow0055.remainder e f g v :=
  FullLow005Encoded5.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow005
