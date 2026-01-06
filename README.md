![Alt text](tdcosmo.png)

# Gravitational Lens Modeling of HST Observed Doubly Imaged Quasars

This repository stores the HST cutout data, code, and notebooks for the TDCOSMO doubly imaged quasar analysis. This repository is organized as follows:

1) ```run_files:``` Contains the .sh slurm submission scripts used to run the Jupyter notebooks. The script ```run_joint.sh``` runs the three band joint fit via ```joint_model.ipynb```. ```run_shapelet.sh``` and ```add_shapelets.ipynb``` handle the addition of a SHAPELETS component to the source model, which is utilized in the fit of J2325-5229. ```run_photometry.sh``` and ```multi_band_photometry.ipynb``` handle photometric calculations and posterior sampling. For cosmological analysis, ```run_cosmo.sh``` submits a job to run ```cosmology.ipynb```, which calculates the Fermat potential and time delay differences with the posteriors generated from the modeling routine. ```run_conjugate.sh``` and ```run_conj_cosmo.sh``` submit jobs for the conjugate point analysis. The jobs make use of ```papermill``` to execute the Jupyter notebooks.
2) ```yaml_files:``` Contains the input papermill .yaml files utilized in the joint modeling and cosmology analysis.
3) ```joint_modeling:``` Stores the outputs for the FULL IMAGE JOINT MODELING, including the fitting notebook, photometry notebook, and cosmology notebook.
4) ```conjugate_point:``` This directory stores the outputs for the CONJUGATE POINT MODELING.
5) ```no_source:``` Stores the model results for full image modeling without the inclusion of a source profile.
6) ```cutout_data:``` Old files that modeled the systems via single band fits. Not utlized for the paper draft.
7) Useful analysis notebooks can be found in ```analysis```. These include:

    1) Producing the science image cutouts from the drizzled HST data
    2) Generating a PSF with STARRED
    3) Making a PSF variance map with psfr
    4) Making LaTeX tables from the data
    5) Creating a posterior comparison plot for full image vs. conjugate point

<it>NOTE: Please ensure that Git large file storage (lfs) is installed in your repo to retrieve the joint modeling pickle files!</it>

Please contact Ryan Brady [ryan.m.brady@stonybrook.edu] for any questions, comments, or suggestions!