#!/bin/bash
# =============================================================================
# UniPero script: data/Task-II/dptest/sort.sh
# Purpose: Rename force output files into the zero-padded sequence expected by sample-f.py.
# Inputs: Unordered *.f.out files in the current directory.
# Outputs: 000.f.out, 001.f.out, and subsequent renamed files.
# Run: bash sort.sh
# Dependencies: Bash.
# Side effects: Renames every matching force output file in-place.
# This documentation describes the existing workflow; it does not alter calculation parameters.
# =============================================================================


count=0

for file in *.f.out; do
    new_name=$(printf "%03d.f.out" "$count")
    mv "$file" "$new_name"
    ((count++))
done

