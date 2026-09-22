import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow320Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^0 layer of FullLow320.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow320Encoded0
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 2)
    (.var 1)) (.var 0)) (.mul (.add (.mul (.num 40) (.var 1)) (.mul (.num 18) (.var 2))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 300) (.var 1)) (.mul (.add (.mul (.neg
    (.num 2)) (.var 3)) (.num 269)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 2)) (.var
    3)) (.num 58)) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.neg (.num 16))) (.var 3)) (.num 1183))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.neg (.num 58))) (.var 3)) (.num
    1563)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.neg (.num 60)))
    (.var 3)) (.num 647)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 18)) (.var
    3)) (.num 82)) (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 26) (.var 3)) (.neg (.num 124))) (.var 3))
    (.num 2808)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 65) (.var 3)) (.neg (.num 471)))
    (.var 3)) (.num 4777)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 52) (.var 3))
    (.neg (.num 620))) (.var 3)) (.num 2741)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 13) (.var 3)) (.neg (.num 333))) (.var 3)) (.num 582)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 60)) (.var 3)) (.num 30)) (.pow (.var 2) 4))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 161) (.var 3)) (.neg (.num 232))) (.var 3)) (.num 4490)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 483) (.var 3)) (.neg (.num 1324))) (.var 3)) (.num 9115)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 518) (.var 3)) (.neg (.num 2539))) (.var
    3)) (.num 6121)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 231) (.var
    3)) (.neg (.num 2134))) (.var 3)) (.num 1224)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 35) (.var 3)) (.neg (.num 787))) (.var 3)) (.neg (.num 178))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.neg (.num 100)) (.var 3)) (.neg (.num 58))) (.pow (.var 2)
    5))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 628) (.var 3)) (.num 676)) (.var 3)) (.num 5640))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2198) (.var 3)) (.num 733)) (.var 3)) (.num
    13538)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2926) (.var 3)) (.neg (.num
    2249))) (.var 3)) (.num 10407)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1820) (.var 3)) (.neg (.num 4753))) (.var 3)) (.num 1317)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 514) (.var 3)) (.neg (.num 3307))) (.var 3)) (.neg (.num
    1828))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50) (.var 3)) (.neg
    (.num 950))) (.var 3)) (.neg (.num 775))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 90)) (.var 3)) (.neg (.num 82))) (.pow (.var 2) 6))) (.var 1))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 1633) (.var 3)) (.num 3740)) (.var 3)) (.num 6457)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 6532) (.var 3)) (.num 12224)) (.var 3)) (.num 19357)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10362) (.var 3)) (.num 13637)) (.var 3)) (.num
    20275)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8224) (.var 3))
    (.num 4183)) (.var 3)) (.num 6600)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3365) (.var 3)) (.neg (.num 2877))) (.var 3)) (.neg (.num 2758))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 644) (.var 3)) (.neg (.num 2469))) (.var
    3)) (.neg (.num 2563))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40)
    (.var 3)) (.neg (.num 604))) (.var 3)) (.neg (.num 613))) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 42)) (.var 3)) (.neg (.num 42))) (.pow (.var 2) 7))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 2736) (.var 3)) (.num 7164)) (.var 3)) (.num 6528))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12312) (.var 3)) (.num 29412)) (.var 3)) (.num
    24690)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 22672) (.var 3)) (.num
    47836)) (.var 3)) (.num 36234)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 21896) (.var 3)) (.num 38261)) (.var 3)) (.num 24696)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 11770) (.var 3)) (.num 14423)) (.var 3)) (.num 6055))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3413) (.var 3)) (.num 1162))
    (.var 3)) (.neg (.num 1542))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 460) (.var 3)) (.neg (.num 767))) (.var 3)) (.neg (.num 1169))) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17) (.var 3)) (.neg (.num 187))) (.var 3)) (.neg
    (.num 204))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num 8)) (.var 3)) (.neg
    (.num 8))) (.pow (.var 2) 8))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    2826) (.var 3)) (.num 7200)) (.var 3)) (.num 4854)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 14130) (.var 3)) (.num 34338)) (.var 3)) (.num 22176)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 29589) (.var 3)) (.num 67888)) (.var 3)) (.num 41611)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33576) (.var 3)) (.num 71530)) (.var 3))
    (.num 40897)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 22271) (.var
    3)) (.num 42733)) (.var 3)) (.num 21927)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 8643) (.var 3)) (.num 13977)) (.var 3)) (.num 5723)) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1833) (.var 3)) (.num 2042)) (.var 3)) (.num
    252)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 173) (.var 3)) (.neg
    (.num 3))) (.var 3)) (.neg (.num 176))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3) (.var 3)) (.neg (.num 21))) (.var 3)) (.neg (.num 24))) (.pow (.var 2) 8)))
    (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1662) (.var 3)) (.num
    3840)) (.var 3)) (.num 2178)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9141) (.var 3))
    (.num 20688)) (.var 3)) (.num 11547)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    21417) (.var 3)) (.num 47340)) (.var 3)) (.num 25923)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 27819) (.var 3)) (.num 59796)) (.var 3)) (.num 31977)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 21808) (.var 3)) (.num 45266))
    (.var 3)) (.num 23458)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    10493) (.var 3)) (.num 20772)) (.var 3)) (.num 10279)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 2991) (.var 3)) (.num 5508)) (.var 3)) (.num 2517)) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 451) (.var 3)) (.num 728)) (.var 3))
    (.num 277)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 26) (.var 3))
    (.num 30)) (.var 3)) (.num 4)) (.pow (.var 2) 8))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 432) (.var 3)) (.num 864)) (.var 3)) (.num 432)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 2592) (.var 3)) (.num 5184)) (.var 3)) (.num 2592)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6714) (.var 3)) (.num 13428)) (.var 3)) (.num
    6714)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9810) (.var 3)) (.num
    19620)) (.var 3)) (.num 9810)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 8851) (.var 3)) (.num 17702)) (.var 3)) (.num 8851)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 5056) (.var 3)) (.num 10112)) (.var 3)) (.num 5056)) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1788) (.var 3)) (.num 3576)) (.var 3))
    (.num 1788)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 358) (.var 3))
    (.num 716)) (.var 3)) (.num 358)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 31) (.var 3)) (.num 62)) (.var 3)) (.num 31)) (.pow (.var 2) 8))) (.pow (.var 1) 4))))
    (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.pow (.add
    (.var 1) (.var 2)) 2)) (.mul (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 40) (.var 1)) (.mul (.num 16) (.var 2))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.num 16) (.var 3)) (.num 576)) (.var 1)) (.mul (.add (.mul (.num 16) (.var
    3)) (.num 484)) (.var 2))) (.var 1)) (.mul (.num 96) (.pow (.var 2) 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 232)) (.var 3))
    (.num 3652)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 320)) (.var 3))
    (.num 4648)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 72))
    (.var 3)) (.num 1852)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 16)) (.var
    3)) (.num 224)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 144) (.var 3)) (.num 1620)) (.var 3)) (.num 13641)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 360) (.var 3)) (.num 2922)) (.var 3)) (.num 23177)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 288) (.var 3)) (.num 1336)) (.var 3)) (.num
    13702)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 3)) (.neg
    (.num 62))) (.var 3)) (.num 3210)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num
    96)) (.var 3)) (.num 224)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1128) (.var 3)) (.num 7424)) (.var 3))
    (.num 34289)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3384) (.var 3)) (.num 17150))
    (.var 3)) (.num 73151)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3656) (.var
    3)) (.num 12606)) (.var 3)) (.num 57186)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1672) (.var 3)) (.num 2338)) (.var 3)) (.num 19418)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 272) (.var 3)) (.neg (.num 782))) (.var 3))
    (.num 2414)) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.neg (.num 240)) (.var 3)) (.pow (.var
    2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 5122) (.var 3)) (.num 24662)) (.var 3)) (.num 63669)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 17927) (.var 3)) (.num 71329)) (.var 3)) (.num 166193))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24169) (.var 3)) (.num 74953)) (.var
    3)) (.num 164873)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15605)
    (.var 3)) (.num 32563)) (.var 3)) (.num 75203)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 4801) (.var 3)) (.num 2993)) (.var 3)) (.num 13838)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 560) (.var 3)) (.neg (.num 1604))) (.var
    3)) (.neg (.num 124))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 320)) (.var
    3)) (.neg (.num 224))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 14988) (.var 3))
    (.num 59556)) (.var 3)) (.num 92751)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 59952)
    (.var 3)) (.num 208896)) (.var 3)) (.num 293791)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 96401) (.var 3)) (.num 287125)) (.var 3)) (.num 367145)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 79371) (.var 3)) (.num 192319)) (.var 3)) (.num
    225095)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 35087) (.var 3))
    (.num 60811)) (.var 3)) (.num 65276)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 7833) (.var 3)) (.num 5045)) (.var 3)) (.num 4670)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 680) (.var 3)) (.neg (.num 1472))) (.var 3)) (.neg (.num
    1512))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 240)) (.var 3)) (.neg
    (.num 224))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 29328) (.var 3))
    (.num 100830)) (.var 3)) (.num 106686)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 131976)
    (.var 3)) (.num 415593)) (.var 3)) (.num 405886)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 245864) (.var 3)) (.num 701722)) (.var 3)) (.num 631279)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 244636) (.var 3)) (.num 621786)) (.var 3)) (.num
    511851)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 139540) (.var 3))
    (.num 304806)) (.var 3)) (.num 224790)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 45204) (.var 3)) (.num 77443)) (.var 3)) (.num 47146)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 7572) (.var 3)) (.num 6942)) (.var 3)) (.num 1254))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 488) (.var 3)) (.neg (.num
    618))) (.var 3)) (.neg (.num 1022))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 96)) (.var 3)) (.neg (.num 96))) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 38142) (.var 3)) (.num 114910)) (.var 3)) (.num 92326)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 190710) (.var 3)) (.num 542868)) (.var 3)) (.num 413784))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 403367) (.var 3)) (.num 1080429))
    (.var 3)) (.num 779411)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    469208) (.var 3)) (.num 1175182)) (.var 3)) (.num 798779)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 326256) (.var 3)) (.num 755504)) (.var 3)) (.num 479032)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 137522) (.var 3)) (.num 287554))
    (.var 3)) (.num 165814)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    33731) (.var 3)) (.num 60023)) (.var 3)) (.num 29004)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 4248) (.var 3)) (.num 5204)) (.var 3)) (.num 1146)) (.pow (.var
    2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 192) (.var 3)) (.neg (.num 74))) (.var
    3)) (.neg (.num 266))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.neg (.num 16)) (.var
    3)) (.neg (.num 16))) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 31682) (.var 3)) (.num 83740)) (.var 3)) (.num 55226)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 174251) (.var 3)) (.num 445270)) (.var 3)) (.num 285149)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 412079) (.var 3)) (.num 1016474)) (.var 3)) (.num
    631165)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 547473) (.var 3))
    (.num 1300793)) (.var 3)) (.num 781463)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 447498) (.var 3)) (.num 1020388)) (.var 3)) (.num 590768)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 231126) (.var 3)) (.num 502167)) (.var 3)) (.num
    277951)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 74174) (.var 3))
    (.num 151253)) (.var 3)) (.num 78591)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 13802) (.var 3)) (.num 25478)) (.var 3)) (.num 11821)) (.pow (.var 2) 7))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 1251) (.var 3)) (.num 1865)) (.var 3)) (.num 614))
    (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 32) (.var 3)) (.num 12))
    (.var 3)) (.neg (.num 20))) (.pow (.var 2) 9))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 15300) (.var 3)) (.num 35334)) (.var 3)) (.num 20034)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 91800) (.var 3)) (.num 208710)) (.var 3)) (.num 116910))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 239815) (.var 3)) (.num 536526))
    (.var 3)) (.num 296711)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    357575) (.var 3)) (.num 786762)) (.var 3)) (.num 429187)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 334847) (.var 3)) (.num 723829)) (.var 3)) (.num 388982)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 203738) (.var 3)) (.num 431796))
    (.var 3)) (.num 228058)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    80200) (.var 3)) (.num 165947)) (.var 3)) (.num 85747)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 19532) (.var 3)) (.num 39115)) (.var 3)) (.num 19583)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2626) (.var 3)) (.num 4992)) (.var
    3)) (.num 2366)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 143) (.var
    3)) (.num 245)) (.var 3)) (.num 102)) (.pow (.var 2) 9))) (.pow (.var 1) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3294) (.var 3)) (.num 6588)) (.var 3)) (.num
    3294)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 21411) (.var 3)) (.num 42822)) (.var 3))
    (.num 21411)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 61200) (.var 3)) (.num
    122400)) (.var 3)) (.num 61200)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 101079) (.var 3)) (.num 202158)) (.var 3)) (.num 101079)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 106474) (.var 3)) (.num 212948)) (.var 3)) (.num 106474))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 74322) (.var 3)) (.num
    148644)) (.var 3)) (.num 74322)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 34448) (.var 3)) (.num 68896)) (.var 3)) (.num 34448)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 10243) (.var 3)) (.num 20486)) (.var 3)) (.num 10243))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1776) (.var 3)) (.num 3552))
    (.var 3)) (.num 1776)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 137)
    (.var 3)) (.num 274)) (.var 3)) (.num 137)) (.pow (.var 2) 9))) (.pow (.var 1) 3)))) (.var 0))
    (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.add (.var
    1) (.var 2)))) (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 60) (.var 1)) (.mul (.num 20) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.num 40) (.var 3)) (.num 840)) (.var 1)) (.mul (.add (.mul (.num 40) (.var 3)) (.num
    636)) (.var 2))) (.var 1)) (.mul (.num 96) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 696)) (.var 3)) (.num
    5468)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 100) (.var 3)) (.num 1112)) (.var 3))
    (.num 6632)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 80) (.var 3)) (.num
    456)) (.var 3)) (.num 2348)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    20) (.var 3)) (.num 40)) (.var 3)) (.num 224)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 628) (.var 3)) (.num 5588))
    (.var 3)) (.num 22172)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1884) (.var 3)) (.num
    12400)) (.var 3)) (.num 38230)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2044)
    (.var 3)) (.num 9484)) (.var 3)) (.num 22860)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 948) (.var 3)) (.num 3040)) (.var 3)) (.num 5590)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 160) (.var 3)) (.num 368)) (.var 3)) (.num 488)) (.pow
    (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 4364) (.var 3)) (.num 26912)) (.var 3)) (.num 63151)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 15274) (.var 3)) (.num 76556)) (.var 3)) (.num 145757)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20718) (.var 3)) (.num 83684)) (.var 3))
    (.num 128813)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13610) (.var
    3)) (.num 44668)) (.var 3)) (.num 55155)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 4342) (.var 3)) (.num 11948)) (.var 3)) (.num 11828)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 540) (.var 3)) (.num 1320)) (.var 3)) (.num
    1080)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 17636) (.var 3)) (.num 85264)) (.var 3)) (.num
    133372)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 70544) (.var 3)) (.num 295312)) (.var
    3)) (.num 394575)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 114240) (.var 3))
    (.num 414752)) (.var 3)) (.num 473841)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 95816) (.var 3)) (.num 304660)) (.var 3)) (.num 298809)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 43908) (.var 3)) (.num 124672)) (.var 3)) (.num
    106151)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10424) (.var 3))
    (.num 27196)) (.var 3)) (.num 20560)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1000) (.var 3)) (.num 2480)) (.var 3)) (.num 1720)) (.pow (.var 2) 6)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 45744) (.var 3)) (.num 184030)) (.var 3)) (.num 211111)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 205848) (.var 3)) (.num 749162)) (.var 3)) (.num 769903))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 386316) (.var 3)) (.num 1276420))
    (.var 3)) (.num 1179139)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    391482) (.var 3)) (.num 1183240)) (.var 3)) (.num 988707)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 231070) (.var 3)) (.num 646426)) (.var 3)) (.num 493408)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 79282) (.var 3)) (.num 208422))
    (.var 3)) (.num 147290)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    14582) (.var 3)) (.num 36628)) (.var 3)) (.num 24338)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1100) (.var 3)) (.num 2680)) (.var 3)) (.num 1696)) (.pow (.var
    2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 78973) (.var 3)) (.num 272022)) (.var
    3)) (.num 245901)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 394865) (.var 3)) (.num
    1269480)) (.var 3)) (.num 1067804)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    841114) (.var 3)) (.num 2532112)) (.var 3)) (.num 1987951)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 995266) (.var 3)) (.num 2820184)) (.var 3)) (.num
    2076539)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 713957) (.var 3))
    (.num 1917690)) (.var 3)) (.num 1332714)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 316873) (.var 3)) (.num 813488)) (.var 3)) (.num 537539)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 84468) (.var 3)) (.num 209008)) (.var 3))
    (.num 132282)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12228) (.var
    3)) (.num 29360)) (.var 3)) (.num 17890)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 720) (.var 3)) (.num 1680)) (.var 3)) (.num 984)) (.pow (.var 2) 8)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 90630) (.var 3)) (.num 270930)) (.var 3))
    (.num 202986)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 498465) (.var 3)) (.num 1423466))
    (.var 3)) (.num 1020395)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1186779)
    (.var 3)) (.num 3244946)) (.var 3)) (.num 2229874)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1602018) (.var 3)) (.num 4207720)) (.var 3)) (.num 2779649)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1347392) (.var 3)) (.num 3413254))
    (.var 3)) (.num 2175102)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    729043) (.var 3)) (.num 1789070)) (.var 3)) (.num 1103817)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 251917) (.var 3)) (.num 601298)) (.var 3)) (.num 360342))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 52902) (.var 3)) (.num
    123144)) (.var 3)) (.num 71799)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 5970) (.var 3)) (.num 13540)) (.var 3)) (.num 7664)) (.pow (.var 2) 8))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 260) (.var 3)) (.num 568)) (.var 3)) (.num 308)) (.pow (.var 2)
    9)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 66649) (.var 3)) (.num
    174062)) (.var 3)) (.num 111793)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 399894) (.var
    3)) (.num 1015812)) (.var 3)) (.num 636744)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1051522) (.var 3)) (.num 2601556)) (.var 3)) (.num 1592972)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1591915) (.var 3)) (.num 3842884)) (.var 3))
    (.num 2301520)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1531509)
    (.var 3)) (.num 3614718)) (.var 3)) (.num 2120708)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 973380) (.var 3)) (.num 2250836)) (.var 3)) (.num 1295550)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 410448) (.var 3)) (.num 931376))
    (.var 3)) (.num 526512)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    111723) (.var 3)) (.num 248912)) (.var 3)) (.num 138202)) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 18264) (.var 3)) (.num 39880)) (.var 3)) (.num 21699)) (.pow
    (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1520) (.var 3)) (.num 3228)) (.var
    3)) (.num 1708)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40) (.var
    3)) (.num 80)) (.var 3)) (.num 40)) (.pow (.var 2) 10)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 28560) (.var 3)) (.num 65316)) (.var 3)) (.num
    36756)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 185640) (.var 3)) (.num 419100)) (.var
    3)) (.num 233460)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 533966) (.var 3))
    (.num 1190694)) (.var 3)) (.num 656728)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 894773) (.var 3)) (.num 1972242)) (.var 3)) (.num 1077469)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 966943) (.var 3)) (.num 2108388)) (.var 3))
    (.num 1141445)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 703506)
    (.var 3)) (.num 1518494)) (.var 3)) (.num 814988)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 348336) (.var 3)) (.num 744534)) (.var 3)) (.num 396198)) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 115479) (.var 3)) (.num 244330)) (.var
    3)) (.num 128851)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24361)
    (.var 3)) (.num 50936)) (.var 3)) (.num 26575)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2914) (.var 3)) (.num 5994)) (.var 3)) (.num 3080)) (.pow (.var 2)
    9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 146) (.var 3)) (.num 292)) (.var 3)) (.num
    146)) (.pow (.var 2) 10))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 5454) (.var 3)) (.num 10908)) (.var 3)) (.num 5454)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 38178) (.var 3)) (.num 76356)) (.var 3)) (.num 38178)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 119187) (.var 3)) (.num 238374)) (.var 3))
    (.num 119187)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 218808) (.var
    3)) (.num 437616)) (.var 3)) (.num 218808)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 262003) (.var 3)) (.num 524006)) (.var 3)) (.num 262003)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 214184) (.var 3)) (.num 428368)) (.var 3))
    (.num 214184)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 121277) (.var
    3)) (.num 242554)) (.var 3)) (.num 121277)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 47048) (.var 3)) (.num 94096)) (.var 3)) (.num 47048)) (.pow (.var 2) 7)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11987) (.var 3)) (.num 23974)) (.var 3)) (.num
    11987)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1814) (.var 3))
    (.num 3628)) (.var 3)) (.num 1814)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 124) (.var 3)) (.num 248)) (.var 3)) (.num 124)) (.pow (.var 2) 10))) (.pow (.var
    1) 2)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var
    1)) (.var 2))) 2)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.mul (.mul (.num
    6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.pow (.var 0) 2)) (.mul
    (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 24)) (.var 3)) (.num 20))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 28))
    (.var 3)) (.num 18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.var 0))) (.pow (.var 0) 4))
    (.mul (.mul (.num 4) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    2) (.var 0)) (.mul (.num 8) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2) (.var
    3)) (.num 4)) (.var 3)) (.num 12)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 8) (.var 3)) (.num 12)) (.var 3)) (.num 8)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 10) (.var 3)) (.num 12)) (.var 3)) (.num 2)) (.pow (.var 2) 4))) (.var
    0)) (.mul (.mul (.add (.mul (.num 4) (.var 3)) (.num 4)) (.var 3)) (.pow (.var 2) 5))) (.pow
    (.var 0) 3))) (.pow (.var 0) 2))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.mul (.mul (.num 3) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 6) (.var 0)) (.mul (.add (.mul (.num 4) (.var 3)) (.num 60)) (.var 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 40)) (.var 3)) (.num 157)) (.pow (.var 2)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 94) (.var 3)) (.num 284)) (.var 3)) (.num
    357)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 393) (.var 3)) (.num
    1136)) (.var 3)) (.num 989)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    807) (.var 3)) (.num 2306)) (.var 3)) (.num 1755)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 900) (.var 3)) (.num 2448)) (.var 3)) (.num 1667)) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 546) (.var 3)) (.num 1356)) (.var 3)) (.num
    827)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 163) (.var 3)) (.num
    360)) (.var 3)) (.num 197)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    17) (.var 3)) (.num 34)) (.var 3)) (.num 17)) (.pow (.var 2) 9))) (.var 0))) (.pow (.var 0)
    4)) (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.mul (.add (.mul (.num 8)
    (.var 3)) (.num 148)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3))
    (.num 88)) (.var 3)) (.num 576)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 192) (.var 3)) (.num 564)) (.var 3)) (.num 1344)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 818) (.var 3)) (.num 2008)) (.var 3)) (.num 2360)) (.pow (.var
    2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1726) (.var 3)) (.num 3906)) (.var 3))
    (.num 3050)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2006) (.var 3))
    (.num 4252)) (.var 3)) (.num 2600)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1298) (.var 3)) (.num 2564)) (.var 3)) (.num 1324)) (.pow (.var 2) 7))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 432) (.var 3)) (.num 788)) (.var 3)) (.num 356)) (.pow
    (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 56) (.var 3)) (.num 94)) (.var 3))
    (.num 38)) (.pow (.var 2) 9))) (.pow (.var 0) 3))) (.pow (.var 0) 2))) (.mul (.num 1) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 6) (.var 0)) (.mul (.add (.mul (.num 4) (.var 3)) (.num 88)) (.var
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 48)) (.var 3)) (.num
    427)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 98) (.var 3)) (.num
    280)) (.var 3)) (.num 1051)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    425) (.var 3)) (.num 860)) (.var 3)) (.num 1511)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 919) (.var 3)) (.num 1500)) (.var 3)) (.num 1331)) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1106) (.var 3)) (.num 1544)) (.var 3)) (.num
    713)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 752) (.var 3)) (.num
    928)) (.var 3)) (.num 217)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    269) (.var 3)) (.num 300)) (.var 3)) (.num 31)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 39) (.var 3)) (.num 40)) (.var 3)) (.num 1)) (.pow (.var 2) 9))) (.pow
    (.var 0) 5)))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow3200.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow3200.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow3200.leading0 e g v + f * FullLow3200.leading1 e g v +
        f^2 * FullLow3200.remainder e f g v := by
  have hden : denominatorOne FullLow3200.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow3200.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow3200.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 34359738368 18 12 2) lhs =
      value (Encoding4.vars 34359738368 18 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 34359738368 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 18 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 18 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow3200.source e f g v =
      FullLow3200.leading0 e g v + f * FullLow3200.leading1 e g v +
        f^2 * FullLow3200.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 34359738368 18 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow320Encoded0

namespace SPR.N6.Tail.CoreEndpoint.FullLow320
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition0 (e f g v : ℝ) :
    FullLow3200.source e f g v =
      FullLow3200.leading0 e g v + f * FullLow3200.leading1 e g v +
        f^2 * FullLow3200.remainder e f g v :=
  FullLow320Encoded0.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow320
