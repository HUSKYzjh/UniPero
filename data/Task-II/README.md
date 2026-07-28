### Task II: trajectory-to-reference workflow

This README describes the role, contents, and workflow relationships of this directory within the UniPero repository. It is intended as a reference description; detailed execution behavior remains documented in the scripts and their inline comments.

Task II generates labeled data through LAMMPS sampling and ABACUS single-point calculations, then evaluates the DeepMD model. The submit, fit, collect, and energy-versus-time scripts implement these four stages.

`conf` stores starting structures, `script` stores generation helpers, `dptest` stores conversion/testing helpers, and `orb` stores ABACUS resources. Configure resources before creating large batches of remote jobs.

---

### 任务 II：轨迹到参考数据工作流

本文档说明该目录在 UniPero 仓库中的角色、内容及其与工作流的关系。它定位为参考性说明；具体执行行为仍由脚本及其行内注释详细记录。

Task II 通过 LAMMPS 采样和 ABACUS 单点计算生成标注数据，然后评估 DeepMD 模型。提交、拟合、收集和能量-时间脚本实现这四个阶段。

`conf` 存放初始结构，`script` 存放生成辅助工具，`dptest` 存放转换/测试辅助工具，`orb` 存放 ABACUS 资源。在创建大量远程作业前请配置资源。
