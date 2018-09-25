# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 


# ODS from LibreOffice

# rlo for writing to libreoffice writer. Python bridge

install.packages("readODS")
library(readODS)

odsSampleFile <- "sample files/OpenOffice_multipleSheets.ods"

# read ODS
get_num_sheet_in_ods(odsSampleFile)
ods_sheets(odsSampleFile)
dfFromODS <- read_ods(odsSampleFile)

# write ODS
simpleDF <- data.frame(This = c(1:5), That = c(letters[1:5]), another = c(LETTERS[1:5]))

# Windows Problem: write_ods won't work if you don't have Rtools installed
# Works fine on Macintosh and Linux with Rtools

write_ods(simpleDF, "ODS_from_a_DF.ods")
