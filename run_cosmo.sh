#!/bin/bash
#
#SBATCH --job-name=cosmo
#SBATCH -p short-40core
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=04:00:00

filter="F814W"
name="J2325-5229"

source activate env # activate conda env if necessary 

export OMP_NUM_THREADS=20
export MKL_NUM_THREADS=20
export NUMEXPR_NUM_THREADS=20

# define the input and output notebook paths
input_notebook="cosmology.ipynb"
output_notebook="cutout_data/${name}/${filter}/cosmo_${name}.ipynb"

# execute the notebook via papermill
papermill "$input_notebook" "$output_notebook" -f "yaml_files/cosmology/${name}.yaml"