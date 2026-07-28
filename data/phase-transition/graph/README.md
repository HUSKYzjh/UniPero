# 中文说明

本目录属于相变研究工作流。成分目录通常包含 LAMMPS 输入、初始构型、提交脚本和轨迹后处理脚本；执行前请检查温度范围、模型文件与远程作业设置。处理脚本会在原地创建派生数据。

---

# English documentation

# Phase-transition plotting

This directory converts the processed observables from sibling phase-transition systems into publication-style plots.

- `plot-isotropy.py` reads the processed data and produces the isotropy/polarization figure.
- `nature.mplstyle` defines the Matplotlib visual style.
- `../graph.sh` is the launcher.

Run only after the per-system `avg-dump` processing has completed.  Adjust paths and labels in the plotting script when adding a composition.
