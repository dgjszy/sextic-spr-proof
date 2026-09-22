import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh005Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^0 layer of FullHigh005.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh005Encoded0
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 1)) (.mul (.num 2) (.var 2))) (.var 0))
    (.add (.mul (.add (.mul (.num 70) (.var 1)) (.add (.mul (.num 54) (.var 2)) (.mul (.num 12)
    (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 10) (.var 2)) (.mul (.num 4) (.var 3))) (.var
    2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 342) (.var 1)) (.add (.mul (.num
    405) (.var 2)) (.mul (.num 120) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 151) (.var
    2)) (.mul (.num 92) (.var 3))) (.var 2)) (.mul (.num 6) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 18) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul (.num
    2) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 924) (.var 1)) (.add (.mul (.num 1458) (.var 2)) (.mul (.num 496) (.var 3)))) (.var 1))
    (.add (.mul (.add (.mul (.num 801) (.var 2)) (.mul (.num 590) (.var 3))) (.var 2)) (.mul (.num
    50) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 181) (.var 2)) (.mul
    (.num 214) (.var 3))) (.var 2)) (.mul (.num 38) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 14) (.var 2)) (.mul (.num 24) (.var 3))) (.var 2)) (.mul (.num
    6) (.pow (.var 3) 2))) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.num 1522) (.var 1)) (.add (.mul (.num 2978) (.var 2)) (.mul (.num
    1112) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 2129) (.var 2)) (.mul (.num 1786)
    (.var 3))) (.var 2)) (.mul (.num 168) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 684) (.var 2)) (.mul (.num 976) (.var 3))) (.var 2)) (.mul (.num 199) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 95) (.var 2)) (.mul (.num
    214) (.var 3))) (.var 2)) (.mul (.num 67) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 16) (.var 3))) (.var 2)) (.mul
    (.num 6) (.pow (.var 3) 2))) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1574) (.var 1)) (.add (.mul (.num 3656) (.var
    2)) (.mul (.num 1476) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 3183) (.var 2))
    (.mul (.num 2982) (.var 3))) (.var 2)) (.mul (.num 298) (.pow (.var 3) 2)))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 1295) (.var 2)) (.mul (.num 2162) (.var 3))) (.var 2)) (.mul
    (.num 482) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 245)
    (.var 2)) (.mul (.num 690) (.var 3))) (.var 2)) (.mul (.num 249) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 17) (.var 2)) (.mul (.num 94)
    (.var 3))) (.var 2)) (.mul (.num 45) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2))) (.pow (.var
    2) 4)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 1002) (.var 1)) (.add (.mul (.num 2683) (.var 2)) (.mul (.num 1168) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 2730) (.var 2)) (.mul (.num 2842) (.var 3))) (.var 2))
    (.mul (.num 302) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1321)
    (.var 2)) (.mul (.num 2556) (.var 3))) (.var 2)) (.mul (.num 627) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 305) (.var 2)) (.mul (.num 1056) (.var 3)))
    (.var 2)) (.mul (.num 444) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 27) (.var 2)) (.mul (.num 200) (.var 3))) (.var 2)) (.mul (.num 124) (.pow
    (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 14) (.var 3)) (.var
    2)) (.mul (.num 11) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 360) (.var
    1)) (.add (.mul (.num 1088) (.var 2)) (.mul (.num 512) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 1258) (.var 2)) (.mul (.num 1456) (.var 3))) (.var 2)) (.mul (.num 168) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 696) (.var 2)) (.mul (.num 1556)
    (.var 3))) (.var 2)) (.mul (.num 432) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 185) (.var 2)) (.mul (.num 778) (.var 3))) (.var 2)) (.mul (.num 398)
    (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 19)
    (.var 2)) (.mul (.num 182) (.var 3))) (.var 2)) (.mul (.num 158) (.pow (.var 3) 2))) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 16) (.var 3)) (.var 2)) (.mul (.num 25)
    (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.mul (.num 1) (.pow (.var 3) 2))
    (.pow (.var 2) 5))) (.var 1))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 56) (.var 1)) (.add (.mul (.num 188) (.var 2)) (.mul
    (.num 96) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 242) (.var 2)) (.mul (.num 312)
    (.var 3))) (.var 2)) (.mul (.num 40) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 149) (.var 2)) (.mul (.num 384) (.var 3))) (.var 2)) (.mul (.num 124) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 44) (.var 2)) (.mul (.num
    222) (.var 3))) (.var 2)) (.mul (.num 142) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 5) (.var 2)) (.mul (.num 60) (.var 3))) (.var 2)) (.mul
    (.num 73) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.mul (.num 6)
    (.var 3)) (.var 2)) (.mul (.num 16) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.mul (.num 1) (.pow (.var 3) 2)) (.pow (.var 2) 5))) (.pow (.var 1) 2)))) (.pow (.mul (.add
    (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.mul (.mul (.num 1)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.add (.mul (.num 8)
    (.var 2)) (.mul (.num 4) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 10) (.var 2))
    (.mul (.num 12) (.var 3))) (.var 2)) (.mul (.num 2) (.pow (.var 3) 2)))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 4) (.var 2)) (.mul (.num 12) (.var 3))) (.var 2)) (.mul (.num 4) (.pow
    (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.mul (.num 4) (.var 3)) (.var 2)) (.mul
    (.num 2) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.pow (.var 0) 3))) (.pow (.var 0) 4)))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.mul (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var
    0)) (.add (.mul (.num 86) (.var 2)) (.mul (.num 12) (.var 3)))) (.var 0)) (.add (.mul (.add
    (.mul (.num 395) (.var 2)) (.mul (.num 156) (.var 3))) (.var 2)) (.mul (.num 6) (.pow (.var 3)
    2)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 877) (.var 2)) (.mul (.num 630) (.var 3)))
    (.var 2)) (.mul (.num 70) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1068) (.var 2)) (.mul (.num 1234) (.var 3))) (.var 2)) (.mul (.num 239) (.pow
    (.var 3) 2))) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 728) (.var 2))
    (.mul (.num 1336) (.var 3))) (.var 2)) (.mul (.num 377) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 259) (.var 2)) (.mul (.num 816) (.var 3)))
    (.var 2)) (.mul (.num 308) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 37) (.var 2)) (.mul (.num 262) (.var 3))) (.var 2)) (.mul (.num 128) (.pow
    (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.mul (.num 34) (.var 3)) (.var
    2)) (.mul (.num 23) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 0)) (.mul (.mul (.num 1)
    (.pow (.var 3) 2)) (.pow (.var 2) 7))) (.pow (.var 0) 3))) (.pow (.var 0) 3)))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh0050.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh0050.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh0050.leading0 e g v + f * FullHigh0050.leading1 e g v +
        f^2 * FullHigh0050.remainder e f g v := by
  have hden : denominatorOne FullHigh0050.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh0050.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh0050.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 2147483648 19 10 2) lhs =
      value (Encoding4.vars 2147483648 19 10 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 2147483648 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 19 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 19 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullHigh0050.source e f g v =
      FullHigh0050.leading0 e g v + f * FullHigh0050.leading1 e g v +
        f^2 * FullHigh0050.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 2147483648 19 10 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh005Encoded0

namespace SPR.N6.Tail.CoreEndpoint.FullHigh005
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition0 (e f g v : ℝ) :
    FullHigh0050.source e f g v =
      FullHigh0050.leading0 e g v + f * FullHigh0050.leading1 e g v +
        f^2 * FullHigh0050.remainder e f g v :=
  FullHigh005Encoded0.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh005
