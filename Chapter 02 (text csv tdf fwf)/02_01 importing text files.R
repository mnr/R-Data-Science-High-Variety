# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# importing standard text files

sampleTXT <- "A_Midsummer_Nights_Dream.txt"

# install.packages("readr") # from the tidyverse
library(readr)

# note the difference between read.etc and read_etc. 
# read.etc is base R
# read_etc is tidyverse

tvText <- read_file(sampleTXT) # one big stream

rtText <- read.table(sampleTXT) # error - lines not same length

rlbText <- readLines(sampleTXT) # base R

rlTVText <- read_lines(sampleTXT) # from readr. Vector, each element is one line from file

# read a line, analyze a line
fileConn <- file(sampleTXT, "r")
while( TRUE ){
  oneLine <- readLines(fileConn, n = 1)
  if ( length(oneLine) > 0 ) {
    print(toupper(oneLine))
  }
}


