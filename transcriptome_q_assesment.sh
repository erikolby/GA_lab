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

transrate --assembly /home/erol7379/genome_analysis/analyses/04_tophat_transcript_mapping/trinity_outfiles/Trinity-GG.fasta \
--threads 2 \
--output /home/erol7379/genome_analysis/analyses/04_tophat_transcript_mapping/trinity_outfiles/quality_assesment