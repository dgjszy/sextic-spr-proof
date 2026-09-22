import SPR.N6.Algebra.FirstBand.Source
import SPR.N6.Algebra.FirstBand.Entry00
import SPR.N6.Algebra.FirstBand.Entry01
import SPR.N6.Algebra.FirstBand.Entry02
import SPR.N6.Algebra.FirstBand.Entry10
import SPR.N6.Algebra.FirstBand.Entry11
import SPR.N6.Algebra.FirstBand.Entry12
import SPR.N6.Algebra.FirstBand.Entry20
import SPR.N6.Algebra.FirstBand.Entry21
import SPR.N6.Algebra.FirstBand.Entry22
import SPR.N6.Algebra.FirstBand.Entry30
import SPR.N6.Algebra.FirstBand.Entry31
import SPR.N6.Algebra.FirstBand.Entry32
import SPR.N6.Algebra.FirstBand.Entry40
import SPR.N6.Algebra.FirstBand.Entry41
import SPR.N6.Algebra.FirstBand.Entry42

/-!
# Strict first-band positivity from the complete fifteen-entry certificate

Both interpolation coordinates range over closed intervals. Every one of the
five frequency and three ratio entries is used; none is sampled or omitted.
-/
namespace SPR.N6.FirstBand
noncomputable section

/-- The actual factored source is strictly positive throughout the first band. -/
theorem source_positive {a d e f g h m u : ℝ}
    (ha : 0 < a) (hd : 0 < d) (he : 0 < e) (hf : 0 < f) (hg : 0 < g) (hh : 0 < h)
    (hm : 1 ≤ m) (hM : m ≤ (e+f+g)/f) (hu0 : 0 ≤ u) (hu1 : u ≤ 1) :
    0 < source a d e f g h m u := by

  have h0 : 0 < actual00 a d e f g h+actual01 a d e f g h*m+
      actual02 a d e f g h*m^2 := by
    apply ratio_positive he hf hg hm hM
    · rw [Entry00.identity]
      exact Entry00.positive ha hd he hf hg hh
    · rw [Entry01.identity]
      exact Entry01.positive ha hd he hf hg hh
    · rw [Entry02.identity]
      exact Entry02.positive ha hd he hf hg hh

  have h1 : 0 < actual10 a d e f g h+actual11 a d e f g h*m+
      actual12 a d e f g h*m^2 := by
    apply ratio_positive he hf hg hm hM
    · rw [Entry10.identity]
      exact Entry10.positive ha hd he hf hg hh
    · rw [Entry11.identity]
      exact Entry11.positive ha hd he hf hg hh
    · rw [Entry12.identity]
      exact Entry12.positive ha hd he hf hg hh

  have h2 : 0 < actual20 a d e f g h+actual21 a d e f g h*m+
      actual22 a d e f g h*m^2 := by
    apply ratio_positive he hf hg hm hM
    · rw [Entry20.identity]
      exact Entry20.positive ha hd he hf hg hh
    · rw [Entry21.identity]
      exact Entry21.positive ha hd he hf hg hh
    · rw [Entry22.identity]
      exact Entry22.positive ha hd he hf hg hh

  have h3 : 0 < actual30 a d e f g h+actual31 a d e f g h*m+
      actual32 a d e f g h*m^2 := by
    apply ratio_positive he hf hg hm hM
    · rw [Entry30.identity]
      exact Entry30.positive ha hd he hf hg hh
    · rw [Entry31.identity]
      exact Entry31.positive ha hd he hf hg hh
    · rw [Entry32.identity]
      exact Entry32.positive ha hd he hf hg hh

  have h4 : 0 < actual40 a d e f g h+actual41 a d e f g h*m+
      actual42 a d e f g h*m^2 := by
    apply ratio_positive he hf hg hm hM
    · rw [Entry40.identity]
      exact Entry40.positive ha hd he hf hg hh
    · rw [Entry41.identity]
      exact Entry41.positive ha hd he hf hg hh
    · rw [Entry42.identity]
      exact Entry42.positive ha hd he hf hg hh

  have hp := quartic_positive h0 h1 h2 h3 h4 hu0 hu1
  have hid := convolution a d (w0 a d e f g h) (w1 a d e f g h) (den a d e f g h) (jump a d e f g h) (l0 a d e f g h) (l1 a d e f g h) (l2 a d e f g h) (mix a d e f g h) (z00 a d e f g h) (z01 a d e f g h) (z02 a d e f g h) (z10 a d e f g h) (z11 a d e f g h) (z12 a d e f g h) (z20 a d e f g h) (z21 a d e f g h) (z22 a d e f g h) m u
  have heq : 24*source a d e f g h m u =
      (actual00 a d e f g h+actual01 a d e f g h*m+actual02 a d e f g h*m^2)*(1-u)^4+
      4*(actual10 a d e f g h+actual11 a d e f g h*m+actual12 a d e f g h*m^2)*u*(1-u)^3+
      6*(actual20 a d e f g h+actual21 a d e f g h*m+actual22 a d e f g h*m^2)*u^2*(1-u)^2+
      4*(actual30 a d e f g h+actual31 a d e f g h*m+actual32 a d e f g h*m^2)*u^3*(1-u)+
      (actual40 a d e f g h+actual41 a d e f g h*m+actual42 a d e f g h*m^2)*u^4 := by
    simpa only [source,actual00 ,actual01 ,actual02 ,actual10 ,actual11 ,actual12 ,actual20 ,actual21 ,actual22 ,actual30 ,actual31 ,actual32 ,actual40 ,actual41 ,actual42,
      pow_zero,pow_one,mul_one,one_mul,mul_left_comm,mul_comm,mul_assoc] using hid
  rw [← heq] at hp
  linarith only [hp]

end
end SPR.N6.FirstBand
