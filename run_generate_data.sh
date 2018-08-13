#!/usr/bin/env bash
# Input python command to be submitted as a job

#SBATCH --output=generate_data-%j.out
#SBATCH --job-name generate_data
#SBATCH -p cmhn-s18
#SBATCH -A cmhn-s18
#SBATCH -t 30
#SBATCH -m=4G
#SBATCH -n 1

# Set up the environment
module load Langs/Python/3.5-anaconda
module load Pypkgs/brainiak/0.7.1-anaconda
module load Pypkgs/NILEARN/0.4.0-anaconda
module load MPI/OpenMPI

# Run the python script
python generate_data.py
