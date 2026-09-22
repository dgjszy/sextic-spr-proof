import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow104Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^5 layer of FullLow104.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow104Encoded5
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.mul (.mul (.num 2) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 90) (.var 1)) (.mul (.num 30) (.var 2))) (.var 0)) (.add
    (.mul (.add (.mul (.num 750) (.var 1)) (.mul (.num 516) (.var 2))) (.var 1)) (.mul (.num 66)
    (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 2733) (.var 1)) (.mul
    (.num 2808) (.var 2))) (.var 1)) (.mul (.num 687) (.pow (.var 2) 2))) (.var 1)) (.mul (.num
    12) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5403)
    (.var 1)) (.mul (.num 7278) (.var 2))) (.var 1)) (.mul (.num 2547) (.pow (.var 2) 2))) (.var
    1)) (.mul (.num 12) (.pow (.var 2) 3))) (.var 1)) (.mul (.neg (.num 60)) (.pow (.var 2) 4))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6429) (.var 1))
    (.mul (.num 11082) (.var 2))) (.var 1)) (.mul (.num 5565) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.num 360) (.pow (.var 2) 3))) (.var 1)) (.mul (.neg (.num 294)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.neg (.num 42)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 4590) (.var 1)) (.mul (.num 10314) (.var 2))) (.var
    1)) (.mul (.num 7971) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 2316) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.num 75) (.pow (.var 2) 4))) (.var 1)) (.mul (.neg (.num 60)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.neg (.num 6)) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1512) (.var 1)) (.mul (.num 4374)
    (.var 2))) (.var 1)) (.mul (.num 4893) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 2724) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.num 816) (.pow (.var 2) 4))) (.var 1)) (.mul (.num 132) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.num 9) (.pow (.var 2) 6))) (.var 1)))) (.pow (.mul (.add (.var
    0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)) (.mul (.mul (.num 3) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 330) (.var 1)) (.mul (.num 110) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.num 60) (.var 3)) (.num 3420)) (.var 1)) (.mul (.add (.mul (.num 60) (.var 3)) (.num
    2398)) (.var 2))) (.var 1)) (.mul (.num 318) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 564) (.var 3)) (.num 15937)) (.var 1)) (.mul (.add (.mul
    (.num 708) (.var 3)) (.num 16802)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 84) (.var 3))
    (.num 4407)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 60)) (.var 3)) (.num
    122)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 2556) (.var 3)) (.num 43181)) (.var 1)) (.mul (.add (.mul (.num 3924) (.var 3))
    (.num 60500)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 852) (.var 3)) (.num 23569)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 744)) (.var 3)) (.num 1072)) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 228)) (.var 3)) (.neg (.num 478))) (.pow (.var
    2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 7344) (.var 3)) (.num 76250)) (.var 1)) (.mul (.add (.mul (.num 14154) (.var 3)) (.num
    136457)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 5994) (.var 3)) (.num 75147)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 2610)) (.var 3)) (.num 8463)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 2106)) (.var 3)) (.neg (.num 3399)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 312)) (.var 3)) (.neg (.num 622)))
    (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 15072) (.var 3)) (.num 92998)) (.var 1)) (.mul (.add (.mul (.num
    38124) (.var 3)) (.num 213020)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 30900) (.var 3))
    (.num 170566)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 5484) (.var 3)) (.num
    51272)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 3864)) (.var 3)) (.num
    428)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 1668)) (.var 3)) (.neg (.num
    2158))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 168)) (.var 3)) (.neg
    (.num 238))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 21000) (.var 3)) (.num 77030)) (.var 1))
    (.mul (.add (.mul (.num 68316) (.var 3)) (.num 225338)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.num 85092) (.var 3)) (.num 256440)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num
    50292) (.var 3)) (.num 143702)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.num 13896)
    (.var 3)) (.num 41557)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.num 1332) (.var 3))
    (.num 6050)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 60)) (.var 3)) (.num
    409)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.num 6))
    (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 16668) (.var 3)) (.num 38448)) (.var 1))
    (.mul (.add (.mul (.num 66024) (.var 3)) (.num 140040)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.num 107808) (.var 3)) (.num 211370)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num
    94716) (.var 3)) (.num 173356)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.num 49332)
    (.var 3)) (.num 85573)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.num 15888) (.var 3))
    (.num 26580)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.num 3144) (.var 3)) (.num
    5103)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.num 336) (.var 3)) (.num 512)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.num 12) (.var 3)) (.num 14)) (.pow (.var 2) 8))))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 5472) (.var 3)) (.num 8496)) (.var 1)) (.mul (.add (.mul
    (.num 25236) (.var 3)) (.num 37224)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 49728) (.var
    3)) (.num 69874)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 55140) (.var 3)) (.num
    74134)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.num 38148) (.var 3)) (.num 49382))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.num 17166) (.var 3)) (.num 21553)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.num 4986) (.var 3)) (.num 6111)) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.num 858) (.var 3)) (.num 1029)) (.pow (.var 2) 7))) (.var
    1)) (.mul (.add (.mul (.num 66) (.var 3)) (.num 77)) (.pow (.var 2) 8))) (.var 1)))) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 2))) (.mul (.mul
    (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 225) (.var 1)) (.mul (.num 75) (.var
    2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 80) (.var 3)) (.num 2865)) (.var 1))
    (.mul (.add (.mul (.num 80) (.var 3)) (.num 2050)) (.var 2))) (.var 1)) (.mul (.num 285) (.pow
    (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30)
    (.var 3)) (.num 976)) (.var 3)) (.num 16800)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    75) (.var 3)) (.num 1332)) (.var 3)) (.num 18331)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 60) (.var 3)) (.num 306)) (.var 3)) (.num 5299)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 3)) (.neg (.num 50))) (.var 3)) (.num 268))
    (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 408) (.var 3)) (.num 5936)) (.var 3)) (.num 59938)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1224) (.var 3)) (.num 10704)) (.var 3)) (.num 88587)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 1329) (.var 3)) (.num 5198)) (.var 3)) (.num 40039))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 618) (.var 3)) (.num 278))
    (.var 3)) (.num 4870)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 105)
    (.var 3)) (.neg (.num 152))) (.var 3)) (.neg (.num 220))) (.pow (.var 2) 4)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2562)
    (.var 3)) (.num 23700)) (.var 3)) (.num 146959)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    8967) (.var 3)) (.num 55698)) (.var 3)) (.num 281537)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 12159) (.var 3)) (.num 44688)) (.var 3)) (.num 184483)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7980) (.var 3)) (.num 14098)) (.var 3)) (.num
    45064)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2541) (.var 3))
    (.num 1434)) (.var 3)) (.num 1785)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 315) (.var 3)) (.num 26)) (.var 3)) (.neg (.num 374))) (.pow (.var 2) 5)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 9540) (.var 3)) (.num 67640)) (.var 3)) (.num 264761)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 38160) (.var 3)) (.num 202312)) (.var 3)) (.num 648291)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 61743) (.var 3)) (.num 234100)) (.var 3)) (.num
    600184)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 51669) (.var 3))
    (.num 134910)) (.var 3)) (.num 261592)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 23574) (.var 3)) (.num 42378)) (.var 3)) (.num 55114)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 5553) (.var 3)) (.num 7556)) (.var 3)) (.num 5586))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 525) (.var 3)) (.num 660))
    (.var 3)) (.num 310)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 22896) (.var 3)) (.num
    137032)) (.var 3)) (.num 356691)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 103032) (.var
    3)) (.num 502414)) (.var 3)) (.num 1099523)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 193176) (.var 3)) (.num 758936)) (.var 3)) (.num 1379487)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 195300) (.var 3)) (.num 618544)) (.var 3)) (.num
    919882)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 114774) (.var 3))
    (.num 299556)) (.var 3)) (.num 361058)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 39093) (.var 3)) (.num 88406)) (.var 3)) (.num 87722)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 7104) (.var 3)) (.num 14930)) (.var 3)) (.num 12851))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 525) (.var 3)) (.num 1090))
    (.var 3)) (.num 860)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 35949)
    (.var 3)) (.num 187134)) (.var 3)) (.num 347931)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 179745) (.var 3)) (.num 810188)) (.var 3)) (.num 1313882)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 382686) (.var 3)) (.num 1494754)) (.var 3)) (.num 2110439))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 452274) (.var 3)) (.num
    1544224)) (.var 3)) (.num 1902253)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 323727) (.var 3)) (.num 984758)) (.var 3)) (.num 1068618)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 143151) (.var 3)) (.num 399388)) (.var 3)) (.num
    389318)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 37929) (.var 3))
    (.num 100388)) (.var 3)) (.num 90167)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 5436) (.var 3)) (.num 14034)) (.var 3)) (.num 11830)) (.pow (.var 2) 7))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 315) (.var 3)) (.num 800)) (.var 3)) (.num 628)) (.pow
    (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 35586) (.var 3)) (.num
    160316)) (.var 3)) (.num 228269)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 195723) (.var
    3)) (.num 796382)) (.var 3)) (.num 1022672)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 466233) (.var 3)) (.num 1720960)) (.var 3)) (.num 1997650)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 630126) (.var 3)) (.num 2129394)) (.var 3))
    (.num 2247311)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 531078)
    (.var 3)) (.num 1666648)) (.var 3)) (.num 1615339)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 288246) (.var 3)) (.num 855592)) (.var 3)) (.num 772020)) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 100020) (.var 3)) (.num 286292)) (.var
    3)) (.num 243972)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 21114)
    (.var 3)) (.num 59172)) (.var 3)) (.num 48072)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2397) (.var 3)) (.num 6602)) (.var 3)) (.num 5090)) (.pow (.var 2)
    8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 105) (.var 3)) (.num 278)) (.var 3)) (.num
    195)) (.pow (.var 2) 9)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 20034) (.var 3)) (.num 76860)) (.var 3)) (.num 88767)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 120204) (.var 3)) (.num 429372)) (.var 3)) (.num 458523)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 316713) (.var 3)) (.num 1058286)) (.var 3)) (.num
    1048173)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 481695) (.var 3))
    (.num 1516864)) (.var 3)) (.num 1400932)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 467124) (.var 3)) (.num 1400162)) (.var 3)) (.num 1214951)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 300570) (.var 3)) (.num 867676)) (.var 3))
    (.num 713655)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 129060) (.var
    3)) (.num 363066)) (.var 3)) (.num 285462)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 36060) (.var 3)) (.num 99770)) (.var 3)) (.num 75399)) (.pow (.var 2) 7)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6120) (.var 3)) (.num 16700)) (.var 3)) (.num
    12111)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 537) (.var 3)) (.num
    1428)) (.var 3)) (.num 976)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    15) (.var 3)) (.num 36)) (.var 3)) (.num 21)) (.pow (.var 2) 10)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4860) (.var 3)) (.num 15624)) (.var 3))
    (.num 15318)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 31590) (.var 3)) (.num 96804))
    (.var 3)) (.num 89199)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 91206) (.var
    3)) (.num 267376)) (.var 3)) (.num 232240)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 154143) (.var 3)) (.num 434470)) (.var 3)) (.num 357304)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 169035) (.var 3)) (.num 460964)) (.var 3))
    (.num 360867)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 125820) (.var
    3)) (.num 334292)) (.var 3)) (.num 250517)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 64464) (.var 3)) (.num 168016)) (.var 3)) (.num 121100)) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 22485) (.var 3)) (.num 57810)) (.var 3)) (.num
    40171)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5121) (.var 3))
    (.num 13028)) (.var 3)) (.num 8711)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 690) (.var 3)) (.num 1736)) (.var 3)) (.num 1107)) (.pow (.var 2) 9))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 42) (.var 3)) (.num 104)) (.var 3)) (.num 62)) (.pow (.var
    2) 10))) (.var 1)))) (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))))) (.mul (.num 5) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 27)
    (.var 1)) (.mul (.num 9) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 14)
    (.var 3)) (.num 420)) (.var 1)) (.mul (.add (.mul (.num 14) (.var 3)) (.num 307)) (.var 2)))
    (.var 1)) (.mul (.num 45) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 230)) (.var 3)) (.num 3067)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 25) (.var 3)) (.num 338)) (.var 3)) (.num 3479)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 108)) (.var 3)) (.num 1111))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 5) (.pow (.var 3) 2)) (.num 83)) (.pow
    (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 159) (.var 3)) (.num 1882)) (.var 3)) (.num 14027)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 477) (.var 3)) (.num 3770)) (.var 3)) (.num 21943)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 518) (.var 3)) (.num 2404)) (.var 3)) (.num 11330)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 241) (.var 3)) (.num 554)) (.var
    3)) (.num 2107)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 41) (.var
    3)) (.num 38)) (.var 3)) (.num 93)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1182) (.var 3)) (.num 9956))
    (.var 3)) (.num 45416)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4137) (.var 3)) (.num
    25774)) (.var 3)) (.num 93075)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5615)
    (.var 3)) (.num 24778)) (.var 3)) (.num 70059)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 3695) (.var 3)) (.num 11246)) (.var 3)) (.num 23749)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1183) (.var 3)) (.num 2538)) (.var 3))
    (.num 3611)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 148) (.var 3))
    (.num 252)) (.var 3)) (.num 218)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5357) (.var 3)) (.num
    36974)) (.var 3)) (.num 110981)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 21428) (.var
    3)) (.num 118344)) (.var 3)) (.num 289590)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 34722) (.var 3)) (.num 151764)) (.var 3)) (.num 299776)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 29168) (.var 3)) (.num 101308)) (.var 3)) (.num 158784))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13405) (.var 3)) (.num
    38086)) (.var 3)) (.num 46719)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3196) (.var 3)) (.num 7888)) (.var 3)) (.num 7716)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 308) (.var 3)) (.num 716)) (.var 3)) (.num 602)) (.pow (.var 2)
    6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 16266) (.var 3)) (.num 98588)) (.var 3)) (.num 209588))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 73197) (.var 3)) (.num 376064)) (.var 3)) (.num
    678379)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 137512) (.var 3)) (.num
    599462)) (.var 3)) (.num 916796)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 139706) (.var 3)) (.num 522290)) (.var 3)) (.num 678594)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 82838) (.var 3)) (.num 271762)) (.var 3)) (.num 303216))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 28623) (.var 3)) (.num
    85358)) (.var 3)) (.num 83893)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 5316) (.var 3)) (.num 15032)) (.var 3)) (.num 13520)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 406) (.var 3)) (.num 1132)) (.var 3)) (.num 966)) (.pow
    (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 34286) (.var 3)) (.num 188102))
    (.var 3)) (.num 303476)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 171430) (.var 3)) (.num
    830654)) (.var 3)) (.num 1183802)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    365837) (.var 3)) (.num 1573504)) (.var 3)) (.num 1989303)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 434768) (.var 3)) (.num 1678204)) (.var 3)) (.num
    1897362)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 314290) (.var 3))
    (.num 1107870)) (.var 3)) (.num 1135294)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 141188) (.var 3)) (.num 465018)) (.var 3)) (.num 440204)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38321) (.var 3)) (.num 120964)) (.var 3))
    (.num 108085)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5698) (.var
    3)) (.num 17644)) (.var 3)) (.num 15152)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 350) (.var 3)) (.num 1080)) (.var 3)) (.num 898)) (.pow (.var 2) 8)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 50292) (.var 3)) (.num 252706)) (.var 3))
    (.num 327502)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 276606) (.var 3)) (.num 1263778))
    (.var 3)) (.num 1496800)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 660492)
    (.var 3)) (.num 2760224)) (.var 3)) (.num 3003612)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 897669) (.var 3)) (.num 3464414)) (.var 3)) (.num 3491425)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 764020) (.var 3)) (.num 2759168))
    (.var 3)) (.num 2603074)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    421190) (.var 3)) (.num 1446088)) (.var 3)) (.num 1293520)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 149702) (.var 3)) (.num 496878)) (.var 3)) (.num 426864))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 32811) (.var 3)) (.num
    106876)) (.var 3)) (.num 89083)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3966) (.var 3)) (.num 12808)) (.var 3)) (.num 10399)) (.pow (.var 2) 8))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 196) (.var 3)) (.num 628)) (.var 3)) (.num 493)) (.pow
    (.var 2) 9)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 50160)
    (.var 3)) (.num 232344)) (.var 3)) (.num 252408)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 300960) (.var 3)) (.num 1294224)) (.var 3)) (.num 1319424)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 794764) (.var 3)) (.num 3190580)) (.var 3)) (.num 3066168))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1215020) (.var 3)) (.num
    4589416)) (.var 3)) (.num 4182972)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1188855) (.var 3)) (.num 4267250)) (.var 3)) (.num 3716343)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 775860) (.var 3)) (.num 2676232)) (.var 3))
    (.num 2245290)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 340482)
    (.var 3)) (.num 1141528)) (.var 3)) (.num 929776)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 98460) (.var 3)) (.num 324036)) (.var 3)) (.num 257724)) (.pow (.var
    2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17719) (.var 3)) (.num 57604)) (.var 3))
    (.num 44825)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1748) (.var
    3)) (.num 5610)) (.var 3)) (.num 4249)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 68) (.var 3)) (.num 212)) (.var 3)) (.num 153)) (.pow (.var 2) 10)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 32256) (.var 3)) (.num
    138876)) (.var 3)) (.num 130380)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 209664) (.var
    3)) (.num 850728)) (.var 3)) (.num 764832)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 606552) (.var 3)) (.num 2330376)) (.var 3)) (.num 2012520)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 1029732) (.var 3)) (.num 3769308)) (.var 3)) (.num
    3139620)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1137978) (.var 3))
    (.num 3998036)) (.var 3)) (.num 3227184)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 857367) (.var 3)) (.num 2914016)) (.var 3)) (.num 2290769)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 447496) (.var 3)) (.num 1482570)) (.var 3))
    (.num 1140132)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 160706)
    (.var 3)) (.num 522138)) (.var 3)) (.num 393994)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 38468) (.var 3)) (.num 122924)) (.var 3)) (.num 91037)) (.pow (.var 2)
    8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5724) (.var 3)) (.num 17936)) (.var 3))
    (.num 12976)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 456) (.var 3))
    (.num 1380)) (.var 3)) (.num 961)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 13) (.var 3)) (.num 36)) (.var 3)) (.num 23)) (.pow (.var 2) 11)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11988)
    (.var 3)) (.num 48600)) (.var 3)) (.num 40284)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    83916) (.var 3)) (.num 324108)) (.var 3)) (.num 261360)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 263868) (.var 3)) (.num 974676)) (.var 3)) (.num 765960)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 492300) (.var 3)) (.num 1747548)) (.var
    3)) (.num 1341432)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 605994)
    (.var 3)) (.num 2078562)) (.var 3)) (.num 1562652)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 517218) (.var 3)) (.num 1723710)) (.var 3)) (.num 1272666)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 312659) (.var 3)) (.num 1017316))
    (.var 3)) (.num 739373)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    134060) (.var 3)) (.num 427192)) (.var 3)) (.num 305990)) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 40067) (.var 3)) (.num 125016)) (.var 3)) (.num 88163)) (.pow
    (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8003) (.var 3)) (.num 24300))
    (.var 3)) (.num 16785)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 981)
    (.var 3)) (.num 2848)) (.var 3)) (.num 1901)) (.pow (.var 2) 10))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 61) (.var 3)) (.num 162)) (.var 3)) (.num 101)) (.pow (.var 2) 11))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.num 2)) (.var 3)) (.num 1)) (.pow (.var
    2) 12)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 1944) (.var 3)) (.num 7560)) (.var 3)) (.num 5616)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 14580) (.var 3)) (.num 54432)) (.var 3)) (.num 39852)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 49500) (.var 3)) (.num 177984)) (.var 3)) (.num
    128484)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 100620) (.var 3))
    (.num 349812)) (.var 3)) (.num 249192)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 136416) (.var 3)) (.num 460482)) (.var 3)) (.num 324066)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 129954) (.var 3)) (.num 427614)) (.var 3)) (.num
    297660)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 89172) (.var 3))
    (.num 286884)) (.var 3)) (.num 197712)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 44379) (.var 3)) (.num 139734)) (.var 3)) (.num 95355)) (.pow (.var 2) 7))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 15882) (.var 3)) (.num 48808)) (.var 3)) (.num 32926))
    (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3981) (.var 3)) (.num
    11826)) (.var 3)) (.num 7845)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 663) (.var 3)) (.num 1860)) (.var 3)) (.num 1197)) (.pow (.var 2) 10))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 66) (.var 3)) (.num 166)) (.var 3)) (.num 100)) (.pow (.var 2)
    11))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 6)) (.var 3)) (.num 3))
    (.pow (.var 2) 12))) (.var 1)))))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.add (.add (.add (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 9) (.var 0)) (.mul (.neg (.num 9)) (.var 2))) (.var 0)) (.mul (.add (.mul (.num 5) (.pow
    (.var 3) 2)) (.num 2)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 11)
    (.var 3)) (.num 38)) (.var 3)) (.num 36)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 7) (.var 3)) (.num 24)) (.var 3)) (.num 17)) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.num 2)) (.var 3)) (.num 1)) (.pow (.var 2)
    5)))) (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 15) (.var 0))
    (.mul (.neg (.num 24)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3))
    (.neg (.num 10))) (.var 3)) (.neg (.num 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 6) (.var 3)) (.num 26)) (.var 3)) (.num 26)) (.pow (.var 2) 3))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 8)) (.var 3)) (.num 5)) (.pow (.var 2)
    4)))) (.pow (.var 0) 1))) (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.num 11)
    (.var 0)) (.mul (.neg (.num 21)) (.var 2))) (.var 0)) (.mul (.add (.mul (.neg (.num 6)) (.var
    3)) (.num 3)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.num 6) (.var 3)) (.num 7))
    (.pow (.var 2) 3)))) (.pow (.var 0) 2))) (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.num 3)
    (.var 0)) (.mul (.neg (.num 6)) (.var 2))) (.var 0)) (.mul (.num 3) (.pow (.var 2) 2)))) (.pow
    (.var 0) 3))) (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    24) (.var 0)) (.mul (.neg (.num 3)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    8) (.var 3)) (.neg (.num 10))) (.var 3)) (.neg (.num 22))) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 17) (.var 3)) (.num 32)) (.var 3)) (.num 22)) (.pow (.var 2)
    3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 28)) (.var 3)) (.num
    18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.num 2))
    (.var 3)) (.num 1)) (.pow (.var 2) 5))))) (.mul (.mul (.num 12) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 26) (.var 0)) (.mul (.neg (.num 23)) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 3) (.var 3)) (.neg (.num 16))) (.var 3)) (.neg (.num 19))) (.pow (.var
    2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 20)) (.var 3)) (.num
    19)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 8))
    (.var 3)) (.num 5)) (.pow (.var 2) 4)))) (.pow (.var 0) 1))) (.mul (.mul (.num 12) (.add (.mul
    (.add (.mul (.add (.mul (.num 14) (.var 0)) (.mul (.neg (.num 21)) (.var 2))) (.var 0)) (.mul
    (.mul (.neg (.num 6)) (.var 3)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.num 6) (.var
    3)) (.num 7)) (.pow (.var 2) 3)))) (.pow (.var 0) 2))) (.mul (.mul (.num 4) (.add (.mul (.add
    (.mul (.num 3) (.var 0)) (.mul (.neg (.num 6)) (.var 2))) (.var 0)) (.mul (.num 3) (.pow (.var
    2) 2)))) (.pow (.var 0) 3))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.add (.mul (.num 1) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 144) (.var 0)) (.mul (.add (.mul (.num 60) (.var 3)) (.num 1215)) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 64) (.var 3)) (.num 200)) (.var 3)) (.num 1957))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 575) (.var 3)) (.num 488))
    (.var 3)) (.num 828)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1817)
    (.var 3)) (.num 2804)) (.var 3)) (.num 1990)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 2743) (.var 3)) (.num 6526)) (.var 3)) (.num 5313)) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2137) (.var 3)) (.num 6116)) (.var 3)) (.num
    4755)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 828) (.var 3)) (.num
    2422)) (.var 3)) (.num 1706)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 134) (.var 3)) (.num 356)) (.var 3)) (.num 222)) (.pow (.var 2) 8))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 12)) (.var 3)) (.num 6)) (.pow (.var 2) 9))))
    (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 156) (.var 0)) (.mul (.add (.mul (.num 44) (.var 3)) (.num
    1175)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 58)) (.var
    3)) (.num 1230)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 210) (.var
    3)) (.neg (.num 246))) (.var 3)) (.neg (.num 840))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 642) (.var 3)) (.num 480)) (.var 3)) (.neg (.num 54))) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 912) (.var 3)) (.num 2414)) (.var 3)) (.num
    2505)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 636) (.var 3)) (.num
    2170)) (.var 3)) (.num 1986)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 198) (.var 3)) (.num 624)) (.var 3)) (.num 476)) (.pow (.var 2) 7))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 18) (.var 3)) (.num 48)) (.var 3)) (.num 30)) (.pow (.var 2)
    8)))) (.pow (.var 0) 1))) (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 84) (.var 0)) (.mul (.add (.mul (.num 12) (.var 3))
    (.num 575)) (.var 2))) (.var 0)) (.mul (.num 367) (.pow (.var 2) 2))) (.var 0)) (.mul (.add
    (.mul (.neg (.num 168)) (.var 3)) (.neg (.num 761))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.neg (.num 108)) (.var 3)) (.neg (.num 139))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.num 336) (.var 3)) (.num 776)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.num
    276) (.var 3)) (.num 400)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.num 36) (.var 3))
    (.num 42)) (.pow (.var 2) 7)))) (.pow (.var 0) 2))) (.mul (.mul (.num 1) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 18) (.var 0)) (.mul (.num 114)
    (.var 2))) (.var 0)) (.mul (.num 42) (.pow (.var 2) 2))) (.var 0)) (.mul (.neg (.num 156))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.num 42) (.pow (.var 2) 4))) (.var 0)) (.mul (.num 114)
    (.pow (.var 2) 5))) (.var 0)) (.mul (.num 18) (.pow (.var 2) 6)))) (.pow (.var 0) 3))) (.mul
    (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 150) (.var 0)) (.mul (.add (.mul (.num 52) (.var 3)) (.num
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
    (.pow (.var 2) 9))))) (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 120) (.var 0)) (.mul (.add (.mul (.num
    28) (.var 3)) (.num 924)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 12) (.var
    3)) (.num 32)) (.var 3)) (.num 1111)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 105) (.var 3)) (.neg (.num 228))) (.var 3)) (.neg (.num 507))) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 321) (.var 3)) (.num 18)) (.var 3)) (.neg (.num
    548))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 456) (.var 3)) (.num
    1084)) (.var 3)) (.num 1019)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 318) (.var 3)) (.num 1094)) (.var 3)) (.num 1006)) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 99) (.var 3)) (.num 324)) (.var 3)) (.num 252)) (.pow (.var 2)
    7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.num 24)) (.var 3)) (.num
    15)) (.pow (.var 2) 8)))) (.pow (.var 0) 1))) (.mul (.mul (.num 3) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 51) (.var 0)) (.mul (.add
    (.mul (.num 6) (.var 3)) (.num 355)) (.var 2))) (.var 0)) (.mul (.num 269) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.neg (.num 84)) (.var 3)) (.neg (.num 400))) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.neg (.num 54)) (.var 3)) (.neg (.num 122))) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.num 168) (.var 3)) (.num 388)) (.pow (.var 2) 5))) (.var 0))
    (.mul (.add (.mul (.num 138) (.var 3)) (.num 206)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add
    (.mul (.num 18) (.var 3)) (.num 21)) (.pow (.var 2) 7)))) (.pow (.var 0) 2))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow1045.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow1045.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow1045.leading0 e g v + f * FullLow1045.leading1 e g v +
        f^2 * FullLow1045.remainder e f g v := by
  have hden : denominatorOne FullLow1045.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow1045.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow1045.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 17179869184 13 12 2) lhs =
      value (Encoding4.vars 17179869184 13 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 17179869184 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 13 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 13 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow1045.source e f g v =
      FullLow1045.leading0 e g v + f * FullLow1045.leading1 e g v +
        f^2 * FullLow1045.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 17179869184 13 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow104Encoded5

namespace SPR.N6.Tail.CoreEndpoint.FullLow104
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition5 (e f g v : ℝ) :
    FullLow1045.source e f g v =
      FullLow1045.leading0 e g v + f * FullLow1045.leading1 e g v +
        f^2 * FullLow1045.remainder e f g v :=
  FullLow104Encoded5.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow104
