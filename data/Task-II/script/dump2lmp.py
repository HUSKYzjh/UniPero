"""
UniPero script: data/Task-II/script/dump2lmp.py
Purpose: Convert the first frame of last.dump to a LAMMPS data file.
Inputs: last.dump in the current frame directory.
Outputs: conf.lmp.
Run: python dump2lmp.py
Dependencies: Python 3 and dpdata.
Side effects: Overwrites conf.lmp if it already exists.
This documentation describes the existing workflow; it does not alter calculation parameters.
"""

import dpdata
d_dump = dpdata.System("last.dump")
d_dump.to("lammps/lmp", "conf.lmp", frame_idx=0)
