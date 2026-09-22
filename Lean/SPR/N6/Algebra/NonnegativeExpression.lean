import SPR.N6.Algebra.EndpointBlocks
import Init.Grind.Ring.CommSolver

/-!
# Kernel-reducible polynomial certificate expressions

Large endpoint certificates are stored as static expression trees. Equality is
proved using Lean's own verified commutative-ring normalizer, and the sign of a
remainder or sum of squares follows from the structural theorem below. No
native evaluation, external solver, or additional mathematical axiom is used.
-/
namespace SPR.N6.CertificateExpression
noncomputable section
open Lean.Grind.CommRing

/-- A deliberately small sufficient sign checker for nonnegative coefficients and squares. -/
def nonnegative : Expr → Bool
  | .num k => decide (0 ≤ k)
  | .natCast _ => true
  | .intCast k => decide (0 ≤ k)
  | .var _ => true
  | .add a b => nonnegative a && nonnegative b
  | .mul a b => nonnegative a && nonnegative b
  | .pow a k => if k = 2 then true else nonnegative a
  | .neg _ => false
  | .sub _ _ => false

/-- The structural sign checker is sound for every nonnegative variable assignment. -/
theorem denote_nonneg (ctx : Context ℝ) (hctx : ∀ i, 0 ≤ ctx.get i)
    (e : Expr) (h : nonnegative e = true) : 0 ≤ e.denote ctx := by
  induction e with
  | num k =>
    have hk : 0 ≤ k := of_decide_eq_true h
    change 0 ≤ denoteInt k
    rw [denoteInt_eq]
    exact_mod_cast hk
  | natCast k =>
    change (0 : ℝ) ≤ (k : ℝ)
    positivity
  | intCast k =>
    have hk : 0 ≤ k := of_decide_eq_true h
    change (0 : ℝ) ≤ (k : ℝ)
    exact_mod_cast hk
  | var i => exact hctx i
  | add a b iha ihb =>
    have hh : nonnegative a = true ∧ nonnegative b = true := by
      simpa only [nonnegative,Bool.and_eq_true] using h
    exact add_nonneg (iha hh.1) (ihb hh.2)
  | mul a b iha ihb =>
    have hh : nonnegative a = true ∧ nonnegative b = true := by
      simpa only [nonnegative,Bool.and_eq_true] using h
    exact mul_nonneg (iha hh.1) (ihb hh.2)
  | pow a k ih =>
    by_cases hk : k = 2
    · subst k
      exact sq_nonneg (a.denote ctx)
    · have ha : nonnegative a = true := by simpa [nonnegative,hk] using h
      exact pow_nonneg (ih ha) k
  | neg a ih => simp [nonnegative] at h
  | sub a b iha ihb => simp [nonnegative] at h

/-- Five polynomial variables, with a defined nonnegative default for all other indices. -/
def context (A e f g v : ℝ) : Context ℝ :=
  .branch 1 (.leaf A) (.branch 2 (.leaf e) (.branch 3 (.leaf f)
    (.branch 4 (.leaf g) (.leaf v))))

theorem context_nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : ∀ i, 0 ≤ (context A e f g v).get i := by
  intro i
  rw [Lean.RArray.get_eq_getImpl]
  simp only [context, Lean.RArray.getImpl]
  split
  · exact hA
  · split
    · exact he
    · split
      · exact hf
      · split
        · exact hg
        · exact hv

/-- Static variable substitution, used for the two closed gap-order cones. -/
def substitute (σ : Nat → Expr) : Expr → Expr
  | .num k => .num k
  | .natCast k => .natCast k
  | .intCast k => .intCast k
  | .var i => σ i
  | .add a b => .add (substitute σ a) (substitute σ b)
  | .mul a b => .mul (substitute σ a) (substitute σ b)
  | .pow a k => .pow (substitute σ a) k
  | .neg a => .neg (substitute σ a)
  | .sub a b => .sub (substitute σ a) (substitute σ b)

/-- Substitution preserves the complete evaluation, not just a coefficient sample. -/
theorem denote_substitute (σ : Nat → Expr) (ctx ctx' : Context ℝ)
    (hctx : ∀ i, (σ i).denote ctx = ctx'.get i) (e : Expr) :
    (substitute σ e).denote ctx = e.denote ctx' := by
  induction e with
  | num k => rfl
  | natCast k => rfl
  | intCast k => rfl
  | var i => exact hctx i
  | add a b iha ihb =>
    change (substitute σ a).denote ctx+(substitute σ b).denote ctx =
      a.denote ctx'+b.denote ctx'
    rw [iha,ihb]
  | mul a b iha ihb =>
    change (substitute σ a).denote ctx*(substitute σ b).denote ctx =
      a.denote ctx'*b.denote ctx'
    rw [iha,ihb]
  | pow a k ih =>
    change ((substitute σ a).denote ctx)^k = (a.denote ctx')^k
    rw [ih]
  | neg a ih =>
    change -(substitute σ a).denote ctx = -a.denote ctx'
    rw [ih]
  | sub a b iha ihb =>
    change (substitute σ a).denote ctx-(substitute σ b).denote ctx =
      a.denote ctx'-b.denote ctx'
    rw [iha,ihb]

/-- Substitute e+g for the second variable. -/
def leftCone (i : Nat) : Expr := if i = 1 then .add (.var 1) (.var 3) else .var i

/-- Substitute e+g for the fourth variable. -/
def rightCone (i : Nat) : Expr := if i = 3 then .add (.var 1) (.var 3) else .var i

theorem denote_leftCone (p : Expr) (A e f g v : ℝ) :
    (substitute leftCone p).denote (context A e f g v) =
      p.denote (context A (e+g) f g v) := by
  apply denote_substitute
  intro i
  by_cases h : i = 1
  · subst i
    rfl
  · simp only [leftCone,h,ite_false]
    change (context A e f g v).get i = (context A (e+g) f g v).get i
    simp only [Lean.RArray.get_eq_getImpl,context,Lean.RArray.getImpl]
    split_ifs <;> first | rfl | omega

theorem denote_rightCone (p : Expr) (A e f g v : ℝ) :
    (substitute rightCone p).denote (context A e f g v) =
      p.denote (context A e f (e+g) v) := by
  apply denote_substitute
  intro i
  by_cases h : i = 3
  · subst i
    rfl
  · simp only [rightCone,h,ite_false]
    change (context A e f g v).get i = (context A e f (e+g) v).get i
    simp only [Lean.RArray.get_eq_getImpl,context,Lean.RArray.getImpl]
    split_ifs <;> first | rfl | omega

end
end SPR.N6.CertificateExpression
