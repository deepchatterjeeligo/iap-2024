# Tutorial for IAP subMIT workshop 2024

This repository demonstrastes linear regression using likelihood-free inference using [Pytorch-Lightning](https://lightning.ai/) and [Pyro](https://pyro.ai/).

- A jupyter notebook is provided that walks through the bayesian inference on the slope and intercept of a line by deriving the exact answer of the posterior, followed by re-doing the analysis using stochastic sampling, and eventually using a normalizing flow.
- A slides walkthrough is also provided at the root of the repo.
- Additionally, scripts are provided for training the normalizing flow, along with slurm submit files to perform distributed training.

A runtime environment is available on subMIT jupyterhub. If you want to run locally, you can create a `conda` environment locally using the `environment.yaml` file.
```
    $ conda env create -f environment.yaml
```

You can run the scripts either using the conda environment above on a machine with NVIDIA GPUs, or build the singularity container as,
```
    $ singularity build iap-tutorial.sif ./iap-tutorial.def
```
Singularity caches can take up disk space in your ${HOME}, hence run `export APPTAINER_CACHEDIR=/data/submit/${USER}/.apptainer_cache` before building. After building using the `singularity run --nv` entrypoint for scripts.
