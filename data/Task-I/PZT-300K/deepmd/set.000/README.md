### deepmd NumPy set

This README describes the role, contents, and workflow relationships of this directory within the UniPero repository. It is intended as a reference description; detailed execution behavior remains documented in the scripts and their inline comments.

This is DeepMD-kit set `000` for the named composition and temperature. `box.npy`, `coord.npy`, `energy.npy`, `force.npy`, and `virial.npy` share a common frame axis; the species order is defined by the parent type files.

Treat these arrays as generated data and regenerate the complete set from validated raw data rather than editing individual arrays.

---

### deepmd NumPy 数据集

本文档说明该目录在 UniPero 仓库中的角色、内容及其与工作流的关系。它定位为参考性说明；具体执行行为仍由脚本及其行内注释详细记录。

这是指定成分和温度的 DeepMD-kit 数据集 `000`。`box.npy`、`coord.npy`、`energy.npy`、`force.npy` 和 `virial.npy` 共享相同的帧轴；物种顺序由父目录类型文件定义。

应将这些数组视为生成数据，并从已验证的原始数据重新生成完整数据集，而不是编辑单个数组。
