import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow032Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^1 layer of FullLow032.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow032Encoded1
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.add (.add (.add (.add (.add (.add (.mul (.mul (.mul (.num 1) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 11) (.pow (.var
    1) 2)) (.var 0)) (.mul (.add (.mul (.num 69) (.var 1)) (.mul (.num 31) (.var 2))) (.pow (.var
    1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 22)) (.var 3)) (.num
    76)) (.var 1)) (.mul (.add (.mul (.neg (.num 30)) (.var 3)) (.num 56)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 8)) (.var 3)) (.num 6)) (.pow (.var 2) 2))) (.pow (.var 1) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 2))
    (.var 3)) (.neg (.num 148))) (.var 3)) (.neg (.num 76))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.neg (.num 4)) (.var 3)) (.neg (.num 274))) (.var 3)) (.neg (.num 184))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 2)) (.var 3)) (.neg (.num 149))) (.var 3))
    (.neg (.num 126))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 23)) (.var 3))
    (.neg (.num 23))) (.pow (.var 2) 3))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 16)) (.var 3)) (.neg (.num
    208))) (.var 3)) (.neg (.num 160))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 40))
    (.var 3)) (.neg (.num 511))) (.var 3)) (.neg (.num 421))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.neg (.num 32)) (.var 3)) (.neg (.num 424))) (.var 3)) (.neg (.num 374)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 8)) (.var 3)) (.neg
    (.num 130))) (.var 3)) (.neg (.num 122))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 9)) (.var 3)) (.neg (.num 9))) (.pow (.var 2) 4))) (.pow (.var 1) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 4))
    (.var 3)) (.neg (.num 84))) (.var 3)) (.neg (.num 72))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.neg (.num 12)) (.var 3)) (.neg (.num 260))) (.var 3)) (.neg (.num 232))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 14)) (.var 3)) (.neg (.num 293))) (.var
    3)) (.neg (.num 271))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num
    8)) (.var 3)) (.neg (.num 142))) (.var 3)) (.neg (.num 134))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.neg (.num 2)) (.var 3)) (.neg (.num 25))) (.var 3)) (.neg
    (.num 23))) (.pow (.var 2) 4))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.neg (.num 2))) (.var 3))
    (.neg (.num 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14) (.var 3)) (.neg (.num 11)))
    (.var 3)) (.neg (.num 25))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18) (.var
    3)) (.neg (.num 21))) (.var 3)) (.neg (.num 39))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 10) (.var 3)) (.neg (.num 17))) (.var 3)) (.neg (.num 27))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.neg (.num 5)))
    (.var 3)) (.neg (.num 7))) (.pow (.var 2) 4))) (.pow (.var 1) 4)))) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5)) (.pow (.add (.var 1) (.var 2)) 3))
    (.mul (.mul (.mul (.num 6) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.mul (.num 2) (.var 1)) (.var 0)) (.mul (.add (.mul (.num 28)
    (.var 1)) (.mul (.num 12) (.var 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    113) (.var 1)) (.mul (.add (.mul (.neg (.num 2)) (.var 3)) (.num 94)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.neg (.num 2)) (.var 3)) (.num 16)) (.pow (.var 2) 2))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.neg
    (.num 16))) (.var 3)) (.num 184)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 3))
    (.neg (.num 46))) (.var 3)) (.num 202)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2) (.var 3)) (.neg (.num 42))) (.var 3)) (.num 44)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 12)) (.var 3)) (.neg (.num 4))) (.pow (.var 2) 3))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 14)
    (.var 3)) (.neg (.num 64))) (.var 3)) (.num 117)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 35) (.var 3)) (.neg (.num 203))) (.var 3)) (.num 77)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 28) (.var 3)) (.neg (.num 234))) (.var 3)) (.neg (.num 113))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7) (.var 3)) (.neg (.num 113)))
    (.var 3)) (.neg (.num 100))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 18))
    (.var 3)) (.neg (.num 18))) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 43) (.var 3)) (.neg
    (.num 36))) (.var 3)) (.num 29)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 129) (.var 3))
    (.neg (.num 190))) (.var 3)) (.neg (.num 104))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 137) (.var 3)) (.neg (.num 346))) (.var 3)) (.neg (.num 352))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 59) (.var 3)) (.neg (.num 272))) (.var 3)) (.neg
    (.num 307))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3))
    (.neg (.num 88))) (.var 3)) (.neg (.num 96))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 8)) (.var 3)) (.neg (.num 8))) (.pow (.var 2) 5))) (.var 1))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 82)
    (.var 3)) (.num 116)) (.var 3)) (.num 62)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 287)
    (.var 3)) (.num 325)) (.var 3)) (.num 106)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 375) (.var 3)) (.num 285)) (.var 3)) (.neg (.num 38))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 220) (.var 3)) (.num 44)) (.var 3)) (.neg (.num 164)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 53) (.var 3)) (.neg (.num
    47))) (.var 3)) (.neg (.num 100))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3) (.var 3)) (.neg (.num 15))) (.var 3)) (.neg (.num 18))) (.pow (.var 2) 5))) (.pow
    (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 81) (.var 3)) (.num 164)) (.var 3)) (.num 83)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 324) (.var 3)) (.num 626)) (.var 3)) (.num 302)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 504) (.var 3)) (.num 917)) (.var 3)) (.num 413))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 378) (.var 3)) (.num 635))
    (.var 3)) (.num 257)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 135)
    (.var 3)) (.num 203)) (.var 3)) (.num 68)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 18) (.var 3)) (.num 23)) (.var 3)) (.num 5)) (.pow (.var 2) 5))) (.pow (.var
    1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 30) (.var 3)) (.num 60)) (.var 3)) (.num 30)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 135) (.var 3)) (.num 270)) (.var 3)) (.num 135)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 240) (.var 3)) (.num 480)) (.var 3)) (.num 240)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 210) (.var 3)) (.num 420)) (.var
    3)) (.num 210)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 90) (.var
    3)) (.num 180)) (.var 3)) (.num 90)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 15) (.var 3)) (.num 30)) (.var 3)) (.num 15)) (.pow (.var 2) 5))) (.pow (.var 1)
    4)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5)) (.pow
    (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.mul (.num 3) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 9) (.var 1)) (.var 0)) (.mul
    (.add (.mul (.num 103) (.var 1)) (.mul (.num 45) (.var 2))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.neg (.num 10)) (.var 3)) (.num 368)) (.var 1)) (.mul (.add
    (.mul (.neg (.num 17)) (.var 3)) (.num 307)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 7)) (.var 3)) (.num 54)) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.neg (.num 106)) (.var 3)) (.num 459)) (.var 1)) (.mul
    (.add (.mul (.neg (.num 228)) (.var 3)) (.num 472)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 155)) (.var 3)) (.num 85)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 33)) (.var 3)) (.neg (.num 12))) (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.neg
    (.num 358))) (.var 3)) (.num 118)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 3))
    (.neg (.num 941))) (.var 3)) (.neg (.num 186))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 4) (.var 3)) (.neg (.num 880))) (.var 3)) (.neg (.num 535))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.neg (.num 340))) (.var 3)) (.neg
    (.num 296))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 43)) (.var 3)) (.neg
    (.num 43))) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.neg (.num 328))) (.var
    3)) (.neg (.num 91))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9) (.var 3)) (.neg (.num
    1108))) (.var 3)) (.neg (.num 643))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    8) (.var 3)) (.neg (.num 1412))) (.var 3)) (.neg (.num 1135))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1) (.var 3)) (.neg (.num 818))) (.var 3)) (.neg (.num
    768))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 1)) (.var 3))
    (.neg (.num 199))) (.var 3)) (.neg (.num 198))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 13)) (.var 3)) (.neg (.num 13))) (.pow (.var 2) 5))) (.var 1))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 42) (.var 3)) (.neg (.num 8))) (.var 3)) (.num 6)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 147) (.var 3)) (.neg (.num 137))) (.var 3)) (.neg (.num 148))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 189) (.var 3)) (.neg (.num 373))) (.var 3)) (.neg
    (.num 458))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 105) (.var 3))
    (.neg (.num 396))) (.var 3)) (.neg (.num 477))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 21) (.var 3)) (.neg (.num 181))) (.var 3)) (.neg (.num 202))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 29)) (.var 3)) (.neg (.num 29))) (.pow
    (.var 2) 5))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 28) (.var 3)) (.num 58)) (.var 3)) (.num 30))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 112) (.var 3)) (.num 202)) (.var 3)) (.num 90))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 174) (.var 3)) (.num 257)) (.var 3))
    (.num 83)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 130) (.var 3))
    (.num 139)) (.var 3)) (.num 9)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 46) (.var 3)) (.num 25)) (.var 3)) (.neg (.num 21))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 6) (.var 3)) (.neg (.num 1))) (.var 3)) (.neg (.num 7))) (.pow
    (.var 2) 5))) (.pow (.var 1) 3)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add
    (.var 0) (.var 1)) (.var 2))) 5)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.mul
    (.num 24) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 10) (.var 1)) (.mul (.num 4) (.var 2))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 87)) (.var 1)) (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 70)) (.var 2))) (.var 1)) (.mul (.num 12) (.pow (.var 2) 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 34)) (.var 3))
    (.num 304)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 44)) (.var 3))
    (.num 361)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 6))
    (.var 3)) (.num 118)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 4)) (.var
    3)) (.num 8)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 138)) (.var 3)) (.num 575)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num 234)) (.var 3)) (.num 890)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 48) (.var 3)) (.num 82)) (.var 3)) (.num 398)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 3)) (.neg (.num 26)))
    (.var 3)) (.num 32)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var
    3)) (.neg (.num 8))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 111) (.var 3)) (.num 378)) (.var 3)) (.num
    715)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 333) (.var 3)) (.num 870)) (.var 3)) (.num
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
    (.pow (.var 1) 3)))) (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var
    1)) (.var 2))) 5)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.mul (.num 6) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 45)
    (.var 1)) (.mul (.num 18) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 14)
    (.var 3)) (.num 325)) (.var 1)) (.mul (.add (.mul (.num 14) (.var 3)) (.num 265)) (.var 2)))
    (.var 1)) (.mul (.num 46) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 5) (.var 3)) (.num 64)) (.var 3)) (.num 935)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 72)) (.var 3)) (.num 1100)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 3)) (.neg (.num 6))) (.var 3)) (.num 355))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 14)) (.var 3)) (.num 24)) (.pow
    (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 32) (.var 3)) (.num 114)) (.var 3)) (.num 1344)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 80) (.var 3)) (.num 75)) (.var 3)) (.num 1929)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 64) (.var 3)) (.neg (.num 166))) (.var 3)) (.num 727)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.mul (.add (.mul (.num 16) (.var 3)) (.neg (.num 161))) (.var 3)) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 34)) (.var 3)) (.neg (.num 24))) (.pow
    (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 99) (.var 3)) (.num 170)) (.var 3)) (.num 1155)) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 297) (.var 3)) (.num 76)) (.var 3)) (.num 1831)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 318) (.var 3)) (.neg (.num 489))) (.var 3)) (.num 479))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 141) (.var 3)) (.neg (.num
    598))) (.var 3)) (.neg (.num 427))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 21) (.var 3)) (.neg (.num 229))) (.var 3)) (.neg (.num 225))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 26)) (.var 3)) (.neg (.num 26))) (.pow (.var 2) 5))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 170) (.var 3)) (.num 428)) (.var 3)) (.num 798)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 595) (.var 3)) (.num 967)) (.var 3)) (.num 1622)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 789) (.var 3)) (.num 489)) (.var 3)) (.num 690)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 485) (.var 3)) (.neg (.num 302))) (.var 3))
    (.neg (.num 473))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 133)
    (.var 3)) (.neg (.num 335))) (.var 3)) (.neg (.num 434))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 12) (.var 3)) (.neg (.num 89))) (.var 3)) (.neg (.num 101)))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 6)))
    (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 178) (.var 3)) (.num 518)) (.var 3)) (.num
    460)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 712) (.var 3)) (.num 1754)) (.var 3))
    (.num 1378)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1118) (.var 3)) (.num
    2219)) (.var 3)) (.num 1431)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 862) (.var 3)) (.num 1249)) (.var 3)) (.num 519)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 330) (.var 3)) (.num 258)) (.var 3)) (.neg (.num 54))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 54) (.var 3)) (.neg (.num 17)))
    (.var 3)) (.neg (.num 71))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2) (.var 3)) (.neg (.num 9))) (.var 3)) (.neg (.num 11))) (.pow (.var 2) 6))) (.var 1))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 68) (.var 3)) (.num 196)) (.var 3)) (.num 128)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 306) (.var 3)) (.num 810)) (.var 3)) (.num 504)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 556) (.var 3)) (.num 1328)) (.var 3)) (.num 772)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 518) (.var 3)) (.num 1090)) (.var 3)) (.num
    572)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 258) (.var 3)) (.num
    462)) (.var 3)) (.num 204)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    64) (.var 3)) (.num 92)) (.var 3)) (.num 28)) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.add
    (.mul (.num 6) (.var 3)) (.num 6)) (.var 3)) (.pow (.var 2) 6))) (.pow (.var 1) 2)))) (.pow
    (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    5)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.num 60) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 1))
    (.mul (.num 2) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 4) (.var 3))
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
    7))) (.pow (.var 1) 2)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add
    (.var 0) (.var 1)) (.var 2))) 5))) (.mul (.mul (.mul (.num 10) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 27) (.var 1)) (.mul
    (.num 9) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 14) (.var 3)) (.num
    195)) (.var 1)) (.mul (.add (.mul (.num 14) (.var 3)) (.num 145)) (.var 2))) (.var 1)) (.mul
    (.num 18) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 10) (.var 3)) (.num 104)) (.var 3)) (.num 605)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 25) (.var 3)) (.num 156)) (.var 3)) (.num 699)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 20) (.var 3)) (.num 52)) (.var 3)) (.num 193)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.num 5) (.pow (.var 3) 2)) (.num 3)) (.pow (.var 2) 3)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 64) (.var
    3)) (.num 360)) (.var 3)) (.num 1077)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 192)
    (.var 3)) (.num 748)) (.var 3)) (.num 1740)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 208) (.var 3)) (.num 498)) (.var 3)) (.num 813)) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 96) (.var 3)) (.num 120)) (.var 3)) (.num 82)) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 10)) (.var 3)) (.neg
    (.num 8))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 174) (.var 3)) (.num 740)) (.var 3)) (.num 1278))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 609) (.var 3)) (.num 2018)) (.var 3)) (.num
    2825)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 819) (.var 3)) (.num 2032))
    (.var 3)) (.num 2128)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 525)
    (.var 3)) (.num 948)) (.var 3)) (.num 627)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 159) (.var 3)) (.num 216)) (.var 3)) (.num 63)) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 18) (.var 3)) (.num 22)) (.var 3)) (.num 3)) (.pow
    (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 248) (.var 3)) (.num 938)) (.var 3)) (.num 1054)) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 992) (.var 3)) (.num 3194)) (.var 3)) (.num 3122))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1582) (.var 3)) (.num 4280)) (.var
    3)) (.num 3519)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1274) (.var
    3)) (.num 2884)) (.var 3)) (.num 1916)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 538) (.var 3)) (.num 1038)) (.var 3)) (.num 542)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 110) (.var 3)) (.num 192)) (.var 3)) (.num 83)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 14)) (.var 3))
    (.num 6)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 188) (.var 3)) (.num 644)) (.var
    3)) (.num 536)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 846) (.var 3)) (.num 2618))
    (.var 3)) (.num 2020)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1554) (.var
    3)) (.num 4324)) (.var 3)) (.num 3054)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
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
    2)) (.pow (.var 2) 7))) (.var 1)))) (.pow (.var 0) 3)) (.pow (.mul (.add (.var 0) (.var 1))
    (.add (.add (.var 0) (.var 1)) (.var 2))) 5))) (.mul (.mul (.mul (.num 1) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 6)
    (.pow (.var 1) 2)) (.var 0)) (.mul (.add (.mul (.num 48) (.var 1)) (.mul (.num 22) (.var 2)))
    (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 16)) (.var
    3)) (.num 121)) (.var 1)) (.mul (.add (.mul (.neg (.num 22)) (.var 3)) (.num 103)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.num 20)) (.pow (.var 2) 2))) (.pow
    (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.neg (.num 2)) (.var 3)) (.neg (.num 132))) (.var 3)) (.num 55)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.neg (.num 4)) (.var 3)) (.neg (.num 248))) (.var 3)) (.num 3)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.neg (.num 2)) (.var 3)) (.neg (.num 138))) (.var 3)) (.neg
    (.num 42))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 22)) (.var 3)) (.neg
    (.num 12))) (.pow (.var 2) 3))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 16)) (.var 3)) (.neg (.num 376)))
    (.var 3)) (.neg (.num 206))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 40)) (.var
    3)) (.neg (.num 910))) (.var 3)) (.neg (.num 604))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.neg (.num 32)) (.var 3)) (.neg (.num 764))) (.var 3)) (.neg (.num 595))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 8)) (.var 3)) (.neg (.num
    256))) (.var 3)) (.neg (.num 227))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 26)) (.var 3)) (.neg (.num 26))) (.pow (.var 2) 4))) (.pow (.var 1) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg
    (.num 30)) (.var 3)) (.neg (.num 438))) (.var 3)) (.neg (.num 326))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.neg (.num 90)) (.var 3)) (.neg (.num 1318))) (.var 3)) (.neg (.num 1054)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 100)) (.var 3)) (.neg (.num
    1494))) (.var 3)) (.neg (.num 1279))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.neg (.num 50)) (.var 3)) (.neg (.num 778))) (.var 3)) (.neg (.num 705))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 10)) (.var 3)) (.neg (.num 174)))
    (.var 3)) (.neg (.num 164))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 10))
    (.var 3)) (.neg (.num 10))) (.pow (.var 2) 5))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4) (.var
    3)) (.neg (.num 176))) (.var 3)) (.neg (.num 156))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 14) (.var 3)) (.neg (.num 652))) (.var 3)) (.neg (.num 604))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 10) (.var 3)) (.neg (.num 966))) (.var 3)) (.neg (.num 924)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 10)) (.var 3)) (.neg
    (.num 718))) (.var 3)) (.neg (.num 694))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.neg (.num 14)) (.var 3)) (.neg (.num 266))) (.var 3)) (.neg (.num 252))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg (.num
    38))) (.var 3)) (.neg (.num 34))) (.pow (.var 2) 5))) (.pow (.var 1) 3))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 36)
    (.var 3)) (.num 46)) (.var 3)) (.num 10)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 144)
    (.var 3)) (.num 162)) (.var 3)) (.num 18)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 221) (.var 3)) (.num 199)) (.var 3)) (.neg (.num 22))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 159) (.var 3)) (.num 85)) (.var 3)) (.neg (.num 74)))
    (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 51) (.var 3)) (.neg (.num
    9))) (.var 3)) (.neg (.num 60))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 5) (.var 3)) (.neg (.num 11))) (.var 3)) (.neg (.num 16))) (.pow (.var 2) 5))) (.pow
    (.var 1) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 22) (.var 3)) (.num 44)) (.var 3)) (.num 22)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 99) (.var 3)) (.num 198)) (.var 3)) (.num 99)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 176) (.var 3)) (.num 352)) (.var 3)) (.num 176)) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 154) (.var 3)) (.num 308)) (.var
    3)) (.num 154)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 66) (.var
    3)) (.num 132)) (.var 3)) (.num 66)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 11) (.var 3)) (.num 22)) (.var 3)) (.num 11)) (.pow (.var 2) 5))) (.pow (.var 1)
    5)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)) (.pow
    (.add (.var 1) (.var 2)) 3))) (.mul (.mul (.mul (.mul (.num 2) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 6)
    (.var 1)) (.var 0)) (.mul (.add (.mul (.num 96) (.var 1)) (.mul (.num 42) (.var 2))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 502) (.var 1)) (.mul (.add (.mul (.neg
    (.num 6)) (.var 3)) (.num 433)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var
    3)) (.num 84)) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.neg (.num 48))) (.var 3)) (.num 1219))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 3)) (.neg (.num 150))) (.var 3)) (.num
    1493)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 6) (.var 3)) (.neg (.num
    144))) (.var 3)) (.num 505)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 42))
    (.var 3)) (.num 36)) (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 54) (.var 3)) (.neg (.num 252))) (.var
    3)) (.num 1527)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 135) (.var 3)) (.neg (.num
    853))) (.var 3)) (.num 2143)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 108)
    (.var 3)) (.neg (.num 1040))) (.var 3)) (.num 622)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 27) (.var 3)) (.neg (.num 529))) (.var 3)) (.neg (.num 177))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 90)) (.var 3)) (.neg (.num 66))) (.pow
    (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 223) (.var 3)) (.neg (.num 256))) (.var 3)) (.num 1168))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 669) (.var 3)) (.neg (.num 1336))) (.var 3))
    (.num 1479)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 714) (.var 3)) (.neg
    (.num 2455))) (.var 3)) (.neg (.num 634))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 313) (.var 3)) (.neg (.num 1992))) (.var 3)) (.neg (.num 1563))) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 45) (.var 3)) (.neg (.num 695))) (.var
    3)) (.neg (.num 669))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 78)) (.var
    3)) (.neg (.num 78))) (.pow (.var 2) 5))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 568) (.var 3))
    (.num 712)) (.var 3)) (.num 1030)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1988) (.var
    3)) (.num 1622)) (.var 3)) (.num 1888)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2622) (.var 3)) (.num 490)) (.var 3)) (.neg (.num 97))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1585) (.var 3)) (.neg (.num 1335))) (.var 3)) (.neg (.num
    2150))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 416) (.var 3)) (.neg
    (.num 1242))) (.var 3)) (.neg (.num 1555))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 33) (.var 3)) (.neg (.num 351))) (.var 3)) (.neg (.num 384))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.neg (.num 24)) (.var 3)) (.neg (.num 24))) (.pow (.var 2)
    6))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 870) (.var 3)) (.num 1816)) (.var 3)) (.num 1170))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3480) (.var 3)) (.num 6578)) (.var 3)) (.num
    3772)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5465) (.var 3)) (.num 8973))
    (.var 3)) (.num 4245)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4215)
    (.var 3)) (.num 5487)) (.var 3)) (.num 1620)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 1614) (.var 3)) (.num 1236)) (.var 3)) (.neg (.num 317))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 263) (.var 3)) (.neg (.num 91))) (.var 3))
    (.neg (.num 354))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 9) (.var
    3)) (.neg (.num 51))) (.var 3)) (.neg (.num 60))) (.pow (.var 2) 6))) (.pow (.var 1) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 686) (.var 3)) (.num 1496)) (.var 3)) (.num 810)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 3087) (.var 3)) (.num 6510)) (.var 3)) (.num 3423)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5612) (.var 3)) (.num 11352)) (.var 3)) (.num
    5740)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5236) (.var 3)) (.num
    10033)) (.var 3)) (.num 4797)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2616) (.var 3)) (.num 4647)) (.var 3)) (.num 2031)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 653) (.var 3)) (.num 1029)) (.var 3)) (.num 376)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 62) (.var 3)) (.num 77)) (.var 3)) (.num
    15)) (.pow (.var 2) 6))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 222) (.var 3)) (.num
    444)) (.var 3)) (.num 222)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1110) (.var 3))
    (.num 2220)) (.var 3)) (.num 1110)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    2279) (.var 3)) (.num 4558)) (.var 3)) (.num 2279)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2456) (.var 3)) (.num 4912)) (.var 3)) (.num 2456)) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1464) (.var 3)) (.num 2928)) (.var 3))
    (.num 1464)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 458) (.var 3))
    (.num 916)) (.var 3)) (.num 458)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 59) (.var 3)) (.num 118)) (.var 3)) (.num 59)) (.pow (.var 2) 6))) (.pow (.var 1) 4))))
    (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4))
    (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul (.mul (.num 3) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 40) (.var 1)) (.mul (.num 16) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.num 16) (.var 3)) (.num 424)) (.var 1)) (.mul (.add (.mul (.num 16) (.var 3)) (.num
    348)) (.var 2))) (.var 1)) (.mul (.num 64) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 168)) (.var 3)) (.num
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
    (.pow (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var
    2))) 4)) (.add (.var 1) (.var 2)))) (.mul (.mul (.mul (.num 4) (.add (.mul (.add (.mul (.add
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
    0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.mul
    (.mul (.num 36) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2)
    (.var 0)) (.mul (.num 8) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3))
    (.num 4)) (.var 3)) (.num 12)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 8) (.var 3)) (.num 12)) (.var 3)) (.num 8)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 10) (.var 3)) (.num 12)) (.var 3)) (.num 2)) (.pow (.var 2) 4))) (.var
    0)) (.mul (.mul (.add (.mul (.num 4) (.var 3)) (.num 4)) (.var 3)) (.pow (.var 2) 5))) (.pow
    (.var 0) 3))) (.pow (.var 0) 5)) (.mul (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 13) (.var 0)) (.mul (.num 35) (.var 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 9) (.var 3)) (.num 8)) (.var 3)) (.num 30)) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27) (.var 3)) (.num 28)) (.var 3)) (.num 10))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 27) (.var 3)) (.num 32))
    (.var 3)) (.num 5)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 9) (.var
    3)) (.num 12)) (.var 3)) (.num 3)) (.pow (.var 2) 5))) (.pow (.var 0) 2))) (.pow (.var 0) 6)))
    (.mul (.mul (.num 28) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    2) (.var 0)) (.mul (.num 4) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2) (.var
    3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 8) (.var 3)) (.num 16)) (.var 3)) (.num 8)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 10) (.var 3)) (.num 20)) (.var 3)) (.num 10)) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow
    (.var 2) 5))) (.pow (.var 0) 2))) (.pow (.var 0) 6))) (.mul (.mul (.num 4) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11) (.var 0)) (.mul (.num 9) (.var 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 7) (.var 3)) (.num 4)) (.var 3)) (.neg (.num
    2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 19) (.var 3)) (.num
    34)) (.var 3)) (.num 18)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    17) (.var 3)) (.num 40)) (.var 3)) (.num 23)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 5) (.var 3)) (.num 10)) (.var 3)) (.num 5)) (.pow (.var 2) 5))) (.var 0)))
    (.pow (.var 0) 7))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.mul (.mul (.num 12)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 6) (.var 0)) (.mul (.add (.mul (.num 4) (.var 3)) (.num 88))
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 48)) (.var 3))
    (.num 427)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 98) (.var 3))
    (.num 280)) (.var 3)) (.num 1051)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 425) (.var 3)) (.num 860)) (.var 3)) (.num 1511)) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 919) (.var 3)) (.num 1500)) (.var 3)) (.num 1331)) (.pow (.var
    2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1106) (.var 3)) (.num 1544)) (.var 3))
    (.num 713)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 752) (.var 3))
    (.num 928)) (.var 3)) (.num 217)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 269) (.var 3)) (.num 300)) (.var 3)) (.num 31)) (.pow (.var 2) 8))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 39) (.var 3)) (.num 40)) (.var 3)) (.num 1)) (.pow (.var 2) 9)))
    (.pow (.var 0) 5))) (.pow (.var 0) 3)) (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 51)
    (.var 0)) (.mul (.add (.mul (.num 30) (.var 3)) (.num 676)) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 52) (.var 3)) (.num 278)) (.var 3)) (.num 2851)) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 579) (.var 3)) (.num 1346)) (.var 3)) (.num
    5987)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2300) (.var 3)) (.num
    3828)) (.var 3)) (.num 7293)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 4599) (.var 3)) (.num 6544)) (.var 3)) (.num 5551)) (.pow (.var 2) 5))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 5156) (.var 3)) (.num 6766)) (.var 3)) (.num 2801)) (.pow (.var
    2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 3281) (.var 3)) (.num 4122)) (.var 3))
    (.num 1001)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1100) (.var 3))
    (.num 1352)) (.var 3)) (.num 252)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 149) (.var 3)) (.num 182)) (.var 3)) (.num 33)) (.pow (.var 2) 9))) (.pow (.var 0) 4)))
    (.pow (.var 0) 4))) (.mul (.mul (.num 15) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.mul
    (.add (.mul (.num 8) (.var 3)) (.num 162)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 16) (.var 3)) (.num 92)) (.var 3)) (.num 700)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 194) (.var 3)) (.num 550)) (.var 3)) (.num 1586)) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 834) (.var 3)) (.num 1794)) (.var 3)) (.num
    2300)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1786) (.var 3)) (.num
    3346)) (.var 3)) (.num 2382)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 2124) (.var 3)) (.num 3672)) (.var 3)) (.num 1812)) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 1422) (.var 3)) (.num 2338)) (.var 3)) (.num 950)) (.pow (.var
    2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 498) (.var 3)) (.num 794)) (.var 3))
    (.num 296)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 70) (.var 3))
    (.num 110)) (.var 3)) (.num 40)) (.pow (.var 2) 9))) (.pow (.var 0) 4))) (.pow (.var 0) 4)))
    (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
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
    3)) (.num 135)) (.pow (.var 2) 9))) (.pow (.var 0) 3))) (.pow (.var 0) 5))) (.mul (.mul (.num
    6) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 6) (.var 0)) (.mul (.add (.mul (.num 4) (.var 3)) (.num 74))
    (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 44)) (.var 3))
    (.num 275)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 96) (.var 3))
    (.num 270)) (.var 3)) (.num 551)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 409) (.var 3)) (.num 932)) (.var 3)) (.num 831)) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 867) (.var 3)) (.num 1830)) (.var 3)) (.num 1091)) (.pow (.var
    2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1018) (.var 3)) (.num 2084)) (.var 3))
    (.num 1089)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 670) (.var 3))
    (.num 1354)) (.var 3)) (.num 685)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 229) (.var 3)) (.num 460)) (.var 3)) (.num 231)) (.pow (.var 2) 8))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 31) (.var 3)) (.num 62)) (.var 3)) (.num 31)) (.pow (.var 2)
    9))) (.pow (.var 0) 3))) (.pow (.var 0) 5))) (.mul (.mul (.num 1) (.mul (.add (.mul (.add
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
    2))) (.pow (.var 0) 6))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow0321.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow0321.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow0321.leading0 e g v + f * FullLow0321.leading1 e g v +
        f^2 * FullLow0321.remainder e f g v := by
  have hden : denominatorOne FullLow0321.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow0321.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow0321.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 1099511627776 21 12 2) lhs =
      value (Encoding4.vars 1099511627776 21 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 1099511627776 := by
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
    FullLow0321.source e f g v =
      FullLow0321.leading0 e g v + f * FullLow0321.leading1 e g v +
        f^2 * FullLow0321.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 1099511627776 21 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow032Encoded1

namespace SPR.N6.Tail.CoreEndpoint.FullLow032
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition1 (e f g v : ℝ) :
    FullLow0321.source e f g v =
      FullLow0321.leading0 e g v + f * FullLow0321.leading1 e g v +
        f^2 * FullLow0321.remainder e f g v :=
  FullLow032Encoded1.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow032
