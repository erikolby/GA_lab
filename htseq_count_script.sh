#!/bin/sh
for file in /home/erol7379/genome_analysis/analyses/07_new_files_prot_assem/tophat_sorted/used_files/*
output=$(basename $file)
htseq-count -f bam -r pos -i ID -o /home/erol7379/genome_analysis/analyses/07_new_files_prot_assem/htseq_count_output/test_$output.sam $file /home/erol7379/genome_analysis/analyses/07_new_files_prot_assem/ref_genome_annotated.gff3
done

