#!/bin/bash
#SBATCH --mem-per-cpu=16G
#SBATCH --time=3-0
#SBATCH --mail-user=<EMAIL>
#SBATCH --mail-type=ALL
module load StdEnv/2023 gcc/12.3 gsl/2.7 r/4.4.0
Rscript test.R 
