library(shiny)
library(ggplot2)
library(dplyr)

  # Define server logic required to draw a histogram
  function(input, output) {
  
  output$lowBudgetPlot <- renderPlot({

 # Application title
    titlePanel("Bechdel Test Data")
    

    # draw the graphs
    moviescleanest %>%
      filter(
        budget >= input$lowBudget[1] &
          budget <= input$lowBudget[2] &
          reason == input$dist &
          decade == input$dec
      )  %>%
       ggplot(aes(year, budget)) + geom_point() + xlim(1970, 2013)
    })

  output$highBudgetPlot <- renderPlot({
    
    # Application title
    titlePanel("Bechdel Test Data")
    
    # draw the graphs
    moviescleanest %>%
    filter(
      budget >= input$highBudget[1] &
        budget <= input$highBudget[2] &
        reason == input$dist &
        decade == input$dec
    ) %>%
      ggplot(aes(year, budget)) + geom_point() + xlim(1970, 2013)
    
  })
  
  output$domGrossPlot <- renderPlot({
    
    # Application title
    titlePanel("Bechdel Test Data")
    
    # draw the graphs
    moviescleanest %>%
      filter(
        budget >= input$domGrosst[1] &
          budget <= input$domGross[2] &
          reason == input$dist &
          decade == input$dec
      ) %>%
    ggplot(aes(year, domgross)) + geom_point() + xlim(1970, 2013)
    
  })
  
  output$intGrossPlot <- renderPlot({
    
    # Application title
    titlePanel("Bechdel Test Data")
    
    # draw the graphs
    moviescleanest %>%
      filter(
        budget >= input$intGrosst[1] &
          budget <= input$intGross[2] &
          reason == input$dist &
          decade == input$dec
      ) %>%
    ggplot(aes(year, intgross)) + geom_point() + xlim(1970, 2013)
    
  })
  
  output$allPlot <- renderPlot({
  
    moviescleanest %>%
      ggplot(aes(year, budget)) + geom_point() + xlim(1970, 2013)
    
  })
    
  } 

 
  