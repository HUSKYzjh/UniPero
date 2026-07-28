# PZT phase-transition system

This directory is one composition-specific instance of the phase-transition workflow.

## Inputs

- `conf.lmp`: initial LAMMPS configuration.
- `input.lammps`: simulation input; review temperature, timestep, run length, and model path.
- `graph.pb`: DeepMD frozen graph copied by `prepare.sh`.
- `job.json`: remote LAMMPS job description copied by `prepare.sh`.

## Run and analysis

Run `bash cp.sh` to submit the directory, then `bash avg-dump.sh` after the trajectory is available.  `avg-dump.py` reduces dump-frame data to averaged observables and `sort.py` orders the result for downstream plotting.  Generated logs and dump files are not source data; archive them externally when needed.
