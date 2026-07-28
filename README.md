# 中文说明

UniPero 是面向多组元钙钛矿体系的 Deep Potential（DeepMD-kit）训练、验证与应用工作流及数据包。仓库包含模型文件、训练配置、拟合/验证脚本、LAMMPS 分子动力学流程，以及 ABACUS 计算所需的输入资源。

## 仓库结构

- `model/`：基线未压缩冻结图 `graph.pb`。
- `compressed.pb`：最新独立重训后再压缩的推理模型；它不是由本仓库的 `graph.pb` 直接压缩得到。
- `data/Task-I/`：利用已准备 DeepMD 数据集进行模型验证。
- `data/Task-II/`：LAMMPS 采样、ABACUS 单点计算、数据转换与模型测试流程。
- `data/fitting/`：全模型范围的能量/力误差验证与成分分组分析。
- `data/phase-transition/`：温度相关相变模拟及后处理。
- `input_files/` 与 `json/`：训练、ABACUS 和远程提交模板。

## 使用提示

在 Linux/HPC 环境中使用 Bash、Python 3、LAMMPS、DeepMD-kit、dpdata、dpdispatcher 与 ABACUS。运行前请按目录内说明配置作业模板；部分旧脚本会在原地移动或重命名文件，建议在工作副本中执行。压缩模型发布前应使用与模型兼容的 DeepMD-kit 版本完成 `dp test` 验证，并记录版本与结果。

---

# English documentation
# UniPero

UniPero is a reproducible workflow and data package for training, validating, and applying a Deep Potential (DeepMD-kit) model to multicomponent perovskite systems.  It bundles the trained inference model, training configuration, fitting/validation helpers, molecular-dynamics workflows, and the input resources required by ABACUS and LAMMPS.

## Repository map

| Path | Role |
| --- | --- |
| `model/` | Distributed inference model.  `graph.pb` is the uncompressed DeepMD frozen graph. |
| `compressed.pb` | Latest compressed inference graph release, provided at the repository root. |
| `data/Task-I/` | Model evaluation against prepared DeepMD data sets. |
| `data/Task-II/` | LAMMPS sampling followed by ABACUS single-point calculations and DP testing. |
| `data/fitting/` | Model-wide energy/force validation and composition-stratified analyses. |
| `data/phase-transition/` | Temperature-dependent phase-transition simulations and post-processing. |
| `input_files/` | Reference DeepMD and ABACUS input templates. |
| `json/` | dpdispatcher/Lebesgue job and machine templates. |
| `prepare.sh` | Copies the model and job templates into the workflow directories and unpacks the fitting database. |

## Prerequisites

Run these workflows in a Linux/HPC environment with Bash, Python 3, LAMMPS, DeepMD-kit, dpdata, dpdispatcher, ABACUS, and (for remote submission) the `lbg` command-line client.  The job templates target DeepMD-kit 2.1.5 and ABACUS 3.2.3 containers; adapt scheduler, image, and account settings before submitting.

## Quick start

1. Inspect and adapt `json/machine.json` and `json/job.json`; fill in the site/account fields rather than committing credentials.
2. Place the current frozen graph in `model/graph.pb`.
3. From the repository root, run `bash prepare.sh`.  This distributes the model and templates and expands `database.zip` for fitting validation.
4. Select one workflow README under `data/` and run its commands from the documented working directory.
5. Keep generated trajectories, logs, and large intermediate data out of version control unless they are an intentional release artifact.

## Model artifacts

`model/graph.pb` is the checked-in baseline frozen graph.  `compressed.pb` at the repository root is the latest independently retrained, then compressed inference artifact; it is not derived by directly compressing this repository's `model/graph.pb`.  The baseline graph is retained for provenance.  Validate the compressed model with a compatible DeepMD-kit release before deployment.

## Reproducibility and data conventions

DeepMD raw data use `box.raw`, `coord.raw`, `energy.raw`, `force.raw`, `virial.raw`, `type.raw`, and `type_map.raw`; NumPy sets are kept under `set.000/`.  Script outputs such as `*.e.out`, `*.f.out`, `EN`, `MAE`, and `Force-all` are derived analysis products.  Read the README located beside a script before running it: several legacy scripts reorganize files in-place.
