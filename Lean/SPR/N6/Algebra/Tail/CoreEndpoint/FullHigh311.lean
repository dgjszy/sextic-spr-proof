import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh311Identity0
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh311Identity1
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh311Identity2
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh311Identity3
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh311Identity4
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh311Identity5
import SPR.N6.Algebra.Tail.CoreEndpoint.FullHigh311Factors

/-! Assemble the complete one-gap source certificate from all checked layers.
The original source and whole low-gap factors are retained. -/
namespace SPR.N6.Tail.CoreEndpoint.FullHigh311
noncomputable section

/-- The full source identity follows from the complete list of layer identities. -/
theorem decomposition (A e f g v : ℝ) :
    source A e f g v = FullHigh311Factors.leading0 A e g v +
      f * FullHigh311Factors.leading1 A e g v + f^2 * FullHigh311Factors.remainder A e f g v := by
  exact FullHigh311Factors.source_decomposition_of_layers A e f g v
    (decomposition0 e f g v)
    (decomposition1 e f g v)
    (decomposition2 e f g v)
    (decomposition3 e f g v)
    (decomposition4 e f g v)
    (decomposition5 e f g v)

/-- The same source is nonnegative on the entire closed parameter orthant. -/
theorem nonnegative {A e f g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hf : 0 ≤ f) (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ source A e f g v :=
  FullHigh311Factors.source_nonnegative_of_decomposition hA he hf hg hv
    (decomposition A e f g v)

end
end SPR.N6.Tail.CoreEndpoint.FullHigh311
