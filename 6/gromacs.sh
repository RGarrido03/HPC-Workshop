#!/bin/bash

#SBATCH -p hpc
#SBATCH --ntasks-per-node=1
#SBATCH --nodes=1

module load gcc11/gromacs/2023
mpirun -np $SLURM_NTASKS gmx_mpi mdrun -ntomp 1 -maxh .05 -s md.tpr
