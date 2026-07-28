# Task II: trajectory-to-reference workflow

Task II generates labeled data through LAMMPS sampling and ABACUS single-point calculations, then evaluates the DeepMD model. The submit, fit, collect, and energy-versus-time scripts implement these four stages.

`conf` stores starting structures, `script` stores generation helpers, `dptest` stores conversion/testing helpers, and `orb` stores ABACUS resources. Configure resources before creating large batches of remote jobs.

---

# 任务 II：轨迹到参考数据工作流

Task II 通过 LAMMPS 采样和 ABACUS 单点计算生成标注数据，然后评估 DeepMD 模型。提交、拟合、收集和能量-时间脚本实现这四个阶段。

`conf` 存放初始结构，`script` 存放生成辅助工具，`dptest` 存放转换/测试辅助工具，`orb` 存放 ABACUS 资源。在创建大量远程作业前请配置资源。
