# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# lots of packages for image manipulation.
# this video focuses on import and export

# heads up - {grDevices} are for OUTPUT...not import

# packages for png, jpeg, BMP
# TIFF support: tiff, ijtiff, rtiff (depends on libtiff)
# readbitmap for windows. Ignores file extension, instead reads internal identifiers BMP, JPEG, PNG, TIFF
# also - cairo

# import ----
# either as a matrix (2d), an array (channels), or a raster object
install.packages("jpeg")
library(jpeg)

sampleJPEG <- "sample files/parrot.jpg"

parrotPicArray <- readJPEG(sampleJPEG)
parrotPicRaster <- readJPEG(sampleJPEG, native = TRUE)

plot(1:2, type = 'n')
rasterImage(parrotPicArray, 1, 1, 2, 2)

plot(1:2, type = 'n')
rasterImage(parrotPicRaster, 1, 1, 2, 2)


# export ----
writeJPEG(parrotPicArray[ , , 2], "parrotOneChannel.jpeg") # writes the green channel
