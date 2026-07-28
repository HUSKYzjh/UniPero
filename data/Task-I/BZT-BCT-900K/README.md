# 中文说明

本目录是 Task I 中一个特定成分和温度的参考数据入口。其 deepmd/ 子目录用于对冻结模型进行 dp test 验证；该目录不是独立模拟输入。

---

# English documentation

# BZT-BCT-900K reference data

This directory stores the Task I reference data set for BZT-BCT at 900K.

The `deepmd/` child is a DeepMD-kit labeled data set with both text (`*.raw`) and NumPy (`set.000/*.npy`) representations.  The parent directory is consumed by the Task I validation scripts; it is not a standalone simulation input.  Keep atom ordering and the `type_map.raw` mapping unchanged, because the frozen model depends on that species order.
