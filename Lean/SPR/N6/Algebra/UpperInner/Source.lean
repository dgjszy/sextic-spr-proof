import SPR.N6.Algebra.UpperInner.Core

/-!
# Exact source of the upper zero-direction certificates

The frequency coordinate is measured from B. Translation cancels from the
zero direction, while all five gaps and the actual ratio are retained.
-/
namespace SPR.N6.UpperInner
noncomputable section
set_option maxRecDepth 8192

def weight (d e f g h m : ℝ) : ℝ :=
  m*(e+f+g+h)*f^2*(f+g)+(f+g+h)*(e+f)*(e+f+g)^2+
    (d+e+f)*(e+f+g)^2*(f+g)+m*(d+e+f+g)*(e+f)*f^2

def weightedRoot (d e f g h m : ℝ) : ℝ :=
  (-e)*m*(e+f+g+h)*f^2*(f+g)+
    f*(d+e+f)*(e+f+g)^2*(f+g)+(f+g)*m*(d+e+f+g)*(e+f)*f^2

/-- The same cleared odd quadratic in the translated coordinate. -/
def odd (d e f g h m t : ℝ) : ℝ :=
  m*(-e-f-g-h)*((-e)*(f+g+h)*(e+f+g)-
    (d+e+f)*(e+f+g)*(f+g)-m*(d+e+f+g)*f^2)*t*(t-f)+
  (-f-g-h)*m*(f+g)*(e*(e+f+g+h)-(d+e+f+g)*(e+f))*(t+e)*(t-f)+
  (d+e+f)*(-g)*m*((e+f+g+h)*(f+g)-(d+e+f+g)*g)*(t+e)*t+
  (d+e+f)*(e+f+g)^2*(f+g+h)*(t+e)*(t-f-g)

set_option maxHeartbeats 0 in
/-- Complete source identity, including the designated double contact. -/
theorem source_lower (d e f g h m t : ℝ) :
    (weight d e f g h m*t-weightedRoot d e f g h m)*
      (-(t+e+d)*(t-f)*(t-f-g))+odd d e f g h m t*t*(t-f) =
      (t-f)^2*q0 d e f g h m t := by
  unfold weight weightedRoot odd q0 q00 q01 q02
  ring

set_option maxHeartbeats 0 in
/-- The second source uses the same weights and the same odd quadratic. -/
theorem source_upper (d e f g h m t : ℝ) :
    (weight d e f g h m*t-weightedRoot d e f g h m)*
      (-(t+e)*t*(t-f-g-h))+odd d e f g h m t*t*(t-f) =
      t^2*q1 d e f g h m t := by
  unfold weight weightedRoot odd q1 q10 q11 q12
  ring

end
end SPR.N6.UpperInner
