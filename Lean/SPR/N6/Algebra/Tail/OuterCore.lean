import SPR.N6.Algebra.Tail.OuterDegree
import SPR.N6.Algebra.Tail.QuadraticCore

/-!
# Homogeneous degree-five source for the quadratic core

The same three actual outer-width coordinates are used. The factor two comes
from the already-proved quadratic interpolation of the zero direction. This
module proves source recovery and the exact homogeneous degree before any
finite coefficient sign certificate is assumed.
-/
namespace SPR.N6.Tail.OuterHomogeneous
noncomputable section
set_option Elab.async false
variable {R S : Type*} [CommRing R] [CommRing S]

/-- Twice the homogeneous core; its frequency degree is two, rather than four. -/
def core (i : Bool) (s aN A B b c CN m t : R) : R :=
  2*den1 s aN b c*den2 s A B CN*weight s aN A B b c CN m*
      (t-(if i then c else A))^2+
    mixture s aN A B b c CN*zero i s aN A B b c CN m t

/-- Recovery on the actual coordinate slice includes the explicit factor two. -/
theorem core_at_one (i : Bool) (a A B b c C m t : R) :
    core i 1 a A B b c C m t = 2*RootSource.core i a A B b c C m t := by
  rw [core,zero_at_one]
  simp only [RootSource.core,weight,mixture,den1,den2,
    RootSource.den1,RootSource.den2,RootSource.weight,RootSource.mixture,mul_one]
  ring

/-- The complete homogeneous core commutes with every ring homomorphism. -/
theorem core_map (φ : R →+* S) (i : Bool) (s aN A B b c CN m t : R) :
    φ (core i s aN A B b c CN m t) =
      core i (φ s) (φ aN) (φ A) (φ B) (φ b) (φ c) (φ CN) (φ m) (φ t) := by
  cases i <;> simp [core,weight,mixture,zero,quadratic,den1,den2,map_ofNat]

open MvPolynomial
variable {σ : Type*}

/-- Homogeneity follows from the factors of the same core, without an external degree test. -/
theorem core_homogeneous (i : Bool) (s aN A B b c CN m t : MvPolynomial σ ℝ)
    (hs : s.IsHomogeneous 1) (haN : aN.IsHomogeneous 1) (hCN : CN.IsHomogeneous 1)
    (hA : A.IsHomogeneous 0) (hB : B.IsHomogeneous 0) (hb : b.IsHomogeneous 0)
    (hc : c.IsHomogeneous 0) (hm : m.IsHomogeneous 0) (ht : t.IsHomogeneous 0) :
    (core i s aN A B b c CN m t).IsHomogeneous 5 := by
  have hD1 : (den1 s aN b c).IsHomogeneous 2 :=
    ((hb.mul hs).sub haN).mul ((hc.mul hs).sub haN)
  have hD2 : (den2 s A B CN).IsHomogeneous 2 :=
    (hCN.sub (hA.mul hs)).mul (hCN.sub (hB.mul hs))
  have hW : (weight s aN A B b c CN m).IsHomogeneous 1 := by
    have h0 := ((hCN.sub (hB.mul hs)).mul (hb.sub hA)).mul ((hc.sub hA).pow 2)
    have h1 := (((hb.mul hs).sub haN).mul ((hc.sub hA).pow 2)).mul (hc.sub hB)
    have h2 := ((hCN.sub (hA.mul hs)).mul ((hb.sub hB).pow 2)).mul (hc.sub hB)
    have h3 := (((hc.mul hs).sub haN).mul (hb.sub hA)).mul ((hb.sub hB).pow 2)
    exact (h0.add h1).add (hm.mul (h2.add h3))
  have hH : (mixture s aN A B b c CN).IsHomogeneous 3 :=
    (((haN.mul (hA.add hB)).add ((hb.mul hc).mul hs)).mul hD2).add
      ((((hA.mul hB).mul hs).add (hCN.mul (hb.add hc))).mul hD1)
  have hZ := zero_homogeneous i s aN A B b c CN m t hs haN hCN hA hB hb hc hm ht
  have h2 : (2 : MvPolynomial σ ℝ).IsHomogeneous 0 := by
    simpa using (isHomogeneous_C σ (2 : ℝ) :
      (MvPolynomial.C (2 : ℝ) : MvPolynomial σ ℝ).IsHomogeneous 0)
  have hnode : (if i then c else A).IsHomogeneous 0 := by cases i <;> assumption
  exact ((((h2.mul hD1).mul hD2).mul hW).mul ((ht.sub hnode).pow 2)).add (hH.mul hZ)

end
end SPR.N6.Tail.OuterHomogeneous
