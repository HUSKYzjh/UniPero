# 中文说明

本目录存放该材料体系的 LAMMPS 初始构型 conf.lmp。TaskII-submit.sh 会将其复制到温度特定的计算目录；替换结构时必须同步核对元素顺序与 DeepMD 类型映射。

---

# English documentation

# PMN_PT initial configuration

`conf.lmp` is the LAMMPS data file used to start Task II simulations for PMN_PT.  It is copied by `../../TaskII-submit.sh` into each temperature-specific run directory.  Validate species ordering against the LAMMPS input and DeepMD type map before replacing this configuration.
