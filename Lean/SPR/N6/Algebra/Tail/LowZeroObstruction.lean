import SPR.N6.Algebra.LowerZero

/-!
# An exact obstruction to discarding the low-tail baseline

The zero direction alone can be negative even with positive ordered roots and
all three nonnegative even widths. This is an auxiliary counterexample only:
the actual synthesis uses a positive baseline together with the zero direction.
No claim about infeasibility of an SPR numerator is made.
-/
namespace SPR.N6.Tail.LowZeroObstruction
noncomputable section

def firstRoot : ℝ := 10916/13441
def lastRoot : ℝ := 29800680/13441

/-- All six roots are strictly ordered and all three original even widths are nonnegative. -/
theorem physical_even_conditions :
    0 < firstRoot ∧ firstRoot < 1 ∧ (1 : ℝ) < 4 ∧ (4 : ℝ) < 104 ∧
    (104 : ℝ) < 105 ∧ 105 < lastRoot ∧
    0 ≤ 1+4+lastRoot-firstRoot-104-105 ∧
    firstRoot*104+firstRoot*105+104*105-1*4-1*lastRoot-4*lastRoot = 0 ∧
    1*4*lastRoot-firstRoot*104*105 = 0 := by
  norm_num [firstRoot,lastRoot]

/-- Exact value of the first low zero entry at frequency zero. -/
theorem zero_value :
    LowerZero.q1 (1-firstRoot) 3 100 1 (lastRoot-105) 1 (-4) =
      -(254246976891910144800/180660481 : ℝ) := by
  norm_num [LowerZero.q1,LowerZero.q10,LowerZero.q11,LowerZero.q12,firstRoot,lastRoot]

/-- Thus the high-tail zero-only simplification cannot be copied to the low tail. -/
theorem zero_negative :
    LowerZero.q1 (1-firstRoot) 3 100 1 (lastRoot-105) 1 (-4) < 0 := by
  rw [zero_value]
  norm_num

end
end SPR.N6.Tail.LowZeroObstruction
