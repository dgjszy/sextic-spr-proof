import SPR.N6.Construction.PolarPacketPolynomial
import SPR.N6.Construction.CoreCoefficientFrequency

/-!
# Fixed-coefficient transport at the same physical parameters

One packet coefficient sign suffices for the corresponding actual core
coefficient. The low-frequency proof retains its positive scale and includes
the closed endpoint by continuity. This module does not assert packet signs.
-/
namespace SPR.N6
noncomputable section
open MvPolynomial Tail Tail.SmallGap

/-- One universally quantified high packet coefficient sign. -/
abbrev HighPacketField (d : Fin 3 →₀ ℕ) : Prop :=
  ∀ A e f g v : ℝ, 0 ≤ A → 0 ≤ e → 0 ≤ f → 0 ≤ g → 0 ≤ v →
    0 ≤ coeff d (QuinticSource.polynomial
      (SmallGap.PolarPacket.highOuter A e f g v))

/-- One universally quantified low packet coefficient sign. -/
abbrev LowPacketField (d : Fin 3 →₀ ℕ) : Prop :=
  ∀ A e f g v : ℝ, 0 ≤ A → 0 ≤ e → 0 ≤ f → 0 ≤ g → 0 ≤ v →
    0 ≤ coeff d (QuinticSource.polynomial
      (SmallGap.PolarPacket.lowOuter A e f g v))

namespace OuterParameters

/-! The transport below is deliberately a fixed-coefficient statement.  It
does not assume a complete nonnegative packet: a source certificate for one
field is enough to transport that field to the actual core. -/

/-- Transport one high coefficient over the complete high half-axis. -/
theorem high_coeff_nonnegative_of_packet_coefficient
    (p : OuterParameters) (hA : 0 ≤ p.A) (he : 0 < p.e)
    (hf : 0 < p.f) (hg : 0 < p.g)
    {d : Fin 3 →₀ ℕ}
    (hpacket : ∀ v : ℝ, 0 ≤ v →
      0 ≤ coeff d (QuinticSource.polynomial
        (SmallGap.PolarPacket.highOuter p.A p.e p.f p.g v)))
    {t : ℝ} (ht : p.b ≤ t) :
    0 ≤ coeff d (p.corePolynomial false ((p.e+p.f+p.g)/p.f) t) := by
  let v := t-p.b
  have hv : 0 ≤ v := sub_nonneg.mpr ht
  have hc := hpacket v hv
  have hid := p.high_corePolynomial_packet (ne_of_gt hf) v
  have ht' : p.b+v = t := by
    dsimp [v]
    ring
  rw [ht'] at hid
  have hcoeff := congrArg (fun q : MvPolynomial (Fin 3) ℝ => coeff d q) hid
  simp only [coeff_C_mul] at hcoeff
  rw [hcoeff]
  exact mul_nonneg (by linarith) hc

/-- Retain the positive compactification scale at finite compact frequency. -/
theorem low_coeff_nonnegative_of_packet_coefficient_finite
    (p : OuterParameters) (hA : 0 ≤ p.A) (he : 0 < p.e)
    (hf : 0 < p.f) (hg : 0 < p.g)
    {d : Fin 3 →₀ ℕ}
    (hpacket : ∀ v : ℝ, 0 ≤ v →
      0 ≤ coeff d (QuinticSource.polynomial
        (SmallGap.PolarPacket.lowOuter p.A p.e p.f p.g v)))
    {v : ℝ} (hv : 0 ≤ v) :
    0 ≤ coeff d (p.corePolynomial true ((p.e+p.f+p.g)/p.f)
      (p.B*v/(1+v))) := by
  have hv1 : 0 < 1+v := by linarith
  have hc := hpacket v hv
  have hid := p.low_corePolynomial_packet v (ne_of_gt hf) (ne_of_gt hv1)
  have hcoeff := congrArg (fun q : MvPolynomial (Fin 3) ℝ => coeff d q) hid
  simp only [coeff_C_mul] at hcoeff
  have hscaled : 0 ≤ (1+v)^2 * coeff d
      (p.corePolynomial true ((p.e+p.f+p.g)/p.f) (p.B*v/(1+v))) := by
    rw [hcoeff]
    exact mul_nonneg (by linarith) hc
  exact (mul_nonneg_iff_of_pos_left (sq_pos_of_pos hv1)).mp hscaled

/-- Transport one low coefficient, including the closed endpoint. -/
theorem low_coeff_nonnegative_of_packet_coefficient
    (p : OuterParameters) (hA : 0 ≤ p.A) (he : 0 < p.e)
    (hf : 0 < p.f) (hg : 0 < p.g)
    {d : Fin 3 →₀ ℕ}
    (hpacket : ∀ v : ℝ, 0 ≤ v →
      0 ≤ coeff d (QuinticSource.polynomial
        (SmallGap.PolarPacket.lowOuter p.A p.e p.f p.g v))) :
    ∀ t : ℝ, 0 ≤ t → t ≤ p.B →
      0 ≤ coeff d (p.corePolynomial true ((p.e+p.f+p.g)/p.f) t) := by
  have hB : 0 < p.B := by
    simp only [OuterParameters.B]
    linarith
  apply p.low_coeff_of_compactification
    ((p.e+p.f+p.g)/p.f) d hB
  intro v hv
  exact low_coeff_nonnegative_of_packet_coefficient_finite p hA he hf hg
    hpacket hv

theorem actual_high_sign_of_packet_field
    (p : OuterParameters) (hA : 0 < p.A) (he : 0 < p.e)
    (hf : 0 < p.f) (hg : 0 < p.g) {d : Fin 3 →₀ ℕ}
    (hfield : HighPacketField d) {t : ℝ} (ht : p.b ≤ t) :
    0 ≤ coeff d (p.corePolynomial false ((p.e+p.f+p.g)/p.f) t) := by
  apply high_coeff_nonnegative_of_packet_coefficient p hA.le he hf hg ?_ ht
  intro v hv
  exact hfield p.A p.e p.f p.g v hA.le he.le hf.le hg.le hv

theorem actual_low_sign_of_packet_field
    (p : OuterParameters) (hA : 0 < p.A) (he : 0 < p.e)
    (hf : 0 < p.f) (hg : 0 < p.g) {d : Fin 3 →₀ ℕ}
    (hfield : LowPacketField d) {t : ℝ} (ht0 : 0 ≤ t) (htB : t ≤ p.B) :
    0 ≤ coeff d (p.corePolynomial true ((p.e+p.f+p.g)/p.f) t) := by
  apply low_coeff_nonnegative_of_packet_coefficient p hA.le he hf hg ?_ t ht0 htB
  intro v hv
  exact hfield p.A p.e p.f p.g v hA.le he.le hf.le hg.le hv

end OuterParameters

end
end SPR.N6
