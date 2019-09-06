[![DOI](https://zenodo.org/badge/201711102.svg)](https://zenodo.org/badge/latestdoi/201711102)

# FastaTabular   

<a href="https://zenodo.org/badge/latestdoi/201711102"><img src="https://zenodo.org/badge/201711102.svg" alt="DOI"></a>

Conversion of Fasta format to Tabular format and vice versa 

### You can import functions present in this repository directly to R Studio
library (devtools)
library (tidyverse)
source_url(https://raw.githubusercontent.com/lrjoshi/FastaTabular/master/fasta_and_tabular.R)

After completing this, following functions should be available for use. 
Note: For tabular data, it should be in CSV format. First column should contain gene name and seceond column should contain sequence. Look at the gene.csv file in this repository for template. 

### To convert fasta format to the tabular format
FastaToTabular("dna_fasta.fasta")


### To convert tabular format to fasta format 
TabularToFasta("gene.csv")

If you get permission error while writing files, try to create a new directory and set that directory as working directory.


#### Dependency 
Tidyverse
