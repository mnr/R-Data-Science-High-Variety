# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 


#CRAN has packages for df2json, geojson, others

install.packages("jsonlite") # general purpose JSON parser
library(jsonlite)

# import JSON ----
jsonImport <- read_json("sample files/JSONdata.json") # produces a list

jsonImport <- read_json("sample files/JSONdata.json", simplifyVector = TRUE) # produces a dataframe

dfFromJson <- jsonImport$speakers

# export dataframe to JSON ----
simpleDF <- data.frame(This = c(1:5), That = c(letters[1:5]), another = c(LETTERS[1:5]))

write_json(simpleDF, "jsonIWrote") # writes out as observations
