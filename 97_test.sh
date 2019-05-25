#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 1:00:00
#SBATCH -J htseq_count_erik_olby
#SBATCH --mail-type=ALL
#SBATCH --mail-user erik.olby@gmail.com

# Load modules
module load bioinfo-tools
module load htseq

htseq-count --format='bam' --order='name' --stranded='yes' --type='exon' --idattr='gene_id' --samout='htseq_output' /home/erol7379/genome_analysis/analyses/07_new_files_prot_assem/tophat_sorted/accepted_hits_sorted_2019-05-24_tophat_out_SRR6156069_scaffold_10.1.bam /home/erol7379/genome_analysis/analyses/07_new_files_prot_assem/ref_genome_annotation_altered.gtf > htseq_out69.txt
