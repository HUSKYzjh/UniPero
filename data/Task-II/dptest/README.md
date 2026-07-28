# 中文说明

本目录属于 Task II：从 LAMMPS 轨迹生成 ABACUS 计算输入，转换结果为 DeepMD 数据，并汇总模型误差。该流程会创建大量帧目录及远程作业，请先在父目录配置资源。

---

# English documentation

# Task II DeepMD testing helpers

This directory contains the tools used after ABACUS calculations finish.

- `abmd2dp.py` converts ABACUS MD output to DeepMD data.
- `abscf2dp.py` collects ABACUS SCF directories into one DeepMD labeled data set.
- `sample-e.py`, `sample-f.py`, and `sort.sh` aggregate `dp test` results.
- `graph.pb` is copied here by `prepare.sh` before it is distributed to a case.

Run these scripts from the case `script/` directory only after expected ABACUS outputs exist.
