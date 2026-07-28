# =============================================================================
# UniPero script: data/fitting/script/dist6.sh
# Purpose: Distribute numbered fitting systems into composition groups and run energy sampling in each group.
# Inputs: Numbered system directories and sample-e.py in the current element-count directory.
# Outputs: Named composition directories containing EN and MAE analysis files.
# Run: bash dist6.sh
# Dependencies: dist6.sh
# Side effects: Bash and Python 3.
# This documentation describes the existing workflow; it does not alter calculation parameters.
# =============================================================================

for i in P27T9Z9N6M3 P27T10N10M3I4 B9P3T9N2M10 B6P6T6N4M2  B3P9T3N6M3
do
	mkdir $i
done
	mv 045*  083* P27T9Z9N6M3
	mv 046*  076* P27T10N10M3I4
	mv 054*  055* 056* 057* 115* B9P3T9N2M10
	mv 058*  059* 060* 061* 111* B6P6T6N4M2  
	mv 062* 063* 064* 065* 100* B3P9T3N6M3   

for i in P27T9Z9N6M3 P27T10N10M3I4 B9P3T9N2M10 B6P6T6N4M2  B3P9T3N6M3
do
	cp sample-e.py $i
        cd $i
        python sample-e.py
        cd ..
done

