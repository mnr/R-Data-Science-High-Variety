# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# use foreign to import and export spss

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


