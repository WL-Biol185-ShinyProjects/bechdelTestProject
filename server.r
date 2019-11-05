library(shiny)
library(ggplot2)

  # Define server logic required to draw a histogram
  function(input, output) {
  

  output$distPlot <- renderPlot({

    # Application title
    titlePanel("Bechdel Test Data")
    
    budgetLevels <- list(Low Budget= 7000:212000000, High Budget = 212000001:425000000)

    # draw the histogram   
    moviescleanest %>%
      filter(
        "Low Budget", "High Budget" 
        ) %>%
      ggplot(aes(year, budget)) + geom_point()


  })
  
  
  output$hoveredMovieInfo <- renderText({
    
    input$hovertitle
    brushedPoints(moviescleanest, xvar = "budget", yvar = NULL, input$hovertitle, allRows = FALSE)
  })

  
}
