import SPR.N6.Synthesis.CoreHigh320
import SPR.N6.Algebra.Tail.OuterIndexCases

/-! All 42 degree-five outer coefficients are now accounted for by complete
source certificates or the earlier pure/mixed proofs.  The displayed finite
index theorem discharges the empty remainder of the sufficient interface. -/
namespace SPR.N6
noncomputable section

/-- Every remaining position is excluded because its sign has already been supplied. -/
theorem allCoreCoefficients : RemainingCoreHigh320Coefficients where
  high := by
    intro p hA he hf hg t ht d hd h500 h401 h410 h032 h302 h050 h005 h014 h023 h041 h104 h113
      h122 h131 h140 h203 h212 h221 h230 h311 h320
    rcases Tail.OuterIndices.cases_of_mem hd with hposition | hposition | hposition | hposition
      | hposition | hposition | hposition | hposition | hposition | hposition | hposition |
      hposition | hposition | hposition | hposition | hposition | hposition | hposition |
      hposition | hposition | hposition
    all_goals contradiction
  low := by
    intro p hA he hf hg t ht0 htB d hd h500 h401 h410 h302 h050 h005 h014 h023 h032 h041 h104
      h113 h122 h131 h140 h203 h212 h221 h230 h311 h320
    rcases Tail.OuterIndices.cases_of_mem hd with hposition | hposition | hposition | hposition
      | hposition | hposition | hposition | hposition | hposition | hposition | hposition |
      hposition | hposition | hposition | hposition | hposition | hposition | hposition |
      hposition | hposition | hposition
    all_goals contradiction

/-- The complete actual coefficient certificates prove the original sextic target. -/
theorem synthesis_from_complete_core_coefficients : RobustSPRStatement :=
  allCoreCoefficients.synthesis

end
end SPR.N6
