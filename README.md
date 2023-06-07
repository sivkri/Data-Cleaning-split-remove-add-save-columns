# Data Cleaning - Split, remove, add, save columns

1.RBP datasets were imported separatley from https://rbp2go.dkfz.de/

2.Import the data table into R. The first 6 lines were skipped since it is un necessary

3.Selecting the columns

4.Spliting the strings and insert as new rows based on the delimiter - " "

5.Spliting the strings and insert as new rows based on the delimiter - "/"

6.Remove the unwanted character throughout entire column

7.Rename the column name

8.Merging the rows one below the another

9.Removing the duplicates throughout both columns

10.Remove the column which doesnt have any values

11.Add an extra column throughout the datasets

12.Saving in the separate folder DEqMS

This code performs data manipulation and cleaning tasks on the RBP (RNA-binding protein) datasets. It imports a dataset from the file "Table_HS_RBP.txt" and performs various operations to clean and restructure the data. The resulting dataset is then saved as "HS_RBP4.xls" in a folder named "DEqMS."

Prerequisites
To run this code, you need the following:

R programming language
tidyr package
Make sure you have R and the tidyr package installed before running the code.

Instructions
Remove all existing objects from the environment by executing rm(list = ls()).
Load the required tidyr library by executing library(tidyr).
Place the RBP dataset file "Table_HS_RBP.txt" in the same directory as this code file.
Execute the code line by line or as a whole.
Code Explanation
Data Import
The code imports the RBP dataset from the file "Table_HS_RBP.txt" while skipping the first 6 lines that are unnecessary. The imported dataset is stored as HS_RBP_raw.

Column Selection
Two columns, namely the first column and the 12th column of HS_RBP_raw, are selected and stored as HS_RBP1. Similarly, the first column and the 11th column of HS_RBP_raw are selected and stored as HS_RBP2.

Data Restructuring
The Alias_Names column in HS_RBP1 is split into multiple rows based on the delimiter " " (space). This is done using the strsplit and unnest functions from the tidyr package. The resulting dataset is stored as HS_RBP3.

The Alias_Names column in HS_RBP3 is further split into multiple rows based on the delimiter "/" (slash). Again, the strsplit and unnest functions are used, and the updated dataset is stored as HS_RBP3.

Data Cleaning
Unwanted characters (specifically, ";") in the Alias_Names column of HS_RBP3 are removed using the gsub function. The cleaned dataset is then assigned back to HS_RBP3.

Column Renaming
The column name "Alias_Names" in HS_RBP3 is renamed to "gene" using the colnames function. Similarly, the column name "Gene_Name" in HS_RBP2 is renamed to "gene".

Data Merging
The rows from HS_RBP2 and HS_RBP3 are merged and stored as HS_RBP4 using the rbind function.

Data Deduplication
Duplicate rows in HS_RBP4 are removed using the unique function.

Data Filtering
Rows in HS_RBP4 where the "gene" column is empty are removed.

Column Addition
An additional column named "newcol" is added to HS_RBP4, and all its values are set to "putative".

Data Export
The final dataset HS_RBP4 is saved as an Excel file named "HS_RBP4.xls" in a folder named "DEqMS." The file is saved using the write.table function, with tab-separated values and no row names.

Conclusion
This code allows you to clean and restructure the RBP dataset, removing duplicates and unwanted characters, and save the cleaned dataset for further analysis.


