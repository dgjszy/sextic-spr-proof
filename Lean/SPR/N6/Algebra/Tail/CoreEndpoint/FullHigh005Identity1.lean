import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh005Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^1 layer of FullHigh005.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh005Encoded1
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 15) (.var 1)) (.mul (.num 5) (.var 2))) (.var 0)) (.add
    (.mul (.add (.mul (.num 131) (.var 1)) (.add (.mul (.num 95) (.var 2)) (.mul (.num 30) (.var
    3)))) (.var 1)) (.mul (.add (.mul (.num 16) (.var 2)) (.mul (.num 10) (.var 3))) (.var 2))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 490) (.var 1)) (.add (.mul (.num 541)
    (.var 2)) (.mul (.num 212) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 179) (.var 2))
    (.mul (.num 150) (.var 3))) (.var 2)) (.mul (.num 15) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 18) (.var 2)) (.mul (.num 22) (.var 3))) (.var 2)) (.mul (.num
    5) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 1008) (.var 1)) (.add (.mul (.num 1477) (.var 2)) (.mul (.num 630) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 715) (.var 2)) (.mul (.num 676) (.var 3))) (.var 2)) (.mul (.num
    81) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 134) (.var 2)) (.mul
    (.num 196) (.var 3))) (.var 2)) (.mul (.num 55) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 8) (.var 2)) (.mul (.num 14) (.var 3))) (.var 2)) (.mul (.num 6)
    (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 1225) (.var 1)) (.add (.mul (.num 2214) (.var 2)) (.mul (.num 994)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1386) (.var 2)) (.mul (.num 1416) (.var
    3))) (.var 2)) (.mul (.num 175) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 364) (.var 2)) (.mul (.num 604) (.var 3))) (.var 2)) (.mul (.num 170) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 38) (.var 2)) (.mul (.num 80)
    (.var 3))) (.var 2)) (.mul (.num 27) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.num 2) (.var 3))) (.var 2)) (.mul (.neg
    (.num 4)) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 877) (.var 1)) (.add (.mul (.num 1870) (.var
    2)) (.mul (.num 884) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1418) (.var 2)) (.mul
    (.num 1570) (.var 3))) (.var 2)) (.mul (.num 185) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 468) (.var 2)) (.mul (.num 886) (.var 3))) (.var 2)) (.mul (.num 220)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 66) (.var 2))
    (.mul (.num 172) (.var 3))) (.var 2)) (.mul (.num 25) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.num 8) (.var 3))) (.var 2))
    (.mul (.neg (.num 32)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul (.neg
    (.num 6)) (.pow (.var 3) 2)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 342) (.var 1)) (.add (.mul (.num
    836) (.var 2)) (.mul (.num 422) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 739) (.var
    2)) (.mul (.num 900) (.var 3))) (.var 2)) (.mul (.num 108) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 290) (.var 2)) (.mul (.num 636) (.var 3))) (.var 2)) (.mul
    (.num 162) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50)
    (.var 2)) (.mul (.num 166) (.var 3))) (.var 2)) (.mul (.num 27) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.num 12) (.var
    3))) (.var 2)) (.mul (.neg (.num 44)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.mul (.neg (.num 16)) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.neg
    (.num 1)) (.pow (.var 3) 2)) (.pow (.var 2) 5)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 56) (.var 1)) (.add (.mul
    (.num 154) (.var 2)) (.mul (.num 84) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 155)
    (.var 2)) (.mul (.num 210) (.var 3))) (.var 2)) (.mul (.num 28) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 70) (.var 2)) (.mul (.num 180) (.var 3))) (.var 2)) (.mul
    (.num 56) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14)
    (.var 2)) (.mul (.num 60) (.var 3))) (.var 2)) (.mul (.num 25) (.pow (.var 3) 2))) (.pow (.var
    2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1) (.var 2)) (.mul (.num 6) (.var 3)))
    (.var 2)) (.mul (.neg (.num 10)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.mul
    (.neg (.num 8)) (.pow (.var 3) 2)) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.neg (.num 1))
    (.pow (.var 3) 2)) (.pow (.var 2) 5))) (.var 1)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add
    (.add (.var 0) (.var 1)) (.var 2))) 5)) (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 30) (.var 1)) (.mul (.num 10) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 408)
    (.var 1)) (.add (.mul (.num 318) (.var 2)) (.mul (.num 60) (.var 3)))) (.var 1)) (.mul (.add
    (.mul (.num 60) (.var 2)) (.mul (.num 20) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.num 2391) (.var 1)) (.add (.mul (.num 2884) (.var 2)) (.mul (.num 700)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 1113) (.var 2)) (.mul (.num 532) (.var
    3))) (.var 2)) (.mul (.num 30) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 140) (.var 2)) (.mul (.num 92) (.var 3))) (.var 2)) (.mul (.num 10) (.pow (.var 3) 2)))
    (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 7974) (.var 1))
    (.add (.mul (.num 12900) (.var 2)) (.mul (.num 3526) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 7436) (.var 2)) (.mul (.num 4180) (.var 3))) (.var 2)) (.mul (.num 300) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1820) (.var 2)) (.mul (.num 1530)
    (.var 3))) (.var 2)) (.mul (.num 226) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 160) (.var 2)) (.mul (.num 176) (.var 3))) (.var 2)) (.mul (.num 36)
    (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 16766) (.var 1)) (.add (.mul (.num 33817) (.var 2)) (.mul (.num 10058)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 25674) (.var 2)) (.mul (.num 16210) (.var
    3))) (.var 2)) (.mul (.num 1281) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 9147) (.var 2)) (.mul (.num 9090) (.var 3))) (.var 2)) (.mul (.num 1514) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1514) (.var 2)) (.mul (.num
    2114) (.var 3))) (.var 2)) (.mul (.num 525) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 90) (.var 2)) (.mul (.num 176) (.var 3))) (.var 2)) (.mul
    (.num 52) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 23146) (.var 1)) (.add (.mul (.num 55684)
    (.var 2)) (.mul (.num 17864) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 52048) (.var
    2)) (.mul (.num 36458) (.var 3))) (.var 2)) (.mul (.num 3056) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 23992) (.var 2)) (.mul (.num 27550) (.var 3))) (.var 2))
    (.mul (.num 4972) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    5642) (.var 2)) (.mul (.num 9614) (.var 3))) (.var 2)) (.mul (.num 2710) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 610) (.var 2)) (.mul (.num
    1550) (.var 3))) (.var 2)) (.mul (.num 574) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 20) (.var 2)) (.mul (.num 92) (.var 3))) (.var 2)) (.mul
    (.num 40) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 21053) (.var 1)) (.add (.mul (.num
    58636) (.var 2)) (.mul (.num 20308) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 64701)
    (.var 2)) (.mul (.num 50236) (.var 3))) (.var 2)) (.mul (.num 4459) (.pow (.var 3) 2)))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 36191) (.var 2)) (.mul (.num 47758) (.var 3))) (.var
    2)) (.mul (.num 9361) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 10791) (.var 2)) (.mul (.num 22162) (.var 3))) (.var 2)) (.mul (.num 7093) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1609) (.var 2))
    (.mul (.num 5226) (.var 3))) (.var 2)) (.mul (.num 2381) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 91) (.var 2)) (.mul (.num 574) (.var 3)))
    (.var 2)) (.mul (.num 348) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.mul (.num 20) (.var 3)) (.var 2)) (.mul (.num 18) (.pow (.var 3) 2))) (.pow (.var 2) 5))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 12200) (.var 1)) (.add (.mul (.num 38496) (.var 2)) (.mul (.num 14454) (.var
    3)))) (.var 1)) (.add (.mul (.add (.mul (.num 48717) (.var 2)) (.mul (.num 42034) (.var 3)))
    (.var 2)) (.mul (.num 4012) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    31747) (.var 2)) (.mul (.num 48104) (.var 3))) (.var 2)) (.mul (.num 10448) (.pow (.var 3)
    2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 11275) (.var 2)) (.mul (.num
    27734) (.var 3))) (.var 2)) (.mul (.num 10320) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 2073) (.var 2)) (.mul (.num 8506) (.var 3))) (.var 2))
    (.mul (.num 4876) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 154) (.var 2)) (.mul (.num 1316) (.var 3))) (.var 2)) (.mul (.num 1138) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 80) (.var 3)) (.var
    2)) (.mul (.num 120) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num 4)
    (.pow (.var 3) 2)) (.pow (.var 2) 6)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4096) (.var 1)) (.add (.mul
    (.num 14401) (.var 2)) (.mul (.num 5890) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    20458) (.var 2)) (.mul (.num 19676) (.var 3))) (.var 2)) (.mul (.num 2054) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 15094) (.var 2)) (.mul (.num 26258) (.var
    3))) (.var 2)) (.mul (.num 6437) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 6135) (.var 2)) (.mul (.num 17972) (.var 3))) (.var 2)) (.mul (.num 7912)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1309)
    (.var 2)) (.mul (.num 6690) (.var 3))) (.var 2)) (.mul (.num 4872) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 115) (.var 2)) (.mul (.num 1292)
    (.var 3))) (.var 2)) (.mul (.num 1585) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 102) (.var 3)) (.var 2)) (.mul (.num 259) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.mul (.num 17) (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.var
    1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 608) (.var 1)) (.add (.mul (.num 2350) (.var 2)) (.mul (.num
    1052) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 3685) (.var 2)) (.mul (.num 3962)
    (.var 3))) (.var 2)) (.mul (.num 460) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3013) (.var 2)) (.mul (.num 6014) (.var 3))) (.var 2)) (.mul (.num 1692) (.pow
    (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1363) (.var 2)) (.mul
    (.num 4724) (.var 3))) (.var 2)) (.mul (.num 2493) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 325) (.var 2)) (.mul (.num 2036) (.var 3)))
    (.var 2)) (.mul (.num 1887) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 32) (.var 2)) (.mul (.num 458) (.var 3))) (.var 2)) (.mul (.num 777)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.mul (.num 42) (.var 3))
    (.var 2)) (.mul (.num 165) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.mul (.num
    14) (.pow (.var 3) 2)) (.pow (.var 2) 6))) (.pow (.var 1) 2)))) (.pow (.mul (.add (.var 0)
    (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4)))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.mul (.mul (.num
    4) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add (.mul (.num
    8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 10) (.var 2))
    (.mul (.num 12) (.var 3))) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul (.num 4) (.pow
    (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul
    (.num 2) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.pow (.var 0) 3))) (.pow (.var 0) 3)) (.mul
    (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 7)
    (.var 0)) (.add (.mul (.num 19) (.var 2)) (.mul (.num 14) (.var 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.num 17) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num 7) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 5) (.var 2)) (.mul (.num 6) (.var
    3))) (.var 2)) (.mul (.num 1) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul
    (.num 4) (.var 3)) (.var 2)) (.mul (.neg (.num 3)) (.pow (.var 3) 2))) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2)) (.pow (.var 2) 3))) (.var 0))) (.pow (.var
    0) 4))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6)
    (.var 0)) (.add (.mul (.num 86) (.var 2)) (.mul (.num 12) (.var 3)))) (.var 0)) (.add (.mul
    (.add (.mul (.num 395) (.var 2)) (.mul (.num 156) (.var 3))) (.var 2)) (.mul (.num 6) (.pow
    (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 877) (.var 2)) (.mul (.num 630)
    (.var 3))) (.var 2)) (.mul (.num 70) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 1068) (.var 2)) (.mul (.num 1234) (.var 3))) (.var 2)) (.mul (.num
    239) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    728) (.var 2)) (.mul (.num 1336) (.var 3))) (.var 2)) (.mul (.num 377) (.pow (.var 3) 2)))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 259) (.var 2)) (.mul (.num
    816) (.var 3))) (.var 2)) (.mul (.num 308) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 37) (.var 2)) (.mul (.num 262) (.var 3))) (.var 2)) (.mul
    (.num 128) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 34)
    (.var 3)) (.var 2)) (.mul (.num 23) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul
    (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 3))) (.pow (.var 0) 2))
    (.mul (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 27) (.var 0)) (.add (.mul (.num 345) (.var 2))
    (.mul (.num 54) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 1385) (.var 2)) (.mul
    (.num 594) (.var 3))) (.var 2)) (.mul (.num 27) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 2694) (.var 2)) (.mul (.num 1884) (.var 3))) (.var 2)) (.mul (.num
    261) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2885) (.var
    2)) (.mul (.num 2860) (.var 3))) (.var 2)) (.mul (.num 649) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1733) (.var 2)) (.mul (.num 2472) (.var
    3))) (.var 2)) (.mul (.num 680) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 543) (.var 2)) (.mul (.num 1312) (.var 3))) (.var 2)) (.mul (.num 383)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 68)
    (.var 2)) (.mul (.num 414) (.var 3))) (.var 2)) (.mul (.num 203) (.pow (.var 3) 2))) (.pow
    (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 58) (.var 3)) (.var 2)) (.mul (.num 109)
    (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 24) (.pow (.var 3) 2))
    (.pow (.var 2) 7))) (.pow (.var 0) 2))) (.pow (.var 0) 3))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh0051.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh0051.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh0051.leading0 e g v + f * FullHigh0051.leading1 e g v +
        f^2 * FullHigh0051.remainder e f g v := by
  have hden : denominatorOne FullHigh0051.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh0051.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh0051.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 8589934592 18 10 2) lhs =
      value (Encoding4.vars 8589934592 18 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 8589934592 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 18 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 18 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullHigh0051.source e f g v =
      FullHigh0051.leading0 e g v + f * FullHigh0051.leading1 e g v +
        f^2 * FullHigh0051.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 8589934592 18 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh005Encoded1

namespace SPR.N6.Tail.CoreEndpoint.FullHigh005
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition1 (e f g v : ℝ) :
    FullHigh0051.source e f g v =
      FullHigh0051.leading0 e g v + f * FullHigh0051.leading1 e g v +
        f^2 * FullHigh0051.remainder e f g v :=
  FullHigh005Encoded1.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh005
