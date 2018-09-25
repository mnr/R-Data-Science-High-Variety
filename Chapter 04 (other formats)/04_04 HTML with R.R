# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: R Programming in Data Science: High Variety Data 


# using HTML with R
# There are lots of packages to write reports to HTML
# This video is focused on reading data stored as HTML
# ... also known as data scraping

# suggest looking at htmltidy, scrapR, and others at CRAN

install.packages("xml2")
library(xml2)

NASA_NEO <- "https://ssd.jpl.nasa.gov/sbdb_query.cgi?obj_group=neo;obj_numbered=all;OBJ_field=0;ORB_field=0;table_format=HTML;max_rows=10;format_option=comp;c_fields=AcBhBgBjBlBkBmBiBnBsAiBtBbCi;c_sort=;.cgifields=format_option;.cgifields=obj_kind;.cgifields=obj_group;.cgifields=obj_numbered;.cgifields=ast_orbit_class;.cgifields=table_format;.cgifields=com_orbit_class;query=1"

fromHTML <- read_html(NASA_NEO)

# Now it looks like XML - maybe, depending on the construction of the HTML document
xml_children(fromHTML)

# check out the video on reading and writing XML
