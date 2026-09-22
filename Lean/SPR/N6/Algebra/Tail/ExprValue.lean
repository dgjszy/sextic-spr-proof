import SPR.N6.Algebra.Tail.TermEncoding
import SPR.N6.Algebra.Tail.NonnegativeExpression

/-! A computable arithmetic interpreter for integer expression certificates.
Its polynomial semantics is supplied by the existing sparse-list expansion;
closed certificates never need to evaluate that expansion. -/
namespace SPR.N6.Tail.ExprValue
open Lean.Grind.CommRing
open SPR.N6.Tail.TermEncoding

/-- Interpret integer arithmetic syntax in an arbitrary commutative ring. -/
def value {R : Type} [CommRing R] (vars : ℕ → R) : Expr → R
  | .num k => (k : R)
  | .natCast k => (k : R)
  | .intCast k => (k : R)
  | .var i => vars i
  | .neg e => -value vars e
  | .add e f => value vars e + value vars f
  | .sub e f => value vars e - value vars f
  | .mul e f => value vars e * value vars f
  | .pow e n => value vars e ^ n

lemma eval_expandPow_value {R : Type} [CommRing R] (vars : ℕ → R) (e : Expr)
    (he : evalPolyList vars (expand e) = value vars e) (n : ℕ) :
    evalPolyList vars (expandPow e n) = value vars e ^ n := by
  induction n with
  | zero => simp [expandPow, evalPolyList, termEval_one]
  | succ n ih =>
      simp only [expandPow]
      rw [evalPolyList_mulTerms, ih, he, pow_succ]

/-- Expansion is used as a semantic object, not as an instance computation. -/
theorem eval_expand_value {R : Type} [CommRing R] (vars : ℕ → R) (e : Expr) :
    evalPolyList vars (expand e) = value vars e := by
  induction e with
  | num k => simp [expand, evalPolyList, termEval, value]
  | natCast k => simp [expand, evalPolyList, termEval, value]
  | intCast k => simp [expand, evalPolyList, termEval, value]
  | var i => simp [expand, evalPolyList, termEval, value, Finsupp.prod_single_index]
  | neg e ih => rw [expand, evalPolyList_map_neg, ih, value]
  | add e f ihe ihf => rw [expand, evalPolyList_append, ihe, ihf, value]
  | sub e f ihe ihf =>
      rw [expand, evalPolyList_append, evalPolyList_map_neg, ihe, ihf, value,
        sub_eq_add_neg]
  | mul e f ihe ihf => rw [expand, evalPolyList_mulTerms, ihe, ihf, value]
  | pow e n ih => simpa only [expand, value] using eval_expandPow_value vars e ih n

/-- Evaluation of the integer polynomial represented by syntax. -/
theorem eval₂_polyList_expand {R : Type} [CommRing R] (vars : ℕ → R) (e : Expr) :
    MvPolynomial.eval₂ (Int.castRingHom R) vars (polyList (expand e)) =
      value vars e := by
  rw [eval₂_polyList, eval_expand_value]

/-- The standard four-leaf context; only indices zero through three are used. -/
def context4 {R : Type} (e f g v : R) : Context R :=
  .branch 2 (.branch 1 (.leaf e) (.leaf f)) (.branch 3 (.leaf g) (.leaf v))

/-- The variable assignment underlying `context4`. -/
def vars4 {R : Type} (e f g v : R) : ℕ → R :=
  fun i => Var.denote (context4 e f g v) i

/-- Connect the computable interpreter with Lean's arithmetic-expression semantics. -/
theorem value_eq_denote {R : Type} [CommRing R] (ctx : Context R) (q : Expr) :
    value (fun i => Var.denote ctx i) q = q.denote ctx := by
  induction q <;> simp_all [value, Expr.denote, denoteInt_eq]

/-- Convenient form for a four-variable real source. -/
theorem value_vars4_eq_denote {R : Type} [CommRing R] (e f g v : R) (q : Expr) :
    value (vars4 e f g v) q = q.denote (context4 e f g v) :=
  value_eq_denote _ _

/-- Translate integer-valued nonnegative syntax into general arithmetic syntax. -/
def ofNonnegative : NonnegativeExpression.Expr → Expr
  | .rational n _ => .num n
  | .e => .var 0
  | .f => .var 1
  | .g => .var 2
  | .v => .var 3
  | .add e f => .add (ofNonnegative e) (ofNonnegative f)
  | .mul e f => .mul (ofNonnegative e) (ofNonnegative f)
  | .pow e n => .pow (ofNonnegative e) n

/-- Denominator-one validation is performed on the finite syntax tree. -/
def denominatorOne : NonnegativeExpression.Expr → Bool
  | .rational _ d => d == 1
  | .e | .f | .g | .v => true
  | .add e f | .mul e f => denominatorOne e && denominatorOne f
  | .pow e _ => denominatorOne e

/-- The translation retains exactly the original real remainder. -/
theorem value_ofNonnegative (q : NonnegativeExpression.Expr)
    (hq : denominatorOne q = true) (e f g v : ℝ) :
    value (vars4 e f g v) (ofNonnegative q) = NonnegativeExpression.eval q e f g v := by
  induction q with
  | rational n d =>
      have hd : d = 1 := by simpa [denominatorOne] using hq
      subst d
      simp [ofNonnegative, value, NonnegativeExpression.eval]
  | e => rfl
  | f => rfl
  | g => rfl
  | v => rfl
  | add a b iha ihb =>
      have hh : denominatorOne a = true ∧ denominatorOne b = true := by
        simpa [denominatorOne] using hq
      exact congrArg₂ (· + ·) (iha hh.1) (ihb hh.2)
  | mul a b iha ihb =>
      have hh : denominatorOne a = true ∧ denominatorOne b = true := by
        simpa [denominatorOne] using hq
      exact congrArg₂ (· * ·) (iha hh.1) (ihb hh.2)
  | pow a n ih => exact congrArg (· ^ n) (ih hq)

end SPR.N6.Tail.ExprValue
