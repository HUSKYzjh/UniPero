# 中文说明

本目录属于拟合数据验证流程，用于对 DeepMD 模型的能量和力误差进行按成分/元素数分组的统计。分发脚本会移动目录，运行前请保留原始数据副本。

---

# English documentation

# Fitting helper scripts

These scripts are called by `../fit-cal.sh`.

- `dist{3,4,5,6}.sh` distributes numbered systems into composition groups.
- `cat{3,4,5,6}.sh` gathers per-group energy comparison files.
- `sample-e.py` derives relative-energy pairs and MAE values from numbered `*.e.out` files.
- `sample-f.py` derives force errors and a force-error histogram from numbered `*.f.out` files.

They expect a numbered file layout produced by `dp test`.  Each distribution script moves matching directories, so do not run it against the only copy of the database.
