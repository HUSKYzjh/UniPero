### NN-BT initial configuration

This README describes the role, contents, and workflow relationships of this directory within the UniPero repository. It is intended as a reference description; detailed execution behavior remains documented in the scripts and their inline comments.

`conf.lmp` is the LAMMPS data file used to start Task II simulations for this material. The parent submit script copies it into each temperature-specific run directory.

Validate species ordering against the LAMMPS input and DeepMD type map before replacing the structure.

---

### NN-BT 初始构型

本文档说明该目录在 UniPero 仓库中的角色、内容及其与工作流的关系。它定位为参考性说明；具体执行行为仍由脚本及其行内注释详细记录。

`conf.lmp` 是用于启动该材料 Task II 模拟的 LAMMPS 数据文件。父提交脚本将它复制到每个温度特定的运行目录。

替换结构前，请根据 LAMMPS 输入和 DeepMD 类型映射验证物种顺序。
