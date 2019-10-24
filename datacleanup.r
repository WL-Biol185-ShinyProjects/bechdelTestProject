# add packages
library(tidyverse)
library(shiny)
library(ggplot2)


# download data
movies <- read_csv("https://raw.githubusercontent.com/fivethirtyeight/data/master/bechdel/movies.csv")

# data clean-up
moviesclean <- movies
moviesclean$title <- gsub("&amp;", "&", moviesclean$title)
moviesclean$title <- gsub( "&#39", "'", moviesclean$title)

#pushing to you

#deleting IMDB Columns
