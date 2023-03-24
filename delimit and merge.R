rm(list = ls())

library(tidyr)

#RBP datasets were imported separatley from https://rbp2go.dkfz.de/

#import the data table into R. The first 6 lines were skipped since it is un necessary
HS_RBP_raw <-  read.table("Table_HS_RBP.txt", skip = 6, header = T)

#selecting the columns
HS_RBP1 <- HS_RBP_raw[,c(1,12)]
HS_RBP2 <- HS_RBP_raw[,c(1,11)]

#Spliting the strings and insert as new rows based on the delimiter - " "
HS_RBP3 <- HS_RBP1 %>% 
  mutate(Alias_Names = strsplit(as.character(Alias_Names)," ")) %>% 
  unnest(Alias_Names)

#Spliting the strings and insert as new rows based on the delimiter - "/"
HS_RBP3 <- HS_RBP3 %>% 
  mutate(Alias_Names = strsplit(as.character(Alias_Names),"/")) %>% 
  unnest(Alias_Names)

#remove the unwanted character throughout entire column
HS_RBP3$Alias_Names<-gsub(";","",as.character(HS_RBP3$Alias_Names))

#rename the column name
colnames(HS_RBP3)[colnames(HS_RBP3) == "Alias_Names"] <- "gene"
colnames(HS_RBP2)[colnames(HS_RBP2) == "Gene_Name"] <- "gene"

#merging the rows one below the another
HS_RBP4 <- rbind(HS_RBP2,HS_RBP3)

#Removing the duplicates throughout both columns
HS_RBP4 <- unique(HS_RBP4)

#Remove the column which doesnt have any values
HS_RBP4 <- HS_RBP4[-which(HS_RBP4$gene == ""), ]

colnames(HS_RBP4)

# add an extra column throughout the datasets
HS_RBP4$newcol = "putative"

# saving in the separate folder DEqMS
write.table(HS_RBP4,"DEqMS/HS_RBP4.xls",sep = "\t",row.names = F,quote=F)
