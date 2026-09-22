import SPR.N6.Algebra.Tail.OuterCore
/-! Exact reduced f^0 high-core gap certificates. -/
namespace SPR.N6.Tail.SmallGap.High0
noncomputable section
set_option Elab.async false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

/-- Reduced source coefficient at outer index (1, 0, 0). -/
def coefficient100 (A e g v : ℝ) : ℝ :=
  ((((((3) * e + ((6) * g + ((6) * v))) * e + (((3) * g + ((-6) * v)) * g + ((3) * v ^ 2))) * e
    + (((-6) * v ^ 2) * g)) * e + (((3) * v ^ 2) * g ^ 2)) * A + ((((((5) * e + ((11) * g +
    ((10) * v))) * e + (((7) * g + ((-8) * v)) * g + ((5) * v ^ 2))) * e + ((((1) * g + ((-2) *
    v)) * g + ((-9) * v ^ 2)) * g)) * e + (((3) * v ^ 2) * g ^ 2)) * e + (((1) * v ^ 2) * g ^
    3))) * A + (((((((2) * e + ((8) * g + ((4) * v))) * e + (((10) * g + ((4) * v)) * g + ((2) *
    v ^ 2))) * e + (((4) * g + ((4) * v)) * g ^ 2)) * e + ((((4) * v) * g + ((2) * v ^ 2)) * g ^
    2)) * e + (((4) * v ^ 2) * g ^ 3)) * e)

def leftRemainder100 (A e g v : ℝ) : ℝ :=
  ((((((3) * e + ((18) * g + ((6) * v))) * e + (((39) * g + ((12) * v)) * g + ((3) * v ^ 2))) *
    e + (((36) * g + ((6) * v)) * g ^ 2)) * e + ((12) * g ^ 4)) * A + ((((((5) * e + ((36) * g +
    ((10) * v))) * e + (((101) * g + ((32) * v)) * g + ((5) * v ^ 2))) * e + ((((138) * g +
    ((34) * v)) * g + ((6) * v ^ 2)) * g)) * e + (((92) * g + ((12) * v)) * g ^ 3)) * e + ((24)
    * g ^ 5))) * A + (((((((2) * e + ((20) * g + ((4) * v))) * e + (((80) * g + ((24) * v)) * g
    + ((2) * v ^ 2))) * e + ((((164) * g + ((60) * v)) * g + ((8) * v ^ 2)) * g)) * e + ((((182)
    * g + ((80) * v)) * g + ((14) * v ^ 2)) * g ^ 2)) * e + ((((104) * g + ((56) * v)) * g +
    ((16) * v ^ 2)) * g ^ 3)) * e + ((((24) * g + ((16) * v)) * g + ((8) * v ^ 2)) * g ^ 4))

def leftSquares100 (A e g v : ℝ) : ℝ :=
  0

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
  (((((3) * e + ((12) * g)) * e + ((3) * g ^ 2)) * e ^ 2) * A + ((((((24) * e + ((28) * g)) * e
    + ((9) * g ^ 2)) * e + ((1) * g ^ 3)) * e + (((5) * v ^ 2) * g ^ 2)) * e + (((1) * v ^ 2) *
    g ^ 3))) * A + (((((((24) * e + ((40) * g + ((16) * v))) * e + (((22) * g + ((24) * v)) * g
    + ((8) * v ^ 2))) * e + ((((4) * g + ((16) * v)) * g + ((16) * v ^ 2)) * g)) * e + ((((4) *
    v) * g + ((8) * v ^ 2)) * g ^ 2)) * e + (((4) * v ^ 2) * g ^ 3)) * e)

def rightSquares100 (A e g v : ℝ) : ℝ :=
  (6 : ℝ)*(e^2)*((1 : ℝ)*(A*e) + (-1 : ℝ)*(g*v))^2 + (3 : ℝ)*(A^2)*((1 : ℝ)*(e^2) + (-1 :
    ℝ)*(g*v))^2 + (1 : ℝ)*(A*e*g^2)*((1 : ℝ)*(e) + (-1 : ℝ)*(v))^2

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
  ((((((((3) * e + ((6) * g + ((6) * v))) * e + (((3) * g + ((-6) * v)) * g + ((3) * v ^ 2))) *
    e + (((-6) * v ^ 2) * g)) * e + (((3) * v ^ 2) * g ^ 2)) * A + ((((((11) * e + ((23) * g +
    ((22) * v))) * e + (((13) * g + ((4) * v)) * g + ((11) * v ^ 2))) * e + ((((1) * g + ((-2) *
    v)) * g + ((-9) * v ^ 2)) * g)) * e + (((-3) * v ^ 2) * g ^ 2)) * e + (((1) * v ^ 2) * g ^
    3))) * A + (((((((15) * e + ((36) * g + ((30) * v))) * e + (((27) * g + ((40) * v)) * g +
    ((15) * v ^ 2))) * e + ((((6) * g + ((14) * v)) * g + ((8) * v ^ 2)) * g)) * e + ((((4) * v)
    * g + ((-5) * v ^ 2)) * g ^ 2)) * e + (((2) * v ^ 2) * g ^ 3)) * e)) * A + (((((((9) * e +
    ((27) * g + ((18) * v))) * e + (((27) * g + ((46) * v)) * g + ((9) * v ^ 2))) * e + ((((9) *
    g + ((38) * v)) * g + ((19) * v ^ 2)) * g)) * e + ((((10) * v) * g + ((11) * v ^ 2)) * g ^
    2)) * e + (((1) * v ^ 2) * g ^ 3)) * e ^ 2)) * A + (((((((2) * e + ((8) * g + ((4) * v))) *
    e + (((10) * g + ((16) * v)) * g + ((2) * v ^ 2))) * e + ((((4) * g + ((20) * v)) * g + ((8)
    * v ^ 2)) * g)) * e + ((((8) * v) * g + ((10) * v ^ 2)) * g ^ 2)) * e + (((4) * v ^ 2) * g ^
    3)) * e ^ 3)

def leftRemainder010 (A e g v : ℝ) : ℝ :=
  ((((((((3) * e + ((18) * g + ((6) * v))) * e + (((39) * g + ((12) * v)) * g + ((3) * v ^ 2)))
    * e + (((36) * g + ((6) * v)) * g ^ 2)) * e + ((12) * g ^ 4)) * A + ((((((11) * e + ((78) *
    g + ((22) * v))) * e + (((215) * g + ((92) * v)) * g + ((11) * v ^ 2))) * e + ((((288) * g +
    ((142) * v)) * g + ((24) * v ^ 2)) * g)) * e + ((((188) * g + ((96) * v)) * g + ((12) * v ^
    2)) * g ^ 2)) * e + (((48) * g + ((24) * v)) * g ^ 4))) * A + (((((((15) * e + ((126) * g +
    ((30) * v))) * e + (((432) * g + ((190) * v)) * g + ((15) * v ^ 2))) * e + ((((774) * g +
    ((474) * v)) * g + ((68) * v ^ 2)) * g)) * e + ((((765) * g + ((586) * v)) * g + ((109) * v
    ^ 2)) * g ^ 2)) * e + ((((396) * g + ((360) * v)) * g + ((76) * v ^ 2)) * g ^ 3)) * e +
    ((((84) * g + ((88) * v)) * g + ((20) * v ^ 2)) * g ^ 4))) * A + ((((((((9) * e + ((90) * g
    + ((18) * v))) * e + (((378) * g + ((154) * v)) * g + ((9) * v ^ 2))) * e + ((((864) * g +
    ((538) * v)) * g + ((64) * v ^ 2)) * g)) * e + ((((1161) * g + ((982) * v)) * g + ((177) * v
    ^ 2)) * g ^ 2)) * e + ((((918) * g + ((988) * v)) * g + ((238) * v ^ 2)) * g ^ 3)) * e +
    ((((396) * g + ((520) * v)) * g + ((156) * v ^ 2)) * g ^ 4)) * e + ((((72) * g + ((112) *
    v)) * g + ((40) * v ^ 2)) * g ^ 5))) * A + (((((((((2) * e + ((24) * g + ((4) * v))) * e +
    (((122) * g + ((44) * v)) * g + ((2) * v ^ 2))) * e + ((((344) * g + ((200) * v)) * g +
    ((20) * v ^ 2)) * g)) * e + ((((590) * g + ((488) * v)) * g + ((80) * v ^ 2)) * g ^ 2)) * e
    + ((((632) * g + ((692) * v)) * g + ((164) * v ^ 2)) * g ^ 3)) * e + ((((414) * g + ((572) *
    v)) * g + ((182) * v ^ 2)) * g ^ 4)) * e + ((((152) * g + ((256) * v)) * g + ((104) * v ^
    2)) * g ^ 5)) * e + ((((24) * g + ((48) * v)) * g + ((24) * v ^ 2)) * g ^ 6))

def leftSquares010 (A e g v : ℝ) : ℝ :=
  0

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
  ((((((((1 / 2097152)) * e + ((12) * g)) * e + (((3) * g + (((1 / 2097152)) * v)) * g)) * e ^ 2
    + ((((27 / 134217728)) * v ^ 2) * g ^ 2)) * A + (((((48) * e + ((52) * g + ((24) * v))) * e
    + ((16) * g ^ 2)) * e + ((((1) * g + (((1 / 33554432)) * v)) * g + (((1 / 33554432)) * v ^
    2)) * g)) * e ^ 2 + (((1) * v ^ 2) * g ^ 3))) * A + (((((((84) * e + ((108) * g + ((88) *
    v))) * e + ((((687865479 / 16777216)) * g + ((80) * v)) * g + (((33 / 16777216)) * v ^ 2)))
    * e + ((((6) * g + ((26) * v)) * g + ((4) * v ^ 2)) * g)) * e + ((((4) * v) * g + ((1) * v ^
    2)) * g ^ 2)) * e + (((2) * v ^ 2) * g ^ 3)) * e)) * A + (((((((72) * e + ((108) * g +
    ((112) * v))) * e + (((54) * g + ((152) * v)) * g + ((40) * v ^ 2))) * e + ((((9) * g +
    ((68) * v)) * g + ((44) * v ^ 2)) * g)) * e + ((((10) * v) * g + ((14) * v ^ 2)) * g ^ 2)) *
    e + (((1) * v ^ 2) * g ^ 3)) * e ^ 2)) * A + (((((((24) * e + ((40) * g + ((48) * v))) * e +
    (((22) * g + ((80) * v)) * g + ((24) * v ^ 2))) * e + ((((4) * g + ((44) * v)) * g + ((40) *
    v ^ 2)) * g)) * e + ((((8) * v) * g + ((22) * v ^ 2)) * g ^ 2)) * e + (((4) * v ^ 2) * g ^
    3)) * e ^ 3)

def rightSquares010 (A e g v : ℝ) : ℝ :=
  ((6291455 : ℝ) / 8388608)*(A^4)*((1 : ℝ)*(g*v) + (-4 : ℝ)*(e^2))^2 + ((3 : ℝ) /
    8388608)*(A^4)*((1 : ℝ)*(g*v) + (-2 : ℝ)*(e^2))^2 + ((67108489 : ℝ) /
    16777216)*(A^2*g^2)*((1 : ℝ)*(e^2) + ((-1 : ℝ) / 4)*(A*v))^2 + ((47 : ℝ) /
    1048576)*(A^2*g^2)*((1 : ℝ)*(e^2) + ((-1 : ℝ) / 8)*(A*v))^2 + ((33554449 : ℝ) /
    8388608)*(A^2*v^2)*((1 : ℝ)*(e^2) + ((-1 : ℝ) / 2)*(A*g))^2 + ((268435389 : ℝ) /
    16777216)*(A^2*v^2)*((1 : ℝ)*(e^2) + ((-1 : ℝ) / 4)*(A*g))^2

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
  (((((((3) * e + ((6) * g + ((6) * v))) * e + (((3) * g + ((-6) * v)) * g + ((3) * v ^ 2))) * e
    + (((-6) * v ^ 2) * g)) * e + (((3) * v ^ 2) * g ^ 2)) * A + (((((8) * e + ((17) * g + ((16)
    * v))) * e + (((10) * g + ((-2) * v)) * g + ((8) * v ^ 2))) * e + ((((1) * g + ((-2) * v)) *
    g + ((-9) * v ^ 2)) * g)) * e ^ 2 + (((1) * v ^ 2) * g ^ 3))) * A + (((((((7) * e + ((19) *
    g + ((14) * v))) * e + (((17) * g + ((16) * v)) * g + ((7) * v ^ 2))) * e + ((((5) * g +
    ((6) * v)) * g + ((1) * v ^ 2)) * g)) * e + ((((4) * v) * g + ((-3) * v ^ 2)) * g ^ 2)) * e
    + (((3) * v ^ 2) * g ^ 3)) * e)) * A + ((((((2) * e + ((8) * g + ((4) * v))) * e + (((10) *
    g + ((12) * v)) * g + ((2) * v ^ 2))) * e + ((((4) * g + ((12) * v)) * g + ((4) * v ^ 2)) *
    g)) * e + ((((4) * v) * g + ((2) * v ^ 2)) * g ^ 2)) * e ^ 3)

def leftRemainder001 (A e g v : ℝ) : ℝ :=
  (((((((3) * e + ((18) * g + ((6) * v))) * e + (((39) * g + ((12) * v)) * g + ((3) * v ^ 2))) *
    e + (((36) * g + ((6) * v)) * g ^ 2)) * e + ((12) * g ^ 4)) * A + ((((((8) * e + ((57) * g +
    ((16) * v))) * e + (((158) * g + ((62) * v)) * g + ((8) * v ^ 2))) * e + ((((213) * g +
    ((88) * v)) * g + ((15) * v ^ 2)) * g)) * e + ((((140) * g + ((54) * v)) * g + ((6) * v ^
    2)) * g ^ 2)) * e + (((36) * g + ((12) * v)) * g ^ 4))) * A + (((((((7) * e + ((61) * g +
    ((14) * v))) * e + (((217) * g + ((86) * v)) * g + ((7) * v ^ 2))) * e + ((((403) * g +
    ((210) * v)) * g + ((29) * v ^ 2)) * g)) * e + ((((412) * g + ((258) * v)) * g + ((42) * v ^
    2)) * g ^ 2)) * e + ((((220) * g + ((160) * v)) * g + ((28) * v ^ 2)) * g ^ 3)) * e +
    ((((48) * g + ((40) * v)) * g + ((8) * v ^ 2)) * g ^ 4))) * A + ((((((((2) * e + ((22) * g +
    ((4) * v))) * e + (((100) * g + ((36) * v)) * g + ((2) * v ^ 2))) * e + ((((244) * g +
    ((132) * v)) * g + ((14) * v ^ 2)) * g)) * e + ((((346) * g + ((252) * v)) * g + ((38) * v ^
    2)) * g ^ 2)) * e + ((((286) * g + ((264) * v)) * g + ((50) * v ^ 2)) * g ^ 3)) * e +
    ((((128) * g + ((144) * v)) * g + ((32) * v ^ 2)) * g ^ 4)) * e + ((((24) * g + ((32) * v))
    * g + ((8) * v ^ 2)) * g ^ 5))

def leftSquares001 (A e g v : ℝ) : ℝ :=
  0

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
  (((((((8388601 / 2097152)) * e + ((12) * g)) * e + (((3) * g + (((1 / 2097152)) * v)) * g)) *
    e ^ 2 + ((((1 / 4194304)) * v ^ 2) * g ^ 2)) * A + ((((((24) * e + ((40) * g + ((12) * v)))
    * e + ((13) * g ^ 2)) * e + ((1) * g ^ 3)) * e + ((((9 / 4)) * v ^ 2) * g ^ 2)) * e + (((1)
    * v ^ 2) * g ^ 3))) * A + (((((((48) * e + ((68) * g + ((40) * v))) * e + (((28) * g + ((40)
    * v)) * g + ((2) * v ^ 2))) * e + ((((5) * g + ((18) * v)) * g + ((4) * v ^ 2)) * g)) * e +
    ((((4) * v) * g + ((6) * v ^ 2)) * g ^ 2)) * e + (((3) * v ^ 2) * g ^ 3)) * e)) * A +
    ((((((24) * e + ((40) * g + ((32) * v))) * e + (((22) * g + ((48) * v)) * g + ((8) * v ^
    2))) * e + ((((4) * g + ((24) * v)) * g + ((8) * v ^ 2)) * g)) * e + ((((4) * v) * g + ((2)
    * v ^ 2)) * g ^ 2)) * e ^ 3)

def rightSquares001 (A e g v : ℝ) : ℝ :=
  ((2097155 : ℝ) / 8388608)*(A^3)*((1 : ℝ)*(g*v) + (-4 : ℝ)*(e^2))^2 + ((8388603 : ℝ) /
    8388608)*(A^3)*((1 : ℝ)*(g*v) + (-2 : ℝ)*(e^2))^2 + ((3 : ℝ) / 4)*(A^2*e)*((1 : ℝ)*(g*v) +
    (-4 : ℝ)*(e^2))^2 + (4 : ℝ)*(A*g^2)*((1 : ℝ)*(e^2) + ((-1 : ℝ) / 4)*(A*v))^2 + (6 :
    ℝ)*(A*v^2)*((1 : ℝ)*(e^2) + ((-1 : ℝ) / 2)*(A*g))^2

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
end SPR.N6.Tail.SmallGap.High0
