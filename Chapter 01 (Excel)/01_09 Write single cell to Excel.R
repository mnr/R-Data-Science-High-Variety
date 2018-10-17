# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# how to write a single cell to an Excel spreadsheet

# writexl and rio only allow for writing entire sheets

# be sure to set working directory
# setwd("Exercise Files/Chapter 01")

# openxlsx ------------------------------------------

# install.packages("openxlsx")
# library(openxlsx)

workingXLSX <- createWorkbook( creator = "MNR",
                               title = "Thermal Psychodynamics",
                               subject = "Diffusion Lasers",
                               category = "Science Fiction")

addWorksheet(workingXLSX, "nuclear widgets")

# create a formula
writeFormula(workingXLSX, x = c("SUM(a1:a3)"),
          sheet = "nuclear widgets",
          startCol = 1, startRow = 4)

saveWorkbook(workingXLSX, "writeformula.xlsx", overwrite = TRUE)
