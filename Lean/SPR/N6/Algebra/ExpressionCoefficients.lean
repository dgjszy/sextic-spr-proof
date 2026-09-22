import SPR.N6.Algebra.NonnegativeExpression

/-!
# Exact coefficient splitting for large static identities

A polynomial expression is split in one selected variable. Every coefficient
comparison still uses Lean's verified ring normalizer. The recursive soundness
proof covers all coefficients, including trailing zero coefficients, so this
optimization does not omit a degree or rely on an external coefficient table.
-/
namespace SPR.N6.CertificateExpression
noncomputable section
open Lean.Grind.CommRing

/-- Horner evaluation of a complete coefficient list. -/
def coefficientsEval (ps : List Expr) (ctx : Context ℝ) (x : ℝ) : ℝ :=
  match ps with
  | [] => 0
  | p::ps => p.denote ctx+x*coefficientsEval ps ctx x

/-- Add lists, retaining all positions when their lengths differ. -/
def coefficientsAdd : List Expr → List Expr → List Expr
  | [], ys => ys
  | xs, [] => xs
  | x::xs, y::ys => .add x y :: coefficientsAdd xs ys

def coefficientsMul : List Expr → List Expr → List Expr
  | [], _ => []
  | x::xs, ys => coefficientsAdd (ys.map (.mul x)) (.num 0 :: coefficientsMul xs ys)

def coefficientsPow (xs : List Expr) : Nat → List Expr
  | 0 => [.num 1]
  | n+1 => coefficientsMul xs (coefficientsPow xs n)

theorem coefficientsAdd_eval (xs ys : List Expr) (ctx : Context ℝ) (x : ℝ) :
    coefficientsEval (coefficientsAdd xs ys) ctx x =
      coefficientsEval xs ctx x+coefficientsEval ys ctx x := by
  induction xs generalizing ys with
  | nil => simp [coefficientsAdd,coefficientsEval]
  | cons a as ih =>
    cases ys with
    | nil => simp [coefficientsAdd,coefficientsEval]
    | cons b bs =>
      change (a.denote ctx+b.denote ctx)+x*coefficientsEval (coefficientsAdd as bs) ctx x = _
      rw [ih]
      simp only [coefficientsEval]
      ring

theorem coefficientsMapMul_eval (a : Expr) (xs : List Expr) (ctx : Context ℝ) (x : ℝ) :
    coefficientsEval (xs.map (.mul a)) ctx x = a.denote ctx*coefficientsEval xs ctx x := by
  induction xs with
  | nil => simp [coefficientsEval]
  | cons b bs ih =>
    change a.denote ctx*b.denote ctx+x*coefficientsEval (bs.map (.mul a)) ctx x = _
    rw [ih]
    simp only [coefficientsEval]
    ring

theorem coefficientsMapNeg_eval (xs : List Expr) (ctx : Context ℝ) (x : ℝ) :
    coefficientsEval (xs.map Expr.neg) ctx x = -coefficientsEval xs ctx x := by
  induction xs with
  | nil => simp [coefficientsEval]
  | cons a as ih =>
    change -a.denote ctx+x*coefficientsEval (as.map Expr.neg) ctx x = _
    rw [ih]
    simp only [coefficientsEval]
    ring

theorem coefficientsMul_eval (xs ys : List Expr) (ctx : Context ℝ) (x : ℝ) :
    coefficientsEval (coefficientsMul xs ys) ctx x =
      coefficientsEval xs ctx x*coefficientsEval ys ctx x := by
  induction xs with
  | nil => simp [coefficientsMul,coefficientsEval]
  | cons a as ih =>
    rw [coefficientsMul,coefficientsAdd_eval,coefficientsMapMul_eval]
    change a.denote ctx*coefficientsEval ys ctx x+
      (0+x*coefficientsEval (coefficientsMul as ys) ctx x) = _
    rw [ih]
    simp only [coefficientsEval]
    ring

theorem coefficientsPow_eval (xs : List Expr) (n : Nat) (ctx : Context ℝ) (x : ℝ) :
    coefficientsEval (coefficientsPow xs n) ctx x = (coefficientsEval xs ctx x)^n := by
  induction n with
  | zero =>
    change (1 : ℝ)+x*0 = 1
    ring
  | succ n ih => rw [coefficientsPow,coefficientsMul_eval,ih,pow_succ]; ring

/-- The complete formal coefficient extraction algorithm. -/
def coefficients (i : Nat) : Expr → List Expr
  | .num k => [.num k]
  | .natCast k => [.natCast k]
  | .intCast k => [.intCast k]
  | .var j => if i = j then [.num 0,.num 1] else [.var j]
  | .add a b => coefficientsAdd (coefficients i a) (coefficients i b)
  | .mul a b => coefficientsMul (coefficients i a) (coefficients i b)
  | .pow a n => coefficientsPow (coefficients i a) n
  | .neg a => (coefficients i a).map Expr.neg
  | .sub a b => coefficientsAdd (coefficients i a) ((coefficients i b).map Expr.neg)

/-- No coefficient, degree, or trailing term is discarded by extraction. -/
theorem coefficients_eval (i : Nat) (p : Expr) (ctx : Context ℝ) :
    coefficientsEval (coefficients i p) ctx (ctx.get i) = p.denote ctx := by
  induction p with
  | num k => simp [coefficients,coefficientsEval]
  | natCast k => simp [coefficients,coefficientsEval]
  | intCast k => simp [coefficients,coefficientsEval]
  | var j =>
    by_cases h : i = j
    · subst j
      simp only [coefficients,ite_true]
      change (0 : ℝ)+(ctx.get i)*(1+(ctx.get i)*0) = ctx.get i
      ring
    · simp [coefficients,h,coefficientsEval]
  | add a b iha ihb =>
    rw [coefficients,coefficientsAdd_eval,iha,ihb]
    rfl
  | mul a b iha ihb =>
    rw [coefficients,coefficientsMul_eval,iha,ihb]
    rfl
  | pow a n ih =>
    rw [coefficients,coefficientsPow_eval,ih]
    rfl
  | neg a ih =>
    rw [coefficients,coefficientsMapNeg_eval,ih]
    rfl
  | sub a b iha ihb =>
    rw [coefficients,coefficientsAdd_eval,coefficientsMapNeg_eval,iha,ihb]
    change a.denote ctx+ -b.denote ctx = a.denote ctx-b.denote ctx
    ring

/-- Kernel-oriented versions of the same verified polynomial normalization and equality test. -/
def polynomialCheck (a b : Expr) : Bool := a.toPoly_k.beq' b.toPoly_k

theorem polynomialCheck_sound (a b : Expr) (ctx : Context ℝ)
    (h : polynomialCheck a b = true) : a.denote ctx = b.denote ctx := by
  have hp : a.toPoly_k = b.toPoly_k := by simpa only [polynomialCheck,Poly.beq'_eq] using h
  rw [Expr.toPoly_k_eq_toPoly,Expr.toPoly_k_eq_toPoly] at hp
  have hh := congrArg (Poly.denote ctx) hp
  simpa only [Expr.denote_toPoly] using hh

/-- Check that every remaining trailing coefficient is exactly zero. -/
def coefficientsZeroCheck : List Expr → Bool
  | [] => true
  | x::xs => polynomialCheck x (.num 0) && coefficientsZeroCheck xs

theorem coefficientsZeroCheck_sound (xs : List Expr) (ctx : Context ℝ) (x : ℝ)
    (h : coefficientsZeroCheck xs = true) : coefficientsEval xs ctx x = 0 := by
  induction xs with
  | nil => rfl
  | cons a as ih =>
    have hh : polynomialCheck a (.num 0) = true ∧ coefficientsZeroCheck as = true := by
      simpa only [coefficientsZeroCheck,Bool.and_eq_true] using h
    have ha := polynomialCheck_sound a (.num 0) ctx hh.1
    have ht := ih hh.2
    change a.denote ctx+x*coefficientsEval as ctx x = 0
    change a.denote ctx = (0 : ℝ) at ha
    rw [ha,ht]
    ring

/-- Compare all coefficients using structural recursion, padding the shorter list with zeroes. -/
def coefficientsCheck : List Expr → List Expr → Bool
  | [], ys => coefficientsZeroCheck ys
  | x::xs, [] => polynomialCheck x (.num 0) && coefficientsCheck xs []
  | x::xs, y::ys => polynomialCheck x y && coefficientsCheck xs ys

/-- Kernel-checked coefficient identities imply equality at every real argument. -/
theorem coefficientsCheck_sound (xs ys : List Expr) (ctx : Context ℝ) (x : ℝ)
    (h : coefficientsCheck xs ys = true) :
    coefficientsEval xs ctx x = coefficientsEval ys ctx x := by
  induction xs generalizing ys with
  | nil =>
    exact (coefficientsZeroCheck_sound ys ctx x h).symm
  | cons a as ih =>
    cases ys with
    | nil =>
      have hh : polynomialCheck a (.num 0) = true ∧ coefficientsCheck as [] = true := by
        simpa only [coefficientsCheck,Bool.and_eq_true] using h
      have ha := polynomialCheck_sound a (.num 0) ctx hh.1
      have ht := ih [] hh.2
      change a.denote ctx+x*coefficientsEval as ctx x = 0
      change a.denote ctx = (0 : ℝ) at ha
      change coefficientsEval as ctx x = (0 : ℝ) at ht
      rw [ha,ht]
      ring
    | cons b bs =>
      have hh : polynomialCheck a b = true ∧ coefficientsCheck as bs = true := by
        simpa only [coefficientsCheck,Bool.and_eq_true] using h
      have hab := polynomialCheck_sound a b ctx hh.1
      have ht := ih bs hh.2
      simp only [coefficientsEval,hab,ht]

/-- Sound splitting before normalization, with no extra assumptions on the expressions. -/
theorem split_identity (i : Nat) (a b : Expr) (ctx : Context ℝ)
    (h : coefficientsCheck (coefficients i a) (coefficients i b) = true) :
    a.denote ctx = b.denote ctx := by
  have hh := coefficientsCheck_sound (coefficients i a) (coefficients i b) ctx (ctx.get i) h
  simpa only [coefficients_eval] using hh

end
end SPR.N6.CertificateExpression
