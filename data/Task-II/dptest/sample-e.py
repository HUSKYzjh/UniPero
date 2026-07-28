"""
UniPero script: data/Task-II/dptest/sample-e.py
Purpose: Calculate relative-energy pairs and mean absolute energy error from numbered DeepMD test outputs.
Inputs: 000.e.out through 115.e.out with DFT and model energy columns.
Outputs: EN (relative-energy pairs) and MAE (meV/atom summary).
Run: python sample-e.py
Dependencies: Python 3 and standard library.
Side effects: Overwrites EN and MAE in the working directory.
This documentation describes the existing workflow; it does not alter calculation parameters.
"""

import math

LS = 20000
atoms = 20

num_files = 116
edft = [0] * LS
edp = [0] * LS
endft = [0] * LS
endp = [0] * LS
AE = [0] * LS
MAE = 0

sample = 0
for i in range(num_files):
    filename = "{:03d}.e.out".format(i)
    try:
        with open(filename, "r") as file:
            for line in file:
                if line.startswith('#'):
                    continue
                dft, dp = map(float, line.split())
                edft[sample] = dft
                edp[sample] = dp
                sample += 1
    except FileNotFoundError:
        print(f"File {filename} does not exist")

M = sample
print(f"M: {M}")
if M > LS:
    print("The size of array is too small!")
    exit(-10)

with open("EN", "w") as fp:
    for i in range(M):
        endft[i] = edft[i] - edft[0]
        endp[i] = edp[i] - edp[0]
        AE[i] = abs(edft[i] - edp[i])
        MAE += AE[i]
        if endft[i] != 0 and endp[i] != 0:
            fp.write(f"{endft[i]} {endp[i]}\n")

with open("MAE", "w") as fp:
    fp.write(f"num: {M} :MAE: {(MAE / M) / atoms * 1000} meV/atom\n")
