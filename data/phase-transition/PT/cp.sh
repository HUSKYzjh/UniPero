# =============================================================================
# UniPero script: data/phase-transition/PT/cp.sh
# Purpose: Create temperature-specific phase-transition job directories and submit LAMMPS jobs.
# Inputs: conf.lmp, input.lammps, graph.pb, job.json, and configured Lebesgue credentials.
# Outputs: Submitted remote jobs and local per-temperature job directories.
# Run: bash cp.sh
# Dependencies: Bash and the lbg client.
# Side effects: Creates directories and submits remote compute jobs.
# This documentation describes the existing workflow; it does not alter calculation parameters.
# =============================================================================

for i in $(seq 50 50 700)
do   
	mkdir $i
	cp  conf.lmp graph.pb input.lammps job.json $i
        cd $i
	sed -i "s/variable        TEMP            equal 50.000000/variable        TEMP            equal $i.000000/g" input.lammps
	lbg job submit -i job.json -p ./ >log1
	cd ..
done
