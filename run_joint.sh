#!/bin/bash
#
#SBATCH --job-name=joint
#SBATCH -p extended-40core
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=07:00:00

name="J1620+1203"

source activate env # activate conda env if necessary 

export OMP_NUM_THREADS=20
export MKL_NUM_THREADS=20
export NUMEXPR_NUM_THREADS=20

# define the input and output notebook paths
input_notebook="joint_model.ipynb"
output_notebook="joint_modeling/${name}/${name}_joint_model.ipynb"

# execute the notebook via papermill
papermill "$input_notebook" "$output_notebook" -f "yaml_files/F160W/${name}.yaml"