import SPR.N6.Preliminaries.EvenGeometry

/-!
# Actual odd roots lie in the common strict bands

The odd coefficients of each original member are paired with both actual even
endpoints. Root uniqueness, rather than a stability theorem about a containing
box, identifies the common odd roots.
-/
namespace SPR.N6
noncomputable section

/-- Keep the actual odd coefficients and select one even endpoint. -/
def Box6.withEven (K : Box6) (i : Bool) (a : Poly6) : Poly6 :=
  ⟨a.a1, if i then K.upper.a2 else K.lower.a2, a.a3,
    if i then K.lower.a4 else K.upper.a4, a.a5,
    if i then K.upper.a6 else K.lower.a6⟩

theorem Box6.withEven_mem {K : Box6} {a : Poly6} (ha : K.Contains a) (i : Bool) :
    K.Contains (K.withEven i a) := by
  rcases ha with ⟨h1l, h1u, h2l, h2u, h3l, h3u, h4l, h4u, h5l, h5u, h6l, h6u⟩
  cases i <;>
    simp [Contains, withEven, h1l, h1u, h3l, h3u, h5l, h5u, K.h2, K.h4, K.h6]

/-- Exact odd factorization and the two strict common bands. -/
structure OddBands {K : Box6} (g : EvenGeometry K) (p : Poly6) where
  u : ℝ
  v : ℝ
  A_lt_u : g.A < u
  u_lt_B : u < g.B
  b_lt_v : g.b < v
  v_lt_c : v < g.c
  leading_pos : 0 < p.a1
  factor : ∀ t : ℝ, oddPart p t = p.a1 * (t - u) * (t - v)

namespace EvenGeometry

/-- Both roots of every actual odd part are in the common bands. -/
theorem odd_bands {K : Box6} (g : EvenGeometry K) (hK : K.RobustlyHurwitz)
    {p : Poly6} (hp : K.Contains p) : Nonempty (OddBands g p) := by
  have hl := hK _ (K.withEven_mem hp false)
  have hu := hK _ (K.withEven_mem hp true)
  obtain ⟨d⟩ := denominator_interlacing hl
  obtain ⟨e⟩ := denominator_interlacing hu
  have hlead : 0 < p.a1 := (sextic_coefficients_pos (hK p hp)).1
  have ho := d.odd_unique e hlead hlead (fun _ => rfl)
  have hdroots : d.e₁ = g.a ∧ d.e₂ = g.b ∧ d.e₃ = g.c := by
    apply ordered_triple_unique (d.e₁_lt_o₁.trans d.o₁_lt_e₂)
      (d.e₂_lt_o₂.trans d.o₂_lt_e₃)
      (g.a_lt_A.trans (g.A_lt_B.trans g.B_lt_b)) g.b_lt_c
    intro t
    rw [← d.even_root_iff]
    change K.evenLower t = 0 ↔ _
    rw [g.lower_value]
    simp only [mul_eq_zero, neg_eq_zero, sub_eq_zero, or_assoc]
  have heroots : e.e₁ = g.A ∧ e.e₂ = g.B ∧ e.e₃ = g.C := by
    apply ordered_triple_unique (e.e₁_lt_o₁.trans e.o₁_lt_e₂)
      (e.e₂_lt_o₂.trans e.o₂_lt_e₃) g.A_lt_B
      (g.B_lt_b.trans (g.b_lt_c.trans g.c_lt_C))
    intro t
    rw [← e.even_root_iff]
    change K.evenUpper t = 0 ↔ _
    rw [g.upper_value]
    simp only [mul_eq_zero, neg_eq_zero, sub_eq_zero, or_assoc]
  refine ⟨⟨d.o₁, d.o₂, ?_, ?_, ?_, ?_, hlead, ?_⟩⟩
  · linarith [e.e₁_lt_o₁, heroots.1, ho.1]
  · linarith [e.o₁_lt_e₂, heroots.2.1, ho.1]
  · linarith [d.e₂_lt_o₂, hdroots.2.1]
  · linarith [d.o₂_lt_e₃, hdroots.2.2]
  · exact d.odd_value

end EvenGeometry
end
end SPR.N6
