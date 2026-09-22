import SPR.N6.Algebra.Tail.OuterCore
/-! Exact reduced f^0 low-core gap certificates. -/
namespace SPR.N6.Tail.SmallGap.Low0
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Reduced source coefficient at outer index (1, 0, 0). -/
def coefficient100 (A e g v : ℝ) : ℝ :=
  ((((((3) * e + ((-6) * g)) * e + ((3) * g ^ 2)) * A + ((((11) * e + ((-21) * g)) * e + (((-6)
    * v + (3)) * g ^ 2)) * e + (((6) * v + (7)) * g ^ 3))) * A + (((((15) * e + ((-24) * g)) * e
    + ((((3) * v + (-10)) * v + (-2)) * g ^ 2)) * e + ((((6) * v + (26)) * v + (26)) * g ^ 3)) *
    e + ((((3) * v + (8)) * v + (5)) * g ^ 4))) * A + ((((((9) * e + ((-9) * g)) * e + (((5) * v
    ^ 2 + (2)) * g ^ 2)) * e + ((((11) * v + (38)) * v + (36)) * g ^ 3)) * e + ((((7) * v +
    (24)) * v + (17)) * g ^ 4)) * e + ((((1) * v + (2)) * v + (1)) * g ^ 5))) * A + ((((((2) * e
    ^ 2 + ((((2) * v + (4)) * v + (4)) * g ^ 2)) * e + ((((8) * v + (24)) * v + (20)) * g ^ 3))
    * e + ((((10) * v + (28)) * v + (18)) * g ^ 4)) * e + ((((4) * v + (8)) * v + (4)) * g ^ 5))
    * e)

def leftRemainder100 (A e g v : ℝ) : ℝ :=
  ((((((17 / 2)) * e + ((12) * g)) * e ^ 2) * A + (((((15) * e + ((36) * g)) * e + (((3) * v ^ 2
    + (16)) * g ^ 2)) * e + ((((12) * v + (6)) * v + (10)) * g ^ 3)) * e + ((((6) * v + (24)) *
    v + (14)) * g ^ 4))) * A + ((((((9) * e + ((36) * g)) * e + (((5) * v ^ 2 + (56)) * g ^ 2))
    * e + ((((26) * v + (38)) * v + (78)) * g ^ 3)) * e + ((((34) * v + (100)) * v + (104)) * g
    ^ 4)) * e + ((((24) * v + (64)) * v + (56)) * g ^ 5))) * A + (((((((2) * e + ((12) * g)) * e
    + ((((2) * v + (4)) * v + (34)) * g ^ 2)) * e + ((((16) * v + (40)) * v + (76)) * g ^ 3)) *
    e + ((((46) * v + (124)) * v + (132)) * g ^ 4)) * e + ((((56) * v + (152)) * v + (128)) * g
    ^ 5)) * e + ((((24) * v + (64)) * v + (48)) * g ^ 6))

def leftSquares100 (A e g v : ℝ) : ℝ :=
  (6 : ℝ)*(A^2)*((1 : ℝ)*(g^2) + ((-1 : ℝ) / 2)*(A*e))^2 + (6 : ℝ)*(A^2)*((1 : ℝ)*(g^2*v) + ((-1
    : ℝ) / 2)*(A*e))^2 + (10 : ℝ)*(A*e)*((1 : ℝ)*(g^2*v) + ((-1 : ℝ) / 2)*(A*e))^2

set_option maxHeartbeats 0 in
/-- Exact reduced-source identity in the e ge g cone. -/
theorem left_identity100 (A e g v : ℝ) :
    coefficient100 A (e+g) g v = leftRemainder100 A e g v + leftSquares100 A e g v := by
  unfold coefficient100 leftRemainder100 leftSquares100
  ring

set_option maxHeartbeats 0 in
/-- The remainder and square certificate are nonnegative on the closed orthant. -/
theorem left_nonnegative100 {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ coefficient100 A (e+g) g v := by
  rw [left_identity100]
  have hr : 0 ≤ leftRemainder100 A e g v := by
    unfold leftRemainder100
    positivity
  have hs : 0 ≤ leftSquares100 A e g v := by
    unfold leftSquares100
    positivity
  exact add_nonneg hr hs

def rightRemainder100 (A e g v : ℝ) : ℝ :=
  (((((3) * g ^ 2) * A + (((((6) * v + (6)) * g) * e + (((12) * v + (24)) * g ^ 2)) * e + (((6)
    * v + (7)) * g ^ 3))) * A + (((((((12) * v + (24)) * v + (20)) * e + ((((36) * v + (90)) * v
    + (70)) * g)) * e + ((((39) * v + (116)) * v + (106)) * g ^ 2)) * e + ((((18) * v + (58)) *
    v + (46)) * g ^ 3)) * e + ((((3) * v + (8)) * v + (5)) * g ^ 4))) * A + ((((((((24) * v +
    (64)) * v + (56)) * e + ((((76) * v + (220)) * v + (176)) * g)) * e + ((((90) * v + (278)) *
    v + (222)) * g ^ 2)) * e + ((((49) * v + (154)) * v + (114)) * g ^ 3)) * e + ((((12) * v +
    (34)) * v + (22)) * g ^ 4)) * e + ((((1) * v + (2)) * v + (1)) * g ^ 5))) * A + (((((((((24)
    * v + (64)) * v + (48)) * e + ((((88) * v + (232)) * v + (160)) * g)) * e + ((((126) * v +
    (324)) * v + (212)) * g ^ 2)) * e + ((((88) * v + (216)) * v + (132)) * g ^ 3)) * e +
    ((((30) * v + (68)) * v + (38)) * g ^ 4)) * e + ((((4) * v + (8)) * v + (4)) * g ^ 5)) * e)

def rightSquares100 (A e g v : ℝ) : ℝ :=
  0

set_option maxHeartbeats 0 in
/-- Exact reduced-source identity in the g ge e cone. -/
theorem right_identity100 (A e g v : ℝ) :
    coefficient100 A e (e+g) v = rightRemainder100 A e g v + rightSquares100 A e g v := by
  unfold coefficient100 rightRemainder100 rightSquares100
  ring

set_option maxHeartbeats 0 in
/-- The remainder and square certificate are nonnegative on the closed orthant. -/
theorem right_nonnegative100 {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ coefficient100 A e (e+g) v := by
  rw [right_identity100]
  have hr : 0 ≤ rightRemainder100 A e g v := by
    unfold rightRemainder100
    positivity
  have hs : 0 ≤ rightSquares100 A e g v := by
    unfold rightSquares100
    positivity
  exact add_nonneg hr hs

set_option maxHeartbeats 0 in
/-- Both closed inner-gap cones cover the coefficient, including equality. -/
theorem nonnegative100 {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ coefficient100 A e g v := by
  rcases le_total g e with hge | heg
  · have hh : e = (e-g)+g := by ring
    rw [hh, left_identity100]
    have hr : 0 ≤ leftRemainder100 A (e-g) g v := by
      unfold leftRemainder100
      positivity
    have hs : 0 ≤ leftSquares100 A (e-g) g v := by
      unfold leftSquares100
      positivity
    exact add_nonneg hr hs
  · have hh : g = e+(g-e) := by ring
    rw [hh, right_identity100]
    have hr : 0 ≤ rightRemainder100 A e (g-e) v := by
      unfold rightRemainder100
      positivity
    have hs : 0 ≤ rightSquares100 A e (g-e) v := by
      unfold rightSquares100
      positivity
    exact add_nonneg hr hs

/-- Reduced source coefficient at outer index (0, 1, 0). -/
def coefficient010 (A e g v : ℝ) : ℝ :=
  ((((((((3) * e + ((-6) * g)) * e + ((3) * g ^ 2)) * A + ((((17) * e + ((-21) * g)) * e +
    (((-6) * v + (-3)) * g ^ 2)) * e + (((6) * v + (7)) * g ^ 3))) * A + (((((40) * e + ((-16) *
    g)) * e + ((((3) * v + (-22)) * v + (-33)) * g ^ 2)) * e + ((((6) * v + (14)) * v + (12)) *
    g ^ 3)) * e + ((((3) * v + (8)) * v + (5)) * g ^ 4))) * A + ((((((50) * e + ((26) * g)) * e
    + ((((11) * v + (-26)) * v + (-39)) * g ^ 2)) * e + ((((23) * v + (14)) * v + (-3)) * g ^
    3)) * e + ((((13) * v + (26)) * v + (13)) * g ^ 4)) * e + ((((1) * v + (2)) * v + (1)) * g ^
    5))) * A + (((((((35) * e + ((54) * g)) * e + ((((15) * v + (-6)) * v + (6)) * g ^ 2)) * e +
    ((((36) * v + (22)) * v + (-6)) * g ^ 3)) * e + ((((27) * v + (38)) * v + (11)) * g ^ 4)) *
    e + ((((6) * v + (10)) * v + (4)) * g ^ 5)) * e)) * A + (((((((13) * e + ((35) * g)) * e +
    ((((9) * v + (8)) * v + (30)) * g ^ 2)) * e + ((((27) * v + (28)) * v + (10)) * g ^ 3)) * e
    + ((((27) * v + (32)) * v + (5)) * g ^ 4)) * e + ((((9) * v + (12)) * v + (3)) * g ^ 5)) * e
    ^ 2)) * A + (((((((2) * e + ((8) * g)) * e + ((((2) * v + (4)) * v + (12)) * g ^ 2)) * e +
    ((((8) * v + (12)) * v + (8)) * g ^ 3)) * e + ((((10) * v + (12)) * v + (2)) * g ^ 4)) * e +
    ((((4) * v + (4)) * v) * g ^ 5)) * e ^ 3)

def leftRemainder010 (A e g v : ℝ) : ℝ :=
  ((((((((6) * e + ((15) * g)) * e + ((6) * g ^ 2)) * e) * A + (((((40) * e + ((131) * g)) * e +
    (((3) * v ^ 2 + (127)) * g ^ 2)) * e + (((12) * v ^ 2 + (58)) * g ^ 3)) * e + (((9) * v ^ 2
    + (8)) * g ^ 4))) * A + ((((((50) * e + ((275) * g)) * e + (((11) * v ^ 2 + (565)) * g ^ 2))
    * e + (((56) * v ^ 2 + (536)) * g ^ 3)) * e + (((69) * v ^ 2 + (232)) * g ^ 4)) * e +
    ((((33) * v + (16)) * v + (48)) * g ^ 5))) * A + (((((((35) * e + ((261) * g)) * e + (((15)
    * v ^ 2 + (801)) * g ^ 2)) * e + (((80) * v ^ 2 + (1258)) * g ^ 3)) * e + ((((193) * v +
    (68)) * v + (1094)) * g ^ 4)) * e + ((((228) * v + (128)) * v + (512)) * g ^ 5)) * e +
    ((((84) * v + (64)) * v + (104)) * g ^ 6))) * A + ((((((((13) * e + ((126) * g)) * e +
    ((((9) * v + (8)) * v + (513)) * g ^ 2)) * e + ((((72) * v + (68)) * v + (1140)) * g ^ 3)) *
    e + ((((225) * v + (224)) * v + (1500)) * g ^ 4)) * e + ((((341) * v + (356)) * v + (1176))
    * g ^ 5)) * e + ((((252) * v + (272)) * v + (512)) * g ^ 6)) * e + ((((72) * v + (80)) * v +
    (96)) * g ^ 7))) * A + (((((((((2) * e + ((24) * g)) * e + ((((2) * v + (4)) * v + (124)) *
    g ^ 2)) * e + ((((20) * v + (36)) * v + (360)) * g ^ 3)) * e + ((((80) * v + (132)) * v +
    (642)) * g ^ 4)) * e + ((((164) * v + (252)) * v + (720)) * g ^ 5)) * e + ((((182) * v +
    (264)) * v + (496)) * g ^ 6)) * e + ((((104) * v + (144)) * v + (192)) * g ^ 7)) * e +
    ((((24) * v + (32)) * v + (32)) * g ^ 8))

def leftSquares010 (A e g v : ℝ) : ℝ :=
  (32 : ℝ)*(A^2*e^2*g^2)*((1 : ℝ)*(A) + (-1 : ℝ)*(g*v))^2 + (15 : ℝ)*(A^3*g)*((1 : ℝ)*(A*e) +
    (-1 : ℝ)*(g^2*v))^2 + (13 : ℝ)*(A^2*e^3*g)*((1 : ℝ)*(A) + (-1 : ℝ)*(g*v))^2 + (12 :
    ℝ)*(A^3*e*g^4)*((1 : ℝ)*(v) + (-1 : ℝ)*((1 : ℝ)))^2 + (11 : ℝ)*(A^3*e)*((1 : ℝ)*(A*e) + (-1
    : ℝ)*(g^2*v))^2 + (3 : ℝ)*(A^4)*((1 : ℝ)*(A*e) + (-1 : ℝ)*(g^2*v))^2 + (3 :
    ℝ)*(A^2*e^3*g)*((1 : ℝ)*(e) + (-1 : ℝ)*(g*v))^2 + (1 : ℝ)*(A*e^2*g)*((1 : ℝ)*(A*e) + (-1 :
    ℝ)*(g^2*v))^2

set_option maxHeartbeats 0 in
/-- Exact reduced-source identity in the e ge g cone. -/
theorem left_identity010 (A e g v : ℝ) :
    coefficient010 A (e+g) g v = leftRemainder010 A e g v + leftSquares010 A e g v := by
  unfold coefficient010 leftRemainder010 leftSquares010
  ring

set_option maxHeartbeats 0 in
/-- The remainder and square certificate are nonnegative on the closed orthant. -/
theorem left_nonnegative010 {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ coefficient010 A (e+g) g v := by
  rw [left_identity010]
  have hr : 0 ≤ leftRemainder010 A e g v := by
    unfold leftRemainder010
    positivity
  have hs : 0 ≤ leftSquares010 A e g v := by
    unfold leftSquares010
    positivity
  exact add_nonneg hr hs

def rightRemainder010 (A e g v : ℝ) : ℝ :=
  (((((((((6) * v) * g) * e + (((12) * v + (5)) * g ^ 2)) * e + (((6) * v + (7)) * g ^ 3)) * A +
    ((((((12) * v ^ 2 + (5)) * e + ((((36) * v + (30)) * v) * g)) * e + ((((39) * v + (68)) * v
    + (33)) * g ^ 2)) * e + ((((18) * v + (46)) * v + (32)) * g ^ 3)) * e + ((((3) * v + (8)) *
    v + (5)) * g ^ 4))) * A + ((((((((48) * v + (16)) * v + (33)) * e + ((((148) * v + (104)) *
    v) * g)) * e + ((((168) * v + (192)) * v + (38)) * g ^ 2)) * e + ((((85) * v + (138)) * v +
    (59)) * g ^ 3)) * e + ((((18) * v + (36)) * v + (18)) * g ^ 4)) * e + ((((1) * v + (2)) * v
    + (1)) * g ^ 5))) * A + (((((((((84) * v + (64)) * v + (104)) * e + ((((276) * v + (256)) *
    v + (112)) * g)) * e + ((((345) * v + (388)) * v + (94)) * g ^ 2)) * e + ((((204) * v +
    (274)) * v + (78)) * g ^ 3)) * e + ((((57) * v + (88)) * v + (31)) * g ^ 4)) * e + ((((6) *
    v + (10)) * v + (4)) * g ^ 5)) * e)) * A + (((((((((72) * v + (80)) * v + (96)) * e +
    ((((252) * v + (288)) * v + (160)) * g)) * e + ((((342) * v + (404)) * v + (120)) * g ^ 2))
    * e + ((((225) * v + (276)) * v + (60)) * g ^ 3)) * e + ((((72) * v + (92)) * v + (20)) * g
    ^ 4)) * e + ((((9) * v + (12)) * v + (3)) * g ^ 5)) * e ^ 2)) * A + (((((((((24) * v + (32))
    * v + (32)) * e + ((((88) * v + (112)) * v + (64)) * g)) * e + ((((126) * v + (152)) * v +
    (48)) * g ^ 2)) * e + ((((88) * v + (100)) * v + (16)) * g ^ 3)) * e + ((((30) * v + (32)) *
    v + (2)) * g ^ 4)) * e + ((((4) * v + (4)) * v) * g ^ 5)) * e ^ 3)

def rightSquares010 (A e g v : ℝ) : ℝ :=
  (13 : ℝ)*(A^3*e)*((1 : ℝ)*(A*g) + (-1 : ℝ)*(e^2))^2 + (3 : ℝ)*(A^4)*((1 : ℝ)*(A*g) + (-1 :
    ℝ)*(e^2))^2 + (2 : ℝ)*(A^3*e^3)*((1 : ℝ)*(e) + (-1 : ℝ)*(g))^2

set_option maxHeartbeats 0 in
/-- Exact reduced-source identity in the g ge e cone. -/
theorem right_identity010 (A e g v : ℝ) :
    coefficient010 A e (e+g) v = rightRemainder010 A e g v + rightSquares010 A e g v := by
  unfold coefficient010 rightRemainder010 rightSquares010
  ring

set_option maxHeartbeats 0 in
/-- The remainder and square certificate are nonnegative on the closed orthant. -/
theorem right_nonnegative010 {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ coefficient010 A e (e+g) v := by
  rw [right_identity010]
  have hr : 0 ≤ rightRemainder010 A e g v := by
    unfold rightRemainder010
    positivity
  have hs : 0 ≤ rightSquares010 A e g v := by
    unfold rightSquares010
    positivity
  exact add_nonneg hr hs

set_option maxHeartbeats 0 in
/-- Both closed inner-gap cones cover the coefficient, including equality. -/
theorem nonnegative010 {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ coefficient010 A e g v := by
  rcases le_total g e with hge | heg
  · have hh : e = (e-g)+g := by ring
    rw [hh, left_identity010]
    have hr : 0 ≤ leftRemainder010 A (e-g) g v := by
      unfold leftRemainder010
      positivity
    have hs : 0 ≤ leftSquares010 A (e-g) g v := by
      unfold leftSquares010
      positivity
    exact add_nonneg hr hs
  · have hh : g = e+(g-e) := by ring
    rw [hh, right_identity010]
    have hr : 0 ≤ rightRemainder010 A e (g-e) v := by
      unfold rightRemainder010
      positivity
    have hs : 0 ≤ rightSquares010 A e (g-e) v := by
      unfold rightSquares010
      positivity
    exact add_nonneg hr hs

/-- Reduced source coefficient at outer index (0, 0, 1). -/
def coefficient001 (A e g v : ℝ) : ℝ :=
  (((((((3) * e + ((-6) * g)) * e + ((3) * g ^ 2)) * A + ((((14) * e + ((-21) * g)) * e + (((-6)
    * v) * g ^ 2)) * e + (((6) * v + (7)) * g ^ 3))) * A + (((((26) * e + ((-23) * g)) * e +
    ((((3) * v + (-16)) * v + (-19)) * g ^ 2)) * e + ((((6) * v + (20)) * v + (19)) * g ^ 3)) *
    e + ((((3) * v + (8)) * v + (5)) * g ^ 4))) * A + ((((((24) * e + ((-3) * g)) * e + ((((8) *
    v + (-10)) * v + (-22)) * g ^ 2)) * e + ((((17) * v + (32)) * v + (22)) * g ^ 3)) * e +
    ((((10) * v + (28)) * v + (18)) * g ^ 4)) * e + ((((1) * v + (2)) * v + (1)) * g ^ 5))) * A
    + (((((((11) * e + ((9) * g)) * e + ((((7) * v + (4)) * v + (-2)) * g ^ 2)) * e + ((((19) *
    v + (34)) * v + (18)) * g ^ 3)) * e + ((((17) * v + (40)) * v + (23)) * g ^ 4)) * e + ((((5)
    * v + (10)) * v + (5)) * g ^ 5)) * e)) * A + (((((((2) * e + ((4) * g)) * e + ((((2) * v +
    (4)) * v + (4)) * g ^ 2)) * e + ((((8) * v + (16)) * v + (8)) * g ^ 3)) * e + ((((10) * v +
    (20)) * v + (10)) * g ^ 4)) * e + ((((4) * v + (8)) * v + (4)) * g ^ 5)) * e ^ 2)

def leftRemainder001 (A e g v : ℝ) : ℝ :=
  ((((((14) * e + ((7) * g)) * e ^ 2) * A + (((((26) * e + ((76) * g)) * e + (((3) * v ^ 2 +
    (68)) * g ^ 2)) * e + (((12) * v ^ 2 + (16)) * g ^ 3)) * e + ((((9) * v + (12)) * v + (8)) *
    g ^ 4))) * A + ((((((24) * e + ((117) * g)) * e + (((8) * v ^ 2 + (206)) * g ^ 2)) * e +
    ((((33) * v + (2)) * v + (178)) * g ^ 3)) * e + ((((68) * v + (62)) * v + (104)) * g ^ 4)) *
    e + ((((30) * v + (52)) * v + (40)) * g ^ 5))) * A + (((((((11) * e + ((75) * g)) * e +
    ((((7) * v + (4)) * v + (208)) * g ^ 2)) * e + ((((42) * v + (50)) * v + (320)) * g ^ 3)) *
    e + ((((116) * v + (166)) * v + (320)) * g ^ 4)) * e + ((((124) * v + (208)) * v + (208)) *
    g ^ 5)) * e + ((((48) * v + (88)) * v + (64)) * g ^ 6))) * A + ((((((((2) * e + ((18) * g))
    * e + ((((2) * v + (4)) * v + (70)) * g ^ 2)) * e + ((((18) * v + (36)) * v + (158)) * g ^
    3)) * e + ((((62) * v + (124)) * v + (232)) * g ^ 4)) * e + ((((102) * v + (204)) * v +
    (224)) * g ^ 5)) * e + ((((80) * v + (160)) * v + (128)) * g ^ 6)) * e + ((((24) * v + (48))
    * v + (32)) * g ^ 7))

def leftSquares001 (A e g v : ℝ) : ℝ :=
  (8 : ℝ)*(A^2*e^2*g)*((1 : ℝ)*(A) + (-1 : ℝ)*(g*v))^2 + (6 : ℝ)*(A^2*g)*((1 : ℝ)*(A*e) + (-1 :
    ℝ)*(g^2*v))^2 + (5 : ℝ)*(A*e^3*g)*((1 : ℝ)*(A) + (-1 : ℝ)*(g*v))^2 + (3 : ℝ)*(A^3)*((1 :
    ℝ)*(A*e) + (-1 : ℝ)*(g^2*v))^2

set_option maxHeartbeats 0 in
/-- Exact reduced-source identity in the e ge g cone. -/
theorem left_identity001 (A e g v : ℝ) :
    coefficient001 A (e+g) g v = leftRemainder001 A e g v + leftSquares001 A e g v := by
  unfold coefficient001 leftRemainder001 leftSquares001
  ring

set_option maxHeartbeats 0 in
/-- The remainder and square certificate are nonnegative on the closed orthant. -/
theorem left_nonnegative001 {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ coefficient001 A (e+g) g v := by
  rw [left_identity001]
  have hr : 0 ≤ leftRemainder001 A e g v := by
    unfold leftRemainder001
    positivity
  have hs : 0 ≤ leftSquares001 A e g v := by
    unfold leftSquares001
    positivity
  exact add_nonneg hr hs

def rightRemainder001 (A e g v : ℝ) : ℝ :=
  ((((((3) * g ^ 2) * A + (((((6) * v) * g) * e + (((12) * v + (21)) * g ^ 2)) * e + (((6) * v +
    (7)) * g ^ 3))) * A + (((((((12) * v + (12)) * v + (8)) * e + ((((36) * v + (60)) * v +
    (16)) * g)) * e + ((((39) * v + (92)) * v + (68)) * g ^ 2)) * e + ((((18) * v + (52)) * v +
    (39)) * g ^ 3)) * e + ((((3) * v + (8)) * v + (5)) * g ^ 4))) * A + ((((((((36) * v + (52))
    * v + (40)) * e + ((((112) * v + (198)) * v + (96)) * g)) * e + ((((129) * v + (274)) * v +
    (162)) * g ^ 2)) * e + ((((67) * v + (164)) * v + (104)) * g ^ 3)) * e + ((((15) * v + (38))
    * v + (23)) * g ^ 4)) * e + ((((1) * v + (2)) * v + (1)) * g ^ 5))) * A + (((((((((48) * v +
    (88)) * v + (64)) * e + ((((164) * v + (320)) * v + (176)) * g)) * e + ((((216) * v + (446))
    * v + (240)) * g ^ 2)) * e + ((((137) * v + (294)) * v + (160)) * g ^ 3)) * e + ((((42) * v
    + (90)) * v + (48)) * g ^ 4)) * e + ((((5) * v + (10)) * v + (5)) * g ^ 5)) * e)) * A +
    (((((((((24) * v + (48)) * v + (32)) * e + ((((88) * v + (176)) * v + (96)) * g)) * e +
    ((((126) * v + (252)) * v + (128)) * g ^ 2)) * e + ((((88) * v + (176)) * v + (88)) * g ^
    3)) * e + ((((30) * v + (60)) * v + (30)) * g ^ 4)) * e + ((((4) * v + (8)) * v + (4)) * g ^
    5)) * e ^ 2)

def rightSquares001 (A e g v : ℝ) : ℝ :=
  0

set_option maxHeartbeats 0 in
/-- Exact reduced-source identity in the g ge e cone. -/
theorem right_identity001 (A e g v : ℝ) :
    coefficient001 A e (e+g) v = rightRemainder001 A e g v + rightSquares001 A e g v := by
  unfold coefficient001 rightRemainder001 rightSquares001
  ring

set_option maxHeartbeats 0 in
/-- The remainder and square certificate are nonnegative on the closed orthant. -/
theorem right_nonnegative001 {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ coefficient001 A e (e+g) v := by
  rw [right_identity001]
  have hr : 0 ≤ rightRemainder001 A e g v := by
    unfold rightRemainder001
    positivity
  have hs : 0 ≤ rightSquares001 A e g v := by
    unfold rightSquares001
    positivity
  exact add_nonneg hr hs

set_option maxHeartbeats 0 in
/-- Both closed inner-gap cones cover the coefficient, including equality. -/
theorem nonnegative001 {A e g v : ℝ} (hA : 0 ≤ A) (he : 0 ≤ e)
    (hg : 0 ≤ g) (hv : 0 ≤ v) : 0 ≤ coefficient001 A e g v := by
  rcases le_total g e with hge | heg
  · have hh : e = (e-g)+g := by ring
    rw [hh, left_identity001]
    have hr : 0 ≤ leftRemainder001 A (e-g) g v := by
      unfold leftRemainder001
      positivity
    have hs : 0 ≤ leftSquares001 A (e-g) g v := by
      unfold leftSquares001
      positivity
    exact add_nonneg hr hs
  · have hh : g = e+(g-e) := by ring
    rw [hh, right_identity001]
    have hr : 0 ≤ rightRemainder001 A e (g-e) v := by
      unfold rightRemainder001
      positivity
    have hs : 0 ≤ rightSquares001 A e (g-e) v := by
      unfold rightSquares001
      positivity
    exact add_nonneg hr hs

end
end SPR.N6.Tail.SmallGap.Low0
