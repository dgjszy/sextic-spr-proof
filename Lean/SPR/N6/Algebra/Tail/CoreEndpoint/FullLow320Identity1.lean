import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow320Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^1 layer of FullLow320.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow320Encoded1
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 9)
    (.var 1)) (.var 0)) (.mul (.add (.mul (.num 157) (.var 1)) (.mul (.num 72) (.var 2))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 10)) (.var 3)) (.num
    1079)) (.var 1)) (.mul (.add (.mul (.neg (.num 17)) (.var 3)) (.num 979)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 7)) (.var 3)) (.num 216)) (.pow (.var 2) 2))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 166)) (.var 3)) (.num
    3842)) (.var 1)) (.mul (.add (.mul (.neg (.num 360)) (.var 3)) (.num 5107)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.neg (.num 248)) (.var 3)) (.num 2171)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 54)) (.var 3)) (.num 294)) (.pow (.var 2) 3))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2)
    (.var 3)) (.neg (.num 1042))) (.var 3)) (.num 7919)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 5) (.var 3)) (.neg (.num 2789))) (.var 3)) (.num 13374)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 4) (.var 3)) (.neg (.num 2704))) (.var 3)) (.num 7795)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.neg (.num 1120)))
    (.var 3)) (.num 1791)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 163)) (.var
    3)) (.num 128)) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 23) (.var 3)) (.neg (.num 2968)))
    (.var 3)) (.num 10429)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 69) (.var 3)) (.neg
    (.num 9728))) (.var 3)) (.num 20267)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    71) (.var 3)) (.neg (.num 12507))) (.var 3)) (.num 12836)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 27) (.var 3)) (.neg (.num 7802))) (.var 3)) (.num 2223)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.neg (.num 2303)))
    (.var 3)) (.neg (.num 466))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 248))
    (.var 3)) (.neg (.num 124))) (.pow (.var 2) 5))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 196) (.var
    3)) (.neg (.num 3554))) (.var 3)) (.num 10296)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    686) (.var 3)) (.neg (.num 14813))) (.var 3)) (.num 22217)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 882) (.var 3)) (.neg (.num 25453))) (.var 3)) (.num 12965)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 490) (.var 3)) (.neg (.num
    22599))) (.var 3)) (.neg (.num 3071))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 98) (.var 3)) (.neg (.num 10647))) (.var 3)) (.neg (.num 5648))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.neg (.num 2443)) (.var 3)) (.neg (.num 1863))) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 201)) (.var 3)) (.neg (.num 180))) (.pow (.var
    2) 6))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 741) (.var 3)) (.neg (.num 144))) (.var
    3)) (.num 9147)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2964) (.var 3)) (.neg (.num
    4530))) (.var 3)) (.num 24060)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4629)
    (.var 3)) (.neg (.num 16415))) (.var 3)) (.num 18338)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 3513) (.var 3)) (.neg (.num 24619))) (.var 3)) (.neg (.num
    3346))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1288) (.var 3))
    (.neg (.num 18635))) (.var 3)) (.neg (.num 11747))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 179) (.var 3)) (.neg (.num 7319))) (.var 3)) (.neg (.num 6197))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 2)) (.var 3)) (.neg (.num
    1356))) (.var 3)) (.neg (.num 1281))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 82)) (.var 3)) (.neg (.num 82))) (.pow (.var 2) 7))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 1218) (.var 3)) (.num 3684)) (.var 3)) (.num 6930)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 5481) (.var 3)) (.num 12882)) (.var 3)) (.num 23553))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10074) (.var 3)) (.num 15178)) (.var
    3)) (.num 28714)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9681)
    (.var 3)) (.num 3529)) (.var 3)) (.num 11680)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 5137) (.var 3)) (.neg (.num 7117))) (.var 3)) (.neg (.num 4929))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1429) (.var 3)) (.neg (.num
    6746))) (.var 3)) (.neg (.num 6629))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 161) (.var 3)) (.neg (.num 2431))) (.var 3)) (.neg (.num 2461))) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 1)) (.var 3)) (.neg (.num 364)))
    (.var 3)) (.neg (.num 363))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num 13))
    (.var 3)) (.neg (.num 13))) (.pow (.var 2) 8))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 870) (.var 3)) (.num 3300)) (.var 3)) (.num 3390)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 4350) (.var 3)) (.num 14622)) (.var 3)) (.num 14208)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 9169) (.var 3)) (.num 26180)) (.var 3)) (.num 23635))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10576) (.var 3)) (.num
    23744)) (.var 3)) (.num 19054)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 7230) (.var 3)) (.num 10701)) (.var 3)) (.num 6401)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 2944) (.var 3)) (.num 1339)) (.var 3)) (.neg (.num 827))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 667) (.var 3)) (.neg (.num 754)))
    (.var 3)) (.neg (.num 1335))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 66) (.var 3)) (.neg (.num 315))) (.var 3)) (.neg (.num 381))) (.pow (.var 2) 7))) (.var
    1)) (.mul (.add (.mul (.neg (.num 37)) (.var 3)) (.neg (.num 37))) (.pow (.var 2) 8))) (.pow
    (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 216) (.var 3)) (.num 948))
    (.var 3)) (.num 732)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1188) (.var 3)) (.num
    4782)) (.var 3)) (.num 3594)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2814)
    (.var 3)) (.num 10134)) (.var 3)) (.num 7320)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 3753) (.var 3)) (.num 11664)) (.var 3)) (.num 7911)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3090) (.var 3)) (.num 7830)) (.var 3)) (.num
    4740)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1617) (.var 3)) (.num
    3020)) (.var 3)) (.num 1403)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 531) (.var 3)) (.num 588)) (.var 3)) (.num 57)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 102) (.var 3)) (.num 30)) (.var 3)) (.neg (.num 72))) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.neg (.num 4)))
    (.var 3)) (.neg (.num 13))) (.pow (.var 2) 8))) (.pow (.var 1) 3)))) (.pow (.mul (.add (.var
    0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.pow (.add (.var 1) (.var 2)) 2))
    (.mul (.mul (.mul (.num 2) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var
    1)) (.mul (.num 16) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 16) (.var
    3)) (.num 576)) (.var 1)) (.mul (.add (.mul (.num 16) (.var 3)) (.num 484)) (.var 2))) (.var
    1)) (.mul (.num 96) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 8) (.var 3)) (.num 232)) (.var 3)) (.num 3652)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 16) (.var 3)) (.num 320)) (.var 3)) (.num 4648)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 72)) (.var 3)) (.num 1852)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 16)) (.var 3)) (.num 224)) (.pow (.var 2)
    3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    144) (.var 3)) (.num 1620)) (.var 3)) (.num 13641)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 360) (.var 3)) (.num 2922)) (.var 3)) (.num 23177)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 288) (.var 3)) (.num 1336)) (.var 3)) (.num 13702)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 3)) (.neg (.num 62))) (.var 3))
    (.num 3210)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 96)) (.var 3)) (.num
    224)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 1128) (.var 3)) (.num 7424)) (.var 3)) (.num 34289)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3384) (.var 3)) (.num 17150)) (.var 3)) (.num 73151))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3656) (.var 3)) (.num 12606)) (.var
    3)) (.num 57186)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1672)
    (.var 3)) (.num 2338)) (.var 3)) (.num 19418)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 272) (.var 3)) (.neg (.num 782))) (.var 3)) (.num 2414)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.mul (.neg (.num 240)) (.var 3)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    5122) (.var 3)) (.num 24662)) (.var 3)) (.num 63669)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 17927) (.var 3)) (.num 71329)) (.var 3)) (.num 166193)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 24169) (.var 3)) (.num 74953)) (.var 3)) (.num 164873)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15605) (.var 3)) (.num 32563)) (.var 3))
    (.num 75203)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4801) (.var
    3)) (.num 2993)) (.var 3)) (.num 13838)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 560) (.var 3)) (.neg (.num 1604))) (.var 3)) (.neg (.num 124))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.neg (.num 320)) (.var 3)) (.neg (.num 224))) (.pow (.var 2)
    6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 14988) (.var 3)) (.num 59556)) (.var 3)) (.num 92751))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 59952) (.var 3)) (.num 208896)) (.var 3)) (.num
    293791)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 96401) (.var 3)) (.num
    287125)) (.var 3)) (.num 367145)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 79371) (.var 3)) (.num 192319)) (.var 3)) (.num 225095)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 35087) (.var 3)) (.num 60811)) (.var 3)) (.num 65276))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7833) (.var 3)) (.num 5045))
    (.var 3)) (.num 4670)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 680)
    (.var 3)) (.neg (.num 1472))) (.var 3)) (.neg (.num 1512))) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.neg (.num 240)) (.var 3)) (.neg (.num 224))) (.pow (.var 2) 7)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 29328) (.var 3)) (.num 100830)) (.var 3)) (.num 106686))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 131976) (.var 3)) (.num 415593)) (.var 3)) (.num
    405886)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 245864) (.var 3)) (.num
    701722)) (.var 3)) (.num 631279)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 244636) (.var 3)) (.num 621786)) (.var 3)) (.num 511851)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 139540) (.var 3)) (.num 304806)) (.var 3)) (.num 224790))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45204) (.var 3)) (.num
    77443)) (.var 3)) (.num 47146)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 7572) (.var 3)) (.num 6942)) (.var 3)) (.num 1254)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 488) (.var 3)) (.neg (.num 618))) (.var 3)) (.neg (.num 1022)))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num 96)) (.var 3)) (.neg (.num 96)))
    (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 38142) (.var 3))
    (.num 114910)) (.var 3)) (.num 92326)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 190710)
    (.var 3)) (.num 542868)) (.var 3)) (.num 413784)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 403367) (.var 3)) (.num 1080429)) (.var 3)) (.num 779411)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 469208) (.var 3)) (.num 1175182)) (.var 3))
    (.num 798779)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 326256) (.var
    3)) (.num 755504)) (.var 3)) (.num 479032)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 137522) (.var 3)) (.num 287554)) (.var 3)) (.num 165814)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33731) (.var 3)) (.num 60023)) (.var 3))
    (.num 29004)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4248) (.var
    3)) (.num 5204)) (.var 3)) (.num 1146)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 192) (.var 3)) (.neg (.num 74))) (.var 3)) (.neg (.num 266))) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 16)) (.var 3)) (.neg (.num 16))) (.pow (.var 2) 9))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 31682) (.var 3)) (.num 83740))
    (.var 3)) (.num 55226)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 174251) (.var 3)) (.num
    445270)) (.var 3)) (.num 285149)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    412079) (.var 3)) (.num 1016474)) (.var 3)) (.num 631165)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 547473) (.var 3)) (.num 1300793)) (.var 3)) (.num 781463)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 447498) (.var 3)) (.num 1020388))
    (.var 3)) (.num 590768)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    231126) (.var 3)) (.num 502167)) (.var 3)) (.num 277951)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 74174) (.var 3)) (.num 151253)) (.var 3)) (.num 78591)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13802) (.var 3)) (.num 25478))
    (.var 3)) (.num 11821)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1251) (.var 3)) (.num 1865)) (.var 3)) (.num 614)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 32) (.var 3)) (.num 12)) (.var 3)) (.neg (.num 20))) (.pow (.var 2)
    9))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 15300) (.var 3))
    (.num 35334)) (.var 3)) (.num 20034)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 91800)
    (.var 3)) (.num 208710)) (.var 3)) (.num 116910)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 239815) (.var 3)) (.num 536526)) (.var 3)) (.num 296711)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 357575) (.var 3)) (.num 786762)) (.var 3)) (.num
    429187)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 334847) (.var 3))
    (.num 723829)) (.var 3)) (.num 388982)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 203738) (.var 3)) (.num 431796)) (.var 3)) (.num 228058)) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 80200) (.var 3)) (.num 165947)) (.var 3)) (.num
    85747)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 19532) (.var 3))
    (.num 39115)) (.var 3)) (.num 19583)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 2626) (.var 3)) (.num 4992)) (.var 3)) (.num 2366)) (.pow (.var 2) 8))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 143) (.var 3)) (.num 245)) (.var 3)) (.num 102)) (.pow
    (.var 2) 9))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 3294) (.var 3)) (.num 6588)) (.var 3)) (.num 3294)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 21411) (.var 3)) (.num 42822)) (.var 3)) (.num 21411)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 61200) (.var 3)) (.num 122400)) (.var 3)) (.num 61200)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 101079) (.var 3)) (.num 202158))
    (.var 3)) (.num 101079)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    106474) (.var 3)) (.num 212948)) (.var 3)) (.num 106474)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 74322) (.var 3)) (.num 148644)) (.var 3)) (.num 74322)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 34448) (.var 3)) (.num 68896))
    (.var 3)) (.num 34448)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    10243) (.var 3)) (.num 20486)) (.var 3)) (.num 10243)) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1776) (.var 3)) (.num 3552)) (.var 3)) (.num 1776)) (.pow (.var
    2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 137) (.var 3)) (.num 274)) (.var 3))
    (.num 137)) (.pow (.var 2) 9))) (.pow (.var 1) 3)))) (.pow (.mul (.add (.var 0) (.var 1))
    (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul
    (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 180) (.var 1)) (.mul (.num 72)
    (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 56) (.var 3)) (.num 2326))
    (.var 1)) (.mul (.add (.mul (.num 56) (.var 3)) (.num 1978)) (.var 2))) (.var 1)) (.mul (.num
    400) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 20) (.var 3)) (.num 592)) (.var 3)) (.num 13244)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 40) (.var 3)) (.num 792)) (.var 3)) (.num 17012)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 144)) (.var 3)) (.num 6892)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.neg (.num 56)) (.var 3)) (.num 864)) (.pow (.var 2) 3))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 248)
    (.var 3)) (.num 2934)) (.var 3)) (.num 43596)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    620) (.var 3)) (.num 4743)) (.var 3)) (.num 74061)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 496) (.var 3)) (.num 1292)) (.var 3)) (.num 44098)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 124) (.var 3)) (.neg (.num 821))) (.var 3))
    (.num 10605)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 304)) (.var 3))
    (.num 816)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 1464) (.var 3)) (.num 9804)) (.var 3)) (.num 93708))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4392) (.var 3)) (.num 19022)) (.var 3)) (.num
    196516)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4728) (.var 3)) (.num 7422))
    (.var 3)) (.num 151098)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2136) (.var 3)) (.neg (.num 5150))) (.var 3)) (.num 50684)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 336) (.var 3)) (.neg (.num 4034))) (.var 3)) (.num 6430))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 680)) (.var 3)) (.num 80)) (.pow
    (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 5268) (.var 3)) (.num 27134)) (.var 3)) (.num 144212))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18438) (.var 3)) (.num 67379)) (.var 3)) (.num
    361973)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24730) (.var 3)) (.num
    48543)) (.var 3)) (.num 340683)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 15730) (.var 3)) (.neg (.num 3376))) (.var 3)) (.num 142650)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 4682) (.var 3)) (.neg (.num 17839))) (.var 3)) (.num
    20913)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 512) (.var 3)) (.neg
    (.num 6965))) (.var 3)) (.neg (.num 1795))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 800)) (.var 3)) (.neg (.num 528))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 12602) (.var 3)) (.num 60450)) (.var 3)) (.num 169980)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 50408) (.var 3)) (.num 192422)) (.var 3)) (.num 509114)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 80605) (.var 3)) (.num 221787)) (.var 3)) (.num
    588116)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 65387) (.var 3))
    (.num 97177)) (.var 3)) (.num 315494)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 28049) (.var 3)) (.neg (.num 7553))) (.var 3)) (.num 64132)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5929) (.var 3)) (.neg (.num 20379))) (.var 3))
    (.neg (.num 7600))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 468)
    (.var 3)) (.neg (.num 5984))) (.var 3)) (.neg (.num 4856))) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.neg (.num 520)) (.var 3)) (.neg (.num 480))) (.pow (.var 2) 7)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 20050) (.var 3)) (.num 92370)) (.var 3)) (.num 154148))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90225) (.var 3)) (.num 357769)) (.var 3)) (.num
    551910)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 167312) (.var 3)) (.num
    551264)) (.var 3)) (.num 792026)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 164542) (.var 3)) (.num 419996)) (.var 3)) (.num 568830)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 91758) (.var 3)) (.num 150454)) (.var 3)) (.num 197092))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 28565) (.var 3)) (.num
    8668)) (.var 3)) (.num 14691)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 4464) (.var 3)) (.neg (.num 10162))) (.var 3)) (.neg (.num 10280))) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 252) (.var 3)) (.neg (.num 2683))) (.var 3))
    (.neg (.num 2745))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num 176)) (.var
    3)) (.neg (.num 176))) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 19754) (.var 3)) (.num 85946)) (.var 3)) (.num 99516)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 98770) (.var 3)) (.num 387500)) (.var 3)) (.num 420754)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 208419) (.var 3)) (.num 727067)) (.var 3)) (.num
    738032)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 241056) (.var 3))
    (.num 730736)) (.var 3)) (.num 688772)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 165818) (.var 3)) (.num 417734)) (.var 3)) (.num 358842)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 68592) (.var 3)) (.num 128812)) (.var 3)) (.num
    94182)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16273) (.var 3))
    (.num 14923)) (.var 3)) (.num 4508)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1918) (.var 3)) (.neg (.num 1944))) (.var 3)) (.neg (.num 3448))) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 3)) (.neg (.num 590))) (.var 3))
    (.neg (.num 662))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.neg (.num 24)) (.var 3))
    (.neg (.num 24))) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 10548) (.var 3)) (.num 43560)) (.var 3)) (.num 39348)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 58014) (.var 3)) (.num 222012)) (.var 3)) (.num 192258)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 137248) (.var 3)) (.num 483096)) (.var 3)) (.num
    399388)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 182511) (.var 3))
    (.num 584743)) (.var 3)) (.num 458518)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 149428) (.var 3)) (.num 428534)) (.var 3)) (.num 314862)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 77378) (.var 3)) (.num 192533)) (.var 3)) (.num
    128975)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24922) (.var 3))
    (.num 50207)) (.var 3)) (.num 28309)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 4649) (.var 3)) (.num 6157)) (.var 3)) (.num 1798)) (.pow (.var 2) 7))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 414) (.var 3)) (.neg (.num 3))) (.var 3)) (.neg (.num
    417))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.neg
    (.num 51))) (.var 3)) (.neg (.num 59))) (.pow (.var 2) 9))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 2268) (.var 3)) (.num 9270)) (.var 3)) (.num 7002))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13608) (.var 3)) (.num 52326)) (.var 3)) (.num
    38718)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 35644) (.var 3)) (.num
    128184)) (.var 3)) (.num 92540)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 53480) (.var 3)) (.num 178572)) (.var 3)) (.num 125092)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 50655) (.var 3)) (.num 155445)) (.var 3)) (.num 104790))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 31428) (.var 3)) (.num
    87176)) (.var 3)) (.num 55748)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 12791) (.var 3)) (.num 31129)) (.var 3)) (.num 18338)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 3303) (.var 3)) (.num 6657)) (.var 3)) (.num 3354)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 494) (.var 3)) (.num 728)) (.var
    3)) (.num 234)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33) (.var
    3)) (.num 25)) (.var 3)) (.neg (.num 8))) (.pow (.var 2) 9))) (.pow (.var 1) 2)))) (.var 0))
    (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.add (.var
    1) (.var 2)))) (.mul (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
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
    1) 2)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))) 2))) (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 270) (.var
    1)) (.mul (.num 90) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 140) (.var
    3)) (.num 3300)) (.var 1)) (.mul (.add (.mul (.num 140) (.var 3)) (.num 2422)) (.var 2)))
    (.var 1)) (.mul (.num 342) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 100) (.var 3)) (.num 1796)) (.var 3)) (.num 18635)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 250) (.var 3)) (.num 2652)) (.var 3)) (.num 21348)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 200) (.var 3)) (.num 856)) (.var 3)) (.num
    6709)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 50) (.pow (.var 3) 2)) (.num
    456)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 1210) (.var 3)) (.num 11388)) (.var 3)) (.num 64677)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 3630) (.var 3)) (.num 23092)) (.var 3)) (.num 103128)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3940) (.var 3)) (.num 14988)) (.var 3))
    (.num 53523)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1830) (.var
    3)) (.num 3552)) (.var 3)) (.num 9784)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 310) (.var 3)) (.num 268)) (.var 3)) (.num 412)) (.pow (.var 2) 4)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    6708) (.var 3)) (.num 45720)) (.var 3)) (.num 155956)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 23478) (.var 3)) (.num 120462)) (.var 3)) (.num 329941)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 31806) (.var 3)) (.num 118078)) (.var 3)) (.num 254911)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20820) (.var 3)) (.num 54614))
    (.var 3)) (.num 88381)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    6594) (.var 3)) (.num 12542)) (.var 3)) (.num 13855)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 810) (.var 3)) (.num 1264)) (.var 3)) (.num 900)) (.pow (.var 2)
    5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 21922) (.var 3)) (.num 124572)) (.var 3)) (.num 277072)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 87688) (.var 3)) (.num 406784)) (.var 3)) (.num 755222))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 141650) (.var 3)) (.num 530962))
    (.var 3)) (.num 813176)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    118042) (.var 3)) (.num 358374)) (.var 3)) (.num 445482)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 53426) (.var 3)) (.num 134634)) (.var 3)) (.num 134174)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12418) (.var 3)) (.num 27406))
    (.var 3)) (.num 22218)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1150) (.var 3)) (.num 2396)) (.var 3)) (.num 1680)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 45760) (.var 3)) (.num 231034)) (.var 3)) (.num 364706)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 205920) (.var 3)) (.num 898974)) (.var 3)) (.num 1240326)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 385244) (.var 3)) (.num 1453804)) (.var 3))
    (.num 1748090)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 387394)
    (.var 3)) (.num 1272568)) (.var 3)) (.num 1332906)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 225418) (.var 3)) (.num 655522)) (.var 3)) (.num 601167)) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 75540) (.var 3)) (.num 199854)) (.var
    3)) (.num 162848)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13382)
    (.var 3)) (.num 33340)) (.var 3)) (.num 24729)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 950) (.var 3)) (.num 2304)) (.var 3)) (.num 1592)) (.pow (.var 2)
    7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 61706) (.var 3)) (.num 283052)) (.var 3))
    (.num 342494)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 308530) (.var 3)) (.num 1273074))
    (.var 3)) (.num 1402978)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 655140)
    (.var 3)) (.num 2437996)) (.var 3)) (.num 2448644)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 769380) (.var 3)) (.num 2599436)) (.var 3)) (.num 2386690)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 544464) (.var 3)) (.num 1689080))
    (.var 3)) (.num 1426357)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    236388) (.var 3)) (.num 683846)) (.var 3)) (.num 536032)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 60892) (.var 3)) (.num 167192)) (.var 3)) (.num 122981)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8354) (.var 3)) (.num 22120))
    (.var 3)) (.num 15392)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 450)
    (.var 3)) (.num 1156)) (.var 3)) (.num 756)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 51556) (.var 3)) (.num 216962)) (.var 3)) (.num 213802)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 283558) (.var 3)) (.num 1102708)) (.var 3)) (.num
    1021926)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 673394) (.var 3)) (.num
    2426648)) (.var 3)) (.num 2116814)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 903588) (.var 3)) (.num 3032696)) (.var 3)) (.num 2495996)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 751972) (.var 3)) (.num 2367930)) (.var 3))
    (.num 1845672)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 400064)
    (.var 3)) (.num 1192686)) (.var 3)) (.num 884589)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 134700) (.var 3)) (.num 383774)) (.var 3)) (.num 272121)) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 27172) (.var 3)) (.num 74530)) (.var 3))
    (.num 50643)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2870) (.var
    3)) (.num 7578)) (.var 3)) (.num 4907)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 110) (.var 3)) (.num 272)) (.var 3)) (.num 162)) (.pow (.var 2) 9)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 23934) (.var 3)) (.num 93840))
    (.var 3)) (.num 78666)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 143604) (.var 3)) (.num
    529836)) (.var 3)) (.num 427884)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    377048) (.var 3)) (.num 1311524)) (.var 3)) (.num 1020352)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 568870) (.var 3)) (.num 1871382)) (.var 3)) (.num
    1403614)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 544044) (.var 3))
    (.num 1699756)) (.var 3)) (.num 1230710)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 342600) (.var 3)) (.num 1021376)) (.var 3)) (.num 714964)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 142498) (.var 3)) (.num 407042)) (.var 3))
    (.num 275712)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38004) (.var
    3)) (.num 104192)) (.var 3)) (.num 68214)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 6014) (.var 3)) (.num 15754)) (.var 3)) (.num 9906)) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 470) (.var 3)) (.num 1150)) (.var 3)) (.num
    680)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num
    20)) (.var 3)) (.num 10)) (.pow (.var 2) 10)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 4644) (.var 3)) (.num 17484)) (.var 3)) (.num 12840)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 30186) (.var 3)) (.num 108192)) (.var 3)) (.num 78006))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 86804) (.var 3)) (.num 296370)) (.var
    3)) (.num 209566)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 145376)
    (.var 3)) (.num 473448)) (.var 3)) (.num 328072)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 156970) (.var 3)) (.num 488442)) (.var 3)) (.num 331472)) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 114114) (.var 3)) (.num 339710)) (.var
    3)) (.num 225596)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 56508)
    (.var 3)) (.num 160878)) (.var 3)) (.num 104370)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 18786) (.var 3)) (.num 50944)) (.var 3)) (.num 32158)) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4000) (.var 3)) (.num 10214)) (.var 3))
    (.num 6214)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 490) (.var 3))
    (.num 1146)) (.var 3)) (.num 656)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 26) (.var 3)) (.num 52)) (.var 3)) (.num 26)) (.pow (.var 2) 10))) (.var 1)))) (.pow
    (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    2)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.mul
    (.mul (.num 24) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.pow (.var 0)
    2)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var
    2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 24)) (.var 3)) (.num
    20)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num
    28)) (.var 3)) (.num 18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.var 0))) (.pow (.var 0) 3))
    (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9)
    (.var 0)) (.mul (.neg (.num 9)) (.var 2))) (.var 0)) (.mul (.add (.mul (.num 5) (.pow (.var 3)
    2)) (.num 2)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 11) (.var 3))
    (.num 38)) (.var 3)) (.num 36)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 7) (.var 3)) (.num 24)) (.var 3)) (.num 17)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1) (.var 3)) (.num 2)) (.var 3)) (.num 1)) (.pow (.var 2) 5)))) (.pow
    (.var 0) 4))) (.mul (.mul (.num 8) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 2) (.var 0)) (.mul (.num 8) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 12)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 8) (.var 3)) (.num 12)) (.var 3)) (.num 8)) (.pow (.var 2) 3))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 12)) (.var 3)) (.num 2)) (.pow
    (.var 2) 4))) (.var 0)) (.mul (.mul (.add (.mul (.num 4) (.var 3)) (.num 4)) (.var 3)) (.pow
    (.var 2) 5))) (.pow (.var 0) 3))) (.pow (.var 0) 1))) (.mul (.mul (.num 4) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13) (.var 0)) (.mul (.num 35) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.num 8)) (.var 3)) (.num 30))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27) (.var 3)) (.num 28))
    (.var 3)) (.num 10)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27)
    (.var 3)) (.num 32)) (.var 3)) (.num 5)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 9) (.var 3)) (.num 12)) (.var 3)) (.num 3)) (.pow (.var 2) 5))) (.pow (.var 0)
    2))) (.pow (.var 0) 2))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.mul (.mul (.num 12) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 6) (.var 0)) (.mul (.add (.mul (.num 4) (.var 3)) (.num 60)) (.var
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 40)) (.var 3)) (.num
    157)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 94) (.var 3)) (.num
    284)) (.var 3)) (.num 357)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    393) (.var 3)) (.num 1136)) (.var 3)) (.num 989)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 807) (.var 3)) (.num 2306)) (.var 3)) (.num 1755)) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 900) (.var 3)) (.num 2448)) (.var 3)) (.num
    1667)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 546) (.var 3)) (.num
    1356)) (.var 3)) (.num 827)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    163) (.var 3)) (.num 360)) (.var 3)) (.num 197)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 17) (.var 3)) (.num 34)) (.var 3)) (.num 17)) (.pow (.var 2) 9)))
    (.var 0))) (.pow (.var 0) 3)) (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 27) (.var 0)) (.mul
    (.add (.mul (.num 14) (.var 3)) (.num 226)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 20) (.var 3)) (.num 66)) (.var 3)) (.num 352)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 181) (.var 3)) (.num 314)) (.var 3)) (.num 346)) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 580) (.var 3)) (.num 1384)) (.var 3)) (.num
    1291)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 893) (.var 3)) (.num
    2728)) (.var 3)) (.num 2453)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 716) (.var 3)) (.num 2382)) (.var 3)) (.num 1942)) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 291) (.var 3)) (.num 930)) (.var 3)) (.num 676)) (.pow (.var 2)
    7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 52) (.var 3)) (.num 144)) (.var 3)) (.num
    92)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 6))
    (.var 3)) (.num 3)) (.pow (.var 2) 9)))) (.pow (.var 0) 4))) (.mul (.mul (.num 6) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 12) (.var 0)) (.mul (.add (.mul (.num 8) (.var 3)) (.num 148)) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 88)) (.var 3)) (.num 576))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 192) (.var 3)) (.num 564))
    (.var 3)) (.num 1344)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 818)
    (.var 3)) (.num 2008)) (.var 3)) (.num 2360)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1726) (.var 3)) (.num 3906)) (.var 3)) (.num 3050)) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2006) (.var 3)) (.num 4252)) (.var 3)) (.num
    2600)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1298) (.var 3)) (.num
    2564)) (.var 3)) (.num 1324)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 432) (.var 3)) (.num 788)) (.var 3)) (.num 356)) (.pow (.var 2) 8))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 56) (.var 3)) (.num 94)) (.var 3)) (.num 38)) (.pow (.var 2)
    9))) (.pow (.var 0) 3))) (.pow (.var 0) 1))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 78) (.var 0)) (.mul (.add (.mul (.num 44) (.var 3)) (.num 846)) (.var 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 72) (.var 3)) (.num 328)) (.var 3)) (.num 2627)) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 752) (.var 3)) (.num 1668)) (.var
    3)) (.num 4693)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2816) (.var
    3)) (.num 5810)) (.var 3)) (.num 7054)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 5268) (.var 3)) (.num 11220)) (.var 3)) (.num 8872)) (.pow (.var 2) 5))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 5460) (.var 3)) (.num 11764)) (.var 3)) (.num 7483)) (.pow
    (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3160) (.var 3)) (.num 6620)) (.var
    3)) (.num 3649)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 940) (.var
    3)) (.num 1842)) (.var 3)) (.num 902)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 108) (.var 3)) (.num 192)) (.var 3)) (.num 84)) (.pow (.var 2) 9))) (.pow (.var 0)
    2))) (.pow (.var 0) 2))) (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 51) (.var 0)) (.mul (.add
    (.mul (.num 30) (.var 3)) (.num 676)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    52) (.var 3)) (.num 278)) (.var 3)) (.num 2851)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 579) (.var 3)) (.num 1346)) (.var 3)) (.num 5987)) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2300) (.var 3)) (.num 3828)) (.var 3)) (.num
    7293)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4599) (.var 3)) (.num
    6544)) (.var 3)) (.num 5551)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 5156) (.var 3)) (.num 6766)) (.var 3)) (.num 2801)) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 3281) (.var 3)) (.num 4122)) (.var 3)) (.num 1001)) (.pow (.var
    2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1100) (.var 3)) (.num 1352)) (.var 3))
    (.num 252)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 149) (.var 3))
    (.num 182)) (.var 3)) (.num 33)) (.pow (.var 2) 9))) (.pow (.var 0) 4)))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow3201.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow3201.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow3201.leading0 e g v + f * FullLow3201.leading1 e g v +
        f^2 * FullLow3201.remainder e f g v := by
  have hden : denominatorOne FullLow3201.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow3201.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow3201.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 137438953472 17 12 2) lhs =
      value (Encoding4.vars 137438953472 17 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 137438953472 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 17 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 17 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow3201.source e f g v =
      FullLow3201.leading0 e g v + f * FullLow3201.leading1 e g v +
        f^2 * FullLow3201.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 137438953472 17 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow320Encoded1

namespace SPR.N6.Tail.CoreEndpoint.FullLow320
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition1 (e f g v : ℝ) :
    FullLow3201.source e f g v =
      FullLow3201.leading0 e g v + f * FullLow3201.leading1 e g v +
        f^2 * FullLow3201.remainder e f g v :=
  FullLow320Encoded1.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow320
