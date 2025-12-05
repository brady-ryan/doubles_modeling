#!/bin/bash
#
#SBATCH --job-name=joint
#SBATCH -p hbm-extended-96core
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=24:00:00

name="J2325-5229"

source activate env # activate conda env if necessary 

export OMP_NUM_THREADS=20
export MKL_NUM_THREADS=20
export NUMEXPR_NUM_THREADS=20

# define the input and output notebook paths

input_notebook="conjugate_point.ipynb"

output_notebook="conjugate_point/${name}/${name}_conjugate_point.ipynb"

# execute the notebook via papermill
papermill "$input_notebook" "$output_notebook" -f "yaml_files/joint_modeling/${name}.yaml"