### UniPero

This README describes the role, contents, and workflow relationships of this directory within the UniPero repository. It is intended as a reference description; detailed execution behavior remains documented in the scripts and their inline comments.

UniPero is a reproducible workflow and data package for training, validating, and applying Deep Potential (DeepMD-kit) models to multicomponent perovskite systems. It bundles model artifacts, training configuration, validation helpers, molecular-dynamics workflows, and ABACUS input resources.

#### Repository map

- `model/`: baseline uncompressed frozen graph, `graph.pb`.
- `compressed.pb`: latest inference model, independently retrained and then compressed; it is not produced by directly compressing `model/graph.pb`.
- `data/Task-I/`: validation against prepared DeepMD data sets.
- `data/Task-II/`: LAMMPS sampling, ABACUS single-point calculations, data conversion, and model testing.
- `data/fitting/`: model-wide energy/force validation and composition-stratified analysis.
- `data/phase-transition/`: temperature-dependent phase-transition simulations and post-processing.
- `input_files/` and `json/`: training, ABACUS, and remote-submission templates.

#### Use and reproducibility

Run workflows in a Linux/HPC environment with Bash, Python 3, LAMMPS, DeepMD-kit, dpdata, dpdispatcher, and ABACUS. Configure job templates before submission. Several legacy scripts move or rename files in place, so run them in a working copy. Validate a model release with a DeepMD-kit version compatible with that artifact and record the `dp test` result.

---

### UniPero

本文档说明该目录在 UniPero 仓库中的角色、内容及其与工作流的关系。它定位为参考性说明；具体执行行为仍由脚本及其行内注释详细记录。

UniPero 是面向多组元钙钛矿体系 Deep Potential（DeepMD-kit）模型训练、验证与应用的可复现工作流和数据包。它包含模型文件、训练配置、验证辅助工具、分子动力学流程以及 ABACUS 输入资源。

#### 仓库结构

- `model/`：基线未压缩冻结图 `graph.pb`。
- `compressed.pb`：最新推理模型，先独立重新训练、再压缩；它不是由 `model/graph.pb` 直接压缩生成的。
- `data/Task-I/`：基于已准备 DeepMD 数据集的验证。
- `data/Task-II/`：LAMMPS 采样、ABACUS 单点计算、数据转换和模型测试。
- `data/fitting/`：全模型能量/力验证和按成分分层的分析。
- `data/phase-transition/`：温度相关相变模拟与后处理。
- `input_files/` 与 `json/`：训练、ABACUS 与远程提交模板。

#### 使用与可复现性

请在具备 Bash、Python 3、LAMMPS、DeepMD-kit、dpdata、dpdispatcher 和 ABACUS 的 Linux/HPC 环境中运行工作流。提交前配置作业模板。部分旧脚本会在原地移动或重命名文件，因此应在工作副本中运行。请使用与该模型文件兼容的 DeepMD-kit 版本验证模型发布，并记录 `dp test` 结果。
