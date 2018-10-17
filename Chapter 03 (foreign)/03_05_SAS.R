# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# use foreign to import and export sas

install.packages("foreign")
library(foreign)

# read from SAS ----
read.ssd() # requires SAS. If no copy of SAS, use a utility to convert to csv
# write to SAS ----
write.foreign(dtaReadSample, 
              datafile = "sasData.sas",
              codefile = "sasCode",
              package = "SAS")
