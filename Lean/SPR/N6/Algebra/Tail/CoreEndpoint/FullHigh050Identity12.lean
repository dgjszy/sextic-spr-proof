import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh050Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^12 layer of FullHigh050.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh050Encoded12
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9) (.var 1)) (.mul
    (.num 3) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.num 162) (.var 1)) (.add (.mul (.num
    126) (.var 2)) (.mul (.num 18) (.var 3)))) (.var 1)) (.mul (.add (.mul (.num 24) (.var 2))
    (.mul (.num 6) (.var 3))) (.var 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num
    1341) (.var 1)) (.add (.mul (.num 1629) (.var 2)) (.mul (.num 270) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 642) (.var 2)) (.mul (.num 192) (.var 3))) (.var 2)) (.mul (.num 9)
    (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 84) (.var 2)) (.mul (.num
    30) (.var 3))) (.var 2)) (.mul (.num 3) (.pow (.var 3) 2))) (.var 2)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 6687) (.var 1)) (.add (.mul (.num 10986) (.var 2))
    (.mul (.num 1872) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 6567) (.var 2)) (.mul
    (.num 2022) (.var 3))) (.var 2)) (.mul (.num 120) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 1716) (.var 2)) (.mul (.num 636) (.var 3))) (.var 2)) (.mul (.num 84)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 168) (.var 2))
    (.mul (.num 54) (.var 3))) (.var 2)) (.mul (.num 12) (.pow (.var 3) 2))) (.pow (.var 2) 2))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 22212) (.var 1))
    (.add (.mul (.num 45780) (.var 2)) (.mul (.num 7830) (.var 3)))) (.var 1)) (.add (.mul (.add
    (.mul (.num 36540) (.var 2)) (.mul (.num 11274) (.var 3))) (.var 2)) (.mul (.num 735) (.pow
    (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14244) (.var 2)) (.mul (.num
    5304) (.var 3))) (.var 2)) (.mul (.num 774) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 2742) (.var 2)) (.mul (.num 882) (.var 3))) (.var 2)) (.mul
    (.num 219) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 210) (.var 2)) (.mul (.num 30) (.var 3))) (.var 2)) (.mul (.num 12) (.pow (.var 3) 2)))
    (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 51453) (.var 1)) (.add (.mul (.num 127020) (.var 2)) (.mul (.num 21906)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 126252) (.var 2)) (.mul (.num 39390) (.var
    3))) (.var 2)) (.mul (.num 2694) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 65058) (.var 2)) (.mul (.num 24714) (.var 3))) (.var 2)) (.mul (.num 3765) (.pow (.var
    3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 18471) (.var 2)) (.mul (.num
    6144) (.var 3))) (.var 2)) (.mul (.num 1584) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 2754) (.var 2)) (.mul (.num 396) (.var 3))) (.var 2))
    (.mul (.num 165) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 168) (.var 2)) (.mul (.neg (.num 30)) (.var 3))) (.var 2)) (.mul (.neg (.num 12))
    (.pow (.var 3) 2))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 84654) (.var 1)) (.add (.mul (.num 242568)
    (.var 2)) (.mul (.num 43020) (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 287316) (.var
    2)) (.mul (.num 93240) (.var 3))) (.var 2)) (.mul (.num 6600) (.pow (.var 3) 2)))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 183078) (.var 2)) (.mul (.num 74058) (.var 3))) (.var 2))
    (.mul (.num 11628) (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 68118) (.var 2)) (.mul (.num 25410) (.var 3))) (.var 2)) (.mul (.num 6705) (.pow (.var
    3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 14844) (.var 2))
    (.mul (.num 2892) (.var 3))) (.var 2)) (.mul (.num 1194) (.pow (.var 3) 2))) (.pow (.var 2)
    3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1746) (.var 2)) (.mul (.neg (.num 246))
    (.var 3))) (.var 2)) (.mul (.neg (.num 93)) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 84) (.var 2)) (.mul (.neg (.num 54)) (.var 3))) (.var 2))
    (.mul (.neg (.num 30)) (.pow (.var 3) 2))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 98784)
    (.var 1)) (.add (.mul (.num 321138) (.var 2)) (.mul (.num 60156) (.var 3)))) (.var 1)) (.add
    (.mul (.add (.mul (.num 439731) (.var 2)) (.mul (.num 153828) (.var 3))) (.var 2)) (.mul (.num
    11424) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 332064) (.var 2))
    (.mul (.num 150510) (.var 3))) (.var 2)) (.mul (.num 24996) (.pow (.var 3) 2))) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 151716) (.var 2)) (.mul (.num 69066) (.var 3)))
    (.var 2)) (.mul (.num 19614) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 42990) (.var 2)) (.mul (.num 13686) (.var 3))) (.var 2)) (.mul (.num
    6315) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    7329) (.var 2)) (.mul (.num 180) (.var 3))) (.var 2)) (.mul (.num 528) (.pow (.var 3) 2)))
    (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 672) (.var 2)) (.mul (.neg
    (.num 300)) (.var 3))) (.var 2)) (.mul (.neg (.num 93)) (.pow (.var 3) 2))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 24) (.var 2)) (.mul (.neg (.num 30)) (.var
    3))) (.var 2)) (.mul (.neg (.num 12)) (.pow (.var 3) 2))) (.pow (.var 2) 6)))) (.var 0)) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 80028) (.var 1)) (.add (.mul (.num 290070) (.var 2)) (.mul (.num 58932)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 449010) (.var 2)) (.mul (.num 174960)
    (.var 3))) (.var 2)) (.mul (.num 14058) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 390096) (.var 2)) (.mul (.num 206496) (.var 3))) (.var 2)) (.mul (.num 37944)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 209940) (.var 2))
    (.mul (.num 122808) (.var 3))) (.var 2)) (.mul (.num 40092) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 72534) (.var 2)) (.mul (.num 38046) (.var
    3))) (.var 2)) (.mul (.num 21312) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 15954) (.var 2)) (.mul (.num 5406) (.var 3))) (.var 2)) (.mul
    (.num 6315) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 2100) (.var 2)) (.mul (.num 72) (.var 3))) (.var 2)) (.mul (.num 1194) (.pow (.var 3)
    2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 141) (.var 2)) (.mul
    (.neg (.num 66)) (.var 3))) (.var 2)) (.mul (.num 165) (.pow (.var 3) 2))) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.neg (.num 6)) (.var 3)))
    (.var 2)) (.mul (.num 12) (.pow (.var 3) 2))) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 42822) (.var 1)) (.add (.mul (.num 170676) (.var 2)) (.mul (.num 38412)
    (.var 3)))) (.var 1)) (.add (.mul (.add (.mul (.num 293544) (.var 2)) (.mul (.num 130428)
    (.var 3))) (.var 2)) (.mul (.num 11700) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 286998) (.var 2)) (.mul (.num 181740) (.var 3))) (.var 2)) (.mul (.num 38358)
    (.pow (.var 3) 2))) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 176685) (.var 2))
    (.mul (.num 134784) (.var 3))) (.var 2)) (.mul (.num 52512) (.pow (.var 3) 2))) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 71412) (.var 2)) (.mul (.num 58122) (.var
    3))) (.var 2)) (.mul (.num 40092) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 18996) (.var 2)) (.mul (.num 15246) (.var 3))) (.var 2)) (.mul
    (.num 19614) (.pow (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 3192) (.var 2)) (.mul (.num 2562) (.var 3))) (.var 2)) (.mul (.num 6705) (.pow (.var 3)
    2))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 303) (.var 2)) (.mul
    (.num 288) (.var 3))) (.var 2)) (.mul (.num 1584) (.pow (.var 3) 2))) (.pow (.var 2) 6)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12) (.var 2)) (.mul (.num 18) (.var 3))) (.var
    2)) (.mul (.num 219) (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.mul (.num 12)
    (.pow (.var 3) 2)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 13608) (.var 1)) (.add (.mul (.num 58968) (.var 2)) (.mul (.num 14904) (.var 3)))) (.var
    1)) (.add (.mul (.add (.mul (.num 111132) (.var 2)) (.mul (.num 57024) (.var 3))) (.var 2))
    (.mul (.num 5832) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 120186)
    (.var 2)) (.mul (.num 91764) (.var 3))) (.var 2)) (.mul (.num 22680) (.pow (.var 3) 2))) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 82800) (.var 2)) (.mul (.num 81648) (.var
    3))) (.var 2)) (.mul (.num 38358) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 38016) (.var 2)) (.mul (.num 44892) (.var 3))) (.var 2)) (.mul
    (.num 37944) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 11724) (.var 2)) (.mul (.num 16464) (.var 3))) (.var 2)) (.mul (.num 24996) (.pow (.var
    3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 2352) (.var 2))
    (.mul (.num 4314) (.var 3))) (.var 2)) (.mul (.num 11628) (.pow (.var 3) 2))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 279) (.var 2)) (.mul (.num 822) (.var 3)))
    (.var 2)) (.mul (.num 3765) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 15) (.var 2)) (.mul (.num 102) (.var 3))) (.var 2)) (.mul (.num 774)
    (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.mul (.num 6) (.var 3))
    (.var 2)) (.mul (.num 84) (.pow (.var 3) 2))) (.pow (.var 2) 8))) (.var 1)) (.mul (.mul (.num
    3) (.pow (.var 3) 2)) (.pow (.var 2) 9)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 1944) (.var 1)) (.add (.mul (.num 9072) (.var 2)) (.mul (.num 2592) (.var 3))))
    (.var 1)) (.add (.mul (.add (.mul (.num 18522) (.var 2)) (.mul (.num 11016) (.var 3))) (.var
    2)) (.mul (.num 1296) (.pow (.var 3) 2)))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num
    21852) (.var 2)) (.mul (.num 20052) (.var 3))) (.var 2)) (.mul (.num 5832) (.pow (.var 3) 2)))
    (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 16560) (.var 2)) (.mul (.num 20700)
    (.var 3))) (.var 2)) (.mul (.num 11700) (.pow (.var 3) 2))) (.pow (.var 2) 2))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 8448) (.var 2)) (.mul (.num 13656) (.var 3))) (.var 2))
    (.mul (.num 14058) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 2931) (.var 2)) (.mul (.num 6228) (.var 3))) (.var 2)) (.mul (.num 11424) (.pow
    (.var 3) 2))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 672) (.var 2))
    (.mul (.num 2070) (.var 3))) (.var 2)) (.mul (.num 6600) (.pow (.var 3) 2))) (.pow (.var 2)
    5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 93) (.var 2)) (.mul (.num 498) (.var 3)))
    (.var 2)) (.mul (.num 2694) (.pow (.var 3) 2))) (.pow (.var 2) 6))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 6) (.var 2)) (.mul (.num 78) (.var 3))) (.var 2)) (.mul (.num 735)
    (.pow (.var 3) 2))) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.mul (.num 6) (.var 3))
    (.var 2)) (.mul (.num 120) (.pow (.var 3) 2))) (.pow (.var 2) 8))) (.var 1)) (.mul (.mul (.num
    9) (.pow (.var 3) 2)) (.pow (.var 2) 9))) (.var 1))))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.mul (.num 1) (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3) (.var 0)) (.add (.mul (.num 6) (.var 2))
    (.mul (.num 6) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 3) (.var 2)) (.mul (.neg
    (.num 6)) (.var 3))) (.var 2)) (.mul (.num 3) (.pow (.var 3) 2)))) (.var 0)) (.mul (.mul (.neg
    (.num 6)) (.pow (.var 3) 2)) (.var 2))) (.var 0)) (.mul (.mul (.num 3) (.pow (.var 3) 2))
    (.pow (.var 2) 2)))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9) (.var 0)) (.add (.mul (.num 99)
    (.var 2)) (.mul (.num 18) (.var 3)))) (.var 0)) (.add (.mul (.add (.mul (.num 318) (.var 2))
    (.mul (.num 138) (.var 3))) (.var 2)) (.mul (.num 9) (.pow (.var 3) 2)))) (.var 0)) (.mul
    (.add (.mul (.add (.mul (.num 456) (.var 2)) (.mul (.num 168) (.var 3))) (.var 2)) (.mul (.num
    57) (.pow (.var 3) 2))) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 321) (.var
    2)) (.mul (.neg (.num 54)) (.var 3))) (.var 2)) (.mul (.num 21) (.pow (.var 3) 2))) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 105) (.var 2)) (.mul (.neg (.num
    84)) (.var 3))) (.var 2)) (.mul (.neg (.num 78)) (.pow (.var 3) 2))) (.pow (.var 2) 3))) (.var
    0)) (.mul (.add (.mul (.num 12) (.pow (.var 2) 2)) (.mul (.num 21) (.pow (.var 3) 2))) (.pow
    (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.mul (.num 6) (.var 3)) (.var 2)) (.mul (.num 57)
    (.pow (.var 3) 2))) (.pow (.var 2) 5))) (.var 0)) (.mul (.mul (.num 9) (.pow (.var 3) 2))
    (.pow (.var 2) 6)))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullHigh05012.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullHigh05012.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullHigh05012.leading0 e g v + f * FullHigh05012.leading1 e g v +
        f^2 * FullHigh05012.remainder e f g v := by
  have hden : denominatorOne FullHigh05012.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullHigh05012.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullHigh05012.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 67108864 12 9 2) lhs =
      value (Encoding4.vars 67108864 12 9 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 67108864 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 9 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 9 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullHigh05012.source e f g v =
      FullHigh05012.leading0 e g v + f * FullHigh05012.leading1 e g v +
        f^2 * FullHigh05012.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 67108864 12 9 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullHigh050Encoded12

namespace SPR.N6.Tail.CoreEndpoint.FullHigh050
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition12 (e f g v : ℝ) :
    FullHigh05012.source e f g v =
      FullHigh05012.leading0 e g v + f * FullHigh05012.leading1 e g v +
        f^2 * FullHigh05012.remainder e f g v :=
  FullHigh050Encoded12.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullHigh050
