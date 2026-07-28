# =============================================================================
# UniPero script: data/Task-II/TaskII-fit.sh
# Purpose: Download Task II trajectories, generate ABACUS input frames, and dispatch ABACUS calculations.
# Inputs: Completed LAMMPS jobs, case scripts, and ABACUS resource files.
# Outputs: Frame directories with POSCAR/STRU/INPUT files and dpdispatcher submissions.
# Run: bash TaskII-fit.sh
# Dependencies: Bash, lbg, Python 3, dpdata, ABACUS, and dpdispatcher.
# Side effects: Downloads data, moves trajectory files, creates hundreds of frame directories, and submits jobs.
# This documentation describes the existing workflow; it does not alter calculation parameters.
# =============================================================================


CURRENT=`pwd`

#download jobs and get the conformations

for j in 300K 450K 900K
do
for i in BT BZT-BCT NN-BT PMN-PT PZT KNN PIN-PMN-PT PT BST ST
do
  cd ./$i-$j 
  id=$(grep -o -E 'JOB ID: [0-9]+' jobid | awk '{print $NF}')
  lbg job download $id
  cd $id
  mv * ../
  rm -rf $id
  cd "$CURRENT" 
  cp -r script $i-$j
  cd $i-$j
  cp traj.lammpstrj script
  cd script
  mv resource.json run.py machine.json ../
  python readdata.py

#abacus jobs

    for ((k = 0; k <= 500; k += 5)); do
        dir_name=$(printf "%04d" $k)
        mkdir "$dir_name"
        mv "$dir_name.lammpstrj" "$dir_name"
        cd "$dir_name"
        mv "$dir_name.lammpstrj" last.dump
        python ../dump2pos.py 
        python ../replace.py
        python ../pos2stru.py
        cd ..
        cp INPUT input.lammps job.json "$dir_name"
    done

    mkdir bk
    mv *.lammpstrj bk

  cd ../
  python3 run.py &
  cd "$CURRENT"
done
done


