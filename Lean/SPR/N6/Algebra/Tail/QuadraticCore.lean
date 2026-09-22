import SPR.N6.Algebra.Tail.RootSource

/-!
# A quadratic sufficient source for both remaining frequency tails

The full source separates into a nonnegative baseline residual and frequency
times a quadratic core. The core retains the baseline square term as well as
the zero direction; the disproved zero-only strengthening is not used.
-/
namespace SPR.N6.Tail.RootSource
noncomputable section

/-- The full zero direction together with the remaining baseline square. -/
def core {R : Type*} [CommRing R] (i : Bool) (a A B b c C m t : R) : R :=
  den1 a b c*den2 A B C*weight a A B b c C m*(t-(if i then c else A))^2+
    mixture a A B b c C*zero i a A B b c C m t

/-- Exact separation of the complete source, before any sign argument. -/
theorem source_eq_core {R : Type*} [CommRing R] (i : Bool) (a A B b c C m t : R) :
    source i a A B b c C m t =
      weight a A B b c C m*m*(t-(if i then B else b))^2*residual i a A B b c C t+
      t*core i a A B b c C m t := by
  unfold source core
  ring

/-- The core is defined as an actual frequency polynomial, with no sampled degree assumption. -/
def corePolynomial (i : Bool) (a A B b c C m : ℝ) : Polynomial ℝ :=
  Polynomial.C (den1 a b c*den2 A B C*weight a A B b c C m)*
      (Polynomial.X-Polynomial.C (if i then c else A))^2+
    Polynomial.C (mixture a A B b c C)*
      (Polynomial.C ((if i then LowerZero.q10 else LowerZero.q00)
          (A-a) (B-A) (b-B) (c-b) (C-c) m)+
        Polynomial.C ((if i then LowerZero.q11 else LowerZero.q01)
          (A-a) (B-A) (b-B) (c-b) (C-c) m)*(Polynomial.X-Polynomial.C B)+
        Polynomial.C ((if i then LowerZero.q12 else LowerZero.q02)
          (A-a) (B-A) (b-B) (c-b) (C-c) m)*(Polynomial.X-Polynomial.C B)^2)

/-- Evaluation includes every real frequency, including zero and both contact endpoints. -/
theorem corePolynomial_eval (i : Bool) (a A B b c C m t : ℝ) :
    (corePolynomial i a A B b c C m).eval t = core i a A B b c C m t := by
  cases i <;> simp [corePolynomial,core,zero,LowerZero.q0,LowerZero.q1]

/-- The smaller sufficient source has frequency degree at most two. -/
theorem corePolynomial_degree (i : Bool) (a A B b c C m : ℝ) :
    (corePolynomial i a A B b c C m).natDegree ≤ 2 := by
  unfold corePolynomial
  compute_degree!

end
end SPR.N6.Tail.RootSource
