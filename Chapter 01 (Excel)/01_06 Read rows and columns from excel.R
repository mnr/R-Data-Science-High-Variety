# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# how to read rows and columns from an excel spreadsheet

spreadSheetRangeFile <- "Sample Files/simple_spreadsheet.xlsx"

# be sure to set working directory
# setwd("Exercise Files/Chapter 01")

# rio ---------------------------------------
# rio doesn't support ranges, although you can pass arguments through ...


# readxl ----------------------------------------------------------

install.packages("readxl")
library(readxl)

# you might think this would work. 
read_excel(spreadSheetRangeFile, range = "D:D")
# But...Error: Can't guess format of this cell reference:
# no way to tell read_excel to read an entire column

# however, you can read a range
read_excel(spreadSheetRangeFile, range = "D1:D30")


# reading an entire row
read_excel(spreadSheetRangeFile, range = "3:3")
# this doesn't work.

# For rows, do this
read_excel(spreadSheetRangeFile, skip = 3, n_max = 1)


# openxlsx ------------------------------------------

# install.packages("openxlsx")
# library(openxlsx)

# for columns...
read.xlsx(spreadSheetRangeFile, cols = c(4))

# for rows...
read.xlsx(spreadSheetRangeFile, rows = c(3))
