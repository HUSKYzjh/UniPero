# Task II DeepMD testing helpers

This directory contains the tools used after ABACUS calculations finish.

- `abmd2dp.py` converts ABACUS MD output to DeepMD data.
- `abscf2dp.py` collects ABACUS SCF directories into one DeepMD labeled data set.
- `sample-e.py`, `sample-f.py`, and `sort.sh` aggregate `dp test` results.
- `graph.pb` is copied here by `prepare.sh` before it is distributed to a case.

Run these scripts from the case `script/` directory only after expected ABACUS outputs exist.
