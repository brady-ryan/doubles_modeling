![Alt text](tdcosmo.png)

# Gravitational Lens Modeling of HST Observed Doubly Imaged Quasars

This repository stores the HST data, code, and notebooks for the TDCOSMO doubly imaged quasars project. 

The script ```run_notebook.sh``` can be submitted as a slurm script to model the systems on the SEAWULF supercomputing cluster using either ```uvis_model.ipynb``` or ```ir_model.ipynb```. By default, it allocates for 20 cores of an Intel Xeon E5-2683v3 CPU and a run-time of 4 hours. For cosmological analysis, ```run_cosmo.sh``` submits a job to run ```cosmology.ipynb```, which calculates the Fermat potential and time delay differences with the posteriors generated from the modeling routine. The jobs make use of ```papermill``` to execute the Jupyter notebooks via terminal.

All modeling notebooks and resultant data can be found in the respective directories of ```cutout_data```. Useful analysis notebooks can be found in ```analysis```. These include:

1) Producing the science image cutouts
2) Generating a PSF with STARRED
3) Making a PSF variance map with psfr
4) Plotting the models, PSO chains, and MCMC chains
5) Making LaTeX tables from the data
6) Producing a source light plot
7) Creating a clean posterior plot

Please contact Ryan Brady [ryan.m.brady@stonybrook.edu] for any questions, comments, or suggestions!