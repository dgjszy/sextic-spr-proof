import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow005Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^0 layer of FullLow005.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow005Encoded0
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 1)) (.mul (.num 2) (.var 2))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 54)) (.var 1)) (.mul (.add (.mul
    (.num 4) (.var 3)) (.num 42)) (.var 2))) (.var 1)) (.mul (.num 6) (.pow (.var 2) 2)))) (.var
    0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 48))
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
    (.var 3)) (.num 14)) (.var 3)) (.num 7)) (.pow (.var 2) 7))) (.pow (.var 1) 2)))) (.pow (.mul
    (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 5))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.mul (.mul (.num 1)
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.var 0)) (.mul
    (.num 4) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var
    3)) (.num 4)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3))
    (.num 16)) (.var 3)) (.num 8)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 10) (.var 3)) (.num 20)) (.var 3)) (.num 10)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 4) (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.pow
    (.var 0) 2))) (.pow (.var 0) 4)))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.mul (.mul (.num 1) (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var
    0)) (.mul (.add (.mul (.num 4) (.var 3)) (.num 74)) (.var 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 8) (.var 3)) (.num 44)) (.var 3)) (.num 275)) (.pow (.var 2) 2))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 96) (.var 3)) (.num 270)) (.var 3)) (.num 551)) (.pow
    (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 409) (.var 3)) (.num 932)) (.var
    3)) (.num 831)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 867) (.var
    3)) (.num 1830)) (.var 3)) (.num 1091)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 1018) (.var 3)) (.num 2084)) (.var 3)) (.num 1089)) (.pow (.var 2) 6))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 670) (.var 3)) (.num 1354)) (.var 3)) (.num 685)) (.pow
    (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 229) (.var 3)) (.num 460)) (.var
    3)) (.num 231)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 31) (.var
    3)) (.num 62)) (.var 3)) (.num 31)) (.pow (.var 2) 9))) (.pow (.var 0) 3))) (.pow (.var 0)
    3)))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow0050.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow0050.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow0050.leading0 e g v + f * FullLow0050.leading1 e g v +
        f^2 * FullLow0050.remainder e f g v := by
  have hden : denominatorOne FullLow0050.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow0050.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow0050.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 8589934592 19 12 2) lhs =
      value (Encoding4.vars 8589934592 19 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 8589934592 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 19 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 19 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow0050.source e f g v =
      FullLow0050.leading0 e g v + f * FullLow0050.leading1 e g v +
        f^2 * FullLow0050.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 8589934592 19 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow005Encoded0

namespace SPR.N6.Tail.CoreEndpoint.FullLow005
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition0 (e f g v : ℝ) :
    FullLow0050.source e f g v =
      FullLow0050.leading0 e g v + f * FullLow0050.leading1 e g v +
        f^2 * FullLow0050.remainder e f g v :=
  FullLow005Encoded0.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow005
