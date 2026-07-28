# 中文说明

本目录提供 DeepMD-kit 或 ABACUS 的可复用输入模板和计算资源。请复制到具体作业目录后再修改，避免改变仓库中的基准模板。

---

# English documentation

# DeepMD-kit input template

`input.json` defines the model architecture, optimization schedule, loss weights, and training defaults.  The placeholder values in `training.systems` and `training.batch_size` must be replaced with valid data paths and batch sizes before training.  The type-map order must remain consistent with all input data and exported frozen graphs.
