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
      ggplot(moviescleanest, aes(year, input$budget)) + geom_point()
      
    # Reason for failure check boxes
      output$value <- renderPrint({ input$checkFail })
      

    moviescleanest %>%
      filter(
        budget ==
        "Low Budget", "High Budget" 
        ) %>%
      ggplot(aes(year, budget)) + geom_point()


      ggplot(moviescleanest, aes(year, input$budget)) + geom_point()
      
      
    # Reason for failure check boxes
      output$value <- renderPrint({ input$checkFail })



  })
  
  output$hoveredMovieInfo <- renderText({
    
    input$hovertitle
    brushedPoints(moviescleanest, xvar = "budget", yvar = NULL, input$hovertitle, allRows = FALSE)
  })

  
  }

  
  
  
  
  
