# =============================================================================
# UniPero script: data/phase-transition/graph.sh
# Purpose: Launch the phase-transition plotting workflow after all systems are processed.
# Inputs: Sorted processed data in sibling system directories.
# Outputs: Figure files written by graph/plot-isotropy.py.
# Run: bash graph.sh
# Dependencies: Bash and Python/Matplotlib.
# Side effects: Creates or replaces plot outputs.
# This documentation describes the existing workflow; it does not alter calculation parameters.
# =============================================================================

for i in 
do
   cd $i
   mv latt_sort.txt $i.dat
   cp $i.dat ../graph
   cd ..
done
cd graph
