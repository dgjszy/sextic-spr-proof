import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh203Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^0 layer of FullHigh203.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh203Encoded0
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 60) (.var 1)) (.mul (.num
    20) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 932) (.var 1)) (.add (.mul (.num 732)
    (.var 2)) (.mul (.num 120) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 140) (.var 2)) (.mul
    (.num 40) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 6368)
    (.var 1)) (.add (.mul (.num 7782) (.var 2)) (.mul (.num 1600) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 3074) (.var 2)) (.mul (.num 1208) (.var 3))) (.var 2)) (.mul (.num 60)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 400) (.var 2)) (.mul (.num
    208) (.var 3))) (.var 2)) (.mul (.num 20) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 25302) (.var 1)) (.add (.mul (.num 41652)
    (.var 2)) (.mul (.num 9468) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 24772) (.var
    2)) (.mul (.num 11164) (.var 3))) (.var 2)) (.mul (.num 700) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 6362) (.var 2)) (.mul (.num 4088) (.var 3))) (.var 2))
    (.mul (.num 524) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    600) (.var 2)) (.mul (.num 472) (.var 3))) (.var 2)) (.mul (.num 84) (.pow (.var 3) 2))) (.pow
    (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    64972) (.var 1)) (.add (.mul (.num 133840) (.var 2)) (.mul (.num 32688) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 105578) (.var 2)) (.mul (.num 52544) (.var 3))) (.var 2)) (.mul
    (.num 3606) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 39966) (.var
    2)) (.mul (.num 29696) (.var 3))) (.var 2)) (.mul (.num 4238) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7256) (.var 2)) (.mul (.num 7048) (.var 3)))
    (.var 2)) (.mul (.num 1484) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 500) (.var 2)) (.mul (.num 608) (.var 3))) (.var 2)) (.mul (.num 152)
    (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 113017) (.var 1)) (.add (.mul (.num 278571) (.var 2))
    (.mul (.num 72780) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 272283) (.var 2)) (.mul
    (.num 148632) (.var 3))) (.var 2)) (.mul (.num 10772) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 134887) (.var 2)) (.mul (.num 114092) (.var 3))) (.var 2)) (.mul
    (.num 17464) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    35494) (.var 2)) (.mul (.num 41268) (.var 3))) (.var 2)) (.mul (.num 9686) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4616) (.var 2)) (.mul (.num
    7100) (.var 3))) (.var 2)) (.mul (.num 2162) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 220) (.var 2)) (.mul (.num 472) (.var 3))) (.var 2)) (.mul
    (.num 168) (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 135235) (.var 1)) (.add (.mul
    (.num 387021) (.var 2)) (.mul (.num 108614) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul
    (.num 449265) (.var 2)) (.mul (.num 269822) (.var 3))) (.var 2)) (.mul (.num 20584) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 273001) (.var 2)) (.mul (.num
    262614) (.var 3))) (.var 2)) (.mul (.num 43136) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 92792) (.var 2)) (.mul (.num 128134) (.var 3))) (.var 2)) (.mul
    (.num 33460) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 17204) (.var 2)) (.mul (.num 33060) (.var 3))) (.var 2)) (.mul (.num 11980) (.pow (.var
    3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1514) (.var 2))
    (.mul (.num 4260) (.var 3))) (.var 2)) (.mul (.num 2004) (.pow (.var 3) 2))) (.pow (.var 2)
    4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 40) (.var 2)) (.mul (.num 208) (.var 3)))
    (.var 2)) (.mul (.num 132) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    110179) (.var 1)) (.add (.mul (.num 358212) (.var 2)) (.mul (.num 108676) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 479687) (.var 2)) (.mul (.num 318588) (.var 3))) (.var 2))
    (.mul (.num 25891) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 343195)
    (.var 2)) (.mul (.num 376184) (.var 3))) (.var 2)) (.mul (.num 67365) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 141470) (.var 2)) (.mul (.num 231252)
    (.var 3))) (.var 2)) (.mul (.num 68315) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 33377) (.var 2)) (.mul (.num 79476) (.var 3))) (.var 2))
    (.mul (.num 34551) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 4102) (.var 2)) (.mul (.num 15044) (.var 3))) (.var 2)) (.mul (.num 9234) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 194) (.var 2))
    (.mul (.num 1388) (.var 3))) (.var 2)) (.mul (.num 1252) (.pow (.var 3) 2))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.mul (.num 40) (.var 3)) (.var 2)) (.mul (.num 68) (.pow
    (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 58611) (.var 1)) (.add (.mul
    (.num 212897) (.var 2)) (.mul (.num 70238) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num
    321899) (.var 2)) (.mul (.num 237430) (.var 3))) (.var 2)) (.mul (.num 20859) (.pow (.var 3)
    2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 263513) (.var 2)) (.mul (.num 329498)
    (.var 3))) (.var 2)) (.mul (.num 65347) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 126522) (.var 2)) (.mul (.num 243902) (.var 3))) (.var 2)) (.mul (.num
    82641) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    35676) (.var 2)) (.mul (.num 104264) (.var 3))) (.var 2)) (.mul (.num 54653) (.pow (.var 3)
    2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5462) (.var 2)) (.mul
    (.num 25760) (.var 3))) (.var 2)) (.mul (.num 20394) (.pow (.var 3) 2))) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 348) (.var 2)) (.mul (.num 3392) (.var 3)))
    (.var 2)) (.mul (.num 4270) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.mul (.num 180) (.var 3)) (.var 2)) (.mul (.num 452) (.pow (.var 3) 2))) (.pow (.var 2)
    6))) (.var 1)) (.mul (.mul (.num 16) (.pow (.var 3) 2)) (.pow (.var 2) 7)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 18414) (.var 1)) (.add (.mul (.num 73731) (.var 2)) (.mul (.num 26586)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 123778) (.var 2)) (.mul (.num 101726)
    (.var 3))) (.var 2)) (.mul (.num 9780) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 113472) (.var 2)) (.mul (.num 161912) (.var 3))) (.var 2)) (.mul (.num 35961)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 61668) (.var 2))
    (.mul (.num 139632) (.var 3))) (.var 2)) (.mul (.num 54660) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 19957) (.var 2)) (.mul (.num 70894) (.var
    3))) (.var 2)) (.mul (.num 44744) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 3574) (.var 2)) (.mul (.num 21322) (.var 3))) (.var 2)) (.mul
    (.num 21446) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 274) (.var 2)) (.mul (.num 3540) (.var 3))) (.var 2)) (.mul (.num 6059) (.pow (.var 3)
    2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.mul (.num 252) (.var 3)) (.var 2))
    (.mul (.num 940) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.mul (.num 62) (.pow
    (.var 3) 2)) (.pow (.var 2) 7))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2598)
    (.var 1)) (.add (.mul (.num 11338) (.var 2)) (.mul (.num 4490) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 20844) (.var 2)) (.mul (.num 19146) (.var 3))) (.var 2)) (.mul (.num
    2040) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 21036) (.var 2))
    (.mul (.num 34260) (.var 3))) (.var 2)) (.mul (.num 8622) (.pow (.var 3) 2))) (.var 2))) (.var
    1)) (.mul (.add (.mul (.add (.mul (.num 12662) (.var 2)) (.mul (.num 33540) (.var 3))) (.var
    2)) (.mul (.num 15306) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 4570) (.var 2)) (.mul (.num 19538) (.var 3))) (.var 2)) (.mul (.num 14904)
    (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 920)
    (.var 2)) (.mul (.num 6818) (.var 3))) (.var 2)) (.mul (.num 8676) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 80) (.var 2)) (.mul (.num 1328)
    (.var 3))) (.var 2)) (.mul (.num 3046) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 112) (.var 3)) (.var 2)) (.mul (.num 602) (.pow (.var 3) 2))) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.mul (.num 52) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow
    (.var 1) 2)))) (.pow (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2)))
    3))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.mul (.mul (.num
    4) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add
    (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num
    10) (.var 2)) (.mul (.num 4) (.var 3))) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var
    0)) (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 4) (.var 3))) (.pow (.var 2) 2))) (.var
    0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))
    (.pow (.var 2) 2))) (.var 0)) (.mul (.mul (.num 4) (.pow (.var 3) 2)) (.pow (.var 2) 3)))
    (.var 0))) (.pow (.var 0) 3)) (.mul (.mul (.num 6) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 2) (.var 0)) (.add (.mul (.num 8) (.var 2)) (.mul (.num 4) (.var 3)))) (.var
    0)) (.add (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul
    (.num 2) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 2)) (.mul
    (.num 12) (.var 3))) (.var 2)) (.mul (.num 4) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul
    (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2))) (.pow (.var
    2) 2))) (.pow (.var 0) 3))) (.pow (.var 0) 2))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.mul (.mul (.num 1) (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 6) (.var 0)) (.add (.mul (.num 84) (.var 2)) (.mul (.num 12) (.var 3)))) (.var 0)) (.add
    (.mul (.add (.mul (.num 371) (.var 2)) (.mul (.num 128) (.var 3))) (.var 2)) (.mul (.num 6)
    (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 785) (.var 2)) (.mul (.num
    362) (.var 3))) (.var 2)) (.mul (.num 56) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 902) (.var 2)) (.mul (.num 520) (.var 3))) (.var 2)) (.mul (.num 125)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 572)
    (.var 2)) (.mul (.num 524) (.var 3))) (.var 2)) (.mul (.num 167) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 185) (.var 2)) (.mul (.num 384)
    (.var 3))) (.var 2)) (.mul (.num 246) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 23) (.var 2)) (.mul (.num 158) (.var 3))) (.var 2)) (.mul (.num
    256) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 24) (.var
    3)) (.var 2)) (.mul (.num 119) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul
    (.num 17) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.var 0))) (.pow (.var 0) 3)) (.mul (.mul
    (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.num 12) (.var 0)) (.add (.mul (.num 170) (.var 2)) (.mul (.num
    24) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 766) (.var 2)) (.mul (.num 284) (.var
    3))) (.var 2)) (.mul (.num 12) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 1662) (.var 2)) (.mul (.num 988) (.var 3))) (.var 2)) (.mul (.num 126) (.pow (.var 3)
    2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1970) (.var 2)) (.mul (.num
    1718) (.var 3))) (.var 2)) (.mul (.num 362) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 1300) (.var 2)) (.mul (.num 1768) (.var 3))) (.var 2))
    (.mul (.num 528) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 444) (.var 2)) (.mul (.num 1116) (.var 3))) (.var 2)) (.mul (.num 526) (.pow (.var
    3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 2)) (.mul
    (.num 396) (.var 3))) (.var 2)) (.mul (.num 388) (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var
    0)) (.mul (.add (.mul (.mul (.num 58) (.var 3)) (.var 2)) (.mul (.num 172) (.pow (.var 3) 2)))
    (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 30) (.pow (.var 3) 2)) (.pow (.var 2) 7)))
    (.pow (.var 0) 2))) (.pow (.var 0) 2))) (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul
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
    (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 3))) (.pow (.var 0) 1))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh2030.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh2030.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh2030.leading0 e g v + f * FullHigh2030.leading1 e g v +
        f^2 * FullHigh2030.remainder e f g v := by
  have hden : denominatorOne FullHigh2030.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh2030.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh2030.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 17179869184 17 10 2) lhs =
      value (Encoding4.vars 17179869184 17 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 17179869184 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 17 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 17 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullHigh2030.source e f g v =
      FullHigh2030.leading0 e g v + f * FullHigh2030.leading1 e g v +
        f^2 * FullHigh2030.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 17179869184 17 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh203Encoded0

namespace SPR.N6.Tail.CoreEndpoint.FullHigh203
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition0 (e f g v : ℝ) :
    FullHigh2030.source e f g v =
      FullHigh2030.leading0 e g v + f * FullHigh2030.leading1 e g v +
        f^2 * FullHigh2030.remainder e f g v :=
  FullHigh203Encoded0.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh203
