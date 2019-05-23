#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 20:00:00
#SBATCH -J maker_annotation_augustus_erik_olby
#SBATCH --mail-type=ALL
#SBATCH --mail-user erik.olby@gmail.com

# Load modules
module load bioinfo-tools
module load maker

cd /home/erol7379/genome_analysis/analyses/06_annotation/new_maker_runs/scaffold_10_ncbi.maker.output

optimize_augustus.pl --species=arabidopsis augustus.gbk.train --AUGUSTUS_CONFIG_PATH=/home/erol7379/genome_analysis/analyses/06_annotation/new_maker_runs/scaffold_10_ncbi.maker.output/config/