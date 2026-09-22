# 六阶形式化入口与证明边界

迭代50已完成原 `RobustSPRStatement` 的无条件 Lean 综合。
**五项最终验收全部通过**；验证清单为 `research/notebooks/stage4_n6/n6_direct_spr_20260908/iteration50_verification.json`。
公开主定理是 `Main.lean` 中的 `SPR.N6.Direct.robustSPR`。

## 原命题

六个系数分别取独立实闭区间，允许任意退化。假设箱内每个首一六次多项式严格 Hurwitz，
则存在同一个实系数、恰六次多项式 b，使箱内每个 a、每个实频率 ω 都满足
`Re(b(iω)/a(iω)) > 0`。准确定义位于 `Definitions/Frequency.lean`，本轮未修改它。
五个先前子类定理仍保留；一般 n 阶结论不由本定理推出。

## 完整证明的新增连接

| 环节 | 模块 |
|---|---|
| 语法质量、次数与变量支撑界 | `Algebra/Tail/SyntaxBounds.lean` |
| 整数基数唯一性与混合基数指数单射 | `NatEncoding.lean`、`Encoding4.lean`（均在 `Algebra/Tail/`） |
| 同源解释与完整有界编码判据 | `ExprValue.lean`、`ExprCertificate.lean`、`SyntaxCertificate.lean` |
| 各层恒等式、全源分解与非负性 | `Algebra/Tail/CoreEndpoint/Full*Identity*.lean`、`Full*.lean` |
| 实际参数、比例及闭低频端点 | `Construction/PacketCoefficientTransport.lean` 与 `Synthesis/Core*.lean` |
| 全部21指数位置完备性与最终综合 | `Algebra/Tail/OuterIndexCases.lean`、`Synthesis/AllCoreCoefficients.lean` |

本轮补齐高16、低17共33个实际系数；连同既有结果，高低各21个位置全部供齐。
最终 `synthesis_from_complete_core_coefficients` 没有额外系数或证书前提。
早期 `Remaining...Coefficients.synthesis` 接口仍保留，不能将其历史上的条件性范围
与本轮最终无条件定理混为一谈。

整数点相等只在质量严格小于基数、指数编码在完整支撑上单射、同源实数解释都得到证明后使用。
Python 仅准备静态候选和调度；正式构建不运行 Python、JSON 证书或外部求解器。
旧巨型 ring 证明导入失败的根因未查明；当前证明采用新的已组合编码路线。
旧接触路线的三个完整必要词未被本轮消除，原命题由当前核心系数路线综合。

## 通往一般命题的已核验链

| 数学内容 | 主要模块（本目录内） |
|---|---|
| 原命题与频率配对的准确等价 | `Definitions/Frequency.lean` |
| 原独立箱四个实际奇偶角、逐点极值及固定分子四角等价 | `Definitions/Box.lean` |
| 全Hurwitz根相位和严格奇偶交错 | `Preliminaries/HurwitzPhase.lean`, `HermiteBiehler.lean` |
| 实际六偶根与三条原系数宽度 | `Preliminaries/EvenGeometry.lean` |
| 严格奇部包络、同一个实际比例及上界等号分类 | `Preliminaries/OddEnvelope.lean`, `RatioEndpoint.lean` |
| 候选、重心、四个接触及实际商多项式 | `Construction/Candidate.lean`, `Barycenter.lean`, `Contacts.lean`, `Quotients.lean` |
| 根隔离、F(C)>0、所有实际商恰四次 | `Construction/NumeratorRoots.lean`, `LastRoot.lean`, `Quartic.lean` |
| 基准下残余及全轴上残余正性 | `Construction/BaselinePositive.lean`, `UpperResidual.lean` |
| 两个上奇商在[A,c]严格正 | `Construction/UpperInner.lean`, `Algebra/UpperInner/` |
| 下奇首带[a,A]严格正 | `Construction/FirstBand.lean`, `Algebra/FirstBand/` |
| 中央下奇带[B,b]无条件于局部证书的正性 | `Synthesis/FrequencyAssembly.lean` |
| 同一比例的准确二次商，接触点也覆盖 | `Construction/RatioQuotient.lean` |
| 奇部零点严格性及原箱严格提升 | `Synthesis/CandidateLift.lean`, `StrictLift.lean` |
| 两个弱尾部接成四个全半轴弱源 | `Synthesis/WeakTails.lean` |
| 剩余尾部的准确比例证书接口 | `Synthesis/TailRatio.lean` |
| 原系数相对宽度及固定常数项子类 | `Construction/RelativeWidth.lean`, `Synthesis/Baseline.lean`, `Synthesis/RelativeWidth.lean` |
| 剩余原箱区域的准确限制 | `Synthesis/Remaining.lean` |
| 固定奇部和固定a2/a4的原箱综合 | `Synthesis/FixedOdd.lean`, `FixedSecondFourth.lean` |

没有正式模块导入研究文件；六阶不依赖五阶综合定理。公共Hurwitz定义在`Common/Hurwitz.lean`。

## 阅读与历史

- `research/notes/stage4/n6_direct_spr_20260908/iteration50-bounded-encoding.md`：编码判据的数学论证。
- 同目录 `iteration50-original-chain.md`、`iteration50-chain-review.md`：原量词、退化、严格性与实际参数连接。
- 同目录 `iteration50.md`：本轮阶段证据与最终状态。
- 迭代49、48及更早记录保留原有条件接口和失败证据；它们记录当时状态。

## 构建与审计

```sh
lake build
lake env lean Lean/Audit.lean
```

```lean
import SPR
#check SPR.N6.Direct.robustSPR
#print axioms SPR.N6.Direct.robustSPR
```

固定 Lean4.30.0/mathlibv4.30.0。本独立仓库的默认构建覆盖六阶证明与公共模块，审计检查
公共和私有 SPR 定理的完整传递公理。仅允许 `propext`、`Classical.choice`、`Quot.sound`。
研究目录中的故意非法公理测试夹具不属于正式依赖。
