library(shiny)
library(tidyverse)
library(ggplot2)


# Define UI for application that draws a histogram
    fluidPage( 
  
 # Application title
    titlePanel("Bechdel Test Data"),
  
  # navBar page
   navbarPage(
    theme = shinytheme("darkly"),
    "", 
    inverse = TRUE,
    header = tags$style(type = 'text/css', '.navbar {background-color: #969090;
                                                      font-family: Arial;
                                                      font-size: 18px;
                                                      color: #f9f9f9; }'),
  
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
<<<<<<< HEAD
        plotOutput("distPlot", hover = hoverOpts(id = "hovertitle")) , 
          textOutput("hoveredMovieInfo"),
      
    
        
        
        # create group of checkboxes
        checkboxGroupInput("checkFail", label = h3("Reason for Failure"), 
                           choices = list("No Named Women Characters" = 1, "Women Characters Don't Talk" = 2, "Women Characters Only Talk About Men" = 3),
                           selected = 1),
        
        
        hr(),
        fluidRow(column(3, verbatimTextOutput("value")))
=======
  
>>>>>>> fc7b41be8d9d2a8de572e50c42f7f1744e181dd8
        
       
      
        tabsetPanel(type = "tabs", 
                    tabPanel("Low Budget", plotOutput("distPlot"),
                             sliderInput("budget",
                                         "Low Budget:",
                                         7000,
                                         212000000,
                                         value = c(11000000, 170000000),
                                         step = 2500)),
                    tabPanel("High Budget", plotOutput("distPlot"),
                             sliderInput("budget",
                                         "High Budget:",
                                         212000001,
                                         425000000,
                                         value = c(312000000, 412000000),
                                         step = 2500)),
                    tabPanel("Domestic Gross", plotOutput("distPlot"),
                             sliderInput("domgross",
                                         "Domestic Gross:",
                                         800,
                                         500000000,
                                         value = c(100000000, 200000000),
                                         step = 2500)),
                    tabPanel("International Gross", plotOutput("distPlot"),
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

