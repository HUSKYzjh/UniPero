# 中文说明

本目录属于 Task II：从 LAMMPS 轨迹生成 ABACUS 计算输入，转换结果为 DeepMD 数据，并汇总模型误差。该流程会创建大量帧目录及远程作业，请先在父目录配置资源。

---

# English documentation

# Task II structure-generation scripts

These helpers transform LAMMPS trajectories into ABACUS input directories.

- `readdata.py` splits a trajectory into frame files.
- `dump2pos.py` converts a LAMMPS dump frame to POSCAR.
- `replace.py` converts DeepMD `TYPE_n` labels to elements in POSCAR.
- `pos2stru.py` creates ABACUS `STRU`, copies pseudopotentials/orbitals, and preserves coordinates.
- `dump2lmp.py` converts a dump to a LAMMPS data file.
- `run.py` dispatches ABACUS tasks with dpdispatcher.

The parent shell workflow copies this directory into each case and supplies `machine.json`, `resource.json`, input templates, and frame data.
