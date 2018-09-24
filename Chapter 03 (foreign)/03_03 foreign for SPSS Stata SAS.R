# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# use foreign to import and export spss stata and sas

install.packages("foreign")
library(foreign)

# SPSS ----
# read from spss 
# must be a ".sav". ".spv" won't work
readFromSPSS <- read.spss("sample files/spssSample.sav", to.data.frame = TRUE)
# write to spss 
write.foreign(readFromSPSS, 
              datafile = "dataToSPSS.csv", 
              codefile = "codeToSPSS.sps",
              package = "SPSS")


# stata ----
# get a sample stat file
stataSampleFile <- "sample files/statasample.dta"

download.file("https://stats.idre.ucla.edu/stat/stata/examples/kirk/co3.dta",
              destfile = stataSampleFile)

# read from stata 
dtaReadSample <- read.dta(stataSampleFile)

# write to Stata 
write.foreign(dtaReadSample, 
              datafile = "stataData.dat",
              codefile = "stataCode",
              package = "Stata")

# read from SAS ----
read.ssd() # requires SAS. If no copy of SAS, use a utility to convert to csv
# write to SAS ----
write.foreign(dtaReadSample, 
              datafile = "sasData.sas",
              codefile = "sasCode",
              package = "SAS")
