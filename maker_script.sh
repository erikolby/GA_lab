#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 15:00:00
#SBATCH -J maker_annotation_erik_olby
#SBATCH --mail-type=ALL
#SBATCH --mail-user erik.olby@gmail.com

# Load modules
module load bioinfo-tools
module load maker/3.01.1-beta

cd /home/erol7379/genome_analysis/analyses/06_annotation/maker_runs

# Undrar: Får error nu att den inte gittar min my_genome.hmm fil som ligger i maker_runs/pilon_blabla/, men den ligger där, och allt annat verkar fungera?

maker 

