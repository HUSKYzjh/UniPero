# =============================================================================
# UniPero script: data/fitting/script/dist5.sh
# Purpose: Distribute numbered fitting systems into composition groups and run energy sampling in each group.
# Inputs: Numbered system directories and sample-e.py in the current element-count directory.
# Outputs: Named composition directories containing EN and MAE analysis files.
# Run: bash dist5.sh
# Dependencies: dist5.sh
# Side effects: Bash and Python 3.
# This documentation describes the existing workflow; it does not alter calculation parameters.
# =============================================================================

for i in B7C1T7Z1 B7C1T7H1 B6B1N1T B4B2N2T B2B3N3T P27T21N4M2 P27T15N8M4 P27T6N14M7 B6N2T6N2 B4N4T4N4 B2N6T2N6 P27T21Nb4Z2 P27T15N8Z4 P27T6N14Z7
do
	mkdir $i
done
	mv 005* 006* 112* B7C1T7Z1
	mv 007* 008* 113* B7C1T7H1
	mv 039* 107* B6B1N1T
	mv 040* 102* B4B2N2T
	mv 041* 096* B2B3N3T
	mv 042* 080* P27T21N4M2
	mv 043* 078* P27T15N8M4
	mv 044* 082* P27T6N14M7
	mv 048* 106* B6N2T6N2
	mv 049* 101* B4N4T4N4
	mv 050* 095* B2N6T2N6
	mv 051* 079* P27T21Nb4Z2
	mv 052* 077* P27T15N8Z4
	mv 053* 081* P27T6N14Z7
    

for i in B7C1T7Z1 B7C1T7H1 B6B1N1T B4B2N2T B2B3N3T P27T21N4M2 P27T15N8M4 P27T6N14M7 B6N2T6N2 B4N4T4N4 B2N6T2N6 P27T21Nb4Z2 P27T15N8Z4 P27T6N14Z7
do
	cp sample-e.py $i
        cd $i
        python sample-e.py
        cd ..
done

