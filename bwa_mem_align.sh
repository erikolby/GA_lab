#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 4:00:00
#SBATCH -J genome_bwa_alignment_erik_olby
#SBATCH --mail-type=ALL
#SBATCH --mail-user erik.olby@gmail.com

# Load modules
module load bioinfo-tools
module load bwa/0.7.17


# Commands
bwa mem /home/erol7379/genome_analysis/analyses/scratch/genome_assembly.contigs.fasta /home/erol7379/genome_analysis/data/raw_data/Illumina/SRR6058604_scaffold_10.1P.fastq.gz /home/erol7379/genome_analysis/data/raw_data/Illumina/SRR6058604_scaffold_10.2P.fastq.gz > /home/erol7379/genome_analysis/analyses/scratch/bwa_alignment.sam
