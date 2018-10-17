# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# how to write rows and columns to an Excel spreadsheet

# writexl and rio only allow for writing entire sheets

# be sure to set working directory
# setwd("Exercise Files/Chapter 01")

# Some data to write to an excel range
SmallTableForRange <- data.frame(thisThing = 1:5, 
                                 thatThing = 7:11,
                                 AnotThing = LETTERS[1:5])


# openxlsx ------------------------------------------

# install.packages("openxlsx")
library(openxlsx)

workingXLSX <- createWorkbook( creator = "MNR",
                               title = "Thermal Psychodynamics",
                               subject = "Diffusion Lasers",
                               category = "Science Fiction")

addWorksheet(workingXLSX, "nuclear widgets")

writeData(workingXLSX, x = SmallTableForRange,
          sheet = "nuclear widgets",
          startCol = 1, startRow = 3)

saveWorkbook(workingXLSX, "writerowcol.xlsx", overwrite = TRUE)

