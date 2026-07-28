"""
UniPero script: data/Task-II/dptest/abscf2dp.py
Purpose: Collect ABACUS SCF calculations into one DeepMD raw and NumPy labeled-data set.
Inputs: Numbered ABACUS SCF directories matching the configured glob.
Outputs: deepmd/ containing raw files and set.000 NumPy arrays.
Run: python abscf2dp.py
Dependencies: Python 3 and dpdata.
Side effects: Creates or replaces the deepmd/ output directory.
This documentation describes the existing workflow; it does not alter calculation parameters.
"""

from dpdata import LabeledSystem, MultiSystems
from glob import glob

"""
process multi systems
"""
fs = glob("./0*/")  # remeber to change here !!!
ms = MultiSystems()
for f in fs:
    try:
        ls = LabeledSystem(f,fmt='abacus/scf')
    except:
        print(f)
    if len(ls) > 0:
        ms.append(ls)

ms.to_deepmd_raw("deepmd")
ms.to_deepmd_npy("deepmd")
