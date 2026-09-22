import Mathlib.Tactic

/-!
# Complete degree-five triangular coordinate substitution

A packet contains all 21 monomials of a homogeneous ternary quintic.
The substitution is u=x+A*z+A²*y, q=N*(z+D*y), h=N*G*y.
The displayed transform is justified by one exact universal polynomial
identity, for arbitrary coefficients and arbitrary real A,D,N,G.
-/
namespace SPR.N6.Tail.QuinticSource
noncomputable section
set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 32768

/-- One real coefficient for each exponent triple of total degree five. -/
structure Coefficients where

  c005 : ℝ
  c014 : ℝ
  c023 : ℝ
  c032 : ℝ
  c041 : ℝ
  c050 : ℝ
  c104 : ℝ
  c113 : ℝ
  c122 : ℝ
  c131 : ℝ
  c140 : ℝ
  c203 : ℝ
  c212 : ℝ
  c221 : ℝ
  c230 : ℝ
  c302 : ℝ
  c311 : ℝ
  c320 : ℝ
  c401 : ℝ
  c410 : ℝ
  c500 : ℝ

/-- The entire quintic, including coefficients that may be zero. -/
def eval (C : Coefficients) (x y z : ℝ) : ℝ :=
  C.c005*(z^5)+C.c014*(y*z^4)+C.c023*(y^2*z^3)+C.c032*(y^3*z^2)+C.c041*(y^4*z)+C.c050*(y^5)+C.c104*(x*z^4)+C.c113*(x*y*z^3)+C.c122*(x*y^2*z^2)+C.c131*(x*y^3*z)+C.c140*(x*y^4)+C.c203*(x^2*z^3)+C.c212*(x^2*y*z^2)+C.c221*(x^2*y^2*z)+C.c230*(x^2*y^3)+C.c302*(x^3*z^2)+C.c311*(x^3*y*z)+C.c320*(x^3*y^2)+C.c401*(x^4*z)+C.c410*(x^4*y)+C.c500*(x^5)

/-- Exact coefficients after the same triangular substitution. -/
def transform (A D N G : ℝ) (C : Coefficients) : Coefficients where
  c005 := (1 : ℝ)*C.c050*N^5+(1 : ℝ)*C.c140*A*N^4+(1 : ℝ)*C.c230*A^2*N^3+(1 : ℝ)*C.c320*A^3*N^2+(1 : ℝ)*C.c410*A^4*N+(1 : ℝ)*C.c500*A^5
  c014 := (1 : ℝ)*C.c041*N^5*G+(5 : ℝ)*C.c050*D*N^5+(1 : ℝ)*C.c131*A*N^4*G+(4 : ℝ)*C.c140*A*D*N^4+(1 : ℝ)*C.c140*A^2*N^4+(1 : ℝ)*C.c221*A^2*N^3*G+(3 : ℝ)*C.c230*A^2*D*N^3+(2 : ℝ)*C.c230*A^3*N^3+(1 : ℝ)*C.c311*A^3*N^2*G+(2 : ℝ)*C.c320*A^3*D*N^2+(3 : ℝ)*C.c320*A^4*N^2+(1 : ℝ)*C.c401*A^4*N*G+(1 : ℝ)*C.c410*A^4*D*N+(4 : ℝ)*C.c410*A^5*N+(5 : ℝ)*C.c500*A^6
  c023 := (1 : ℝ)*C.c032*N^5*G^2+(4 : ℝ)*C.c041*D*N^5*G+(10 : ℝ)*C.c050*D^2*N^5+(1 : ℝ)*C.c122*A*N^4*G^2+(3 : ℝ)*C.c131*A*D*N^4*G+(1 : ℝ)*C.c131*A^2*N^4*G+(6 : ℝ)*C.c140*A*D^2*N^4+(4 : ℝ)*C.c140*A^2*D*N^4+(1 : ℝ)*C.c212*A^2*N^3*G^2+(2 : ℝ)*C.c221*A^2*D*N^3*G+(2 : ℝ)*C.c221*A^3*N^3*G+(3 : ℝ)*C.c230*A^2*D^2*N^3+(6 : ℝ)*C.c230*A^3*D*N^3+(1 : ℝ)*C.c230*A^4*N^3+(1 : ℝ)*C.c302*A^3*N^2*G^2+(1 : ℝ)*C.c311*A^3*D*N^2*G+(3 : ℝ)*C.c311*A^4*N^2*G+(1 : ℝ)*C.c320*A^3*D^2*N^2+(6 : ℝ)*C.c320*A^4*D*N^2+(3 : ℝ)*C.c320*A^5*N^2+(4 : ℝ)*C.c401*A^5*N*G+(4 : ℝ)*C.c410*A^5*D*N+(6 : ℝ)*C.c410*A^6*N+(10 : ℝ)*C.c500*A^7
  c032 := (1 : ℝ)*C.c023*N^5*G^3+(3 : ℝ)*C.c032*D*N^5*G^2+(6 : ℝ)*C.c041*D^2*N^5*G+(10 : ℝ)*C.c050*D^3*N^5+(1 : ℝ)*C.c113*A*N^4*G^3+(2 : ℝ)*C.c122*A*D*N^4*G^2+(1 : ℝ)*C.c122*A^2*N^4*G^2+(3 : ℝ)*C.c131*A*D^2*N^4*G+(3 : ℝ)*C.c131*A^2*D*N^4*G+(4 : ℝ)*C.c140*A*D^3*N^4+(6 : ℝ)*C.c140*A^2*D^2*N^4+(1 : ℝ)*C.c203*A^2*N^3*G^3+(1 : ℝ)*C.c212*A^2*D*N^3*G^2+(2 : ℝ)*C.c212*A^3*N^3*G^2+(1 : ℝ)*C.c221*A^2*D^2*N^3*G+(4 : ℝ)*C.c221*A^3*D*N^3*G+(1 : ℝ)*C.c221*A^4*N^3*G+(1 : ℝ)*C.c230*A^2*D^3*N^3+(6 : ℝ)*C.c230*A^3*D^2*N^3+(3 : ℝ)*C.c230*A^4*D*N^3+(3 : ℝ)*C.c302*A^4*N^2*G^2+(3 : ℝ)*C.c311*A^4*D*N^2*G+(3 : ℝ)*C.c311*A^5*N^2*G+(3 : ℝ)*C.c320*A^4*D^2*N^2+(6 : ℝ)*C.c320*A^5*D*N^2+(1 : ℝ)*C.c320*A^6*N^2+(6 : ℝ)*C.c401*A^6*N*G+(6 : ℝ)*C.c410*A^6*D*N+(4 : ℝ)*C.c410*A^7*N+(10 : ℝ)*C.c500*A^8
  c041 := (1 : ℝ)*C.c014*N^5*G^4+(2 : ℝ)*C.c023*D*N^5*G^3+(3 : ℝ)*C.c032*D^2*N^5*G^2+(4 : ℝ)*C.c041*D^3*N^5*G+(5 : ℝ)*C.c050*D^4*N^5+(1 : ℝ)*C.c104*A*N^4*G^4+(1 : ℝ)*C.c113*A*D*N^4*G^3+(1 : ℝ)*C.c113*A^2*N^4*G^3+(1 : ℝ)*C.c122*A*D^2*N^4*G^2+(2 : ℝ)*C.c122*A^2*D*N^4*G^2+(1 : ℝ)*C.c131*A*D^3*N^4*G+(3 : ℝ)*C.c131*A^2*D^2*N^4*G+(1 : ℝ)*C.c140*A*D^4*N^4+(4 : ℝ)*C.c140*A^2*D^3*N^4+(2 : ℝ)*C.c203*A^3*N^3*G^3+(2 : ℝ)*C.c212*A^3*D*N^3*G^2+(1 : ℝ)*C.c212*A^4*N^3*G^2+(2 : ℝ)*C.c221*A^3*D^2*N^3*G+(2 : ℝ)*C.c221*A^4*D*N^3*G+(2 : ℝ)*C.c230*A^3*D^3*N^3+(3 : ℝ)*C.c230*A^4*D^2*N^3+(3 : ℝ)*C.c302*A^5*N^2*G^2+(3 : ℝ)*C.c311*A^5*D*N^2*G+(1 : ℝ)*C.c311*A^6*N^2*G+(3 : ℝ)*C.c320*A^5*D^2*N^2+(2 : ℝ)*C.c320*A^6*D*N^2+(4 : ℝ)*C.c401*A^7*N*G+(4 : ℝ)*C.c410*A^7*D*N+(1 : ℝ)*C.c410*A^8*N+(5 : ℝ)*C.c500*A^9
  c050 := (1 : ℝ)*C.c005*N^5*G^5+(1 : ℝ)*C.c014*D*N^5*G^4+(1 : ℝ)*C.c023*D^2*N^5*G^3+(1 : ℝ)*C.c032*D^3*N^5*G^2+(1 : ℝ)*C.c041*D^4*N^5*G+(1 : ℝ)*C.c050*D^5*N^5+(1 : ℝ)*C.c104*A^2*N^4*G^4+(1 : ℝ)*C.c113*A^2*D*N^4*G^3+(1 : ℝ)*C.c122*A^2*D^2*N^4*G^2+(1 : ℝ)*C.c131*A^2*D^3*N^4*G+(1 : ℝ)*C.c140*A^2*D^4*N^4+(1 : ℝ)*C.c203*A^4*N^3*G^3+(1 : ℝ)*C.c212*A^4*D*N^3*G^2+(1 : ℝ)*C.c221*A^4*D^2*N^3*G+(1 : ℝ)*C.c230*A^4*D^3*N^3+(1 : ℝ)*C.c302*A^6*N^2*G^2+(1 : ℝ)*C.c311*A^6*D*N^2*G+(1 : ℝ)*C.c320*A^6*D^2*N^2+(1 : ℝ)*C.c401*A^8*N*G+(1 : ℝ)*C.c410*A^8*D*N+(1 : ℝ)*C.c500*A^10
  c104 := (1 : ℝ)*C.c140*N^4+(2 : ℝ)*C.c230*A*N^3+(3 : ℝ)*C.c320*A^2*N^2+(4 : ℝ)*C.c410*A^3*N+(5 : ℝ)*C.c500*A^4
  c113 := (1 : ℝ)*C.c131*N^4*G+(4 : ℝ)*C.c140*D*N^4+(2 : ℝ)*C.c221*A*N^3*G+(6 : ℝ)*C.c230*A*D*N^3+(2 : ℝ)*C.c230*A^2*N^3+(3 : ℝ)*C.c311*A^2*N^2*G+(6 : ℝ)*C.c320*A^2*D*N^2+(6 : ℝ)*C.c320*A^3*N^2+(4 : ℝ)*C.c401*A^3*N*G+(4 : ℝ)*C.c410*A^3*D*N+(12 : ℝ)*C.c410*A^4*N+(20 : ℝ)*C.c500*A^5
  c122 := (1 : ℝ)*C.c122*N^4*G^2+(3 : ℝ)*C.c131*D*N^4*G+(6 : ℝ)*C.c140*D^2*N^4+(2 : ℝ)*C.c212*A*N^3*G^2+(4 : ℝ)*C.c221*A*D*N^3*G+(2 : ℝ)*C.c221*A^2*N^3*G+(6 : ℝ)*C.c230*A*D^2*N^3+(6 : ℝ)*C.c230*A^2*D*N^3+(3 : ℝ)*C.c302*A^2*N^2*G^2+(3 : ℝ)*C.c311*A^2*D*N^2*G+(6 : ℝ)*C.c311*A^3*N^2*G+(3 : ℝ)*C.c320*A^2*D^2*N^2+(12 : ℝ)*C.c320*A^3*D*N^2+(3 : ℝ)*C.c320*A^4*N^2+(12 : ℝ)*C.c401*A^4*N*G+(12 : ℝ)*C.c410*A^4*D*N+(12 : ℝ)*C.c410*A^5*N+(30 : ℝ)*C.c500*A^6
  c131 := (1 : ℝ)*C.c113*N^4*G^3+(2 : ℝ)*C.c122*D*N^4*G^2+(3 : ℝ)*C.c131*D^2*N^4*G+(4 : ℝ)*C.c140*D^3*N^4+(2 : ℝ)*C.c203*A*N^3*G^3+(2 : ℝ)*C.c212*A*D*N^3*G^2+(2 : ℝ)*C.c212*A^2*N^3*G^2+(2 : ℝ)*C.c221*A*D^2*N^3*G+(4 : ℝ)*C.c221*A^2*D*N^3*G+(2 : ℝ)*C.c230*A*D^3*N^3+(6 : ℝ)*C.c230*A^2*D^2*N^3+(6 : ℝ)*C.c302*A^3*N^2*G^2+(6 : ℝ)*C.c311*A^3*D*N^2*G+(3 : ℝ)*C.c311*A^4*N^2*G+(6 : ℝ)*C.c320*A^3*D^2*N^2+(6 : ℝ)*C.c320*A^4*D*N^2+(12 : ℝ)*C.c401*A^5*N*G+(12 : ℝ)*C.c410*A^5*D*N+(4 : ℝ)*C.c410*A^6*N+(20 : ℝ)*C.c500*A^7
  c140 := (1 : ℝ)*C.c104*N^4*G^4+(1 : ℝ)*C.c113*D*N^4*G^3+(1 : ℝ)*C.c122*D^2*N^4*G^2+(1 : ℝ)*C.c131*D^3*N^4*G+(1 : ℝ)*C.c140*D^4*N^4+(2 : ℝ)*C.c203*A^2*N^3*G^3+(2 : ℝ)*C.c212*A^2*D*N^3*G^2+(2 : ℝ)*C.c221*A^2*D^2*N^3*G+(2 : ℝ)*C.c230*A^2*D^3*N^3+(3 : ℝ)*C.c302*A^4*N^2*G^2+(3 : ℝ)*C.c311*A^4*D*N^2*G+(3 : ℝ)*C.c320*A^4*D^2*N^2+(4 : ℝ)*C.c401*A^6*N*G+(4 : ℝ)*C.c410*A^6*D*N+(5 : ℝ)*C.c500*A^8
  c203 := (1 : ℝ)*C.c230*N^3+(3 : ℝ)*C.c320*A*N^2+(6 : ℝ)*C.c410*A^2*N+(10 : ℝ)*C.c500*A^3
  c212 := (1 : ℝ)*C.c221*N^3*G+(3 : ℝ)*C.c230*D*N^3+(3 : ℝ)*C.c311*A*N^2*G+(6 : ℝ)*C.c320*A*D*N^2+(3 : ℝ)*C.c320*A^2*N^2+(6 : ℝ)*C.c401*A^2*N*G+(6 : ℝ)*C.c410*A^2*D*N+(12 : ℝ)*C.c410*A^3*N+(30 : ℝ)*C.c500*A^4
  c221 := (1 : ℝ)*C.c212*N^3*G^2+(2 : ℝ)*C.c221*D*N^3*G+(3 : ℝ)*C.c230*D^2*N^3+(3 : ℝ)*C.c302*A*N^2*G^2+(3 : ℝ)*C.c311*A*D*N^2*G+(3 : ℝ)*C.c311*A^2*N^2*G+(3 : ℝ)*C.c320*A*D^2*N^2+(6 : ℝ)*C.c320*A^2*D*N^2+(12 : ℝ)*C.c401*A^3*N*G+(12 : ℝ)*C.c410*A^3*D*N+(6 : ℝ)*C.c410*A^4*N+(30 : ℝ)*C.c500*A^5
  c230 := (1 : ℝ)*C.c203*N^3*G^3+(1 : ℝ)*C.c212*D*N^3*G^2+(1 : ℝ)*C.c221*D^2*N^3*G+(1 : ℝ)*C.c230*D^3*N^3+(3 : ℝ)*C.c302*A^2*N^2*G^2+(3 : ℝ)*C.c311*A^2*D*N^2*G+(3 : ℝ)*C.c320*A^2*D^2*N^2+(6 : ℝ)*C.c401*A^4*N*G+(6 : ℝ)*C.c410*A^4*D*N+(10 : ℝ)*C.c500*A^6
  c302 := (1 : ℝ)*C.c320*N^2+(4 : ℝ)*C.c410*A*N+(10 : ℝ)*C.c500*A^2
  c311 := (1 : ℝ)*C.c311*N^2*G+(2 : ℝ)*C.c320*D*N^2+(4 : ℝ)*C.c401*A*N*G+(4 : ℝ)*C.c410*A*D*N+(4 : ℝ)*C.c410*A^2*N+(20 : ℝ)*C.c500*A^3
  c320 := (1 : ℝ)*C.c302*N^2*G^2+(1 : ℝ)*C.c311*D*N^2*G+(1 : ℝ)*C.c320*D^2*N^2+(4 : ℝ)*C.c401*A^2*N*G+(4 : ℝ)*C.c410*A^2*D*N+(10 : ℝ)*C.c500*A^4
  c401 := (1 : ℝ)*C.c410*N+(5 : ℝ)*C.c500*A
  c410 := (1 : ℝ)*C.c401*N*G+(1 : ℝ)*C.c410*D*N+(5 : ℝ)*C.c500*A^2
  c500 := (1 : ℝ)*C.c500

/-- Universal identity; no parameter signs or coefficient signs are assumed. -/
theorem eval_transform (C : Coefficients) (A D N G x y z : ℝ) :
    eval C (x+A*z+A^2*y) (N*(z+D*y)) (N*G*y) =
      eval (transform A D N G C) x y z := by
  unfold eval transform
  ring

/-- Nonnegative entries, with no claim that arbitrary polar packets have them. -/
structure Nonnegative (C : Coefficients) : Prop where

  c005 : 0 ≤ C.c005
  c014 : 0 ≤ C.c014
  c023 : 0 ≤ C.c023
  c032 : 0 ≤ C.c032
  c041 : 0 ≤ C.c041
  c050 : 0 ≤ C.c050
  c104 : 0 ≤ C.c104
  c113 : 0 ≤ C.c113
  c122 : 0 ≤ C.c122
  c131 : 0 ≤ C.c131
  c140 : 0 ≤ C.c140
  c203 : 0 ≤ C.c203
  c212 : 0 ≤ C.c212
  c221 : 0 ≤ C.c221
  c230 : 0 ≤ C.c230
  c302 : 0 ≤ C.c302
  c311 : 0 ≤ C.c311
  c320 : 0 ≤ C.c320
  c401 : 0 ≤ C.c401
  c410 : 0 ≤ C.c410
  c500 : 0 ≤ C.c500

/-- Complete packet signs imply nonnegative evaluation on coordinate faces too. -/
theorem eval_nonnegative {C : Coefficients} (hC : Nonnegative C)
    {x y z : ℝ} (hx : 0 ≤ x) (hy : 0 ≤ y) (hz : 0 ≤ z) : 0 ≤ eval C x y z := by

  have h005 := hC.c005
  have h014 := hC.c014
  have h023 := hC.c023
  have h032 := hC.c032
  have h041 := hC.c041
  have h050 := hC.c050
  have h104 := hC.c104
  have h113 := hC.c113
  have h122 := hC.c122
  have h131 := hC.c131
  have h140 := hC.c140
  have h203 := hC.c203
  have h212 := hC.c212
  have h221 := hC.c221
  have h230 := hC.c230
  have h302 := hC.c302
  have h311 := hC.c311
  have h320 := hC.c320
  have h401 := hC.c401
  have h410 := hC.c410
  have h500 := hC.c500
  unfold eval
  positivity

end
end SPR.N6.Tail.QuinticSource
