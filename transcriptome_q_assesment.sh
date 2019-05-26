#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 1:00:00
#SBATCH -J transcriptome_assembly_quality_erik_olby
#SBATCH --mail-type=ALL
#SBATCH --mail-user erik.olby@gmail.com

# Load modules
module load bioinfo-tools
module load transrate

transrate --assembly /home/erol7379/genome_analysis/analyses/02_assembly_correction_pilon/pilon_output.fasta \
--left /home/erol7379/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6040092_scaffold_10.1.fastq.gz \
--right /home/erol7379/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6040092_scaffold_10.2.fastq.gz \
--threads 2