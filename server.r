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
      filter(

          budget >= input$lowBudget[1] &
          budget <= input$lowBudget[2]

      ) %>%
<<<<<<< HEAD
     ggplot(aes(year, budget)) + geom_point()
=======
      ggplot(aes(year, budget)) + geom_point()
    
>>>>>>> ef7b1f08a483405416ec5510e779c4481d25d003

    
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
      ggplot(aes(year, budget)) + geom_point()
    
    
    
  })
  




  output$domGrossPlot <- renderPlot({
    
    # Application title
    titlePanel("Bechdel Test Data")
    
    
    # draw the graphs
<<<<<<< HEAD
    ggplot(moviescleanest, aes(year, moviescleanest$domgross)) + geom_point()
=======
  
>>>>>>> ef7b1f08a483405416ec5510e779c4481d25d003
    
    
    
  })
  
  output$intGrossPlot <- renderPlot({
    
    # Application title
    titlePanel("Bechdel Test Data")
    
    
    # draw the graphs
    ggplot(moviescleanest, aes(year, moviescleanest$intgross)) + geom_point() + xlim(1970, 2013)
    
    
    
  })
 
 } 
  
  

  
  
  
  
  
