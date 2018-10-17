# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# CRAN has lots of google support packages.
# This video only discusses import/export to google sheets

# sample data
simpleDF <- data.frame(This = c(1:5), That = c(letters[1:5]), another = c(LETTERS[1:5]))

# install the googlesheets package if  you haven't already
install.packages("googlesheets")
library(googlesheets)

nameOfGoogleSheet <- "HighVarietyData_LinkedIn_Learning" # an existing google sheet

# write data to an existing google sheet ----
workingGS <- gs_title(nameOfGoogleSheet) # this will initiate a browser auth session

gs_edit_cells(workingGS, input = simpleDF, anchor = "b3")

# read that data back into R ----
dataFromGS <- gs_read(workingGS)

# other useful GoogleSheet commands ----
sheetsIOwn <- gs_ls() # list of sheets you have access to
# create and write a sheet to your google drive ----
sampleGoogleSheet <- gs_new(nameOfGoogleSheet)
