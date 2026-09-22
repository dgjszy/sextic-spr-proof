import SPR.N6.Preliminaries.EvenGeometry

/-!
# Exact nonnegative coordinates from the three actual even widths

The three homogeneous coordinates reconstruct the actual outer roots, including
zero-width faces. The enlarged simplex can contain negative first-root vertices;
no assertion that all its vertices are physical roots is made.
-/
namespace SPR.N6
noncomputable section

/-- Inner positive gaps and the two outer roots before imposing the width constraints. -/
structure OuterParameters where
  a : ℝ
  A : ℝ
  e : ℝ
  f : ℝ
  g : ℝ
  C : ℝ

namespace OuterParameters

def B (p : OuterParameters) : ℝ := p.A + p.e
def b (p : OuterParameters) : ℝ := p.B + p.f
def c (p : OuterParameters) : ℝ := p.b + p.g
def L (p : OuterParameters) : ℝ := p.e + 2 * p.f + p.g
def J (p : OuterParameters) : ℝ := p.f * (p.f + p.g)
def M (p : OuterParameters) : ℝ := (p.e + p.f) * (p.e + p.f + p.g)
def dq (p : OuterParameters) : ℝ := p.b * p.c - p.A * p.B
def H (p : OuterParameters) : ℝ := p.b * p.c * (p.A + p.B) - (p.b + p.c) * p.A * p.B

def width1 (p : OuterParameters) : ℝ := p.C - p.a - p.L
def width2 (p : OuterParameters) : ℝ := (p.b + p.c) * p.a + p.dq - (p.A + p.B) * p.C
def width3 (p : OuterParameters) : ℝ := p.A * p.B * p.C - p.b * p.c * p.a

def x (p : OuterParameters) : ℝ := p.width3 / (p.M * p.J)
def y (p : OuterParameters) : ℝ := p.width1 / (p.M * p.J)
def z (p : OuterParameters) : ℝ := p.width2 / (p.M * p.J)

theorem dq_eq (p : OuterParameters) : p.dq = p.A * p.L + p.M := by
  simp only [dq, L, M, B, b, c]
  ring

theorem H_eq (p : OuterParameters) : p.H = p.A ^ 2 * p.L + (2 * p.A + p.e) * p.M := by
  simp only [H, L, M, B, b, c]
  ring

/-- The three exact linear reconstruction identities before division. -/
theorem reconstruction_identities (p : OuterParameters) :
    p.L * p.width3 + p.H * p.width1 + p.dq * p.width2 = p.M * p.J ∧
    (p.A * p.L - p.J) * p.width3 + p.A * p.B * p.dq * p.width1 +
      p.A * p.B * p.L * p.width2 = p.a * (p.M * p.J) ∧
    ((p.c + p.f) * p.L - p.J) * p.width3 + p.b * p.c * p.dq * p.width1 +
      p.b * p.c * p.L * p.width2 = p.C * (p.M * p.J) := by
  simp only [L, J, M, H, dq, width1, width2, width3, B, b, c]
  constructor
  · ring
  · constructor <;> ring

/-- All physical widths give nonnegative coordinates which reconstruct the same actual a,C. -/
theorem coordinates (p : OuterParameters) (he : 0 < p.e) (hf : 0 < p.f) (hg : 0 < p.g)
    (hw1 : 0 ≤ p.width1) (hw2 : 0 ≤ p.width2) (hw3 : 0 ≤ p.width3) :
    0 ≤ p.x ∧ 0 ≤ p.y ∧ 0 ≤ p.z ∧
    p.L * p.x + p.H * p.y + p.dq * p.z = 1 ∧
    (p.A * p.L - p.J) * p.x + p.A * p.B * p.dq * p.y + p.A * p.B * p.L * p.z = p.a ∧
    ((p.c + p.f) * p.L - p.J) * p.x + p.b * p.c * p.dq * p.y +
      p.b * p.c * p.L * p.z = p.C := by
  have hd : 0 < p.M * p.J := by unfold M J; positivity
  obtain ⟨hS, ha, hC⟩ := p.reconstruction_identities
  refine ⟨div_nonneg hw3 hd.le, div_nonneg hw1 hd.le, div_nonneg hw2 hd.le, ?_, ?_, ?_⟩
  · change p.L * (p.width3 / _) + p.H * (p.width1 / _) + p.dq * (p.width2 / _) = 1
    calc
      _ = (p.L * p.width3 + p.H * p.width1 + p.dq * p.width2) / (p.M * p.J) := by ring
      _ = 1 := by rw [hS]; exact div_self (ne_of_gt hd)
  · change (p.A * p.L - p.J) * (p.width3 / _) + p.A * p.B * p.dq * (p.width1 / _) +
        p.A * p.B * p.L * (p.width2 / _) = p.a
    calc
      _ = ((p.A * p.L - p.J) * p.width3 + p.A * p.B * p.dq * p.width1 +
        p.A * p.B * p.L * p.width2) / (p.M * p.J) := by ring
      _ = p.a := by rw [ha]; exact mul_div_cancel_right₀ _ (ne_of_gt hd)
  · change ((p.c + p.f) * p.L - p.J) * (p.width3 / _) +
        p.b * p.c * p.dq * (p.width1 / _) + p.b * p.c * p.L * (p.width2 / _) = p.C
    calc
      _ = (((p.c + p.f) * p.L - p.J) * p.width3 + p.b * p.c * p.dq * p.width1 +
        p.b * p.c * p.L * p.width2) / (p.M * p.J) := by ring
      _ = p.C := by rw [hC]; exact mul_div_cancel_right₀ _ (ne_of_gt hd)

end OuterParameters

/-- The coordinate theorem is applied to the actual geometry extracted from the original box. -/
def EvenGeometry.outerParameters {K : Box6} (g : EvenGeometry K) : OuterParameters :=
  ⟨g.a, g.A, g.B - g.A, g.b - g.B, g.c - g.b, g.C⟩

theorem EvenGeometry.outer_widths {K : Box6} (g : EvenGeometry K) :
    0 ≤ g.outerParameters.width1 ∧ 0 ≤ g.outerParameters.width2 ∧
    0 ≤ g.outerParameters.width3 := by
  obtain ⟨h1, h2, h3⟩ := g.widths
  simp only [outerParameters, OuterParameters.width1, OuterParameters.width2, OuterParameters.width3,
    OuterParameters.L, OuterParameters.dq, OuterParameters.B, OuterParameters.b, OuterParameters.c]
  constructor
  · nlinarith only [h1]
  · constructor <;> nlinarith only [h2, h3]

end
end SPR.N6
