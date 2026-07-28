### Task II starting configurations

This README describes the role, contents, and workflow relationships of this directory within the UniPero repository. It is intended as a reference description; detailed execution behavior remains documented in the scripts and their inline comments.

Each child directory contains `conf.lmp`, the LAMMPS initial configuration for one material family. `TaskII-submit.sh` copies the matching file into temperature-specific run directories.

Keep the filename unchanged unless the submit script is updated at the same time.

---

### 任务 II 初始构型

本文档说明该目录在 UniPero 仓库中的角色、内容及其与工作流的关系。它定位为参考性说明；具体执行行为仍由脚本及其行内注释详细记录。

每个子目录都包含 `conf.lmp`，即一个材料体系的 LAMMPS 初始构型。`TaskII-submit.sh` 将匹配的文件复制到温度特定的运行目录。

除非同时更新提交脚本，否则应保持文件名不变。
