#!/bin/bash --login
#SBATCH --time=2:00:00
#SBATCH --nodes=1
#SBATCH --gpus-per-node=1
#SBATCH --cpus-per-gpu=4  
#SBATCH --mem=2GB
#SBATCH --partition=debug 
#SBATCH --job-name=launch-jupyter-server
#SBATCH --mail-type=ALL
#SBATCH --output=bin/%x-%j-slurm.out
#SBATCH --error=bin/%x-%j-slurm.err

# use srun to launch Jupyter server in order to reserve a port
srun --resv-ports=1 ./bin/launch-jupyter-server.srun
