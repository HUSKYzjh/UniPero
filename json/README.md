# 中文说明

本目录包含远程提交的 JSON 模板。请在本地安全地填写项目、账户和资源配置，不要把凭据写入版本库。

---

# English documentation

# Remote-execution templates

- `machine.json` configures dpdispatcher/Lebesgue execution resources and the ABACUS container.
- `job.json` defines the LAMMPS container job.

Copy these files to a run directory, populate the project/account fields using a local secure mechanism, and verify the image and machine type at the target site.  Do not commit credentials or project secrets.
