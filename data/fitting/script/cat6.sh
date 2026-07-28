# =============================================================================
# UniPero script: data/fitting/script/cat6.sh
# Purpose: Collect per-composition relative-energy files for one element-count group.
# Inputs: Group directories containing EN files created by sample-e.py.
# Outputs: A concatenated N-element energy comparison file.
# Run: bash cat6.sh
# Dependencies: cat6.sh
# Side effects: Bash, cp, mv, and cat.
# This documentation describes the existing workflow; it does not alter calculation parameters.
# =============================================================================

for i in P27T9Z9N6M3 P27T10N10M3I4 B9P3T9N2M10 B6P6T6N4M2  B3P9T3N6M3
do
	cd $i
	cp EN ../
	cd ../
	mv EN EN-$i
done

cat EN* >>6-element
