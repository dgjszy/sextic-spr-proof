import SPR.N6.Synthesis.StrictLift

/-!
# The fixed iteration43 candidate

All components below are explicit rational expressions in the same six roots
and the actual canonical ratio. This module does not assert the unresolved
formal universal positivity certificates. It fixes the witness to which those
certificates must be connected.
-/
namespace SPR.N6
noncomputable section
namespace EvenGeometry
variable {B : Box6}

def D1 (g : EvenGeometry B) : ℝ := (g.b - g.a) * (g.c - g.a)
def D2 (g : EvenGeometry B) : ℝ := (g.C - g.A) * (g.C - g.B)
def gapX (g : EvenGeometry B) : ℝ := (g.b - g.a) * (g.c - g.b)
def gapY (g : EvenGeometry B) : ℝ := (g.C - g.B) * (g.B - g.A)
def gapZ (g : EvenGeometry B) : ℝ := (g.c - g.a) * (g.c - g.b)
def gapW (g : EvenGeometry B) : ℝ := (g.C - g.A) * (g.B - g.A)

def la1 (g : EvenGeometry B) : ℝ := -(g.b / g.gapX + g.B / g.gapY)
def la0 (g : EvenGeometry B) : ℝ := g.B * g.b * (1 / g.gapX + 1 / g.gapY)
def lb1 (g : EvenGeometry B) : ℝ := g.c / g.gapZ + g.A / g.gapW
def lb0 (g : EvenGeometry B) : ℝ := -g.A * g.c * (1 / g.gapZ + 1 / g.gapW)

def baseF0 (g : EvenGeometry B) : ℝ := g.A * g.c * g.la0 + g.B * g.b * g.lb0
def baseF1 (g : EvenGeometry B) : ℝ :=
  -(g.A + g.c) * g.la0 + g.A * g.c * g.la1 - (g.B + g.b) * g.lb0 + g.B * g.b * g.lb1
def baseF2 (g : EvenGeometry B) : ℝ :=
  g.la0 + g.lb0 - (g.A + g.c) * g.la1 - (g.B + g.b) * g.lb1
def baseF3 (g : EvenGeometry B) : ℝ := g.la1 + g.lb1

def baseF (g : EvenGeometry B) (t : ℝ) : ℝ :=
  g.lowerOddShape t * (g.la1 * t + g.la0) + g.upperOddShape t * (g.lb1 * t + g.lb0)

/-- The positive mixing coefficient is the same actual baseline t² coefficient. -/
def eta (g : EvenGeometry B) : ℝ := g.ratio * g.baseF2

def weightA (g : EvenGeometry B) : ℝ := (g.C - g.A) / ((g.b - g.A) * (g.c - g.A) ^ 2)
def weightB (g : EvenGeometry B) : ℝ :=
  (g.C - g.B) / (g.ratio * (g.b - g.B) ^ 2 * (g.c - g.B))
def weightb (g : EvenGeometry B) : ℝ :=
  (g.b - g.a) / (g.ratio * (g.b - g.A) * (g.b - g.B) ^ 2)
def weightc (g : EvenGeometry B) : ℝ := (g.c - g.a) / ((g.c - g.A) ^ 2 * (g.c - g.B))
def weightSum (g : EvenGeometry B) : ℝ := g.weightA + g.weightB + g.weightb + g.weightc

def rho (g : EvenGeometry B) : ℝ :=
  (g.A * g.weightA + g.B * g.weightB + g.b * g.weightb + g.c * g.weightc) / g.weightSum

/-- Required zero-direction values at the three interpolation nodes. -/
def valueA (g : EvenGeometry B) : ℝ :=
  (g.A - g.rho) * (g.A - g.B) * (g.A - g.C) / (g.A - g.c)
def valueB (g : EvenGeometry B) : ℝ :=
  (g.B - g.rho) * (g.B - g.A) * (g.B - g.C) / (g.ratio * (g.B - g.b))
def valueb (g : EvenGeometry B) : ℝ :=
  (g.b - g.rho) * (g.b - g.a) * (g.b - g.c) / (g.ratio * (g.b - g.B))

def interpA (g : EvenGeometry B) : ℝ := g.valueA / ((g.A - g.B) * (g.A - g.b))
def interpB (g : EvenGeometry B) : ℝ := g.valueB / ((g.B - g.A) * (g.B - g.b))
def interpb (g : EvenGeometry B) : ℝ := g.valueb / ((g.b - g.A) * (g.b - g.B))

def zeroK2 (g : EvenGeometry B) : ℝ := g.interpA + g.interpB + g.interpb
def zeroK1 (g : EvenGeometry B) : ℝ :=
  -g.interpA * (g.B + g.b) - g.interpB * (g.A + g.b) - g.interpb * (g.A + g.B)
def zeroK0 (g : EvenGeometry B) : ℝ :=
  g.interpA * g.B * g.b + g.interpB * g.A * g.b + g.interpb * g.A * g.B

def zeroK (g : EvenGeometry B) (t : ℝ) : ℝ :=
  g.interpA * (t - g.B) * (t - g.b) + g.interpB * (t - g.A) * (t - g.b) +
    g.interpb * (t - g.A) * (t - g.B)

/-- One candidate for all frequencies and all members of the original box. -/
def candidate (g : EvenGeometry B) : ParityNumerator where
  f0 := g.ratio * g.baseF0
  f1 := g.ratio * g.baseF1 - g.eta * g.rho
  f2 := g.ratio * g.baseF2 + g.eta
  f3 := g.ratio * g.baseF3
  k0 := g.A * g.c + g.ratio * g.B * g.b + g.eta * g.zeroK0
  k1 := -(g.A + g.c) - g.ratio * (g.B + g.b) + g.eta * g.zeroK1
  k2 := 1 + g.ratio + g.eta * g.zeroK2

/-- Exact agreement with the baseline-plus-zero-direction formula of iteration43. -/
theorem candidate_even (g : EvenGeometry B) (t : ℝ) :
    g.candidate.F t = g.ratio * g.baseF t + g.eta * t * (t - g.rho) := by
  simp only [candidate, ParityNumerator.F, baseF, baseF0, baseF1, baseF2, baseF3,
    lowerOddShape, upperOddShape]
  ring

theorem candidate_odd (g : EvenGeometry B) (t : ℝ) :
    g.candidate.K t = g.lowerOddShape t + g.ratio * g.upperOddShape t + g.eta * g.zeroK t := by
  simp only [candidate, ParityNumerator.K, zeroK, zeroK0, zeroK1, zeroK2,
    lowerOddShape, upperOddShape]
  ring

/-- All root differences needed in the rational construction are strictly positive. -/
theorem positive_gaps (g : EvenGeometry B) :
    0 < g.b - g.a ∧ 0 < g.c - g.a ∧ 0 < g.C - g.A ∧ 0 < g.C - g.B ∧
    0 < g.c - g.b ∧ 0 < g.B - g.A ∧ 0 < g.b - g.A ∧ 0 < g.b - g.B ∧
    0 < g.c - g.A ∧ 0 < g.c - g.B := by
  have h1 := g.a_lt_A
  have h2 := g.A_lt_B
  have h3 := g.B_lt_b
  have h4 := g.b_lt_c
  have h5 := g.c_lt_C
  exact ⟨by linarith, by linarith, by linarith, by linarith, by linarith,
    by linarith, by linarith, by linarith, by linarith, by linarith⟩

/-- Simple positive formulas for the constant, quadratic and cubic baseline coefficients. -/
theorem base_coefficients (g : EvenGeometry B) :
    g.baseF0 = g.A * g.B * g.b * g.c * (1 / g.D1 + 1 / g.D2) ∧
    g.baseF2 = 1 + g.a * (g.A + g.B + g.b + g.c - g.a) / g.D1 +
      (g.A * g.B + g.C * (g.b + g.c)) / g.D2 ∧
    g.baseF3 = -(g.a / g.D1 + g.C / g.D2) := by
  obtain ⟨hba, hca, hCA, hCB, hcb, hBA, _, _, _, _⟩ := g.positive_gaps
  have n1 := ne_of_gt hba
  have n2 := ne_of_gt hca
  have n3 := ne_of_gt hCA
  have n4 := ne_of_gt hCB
  have n5 := ne_of_gt hcb
  have n6 := ne_of_gt hBA
  simp only [baseF0, baseF2, baseF3, la0, la1, lb0, lb1, gapX, gapY, gapZ, gapW, D1, D2]
  constructor
  · field_simp
    ring
  · constructor <;> field_simp <;> ring

/-- The actual candidate has positive constant and negative cubic-even leading coefficient. -/
theorem candidate_endpoints (g : EvenGeometry B) (hB : B.RobustlyHurwitz) :
    0 < g.candidate.f0 ∧ g.candidate.f3 < 0 ∧ 0 < g.eta := by
  have hm : 0 < g.ratio := lt_trans zero_lt_one (g.ratio_bounds hB).1
  obtain ⟨h0, h2, h3⟩ := g.base_coefficients
  obtain ⟨hba, hca, hCA, hCB, _, _, _, _, _, _⟩ := g.positive_gaps
  have ha := g.a_pos
  have hA : 0 < g.A := ha.trans g.a_lt_A
  have hB' : 0 < g.B := hA.trans g.A_lt_B
  have hb : 0 < g.b := hB'.trans g.B_lt_b
  have hc : 0 < g.c := hb.trans g.b_lt_c
  have hC : 0 < g.C := hc.trans g.c_lt_C
  have hD1 : 0 < g.D1 := mul_pos hba hca
  have hD2 : 0 < g.D2 := mul_pos hCA hCB
  have hsum : 0 < g.A + g.B + g.b + g.c - g.a := by linarith [g.a_lt_A]
  change 0 < g.ratio * g.baseF0 ∧ g.ratio * g.baseF3 < 0 ∧ 0 < g.ratio * g.baseF2
  rw [h0, h2, h3]
  exact ⟨by positivity, mul_neg_of_pos_of_neg hm (neg_lt_zero.mpr (by positivity)), by positivity⟩

end EvenGeometry
end
end SPR.N6
