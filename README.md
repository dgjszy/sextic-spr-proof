# Sextic SPR Proof

A Lean 4 / mathlib proof of robust strictly positive-real synthesis for real monic sextic interval polynomials.

六阶区间多项式族鲁棒严格正实综合的完整 Lean 形式化证明。

## The theorem

Let

$$
K=\{s^6+a_1s^5+a_2s^4+a_3s^3+a_4s^2+a_5s+a_6:\ a_k\in[l_k,u_k]\},
$$

where the endpoints are finite real numbers and $l_k\le u_k$; degenerate intervals are allowed.
If every polynomial in $K$ is strictly Hurwitz, there exists **one fixed real polynomial $b$ of exact degree six** such that

$$
\mathrm{Re}\left(\frac{b(i\omega)}{a(i\omega)}\right)>0
\qquad\text{for every }a\in K\text{ and every }\omega\in\mathbb R.
$$

The numerator may depend on the interval endpoints, but is independent of the denominator and frequency.
The theorem is an existence proof, not a numerical synthesis algorithm.

- Formal statement: [`RobustSPRStatement`](Lean/SPR/N6/Definitions/Frequency.lean).
- Main theorem: [`SPR.N6.Direct.robustSPR`](Lean/Main.lean).
- Proof guide: [module map](Lean/SPR/N6/README.md) and [proof outline](docs/PROOF.md).
- Trust boundary and build checks: [verification](docs/VERIFICATION.md).

## Build

Install Lean's `elan` toolchain manager, then run from the repository root:

```sh
lake exe cache get
lake build
lake env lean Lean/Audit.lean
```

`lean-toolchain` pins Lean **4.30.0**. Mathlib is pinned to **v4.30.0** and its exact
dependency commits are recorded in `lake-manifest.json`.
The cache command downloads compiled dependencies; the project proof sources are checked by Lean.
No Python, external solver, or generated proof source is required.

To use the theorem:

```lean
import SPR

#check SPR.N6.Direct.robustSPR
#print axioms SPR.N6.Direct.robustSPR
```

The default build includes a transitive axiom audit of every theorem in the `SPR` namespace.
Only `propext`, `Classical.choice`, and `Quot.sound` are allowed.

## Contents

- `Lean/Main.lean`: the actual public theorem and final proof assembly, together with
  the surviving subclass theorems (fixed even part, fixed odd part, fixed `a₂`/`a₄`,
  relative width, fixed constant coefficient).
- `Lean/SPR.lean`: public import entry.
- `Lean/Audit.lean`: build-time axiom audit.
- `Lean/SPR/N6/`: definitions — original independent closed box, strict Hurwitz
  stability, exact-degree-six numerator, all real frequencies — and the complete
  sextic proof.
- `Lean/SPR/Common/`: degree-independent Hurwitz coefficient positivity and the
  compact-perturbation lemma used by the proof.
- `docs/`: proof outline and verification notes.

This standalone repository contains the sextic proof only. It is extracted from the
`nth-order-spr-proof` project at source commit `52dd82d` and makes no claim about a general
higher-order theorem. The sextic proof does not depend on the quintic one.
