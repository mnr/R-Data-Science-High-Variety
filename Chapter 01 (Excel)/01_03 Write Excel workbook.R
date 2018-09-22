# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# how to create an entire Excel workbook, including multiple sheets

# be sure to set working directory
# setwd("Exercise Files/Chapter 01")

# two data.frames to be written to excel file
data("CO2", "ChickWeight")

# Rio for simplicity ------------------------------------------------------

# install.packages("rio")
# library(rio)

export(list(CO2, ChickWeight ), file = "rioExport.xlsx", overwrite = TRUE)

# or, use writexl ----------------------------------------------------------

# writexl migh be previously installed by rio, but just in case
# install.packages("writexl")
# library(writexl)

write_xlsx(list(CO2, ChickWeight ), path = "wxlsxExport.xlsx")


# openxlsx only writes xlsx files, but lots of options ------------------------------------------

# install.packages("openxlsx")
# library(openxlsx)

# note sheetname allows naming of sheets in workbook. Lots of other options - see documentation
write.xlsx(list(CO2, ChickWeight ), 
           file = "openxlExport.xlsx",
           sheetName = c("CO2","ChickWeight"))
