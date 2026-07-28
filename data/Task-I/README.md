### Task I: prepared-data validation

Task I evaluates the distributed DeepMD model against prepared reference data for perovskite compositions at 300 K, 450 K, and 900 K. Each case stores DeepMD data in raw and NumPy formats.

`TaskI-submit.sh` runs batch tests, `TaskI-collect.sh` aggregates energy and force errors, and `TaskI-evst.sh` prepares energy-versus-time data. Preserve an untouched copy because collection scripts reorganize files.

---

### 任务 I：已准备数据验证

Task I 使用 300 K、450 K 和 900 K 下钙钛矿成分的已准备参考数据评估分发的 DeepMD 模型。每个算例均以原始和 NumPy 格式存储 DeepMD 数据。

`TaskI-submit.sh` 运行批量测试，`TaskI-collect.sh` 汇总能量和力误差，`TaskI-evst.sh` 准备能量-时间数据。请保留未改动的副本，因为收集脚本会重新组织文件。
