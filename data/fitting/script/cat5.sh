# =============================================================================
# UniPero script: data/fitting/script/cat5.sh
# Purpose: Collect per-composition relative-energy files for one element-count group.
# Inputs: Group directories containing EN files created by sample-e.py.
# Outputs: A concatenated N-element energy comparison file.
# Run: bash cat5.sh
# Dependencies: cat5.sh
# Side effects: Bash, cp, mv, and cat.
# This documentation describes the existing workflow; it does not alter calculation parameters.
# =============================================================================

for i in B7C1T7Z1 B7C1T7H1 B6B1N1T B4B2N2T B2B3N3T P27T21N4M2 P27T15N8M4 P27T6N14M7 B6N2T6N2 B4N4T4N4 B2N6T2N6 P27T21Nb4Z2 P27T15N8Z4 P27T6N14Z7
do
	cd $i
	cp EN ../
	cd ../
	mv EN EN-$i
done

cat EN* >>5-element
