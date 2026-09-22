import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^11 layer of FullLow023.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow023Encoded11
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.mul (.num 10) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9) (.var 1)) (.mul (.num 3) (.var 2))) (.var
    0)) (.add (.mul (.add (.mul (.num 120) (.var 1)) (.mul (.num 84) (.var 2))) (.var 1)) (.mul
    (.num 12) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 735) (.var
    1)) (.mul (.num 774) (.var 2))) (.var 1)) (.mul (.num 219) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.num 12) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    2694) (.var 1)) (.mul (.num 3765) (.var 2))) (.var 1)) (.mul (.num 1584) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.num 165) (.pow (.var 2) 3))) (.var 1)) (.mul (.neg (.num 12)) (.pow (.var 2)
    4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6600) (.var
    1)) (.mul (.num 11628) (.var 2))) (.var 1)) (.mul (.num 6705) (.pow (.var 2) 2))) (.var 1))
    (.mul (.num 1194) (.pow (.var 2) 3))) (.var 1)) (.mul (.neg (.num 93)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.neg (.num 30)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11424) (.var 1)) (.mul (.num 24996) (.var 2)))
    (.var 1)) (.mul (.num 19614) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 6315) (.pow (.var 2)
    3))) (.var 1)) (.mul (.num 528) (.pow (.var 2) 4))) (.var 1)) (.mul (.neg (.num 93)) (.pow
    (.var 2) 5))) (.var 1)) (.mul (.neg (.num 12)) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 14058) (.var 1))
    (.mul (.num 37944) (.var 2))) (.var 1)) (.mul (.num 40092) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.num 21312) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 6315) (.pow (.var 2) 4))) (.var 1))
    (.mul (.num 1194) (.pow (.var 2) 5))) (.var 1)) (.mul (.num 165) (.pow (.var 2) 6))) (.var 1))
    (.mul (.num 12) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11700) (.var 1)) (.mul (.num 38358)
    (.var 2))) (.var 1)) (.mul (.num 52512) (.pow (.var 2) 2))) (.var 1)) (.mul (.num 40092) (.pow
    (.var 2) 3))) (.var 1)) (.mul (.num 19614) (.pow (.var 2) 4))) (.var 1)) (.mul (.num 6705)
    (.pow (.var 2) 5))) (.var 1)) (.mul (.num 1584) (.pow (.var 2) 6))) (.var 1)) (.mul (.num 219)
    (.pow (.var 2) 7))) (.var 1)) (.mul (.num 12) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 5832) (.var 1)) (.mul (.num 22680) (.var 2))) (.var 1)) (.mul (.num 38358) (.pow (.var
    2) 2))) (.var 1)) (.mul (.num 37944) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 24996) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.num 11628) (.pow (.var 2) 5))) (.var 1)) (.mul (.num 3765)
    (.pow (.var 2) 6))) (.var 1)) (.mul (.num 774) (.pow (.var 2) 7))) (.var 1)) (.mul (.num 84)
    (.pow (.var 2) 8))) (.var 1)) (.mul (.num 3) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 1296) (.var 1)) (.mul (.num 5832) (.var 2))) (.var 1)) (.mul (.num 11700) (.pow
    (.var 2) 2))) (.var 1)) (.mul (.num 14058) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 11424)
    (.pow (.var 2) 4))) (.var 1)) (.mul (.num 6600) (.pow (.var 2) 5))) (.var 1)) (.mul (.num
    2694) (.pow (.var 2) 6))) (.var 1)) (.mul (.num 735) (.pow (.var 2) 7))) (.var 1)) (.mul (.num
    120) (.pow (.var 2) 8))) (.var 1)) (.mul (.num 9) (.pow (.var 2) 9))) (.var 1))))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.mul (.num 4)
    (.add (.mul (.add (.mul (.num 3) (.var 0)) (.mul (.neg (.num 6)) (.var 2))) (.var 0)) (.mul
    (.num 3) (.pow (.var 2) 2)))) (.mul (.num 6) (.add (.mul (.add (.mul (.num 3) (.var 0)) (.mul
    (.neg (.num 6)) (.var 2))) (.var 0)) (.mul (.num 3) (.pow (.var 2) 2))))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.mul (.num 1) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9) (.var 0)) (.mul (.num 57) (.var 2))) (.var
    0)) (.mul (.num 21) (.pow (.var 2) 2))) (.var 0)) (.mul (.neg (.num 78)) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.num 21) (.pow (.var 2) 4))) (.var 0)) (.mul (.num 57) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.num 9) (.pow (.var 2) 6)))) (.mul (.num 3) (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 18) (.var 0)) (.mul (.num 114) (.var 2)))
    (.var 0)) (.mul (.num 42) (.pow (.var 2) 2))) (.var 0)) (.mul (.neg (.num 156)) (.pow (.var 2)
    3))) (.var 0)) (.mul (.num 42) (.pow (.var 2) 4))) (.var 0)) (.mul (.num 114) (.pow (.var 2)
    5))) (.var 0)) (.mul (.num 18) (.pow (.var 2) 6))))) (.mul (.num 3) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9) (.var 0)) (.mul (.num 57) (.var 2)))
    (.var 0)) (.mul (.num 21) (.pow (.var 2) 2))) (.var 0)) (.mul (.neg (.num 78)) (.pow (.var 2)
    3))) (.var 0)) (.mul (.num 21) (.pow (.var 2) 4))) (.var 0)) (.mul (.num 57) (.pow (.var 2)
    5))) (.var 0)) (.mul (.num 9) (.pow (.var 2) 6))))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow02311.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow02311.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow02311.leading0 e g v + f * FullLow02311.leading1 e g v +
        f^2 * FullLow02311.remainder e f g v := by
  have hden : denominatorOne FullLow02311.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow02311.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow02311.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 33554432 10 9 0) lhs =
      value (Encoding4.vars 33554432 10 9 0) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 33554432 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 10 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 9 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 0 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 10 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 9 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 0 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow02311.source e f g v =
      FullLow02311.leading0 e g v + f * FullLow02311.leading1 e g v +
        f^2 * FullLow02311.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 33554432 10 9 0
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow023Encoded11

namespace SPR.N6.Tail.CoreEndpoint.FullLow023
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition11 (e f g v : ℝ) :
    FullLow02311.source e f g v =
      FullLow02311.leading0 e g v + f * FullLow02311.leading1 e g v +
        f^2 * FullLow02311.remainder e f g v :=
  FullLow023Encoded11.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow023
