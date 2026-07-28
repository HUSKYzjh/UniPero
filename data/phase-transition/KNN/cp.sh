# =============================================================================
# UniPero script: data/phase-transition/KNN/cp.sh
# Purpose: Create temperature-specific phase-transition job directories and submit LAMMPS jobs.
# Inputs: conf.lmp, input.lammps, graph.pb, job.json, and configured Lebesgue credentials.
# Outputs: Submitted remote jobs and local per-temperature job directories.
# Run: bash cp.sh
# Dependencies: Bash and the lbg client.
# Side effects: Creates directories and submits remote compute jobs.
# This documentation describes the existing workflow; it does not alter calculation parameters.
# =============================================================================

for i in 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 200 250 300 350 400 450 500 550 600 650 700
do   
	mkdir $i
	cp  conf.lmp graph.pb input.lammps job.json $i
        cd $i
	sed -i "s/variable        TEMP            equal 50.000000/variable        TEMP            equal $i.000000/g" input.lammps
	lbg job submit -i job.json -p ./ >log1
	cd ..
done
