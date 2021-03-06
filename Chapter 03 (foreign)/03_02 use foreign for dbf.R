# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# use foreign to import and export dbf

library(foreign)

# read from DBF ----
sampleDBF <- "sample files/eva.dbf"

foreignDBF <- read.dbf(sampleDBF)
foreignDBF <- read.dbf(sampleDBF, as.is = TRUE)

# works pretty well... but what about related dbt file?

# presentation note: linux xxd is a good command to show this structure
# dbt contains memos. Binary file divided into blocks of 512 bytes. 
# each contains text, then is padded with null
# data starts at byte 512, so first block is ???
# can't be read as a text file or fwf.
# must be read as raw, then broken up into 512 matrix
sampleDBT <- "sample files/eva.dbt"

memosDBT <- read_file_raw(sampleDBT) # read in the raw data
memo2matrix <- matrix(memosDBT, nrow = 512) # chunk the data into 512 byte blocks
matrixToAlpha <- apply(memo2matrix,2,intToUtf8) # convert each bin chunk to text
foreignDBF$comments <- matrixToAlpha[as.integer(foreignDBF$PURPOSE_) + 1] # glue it back into the original dbf file
foreignDBF$PURPOSE_ <- NULL # remove intermediate data column

# write to DBF ------------
write.dbf(foreignDBF, "writeToDBF")
