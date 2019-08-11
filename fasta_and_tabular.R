
######################### Tabular format to Fasta format###############################

#this is a function to convert tabular fasta into plain fasta file
#first column should be squence names
#second column should be sequence 

TabularToFasta <- function (filename){
  file <- read.csv (file=filename, header=TRUE)
  
  file = as.data.frame(file)
  #delete if any existing file 
  
  unlink(c("dna_fasta.fasta"), force=TRUE)
  
  #give output filename
  
  sink("dna_fasta.fasta")
  
  for (i in 1:nrow(file)){
    name = paste0(">",file[i,1])
    sequence = paste(file[i,2])
   cat(name,sep="\n")
   cat(sequence,sep="\n")
  }
  
#this is sink all the console output to the file 
  sink()
  
}

#usage 
#TabularToFasta("gene.csv")


#################################################################################
#################################################################################

#######################Fasta to Tabular format##################################

FastaToTabular <- function (filename){
  
#read fasta file
  
    file1 <- readLines(filename)
    
#find the genename location by grepping >
    
  location <- which((str_sub(file1,1,1))==">")

#start an empty vector to collect name and sequence 

name=c()
sequence =c()



#number of genes= number of loops
#extract name first
for ( i in 1:length(location)){
  name_line = location[i]
  name1 = file1[name_line]
  name=c(name,name1)
#extract sequence between the names
#the last sequence will be missed using this strategy 
#so, we are using if condition to extract last sequence 
  start= location[i]+1
  end = location[i+1]-1
  if ( i < length (location)){
  
  end=end

  } else {
   
    end=length(file1)
  }
  
  lines = start:end
  sequence1= as.character(paste(file1[lines],collapse = ""))
  sequence =c(sequence,sequence1)
}

#now create table using name and sequence vector 

data <- tibble(name,sequence)



#finally export the file 
#before that remove preexisting file
unlink(c("dna_table.fasta"),force=TRUE)
write.csv(data,"dna_table.csv")

#function ends
}

#usage
#FastaToTabular("dna_fasta.fasta")
