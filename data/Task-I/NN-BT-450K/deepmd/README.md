# 中文说明

本目录保存对应材料/温度的 DeepMD-kit 标注数据，同时提供 *.raw 文本表示与 set.000/ NumPy 表示。修改任一表示后必须同步重新生成另一表示，并保持物种映射顺序不变。

---

# English documentation

# NN-BT-450K DeepMD data

This is the DeepMD-kit labeled-data root for NN-BT at 450K.

- `box.raw`, `coord.raw`, `energy.raw`, `force.raw`, and `virial.raw` are frame-wise text arrays.
- `type.raw` gives the species index for each atom.
- `type_map.raw` maps those indices to chemical symbols.
- `set.000/` contains the equivalent NumPy arrays used by DeepMD-kit.

Do not edit one representation without regenerating the other with dpdata or DeepMD-kit tools.
