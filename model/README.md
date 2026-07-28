### Model artifacts

`graph.pb` is the baseline uncompressed DeepMD frozen graph. The repository-root `../compressed.pb` is a separate model release: it was independently retrained and then compressed, not directly compressed from `graph.pb`.

Use a DeepMD-kit version compatible with the selected artifact for validation and deployment, and record the version and `dp test` result for every release.

---

### 模型文件

`graph.pb` 是基线未压缩 DeepMD 冻结图。仓库根目录的 `../compressed.pb` 是独立的模型发布：它先独立重新训练、再压缩，而不是从 `graph.pb` 直接压缩得到。

验证和部署时应使用与所选模型文件兼容的 DeepMD-kit 版本，并为每次发布记录版本和 `dp test` 结果。
