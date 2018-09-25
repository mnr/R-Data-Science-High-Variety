# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# CRAN has lots of google support packages.
# This video only discusses import/export to google sheets

install.packages("googlesheets")
library(googlesheets)

sheetsIOwn <- gs_ls() # this will initiate a browser auth session

nameOfGoogleSheet <- "HighVarietyData_LinkedIn_Learning"

# create and write a sheet to your google drive ----
sampleGoogleSheet <- gs_new(nameOfGoogleSheet)

# sample data
simpleDF <- data.frame(This = c(1:5), That = c(letters[1:5]), another = c(LETTERS[1:5]))


gs_edit_cells(sampleGoogleSheet, input = simpleDF, anchor = "b3", verbose = TRUE)

# read that data back into R ----
readingThisGoogleSheet <- gs_title(nameOfGoogleSheet) # can't read the gsheet until you identify it

dataFromGS <- gs_read(readingThisGoogleSheet)

