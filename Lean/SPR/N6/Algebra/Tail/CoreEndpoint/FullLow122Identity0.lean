import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow122Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^0 layer of FullLow122.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow122Encoded0
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 6) (.var 1)) (.var 0)) (.mul
    (.add (.mul (.num 96) (.var 1)) (.mul (.num 42) (.var 2))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 502) (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.num 433))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.num 84)) (.pow (.var 2)
    2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 6) (.var 3)) (.neg (.num 48))) (.var 3)) (.num 1219)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 12) (.var 3)) (.neg (.num 150))) (.var 3)) (.num 1493)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 6) (.var 3)) (.neg (.num 144))) (.var 3)) (.num 505)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 42)) (.var 3)) (.num 36)) (.pow (.var 2)
    3))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 54) (.var 3)) (.neg (.num 252))) (.var 3)) (.num 1527)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 135) (.var 3)) (.neg (.num 853))) (.var 3)) (.num 2143)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 108) (.var 3)) (.neg (.num 1040))) (.var
    3)) (.num 622)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 27) (.var
    3)) (.neg (.num 529))) (.var 3)) (.neg (.num 177))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 90)) (.var 3)) (.neg (.num 66))) (.pow (.var 2) 4))) (.var 1))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 223) (.var 3)) (.neg (.num 256))) (.var 3)) (.num 1168)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 669) (.var 3)) (.neg (.num 1336))) (.var 3)) (.num 1479)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 714) (.var 3)) (.neg (.num 2455))) (.var 3)) (.neg
    (.num 634))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 313) (.var 3))
    (.neg (.num 1992))) (.var 3)) (.neg (.num 1563))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 45) (.var 3)) (.neg (.num 695))) (.var 3)) (.neg (.num 669))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 78)) (.var 3)) (.neg (.num 78))) (.pow
    (.var 2) 5))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 568) (.var 3)) (.num 712)) (.var 3)) (.num
    1030)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1988) (.var 3)) (.num 1622)) (.var 3))
    (.num 1888)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2622) (.var 3)) (.num
    490)) (.var 3)) (.neg (.num 97))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1585) (.var 3)) (.neg (.num 1335))) (.var 3)) (.neg (.num 2150))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 416) (.var 3)) (.neg (.num 1242))) (.var 3))
    (.neg (.num 1555))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33)
    (.var 3)) (.neg (.num 351))) (.var 3)) (.neg (.num 384))) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 24)) (.var 3)) (.neg (.num 24))) (.pow (.var 2) 6))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 870) (.var 3)) (.num 1816)) (.var 3)) (.num 1170)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 3480) (.var 3)) (.num 6578)) (.var 3)) (.num 3772)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 5465) (.var 3)) (.num 8973)) (.var 3)) (.num 4245))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4215) (.var 3)) (.num 5487))
    (.var 3)) (.num 1620)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1614)
    (.var 3)) (.num 1236)) (.var 3)) (.neg (.num 317))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 263) (.var 3)) (.neg (.num 91))) (.var 3)) (.neg (.num 354))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.neg (.num 51)))
    (.var 3)) (.neg (.num 60))) (.pow (.var 2) 6))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 686) (.var 3)) (.num 1496)) (.var 3)) (.num 810)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3087) (.var 3)) (.num 6510)) (.var 3)) (.num 3423)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 5612) (.var 3)) (.num 11352)) (.var 3)) (.num 5740)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5236) (.var 3)) (.num 10033)) (.var 3))
    (.num 4797)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2616) (.var 3))
    (.num 4647)) (.var 3)) (.num 2031)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 653) (.var 3)) (.num 1029)) (.var 3)) (.num 376)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 62) (.var 3)) (.num 77)) (.var 3)) (.num 15)) (.pow (.var
    2) 6))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 222) (.var 3)) (.num 444)) (.var 3))
    (.num 222)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1110) (.var 3)) (.num 2220)) (.var
    3)) (.num 1110)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2279) (.var 3))
    (.num 4558)) (.var 3)) (.num 2279)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 2456) (.var 3)) (.num 4912)) (.var 3)) (.num 2456)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1464) (.var 3)) (.num 2928)) (.var 3)) (.num 1464)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 458) (.var 3)) (.num 916)) (.var
    3)) (.num 458)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 59) (.var
    3)) (.num 118)) (.var 3)) (.num 59)) (.pow (.var 2) 6))) (.pow (.var 1) 4)))) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.pow (.add (.var 1)
    (.var 2)) 2)) (.mul (.mul (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 1))
    (.mul (.num 16) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 16) (.var 3))
    (.num 424)) (.var 1)) (.mul (.add (.mul (.num 16) (.var 3)) (.num 348)) (.var 2))) (.var 1))
    (.mul (.num 64) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 8) (.var 3)) (.num 168)) (.var 3)) (.num 1884)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 16) (.var 3)) (.num 224)) (.var 3)) (.num 2312)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 40)) (.var 3)) (.num 836)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.neg (.num 16)) (.var 3)) (.num 80)) (.pow (.var 2) 3))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 112)
    (.var 3)) (.num 844)) (.var 3)) (.num 4709)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    280) (.var 3)) (.num 1470)) (.var 3)) (.num 7631)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 224) (.var 3)) (.num 584)) (.var 3)) (.num 3972)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 56) (.var 3)) (.neg (.num 106))) (.var 3)) (.num 666))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.neg (.num 64)) (.var 3)) (.pow (.var 2) 4))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 640) (.var 3)) (.num 2816)) (.var 3)) (.num 7751)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1920) (.var 3)) (.num 6458)) (.var 3)) (.num 15797)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 2072) (.var 3)) (.num 4598)) (.var 3)) (.num 10760)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 944) (.var 3)) (.num 686)) (.var 3))
    (.num 2428)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 152) (.var 3))
    (.neg (.num 366))) (.var 3)) (.neg (.num 142))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 96)) (.var 3)) (.neg (.num 80))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    1990) (.var 3)) (.num 6730)) (.var 3)) (.num 9646)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 6965) (.var 3)) (.num 19845)) (.var 3)) (.num 24850)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 9355) (.var 3)) (.num 21281)) (.var 3)) (.num 22795)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5975) (.var 3)) (.num 9573)) (.var 3))
    (.num 8177)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1795) (.var 3))
    (.num 1161)) (.var 3)) (.num 252)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 200) (.var 3)) (.neg (.num 310))) (.var 3)) (.neg (.num 450))) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.neg (.num 64)) (.var 3)) (.neg (.num 64))) (.pow (.var 2) 6)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 3710) (.var 3)) (.num 10844)) (.var 3)) (.num 9662)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 14840) (.var 3)) (.num 39232)) (.var 3)) (.num 31704)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 23697) (.var 3)) (.num 55627)) (.var 3))
    (.num 39979)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 19151) (.var
    3)) (.num 38683)) (.var 3)) (.num 23761)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 8149) (.var 3)) (.num 13219)) (.var 3)) (.num 6138)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1693) (.var 3)) (.num 1737)) (.var 3)) (.num
    148)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 128) (.var 3)) (.neg
    (.num 54))) (.var 3)) (.neg (.num 182))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 16)) (.var 3)) (.neg (.num 16))) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 4144) (.var 3)) (.num 10710)) (.var 3)) (.num 7154)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 18648) (.var 3)) (.num 45659)) (.var 3)) (.num 28997)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 34398) (.var 3)) (.num 79280)) (.var 3)) (.num 47478)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33369) (.var 3)) (.num 71751))
    (.var 3)) (.num 40032)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    18103) (.var 3)) (.num 35787)) (.var 3)) (.num 18200)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 5347) (.var 3)) (.num 9426)) (.var 3)) (.num 4143)) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 751) (.var 3)) (.num 1079)) (.var 3))
    (.num 328)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 32) (.var 3))
    (.num 20)) (.var 3)) (.neg (.num 12))) (.pow (.var 2) 7))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 2536) (.var 3)) (.num 5792)) (.var 3)) (.num 3256)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 12680) (.var 3)) (.num 28300)) (.var 3)) (.num 15620)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 26467) (.var 3)) (.num 57589)) (.var 3)) (.num
    31122)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 29788) (.var 3))
    (.num 63014)) (.var 3)) (.num 33226)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 19439) (.var 3)) (.num 39833)) (.var 3)) (.num 20394)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 7315) (.var 3)) (.num 14437)) (.var 3)) (.num 7122))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1458) (.var 3)) (.num 2742))
    (.var 3)) (.num 1284)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 117)
    (.var 3)) (.num 205)) (.var 3)) (.num 88)) (.pow (.var 2) 7))) (.pow (.var 1) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 660) (.var 3)) (.num 1320)) (.var 3)) (.num 660)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 3630) (.var 3)) (.num 7260)) (.var 3)) (.num 3630)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8432) (.var 3)) (.num 16864)) (.var 3))
    (.num 8432)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10719) (.var
    3)) (.num 21438)) (.var 3)) (.num 10719)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 8056) (.var 3)) (.num 16112)) (.var 3)) (.num 8056)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3584) (.var 3)) (.num 7168)) (.var 3)) (.num
    3584)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 876) (.var 3)) (.num
    1752)) (.var 3)) (.num 876)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    91) (.var 3)) (.num 182)) (.var 3)) (.num 91)) (.pow (.var 2) 7))) (.pow (.var 1) 3)))) (.var
    0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.add
    (.var 1) (.var 2)))) (.mul (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var
    1)) (.mul (.num 10) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 20) (.var
    3)) (.num 320)) (.var 1)) (.mul (.add (.mul (.num 20) (.var 3)) (.num 246)) (.var 2))) (.var
    1)) (.mul (.num 36) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 20) (.var 3)) (.num 276)) (.var 3)) (.num 1537)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 50) (.var 3)) (.num 452)) (.var 3)) (.num 1916)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 196)) (.var 3)) (.num 681)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20)) (.var 3))
    (.num 62)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 238) (.var 3)) (.num 1654)) (.var 3)) (.num 4472)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 714) (.var 3)) (.num 3780)) (.var 3)) (.num 8038)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 774) (.var 3)) (.num 3006)) (.var 3)) (.num
    4942)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 358) (.var 3)) (.num
    1008)) (.var 3)) (.num 1224)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 60) (.var 3)) (.num 128)) (.var 3)) (.num 108)) (.pow (.var 2) 4)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1182)
    (.var 3)) (.num 5642)) (.var 3)) (.num 8919)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    4137) (.var 3)) (.num 16538)) (.var 3)) (.num 21762)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 5599) (.var 3)) (.num 18618)) (.var 3)) (.num 20112)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3655) (.var 3)) (.num 10174)) (.var 3)) (.num
    8900)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1151) (.var 3)) (.num
    2756)) (.var 3)) (.num 1953)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 140) (.var 3)) (.num 304)) (.var 3)) (.num 182)) (.pow (.var 2) 5)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 3209) (.var 3)) (.num 11970)) (.var 3)) (.num 12773)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 12836) (.var 3)) (.num 42694)) (.var 3)) (.num 40306)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 20698) (.var 3)) (.num 61372)) (.var 3)) (.num 50994)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17168) (.var 3)) (.num 45636))
    (.var 3)) (.num 33344)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    7701) (.var 3)) (.num 18606)) (.var 3)) (.num 12043)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1764) (.var 3)) (.num 3962)) (.var 3)) (.num 2318)) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 160) (.var 3)) (.num 344)) (.var 3))
    (.num 188)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5186) (.var 3)) (.num
    16074)) (.var 3)) (.num 12942)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 23337) (.var 3))
    (.num 67330)) (.var 3)) (.num 50430)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    43504) (.var 3)) (.num 116904)) (.var 3)) (.num 81312)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 43358) (.var 3)) (.num 108870)) (.var 3)) (.num 70384)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24810) (.var 3)) (.num 58588))
    (.var 3)) (.num 35363)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    8083) (.var 3)) (.num 18124)) (.var 3)) (.num 10300)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1368) (.var 3)) (.num 2946)) (.var 3)) (.num 1595)) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90) (.var 3)) (.num 188)) (.var 3))
    (.num 98)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5003) (.var 3))
    (.num 13252)) (.var 3)) (.num 8709)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 25015)
    (.var 3)) (.num 63594)) (.var 3)) (.num 40271)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 52794) (.var 3)) (.num 128838)) (.var 3)) (.num 78537)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 61086) (.var 3)) (.num 143286)) (.var 3)) (.num
    84087)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 42057) (.var 3))
    (.num 95062)) (.var 3)) (.num 53782)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 17433) (.var 3)) (.num 38110)) (.var 3)) (.num 20842)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 4158) (.var 3)) (.num 8828)) (.var 3)) (.num 4684))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 498) (.var 3)) (.num 1030))
    (.var 3)) (.num 532)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20)
    (.var 3)) (.num 40)) (.var 3)) (.num 20)) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 2666) (.var 3)) (.num 6120)) (.var 3)) (.num 3454)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 14663) (.var 3)) (.num 33052)) (.var 3)) (.num 18389)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 34491) (.var 3)) (.num 76324)) (.var 3))
    (.num 41833)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45237) (.var
    3)) (.num 98284)) (.var 3)) (.num 53047)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 36110) (.var 3)) (.num 77066)) (.var 3)) (.num 40956)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17920) (.var 3)) (.num 37596)) (.var 3)) (.num
    19676)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5380) (.var 3))
    (.num 11104)) (.var 3)) (.num 5724)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 888) (.var 3)) (.num 1804)) (.var 3)) (.num 916)) (.pow (.var 2) 7))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 61) (.var 3)) (.num 122)) (.var 3)) (.num 61)) (.pow (.var
    2) 8))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 608) (.var 3)) (.num 1216))
    (.var 3)) (.num 608)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3648) (.var 3)) (.num
    7296)) (.var 3)) (.num 3648)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9444)
    (.var 3)) (.num 18888)) (.var 3)) (.num 9444)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 13780) (.var 3)) (.num 27560)) (.var 3)) (.num 13780)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12403) (.var 3)) (.num 24806)) (.var 3)) (.num
    12403)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7060) (.var 3))
    (.num 14120)) (.var 3)) (.num 7060)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 2486) (.var 3)) (.num 4972)) (.var 3)) (.num 2486)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 496) (.var 3)) (.num 992)) (.var 3)) (.num 496)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 43) (.var 3)) (.num 86)) (.var 3))
    (.num 43)) (.pow (.var 2) 8))) (.pow (.var 1) 2)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var
    0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.mul (.mul
    (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.pow (.var 0) 2))
    (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var 2)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 24)) (.var 3)) (.num
    20)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num
    28)) (.var 3)) (.num 18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.var 0))) (.pow (.var 0) 6))
    (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    2) (.var 0)) (.mul (.num 8) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2) (.var
    3)) (.num 4)) (.var 3)) (.num 12)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 8) (.var 3)) (.num 12)) (.var 3)) (.num 8)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 10) (.var 3)) (.num 12)) (.var 3)) (.num 2)) (.pow (.var 2) 4))) (.var
    0)) (.mul (.mul (.add (.mul (.num 4) (.var 3)) (.num 4)) (.var 3)) (.pow (.var 2) 5))) (.pow
    (.var 0) 3))) (.pow (.var 0) 4))) (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.mul (.num 4) (.var 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 16)) (.var 3)) (.num 8))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20))
    (.var 3)) (.num 10)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.pow (.var 0) 2))) (.pow (.var 0)
    5))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.mul (.mul (.num 3) (.mul (.add
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
    9))) (.pow (.var 0) 3))) (.pow (.var 0) 4)) (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12)
    (.var 0)) (.mul (.add (.mul (.num 8) (.var 3)) (.num 134)) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 16) (.var 3)) (.num 84)) (.var 3)) (.num 430)) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 190) (.var 3)) (.num 554)) (.var 3)) (.num 892))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 802) (.var 3)) (.num 2072))
    (.var 3)) (.num 1796)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1674)
    (.var 3)) (.num 4172)) (.var 3)) (.num 2886)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1918) (.var 3)) (.num 4624)) (.var 3)) (.num 2878)) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1216) (.var 3)) (.num 2794)) (.var 3)) (.num
    1608)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 392) (.var 3)) (.num
    844)) (.var 3)) (.num 452)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    48) (.var 3)) (.num 96)) (.var 3)) (.num 48)) (.pow (.var 2) 9))) (.pow (.var 0) 2))) (.pow
    (.var 0) 5))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 0)) (.mul (.add (.mul
    (.num 4) (.var 3)) (.num 88)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8)
    (.var 3)) (.num 48)) (.var 3)) (.num 427)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 98) (.var 3)) (.num 280)) (.var 3)) (.num 1051)) (.pow (.var 2) 3))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 425) (.var 3)) (.num 860)) (.var 3)) (.num 1511))
    (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 919) (.var 3)) (.num 1500))
    (.var 3)) (.num 1331)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1106)
    (.var 3)) (.num 1544)) (.var 3)) (.num 713)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 752) (.var 3)) (.num 928)) (.var 3)) (.num 217)) (.pow (.var 2) 7))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 269) (.var 3)) (.num 300)) (.var 3)) (.num 31)) (.pow
    (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 39) (.var 3)) (.num 40)) (.var 3))
    (.num 1)) (.pow (.var 2) 9))) (.pow (.var 0) 5))) (.pow (.var 0) 2))) (.mul (.mul (.num 6)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 12) (.var 0)) (.mul (.add (.mul (.num 8) (.var 3)) (.num 162))
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 92)) (.var 3))
    (.num 700)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 194) (.var 3))
    (.num 550)) (.var 3)) (.num 1586)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 834) (.var 3)) (.num 1794)) (.var 3)) (.num 2300)) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 1786) (.var 3)) (.num 3346)) (.var 3)) (.num 2382)) (.pow (.var
    2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2124) (.var 3)) (.num 3672)) (.var 3))
    (.num 1812)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1422) (.var 3))
    (.num 2338)) (.var 3)) (.num 950)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 498) (.var 3)) (.num 794)) (.var 3)) (.num 296)) (.pow (.var 2) 8))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 70) (.var 3)) (.num 110)) (.var 3)) (.num 40)) (.pow (.var 2)
    9))) (.pow (.var 0) 4))) (.pow (.var 0) 3))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 6) (.var 0)) (.mul (.add (.mul (.num 4) (.var 3)) (.num 74)) (.var 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 44)) (.var 3)) (.num 275)) (.pow (.var 2)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 96) (.var 3)) (.num 270)) (.var 3)) (.num
    551)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 409) (.var 3)) (.num
    932)) (.var 3)) (.num 831)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    867) (.var 3)) (.num 1830)) (.var 3)) (.num 1091)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1018) (.var 3)) (.num 2084)) (.var 3)) (.num 1089)) (.pow (.var 2)
    6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 670) (.var 3)) (.num 1354)) (.var 3)) (.num
    685)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 229) (.var 3)) (.num
    460)) (.var 3)) (.num 231)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    31) (.var 3)) (.num 62)) (.var 3)) (.num 31)) (.pow (.var 2) 9))) (.pow (.var 0) 3))) (.pow
    (.var 0) 4))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow1220.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow1220.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow1220.leading0 e g v + f * FullLow1220.leading1 e g v +
        f^2 * FullLow1220.remainder e f g v := by
  have hden : denominatorOne FullLow1220.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow1220.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow1220.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 274877906944 20 12 2) lhs =
      value (Encoding4.vars 274877906944 20 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 274877906944 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 20 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 20 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow1220.source e f g v =
      FullLow1220.leading0 e g v + f * FullLow1220.leading1 e g v +
        f^2 * FullLow1220.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 274877906944 20 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow122Encoded0

namespace SPR.N6.Tail.CoreEndpoint.FullLow122
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition0 (e f g v : ℝ) :
    FullLow1220.source e f g v =
      FullLow1220.leading0 e g v + f * FullLow1220.leading1 e g v +
        f^2 * FullLow1220.remainder e f g v :=
  FullLow122Encoded0.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow122
