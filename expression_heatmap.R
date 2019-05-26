library( "DESeq2" )
rm(list=ls())
graphics.off()

leaf_sample <- read.delim("/Users/erikolby/Documents/Genome_analysis/GA_lab/htseq_out92.txt", header=FALSE)
root_sample <- read.delim("/Users/erikolby/Documents/Genome_analysis/GA_lab/htseq_out93.txt", header=FALSE)
stem_sample <- read.delim("/Users/erikolby/Documents/Genome_analysis/GA_lab/htseq_out96.txt", header=FALSE)
aril_sample <- read.delim("/Users/erikolby/Documents/Genome_analysis/GA_lab/htseq_out97.txt", header=FALSE)

count_data = merge(leaf_sample,root_sample, by="V1")
count_data = merge(count_data,stem_sample, by="V1")
count_data = merge(count_data,aril_sample, by="V1")

count_data <- count_data[-c(1,2,3,4,5),]
rownames(count_data) <- count_data$V1
count_data <- count_data[,-1]
colnames(count_data) <- c("leaf","root","stem","aril")

col_data <- data.frame("type"=c("non-fruit","non-fruit","non-fruit","fruits"))
rownames(col_data) <- c("leaf","root","stem","aril")

ddsFullCountTable <- DESeqDataSetFromMatrix(
  countData = count_data,
  colData = col_data,
  design = ~ type)

dds <- DESeq(ddsFullCountTable)

# Rlog-transform

rld <- rlog(dds)

library(gplots)
library( "genefilter" )
topVarGenes <- head( order( rowVars( assay(rld) ), decreasing=TRUE ), 30 )
heatmap.2( assay(rld)[ topVarGenes, ], scale="row",
           trace="none", dendrogram="column", margins = c(7,20),
           col = colorRampPalette( rev(brewer.pal(9, "RdBu")) )(255))

# PCA
#plotPCA(rld,intgroup=c("type"))

res <- results(dds)
resOrdered <- res[order(res$padj),]  #order by padj(adjusted p-value), small padj indicates large difference
resOrdered=as.data.frame(resOrdered)
resOrdered=na.omit(resOrdered)  #delete NA values
