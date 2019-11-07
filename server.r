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



      ggplot(moviescleanest, aes(year, input$budget)) + geom_point()
      
      # Reason for failure check boxes
      output$value <- renderPrint({ input$checkFail })
      
=======
    moviescleanest %>%
      filter(
        budget ==
        "Low Budget", "High Budget" 
        ) %>%
      ggplot(aes(year, budget)) + geom_point()
>>>>>>> 838ca711bbb6bbef16ab8518446593a1d39e0549


  })
  

  

  
  
  output$hoveredMovieInfo <- renderText({
    
    input$hovertitle
    brushedPoints(moviescleanest, xvar = "budget", yvar = NULL, input$hovertitle, allRows = FALSE)
  })

  
  }

  
  
  
  
  
