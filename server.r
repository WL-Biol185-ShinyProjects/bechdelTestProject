library(shiny)
library(ggplot2)


  # Define server logic required to draw a histogram
  function(input, output) {
  

  output$distPlot <- renderPlot({

    # Application title
    titlePanel("Bechdel Test Data")
    

    # draw the histogram   
      ggplot(moviescleanest, aes(year, input$budget)) + geom_point()


  })
  
  
  output$hoveredMovieInfo <- renderText({
    
    input$hovertitle
    brushedPoints(moviescleanest, xvar = "budget", yvar = NULL, input$hovertitle, allRows = FALSE)
  })

  
  }

  
  
  
  
  
  
