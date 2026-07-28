# =============================================================================
# UniPero script: data/fitting/script/dist3.sh
# Purpose: Distribute numbered fitting systems into composition groups and run energy sampling in each group.
# Inputs: Numbered system directories and sample-e.py in the current element-count directory.
# Outputs: Named composition directories containing EN and MAE analysis files.
# Run: bash dist3.sh
# Dependencies: dist3.sh
# Side effects: Bash and Python 3.
# This documentation describes the existing workflow; it does not alter calculation parameters.
# =============================================================================

for i in CT BT ST PT NN ST1
do
	mkdir $i
done
	mv 000*  ST
	mv 069*  ST1
	mv 001* PT
	mv 009* CT
	mv 010*  CT
	mv 047* NN
	mv 066* NN
	mv 073* CT
	mv 094*  PT
	mv 114*  BT

	for i in CT BT ST PT NN ST1
do
	cp sample-e.py $i
        cd $i
        python sample-e.py
        cd ..
done
