#!/bin/bash
#
#SBATCH --job-name=joint
#SBATCH -p hbm-extended-96core
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=48:00:00

name="J1620+1203"
add_source="True" # if True, include a source model in fitting

source activate doubles # activate conda env if necessary 

export OMP_NUM_THREADS=20
export MKL_NUM_THREADS=20
export NUMEXPR_NUM_THREADS=20

# define the input and output notebook paths
if [ ${name} == 'J1001+5027' ]; then
    input_notebook="joint_model_j1001.ipynb"
elif [ ${name} == 'J0602-4335' ]; then
    input_notebook="joint_model_j0602.ipynb"
elif [ ${name} == 'J1515+1511' ]; then
    input_notebook="joint_model_j1515.ipynb"
else
    input_notebook="joint_model.ipynb"
fi

if [ ${add_source} == "False" ]; then
    output_notebook="no_source/${name}/${name}_joint_model.ipynb"
else
    output_notebook="joint_modeling/${name}/${name}_joint_model.ipynb"
fi

# execute the notebook via papermill
papermill "$input_notebook" "$output_notebook" -f "yaml_files/joint_modeling/${name}.yaml" -p add_source ${add_source}