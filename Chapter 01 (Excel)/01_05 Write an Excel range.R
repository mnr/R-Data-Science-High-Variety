# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# how to write a range to an Excel spreadsheet

# be sure to set working directory
# setwd("Exercise Files/Chapter 01")

# Some data to write to an excel range
SmallTableForRange <- data.frame(thisThing = 1:5, 
                                 thatThing = 7:11,
                                 AnotThing = LETTERS[1:5])


# openxlsx ------------------------------------------

# install.packages("openxlsx")
# library(openxlsx)

workingXLSX <- loadWorkbook( file = "Sample Files/multipleRanges.xlsx")

## how to write to a numeric region. region starts at H3
writeData(workingXLSX, x = SmallTableForRange,
          sheet = "Simple",
          startCol = 8, startRow = 3)
saveWorkbook(workingXLSX, "writeToRange.xlsx")

## how to write to a named region
workingXLSX <- loadWorkbook( file = "Sample Files/multipleRanges.xlsx")

# returns a vector with named regions and their attributes
wXLSXNamedRegions <- getNamedRegions(workingXLSX)

# find the position in the vector of the desired named region
hereIsNamedRegion <- match("initial_project_cost", wXLSXNamedRegions)

# get the positions of the ranges
positionsOfNamedRange <- attr(wXLSXNamedRegions, "position")

# get the position of the interesting range
rangeCorners <- positionsOfNamedRange[hereIsNamedRegion]

# get the column and row
m <- regexpr("^[a-zA-Z]+", rangeCorners)
ColStart <- regmatches(rangeCorners, m)

m <- regexpr("[0-9]+", rangeCorners)
RowStart <- regmatches(rangeCorners, m)


# get the sheet of the interesting range
useThisSheet <- attr(wXLSXNamedRegions, "sheet")
useThisSheet[hereIsNamedRegion]

# write to the range n the workbook in memory
writeData(workingXLSX, x = SmallTableForRange,
          sheet = useThisSheet[hereIsNamedRegion],
          startCol = ColStart, startRow = RowStart)

# save the workbook to disk
saveWorkbook(workingXLSX, "writeToNamedRange.xlsx")
