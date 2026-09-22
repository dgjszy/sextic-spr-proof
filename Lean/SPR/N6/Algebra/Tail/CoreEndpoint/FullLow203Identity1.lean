import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow203Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^1 layer of FullLow203.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow203Encoded1
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 270) (.var 1)) (.mul (.num 90)
    (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 140) (.var 3)) (.num 2850))
    (.var 1)) (.mul (.add (.mul (.num 140) (.var 3)) (.num 2098)) (.var 2))) (.var 1)) (.mul (.num
    288) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 100) (.var 3)) (.num 1544)) (.var 3)) (.num 13711)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 250) (.var 3)) (.num 2288)) (.var 3)) (.num 15788)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 200) (.var 3)) (.num 744)) (.var 3)) (.num 4873)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 50) (.pow (.var 3) 2)) (.num 296)) (.pow (.var
    2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 1020) (.var 3)) (.num 8344)) (.var 3)) (.num 39911)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3060) (.var 3)) (.num 17048)) (.var 3)) (.num 64225)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 3320) (.var 3)) (.num 11176)) (.var 3)) (.num 33083)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1540) (.var 3)) (.num 2684)) (.var
    3)) (.num 5761)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 260) (.var
    3)) (.num 212)) (.var 3)) (.num 192)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4692) (.var 3)) (.num
    28072)) (.var 3)) (.num 79597)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16422) (.var 3))
    (.num 74742)) (.var 3)) (.num 171175)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 22214) (.var 3)) (.num 74014)) (.var 3)) (.num 133023)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 14480) (.var 3)) (.num 34494)) (.var 3)) (.num 45603))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4546) (.var 3)) (.num 7954))
    (.var 3)) (.num 6886)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 550)
    (.var 3)) (.num 804)) (.var 3)) (.num 428)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12384)
    (.var 3)) (.num 62500)) (.var 3)) (.num 114972)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    49536) (.var 3)) (.num 206528)) (.var 3)) (.num 320967)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 79820) (.var 3)) (.num 272016)) (.var 3)) (.num 351239)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 66084) (.var 3)) (.num 184160)) (.var
    3)) (.num 193381)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 29532)
    (.var 3)) (.num 68744)) (.var 3)) (.num 57611)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 6716) (.var 3)) (.num 13732)) (.var 3)) (.num 9266)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 600) (.var 3)) (.num 1160)) (.var 3)) (.num
    672)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 20076) (.var 3)) (.num 90724))
    (.var 3)) (.num 118966)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90342) (.var 3)) (.num
    357206)) (.var 3)) (.num 416014)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    168432) (.var 3)) (.num 581760)) (.var 3)) (.num 598105)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 167916) (.var 3)) (.num 508876)) (.var 3)) (.num 459899)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 96136) (.var 3)) (.num 258956))
    (.var 3)) (.num 205786)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    31348) (.var 3)) (.num 76774)) (.var 3)) (.num 54119)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 5312) (.var 3)) (.num 12192)) (.var 3)) (.num 7771)) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 350) (.var 3)) (.num 776)) (.var 3))
    (.num 456)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 19673) (.var 3))
    (.num 80960)) (.var 3)) (.num 82263)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 98365)
    (.var 3)) (.num 368108)) (.var 3)) (.num 346465)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 208000) (.var 3)) (.num 708428)) (.var 3)) (.num 616282)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 241810) (.var 3)) (.num 752536)) (.var 3)) (.num
    604841)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 167969) (.var 3))
    (.num 481312)) (.var 3)) (.num 358091)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 70705) (.var 3)) (.num 188636)) (.var 3)) (.num 130481)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 17322) (.var 3)) (.num 43596)) (.var 3)) (.num 28210))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2184) (.var 3)) (.num 5244))
    (.var 3)) (.num 3187)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 100)
    (.var 3)) (.num 228)) (.var 3)) (.num 128)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 10500) (.var 3)) (.num 39822)) (.var 3)) (.num 33402)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 57750) (.var 3)) (.num 204286)) (.var 3)) (.num 163780))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 136526) (.var 3)) (.num 450712))
    (.var 3)) (.num 344798)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    181242) (.var 3)) (.num 559614)) (.var 3)) (.num 408180)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 147940) (.var 3)) (.num 428862)) (.var 3)) (.num 298274)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 76244) (.var 3)) (.num 208540))
    (.var 3)) (.num 138388)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    24392) (.var 3)) (.num 63254)) (.var 3)) (.num 40066)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 4518) (.var 3)) (.num 11132)) (.var 3)) (.num 6718)) (.pow (.var
    2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 406) (.var 3)) (.num 942)) (.var 3))
    (.num 536)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3))
    (.num 20)) (.var 3)) (.num 10)) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 2280) (.var 3)) (.num 8230)) (.var 3)) (.num 5950)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 13680) (.var 3)) (.num 46782)) (.var 3)) (.num 33102)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 35753) (.var 3)) (.num 115714)) (.var 3))
    (.num 79961)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 53365) (.var
    3)) (.num 163418)) (.var 3)) (.num 110053)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 50072) (.var 3)) (.num 145118)) (.var 3)) (.num 95046)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30578) (.var 3)) (.num 83874)) (.var 3)) (.num
    53296)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12121) (.var 3))
    (.num 31414)) (.var 3)) (.num 19293)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 2993) (.var 3)) (.num 7286)) (.var 3)) (.num 4293)) (.pow (.var 2) 7))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 414) (.var 3)) (.num 932)) (.var 3)) (.num 518)) (.pow
    (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 48)) (.var 3))
    (.num 24)) (.pow (.var 2) 9))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add
    (.var 0) (.var 1)) (.var 2))) 3)) (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num 20) (.var 2))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.num 40) (.var 3)) (.num 840)) (.var 1)) (.mul (.add (.mul (.num 40) (.var
    3)) (.num 636)) (.var 2))) (.var 1)) (.mul (.num 96) (.pow (.var 2) 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 696)) (.var
    3)) (.num 5468)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 100) (.var 3)) (.num 1112))
    (.var 3)) (.num 6632)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 80) (.var 3))
    (.num 456)) (.var 3)) (.num 2348)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 20) (.var 3)) (.num 40)) (.var 3)) (.num 224)) (.pow (.var 2) 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 628) (.var 3)) (.num
    5588)) (.var 3)) (.num 22172)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1884) (.var 3))
    (.num 12400)) (.var 3)) (.num 38230)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2044) (.var 3)) (.num 9484)) (.var 3)) (.num 22860)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 948) (.var 3)) (.num 3040)) (.var 3)) (.num 5590)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 160) (.var 3)) (.num 368)) (.var 3)) (.num 488))
    (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 4364) (.var 3)) (.num 26912)) (.var 3)) (.num 63151)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 15274) (.var 3)) (.num 76556)) (.var 3)) (.num 145757))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20718) (.var 3)) (.num 83684)) (.var
    3)) (.num 128813)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13610)
    (.var 3)) (.num 44668)) (.var 3)) (.num 55155)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 4342) (.var 3)) (.num 11948)) (.var 3)) (.num 11828)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 540) (.var 3)) (.num 1320)) (.var 3)) (.num
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
    1) 2)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.mul
    (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.pow (.var 0)
    2)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var
    2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 24)) (.var 3)) (.num
    20)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num
    28)) (.var 3)) (.num 18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.var 0))) (.pow (.var 0) 2))
    (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9)
    (.var 0)) (.mul (.neg (.num 9)) (.var 2))) (.var 0)) (.mul (.add (.mul (.num 5) (.pow (.var 3)
    2)) (.num 2)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 11) (.var 3))
    (.num 38)) (.var 3)) (.num 36)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 7) (.var 3)) (.num 24)) (.var 3)) (.num 17)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1) (.var 3)) (.num 2)) (.var 3)) (.num 1)) (.pow (.var 2) 5)))) (.pow
    (.var 0) 3))) (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 2) (.var 0)) (.mul (.num 4) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 16)) (.var 3)) (.num 8)) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20)) (.var 3)) (.num 10))
    (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 8)) (.var
    3)) (.num 4)) (.pow (.var 2) 5))) (.pow (.var 0) 2))) (.pow (.var 0) 1))) (.mul (.mul (.num 6)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11) (.var 0)) (.mul
    (.num 9) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 7) (.var 3)) (.num 4)) (.var
    3)) (.neg (.num 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 19)
    (.var 3)) (.num 34)) (.var 3)) (.num 18)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 17) (.var 3)) (.num 40)) (.var 3)) (.num 23)) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 5) (.var 3)) (.num 10)) (.var 3)) (.num 5)) (.pow (.var 2)
    5))) (.var 0))) (.pow (.var 0) 2))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.mul (.mul (.num 3) (.mul
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
    (.var 0))) (.pow (.var 0) 2)) (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add
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
    (.var 3)) (.num 3)) (.pow (.var 2) 9)))) (.pow (.var 0) 3))) (.mul (.mul (.num 6) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 12) (.var 0)) (.mul (.add (.mul (.num 8) (.var 3)) (.num 134)) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 84)) (.var 3)) (.num 430))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 190) (.var 3)) (.num 554))
    (.var 3)) (.num 892)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 802)
    (.var 3)) (.num 2072)) (.var 3)) (.num 1796)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1674) (.var 3)) (.num 4172)) (.var 3)) (.num 2886)) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1918) (.var 3)) (.num 4624)) (.var 3)) (.num
    2878)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1216) (.var 3)) (.num
    2794)) (.var 3)) (.num 1608)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 392) (.var 3)) (.num 844)) (.var 3)) (.num 452)) (.pow (.var 2) 8))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 48) (.var 3)) (.num 96)) (.var 3)) (.num 48)) (.pow (.var 2)
    9))) (.pow (.var 0) 2))) (.pow (.var 0) 1))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 66) (.var 0)) (.mul (.add (.mul (.num 36) (.var 3)) (.num 635)) (.var 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 56) (.var 3)) (.num 226)) (.var 3)) (.num 1482)) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 555) (.var 3)) (.num 1120)) (.var
    3)) (.num 1955)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1972) (.var
    3)) (.num 4278)) (.var 3)) (.num 3654)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 3476) (.var 3)) (.num 8562)) (.var 3)) (.num 6327)) (.pow (.var 2) 5))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 3354) (.var 3)) (.num 8716)) (.var 3)) (.num 5964)) (.pow
    (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1773) (.var 3)) (.num 4482)) (.var
    3)) (.num 2807)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 466) (.var
    3)) (.num 1068)) (.var 3)) (.num 602)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 44) (.var 3)) (.num 88)) (.var 3)) (.num 44)) (.pow (.var 2) 9))) (.var 0))) (.pow
    (.var 0) 2))) (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 0)) (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 74)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3))
    (.num 44)) (.var 3)) (.num 275)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 96) (.var 3)) (.num 270)) (.var 3)) (.num 551)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 409) (.var 3)) (.num 932)) (.var 3)) (.num 831)) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 867) (.var 3)) (.num 1830)) (.var 3)) (.num
    1091)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1018) (.var 3)) (.num
    2084)) (.var 3)) (.num 1089)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 670) (.var 3)) (.num 1354)) (.var 3)) (.num 685)) (.pow (.var 2) 7))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 229) (.var 3)) (.num 460)) (.var 3)) (.num 231)) (.pow (.var 2)
    8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 31) (.var 3)) (.num 62)) (.var 3)) (.num
    31)) (.pow (.var 2) 9))) (.pow (.var 0) 3)))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 39) (.var 0)) (.mul (.add (.mul (.num 22) (.var 3)) (.num 423)) (.var 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 36) (.var 3)) (.num 164)) (.var 3)) (.num 1255)) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 376) (.var 3)) (.num 792)) (.var
    3)) (.num 1850)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1408) (.var
    3)) (.num 2680)) (.var 3)) (.num 2271)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 2643) (.var 3)) (.num 5286)) (.var 3)) (.num 3102)) (.pow (.var 2) 5))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 2756) (.var 3)) (.num 5802)) (.var 3)) (.num 3201)) (.pow
    (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1606) (.var 3)) (.num 3446)) (.var
    3)) (.num 1866)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 480) (.var
    3)) (.num 1010)) (.var 3)) (.num 530)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 55) (.var 3)) (.num 110)) (.var 3)) (.num 55)) (.pow (.var 2) 9))) (.pow (.var 0)
    2))) (.pow (.var 0) 1))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow2031.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow2031.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow2031.leading0 e g v + f * FullLow2031.leading1 e g v +
        f^2 * FullLow2031.remainder e f g v := by
  have hden : denominatorOne FullLow2031.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow2031.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow2031.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 68719476736 16 12 2) lhs =
      value (Encoding4.vars 68719476736 16 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 68719476736 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 16 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 16 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow2031.source e f g v =
      FullLow2031.leading0 e g v + f * FullLow2031.leading1 e g v +
        f^2 * FullLow2031.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 68719476736 16 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow203Encoded1

namespace SPR.N6.Tail.CoreEndpoint.FullLow203
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition1 (e f g v : ℝ) :
    FullLow2031.source e f g v =
      FullLow2031.leading0 e g v + f * FullLow2031.leading1 e g v +
        f^2 * FullLow2031.remainder e f g v :=
  FullLow203Encoded1.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow203
