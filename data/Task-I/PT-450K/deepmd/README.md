### deepmd DeepMD data

This README describes the role, contents, and workflow relationships of this directory within the UniPero repository. It is intended as a reference description; detailed execution behavior remains documented in the scripts and their inline comments.

This is the DeepMD-kit labeled-data root for the named composition and temperature. Raw `box`, coordinate, energy, force, virial, and type files are paired with the `set.000` NumPy representation.

Do not change one representation without regenerating the other, and preserve the `type_map.raw` species order required by the frozen model.

---

### deepmd DeepMD 数据

本文档说明该目录在 UniPero 仓库中的角色、内容及其与工作流的关系。它定位为参考性说明；具体执行行为仍由脚本及其行内注释详细记录。

这是指定成分和温度的 DeepMD-kit 标注数据根目录。原始的 box、坐标、能量、力、virial 和类型文件与 `set.000` NumPy 表示配套存在。

不要在未重新生成另一种表示的情况下修改其中一种表示，并应保留冻结模型所需的 `type_map.raw` 物种顺序。
