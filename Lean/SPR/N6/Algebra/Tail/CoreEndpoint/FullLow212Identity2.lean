import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow212Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^2 layer of FullLow212.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow212Encoded2
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.add (.add (.add (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 450)
    (.var 1)) (.mul (.num 180) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 96)
    (.var 3)) (.num 4530)) (.var 1)) (.mul (.add (.mul (.num 96) (.var 3)) (.num 3846)) (.var 2)))
    (.var 1)) (.mul (.num 768) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 18) (.var 3)) (.num 636)) (.var 3)) (.num 19530)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 36) (.var 3)) (.num 780)) (.var 3)) (.num 24816)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18) (.var 3)) (.num 48)) (.var 3)) (.num
    9792)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 96)) (.var 3)) (.num 1176))
    (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 180) (.var 3)) (.num 1560)) (.var 3)) (.num 45489)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 450) (.var 3)) (.num 1476)) (.var 3)) (.num 75051)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 360) (.var 3)) (.neg (.num 1428))) (.var 3)) (.num
    42390)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90) (.var 3)) (.neg
    (.num 1740))) (.var 3)) (.num 9324)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 396)) (.var 3)) (.num 612)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 882) (.var 3)) (.num 1644)) (.var
    3)) (.num 63775)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2646) (.var 3)) (.neg (.num
    2112))) (.var 3)) (.num 125680)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2844) (.var 3)) (.neg (.num 12177))) (.var 3)) (.num 85988)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1278) (.var 3)) (.neg (.num 12750))) (.var 3)) (.num
    22442)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 198) (.var 3)) (.neg
    (.num 4953))) (.var 3)) (.num 945)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 624)) (.var 3)) (.neg (.num 252))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2484)
    (.var 3)) (.num 3724)) (.var 3)) (.num 60385)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    8694) (.var 3)) (.neg (.num 160))) (.var 3)) (.num 137829)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 11646) (.var 3)) (.neg (.num 22248))) (.var 3)) (.num 106130)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7380) (.var 3)) (.neg (.num
    33782))) (.var 3)) (.num 23885)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2178) (.var 3)) (.neg (.num 20140))) (.var 3)) (.neg (.num 7237))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 234) (.var 3)) (.neg (.num 5178))) (.var 3))
    (.neg (.num 3852))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 456)) (.var
    3)) (.neg (.num 408))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4443) (.var 3))
    (.num 11434)) (.var 3)) (.num 42844)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17772)
    (.var 3)) (.num 30666)) (.var 3)) (.num 118123)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 28323) (.var 3)) (.num 20827)) (.var 3)) (.num 114482)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 22767) (.var 3)) (.neg (.num 11909))) (.var 3)) (.num
    36567)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9582) (.var 3))
    (.neg (.num 22659))) (.var 3)) (.neg (.num 10414))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1953) (.var 3)) (.neg (.num 11273))) (.var 3)) (.neg (.num 10022)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 144) (.var 3)) (.neg (.num
    2262))) (.var 3)) (.neg (.num 2250))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 144)) (.var 3)) (.neg (.num 144))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 4578) (.var 3)) (.num 13368)) (.var 3)) (.num 21300)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 20601) (.var 3)) (.num 51490)) (.var 3)) (.num 73715)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38064) (.var 3)) (.num 77722)) (.var 3)) (.num
    98858)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 37086) (.var 3))
    (.num 56158)) (.var 3)) (.num 61559)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 20286) (.var 3)) (.num 17062)) (.var 3)) (.num 13536)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 6069) (.var 3)) (.neg (.num 1058))) (.var 3)) (.neg
    (.num 3689))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 864) (.var 3))
    (.neg (.num 1916))) (.var 3)) (.neg (.num 2499))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 36) (.var 3)) (.neg (.num 366))) (.var 3)) (.neg (.num 402))) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg (.num 12))) (.pow
    (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1944) (.var 3)) (.num 4984))
    (.var 3)) (.num 5120)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9720) (.var 3)) (.num
    23264)) (.var 3)) (.num 21712)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    20460) (.var 3)) (.num 45326)) (.var 3)) (.num 37995)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 23520) (.var 3)) (.num 47572)) (.var 3)) (.num 35198)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15975) (.var 3)) (.num 28771))
    (.var 3)) (.num 18123)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    6429) (.var 3)) (.num 9755)) (.var 3)) (.num 4698)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1425) (.var 3)) (.num 1530)) (.var 3)) (.num 255)) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 135) (.var 3)) (.neg (.num 1))) (.var 3)) (.neg
    (.num 136))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num 21)) (.var 3)) (.neg
    (.num 21))) (.pow (.var 2) 8))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add
    (.var 0) (.var 1)) (.var 2))) 3)) (.add (.var 1) (.var 2))) (.mul (.mul (.num 6) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 270) (.var 1)) (.mul (.num 90) (.var 2))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.num 140) (.var 3)) (.num 2850)) (.var 1)) (.mul (.add (.mul (.num 140)
    (.var 3)) (.num 2098)) (.var 2))) (.var 1)) (.mul (.num 288) (.pow (.var 2) 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 100) (.var 3)) (.num 1544))
    (.var 3)) (.num 13711)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 250) (.var 3)) (.num
    2288)) (.var 3)) (.num 15788)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 200)
    (.var 3)) (.num 744)) (.var 3)) (.num 4873)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.num 50) (.pow (.var 3) 2)) (.num 296)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1020) (.var 3)) (.num 8344)) (.var
    3)) (.num 39911)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3060) (.var 3)) (.num 17048))
    (.var 3)) (.num 64225)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3320) (.var
    3)) (.num 11176)) (.var 3)) (.num 33083)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1540) (.var 3)) (.num 2684)) (.var 3)) (.num 5761)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 260) (.var 3)) (.num 212)) (.var 3)) (.num 192))
    (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 4692) (.var 3)) (.num 28072)) (.var 3)) (.num 79597)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 16422) (.var 3)) (.num 74742)) (.var 3)) (.num 171175))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 22214) (.var 3)) (.num 74014)) (.var
    3)) (.num 133023)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14480)
    (.var 3)) (.num 34494)) (.var 3)) (.num 45603)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 4546) (.var 3)) (.num 7954)) (.var 3)) (.num 6886)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 550) (.var 3)) (.num 804)) (.var 3)) (.num
    428)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12384) (.var 3)) (.num 62500)) (.var 3)) (.num
    114972)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 49536) (.var 3)) (.num 206528)) (.var
    3)) (.num 320967)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 79820) (.var 3))
    (.num 272016)) (.var 3)) (.num 351239)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 66084) (.var 3)) (.num 184160)) (.var 3)) (.num 193381)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 29532) (.var 3)) (.num 68744)) (.var 3)) (.num 57611))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6716) (.var 3)) (.num
    13732)) (.var 3)) (.num 9266)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 600) (.var 3)) (.num 1160)) (.var 3)) (.num 672)) (.pow (.var 2) 6)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 20076) (.var 3)) (.num 90724)) (.var 3)) (.num 118966)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 90342) (.var 3)) (.num 357206)) (.var 3)) (.num 416014)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 168432) (.var 3)) (.num 581760)) (.var 3))
    (.num 598105)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 167916) (.var
    3)) (.num 508876)) (.var 3)) (.num 459899)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 96136) (.var 3)) (.num 258956)) (.var 3)) (.num 205786)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 31348) (.var 3)) (.num 76774)) (.var 3)) (.num
    54119)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5312) (.var 3))
    (.num 12192)) (.var 3)) (.num 7771)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 350) (.var 3)) (.num 776)) (.var 3)) (.num 456)) (.pow (.var 2) 7)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 19673) (.var 3)) (.num 80960)) (.var 3)) (.num 82263))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 98365) (.var 3)) (.num 368108)) (.var 3)) (.num
    346465)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 208000) (.var 3)) (.num
    708428)) (.var 3)) (.num 616282)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 241810) (.var 3)) (.num 752536)) (.var 3)) (.num 604841)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 167969) (.var 3)) (.num 481312)) (.var 3)) (.num 358091))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 70705) (.var 3)) (.num
    188636)) (.var 3)) (.num 130481)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 17322) (.var 3)) (.num 43596)) (.var 3)) (.num 28210)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 2184) (.var 3)) (.num 5244)) (.var 3)) (.num 3187)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 100) (.var 3)) (.num 228)) (.var
    3)) (.num 128)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    10500) (.var 3)) (.num 39822)) (.var 3)) (.num 33402)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 57750) (.var 3)) (.num 204286)) (.var 3)) (.num 163780)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 136526) (.var 3)) (.num 450712)) (.var 3)) (.num 344798)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 181242) (.var 3)) (.num 559614))
    (.var 3)) (.num 408180)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    147940) (.var 3)) (.num 428862)) (.var 3)) (.num 298274)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 76244) (.var 3)) (.num 208540)) (.var 3)) (.num 138388)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24392) (.var 3)) (.num 63254))
    (.var 3)) (.num 40066)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    4518) (.var 3)) (.num 11132)) (.var 3)) (.num 6718)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 406) (.var 3)) (.num 942)) (.var 3)) (.num 536)) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20)) (.var 3)) (.num 10))
    (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2280)
    (.var 3)) (.num 8230)) (.var 3)) (.num 5950)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    13680) (.var 3)) (.num 46782)) (.var 3)) (.num 33102)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 35753) (.var 3)) (.num 115714)) (.var 3)) (.num 79961)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 53365) (.var 3)) (.num 163418)) (.var 3)) (.num
    110053)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50072) (.var 3))
    (.num 145118)) (.var 3)) (.num 95046)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 30578) (.var 3)) (.num 83874)) (.var 3)) (.num 53296)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 12121) (.var 3)) (.num 31414)) (.var 3)) (.num 19293))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2993) (.var 3)) (.num 7286))
    (.var 3)) (.num 4293)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 414)
    (.var 3)) (.num 932)) (.var 3)) (.num 518)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 24) (.var 3)) (.num 48)) (.var 3)) (.num 24)) (.pow (.var 2) 9))) (.var
    1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)))
    (.mul (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 450) (.var 1)) (.mul (.num 150) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 160) (.var 3)) (.num 4230)) (.var 1))
    (.mul (.add (.mul (.num 160) (.var 3)) (.num 3020)) (.var 2))) (.var 1)) (.mul (.num 390)
    (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 60) (.var 3)) (.num 1376)) (.var 3)) (.num 17765)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 150) (.var 3)) (.num 1832)) (.var 3)) (.num 19276)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 120) (.var 3)) (.num 356)) (.var 3)) (.num 5129)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.neg (.num 100))) (.var 3))
    (.num 118)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 588) (.var 3)) (.num 5832)) (.var 3)) (.num 43505)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1764) (.var 3)) (.num 10224)) (.var 3)) (.num 63820))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1914) (.var 3)) (.num 4420)) (.var
    3)) (.num 26449)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 888) (.var
    3)) (.neg (.num 204))) (.var 3)) (.num 1668)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 150) (.var 3)) (.neg (.num 232))) (.var 3)) (.neg (.num 466))) (.pow (.var
    2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 2580) (.var 3)) (.num 15960)) (.var 3)) (.num 70491)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 9030) (.var 3)) (.num 37164)) (.var 3)) (.num 135518)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12210) (.var 3)) (.num 28664)) (.var 3)) (.num
    84085)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7950) (.var 3))
    (.num 7836)) (.var 3)) (.num 15484)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 2490) (.var 3)) (.num 336)) (.var 3)) (.neg (.num 1504))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 300) (.var 3)) (.neg (.num 40))) (.var 3)) (.neg
    (.num 430))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6312) (.var 3)) (.num 30528)) (.var 3))
    (.num 80845)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 25248) (.var 3)) (.num 92928))
    (.var 3)) (.num 203849)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40662) (.var
    3)) (.num 108626)) (.var 3)) (.num 189076)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 33618) (.var 3)) (.num 62298)) (.var 3)) (.num 77953)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14982) (.var 3)) (.num 19062)) (.var 3)) (.num
    13251)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3390) (.var 3))
    (.num 3262)) (.var 3)) (.num 556)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 300) (.var 3)) (.num 272)) (.var 3)) (.neg (.num 14))) (.pow (.var 2) 6)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 9108) (.var 3)) (.num 37828)) (.var 3)) (.num 64291)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 40986) (.var 3)) (.num 143296)) (.var 3)) (.num 208943)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 76332) (.var 3)) (.num 222168)) (.var 3))
    (.num 272360)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 75894) (.var
    3)) (.num 183314)) (.var 3)) (.num 184063)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 43230) (.var 3)) (.num 87750)) (.var 3)) (.num 70086)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13974) (.var 3)) (.num 24694)) (.var 3)) (.num
    15428)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2334) (.var 3))
    (.num 3794)) (.var 3)) (.num 1895)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 150) (.var 3)) (.num 236)) (.var 3)) (.num 98)) (.pow (.var 2) 7)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 7257) (.var 3)) (.num 25734)) (.var 3)) (.num 31089))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36285) (.var 3)) (.num 115740)) (.var 3)) (.num
    125016)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 76626) (.var 3)) (.num
    219786)) (.var 3)) (.num 210888)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 88794) (.var 3)) (.num 229960)) (.var 3)) (.num 195164)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 61299) (.var 3)) (.num 144756)) (.var 3)) (.num 108615))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 25515) (.var 3)) (.num
    55806)) (.var 3)) (.num 37214)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 6120) (.var 3)) (.num 12632)) (.var 3)) (.num 7564)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 738) (.var 3)) (.num 1458)) (.var 3)) (.num 788)) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.num 56)) (.var 3)) (.num
    26)) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2430) (.var 3))
    (.num 7068)) (.var 3)) (.num 6678)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13365) (.var
    3)) (.num 36594)) (.var 3)) (.num 31851)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 31563) (.var 3)) (.num 81524)) (.var 3)) (.num 65267)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 41796) (.var 3)) (.num 102250)) (.var 3)) (.num 75358))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33948) (.var 3)) (.num
    79148)) (.var 3)) (.num 53876)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 17325) (.var 3)) (.num 38804)) (.var 3)) (.num 24525)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 5427) (.var 3)) (.num 11782)) (.var 3)) (.num 6957)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 954) (.var 3)) (.num 2024)) (.var
    3)) (.num 1122)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var
    3)) (.num 150)) (.var 3)) (.num 78)) (.pow (.var 2) 8))) (.var 1)))) (.var 0)) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3))) (.mul (.mul (.mul
    (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 180) (.var 1)) (.mul (.num 72) (.var
    2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 56) (.var 3)) (.num 2326)) (.var 1))
    (.mul (.add (.mul (.num 56) (.var 3)) (.num 1978)) (.var 2))) (.var 1)) (.mul (.num 400) (.pow
    (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 20)
    (.var 3)) (.num 592)) (.var 3)) (.num 13244)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    40) (.var 3)) (.num 792)) (.var 3)) (.num 17012)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 20) (.var 3)) (.num 144)) (.var 3)) (.num 6892)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 56)) (.var 3)) (.num 864)) (.pow (.var 2) 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 248) (.var 3)) (.num
    2934)) (.var 3)) (.num 43596)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 620) (.var 3))
    (.num 4743)) (.var 3)) (.num 74061)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    496) (.var 3)) (.num 1292)) (.var 3)) (.num 44098)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 124) (.var 3)) (.neg (.num 821))) (.var 3)) (.num 10605)) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 304)) (.var 3)) (.num 816)) (.pow (.var 2)
    4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 1464) (.var 3)) (.num 9804)) (.var 3)) (.num 93708)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 4392) (.var 3)) (.num 19022)) (.var 3)) (.num 196516)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 4728) (.var 3)) (.num 7422)) (.var 3)) (.num 151098))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2136) (.var 3)) (.neg (.num
    5150))) (.var 3)) (.num 50684)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 336) (.var 3)) (.neg (.num 4034))) (.var 3)) (.num 6430)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.neg (.num 680)) (.var 3)) (.num 80)) (.pow (.var 2) 5)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 5268) (.var 3)) (.num 27134)) (.var 3)) (.num 144212)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 18438) (.var 3)) (.num 67379)) (.var 3)) (.num 361973)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 24730) (.var 3)) (.num 48543)) (.var 3)) (.num 340683)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15730) (.var 3)) (.neg (.num
    3376))) (.var 3)) (.num 142650)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 4682) (.var 3)) (.neg (.num 17839))) (.var 3)) (.num 20913)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 512) (.var 3)) (.neg (.num 6965))) (.var 3)) (.neg
    (.num 1795))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 800)) (.var 3))
    (.neg (.num 528))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12602) (.var 3)) (.num
    60450)) (.var 3)) (.num 169980)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50408) (.var
    3)) (.num 192422)) (.var 3)) (.num 509114)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 80605) (.var 3)) (.num 221787)) (.var 3)) (.num 588116)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 65387) (.var 3)) (.num 97177)) (.var 3)) (.num 315494))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 28049) (.var 3)) (.neg (.num
    7553))) (.var 3)) (.num 64132)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 5929) (.var 3)) (.neg (.num 20379))) (.var 3)) (.neg (.num 7600))) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 468) (.var 3)) (.neg (.num 5984))) (.var 3))
    (.neg (.num 4856))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 520)) (.var
    3)) (.neg (.num 480))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    20050) (.var 3)) (.num 92370)) (.var 3)) (.num 154148)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 90225) (.var 3)) (.num 357769)) (.var 3)) (.num 551910)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 167312) (.var 3)) (.num 551264)) (.var 3)) (.num 792026))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 164542) (.var 3)) (.num
    419996)) (.var 3)) (.num 568830)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 91758) (.var 3)) (.num 150454)) (.var 3)) (.num 197092)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 28565) (.var 3)) (.num 8668)) (.var 3)) (.num 14691))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4464) (.var 3)) (.neg (.num
    10162))) (.var 3)) (.neg (.num 10280))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 252) (.var 3)) (.neg (.num 2683))) (.var 3)) (.neg (.num 2745))) (.pow (.var 2)
    7))) (.var 1)) (.mul (.add (.mul (.neg (.num 176)) (.var 3)) (.neg (.num 176))) (.pow (.var 2)
    8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 19754) (.var 3)) (.num 85946))
    (.var 3)) (.num 99516)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 98770) (.var 3)) (.num
    387500)) (.var 3)) (.num 420754)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    208419) (.var 3)) (.num 727067)) (.var 3)) (.num 738032)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 241056) (.var 3)) (.num 730736)) (.var 3)) (.num 688772)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 165818) (.var 3)) (.num 417734))
    (.var 3)) (.num 358842)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    68592) (.var 3)) (.num 128812)) (.var 3)) (.num 94182)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 16273) (.var 3)) (.num 14923)) (.var 3)) (.num 4508)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1918) (.var 3)) (.neg (.num
    1944))) (.var 3)) (.neg (.num 3448))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 72) (.var 3)) (.neg (.num 590))) (.var 3)) (.neg (.num 662))) (.pow (.var 2) 8)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 24)) (.var 3)) (.neg (.num 24))) (.pow (.var 2) 9))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 10548) (.var 3)) (.num 43560))
    (.var 3)) (.num 39348)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 58014) (.var 3)) (.num
    222012)) (.var 3)) (.num 192258)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    137248) (.var 3)) (.num 483096)) (.var 3)) (.num 399388)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 182511) (.var 3)) (.num 584743)) (.var 3)) (.num 458518)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 149428) (.var 3)) (.num 428534))
    (.var 3)) (.num 314862)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    77378) (.var 3)) (.num 192533)) (.var 3)) (.num 128975)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 24922) (.var 3)) (.num 50207)) (.var 3)) (.num 28309)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4649) (.var 3)) (.num 6157)) (.var
    3)) (.num 1798)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 414) (.var
    3)) (.neg (.num 3))) (.var 3)) (.neg (.num 417))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 8) (.var 3)) (.neg (.num 51))) (.var 3)) (.neg (.num 59))) (.pow (.var
    2) 9))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2268) (.var 3))
    (.num 9270)) (.var 3)) (.num 7002)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13608) (.var
    3)) (.num 52326)) (.var 3)) (.num 38718)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 35644) (.var 3)) (.num 128184)) (.var 3)) (.num 92540)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 53480) (.var 3)) (.num 178572)) (.var 3)) (.num 125092))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50655) (.var 3)) (.num
    155445)) (.var 3)) (.num 104790)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 31428) (.var 3)) (.num 87176)) (.var 3)) (.num 55748)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 12791) (.var 3)) (.num 31129)) (.var 3)) (.num 18338))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3303) (.var 3)) (.num 6657))
    (.var 3)) (.num 3354)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 494)
    (.var 3)) (.num 728)) (.var 3)) (.num 234)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 33) (.var 3)) (.num 25)) (.var 3)) (.neg (.num 8))) (.pow (.var 2) 9)))
    (.pow (.var 1) 2)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))) 2)) (.add (.var 1) (.var 2)))) (.mul (.mul (.num 15) (.add (.mul (.add (.mul (.add (.mul
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
    (.mul (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 270) (.var 1)) (.mul
    (.num 90) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 140) (.var 3)) (.num
    3300)) (.var 1)) (.mul (.add (.mul (.num 140) (.var 3)) (.num 2422)) (.var 2))) (.var 1))
    (.mul (.num 342) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 100) (.var 3)) (.num 1796)) (.var 3)) (.num 18635)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 250) (.var 3)) (.num 2652)) (.var 3)) (.num 21348)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 200) (.var 3)) (.num 856)) (.var 3)) (.num
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
    (.num 26) (.var 3)) (.num 52)) (.var 3)) (.num 26)) (.pow (.var 2) 10))) (.var 1)))) (.var 0))
    (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2))) (.mul
    (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 10)
    (.var 1)) (.mul (.num 4) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 163)) (.var 1)) (.mul (.add (.mul (.num 4) (.var 3)) (.num 138)) (.var 2)))
    (.var 1)) (.mul (.num 28) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 66)) (.var 3)) (.num 1188)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 92)) (.var 3)) (.num 1529)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 22)) (.var 3)) (.num 626)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.num 80)) (.pow (.var 2)
    3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    40) (.var 3)) (.num 526)) (.var 3)) (.num 5177)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    100) (.var 3)) (.num 960)) (.var 3)) (.num 8919)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 80) (.var 3)) (.num 458)) (.var 3)) (.num 5449)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.neg (.num 4))) (.var 3)) (.num 1366))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 28)) (.var 3)) (.num 112)) (.pow
    (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 355) (.var 3)) (.num 2746)) (.var 3)) (.num 15338)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1065) (.var 3)) (.num 6376)) (.var 3)) (.num 33187)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1151) (.var 3)) (.num 4766)) (.var 3)) (.num
    26894)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 527) (.var 3)) (.num
    972)) (.var 3)) (.num 9884)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    86) (.var 3)) (.neg (.num 248))) (.var 3)) (.num 1520)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 84)) (.var 3)) (.num 56)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    1862) (.var 3)) (.num 10424)) (.var 3)) (.num 33610)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 6517) (.var 3)) (.num 30052)) (.var 3)) (.num 88488)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 8795) (.var 3)) (.num 31546)) (.var 3)) (.num 90370)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5695) (.var 3)) (.num 13748)) (.var 3))
    (.num 44191)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1763) (.var
    3)) (.num 1286)) (.var 3)) (.num 9920)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 208) (.var 3)) (.neg (.num 684))) (.var 3)) (.num 614)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.neg (.num 140)) (.var 3)) (.neg (.num 56))) (.pow (.var 2) 6)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 6432) (.var 3)) (.num 29304)) (.var 3)) (.num 57616)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 25728) (.var 3)) (.num 101920)) (.var 3)) (.num 181965)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 41443) (.var 3)) (.num 138938)) (.var 3))
    (.num 229905)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 34281) (.var
    3)) (.num 92156)) (.var 3)) (.num 145972)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 15295) (.var 3)) (.num 28502)) (.var 3)) (.num 46555)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3471) (.var 3)) (.num 1928)) (.var 3)) (.num
    5496)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 310) (.var 3)) (.neg
    (.num 880))) (.var 3)) (.neg (.num 452))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 140)) (.var 3)) (.neg (.num 112))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 15296) (.var 3)) (.num 59824)) (.var 3)) (.num 78742)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 68832) (.var 3)) (.num 243964)) (.var 3)) (.num 295224)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 128546) (.var 3)) (.num 407970)) (.var 3))
    (.num 456037)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 128695) (.var
    3)) (.num 358192)) (.var 3)) (.num 371093)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 74273) (.var 3)) (.num 173526)) (.var 3)) (.num 166257)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24553) (.var 3)) (.num 42788)) (.var 3)) (.num
    36966)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4257) (.var 3))
    (.num 3104)) (.var 3)) (.num 1728)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 292) (.var 3)) (.neg (.num 604))) (.var 3)) (.neg (.num 694))) (.pow (.var 2) 7)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 84)) (.var 3)) (.neg (.num 80))) (.pow (.var 2) 8))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 25244) (.var 3)) (.num 86362)) (.var 3))
    (.num 83965)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 126220) (.var 3)) (.num 403370))
    (.var 3)) (.num 368303)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 267791)
    (.var 3)) (.num 795530)) (.var 3)) (.num 682505)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 313844) (.var 3)) (.num 859844)) (.var 3)) (.num 692185)) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 221263) (.var 3)) (.num 550760)) (.var
    3)) (.num 413301)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 95459)
    (.var 3)) (.num 208966)) (.var 3)) (.num 143075)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 24332) (.var 3)) (.num 42996)) (.var 3)) (.num 24791)) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3277) (.var 3)) (.num 3288)) (.var 3))
    (.num 660)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 170) (.var 3))
    (.neg (.num 208))) (.var 3)) (.neg (.num 354))) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 28)) (.var 3)) (.neg (.num 28))) (.pow (.var 2) 9)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 28440) (.var 3)) (.num 85494)) (.var 3)) (.num
    66360)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 156420) (.var 3)) (.num 449286)) (.var
    3)) (.num 334563)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 371316) (.var 3))
    (.num 1017296)) (.var 3)) (.num 726556)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 497772) (.var 3)) (.num 1297210)) (.var 3)) (.num 887536)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 413530) (.var 3)) (.num 1019814)) (.var 3))
    (.num 666061)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 219359) (.var
    3)) (.num 506530)) (.var 3)) (.num 312919)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 73489) (.var 3)) (.num 155222)) (.var 3)) (.num 88557)) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14693) (.var 3)) (.num 26758)) (.var 3)) (.num
    13065)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1525) (.var 3))
    (.num 1938)) (.var 3)) (.num 473)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 56) (.var 3)) (.neg (.num 24))) (.var 3)) (.neg (.num 80))) (.pow (.var 2) 9))) (.var
    1)) (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg (.num 4))) (.pow (.var 2) 10)))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 20931) (.var 3)) (.num
    55218)) (.var 3)) (.num 36033)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 125586) (.var
    3)) (.num 322200)) (.var 3)) (.num 205308)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 329597) (.var 3)) (.num 822046)) (.var 3)) (.num 511343)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 496780) (.var 3)) (.num 1203656)) (.var 3)) (.num 730453))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 474233) (.var 3)) (.num
    1114482)) (.var 3)) (.num 658851)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 297698) (.var 3)) (.num 676200)) (.var 3)) (.num 388050)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 123148) (.var 3)) (.num 268324)) (.var 3)) (.num 148296))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 32531) (.var 3)) (.num
    66888)) (.var 3)) (.num 34950)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 5063) (.var 3)) (.num 9448)) (.var 3)) (.num 4435)) (.pow (.var 2) 8))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 385) (.var 3)) (.num 576)) (.var 3)) (.num 191)) (.pow (.var 2)
    9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 2)) (.var 3)) (.neg
    (.num 6))) (.pow (.var 2) 10))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 9108) (.var 3)) (.num 20988)) (.var 3)) (.num 11880)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 59202) (.var 3)) (.num 134640)) (.var 3)) (.num 75438)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 170148) (.var 3)) (.num 381942)) (.var 3))
    (.num 211794)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 284592) (.var
    3)) (.num 630576)) (.var 3)) (.num 345984)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 306546) (.var 3)) (.num 670254)) (.var 3)) (.num 363708)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 221850) (.var 3)) (.num 478218)) (.var 3))
    (.num 256368)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 108918) (.var
    3)) (.num 230944)) (.var 3)) (.num 122026)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 35613) (.var 3)) (.num 73920)) (.var 3)) (.num 38307)) (.pow (.var 2) 7)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7341) (.var 3)) (.num 14766)) (.var 3)) (.num
    7425)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 843) (.var 3)) (.num
    1606)) (.var 3)) (.num 763)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    39) (.var 3)) (.num 66)) (.var 3)) (.num 27)) (.pow (.var 2) 10))) (.pow (.var 1) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1782) (.var 3)) (.num 3564))
    (.var 3)) (.num 1782)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12474) (.var 3)) (.num
    24948)) (.var 3)) (.num 12474)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    38961) (.var 3)) (.num 77922)) (.var 3)) (.num 38961)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 71604) (.var 3)) (.num 143208)) (.var 3)) (.num 71604)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 85893) (.var 3)) (.num 171786))
    (.var 3)) (.num 85893)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    70392) (.var 3)) (.num 140784)) (.var 3)) (.num 70392)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 39980) (.var 3)) (.num 79960)) (.var 3)) (.num 39980)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15560) (.var 3)) (.num 31120))
    (.var 3)) (.num 15560)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    3975) (.var 3)) (.num 7950)) (.var 3)) (.num 3975)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 602) (.var 3)) (.num 1204)) (.var 3)) (.num 602)) (.pow (.var 2) 9)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 41) (.var 3)) (.num 82)) (.var 3)) (.num 41))
    (.pow (.var 2) 10))) (.pow (.var 1) 3)))) (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0)
    (.var 1)) (.var 2)))) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.num 6) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 1)) (.mul (.num 10) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 470)) (.var 1)) (.mul
    (.add (.mul (.num 20) (.var 3)) (.num 354)) (.var 2))) (.var 1)) (.mul (.num 54) (.pow (.var
    2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 20) (.var
    3)) (.num 384)) (.var 3)) (.num 3454)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50) (.var
    3)) (.num 608)) (.var 3)) (.num 4145)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 40) (.var 3)) (.num 244)) (.var 3)) (.num 1461)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20)) (.var 3)) (.num 140)) (.pow (.var 2)
    3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    352) (.var 3)) (.num 3460)) (.var 3)) (.num 15950)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1056) (.var 3)) (.num 7590)) (.var 3)) (.num 27048)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1146) (.var 3)) (.num 5712)) (.var 3)) (.num 15943)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 532) (.var 3)) (.num 1794)) (.var 3)) (.num
    3843)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90) (.var 3)) (.num
    212)) (.var 3)) (.num 328)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2790) (.var 3)) (.num 19032)) (.var 3))
    (.num 52206)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9765) (.var 3)) (.num 53502))
    (.var 3)) (.num 117852)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13255) (.var
    3)) (.num 57756)) (.var 3)) (.num 102045)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 8725) (.var 3)) (.num 30486)) (.var 3)) (.num 42867)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2795) (.var 3)) (.num 8092)) (.var 3)) (.num
    9030)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 350) (.var 3)) (.num
    892)) (.var 3)) (.num 812)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13110) (.var 3)) (.num
    70212)) (.var 3)) (.num 128241)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 52440) (.var
    3)) (.num 240398)) (.var 3)) (.num 369779)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 85029) (.var 3)) (.num 334284)) (.var 3)) (.num 434172)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 71547) (.var 3)) (.num 243946)) (.var 3)) (.num 268884))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 32987) (.var 3)) (.num
    99692)) (.var 3)) (.num 94428)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 7909) (.var 3)) (.num 21864)) (.var 3)) (.num 18248)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 770) (.var 3)) (.num 2020)) (.var 3)) (.num 1540)) (.pow
    (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40450) (.var 3)) (.num 180670)) (.var 3))
    (.num 240617)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 182025) (.var 3)) (.num 727442))
    (.var 3)) (.num 854520)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 342238)
    (.var 3)) (.num 1229384)) (.var 3)) (.num 1280583)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 348383) (.var 3)) (.num 1135458)) (.var 3)) (.num 1057603)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 207321) (.var 3)) (.num 621810))
    (.var 3)) (.num 524419)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    72070) (.var 3)) (.num 202512)) (.var 3)) (.num 157266)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 13519) (.var 3)) (.num 36288)) (.var 3)) (.num 26444)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1050) (.var 3)) (.num 2740)) (.var
    3)) (.num 1904)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 85573)
    (.var 3)) (.num 328376)) (.var 3)) (.num 341965)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 427865) (.var 3)) (.num 1516372)) (.var 3)) (.num 1447466)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 913630) (.var 3)) (.num 3003968)) (.var 3)) (.num 2642187))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1087330) (.var 3)) (.num
    3340050)) (.var 3)) (.num 2726587)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 788030) (.var 3)) (.num 2282524)) (.var 3)) (.num 1745137)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 355468) (.var 3)) (.num 981314)) (.var 3)) (.num
    710018)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 97105) (.var 3))
    (.num 258296)) (.var 3)) (.num 178682)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 14585) (.var 3)) (.num 37728)) (.var 3)) (.num 25150)) (.pow (.var 2) 7))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 910) (.var 3)) (.num 2300)) (.var 3)) (.num 1480))
    (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 125508) (.var
    3)) (.num 419750)) (.var 3)) (.num 359405)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    690294) (.var 3)) (.num 2182750)) (.var 3)) (.num 1764133)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1648472) (.var 3)) (.num 4946324)) (.var 3)) (.num 3788193)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2240919) (.var 3)) (.num 6412162))
    (.var 3)) (.num 4676724)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1908010) (.var 3)) (.num 5237630)) (.var 3)) (.num 3659104)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1052471) (.var 3)) (.num 2789716)) (.var 3)) (.num
    1878176)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 374393) (.var 3))
    (.num 964212)) (.var 3)) (.num 629051)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 82146) (.var 3)) (.num 206552)) (.var 3)) (.num 131076)) (.pow (.var 2) 7))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 9937) (.var 3)) (.num 24436)) (.var 3)) (.num 15084))
    (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 490) (.var 3)) (.num 1172))
    (.var 3)) (.num 698)) (.pow (.var 2) 9)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 125875) (.var 3)) (.num 369436)) (.var 3)) (.num 269166)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 755250) (.var 3)) (.num 2133978)) (.var 3)) (.num 1499571))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1993171) (.var 3)) (.num 5435936))
    (.var 3)) (.num 3693157)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    3042730) (.var 3)) (.num 8036058)) (.var 3)) (.num 5294375)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 2969763) (.var 3)) (.num 7623676)) (.var 3)) (.num
    4886894)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1930422) (.var 3))
    (.num 4835128)) (.var 3)) (.num 3025601)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 841968) (.var 3)) (.num 2064596)) (.var 3)) (.num 1264706)) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 241143) (.var 3)) (.num 580220)) (.var 3))
    (.num 348490)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 42713) (.var
    3)) (.num 100852)) (.var 3)) (.num 59346)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 4095) (.var 3)) (.num 9444)) (.var 3)) (.num 5414)) (.pow (.var 2) 9)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 150) (.var 3)) (.num 332)) (.var 3)) (.num 182))
    (.pow (.var 2) 10)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 82638) (.var 3)) (.num 213480)) (.var 3)) (.num 135396)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 537147) (.var 3)) (.num 1355508)) (.var 3)) (.num 842346)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1551696) (.var 3)) (.num 3831422)) (.var 3))
    (.num 2335796)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2625711)
    (.var 3)) (.num 6356102)) (.var 3)) (.num 3807368)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2885502) (.var 3)) (.num 6862246)) (.var 3)) (.num 4045682)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2154852) (.var 3)) (.num 5044702))
    (.var 3)) (.num 2931895)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1109546) (.var 3)) (.num 2561150)) (.var 3)) (.num 1469152)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 390178) (.var 3)) (.num 888716)) (.var 3)) (.num 503384))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90313) (.var 3)) (.num
    202830)) (.var 3)) (.num 113321)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 12696) (.var 3)) (.num 28008)) (.var 3)) (.num 15373)) (.pow (.var 2) 9))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 909) (.var 3)) (.num 1948)) (.var 3)) (.num 1039)) (.pow
    (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 40)) (.var
    3)) (.num 20)) (.pow (.var 2) 11)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 32112) (.var 3)) (.num 73044)) (.var 3)) (.num 40932)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 224784) (.var 3)) (.num 505692)) (.var 3)) (.num 280908))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 705267) (.var 3)) (.num 1570446))
    (.var 3)) (.num 865179)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1309410) (.var 3)) (.num 2888586)) (.var 3)) (.num 1579176)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1598390) (.var 3)) (.num 3496486)) (.var 3)) (.num
    1898096)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1346377) (.var 3))
    (.num 2922866)) (.var 3)) (.num 1576489)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 797531) (.var 3)) (.num 1719182)) (.var 3)) (.num 921651)) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 331340) (.var 3)) (.num 709260)) (.var 3))
    (.num 377920)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 94151) (.var
    3)) (.num 199966)) (.var 3)) (.num 105815)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 17270) (.var 3)) (.num 36302)) (.var 3)) (.num 19032)) (.pow (.var 2) 9)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1809) (.var 3)) (.num 3740)) (.var 3)) (.num
    1931)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 79) (.var 3)) (.num
    158)) (.var 3)) (.num 79)) (.pow (.var 2) 11))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5616) (.var 3)) (.num 11232)) (.var 3))
    (.num 5616)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 42120) (.var 3)) (.num 84240))
    (.var 3)) (.num 42120)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 142614) (.var
    3)) (.num 285228)) (.var 3)) (.num 142614)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 288171) (.var 3)) (.num 576342)) (.var 3)) (.num 288171)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 386724) (.var 3)) (.num 773448)) (.var 3))
    (.num 386724)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 362505) (.var
    3)) (.num 725010)) (.var 3)) (.num 362505)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 242576) (.var 3)) (.num 485152)) (.var 3)) (.num 242576)) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 116046) (.var 3)) (.num 232092)) (.var 3))
    (.num 116046)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38944) (.var
    3)) (.num 77888)) (.var 3)) (.num 38944)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 8741) (.var 3)) (.num 17482)) (.var 3)) (.num 8741)) (.pow (.var 2) 9)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1182) (.var 3)) (.num 2364)) (.var 3)) (.num
    1182)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 73) (.var 3)) (.num
    146)) (.var 3)) (.num 73)) (.pow (.var 2) 11))) (.pow (.var 1) 2)))) (.var 0)) (.mul (.add
    (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.add (.add (.add (.add (.mul (.mul (.num 72) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 2) (.pow (.var 0) 2)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4))
    (.var 3)) (.num 4)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var
    3)) (.num 24)) (.var 3)) (.num 20)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 10) (.var 3)) (.num 28)) (.var 3)) (.num 18)) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5)))
    (.var 0))) (.pow (.var 0) 2)) (.mul (.mul (.num 48) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 9) (.var 0)) (.mul (.neg (.num 9)) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.num 5) (.pow (.var 3) 2)) (.num 2)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 11) (.var 3)) (.num 38)) (.var 3)) (.num 36)) (.pow (.var 2) 3))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 7) (.var 3)) (.num 24)) (.var 3)) (.num 17)) (.pow (.var
    2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.num 2)) (.var 3)) (.num
    1)) (.pow (.var 2) 5)))) (.pow (.var 0) 3))) (.mul (.mul (.num 12) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 15) (.var 0)) (.mul (.neg (.num 24)) (.var 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 3) (.var 3)) (.neg (.num 10))) (.var 3)) (.neg (.num 2))) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 26)) (.var 3))
    (.num 26)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3))
    (.num 8)) (.var 3)) (.num 5)) (.pow (.var 2) 4)))) (.pow (.var 0) 4))) (.mul (.num 6) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.mul (.num 8)
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3))
    (.num 12)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3))
    (.num 12)) (.var 3)) (.num 8)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 10) (.var 3)) (.num 12)) (.var 3)) (.num 2)) (.pow (.var 2) 4))) (.var 0)) (.mul (.mul
    (.add (.mul (.num 4) (.var 3)) (.num 4)) (.var 3)) (.pow (.var 2) 5))) (.pow (.var 0) 3))))
    (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    13) (.var 0)) (.mul (.num 35) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9)
    (.var 3)) (.num 8)) (.var 3)) (.num 30)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 27) (.var 3)) (.num 28)) (.var 3)) (.num 10)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 27) (.var 3)) (.num 32)) (.var 3)) (.num 5)) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.num 12)) (.var 3)) (.num 3))
    (.pow (.var 2) 5))) (.pow (.var 0) 2))) (.pow (.var 0) 1))) (.mul (.mul (.num 6) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 35) (.var 0)) (.mul (.num 54)
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 3)) (.neg (.num 6))) (.var
    3)) (.num 6)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 36) (.var 3))
    (.num 22)) (.var 3)) (.neg (.num 6))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 27) (.var 3)) (.num 38)) (.var 3)) (.num 11)) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 10)) (.var 3)) (.num 4)) (.pow (.var 2) 5)))
    (.var 0))) (.pow (.var 0) 2))) (.mul (.mul (.num 36) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 2) (.var 0)) (.mul (.num 4) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var 2) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 16)) (.var 3)) (.num 8)) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20)) (.var 3))
    (.num 10)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 3))
    (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.pow (.var 0) 2))) (.pow (.var 0) 1)))
    (.mul (.mul (.num 36) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    11) (.var 0)) (.mul (.num 9) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 7) (.var
    3)) (.num 4)) (.var 3)) (.neg (.num 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 19) (.var 3)) (.num 34)) (.var 3)) (.num 18)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 17) (.var 3)) (.num 40)) (.var 3)) (.num 23)) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 3)) (.num 10)) (.var 3)) (.num 5))
    (.pow (.var 2) 5))) (.var 0))) (.pow (.var 0) 2))) (.mul (.mul (.num 12) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 24) (.var 0)) (.mul (.neg (.num 3)) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.neg (.num 10))) (.var 3)) (.neg
    (.num 22))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 17) (.var 3))
    (.num 32)) (.var 3)) (.num 22)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 10) (.var 3)) (.num 28)) (.var 3)) (.num 18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1) (.var 3)) (.num 2)) (.var 3)) (.num 1)) (.pow (.var 2) 5)))) (.pow
    (.var 0) 3))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.add (.add (.add (.add
    (.add (.add (.add (.add (.mul (.mul (.num 18) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 0)) (.mul
    (.add (.mul (.num 4) (.var 3)) (.num 60)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 8) (.var 3)) (.num 40)) (.var 3)) (.num 157)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 94) (.var 3)) (.num 284)) (.var 3)) (.num 357)) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 393) (.var 3)) (.num 1136)) (.var 3)) (.num
    989)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 807) (.var 3)) (.num
    2306)) (.var 3)) (.num 1755)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 900) (.var 3)) (.num 2448)) (.var 3)) (.num 1667)) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 546) (.var 3)) (.num 1356)) (.var 3)) (.num 827)) (.pow (.var 2)
    7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 163) (.var 3)) (.num 360)) (.var 3)) (.num
    197)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 17) (.var 3)) (.num
    34)) (.var 3)) (.num 17)) (.pow (.var 2) 9))) (.var 0))) (.pow (.var 0) 2)) (.mul (.mul (.num
    12) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 27) (.var 0)) (.mul (.add (.mul (.num 14) (.var 3)) (.num 226)) (.var
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 66)) (.var 3)) (.num
    352)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 181) (.var 3)) (.num
    314)) (.var 3)) (.num 346)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    580) (.var 3)) (.num 1384)) (.var 3)) (.num 1291)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 893) (.var 3)) (.num 2728)) (.var 3)) (.num 2453)) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 716) (.var 3)) (.num 2382)) (.var 3)) (.num
    1942)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 291) (.var 3)) (.num
    930)) (.var 3)) (.num 676)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    52) (.var 3)) (.num 144)) (.var 3)) (.num 92)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 3) (.var 3)) (.num 6)) (.var 3)) (.num 3)) (.pow (.var 2) 9)))) (.pow (.var
    0) 3))) (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 45) (.var 0)) (.mul (.add (.mul (.num 16) (.var 3)) (.num
    329)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 3)) (.num 26)) (.var
    3)) (.num 272)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 105) (.var
    3)) (.neg (.num 18))) (.var 3)) (.neg (.num 276))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 321) (.var 3)) (.num 462)) (.var 3)) (.num 398)) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 456) (.var 3)) (.num 1330)) (.var 3)) (.num
    1399)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 318) (.var 3)) (.num
    1076)) (.var 3)) (.num 962)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    99) (.var 3)) (.num 300)) (.var 3)) (.num 224)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 9) (.var 3)) (.num 24)) (.var 3)) (.num 15)) (.pow (.var 2) 8))))
    (.pow (.var 0) 4))) (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.mul (.add (.mul
    (.num 8) (.var 3)) (.num 148)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 16)
    (.var 3)) (.num 88)) (.var 3)) (.num 576)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 192) (.var 3)) (.num 564)) (.var 3)) (.num 1344)) (.pow (.var 2) 3))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 818) (.var 3)) (.num 2008)) (.var 3)) (.num 2360))
    (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1726) (.var 3)) (.num 3906))
    (.var 3)) (.num 3050)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2006)
    (.var 3)) (.num 4252)) (.var 3)) (.num 2600)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1298) (.var 3)) (.num 2564)) (.var 3)) (.num 1324)) (.pow (.var 2) 7)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 432) (.var 3)) (.num 788)) (.var 3)) (.num 356))
    (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 56) (.var 3)) (.num 94))
    (.var 3)) (.num 38)) (.pow (.var 2) 9))) (.pow (.var 0) 3)))) (.mul (.mul (.num 6) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 78) (.var 0)) (.mul (.add (.mul (.num 44) (.var 3)) (.num 846)) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 3)) (.num 328)) (.var 3)) (.num 2627))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 752) (.var 3)) (.num 1668))
    (.var 3)) (.num 4693)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2816)
    (.var 3)) (.num 5810)) (.var 3)) (.num 7054)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 5268) (.var 3)) (.num 11220)) (.var 3)) (.num 8872)) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5460) (.var 3)) (.num 11764)) (.var 3)) (.num
    7483)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3160) (.var 3)) (.num
    6620)) (.var 3)) (.num 3649)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 940) (.var 3)) (.num 1842)) (.var 3)) (.num 902)) (.pow (.var 2) 8))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 108) (.var 3)) (.num 192)) (.var 3)) (.num 84)) (.pow (.var 2)
    9))) (.pow (.var 0) 2))) (.pow (.var 0) 1))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 210) (.var 0)) (.mul (.add (.mul (.num 96) (.var 3)) (.num 2018)) (.var 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 120) (.var 3)) (.num 456)) (.var 3)) (.num 4837)) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1138) (.var 3)) (.num 1524)) (.var
    3)) (.num 5742)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3830) (.var
    3)) (.num 5880)) (.var 3)) (.num 7066)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 6328) (.var 3)) (.num 12378)) (.var 3)) (.num 9866)) (.pow (.var 2) 5))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 5652) (.var 3)) (.num 12644)) (.var 3)) (.num 8605)) (.pow
    (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2724) (.var 3)) (.num 6268)) (.var
    3)) (.num 3790)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 642) (.var
    3)) (.num 1388)) (.var 3)) (.num 746)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 54) (.var 3)) (.num 102)) (.var 3)) (.num 48)) (.pow (.var 2) 9))) (.var 0)))
    (.pow (.var 0) 2))) (.mul (.mul (.num 18) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.mul
    (.add (.mul (.num 8) (.var 3)) (.num 134)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 16) (.var 3)) (.num 84)) (.var 3)) (.num 430)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 190) (.var 3)) (.num 554)) (.var 3)) (.num 892)) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 802) (.var 3)) (.num 2072)) (.var 3)) (.num
    1796)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1674) (.var 3)) (.num
    4172)) (.var 3)) (.num 2886)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 1918) (.var 3)) (.num 4624)) (.var 3)) (.num 2878)) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 1216) (.var 3)) (.num 2794)) (.var 3)) (.num 1608)) (.pow (.var
    2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 392) (.var 3)) (.num 844)) (.var 3))
    (.num 452)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 48) (.var 3))
    (.num 96)) (.var 3)) (.num 48)) (.pow (.var 2) 9))) (.pow (.var 0) 2))) (.pow (.var 0) 1)))
    (.mul (.mul (.num 18) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 66) (.var 0)) (.mul (.add (.mul (.num 36)
    (.var 3)) (.num 635)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 56) (.var 3))
    (.num 226)) (.var 3)) (.num 1482)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 555) (.var 3)) (.num 1120)) (.var 3)) (.num 1955)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 1972) (.var 3)) (.num 4278)) (.var 3)) (.num 3654)) (.pow (.var
    2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3476) (.var 3)) (.num 8562)) (.var 3))
    (.num 6327)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3354) (.var 3))
    (.num 8716)) (.var 3)) (.num 5964)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1773) (.var 3)) (.num 4482)) (.var 3)) (.num 2807)) (.pow (.var 2) 7))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 466) (.var 3)) (.num 1068)) (.var 3)) (.num 602)) (.pow
    (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 44) (.var 3)) (.num 88)) (.var 3))
    (.num 44)) (.pow (.var 2) 9))) (.var 0))) (.pow (.var 0) 2))) (.mul (.mul (.num 6) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 144) (.var 0)) (.mul (.add (.mul (.num 60) (.var 3)) (.num 1215)) (.var 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 64) (.var 3)) (.num 200)) (.var 3)) (.num 1957)) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 575) (.var 3)) (.num 488)) (.var
    3)) (.num 828)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1817) (.var
    3)) (.num 2804)) (.var 3)) (.num 1990)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 2743) (.var 3)) (.num 6526)) (.var 3)) (.num 5313)) (.pow (.var 2) 5))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 2137) (.var 3)) (.num 6116)) (.var 3)) (.num 4755)) (.pow
    (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 828) (.var 3)) (.num 2422)) (.var
    3)) (.num 1706)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 134) (.var
    3)) (.num 356)) (.var 3)) (.num 222)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 6) (.var 3)) (.num 12)) (.var 3)) (.num 6)) (.pow (.var 2) 9)))) (.pow (.var 0)
    3))) (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 90) (.var 0)) (.mul (.add (.mul (.num 52)
    (.var 3)) (.num 1085)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 88) (.var 3))
    (.num 438)) (.var 3)) (.num 3943)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 953) (.var 3)) (.num 2128)) (.var 3)) (.num 7258)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 3692) (.var 3)) (.num 6591)) (.var 3)) (.num 8699)) (.pow (.var
    2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 7190) (.var 3)) (.num 12239)) (.var 3))
    (.num 8276)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 7824) (.var 3))
    (.num 13304)) (.var 3)) (.num 6469)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 4805) (.var 3)) (.num 8210)) (.var 3)) (.num 3534)) (.pow (.var 2) 7))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1540) (.var 3)) (.num 2627)) (.var 3)) (.num 1087)) (.pow
    (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 196) (.var 3)) (.num 331)) (.var
    3)) (.num 135)) (.pow (.var 2) 9))) (.pow (.var 0) 3)))) (.mul (.mul (.num 3) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 288) (.var 0)) (.mul (.add (.mul (.num 140) (.var 3)) (.num 3109)) (.var
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 192) (.var 3)) (.num 832)) (.var 3)) (.num
    9313)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1905) (.var 3)) (.num
    2922)) (.var 3)) (.num 13035)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 6729) (.var 3)) (.num 8966)) (.var 3)) (.num 11794)) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 11853) (.var 3)) (.num 17749)) (.var 3)) (.num 10766)) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 11543) (.var 3)) (.num 19530))
    (.var 3)) (.num 9561)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6254)
    (.var 3)) (.num 11410)) (.var 3)) (.num 5391)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1732) (.var 3)) (.num 3224)) (.var 3)) (.num 1492)) (.pow (.var 2) 8)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 184) (.var 3)) (.num 331)) (.var 3)) (.num 147))
    (.pow (.var 2) 9))) (.pow (.var 0) 2))) (.pow (.var 0) 1))) (.mul (.num 3) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 6) (.var 0)) (.mul (.add (.mul (.num 4) (.var 3)) (.num 74)) (.var 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 44)) (.var 3)) (.num 275)) (.pow (.var
    2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 96) (.var 3)) (.num 270)) (.var 3))
    (.num 551)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 409) (.var 3))
    (.num 932)) (.var 3)) (.num 831)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 867) (.var 3)) (.num 1830)) (.var 3)) (.num 1091)) (.pow (.var 2) 5))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 1018) (.var 3)) (.num 2084)) (.var 3)) (.num 1089)) (.pow (.var
    2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 670) (.var 3)) (.num 1354)) (.var 3))
    (.num 685)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 229) (.var 3))
    (.num 460)) (.var 3)) (.num 231)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 31) (.var 3)) (.num 62)) (.var 3)) (.num 31)) (.pow (.var 2) 9))) (.pow (.var 0) 3))))
    (.mul (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 39) (.var 0)) (.mul (.add (.mul (.num 22)
    (.var 3)) (.num 423)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 36) (.var 3))
    (.num 164)) (.var 3)) (.num 1255)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 376) (.var 3)) (.num 792)) (.var 3)) (.num 1850)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 1408) (.var 3)) (.num 2680)) (.var 3)) (.num 2271)) (.pow (.var
    2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2643) (.var 3)) (.num 5286)) (.var 3))
    (.num 3102)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2756) (.var 3))
    (.num 5802)) (.var 3)) (.num 3201)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1606) (.var 3)) (.num 3446)) (.var 3)) (.num 1866)) (.pow (.var 2) 7))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 480) (.var 3)) (.num 1010)) (.var 3)) (.num 530)) (.pow
    (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 55) (.var 3)) (.num 110)) (.var
    3)) (.num 55)) (.pow (.var 2) 9))) (.pow (.var 0) 2))) (.pow (.var 0) 1))) (.mul (.mul (.num
    3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 105) (.var 0)) (.mul (.add (.mul (.num 48) (.var 3)) (.num
    1009)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num 228))
    (.var 3)) (.num 2321)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 569)
    (.var 3)) (.num 714)) (.var 3)) (.num 2106)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1915) (.var 3)) (.num 2700)) (.var 3)) (.num 1813)) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3170) (.var 3)) (.num 5882)) (.var 3)) (.num
    3368)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2841) (.var 3)) (.num
    6274)) (.var 3)) (.num 3795)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 1374) (.var 3)) (.num 3242)) (.var 3)) (.num 1938)) (.pow (.var 2) 7))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 324) (.var 3)) (.num 738)) (.var 3)) (.num 414)) (.pow (.var 2)
    8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27) (.var 3)) (.num 54)) (.var 3)) (.num
    27)) (.pow (.var 2) 9))) (.var 0))) (.pow (.var 0) 2))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow2122.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow2122.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow2122.leading0 e g v + f * FullLow2122.leading1 e g v +
        f^2 * FullLow2122.remainder e f g v := by
  have hden : denominatorOne FullLow2122.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow2122.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow2122.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 549755813888 16 12 2) lhs =
      value (Encoding4.vars 549755813888 16 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 549755813888 := by
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
    FullLow2122.source e f g v =
      FullLow2122.leading0 e g v + f * FullLow2122.leading1 e g v +
        f^2 * FullLow2122.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 549755813888 16 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow212Encoded2

namespace SPR.N6.Tail.CoreEndpoint.FullLow212
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition2 (e f g v : ℝ) :
    FullLow2122.source e f g v =
      FullLow2122.leading0 e g v + f * FullLow2122.leading1 e g v +
        f^2 * FullLow2122.remainder e f g v :=
  FullLow212Encoded2.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow212
