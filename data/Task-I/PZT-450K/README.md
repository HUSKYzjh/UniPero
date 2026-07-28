### PZT-450K reference data

This README describes the role, contents, and workflow relationships of this directory within the UniPero repository. It is intended as a reference description; detailed execution behavior remains documented in the scripts and their inline comments.

This directory is the Task I entry point for the named composition and temperature. Its `deepmd` child is used by `dp test` to validate the frozen model and is not a standalone simulation input.

Keep the atom ordering and species mapping unchanged because the model depends on this ordering.

---

### PZT-450K 参考数据

本文档说明该目录在 UniPero 仓库中的角色、内容及其与工作流的关系。它定位为参考性说明；具体执行行为仍由脚本及其行内注释详细记录。

本目录是 Task I 中指定成分和温度的入口。其 `deepmd` 子目录由 `dp test` 用于验证冻结模型，并不是独立的模拟输入。

应保持原子顺序和物种映射不变，因为模型依赖这一顺序。
