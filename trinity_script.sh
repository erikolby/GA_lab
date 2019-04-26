#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 6
#SBATCH -t 15:00:00
#SBATCH -J transcrpit_assembly_trinity_erik_olby
#SBATCH --mail-type=ALL
#SBATCH --mail-user erik.olby@gmail.com

# Load modules
module load bioinfo-tools
module load trinity


# Commands
for file in /home/erol7379/genome_analysis/analyses/04_tophat_transcript_mapping/outputfiles_sorted/*.bam	
do 
	output=$(basename $file)
	Trinity --genome_guided_bam $file --genome_guided_max_intron 10000 --max_memory 20G --CPU 6 --output /home/erol7379/genome_analysis/analyses/04_tophat_transcript_mapping/trinity_outfiles_${output%.bam}
done
