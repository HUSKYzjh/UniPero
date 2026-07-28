# Remote-execution templates

- `machine.json` configures dpdispatcher/Lebesgue execution resources and the ABACUS container.
- `job.json` defines the LAMMPS container job.

Copy these files to a run directory, populate the project/account fields using a local secure mechanism, and verify the image and machine type at the target site.  Do not commit credentials or project secrets.
