![Alt text](tdcosmo.png)

# Gravitational Lens Modeling of HST Observed Doubly Imaged Quasars

This repository stores the HST data, code, and notebooks for the TDCOSMO doubly imaged quasars project. 

The script ```run_joint.sh``` can be submitted as a slurm script to model the systems jointly on the SEAWULF supercomputing cluster using ```joint_model.ipynb```. By default, it allocates for 20 cores of an Intel Xeon E5-2683v3 CPU and a run-time of 4 hours. ```run_photometry.sh``` and ```multi_band_photometry.ipynb``` handle photometric calculations and posterior sampling. For cosmological analysis, ```run_cosmo.sh``` submits a job to run ```cosmology.ipynb```, which calculates the Fermat potential and time delay differences with the posteriors generated from the modeling routine. The jobs make use of ```papermill``` to execute the Jupyter notebooks via terminal.


<it>NOTE: Please ensure that Git large file storage (lfs) is installed in your repo to retrieve the joint modeling pickle files!</it>

Useful analysis notebooks can be found in ```analysis```. These include:

1) Producing the science image cutouts
2) Generating a PSF with STARRED
3) Making a PSF variance map with psfr
4) Plotting the models, PSO chains, and MCMC chains
5) Making LaTeX tables from the data
6) Producing a source light plot
7) Creating a clean posterior plot

Please contact Ryan Brady [ryan.m.brady@stonybrook.edu] for any questions, comments, or suggestions!