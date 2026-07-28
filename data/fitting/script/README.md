# Fitting helper scripts

`dist{3,4,5,6}.sh` distributes numbered systems into composition groups and `cat{3,4,5,6}.sh` gathers group energy files. `sample-e.py` and `sample-f.py` compute energy and force summaries from numbered `dp test` outputs.

The scripts expect the numbered layout produced by the fitting workflow and may move directories; do not run them against the only copy of the database.

---

# 拟合辅助脚本

`dist{3,4,5,6}.sh` 将编号体系分配到成分组中，`cat{3,4,5,6}.sh` 汇集各组能量文件。`sample-e.py` 和 `sample-f.py` 从编号的 `dp test` 输出计算能量和力汇总。

这些脚本要求拟合工作流生成的编号布局，并可能移动目录；不要对数据库的唯一副本运行它们。
