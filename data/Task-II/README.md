# 中文说明

本目录属于 Task II：从 LAMMPS 轨迹生成 ABACUS 计算输入，转换结果为 DeepMD 数据，并汇总模型误差。该流程会创建大量帧目录及远程作业，请先在父目录配置资源。

---

# English documentation

# Task II: trajectory-to-reference workflow

Task II generates new labeled data through LAMMPS sampling followed by ABACUS single-point calculations, then evaluates the DeepMD model.

1. `TaskII-submit.sh` creates each composition-temperature case and submits LAMMPS jobs.
2. `TaskII-fit.sh` downloads trajectories, splits frames, converts LAMMPS dumps to POSCAR/ABACUS STRU input, and submits ABACUS jobs through dpdispatcher.
3. `TaskII-collect.sh` converts ABACUS outputs to DeepMD data, runs `dp test`, and aggregates errors.
4. `TaskII-evst.sh` prepares energy-versus-time files.

`conf/` holds initial structures, `script/` holds generation helpers, `dptest/` holds conversion/testing helpers, and `orb/` supplies ABACUS basis resources.
