import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow140Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^1 layer of FullLow140.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow140Encoded1
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.add (.add (.add (.add (.mul (.mul (.mul (.num 1) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 5) (.pow (.var 1) 3)) (.var
    0)) (.mul (.add (.mul (.num 16) (.var 1)) (.mul (.num 8) (.var 2))) (.pow (.var 1) 3))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 16)) (.var 3)) (.neg (.num 6)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 20)) (.var 3)) (.neg (.num 10))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg (.num 1))) (.pow (.var 2) 2))) (.pow (.var
    1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg
    (.num 3)) (.var 3)) (.neg (.num 62))) (.var 3)) (.neg (.num 55))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 112))) (.var 3)) (.neg (.num 100))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 3)) (.var 3)) (.neg (.num 56))) (.var
    3)) (.neg (.num 51))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var
    3)) (.neg (.num 6))) (.pow (.var 2) 3))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 8)) (.var 3)) (.neg (.num
    64))) (.var 3)) (.neg (.num 56))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 20))
    (.var 3)) (.neg (.num 154))) (.var 3)) (.neg (.num 134))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.neg (.num 16)) (.var 3)) (.neg (.num 124))) (.var 3)) (.neg (.num 108)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg
    (.num 36))) (.var 3)) (.neg (.num 32))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 2)) (.var 3)) (.neg (.num 2))) (.pow (.var 2) 4))) (.pow (.var 1) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 2)) (.var
    3)) (.neg (.num 24))) (.var 3)) (.neg (.num 22))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.neg (.num 6)) (.var 3)) (.neg (.num 70))) (.var 3)) (.neg (.num 64))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.neg (.num 7)) (.var 3)) (.neg (.num 75))) (.var 3)) (.neg
    (.num 68))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 4)) (.var
    3)) (.neg (.num 36))) (.var 3)) (.neg (.num 32))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.neg (.num 1)) (.var 3)) (.neg (.num 7))) (.var 3)) (.neg (.num 6))) (.pow
    (.var 2) 4))) (.pow (.var 1) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg (.num 4))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 14)) (.var 3)) (.neg (.num 14))) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 18))
    (.var 3)) (.neg (.num 18))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 10))
    (.var 3)) (.neg (.num 10))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 2))
    (.var 3)) (.neg (.num 2))) (.pow (.var 2) 4))) (.pow (.var 1) 5)))) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.pow (.add (.var 1) (.var 2)) 4))
    (.mul (.mul (.mul (.num 2) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.mul (.num 6) (.pow (.var 1) 2)) (.var 0)) (.mul (.add (.mul
    (.num 48) (.var 1)) (.mul (.num 22) (.var 2))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.neg (.num 16)) (.var 3)) (.num 121)) (.var 1)) (.mul (.add (.mul
    (.neg (.num 22)) (.var 3)) (.num 103)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 6))
    (.var 3)) (.num 20)) (.pow (.var 2) 2))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 2)) (.var 3)) (.neg (.num 132))) (.var
    3)) (.num 55)) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg (.num
    248))) (.var 3)) (.num 3)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 2))
    (.var 3)) (.neg (.num 138))) (.var 3)) (.neg (.num 42))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 22)) (.var 3)) (.neg (.num 12))) (.pow (.var 2) 3))) (.pow (.var 1)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.neg (.num 16)) (.var 3)) (.neg (.num 376))) (.var 3)) (.neg (.num 206))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.neg (.num 40)) (.var 3)) (.neg (.num 910))) (.var 3)) (.neg (.num
    604))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 32)) (.var 3)) (.neg
    (.num 764))) (.var 3)) (.neg (.num 595))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.neg (.num 8)) (.var 3)) (.neg (.num 256))) (.var 3)) (.neg (.num 227))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 26)) (.var 3)) (.neg (.num 26))) (.pow
    (.var 2) 4))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 30)) (.var 3)) (.neg (.num 438))) (.var
    3)) (.neg (.num 326))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 90)) (.var 3))
    (.neg (.num 1318))) (.var 3)) (.neg (.num 1054))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.neg (.num 100)) (.var 3)) (.neg (.num 1494))) (.var 3)) (.neg (.num 1279))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 50)) (.var 3)) (.neg (.num
    778))) (.var 3)) (.neg (.num 705))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.neg (.num 10)) (.var 3)) (.neg (.num 174))) (.var 3)) (.neg (.num 164))) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 10)) (.var 3)) (.neg (.num 10))) (.pow (.var
    2) 5))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.neg (.num 176))) (.var 3)) (.neg
    (.num 156))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14) (.var 3)) (.neg (.num 652)))
    (.var 3)) (.neg (.num 604))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10)
    (.var 3)) (.neg (.num 966))) (.var 3)) (.neg (.num 924))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.neg (.num 10)) (.var 3)) (.neg (.num 718))) (.var 3)) (.neg (.num
    694))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 14)) (.var 3))
    (.neg (.num 266))) (.var 3)) (.neg (.num 252))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg (.num 38))) (.var 3)) (.neg (.num 34)))
    (.pow (.var 2) 5))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 36) (.var 3)) (.num 46)) (.var 3)) (.num
    10)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 144) (.var 3)) (.num 162)) (.var 3)) (.num
    18)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 221) (.var 3)) (.num 199)) (.var
    3)) (.neg (.num 22))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 159)
    (.var 3)) (.num 85)) (.var 3)) (.neg (.num 74))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 51) (.var 3)) (.neg (.num 9))) (.var 3)) (.neg (.num 60))) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 3)) (.neg (.num 11))) (.var 3))
    (.neg (.num 16))) (.pow (.var 2) 5))) (.pow (.var 1) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 22) (.var 3)) (.num
    44)) (.var 3)) (.num 22)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 99) (.var 3)) (.num
    198)) (.var 3)) (.num 99)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 176) (.var
    3)) (.num 352)) (.var 3)) (.num 176)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 154) (.var 3)) (.num 308)) (.var 3)) (.num 154)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 66) (.var 3)) (.num 132)) (.var 3)) (.num 66)) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11) (.var 3)) (.num 22)) (.var 3)) (.num
    11)) (.pow (.var 2) 5))) (.pow (.var 1) 5)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add
    (.var 0) (.var 1)) (.var 2))) 4)) (.pow (.add (.var 1) (.var 2)) 3))) (.mul (.mul (.mul (.mul
    (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.mul (.num 22) (.pow (.var 1) 2)) (.var 0)) (.mul (.add (.mul (.num 182) (.var 1)) (.mul
    (.num 84) (.var 2))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.neg (.num 44)) (.var 3)) (.num 416)) (.var 1)) (.mul (.add (.mul (.neg (.num 60)) (.var 3))
    (.num 362)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 16)) (.var 3)) (.num 74)) (.pow
    (.var 2) 2))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg (.num 384))) (.var 3)) (.num 136)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.neg (.num 8)) (.var 3)) (.neg (.num 712))) (.var 3)) (.neg
    (.num 16))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg
    (.num 390))) (.var 3)) (.neg (.num 124))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 62)) (.var 3)) (.neg (.num 34))) (.pow (.var 2) 3))) (.pow (.var 1) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 40))
    (.var 3)) (.neg (.num 942))) (.var 3)) (.neg (.num 518))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.neg (.num 100)) (.var 3)) (.neg (.num 2267))) (.var 3)) (.neg (.num 1505))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 80)) (.var 3)) (.neg (.num 1896))) (.var
    3)) (.neg (.num 1478))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg
    (.num 20)) (.var 3)) (.neg (.num 635))) (.var 3)) (.neg (.num 565))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.neg (.num 64)) (.var 3)) (.neg (.num 64))) (.pow (.var 2) 4))) (.pow
    (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.neg (.num 58)) (.var 3)) (.neg (.num 808))) (.var 3)) (.neg (.num
    566))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 174)) (.var 3)) (.neg (.num 2442)))
    (.var 3)) (.neg (.num 1876))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num
    194)) (.var 3)) (.neg (.num 2792))) (.var 3)) (.neg (.num 2336))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.neg (.num 98)) (.var 3)) (.neg (.num 1474))) (.var 3))
    (.neg (.num 1322))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num
    20)) (.var 3)) (.neg (.num 334))) (.var 3)) (.neg (.num 314))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.neg (.num 18)) (.var 3)) (.neg (.num 18))) (.pow (.var 2) 5))) (.pow (.var
    1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 14) (.var 3)) (.neg (.num 212))) (.var 3)) (.neg (.num 178))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 49) (.var 3)) (.neg (.num 794))) (.var 3)) (.neg (.num
    719))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 55) (.var 3)) (.neg (.num
    1196))) (.var 3)) (.neg (.num 1147))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 15) (.var 3)) (.neg (.num 911))) (.var 3)) (.neg (.num 898))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 9)) (.var 3)) (.neg (.num 350))) (.var 3))
    (.neg (.num 341))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 4))
    (.var 3)) (.neg (.num 53))) (.var 3)) (.neg (.num 49))) (.pow (.var 2) 5))) (.pow (.var 1)
    3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 16) (.var 3)) (.num 6)) (.var 3)) (.neg (.num 10))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 64) (.var 3)) (.num 2)) (.var 3)) (.neg (.num 62))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 101) (.var 3)) (.neg (.num 41))) (.var 3)) (.neg (.num
    142))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 79) (.var 3)) (.neg
    (.num 75))) (.var 3)) (.neg (.num 154))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 31) (.var 3)) (.neg (.num 49))) (.var 3)) (.neg (.num 80))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 3)) (.neg (.num 11))) (.var 3)) (.neg
    (.num 16))) (.pow (.var 2) 5))) (.pow (.var 1) 4)))) (.var 0)) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.pow (.add (.var 1) (.var 2)) 3)))
    (.mul (.mul (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 6) (.var 1)) (.var 0)) (.mul (.add
    (.mul (.num 96) (.var 1)) (.mul (.num 42) (.var 2))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 502) (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.num 433)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.num 84)) (.pow (.var 2) 2)))
    (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    6) (.var 3)) (.neg (.num 48))) (.var 3)) (.num 1219)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 12) (.var 3)) (.neg (.num 150))) (.var 3)) (.num 1493)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 6) (.var 3)) (.neg (.num 144))) (.var 3)) (.num 505)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.neg (.num 42)) (.var 3)) (.num 36)) (.pow (.var 2) 3)))
    (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 54) (.var 3)) (.neg (.num 252))) (.var 3)) (.num 1527)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 135) (.var 3)) (.neg (.num 853))) (.var 3)) (.num 2143)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 108) (.var 3)) (.neg (.num 1040))) (.var 3))
    (.num 622)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 27) (.var 3))
    (.neg (.num 529))) (.var 3)) (.neg (.num 177))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
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
    3)) (.num 118)) (.var 3)) (.num 59)) (.pow (.var 2) 6))) (.pow (.var 1) 4)))) (.var 0)) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.pow (.add (.var
    1) (.var 2)) 2))) (.mul (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 27) (.var 1)) (.var 0))
    (.mul (.add (.mul (.num 363) (.var 1)) (.mul (.num 162) (.var 2))) (.var 1))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.neg (.num 30)) (.var 3)) (.num 1707)) (.var 1)) (.mul
    (.add (.mul (.neg (.num 51)) (.var 3)) (.num 1485)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 21)) (.var 3)) (.num 297)) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 378)) (.var 3)) (.num 3512)) (.var 1))
    (.mul (.add (.mul (.neg (.num 816)) (.var 3)) (.num 4257)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 558)) (.var 3)) (.num 1468)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 120)) (.var 3)) (.num 126)) (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.neg
    (.num 1638))) (.var 3)) (.num 3252)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var
    3)) (.neg (.num 4347))) (.var 3)) (.num 3962)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 12) (.var 3)) (.neg (.num 4146))) (.var 3)) (.num 529)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.neg (.num 1665))) (.var 3)) (.neg (.num
    664))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 228)) (.var 3)) (.neg (.num
    165))) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 29) (.var 3)) (.neg (.num 2560))) (.var
    3)) (.num 1387)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 87) (.var 3)) (.neg (.num
    8472))) (.var 3)) (.neg (.num 189))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    87) (.var 3)) (.neg (.num 10853))) (.var 3)) (.neg (.num 4892))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 29) (.var 3)) (.neg (.num 6590))) (.var 3)) (.neg (.num
    4868))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 1817)) (.var 3)) (.neg
    (.num 1654))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 168)) (.var 3))
    (.neg (.num 168))) (.pow (.var 2) 5))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 224) (.var 3))
    (.neg (.num 912))) (.var 3)) (.num 808)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 784)
    (.var 3)) (.neg (.num 4478))) (.var 3)) (.neg (.num 320))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1002) (.var 3)) (.neg (.num 8562))) (.var 3)) (.neg (.num 5100)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 545) (.var 3)) (.neg (.num
    7985))) (.var 3)) (.neg (.num 6838))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 100) (.var 3)) (.neg (.num 3696))) (.var 3)) (.neg (.num 3570))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 3)) (.var 3)) (.neg (.num 746)))
    (.var 3)) (.neg (.num 743))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 39))
    (.var 3)) (.neg (.num 39))) (.pow (.var 2) 6))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 416) (.var
    3)) (.num 792)) (.var 3)) (.num 824)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1664)
    (.var 3)) (.num 2314)) (.var 3)) (.num 1998)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 2598) (.var 3)) (.num 1897)) (.var 3)) (.num 773)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1970) (.var 3)) (.neg (.num 439))) (.var 3)) (.neg (.num
    1713))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 722) (.var 3)) (.neg
    (.num 1368))) (.var 3)) (.neg (.num 1968))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 102) (.var 3)) (.neg (.num 649))) (.var 3)) (.neg (.num 751))) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 95)) (.var 3)) (.neg (.num 95))) (.pow (.var
    2) 6))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 168) (.var 3)) (.num 460)) (.var 3))
    (.num 292)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 756) (.var 3)) (.num 1848)) (.var
    3)) (.num 1092)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1386) (.var 3))
    (.num 2900)) (.var 3)) (.num 1514)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1323) (.var 3)) (.num 2207)) (.var 3)) (.num 884)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 693) (.var 3)) (.num 801)) (.var 3)) (.num 108)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 189) (.var 3)) (.num 101)) (.var
    3)) (.neg (.num 88))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 21)
    (.var 3)) (.neg (.num 5))) (.var 3)) (.neg (.num 26))) (.pow (.var 2) 6))) (.pow (.var 1)
    3)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1))
    (.var 2))) 4)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.mul (.num 6) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 40) (.var 1)) (.mul (.num 16) (.var 2))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 424)) (.var 1)) (.mul (.add (.mul (.num 16)
    (.var 3)) (.num 348)) (.var 2))) (.var 1)) (.mul (.num 64) (.pow (.var 2) 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 168))
    (.var 3)) (.num 1884)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 224))
    (.var 3)) (.num 2312)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3))
    (.num 40)) (.var 3)) (.num 836)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    16)) (.var 3)) (.num 80)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 112) (.var 3)) (.num 844)) (.var 3)) (.num 4709))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 280) (.var 3)) (.num 1470)) (.var 3)) (.num
    7631)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 224) (.var 3)) (.num 584))
    (.var 3)) (.num 3972)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 56)
    (.var 3)) (.neg (.num 106))) (.var 3)) (.num 666)) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul
    (.neg (.num 64)) (.var 3)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 640) (.var 3)) (.num 2816)) (.var 3))
    (.num 7751)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1920) (.var 3)) (.num 6458)) (.var
    3)) (.num 15797)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2072) (.var 3))
    (.num 4598)) (.var 3)) (.num 10760)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 944) (.var 3)) (.num 686)) (.var 3)) (.num 2428)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 152) (.var 3)) (.neg (.num 366))) (.var 3)) (.neg (.num
    142))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 96)) (.var 3)) (.neg (.num
    80))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1990) (.var 3)) (.num 6730)) (.var 3)) (.num
    9646)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6965) (.var 3)) (.num 19845)) (.var 3))
    (.num 24850)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9355) (.var 3)) (.num
    21281)) (.var 3)) (.num 22795)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 5975) (.var 3)) (.num 9573)) (.var 3)) (.num 8177)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1795) (.var 3)) (.num 1161)) (.var 3)) (.num 252)) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 200) (.var 3)) (.neg (.num 310))) (.var
    3)) (.neg (.num 450))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 64)) (.var
    3)) (.neg (.num 64))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3710) (.var 3)) (.num
    10844)) (.var 3)) (.num 9662)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14840) (.var 3))
    (.num 39232)) (.var 3)) (.num 31704)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    23697) (.var 3)) (.num 55627)) (.var 3)) (.num 39979)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 19151) (.var 3)) (.num 38683)) (.var 3)) (.num 23761)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8149) (.var 3)) (.num 13219))
    (.var 3)) (.num 6138)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1693)
    (.var 3)) (.num 1737)) (.var 3)) (.num 148)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 128) (.var 3)) (.neg (.num 54))) (.var 3)) (.neg (.num 182))) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.neg (.num 16)) (.var 3)) (.neg (.num 16))) (.pow (.var 2)
    7)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 4144) (.var 3)) (.num 10710)) (.var 3)) (.num 7154))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18648) (.var 3)) (.num 45659)) (.var 3)) (.num
    28997)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 34398) (.var 3)) (.num
    79280)) (.var 3)) (.num 47478)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 33369) (.var 3)) (.num 71751)) (.var 3)) (.num 40032)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 18103) (.var 3)) (.num 35787)) (.var 3)) (.num 18200))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5347) (.var 3)) (.num 9426))
    (.var 3)) (.num 4143)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 751)
    (.var 3)) (.num 1079)) (.var 3)) (.num 328)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 32) (.var 3)) (.num 20)) (.var 3)) (.neg (.num 12))) (.pow (.var 2) 7)))
    (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2536) (.var 3)) (.num 5792)) (.var 3)) (.num
    3256)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12680) (.var 3)) (.num 28300)) (.var 3))
    (.num 15620)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 26467) (.var 3)) (.num
    57589)) (.var 3)) (.num 31122)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 29788) (.var 3)) (.num 63014)) (.var 3)) (.num 33226)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 19439) (.var 3)) (.num 39833)) (.var 3)) (.num 20394))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7315) (.var 3)) (.num
    14437)) (.var 3)) (.num 7122)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1458) (.var 3)) (.num 2742)) (.var 3)) (.num 1284)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 117) (.var 3)) (.num 205)) (.var 3)) (.num 88)) (.pow (.var 2)
    7))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 660) (.var 3)) (.num 1320)) (.var
    3)) (.num 660)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3630) (.var 3)) (.num 7260))
    (.var 3)) (.num 3630)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8432) (.var
    3)) (.num 16864)) (.var 3)) (.num 8432)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 10719) (.var 3)) (.num 21438)) (.var 3)) (.num 10719)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 8056) (.var 3)) (.num 16112)) (.var 3)) (.num 8056))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3584) (.var 3)) (.num 7168))
    (.var 3)) (.num 3584)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 876)
    (.var 3)) (.num 1752)) (.var 3)) (.num 876)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 91) (.var 3)) (.num 182)) (.var 3)) (.num 91)) (.pow (.var 2) 7))) (.pow
    (.var 1) 3)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0)
    (.var 1)) (.var 2))) 4)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.mul (.num 1) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 180) (.var 1)) (.mul (.num 72) (.var 2))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.num 56) (.var 3)) (.num 1642)) (.var 1)) (.mul (.add (.mul (.num 56) (.var 3))
    (.num 1366)) (.var 2))) (.var 1)) (.mul (.num 256) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 368)) (.var 3))
    (.num 6260)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 456)) (.var 3))
    (.num 7704)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 32))
    (.var 3)) (.num 2812)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 56)) (.var
    3)) (.num 280)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 168) (.var 3)) (.num 1058)) (.var 3)) (.num 12830)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 420) (.var 3)) (.num 1333)) (.var 3)) (.num 20251)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 336) (.var 3)) (.neg (.num 292))) (.var 3))
    (.num 10182)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 84) (.var 3))
    (.neg (.num 759))) (.var 3)) (.num 1625)) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.neg
    (.num 192)) (.var 3)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 672) (.var 3)) (.num 2188)) (.var 3)) (.num
    16280)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2016) (.var 3)) (.num 3010)) (.var 3))
    (.num 30576)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2164) (.var 3)) (.neg
    (.num 1408))) (.var 3)) (.num 17792)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 968) (.var 3)) (.neg (.num 3758))) (.var 3)) (.num 2128)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 148) (.var 3)) (.neg (.num 1768))) (.var 3))
    (.neg (.num 972))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 240)) (.var 3))
    (.neg (.num 200))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1564) (.var 3)) (.num 4922)) (.var
    3)) (.num 15090)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5474) (.var 3)) (.num 11225))
    (.var 3)) (.num 34161)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7302) (.var
    3)) (.num 5815)) (.var 3)) (.num 24013)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 4570) (.var 3)) (.neg (.num 3741))) (.var 3)) (.num 2249)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1310) (.var 3)) (.neg (.num 4525))) (.var 3))
    (.neg (.num 3843))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 132)
    (.var 3)) (.neg (.num 1400))) (.var 3)) (.neg (.num 1402))) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.neg (.num 128)) (.var 3)) (.neg (.num 128))) (.pow (.var 2) 6)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 2292) (.var 3)) (.num 7994)) (.var 3)) (.num 11210)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 9168) (.var 3)) (.num 25986)) (.var 3)) (.num 32702)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14535) (.var 3)) (.num 30921)) (.var 3)) (.num
    33804)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11517) (.var 3))
    (.num 15053)) (.var 3)) (.num 12638)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 4697) (.var 3)) (.num 997)) (.var 3)) (.neg (.num 1422))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 895) (.var 3)) (.neg (.num 1527))) (.var 3))
    (.neg (.num 2204))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 56)
    (.var 3)) (.neg (.num 424))) (.var 3)) (.neg (.num 480))) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 24)) (.var 3)) (.neg (.num 24))) (.pow (.var 2) 7)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 1846) (.var 3)) (.num 6306)) (.var 3)) (.num 5636)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 8307) (.var 3)) (.num 25293)) (.var 3)) (.num 20958)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15256) (.var 3)) (.num 40494)) (.var 3)) (.num
    30430)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14630) (.var 3))
    (.num 32621)) (.var 3)) (.num 21291)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 7750) (.var 3)) (.num 13445)) (.var 3)) (.num 6727)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 2183) (.var 3)) (.num 2333)) (.var 3)) (.num 278)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 276) (.var 3)) (.neg (.num 39)))
    (.var 3)) (.neg (.num 315))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    8) (.var 3)) (.neg (.num 41))) (.var 3)) (.neg (.num 49))) (.pow (.var 2) 7))) (.var 1)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 548) (.var 3)) (.num 1816)) (.var 3)) (.num 1268)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 2740) (.var 3)) (.num 8420)) (.var 3)) (.num 5680))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5727) (.var 3)) (.num 16109)) (.var
    3)) (.num 10382)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6468)
    (.var 3)) (.num 16374)) (.var 3)) (.num 9906)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 4249) (.var 3)) (.num 9453)) (.var 3)) (.num 5204)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1617) (.var 3)) (.num 3041)) (.var 3)) (.num
    1424)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 328) (.var 3)) (.num
    482)) (.var 3)) (.num 154)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    27) (.var 3)) (.num 25)) (.var 3)) (.neg (.num 2))) (.pow (.var 2) 7))) (.pow (.var 1) 2))))
    (.pow (.var 0) 3)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))) 4)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.num 8) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 30) (.var 1)) (.mul (.num 10) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.num 20) (.var 3)) (.num 320)) (.var 1)) (.mul (.add (.mul (.num 20) (.var 3)) (.num 246))
    (.var 2))) (.var 1)) (.mul (.num 36) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 276)) (.var 3)) (.num 1537))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50) (.var 3)) (.num 452)) (.var 3)) (.num 1916))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 196)) (.var 3))
    (.num 681)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3))
    (.num 20)) (.var 3)) (.num 62)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 238) (.var 3)) (.num 1654)) (.var 3)) (.num
    4472)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 714) (.var 3)) (.num 3780)) (.var 3))
    (.num 8038)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 774) (.var 3)) (.num
    3006)) (.var 3)) (.num 4942)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 358) (.var 3)) (.num 1008)) (.var 3)) (.num 1224)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num 128)) (.var 3)) (.num 108)) (.pow (.var 2)
    4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 1182) (.var 3)) (.num 5642)) (.var 3)) (.num 8919)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 4137) (.var 3)) (.num 16538)) (.var 3)) (.num 21762)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 5599) (.var 3)) (.num 18618)) (.var 3)) (.num 20112))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3655) (.var 3)) (.num
    10174)) (.var 3)) (.num 8900)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1151) (.var 3)) (.num 2756)) (.var 3)) (.num 1953)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 140) (.var 3)) (.num 304)) (.var 3)) (.num 182)) (.pow (.var 2)
    5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 3209) (.var 3)) (.num 11970)) (.var 3)) (.num 12773)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 12836) (.var 3)) (.num 42694)) (.var 3)) (.num 40306)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20698) (.var 3)) (.num 61372)) (.var 3))
    (.num 50994)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17168) (.var
    3)) (.num 45636)) (.var 3)) (.num 33344)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 7701) (.var 3)) (.num 18606)) (.var 3)) (.num 12043)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1764) (.var 3)) (.num 3962)) (.var 3)) (.num
    2318)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 160) (.var 3)) (.num
    344)) (.var 3)) (.num 188)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5186) (.var 3))
    (.num 16074)) (.var 3)) (.num 12942)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 23337)
    (.var 3)) (.num 67330)) (.var 3)) (.num 50430)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 43504) (.var 3)) (.num 116904)) (.var 3)) (.num 81312)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 43358) (.var 3)) (.num 108870)) (.var 3)) (.num
    70384)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24810) (.var 3))
    (.num 58588)) (.var 3)) (.num 35363)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 8083) (.var 3)) (.num 18124)) (.var 3)) (.num 10300)) (.pow (.var 2) 5))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 1368) (.var 3)) (.num 2946)) (.var 3)) (.num 1595))
    (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90) (.var 3)) (.num 188))
    (.var 3)) (.num 98)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 5003)
    (.var 3)) (.num 13252)) (.var 3)) (.num 8709)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    25015) (.var 3)) (.num 63594)) (.var 3)) (.num 40271)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 52794) (.var 3)) (.num 128838)) (.var 3)) (.num 78537)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 61086) (.var 3)) (.num 143286)) (.var 3)) (.num
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
    (.num 43)) (.pow (.var 2) 8))) (.pow (.var 1) 2)))) (.pow (.var 0) 3)) (.pow (.mul (.add (.var
    0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4))) (.mul (.mul (.mul (.num 1) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 135) (.var 1)) (.mul (.num 45) (.var 2))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.num 70) (.var 3)) (.num 1200)) (.var 1)) (.mul (.add (.mul (.num 70) (.var 3))
    (.num 887)) (.var 2))) (.var 1)) (.mul (.num 117) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 50) (.var 3)) (.num 646)) (.var 3))
    (.num 4758)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 125) (.var 3)) (.num 962)) (.var
    3)) (.num 5501)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 100) (.var 3)) (.num
    316)) (.var 3)) (.num 1640)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.num 25) (.pow
    (.var 3) 2)) (.num 77)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 415) (.var 3)) (.num 2874)) (.var 3)) (.num 11160))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1245) (.var 3)) (.num 5922)) (.var 3)) (.num
    18075)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1350) (.var 3)) (.num 3920))
    (.var 3)) (.num 9075)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 625)
    (.var 3)) (.num 950)) (.var 3)) (.num 1391)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 105) (.var 3)) (.num 78)) (.var 3)) (.num 11)) (.pow (.var 2) 4)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    1518) (.var 3)) (.num 7780)) (.var 3)) (.num 17646)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 5313) (.var 3)) (.num 20956)) (.var 3)) (.num 38532)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 7171) (.var 3)) (.num 20952)) (.var 3)) (.num 29785)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4645) (.var 3)) (.num 9804)) (.var 3))
    (.num 9772)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1439) (.var 3))
    (.num 2256)) (.var 3)) (.num 1314)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 170) (.var 3)) (.num 228)) (.var 3)) (.num 71)) (.pow (.var 2) 5)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 3065) (.var 3)) (.num 13494)) (.var 3)) (.num 19815)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 12260) (.var 3)) (.num 45200)) (.var 3)) (.num 56800)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 19680) (.var 3)) (.num 60054)) (.var 3)) (.num 63017))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16130) (.var 3)) (.num
    40650)) (.var 3)) (.num 34542)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 7065) (.var 3)) (.num 14970)) (.var 3)) (.num 10012)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1550) (.var 3)) (.num 2900)) (.var 3)) (.num 1539)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 130) (.var 3)) (.num 232)) (.var
    3)) (.num 107)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3590) (.var 3)) (.num
    14302)) (.var 3)) (.num 15144)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16155) (.var 3))
    (.num 57098)) (.var 3)) (.num 54711)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    29956) (.var 3)) (.num 93630)) (.var 3)) (.num 80380)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 29456) (.var 3)) (.num 81548)) (.var 3)) (.num 62189)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16422) (.var 3)) (.num 40640))
    (.var 3)) (.num 27418)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    5110) (.var 3)) (.num 11520)) (.var 3)) (.num 6915)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 798) (.var 3)) (.num 1686)) (.var 3)) (.num 920)) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45) (.var 3)) (.num 92)) (.var 3)) (.num 47))
    (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2258) (.var 3)) (.num 8198))
    (.var 3)) (.num 6860)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11290) (.var 3)) (.num
    37760)) (.var 3)) (.num 29854)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    23719) (.var 3)) (.num 72980)) (.var 3)) (.num 54247)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 27136) (.var 3)) (.num 76880)) (.var 3)) (.num 53518)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18287) (.var 3)) (.num 47890))
    (.var 3)) (.num 31157)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    7303) (.var 3)) (.num 17804)) (.var 3)) (.num 10831)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1633) (.var 3)) (.num 3742)) (.var 3)) (.num 2137)) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 173) (.var 3)) (.num 376)) (.var 3))
    (.num 203)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 3))
    (.num 10)) (.var 3)) (.num 5)) (.pow (.var 2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 564) (.var 3)) (.num 1916)) (.var 3)) (.num 1352)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 3102) (.var 3)) (.num 9930)) (.var 3)) (.num 6828)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 7284) (.var 3)) (.num 21910)) (.var 3)) (.num 14626))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9513) (.var 3)) (.num
    26836)) (.var 3)) (.num 17323)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 7534) (.var 3)) (.num 19914)) (.var 3)) (.num 12380)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 3689) (.var 3)) (.num 9134)) (.var 3)) (.num 5445)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1083) (.var 3)) (.num 2510)) (.var
    3)) (.num 1427)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 172) (.var
    3)) (.num 372)) (.var 3)) (.num 200)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 11) (.var 3)) (.num 22)) (.var 3)) (.num 11)) (.pow (.var 2) 8))) (.var 1))))
    (.pow (.var 0) 4)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))) 4)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.mul
    (.mul (.num 8) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.pow (.var 0)
    2)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var
    2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 24)) (.var 3)) (.num
    20)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num
    28)) (.var 3)) (.num 18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.var 0))) (.pow (.var 0) 7))
    (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9)
    (.var 0)) (.mul (.neg (.num 9)) (.var 2))) (.var 0)) (.mul (.add (.mul (.num 5) (.pow (.var 3)
    2)) (.num 2)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 11) (.var 3))
    (.num 38)) (.var 3)) (.num 36)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 7) (.var 3)) (.num 24)) (.var 3)) (.num 17)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1) (.var 3)) (.num 2)) (.var 3)) (.num 1)) (.pow (.var 2) 5)))) (.pow
    (.var 0) 8))) (.mul (.mul (.num 24) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 2) (.var 0)) (.mul (.num 8) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 12)) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 12)) (.var 3)) (.num 8)) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 12)) (.var 3)) (.num 2))
    (.pow (.var 2) 4))) (.var 0)) (.mul (.mul (.add (.mul (.num 4) (.var 3)) (.num 4)) (.var 3))
    (.pow (.var 2) 5))) (.pow (.var 0) 3))) (.pow (.var 0) 5))) (.mul (.mul (.num 4) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13) (.var 0)) (.mul (.num 35)
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.num 8)) (.var 3))
    (.num 30)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27) (.var 3))
    (.num 28)) (.var 3)) (.num 10)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 27) (.var 3)) (.num 32)) (.var 3)) (.num 5)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 9) (.var 3)) (.num 12)) (.var 3)) (.num 3)) (.pow (.var 2) 5))) (.pow
    (.var 0) 2))) (.pow (.var 0) 6))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.mul (.mul (.num 6) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 12) (.var 0)) (.mul (.add (.mul (.num 8) (.var 3)) (.num 148)) (.var 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 88)) (.var 3)) (.num 576)) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 192) (.var 3)) (.num 564)) (.var
    3)) (.num 1344)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 818) (.var
    3)) (.num 2008)) (.var 3)) (.num 2360)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1726) (.var 3)) (.num 3906)) (.var 3)) (.num 3050)) (.pow (.var 2) 5))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 2006) (.var 3)) (.num 4252)) (.var 3)) (.num 2600)) (.pow
    (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1298) (.var 3)) (.num 2564)) (.var
    3)) (.num 1324)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 432) (.var
    3)) (.num 788)) (.var 3)) (.num 356)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 56) (.var 3)) (.num 94)) (.var 3)) (.num 38)) (.pow (.var 2) 9))) (.pow (.var 0)
    3))) (.pow (.var 0) 5)) (.mul (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 78) (.var 0)) (.mul
    (.add (.mul (.num 44) (.var 3)) (.num 846)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 72) (.var 3)) (.num 328)) (.var 3)) (.num 2627)) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 752) (.var 3)) (.num 1668)) (.var 3)) (.num 4693)) (.pow (.var
    2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2816) (.var 3)) (.num 5810)) (.var 3))
    (.num 7054)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5268) (.var 3))
    (.num 11220)) (.var 3)) (.num 8872)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 5460) (.var 3)) (.num 11764)) (.var 3)) (.num 7483)) (.pow (.var 2) 6))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 3160) (.var 3)) (.num 6620)) (.var 3)) (.num 3649)) (.pow
    (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 940) (.var 3)) (.num 1842)) (.var
    3)) (.num 902)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 108) (.var
    3)) (.num 192)) (.var 3)) (.num 84)) (.pow (.var 2) 9))) (.pow (.var 0) 2))) (.pow (.var 0)
    6))) (.mul (.mul (.num 12) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 0)) (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 88)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3))
    (.num 48)) (.var 3)) (.num 427)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 98) (.var 3)) (.num 280)) (.var 3)) (.num 1051)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 425) (.var 3)) (.num 860)) (.var 3)) (.num 1511)) (.pow (.var 2)
    4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 919) (.var 3)) (.num 1500)) (.var 3)) (.num
    1331)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1106) (.var 3)) (.num
    1544)) (.var 3)) (.num 713)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    752) (.var 3)) (.num 928)) (.var 3)) (.num 217)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 269) (.var 3)) (.num 300)) (.var 3)) (.num 31)) (.pow (.var 2) 8)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 39) (.var 3)) (.num 40)) (.var 3)) (.num 1))
    (.pow (.var 2) 9))) (.pow (.var 0) 5))) (.pow (.var 0) 3))) (.mul (.mul (.num 3) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 51) (.var 0)) (.mul (.add (.mul (.num 30) (.var 3)) (.num 676)) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 52) (.var 3)) (.num 278)) (.var 3)) (.num 2851))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 579) (.var 3)) (.num 1346))
    (.var 3)) (.num 5987)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2300)
    (.var 3)) (.num 3828)) (.var 3)) (.num 7293)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 4599) (.var 3)) (.num 6544)) (.var 3)) (.num 5551)) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5156) (.var 3)) (.num 6766)) (.var 3)) (.num
    2801)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3281) (.var 3)) (.num
    4122)) (.var 3)) (.num 1001)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 1100) (.var 3)) (.num 1352)) (.var 3)) (.num 252)) (.pow (.var 2) 8))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 149) (.var 3)) (.num 182)) (.var 3)) (.num 33)) (.pow (.var 2)
    9))) (.pow (.var 0) 4))) (.pow (.var 0) 4))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow1401.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow1401.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow1401.leading0 e g v + f * FullLow1401.leading1 e g v +
        f^2 * FullLow1401.remainder e f g v := by
  have hden : denominatorOne FullLow1401.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow1401.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow1401.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 274877906944 21 12 2) lhs =
      value (Encoding4.vars 274877906944 21 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 274877906944 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 21 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 21 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow1401.source e f g v =
      FullLow1401.leading0 e g v + f * FullLow1401.leading1 e g v +
        f^2 * FullLow1401.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 274877906944 21 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow140Encoded1

namespace SPR.N6.Tail.CoreEndpoint.FullLow140
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition1 (e f g v : ℝ) :
    FullLow1401.source e f g v =
      FullLow1401.leading0 e g v + f * FullLow1401.leading1 e g v +
        f^2 * FullLow1401.remainder e f g v :=
  FullLow140Encoded1.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow140
