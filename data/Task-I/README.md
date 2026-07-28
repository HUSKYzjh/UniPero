# 中文说明

本目录属于 Task I 的已准备数据验证流程。请从父目录 README 了解提交、收集能量/力误差和绘图的完整顺序；脚本会在工作目录生成派生结果。

---

# English documentation

# Task I: prepared-data validation

Task I evaluates the distributed DeepMD model against prepared reference data for several perovskite compositions at 300 K, 450 K, and 900 K.

Each composition-temperature directory contains a `deepmd/` data set in both raw and NumPy forms.  The `script/` directory holds conversion and error-analysis helpers.  Use `TaskI-submit.sh` to run the batch tests, `TaskI-collect.sh` to collect energy and force outputs, and `TaskI-evst.sh` to prepare energy-versus-time data.

The collection scripts create and rename directories in-place.  Preserve an untouched checkout or working copy before re-running them.
