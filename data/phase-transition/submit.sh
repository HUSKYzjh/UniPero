#!/bin/bash
# =============================================================================
# UniPero script: data/phase-transition/submit.sh
# Purpose: Submit all listed phase-transition composition workflows.
# Inputs: Prepared child directories with configured job templates.
# Outputs: Remote job submissions for each composition.
# Run: bash submit.sh
# Dependencies: Bash, lbg, and configured remote credentials.
# Side effects: Submits multiple remote compute jobs.
# This documentation describes the existing workflow; it does not alter calculation parameters.
# =============================================================================


for i in ; do
    if [ -f "$i/cp.sh" ]; then
        cd "$i"
        chmod +x cp.sh
        ./cp.sh 
        cd ..
    fi
done

wait
echo "All submissions completed."
