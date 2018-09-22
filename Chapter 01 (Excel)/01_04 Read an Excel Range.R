# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# how to read a range from an excel spreadsheet

spreadSheetRangeFile <- "Sample Files/ranges.xlsx"

# be sure to set working directory
# setwd("Exercise Files")

# rio ---------------------------------------
# rio doesn't support ranges, although you can pass arguments through ...


# readxl ----------------------------------------------------------

# install.packages("readxl")
# library(readxl)

# two things: 1) Returns a tibble, and 2) first row is labels
rangeReturned <- read_excel(spreadSheetRangeFile, 
           sheet = "Simple",
           range = "d12:e15")

# simpler range specification and turn off column names as labels
read_excel("Sample Files/ranges.xlsx",
           range = "Simple!d12:e15",
           col_names = FALSE)

# openxlsx ------------------------------------------

# install.packages("openxlsx")
# library(openxlsx)

# openxlsx supports named ranges
# returns data frame. First row in spreadsheet is labels

rangeReturned <- read.xlsx(spreadSheetRangeFile, namedRegion = "initial_project_cost")

