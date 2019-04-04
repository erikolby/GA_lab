#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 19:00:00
#SBATCH -J genome_assembly_erik_olby
#SBATCH --mail-type=ALL
#SBATCH --mail-user erik.olby@gmail.com

# Load modules
module load bioinfo-tools
module load canu/1.7


# Commands
canu -p genome_assembly -d /home/erol7379/genome_analysis/analyses/01_pac_bio_assembly_outfiles genomeSize=36M -pacbio-raw /home/erol7379/genome_analysis/data/raw_data/pac_bio/pac_bio_scaffold_10.fq.gz
