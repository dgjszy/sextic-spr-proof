import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow311Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^0 layer of FullLow311.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow311Encoded0
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40)
    (.var 1)) (.mul (.num 16) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 16)
    (.var 3)) (.num 576)) (.var 1)) (.mul (.add (.mul (.num 16) (.var 3)) (.num 484)) (.var 2)))
    (.var 1)) (.mul (.num 96) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 232)) (.var 3)) (.num 3652)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 320)) (.var 3)) (.num 4648)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 72)) (.var 3)) (.num 1852))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 16)) (.var 3)) (.num 224)) (.pow
    (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 144) (.var 3)) (.num 1620)) (.var 3)) (.num 13641)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 360) (.var 3)) (.num 2922)) (.var 3)) (.num 23177)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 288) (.var 3)) (.num 1336)) (.var 3)) (.num 13702)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 3)) (.neg (.num 62)))
    (.var 3)) (.num 3210)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 96)) (.var
    3)) (.num 224)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 1128) (.var 3)) (.num 7424)) (.var 3)) (.num 34289))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3384) (.var 3)) (.num 17150)) (.var 3)) (.num
    73151)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3656) (.var 3)) (.num 12606))
    (.var 3)) (.num 57186)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1672) (.var 3)) (.num 2338)) (.var 3)) (.num 19418)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 272) (.var 3)) (.neg (.num 782))) (.var 3)) (.num 2414)) (.pow (.var
    2) 4))) (.var 1)) (.mul (.mul (.neg (.num 240)) (.var 3)) (.pow (.var 2) 5)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 5122) (.var 3)) (.num 24662)) (.var 3)) (.num 63669)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 17927) (.var 3)) (.num 71329)) (.var 3)) (.num 166193)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 24169) (.var 3)) (.num 74953)) (.var 3)) (.num 164873)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15605) (.var 3)) (.num 32563))
    (.var 3)) (.num 75203)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    4801) (.var 3)) (.num 2993)) (.var 3)) (.num 13838)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 560) (.var 3)) (.neg (.num 1604))) (.var 3)) (.neg (.num 124))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 320)) (.var 3)) (.neg (.num 224))) (.pow
    (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 14988) (.var 3)) (.num 59556)) (.var 3)) (.num
    92751)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 59952) (.var 3)) (.num 208896)) (.var
    3)) (.num 293791)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 96401) (.var 3))
    (.num 287125)) (.var 3)) (.num 367145)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 79371) (.var 3)) (.num 192319)) (.var 3)) (.num 225095)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 35087) (.var 3)) (.num 60811)) (.var 3)) (.num 65276))
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
    (.add (.add (.var 0) (.var 1)) (.var 2))) 2)) (.add (.var 1) (.var 2))) (.mul (.mul (.mul
    (.num 2) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num
    20) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 840))
    (.var 1)) (.mul (.add (.mul (.num 40) (.var 3)) (.num 636)) (.var 2))) (.var 1)) (.mul (.num
    96) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 40) (.var 3)) (.num 696)) (.var 3)) (.num 5468)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 100) (.var 3)) (.num 1112)) (.var 3)) (.num 6632)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 80) (.var 3)) (.num 456)) (.var 3)) (.num 2348)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 40)) (.var 3)) (.num 224))
    (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 628) (.var 3)) (.num 5588)) (.var 3)) (.num 22172)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1884) (.var 3)) (.num 12400)) (.var 3)) (.num 38230)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 2044) (.var 3)) (.num 9484)) (.var 3)) (.num 22860))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 948) (.var 3)) (.num 3040))
    (.var 3)) (.num 5590)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 160)
    (.var 3)) (.num 368)) (.var 3)) (.num 488)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4364) (.var 3)) (.num
    26912)) (.var 3)) (.num 63151)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15274) (.var 3))
    (.num 76556)) (.var 3)) (.num 145757)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 20718) (.var 3)) (.num 83684)) (.var 3)) (.num 128813)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 13610) (.var 3)) (.num 44668)) (.var 3)) (.num 55155))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4342) (.var 3)) (.num
    11948)) (.var 3)) (.num 11828)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 540) (.var 3)) (.num 1320)) (.var 3)) (.num 1080)) (.pow (.var 2) 5)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 17636) (.var 3)) (.num 85264)) (.var 3)) (.num 133372)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 70544) (.var 3)) (.num 295312)) (.var 3)) (.num 394575)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 114240) (.var 3)) (.num 414752)) (.var 3)) (.num
    473841)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 95816) (.var 3))
    (.num 304660)) (.var 3)) (.num 298809)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 43908) (.var 3)) (.num 124672)) (.var 3)) (.num 106151)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 10424) (.var 3)) (.num 27196)) (.var 3)) (.num 20560))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1000) (.var 3)) (.num 2480))
    (.var 3)) (.num 1720)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 45744) (.var 3))
    (.num 184030)) (.var 3)) (.num 211111)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 205848)
    (.var 3)) (.num 749162)) (.var 3)) (.num 769903)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 386316) (.var 3)) (.num 1276420)) (.var 3)) (.num 1179139)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 391482) (.var 3)) (.num 1183240)) (.var 3))
    (.num 988707)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 231070) (.var
    3)) (.num 646426)) (.var 3)) (.num 493408)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 79282) (.var 3)) (.num 208422)) (.var 3)) (.num 147290)) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14582) (.var 3)) (.num 36628)) (.var 3)) (.num
    24338)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1100) (.var 3))
    (.num 2680)) (.var 3)) (.num 1696)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 78973) (.var 3)) (.num 272022)) (.var 3)) (.num 245901)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 394865) (.var 3)) (.num 1269480)) (.var 3)) (.num 1067804)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 841114) (.var 3)) (.num 2532112)) (.var 3))
    (.num 1987951)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 995266)
    (.var 3)) (.num 2820184)) (.var 3)) (.num 2076539)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 713957) (.var 3)) (.num 1917690)) (.var 3)) (.num 1332714)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 316873) (.var 3)) (.num 813488))
    (.var 3)) (.num 537539)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    84468) (.var 3)) (.num 209008)) (.var 3)) (.num 132282)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 12228) (.var 3)) (.num 29360)) (.var 3)) (.num 17890)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 720) (.var 3)) (.num 1680)) (.var
    3)) (.num 984)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    90630) (.var 3)) (.num 270930)) (.var 3)) (.num 202986)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 498465) (.var 3)) (.num 1423466)) (.var 3)) (.num 1020395)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1186779) (.var 3)) (.num 3244946)) (.var 3)) (.num
    2229874)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1602018) (.var 3))
    (.num 4207720)) (.var 3)) (.num 2779649)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1347392) (.var 3)) (.num 3413254)) (.var 3)) (.num 2175102)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 729043) (.var 3)) (.num 1789070)) (.var 3))
    (.num 1103817)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 251917)
    (.var 3)) (.num 601298)) (.var 3)) (.num 360342)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 52902) (.var 3)) (.num 123144)) (.var 3)) (.num 71799)) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5970) (.var 3)) (.num 13540)) (.var 3))
    (.num 7664)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 260) (.var 3))
    (.num 568)) (.var 3)) (.num 308)) (.pow (.var 2) 9)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 66649) (.var 3)) (.num 174062)) (.var 3)) (.num 111793)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 399894) (.var 3)) (.num 1015812)) (.var 3)) (.num
    636744)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1051522) (.var 3)) (.num
    2601556)) (.var 3)) (.num 1592972)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1591915) (.var 3)) (.num 3842884)) (.var 3)) (.num 2301520)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1531509) (.var 3)) (.num 3614718)) (.var 3))
    (.num 2120708)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 973380)
    (.var 3)) (.num 2250836)) (.var 3)) (.num 1295550)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 410448) (.var 3)) (.num 931376)) (.var 3)) (.num 526512)) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 111723) (.var 3)) (.num 248912)) (.var
    3)) (.num 138202)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18264)
    (.var 3)) (.num 39880)) (.var 3)) (.num 21699)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1520) (.var 3)) (.num 3228)) (.var 3)) (.num 1708)) (.pow (.var 2)
    9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 80)) (.var 3)) (.num
    40)) (.pow (.var 2) 10)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 28560) (.var 3)) (.num 65316)) (.var 3)) (.num 36756)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 185640) (.var 3)) (.num 419100)) (.var 3)) (.num 233460)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 533966) (.var 3)) (.num 1190694)) (.var 3)) (.num
    656728)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 894773) (.var 3))
    (.num 1972242)) (.var 3)) (.num 1077469)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 966943) (.var 3)) (.num 2108388)) (.var 3)) (.num 1141445)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 703506) (.var 3)) (.num 1518494)) (.var 3))
    (.num 814988)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 348336) (.var
    3)) (.num 744534)) (.var 3)) (.num 396198)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 115479) (.var 3)) (.num 244330)) (.var 3)) (.num 128851)) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24361) (.var 3)) (.num 50936)) (.var 3))
    (.num 26575)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2914) (.var
    3)) (.num 5994)) (.var 3)) (.num 3080)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 146) (.var 3)) (.num 292)) (.var 3)) (.num 146)) (.pow (.var 2) 10))) (.var 1)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5454) (.var 3)) (.num
    10908)) (.var 3)) (.num 5454)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38178) (.var 3))
    (.num 76356)) (.var 3)) (.num 38178)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    119187) (.var 3)) (.num 238374)) (.var 3)) (.num 119187)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 218808) (.var 3)) (.num 437616)) (.var 3)) (.num 218808)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 262003) (.var 3)) (.num 524006))
    (.var 3)) (.num 262003)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    214184) (.var 3)) (.num 428368)) (.var 3)) (.num 214184)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 121277) (.var 3)) (.num 242554)) (.var 3)) (.num 121277)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 47048) (.var 3)) (.num 94096))
    (.var 3)) (.num 47048)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    11987) (.var 3)) (.num 23974)) (.var 3)) (.num 11987)) (.pow (.var 2) 8))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1814) (.var 3)) (.num 3628)) (.var 3)) (.num 1814)) (.pow (.var
    2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 124) (.var 3)) (.num 248)) (.var 3))
    (.num 124)) (.pow (.var 2) 10))) (.pow (.var 1) 2)))) (.var 0)) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.mul (.mul
    (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.pow (.var 0) 2))
    (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var 2)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 24)) (.var 3)) (.num
    20)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num
    28)) (.var 3)) (.num 18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.var 0))) (.pow (.var 0) 3))
    (.mul (.mul (.num 4) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    2) (.var 0)) (.mul (.num 8) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2) (.var
    3)) (.num 4)) (.var 3)) (.num 12)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 8) (.var 3)) (.num 12)) (.var 3)) (.num 8)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 10) (.var 3)) (.num 12)) (.var 3)) (.num 2)) (.pow (.var 2) 4))) (.var
    0)) (.mul (.mul (.add (.mul (.num 4) (.var 3)) (.num 4)) (.var 3)) (.pow (.var 2) 5))) (.pow
    (.var 0) 3))) (.pow (.var 0) 1))) (.mul (.mul (.num 4) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.mul (.num 4) (.var 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 16)) (.var 3)) (.num 8))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20))
    (.var 3)) (.num 10)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.pow (.var 0) 2))) (.pow (.var 0)
    2))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.mul (.mul (.num 6) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 6) (.var 0)) (.mul (.add (.mul (.num 4) (.var 3)) (.num 60)) (.var 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 40)) (.var 3)) (.num 157)) (.pow (.var
    2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 94) (.var 3)) (.num 284)) (.var 3))
    (.num 357)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 393) (.var 3))
    (.num 1136)) (.var 3)) (.num 989)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 807) (.var 3)) (.num 2306)) (.var 3)) (.num 1755)) (.pow (.var 2) 5))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 900) (.var 3)) (.num 2448)) (.var 3)) (.num 1667)) (.pow (.var
    2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 546) (.var 3)) (.num 1356)) (.var 3))
    (.num 827)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 163) (.var 3))
    (.num 360)) (.var 3)) (.num 197)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 17) (.var 3)) (.num 34)) (.var 3)) (.num 17)) (.pow (.var 2) 9))) (.var 0))) (.pow (.var
    0) 3)) (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
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
    (.num 38)) (.pow (.var 2) 9))) (.pow (.var 0) 3))) (.pow (.var 0) 1))) (.mul (.mul (.num 3)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 12) (.var 0)) (.mul (.add (.mul (.num 8) (.var 3)) (.num 134))
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 84)) (.var 3))
    (.num 430)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 190) (.var 3))
    (.num 554)) (.var 3)) (.num 892)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 802) (.var 3)) (.num 2072)) (.var 3)) (.num 1796)) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 1674) (.var 3)) (.num 4172)) (.var 3)) (.num 2886)) (.pow (.var
    2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1918) (.var 3)) (.num 4624)) (.var 3))
    (.num 2878)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1216) (.var 3))
    (.num 2794)) (.var 3)) (.num 1608)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 392) (.var 3)) (.num 844)) (.var 3)) (.num 452)) (.pow (.var 2) 8))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 48) (.var 3)) (.num 96)) (.var 3)) (.num 48)) (.pow (.var
    2) 9))) (.pow (.var 0) 2))) (.pow (.var 0) 2))) (.mul (.num 1) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12)
    (.var 0)) (.mul (.add (.mul (.num 8) (.var 3)) (.num 162)) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 16) (.var 3)) (.num 92)) (.var 3)) (.num 700)) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 194) (.var 3)) (.num 550)) (.var 3)) (.num
    1586)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 834) (.var 3)) (.num
    1794)) (.var 3)) (.num 2300)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 1786) (.var 3)) (.num 3346)) (.var 3)) (.num 2382)) (.pow (.var 2) 5))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 2124) (.var 3)) (.num 3672)) (.var 3)) (.num 1812)) (.pow (.var
    2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1422) (.var 3)) (.num 2338)) (.var 3))
    (.num 950)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 498) (.var 3))
    (.num 794)) (.var 3)) (.num 296)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 70) (.var 3)) (.num 110)) (.var 3)) (.num 40)) (.pow (.var 2) 9))) (.pow (.var 0) 4)))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow3110.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow3110.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow3110.leading0 e g v + f * FullLow3110.leading1 e g v +
        f^2 * FullLow3110.remainder e f g v := by
  have hden : denominatorOne FullLow3110.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow3110.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow3110.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 68719476736 17 12 2) lhs =
      value (Encoding4.vars 68719476736 17 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 68719476736 := by
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
    FullLow3110.source e f g v =
      FullLow3110.leading0 e g v + f * FullLow3110.leading1 e g v +
        f^2 * FullLow3110.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 68719476736 17 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow311Encoded0

namespace SPR.N6.Tail.CoreEndpoint.FullLow311
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition0 (e f g v : ℝ) :
    FullLow3110.source e f g v =
      FullLow3110.leading0 e g v + f * FullLow3110.leading1 e g v +
        f^2 * FullLow3110.remainder e f g v :=
  FullLow311Encoded0.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow311
