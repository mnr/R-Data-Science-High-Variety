# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# importing TDF files

sampleTDF <- "sample files/LPO_weather.tdf"

# simple
readTableTDF <- read.table(sampleTDF)
# problems...
#      first row read as data, not columns
#      columns not read as proper types

baseRT_TDF <- read.table(sampleTDF, header = TRUE)

# but - date and time are factors, not date time.

# install.packages("readr") # from the tidyverse
library(readr)

readrRT_TDF <- read_table(sampleTDF) # nope. read_table looks for white space x 2+
readrRT_TDF <- read_table2(sampleTDF) # read_table2 does a better job of parsing white space
readrRT_TDF <- read_table2(sampleTDF, col_types = "Dtnnnnnnn") # Date column fails because it is non-standard date format

# so date "2012_01_01" is still a problem

# an option to fix
readrRT_TDF <- read_table2(sampleTDF)
readrRT_TDF$date <- as.Date(readrRT_TDF$date, format = "%Y_%m_%d" )
