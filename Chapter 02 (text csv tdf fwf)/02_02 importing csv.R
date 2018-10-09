# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# importing CSV files

sampleCSV <- "sample files/Extra-vehicular_Activity__EVA__-_US_and_Russia.csv"

# install.packages("readr") # from the tidyverse
library(readr)

# note the difference between these two versions. readr is more intelligent about columns

baseCSV <- read.csv(sampleCSV) # from base R {utils}

readrCSV <- read_csv(sampleCSV) # from readr

# note that the Date column has odd dates, "March 16-17, 1966"