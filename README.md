# Example for HPC cluster @ ITU
This is a PyTorch implementation of a deep learning approach for digit recognition (classification) with MNIST dataset.

### 1. Setting up a virtual environment	with Anaconda
For loading "conda":
```bash
$ module load Anaconda3/2021.05
```

Then, for adding the configurations to your .bashrc file.
```bash
$ conda init bash
```

Then, you can build a virtual environment to install your packages as follows.
```bash
$ conda create -n nn_env pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch
```

### 2. Cloning the repository
```bash
$ git clone https://github.com/ameliajimenez/example-mnist-itu.git
$ cd example-mnist-itu/
```

Notice that you have to change the working directory with `--workdir` argument in example_slurm.sh file.

### 3. Launching the script
```bash
$ sbatch example_slurm.sh
```

### 4. Monitoring 
We can monitor the running tasks on the cluster by the following command:
```bash
$ squeue
```

or in a continuous way:
```bash
$ watch squeue
```

### Documentation
[ITU's HPC Documentation Project](http://hpc.itu.dk/software/anaconda/#the-example-on-how-to-use-conda-plus-installing-tensorflow-and-pytorch-on-a-virtual-environment)