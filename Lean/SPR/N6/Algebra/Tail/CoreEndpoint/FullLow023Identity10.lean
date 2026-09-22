import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow023Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^10 layer of FullLow023.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow023Encoded10
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.add (.mul (.mul (.num 14) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.num 45) (.var 1)) (.mul (.num 15) (.var 2))) (.var
    0)) (.add (.mul (.add (.mul (.num 525) (.var 1)) (.mul (.num 366) (.var 2))) (.var 1)) (.mul
    (.num 51) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 2784) (.var
    1)) (.mul (.num 2919) (.var 2))) (.var 1)) (.mul (.num 804) (.pow (.var 2) 2))) (.var 1))
    (.mul (.num 39) (.pow (.var 2) 3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 8664) (.var 1)) (.mul (.num 12063) (.var 2))) (.var 1)) (.mul (.num 4953) (.pow (.var 2)
    2))) (.var 1)) (.mul (.num 459) (.pow (.var 2) 3))) (.var 1)) (.mul (.neg (.num 45)) (.pow
    (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    17631) (.var 1)) (.mul (.num 31125) (.var 2))) (.var 1)) (.mul (.num 17784) (.pow (.var 2)
    2))) (.var 1)) (.mul (.num 3054) (.pow (.var 2) 3))) (.var 1)) (.mul (.neg (.num 261)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.neg (.num 75)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 24606) (.var 1)) (.mul (.num
    54576) (.var 2))) (.var 1)) (.mul (.num 43500) (.pow (.var 2) 2))) (.var 1)) (.mul (.num
    14550) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 1581) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.neg (.num 84)) (.pow (.var 2) 5))) (.var 1)) (.mul (.neg (.num 15)) (.pow (.var 2) 6))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.num 23058) (.var 1)) (.mul (.num 63774) (.var 2))) (.var 1)) (.mul (.num 69486) (.pow (.var
    2) 2))) (.var 1)) (.mul (.num 38730) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 12390) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.num 2541) (.pow (.var 2) 5))) (.var 1)) (.mul (.num 342) (.pow
    (.var 2) 6))) (.var 1)) (.mul (.num 21) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12960) (.var 1))
    (.mul (.num 43740) (.var 2))) (.var 1)) (.mul (.num 61794) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.num 48744) (.pow (.var 2) 3))) (.var 1)) (.mul (.num 24396) (.pow (.var 2) 4))) (.var 1))
    (.mul (.num 8247) (.pow (.var 2) 5))) (.var 1)) (.mul (.num 1821) (.pow (.var 2) 6))) (.var
    1)) (.mul (.num 219) (.pow (.var 2) 7))) (.var 1)) (.mul (.num 9) (.pow (.var 2) 8)))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 3240) (.var 1)) (.mul (.num 12960) (.var 2))) (.var 1)) (.mul (.num 22482)
    (.pow (.var 2) 2))) (.var 1)) (.mul (.num 22626) (.pow (.var 2) 3))) (.var 1)) (.mul (.num
    14883) (.pow (.var 2) 4))) (.var 1)) (.mul (.num 6705) (.pow (.var 2) 5))) (.var 1)) (.mul
    (.num 2022) (.pow (.var 2) 6))) (.var 1)) (.mul (.num 366) (.pow (.var 2) 7))) (.var 1)) (.mul
    (.num 30) (.pow (.var 2) 8))) (.var 1)))) (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0)
    (.var 1)) (.var 2)))) (.mul (.num 10) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 33) (.var
    1)) (.mul (.num 11) (.var 2))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var
    3)) (.num 452)) (.var 1)) (.mul (.add (.mul (.num 6) (.var 3)) (.num 319)) (.var 2))) (.var
    1)) (.mul (.num 45) (.pow (.var 2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.num 78) (.var 3)) (.num 2853)) (.var 1)) (.mul (.add (.mul (.num 102) (.var 3)) (.num
    3036)) (.var 2))) (.var 1)) (.mul (.add (.mul (.num 18) (.var 3)) (.num 857)) (.pow (.var 2)
    2))) (.var 1)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.num 42)) (.pow (.var 2) 3))))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 498) (.var 3))
    (.num 10902)) (.var 1)) (.mul (.add (.mul (.num 822) (.var 3)) (.num 15454)) (.var 2))) (.var
    1)) (.mul (.add (.mul (.num 288) (.var 3)) (.num 6536)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.neg (.num 66)) (.var 3)) (.num 626)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.neg (.num 30)) (.var 3)) (.neg (.num 70))) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2070) (.var 3)) (.num
    28336)) (.var 1)) (.mul (.add (.mul (.num 4314) (.var 3)) (.num 50924)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.num 2562) (.var 3)) (.num 29852)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.num 72) (.var 3)) (.num 5194)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 300)) (.var 3)) (.neg (.num 586))) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.neg (.num 54)) (.var 3)) (.neg (.num 168))) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6228) (.var 3)) (.num
    53460)) (.var 1)) (.mul (.add (.mul (.num 16464) (.var 3)) (.num 120292)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.num 15246) (.var 3)) (.num 97318)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.num 5406) (.var 3)) (.num 32162)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.num 180) (.var 3)) (.num 2484)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 246)) (.var 3)) (.neg (.num 648))) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.neg
    (.num 30)) (.var 3)) (.neg (.num 84))) (.pow (.var 2) 6)))) (.var 0)) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 13656) (.var 3))
    (.num 74884)) (.var 1)) (.mul (.add (.mul (.num 44892) (.var 3)) (.num 210060)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.num 58122) (.var 3)) (.num 231948)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.num 38046) (.var 3)) (.num 129104)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.num 13686) (.var 3)) (.num 39474)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.num 2892) (.var 3)) (.num 7290)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul
    (.num 396) (.var 3)) (.num 946)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.num 30)
    (.var 3)) (.num 70)) (.pow (.var 2) 7)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 20700) (.var 3)) (.num
    76044)) (.var 1)) (.mul (.add (.mul (.num 81648) (.var 3)) (.num 262008)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.num 134784) (.var 3)) (.num 378648)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.num 122808) (.var 3)) (.num 304488)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.num 69066) (.var 3)) (.num 154342)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.num 25410) (.var 3)) (.num 53122)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.num
    6144) (.var 3)) (.num 12464)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.num 882) (.var
    3)) (.num 1750)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.num 54) (.var 3)) (.num
    102)) (.pow (.var 2) 8)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 20052) (.var 3)) (.num
    52248)) (.var 1)) (.mul (.add (.mul (.num 91764) (.var 3)) (.num 215688)) (.var 2))) (.var 1))
    (.mul (.add (.mul (.num 181740) (.var 3)) (.num 387684)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.num 206496) (.var 3)) (.num 404640)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add
    (.mul (.num 150510) (.var 3)) (.num 276264)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul
    (.num 74058) (.var 3)) (.num 130364)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.num
    24714) (.var 3)) (.num 42472)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.num 5304)
    (.var 3)) (.num 8926)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.num 636) (.var 3))
    (.num 1033)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.num 30) (.var 3)) (.num 45))
    (.pow (.var 2) 9)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 11016) (.var 3))
    (.num 21384)) (.var 1)) (.mul (.add (.mul (.num 57024) (.var 3)) (.num 103032)) (.var 2)))
    (.var 1)) (.mul (.add (.mul (.num 130428) (.var 3)) (.num 220740)) (.pow (.var 2) 2))) (.var
    1)) (.mul (.add (.mul (.num 174960) (.var 3)) (.num 280152)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.num 153828) (.var 3)) (.num 236124)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.num 93240) (.var 3)) (.num 139052)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.num 39390) (.var 3)) (.num 57598)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul
    (.num 11274) (.var 3)) (.num 16190)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.num
    2022) (.var 3)) (.num 2832)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.num 192) (.var
    3)) (.num 257)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.num 6) (.var 3)) (.num 7))
    (.pow (.var 2) 10)))) (.var 0)) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2592)
    (.var 3)) (.num 3888)) (.var 1)) (.mul (.add (.mul (.num 14904) (.var 3)) (.num 21384)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.num 38412) (.var 3)) (.num 52944)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.num 58932) (.var 3)) (.num 78504)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.num 60156) (.var 3)) (.num 78008)) (.pow (.var 2) 4))) (.var 1)) (.mul
    (.add (.mul (.num 43020) (.var 3)) (.num 54684)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add
    (.mul (.num 21906) (.var 3)) (.num 27428)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul
    (.num 7830) (.var 3)) (.num 9672)) (.pow (.var 2) 7))) (.var 1)) (.mul (.add (.mul (.num 1872)
    (.var 3)) (.num 2277)) (.pow (.var 2) 8))) (.var 1)) (.mul (.add (.mul (.num 270) (.var 3))
    (.num 322)) (.pow (.var 2) 9))) (.var 1)) (.mul (.add (.mul (.num 18) (.var 3)) (.num 21))
    (.pow (.var 2) 10))) (.var 1)))))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.add (.add (.mul
    (.num 4) (.add (.mul (.add (.mul (.add (.mul (.num 17) (.var 0)) (.mul (.neg (.num 21)) (.var
    2))) (.var 0)) (.mul (.add (.mul (.neg (.num 6)) (.var 3)) (.neg (.num 3))) (.pow (.var 2)
    2))) (.var 0)) (.mul (.add (.mul (.num 6) (.var 3)) (.num 7)) (.pow (.var 2) 3)))) (.mul (.mul
    (.num 20) (.add (.mul (.add (.mul (.num 3) (.var 0)) (.mul (.neg (.num 6)) (.var 2))) (.var
    0)) (.mul (.num 3) (.pow (.var 2) 2)))) (.pow (.var 0) 1))) (.mul (.num 6) (.add (.mul (.add
    (.mul (.add (.mul (.num 14) (.var 0)) (.mul (.neg (.num 21)) (.var 2))) (.var 0)) (.mul (.mul
    (.neg (.num 6)) (.var 3)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.num 6) (.var 3))
    (.num 7)) (.pow (.var 2) 3))))) (.mul (.mul (.num 36) (.add (.mul (.add (.mul (.num 3) (.var
    0)) (.mul (.neg (.num 6)) (.var 2))) (.var 0)) (.mul (.num 3) (.pow (.var 2) 2)))) (.pow (.var
    0) 1))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.add (.add (.add (.add (.mul (.num 1) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 69) (.var 0))
    (.mul (.add (.mul (.num 6) (.var 3)) (.num 490)) (.var 2))) (.var 0)) (.mul (.num 440) (.pow
    (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.neg (.num 84)) (.var 3)) (.neg (.num 439))) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.neg (.num 54)) (.var 3)) (.neg (.num 227))) (.pow
    (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.num 168) (.var 3)) (.num 388)) (.pow (.var 2) 5)))
    (.var 0)) (.mul (.add (.mul (.num 138) (.var 3)) (.num 218)) (.pow (.var 2) 6))) (.var 0))
    (.mul (.add (.mul (.num 18) (.var 3)) (.num 21)) (.pow (.var 2) 7)))) (.mul (.mul (.num 3)
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9) (.var 0))
    (.mul (.num 57) (.var 2))) (.var 0)) (.mul (.num 21) (.pow (.var 2) 2))) (.var 0)) (.mul (.neg
    (.num 78)) (.pow (.var 2) 3))) (.var 0)) (.mul (.num 21) (.pow (.var 2) 4))) (.var 0)) (.mul
    (.num 57) (.pow (.var 2) 5))) (.var 0)) (.mul (.num 9) (.pow (.var 2) 6)))) (.pow (.var 0)
    1))) (.mul (.num 3) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.num 120) (.var 0)) (.mul (.add (.mul (.num 12) (.var 3)) (.num 845)) (.var 2)))
    (.var 0)) (.mul (.num 709) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.neg (.num 168))
    (.var 3)) (.neg (.num 839))) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.neg (.num 108))
    (.var 3)) (.neg (.num 349))) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.num 336) (.var
    3)) (.num 776)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.num 276) (.var 3)) (.num
    424)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.num 36) (.var 3)) (.num 42)) (.pow
    (.var 2) 7))))) (.mul (.mul (.num 12) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 18) (.var 0)) (.mul (.num 114) (.var 2))) (.var 0)) (.mul (.num 42)
    (.pow (.var 2) 2))) (.var 0)) (.mul (.neg (.num 156)) (.pow (.var 2) 3))) (.var 0)) (.mul
    (.num 42) (.pow (.var 2) 4))) (.var 0)) (.mul (.num 114) (.pow (.var 2) 5))) (.var 0)) (.mul
    (.num 18) (.pow (.var 2) 6)))) (.pow (.var 0) 1))) (.mul (.num 3) (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 51) (.var 0)) (.mul (.add
    (.mul (.num 6) (.var 3)) (.num 355)) (.var 2))) (.var 0)) (.mul (.num 269) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.neg (.num 84)) (.var 3)) (.neg (.num 400))) (.pow (.var 2) 3)))
    (.var 0)) (.mul (.add (.mul (.neg (.num 54)) (.var 3)) (.neg (.num 122))) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.num 168) (.var 3)) (.num 388)) (.pow (.var 2) 5))) (.var 0))
    (.mul (.add (.mul (.num 138) (.var 3)) (.num 206)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add
    (.mul (.num 18) (.var 3)) (.num 21)) (.pow (.var 2) 7))))) (.mul (.mul (.num 15) (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 9) (.var 0)) (.mul (.num 57)
    (.var 2))) (.var 0)) (.mul (.num 21) (.pow (.var 2) 2))) (.var 0)) (.mul (.neg (.num 78))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.num 21) (.pow (.var 2) 4))) (.var 0)) (.mul (.num 57)
    (.pow (.var 2) 5))) (.var 0)) (.mul (.num 9) (.pow (.var 2) 6)))) (.pow (.var 0) 1))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow02310.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow02310.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow02310.leading0 e g v + f * FullLow02310.leading1 e g v +
        f^2 * FullLow02310.remainder e f g v := by
  have hden : denominatorOne FullLow02310.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow02310.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow02310.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 1073741824 11 10 1) lhs =
      value (Encoding4.vars 1073741824 11 10 1) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 1073741824 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 11 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 1 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 11 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 10 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 1 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow02310.source e f g v =
      FullLow02310.leading0 e g v + f * FullLow02310.leading1 e g v +
        f^2 * FullLow02310.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 1073741824 11 10 1
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow023Encoded10

namespace SPR.N6.Tail.CoreEndpoint.FullLow023
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition10 (e f g v : ℝ) :
    FullLow02310.source e f g v =
      FullLow02310.leading0 e g v + f * FullLow02310.leading1 e g v +
        f^2 * FullLow02310.remainder e f g v :=
  FullLow023Encoded10.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow023
