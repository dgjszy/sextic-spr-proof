import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Positivity

/-!
# Nonnegative sparse four-variable polynomials

A remainder is a finite list of monomials with natural numerator and
denominator. Its sign follows uniformly from the nonnegative parameter
values. This removes repeated large arithmetic proof search, while every
identity connecting such a remainder to a source is checked separately.
-/
namespace SPR.N6.Tail.NonnegativeTerms
noncomputable section

/-- A nonnegative rational coefficient and four natural powers. -/
structure Term where
  numerator : ℕ
  denominator : ℕ
  ePower : ℕ
  fPower : ℕ
  gPower : ℕ
  vPower : ℕ

/-- Real interpretation of one monomial. A zero denominator also evaluates to zero. -/
def Term.eval (t : Term) (e f g v : ℝ) : ℝ :=
  (t.numerator : ℝ)/(t.denominator : ℝ)*e^t.ePower*f^t.fPower*g^t.gPower*v^t.vPower

/-- No coefficient sign premise is needed: it follows from the data types. -/
theorem Term.nonnegative (t : Term) {e f g v : ℝ}
    (he : 0 ≤ e) (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) :
    0 ≤ t.eval e f g v := by
  unfold Term.eval
  positivity

/-- Finite sparse polynomial evaluation. -/
def eval : List Term → ℝ → ℝ → ℝ → ℝ → ℝ
  | [], _, _, _, _ => 0
  | t :: ts, e, f, g, v => t.eval e f g v + eval ts e f g v

/-- Every finite remainder is nonnegative, including all coordinate faces. -/
theorem nonnegative (ts : List Term) {e f g v : ℝ}
    (he : 0 ≤ e) (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) :
    0 ≤ eval ts e f g v := by
  induction ts with
  | nil => exact le_rfl
  | cons t ts ih => exact add_nonneg (t.nonnegative he hf hg hv) ih

end
end SPR.N6.Tail.NonnegativeTerms
