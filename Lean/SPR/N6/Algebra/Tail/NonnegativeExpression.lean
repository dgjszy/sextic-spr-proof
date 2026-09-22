import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Positivity

/-!
# Factored expressions with nonnegative rational coefficients

This small syntax keeps the Horner factors of a remainder during normalization.
Its interpretation is nonnegative on the entire closed parameter orthant. A
separate polynomial identity must still connect each remainder to its source.
-/
namespace SPR.N6.Tail.NonnegativeExpression
noncomputable section

/-- Rational constants, the four parameters, and positivity-preserving operations. -/
inductive Expr where
  | rational (numerator denominator : ℕ)
  | e | f | g | v
  | add (left right : Expr)
  | mul (left right : Expr)
  | pow (base : Expr) (exponent : ℕ)

/-- The exact real value; a zero denominator is interpreted by real division. -/
def eval : Expr → ℝ → ℝ → ℝ → ℝ → ℝ
  | .rational n d, _, _, _, _ => (n : ℝ) / (d : ℝ)
  | .e, e, _, _, _ => e
  | .f, _, f, _, _ => f
  | .g, _, _, g, _ => g
  | .v, _, _, _, v => v
  | .add a b, e, f, g, v => eval a e f g v + eval b e f g v
  | .mul a b, e, f, g, v => eval a e f g v * eval b e f g v
  | .pow a n, e, f, g, v => eval a e f g v ^ n

/-- All data constructors preserve nonnegativity, including zero parameter faces. -/
theorem nonnegative (q : Expr) {e f g v : ℝ}
    (he : 0 ≤ e) (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) :
    0 ≤ eval q e f g v := by
  induction q with
  | rational n d => simp only [eval]; positivity
  | e => exact he
  | f => exact hf
  | g => exact hg
  | v => exact hv
  | add a b ha hb => exact add_nonneg ha hb
  | mul a b ha hb => exact mul_nonneg ha hb
  | pow a n ha => exact pow_nonneg ha n

end
end SPR.N6.Tail.NonnegativeExpression
