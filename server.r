library(shiny)
library(ggplot2)
library(dplyr)



  # Define server logic required to draw a histogram
  function(input, output, session) {
  

  output$lowBudgetPlot <- renderPlot({

    

 # Application title
    titlePanel("Bechdel Test Data")
    

    # draw the graphs
    moviescleanest %>%
      filter() %>%
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
    ggplot(moviescleanest, aes(year, moviescleanest$domgross)) + geom_point()
    
    
    
  })
  
  output$intGrossPlot <- renderPlot({
    
    # Application title
    titlePanel("Bechdel Test Data")
    
    
    # draw the graphs
    ggplot(moviescleanest, aes(year, moviescleanest$intgross)) + geom_point() + xlim(1970, 2013)
    
    
    
  })
 
 } 
  
  

  
  
  
  
  
