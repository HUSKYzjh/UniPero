# UniPero

UniPero is a reproducible workflow and data package for training, validating, and applying a Deep Potential (DeepMD-kit) model to multicomponent perovskite systems.  It bundles the trained inference model, training configuration, fitting/validation helpers, molecular-dynamics workflows, and the input resources required by ABACUS and LAMMPS.

## Repository map

| Path | Role |
| --- | --- |
| `model/` | Distributed inference model.  `graph.pb` is the uncompressed DeepMD frozen graph. |
| `compressed.pb` | Latest compressed inference graph release, provided at the repository root. |
| `data/Task-I/` | Model evaluation against prepared DeepMD data sets. |
| `data/Task-II/` | LAMMPS sampling followed by ABACUS single-point calculations and DP testing. |
| `data/fitting/` | Model-wide energy/force validation and composition-stratified analyses. |
| `data/phase-transition/` | Temperature-dependent phase-transition simulations and post-processing. |
| `input_files/` | Reference DeepMD and ABACUS input templates. |
| `json/` | dpdispatcher/Lebesgue job and machine templates. |
| `prepare.sh` | Copies the model and job templates into the workflow directories and unpacks the fitting database. |

## Prerequisites

Run these workflows in a Linux/HPC environment with Bash, Python 3, LAMMPS, DeepMD-kit, dpdata, dpdispatcher, ABACUS, and (for remote submission) the `lbg` command-line client.  The job templates target DeepMD-kit 2.1.5 and ABACUS 3.2.3 containers; adapt scheduler, image, and account settings before submitting.

## Quick start

1. Inspect and adapt `json/machine.json` and `json/job.json`; fill in the site/account fields rather than committing credentials.
2. Place the current frozen graph in `model/graph.pb`.
3. From the repository root, run `bash prepare.sh`.  This distributes the model and templates and expands `database.zip` for fitting validation.
4. Select one workflow README under `data/` and run its commands from the documented working directory.
5. Keep generated trajectories, logs, and large intermediate data out of version control unless they are an intentional release artifact.

## Model artifacts

`model/graph.pb` is the checked-in baseline frozen graph.  `compressed.pb` at the repository root is the latest compressed inference artifact.  The uncompressed graph is preserved because compression is an inference optimization, not a retraining step.  Validate a compressed graph with `dp test` using a compatible DeepMD-kit release before deployment.

## Reproducibility and data conventions

DeepMD raw data use `box.raw`, `coord.raw`, `energy.raw`, `force.raw`, `virial.raw`, `type.raw`, and `type_map.raw`; NumPy sets are kept under `set.000/`.  Script outputs such as `*.e.out`, `*.f.out`, `EN`, `MAE`, and `Force-all` are derived analysis products.  Read the README located beside a script before running it: several legacy scripts reorganize files in-place.
