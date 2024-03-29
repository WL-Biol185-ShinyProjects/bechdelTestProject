
# adding packages
library(tidyverse)
library(ggplot2)
library(shiny)
library(tibble)

# download data
movies <- read_csv("https://raw.githubusercontent.com/fivethirtyeight/data/master/bechdel/movies.csv", na = "#N/A") 

# data clean-up
moviesclean <- movies
moviesclean$title <- gsub("&amp;", "&", moviesclean$title)
moviesclean$title <- gsub( "&#39;", "'", moviesclean$title)



#removing IMDB
moviesclean$imdb <- NULL


#removing 22
moviesclean$title <- gsub("22", "21", moviesclean$title)

#remove test column
moviesclean$test <- NULL

#decade clarify
moviescleanest <- mutate(moviesclean, 'decade code' = paste(as.character(floor(moviesclean$year/10) * 10), "s", sep = ""))


#fix accents
moviescleanest$title <- gsub("&uuml;" , "u", moviesclean$title)
moviescleanest$title <- gsub("&agrave;" , "a" , moviesclean$title)
moviescleanest$title <- gsub("&aring;" , "a" , moviesclean$title)
moviescleanest$title <- gsub("&auml;" , "a" , moviesclean$title)



#get rid of code column
moviescleanest$code <- NULL


#rename binary
colnames(moviescleanest)[colnames(moviescleanest) == "binary"] <- "code"

#rename clean_test
colnames(moviescleanest)[colnames(moviescleanest) == "clean_test"] <- "reason"

#rename clean_test
colnames(moviescleanest)[colnames(moviescleanest) == "decade code"] <- "decade"

write.csv(moviescleanest, "moviescleanest.csv")

#making map dataset
totalMapData <- moviescleanest %>%
  select(2) %>%
  add_column(number = , .before = title)





  



