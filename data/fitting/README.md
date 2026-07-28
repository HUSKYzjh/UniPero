### Fitting validation

This workflow evaluates the baseline DeepMD model against the reference database unpacked from `database.zip`. `dp-cal.sh` runs `dp test` for numbered systems; `fit-cal.sh` groups systems by chemical complexity and aggregates energy/force errors.

Run `prepare.sh` first so the model and database are available. Grouping scripts use destructive `mv` operations, so run them on a copy of expanded data.

---

### 拟合验证

该工作流使用从 `database.zip` 解压的参考数据库评估基线 DeepMD 模型。`dp-cal.sh` 对编号体系运行 `dp test`；`fit-cal.sh` 按化学复杂度对体系分组并汇总能量/力误差。

请先运行 `prepare.sh`，以便模型和数据库可用。分组脚本使用具有破坏性的 `mv` 操作，因此应在展开数据的副本上运行。
