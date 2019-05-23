#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J tophat_transcriptome_erik_olby
#SBATCH --mail-type=ALL
#SBATCH --mail-user erik.olby@gmail.com

# Load modules
module load bioinfo-tools
module load samtools 
module load bowtie2
module load tophat


# Commands
for file in /home/erol7379/genome_analysis/data/raw_data/transcriptome/trimmed/*_10.1.fastq.gz
do 
	file2="$(sed 's/_10\.1/_10.2/' <<<$file)"
	output=$(basename $file)
	tophat -o /home/erol7379/genome_analysis/analyses/07_new_files_prot_assem/outputfiles_tophat/tophat_out_${output%.fastq.gz} \
	-p 4 /home/erol7379/genome_analysis/analyses/home/erol7379/genome_analysis/analyses/07_new_files_prot_assem/scaffold_10_ncbi_index $file $file2
done
