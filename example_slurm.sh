#!/bin/bash
#SBATCH -N 1  # number of nodes
#SBATCH --workdir=/home/amji/example-mnist-itu/  # working directory
#SBATCH --gres=gpu:1  # use GPU
#SBATCH --time=01:00:00  # time limit
#SBATCH --mem=10G  # memory per node
#SBATCH -- partition=red, brown

#SBATCH -o example_mnist.2.%N.%J.%u.out # output file
#SBATCH -e example_mnist.2_.%N.%J.%u.err # error file

echo "Running on $(hostname):" # showing which node it is running on

module load Anaconda3/2021.05 # loading anaconda

# sourcing our .bashrc
source /home/amji/.bashrc # change here your username

#activating the virtual environment
conda activate nn_env

# run script
python -u main.py
