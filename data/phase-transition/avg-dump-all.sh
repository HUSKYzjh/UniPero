#!/bin/bash
# =============================================================================
# UniPero script: data/phase-transition/avg-dump-all.sh
# Purpose: Run post-processing across every listed phase-transition composition.
# Inputs: Completed phase-transition system directories.
# Outputs: Per-system averaged observables.
# Run: bash avg-dump-all.sh
# Dependencies: Bash.
# Side effects: Invokes each child analysis script in-place.
# This documentation describes the existing workflow; it does not alter calculation parameters.
# =============================================================================

 

for i in ; do
    if [ -f "$i/avg-dump.sh" ]; then
        cd $i
        chmod +x avg-dump.sh
        bash ./avg-dump.sh 
        cd ..
    fi
done


