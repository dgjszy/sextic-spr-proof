import SPR
import Lean.Util.CollectAxioms
import Lean.PrivateName

/-!
# Build-time axiom audit

This module is a default library root of the standalone sextic proof. Every
theorem under `SPR` in the imported sixth-order proof graph is checked
transitively; an unexpected axiom causes `lake build` to fail. The proof uses
only the standard propositional-extensionality, choice and quotient axioms.
No external process supplies a proof to the kernel.
-/

#check SPR.N6.Direct.robustSPR_fixedEven
#print axioms SPR.N6.Direct.robustSPR_fixedEven
#check SPR.N6.Direct.robustSPR_fixedOdd
#print axioms SPR.N6.Direct.robustSPR_fixedOdd
#check SPR.N6.Direct.robustSPR_fixedSecondFourth
#print axioms SPR.N6.Direct.robustSPR_fixedSecondFourth
#check SPR.N6.Direct.robustSPR_relativeWidth
#print axioms SPR.N6.Direct.robustSPR_relativeWidth
#check SPR.N6.Direct.robustSPR_fixedConstant
#print axioms SPR.N6.Direct.robustSPR_fixedConstant
#check SPR.N6.EvenGeometry.candidate_upper_inner_pos
#print axioms SPR.N6.EvenGeometry.candidate_upper_inner_pos
#check SPR.N6.EvenGeometry.candidate_lower_first_pos
#print axioms SPR.N6.EvenGeometry.candidate_lower_first_pos
#check SPR.N6.EvenGeometry.candidate_lower_central_pos
#print axioms SPR.N6.EvenGeometry.candidate_lower_central_pos
#check SPR.N6.synthesis_of_remaining_tail_certificates
#print axioms SPR.N6.synthesis_of_remaining_tail_certificates
#check SPR.N6.synthesis_of_remaining_weak_tail_certificates
#print axioms SPR.N6.synthesis_of_remaining_weak_tail_certificates
#check SPR.N6.WeakTailCertificates.synthesis
#print axioms SPR.N6.WeakTailCertificates.synthesis
#check SPR.N6.synthesis_of_remaining_ratio_certificates
#print axioms SPR.N6.synthesis_of_remaining_ratio_certificates
#check SPR.N6.synthesis_of_remaining_weak_tails_outside_relative_width
#print axioms SPR.N6.synthesis_of_remaining_weak_tails_outside_relative_width
#check SPR.N6.EvenGeometry.ratio_eq_upper_iff
#print axioms SPR.N6.EvenGeometry.ratio_eq_upper_iff
#check SPR.N6.EvenGeometry.ratio_quotient_eval
#print axioms SPR.N6.EvenGeometry.ratio_quotient_eval
#check SPR.N6.LocalCertificates.synthesis
#print axioms SPR.N6.LocalCertificates.synthesis
#check SPR.N6.EvenGeometry.residualLower_pos_of_ge_A
#print axioms SPR.N6.EvenGeometry.residualLower_pos_of_ge_A
#check SPR.N6.EvenGeometry.candidate_at_C_pos
#print axioms SPR.N6.EvenGeometry.candidate_at_C_pos
#check SPR.N6.EvenGeometry.residualUpper_pos
#print axioms SPR.N6.EvenGeometry.residualUpper_pos
#check SPR.N6.EvenGeometry.cleared_lower_source
#print axioms SPR.N6.EvenGeometry.cleared_lower_source
#check SPR.N6.EvenGeometry.ratio_source_degree
#print axioms SPR.N6.EvenGeometry.ratio_source_degree
#check SPR.N6.EvenGeometry.candidate_strict_at_odd_zero
#print axioms SPR.N6.EvenGeometry.candidate_strict_at_odd_zero
#check SPR.N6.synthesis_of_universal_local_certificates
#print axioms SPR.N6.synthesis_of_universal_local_certificates

#check SPR.N6.EvenGeometry.high_first_two_ratio_entries
#print axioms SPR.N6.EvenGeometry.high_first_two_ratio_entries

#check SPR.N6.EvenGeometry.high_core_ratio_concave
#print axioms SPR.N6.EvenGeometry.high_core_ratio_concave
#check SPR.N6.EvenGeometry.low_core_ratio_concave
#print axioms SPR.N6.EvenGeometry.low_core_ratio_concave
#check SPR.N6.EvenGeometry.low_core_first_nonnegative
#print axioms SPR.N6.EvenGeometry.low_core_first_nonnegative
#check SPR.N6.EvenGeometry.synthesis_of_upper_ratio_cores
#print axioms SPR.N6.EvenGeometry.synthesis_of_upper_ratio_cores
#check SPR.N6.EvenGeometry.outer_polynomial_eval
#print axioms SPR.N6.EvenGeometry.outer_polynomial_eval

#check SPR.N6.EvenGeometry.first_high_core_coefficient
#print axioms SPR.N6.EvenGeometry.first_high_core_coefficient
#check SPR.N6.EvenGeometry.first_low_core_coefficient
#print axioms SPR.N6.EvenGeometry.first_low_core_coefficient
#check SPR.N6.RemainingCoreCoefficients.synthesis
#print axioms SPR.N6.RemainingCoreCoefficients.synthesis

#check SPR.N6.OuterParameters.firstThirdCore_coeff
#print axioms SPR.N6.OuterParameters.firstThirdCore_coeff

#check SPR.N6.OuterParameters.bivariateCore_coeff
#print axioms SPR.N6.OuterParameters.bivariateCore_coeff

#check SPR.N6.Tail.CoreEndpoint.MixedHigh401.nonnegative
#print axioms SPR.N6.Tail.CoreEndpoint.MixedHigh401.nonnegative

#check SPR.N6.Tail.SmallGap.highR0_nonnegative
#print axioms SPR.N6.Tail.SmallGap.highR0_nonnegative
#check SPR.N6.Tail.SmallGap.highR1_nonnegative
#print axioms SPR.N6.Tail.SmallGap.highR1_nonnegative
#check SPR.N6.Tail.SmallGap.lowR0_nonnegative
#print axioms SPR.N6.Tail.SmallGap.lowR0_nonnegative
#check SPR.N6.Tail.SmallGap.lowR1_nonnegative
#print axioms SPR.N6.Tail.SmallGap.lowR1_nonnegative

#check SPR.N6.Tail.SmallGap.EndpointSource.q00_identity
#print axioms SPR.N6.Tail.SmallGap.EndpointSource.q00_identity
#check SPR.N6.Tail.SmallGap.EndpointSource.q12_identity
#print axioms SPR.N6.Tail.SmallGap.EndpointSource.q12_identity
#check SPR.N6.Tail.SmallGap.EndpointSource.low_jet1_factor
#print axioms SPR.N6.Tail.SmallGap.EndpointSource.low_jet1_factor

#check SPR.N6.Tail.SmallGap.PolarSource.core_high_eq
#print axioms SPR.N6.Tail.SmallGap.PolarSource.core_high_eq
#check SPR.N6.Tail.SmallGap.PolarSource.core_low_scaled
#print axioms SPR.N6.Tail.SmallGap.PolarSource.core_low_scaled
#check SPR.N6.OuterParameters.high_core_eq_polar
#print axioms SPR.N6.OuterParameters.high_core_eq_polar
#check SPR.N6.OuterParameters.low_core_eq_polar
#print axioms SPR.N6.OuterParameters.low_core_eq_polar

#check SPR.N6.Tail.QuadraticJet.coeff_one_polarized
#print axioms SPR.N6.Tail.QuadraticJet.coeff_one_polarized

#check SPR.N6.Tail.QuadraticJet.quadratic_coeff_one
#print axioms SPR.N6.Tail.QuadraticJet.quadratic_coeff_one

#check SPR.N6.Tail.CoreEndpoint.MixedHigh401Source.source_identity
#print axioms SPR.N6.Tail.CoreEndpoint.MixedHigh401Source.source_identity
#check SPR.N6.Tail.CoreEndpoint.MixedHigh401ZeroJet.zeroLine_coeff_one
#print axioms SPR.N6.Tail.CoreEndpoint.MixedHigh401ZeroJet.zeroLine_coeff_one

#check SPR.N6.OuterParameters.high_mixed401_source
#print axioms SPR.N6.OuterParameters.high_mixed401_source
#check SPR.N6.OuterParameters.high_mixed401_coeff_nonnegative
#print axioms SPR.N6.OuterParameters.high_mixed401_coeff_nonnegative
#check SPR.N6.RemainingCoreMixedCoefficients.synthesis
#print axioms SPR.N6.RemainingCoreMixedCoefficients.synthesis
#check SPR.N6.OuterParameters.high032_coeff_nonnegative
#print axioms SPR.N6.OuterParameters.high032_coeff_nonnegative
#check SPR.N6.RemainingCoreHigh032Coefficients.synthesis
#print axioms SPR.N6.RemainingCoreHigh032Coefficients.synthesis
#check SPR.N6.OuterParameters.firstSecondCore_coeff
#print axioms SPR.N6.OuterParameters.firstSecondCore_coeff
#check SPR.N6.Tail.QuadraticJet.quadratic_extra_coeff_one
#print axioms SPR.N6.Tail.QuadraticJet.quadratic_extra_coeff_one
#check SPR.N6.Tail.CoreEndpoint.MixedHigh410ZeroJet.zeroExtra_coeff_one
#print axioms SPR.N6.Tail.CoreEndpoint.MixedHigh410ZeroJet.zeroExtra_coeff_one

#check SPR.N6.Tail.CoreEndpoint.mixed_q_direction_negative
#print axioms SPR.N6.Tail.CoreEndpoint.mixed_q_direction_negative
#check SPR.N6.OuterParameters.second_zero_coeff_one
#print axioms SPR.N6.OuterParameters.second_zero_coeff_one

#check SPR.N6.OuterParameters.high_mixed410_source
#print axioms SPR.N6.OuterParameters.high_mixed410_source
#check SPR.N6.OuterParameters.high_mixed410_coeff_nonnegative
#print axioms SPR.N6.OuterParameters.high_mixed410_coeff_nonnegative
#check SPR.N6.Tail.CoreEndpoint.MixedHigh410.nonnegative
#print axioms SPR.N6.Tail.CoreEndpoint.MixedHigh410.nonnegative

-- Iteration48: exact packet/source transport and the low mixed coefficient.
#check SPR.N6.OuterParameters.low_mixed401_coeff_nonnegative
#print axioms SPR.N6.OuterParameters.low_mixed401_coeff_nonnegative
#check SPR.N6.RemainingCoreMixedLowCoefficients.synthesis
#print axioms SPR.N6.RemainingCoreMixedLowCoefficients.synthesis
#check SPR.N6.Tail.QuinticSource.eval_transform
#print axioms SPR.N6.Tail.QuinticSource.eval_transform
#check SPR.N6.OuterParameters.high_corePolynomial_packet
#print axioms SPR.N6.OuterParameters.high_corePolynomial_packet
#check SPR.N6.OuterParameters.low_corePolynomial_packet
#print axioms SPR.N6.OuterParameters.low_corePolynomial_packet
#check SPR.N6.synthesis_of_polar_packet_certificates
#print axioms SPR.N6.synthesis_of_polar_packet_certificates

#check SPR.N6.OuterParameters.high_coeff_nonnegative_of_packet_coefficient
#print axioms SPR.N6.OuterParameters.high_coeff_nonnegative_of_packet_coefficient
#check SPR.N6.OuterParameters.low_coeff_nonnegative_of_packet_coefficient
#print axioms SPR.N6.OuterParameters.low_coeff_nonnegative_of_packet_coefficient

-- Iteration49: complete low source and the unchanged closed low endpoint.
#check SPR.N6.OuterParameters.low410_coeff_nonnegative
#print axioms SPR.N6.OuterParameters.low410_coeff_nonnegative
#check SPR.N6.RemainingCoreLow410Coefficients.synthesis
#print axioms SPR.N6.RemainingCoreLow410Coefficients.synthesis
#check SPR.N6.Tail.NatEncoding.eq_of_encoded_difference_eq_zero
#print axioms SPR.N6.Tail.NatEncoding.eq_of_encoded_difference_eq_zero

#check SPR.N6.OuterParameters.high302_coeff_nonnegative
#print axioms SPR.N6.OuterParameters.high302_coeff_nonnegative
#check SPR.N6.RemainingCoreHigh302Coefficients.synthesis
#print axioms SPR.N6.RemainingCoreHigh302Coefficients.synthesis

#check SPR.N6.OuterParameters.low302_coeff_nonnegative
#print axioms SPR.N6.OuterParameters.low302_coeff_nonnegative
#check SPR.N6.RemainingCoreLow302Coefficients.synthesis
#print axioms SPR.N6.RemainingCoreLow302Coefficients.synthesis

-- Iteration50: complete bounded encoding and the unrestricted original theorem.
#check SPR.N6.Tail.SyntaxBounds.termMass_expand
#print axioms SPR.N6.Tail.SyntaxBounds.termMass_expand
#check SPR.N6.Tail.SyntaxCertificate.value_eq_of_syntax_bounds
#print axioms SPR.N6.Tail.SyntaxCertificate.value_eq_of_syntax_bounds
#check SPR.N6.Tail.OuterIndices.cases_of_mem
#print axioms SPR.N6.Tail.OuterIndices.cases_of_mem
#check SPR.N6.allCoreCoefficients
#print axioms SPR.N6.allCoreCoefficients
#check SPR.N6.synthesis_from_complete_core_coefficients
#print axioms SPR.N6.synthesis_from_complete_core_coefficients
#check SPR.N6.Direct.robustSPR
#print axioms SPR.N6.Direct.robustSPR

set_option maxHeartbeats 0 in
-- Traverse the complete imported theorem graph, including all generated helper proofs.
run_cmd do
  let env ← Lean.getEnv
  let allowed : Array Lean.Name := #[`propext, `Classical.choice, `Quot.sound]
  let mut checked := 0
  let mut sixthOrderChecked := 0
  let mut privateChecked := 0
  for (name, info) in env.constants.toList do
    -- Private names carry a module/hash prefix. Normalize only for selection;
    -- collect dependencies using the actual internal declaration name.
    let userName := Lean.privateToUserName name
    if (`SPR).isPrefixOf userName && info.isTheorem then
      for axiomName in (← Lean.collectAxioms name) do
        unless allowed.contains axiomName do
          throwError "Unexpected axiom {axiomName} in {name}"
      checked := checked + 1
      if userName != name then
        privateChecked := privateChecked + 1
      if (`SPR.N6).isPrefixOf userName then
        sixthOrderChecked := sixthOrderChecked + 1
  -- Standalone sextic audit counts: 63355 SPR theorems, 63345 of them under SPR.N6.
  -- A silently dropped import or module lowers these counts and fails the build.
  if checked < 63355 then
    throwError "Incomplete proof import: audited only {checked} theorems"
  if sixthOrderChecked < 63345 then
    throwError "Incomplete sixth-order import: audited only {sixthOrderChecked} theorems"
  Lean.logInfo m!"SPR axiom audit passed: {checked} theorems; only \
    propext, Classical.choice, Quot.sound"
  Lean.logInfo m!"Private SPR theorems included: {privateChecked}"
  Lean.logInfo m!"Sixth-order checked declarations: {sixthOrderChecked}; \
    general sixth-order synthesis is included"
