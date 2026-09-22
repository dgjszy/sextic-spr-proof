import SPR.N6.Algebra.Tail.OuterCore
import SPR.N6.Construction.OuterPolynomial
import SPR.N6.Construction.LowFirstCore

/-!
# Exact finite outer-coordinate source for the two remaining quadratic cores

The same actual width coordinates are nonnegative, including every zero-width
face. The polynomial is homogeneous of degree five and has exactly the complete
21-index expansion. Its coefficient signs are explicit remaining proof inputs;
no exported SOS table is silently accepted as a theorem.
-/
namespace SPR.N6
noncomputable section
open MvPolynomial
set_option Elab.async false
namespace OuterParameters

/-- The core polynomial uses the identical actual outer-coordinate reconstruction. -/
def corePolynomial (p : OuterParameters) (i : Bool) (m t : ℝ) :
    MvPolynomial (Fin 3) ℝ :=
  Tail.OuterHomogeneous.core i p.sumPolynomial p.firstPolynomial
    (MvPolynomial.C p.A) (MvPolynomial.C p.B) (MvPolynomial.C p.b)
    (MvPolynomial.C p.c) p.lastPolynomial (MvPolynomial.C m) (MvPolynomial.C t)

/-- Its complete outer-coordinate degree follows from the factored source. -/
theorem corePolynomial_homogeneous (p : OuterParameters) (i : Bool) (m t : ℝ) :
    (p.corePolynomial i m t).IsHomogeneous 5 :=
  Tail.OuterHomogeneous.core_homogeneous i _ _ _ _ _ _ _ _ _
    (linearPolynomial_homogeneous _ _ _) (linearPolynomial_homogeneous _ _ _)
    (linearPolynomial_homogeneous _ _ _) (isHomogeneous_C (Fin 3) _)
    (isHomogeneous_C (Fin 3) _) (isHomogeneous_C (Fin 3) _)
    (isHomogeneous_C (Fin 3) _) (isHomogeneous_C (Fin 3) _)
    (isHomogeneous_C (Fin 3) _)

/-- Evaluation is the same complete homogeneous core for arbitrary coordinates. -/
theorem corePolynomial_eval (p : OuterParameters) (i : Bool) (m t : ℝ) (x : Fin 3 → ℝ) :
    eval x (p.corePolynomial i m t) =
      Tail.OuterHomogeneous.core i
        (p.L*x 0+p.H*x 1+p.dq*x 2)
        ((p.A*p.L-p.J)*x 0+p.A*p.B*p.dq*x 1+p.A*p.B*p.L*x 2)
        p.A p.B p.b p.c
        (((p.c+p.f)*p.L-p.J)*x 0+p.b*p.c*p.dq*x 1+p.b*p.c*p.L*x 2) m t := by
  unfold corePolynomial
  rw [Tail.OuterHomogeneous.core_map (eval x)]
  simp only [sumPolynomial,firstPolynomial,lastPolynomial,linearPolynomial_eval,eval_C]

/-- All degree-five coefficients occur in the formal expansion. -/
theorem corePolynomial_expansion (p : OuterParameters) (i : Bool) (m t : ℝ) :
    p.corePolynomial i m t =
      ∑ d ∈ Tail.OuterIndices.indices, monomial d (coeff d (p.corePolynomial i m t)) :=
  Tail.OuterIndices.expansion _ (p.corePolynomial_homogeneous i m t)

/-- The actual coordinate reconstruction also recovers this smaller source. -/
theorem core_at_coordinates (p : OuterParameters)
    (he : 0 < p.e) (hf : 0 < p.f) (hg : 0 < p.g)
    (hw1 : 0 ≤ p.width1) (hw2 : 0 ≤ p.width2) (hw3 : 0 ≤ p.width3)
    (i : Bool) (m t : ℝ) :
    Tail.OuterHomogeneous.core i p.coordinateSum p.firstNumerator p.A p.B p.b p.c
      p.lastNumerator m t = 2*Tail.RootSource.core i p.a p.A p.B p.b p.c p.C m t := by
  obtain ⟨_,_,_,hS,ha,hC⟩ := p.coordinates he hf hg hw1 hw2 hw3
  change p.coordinateSum = 1 at hS
  change p.firstNumerator = p.a at ha
  change p.lastNumerator = p.C at hC
  rw [hS,ha,hC,Tail.OuterHomogeneous.core_at_one]

end OuterParameters
namespace EvenGeometry
variable {B : Box6}

/-- Evaluation at the actual three widths recovers twice the same candidate core. -/
theorem outer_core_polynomial_eval (q : EvenGeometry B) (i : Bool) (m t : ℝ) :
    eval ![q.outerParameters.x,q.outerParameters.y,q.outerParameters.z]
      (q.outerParameters.corePolynomial i m t) =
        2*Tail.RootSource.core i q.a q.A q.B q.b q.c q.C m t := by
  rw [OuterParameters.corePolynomial_eval]
  obtain ⟨hw1,hw2,hw3⟩ := q.outer_widths
  have hh := q.outerParameters.core_at_coordinates
    (sub_pos.mpr q.A_lt_B) (sub_pos.mpr q.B_lt_b) (sub_pos.mpr q.b_lt_c)
    hw1 hw2 hw3 i m t
  have hB' : q.outerParameters.B = q.B := by simp [outerParameters,OuterParameters.B]
  have hb : q.outerParameters.b = q.b := by
    simp [outerParameters,OuterParameters.b,OuterParameters.B]
  have hc : q.outerParameters.c = q.c := by
    simp [outerParameters,OuterParameters.c,OuterParameters.b,OuterParameters.B]
  simpa only [Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_two,hB',hb,hc,
    OuterParameters.coordinateSum,OuterParameters.firstNumerator,OuterParameters.lastNumerator]
    using hh

/-- Signs of every coefficient, at the same ratio and frequency, imply the actual core sign. -/
theorem core_nonnegative_of_outer_coefficients (q : EvenGeometry B) (i : Bool) (m t : ℝ)
    (h : ∀ d ∈ Tail.OuterIndices.indices,
      0 ≤ coeff d (q.outerParameters.corePolynomial i m t)) :
    0 ≤ Tail.RootSource.core i q.a q.A q.B q.b q.c q.C m t := by
  obtain ⟨hx,hy,hz⟩ := q.outer_coordinates_nonnegative
  have hc : ∀ j : Fin 3, 0 ≤ (![q.outerParameters.x,q.outerParameters.y,q.outerParameters.z] j) := by
    intro j
    fin_cases j <;> assumption
  have hh := Tail.OuterIndices.eval_nonnegative _
    (q.outerParameters.corePolynomial_homogeneous i m t) h _ hc
  rw [q.outer_core_polynomial_eval] at hh
  linarith only [hh]

/-- Complete finite-index endpoint coefficients give original-box synthesis.
The two frequency-uniform coefficient sign premises remain unproved here. -/
theorem synthesis_of_upper_core_coefficients (q : EvenGeometry B) (hB : B.RobustlyHurwitz)
    (hhigh : ∀ t : ℝ, q.b ≤ t → ∀ d ∈ Tail.OuterIndices.indices,
      0 ≤ coeff d (q.outerParameters.corePolynomial false ((q.c-q.A)/(q.b-q.B)) t))
    (hlow : ∀ t : ℝ, 0 ≤ t → t ≤ q.B → ∀ d ∈ Tail.OuterIndices.indices,
      0 ≤ coeff d (q.outerParameters.corePolynomial true ((q.c-q.A)/(q.b-q.B)) t)) :
    ∃ b : Polynomial ℝ, b.natDegree = 6 ∧
      ∀ a : Poly6, B.Contains a → FrequencySPR a.toPoly b :=
  q.synthesis_of_upper_ratio_cores hB
    (fun t ht => q.core_nonnegative_of_outer_coefficients false _ t (hhigh t ht))
    (fun t ht0 htB => q.core_nonnegative_of_outer_coefficients true _ t (hlow t ht0 htB))

end EvenGeometry
end
end SPR.N6
