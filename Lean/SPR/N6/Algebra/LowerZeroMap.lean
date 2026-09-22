import SPR.N6.Algebra.LowerZero

/-!
# Ring-homomorphism interpretation of individual zero coefficients

These identities permit the same static coefficient formulas to be interpreted
as multivariate polynomials and then evaluated back in the real numbers.
-/
namespace SPR.N6.LowerZero
noncomputable section
variable {R S : Type*} [CommRing R] [CommRing S]

/-- The q00 coefficient commutes with every ring homomorphism. -/
@[simp] theorem q00_map (φ : R →+* S) (d e f g h m : R) :
    φ (q00 d e f g h m) = q00 (φ d) (φ e) (φ f) (φ g) (φ h) (φ m) := by
  simp [q00,map_ofNat]

/-- The q01 coefficient commutes with every ring homomorphism. -/
@[simp] theorem q01_map (φ : R →+* S) (d e f g h m : R) :
    φ (q01 d e f g h m) = q01 (φ d) (φ e) (φ f) (φ g) (φ h) (φ m) := by
  simp [q01,map_ofNat]

/-- The q02 coefficient commutes with every ring homomorphism. -/
@[simp] theorem q02_map (φ : R →+* S) (d e f g h m : R) :
    φ (q02 d e f g h m) = q02 (φ d) (φ e) (φ f) (φ g) (φ h) (φ m) := by
  simp [q02,map_ofNat]

/-- The q10 coefficient commutes with every ring homomorphism. -/
@[simp] theorem q10_map (φ : R →+* S) (d e f g h m : R) :
    φ (q10 d e f g h m) = q10 (φ d) (φ e) (φ f) (φ g) (φ h) (φ m) := by
  simp [q10,map_ofNat]

/-- The q11 coefficient commutes with every ring homomorphism. -/
@[simp] theorem q11_map (φ : R →+* S) (d e f g h m : R) :
    φ (q11 d e f g h m) = q11 (φ d) (φ e) (φ f) (φ g) (φ h) (φ m) := by
  simp [q11,map_ofNat]

/-- The q12 coefficient commutes with every ring homomorphism. -/
@[simp] theorem q12_map (φ : R →+* S) (d e f g h m : R) :
    φ (q12 d e f g h m) = q12 (φ d) (φ e) (φ f) (φ g) (φ h) (φ m) := by
  simp [q12,map_ofNat]

end
end SPR.N6.LowerZero
