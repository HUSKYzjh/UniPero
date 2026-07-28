### Fitting validation

This README describes the role, contents, and workflow relationships of this directory within the UniPero repository. It is intended as a reference description; detailed execution behavior remains documented in the scripts and their inline comments.

This workflow evaluates the baseline DeepMD model against the reference database unpacked from `database.zip`. `dp-cal.sh` runs `dp test` for numbered systems; `fit-cal.sh` groups systems by chemical complexity and aggregates energy/force errors.

Run `prepare.sh` first so the model and database are available. Grouping scripts use destructive `mv` operations, so run them on a copy of expanded data.

---

### 拟合验证

本文档说明该目录在 UniPero 仓库中的角色、内容及其与工作流的关系。它定位为参考性说明；具体执行行为仍由脚本及其行内注释详细记录。

该工作流使用从 `database.zip` 解压的参考数据库评估基线 DeepMD 模型。`dp-cal.sh` 对编号体系运行 `dp test`；`fit-cal.sh` 按化学复杂度对体系分组并汇总能量/力误差。

请先运行 `prepare.sh`，以便模型和数据库可用。分组脚本使用具有破坏性的 `mv` 操作，因此应在展开数据的副本上运行。
