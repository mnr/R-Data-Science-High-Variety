# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# Lots of packages to export graphics to PDF
# This is concerned with importing data from PDF

# pdftools (2018-05-27)
# Rpoppler (2017-04-18)
# depends on poppler C library. See https://poppler.freedesktop.org

install.packages("pdftools")
library(pdftools)

samplePDF <- "sample files/multiplesheetsPDF.pdf"

pdf_info(samplePDF)

pdf_data(samplePDF) # requires poppler >= 0.63

textFromPDF <- pdf_text(samplePDF)

