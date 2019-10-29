# adding packages
library(tidyverse)
library(ggplot2)
library(shiny)

# download data
movies <- read_csv("https://raw.githubusercontent.com/fivethirtyeight/data/master/bechdel/movies.csv")

# data clean-up
moviesclean <- movies
moviesclean$title <- gsub("&amp;", "&", moviesclean$title)
moviesclean$title <- gsub( "&#39;", "'", moviesclean$title)

#pushing to you

#removing IMDB
moviesclean$imdb <- NULL

#removing 22
moviesclean$title <- gsub("22", "21", moviesclean$title)


#remove test column
moviesclean$test <- NULL

#decade clarify
moviesclean$`decade code` <-gsub("2", "2000's", moviesclean$`decade code`)
moviesclean$`decade code` <-gsub("1", "2010's", moviesclean$`decade code`)
moviesclean$`decade code` <-gsub("3", "1990's", moviesclean$`decade code`)