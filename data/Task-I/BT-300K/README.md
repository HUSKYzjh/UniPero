# BT-300K reference data

This directory stores the Task I reference data set for BT at 300K.

The `deepmd/` child is a DeepMD-kit labeled data set with both text (`*.raw`) and NumPy (`set.000/*.npy`) representations.  The parent directory is consumed by the Task I validation scripts; it is not a standalone simulation input.  Keep atom ordering and the `type_map.raw` mapping unchanged, because the frozen model depends on that species order.
