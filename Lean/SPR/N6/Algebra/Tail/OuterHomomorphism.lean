import SPR.N6.Algebra.LowerZeroMap
import SPR.N6.Algebra.Tail.OuterHomogeneous

/-!
# Evaluating the homogeneous source in another ring

The source identity is functorial. In particular, the later polynomial source
can be evaluated at the actual width coordinates with no externally supplied
coefficient correspondence.
-/
namespace SPR.N6.Tail.OuterHomogeneous
noncomputable section
variable {R S : Type*} [CommRing R] [CommRing S]

/-- The complete source, with all its interpolated terms, commutes with evaluation. -/
theorem source_map (φ : R →+* S) (i : Bool) (s aN A B b c CN m t : R) :
    φ (source i s aN A B b c CN m t) =
      source i (φ s) (φ aN) (φ A) (φ B) (φ b) (φ c) (φ CN) (φ m) (φ t) := by
  cases i <;> simp [source,weight,mixture,residual,zero,quadratic,den1,den2,map_ofNat]

end
end SPR.N6.Tail.OuterHomogeneous
