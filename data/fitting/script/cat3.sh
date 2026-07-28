# =============================================================================
# UniPero script: data/fitting/script/cat3.sh
# Purpose: Collect per-composition relative-energy files for one element-count group.
# Inputs: Group directories containing EN files created by sample-e.py.
# Outputs: A concatenated N-element energy comparison file.
# Run: bash cat3.sh
# Dependencies: cat3.sh
# Side effects: Bash, cp, mv, and cat.
# This documentation describes the existing workflow; it does not alter calculation parameters.
# =============================================================================

for i in CT BT ST PT NN ST1
do
	cd $i
	cp EN ../
	cd ../
	mv EN EN-$i
done

cat EN* >>3-element
