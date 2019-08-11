# FastaTabular
Conversion of Fasta format to Tabular format and vice versa 

### You can import functions present in this repository directly to R Studio
library (devtools)

source_url(https://raw.githubusercontent.com/lrjoshi/FastaTabular/master/fasta_and_tabular.R)

After completing this, following functions should be available for use. 
Note: For tabular data, it should be in CSV format. First column should contain gene name and seceond column should contain sequence. Look at the gene.csv file in this repository for template. 

### To convert fasta format to the tabular format
FastaToTabular("dna_fasta.fasta")


### To convert tabular format to fasta format 
TabularToFasta("gene.csv")
