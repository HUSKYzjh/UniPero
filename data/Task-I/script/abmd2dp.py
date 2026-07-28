"""
UniPero script: data/Task-I/script/abmd2dp.py
Purpose: Convert ABACUS molecular-dynamics output into DeepMD raw and NumPy labeled-data formats.
Inputs: ABACUS MD output in the current directory.
Outputs: deepmd/ containing raw files and set.000 NumPy arrays.
Run: python abmd2dp.py
Dependencies: Python 3, dpdata, and NumPy.
Side effects: Creates or replaces the deepmd/ output directory.
This documentation describes the existing workflow; it does not alter calculation parameters.
"""

import dpdata 
import numpy as np 
dp_d = dpdata.LabeledSystem('./',fmt='abacus/md')[1:1500:5] 
dp_d.to_deepmd_raw("deepmd") 
dp_d.to_deepmd_npy("deepmd") 
