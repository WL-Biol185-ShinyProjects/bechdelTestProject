library(shiny)
library(tidyverse)
library(ggplot2)


# Define UI for application that draws a histogram
  shinyUI(fluidPage(

  
  
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
                  step = 2500),
        
        sliderInput("domgross",
                    "Domestic Gross:",
                    800,
                    500000000,
                    value = c(100000000, 200000000),
                    step = 2500),
        
        sliderInput("intgross",
                    "International Gross:",
                    800,
                    500000000,
                    value = c(100000000, 200000000),
                    step = 2500)
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
        plotOutput("distPlot", hover = hoverOpts(id = "hovertitle")) , 
          textOutput("hoveredMovieInfo"),
      
    
        
        
        # create group of checkboxes
        checkboxGroupInput("checkFail", label = h3("Reason for Failure"), 
                           choices = list("No Named Women Characters" = 1, "Women Characters Don't Talk" = 2, "Women Characters Only Talk About Men" = 3),
                           selected = 1),
        
        
        hr(),
        fluidRow(column(3, verbatimTextOutput("value")))
        
        
        
  )
  )
    
    
      
  )

  )

