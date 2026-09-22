import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow041Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^0 layer of FullLow041.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow041Encoded0
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.add (.add (.add (.mul (.mul (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.mul (.num 1) (.pow (.var 1) 3)) (.var 0)) (.mul (.add (.mul (.num 2)
    (.var 1)) (.mul (.num 1) (.var 2))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg (.num 3))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 5)) (.var 3)) (.neg (.num 4))) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 1))
    (.var 3)) (.neg (.num 1))) (.pow (.var 2) 2))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 1)) (.var 3)) (.neg (.num 12)))
    (.var 3)) (.neg (.num 11))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 2)) (.var 3))
    (.neg (.num 22))) (.var 3)) (.neg (.num 20))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.neg (.num 1)) (.var 3)) (.neg (.num 11))) (.var 3)) (.neg (.num 10))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.neg (.num 1)) (.var 3)) (.neg (.num 1))) (.pow (.var 2)
    3))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.neg (.num 2)) (.var 3)) (.neg (.num 12))) (.var 3)) (.neg (.num 10))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.neg (.num 5)) (.var 3)) (.neg (.num 29))) (.var 3)) (.neg (.num
    24))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg (.num
    22))) (.var 3)) (.neg (.num 18))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.neg (.num 1)) (.var 3)) (.neg (.num 5))) (.var 3)) (.neg (.num 4))) (.pow (.var 2) 3)))
    (.pow (.var 1) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.neg (.num 1)) (.var 3)) (.neg (.num 4))) (.var 3)) (.neg (.num 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.neg (.num 3)) (.var 3)) (.neg (.num 12))) (.var 3)) (.neg (.num 9)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 3)) (.var 3)) (.neg (.num 12)))
    (.var 3)) (.neg (.num 9))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg
    (.num 1)) (.var 3)) (.neg (.num 4))) (.var 3)) (.neg (.num 3))) (.pow (.var 2) 3))) (.pow
    (.var 1) 5))) (.var 0))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1))
    (.var 2))) 5)) (.pow (.add (.var 1) (.var 2)) 4)) (.mul (.mul (.mul (.mul (.num 2) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 3) (.pow
    (.var 1) 2)) (.var 0)) (.mul (.add (.mul (.num 18) (.var 1)) (.mul (.num 8) (.var 2))) (.pow
    (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 8)) (.var 3))
    (.num 25)) (.var 1)) (.mul (.add (.mul (.neg (.num 11)) (.var 3)) (.num 18)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.neg (.num 3)) (.var 3)) (.num 2)) (.pow (.var 2) 2))) (.pow (.var 1)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num
    1)) (.var 3)) (.neg (.num 50))) (.var 3)) (.neg (.num 21))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.neg (.num 2)) (.var 3)) (.neg (.num 94))) (.var 3)) (.neg (.num 57))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.neg (.num 1)) (.var 3)) (.neg (.num 52))) (.var 3)) (.neg
    (.num 42))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 8)) (.var 3)) (.neg
    (.num 8))) (.pow (.var 2) 3))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 94)))
    (.var 3)) (.neg (.num 74))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 15)) (.var 3))
    (.neg (.num 230))) (.var 3)) (.neg (.num 193))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.neg (.num 12)) (.var 3)) (.neg (.num 192))) (.var 3)) (.neg (.num 172))) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 3)) (.var 3)) (.neg (.num 61)))
    (.var 3)) (.neg (.num 58))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg (.num 5))
    (.var 3)) (.neg (.num 5))) (.pow (.var 2) 4))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.neg (.num 5)) (.var 3)) (.neg
    (.num 62))) (.var 3)) (.neg (.num 53))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num
    15)) (.var 3)) (.neg (.num 190))) (.var 3)) (.neg (.num 167))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.neg (.num 17)) (.var 3)) (.neg (.num 212))) (.var 3)) (.neg (.num
    191))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.neg (.num 9)) (.var 3))
    (.neg (.num 102))) (.var 3)) (.neg (.num 93))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.neg (.num 2)) (.var 3)) (.neg (.num 18))) (.var 3)) (.neg (.num 16))) (.pow
    (.var 2) 4))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.neg (.num 2))) (.var 3)) (.neg (.num 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14) (.var 3)) (.neg (.num 11))) (.var 3)) (.neg
    (.num 25))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18) (.var 3)) (.neg (.num
    21))) (.var 3)) (.neg (.num 39))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 10) (.var 3)) (.neg (.num 17))) (.var 3)) (.neg (.num 27))) (.pow (.var 2) 3))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.neg (.num 5))) (.var 3)) (.neg (.num
    7))) (.pow (.var 2) 4))) (.pow (.var 1) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 8)) (.var 3)) (.num 4))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num 32)) (.var 3)) (.num 16))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 48)) (.var 3))
    (.num 24)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3))
    (.num 32)) (.var 3)) (.num 16)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 4) (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 4))) (.pow (.var 1) 5))))
    (.var 0)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5))
    (.pow (.add (.var 1) (.var 2)) 3))) (.mul (.mul (.mul (.mul (.num 3) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.mul (.num 2) (.var
    1)) (.var 0)) (.mul (.add (.mul (.num 28) (.var 1)) (.mul (.num 12) (.var 2))) (.var 1)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 113) (.var 1)) (.mul (.add (.mul (.neg (.num 2))
    (.var 3)) (.num 94)) (.var 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 2)) (.var 3)) (.num
    16)) (.pow (.var 2) 2))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 2) (.var 3)) (.neg (.num 16))) (.var 3)) (.num 184)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 4) (.var 3)) (.neg (.num 46))) (.var 3)) (.num 202)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.neg (.num 42))) (.var 3)) (.num
    44)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg (.num
    4))) (.pow (.var 2) 3))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 14) (.var 3)) (.neg (.num 64))) (.var 3)) (.num 117))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 35) (.var 3)) (.neg (.num 203))) (.var 3)) (.num
    77)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 28) (.var 3)) (.neg (.num 234)))
    (.var 3)) (.neg (.num 113))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    7) (.var 3)) (.neg (.num 113))) (.var 3)) (.neg (.num 100))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.neg (.num 18)) (.var 3)) (.neg (.num 18))) (.pow (.var 2) 4))) (.var 1)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 43) (.var 3)) (.neg (.num 36))) (.var 3)) (.num 29)) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 129) (.var 3)) (.neg (.num 190))) (.var 3)) (.neg (.num 104))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 137) (.var 3)) (.neg (.num 346))) (.var 3))
    (.neg (.num 352))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 59) (.var
    3)) (.neg (.num 272))) (.var 3)) (.neg (.num 307))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 8) (.var 3)) (.neg (.num 88))) (.var 3)) (.neg (.num 96))) (.pow (.var
    2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 8)) (.var 3)) (.neg (.num 8))) (.pow (.var 2)
    5))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 82) (.var 3)) (.num 116)) (.var 3)) (.num 62)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 287) (.var 3)) (.num 325)) (.var 3)) (.num 106)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 375) (.var 3)) (.num 285)) (.var 3)) (.neg (.num
    38))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 220) (.var 3)) (.num
    44)) (.var 3)) (.neg (.num 164))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 53) (.var 3)) (.neg (.num 47))) (.var 3)) (.neg (.num 100))) (.pow (.var 2) 4))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 3)) (.neg (.num 15))) (.var 3)) (.neg (.num
    18))) (.pow (.var 2) 5))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 81) (.var 3)) (.num 164)) (.var
    3)) (.num 83)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 324) (.var 3)) (.num 626)) (.var
    3)) (.num 302)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 504) (.var 3)) (.num
    917)) (.var 3)) (.num 413)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    378) (.var 3)) (.num 635)) (.var 3)) (.num 257)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 135) (.var 3)) (.num 203)) (.var 3)) (.num 68)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18) (.var 3)) (.num 23)) (.var 3)) (.num 5))
    (.pow (.var 2) 5))) (.pow (.var 1) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 3)) (.num 60)) (.var 3)) (.num
    30)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 135) (.var 3)) (.num 270)) (.var 3)) (.num
    135)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 240) (.var 3)) (.num 480))
    (.var 3)) (.num 240)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 210)
    (.var 3)) (.num 420)) (.var 3)) (.num 210)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 90) (.var 3)) (.num 180)) (.var 3)) (.num 90)) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 15) (.var 3)) (.num 30)) (.var 3)) (.num 15)) (.pow (.var
    2) 5))) (.pow (.var 1) 4)))) (.pow (.var 0) 2)) (.pow (.mul (.add (.var 0) (.var 1)) (.add
    (.add (.var 0) (.var 1)) (.var 2))) 5)) (.pow (.add (.var 1) (.var 2)) 2))) (.mul (.mul (.mul
    (.mul (.num 4) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 10) (.var 1)) (.mul (.num 4) (.var 2))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 87)) (.var 1)) (.mul (.add (.mul (.num
    4) (.var 3)) (.num 70)) (.var 2))) (.var 1)) (.mul (.num 12) (.pow (.var 2) 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 34))
    (.var 3)) (.num 304)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 44))
    (.var 3)) (.num 361)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3))
    (.num 6)) (.var 3)) (.num 118)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.neg (.num
    4)) (.var 3)) (.num 8)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.num 138)) (.var 3)) (.num 575))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num 234)) (.var 3)) (.num 890))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 48) (.var 3)) (.num 82)) (.var 3))
    (.num 398)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 3))
    (.neg (.num 26))) (.var 3)) (.num 32)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 12)) (.var 3)) (.neg (.num 8))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 111) (.var 3)) (.num 378))
    (.var 3)) (.num 715)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 333) (.var 3)) (.num 870))
    (.var 3)) (.num 1401)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 359) (.var 3))
    (.num 618)) (.var 3)) (.num 819)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 163) (.var 3)) (.num 90)) (.var 3)) (.num 70)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 26) (.var 3)) (.neg (.num 48))) (.var 3)) (.neg (.num 62))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg (.num 12)) (.var 3)) (.neg (.num 12))) (.pow
    (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 264) (.var 3)) (.num 730)) (.var 3)) (.num 712)) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 924) (.var 3)) (.num 2202)) (.var 3)) (.num 1853)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1236) (.var 3)) (.num 2428)) (.var 3))
    (.num 1655)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 780) (.var 3))
    (.num 1152)) (.var 3)) (.num 523)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 228) (.var 3)) (.num 186)) (.var 3)) (.neg (.num 25))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 24) (.var 3)) (.neg (.num 14))) (.var 3)) (.neg (.num
    38))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg (.num 4)) (.var 3)) (.neg (.num
    4))) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 353) (.var 3)) (.num 876)) (.var 3))
    (.num 583)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1412) (.var 3)) (.num 3254)) (.var
    3)) (.num 2010)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2237) (.var 3))
    (.num 4730)) (.var 3)) (.num 2658)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 1769) (.var 3)) (.num 3374)) (.var 3)) (.num 1671)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 718) (.var 3)) (.num 1200)) (.var 3)) (.num 491)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 135) (.var 3)) (.num 184)) (.var
    3)) (.num 49)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3))
    (.num 6)) (.var 3)) (.neg (.num 2))) (.pow (.var 2) 6))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 250) (.var 3)) (.num 560)) (.var 3)) (.num 310)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1125) (.var 3)) (.num 2448)) (.var 3)) (.num 1323)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 2052) (.var 3)) (.num 4320)) (.var 3)) (.num 2268)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1932) (.var 3)) (.num 3918)) (.var 3))
    (.num 1986)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 984) (.var 3))
    (.num 1914)) (.var 3)) (.num 930)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 255) (.var 3)) (.num 474)) (.var 3)) (.num 219)) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 26) (.var 3)) (.num 46)) (.var 3)) (.num 20)) (.pow (.var 2)
    6))) (.pow (.var 1) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 72) (.var 3)) (.num 144)) (.var 3)) (.num 72))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 360) (.var 3)) (.num 720)) (.var 3)) (.num 360))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 738) (.var 3)) (.num 1476)) (.var 3))
    (.num 738)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 792) (.var 3))
    (.num 1584)) (.var 3)) (.num 792)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 468) (.var 3)) (.num 936)) (.var 3)) (.num 468)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 144) (.var 3)) (.num 288)) (.var 3)) (.num 144)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18) (.var 3)) (.num 36)) (.var 3)) (.num
    18)) (.pow (.var 2) 6))) (.pow (.var 1) 3)))) (.pow (.var 0) 3)) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5)) (.add (.var 1) (.var 2)))) (.mul (.mul
    (.mul (.num 5) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 6) (.var 1)) (.mul (.num 2) (.var 2))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 54)) (.var 1)) (.mul (.add (.mul (.num
    4) (.var 3)) (.num 42)) (.var 2))) (.var 1)) (.mul (.num 6) (.pow (.var 2) 2)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 48))
    (.var 3)) (.num 212)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 80))
    (.var 3)) (.num 269)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3))
    (.num 36)) (.var 3)) (.num 95)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 8)) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 40) (.var 3)) (.num 236))
    (.var 3)) (.num 494)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 120) (.var 3)) (.num 550))
    (.var 3)) (.num 912)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 130) (.var 3))
    (.num 448)) (.var 3)) (.num 567)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 60) (.var 3)) (.num 154)) (.var 3)) (.num 139)) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20)) (.var 3)) (.num 12)) (.pow (.var 2)
    4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 158) (.var 3)) (.num 636)) (.var 3)) (.num 780)) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 553) (.var 3)) (.num 1902)) (.var 3)) (.num 1976)) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 747) (.var 3)) (.num 2180)) (.var 3)) (.num 1877)) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 485) (.var 3)) (.num 1206)) (.var 3))
    (.num 845)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 151) (.var 3))
    (.num 328)) (.var 3)) (.num 188)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 18) (.var 3)) (.num 36)) (.var 3)) (.num 18)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 324)
    (.var 3)) (.num 1024)) (.var 3)) (.num 868)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    1296) (.var 3)) (.num 3726)) (.var 3)) (.num 2862)) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 2081) (.var 3)) (.num 5432)) (.var 3)) (.num 3749)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1707) (.var 3)) (.num 4058)) (.var 3)) (.num
    2509)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 749) (.var 3)) (.num
    1640)) (.var 3)) (.num 916)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    165) (.var 3)) (.num 340)) (.var 3)) (.num 176)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 14) (.var 3)) (.num 28)) (.var 3)) (.num 14)) (.pow (.var 2) 6))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 370) (.var 3)) (.num 980)) (.var 3)) (.num 650)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1665) (.var 3)) (.num 4186)) (.var 3)) (.num 2645)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3082) (.var 3)) (.num 7348)) (.var 3)) (.num
    4408)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3017) (.var 3)) (.num
    6830)) (.var 3)) (.num 3886)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 1667) (.var 3)) (.num 3600)) (.var 3)) (.num 1949)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 510) (.var 3)) (.num 1060)) (.var 3)) (.num 551)) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 77) (.var 3)) (.num 156)) (.var 3)) (.num
    79)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 8))
    (.var 3)) (.num 4)) (.pow (.var 2) 7)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 224) (.var 3))
    (.num 512)) (.var 3)) (.num 288)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1120) (.var
    3)) (.num 2504)) (.var 3)) (.num 1384)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2340) (.var 3)) (.num 5112)) (.var 3)) (.num 2772)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 2640) (.var 3)) (.num 5634)) (.var 3)) (.num 2994)) (.pow (.var
    2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1731) (.var 3)) (.num 3612)) (.var 3))
    (.num 1881)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 657) (.var 3))
    (.num 1344)) (.var 3)) (.num 687)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 133) (.var 3)) (.num 268)) (.var 3)) (.num 135)) (.pow (.var 2) 6))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 11) (.var 3)) (.num 22)) (.var 3)) (.num 11)) (.pow (.var 2)
    7))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 56) (.var 3)) (.num 112)) (.var 3))
    (.num 56)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 308) (.var 3)) (.num 616)) (.var 3))
    (.num 308)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 714) (.var 3)) (.num
    1428)) (.var 3)) (.num 714)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    903) (.var 3)) (.num 1806)) (.var 3)) (.num 903)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 672) (.var 3)) (.num 1344)) (.var 3)) (.num 672)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 294) (.var 3)) (.num 588)) (.var 3)) (.num 294))
    (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 70) (.var 3)) (.num 140))
    (.var 3)) (.num 70)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7)
    (.var 3)) (.num 14)) (.var 3)) (.num 7)) (.pow (.var 2) 7))) (.pow (.var 1) 2)))) (.pow (.var
    0) 4)) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.mul (.mul (.num
    4) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.mul
    (.num 8) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var
    3)) (.num 12)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3))
    (.num 12)) (.var 3)) (.num 8)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 10) (.var 3)) (.num 12)) (.var 3)) (.num 2)) (.pow (.var 2) 4))) (.var 0)) (.mul (.mul
    (.add (.mul (.num 4) (.var 3)) (.num 4)) (.var 3)) (.pow (.var 2) 5))) (.pow (.var 0) 3)))
    (.pow (.var 0) 7)) (.mul (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 2) (.var 0)) (.mul (.num 4) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var 2) 2))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 16)) (.var 3)) (.num 8)) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20)) (.var 3)) (.num 10))
    (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 8)) (.var
    3)) (.num 4)) (.pow (.var 2) 5))) (.pow (.var 0) 2))) (.pow (.var 0) 8))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6)
    (.var 0)) (.mul (.add (.mul (.num 4) (.var 3)) (.num 88)) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 8) (.var 3)) (.num 48)) (.var 3)) (.num 427)) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 98) (.var 3)) (.num 280)) (.var 3)) (.num 1051))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 425) (.var 3)) (.num 860))
    (.var 3)) (.num 1511)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 919)
    (.var 3)) (.num 1500)) (.var 3)) (.num 1331)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1106) (.var 3)) (.num 1544)) (.var 3)) (.num 713)) (.pow (.var 2) 6))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 752) (.var 3)) (.num 928)) (.var 3)) (.num 217)) (.pow
    (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 269) (.var 3)) (.num 300)) (.var
    3)) (.num 31)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 39) (.var 3))
    (.num 40)) (.var 3)) (.num 1)) (.pow (.var 2) 9))) (.pow (.var 0) 5))) (.pow (.var 0) 5))
    (.mul (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.mul (.add (.mul (.num 8) (.var
    3)) (.num 162)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 16) (.var 3)) (.num
    92)) (.var 3)) (.num 700)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    194) (.var 3)) (.num 550)) (.var 3)) (.num 1586)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 834) (.var 3)) (.num 1794)) (.var 3)) (.num 2300)) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1786) (.var 3)) (.num 3346)) (.var 3)) (.num
    2382)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2124) (.var 3)) (.num
    3672)) (.var 3)) (.num 1812)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 1422) (.var 3)) (.num 2338)) (.var 3)) (.num 950)) (.pow (.var 2) 7))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 498) (.var 3)) (.num 794)) (.var 3)) (.num 296)) (.pow (.var 2)
    8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 70) (.var 3)) (.num 110)) (.var 3)) (.num
    40)) (.pow (.var 2) 9))) (.pow (.var 0) 4))) (.pow (.var 0) 6))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow0410.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow0410.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow0410.leading0 e g v + f * FullLow0410.leading1 e g v +
        f^2 * FullLow0410.remainder e f g v := by
  have hden : denominatorOne FullLow0410.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow0410.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow0410.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 68719476736 22 12 2) lhs =
      value (Encoding4.vars 68719476736 22 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 68719476736 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 22 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 22 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow0410.source e f g v =
      FullLow0410.leading0 e g v + f * FullLow0410.leading1 e g v +
        f^2 * FullLow0410.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 68719476736 22 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow041Encoded0

namespace SPR.N6.Tail.CoreEndpoint.FullLow041
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition0 (e f g v : ℝ) :
    FullLow0410.source e f g v =
      FullLow0410.leading0 e g v + f * FullLow0410.leading1 e g v +
        f^2 * FullLow0410.remainder e f g v :=
  FullLow041Encoded0.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow041
