#!/bin/bash
#
#SBATCH --job-name=mcmc
#SBATCH -p long-40core
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=48:00:00

name="J1620+1203"
add_source="True" # if True, include a source model in fitting
n_additional_steps=5000

source activate env # activate conda env if necessary 

export OMP_NUM_THREADS=20
export MKL_NUM_THREADS=20
export NUMEXPR_NUM_THREADS=20

# define the input and output notebook paths
input_notebook="continue_mcmc.ipynb"
output_notebook="joint_modeling/${name}/${name}_continue_mcmc.ipynb"

papermill "$input_notebook" "$output_notebook" -f "yaml_files/joint_modeling/${name}.yaml" -p add_source ${add_source} -p n_additional_steps ${n_additional_steps}