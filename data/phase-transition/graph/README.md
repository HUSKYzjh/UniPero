### Phase-transition plotting

This README describes the role, contents, and workflow relationships of this directory within the UniPero repository. It is intended as a reference description; detailed execution behavior remains documented in the scripts and their inline comments.

`plot-isotropy.py` reads processed observables from sibling systems and creates the isotropy/polarization figure. `nature.mplstyle` defines the Matplotlib style and `../graph.sh` is the launcher.

Run this workflow only after every composition has completed `avg-dump` processing; adjust paths and labels when adding a composition.

---

### 相变绘图

本文档说明该目录在 UniPero 仓库中的角色、内容及其与工作流的关系。它定位为参考性说明；具体执行行为仍由脚本及其行内注释详细记录。

`plot-isotropy.py` 从同级体系读取已处理的观测量并生成各向同性/极化图。`nature.mplstyle` 定义 Matplotlib 样式，`../graph.sh` 是启动脚本。

只有在每个成分完成 `avg-dump` 处理后才运行此工作流；添加成分时应调整路径和标签。
