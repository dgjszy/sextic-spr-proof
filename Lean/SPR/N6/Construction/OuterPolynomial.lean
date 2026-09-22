import SPR.N6.Algebra.Tail.OuterDegree
import SPR.N6.Algebra.Tail.OuterIndices
import SPR.N6.Construction.OuterSource

/-!
# A complete finite polynomial source for the actual three width coordinates

The source is constructed in a polynomial ring, evaluated back at the actual
width coordinates, and expanded over exactly twenty-one outer monomials. The
coefficient nonnegativity conditions are explicit unresolved inputs. They are
not replaced by signs at sampled frequencies or at unphysical vertices.
-/
namespace SPR.N6
noncomputable section
open MvPolynomial

namespace OuterParameters

/-- A three-variable homogeneous linear form with real coefficients. -/
def linearPolynomial (r0 r1 r2 : ℝ) : MvPolynomial (Fin 3) ℝ :=
  MvPolynomial.C r0*X 0+MvPolynomial.C r1*X 1+MvPolynomial.C r2*X 2

theorem linearPolynomial_homogeneous (r0 r1 r2 : ℝ) :
    (linearPolynomial r0 r1 r2).IsHomogeneous 1 :=
  (((isHomogeneous_X ℝ (0 : Fin 3)).C_mul r0).add
    ((isHomogeneous_X ℝ (1 : Fin 3)).C_mul r1)).add
    ((isHomogeneous_X ℝ (2 : Fin 3)).C_mul r2)

theorem linearPolynomial_eval (r0 r1 r2 : ℝ) (x : Fin 3 → ℝ) :
    eval x (linearPolynomial r0 r1 r2) = r0*x 0+r1*x 1+r2*x 2 := by
  simp [linearPolynomial]

def sumPolynomial (p : OuterParameters) : MvPolynomial (Fin 3) ℝ :=
  linearPolynomial p.L p.H p.dq

def firstPolynomial (p : OuterParameters) : MvPolynomial (Fin 3) ℝ :=
  linearPolynomial (p.A*p.L-p.J) (p.A*p.B*p.dq) (p.A*p.B*p.L)

def lastPolynomial (p : OuterParameters) : MvPolynomial (Fin 3) ℝ :=
  linearPolynomial ((p.c+p.f)*p.L-p.J) (p.b*p.c*p.dq) (p.b*p.c*p.L)

/-- The complete source polynomial; only the outer width coordinates are indeterminates. -/
def sourcePolynomial (p : OuterParameters) (i : Bool) (m t : ℝ) :
    MvPolynomial (Fin 3) ℝ :=
  Tail.OuterHomogeneous.source i p.sumPolynomial p.firstPolynomial
    (MvPolynomial.C p.A) (MvPolynomial.C p.B) (MvPolynomial.C p.b) (MvPolynomial.C p.c) p.lastPolynomial (MvPolynomial.C m) (MvPolynomial.C t)

/-- Its homogeneous degree is formally derived from the source factors. -/
theorem sourcePolynomial_homogeneous (p : OuterParameters) (i : Bool) (m t : ℝ) :
    (p.sourcePolynomial i m t).IsHomogeneous 5 :=
  Tail.OuterHomogeneous.source_homogeneous i _ _ _ _ _ _ _ _ _
    (linearPolynomial_homogeneous _ _ _) (linearPolynomial_homogeneous _ _ _)
    (linearPolynomial_homogeneous _ _ _) (isHomogeneous_C (Fin 3) _) (isHomogeneous_C (Fin 3) _)
    (isHomogeneous_C (Fin 3) _) (isHomogeneous_C (Fin 3) _) (isHomogeneous_C (Fin 3) _) (isHomogeneous_C (Fin 3) _)

/-- Evaluation recovers the same homogeneous source, at arbitrary real coordinates. -/
theorem sourcePolynomial_eval (p : OuterParameters) (i : Bool) (m t : ℝ) (x : Fin 3 → ℝ) :
    eval x (p.sourcePolynomial i m t) =
      Tail.OuterHomogeneous.source i
        (p.L*x 0+p.H*x 1+p.dq*x 2)
        ((p.A*p.L-p.J)*x 0+p.A*p.B*p.dq*x 1+p.A*p.B*p.L*x 2)
        p.A p.B p.b p.c
        (((p.c+p.f)*p.L-p.J)*x 0+p.b*p.c*p.dq*x 1+p.b*p.c*p.L*x 2) m t := by
  unfold sourcePolynomial
  rw [Tail.OuterHomogeneous.source_map (eval x)]
  simp only [sumPolynomial,firstPolynomial,lastPolynomial,linearPolynomial_eval,eval_C]

/-- No degree-five coefficient is absent from the formal source expansion. -/
theorem sourcePolynomial_expansion (p : OuterParameters) (i : Bool) (m t : ℝ) :
    p.sourcePolynomial i m t =
      ∑ d ∈ Tail.OuterIndices.indices, monomial d (coeff d (p.sourcePolynomial i m t)) :=
  Tail.OuterIndices.expansion _ (p.sourcePolynomial_homogeneous i m t)

end OuterParameters

namespace EvenGeometry
variable {B : Box6}

/-- The formal polynomial evaluates to the same actual quotient, with its explicit factor two. -/
theorem outer_polynomial_eval (q : EvenGeometry B) (i : Bool) (m t : ℝ) :
    eval ![q.outerParameters.x,q.outerParameters.y,q.outerParameters.z]
      (q.outerParameters.sourcePolynomial i m t) = 2*(q.ratioQuotientPoly i t).eval m := by
  rw [OuterParameters.sourcePolynomial_eval]
  have hs := q.outer_source_eq i m t
  have hB : q.outerParameters.B = q.B := by simp [outerParameters,OuterParameters.B]
  have hb : q.outerParameters.b = q.b := by
    simp [outerParameters,OuterParameters.b,OuterParameters.B]
  have hc : q.outerParameters.c = q.c := by
    simp [outerParameters,OuterParameters.c,OuterParameters.b,OuterParameters.B]
  simpa only [Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_two,hB,hb,hc,
    OuterParameters.coordinateSum,OuterParameters.firstNumerator,OuterParameters.lastNumerator]
    using hs

/-- A complete coefficient sign certificate gives the actual quotient sign at that same ratio. -/
theorem quotient_nonnegative_of_outer_coefficients (q : EvenGeometry B) (i : Bool) (m t : ℝ)
    (h : ∀ d ∈ Tail.OuterIndices.indices,
      0 ≤ coeff d (q.outerParameters.sourcePolynomial i m t)) :
    0 ≤ (q.ratioQuotientPoly i t).eval m := by
  obtain ⟨hx,hy,hz⟩ := q.outer_coordinates_nonnegative
  have hc : ∀ j : Fin 3, 0 ≤ (![q.outerParameters.x,q.outerParameters.y,q.outerParameters.z] j) := by
    intro j
    fin_cases j <;> assumption
  have hh := Tail.OuterIndices.eval_nonnegative _
    (q.outerParameters.sourcePolynomial_homogeneous i m t) h _ hc
  rw [q.outer_polynomial_eval] at hh
  linarith only [hh]

end EvenGeometry
end
end SPR.N6
