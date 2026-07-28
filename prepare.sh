# =============================================================================
# UniPero script: prepare.sh
# Purpose: Distribute the baseline DeepMD graph and remote-job templates into workflow directories, then expand the fitting database.
# Inputs: Run from the repository root after confirming model/graph.pb, json/*.json, and database.zip are present.
# Outputs: Copies graph.pb/job templates and expands data/fitting/database.zip; existing copied files may be replaced.
# Run: bash prepare.sh
# Dependencies: Bash, cp, unzip.
# Side effects: Changes workflow directories and expands a large archive in-place.
# This documentation describes the existing workflow; it does not alter calculation parameters.
# =============================================================================

%%bash
#copy dpmodel
cd model
mv *.pb graph.pb
cd ..
cp model/graph.pb data/Task-I/script
cp model/graph.pb data/fitting/script


cp model/graph.pb data/Task-II/script
cp model/graph.pb data/Task-II/dptest


for i in BT PT ST KN KNN PST PZT 0.29PIN-0.45PMN-0.26PT 0.36PIN-0.36PMN-0.28PT

do
     cp model/graph.pb data/phase-transition/$i
done

#copy json files

cp json/machine.json data/Task-II/script
cp json/job.json data/Task-II/script


for i in BT PT ST KN KNN PST PZT 0.29PIN-0.45PMN-0.26PT 0.36PIN-0.36PMN-0.28PT
do
     cp json/job.json data/phase-transition/$i
done

#unzip database.zip
CURRENT=`pwd`
cd data/fitting
unzip database.zip
mv database/* .
cd "$CURRENT"

