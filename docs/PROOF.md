# Proof outline

The exact theorem is stated in `SPR.N6.RobustSPRStatement` and proved by
`SPR.N6.Direct.robustSPR`. All steps below are part of the Lean import chain.

1. **Definitions and frequency algebra.** Represent a monic sextic coefficient box
   (`SPR.N6.Box6`, `SPR.N6.Poly6`), strict Hurwitz stability
   (`SPR.N6.Box6.RobustlyHurwitz`), the exact-degree-six numerator and the
   all-family/all-real-frequency condition (`SPR.N6.FrequencySPR`). Split the
   denominator into its cubic even and quadratic odd parts on the squared-frequency
   axis and prove that strict positivity of the real part is equivalent to positivity
   of one real pairing at every `t ≥ 0` (`frequencySPR_iff`, `real_ratio_eq`).
2. **Root geometry and a fixed ratio.** From strict Hurwitz stability of the box derive
   the actual even roots, the strict odd interlacing and envelope, the four actual box
   corners with their pointwise extrema, and the existence of one actual ratio whose
   endpoint equality case is classified (`Preliminaries/HurwitzPhase.lean`,
   `HermiteBiehler.lean`, `EvenGeometry.lean`, `OddEnvelope.lean`,
   `RatioEndpoint.lean`).
3. **Candidate and construction.** Build the candidate numerator, its barycenter, the
   four contact points and the actual quotient polynomials; isolate the numerator roots,
   prove `F(C) > 0`, show that every quotient is exactly quartic, and establish
   positivity of the baseline residual on the whole axis
   (`Construction/Candidate.lean`, `Barycenter.lean`, `Contacts.lean`, `Quotients.lean`,
   `NumeratorRoots.lean`, `LastRoot.lean`, `Quartic.lean`, `BaselinePositive.lean`,
   `UpperResidual.lean`).
4. **Band positivity.** Prove strict positivity of the two upper odd quotients on
   `[A,c]` and of the lower first band on `[a,A]` by explicit finite certificates over
   the actual coefficient data (`Construction/UpperInner.lean` with
   `Algebra/UpperInner/`, `Construction/FirstBand.lean` with `Algebra/FirstBand/`),
   and treat the central lower odd band unconditionally
   (`Synthesis/FrequencyAssembly.lean`).
5. **Reduction to one exact ratio.** Replace the frequency condition by a single exact
   quadratic quotient, cover the contact points, prove strictness at the odd zeros and
   the strict lift back to the original box, combine the two weak tails into four
   half-axis weak sources, and restrict the remaining original-box region
   (`Construction/RatioPolynomial.lean`, `RatioQuotient.lean`, `HighRatio.lean`,
   `Synthesis/RatioInterpolation.lean`, `CandidateLift.lean`, `StrictLift.lean`,
   `WeakTails.lean`, `TailRatio.lean`, `Remaining.lean`).
6. **Core coefficients by static source certificates.** For every index position,
   expand the actual bivariate core into homogeneous layers, prove the layer identities
   from a same-source interpretation, bound syntax mass, coordinate degree and variable
   support, prove uniqueness of the integer base encoding and injectivity of the
   exponent encoding, and conclude nonnegativity of the complete source on the closed
   parameter domain (`Algebra/Tail/SyntaxBounds.lean`, `NatEncoding.lean`,
   `Encoding4.lean`, `ExprValue.lean`, `ExprCertificate.lean`, `SyntaxCertificate.lean`,
   `Algebra/Tail/CoreEndpoint/Full*`, `Construction/PacketCoefficientTransport.lean`,
   `Algebra/Tail/OuterIndices.lean`, `Synthesis/Core*.lean`).
7. **Assembly.** `Synthesis/AllCoreCoefficients.lean` supplies all 42 actual high/low
   coefficient positions and discharges the last sufficient interface, so
   `synthesis_from_complete_core_coefficients` has no remaining coefficient or
   certificate hypothesis; `Main.lean` concludes the existence of one exact-degree-six
   numerator for the original box, including all degenerate intervals.

The [detailed module map](../Lean/SPR/N6/README.md) gives names and source links for each
part, in Chinese, together with the iteration history. The proof is nonconstructive. The
exported statement requires strict positivity at every finite real frequency; it does not
substitute a lower-degree numerator, restrict the family to a sampled set, or assume
Kharitonov-type reductions.
