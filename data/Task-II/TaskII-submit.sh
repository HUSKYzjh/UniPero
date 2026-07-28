# =============================================================================
# UniPero script: data/Task-II/TaskII-submit.sh
# Purpose: Create Task II composition-temperature directories and submit LAMMPS sampling jobs.
# Inputs: conf/*/conf.lmp, script templates, graph.pb, input.lammps, and job.json.
# Outputs: Per-case working directories, jobid files, and remote LAMMPS submissions.
# Run: bash TaskII-submit.sh
# Dependencies: Bash, sed, and lbg.
# Side effects: Creates directories and submits remote compute jobs.
# This documentation describes the existing workflow; it does not alter calculation parameters.
# =============================================================================


for j in 300K 450K 900K
do 
for i in BT BZT-BCT NN-BT PMN-PT PZT KNN PIN-PMN-PT PT ST BST
do
	mkdir  $i-$j
	cp ./conf/$i/conf.lmp $i-$j
	cp script/graph.pb script/input.lammps script/job.json $i-$j
	cd $i-$j
    sed -i "s/\(variable TEMP equal \)[0-9.]\+/\\1$j/g" input.lammps
	lbg job submit -i job.json -p ./ >jobid
	cd ..
done
done
