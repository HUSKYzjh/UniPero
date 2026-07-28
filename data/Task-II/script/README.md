### Task II structure-generation scripts

This README describes the role, contents, and workflow relationships of this directory within the UniPero repository. It is intended as a reference description; detailed execution behavior remains documented in the scripts and their inline comments.

These helpers split LAMMPS trajectories, convert dump frames to POSCAR and ABACUS STRU, replace type labels, and dispatch ABACUS tasks.

The parent workflow copies this directory into each case and supplies the job templates, resource files, and trajectory data.

---

### 任务 II 结构生成脚本

本文档说明该目录在 UniPero 仓库中的角色、内容及其与工作流的关系。它定位为参考性说明；具体执行行为仍由脚本及其行内注释详细记录。

这些辅助工具分割 LAMMPS 轨迹，将 dump 帧转换为 POSCAR 和 ABACUS STRU，替换类型标签，并分发 ABACUS 任务。

父工作流会将本目录复制到每个算例，并提供作业模板、资源文件和轨迹数据。
