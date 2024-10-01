#!/bin/bash

#SBATCH -p fct
#SBATCH --ntasks-per-node=1
#SBATCH --nodes=1

module load python/3.10.13
echo "Hello World from bash script!"
python3 hello.py
