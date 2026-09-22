import SPR.N6.Algebra.Tail.CoreEndpoint.FullLow104Data
import SPR.N6.Algebra.Tail.SyntaxCertificate

/-! Integer certificate for the A^0 layer of FullLow104.
The same syntax is linked to both real source expressions. All computational
bounds and the encoded integer equality are checked by ordinary kernel reduction. -/
namespace SPR.N6.Tail.CoreEndpoint.FullLow104Encoded0
open Lean.Grind.CommRing
open SPR.N6.Tail.ExprValue
open SPR.N6.Tail.ExprCertificate
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

private def lhs : Expr :=
  (.mul (.mul (.num 1) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 30) (.var 1)) (.mul (.num 10) (.var 2)))
    (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.num 20) (.var 3)) (.num 320)) (.var 1)) (.mul
    (.add (.mul (.num 20) (.var 3)) (.num 246)) (.var 2))) (.var 1)) (.mul (.num 36) (.pow (.var
    2) 2)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 20) (.var
    3)) (.num 276)) (.var 3)) (.num 1537)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 50) (.var
    3)) (.num 452)) (.var 3)) (.num 1916)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 40) (.var 3)) (.num 196)) (.var 3)) (.num 681)) (.pow (.var 2) 2))) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 20)) (.var 3)) (.num 62)) (.pow (.var 2)
    3)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    238) (.var 3)) (.num 1654)) (.var 3)) (.num 4472)) (.var 1)) (.mul (.add (.mul (.add (.mul
    (.num 714) (.var 3)) (.num 3780)) (.var 3)) (.num 8038)) (.var 2))) (.var 1)) (.mul (.add
    (.mul (.add (.mul (.num 774) (.var 3)) (.num 3006)) (.var 3)) (.num 4942)) (.pow (.var 2) 2)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 358) (.var 3)) (.num 1008)) (.var 3)) (.num
    1224)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 60) (.var 3)) (.num
    128)) (.var 3)) (.num 108)) (.pow (.var 2) 4)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 1182) (.var 3)) (.num 5642)) (.var 3))
    (.num 8919)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 4137) (.var 3)) (.num 16538)) (.var
    3)) (.num 21762)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 5599) (.var 3))
    (.num 18618)) (.var 3)) (.num 20112)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 3655) (.var 3)) (.num 10174)) (.var 3)) (.num 8900)) (.pow (.var 2) 3))) (.var 1))
    (.mul (.add (.mul (.add (.mul (.num 1151) (.var 3)) (.num 2756)) (.var 3)) (.num 1953)) (.pow
    (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 140) (.var 3)) (.num 304)) (.var
    3)) (.num 182)) (.pow (.var 2) 5)))) (.var 0)) (.add (.mul (.add (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 3209) (.var 3)) (.num 11970)) (.var 3))
    (.num 12773)) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 12836) (.var 3)) (.num 42694))
    (.var 3)) (.num 40306)) (.var 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 20698) (.var
    3)) (.num 61372)) (.var 3)) (.num 50994)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 17168) (.var 3)) (.num 45636)) (.var 3)) (.num 33344)) (.pow (.var 2) 3)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 7701) (.var 3)) (.num 18606)) (.var 3)) (.num
    12043)) (.pow (.var 2) 4))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1764) (.var 3))
    (.num 3962)) (.var 3)) (.num 2318)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add
    (.mul (.num 160) (.var 3)) (.num 344)) (.var 3)) (.num 188)) (.pow (.var 2) 6)))) (.var 0))
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.num 5186) (.var 3)) (.num 16074)) (.var 3)) (.num 12942)) (.var 1)) (.mul
    (.add (.mul (.add (.mul (.num 23337) (.var 3)) (.num 67330)) (.var 3)) (.num 50430)) (.var
    2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 43504) (.var 3)) (.num 116904)) (.var 3))
    (.num 81312)) (.pow (.var 2) 2))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 43358) (.var
    3)) (.num 108870)) (.var 3)) (.num 70384)) (.pow (.var 2) 3))) (.var 1)) (.mul (.add (.mul
    (.add (.mul (.num 24810) (.var 3)) (.num 58588)) (.var 3)) (.num 35363)) (.pow (.var 2) 4)))
    (.var 1)) (.mul (.add (.mul (.add (.mul (.num 8083) (.var 3)) (.num 18124)) (.var 3)) (.num
    10300)) (.pow (.var 2) 5))) (.var 1)) (.mul (.add (.mul (.add (.mul (.num 1368) (.var 3))
    (.num 2946)) (.var 3)) (.num 1595)) (.pow (.var 2) 6))) (.var 1)) (.mul (.add (.mul (.add
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
    (.mul (.add (.var 0) (.var 1)) (.add (.add (.var 0) (.var 1)) (.var 2))) 4))

private def leading0Expr : Expr :=
  (.mul (.mul (.mul (.var 0) (.var 2)) (.pow (.add (.var 0) (.var 2)) 6)) (.add (.mul (.mul (.num
    1) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 2) (.pow (.var 0) 2)) (.mul
    (.add (.mul (.add (.mul (.num 2) (.var 3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8) (.var 3)) (.num 24)) (.var 3)) (.num 20))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 10) (.var 3)) (.num 28))
    (.var 3)) (.num 18)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4)
    (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow (.var 2) 5))) (.var 0))) (.pow (.var 0) 4))
    (.mul (.mul (.num 4) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num
    2) (.var 0)) (.mul (.num 4) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 2) (.var
    3)) (.num 4)) (.var 3)) (.num 4)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul (.add (.mul
    (.num 8) (.var 3)) (.num 16)) (.var 3)) (.num 8)) (.pow (.var 2) 3))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 10) (.var 3)) (.num 20)) (.var 3)) (.num 10)) (.pow (.var 2) 4)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 4) (.var 3)) (.num 8)) (.var 3)) (.num 4)) (.pow
    (.var 2) 5))) (.pow (.var 0) 2))) (.pow (.var 0) 3))))

private def leading1Expr : Expr :=
  (.mul (.pow (.add (.var 0) (.var 2)) 3) (.add (.mul (.mul (.num 1) (.mul (.add (.mul (.add (.mul
    (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 12)
    (.var 0)) (.mul (.add (.mul (.num 8) (.var 3)) (.num 134)) (.var 2))) (.var 0)) (.mul (.add
    (.mul (.add (.mul (.num 16) (.var 3)) (.num 84)) (.var 3)) (.num 430)) (.pow (.var 2) 2)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 190) (.var 3)) (.num 554)) (.var 3)) (.num 892))
    (.pow (.var 2) 3))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 802) (.var 3)) (.num 2072))
    (.var 3)) (.num 1796)) (.pow (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1674)
    (.var 3)) (.num 4172)) (.var 3)) (.num 2886)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 1918) (.var 3)) (.num 4624)) (.var 3)) (.num 2878)) (.pow (.var 2) 6)))
    (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1216) (.var 3)) (.num 2794)) (.var 3)) (.num
    1608)) (.pow (.var 2) 7))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 392) (.var 3)) (.num
    844)) (.var 3)) (.num 452)) (.pow (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num
    48) (.var 3)) (.num 96)) (.var 3)) (.num 48)) (.pow (.var 2) 9))) (.pow (.var 0) 2))) (.pow
    (.var 0) 3)) (.mul (.mul (.num 3) (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.add
    (.mul (.add (.mul (.add (.mul (.add (.mul (.add (.mul (.num 6) (.var 0)) (.mul (.add (.mul
    (.num 4) (.var 3)) (.num 74)) (.var 2))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 8)
    (.var 3)) (.num 44)) (.var 3)) (.num 275)) (.pow (.var 2) 2))) (.var 0)) (.mul (.add (.mul
    (.add (.mul (.num 96) (.var 3)) (.num 270)) (.var 3)) (.num 551)) (.pow (.var 2) 3))) (.var
    0)) (.mul (.add (.mul (.add (.mul (.num 409) (.var 3)) (.num 932)) (.var 3)) (.num 831)) (.pow
    (.var 2) 4))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 867) (.var 3)) (.num 1830)) (.var
    3)) (.num 1091)) (.pow (.var 2) 5))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 1018) (.var
    3)) (.num 2084)) (.var 3)) (.num 1089)) (.pow (.var 2) 6))) (.var 0)) (.mul (.add (.mul (.add
    (.mul (.num 670) (.var 3)) (.num 1354)) (.var 3)) (.num 685)) (.pow (.var 2) 7))) (.var 0))
    (.mul (.add (.mul (.add (.mul (.num 229) (.var 3)) (.num 460)) (.var 3)) (.num 231)) (.pow
    (.var 2) 8))) (.var 0)) (.mul (.add (.mul (.add (.mul (.num 31) (.var 3)) (.num 62)) (.var 3))
    (.num 31)) (.pow (.var 2) 9))) (.pow (.var 0) 3))) (.pow (.var 0) 2))))

private def rhs : Expr :=
  .add (.add leading0Expr (.mul (.var 1) leading1Expr))
    (.mul (.pow (.var 1) 2) (ofNonnegative FullLow1040.remainderData))

private theorem lhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) lhs = FullLow1040.source e f g v := by
  rw [value_vars4_eq_denote]
  rfl

private theorem rhs_bridge (e f g v : ℝ) :
    value (vars4 e f g v) rhs =
      FullLow1040.leading0 e g v + f * FullLow1040.leading1 e g v +
        f^2 * FullLow1040.remainder e f g v := by
  have hden : denominatorOne FullLow1040.remainderData = true := by decide +kernel
  have hrem := value_ofNonnegative FullLow1040.remainderData hden e f g v
  change value (vars4 e f g v) leading0Expr +
    f * value (vars4 e f g v) leading1Expr +
    f^2 * value (vars4 e f g v) (ofNonnegative FullLow1040.remainderData) = _
  rw [hrem, value_vars4_eq_denote, value_vars4_eq_denote]
  rfl

private theorem integer_point :
    value (Encoding4.vars 17179869184 18 12 2) lhs =
      value (Encoding4.vars 17179869184 18 12 2) rhs := by
  decide +kernel


private theorem syntax_mass_bound :
    SyntaxBounds.syntaxMass lhs + SyntaxBounds.syntaxMass rhs < 17179869184 := by
  decide +kernel

private theorem syntax_variable_bound :
    SyntaxBounds.usesBelow lhs 4 ∧ SyntaxBounds.usesBelow rhs 4 := by
  constructor <;> unfold SyntaxBounds.usesBelow <;> decide +kernel

private theorem lhs_degree_bound :
    SyntaxBounds.syntaxDegree lhs 1 ≤ 18 ∧
    SyntaxBounds.syntaxDegree lhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree lhs 3 ≤ 2 := by
  decide +kernel

private theorem rhs_degree_bound :
    SyntaxBounds.syntaxDegree rhs 1 ≤ 18 ∧
    SyntaxBounds.syntaxDegree rhs 2 ≤ 12 ∧
    SyntaxBounds.syntaxDegree rhs 3 ≤ 2 := by
  decide +kernel

/-- The encoded equality, with its complete bounds, proves the original real layer. -/
theorem decomposition (e f g v : ℝ) :
    FullLow1040.source e f g v =
      FullLow1040.leading0 e g v + f * FullLow1040.leading1 e g v +
        f^2 * FullLow1040.remainder e f g v := by
  have h := SyntaxCertificate.value_eq_of_syntax_bounds lhs rhs 17179869184 18 12 2
    (by decide +kernel) syntax_mass_bound syntax_variable_bound
    lhs_degree_bound rhs_degree_bound integer_point (vars4 e f g v)
  rw [lhs_bridge, rhs_bridge] at h
  exact h

end SPR.N6.Tail.CoreEndpoint.FullLow104Encoded0

namespace SPR.N6.Tail.CoreEndpoint.FullLow104
/-- Named layer interface for assembling the complete source identity. -/
theorem decomposition0 (e f g v : ℝ) :
    FullLow1040.source e f g v =
      FullLow1040.leading0 e g v + f * FullLow1040.leading1 e g v +
        f^2 * FullLow1040.remainder e f g v :=
  FullLow104Encoded0.decomposition e f g v
end SPR.N6.Tail.CoreEndpoint.FullLow104
