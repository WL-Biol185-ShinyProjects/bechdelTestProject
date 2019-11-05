library(shiny)
library(ggplot2)


  # Define server logic required to draw a histogram
  function(input, output) {
  

  output$distPlot <- renderPlot({

    # Application title
    titlePanel("Bechdel Test Data")
    
<<<<<<< HEAD
    
    # draw the histogram   
    moviescleanest %>%
=======

    # draw the histogram   
    moviescleanest %>%
      filter(
        budget ==
        "Low Budget", "High Budget" 
        ) %>%
>>>>>>> 85f32bbd8c0a5ae946bbe8f33bc3e93afbc5da4a
      ggplot(aes(year, budget)) + geom_point()


  })
  
  
  output$hoveredMovieInfo <- renderText({
    
    input$hovertitle
    brushedPoints(moviescleanest, xvar = "budget", yvar = NULL, input$hovertitle, allRows = FALSE)
  })

  
  }

  
  
  
  
  
  
