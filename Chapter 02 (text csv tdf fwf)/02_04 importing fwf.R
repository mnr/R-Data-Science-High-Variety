# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# importing fixed width files

sampleFWF <- "sample files/weather.fwf"
fwfFieldPositions <- c(11,9,4,5,5,5,6,3,6)

# trick with fixed width is setting up widths
# point #1 - if it has heading, that determines columns
# this file has 9 headers

resultFWF <- read.fwf(sampleFWF, 
                      skip = 1,
                      widths = fwfFieldPositions)

# read_fwf might not require field positions. Here's one option. There are others

result_fwf <- read_fwf(sampleFWF, 
                       col_positions = fwf_empty(sampleFWF, skip = 1), 
                       skip = 1)


