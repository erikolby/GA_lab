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
module load jellyfish/2.2.6

# Commands
for file in /home/erol7379/genome_analysis/analyses/04_tophat_transcript_mapping/outputfiles_sorted/*	
do 
	output=$(basename $file)
	Trinity --genome_guided_bam $file --genome_guided_max_intron 10000 --max_memory 20G --CPU 4 --output /home/erol7379/genome_analysis/analyses/04_tophat_transcript_mapping/trinity_outfiles
done
