# PT-900K DeepMD data

This is the DeepMD-kit labeled-data root for PT at 900K.

- `box.raw`, `coord.raw`, `energy.raw`, `force.raw`, and `virial.raw` are frame-wise text arrays.
- `type.raw` gives the species index for each atom.
- `type_map.raw` maps those indices to chemical symbols.
- `set.000/` contains the equivalent NumPy arrays used by DeepMD-kit.

Do not edit one representation without regenerating the other with dpdata or DeepMD-kit tools.
