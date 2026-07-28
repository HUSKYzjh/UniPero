### 0.29PIN-0.45PMN-0.26PT phase-transition system

This README describes the role, contents, and workflow relationships of this directory within the UniPero repository. It is intended as a reference description; detailed execution behavior remains documented in the scripts and their inline comments.

This directory is the composition-specific instance of the phase-transition workflow. It contains the LAMMPS starting configuration, simulation input, copied model/job templates, submission helper, and dump-analysis helpers.

Run `cp.sh` to submit the system and `avg-dump.sh` after trajectories are available. Analysis scripts create derived observables in this directory.

---

### 0.29PIN-0.45PMN-0.26PT 相变体系

本文档说明该目录在 UniPero 仓库中的角色、内容及其与工作流的关系。它定位为参考性说明；具体执行行为仍由脚本及其行内注释详细记录。

本目录是相变工作流针对该成分的实例。它包含 LAMMPS 初始构型、模拟输入、复制的模型/作业模板、提交辅助脚本和 dump 分析辅助脚本。

使用 `cp.sh` 提交该体系，并在轨迹可用后运行 `avg-dump.sh`。分析脚本会在本目录创建派生观测量。
