# 中文说明

model/ 目录中的 compressed.pb 是最新的独立重训后压缩 DeepMD 冻结图。它不是由 model/graph.pb 直接压缩得到，因此应作为独立模型版本管理。发布或部署前请记录兼容 DeepMD-kit 版本和 dp test 验证结果。

---

# English documentation

# Compressed model artifact

The latest compressed DeepMD frozen graph is `model/compressed.pb`.  It is an intentionally versioned release artifact, independently retrained before compression, and distinct from the baseline `model/graph.pb`.

Before deployment, validate it with a DeepMD-kit version compatible with the graph and record the command and `dp test` result in the release or pull request.
