# =============================================================================
# UniPero script: data/fitting/script/cat4.sh
# Purpose: Collect per-composition relative-energy files for one element-count group.
# Inputs: Group directories containing EN files created by sample-e.py.
# Outputs: A concatenated N-element energy comparison file.
# Run: bash cat4.sh
# Dependencies: cat4.sh
# Side effects: Bash, cp, mv, and cat.
# This documentation describes the existing workflow; it does not alter calculation parameters.
# =============================================================================

for i in B2C61 B2S6 B4S4 B6S2 B4N4T K4N4N8 P12N8M4 P12N8Z4 P8N4I4 P2S6 P4S4 P6S2 B2C6 B4C4 B6C2 C2S6 C4S4 C6S2 B2P6 B4P4 B6P2 P6C2 P4C4 P2C6 P8T2Z6 P8T4Z4 P8T6Z2
do
	cd $i
	cp EN ../
	cd ../
	mv EN EN-$i
done

cat EN* >>4-element
