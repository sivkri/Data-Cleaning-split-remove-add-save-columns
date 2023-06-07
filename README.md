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

# RBP Data Processing

This repository contains R code for processing RNA-binding protein (RBP) datasets obtained from https://rbp2go.dkfz.de/. The code imports the data table, performs data cleaning and transformation, and saves the processed dataset in a separate folder.

## Prerequisites

Before running the code, make sure you have the following:

- R environment
- Required packages:
  - tidyr

## Getting Started

Follow the instructions below to get started with the code:

1. Clone this repository to your local machine or download the files as a ZIP archive.
2. Make sure you have R installed on your machine.
3. Install the required packages by running the following command in your R console:

```R
install.packages("tidyr")
```

4. Place the `Table_HS_RBP.txt` file, obtained from https://rbp2go.dkfz.de/, in the same directory as the R script.

## Usage

To process the RBP datasets, follow these steps:

1. Open the R script (`process_rbp_data.R`) in your preferred R development environment.
2. Run the script. It will perform the following operations:

   - Clear the workspace by removing all objects.
   - Load the `tidyr` package.
   - Import the `Table_HS_RBP.txt` data table into R, skipping the first 6 lines.
   - Select specific columns from the dataset.
   - Split strings and insert them as new rows based on specific delimiters.
   - Remove unwanted characters from the `Alias_Names` column.
   - Rename column names.
   - Merge rows from two datasets.
   - Remove duplicate rows.
   - Remove rows with empty values in the `gene` column.
   - Add an extra column, `newcol`, throughout the dataset.
   - Save the processed dataset as `HS_RBP4.xls` in the `DEqMS` folder.

## Folder Structure

The repository has the following structure:

```
├── DEqMS/
│   └── HS_RBP4.xls
├── process_rbp_data.R
└── Table_HS_RBP.txt
```

- The `DEqMS` folder will be created automatically, and the processed dataset (`HS_RBP4.xls`) will be saved inside it.
- The `process_rbp_data.R` script contains the code for processing the RBP datasets.
- The `Table_HS_RBP.txt` file should be placed in the same directory as the R script.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

The RBP datasets used in this project were obtained from https://rbp2go.dkfz.de/. Special thanks to their team for providing the data.

If you have any questions or encounter any issues, please feel free to open an issue in this repository.

