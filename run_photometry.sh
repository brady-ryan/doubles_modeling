#!/bin/bash
#
#SBATCH --job-name=photometry
#SBATCH -p long-40core-shared
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=24:00:00

name="J0806+2006"

source activate env # activate conda env if necessary 

export OMP_NUM_THREADS=20
export MKL_NUM_THREADS=20
export NUMEXPR_NUM_THREADS=20

# define the input and output notebook paths
input_notebook="multi_band_photometry.ipynb"
output_notebook="joint_modeling/${name}/${name}_photometry.ipynb"

# execute the notebook via papermill
papermill "$input_notebook" "$output_notebook" -p system_name $name
