#!/bin/bash
#SBATCH --partition=submit-gpu1080
#SBATCH --nodes=1
#SBATCH --job-name=lfi-demo
#SBATCH --output=%x.out
#SBATCH --error=%x.err
#SBATCH --time=10:00
#SBATCH --mem=10G
#SBATCH --ntasks-per-node=4
#SBATCH --gres=gpu:4
#SBATCH --cpus-per-gpu=2

CONTAINER_PATH="/data/submit/deep1018/iap-tutorial.sif"

time srun singularity run --bind="${CWD}" --nv "${CONTAINER_PATH}" python main.py
