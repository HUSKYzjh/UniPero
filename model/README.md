# 中文说明

本目录保存 UniPero 的基线未压缩冻结图 graph.pb。仓库根目录的 ../compressed.pb 是独立重新训练后再压缩得到的最新推理模型，不应假定它可由 graph.pb 直接再生成。部署前请记录兼容的 DeepMD-kit 版本和验证结果。

---

# English documentation

# Model artifacts

`graph.pb` is the baseline DeepMD frozen graph shipped with UniPero.  It is copied into the validation and simulation workflows by `prepare.sh`.

## Compressed model release

The released compressed artifact is stored at the repository root as `../compressed.pb`.  It was independently retrained and then compressed; it is **not** a direct compression of `graph.pb`.  Treat it as a separate model release and validate it with a DeepMD-kit version compatible with that artifact, for example:`n`n```bash`ndp test -m ../compressed.pb -s ../data/Task-I/BT-300K/deepmd -n 200`n```

Record the exact DeepMD-kit version and validation result before replacing the released `compressed.pb`.  Compression changes inference representation; it must not change the model type map or produce materially different test errors.
