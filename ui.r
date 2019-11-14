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
        
        radioButtons("dist", "Reason for Failure:", 
                     c("No Women Characters" = "reason$no women",
                       "No Women Talking" = "reason$notalk",
                       "Talk Only About Men" = "reason$men",
                       "Passed Bechdel Test" = "reason$ok")),
        
        br()
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
  
        
       
      
        tabsetPanel(type = "tabs", 
                    tabPanel("Low Budget", plotOutput("lowBudgetPlot"),
                             sliderInput("lowBudget",
                                         "Low Budget:",
                                         7000,
                                         100000000,
                                         value = c(11000000, 900000000),
                                         step = 2500)),
                    tabPanel("High Budget", plotOutput("highBudgetPlot"),
                             sliderInput("highBudget",
                                         "High Budget:",
                                         100000001,
                                         425000000,
                                         value = c(115000000, 242000000),
                                         step = 2500)),
                    tabPanel("Domestic Gross", plotOutput("domGrossPlot"),
                             sliderInput("domgross",
                                         "Domestic Gross:",
                                         800,
                                         500000000,
                                         value = c(100000000, 200000000),
                                         step = 2500)),
                    tabPanel("International Gross", plotOutput("intGrossPlot"),
                             sliderInput("intgross",
                                         "International Gross:",
                                         800,
                                         500000000,
                                         value = c(100000000, 200000000),
                                         step = 2500))
    
      
        
      )
        
                         )
    )
    
    
      
    )

  )

