# 中文说明

本目录是 Task I 中一个特定成分和温度的参考数据入口。其 deepmd/ 子目录用于对冻结模型进行 dp test 验证；该目录不是独立模拟输入。

---

# English documentation

# Task I analysis scripts

- `abmd2dp.py`: converts ABACUS molecular-dynamics data to DeepMD raw and NumPy layouts.
- `AIMD-force-fitting.py`: analyzes force-reference comparisons.
- `energy-fitting.py`: analyzes energy-reference comparisons.
- `plot.py`: plots validation results.
- `sample-e.py` and `sample-f.py`: calculate relative-energy and force-error summaries from `dp test` outputs.
- `sort.sh`: renames force output files into the expected numbered order.

Copy these scripts beside the target output files or run the parent workflow, which does this automatically.
