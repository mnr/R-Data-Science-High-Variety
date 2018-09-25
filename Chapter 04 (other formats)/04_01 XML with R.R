# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 

# several XML files - but use xml2. It's not orphaned and has a complete set of features
install.packages("xml2")
library(xml2)

# grabbing an xml file from the internet
download_xml("https://data.nasa.gov/api/views/b67r-rgxc/rows.xml",
             file = "sample files/nasaData.xml")

# xml2 comes with sample files
xmlSampleFile <- xml2_example("cd_catalog.xml")

# Import XML into R ---
xmlInR <- read_xml(xmlSampleFile)

xml_structure(xmlInR) # shows structure without content

xml_find_all(xmlInR, ".//ARTIST")

# Export XML from R ---

listForXML <- list(foodMenu = list(
                        pizzaInventory = list("Vegan"), 
                        fruit = list("Banana")
                        )
                   )

menuXML <- as_xml_document(listForXML)

write_xml(menuXML, "myMenu.xml")
