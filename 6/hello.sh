#!/bin/bash

#SBATCH -p hpc
#SBATCH --ntasks=4

module load python/3.11
echo "Hello World from bash script!"
python3 hello.py
