import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^3 layer of FullLow041.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow041Encoded3
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add
    (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.mul (.mul
    (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.mul (.num 9) (.pow (.var 1) 3)) (.var 0))
    (.mul (.add (.mul (.num 2) (.var 1)) (.mul (.num 1) (.var 2))) (.pow (.var 1) 3))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg (.num 12))) (.var
    1)) (.mul (.add (.mul (.neg (.num 15)) (.var 3)) (.neg (.num 15))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 3)) (.var 3)) (.neg (.num 3))) (.pow (.var 2) 2))) (.pow (.var 1) 3)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 6)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg (.num 12))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 6))) (.pow (.var 2) 2))) (.pow (.var
    1) 4)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5))
    (.pow (.add (.var 1) (.var 2)) 4)) (.mul (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.mul (.num 16) (.pow (.var 1) 2)) (.var 0)) (.mul (.add (.mul
    (.num 111) (.var 1)) (.mul (.num 50) (.var 2))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.neg (.num 20)) (.var 3)) (.num 89)) (.var 1)) (.mul (.add
    (.mul (.neg (.num 28)) (.var 3)) (.num 66)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    8)) (.var 3)) (.num 5)) (.pow (.var 2) 2))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.neg (.num 168)) (.var 3)) (.neg (.num 106))) (.var 1))
    (.mul (.add (.mul (.neg (.num 308)) (.var 3)) (.neg (.num 235))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 167)) (.var 3)) (.neg (.num 152))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 27)) (.var 3)) (.neg (.num 27))) (.pow (.var 2) 3))) (.pow (.var 1)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.neg (.num 12)) (.var 3)) (.neg (.num 148))) (.var 3)) (.neg (.num 114))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.neg (.num 30)) (.var 3)) (.neg (.num 372))) (.var 3)) (.neg (.num
    308))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 24)) (.var 3)) (.neg
    (.num 312))) (.var 3)) (.neg (.num 276))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 92))) (.var 3)) (.neg (.num 86))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg (.num 4))) (.pow
    (.var 2) 4))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.neg (.num 12))) (.var 3)) (.neg (.num 14)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18) (.var 3)) (.neg (.num 40))) (.var 3)) (.neg
    (.num 50))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18) (.var 3)) (.neg (.num
    51))) (.var 3)) (.neg (.num 65))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 6) (.var 3)) (.neg (.num 30))) (.var 3)) (.neg (.num 36))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.neg (.num 7)) (.var 3)) (.neg (.num 7))) (.pow (.var 2) 4))) (.pow (.var
    1) 3)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5))
    (.pow (.add (.var 1) (.var 2)) 3))) (.mul (.mul (.mul (.mul (.num 2) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.mul (.num 11) (.pow (.var 1) 2)) (.var 0)) (.mul (.add (.mul (.num
    87) (.var 1)) (.mul (.num 39) (.var 2))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.num 50)) (.var 1)) (.mul (.add (.mul (.neg (.num
    9)) (.var 3)) (.num 37)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 3)) (.var 3))
    (.num 1)) (.pow (.var 2) 2))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.neg (.num 72)) (.var 3)) (.neg (.num 46))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 132)) (.var 3)) (.neg (.num 104))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 72)) (.var 3)) (.neg (.num 69))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 12)) (.var 3)) (.neg (.num 12))) (.pow (.var 2) 3))) (.pow (.var 1) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 30)) (.var 3)) (.neg (.num
    26))) (.var 1)) (.mul (.add (.mul (.neg (.num 81)) (.var 3)) (.neg (.num 75))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 72)) (.var 3)) (.neg (.num 70))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 21)) (.var 3)) (.neg (.num 21))) (.pow (.var 2) 3)))
    (.pow (.var 1) 3)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var
    1)) (.var 2))) 5)) (.pow (.add (.var 1) (.var 2)) 3))) (.mul (.mul (.mul (.num 12) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 9) (.var
    1)) (.var 0)) (.mul (.add (.mul (.num 103) (.var 1)) (.mul (.num 45) (.var 2))) (.var 1)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 10)) (.var 3)) (.num 368))
    (.var 1)) (.mul (.add (.mul (.neg (.num 17)) (.var 3)) (.num 307)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 7)) (.var 3)) (.num 54)) (.pow (.var 2) 2))) (.var 1))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 106)) (.var 3)) (.num 459))
    (.var 1)) (.mul (.add (.mul (.neg (.num 228)) (.var 3)) (.num 472)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 155)) (.var 3)) (.num 85)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 33)) (.var 3)) (.neg (.num 12))) (.pow (.var 2) 3))) (.var 1))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var
    3)) (.neg (.num 358))) (.var 3)) (.num 118)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5)
    (.var 3)) (.neg (.num 941))) (.var 3)) (.neg (.num 186))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 4) (.var 3)) (.neg (.num 880))) (.var 3)) (.neg (.num 535))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.neg (.num 340)))
    (.var 3)) (.neg (.num 296))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 43))
    (.var 3)) (.neg (.num 43))) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.neg
    (.num 328))) (.var 3)) (.neg (.num 91))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9)
    (.var 3)) (.neg (.num 1108))) (.var 3)) (.neg (.num 643))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 8) (.var 3)) (.neg (.num 1412))) (.var 3)) (.neg (.num 1135))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.neg (.num 818)))
    (.var 3)) (.neg (.num 768))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg
    (.num 1)) (.var 3)) (.neg (.num 199))) (.var 3)) (.neg (.num 198))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.neg (.num 13)) (.var 3)) (.neg (.num 13))) (.pow (.var 2) 5))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 42) (.var 3)) (.neg (.num 8))) (.var 3)) (.num 6)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 147) (.var 3)) (.neg (.num 137))) (.var 3)) (.neg (.num 148))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 189) (.var 3)) (.neg (.num 373))) (.var 3))
    (.neg (.num 458))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 105)
    (.var 3)) (.neg (.num 396))) (.var 3)) (.neg (.num 477))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 21) (.var 3)) (.neg (.num 181))) (.var 3)) (.neg (.num 202)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 29)) (.var 3)) (.neg (.num 29)))
    (.pow (.var 2) 5))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 28) (.var 3)) (.num 58)) (.var 3)) (.num
    30)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 112) (.var 3)) (.num 202)) (.var 3)) (.num
    90)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 174) (.var 3)) (.num 257)) (.var
    3)) (.num 83)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 130) (.var
    3)) (.num 139)) (.var 3)) (.num 9)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 46) (.var 3)) (.num 25)) (.var 3)) (.neg (.num 21))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.neg (.num 1))) (.var 3)) (.neg (.num 7)))
    (.pow (.var 2) 5))) (.pow (.var 1) 3)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add
    (.var 0) (.var 1)) (.var 2))) 5)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.mul
    (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num
    15) (.var 1)) (.var 0)) (.mul (.add (.mul (.num 149) (.var 1)) (.mul (.num 66) (.var 2)))
    (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 16)) (.var 3))
    (.num 497)) (.var 1)) (.mul (.add (.mul (.neg (.num 24)) (.var 3)) (.num 417)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 8)) (.var 3)) (.num 75)) (.pow (.var 2) 2))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 128)) (.var
    3)) (.num 459)) (.var 1)) (.mul (.add (.mul (.neg (.num 264)) (.var 3)) (.num 446)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 169)) (.var 3)) (.num 62)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.neg (.num 33)) (.var 3)) (.neg (.num 15))) (.pow (.var 2) 3))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 6) (.var 3)) (.neg (.num 420))) (.var 3)) (.neg (.num 25))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 15) (.var 3)) (.neg (.num 1056))) (.var 3)) (.neg (.num 457))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 3)) (.neg (.num 934))) (.var 3)) (.neg
    (.num 686))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3))
    (.neg (.num 338))) (.var 3)) (.neg (.num 311))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 40)) (.var 3)) (.neg (.num 40))) (.pow (.var 2) 4))) (.var 1))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 3) (.var 3)) (.neg (.num 254))) (.var 3)) (.neg (.num 101))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 9) (.var 3)) (.neg (.num 840))) (.var 3)) (.neg (.num 546))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.neg (.num 1030))) (.var 3)) (.neg
    (.num 862))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3))
    (.neg (.num 556))) (.var 3)) (.neg (.num 529))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 117)) (.var 3)) (.neg (.num 117))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 5)) (.var 3)) (.neg (.num 5))) (.pow (.var 2) 5))) (.var 1))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 36) (.var 3)) (.num 28)) (.var 3)) (.num 20)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 126) (.var 3)) (.num 70)) (.var 3)) (.num 12)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 162) (.var 3)) (.num 38)) (.var 3)) (.neg (.num 72))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90) (.var 3)) (.neg (.num 30))) (.var 3)) (.neg
    (.num 108))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18) (.var 3))
    (.neg (.num 34))) (.var 3)) (.neg (.num 52))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 8)) (.var 3)) (.neg (.num 8))) (.pow (.var 2) 5))) (.pow (.var 1) 2)))) (.var 0))
    (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5)) (.pow (.add
    (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.mul (.num 11) (.var 1)) (.var 0)) (.mul (.add (.mul (.num 101) (.var
    1)) (.mul (.num 45) (.var 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.neg (.num 6)) (.var 3)) (.num 338)) (.var 1)) (.mul (.add (.mul (.neg (.num 9)) (.var 3))
    (.num 285)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 3)) (.var 3)) (.num 52)) (.pow
    (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg
    (.num 42)) (.var 3)) (.num 245)) (.var 1)) (.mul (.add (.mul (.neg (.num 90)) (.var 3)) (.num
    238)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 60)) (.var 3)) (.num 34)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg (.num 7))) (.pow (.var 2)
    3))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.neg (.num 162)) (.var 3)) (.neg (.num 14))) (.var 1)) (.mul (.add (.mul (.neg (.num 408))
    (.var 3)) (.neg (.num 200))) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 360)) (.var
    3)) (.neg (.num 291))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 129)) (.var
    3)) (.neg (.num 124))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 15)) (.var
    3)) (.neg (.num 15))) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.neg (.num 48)) (.var 3)) (.neg (.num 24))) (.var 1))
    (.mul (.add (.mul (.neg (.num 180)) (.var 3)) (.neg (.num 136))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 240)) (.var 3)) (.neg (.num 217))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 132)) (.var 3)) (.neg (.num 129))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 24)) (.var 3)) (.neg (.num 24))) (.pow (.var 2) 4))) (.pow (.var 1)
    2)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1))
    (.var 2))) 5)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.num 32) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 10) (.var 1)) (.mul (.num 4) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.num 4) (.var 3)) (.num 87)) (.var 1)) (.mul (.add (.mul (.num 4) (.var 3)) (.num 70))
    (.var 2))) (.var 1)) (.mul (.num 12) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 34)) (.var 3)) (.num 304)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 44)) (.var 3)) (.num 361)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 6)) (.var 3)) (.num
    118)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.num 8))
    (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 24) (.var 3)) (.num 138)) (.var 3)) (.num 575)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 60) (.var 3)) (.num 234)) (.var 3)) (.num 890)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 48) (.var 3)) (.num 82)) (.var 3)) (.num 398)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 3)) (.neg (.num 26))) (.var 3))
    (.num 32)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg
    (.num 8))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 111) (.var 3)) (.num 378)) (.var 3)) (.num 715))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 333) (.var 3)) (.num 870)) (.var 3)) (.num
    1401)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 359) (.var 3)) (.num 618))
    (.var 3)) (.num 819)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 163)
    (.var 3)) (.num 90)) (.var 3)) (.num 70)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 26) (.var 3)) (.neg (.num 48))) (.var 3)) (.neg (.num 62))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg (.num 12))) (.pow (.var 2)
    5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 264) (.var 3)) (.num 730)) (.var 3)) (.num 712)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 924) (.var 3)) (.num 2202)) (.var 3)) (.num 1853)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 1236) (.var 3)) (.num 2428)) (.var 3)) (.num 1655))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 780) (.var 3)) (.num 1152))
    (.var 3)) (.num 523)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 228)
    (.var 3)) (.num 186)) (.var 3)) (.neg (.num 25))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 24) (.var 3)) (.neg (.num 14))) (.var 3)) (.neg (.num 38))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg (.num 4))) (.pow
    (.var 2) 6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 353) (.var 3)) (.num 876)) (.var 3)) (.num 583))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1412) (.var 3)) (.num 3254)) (.var 3)) (.num
    2010)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2237) (.var 3)) (.num 4730))
    (.var 3)) (.num 2658)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1769)
    (.var 3)) (.num 3374)) (.var 3)) (.num 1671)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 718) (.var 3)) (.num 1200)) (.var 3)) (.num 491)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 135) (.var 3)) (.num 184)) (.var 3)) (.num 49)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 6)) (.var 3))
    (.neg (.num 2))) (.pow (.var 2) 6))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 250) (.var 3)) (.num
    560)) (.var 3)) (.num 310)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1125) (.var 3))
    (.num 2448)) (.var 3)) (.num 1323)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2052) (.var 3)) (.num 4320)) (.var 3)) (.num 2268)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1932) (.var 3)) (.num 3918)) (.var 3)) (.num 1986)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 984) (.var 3)) (.num 1914)) (.var 3)) (.num
    930)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 255) (.var 3)) (.num
    474)) (.var 3)) (.num 219)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    26) (.var 3)) (.num 46)) (.var 3)) (.num 20)) (.pow (.var 2) 6))) (.pow (.var 1) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 72) (.var 3)) (.num 144)) (.var 3)) (.num 72)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 360) (.var 3)) (.num 720)) (.var 3)) (.num 360)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 738) (.var 3)) (.num 1476)) (.var 3)) (.num 738)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 792) (.var 3)) (.num 1584)) (.var 3)) (.num
    792)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 468) (.var 3)) (.num
    936)) (.var 3)) (.num 468)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    144) (.var 3)) (.num 288)) (.var 3)) (.num 144)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 18) (.var 3)) (.num 36)) (.var 3)) (.num 18)) (.pow (.var 2) 6)))
    (.pow (.var 1) 3)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))) 5)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.mul (.num 48) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 45) (.var 1))
    (.mul (.num 18) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 14) (.var 3))
    (.num 325)) (.var 1)) (.mul (.add (.mul (.num 14) (.var 3)) (.num 265)) (.var 2))) (.var 1))
    (.mul (.num 46) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 5) (.var 3)) (.num 64)) (.var 3)) (.num 935)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 10) (.var 3)) (.num 72)) (.var 3)) (.num 1100)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 5) (.var 3)) (.neg (.num 6))) (.var 3)) (.num 355)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 14)) (.var 3)) (.num 24)) (.pow (.var 2) 3))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 32)
    (.var 3)) (.num 114)) (.var 3)) (.num 1344)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 80)
    (.var 3)) (.num 75)) (.var 3)) (.num 1929)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 64) (.var 3)) (.neg (.num 166))) (.var 3)) (.num 727)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.mul (.add (.mul (.num 16) (.var 3)) (.neg (.num 161))) (.var 3)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 34)) (.var 3)) (.neg (.num 24))) (.pow (.var 2) 4))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 99) (.var 3)) (.num 170)) (.var 3)) (.num 1155)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 297) (.var 3)) (.num 76)) (.var 3)) (.num 1831)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 318) (.var 3)) (.neg (.num 489))) (.var 3)) (.num 479)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 141) (.var 3)) (.neg (.num 598))) (.var 3))
    (.neg (.num 427))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 21) (.var
    3)) (.neg (.num 229))) (.var 3)) (.neg (.num 225))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 26)) (.var 3)) (.neg (.num 26))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 170)
    (.var 3)) (.num 428)) (.var 3)) (.num 798)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 595)
    (.var 3)) (.num 967)) (.var 3)) (.num 1622)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 789) (.var 3)) (.num 489)) (.var 3)) (.num 690)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 485) (.var 3)) (.neg (.num 302))) (.var 3)) (.neg (.num
    473))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 133) (.var 3)) (.neg
    (.num 335))) (.var 3)) (.neg (.num 434))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 12) (.var 3)) (.neg (.num 89))) (.var 3)) (.neg (.num 101))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 6))) (.pow (.var 2)
    6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 178) (.var 3)) (.num 518)) (.var 3)) (.num 460)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 712) (.var 3)) (.num 1754)) (.var 3)) (.num 1378)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1118) (.var 3)) (.num 2219)) (.var 3)) (.num
    1431)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 862) (.var 3)) (.num
    1249)) (.var 3)) (.num 519)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    330) (.var 3)) (.num 258)) (.var 3)) (.neg (.num 54))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 54) (.var 3)) (.neg (.num 17))) (.var 3)) (.neg (.num 71)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.neg (.num
    9))) (.var 3)) (.neg (.num 11))) (.pow (.var 2) 6))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 68)
    (.var 3)) (.num 196)) (.var 3)) (.num 128)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 306)
    (.var 3)) (.num 810)) (.var 3)) (.num 504)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 556) (.var 3)) (.num 1328)) (.var 3)) (.num 772)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 518) (.var 3)) (.num 1090)) (.var 3)) (.num 572)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 258) (.var 3)) (.num 462)) (.var 3)) (.num
    204)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 64) (.var 3)) (.num
    92)) (.var 3)) (.num 28)) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.add (.mul (.num 6) (.var
    3)) (.num 6)) (.var 3)) (.pow (.var 2) 6))) (.pow (.var 1) 2)))) (.var 0)) (.pow (.mul (.add
    (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5)) (.add (.var 1) (.var 2))))
    (.mul (.mul (.mul (.mul (.num 24) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 75) (.var 1)) (.mul (.num 30) (.var 2))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 470)) (.var 1)) (.mul (.add (.mul (.num 16)
    (.var 3)) (.num 386)) (.var 2))) (.var 1)) (.mul (.num 68) (.pow (.var 2) 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.num 42))
    (.var 3)) (.num 1149)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.num 34))
    (.var 3)) (.num 1342)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3))
    (.neg (.num 24))) (.var 3)) (.num 429)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 16)) (.var 3)) (.num 30)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 18) (.var 3)) (.neg (.num 28))) (.var 3))
    (.num 1221)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45) (.var 3)) (.neg (.num 226)))
    (.var 3)) (.num 1611)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36) (.var 3))
    (.neg (.num 370))) (.var 3)) (.num 470)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 9) (.var 3)) (.neg (.num 206))) (.var 3)) (.neg (.num 68))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 34)) (.var 3)) (.neg (.num 26))) (.pow (.var 2) 4))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 57) (.var 3)) (.neg (.num 178))) (.var 3)) (.num 643)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 171) (.var 3)) (.neg (.num 788))) (.var 3)) (.num 637)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 183) (.var 3)) (.neg (.num 1217))) (.var 3)) (.neg (.num 478)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 81) (.var 3)) (.neg (.num
    818))) (.var 3)) (.neg (.num 704))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 12) (.var 3)) (.neg (.num 231))) (.var 3)) (.neg (.num 229))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 20)) (.var 3)) (.neg (.num 20))) (.pow (.var 2) 5))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 84) (.var 3)) (.num 48)) (.var 3)) (.num 306)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 294) (.var 3)) (.neg (.num 88))) (.var 3)) (.num 393)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 390) (.var 3)) (.neg (.num 508))) (.var 3)) (.neg (.num
    307))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 240) (.var 3)) (.neg
    (.num 606))) (.var 3)) (.neg (.num 671))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 66) (.var 3)) (.neg (.num 280))) (.var 3)) (.neg (.num 329))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.neg (.num 48))) (.var 3))
    (.neg (.num 54))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 2)) (.var 3))
    (.neg (.num 2))) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 78) (.var 3)) (.num 148))
    (.var 3)) (.num 130)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 312) (.var 3)) (.num 524))
    (.var 3)) (.num 380)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 486) (.var 3))
    (.num 699)) (.var 3)) (.num 378)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 366) (.var 3)) (.num 421)) (.var 3)) (.num 121)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 132) (.var 3)) (.num 98)) (.var 3)) (.neg (.num 25))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18) (.var 3)) (.neg (.num 3)))
    (.var 3)) (.neg (.num 21))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 3))
    (.var 3)) (.neg (.num 3))) (.pow (.var 2) 6))) (.var 1)))) (.pow (.var 0) 2)) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5)) (.add (.var 1) (.var
    2)))) (.mul (.mul (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 55) (.var 1)) (.mul (.num 22) (.var 2))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.num 6) (.var 3)) (.num 313)) (.var 1)) (.mul (.add (.mul (.num 6) (.var
    3)) (.num 257)) (.var 2))) (.var 1)) (.mul (.num 46) (.pow (.var 2) 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 3)) (.num 692)) (.var 1)) (.mul
    (.add (.mul (.num 6) (.var 3)) (.num 804)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    12)) (.var 3)) (.num 258)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 6))
    (.var 3)) (.num 20)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.neg (.num 24)) (.var 3)) (.num 568)) (.var 1)) (.mul (.add (.mul (.neg
    (.num 117)) (.var 3)) (.num 709)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 162))
    (.var 3)) (.num 175)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 81)) (.var
    3)) (.neg (.num 38))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var
    3)) (.neg (.num 10))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.neg (.num 108)) (.var 3)) (.num 188)) (.var 1)) (.mul (.add
    (.mul (.neg (.num 408)) (.var 3)) (.num 84)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 558)) (.var 3)) (.neg (.num 332))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 336)) (.var 3)) (.neg (.num 310))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 84)) (.var 3)) (.neg (.num 83))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 6)) (.var 3)) (.neg (.num 6))) (.pow (.var 2) 5)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.num 42))
    (.var 1)) (.mul (.add (.mul (.neg (.num 99)) (.var 3)) (.num 1)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 243)) (.var 3)) (.neg (.num 179))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 222)) (.var 3)) (.neg (.num 210))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 81)) (.var 3)) (.neg (.num 81))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 9)) (.var 3)) (.neg (.num 9))) (.pow (.var 2) 5))) (.var 1)))) (.pow
    (.var 0) 3)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    5)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.num 160) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var
    1)) (.mul (.num 2) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 4) (.var 3))
    (.num 54)) (.var 1)) (.mul (.add (.mul (.num 4) (.var 3)) (.num 42)) (.var 2))) (.var 1))
    (.mul (.num 6) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 4) (.var 3)) (.num 48)) (.var 3)) (.num 212)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 10) (.var 3)) (.num 80)) (.var 3)) (.num 269)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 36)) (.var 3)) (.num 95)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 8)) (.pow
    (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 40) (.var 3)) (.num 236)) (.var 3)) (.num 494)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 120) (.var 3)) (.num 550)) (.var 3)) (.num 912)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 130) (.var 3)) (.num 448)) (.var 3)) (.num 567)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num 154)) (.var 3)) (.num 139))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20))
    (.var 3)) (.num 12)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 158) (.var 3)) (.num 636)) (.var 3)) (.num
    780)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 553) (.var 3)) (.num 1902)) (.var 3))
    (.num 1976)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 747) (.var 3)) (.num
    2180)) (.var 3)) (.num 1877)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 485) (.var 3)) (.num 1206)) (.var 3)) (.num 845)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 151) (.var 3)) (.num 328)) (.var 3)) (.num 188)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18) (.var 3)) (.num 36)) (.var 3)) (.num
    18)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 324) (.var 3)) (.num 1024)) (.var 3)) (.num
    868)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1296) (.var 3)) (.num 3726)) (.var 3))
    (.num 2862)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2081) (.var 3)) (.num
    5432)) (.var 3)) (.num 3749)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1707) (.var 3)) (.num 4058)) (.var 3)) (.num 2509)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 749) (.var 3)) (.num 1640)) (.var 3)) (.num 916)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 165) (.var 3)) (.num 340)) (.var 3)) (.num
    176)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14) (.var 3)) (.num
    28)) (.var 3)) (.num 14)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 370) (.var 3))
    (.num 980)) (.var 3)) (.num 650)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1665) (.var
    3)) (.num 4186)) (.var 3)) (.num 2645)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3082) (.var 3)) (.num 7348)) (.var 3)) (.num 4408)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 3017) (.var 3)) (.num 6830)) (.var 3)) (.num 3886)) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1667) (.var 3)) (.num 3600)) (.var 3))
    (.num 1949)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 510) (.var 3))
    (.num 1060)) (.var 3)) (.num 551)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 77) (.var 3)) (.num 156)) (.var 3)) (.num 79)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 4) (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 7)))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 224) (.var 3)) (.num 512)) (.var 3)) (.num 288)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1120) (.var 3)) (.num 2504)) (.var 3)) (.num 1384)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2340) (.var 3)) (.num 5112)) (.var 3)) (.num
    2772)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2640) (.var 3)) (.num
    5634)) (.var 3)) (.num 2994)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1731) (.var 3)) (.num 3612)) (.var 3)) (.num 1881)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 657) (.var 3)) (.num 1344)) (.var 3)) (.num 687)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 133) (.var 3)) (.num 268)) (.var 3)) (.num
    135)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11) (.var 3)) (.num
    22)) (.var 3)) (.num 11)) (.pow (.var 2) 7))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 56) (.var 3)) (.num 112)) (.var 3)) (.num 56)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 308) (.var 3)) (.num 616)) (.var 3)) (.num 308)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 714) (.var 3)) (.num 1428)) (.var 3)) (.num 714)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 903) (.var 3)) (.num 1806)) (.var 3)) (.num 903))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 672) (.var 3)) (.num 1344))
    (.var 3)) (.num 672)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 294)
    (.var 3)) (.num 588)) (.var 3)) (.num 294)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 70) (.var 3)) (.num 140)) (.var 3)) (.num 70)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 7) (.var 3)) (.num 14)) (.var 3)) (.num 7)) (.pow (.var 2)
    7))) (.pow (.var 1) 2)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0)
    (.var 1)) (.var 2))) 5))) (.mul (.mul (.mul (.num 120) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 27) (.var 1)) (.mul (.num 9)
    (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 14) (.var 3)) (.num 195)) (.var
    1)) (.mul (.add (.mul (.num 14) (.var 3)) (.num 145)) (.var 2))) (.var 1)) (.mul (.num 18)
    (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 10) (.var 3)) (.num 104)) (.var 3)) (.num 605)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 25) (.var 3)) (.num 156)) (.var 3)) (.num 699)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 20) (.var 3)) (.num 52)) (.var 3)) (.num 193)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.num 5) (.pow (.var 3) 2)) (.num 3)) (.pow (.var 2) 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 64) (.var 3)) (.num
    360)) (.var 3)) (.num 1077)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 192) (.var 3))
    (.num 748)) (.var 3)) (.num 1740)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    208) (.var 3)) (.num 498)) (.var 3)) (.num 813)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 96) (.var 3)) (.num 120)) (.var 3)) (.num 82)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 10)) (.var 3)) (.neg (.num
    8))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 174) (.var 3)) (.num 740)) (.var 3)) (.num 1278)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 609) (.var 3)) (.num 2018)) (.var 3)) (.num 2825))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 819) (.var 3)) (.num 2032)) (.var 3))
    (.num 2128)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 525) (.var 3))
    (.num 948)) (.var 3)) (.num 627)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 159) (.var 3)) (.num 216)) (.var 3)) (.num 63)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 18) (.var 3)) (.num 22)) (.var 3)) (.num 3)) (.pow (.var 2)
    5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 248) (.var 3)) (.num 938)) (.var 3)) (.num 1054)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 992) (.var 3)) (.num 3194)) (.var 3)) (.num 3122)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1582) (.var 3)) (.num 4280)) (.var 3)) (.num
    3519)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1274) (.var 3)) (.num
    2884)) (.var 3)) (.num 1916)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 538) (.var 3)) (.num 1038)) (.var 3)) (.num 542)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 110) (.var 3)) (.num 192)) (.var 3)) (.num 83)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 14)) (.var 3)) (.num 6))
    (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 188) (.var 3)) (.num 644)) (.var 3))
    (.num 536)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 846) (.var 3)) (.num 2618)) (.var
    3)) (.num 2020)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1554) (.var 3))
    (.num 4324)) (.var 3)) (.num 3054)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1491) (.var 3)) (.num 3728)) (.var 3)) (.num 2383)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 791) (.var 3)) (.num 1790)) (.var 3)) (.num 1031)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 224) (.var 3)) (.num 468)) (.var
    3)) (.num 246)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 29) (.var
    3)) (.num 58)) (.var 3)) (.num 29)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1) (.var 3)) (.num 2)) (.var 3)) (.num 1)) (.pow (.var 2) 7)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 56) (.var 3)) (.num 176)) (.var 3)) (.num 120)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 280) (.var 3)) (.num 824)) (.var 3)) (.num 544)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 582) (.var 3)) (.num 1596)) (.var 3)) (.num 1014)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 648) (.var 3)) (.num 1650)) (.var
    3)) (.num 1002)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 414) (.var
    3)) (.num 978)) (.var 3)) (.num 564)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 150) (.var 3)) (.num 330)) (.var 3)) (.num 180)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 28) (.var 3)) (.num 58)) (.var 3)) (.num 30)) (.pow (.var
    2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num
    2)) (.pow (.var 2) 7))) (.var 1)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1))
    (.add (.add (.var 0) (.var 1)) (.var 2))) 5))) (.mul (.mul (.mul (.num 40) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 45) (.var 1)) (.mul
    (.num 15) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num
    273)) (.var 1)) (.mul (.add (.mul (.num 16) (.var 3)) (.num 194)) (.var 2))) (.var 1)) (.mul
    (.num 21) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 6) (.var 3)) (.num 80)) (.var 3)) (.num 679)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 15) (.var 3)) (.num 100)) (.var 3)) (.num 705)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 12) (.var 3)) (.num 10)) (.var 3)) (.num 128)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.neg (.num 10))) (.var 3)) (.neg
    (.num 18))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 36) (.var 3)) (.num 184)) (.var 3)) (.num 885)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 108) (.var 3)) (.num 288)) (.var 3)) (.num 1171)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 117) (.var 3)) (.num 62)) (.var 3)) (.num 232))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 54) (.var 3)) (.neg (.num
    58))) (.var 3)) (.neg (.num 152))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 9) (.var 3)) (.neg (.num 16))) (.var 3)) (.neg (.num 38))) (.pow (.var 2) 4)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    90) (.var 3)) (.num 276)) (.var 3)) (.num 734)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    315) (.var 3)) (.num 610)) (.var 3)) (.num 1291)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 423) (.var 3)) (.num 392)) (.var 3)) (.num 473)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 270) (.var 3)) (.num 34)) (.var 3)) (.neg (.num 212)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 81) (.var 3)) (.neg (.num
    26))) (.var 3)) (.neg (.num 131))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 9) (.var 3)) (.neg (.num 2))) (.var 3)) (.neg (.num 13))) (.pow (.var 2) 5)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 108) (.var 3)) (.num 312)) (.var 3)) (.num 428)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 432) (.var 3)) (.num 1000)) (.var 3)) (.num 1112)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 687) (.var 3)) (.num 1226)) (.var 3)) (.num 987)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 549) (.var 3)) (.num 736)) (.var 3)) (.num
    325)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 228) (.var 3)) (.num
    240)) (.var 3)) (.num 21)) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.add (.mul (.num 45)
    (.var 3)) (.num 46)) (.var 3)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3) (.var 3)) (.num 4)) (.var 3)) (.num 1)) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 60) (.var 3)) (.num 148)) (.var 3)) (.num 128)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 270) (.var 3)) (.num 610)) (.var 3)) (.num 464)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 492) (.var 3)) (.num 1016)) (.var 3)) (.num 666)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 462) (.var 3)) (.num 874)) (.var 3)) (.num 485)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 234) (.var 3)) (.num 410)) (.var
    3)) (.num 192)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60) (.var
    3)) (.num 100)) (.var 3)) (.num 41)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 6) (.var 3)) (.num 10)) (.var 3)) (.num 4)) (.pow (.var 2) 6))) (.var 1)))) (.pow
    (.var 0) 3)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    5))) (.mul (.mul (.mul (.num 5) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 33) (.var 1)) (.mul (.num 11) (.var 2))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.num 6) (.var 3)) (.num 177)) (.var 1)) (.mul (.add (.mul (.num 6) (.var 3))
    (.num 121)) (.var 2))) (.var 1)) (.mul (.num 12) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 373)) (.var 1)) (.mul (.add
    (.mul (.num 24) (.var 3)) (.num 356)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 6))
    (.var 3)) (.num 39)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var 3))
    (.neg (.num 16))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 36) (.var 3)) (.num 359)) (.var 1)) (.mul (.add (.mul (.num 18) (.var
    3)) (.num 376)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 66)) (.var 3)) (.neg (.num
    65))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 60)) (.var 3)) (.neg (.num
    134))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg (.num
    24))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 24) (.var 3)) (.num 192)) (.var 1)) (.mul (.add (.mul (.neg (.num 24))
    (.var 3)) (.num 228)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 162)) (.var 3)) (.neg
    (.num 123))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 168)) (.var 3)) (.neg
    (.num 236))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 60)) (.var 3)) (.neg
    (.num 82))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.neg
    (.num 7))) (.pow (.var 2) 5)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.num 58)) (.var 1)) (.mul (.add (.mul (.num
    60) (.var 3)) (.num 116)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 6) (.var 3)) (.num 31))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 54)) (.var 3)) (.neg (.num 64)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 36)) (.var 3)) (.neg (.num 44)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 7)))
    (.pow (.var 2) 5))) (.var 1)))) (.pow (.var 0) 4)) (.pow (.mul (.add (.var 0) (.var 1)) (.add
    (.add (.var 0) (.var 1)) (.var 2))) 5))) (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.mul (.num 10) (.pow (.var 1) 3)) (.var 0)) (.mul (.add
    (.mul (.num 26) (.var 1)) (.mul (.num 13) (.var 2))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.neg (.num 24)) (.var 3)) (.neg (.num 16))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 30)) (.var 3)) (.neg (.num 22))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 3))) (.pow (.var 2) 2))) (.pow (.var 1) 3))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 3)) (.var
    3)) (.neg (.num 74))) (.var 3)) (.neg (.num 69))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.neg (.num 6)) (.var 3)) (.neg (.num 134))) (.var 3)) (.neg (.num 125))) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.neg (.num 3)) (.var 3)) (.neg (.num 67))) (.var 3)) (.neg
    (.num 63))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 7)) (.var 3)) (.neg
    (.num 7))) (.pow (.var 2) 3))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 48)))
    (.var 3)) (.neg (.num 42))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 15)) (.var 3))
    (.neg (.num 118))) (.var 3)) (.neg (.num 103))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.neg (.num 12)) (.var 3)) (.neg (.num 96))) (.var 3)) (.neg (.num 84))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 3)) (.var 3)) (.neg (.num 27))) (.var
    3)) (.neg (.num 24))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 1)) (.var
    3)) (.neg (.num 1))) (.pow (.var 2) 4))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg (.num 4))) (.var 1))
    (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg (.num 12))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 14)) (.var 3)) (.neg (.num 14))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 8)) (.var 3)) (.neg (.num 8))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 2)) (.var 3)) (.neg (.num 2))) (.pow (.var 2) 4))) (.pow (.var 1)
    4)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.pow
    (.add (.var 1) (.var 2)) 4))) (.mul (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 22) (.pow (.var 1) 2)) (.var 0))
    (.mul (.add (.mul (.num 182) (.var 1)) (.mul (.num 84) (.var 2))) (.pow (.var 1) 2))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 44)) (.var 3)) (.num 416)) (.var 1))
    (.mul (.add (.mul (.neg (.num 60)) (.var 3)) (.num 362)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 16)) (.var 3)) (.num 74)) (.pow (.var 2) 2))) (.pow (.var 1) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 4)) (.var 3))
    (.neg (.num 384))) (.var 3)) (.num 136)) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num
    8)) (.var 3)) (.neg (.num 712))) (.var 3)) (.neg (.num 16))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg (.num 390))) (.var 3)) (.neg (.num 124)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 62)) (.var 3)) (.neg (.num 34)))
    (.pow (.var 2) 3))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.neg (.num 40)) (.var 3)) (.neg (.num 942))) (.var 3))
    (.neg (.num 518))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 100)) (.var 3)) (.neg
    (.num 2267))) (.var 3)) (.neg (.num 1505))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.neg (.num 80)) (.var 3)) (.neg (.num 1896))) (.var 3)) (.neg (.num 1478))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 20)) (.var 3)) (.neg (.num 635)))
    (.var 3)) (.neg (.num 565))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 64))
    (.var 3)) (.neg (.num 64))) (.pow (.var 2) 4))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 58))
    (.var 3)) (.neg (.num 808))) (.var 3)) (.neg (.num 566))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.neg (.num 174)) (.var 3)) (.neg (.num 2442))) (.var 3)) (.neg (.num 1876))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 194)) (.var 3)) (.neg (.num 2792))) (.var
    3)) (.neg (.num 2336))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg
    (.num 98)) (.var 3)) (.neg (.num 1474))) (.var 3)) (.neg (.num 1322))) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 20)) (.var 3)) (.neg (.num 334))) (.var
    3)) (.neg (.num 314))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 18)) (.var
    3)) (.neg (.num 18))) (.pow (.var 2) 5))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 14) (.var 3))
    (.neg (.num 212))) (.var 3)) (.neg (.num 178))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    49) (.var 3)) (.neg (.num 794))) (.var 3)) (.neg (.num 719))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 55) (.var 3)) (.neg (.num 1196))) (.var 3)) (.neg (.num 1147))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 3)) (.neg (.num 911)))
    (.var 3)) (.neg (.num 898))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg
    (.num 9)) (.var 3)) (.neg (.num 350))) (.var 3)) (.neg (.num 341))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg (.num 53))) (.var 3)) (.neg
    (.num 49))) (.pow (.var 2) 5))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 6))
    (.var 3)) (.neg (.num 10))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 64) (.var 3)) (.num
    2)) (.var 3)) (.neg (.num 62))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 101)
    (.var 3)) (.neg (.num 41))) (.var 3)) (.neg (.num 142))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 79) (.var 3)) (.neg (.num 75))) (.var 3)) (.neg (.num 154)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 31) (.var 3)) (.neg (.num
    49))) (.var 3)) (.neg (.num 80))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 5) (.var 3)) (.neg (.num 11))) (.var 3)) (.neg (.num 16))) (.pow (.var 2) 5))) (.pow
    (.var 1) 4)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    4)) (.pow (.add (.var 1) (.var 2)) 3))) (.mul (.mul (.mul (.mul (.num 1) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 32) (.pow (.var 1) 2)) (.var
    0)) (.mul (.add (.mul (.num 286) (.var 1)) (.mul (.num 132) (.var 2))) (.pow (.var 1) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 40)) (.var 3)) (.num 589))
    (.var 1)) (.mul (.add (.mul (.neg (.num 56)) (.var 3)) (.num 521)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 16)) (.var 3)) (.num 110)) (.pow (.var 2) 2))) (.pow (.var 1) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 416)) (.var 3))
    (.num 133)) (.var 1)) (.mul (.add (.mul (.neg (.num 768)) (.var 3)) (.neg (.num 43))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.neg (.num 422)) (.var 3)) (.neg (.num 156))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.neg (.num 70)) (.var 3)) (.neg (.num 44))) (.pow (.var 2)
    3))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.neg (.num 24)) (.var 3)) (.neg (.num 848))) (.var 3)) (.neg (.num 482)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 60)) (.var 3)) (.neg (.num 2044))) (.var
    3)) (.neg (.num 1398))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 48))
    (.var 3)) (.neg (.num 1732))) (.var 3)) (.neg (.num 1395))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg (.num 598))) (.var 3)) (.neg
    (.num 549))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 62)) (.var 3)) (.neg
    (.num 62))) (.pow (.var 2) 4))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 18)) (.var 3)) (.neg
    (.num 428))) (.var 3)) (.neg (.num 288))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num
    54)) (.var 3)) (.neg (.num 1328))) (.var 3)) (.neg (.num 1012))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.neg (.num 66)) (.var 3)) (.neg (.num 1581))) (.var 3)) (.neg (.num
    1336))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 42)) (.var 3))
    (.neg (.num 882))) (.var 3)) (.neg (.num 801))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg (.num 209))) (.var 3)) (.neg (.num 197)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 8)) (.var 3)) (.neg (.num 8)))
    (.pow (.var 2) 5))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.num 4)) (.var 3)) (.neg
    (.num 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 105) (.var 3)) (.neg (.num 2))) (.var
    3)) (.neg (.num 45))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 135) (.var 3))
    (.neg (.num 50))) (.var 3)) (.neg (.num 133))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 75) (.var 3)) (.neg (.num 93))) (.var 3)) (.neg (.num 154))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 3)) (.neg (.num 64))) (.var 3))
    (.neg (.num 79))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 15)) (.var 3))
    (.neg (.num 15))) (.pow (.var 2) 5))) (.pow (.var 1) 3)))) (.var 0)) (.pow (.mul (.add (.var
    0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.pow (.add (.var 1) (.var 2)) 3)))
    (.mul (.mul (.mul (.num 8) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 6) (.var 1)) (.var 0)) (.mul (.add (.mul
    (.num 96) (.var 1)) (.mul (.num 42) (.var 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 502) (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.num 433)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.num 84)) (.pow (.var 2) 2))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6)
    (.var 3)) (.neg (.num 48))) (.var 3)) (.num 1219)) (.var 1)) (.mul (.add (.mul (.add (.mul
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
    3)) (.num 118)) (.var 3)) (.num 59)) (.pow (.var 2) 6))) (.pow (.var 1) 4)))) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.pow (.add (.var 1)
    (.var 2)) 2))) (.mul (.mul (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add
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
    3)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    4)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.mul (.num 1) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 45) (.var 1))
    (.var 0)) (.mul (.add (.mul (.num 537) (.var 1)) (.mul (.num 243) (.var 2))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 48)) (.var 3)) (.num 2367)) (.var
    1)) (.mul (.add (.mul (.neg (.num 72)) (.var 3)) (.num 2076)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 24)) (.var 3)) (.num 423)) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 480)) (.var 3)) (.num 4183)) (.var
    1)) (.mul (.add (.mul (.neg (.num 984)) (.var 3)) (.num 5079)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 627)) (.var 3)) (.num 1811)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 123)) (.var 3)) (.num 180)) (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 18) (.var 3))
    (.neg (.num 1980))) (.var 3)) (.num 2805)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45)
    (.var 3)) (.neg (.num 5024))) (.var 3)) (.num 2978)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 36) (.var 3)) (.neg (.num 4528))) (.var 3)) (.neg (.num 119))) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.neg (.num 1703))) (.var
    3)) (.neg (.num 778))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 219)) (.var
    3)) (.neg (.num 165))) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 45) (.var 3)) (.neg (.num
    2642))) (.var 3)) (.num 552)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 135) (.var 3))
    (.neg (.num 8348))) (.var 3)) (.neg (.num 1745))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 144) (.var 3)) (.neg (.num 10162))) (.var 3)) (.neg (.num 5533))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 63) (.var 3)) (.neg (.num 5842))) (.var 3))
    (.neg (.num 4569))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9) (.var
    3)) (.neg (.num 1521))) (.var 3)) (.neg (.num 1417))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 135)) (.var 3)) (.neg (.num 135))) (.pow (.var 2) 5))) (.var 1)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 198) (.var 3)) (.neg (.num 648))) (.var 3)) (.num 384)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 693) (.var 3)) (.neg (.num 2918))) (.var 3)) (.neg (.num
    489))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 891) (.var 3)) (.neg (.num
    5248))) (.var 3)) (.neg (.num 3316))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 495) (.var 3)) (.neg (.num 4690))) (.var 3)) (.neg (.num 4111))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 99) (.var 3)) (.neg (.num 2098))) (.var 3))
    (.neg (.num 2054))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 401)) (.var
    3)) (.neg (.num 401))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 15)) (.var
    3)) (.neg (.num 15))) (.pow (.var 2) 6))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 234) (.var 3))
    (.num 352)) (.var 3)) (.num 342)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 936) (.var 3))
    (.num 1240)) (.var 3)) (.num 978)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1467) (.var 3)) (.num 1592)) (.var 3)) (.num 862)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1125) (.var 3)) (.num 814)) (.var 3)) (.num 37)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 423) (.var 3)) (.num 26)) (.var 3)) (.neg (.num
    336))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 63) (.var 3)) (.neg
    (.num 110))) (.var 3)) (.neg (.num 173))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 26)) (.var 3)) (.neg (.num 26))) (.pow (.var 2) 6))) (.pow (.var 1) 2)))) (.pow
    (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    4)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.mul (.num 24) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 40) (.var 1)) (.mul (.num 16) (.var 2))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.num 16) (.var 3)) (.num 424)) (.var 1)) (.mul (.add (.mul (.num 16) (.var 3))
    (.num 348)) (.var 2))) (.var 1)) (.mul (.num 64) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 168)) (.var 3)) (.num
    1884)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 224)) (.var 3)) (.num
    2312)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 40)) (.var
    3)) (.num 836)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 16)) (.var 3))
    (.num 80)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 112) (.var 3)) (.num 844)) (.var 3)) (.num 4709)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 280) (.var 3)) (.num 1470)) (.var 3)) (.num 7631)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 224) (.var 3)) (.num 584)) (.var 3)) (.num
    3972)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 56) (.var 3)) (.neg
    (.num 106))) (.var 3)) (.num 666)) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.neg (.num 64))
    (.var 3)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 640) (.var 3)) (.num 2816)) (.var 3)) (.num 7751)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 1920) (.var 3)) (.num 6458)) (.var 3)) (.num 15797))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2072) (.var 3)) (.num 4598)) (.var
    3)) (.num 10760)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 944) (.var
    3)) (.num 686)) (.var 3)) (.num 2428)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 152) (.var 3)) (.neg (.num 366))) (.var 3)) (.neg (.num 142))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 96)) (.var 3)) (.neg (.num 80))) (.pow (.var 2) 5))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 1990) (.var 3)) (.num 6730)) (.var 3)) (.num 9646)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 6965) (.var 3)) (.num 19845)) (.var 3)) (.num 24850)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 9355) (.var 3)) (.num 21281)) (.var 3)) (.num 22795))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5975) (.var 3)) (.num 9573))
    (.var 3)) (.num 8177)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1795)
    (.var 3)) (.num 1161)) (.var 3)) (.num 252)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 200) (.var 3)) (.neg (.num 310))) (.var 3)) (.neg (.num 450))) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 64)) (.var 3)) (.neg (.num 64))) (.pow (.var
    2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 3710) (.var 3)) (.num 10844)) (.var 3)) (.num 9662))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14840) (.var 3)) (.num 39232)) (.var 3)) (.num
    31704)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 23697) (.var 3)) (.num
    55627)) (.var 3)) (.num 39979)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 19151) (.var 3)) (.num 38683)) (.var 3)) (.num 23761)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 8149) (.var 3)) (.num 13219)) (.var 3)) (.num 6138)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1693) (.var 3)) (.num 1737)) (.var
    3)) (.num 148)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 128) (.var
    3)) (.neg (.num 54))) (.var 3)) (.neg (.num 182))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 16)) (.var 3)) (.neg (.num 16))) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 4144) (.var 3)) (.num 10710)) (.var 3)) (.num 7154)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 18648) (.var 3)) (.num 45659)) (.var 3)) (.num 28997)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 34398) (.var 3)) (.num 79280)) (.var 3)) (.num
    47478)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33369) (.var 3))
    (.num 71751)) (.var 3)) (.num 40032)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 18103) (.var 3)) (.num 35787)) (.var 3)) (.num 18200)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 5347) (.var 3)) (.num 9426)) (.var 3)) (.num 4143))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 751) (.var 3)) (.num 1079))
    (.var 3)) (.num 328)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 32)
    (.var 3)) (.num 20)) (.var 3)) (.neg (.num 12))) (.pow (.var 2) 7))) (.var 1))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 2536) (.var 3)) (.num 5792)) (.var 3)) (.num 3256)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 12680) (.var 3)) (.num 28300)) (.var 3)) (.num 15620))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 26467) (.var 3)) (.num 57589)) (.var
    3)) (.num 31122)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 29788)
    (.var 3)) (.num 63014)) (.var 3)) (.num 33226)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 19439) (.var 3)) (.num 39833)) (.var 3)) (.num 20394)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7315) (.var 3)) (.num 14437)) (.var 3))
    (.num 7122)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1458) (.var 3))
    (.num 2742)) (.var 3)) (.num 1284)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 117) (.var 3)) (.num 205)) (.var 3)) (.num 88)) (.pow (.var 2) 7))) (.pow (.var 1)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 660) (.var 3)) (.num 1320)) (.var 3)) (.num 660))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3630) (.var 3)) (.num 7260)) (.var 3)) (.num
    3630)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8432) (.var 3)) (.num 16864))
    (.var 3)) (.num 8432)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    10719) (.var 3)) (.num 21438)) (.var 3)) (.num 10719)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 8056) (.var 3)) (.num 16112)) (.var 3)) (.num 8056)) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3584) (.var 3)) (.num 7168)) (.var 3))
    (.num 3584)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 876) (.var 3))
    (.num 1752)) (.var 3)) (.num 876)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 91) (.var 3)) (.num 182)) (.var 3)) (.num 91)) (.pow (.var 2) 7))) (.pow (.var 1) 3))))
    (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4))
    (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.mul (.num 9) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 180) (.var
    1)) (.mul (.num 72) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 56) (.var
    3)) (.num 1642)) (.var 1)) (.mul (.add (.mul (.num 56) (.var 3)) (.num 1366)) (.var 2))) (.var
    1)) (.mul (.num 256) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 20) (.var 3)) (.num 368)) (.var 3)) (.num 6260)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 40) (.var 3)) (.num 456)) (.var 3)) (.num 7704)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 32)) (.var 3)) (.num 2812)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 56)) (.var 3)) (.num 280)) (.pow (.var
    2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 168) (.var 3)) (.num 1058)) (.var 3)) (.num 12830)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 420) (.var 3)) (.num 1333)) (.var 3)) (.num 20251)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 336) (.var 3)) (.neg (.num 292))) (.var 3)) (.num 10182)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 84) (.var 3)) (.neg (.num 759)))
    (.var 3)) (.num 1625)) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.neg (.num 192)) (.var 3))
    (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 672) (.var 3)) (.num 2188)) (.var 3)) (.num 16280)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 2016) (.var 3)) (.num 3010)) (.var 3)) (.num 30576)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2164) (.var 3)) (.neg (.num 1408))) (.var
    3)) (.num 17792)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 968) (.var
    3)) (.neg (.num 3758))) (.var 3)) (.num 2128)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 148) (.var 3)) (.neg (.num 1768))) (.var 3)) (.neg (.num 972))) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 240)) (.var 3)) (.neg (.num 200))) (.pow (.var
    2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 1564) (.var 3)) (.num 4922)) (.var 3)) (.num 15090)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 5474) (.var 3)) (.num 11225)) (.var 3)) (.num 34161))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7302) (.var 3)) (.num 5815)) (.var
    3)) (.num 24013)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4570)
    (.var 3)) (.neg (.num 3741))) (.var 3)) (.num 2249)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1310) (.var 3)) (.neg (.num 4525))) (.var 3)) (.neg (.num 3843)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 132) (.var 3)) (.neg (.num
    1400))) (.var 3)) (.neg (.num 1402))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 128)) (.var 3)) (.neg (.num 128))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 2292) (.var 3)) (.num 7994)) (.var 3)) (.num 11210)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 9168) (.var 3)) (.num 25986)) (.var 3)) (.num 32702)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 14535) (.var 3)) (.num 30921)) (.var 3)) (.num 33804)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11517) (.var 3)) (.num 15053))
    (.var 3)) (.num 12638)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    4697) (.var 3)) (.num 997)) (.var 3)) (.neg (.num 1422))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 895) (.var 3)) (.neg (.num 1527))) (.var 3)) (.neg (.num 2204)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 56) (.var 3)) (.neg (.num
    424))) (.var 3)) (.neg (.num 480))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 24)) (.var 3)) (.neg (.num 24))) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 1846) (.var 3)) (.num 6306)) (.var 3)) (.num 5636)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 8307) (.var 3)) (.num 25293)) (.var 3)) (.num 20958)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 15256) (.var 3)) (.num 40494)) (.var 3)) (.num 30430)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14630) (.var 3)) (.num 32621))
    (.var 3)) (.num 21291)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    7750) (.var 3)) (.num 13445)) (.var 3)) (.num 6727)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2183) (.var 3)) (.num 2333)) (.var 3)) (.num 278)) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 276) (.var 3)) (.neg (.num 39))) (.var 3)) (.neg
    (.num 315))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3))
    (.neg (.num 41))) (.var 3)) (.neg (.num 49))) (.pow (.var 2) 7))) (.var 1))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 548) (.var 3)) (.num 1816)) (.var 3)) (.num 1268)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 2740) (.var 3)) (.num 8420)) (.var 3)) (.num 5680)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5727) (.var 3)) (.num 16109)) (.var 3)) (.num
    10382)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6468) (.var 3))
    (.num 16374)) (.var 3)) (.num 9906)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 4249) (.var 3)) (.num 9453)) (.var 3)) (.num 5204)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1617) (.var 3)) (.num 3041)) (.var 3)) (.num 1424)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 328) (.var 3)) (.num 482)) (.var
    3)) (.num 154)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 27) (.var
    3)) (.num 25)) (.var 3)) (.neg (.num 2))) (.pow (.var 2) 7))) (.pow (.var 1) 2)))) (.pow (.var
    0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4))
    (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 300) (.var 1)) (.mul
    (.num 120) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 64) (.var 3)) (.num
    2450)) (.var 1)) (.mul (.add (.mul (.num 64) (.var 3)) (.num 2054)) (.var 2))) (.var 1)) (.mul
    (.num 392) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 12) (.var 3)) (.num 296)) (.var 3)) (.num 8268)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 24) (.var 3)) (.num 328)) (.var 3)) (.num 10206)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 12) (.var 3)) (.neg (.num 32))) (.var 3)) (.num 3762)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 64)) (.var 3)) (.num 392)) (.pow (.var
    2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 96) (.var 3)) (.num 336)) (.var 3)) (.num 14025)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 240) (.var 3)) (.neg (.num 216))) (.var 3)) (.num 21747)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 192) (.var 3)) (.neg (.num 1376))) (.var 3)) (.num 10716))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48) (.var 3)) (.neg (.num
    1024))) (.var 3)) (.num 1698)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num
    200)) (.var 3)) (.num 16)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 384) (.var 3)) (.neg (.num 368))) (.var
    3)) (.num 13383)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1152) (.var 3)) (.neg (.num
    3496))) (.var 3)) (.num 23175)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1236)
    (.var 3)) (.neg (.num 7225))) (.var 3)) (.num 11065)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 552) (.var 3)) (.neg (.num 5842))) (.var 3)) (.neg (.num 378)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 84) (.var 3)) (.neg (.num
    1961))) (.var 3)) (.neg (.num 1255))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 216)) (.var 3)) (.neg (.num 184))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 828) (.var
    3)) (.num 400)) (.var 3)) (.num 8834)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2898)
    (.var 3)) (.neg (.num 1996))) (.var 3)) (.num 17180)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 3870) (.var 3)) (.neg (.num 8282))) (.var 3)) (.num 7153)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2430) (.var 3)) (.neg (.num 10069))) (.var
    3)) (.neg (.num 4822))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 702)
    (.var 3)) (.neg (.num 5292))) (.var 3)) (.neg (.num 4638))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 72) (.var 3)) (.neg (.num 1197))) (.var 3)) (.neg (.num
    1189))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 88)) (.var 3)) (.neg (.num
    88))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1104) (.var 3)) (.num 2440)) (.var
    3)) (.num 4768)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4416) (.var 3)) (.num 7272))
    (.var 3)) (.num 12688)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6987) (.var
    3)) (.num 7034)) (.var 3)) (.num 10736)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 5505) (.var 3)) (.num 1220)) (.var 3)) (.num 1232)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 2217) (.var 3)) (.neg (.num 1967))) (.var 3)) (.neg (.num
    2832))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 411) (.var 3)) (.neg
    (.num 1194))) (.var 3)) (.neg (.num 1481))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 24) (.var 3)) (.neg (.num 217))) (.var 3)) (.neg (.num 241))) (.pow (.var 2)
    6))) (.var 1)) (.mul (.add (.mul (.neg (.num 8)) (.var 3)) (.neg (.num 8))) (.pow (.var 2)
    7)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 642) (.var 3)) (.num 1476)) (.var 3)) (.num 1422))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2889) (.var 3)) (.num 6094)) (.var 3)) (.num
    5191)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5298) (.var 3)) (.num 10094))
    (.var 3)) (.num 7392)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5061)
    (.var 3)) (.num 8470)) (.var 3)) (.num 5059)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2655) (.var 3)) (.num 3674)) (.var 3)) (.num 1535)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 726) (.var 3)) (.num 687)) (.var 3)) (.num 25))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 81) (.var 3)) (.neg (.num
    6))) (.var 3)) (.neg (.num 87))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num
    13)) (.var 3)) (.neg (.num 13))) (.pow (.var 2) 7))) (.var 1)))) (.pow (.var 0) 3)) (.pow
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.add (.var 1)
    (.var 2)))) (.mul (.mul (.mul (.num 48) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 1)) (.mul
    (.num 10) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num
    320)) (.var 1)) (.mul (.add (.mul (.num 20) (.var 3)) (.num 246)) (.var 2))) (.var 1)) (.mul
    (.num 36) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 20) (.var 3)) (.num 276)) (.var 3)) (.num 1537)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 50) (.var 3)) (.num 452)) (.var 3)) (.num 1916)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 40) (.var 3)) (.num 196)) (.var 3)) (.num 681)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20)) (.var 3)) (.num 62))
    (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 238) (.var 3)) (.num 1654)) (.var 3)) (.num 4472)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 714) (.var 3)) (.num 3780)) (.var 3)) (.num 8038)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 774) (.var 3)) (.num 3006)) (.var 3)) (.num 4942))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 358) (.var 3)) (.num 1008))
    (.var 3)) (.num 1224)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60)
    (.var 3)) (.num 128)) (.var 3)) (.num 108)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1182) (.var 3)) (.num
    5642)) (.var 3)) (.num 8919)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4137) (.var 3))
    (.num 16538)) (.var 3)) (.num 21762)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    5599) (.var 3)) (.num 18618)) (.var 3)) (.num 20112)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 3655) (.var 3)) (.num 10174)) (.var 3)) (.num 8900)) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1151) (.var 3)) (.num 2756)) (.var 3))
    (.num 1953)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 140) (.var 3))
    (.num 304)) (.var 3)) (.num 182)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3209) (.var 3)) (.num
    11970)) (.var 3)) (.num 12773)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12836) (.var 3))
    (.num 42694)) (.var 3)) (.num 40306)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    20698) (.var 3)) (.num 61372)) (.var 3)) (.num 50994)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 17168) (.var 3)) (.num 45636)) (.var 3)) (.num 33344)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7701) (.var 3)) (.num 18606))
    (.var 3)) (.num 12043)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1764) (.var 3)) (.num 3962)) (.var 3)) (.num 2318)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 160) (.var 3)) (.num 344)) (.var 3)) (.num 188)) (.pow (.var 2) 6))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 5186) (.var 3)) (.num 16074)) (.var 3)) (.num 12942)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 23337) (.var 3)) (.num 67330)) (.var 3)) (.num 50430))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 43504) (.var 3)) (.num 116904)) (.var
    3)) (.num 81312)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 43358)
    (.var 3)) (.num 108870)) (.var 3)) (.num 70384)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 24810) (.var 3)) (.num 58588)) (.var 3)) (.num 35363)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8083) (.var 3)) (.num 18124)) (.var 3))
    (.num 10300)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1368) (.var
    3)) (.num 2946)) (.var 3)) (.num 1595)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 90) (.var 3)) (.num 188)) (.var 3)) (.num 98)) (.pow (.var 2) 7)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 5003) (.var 3)) (.num 13252)) (.var 3)) (.num 8709)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 25015) (.var 3)) (.num 63594)) (.var 3)) (.num 40271))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 52794) (.var 3)) (.num 128838)) (.var
    3)) (.num 78537)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 61086)
    (.var 3)) (.num 143286)) (.var 3)) (.num 84087)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 42057) (.var 3)) (.num 95062)) (.var 3)) (.num 53782)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17433) (.var 3)) (.num 38110)) (.var 3))
    (.num 20842)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4158) (.var
    3)) (.num 8828)) (.var 3)) (.num 4684)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 498) (.var 3)) (.num 1030)) (.var 3)) (.num 532)) (.pow (.var 2) 7))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 40)) (.var 3)) (.num 20)) (.pow (.var
    2) 8)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2666) (.var 3)) (.num 6120)) (.var
    3)) (.num 3454)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14663) (.var 3)) (.num 33052))
    (.var 3)) (.num 18389)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 34491) (.var
    3)) (.num 76324)) (.var 3)) (.num 41833)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 45237) (.var 3)) (.num 98284)) (.var 3)) (.num 53047)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 36110) (.var 3)) (.num 77066)) (.var 3)) (.num
    40956)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17920) (.var 3))
    (.num 37596)) (.var 3)) (.num 19676)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 5380) (.var 3)) (.num 11104)) (.var 3)) (.num 5724)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 888) (.var 3)) (.num 1804)) (.var 3)) (.num 916)) (.pow
    (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 61) (.var 3)) (.num 122)) (.var
    3)) (.num 61)) (.pow (.var 2) 8))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 608) (.var 3)) (.num 1216)) (.var 3)) (.num 608)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3648) (.var 3)) (.num 7296)) (.var 3)) (.num 3648)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 9444) (.var 3)) (.num 18888)) (.var 3)) (.num 9444)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 13780) (.var 3)) (.num 27560)) (.var 3))
    (.num 13780)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12403) (.var
    3)) (.num 24806)) (.var 3)) (.num 12403)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 7060) (.var 3)) (.num 14120)) (.var 3)) (.num 7060)) (.pow (.var 2) 5)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2486) (.var 3)) (.num 4972)) (.var 3)) (.num
    2486)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 496) (.var 3)) (.num
    992)) (.var 3)) (.num 496)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    43) (.var 3)) (.num 86)) (.var 3)) (.num 43)) (.pow (.var 2) 8))) (.pow (.var 1) 2)))) (.pow
    (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    4))) (.mul (.mul (.mul (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 135) (.var 1)) (.mul (.num 45) (.var
    2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 70) (.var 3)) (.num 1200)) (.var 1))
    (.mul (.add (.mul (.num 70) (.var 3)) (.num 887)) (.var 2))) (.var 1)) (.mul (.num 117) (.pow
    (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 50)
    (.var 3)) (.num 646)) (.var 3)) (.num 4758)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    125) (.var 3)) (.num 962)) (.var 3)) (.num 5501)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 100) (.var 3)) (.num 316)) (.var 3)) (.num 1640)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.num 25) (.pow (.var 3) 2)) (.num 77)) (.pow (.var 2) 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 415) (.var 3)) (.num
    2874)) (.var 3)) (.num 11160)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1245) (.var 3))
    (.num 5922)) (.var 3)) (.num 18075)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1350) (.var 3)) (.num 3920)) (.var 3)) (.num 9075)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 625) (.var 3)) (.num 950)) (.var 3)) (.num 1391)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 105) (.var 3)) (.num 78)) (.var 3)) (.num 11))
    (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 1518) (.var 3)) (.num 7780)) (.var 3)) (.num 17646)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 5313) (.var 3)) (.num 20956)) (.var 3)) (.num 38532))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7171) (.var 3)) (.num 20952)) (.var
    3)) (.num 29785)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4645)
    (.var 3)) (.num 9804)) (.var 3)) (.num 9772)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1439) (.var 3)) (.num 2256)) (.var 3)) (.num 1314)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 170) (.var 3)) (.num 228)) (.var 3)) (.num 71))
    (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 3065) (.var 3)) (.num 13494)) (.var 3)) (.num
    19815)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12260) (.var 3)) (.num 45200)) (.var 3))
    (.num 56800)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 19680) (.var 3)) (.num
    60054)) (.var 3)) (.num 63017)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 16130) (.var 3)) (.num 40650)) (.var 3)) (.num 34542)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 7065) (.var 3)) (.num 14970)) (.var 3)) (.num 10012))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1550) (.var 3)) (.num 2900))
    (.var 3)) (.num 1539)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 130)
    (.var 3)) (.num 232)) (.var 3)) (.num 107)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 3590) (.var 3)) (.num 14302)) (.var 3)) (.num 15144)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 16155) (.var 3)) (.num 57098)) (.var 3)) (.num 54711)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 29956) (.var 3)) (.num 93630)) (.var 3)) (.num 80380)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 29456) (.var 3)) (.num 81548))
    (.var 3)) (.num 62189)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    16422) (.var 3)) (.num 40640)) (.var 3)) (.num 27418)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 5110) (.var 3)) (.num 11520)) (.var 3)) (.num 6915)) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 798) (.var 3)) (.num 1686)) (.var 3))
    (.num 920)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45) (.var 3))
    (.num 92)) (.var 3)) (.num 47)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 2258) (.var 3)) (.num 8198)) (.var 3)) (.num 6860)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 11290) (.var 3)) (.num 37760)) (.var 3)) (.num 29854)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 23719) (.var 3)) (.num 72980)) (.var 3)) (.num 54247)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 27136) (.var 3)) (.num 76880))
    (.var 3)) (.num 53518)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    18287) (.var 3)) (.num 47890)) (.var 3)) (.num 31157)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 7303) (.var 3)) (.num 17804)) (.var 3)) (.num 10831)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1633) (.var 3)) (.num 3742)) (.var
    3)) (.num 2137)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 173) (.var
    3)) (.num 376)) (.var 3)) (.num 203)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 5) (.var 3)) (.num 10)) (.var 3)) (.num 5)) (.pow (.var 2) 8)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 564) (.var 3)) (.num 1916)) (.var 3)) (.num 1352)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3102) (.var 3)) (.num 9930)) (.var 3)) (.num 6828))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7284) (.var 3)) (.num 21910)) (.var
    3)) (.num 14626)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9513)
    (.var 3)) (.num 26836)) (.var 3)) (.num 17323)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 7534) (.var 3)) (.num 19914)) (.var 3)) (.num 12380)) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3689) (.var 3)) (.num 9134)) (.var 3))
    (.num 5445)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1083) (.var 3))
    (.num 2510)) (.var 3)) (.num 1427)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 172) (.var 3)) (.num 372)) (.var 3)) (.num 200)) (.pow (.var 2) 7))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 11) (.var 3)) (.num 22)) (.var 3)) (.num 11)) (.pow (.var
    2) 8))) (.var 1)))) (.pow (.var 0) 3)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var
    0) (.var 1)) (.var 2))) 4))) (.mul (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 225) (.var 1)) (.mul (.num
    75) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 80) (.var 3)) (.num 1740))
    (.var 1)) (.mul (.add (.mul (.num 80) (.var 3)) (.num 1240)) (.var 2))) (.var 1)) (.mul (.num
    150) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 30) (.var 3)) (.num 544)) (.var 3)) (.num 5835)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 75) (.var 3)) (.num 708)) (.var 3)) (.num 6259)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 60) (.var 3)) (.num 114)) (.var 3)) (.num 1501)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 3)) (.neg (.num 50))) (.var 3)) (.neg
    (.num 23))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 237) (.var 3)) (.num 1790)) (.var 3)) (.num 10954)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 711) (.var 3)) (.num 3036)) (.var 3)) (.num 15681)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 771) (.var 3)) (.num 1124)) (.var 3)) (.num
    5596)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 357) (.var 3)) (.neg
    (.num 220))) (.var 3)) (.neg (.num 257))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 60) (.var 3)) (.neg (.num 98))) (.var 3)) (.neg (.num 226))) (.pow (.var 2)
    4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 816) (.var 3)) (.num 3764)) (.var 3)) (.num 13245)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2856) (.var 3)) (.num 8630)) (.var 3)) (.num 24945)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 3852) (.var 3)) (.num 6306)) (.var 3)) (.num 13729)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2490) (.var 3)) (.num 1376)) (.var
    3)) (.num 837)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 768) (.var
    3)) (.neg (.num 86))) (.var 3)) (.neg (.num 991))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 90) (.var 3)) (.neg (.num 22))) (.var 3)) (.neg (.num 149))) (.pow
    (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 1479) (.var 3)) (.num 5550)) (.var 3)) (.num 11155)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 5916) (.var 3)) (.num 17158)) (.var 3)) (.num 28404))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9486) (.var 3)) (.num 20260)) (.var
    3)) (.num 25673)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7752)
    (.var 3)) (.num 11628)) (.var 3)) (.num 9418)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 3375) (.var 3)) (.num 3528)) (.var 3)) (.num 938)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 732) (.var 3)) (.num 602)) (.var 3)) (.neg (.num
    118))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num
    50)) (.var 3)) (.neg (.num 12))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1452)
    (.var 3)) (.num 4792)) (.var 3)) (.num 6042)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    6534) (.var 3)) (.num 18700)) (.var 3)) (.num 20391)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 12084) (.var 3)) (.num 29724)) (.var 3)) (.num 27316)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11802) (.var 3)) (.num 24890)) (.var 3)) (.num
    18666)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6492) (.var 3))
    (.num 11866)) (.var 3)) (.num 7019)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1971) (.var 3)) (.num 3224)) (.var 3)) (.num 1486)) (.pow (.var 2) 5))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 294) (.var 3)) (.num 456)) (.var 3)) (.num 175)) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15) (.var 3)) (.num 24)) (.var 3))
    (.num 9)) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 606) (.var 3)) (.num 1648))
    (.var 3)) (.num 1502)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3030) (.var 3)) (.num
    7676)) (.var 3)) (.num 6338)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6345)
    (.var 3)) (.num 14982)) (.var 3)) (.num 11130)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 7200) (.var 3)) (.num 15894)) (.var 3)) (.num 10581)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4773) (.var 3)) (.num 9914)) (.var 3))
    (.num 5918)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1845) (.var 3))
    (.num 3644)) (.var 3)) (.num 1964)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 384) (.var 3)) (.num 732)) (.var 3)) (.num 362)) (.pow (.var 2) 6))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 33) (.var 3)) (.num 62)) (.var 3)) (.num 29)) (.pow (.var
    2) 7))) (.var 1)))) (.pow (.var 0) 4)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var
    0) (.var 1)) (.var 2))) 4))) (.mul (.mul (.mul (.num 2) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 3) (.pow
    (.var 1) 2)) (.var 0)) (.mul (.add (.mul (.num 30) (.var 1)) (.mul (.num 14) (.var 2))) (.pow
    (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 8)) (.var 3))
    (.num 108)) (.var 1)) (.mul (.add (.mul (.neg (.num 11)) (.var 3)) (.num 97)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.neg (.num 3)) (.var 3)) (.num 21)) (.pow (.var 2) 2))) (.pow (.var 1)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num
    1)) (.var 3)) (.neg (.num 82))) (.var 3)) (.num 146)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.neg (.num 2)) (.var 3)) (.neg (.num 154))) (.var 3)) (.num 161)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.neg (.num 1)) (.var 3)) (.neg (.num 86))) (.var 3)) (.num 49)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 14)) (.var 3)) (.num 4)) (.pow (.var 2)
    3))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.neg (.num 10)) (.var 3)) (.neg (.num 314))) (.var 3)) (.neg (.num 32)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 25)) (.var 3)) (.neg (.num 756))) (.var
    3)) (.neg (.num 240))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 20))
    (.var 3)) (.neg (.num 636))) (.var 3)) (.neg (.num 321))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.neg (.num 5)) (.var 3)) (.neg (.num 218))) (.var 3)) (.neg (.num
    145))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 24)) (.var 3)) (.neg (.num
    19))) (.pow (.var 2) 4))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 29)) (.var 3)) (.neg (.num
    552))) (.var 3)) (.neg (.num 306))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 87))
    (.var 3)) (.neg (.num 1640))) (.var 3)) (.neg (.num 1072))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.neg (.num 96)) (.var 3)) (.neg (.num 1858))) (.var 3)) (.neg (.num 1394)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 47)) (.var 3)) (.neg
    (.num 990))) (.var 3)) (.neg (.num 829))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.neg (.num 9)) (.var 3)) (.neg (.num 238))) (.var 3)) (.neg (.num 217))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 18)) (.var 3)) (.neg (.num 18))) (.pow
    (.var 2) 5))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 16)) (.var 3)) (.neg (.num
    454))) (.var 3)) (.neg (.num 324))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 56))
    (.var 3)) (.neg (.num 1626))) (.var 3)) (.neg (.num 1269))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.neg (.num 86)) (.var 3)) (.neg (.num 2346))) (.var 3)) (.neg (.num 1978)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 75)) (.var 3)) (.neg
    (.num 1726))) (.var 3)) (.neg (.num 1541))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.neg (.num 36)) (.var 3)) (.neg (.num 662))) (.var 3)) (.neg (.num 611))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 7)) (.var 3)) (.neg (.num
    115))) (.var 3)) (.neg (.num 108))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 5)) (.var 3)) (.neg (.num 5))) (.pow (.var 2) 6))) (.pow (.var 1) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 37) (.var 3)) (.neg (.num 94))) (.var 3)) (.neg (.num 97))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 148) (.var 3)) (.neg (.num 436))) (.var 3)) (.neg (.num 478))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 222) (.var 3)) (.neg (.num 867))) (.var 3))
    (.neg (.num 969))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 148)
    (.var 3)) (.neg (.num 931))) (.var 3)) (.neg (.num 1021))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 35) (.var 3)) (.neg (.num 555))) (.var 3)) (.neg (.num 580)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg
    (.num 169))) (.var 3)) (.neg (.num 165))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.neg (.num 2)) (.var 3)) (.neg (.num 20))) (.var 3)) (.neg (.num 18))) (.pow
    (.var 2) 6))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num 108)) (.var
    3)) (.num 48)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 270) (.var 3)) (.num 456)) (.var
    3)) (.num 186)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 486) (.var 3)) (.num
    746)) (.var 3)) (.num 260)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    441) (.var 3)) (.num 576)) (.var 3)) (.num 135)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 207) (.var 3)) (.num 192)) (.var 3)) (.neg (.num 15))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45) (.var 3)) (.num 8)) (.var 3)) (.neg
    (.num 37))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3))
    (.neg (.num 6))) (.var 3)) (.neg (.num 9))) (.pow (.var 2) 6))) (.pow (.var 1) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 30) (.var 3)) (.num 60)) (.var 3)) (.num 30)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 150) (.var 3)) (.num 300)) (.var 3)) (.num 150)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 307) (.var 3)) (.num 614)) (.var 3)) (.num 307)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 328) (.var 3)) (.num 656)) (.var 3)) (.num
    328)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 192) (.var 3)) (.num
    384)) (.var 3)) (.num 192)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    58) (.var 3)) (.num 116)) (.var 3)) (.num 58)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 7) (.var 3)) (.num 14)) (.var 3)) (.num 7)) (.pow (.var 2) 6))) (.pow (.var
    1) 5)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3))
    (.pow (.add (.var 1) (.var 2)) 3))) (.mul (.mul (.mul (.mul (.num 2) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.mul (.num 6) (.var 1)) (.var 0)) (.mul (.add (.mul (.num 108) (.var 1)) (.mul (.num
    48) (.var 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 689) (.var 1)) (.mul
    (.add (.mul (.neg (.num 6)) (.var 3)) (.num 608)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 6)) (.var 3)) (.num 126)) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.neg (.num 48))) (.var 3))
    (.num 2202)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 3)) (.neg (.num 162)))
    (.var 3)) (.num 2830)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 3))
    (.neg (.num 162))) (.var 3)) (.num 1096)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 48)) (.var 3)) (.num 120)) (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 66) (.var 3)) (.neg
    (.num 312))) (.var 3)) (.num 4014)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 165) (.var
    3)) (.neg (.num 1121))) (.var 3)) (.num 6451)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 132) (.var 3)) (.neg (.num 1426))) (.var 3)) (.num 3189)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 33) (.var 3)) (.neg (.num 749))) (.var 3)) (.num
    410)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 132)) (.var 3)) (.neg (.num
    30))) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 341) (.var 3)) (.neg (.num 452))) (.var 3))
    (.num 4771)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1023) (.var 3)) (.neg (.num 2454)))
    (.var 3)) (.num 8703)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1095) (.var
    3)) (.neg (.num 4608))) (.var 3)) (.num 4004)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 485) (.var 3)) (.neg (.num 3818))) (.var 3)) (.neg (.num 864))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72) (.var 3)) (.neg (.num 1380))) (.var
    3)) (.neg (.num 936))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 168)) (.var
    3)) (.neg (.num 144))) (.pow (.var 2) 5))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1098) (.var 3))
    (.num 1256)) (.var 3)) (.num 4808)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3843) (.var
    3)) (.num 2126)) (.var 3)) (.num 10496)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 5097) (.var 3)) (.neg (.num 1624))) (.var 3)) (.num 5307)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 3135) (.var 3)) (.neg (.num 5560))) (.var 3)) (.neg (.num
    3199))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 861) (.var 3)) (.neg
    (.num 4144))) (.var 3)) (.neg (.num 3865))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 78) (.var 3)) (.neg (.num 1180))) (.var 3)) (.neg (.num 1176))) (.pow (.var
    2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 102)) (.var 3)) (.neg (.num 102))) (.pow (.var
    2) 6))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2270) (.var 3)) (.num 4952)) (.var 3))
    (.num 5053)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9080) (.var 3)) (.num 17018)) (.var
    3)) (.num 15245)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14345) (.var 3))
    (.num 21146)) (.var 3)) (.num 15452)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 11255) (.var 3)) (.num 10156)) (.var 3)) (.num 3814)) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 4487) (.var 3)) (.neg (.num 222))) (.var 3)) (.neg
    (.num 3374))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 809) (.var 3))
    (.neg (.num 1724))) (.var 3)) (.neg (.num 2396))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 42) (.var 3)) (.neg (.num 450))) (.var 3)) (.neg (.num 492))) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.neg (.num 24)) (.var 3)) (.neg (.num 24))) (.pow
    (.var 2) 7))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2790) (.var 3)) (.num 6648)) (.var
    3)) (.num 4432)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12555) (.var 3)) (.num 28051))
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
    (.var 2) 7))) (.pow (.var 1) 4)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add
    (.var 0) (.var 1)) (.var 2))) 3)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.mul
    (.num 2) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num 24) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 750)) (.var 1)) (.mul
    (.add (.mul (.num 24) (.var 3)) (.num 624)) (.var 2))) (.var 1)) (.mul (.num 120) (.pow (.var
    2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var
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
    (.var 2) 8))) (.pow (.var 1) 3)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1))
    (.add (.add (.var 0) (.var 1)) (.var 2))) 3)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul
    (.num 2) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num 20) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 740)) (.var 1)) (.mul
    (.add (.mul (.num 40) (.var 3)) (.num 564)) (.var 2))) (.var 1)) (.mul (.num 84) (.pow (.var
    2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var
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
    3)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 3)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.add
    (.add (.add (.add (.mul (.mul (.num 140) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 2) (.var 0)) (.mul (.num 8) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 12)) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 12)) (.var 3)) (.num 8)) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 12)) (.var 3)) (.num 2))
    (.pow (.var 2) 4))) (.var 0)) (.mul (.mul (.add (.mul (.num 4) (.var 3)) (.num 4)) (.var 3))
    (.pow (.var 2) 5))) (.pow (.var 0) 3))) (.pow (.var 0) 4)) (.mul (.mul (.num 84) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13) (.var 0)) (.mul (.num 35)
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.num 8)) (.var 3))
    (.num 30)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27) (.var 3))
    (.num 28)) (.var 3)) (.num 10)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 27) (.var 3)) (.num 32)) (.var 3)) (.num 5)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 9) (.var 3)) (.num 12)) (.var 3)) (.num 3)) (.pow (.var 2) 5))) (.pow
    (.var 0) 2))) (.pow (.var 0) 5))) (.mul (.mul (.num 28) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 35) (.var 0)) (.mul (.num 54) (.var 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 15) (.var 3)) (.neg (.num 6))) (.var 3)) (.num 6)) (.pow (.var
    2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 36) (.var 3)) (.num 22)) (.var 3)) (.neg
    (.num 6))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27) (.var 3))
    (.num 38)) (.var 3)) (.num 11)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 6) (.var 3)) (.num 10)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.var 0))) (.pow (.var
    0) 6))) (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    50) (.var 0)) (.mul (.num 26) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 11)
    (.var 3)) (.neg (.num 26))) (.var 3)) (.neg (.num 39))) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 23) (.var 3)) (.num 14)) (.var 3)) (.neg (.num 3))) (.pow (.var
    2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 13) (.var 3)) (.num 26)) (.var 3)) (.num
    13)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.num 2))
    (.var 3)) (.num 1)) (.pow (.var 2) 5)))) (.pow (.var 0) 7))) (.mul (.mul (.num 56) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.mul (.num 4) (.var
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 16))
    (.var 3)) (.num 8)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10)
    (.var 3)) (.num 20)) (.var 3)) (.num 10)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 4) (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.pow (.var
    0) 2))) (.pow (.var 0) 5))) (.mul (.mul (.num 28) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 11) (.var 0)) (.mul (.num 9) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 7) (.var 3)) (.num 4)) (.var 3)) (.neg (.num 2))) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 19) (.var 3)) (.num 34)) (.var 3)) (.num 18))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 17) (.var 3)) (.num 40))
    (.var 3)) (.num 23)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5)
    (.var 3)) (.num 10)) (.var 3)) (.num 5)) (.pow (.var 2) 5))) (.var 0))) (.pow (.var 0) 6)))
    (.mul (.mul (.num 8) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 24)
    (.var 0)) (.mul (.neg (.num 3)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8)
    (.var 3)) (.neg (.num 10))) (.var 3)) (.neg (.num 22))) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 17) (.var 3)) (.num 32)) (.var 3)) (.num 22)) (.pow (.var 2)
    3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 28)) (.var 3)) (.num
    18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.num 2))
    (.var 3)) (.num 1)) (.pow (.var 2) 5)))) (.pow (.var 0) 7))) (.mul (.mul (.num 1) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 26) (.var 0)) (.mul (.neg (.num 23)) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.neg (.num 16))) (.var 3)) (.neg
    (.num 19))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 3))
    (.num 20)) (.var 3)) (.num 19)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 3) (.var 3)) (.num 8)) (.var 3)) (.num 5)) (.pow (.var 2) 4)))) (.pow (.var 0) 8))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.add (.add (.mul (.mul
    (.num 30) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 6) (.var 0)) (.mul (.add (.mul (.num 4) (.var 3)) (.num
    88)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 48)) (.var
    3)) (.num 427)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 98) (.var
    3)) (.num 280)) (.var 3)) (.num 1051)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 425) (.var 3)) (.num 860)) (.var 3)) (.num 1511)) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 919) (.var 3)) (.num 1500)) (.var 3)) (.num 1331)) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1106) (.var 3)) (.num 1544)) (.var
    3)) (.num 713)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 752) (.var
    3)) (.num 928)) (.var 3)) (.num 217)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 269) (.var 3)) (.num 300)) (.var 3)) (.num 31)) (.pow (.var 2) 8))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 39) (.var 3)) (.num 40)) (.var 3)) (.num 1)) (.pow (.var
    2) 9))) (.pow (.var 0) 5))) (.pow (.var 0) 2)) (.mul (.mul (.num 30) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 51) (.var 0)) (.mul (.add (.mul (.num 30) (.var 3)) (.num 676)) (.var 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 52) (.var 3)) (.num 278)) (.var 3)) (.num 2851)) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 579) (.var 3)) (.num 1346)) (.var
    3)) (.num 5987)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2300) (.var
    3)) (.num 3828)) (.var 3)) (.num 7293)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 4599) (.var 3)) (.num 6544)) (.var 3)) (.num 5551)) (.pow (.var 2) 5))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 5156) (.var 3)) (.num 6766)) (.var 3)) (.num 2801)) (.pow
    (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3281) (.var 3)) (.num 4122)) (.var
    3)) (.num 1001)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1100) (.var
    3)) (.num 1352)) (.var 3)) (.num 252)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 149) (.var 3)) (.num 182)) (.var 3)) (.num 33)) (.pow (.var 2) 9))) (.pow (.var 0)
    4))) (.pow (.var 0) 3))) (.mul (.mul (.num 15) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 189) (.var 0)) (.mul
    (.add (.mul (.num 96) (.var 3)) (.num 2265)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 140) (.var 3)) (.num 670)) (.var 3)) (.num 8185)) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1441) (.var 3)) (.num 2482)) (.var 3)) (.num 14174)) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5281) (.var 3)) (.num 6532)) (.var
    3)) (.num 13832)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9720)
    (.var 3)) (.num 11478)) (.var 3)) (.num 8687)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 9996) (.var 3)) (.num 12330)) (.var 3)) (.num 4397)) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5803) (.var 3)) (.num 7594)) (.var 3)) (.num
    2048)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1759) (.var 3)) (.num
    2420)) (.var 3)) (.num 661)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    212) (.var 3)) (.num 302)) (.var 3)) (.num 90)) (.pow (.var 2) 9))) (.pow (.var 0) 3))) (.pow
    (.var 0) 4))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 399) (.var 0)) (.mul (.add (.mul
    (.num 170) (.var 3)) (.num 4322)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    200) (.var 3)) (.num 860)) (.var 3)) (.num 13126)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1934) (.var 3)) (.num 1984)) (.var 3)) (.num 17719)) (.pow (.var 2)
    3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 6614) (.var 3)) (.num 4964)) (.var 3))
    (.num 12275)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 11214) (.var
    3)) (.num 10500)) (.var 3)) (.num 5874)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 10438) (.var 3)) (.num 12520)) (.var 3)) (.num 3948)) (.pow (.var 2) 6))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 5356) (.var 3)) (.num 7668)) (.var 3)) (.num 2559))
    (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1388) (.var 3)) (.num 2200))
    (.var 3)) (.num 812)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 136)
    (.var 3)) (.num 222)) (.var 3)) (.num 86)) (.pow (.var 2) 9))) (.pow (.var 0) 2))) (.pow (.var
    0) 5))) (.mul (.mul (.num 20) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.mul (.add (.mul
    (.num 8) (.var 3)) (.num 162)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 16)
    (.var 3)) (.num 92)) (.var 3)) (.num 700)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 194) (.var 3)) (.num 550)) (.var 3)) (.num 1586)) (.pow (.var 2) 3))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 834) (.var 3)) (.num 1794)) (.var 3)) (.num 2300))
    (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1786) (.var 3)) (.num 3346))
    (.var 3)) (.num 2382)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2124)
    (.var 3)) (.num 3672)) (.var 3)) (.num 1812)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1422) (.var 3)) (.num 2338)) (.var 3)) (.num 950)) (.pow (.var 2) 7))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 498) (.var 3)) (.num 794)) (.var 3)) (.num 296)) (.pow
    (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 70) (.var 3)) (.num 110)) (.var
    3)) (.num 40)) (.pow (.var 2) 9))) (.pow (.var 0) 4))) (.pow (.var 0) 3))) (.mul (.mul (.num
    15) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 90) (.var 0)) (.mul (.add (.mul (.num 52) (.var 3)) (.num 1085))
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 88) (.var 3)) (.num 438)) (.var 3))
    (.num 3943)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 953) (.var 3))
    (.num 2128)) (.var 3)) (.num 7258)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 3692) (.var 3)) (.num 6591)) (.var 3)) (.num 8699)) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 7190) (.var 3)) (.num 12239)) (.var 3)) (.num 8276)) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 7824) (.var 3)) (.num 13304))
    (.var 3)) (.num 6469)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4805)
    (.var 3)) (.num 8210)) (.var 3)) (.num 3534)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1540) (.var 3)) (.num 2627)) (.var 3)) (.num 1087)) (.pow (.var 2) 8)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 196) (.var 3)) (.num 331)) (.var 3)) (.num 135))
    (.pow (.var 2) 9))) (.pow (.var 0) 3))) (.pow (.var 0) 4))) (.mul (.mul (.num 6) (.mul (.add
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
    (.pow (.var 2) 9))) (.pow (.var 0) 2))) (.pow (.var 0) 5))) (.mul (.mul (.num 1) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 510) (.var 0)) (.mul (.add (.mul (.num 200) (.var 3)) (.num 4940)) (.var
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 208) (.var 3)) (.num 788)) (.var 3)) (.num
    11864)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1937) (.var 3))
    (.num 1330)) (.var 3)) (.num 11046)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 6360) (.var 3)) (.num 5143)) (.var 3)) (.num 5683)) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 10194) (.var 3)) (.num 13416)) (.var 3)) (.num 6760))
    (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8754) (.var 3)) (.num
    15492)) (.var 3)) (.num 8240)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 3993) (.var 3)) (.num 8172)) (.var 3)) (.num 4444)) (.pow (.var 2) 7))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 866) (.var 3)) (.num 1817)) (.var 3)) (.num 951)) (.pow (.var 2)
    8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 64) (.var 3)) (.num 122)) (.var 3)) (.num
    58)) (.pow (.var 2) 9))) (.var 0))) (.pow (.var 0) 6))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow0413.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow0413.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow0413.leading0 e g v + f * FullLow0413.leading1 e g v +
        f^2 * FullLow0413.remainder e f g v := by
  have hden : denominatorOne FullLow0413.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow0413.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow0413.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 4398046511104 20 12 2) lhs =
      value (Encoding4.vars 4398046511104 20 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 4398046511104 := by
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
    FullLow0413.source e f g v =
      FullLow0413.leading0 e g v + f * FullLow0413.leading1 e g v +
        f^2 * FullLow0413.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 4398046511104 20 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow041Encoded3

namespace SPR.N6.Tail.CoreEndpoint.FullLow041
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition3 (e f g v : ℝ) :
    FullLow0413.source e f g v =
      FullLow0413.leading0 e g v + f * FullLow0413.leading1 e g v +
        f^2 * FullLow0413.remainder e f g v :=
  FullLow041Encoded3.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow041
