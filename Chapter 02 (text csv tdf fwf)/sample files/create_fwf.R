# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# create a fixed width file

install.packages("gdata")
library(gdata)

tempTable <- read.table("LPO_weather.tdf", skip = 1)
write.fwf(tempTable, file = "weather.fwf")
