# Task II structure-generation scripts

These helpers transform LAMMPS trajectories into ABACUS input directories.

- `readdata.py` splits a trajectory into frame files.
- `dump2pos.py` converts a LAMMPS dump frame to POSCAR.
- `replace.py` converts DeepMD `TYPE_n` labels to elements in POSCAR.
- `pos2stru.py` creates ABACUS `STRU`, copies pseudopotentials/orbitals, and preserves coordinates.
- `dump2lmp.py` converts a dump to a LAMMPS data file.
- `run.py` dispatches ABACUS tasks with dpdispatcher.

The parent shell workflow copies this directory into each case and supplies `machine.json`, `resource.json`, input templates, and frame data.
