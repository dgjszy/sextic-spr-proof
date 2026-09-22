# Verification and trust boundary

The public theorem is `SPR.N6.Direct.robustSPR`; its exact proposition is
`SPR.N6.RobustSPRStatement`. The definitions explicitly retain six independent closed
coefficient intervals, equality of endpoints, strict Hurwitz stability of every member,
one fixed numerator of exact degree six, and every finite real frequency.

## Reproduce

```sh
lake exe cache get
lake build
lake env lean Lean/Audit.lean
```

The pinned environment is Lean 4.30.0 and mathlib v4.30.0, at commit
`c5ea00351c28e24afc9f0f84379aa41082b1188f`. The complete dependency lock is
`lake-manifest.json`.

`Audit` is a default build root. It collects the transitive axioms of every theorem whose
name begins with `SPR` in the imported sixth-order proof graph and fails if any axiom other
than `propext`, `Classical.choice`, or `Quot.sound` occurs. It also prints the public
theorem's type and its axioms, and it records a lower bound on the number of audited
theorems so that a silently dropped import cannot pass. These are kernel checks; no Python
program, numerical certificate, external solver or runtime-generated proof source is
required.

## Standalone extraction

The extraction keeps all 788 `SPR.N6` modules, the two degree-independent modules
`SPR.Common.Hurwitz` and `SPR.Common.CompactPerturbation` that the sixth-order proof
imports, and the three public/build entry files `Lean/Main.lean`, `Lean/SPR.lean`,
`Lean/Audit.lean`. The quintic sources, the research directory, the experiment scripts and
the local working instructions are not part of this repository.

All 790 included proof sources are byte-for-byte identical to the sixth-order sources of
the source project's commit `52dd82d` (`feat(n6): prove robust SPR for all sextic
coefficient boxes`). The differences are confined to:

- `Lean/Main.lean`, `Lean/SPR.lean`, `Lean/Audit.lean`: the fifth-order import, theorem
  and audit lines are removed and the documentation comments name the sextic statement
  only. Every sixth-order declaration is unchanged.
- `Lean/SPR/N6/README.md`: one paragraph describing the default build scope of the source
  project now describes this repository. The module map and the iteration history are
  unchanged, including their references to research paths that stay in the source project.
- `README.md`, `.gitignore` and `docs/`: written for this standalone repository.

## Standalone validation — 2026-09-22

- `lake build` on this repository checkout succeeds with exit code `0`; the default audit runs
  as part of that build and its `run_cmd` fails the build on any violation.
- The audit checked 63355 theorems in the `SPR` namespace, of which 63345 are sixth-order
  (`SPR.N6.*`) declarations and 4679 are private auxiliary declarations. The ten remaining
  theorems belong to the two `SPR.Common` modules.
- `#print axioms SPR.N6.Direct.robustSPR` reports
  `[propext, Classical.choice, Quot.sound]`. No theorem in the namespace uses any other
  axiom, and no `sorry`, `admit`, `native_decide` or external solver interface occurs in
  the proof sources.
- The local import graph was traversed exhaustively: every local `import` of the 788
  `SPR.N6` modules resolves to another `SPR.N6` module or to `SPR.Common.Hurwitz` or
  `SPR.Common.CompactPerturbation`. No module of this repository imports quintic or
  research sources, and none of the 788 modules is unreachable from `SPR.N6.Verified`.
- Negative controls, run as temporary files that are not part of this repository: a fixture
  proving a theorem from an extra axiom declared inside `SPR.N6` was rejected with
  `Unexpected axiom SPR.N6.negative_control_bogus in SPR.N6.negative_control_theorem`, and
  a copy of the audit whose import thresholds were raised above the measured counts was
  rejected with `Incomplete proof import: audited only 63355 theorems`. The audit therefore
  detects both a forbidden axiom and a silently dropped import.
- Existing style/linter warnings of the source project (lines above 100 characters,
  unscoped `maxHeartbeats`) are retained. They do not indicate a failed theorem or an
  additional axiom.

Scope of the recorded run: the pinned third-party dependency cache (mathlib and its
dependencies) was reused. The 788 sixth-order modules were not recompiled from an empty
project output directory in this run; their compiled outputs come from the source
project's build of the same byte-identical sources, while the three entry modules and the
audit were recompiled in this repository checkout. The kernel checks above are unaffected by
that reuse, because Lean validates its compiled outputs against the exact source content
and import graph.
