"""
UniPero script: data/phase-transition/ST/sort.py
Purpose: Sort processed phase-transition records into a stable temperature order for plotting.
Inputs: Derived numerical records produced by avg-dump.py.
Outputs: Sorted analysis output consumed by graphing scripts.
Run: python sort.py
Dependencies: Python 3 and NumPy.
Side effects: Rewrites the sorted derived-data file in the current directory.
This documentation describes the existing workflow; it does not alter calculation parameters.
"""

import numpy as np


data = np.loadtxt("Tvslat.dat")


temperatures = data[:, 0]


data_to_sort = data[:, [1, 3, 5]]


errors = data[:, [2, 4, 6]]


sorted_indices = np.argsort(data_to_sort, axis=1)
sorted_data = np.take_along_axis(data_to_sort, sorted_indices, axis=1)
sorted_errors = np.take_along_axis(errors, sorted_indices, axis=1)


output_data = np.empty((len(temperatures), len(data_to_sort[0]) * 2))


output_data[:, ::2] = sorted_data
output_data[:, 1::2] = sorted_errors


output_data = np.column_stack((temperatures, output_data))


np.savetxt("latt_sort.txt", output_data, fmt='%10.6f', delimiter='\t')

