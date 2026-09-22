import SPR.N6.Algebra.Tail.OuterHomomorphism
import Mathlib.RingTheory.MvPolynomial.Homogeneous

/-!
# Polynomial homogeneity of the actual outer source

The source is interpreted in a multivariate polynomial ring. Homogeneity is
proved from its factored construction, so coefficient coverage does not depend
on an external degree calculation.
-/
namespace SPR.N6.Tail.OuterHomogeneous
noncomputable section
open MvPolynomial
variable {σ : Type*}

private theorem eq_constant_of_degree_zero (p : MvPolynomial σ ℝ)
    (hp : p.IsHomogeneous 0) : p = C (coeff 0 p) :=
  totalDegree_eq_zero_iff_eq_C.mp ((totalDegree_zero_iff_isHomogeneous σ).mpr hp)

private theorem q00_homogeneous_zero (d e f g h m : MvPolynomial σ ℝ)
    (hd : d.IsHomogeneous 0) (he : e.IsHomogeneous 0) (hf : f.IsHomogeneous 0)
    (hg : g.IsHomogeneous 0) (hh : h.IsHomogeneous 0) (hm : m.IsHomogeneous 0) :
    (LowerZero.q00 d e f g h m).IsHomogeneous 0 := by
  rw [eq_constant_of_degree_zero d hd,eq_constant_of_degree_zero e he,
    eq_constant_of_degree_zero f hf,eq_constant_of_degree_zero g hg,
    eq_constant_of_degree_zero h hh,eq_constant_of_degree_zero m hm]
  rw [← LowerZero.q00_map (C : ℝ →+* MvPolynomial σ ℝ)]
  exact isHomogeneous_C σ _

private theorem q01_homogeneous_zero (d e f g h m : MvPolynomial σ ℝ)
    (hd : d.IsHomogeneous 0) (he : e.IsHomogeneous 0) (hf : f.IsHomogeneous 0)
    (hg : g.IsHomogeneous 0) (hh : h.IsHomogeneous 0) (hm : m.IsHomogeneous 0) :
    (LowerZero.q01 d e f g h m).IsHomogeneous 0 := by
  rw [eq_constant_of_degree_zero d hd,eq_constant_of_degree_zero e he,
    eq_constant_of_degree_zero f hf,eq_constant_of_degree_zero g hg,
    eq_constant_of_degree_zero h hh,eq_constant_of_degree_zero m hm]
  rw [← LowerZero.q01_map (C : ℝ →+* MvPolynomial σ ℝ)]
  exact isHomogeneous_C σ _

private theorem q02_homogeneous_zero (d e f g h m : MvPolynomial σ ℝ)
    (hd : d.IsHomogeneous 0) (he : e.IsHomogeneous 0) (hf : f.IsHomogeneous 0)
    (hg : g.IsHomogeneous 0) (hh : h.IsHomogeneous 0) (hm : m.IsHomogeneous 0) :
    (LowerZero.q02 d e f g h m).IsHomogeneous 0 := by
  rw [eq_constant_of_degree_zero d hd,eq_constant_of_degree_zero e he,
    eq_constant_of_degree_zero f hf,eq_constant_of_degree_zero g hg,
    eq_constant_of_degree_zero h hh,eq_constant_of_degree_zero m hm]
  rw [← LowerZero.q02_map (C : ℝ →+* MvPolynomial σ ℝ)]
  exact isHomogeneous_C σ _

private theorem q10_homogeneous_zero (d e f g h m : MvPolynomial σ ℝ)
    (hd : d.IsHomogeneous 0) (he : e.IsHomogeneous 0) (hf : f.IsHomogeneous 0)
    (hg : g.IsHomogeneous 0) (hh : h.IsHomogeneous 0) (hm : m.IsHomogeneous 0) :
    (LowerZero.q10 d e f g h m).IsHomogeneous 0 := by
  rw [eq_constant_of_degree_zero d hd,eq_constant_of_degree_zero e he,
    eq_constant_of_degree_zero f hf,eq_constant_of_degree_zero g hg,
    eq_constant_of_degree_zero h hh,eq_constant_of_degree_zero m hm]
  rw [← LowerZero.q10_map (C : ℝ →+* MvPolynomial σ ℝ)]
  exact isHomogeneous_C σ _

private theorem q11_homogeneous_zero (d e f g h m : MvPolynomial σ ℝ)
    (hd : d.IsHomogeneous 0) (he : e.IsHomogeneous 0) (hf : f.IsHomogeneous 0)
    (hg : g.IsHomogeneous 0) (hh : h.IsHomogeneous 0) (hm : m.IsHomogeneous 0) :
    (LowerZero.q11 d e f g h m).IsHomogeneous 0 := by
  rw [eq_constant_of_degree_zero d hd,eq_constant_of_degree_zero e he,
    eq_constant_of_degree_zero f hf,eq_constant_of_degree_zero g hg,
    eq_constant_of_degree_zero h hh,eq_constant_of_degree_zero m hm]
  rw [← LowerZero.q11_map (C : ℝ →+* MvPolynomial σ ℝ)]
  exact isHomogeneous_C σ _

private theorem q12_homogeneous_zero (d e f g h m : MvPolynomial σ ℝ)
    (hd : d.IsHomogeneous 0) (he : e.IsHomogeneous 0) (hf : f.IsHomogeneous 0)
    (hg : g.IsHomogeneous 0) (hh : h.IsHomogeneous 0) (hm : m.IsHomogeneous 0) :
    (LowerZero.q12 d e f g h m).IsHomogeneous 0 := by
  rw [eq_constant_of_degree_zero d hd,eq_constant_of_degree_zero e he,
    eq_constant_of_degree_zero f hf,eq_constant_of_degree_zero g hg,
    eq_constant_of_degree_zero h hh,eq_constant_of_degree_zero m hm]
  rw [← LowerZero.q12_map (C : ℝ →+* MvPolynomial σ ℝ)]
  exact isHomogeneous_C σ _

/-- Degree-two interpolation uses exactly six degree-zero coefficient values. -/
theorem quadratic_homogeneous (q : MvPolynomial σ ℝ → MvPolynomial σ ℝ → MvPolynomial σ ℝ)
    (S d h : MvPolynomial σ ℝ) (hS : S.IsHomogeneous 1)
    (hd : d.IsHomogeneous 1) (hh : h.IsHomogeneous 1)
    (h00 : (q 0 0).IsHomogeneous 0) (h10 : (q 1 0).IsHomogeneous 0)
    (hm10 : (q (-1) 0).IsHomogeneous 0) (h01 : (q 0 1).IsHomogeneous 0)
    (h0m1 : (q 0 (-1)).IsHomogeneous 0) (h11 : (q 1 1).IsHomogeneous 0) :
    (quadratic q S d h).IsHomogeneous 2 := by
  have h2 : (2 : MvPolynomial σ ℝ).IsHomogeneous 0 := by
    simpa using (isHomogeneous_C σ (2 : ℝ) :
      (C (2 : ℝ) : MvPolynomial σ ℝ).IsHomogeneous 0)
  have h0 : (2*S^2*q 0 0).IsHomogeneous 2 := (h2.mul (hS.pow 2)).mul h00
  have h1 : (S*d*(q 1 0-q (-1) 0)).IsHomogeneous 2 := (hS.mul hd).mul (h10.sub hm10)
  have h2' : (d^2*(q 1 0+q (-1) 0-2*q 0 0)).IsHomogeneous 2 :=
    (hd.pow 2).mul ((h10.add hm10).sub (h2.mul h00))
  have h3 : (S*h*(q 0 1-q 0 (-1))).IsHomogeneous 2 := (hS.mul hh).mul (h01.sub h0m1)
  have h4 : (h^2*(q 0 1+q 0 (-1)-2*q 0 0)).IsHomogeneous 2 :=
    (hh.pow 2).mul ((h01.add h0m1).sub (h2.mul h00))
  have h5 : (2*d*h*(q 1 1-q 1 0-q 0 1+q 0 0)).IsHomogeneous 2 :=
    ((h2.mul hd).mul hh).mul (((h11.sub h10).sub h01).add h00)
  exact ((((h0.add h1).add h2').add h3).add h4).add h5

/-- The complete zero direction is homogeneous of degree two in the outer variables. -/
theorem zero_homogeneous (i : Bool) (s aN A B b c CN m t : MvPolynomial σ ℝ)
    (hs : s.IsHomogeneous 1) (haN : aN.IsHomogeneous 1) (hCN : CN.IsHomogeneous 1)
    (hA : A.IsHomogeneous 0) (hB : B.IsHomogeneous 0) (hb : b.IsHomogeneous 0)
    (hc : c.IsHomogeneous 0) (hm : m.IsHomogeneous 0) (ht : t.IsHomogeneous 0) :
    (zero i s aN A B b c CN m t).IsHomogeneous 2 := by
  have hd := (hA.mul hs).sub haN
  have hh := hCN.sub (hc.mul hs)
  have he := hB.sub hA
  have hf := hb.sub hB
  have hg := hc.sub hb
  have h0 : (0 : MvPolynomial σ ℝ).IsHomogeneous 0 := isHomogeneous_zero σ ℝ 0
  have h1 : (1 : MvPolynomial σ ℝ).IsHomogeneous 0 := isHomogeneous_one σ ℝ
  have hn : (-1 : MvPolynomial σ ℝ).IsHomogeneous 0 := h1.neg
  have hq00 : (quadratic (fun d h => LowerZero.q00 d (B-A) (b-B) (c-b) h m)
      s (A*s-aN) (CN-c*s)).IsHomogeneous 2 := by
    apply quadratic_homogeneous _ _ _ _ hs hd hh
    · exact q00_homogeneous_zero _ _ _ _ _ _ h0 he hf hg h0 hm
    · exact q00_homogeneous_zero _ _ _ _ _ _ h1 he hf hg h0 hm
    · exact q00_homogeneous_zero _ _ _ _ _ _ hn he hf hg h0 hm
    · exact q00_homogeneous_zero _ _ _ _ _ _ h0 he hf hg h1 hm
    · exact q00_homogeneous_zero _ _ _ _ _ _ h0 he hf hg hn hm
    · exact q00_homogeneous_zero _ _ _ _ _ _ h1 he hf hg h1 hm
  have hq01 : (quadratic (fun d h => LowerZero.q01 d (B-A) (b-B) (c-b) h m)
      s (A*s-aN) (CN-c*s)).IsHomogeneous 2 := by
    apply quadratic_homogeneous _ _ _ _ hs hd hh
    · exact q01_homogeneous_zero _ _ _ _ _ _ h0 he hf hg h0 hm
    · exact q01_homogeneous_zero _ _ _ _ _ _ h1 he hf hg h0 hm
    · exact q01_homogeneous_zero _ _ _ _ _ _ hn he hf hg h0 hm
    · exact q01_homogeneous_zero _ _ _ _ _ _ h0 he hf hg h1 hm
    · exact q01_homogeneous_zero _ _ _ _ _ _ h0 he hf hg hn hm
    · exact q01_homogeneous_zero _ _ _ _ _ _ h1 he hf hg h1 hm
  have hq02 : (quadratic (fun d h => LowerZero.q02 d (B-A) (b-B) (c-b) h m)
      s (A*s-aN) (CN-c*s)).IsHomogeneous 2 := by
    apply quadratic_homogeneous _ _ _ _ hs hd hh
    · exact q02_homogeneous_zero _ _ _ _ _ _ h0 he hf hg h0 hm
    · exact q02_homogeneous_zero _ _ _ _ _ _ h1 he hf hg h0 hm
    · exact q02_homogeneous_zero _ _ _ _ _ _ hn he hf hg h0 hm
    · exact q02_homogeneous_zero _ _ _ _ _ _ h0 he hf hg h1 hm
    · exact q02_homogeneous_zero _ _ _ _ _ _ h0 he hf hg hn hm
    · exact q02_homogeneous_zero _ _ _ _ _ _ h1 he hf hg h1 hm
  have hq10 : (quadratic (fun d h => LowerZero.q10 d (B-A) (b-B) (c-b) h m)
      s (A*s-aN) (CN-c*s)).IsHomogeneous 2 := by
    apply quadratic_homogeneous _ _ _ _ hs hd hh
    · exact q10_homogeneous_zero _ _ _ _ _ _ h0 he hf hg h0 hm
    · exact q10_homogeneous_zero _ _ _ _ _ _ h1 he hf hg h0 hm
    · exact q10_homogeneous_zero _ _ _ _ _ _ hn he hf hg h0 hm
    · exact q10_homogeneous_zero _ _ _ _ _ _ h0 he hf hg h1 hm
    · exact q10_homogeneous_zero _ _ _ _ _ _ h0 he hf hg hn hm
    · exact q10_homogeneous_zero _ _ _ _ _ _ h1 he hf hg h1 hm
  have hq11 : (quadratic (fun d h => LowerZero.q11 d (B-A) (b-B) (c-b) h m)
      s (A*s-aN) (CN-c*s)).IsHomogeneous 2 := by
    apply quadratic_homogeneous _ _ _ _ hs hd hh
    · exact q11_homogeneous_zero _ _ _ _ _ _ h0 he hf hg h0 hm
    · exact q11_homogeneous_zero _ _ _ _ _ _ h1 he hf hg h0 hm
    · exact q11_homogeneous_zero _ _ _ _ _ _ hn he hf hg h0 hm
    · exact q11_homogeneous_zero _ _ _ _ _ _ h0 he hf hg h1 hm
    · exact q11_homogeneous_zero _ _ _ _ _ _ h0 he hf hg hn hm
    · exact q11_homogeneous_zero _ _ _ _ _ _ h1 he hf hg h1 hm
  have hq12 : (quadratic (fun d h => LowerZero.q12 d (B-A) (b-B) (c-b) h m)
      s (A*s-aN) (CN-c*s)).IsHomogeneous 2 := by
    apply quadratic_homogeneous _ _ _ _ hs hd hh
    · exact q12_homogeneous_zero _ _ _ _ _ _ h0 he hf hg h0 hm
    · exact q12_homogeneous_zero _ _ _ _ _ _ h1 he hf hg h0 hm
    · exact q12_homogeneous_zero _ _ _ _ _ _ hn he hf hg h0 hm
    · exact q12_homogeneous_zero _ _ _ _ _ _ h0 he hf hg h1 hm
    · exact q12_homogeneous_zero _ _ _ _ _ _ h0 he hf hg hn hm
    · exact q12_homogeneous_zero _ _ _ _ _ _ h1 he hf hg h1 hm
  cases i
  · exact (hq00.add (hq01.mul (ht.sub hB))).add (hq02.mul ((ht.sub hB).pow 2))
  · exact (hq10.add (hq11.mul (ht.sub hB))).add (hq12.mul ((ht.sub hB).pow 2))

/-- The full five-degree source is homogeneous for arbitrary degree-one outer inputs. -/
theorem source_homogeneous (i : Bool) (s aN A B b c CN m t : MvPolynomial σ ℝ)
    (hs : s.IsHomogeneous 1) (haN : aN.IsHomogeneous 1) (hCN : CN.IsHomogeneous 1)
    (hA : A.IsHomogeneous 0) (hB : B.IsHomogeneous 0) (hb : b.IsHomogeneous 0)
    (hc : c.IsHomogeneous 0) (hm : m.IsHomogeneous 0) (ht : t.IsHomogeneous 0) :
    (source i s aN A B b c CN m t).IsHomogeneous 5 := by
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
  have hR : (residual i s aN A B b c CN t).IsHomogeneous 4 := by
    cases i
    · exact (((((haN.mul (ht.sub hA)).mul (ht.sub hB)).mul hD2).mul hs).add
        ((((ht.mul hs).sub haN).mul ((hCN.mul ht).sub ((hA.mul hB).mul hs))).mul hD1))
    · exact (((((hCN.mul (ht.sub hb)).mul (ht.sub hc)).mul hD1).mul hs).add
        ((((ht.mul hs).sub hCN).mul ((haN.mul ht).sub ((hb.mul hc).mul hs))).mul hD2))
  have hZ := zero_homogeneous i s aN A B b c CN m t hs haN hCN hA hB hb hc hm ht
  have h2 : (2 : MvPolynomial σ ℝ).IsHomogeneous 0 := by
    simpa using (isHomogeneous_C σ (2 : ℝ) :
      (C (2 : ℝ) : MvPolynomial σ ℝ).IsHomogeneous 0)
  have hc0 : (if i then B else b).IsHomogeneous 0 := by cases i <;> assumption
  have hc1 : (if i then c else A).IsHomogeneous 0 := by cases i <;> assumption
  exact ((h2.mul hW).mul
    (((hm.mul ((ht.sub hc0).pow 2)).mul hR).add
      (((hD1.mul hD2).mul ht).mul ((ht.sub hc1).pow 2)))).add ((hH.mul ht).mul hZ)

end
end SPR.N6.Tail.OuterHomogeneous
