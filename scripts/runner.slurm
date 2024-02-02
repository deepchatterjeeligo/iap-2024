#!/bin/bash
#SBATCH --reservation=workshop1080_batch
#SBATCH --nodes=1
#SBATCH --job-name=lfi-demo
#SBATCH --output=%x.out
#SBATCH --error=%x.err
#SBATCH --time=10:00
#SBATCH --mem=10G
#SBATCH --ntasks-per-node=3
#SBATCH --gres=gpu:3

CONTAINER_PATH="/work/submit/submit-software/singularity/submit-workshop-jan-24/image/"

time srun singularity run --bind="${SLURM_SUBMIT_DIR}" --nv "${CONTAINER_PATH}" python main.py
