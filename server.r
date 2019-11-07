library(shiny)
library(ggplot2)



  # Define server logic required to draw a histogram

  function(input, output) {

  

  output$distPlot <- renderPlot({
    


    # Application title
    titlePanel("Bechdel Test Data")
    




    # draw the histogram  
    

    moviescleanest %>%
      ggplot(aes(year, budget)) + geom_point()
    
  

    # draw the histogram   
<<<<<<< HEAD
      ggplot(moviescleanest, aes(year,budget)) + geom_point()


=======
      ggplot(moviescleanest, aes(year, input$budget)) + geom_point()
      
      # Reason for failure check boxes
      output$value <- renderPrint({ input$checkFail })
      
>>>>>>> a99bd72e8af7675ab0f1dac20ea6369bf25c9e6f


  })
  

  

  
  
  output$hoveredMovieInfo <- renderText({
    
    input$hovertitle
    brushedPoints(moviescleanest, xvar = "budget", yvar = NULL, input$hovertitle, allRows = FALSE)
  })

  
  }

  
  
  
  
  
