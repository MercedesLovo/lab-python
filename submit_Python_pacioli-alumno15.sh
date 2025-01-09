#!/bin/bash
#SBATCH -J seq-pacioli-alumno15
#SBATCH --chdir=/home/alumno15
#SBATCH -p hpc-bio-pacioli
#SBATCH --cpus-per-task=2
#SBATCH --ntasks-per-node=1

echo "ejecutando con $i"
module load anaconda/2023.03
time ipython reduc-operation-alumno15.ipynb $1

module unload anaconda/2023.03
