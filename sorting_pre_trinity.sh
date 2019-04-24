#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 07:00:00
#SBATCH -J transcrpit_assembly_trinity_erik_olby
#SBATCH --mail-type=ALL
#SBATCH --mail-user erik.olby@gmail.com

# Load modules
module load bioinfo-tools
module load trinity/2.8.2
module load samtools


# Commands
for file in /home/erol7379/genome_analysis/analyses/04_tophat_transcript_mapping/outputfiles/*
do
	output=$(basename $file)
	samtools sort $file/accepted_hits.bam -o /home/erol7379/genome_analysis/analyses/04_tophat_transcript_mapping/outputfiles_sorted/accepted_hits_sorted_$output.bam
done
