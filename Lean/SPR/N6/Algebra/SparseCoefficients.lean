import SPR.N6.Algebra.ExpressionCoefficients

/-!
# Zero-preserving sparse coefficient extraction

The algorithm removes only syntactic zero terms before polynomial normalization.
Its evaluation theorem checks this optimization independently of every endpoint
certificate. No coefficient list is truncated.
-/
namespace SPR.N6.CertificateExpression.Sparse
noncomputable section
open Lean.Grind.CommRing

def isZero : Expr → Bool
  | .num k => k == 0
  | _ => false

theorem isZero_sound (a : Expr) (ctx : Context ℝ) (h : isZero a = true) :
    a.denote ctx = 0 := by
  cases a <;> simp only [isZero,Bool.false_eq_true] at h
  case num k =>
    have hk : k = 0 := of_decide_eq_true h
    subst k
    rfl

/-- Addition drops syntactically zero summands only. -/
def smartAdd (a b : Expr) : Expr :=
  if isZero a then b else if isZero b then a else .add a b

/-- Multiplication drops a syntactically zero product only. -/
def smartMul (a b : Expr) : Expr :=
  if isZero a || isZero b then .num 0 else .mul a b

theorem smartAdd_denote (a b : Expr) (ctx : Context ℝ) :
    (smartAdd a b).denote ctx = a.denote ctx+b.denote ctx := by
  unfold smartAdd
  split
  · rw [isZero_sound a ctx ‹_›,zero_add]
  · split
    · rw [isZero_sound b ctx ‹_›,add_zero]
    · rfl

theorem smartMul_denote (a b : Expr) (ctx : Context ℝ) :
    (smartMul a b).denote ctx = a.denote ctx*b.denote ctx := by
  unfold smartMul
  split
  · rename_i h
    have hh : isZero a = true ∨ isZero b = true := by simpa using h
    rcases hh with h | h
    · rw [isZero_sound a ctx h,zero_mul]
      rfl
    · rw [isZero_sound b ctx h,mul_zero]
      rfl
  · rfl

/-- Add lists, retaining all positions when their lengths differ. -/
def coefficientsAdd : List Expr → List Expr → List Expr
  | [], ys => ys
  | xs, [] => xs
  | x::xs, y::ys => smartAdd x y :: coefficientsAdd xs ys

def coefficientsMul : List Expr → List Expr → List Expr
  | [], _ => []
  | x::xs, ys => coefficientsAdd (ys.map (smartMul x)) (.num 0 :: coefficientsMul xs ys)

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
      change (smartAdd a b).denote ctx+x*coefficientsEval (coefficientsAdd as bs) ctx x = _
      rw [smartAdd_denote]
      rw [ih]
      simp only [coefficientsEval]
      ring

theorem coefficientsMapMul_eval (a : Expr) (xs : List Expr) (ctx : Context ℝ) (x : ℝ) :
    coefficientsEval (xs.map (smartMul a)) ctx x = a.denote ctx*coefficientsEval xs ctx x := by
  induction xs with
  | nil => simp [coefficientsEval]
  | cons b bs ih =>
    change (smartMul a b).denote ctx+x*coefficientsEval (bs.map (smartMul a)) ctx x = _
    rw [smartMul_denote]
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

/-- Syntactic occurrence is used only to avoid expanding independent subexpressions. -/
def occurs (i : Nat) : Expr → Bool
  | .num _ | .natCast _ | .intCast _ => false
  | .var j => i == j
  | .add a b | .mul a b | .sub a b => occurs i a || occurs i b
  | .pow a _ | .neg a => occurs i a

/-- The complete formal coefficient extraction algorithm. -/
def coefficients (i : Nat) : Expr → List Expr
  | .num k => [.num k]
  | .natCast k => [.natCast k]
  | .intCast k => [.intCast k]
  | .var j => if i = j then [.num 0,.num 1] else [.var j]
  | .add a b => if occurs i a || occurs i b then
      coefficientsAdd (coefficients i a) (coefficients i b) else [.add a b]
  | .mul a b => if occurs i a || occurs i b then
      coefficientsMul (coefficients i a) (coefficients i b) else [.mul a b]
  | .pow a n => if occurs i a then coefficientsPow (coefficients i a) n else [.pow a n]
  | .neg a => if occurs i a then (coefficients i a).map Expr.neg else [.neg a]
  | .sub a b => if occurs i a || occurs i b then
      coefficientsAdd (coefficients i a) ((coefficients i b).map Expr.neg) else [.sub a b]

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
    rw [coefficients]
    split
    · rw [coefficientsAdd_eval,iha,ihb]
      rfl
    · simp [coefficientsEval]
  | mul a b iha ihb =>
    rw [coefficients]
    split
    · rw [coefficientsMul_eval,iha,ihb]
      rfl
    · simp [coefficientsEval]
  | pow a n ih =>
    rw [coefficients]
    split
    · rw [coefficientsPow_eval,ih]
      rfl
    · simp [coefficientsEval]
  | neg a ih =>
    rw [coefficients]
    split
    · rw [coefficientsMapNeg_eval,ih]
      rfl
    · simp [coefficientsEval]
  | sub a b iha ihb =>
    rw [coefficients]
    split
    · rw [coefficientsAdd_eval,coefficientsMapNeg_eval,iha,ihb]
      change a.denote ctx+ -b.denote ctx = a.denote ctx-b.denote ctx
      ring
    · simp [coefficientsEval]

/-- Complete coefficient comparison after sound elimination of zero operations. -/
theorem split_identity (i : Nat) (a b : Expr) (ctx : Context ℝ)
    (h : CertificateExpression.coefficientsCheck (coefficients i a) (coefficients i b) = true) :
    a.denote ctx = b.denote ctx := by
  have hh := CertificateExpression.coefficientsCheck_sound
    (coefficients i a) (coefficients i b) ctx (ctx.get i) h
  change coefficientsEval (coefficients i a) ctx (ctx.get i) =
    coefficientsEval (coefficients i b) ctx (ctx.get i) at hh
  simpa only [coefficients_eval] using hh

end
end SPR.N6.CertificateExpression.Sparse
