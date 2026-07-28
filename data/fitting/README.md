# 中文说明

本目录属于拟合数据验证流程，用于对 DeepMD 模型的能量和力误差进行按成分/元素数分组的统计。分发脚本会移动目录，运行前请保留原始数据副本。

---

# English documentation

# Fitting validation

This workflow evaluates `model/graph.pb` against the reference database unpacked from `database.zip`.

- `dp-cal.sh` runs `dp test` for each numbered reference system and writes matching energy/force outputs.
- `fit-cal.sh` groups those systems by the number of chemical elements, invokes the helper scripts in `script/`, and aggregates energy and force error summaries.
- `script/` contains the grouping, renaming, and sampling helpers.

Run `bash ../../prepare.sh` from the repository root first so the database and model are available.  The scripts use destructive `mv` operations while forming groups; run them on a copy of the expanded data.
