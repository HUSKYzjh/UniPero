# 中文说明

本目录属于相变研究工作流。成分目录通常包含 LAMMPS 输入、初始构型、提交脚本和轨迹后处理脚本；执行前请检查温度范围、模型文件与远程作业设置。处理脚本会在原地创建派生数据。

---

# English documentation

# Phase-transition workflow

Each composition directory contains a LAMMPS input deck, a starting configuration, and scripts to submit, collect, and analyze a temperature-dependent simulation.  The system directories share a common layout:

- `input.lammps`: LAMMPS run parameters.
- `conf.lmp`: starting structure.
- `graph.pb` and `job.json`: copied by `prepare.sh`.
- `cp.sh`: submits the job with the Lebesgue client.
- `avg-dump.sh` and `avg-dump.py`: convert LAMMPS dump data into averaged observables.
- `sort.py`: sorts the derived records for plotting.

Use `submit.sh` to submit all listed systems, `avg-dump-all.sh` to post-process them, and `graph.sh` to make the final plot.  Check temperature, cell size, and remote project settings before submission.
