### Task II DeepMD testing helpers

This README describes the role, contents, and workflow relationships of this directory within the UniPero repository. It is intended as a reference description; detailed execution behavior remains documented in the scripts and their inline comments.

This directory contains converters from ABACUS outputs to DeepMD data plus energy/force aggregation helpers. `graph.pb` is copied here by `prepare.sh` before distribution to cases.

Run these scripts from a case script directory only after the expected ABACUS outputs exist.

---

### 任务 II DeepMD 测试辅助工具

本文档说明该目录在 UniPero 仓库中的角色、内容及其与工作流的关系。它定位为参考性说明；具体执行行为仍由脚本及其行内注释详细记录。

本目录包含从 ABACUS 输出转换为 DeepMD 数据的工具以及能量/力汇总辅助工具。`prepare.sh` 会在分发到各算例之前将 `graph.pb` 复制到这里。

只有在预期的 ABACUS 输出存在后，才应从算例脚本目录运行这些脚本。
