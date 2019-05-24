#!/bin/bash
for file in /home/erol7379/genome_analysis/analyses/07_new_files_prot_assem/tophat_sorted/used_files/*
do
	output=$(basename $file)
	htseq-count -f bam -r pos -i ID $file /home/erol7379/genome_analysis/analyses/07_new_files_prot_assem/ref_genome_annotation_altered.gtf -o /home/erol7379/genome_analysis/analyses/07_new_files_prot_assem/htseq_count_output/htseq_count_$output.sam
done

