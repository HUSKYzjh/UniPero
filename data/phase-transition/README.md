### Phase-transition workflow

This README describes the role, contents, and workflow relationships of this directory within the UniPero repository. It is intended as a reference description; detailed execution behavior remains documented in the scripts and their inline comments.

Each composition directory contains a LAMMPS input, starting configuration, and scripts for submitting, collecting, and analyzing temperature-dependent simulations. `submit.sh`, `avg-dump-all.sh`, and `graph.sh` coordinate the full workflow.

Review temperature ranges, cell sizes, model files, and remote job settings before submission. Derived logs and dump files should be archived outside the source tree when required.

---

### 相变工作流

本文档说明该目录在 UniPero 仓库中的角色、内容及其与工作流的关系。它定位为参考性说明；具体执行行为仍由脚本及其行内注释详细记录。

每个成分目录都包含 LAMMPS 输入、初始构型，以及用于提交、收集和分析温度相关模拟的脚本。`submit.sh`、`avg-dump-all.sh` 和 `graph.sh` 协调整个工作流。

提交前请检查温度范围、晶胞大小、模型文件和远程作业设置。需要保存时，应将派生的日志和 dump 文件归档到源代码树之外。
