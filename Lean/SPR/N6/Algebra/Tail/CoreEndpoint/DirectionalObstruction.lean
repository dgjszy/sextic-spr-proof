import SPR.N6.Algebra.Tail.CoreEndpoint.MixedHigh401Source

/-!
# A negative polar contribution inside a nonnegative mixed source

The q derivative alone can be negative even when A,e,f,g,v are positive.
This refutes only independent directional positivity. The complete mixed
coefficient includes the pure contribution and remains nonnegative.
-/
namespace SPR.N6.Tail.CoreEndpoint
noncomputable section

set_option maxRecDepth 16384 in
/-- Exact positive-parameter obstruction to dropping the pure contribution. -/
theorem mixed_q_direction_negative :
    MixedHigh401Source.directionalSource 10 1 (1/1000) (11/10) 1000 < 0 := by
  norm_num [MixedHigh401Source.directionalSource,
    MixedHigh401Source.R0,MixedHigh401Source.R1,MixedHigh401Source.R2,
    MixedHigh401Source.Rbase,MixedHigh401Source.D1r,MixedHigh401Source.D2r,
    MixedHigh401Source.Wr,MixedHigh401Source.Hr0,MixedHigh401Source.Hr1,
    MixedHigh401Source.Hr2,MixedHigh401Source.ZR,MixedHigh401Source.zR0,
    MixedHigh401Source.zR1,MixedHigh401Source.zR2,
    PureSource.D1,PureSource.D2,PureSource.W,PureSource.H0,PureSource.H1,
    PureSource.H2,PureSource.Z,PureSource.z0,PureSource.z1,PureSource.z2,
    PureSource.L,PureSource.J,PureSource.M]

end
end SPR.N6.Tail.CoreEndpoint
