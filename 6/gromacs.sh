#!/bin/bash

#SBATCH -p hpc
#SBATCH --ntasks=4

module load gcc11/gromacs/2023
mpirun -np $SLURM_NTASKS gmx_mpi mdrun -ntomp 1 -maxh .05 -s md.tpr
