# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# how to import an entire Excel workbook, including all sheets

# be sure to set working directory
# setwd("Exercise Files")

# get a list of pathnames to files in Sample Files
allSampleFiles <- list.files("Sample Excel Files", full.names = TRUE)
multipleSheetFile <- "Sample Excel Files/multipleSheets.xlsx"


# Rio for simplicity ------------------------------------------------------

# install the Rio package - easy import
install.packages("rio")
library(rio)

# Import one file with Rio
import(allSampleFiles[1])

# import multiple sheets as a list
multisheetimport <- import_list(multipleSheetFile)
# ...or... as a data.frame
multisheetimport <- import_list(multipleSheetFile, rbind = TRUE)


# import all files with Rio
lotsaData <- import_list(allSampleFiles, rbind = TRUE)


# or, use readxl ----------------------------------------------------------

# readxl is previously installed by rio, but just in case
# install.packages("readxl")
# library(readxl)

read_excel(allSampleFiles[1])

# read all sheets in file
excel_sheets(multipleSheetFile)

lapply(excel_sheets(multipleSheetFile), read_excel, path = multipleSheetFile)

# openxlsx only reads xlsx files ------------------------------------------

# install.packages("openxlsx")
# library(openxlsx)
read.xlsx(allSampleFiles[1])

# read all sheets in file
lapply(getSheetNames(multipleSheetFile), read.xlsx, xlsxFile = multipleSheetFile)


# oops...xls file...
read.xlsx(list.files("Sample Files/", full.names = TRUE, pattern = "*.xls$"))

# tidyxl reads data in tidy format
install.packages("tidyxl")
library(tidyxl)

tidyxlimport <- xlsx_cells(multipleSheetFile)
