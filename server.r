library(shiny)
library(ggplot2)
library(dplyr)


  # Define server logic required to draw a histogram
  function(input, output, session) {
  

  output$lowBudgetPlot <- renderPlot({

    # Application title
      titlePanel("Bechdel Test Data")
    
    budgetBins <- list('Low Budget' =  7000:212000000, 'High Budget' =  212000001:425000000)

    # draw the graphs
    moviescleanest %>%
      filter(
<<<<<<< HEAD
        budget >= min(budgetBins[[input$budgetGroupBy]]) &
          budget <= max(budgetBins[[input$budgetGroupBy]])
=======
        budget >= min(budget[[input$budget]]) &
          budget <= max(budget[[input$budget]])
>>>>>>> ae26be1fa0931137f47533cfd8b816d37f751e59
      ) %>%
     ggplot(aes(year, budget)) + geom_point()
    

  
    })

  output$highBudgetPlot <- renderPlot({
    
    # Application title
    titlePanel("Bechdel Test Data")
    
    
    # draw the graphs
    ggplot(moviescleanest, aes(year, moviescleanest$budget)) + geom_point()
    
    
    
  })
  
  output$domGrossPlot <- renderPlot({
    
    # Application title
    titlePanel("Bechdel Test Data")
    
    
    # draw the graphs
    ggplot(moviescleanest, aes(year,  moviescleanest$domgross)) + geom_point()
    
    
    
  })
  
  output$intGrossPlot <- renderPlot({
    
    # Application title
    titlePanel("Bechdel Test Data")
    
    
    # draw the graphs
    ggplot(moviescleanest, aes(year,  moviescleanest$intgross)) + geom_point() + xlim(1970, 2013)
    
    
    
  })
 
  }
  
  

  
  
  
  
  
