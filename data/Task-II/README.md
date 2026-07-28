# Task II: trajectory-to-reference workflow

Task II generates new labeled data through LAMMPS sampling followed by ABACUS single-point calculations, then evaluates the DeepMD model.

1. `TaskII-submit.sh` creates each composition-temperature case and submits LAMMPS jobs.
2. `TaskII-fit.sh` downloads trajectories, splits frames, converts LAMMPS dumps to POSCAR/ABACUS STRU input, and submits ABACUS jobs through dpdispatcher.
3. `TaskII-collect.sh` converts ABACUS outputs to DeepMD data, runs `dp test`, and aggregates errors.
4. `TaskII-evst.sh` prepares energy-versus-time files.

`conf/` holds initial structures, `script/` holds generation helpers, `dptest/` holds conversion/testing helpers, and `orb/` supplies ABACUS basis resources.
