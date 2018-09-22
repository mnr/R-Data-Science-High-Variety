# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# how to read a single cell from an excel spreadsheet

spreadSheetRangeFile <- "Sample Files/simple_spreadsheet.xlsx"

# be sure to set working directory
# setwd("Exercise Files/Chapter 01")

# rio ---------------------------------------
# rio doesn't support ranges, although you can pass arguments through ...


# readxl ----------------------------------------------------------

# install.packages("readxl")
# library(readxl)

# turn off column names
oneCell <- read_excel(spreadSheetRangeFile, range = "b24", col_names = FALSE)

# openxlsx ------------------------------------------

# install.packages("openxlsx")
# library(openxlsx)

oneCell <- read.xlsx(spreadSheetRangeFile, rows = 24, cols = 2, colNames = FALSE)

