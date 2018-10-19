# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# use foreign to import and export sas

install.packages("foreign")
library(foreign)

# Some data to write to an excel range
Smalldf <- data.frame(thisThing = 1:5, 
                                 thatThing = 7:11,
                                 AnotThing = LETTERS[1:5])


# read from SAS ----
read.ssd() # requires SAS. If no copy of SAS, use a utility to convert to csv
# additionally, look at the haven package for read_sas( ).

# write to SAS ----
write.foreign(Smalldf, 
              datafile = "sasData.csv",
              codefile = "sasCode.sas",
              package = "SAS")
