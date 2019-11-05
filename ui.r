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
      
    ),
     
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
)