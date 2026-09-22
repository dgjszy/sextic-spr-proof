import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow221Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^0 layer of FullLow221.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow221Encoded0
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 6) (.var 1))
    (.var 0)) (.mul (.add (.mul (.num 108) (.var 1)) (.mul (.num 48) (.var 2))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 689) (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var
    3)) (.num 608)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.num 126))
    (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 6) (.var 3)) (.neg (.num 48))) (.var 3)) (.num 2202)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 12) (.var 3)) (.neg (.num 162))) (.var 3)) (.num 2830)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.neg (.num 162))) (.var 3)) (.num
    1096)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 48)) (.var 3)) (.num 120))
    (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 66) (.var 3)) (.neg (.num 312))) (.var 3)) (.num 4014)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 165) (.var 3)) (.neg (.num 1121))) (.var 3)) (.num
    6451)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 132) (.var 3)) (.neg (.num
    1426))) (.var 3)) (.num 3189)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 33) (.var 3)) (.neg (.num 749))) (.var 3)) (.num 410)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.neg (.num 132)) (.var 3)) (.neg (.num 30))) (.pow (.var 2) 4))) (.var 1)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 341) (.var 3)) (.neg (.num 452))) (.var 3)) (.num 4771)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1023) (.var 3)) (.neg (.num 2454))) (.var 3)) (.num 8703)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1095) (.var 3)) (.neg (.num 4608))) (.var 3))
    (.num 4004)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 485) (.var 3))
    (.neg (.num 3818))) (.var 3)) (.neg (.num 864))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 72) (.var 3)) (.neg (.num 1380))) (.var 3)) (.neg (.num 936))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 168)) (.var 3)) (.neg (.num 144))) (.pow
    (.var 2) 5))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1098) (.var 3)) (.num 1256)) (.var 3)) (.num
    4808)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3843) (.var 3)) (.num 2126)) (.var 3))
    (.num 10496)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5097) (.var 3)) (.neg
    (.num 1624))) (.var 3)) (.num 5307)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3135) (.var 3)) (.neg (.num 5560))) (.var 3)) (.neg (.num 3199))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 861) (.var 3)) (.neg (.num 4144))) (.var
    3)) (.neg (.num 3865))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 78)
    (.var 3)) (.neg (.num 1180))) (.var 3)) (.neg (.num 1176))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.neg (.num 102)) (.var 3)) (.neg (.num 102))) (.pow (.var 2) 6))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 2270) (.var 3)) (.num 4952)) (.var 3)) (.num 5053))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9080) (.var 3)) (.num 17018)) (.var 3)) (.num
    15245)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14345) (.var 3)) (.num
    21146)) (.var 3)) (.num 15452)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 11255) (.var 3)) (.num 10156)) (.var 3)) (.num 3814)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 4487) (.var 3)) (.neg (.num 222))) (.var 3)) (.neg (.num
    3374))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 809) (.var 3)) (.neg
    (.num 1724))) (.var 3)) (.neg (.num 2396))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 42) (.var 3)) (.neg (.num 450))) (.var 3)) (.neg (.num 492))) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.neg (.num 24)) (.var 3)) (.neg (.num 24))) (.pow (.var 2)
    7))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2790) (.var 3)) (.num 6648)) (.var 3))
    (.num 4432)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12555) (.var 3)) (.num 28051))
    (.var 3)) (.num 17539)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 23014) (.var
    3)) (.num 47322)) (.var 3)) (.num 27156)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 21959) (.var 3)) (.num 40182)) (.var 3)) (.num 20178)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11511) (.var 3)) (.num 17430)) (.var 3)) (.num
    6587)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3175) (.var 3)) (.num
    3178)) (.var 3)) (.num 95)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    383) (.var 3)) (.neg (.num 46))) (.var 3)) (.neg (.num 429))) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.neg (.num 57))) (.var 3)) (.neg (.num 66)))
    (.pow (.var 2) 7))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1865) (.var 3))
    (.num 4220)) (.var 3)) (.num 2355)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9325) (.var
    3)) (.num 20560)) (.var 3)) (.num 11235)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 19407) (.var 3)) (.num 41491)) (.var 3)) (.num 22084)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 21678) (.var 3)) (.num 44614)) (.var 3)) (.num 22936))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13937) (.var 3)) (.num
    27280)) (.var 3)) (.num 13343)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 5103) (.var 3)) (.num 9286)) (.var 3)) (.num 4183)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 967) (.var 3)) (.num 1553)) (.var 3)) (.num 586)) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 70) (.var 3)) (.num 84)) (.var 3)) (.num
    14)) (.pow (.var 2) 7))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 540) (.var
    3)) (.num 1080)) (.var 3)) (.num 540)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2970)
    (.var 3)) (.num 5940)) (.var 3)) (.num 2970)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 6900) (.var 3)) (.num 13800)) (.var 3)) (.num 6900)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 8775) (.var 3)) (.num 17550)) (.var 3)) (.num 8775)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6600) (.var 3)) (.num 13200))
    (.var 3)) (.num 6600)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2940)
    (.var 3)) (.num 5880)) (.var 3)) (.num 2940)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 720) (.var 3)) (.num 1440)) (.var 3)) (.num 720)) (.pow (.var 2) 6))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 75) (.var 3)) (.num 150)) (.var 3)) (.num 75)) (.pow
    (.var 2) 7))) (.pow (.var 1) 4)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0)
    (.var 1)) (.var 2))) 3)) (.pow (.add (.var 1) (.var 2)) 2)) (.mul (.mul (.mul (.mul (.num 2)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num 24) (.var 2))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 750)) (.var 1)) (.mul (.add
    (.mul (.num 24) (.var 3)) (.num 624)) (.var 2))) (.var 1)) (.mul (.num 120) (.pow (.var 2)
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var
    3)) (.num 300)) (.var 3)) (.num 4044)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24) (.var
    3)) (.num 408)) (.var 3)) (.num 5070)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 12) (.var 3)) (.num 84)) (.var 3)) (.num 1944)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 24)) (.var 3)) (.num 216)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 192) (.var 3)) (.num 1800))
    (.var 3)) (.num 12598)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 480) (.var 3)) (.num
    3198)) (.var 3)) (.num 20999)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 384)
    (.var 3)) (.num 1380)) (.var 3)) (.num 11827)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 96) (.var 3)) (.neg (.num 138))) (.var 3)) (.num 2478)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 120)) (.var 3)) (.num 120)) (.pow (.var 2) 4)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    1302) (.var 3)) (.num 7116)) (.var 3)) (.num 26115)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3906) (.var 3)) (.num 16362)) (.var 3)) (.num 54664)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 4218) (.var 3)) (.num 11820)) (.var 3)) (.num 40529)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1926) (.var 3)) (.num 1962)) (.var 3))
    (.num 12040)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 312) (.var 3))
    (.neg (.num 852))) (.var 3)) (.num 852)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 240)) (.var 3)) (.neg (.num 120))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4986)
    (.var 3)) (.num 20302)) (.var 3)) (.num 40165)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    17451) (.var 3)) (.num 59112)) (.var 3)) (.num 103962)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 23493) (.var 3)) (.num 62484)) (.var 3)) (.num 99432)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15105) (.var 3)) (.num 27364)) (.var 3)) (.num
    41020)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4605) (.var 3))
    (.num 2718)) (.var 3)) (.num 5019)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 528) (.var 3)) (.neg (.num 1212))) (.var 3)) (.neg (.num 996))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.neg (.num 240)) (.var 3)) (.neg (.num 216))) (.pow (.var 2)
    6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 11945) (.var 3)) (.num 40924)) (.var 3)) (.num 48872))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 47780) (.var 3)) (.num 145354)) (.var 3)) (.num
    156411)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 76626) (.var 3)) (.num
    202332)) (.var 3)) (.num 194606)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 62648) (.var 3)) (.num 137656)) (.var 3)) (.num 115855)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 27305) (.var 3)) (.num 45040)) (.var 3)) (.num 30574))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5940) (.var 3)) (.num 4734))
    (.var 3)) (.num 772)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 492)
    (.var 3)) (.neg (.num 672))) (.var 3)) (.neg (.num 1056))) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 120)) (.var 3)) (.neg (.num 120))) (.pow (.var 2) 7)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 18342) (.var 3)) (.num 54884)) (.var 3)) (.num 46052))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 82539) (.var 3)) (.num 229500)) (.var 3)) (.num
    179599)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 153192) (.var 3)) (.num
    392396)) (.var 3)) (.num 284388)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 150990) (.var 3)) (.num 351480)) (.var 3)) (.num 232937)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 84558) (.var 3)) (.num 174348)) (.var 3)) (.num 102594))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 26511) (.var 3)) (.num
    45530)) (.var 3)) (.num 21649)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 4188) (.var 3)) (.num 4816)) (.var 3)) (.num 845)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 240) (.var 3)) (.neg (.num 90))) (.var 3)) (.neg (.num 330)))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.neg (.num 24)) (.var 3)) (.neg (.num 24)))
    (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 17478) (.var 3)) (.num
    45940)) (.var 3)) (.num 30542)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 87390) (.var 3))
    (.num 220266)) (.var 3)) (.num 141044)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 183946) (.var 3)) (.num 443126)) (.var 3)) (.num 272309)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 211444) (.var 3)) (.num 484622)) (.var 3)) (.num 284324))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 143772) (.var 3)) (.num
    311196)) (.var 3)) (.num 172751)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 58300) (.var 3)) (.num 117476)) (.var 3)) (.num 60548)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 13372) (.var 3)) (.num 24262)) (.var 3)) (.num 11040))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1482) (.var 3)) (.num 2184))
    (.var 3)) (.num 702)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48)
    (.var 3)) (.num 24)) (.var 3)) (.neg (.num 24))) (.pow (.var 2) 8))) (.var 1))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 9434) (.var 3)) (.num 21734)) (.var 3)) (.num
    12300)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 51887) (.var 3)) (.num 117305)) (.var
    3)) (.num 65418)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 121947) (.var 3))
    (.num 270227)) (.var 3)) (.num 148280)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 159609) (.var 3)) (.num 346164)) (.var 3)) (.num 186555)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 126906) (.var 3)) (.num 268810)) (.var 3)) (.num
    141904)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 62538) (.var 3))
    (.num 128893)) (.var 3)) (.num 66355)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 18538) (.var 3)) (.num 36907)) (.var 3)) (.num 18369)) (.pow (.var 2) 6))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 2986) (.var 3)) (.num 5654)) (.var 3)) (.num 2668))
    (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 195) (.var 3)) (.num 338))
    (.var 3)) (.num 143)) (.pow (.var 2) 8))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 2232) (.var 3)) (.num 4464)) (.var 3)) (.num 2232)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 13392) (.var 3)) (.num 26784)) (.var 3)) (.num 13392)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 34710) (.var 3)) (.num 69420)) (.var 3))
    (.num 34710)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50790) (.var
    3)) (.num 101580)) (.var 3)) (.num 50790)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 45949) (.var 3)) (.num 91898)) (.var 3)) (.num 45949)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 26368) (.var 3)) (.num 52736)) (.var 3)) (.num
    26368)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9396) (.var 3))
    (.num 18792)) (.var 3)) (.num 9396)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1906) (.var 3)) (.num 3812)) (.var 3)) (.num 1906)) (.pow (.var 2) 7))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 169) (.var 3)) (.num 338)) (.var 3)) (.num 169)) (.pow
    (.var 2) 8))) (.pow (.var 1) 3)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add
    (.var 0) (.var 1)) (.var 2))) 3)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.num 3) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num 20) (.var 2))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 740)) (.var 1)) (.mul (.add
    (.mul (.num 40) (.var 3)) (.num 564)) (.var 2))) (.var 1)) (.mul (.num 84) (.pow (.var 2)
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var
    3)) (.num 624)) (.var 3)) (.num 4190)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 100)
    (.var 3)) (.num 1008)) (.var 3)) (.num 5146)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 80) (.var 3)) (.num 424)) (.var 3)) (.num 1828)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 40)) (.var 3)) (.num 172)) (.pow (.var
    2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 552) (.var 3)) (.num 4384)) (.var 3)) (.num 14604)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1656) (.var 3)) (.num 9860)) (.var 3)) (.num 25668)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1796) (.var 3)) (.num 7680)) (.var 3)) (.num 15570)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 832) (.var 3)) (.num 2516)) (.var 3))
    (.num 3846)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 140) (.var 3))
    (.num 312)) (.var 3)) (.num 340)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3292) (.var 3)) (.num 18060))
    (.var 3)) (.num 35352)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11522) (.var 3)) (.num
    52084)) (.var 3)) (.num 83698)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    15614) (.var 3)) (.num 57728)) (.var 3)) (.num 75574)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 10230) (.var 3)) (.num 31172)) (.var 3)) (.num 32922)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3246) (.var 3)) (.num 8396)) (.var
    3)) (.num 7154)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 400) (.var
    3)) (.num 928)) (.var 3)) (.num 660)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11126) (.var 3))
    (.num 47756)) (.var 3)) (.num 62521)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 44504)
    (.var 3)) (.num 167628)) (.var 3)) (.num 190489)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 71946) (.var 3)) (.num 238020)) (.var 3)) (.num 234389)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 60074) (.var 3)) (.num 175956)) (.var 3)) (.num
    150433)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 27296) (.var 3))
    (.num 71976)) (.var 3)) (.num 53914)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 6390) (.var 3)) (.num 15560)) (.var 3)) (.num 10422)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 600) (.var 3)) (.num 1392)) (.var 3)) (.num 860))
    (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 23396) (.var 3)) (.num 83398)) (.var 3))
    (.num 80861)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 105282) (.var 3)) (.num 343912))
    (.var 3)) (.num 303977)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 197064)
    (.var 3)) (.num 591216)) (.var 3)) (.num 476793)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 198408) (.var 3)) (.num 549704)) (.var 3)) (.num 405949)) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 115720) (.var 3)) (.num 298790)) (.var
    3)) (.num 203464)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38938)
    (.var 3)) (.num 94848)) (.var 3)) (.num 60180)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 6948) (.var 3)) (.num 16188)) (.var 3)) (.num 9692)) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 500) (.var 3)) (.num 1128)) (.var 3)) (.num
    644)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 31379) (.var 3)) (.num
    95516)) (.var 3)) (.num 73917)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 156895) (.var
    3)) (.num 451388)) (.var 3)) (.num 330454)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 333016) (.var 3)) (.num 907112)) (.var 3)) (.num 628756)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 390694) (.var 3)) (.num 1010868)) (.var 3)) (.num 664918))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 275975) (.var 3)) (.num
    681460)) (.var 3)) (.num 426931)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 119455) (.var 3)) (.num 283136)) (.var 3)) (.num 169740)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 30618) (.var 3)) (.num 70072)) (.var 3)) (.num 40394))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4164) (.var 3)) (.num 9240))
    (.var 3)) (.num 5138)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 220)
    (.var 3)) (.num 472)) (.var 3)) (.num 252)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 26192) (.var 3)) (.num 68998)) (.var 3)) (.num 44846)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 144056) (.var 3)) (.num 367034)) (.var 3)) (.num 231600))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 341420) (.var 3)) (.num 842102))
    (.var 3)) (.num 515988)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    455970) (.var 3)) (.num 1090412)) (.var 3)) (.num 649346)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 376252) (.var 3)) (.num 874234)) (.var 3)) (.num 506658)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 197414) (.var 3)) (.num 446726))
    (.var 3)) (.num 252358)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    65010) (.var 3)) (.num 143562)) (.var 3)) (.num 79154)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 12640) (.var 3)) (.num 27260)) (.var 3)) (.num 14672)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1246) (.var 3)) (.num 2616)) (.var
    3)) (.num 1370)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40) (.var
    3)) (.num 80)) (.var 3)) (.num 40)) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 12455) (.var 3)) (.num 28580)) (.var 3)) (.num 16125)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 74730) (.var 3)) (.num 168882)) (.var 3)) (.num 94152))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 195392) (.var 3)) (.num 434992))
    (.var 3)) (.num 239600)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    291935) (.var 3)) (.num 640558)) (.var 3)) (.num 348623)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 274395) (.var 3)) (.num 593764)) (.var 3)) (.num 319369)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 168000) (.var 3)) (.num 358718))
    (.var 3)) (.num 190718)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    66824) (.var 3)) (.num 140820)) (.var 3)) (.num 73996)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 16569) (.var 3)) (.num 34438)) (.var 3)) (.num 17869)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2302) (.var 3)) (.num 4708)) (.var
    3)) (.num 2406)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 134) (.var
    3)) (.num 268)) (.var 3)) (.num 134)) (.pow (.var 2) 9))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 2598) (.var 3)) (.num 5196)) (.var 3)) (.num 2598))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16887) (.var 3)) (.num 33774)) (.var 3)) (.num
    16887)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48236) (.var 3)) (.num
    96472)) (.var 3)) (.num 48236)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 79541) (.var 3)) (.num 159082)) (.var 3)) (.num 79541)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 83558) (.var 3)) (.num 167116)) (.var 3)) (.num 83558))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 58089) (.var 3)) (.num
    116178)) (.var 3)) (.num 58089)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 26776) (.var 3)) (.num 53552)) (.var 3)) (.num 26776)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 7907) (.var 3)) (.num 15814)) (.var 3)) (.num 7907)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1360) (.var 3)) (.num 2720)) (.var
    3)) (.num 1360)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 104) (.var
    3)) (.num 208)) (.var 3)) (.num 104)) (.pow (.var 2) 9))) (.pow (.var 1) 2)))) (.pow (.var 0)
    2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.mul (.mul
    (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.pow (.var 0) 2))
    (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var 2)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 24)) (.var 3)) (.num
    20)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num
    28)) (.var 3)) (.num 18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.var 0))) (.pow (.var 0) 5))
    (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    2) (.var 0)) (.mul (.num 8) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2) (.var
    3)) (.num 4)) (.var 3)) (.num 12)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 8) (.var 3)) (.num 12)) (.var 3)) (.num 8)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 10) (.var 3)) (.num 12)) (.var 3)) (.num 2)) (.pow (.var 2) 4))) (.var
    0)) (.mul (.mul (.add (.mul (.num 4) (.var 3)) (.num 4)) (.var 3)) (.pow (.var 2) 5))) (.pow
    (.var 0) 3))) (.pow (.var 0) 3))) (.mul (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.mul (.num 4) (.var 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 16)) (.var 3)) (.num 8))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20))
    (.var 3)) (.num 10)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.pow (.var 0) 2))) (.pow (.var 0)
    4))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.mul (.mul (.num 3) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 6) (.var 0)) (.mul (.add (.mul (.num 4) (.var 3)) (.num 60)) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 40)) (.var 3)) (.num 157))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 94) (.var 3)) (.num 284))
    (.var 3)) (.num 357)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 393)
    (.var 3)) (.num 1136)) (.var 3)) (.num 989)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 807) (.var 3)) (.num 2306)) (.var 3)) (.num 1755)) (.pow (.var 2) 5))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 900) (.var 3)) (.num 2448)) (.var 3)) (.num 1667))
    (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 546) (.var 3)) (.num 1356))
    (.var 3)) (.num 827)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 163)
    (.var 3)) (.num 360)) (.var 3)) (.num 197)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 17) (.var 3)) (.num 34)) (.var 3)) (.num 17)) (.pow (.var 2) 9))) (.var 0)))
    (.pow (.var 0) 5)) (.mul (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.mul (.add
    (.mul (.num 8) (.var 3)) (.num 148)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    16) (.var 3)) (.num 88)) (.var 3)) (.num 576)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 192) (.var 3)) (.num 564)) (.var 3)) (.num 1344)) (.pow (.var 2) 3))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 818) (.var 3)) (.num 2008)) (.var 3)) (.num 2360))
    (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1726) (.var 3)) (.num 3906))
    (.var 3)) (.num 3050)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2006)
    (.var 3)) (.num 4252)) (.var 3)) (.num 2600)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1298) (.var 3)) (.num 2564)) (.var 3)) (.num 1324)) (.pow (.var 2) 7)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 432) (.var 3)) (.num 788)) (.var 3)) (.num 356))
    (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 56) (.var 3)) (.num 94))
    (.var 3)) (.num 38)) (.pow (.var 2) 9))) (.pow (.var 0) 3))) (.pow (.var 0) 3))) (.mul (.mul
    (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.mul (.add (.mul (.num 8) (.var 3)) (.num
    134)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 84)) (.var
    3)) (.num 430)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 190) (.var
    3)) (.num 554)) (.var 3)) (.num 892)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 802) (.var 3)) (.num 2072)) (.var 3)) (.num 1796)) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1674) (.var 3)) (.num 4172)) (.var 3)) (.num 2886)) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1918) (.var 3)) (.num 4624)) (.var
    3)) (.num 2878)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1216) (.var
    3)) (.num 2794)) (.var 3)) (.num 1608)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 392) (.var 3)) (.num 844)) (.var 3)) (.num 452)) (.pow (.var 2) 8))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 48) (.var 3)) (.num 96)) (.var 3)) (.num 48)) (.pow (.var
    2) 9))) (.pow (.var 0) 2))) (.pow (.var 0) 4))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 6) (.var 0)) (.mul (.add (.mul (.num 4) (.var 3)) (.num 88)) (.var 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 48)) (.var 3)) (.num 427)) (.pow (.var 2)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 98) (.var 3)) (.num 280)) (.var 3)) (.num
    1051)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 425) (.var 3)) (.num
    860)) (.var 3)) (.num 1511)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    919) (.var 3)) (.num 1500)) (.var 3)) (.num 1331)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1106) (.var 3)) (.num 1544)) (.var 3)) (.num 713)) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 752) (.var 3)) (.num 928)) (.var 3)) (.num 217))
    (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 269) (.var 3)) (.num 300))
    (.var 3)) (.num 31)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 39)
    (.var 3)) (.num 40)) (.var 3)) (.num 1)) (.pow (.var 2) 9))) (.pow (.var 0) 5))) (.pow (.var
    0) 1))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.mul (.add (.mul (.num 8)
    (.var 3)) (.num 162)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3))
    (.num 92)) (.var 3)) (.num 700)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 194) (.var 3)) (.num 550)) (.var 3)) (.num 1586)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 834) (.var 3)) (.num 1794)) (.var 3)) (.num 2300)) (.pow (.var
    2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1786) (.var 3)) (.num 3346)) (.var 3))
    (.num 2382)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2124) (.var 3))
    (.num 3672)) (.var 3)) (.num 1812)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1422) (.var 3)) (.num 2338)) (.var 3)) (.num 950)) (.pow (.var 2) 7))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 498) (.var 3)) (.num 794)) (.var 3)) (.num 296)) (.pow
    (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 70) (.var 3)) (.num 110)) (.var
    3)) (.num 40)) (.pow (.var 2) 9))) (.pow (.var 0) 4))) (.pow (.var 0) 2))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow2210.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow2210.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow2210.leading0 e g v + f * FullLow2210.leading1 e g v +
        f^2 * FullLow2210.remainder e f g v := by
  have hden : denominatorOne FullLow2210.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow2210.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow2210.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 137438953472 19 12 2) lhs =
      value (Encoding4.vars 137438953472 19 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 137438953472 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 19 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 19 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow2210.source e f g v =
      FullLow2210.leading0 e g v + f * FullLow2210.leading1 e g v +
        f^2 * FullLow2210.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 137438953472 19 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow221Encoded0

namespace SPR.N6.Tail.CoreEndpoint.FullLow221
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition0 (e f g v : ℝ) :
    FullLow2210.source e f g v =
      FullLow2210.leading0 e g v + f * FullLow2210.leading1 e g v +
        f^2 * FullLow2210.remainder e f g v :=
  FullLow221Encoded0.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow221
