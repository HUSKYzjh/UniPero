#!/bin/bash
# =============================================================================
# UniPero script: data/Task-I/TaskI-evst.sh
# Purpose: Prepare Task I energy-versus-time records from DeepMD test energy outputs.
# Inputs: Completed per-system dptest energy files.
# Outputs: Renamed energy-vs-time files/directories.
# Run: bash TaskI-evst.sh
# Dependencies: Bash, sed, and awk.
# Side effects: Creates and renames files in energy-vs-time/.
# This documentation describes the existing workflow; it does not alter calculation parameters.
# =============================================================================


mkdir energy-vs-time
for i in  BST-300K BST-450K BT-300K BT-450K BZT-BCT-300K BZT-BCT-450K NN-BT-300K NN-BT-450K PIN-PMN-PT-300K PIN-PMN-PT-450K PMN-PT-300K PMN-PT-450K PT-300K PT-450K PZT-300K PZT-450K ST-300K ST-450K ST-900K BST-900K BT-900K BZT-BCT-900K NN-BT-900K PIN-PMN-PT-900K PMN-PT-900K PT-900K PZT-900K KNN-300K KNN-450K KNN-900K
do
  cp $i/dptest-$i.e.out energy-vs-time/
    
done

cd energy-vs-time

for file in *.e.out
do
  sed -i '1d' "$file"
  awk '{print NR, $0}' "$file" > temp_file && mv temp_file "$file"
done

for i in  BST-300K BST-450K BT-300K BT-450K BZT-BCT-300K BZT-BCT-450K NN-BT-300K NN-BT-450K PIN-PMN-PT-300K PIN-PMN-PT-450K PMN-PT-300K PMN-PT-450K PT-300K PT-450K PZT-300K PZT-450K ST-300K ST-450K ST-900K BST-900K BT-900K BZT-BCT-900K NN-BT-900K PIN-PMN-PT-900K PMN-PT-900K PT-900K PZT-900K KNN-300K KNN-450K KNN-900K
do
  mv dptest-$i.e.out $i
done