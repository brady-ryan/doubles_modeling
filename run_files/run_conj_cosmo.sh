#!/bin/bash
#
#SBATCH --job-name=cosmo
#SBATCH -p hbm-extended-96core
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=15:00:00

name="J1001+5027"

source activate env # activate conda env if necessary 

export OMP_NUM_THREADS=20
export MKL_NUM_THREADS=20
export NUMEXPR_NUM_THREADS=20

# define the input and output notebook paths
input_notebook="conjugate_cosmology.ipynb"
output_notebook="conjugate_point/${name}/cosmo_conjugate_${name}.ipynb"

# execute the notebook via papermill
papermill "$input_notebook" "$output_notebook" -f "yaml_files/cosmology/${name}.yaml"