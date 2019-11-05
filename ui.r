library(shiny)
library(tidyverse)
library(ggplot2)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Bechdel Test Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      sliderInput("budget",
                  "Low Budget:",
                  7000,
                  212000000,
                  value = c(11000000, 170000000),
                  step = 2500),
      
      sliderInput("budget",
                  "High Budget:",
                  212000001,
                  425000000,
                  value = c(312000000, 412000000),
                  step = 2500)
    ),
     
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot", hover = hoverOpts(id = "hovertitle")) , 
        textOutput("hoveredMovieInfo")
        
    )
  )
)