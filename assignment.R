# IMPORTING LIBRARIES 
library(rvest)
library(dplyr)

#SCRAPIN WEBSITE
link <- "https://www.imdb.com/india/top-rated-tamil-movies/"

#HTML ELEMENTS FROM WEBSITE
web <-read_html(link)

#SEGREGATING NAMES
name <-web %>% html_nodes(".titleColumn a") %>% html_text()

#VIEWING NAME LIST
View(name)

#SEGARETING YEARS
year <- web %>% html_nodes(".secondaryInfo") %>% html_text()

#VIEW YEAR LIST
View(year)

#SEGREGATING RATINGS
ratings <- web %>% html_nodes("strong") %>% html_text()

#VIEW RARING LIST
View(ratings)

# CREATING DATAFRAME
imdb.ratings <- data.frame(name,year,ratings)

# VIEW DATAFRAME
View(imdb.ratings)

# SAVINIG DATA
write.csv(imdb.ratings, "my movie data.csv")

