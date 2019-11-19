library(shiny)
library(ggplot2)
library(dplyr)

  # Define server logic required to draw a histogram
  function(input, output) {
  
  output$lowBudgetPlot <- renderPlot({

 # Application title
    titlePanel("Bechdel Test Data")
    
    #Radio Buttons
    dist <- switch(input$dist,
                   "No Women Characters" = "reason$no women",
                   "No Women Talking" = "reason$notalk",
                   "Talk Only About Men" = "reason$men",
                   "Passed Bechdel Test" = "reason$ok", 
                   "reason$no women")
    
    # draw the graphs
    moviescleanest %>%
      filter(
          budget >= input$lowBudget[1] &
          budget <= input$lowBudget[2]
            ) %>%
          ggplot(aes(year, budget)) + geom_point() + xlim(1970, 2013)
    })

  output$highBudgetPlot <- renderPlot({
    
    # Application title
    titlePanel("Bechdel Test Data")
    
    # draw the graphs
    moviescleanest %>%
      filter(
        budget >= input$highBudget[1] &
        budget <= input$highBudget[2] 
      ) %>%
      ggplot(aes(year, budget)) + geom_point() + xlim(1970, 2013)
    
  })
  
  output$domGrossPlot <- renderPlot({
    
    # Application title
    titlePanel("Bechdel Test Data")
    
    # draw the graphs
    moviescleanest %>%
      filter(
        domgross >= input$domGross[1] &
          domgross <= input$domGross[2]
            ) %>%
    ggplot(aes(year, domgross)) + geom_point() + xlim(1970, 2013)
    
  })
  
  output$intGrossPlot <- renderPlot({
    
    # Application title
    titlePanel("Bechdel Test Data")
    
    # draw the graphs
    moviescleanest %>%
      filter(
        intgross >= input$intGross[1] &
        intgross <= input$intGross[2]
           ) %>%
    ggplot(aes(year, intgross)) + geom_point() + xlim(1970, 2013)
    
  })
  } 

 
  