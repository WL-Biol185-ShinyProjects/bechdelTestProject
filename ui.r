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
                       "Talk Only About Men" = "reason$men")),
        
        br()
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
      

        
       
      
        tabsetPanel(type = "tabs", 
                    tabPanel("Low Budget", plotOutput("lowBudgetPlot"),
                             sliderInput("budgetGroupBy",
                                         "Low Budget:",
                                         7000,
                                         212000000,
                                         value = c(11000000, 170000000),
                                         step = 2500)),
                    tabPanel("High Budget", plotOutput("highBudgetPlot"),
                             sliderInput("budget",
                                         "High Budget:",
                                         212000001,
                                         425000000,
                                         value = c(312000000, 412000000),
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

