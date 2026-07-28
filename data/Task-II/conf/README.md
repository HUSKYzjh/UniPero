# 中文说明

本目录存放该材料体系的 LAMMPS 初始构型 conf.lmp。TaskII-submit.sh 会将其复制到温度特定的计算目录；替换结构时必须同步核对元素顺序与 DeepMD 类型映射。

---

# English documentation

# Task II starting configurations

Each child directory contains `conf.lmp`, the LAMMPS initial configuration for one material family.  `TaskII-submit.sh` copies the matching file into each temperature-specific working directory.  Keep the file name unchanged unless the submit script is updated at the same time.
