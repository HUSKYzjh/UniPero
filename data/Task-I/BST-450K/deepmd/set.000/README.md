# 中文说明

本目录为对应材料与温度的 DeepMD-kit NumPy 数据集 set.000。ox.npy、coord.npy、energy.npy、orce.npy 与 irial.npy 共享帧维度；元素顺序由父目录的 	ype.raw 和 	ype_map.raw 定义。请通过数据转换工具整体重建，不要手工修改单个数组。

---

# English documentation

# BST-450K NumPy set

This directory is DeepMD-kit set `000` for BST at 450K.  It contains `box.npy`, `coord.npy`, `energy.npy`, `force.npy`, and `virial.npy` with a common frame axis.  The atom species order is defined by the parent `type.raw` and `type_map.raw` files.  Treat these arrays as generated data: regenerate them from a validated raw-data set instead of editing individual arrays.
