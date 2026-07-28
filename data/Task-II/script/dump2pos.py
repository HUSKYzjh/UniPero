"""
UniPero script: data/Task-II/script/dump2pos.py
Purpose: Convert a LAMMPS dump frame to VASP POSCAR format.
Inputs: last.dump in the current frame directory.
Outputs: POSCAR.
Run: python dump2pos.py
Dependencies: Python 3 and dpdata.
Side effects: Overwrites POSCAR if it already exists.
This documentation describes the existing workflow; it does not alter calculation parameters.
"""

import dpdata
d_lmp = dpdata.System('last.dump')
d_lmp.to('vasp/poscar','POSCAR')
