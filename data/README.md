# 中文说明

本目录是 UniPero 工作流的一部分。其用途、输入、输出、依赖和运行步骤见下方英文说明；运行前请从父目录 README 确认工作流顺序及文件副作用。

---

# English documentation

# Data workflows

This directory contains the three major UniPero workflows.

- `Task-I/`: evaluate the supplied DeepMD graph against prepared reference data at multiple compositions and temperatures.
- `Task-II/`: launch LAMMPS trajectories, extract configurations, run ABACUS single-point calculations, convert the results to DeepMD data, and evaluate the graph.
- `fitting/`: organize the broad reference database by chemical complexity and calculate energy/force errors.
- `phase-transition/`: run LAMMPS phase-transition studies and derive polarization/structural observables.

All scripts assume they are executed from their own documented directory.  They create or move files in-place, so use a disposable copy for exploratory runs.
