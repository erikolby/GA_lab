#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 00:30:00
#SBATCH -J genome_pilon_correction_erik_olby
#SBATCH --mail-type=ALL
#SBATCH --mail-user erik.olby@gmail.com

# Load modules
module load bioinfo-tools
module load Pilon/1.22


# Commands
pilon --genome /home/erol7379/genome_analysis/analyses/01_pac_bio_assembly_outfiles/genome_assembly.contigs.fasta --bam /home/erol7379/genome_analysis/analyses/02_assembly_correction_pilon/bwa_alignment.sorted.bam --diploid --threads 4 --output /home/erol7379/genome_analysis/analyses/02_assembly_correction_pilon/pilon_output  