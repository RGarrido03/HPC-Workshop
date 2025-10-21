#!/bin/bash

#SBATCH -p hpc
#SBATCH --ntasks=4

module load udocker/1.3.17

# Run on coordination server
# module load udocker/1.3.17
# udocker pull python:3.13-slim
# udocker create --name=python-test python:3.13-slim

udocker run -v ~/udocker-test:/app python-test python3 /app/udocker.py
